uint64_t sub_2203436B8(uint64_t a1)
{
  v2 = sub_2203438D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebSubscriptionData.encode(to:)(void *a1)
{
  sub_220343BA4(0, &qword_281261C28, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[0] = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203438D0();
  sub_220370168();
  v16 = v10;
  v15 = 0;
  sub_220343924();
  sub_22036FFF8();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_220269D00();
    sub_22026A024(&qword_281261EF0);
    sub_22036FF88();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2203438D0()
{
  result = qword_281264390[0];
  if (!qword_281264390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264390);
  }

  return result;
}

unint64_t sub_220343924()
{
  result = qword_281263860;
  if (!qword_281263860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263860);
  }

  return result;
}

uint64_t WebSubscriptionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220343BA4(0, &qword_27CF291E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203438D0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_220343C08();
  sub_22036FF28();
  v12 = v18;
  sub_220269D00();
  v16 = 1;
  sub_22026A024(&qword_281261EE0);
  sub_22036FEB8();
  (*(v7 + 8))(v10, v6);
  v13 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220343BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203438D0();
    v7 = a3(a1, &type metadata for WebSubscriptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220343C08()
{
  result = qword_27CF291E8;
  if (!qword_27CF291E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291E8);
  }

  return result;
}

unint64_t sub_220343C60()
{
  result = qword_281264368;
  if (!qword_281264368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264368);
  }

  return result;
}

unint64_t sub_220343CB8()
{
  result = qword_281264370;
  if (!qword_281264370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264370);
  }

  return result;
}

unint64_t sub_220343D60()
{
  result = qword_27CF291F0;
  if (!qword_27CF291F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291F0);
  }

  return result;
}

unint64_t sub_220343DB8()
{
  result = qword_281264380;
  if (!qword_281264380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264380);
  }

  return result;
}

unint64_t sub_220343E10()
{
  result = qword_281264388;
  if (!qword_281264388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264388);
  }

  return result;
}

uint64_t sub_220343EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220343F58(uint64_t a1)
{
  v2 = sub_220344118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220343F94(uint64_t a1)
{
  v2 = sub_220344118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackData.encode(to:)(void *a1)
{
  sub_2203442F4(0, &qword_27CF291F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370168();
  sub_22036FFE8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220344118()
{
  result = qword_27CF29200;
  if (!qword_27CF29200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29200);
  }

  return result;
}

uint64_t PlaybackData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2203442F4(0, &qword_27CF29208, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370148();
  if (!v2)
  {
    sub_22036FF18();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203442F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220344118();
    v7 = a3(a1, &type metadata for PlaybackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220344378(void *a1)
{
  sub_2203442F4(0, &qword_27CF291F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370168();
  sub_22036FFE8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2203444E4()
{
  result = qword_27CF29210;
  if (!qword_27CF29210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29210);
  }

  return result;
}

unint64_t sub_22034453C()
{
  result = qword_27CF29218;
  if (!qword_27CF29218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29218);
  }

  return result;
}

unint64_t sub_220344594()
{
  result = qword_27CF29220;
  if (!qword_27CF29220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29220);
  }

  return result;
}

StocksAnalytics::PaidSubscriberToSourceChannelMethod_optional __swiftcall PaidSubscriberToSourceChannelMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaidSubscriberToSourceChannelMethod.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65726F7453707061;
  if (*v0 != 2)
  {
    v2 = 0x6973626557627570;
  }

  if (*v0)
  {
    v1 = 0x7070417377656ELL;
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

unint64_t sub_2203446D4()
{
  result = qword_27CF29228;
  if (!qword_27CF29228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29228);
  }

  return result;
}

uint64_t sub_220344728()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203447F0()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2203448A4()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220344974(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65726F7453707061;
  if (*v1 != 2)
  {
    v5 = 0x6973626557627570;
    v4 = 0xEA00000000006574;
  }

  if (*v1)
  {
    v3 = 0x7070417377656ELL;
    v2 = 0xE700000000000000;
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

unint64_t sub_220344AB8()
{
  result = qword_2812626E8;
  if (!qword_2812626E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812626E8);
  }

  return result;
}

uint64_t sub_220344B0C()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF29230);
  v1 = __swift_project_value_buffer(v0, qword_27CF29230);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_220344BF8()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF29248);
  v1 = __swift_project_value_buffer(v0, qword_27CF29248);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_220344CB8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29260);
  __swift_project_value_buffer(v0, qword_27CF29260);
  return sub_22036F108();
}

uint64_t VideoAdLoadEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdLoadEvent.adUserData.setter(uint64_t a1)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdLoadEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 20);
  sub_220230578();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220345A80(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t VideoAdLoadEvent.adLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for VideoAdLoadEvent(0);
  v5 = Event[5];
  sub_220230578();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = Event[9];
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = Event[10];
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = Event[11];
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = Event[12];
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t VideoAdLoadEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22034608C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdLoadEvent.Model.userBundleSubscriptionContextData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 24));
  v4 = *(v3 + 25);
  v5 = v3[1];
  v8 = *v3;
  v9[0] = v5;
  *(v9 + 9) = v4;
  *a1 = v8;
  a1[1] = v5;
  *(a1 + 25) = v4;
  return sub_22029C728(&v8, &v7);
}

uint64_t VideoAdLoadEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t VideoAdLoadEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdLoadEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdLoadEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 VideoAdLoadEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:adLoadData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v13 = a1[1];
  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  v16 = *(a4 + 32);
  v17 = *(a4 + 33);
  v29 = *a4;
  v30 = *a5;
  v18 = a5[1].n128_u64[0];
  v32 = *a6;
  v31 = a6[1];
  v33 = *a7;
  v34 = *a8;
  v36 = *a10;
  v35 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 1) = v13;
  v19 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F388();
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = &a9[v19[6]];
  v23 = a3[1];
  *v22 = *a3;
  *(v22 + 1) = v23;
  *(v22 + 25) = *(a3 + 25);
  v24 = &a9[v19[7]];
  result = v30;
  *v24 = v29;
  *(v24 + 2) = v14;
  *(v24 + 3) = v15;
  v24[32] = v16;
  v24[33] = v17;
  v26 = &a9[v19[8]];
  *v26 = v30;
  v26[1].n128_u64[0] = v18;
  v27 = &a9[v19[9]];
  *v27 = v32;
  *(v27 + 1) = v31;
  a9[v19[10]] = v33;
  a9[v19[11]] = v34;
  v28 = &a9[v19[12]];
  *v28 = v36;
  v28[8] = v35;
  return result;
}

uint64_t sub_2203464B0(unsigned __int8 a1)
{
  v1 = 0x6144726573556461;
  v2 = 0x6144646565466461;
  v3 = 0x4470756F72476461;
  if (a1 != 7)
  {
    v3 = 0x614464616F4C6461;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x4464416F65646976;
  if (a1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0xD000000000000021;
  if (a1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (a1)
  {
    v1 = 0x746144746E657665;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2203465FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220347F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220346624(uint64_t a1)
{
  v2 = sub_220346BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220346660(uint64_t a1)
{
  v2 = sub_220346BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220347354(0, &qword_27CF29288, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220346BDC();
  sub_220370168();
  v12 = v3[1];
  *&v43 = *v3;
  *(&v43 + 1) = v12;
  LOBYTE(v41) = 0;
  sub_2201F9420();

  sub_22036FFF8();

  if (!v2)
  {
    v13 = type metadata accessor for VideoAdLoadEvent.Model(0);
    v14 = v13[5];
    v45 = 1;
    sub_22036F388();
    sub_2202366E0(&qword_2812666A8);
    sub_22036FFF8();
    v15 = (v3 + v13[6]);
    v16 = v15[1];
    v43 = *v15;
    *v44 = v16;
    *&v44[9] = *(v15 + 25);
    v17 = v15[1];
    v41 = *v15;
    v42[0] = v17;
    *(v42 + 9) = *(v15 + 25);
    v40 = 2;
    sub_22029C728(&v43, &v38);
    sub_2201F8128();
    sub_22036FFF8();
    v38 = v41;
    *v39 = v42[0];
    *&v39[9] = *(v42 + 9);
    sub_22029C760(&v38);
    v19 = v3 + v13[7];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = *(v19 + 2);
    v23 = *(v19 + 3);
    v24 = v19[32];
    LOBYTE(v19) = v19[33];
    *&v33 = v20;
    *(&v33 + 1) = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v19;
    v32 = 3;
    sub_220236A84();

    sub_22036FFF8();

    v25 = v3 + v13[8];
    v26 = *(v25 + 2);
    v33 = *v25;
    v34 = v26;
    v32 = 4;
    sub_2202B744C();

    sub_22036FF88();

    v27 = (v3 + v13[9]);
    v28 = v27[1];
    *&v33 = *v27;
    *(&v33 + 1) = v28;
    v32 = 5;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v33) = *(v3 + v13[10]);
    v32 = 6;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v33) = *(v3 + v13[11]);
    v32 = 7;
    sub_2202438B4();
    sub_22036FF88();
    v29 = v3 + v13[12];
    v30 = *v29;
    LOBYTE(v29) = v29[8];
    *&v33 = v30;
    BYTE8(v33) = v29;
    v32 = 8;
    sub_22029FF04();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220346BDC()
{
  result = qword_27CF29290;
  if (!qword_27CF29290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29290);
  }

  return result;
}

uint64_t VideoAdLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_22036F388();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220347354(0, &qword_27CF29298, MEMORY[0x277D844C8]);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220346BDC();
  v43 = v10;
  v16 = v44;
  sub_220370148();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = a1;
  v17 = v40;
  v38 = v3;
  LOBYTE(v45) = 0;
  sub_2201F93C8();
  sub_22036FF28();
  v18 = *(&v50 + 1);
  v19 = v14;
  *v14 = v50;
  *(v14 + 1) = v18;
  LOBYTE(v50) = 1;
  sub_2202366E0(&qword_2812666A0);
  v20 = v38;
  sub_22036FF28();
  (*(v17 + 32))(&v14[v11[5]], v6, v20);
  v53 = 2;
  sub_2201F80D0();
  sub_22036FF28();
  v21 = &v14[v11[6]];
  v22 = v51[0];
  *v21 = v50;
  *(v21 + 1) = v22;
  *(v21 + 25) = *(v51 + 9);
  v52 = 3;
  sub_220236A30();
  sub_22036FF28();
  v23 = v41;
  v24 = v46;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  v28 = &v14[v11[7]];
  *v28 = v45;
  *(v28 + 2) = v24;
  *(v28 + 3) = v25;
  v28[32] = v26;
  v28[33] = v27;
  v52 = 4;
  sub_2202B73F4();
  sub_22036FEB8();
  v29 = v46;
  v30 = &v14[v11[8]];
  *v30 = v45;
  *(v30 + 2) = v29;
  v52 = 5;
  sub_220242CD4();
  sub_22036FF28();
  v31 = *(&v45 + 1);
  v32 = &v14[v11[9]];
  *v32 = v45;
  *(v32 + 1) = v31;
  v52 = 6;
  sub_220202B10();
  sub_22036FEB8();
  v14[v11[10]] = v45;
  v52 = 7;
  sub_220243860();
  sub_22036FEB8();
  v14[v11[11]] = v45;
  v52 = 8;
  sub_22029FEAC();
  sub_22036FF28();
  v33 = v44;
  (*(v23 + 8))(v43, v42);
  v34 = BYTE8(v45);
  v35 = v19 + v11[12];
  *v35 = v45;
  *(v35 + 8) = v34;
  sub_2203473B8(v19, v39);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_22034741C(v19);
}

void sub_220347354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220346BDC();
    v7 = a3(a1, &type metadata for VideoAdLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203473B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034741C(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220347550@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230578();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_2203479CC()
{
  sub_220345A80(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (v0 <= 0x3F)
  {
    sub_220230578();
    if (v1 <= 0x3F)
    {
      sub_220345A80(319, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
      if (v2 <= 0x3F)
      {
        sub_220345A80(319, &qword_281266858, sub_220236A30, sub_220236A84);
        if (v3 <= 0x3F)
        {
          sub_220345A80(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
          if (v4 <= 0x3F)
          {
            sub_220345A80(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
            if (v5 <= 0x3F)
            {
              sub_220345A80(319, &qword_281266890, sub_220202B10, sub_220202B7C);
              if (v6 <= 0x3F)
              {
                sub_220345A80(319, &qword_281266868, sub_220243860, sub_2202438B4);
                if (v7 <= 0x3F)
                {
                  sub_220345A80(319, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220347CE0()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF292C0);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26298);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF262A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220347E10()
{
  result = qword_27CF292C8;
  if (!qword_27CF292C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292C8);
  }

  return result;
}

unint64_t sub_220347E68()
{
  result = qword_27CF292D0;
  if (!qword_27CF292D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292D0);
  }

  return result;
}

unint64_t sub_220347EC0()
{
  result = qword_27CF292D8;
  if (!qword_27CF292D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292D8);
  }

  return result;
}

uint64_t sub_220347F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220390710 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614464616F4C6461 && a2 == 0xEA00000000006174)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

Swift::String_optional __swiftcall ExternalAnalyticsPanelIdProvider.panelIdentifier(with:)(Swift::OpaquePointer with)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_220348364()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29310);
  __swift_project_value_buffer(v0, qword_27CF29310);
  return sub_22036F108();
}

uint64_t EditWatchlistNameEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EditWatchlistNameEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EditWatchlistNameEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220348580(uint64_t a1)
{
  v2 = sub_22034876C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203485BC(uint64_t a1)
{
  v2 = sub_22034876C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditWatchlistNameEvent.Model.encode(to:)(void *a1)
{
  sub_220348A58(0, &qword_27CF29328, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22034876C()
{
  result = qword_27CF29330;
  if (!qword_27CF29330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29330);
  }

  return result;
}

uint64_t EditWatchlistNameEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220348A58(0, &qword_27CF29338, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for EditWatchlistNameEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_220348ADC(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220348A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034876C();
    v7 = a3(a1, &type metadata for EditWatchlistNameEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220348ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWatchlistNameEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220348B58(void *a1)
{
  sub_220348A58(0, &qword_27CF29328, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_220348DF8()
{
  result = qword_27CF29360;
  if (!qword_27CF29360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29360);
  }

  return result;
}

unint64_t sub_220348E50()
{
  result = qword_27CF29368;
  if (!qword_27CF29368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29368);
  }

  return result;
}

unint64_t sub_220348EA8()
{
  result = qword_27CF29370;
  if (!qword_27CF29370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29370);
  }

  return result;
}

uint64_t sub_220348FC4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF293A8);
  __swift_project_value_buffer(v0, qword_27CF293A8);
  return sub_22036F108();
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppReviewPromptRequestEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2203491E0(uint64_t a1)
{
  v2 = sub_2203493CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034921C(uint64_t a1)
{
  v2 = sub_2203493CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  sub_2203496B8(0, &qword_27CF293C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2203493CC()
{
  result = qword_27CF293C8;
  if (!qword_27CF293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF293C8);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203496B8(0, &qword_27CF293D0, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_22034973C(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203496B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203493CC();
    v7 = a3(a1, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034973C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203497B8(void *a1)
{
  sub_2203496B8(0, &qword_27CF293C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_220349A58()
{
  result = qword_27CF293F8;
  if (!qword_27CF293F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF293F8);
  }

  return result;
}

unint64_t sub_220349AB0()
{
  result = qword_27CF29400;
  if (!qword_27CF29400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29400);
  }

  return result;
}

unint64_t sub_220349B08()
{
  result = qword_27CF29408;
  if (!qword_27CF29408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29408);
  }

  return result;
}

StocksAnalytics::TrackVariant_optional __swiftcall TrackVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TrackVariant.rawValue.getter()
{
  v1 = 0x656C706D6173;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220349C08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C706D6173;
  if (v2 != 1)
  {
    v4 = 1819047270;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220349CF8()
{
  result = qword_27CF29410;
  if (!qword_27CF29410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29410);
  }

  return result;
}

uint64_t sub_220349D4C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220349DE4()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220349E68()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220349F08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C706D6173;
  if (v2 != 1)
  {
    v5 = 1819047270;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22034A01C()
{
  result = qword_27CF29418;
  if (!qword_27CF29418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29418);
  }

  return result;
}

uint64_t sub_22034A070()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A164()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A284()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A384()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A484()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A594()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A6EC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A824()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A990()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AAAC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ABE8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ACF4()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ADF0()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AF08()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AFF8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

StocksAnalytics::AdJournalEntryStatus_optional __swiftcall AdJournalEntryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdJournalEntryStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64657461657263;
  v3 = 0x6564726163736964;
  v4 = 0x656C6C69666C7566;
  if (v1 != 4)
  {
    v4 = 0x65746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0x676E69646E6570;
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

unint64_t sub_22034B224()
{
  result = qword_27CF29420;
  if (!qword_27CF29420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29420);
  }

  return result;
}

uint64_t sub_22034B280()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

void sub_22034B38C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657461657263;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (v2 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (v2 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22034B514()
{
  result = qword_281264358;
  if (!qword_281264358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264358);
  }

  return result;
}

uint64_t sub_22034B630()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29458);
  __swift_project_value_buffer(v0, qword_27CF29458);
  return sub_22036F108();
}

uint64_t OutboundLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OutboundLinkTapEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22034B7F0()
{
  if (!qword_27CF29470)
  {
    sub_2202959D0();
    sub_220295A28();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF29470);
    }
  }
}

uint64_t OutboundLinkTapEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OutboundLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t OutboundLinkTapEvent.Model.linkData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OutboundLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t OutboundLinkTapEvent.Model.init(eventData:linkData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for OutboundLinkTapEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_22034BAC8()
{
  if (*v0)
  {
    result = 0x617461446B6E696CLL;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_22034BB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_22034BBEC(uint64_t a1)
{
  v2 = sub_22034BE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034BC28(uint64_t a1)
{
  v2 = sub_22034BE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OutboundLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22034C1DC(0, &qword_27CF29478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034BE30();
  sub_220370168();
  v13[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v13[14] = *(v3 + *(type metadata accessor for OutboundLinkTapEvent.Model(0) + 20));
    v13[13] = 1;
    sub_220295A28();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22034BE30()
{
  result = qword_27CF29480;
  if (!qword_27CF29480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29480);
  }

  return result;
}

uint64_t OutboundLinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22034C1DC(0, &qword_27CF29488, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034BE30();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v32 = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v29;
  v19 = v27;
  sub_22036FF28();
  v20 = v24;
  (*(v17 + 32))(v24, v6, v18);
  v30 = 1;
  sub_2202959D0();
  sub_22036FF28();
  (*(v28 + 8))(v11, v19);
  *(v20 + *(v23 + 20)) = v31;
  sub_22034C240(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22034C2A4(v20);
}

void sub_22034C1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034BE30();
    v7 = a3(a1, &type metadata for OutboundLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034C240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034C2A4(uint64_t a1)
{
  v2 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22034C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22034B7F0();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_22034C4C0()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22034B7F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22034C56C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22034C5F4()
{
  result = qword_27CF294B0;
  if (!qword_27CF294B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294B0);
  }

  return result;
}

unint64_t sub_22034C64C()
{
  result = qword_27CF294B8;
  if (!qword_27CF294B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294B8);
  }

  return result;
}

unint64_t sub_22034C6A4()
{
  result = qword_27CF294C0;
  if (!qword_27CF294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294C0);
  }

  return result;
}

uint64_t sub_22034C7C0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF294F8);
  __swift_project_value_buffer(v0, qword_27CF294F8);
  return sub_22036F108();
}

uint64_t MediaViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaViewEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t sub_22034E0A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaViewEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t MediaViewEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t MediaViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaViewEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaViewEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t MediaViewEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 48);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaViewEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t MediaViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaViewEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 MediaViewEvent.Model.init(eventData:timedData:newsArticleData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11, __n128 *a12, char *a13)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v41 = *a5;
  v20 = *(a5 + 2);
  v21 = *(a6 + 1);
  v43 = *(a6 + 2);
  v42 = *(a6 + 6);
  v22 = a6[28];
  v46 = a7[1];
  v47 = *a7;
  v44 = *a6;
  v45 = *(a7 + 8);
  v48 = a8[1];
  v49 = *a8;
  v52 = *a10;
  v51 = *(a10 + 2);
  v50 = *(a10 + 6);
  v54 = *a11;
  v53 = a11[1];
  v59 = *a12;
  v57 = a12[1].n128_u64[1];
  v58 = a12[1].n128_u64[0];
  v55 = a12[2].n128_u8[1];
  v56 = a12[2].n128_u8[0];
  v60 = *a13;
  v23 = sub_22036F388();
  v39 = a4[1];
  v40 = *a4;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for MediaViewEvent.Model(0);
  v25 = v24[5];
  v26 = sub_22036F3C8();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a3 + 64);
  v29 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v29;
  v30 = a9 + v24[7];
  *v30 = v40;
  *(v30 + 16) = v39;
  *(v30 + 32) = v18;
  *(v30 + 40) = v19;
  v31 = a9 + v24[8];
  *v31 = v41;
  *(v31 + 16) = v20;
  v32 = a9 + v24[9];
  *v32 = v44;
  *(v32 + 8) = v21;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  *(v32 + 28) = v22;
  v33 = a9 + v24[10];
  *v33 = v47;
  *(v33 + 8) = v46;
  *(v33 + 16) = v45;
  v34 = (a9 + v24[11]);
  *v34 = v49;
  v34[1] = v48;
  v35 = a9 + v24[12];
  *v35 = v52;
  *(v35 + 16) = v51;
  *(v35 + 24) = v50;
  v36 = (a9 + v24[13]);
  *v36 = v54;
  v36[1] = v53;
  v37 = (a9 + v24[14]);
  result = v59;
  *v37 = v59;
  v37[1].n128_u64[0] = v58;
  v37[1].n128_u64[1] = v57;
  v37[2].n128_u8[0] = v56;
  v37[2].n128_u8[1] = v55;
  *(a9 + v24[15]) = v60;
  return result;
}

uint64_t sub_22034E704(uint64_t a1)
{
  v2 = sub_22034EE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034E740(uint64_t a1)
{
  v2 = sub_22034EE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22034FAD8(0, &qword_27CF29510, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034EE3C();
  sub_220370168();
  LOBYTE(v64[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for MediaViewEvent.Model(0);
    v13 = v12[5];
    v68 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v65 = *(v14 + 32);
    v66 = v16;
    v17 = *(v14 + 16);
    v64[0] = *v14;
    v64[1] = v17;
    v18 = *(v14 + 48);
    v61 = v65;
    v62 = v18;
    v67 = *(v14 + 64);
    v63 = *(v14 + 64);
    v59 = v64[0];
    v60 = v15;
    v58 = 2;
    sub_22022ECDC(v64, v56);
    sub_22022EDA0();
    sub_22036FFF8();
    v56[2] = v61;
    v56[3] = v62;
    v57 = v63;
    v56[0] = v59;
    v56[1] = v60;
    sub_22022ED14(v56);
    v19 = (v3 + v12[7]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    *&v51 = *v19;
    *(&v51 + 1) = v20;
    v52 = v21;
    v53 = v22;
    v54 = v23;
    v55 = v24;
    v50 = 3;
    sub_22023846C(v51, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v51, *(&v51 + 1), v52);
    v25 = (v3 + v12[8]);
    v26 = *(v25 + 2);
    v51 = *v25;
    v52 = v26;
    v50 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v27 = (v3 + v12[9]);
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = *(v27 + 6);
    LOBYTE(v27) = v27[28];
    LOBYTE(v51) = v28;
    *(&v51 + 1) = v29;
    v52 = v30;
    LODWORD(v53) = v31;
    BYTE4(v53) = v27;
    v50 = 5;
    sub_22027B1AC();

    sub_22036FFF8();

    v33 = (v3 + v12[10]);
    v34 = *v33;
    v35 = v33[1];
    LOWORD(v33) = *(v33 + 8);
    *&v51 = v34;
    *(&v51 + 1) = v35;
    LOWORD(v52) = v33;
    v50 = 6;
    sub_220202110();

    sub_22036FFF8();

    v36 = (v3 + v12[11]);
    v37 = v36[1];
    *&v51 = *v36;
    *(&v51 + 1) = v37;
    v50 = 7;
    sub_22027C714(v51, v37);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v51, *(&v51 + 1));
    v38 = (v3 + v12[12]);
    v39 = *(v38 + 2);
    v40 = *(v38 + 6);
    v51 = *v38;
    v52 = v39;
    LODWORD(v53) = v40;
    v50 = 8;
    sub_22025476C();

    sub_22036FF88();

    v41 = (v3 + v12[13]);
    v42 = v41[1];
    *&v51 = *v41;
    *(&v51 + 1) = v42;
    v50 = 9;
    sub_220237744();

    sub_22036FF88();

    v43 = (v3 + v12[14]);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    v48 = *(v43 + 32);
    LOBYTE(v43) = *(v43 + 33);
    *&v51 = v44;
    *(&v51 + 1) = v45;
    v52 = v46;
    v53 = v47;
    LOBYTE(v54) = v48;
    BYTE1(v54) = v43;
    v50 = 10;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v51) = *(v3 + v12[15]);
    v50 = 11;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22034EE3C()
{
  result = qword_27CF29518;
  if (!qword_27CF29518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29518);
  }

  return result;
}

uint64_t MediaViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = sub_22036F3C8();
  v51 = *(v52 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22034FAD8(0, &qword_27CF29520, MEMORY[0x277D844C8]);
  v57 = v9;
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for MediaViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034EE3C();
  v56 = v12;
  v18 = v68;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = a1;
  v48 = v13;
  v68 = v16;
  LOBYTE(v63) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  v19 = v54;
  sub_22036FF28();
  v20 = v68;
  (*(v53 + 32))(v68, v19, v6);
  LOBYTE(v63) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  v21 = v52;
  sub_22036FF28();
  v47 = v6;
  v54 = 0;
  v22 = v48;
  (*(v51 + 32))(&v20[v48[5]], v5, v21);
  v62 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v23 = &v20[v22[6]];
  v24 = v66;
  *(v23 + 2) = v65;
  *(v23 + 3) = v24;
  *(v23 + 16) = v67;
  v25 = v64;
  *v23 = v63;
  *(v23 + 1) = v25;
  v58 = 3;
  sub_220236C88();
  sub_22036FEB8();
  v26 = &v20[v22[7]];
  v27 = v60;
  *v26 = v59;
  *(v26 + 1) = v27;
  *(v26 + 2) = v61;
  v58 = 4;
  sub_2201FBCC4();
  sub_22036FEB8();
  v28 = v60;
  v29 = &v20[v22[8]];
  *v29 = v59;
  *(v29 + 2) = v28;
  v58 = 5;
  sub_22027B158();
  sub_22036FF28();
  v30 = *(&v59 + 1);
  v31 = v60;
  v32 = DWORD2(v60);
  v33 = BYTE12(v60);
  v34 = &v20[v22[9]];
  *v34 = v59;
  *(v34 + 1) = v30;
  *(v34 + 2) = v31;
  *(v34 + 6) = v32;
  v34[28] = v33;
  v58 = 6;
  sub_2202020B8();
  sub_22036FF28();
  v35 = *(&v59 + 1);
  v36 = v60;
  v37 = &v20[v22[10]];
  *v37 = v59;
  *(v37 + 1) = v35;
  *(v37 + 8) = v36;
  v58 = 7;
  sub_22024ED64();
  sub_22036FEB8();
  *&v68[v48[11]] = v59;
  v58 = 8;
  sub_220254714();
  sub_22036FEB8();
  v38 = v60;
  v39 = DWORD2(v60);
  v40 = &v68[v48[12]];
  *v40 = v59;
  *(v40 + 2) = v38;
  *(v40 + 6) = v39;
  v58 = 9;
  sub_2202376F0();
  sub_22036FEB8();
  *&v68[v48[13]] = v59;
  v58 = 10;
  sub_220236A30();
  sub_22036FF28();
  v41 = v60;
  v42 = v61;
  v43 = BYTE1(v61);
  v44 = &v68[v48[14]];
  *v44 = v59;
  *(v44 + 1) = v41;
  v44[32] = v42;
  v44[33] = v43;
  v58 = 11;
  sub_220237C1C();
  sub_22036FEB8();
  (*(v55 + 8))(v56, v57);
  v45 = v68;
  v68[v48[15]] = v59;
  sub_22034FB3C(v45, v50);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_22034FBA0(v45);
}

void sub_22034FAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034EE3C();
    v7 = a3(a1, &type metadata for MediaViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034FB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034FBA0(uint64_t a1)
{
  v2 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22034FD38()
{
  result = qword_27CF29528;
  if (!qword_27CF29528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29528);
  }

  return result;
}

unint64_t sub_22034FD90()
{
  result = qword_27CF29530;
  if (!qword_27CF29530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29530);
  }

  return result;
}

unint64_t sub_22034FDE8()
{
  result = qword_27CF29538;
  if (!qword_27CF29538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29538);
  }

  return result;
}

StocksAnalytics::OnboardingScreenType_optional __swiftcall OnboardingScreenType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OnboardingScreenType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_22034FEF4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x800000022038FF50;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022038FF50;
  }

  else
  {
    v6 = 0x800000022038FF70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x800000022038FF70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22034FFD4()
{
  result = qword_27CF29540;
  if (!qword_27CF29540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29540);
  }

  return result;
}

uint64_t sub_220350028()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203500CC()
{
  *v0;
  sub_22036FB08();
}

uint64_t sub_22035015C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220350208(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x800000022038FF50;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x800000022038FF70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220350328()
{
  result = qword_27CF29548;
  if (!qword_27CF29548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29548);
  }

  return result;
}

StocksAnalytics::FeedType_optional __swiftcall FeedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x756F59726F66;
  if (*v0 != 2)
  {
    v2 = 6385509;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

unint64_t sub_220350454()
{
  result = qword_27CF29550;
  if (!qword_27CF29550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29550);
  }

  return result;
}

uint64_t sub_2203504A8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035055C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2203505FC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2203506B8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x756F59726F66;
  if (*v1 != 2)
  {
    v5 = 6385509;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
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

unint64_t sub_2203507E8()
{
  result = qword_281262180;
  if (!qword_281262180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262180);
  }

  return result;
}

StocksAnalytics::SymbolChartDisplayErrorCode_optional __swiftcall SymbolChartDisplayErrorCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SymbolChartDisplayErrorCode.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7245726576726573;
  if (*v0 != 2)
  {
    v2 = 0x617461446F6ELL;
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

unint64_t sub_22035092C()
{
  result = qword_27CF29558;
  if (!qword_27CF29558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29558);
  }

  return result;
}

uint64_t sub_220350980()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220350A4C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220350B04()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220350BD8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB00000000726F72;
  v5 = 0x7245726576726573;
  if (*v1 != 2)
  {
    v5 = 0x617461446F6ELL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000022038FF90;
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

unint64_t sub_220350D20()
{
  result = qword_281262A40;
  if (!qword_281262A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A40);
  }

  return result;
}

uint64_t sub_220350E00()
{
  if (*v0)
  {
    return 0x70795479726F7473;
  }

  else
  {
    return 0x7079546567646162;
  }
}

uint64_t sub_220350E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079546567646162 && a2 == 0xE900000000000065;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_220350F1C(uint64_t a1)
{
  v2 = sub_220351140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220350F58(uint64_t a1)
{
  v2 = sub_220351140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BadgeData.encode(to:)(void *a1)
{
  sub_220351420(0, &qword_281261B88, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351140();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_220351194();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_2203511E8();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220351140()
{
  result = qword_2812620E8;
  if (!qword_2812620E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620E8);
  }

  return result;
}

unint64_t sub_220351194()
{
  result = qword_2812620B8;
  if (!qword_2812620B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620B8);
  }

  return result;
}

unint64_t sub_2203511E8()
{
  result = qword_281261FC8;
  if (!qword_281261FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FC8);
  }

  return result;
}

uint64_t BadgeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220351420(0, &qword_2812675B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351140();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    sub_220351484();
    sub_22036FF28();
    v12 = v19;
    v16 = 1;
    sub_2203514D8();
    sub_22036FEB8();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220351420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220351140();
    v7 = a3(a1, &type metadata for BadgeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220351484()
{
  result = qword_2812675C0;
  if (!qword_2812675C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812675C0);
  }

  return result;
}

unint64_t sub_2203514D8()
{
  result = qword_2812675C8;
  if (!qword_2812675C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812675C8);
  }

  return result;
}

unint64_t sub_220351588()
{
  result = qword_27CF29560;
  if (!qword_27CF29560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29560);
  }

  return result;
}

unint64_t sub_2203515E0()
{
  result = qword_2812620D8;
  if (!qword_2812620D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620D8);
  }

  return result;
}

unint64_t sub_220351638()
{
  result = qword_2812620E0;
  if (!qword_2812620E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620E0);
  }

  return result;
}

void __swiftcall AmsMarketingItemData.init(amsPurchaseID:campaignID:isPaidBundleViaOffer:)(StocksAnalytics::AmsMarketingItemData *__return_ptr retstr, Swift::String_optional amsPurchaseID, Swift::String_optional campaignID, Swift::Bool_optional isPaidBundleViaOffer)
{
  retstr->amsPurchaseID = amsPurchaseID;
  retstr->campaignID = campaignID;
  retstr->isPaidBundleViaOffer = isPaidBundleViaOffer;
}

uint64_t AmsMarketingItemData.amsPurchaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AmsMarketingItemData.amsPurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AmsMarketingItemData.campaignID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AmsMarketingItemData.campaignID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2203517E4()
{
  v1 = 0x6E676961706D6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6863727550736D61;
  }
}

uint64_t sub_220351854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220352078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22035187C(uint64_t a1)
{
  v2 = sub_220351AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203518B8(uint64_t a1)
{
  v2 = sub_220351AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AmsMarketingItemData.encode(to:)(void *a1)
{
  sub_220351D44(0, &qword_281261C20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v16 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351AA0();
  sub_220370168();
  v19 = 0;
  v13 = v15[3];
  sub_22036FF68();
  if (!v13)
  {
    v18 = 1;
    sub_22036FF68();
    v17 = 2;
    sub_22036FF78();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220351AA0()
{
  result = qword_281264350;
  if (!qword_281264350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264350);
  }

  return result;
}

uint64_t AmsMarketingItemData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220351D44(0, &qword_27CF29568, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351AA0();
  sub_220370148();
  if (!v2)
  {
    v27 = 0;
    v12 = sub_22036FE98();
    v15 = v14;
    v16 = v12;
    v26 = 1;
    v17 = sub_22036FE98();
    v19 = v18;
    v23 = v17;
    v25 = 2;
    v20 = sub_22036FEA8();
    v21 = *(v7 + 8);
    v24 = v20;
    v21(v10, v6);
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v23;
    *(a2 + 24) = v19;
    *(a2 + 32) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220351D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220351AA0();
    v7 = a3(a1, &type metadata for AmsMarketingItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220351DAC()
{
  result = qword_281264328;
  if (!qword_281264328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264328);
  }

  return result;
}

unint64_t sub_220351E04()
{
  result = qword_281264330;
  if (!qword_281264330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264330);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220351E9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_220351EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_220351F74()
{
  result = qword_27CF29570;
  if (!qword_27CF29570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29570);
  }

  return result;
}

unint64_t sub_220351FCC()
{
  result = qword_281264340;
  if (!qword_281264340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264340);
  }

  return result;
}

unint64_t sub_220352024()
{
  result = qword_281264348;
  if (!qword_281264348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264348);
  }

  return result;
}

uint64_t sub_220352078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863727550736D61 && a2 == 0xED00004449657361;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392690 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220352270()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812642C0);
  __swift_project_value_buffer(v0, qword_2812642C0);
  return sub_22036F108();
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.watchlistSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203527C8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AppSessionStartEvent.watchlistSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for AppSessionStartEvent(0);
  v5 = started[5];
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = started[6];
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = started[7];
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t AppSessionStartEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 20));
}

uint64_t AppSessionStartEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppSessionStartEvent.Model.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 28));
}

int *AppSessionStartEvent.Model.init(eventData:watchedSymbolListData:orientationData:watchlistSummaryData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = sub_22036F388();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *(a5 + result[5]) = v7;
  *(a5 + result[6]) = v8;
  *(a5 + result[7]) = v9;
  return result;
}

unint64_t sub_220352CA0()
{
  v1 = 0x746144746E657665;
  v2 = 0x7461746E6569726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_220352D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220353B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220352D58(uint64_t a1)
{
  v2 = sub_220353058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220352D94(uint64_t a1)
{
  v2 = sub_220353058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203534D0(0, &qword_27CF29578, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353058();
  sub_220370168();
  LOBYTE(v15) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    started = type metadata accessor for AppSessionStartEvent.Model(0);
    v15 = *(v3 + started[5]);
    HIBYTE(v14) = 1;
    sub_22023D96C();

    sub_22036FFF8();

    LOWORD(v15) = *(v3 + started[6]);
    HIBYTE(v14) = 2;
    sub_2201F8860();
    sub_22036FFF8();
    v15 = *(v3 + started[7]);
    HIBYTE(v14) = 3;
    sub_2202AADBC();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220353058()
{
  result = qword_2812642B0;
  if (!qword_2812642B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642B0);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203534D0(0, &qword_281261DB8, MEMORY[0x277D844C8]);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v12 = *(*(started - 1) + 64);
  MEMORY[0x28223BE20](started);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353058();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v16 = v22;
  LOBYTE(v27) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v23;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v26 = 1;
  sub_22023D918();
  sub_22036FF28();
  *&v14[started[5]] = v27;
  v26 = 2;
  sub_2201F8808();
  sub_22036FF28();
  *&v14[started[6]] = v27;
  v26 = 3;
  sub_2202AAD64();
  sub_22036FF28();
  (*(v24 + 8))(v10, v25);
  *&v14[started[7]] = v27;
  sub_220353534(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_220353598(v14);
}

void sub_2203534D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220353058();
    v7 = a3(a1, &type metadata for AppSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220353534(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_220353598(uint64_t a1)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2203536CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2203538DC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2203527C8(319, &qword_281266770, sub_22023D918, sub_22023D96C);
    if (v1 <= 0x3F)
    {
      sub_2203527C8(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
      if (v2 <= 0x3F)
      {
        sub_2203527C8(319, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220353A74()
{
  result = qword_27CF29580;
  if (!qword_27CF29580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29580);
  }

  return result;
}

unint64_t sub_220353ACC()
{
  result = qword_2812642A0;
  if (!qword_2812642A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642A0);
  }

  return result;
}

unint64_t sub_220353B24()
{
  result = qword_2812642A8;
  if (!qword_2812642A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642A8);
  }

  return result;
}

uint64_t sub_220353B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220353D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000220392930 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_220353DEC(uint64_t a1)
{
  v2 = sub_220353FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220353E28(uint64_t a1)
{
  v2 = sub_220353FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EarningsData.encode(to:)(void *a1)
{
  sub_220354180(0, &qword_281261CE0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220353FAC()
{
  result = qword_281265D98;
  if (!qword_281265D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D98);
  }

  return result;
}

uint64_t EarningsData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_220354180(0, &qword_27CF29588, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FF38();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220354180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220353FAC();
    v7 = a3(a1, &type metadata for EarningsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220354204(void *a1)
{
  sub_220354180(0, &qword_281261CE0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220354370()
{
  result = qword_27CF29590;
  if (!qword_27CF29590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29590);
  }

  return result;
}

unint64_t sub_2203543C8()
{
  result = qword_281265D88;
  if (!qword_281265D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D88);
  }

  return result;
}

unint64_t sub_220354420()
{
  result = qword_281265D90;
  if (!qword_281265D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D90);
  }

  return result;
}

StocksAnalytics::AppData __swiftcall AppData.init(appVersion:appBuildNumber:)(Swift::String appVersion, Swift::String appBuildNumber)
{
  *v2 = appVersion;
  v2[1] = appBuildNumber;
  result.appBuildNumber = appBuildNumber;
  result.appVersion = appVersion;
  return result;
}

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_220354598()
{
  if (*v0)
  {
    result = 0x646C697542707061;
  }

  else
  {
    result = 0x6973726556707061;
  }

  *v0;
  return result;
}

uint64_t sub_2203545E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_2203546D0(uint64_t a1)
{
  v2 = sub_2203548C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035470C(uint64_t a1)
{
  v2 = sub_2203548C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.encode(to:)(void *a1)
{
  sub_220354B2C(0, &qword_281261BB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203548C8();
  sub_220370168();
  v17 = 0;
  v13 = v15[3];
  sub_22036FFB8();
  if (!v13)
  {
    v16 = 1;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2203548C8()
{
  result = qword_2812622C0;
  if (!qword_2812622C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622C0);
  }

  return result;
}

uint64_t AppData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220354B2C(0, &qword_281261D60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203548C8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_22036FEE8();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220354B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203548C8();
    v7 = a3(a1, &type metadata for AppData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220354BE4()
{
  result = qword_27CF29598;
  if (!qword_27CF29598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29598);
  }

  return result;
}

unint64_t sub_220354C3C()
{
  result = qword_2812622B0;
  if (!qword_2812622B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622B0);
  }

  return result;
}

unint64_t sub_220354C94()
{
  result = qword_2812622B8;
  if (!qword_2812622B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622B8);
  }

  return result;
}

uint64_t sub_220354D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000220392950 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_220354DE4(uint64_t a1)
{
  v2 = sub_220354FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220354E20(uint64_t a1)
{
  v2 = sub_220354FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementData.encode(to:)(void *a1)
{
  sub_2203551F8(0, &qword_27CF295A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220354FB8();
  sub_220370168();
  v13 = v9;
  sub_22035500C();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220354FB8()
{
  result = qword_27CF295A8;
  if (!qword_27CF295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295A8);
  }

  return result;
}

unint64_t sub_22035500C()
{
  result = qword_27CF295B0;
  if (!qword_27CF295B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295B0);
  }

  return result;
}

uint64_t EngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203551F8(0, &qword_27CF295B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220354FB8();
  sub_220370148();
  if (!v2)
  {
    sub_22035525C();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203551F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220354FB8();
    v7 = a3(a1, &type metadata for EngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22035525C()
{
  result = qword_27CF295C0;
  if (!qword_27CF295C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295C0);
  }

  return result;
}

unint64_t sub_2203552B4()
{
  result = qword_27CF295C8;
  if (!qword_27CF295C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295C8);
  }

  return result;
}

unint64_t sub_22035530C()
{
  result = qword_27CF295D0;
  if (!qword_27CF295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295D0);
  }

  return result;
}

unint64_t sub_2203553B4()
{
  result = qword_27CF295D8;
  if (!qword_27CF295D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295D8);
  }

  return result;
}

unint64_t sub_22035540C()
{
  result = qword_27CF295E0;
  if (!qword_27CF295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295E0);
  }

  return result;
}

unint64_t sub_220355464()
{
  result = qword_27CF295E8;
  if (!qword_27CF295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295E8);
  }

  return result;
}

uint64_t ResultData.failureReasonCode.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ResultData.failureReasonCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_2203555A4()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x7954746C75736572;
  }

  *v0;
  return result;
}

uint64_t sub_2203555E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220392970 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_2203556D4(uint64_t a1)
{
  v2 = sub_2203558DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220355710(uint64_t a1)
{
  v2 = sub_2203558DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultData.encode(to:)(void *a1)
{
  sub_220355B6C(0, &qword_27CF295F0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203558DC();
  sub_220370168();
  v17 = v10;
  v16 = 0;
  sub_220355930();
  sub_22036FFF8();
  if (!v2)
  {
    v15 = 1;
    sub_22036FF68();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2203558DC()
{
  result = qword_27CF295F8;
  if (!qword_27CF295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295F8);
  }

  return result;
}

unint64_t sub_220355930()
{
  result = qword_27CF29600;
  if (!qword_27CF29600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29600);
  }

  return result;
}

uint64_t ResultData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220355B6C(0, &qword_27CF29608, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203558DC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_220355BD0();
  sub_22036FF28();
  v12 = v20;
  v18 = 1;
  v13 = sub_22036FE98();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220355B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203558DC();
    v7 = a3(a1, &type metadata for ResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220355BD0()
{
  result = qword_27CF29610;
  if (!qword_27CF29610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29610);
  }

  return result;
}

uint64_t sub_220355C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_220355CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_220355D30()
{
  result = qword_27CF29618;
  if (!qword_27CF29618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29618);
  }

  return result;
}

unint64_t sub_220355D88()
{
  result = qword_27CF29620;
  if (!qword_27CF29620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29620);
  }

  return result;
}

unint64_t sub_220355DE0()
{
  result = qword_27CF29628;
  if (!qword_27CF29628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29628);
  }

  return result;
}

uint64_t SymbolPriceData.init(quoteAge:sparklineAge:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_220355EA4()
{
  if (*v0)
  {
    result = 0x6E696C6B72617073;
  }

  else
  {
    result = 0x65674165746F7571;
  }

  *v0;
  return result;
}

uint64_t sub_220355EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65674165746F7571 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xEC00000065674165)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_220355FC8(uint64_t a1)
{
  v2 = sub_2203561B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220356004(uint64_t a1)
{
  v2 = sub_2203561B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolPriceData.encode(to:)(void *a1)
{
  sub_2203563B8(0, &qword_281261C78, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203561B4();
  sub_220370168();
  v16 = 0;
  sub_220370008();
  if (!v2)
  {
    v15 = 1;
    sub_220370008();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2203561B4()
{
  result = qword_2812654C8;
  if (!qword_2812654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654C8);
  }

  return result;
}

uint64_t SymbolPriceData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2203563B8(0, &qword_27CF29630, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203561B4();
  sub_220370148();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_22036FF38();
    v16 = 1;
    v14 = sub_22036FF38();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203563B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203561B4();
    v7 = a3(a1, &type metadata for SymbolPriceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220356478()
{
  result = qword_27CF29638;
  if (!qword_27CF29638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29638);
  }

  return result;
}

unint64_t sub_2203564D0()
{
  result = qword_2812654B8;
  if (!qword_2812654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654B8);
  }

  return result;
}

unint64_t sub_220356528()
{
  result = qword_2812654C0;
  if (!qword_2812654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654C0);
  }

  return result;
}

StocksAnalytics::CalendarAccessStatus_optional __swiftcall CalendarAccessStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarAccessStatus.rawValue.getter()
{
  if (*v0)
  {
    result = 0x776F6C6C61;
  }

  else
  {
    result = 2037278052;
  }

  *v0;
  return result;
}

uint64_t sub_220356610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x776F6C6C61;
  }

  else
  {
    v4 = 2037278052;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x776F6C6C61;
  }

  else
  {
    v6 = 2037278052;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_2203566B0()
{
  result = qword_27CF29640;
  if (!qword_27CF29640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29640);
  }

  return result;
}

uint64_t sub_220356704()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035677C()
{
  *v0;
  sub_22036FB08();
}

uint64_t sub_2203567E0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220356854@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22036FE78();

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

void sub_2203568B4(uint64_t *a1@<X8>)
{
  v2 = 2037278052;
  if (*v1)
  {
    v2 = 0x776F6C6C61;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2203569A8()
{
  result = qword_27CF29648;
  if (!qword_27CF29648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29648);
  }

  return result;
}

unint64_t sub_220356A88()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_220356AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000220392990 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002203929B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_220370048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_220356BA8(uint64_t a1)
{
  v2 = sub_220356DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220356BE4(uint64_t a1)
{
  v2 = sub_220356DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonContextData.encode(to:)(void *a1)
{
  sub_2203570AC(0, &qword_27CF29650, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220356DCC();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_220356E20();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_220356E74();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220356DCC()
{
  result = qword_27CF29658;
  if (!qword_27CF29658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29658);
  }

  return result;
}

unint64_t sub_220356E20()
{
  result = qword_27CF29660;
  if (!qword_27CF29660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29660);
  }

  return result;
}

unint64_t sub_220356E74()
{
  result = qword_27CF29668;
  if (!qword_27CF29668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29668);
  }

  return result;
}

uint64_t SubscribeButtonContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203570AC(0, &qword_27CF29670, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220356DCC();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    sub_220357110();
    sub_22036FF28();
    v12 = v19;
    v16 = 1;
    sub_220357164();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203570AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220356DCC();
    v7 = a3(a1, &type metadata for SubscribeButtonContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220357110()
{
  result = qword_27CF29678;
  if (!qword_27CF29678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29678);
  }

  return result;
}

unint64_t sub_220357164()
{
  result = qword_27CF29680;
  if (!qword_27CF29680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29680);
  }

  return result;
}

unint64_t sub_2203571BC()
{
  result = qword_27CF29688;
  if (!qword_27CF29688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29688);
  }

  return result;
}

unint64_t sub_220357214()
{
  result = qword_27CF29690;
  if (!qword_27CF29690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29690);
  }

  return result;
}

unint64_t sub_2203572BC()
{
  result = qword_27CF29698;
  if (!qword_27CF29698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29698);
  }

  return result;
}

unint64_t sub_220357314()
{
  result = qword_27CF296A0;
  if (!qword_27CF296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296A0);
  }

  return result;
}

unint64_t sub_22035736C()
{
  result = qword_27CF296A8;
  if (!qword_27CF296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296A8);
  }

  return result;
}

uint64_t ChannelData.channelID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ChannelData.channelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ChannelData.language.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ChannelData.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall ChannelData.init(channelID:language:isBundleChannel:isAdSupportedChannel:)(StocksAnalytics::ChannelData *__return_ptr retstr, Swift::String channelID, Swift::String language, Swift::Bool isBundleChannel, Swift::Bool isAdSupportedChannel)
{
  retstr->channelID = channelID;
  retstr->language = language;
  retstr->isBundleChannel = isBundleChannel;
  retstr->isAdSupportedChannel = isAdSupportedChannel;
}

unint64_t sub_22035754C()
{
  v1 = 0x496C656E6E616863;
  v2 = 0x656C646E75427369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x65676175676E616CLL;
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

uint64_t sub_2203575DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220357DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220357604(uint64_t a1)
{
  v2 = sub_220357854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220357640(uint64_t a1)
{
  v2 = sub_220357854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelData.encode(to:)(void *a1)
{
  sub_220357B50(0, &qword_281261D08, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v19 = *(v1 + 32);
  v15[1] = *(v1 + 33);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220357854();
  sub_220370168();
  v23 = 0;
  v13 = v18;
  sub_22036FFB8();
  if (!v13)
  {
    v22 = 1;
    sub_22036FFB8();
    v21 = 2;
    sub_22036FFC8();
    v20 = 3;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220357854()
{
  result = qword_281266068;
  if (!qword_281266068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266068);
  }

  return result;
}

uint64_t ChannelData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220357B50(0, &qword_281261E18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220357854();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v12 = sub_22036FEE8();
  v24 = v13;
  v28 = 1;
  v22 = sub_22036FEE8();
  v23 = v14;
  v27 = 2;
  v25 = sub_22036FEF8() & 1;
  v26 = 3;
  v16 = sub_22036FEF8();
  (*(v7 + 8))(v10, v6);
  v17 = v16 & 1;
  v18 = v25;
  v20 = v23;
  v19 = v24;
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v22;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 33) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220357B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220357854();
    v7 = a3(a1, &type metadata for ChannelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220357C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_220357C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220357CB0()
{
  result = qword_27CF296B0;
  if (!qword_27CF296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296B0);
  }

  return result;
}

unint64_t sub_220357D08()
{
  result = qword_281266058;
  if (!qword_281266058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266058);
  }

  return result;
}

unint64_t sub_220357D60()
{
  result = qword_281266060;
  if (!qword_281266060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266060);
  }

  return result;
}

uint64_t sub_220357DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEF6C656E6E616843 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392A00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220357FF8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF296E8);
  __swift_project_value_buffer(v0, qword_27CF296E8);
  return sub_22036F108();
}

uint64_t SymbolChartEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolChartEngagementEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolChartEngagementEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartEngagementEvent.symbolChartData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203583A0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SymbolChartEngagementEvent.symbolChartData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolChartEngagementEvent(0);
  v5 = *(v4 + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SymbolChartEngagementEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolChartEngagementEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t SymbolChartEngagementEvent.Model.symbolChartData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SymbolChartEngagementEvent.Model.init(eventData:symbolData:symbolChartData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v11 = *a3;
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  v14 = a4 + *(result + 20);
  *v14 = v6;
  *(v14 + 8) = v7;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(a4 + *(result + 24)) = v11;
  return result;
}

uint64_t sub_220358808()
{
  v1 = 0x61446C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x68436C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220358878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22035962C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203588A0(uint64_t a1)
{
  v2 = sub_220358B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203588DC(uint64_t a1)
{
  v2 = sub_220358B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220358FC8(0, &qword_27CF29708, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220358B80();
  sub_220370168();
  LOBYTE(v20) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[1];
    v15 = *(v13 + 16);
    v16 = v13[3];
    v17 = v13[4];
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    HIBYTE(v19) = 1;
    sub_220230C50();

    sub_22036FFF8();

    LOBYTE(v20) = *(v3 + *(v12 + 24));
    HIBYTE(v19) = 2;
    sub_22031FF54();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220358B80()
{
  result = qword_27CF29710;
  if (!qword_27CF29710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29710);
  }

  return result;
}

uint64_t SymbolChartEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_22036F388();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220358FC8(0, &qword_27CF29718, MEMORY[0x277D844C8]);
  v33 = v7;
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220358B80();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v30;
  v16 = v31;
  v27 = v11;
  v28 = v14;
  LOBYTE(v34) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v32;
  v18 = v33;
  sub_22036FF28();
  (*(v16 + 32))(v28, v19, v4);
  v39 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v24 = &v28[*(v27 + 20)];
  *v24 = v34;
  *(v24 + 1) = v20;
  v24[16] = v21;
  *(v24 + 3) = v22;
  *(v24 + 4) = v23;
  v39 = 2;
  sub_22031FEFC();
  sub_22036FF28();
  (*(v17 + 8))(v10, v18);
  v25 = v28;
  v28[*(v27 + 24)] = v34;
  sub_22035902C(v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220359090(v25);
}

void sub_220358FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220358B80();
    v7 = a3(a1, &type metadata for SymbolChartEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220359090(uint64_t a1)
{
  v2 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203591C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22035935C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2203583A0(319, &qword_281266870, sub_220230BFC, sub_220230C50);
    if (v1 <= 0x3F)
    {
      sub_2203583A0(319, &qword_27CF29700, sub_22031FEFC, sub_22031FF54);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220359490()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220359528()
{
  result = qword_27CF29740;
  if (!qword_27CF29740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29740);
  }

  return result;
}

unint64_t sub_220359580()
{
  result = qword_27CF29748;
  if (!qword_27CF29748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29748);
  }

  return result;
}

unint64_t sub_2203595D8()
{
  result = qword_27CF29750;
  if (!qword_27CF29750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29750);
  }

  return result;
}

uint64_t sub_22035962C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68436C6F626D7973 && a2 == 0xEF61746144747261)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::PaywallType_optional __swiftcall PaywallType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallType.rawValue.getter()
{
  v1 = 1952870259;
  if (*v0 != 1)
  {
    v1 = 1685217640;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220359804(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1952870259;
  if (v2 != 1)
  {
    v3 = 1685217640;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1952870259;
  if (*a2 != 1)
  {
    v6 = 1685217640;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_2203598EC()
{
  result = qword_27CF29758;
  if (!qword_27CF29758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29758);
  }

  return result;
}

uint64_t sub_220359940()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203599D4()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220359A54()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220359AF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1952870259;
  if (v2 != 1)
  {
    v4 = 1685217640;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_220359C00()
{
  result = qword_281265FF8;
  if (!qword_281265FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265FF8);
  }

  return result;
}

StocksAnalytics::UserType_optional __swiftcall UserType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserType.rawValue.getter()
{
  v1 = 7824750;
  if (*v0 != 1)
  {
    v1 = 0x6E696E7275746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220359D08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7824750;
  if (v2 != 1)
  {
    v4 = 0x6E696E7275746572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7824750;
  if (*a2 != 1)
  {
    v8 = 0x6E696E7275746572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220359E08()
{
  result = qword_27CF29760;
  if (!qword_27CF29760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29760);
  }

  return result;
}

uint64_t sub_220359E5C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220359EFC()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220359F88()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22035A030(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7824750;
  if (v2 != 1)
  {
    v5 = 0x6E696E7275746572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22035A14C()
{
  result = qword_281262138;
  if (!qword_281262138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262138);
  }

  return result;
}

uint64_t sub_22035A268()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281265BD0);
  __swift_project_value_buffer(v0, qword_281265BD0);
  return sub_22036F108();
}

uint64_t FeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.feedViewExperienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22035ADC0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t FeedViewEvent.feedViewExperienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedViewEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_22035B328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FeedViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t FeedViewEvent.Model.feedViewExperienceData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t FeedViewEvent.Model.init(eventData:timedData:feedData:viewData:orientationData:viewEndData:activeWatchlistData:feedViewExperienceData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int16 *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  v16 = *a4;
  v15 = a4[1];
  v17 = *(a4 + 8);
  v26 = *a5;
  v27 = *a6;
  v30 = *a8;
  v28 = *a7;
  v29 = *(a8 + 1);
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for FeedViewEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v23 = a9 + v19[6];
  *v23 = v12;
  *(v23 + 8) = v13;
  *(v23 + 16) = v14;
  v24 = a9 + v19[7];
  *v24 = v16;
  *(v24 + 8) = v15;
  *(v24 + 16) = v17;
  *(a9 + v19[8]) = v26;
  *(a9 + v19[9]) = v27;
  *(a9 + v19[10]) = v28;
  v25 = a9 + v19[11];
  *v25 = v30;
  *(v25 + 4) = v29;
  return result;
}

unint64_t sub_22035B68C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x7461746E6569726FLL;
  if (v1 != 4)
  {
    v4 = 0x44646E4577656976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 2)
  {
    v5 = 0x6174614477656976;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22035B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22035CCDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22035B7C8(uint64_t a1)
{
  v2 = sub_22035BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035B804(uint64_t a1)
{
  v2 = sub_22035BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22035C370(0, &qword_27CF29768, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035BC50();
  sub_220370168();
  LOBYTE(v24) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for FeedViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v24) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v24) = *v14;
    v25 = v15;
    v26 = v16;
    HIBYTE(v23) = 2;
    sub_2201FBD1C();

    sub_22036FFF8();

    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v24 = v18;
    v25 = v19;
    LOWORD(v26) = v17;
    HIBYTE(v23) = 3;
    sub_220202110();

    sub_22036FFF8();

    LOWORD(v24) = *(v3 + v12[8]);
    HIBYTE(v23) = 4;
    sub_2201F8860();
    sub_22036FFF8();
    LOBYTE(v24) = *(v3 + v12[9]);
    HIBYTE(v23) = 5;
    sub_2202310D4();
    sub_22036FFF8();
    LOBYTE(v24) = *(v3 + v12[10]);
    HIBYTE(v23) = 6;
    sub_220237C70();
    sub_22036FF88();
    v20 = (v3 + v12[11]);
    v21 = *v20;
    LODWORD(v20) = *(v20 + 1);
    LOBYTE(v24) = v21;
    HIDWORD(v24) = v20;
    HIBYTE(v23) = 7;
    sub_2202887D0();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22035BC50()
{
  result = qword_281265BC0;
  if (!qword_281265BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BC0);
  }

  return result;
}

uint64_t FeedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_22036F3C8();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22035C370(0, &qword_281261DF8, MEMORY[0x277D844C8]);
  v47 = v9;
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = type metadata accessor for FeedViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035BC50();
  v46 = v12;
  v18 = v48;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v48 = v13;
  v20 = v16;
  v22 = v43;
  v21 = v44;
  v23 = v41;
  LOBYTE(v49) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v24 = *(v21 + 32);
  v25 = v45;
  v45 = v6;
  v24(v20, v25, v6);
  LOBYTE(v49) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  v26 = v48;
  (*(v23 + 32))(&v20[*(v48 + 20)], v19, v22);
  v52 = 2;
  sub_2201FBCC4();
  v39[1] = 0;
  sub_22036FF28();
  v27 = v20;
  v28 = v50;
  v29 = v51;
  v30 = &v20[v26[6]];
  *v30 = v49;
  *(v30 + 1) = v28;
  *(v30 + 2) = v29;
  v52 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v31 = v26;
  v32 = v50;
  v33 = v51;
  v34 = v27 + v26[7];
  *v34 = v49;
  *(v34 + 8) = v32;
  *(v34 + 16) = v33;
  v52 = 4;
  sub_2201F8808();
  sub_22036FF28();
  v35 = v42;
  *(v27 + v31[8]) = v49;
  v52 = 5;
  sub_220231080();
  sub_22036FF28();
  *(v27 + v31[9]) = v49;
  v52 = 6;
  sub_220237C1C();
  sub_22036FEB8();
  *(v27 + v31[10]) = v49;
  v52 = 7;
  sub_220288778();
  sub_22036FF28();
  (*(v35 + 8))(v46, v47);
  v36 = HIDWORD(v49);
  v37 = v27 + v31[11];
  *v37 = v49;
  *(v37 + 4) = v36;
  sub_22035C3D4(v27, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22035C438(v27);
}

void sub_22035C370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035BC50();
    v7 = a3(a1, &type metadata for FeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035C3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22035C438(uint64_t a1)
{
  v2 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22035C56C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_22035C938()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_22035ADC0(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
      if (v2 <= 0x3F)
      {
        sub_22035ADC0(319, &qword_281266728, sub_2202020B8, sub_220202110);
        if (v3 <= 0x3F)
        {
          sub_22035ADC0(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
          if (v4 <= 0x3F)
          {
            sub_22035ADC0(319, &qword_281266840, sub_220231080, sub_2202310D4);
            if (v5 <= 0x3F)
            {
              sub_22035ADC0(319, &qword_281266810, sub_220237C1C, sub_220237C70);
              if (v6 <= 0x3F)
              {
                sub_22035ADC0(319, &qword_281266768, sub_220288778, sub_2202887D0);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22035CBD8()
{
  result = qword_27CF29770;
  if (!qword_27CF29770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29770);
  }

  return result;
}

unint64_t sub_22035CC30()
{
  result = qword_281265BB0;
  if (!qword_281265BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BB0);
  }

  return result;
}

unint64_t sub_22035CC88()
{
  result = qword_281265BB8;
  if (!qword_281265BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BB8);
  }

  return result;
}

uint64_t sub_22035CCDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220392A20 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22035CFAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_22035D02C(uint64_t a1)
{
  sub_2201FBAB4(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22035D0B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22035D184(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_220304FA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22035D184(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22035D290(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22036FD98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22035D290(uint64_t a1, unint64_t a2)
{
  v4 = sub_22035D2DC(a1, a2);
  sub_22035D40C(&unk_2833F0448);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22035D2DC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22035D4F8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22036FD98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22036FB28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22035D4F8(v10, 0);
        result = sub_22036FD68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22035D40C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22035D560(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22035D4F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22035D648();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22035D560(char *result, int64_t a2, char a3, char *a4)
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
    sub_22035D648();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_22035D648()
{
  if (!qword_27CF29778)
  {
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF29778);
    }
  }
}

StocksAnalytics::Role_optional __swiftcall Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Role.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_22035D758(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22035D86C()
{
  result = qword_27CF29780;
  if (!qword_27CF29780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29780);
  }

  return result;
}

uint64_t sub_22035D8C0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035D96C()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22035DA04()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22035DAB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22035DBE0()
{
  result = qword_2812622E0;
  if (!qword_2812622E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622E0);
  }

  return result;
}

uint64_t sub_22035DCFC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29788);
  __swift_project_value_buffer(v0, qword_27CF29788);
  return sub_22036F108();
}

uint64_t FeedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t FeedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadFailureEvent.Model.init(eventData:feedData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v10 = a3 + *(result + 20);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  return result;
}

uint64_t sub_22035E15C(uint64_t a1)
{
  v2 = sub_22035E3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035E198(uint64_t a1)
{
  v2 = sub_22035E3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22035E77C(0, &qword_27CF297A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035E3C0();
  sub_220370168();
  v17 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20));
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v16[7] = 1;
    sub_2201FBD1C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22035E3C0()
{
  result = qword_27CF297A8;
  if (!qword_27CF297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297A8);
  }

  return result;
}

uint64_t FeedLoadFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_22036F388();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22035E77C(0, &qword_27CF297B0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v13 = *(*(Failure - 8) + 64);
  MEMORY[0x28223BE20](Failure);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035E3C0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = Failure;
  v17 = v15;
  v18 = v30;
  v34 = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v33;
  v20 = v31;
  sub_22036FF28();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v37 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  (*(v32 + 8))(v11, v20);
  v22 = v35;
  v23 = v36;
  v24 = v27;
  v25 = v27 + *(v28 + 20);
  *v25 = v34;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  sub_22035E7E0(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22035E844(v24);
}

void sub_22035E77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035E3C0();
    v7 = a3(a1, &type metadata for FeedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035E7E0(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_22035E844(uint64_t a1)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

unint64_t sub_22035E9DC()
{
  result = qword_27CF297C8;
  if (!qword_27CF297C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297C8);
  }

  return result;
}

unint64_t sub_22035EA34()
{
  result = qword_27CF297D0;
  if (!qword_27CF297D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297D0);
  }

  return result;
}

unint64_t sub_22035EA8C()
{
  result = qword_27CF297D8;
  if (!qword_27CF297D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297D8);
  }

  return result;
}

uint64_t sub_22035EBA8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29810);
  __swift_project_value_buffer(v0, qword_27CF29810);
  return sub_22036F108();
}

uint64_t AdEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdEngagementEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 20);
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 20);
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 24);
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 24);
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.adEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 28);
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.adEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 28);
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 32);
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22035F2B0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AdEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 32);
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdEngagementEvent(0);
  v5 = v4[5];
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t AdEngagementEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202823D8(v10, v9);
}

uint64_t AdEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AdEngagementEvent.Model.adEngagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AdEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 AdEngagementEvent.Model.init(eventData:adData:viewData:adEngagementData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 8);
  v12 = *a4;
  v25 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = a5[2].n128_u8[0];
  v24 = a5[2].n128_u8[1];
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for AdEngagementEvent.Model(0);
  v18 = a6 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a2 + 64);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  v21 = a6 + v17[6];
  *v21 = v9;
  *(v21 + 8) = v10;
  *(v21 + 16) = v11;
  *(a6 + v17[7]) = v12;
  v22 = (a6 + v17[8]);
  result = v25;
  *v22 = v25;
  v22[1].n128_u64[0] = v13;
  v22[1].n128_u64[1] = v14;
  v22[2].n128_u8[0] = v15;
  v22[2].n128_u8[1] = v24;
  return result;
}

uint64_t sub_22035F92C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617461446461;
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

uint64_t sub_22035F9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220360B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22035F9FC(uint64_t a1)
{
  v2 = sub_22035FE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035FA38(uint64_t a1)
{
  v2 = sub_22035FE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220360344(0, &qword_27CF29828, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035FE1C();
  sub_220370168();
  v47 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AdEngagementEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v44 = *(v13 + 32);
    v45 = v15;
    v16 = *(v13 + 16);
    v43[0] = *v13;
    v43[1] = v16;
    v39 = v14;
    v40 = v44;
    v41 = *(v13 + 48);
    v46 = *(v13 + 64);
    v42 = *(v13 + 64);
    v38 = v43[0];
    v37 = 1;
    sub_2202823D8(v43, v35);
    sub_220281D4C();
    sub_22036FFF8();
    v35[2] = v40;
    v35[3] = v41;
    v36 = v42;
    v35[0] = v38;
    v35[1] = v39;
    sub_220282A40(v35);
    v17 = (v3 + v12[6]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v28 = v18;
    v29 = v19;
    LOWORD(v30) = v17;
    v34 = 2;
    sub_220202110();

    sub_22036FFF8();

    LOBYTE(v28) = *(v3 + v12[7]);
    v34 = 3;
    sub_2202DD618();
    sub_22036FFF8();
    v21 = (v3 + v12[8]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *(v21 + 32);
    LOBYTE(v21) = *(v21 + 33);
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v21;
    v34 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22035FE1C()
{
  result = qword_27CF29830;
  if (!qword_27CF29830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29830);
  }

  return result;
}

uint64_t AdEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22036F388();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220360344(0, &qword_27CF29838, MEMORY[0x277D844C8]);
  v37 = v7;
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AdEngagementEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035FE1C();
  v36 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v43) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v34;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v49 = 1;
  sub_220281CF8();
  sub_22036FF28();
  v18 = v35;
  v19 = &v14[v11[5]];
  v20 = v46;
  *(v19 + 2) = v45;
  *(v19 + 3) = v20;
  *(v19 + 8) = v47;
  v21 = v44;
  *v19 = v43;
  *(v19 + 1) = v21;
  v48 = 2;
  sub_2202020B8();
  v34 = 0;
  sub_22036FF28();
  v22 = *(&v38 + 1);
  v23 = v39;
  v24 = &v14[v11[6]];
  *v24 = v38;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  v48 = 3;
  sub_2202DD5C4();
  sub_22036FF28();
  v14[v11[7]] = v38;
  v48 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v18 + 8))(v36, v37);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = &v14[v11[8]];
  *v29 = v38;
  *(v29 + 2) = v25;
  *(v29 + 3) = v26;
  v29[32] = v27;
  v29[33] = v28;
  sub_2203603A8(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22036040C(v14);
}

void sub_220360344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035FE1C();
    v7 = a3(a1, &type metadata for AdEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203603A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036040C(uint64_t a1)
{
  v2 = type metadata accessor for AdEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220360540@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2203607C8()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22035F2B0(319, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
    if (v1 <= 0x3F)
    {
      sub_22035F2B0(319, &qword_281266728, sub_2202020B8, sub_220202110);
      if (v2 <= 0x3F)
      {
        sub_22035F2B0(319, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
        if (v3 <= 0x3F)
        {
          sub_22035F2B0(319, &qword_281266858, sub_220236A30, sub_220236A84);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22036099C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220360A48()
{
  result = qword_27CF29860;
  if (!qword_27CF29860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29860);
  }

  return result;
}

unint64_t sub_220360AA0()
{
  result = qword_27CF29868;
  if (!qword_27CF29868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29868);
  }

  return result;
}

unint64_t sub_220360AF8()
{
  result = qword_27CF29870;
  if (!qword_27CF29870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29870);
  }

  return result;
}

uint64_t sub_220360B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203913F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220360DD4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263FF8);
  __swift_project_value_buffer(v0, qword_281263FF8);
  return sub_22036F108();
}

uint64_t NewsArticleViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NewsArticleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 24);
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 24);
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 28);
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 28);
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 32);
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 32);
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 36);
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 36);
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 40);
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 40);
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 44);
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 44);
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 48);
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 48);
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 52);
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 52);
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 56);
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 56);
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 60);
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 60);
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.badgeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 64);
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.badgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 64);
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 68);
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 68);
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.articleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 72);
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.articleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 72);
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 76);
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 76);
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 80);
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 80);
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 84);
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 84);
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 88);
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.referringArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 88);
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 92);
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 92);
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 96);
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220362F1C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t NewsArticleViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 96);
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NewsArticleViewEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v35 - 8) + 104))(a1 + v34, v2, v35);
  v36 = v4[20];
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  (*(*(v37 - 8) + 104))(a1 + v36, v10, v37);
  v38 = v4[21];
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  (*(*(v39 - 8) + 104))(a1 + v38, v10, v39);
  v40 = v4[22];
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0);
  (*(*(v41 - 8) + 104))(a1 + v40, v10, v41);
  v42 = v4[23];
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254);
  (*(*(v43 - 8) + 104))(a1 + v42, v10, v43);
  v44 = v4[24];
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v46 = *(*(v45 - 8) + 104);

  return v46(a1 + v44, v10, v45);
}

uint64_t sub_220363A9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NewsArticleViewEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t NewsArticleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NewsArticleViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NewsArticleViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t NewsArticleViewEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t NewsArticleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NewsArticleViewEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 48);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v26 = *(v3 + 64);
  v14 = v26;
  v27 = v13;
  v15 = *(v3 + 16);
  v16 = *(v3 + 48);
  v24 = *(v3 + 32);
  v17 = v24;
  v25 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v15;
  return sub_220272A1C(v23, v22);
}

uint64_t NewsArticleViewEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t NewsArticleViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t NewsArticleViewEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsArticleViewEvent.Model.badgeData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t NewsArticleViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t NewsArticleViewEvent.Model.articleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsArticleViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t NewsArticleViewEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 80));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsArticleViewEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_220298C74(v4, v5);
}

uint64_t NewsArticleViewEvent.Model.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 88);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t NewsArticleViewEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t NewsArticleViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

__n128 NewsArticleViewEvent.Model.init(eventData:timedData:newsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:viewData:articleScienceData:userArticleContextData:orientationData:issueData:badgeData:channelData:articleViewData:viewEndData:purchaseSessionData:campaignData:referringArticleData:paywallData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int *a4@<X3>, int *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int16 *a11, __int16 *a12, uint64_t *a13, __int16 *a14, __int128 *a15, uint64_t *a16, char *a17, uint64_t *a18, __int128 *a19, __n128 *a20, char *a21, char *a22)
{
  v27 = *a4;
  v64 = *(a4 + 4);
  v65 = *(a5 + 4);
  v66 = *a5;
  v68 = *a6;
  v67 = *(a6 + 2);
  v70 = a8[1];
  v71 = *a8;
  v69 = *(a8 + 8);
  v74 = *a11;
  v75 = *a12;
  v76 = a13[1];
  v77 = *a13;
  v78 = *a14;
  v88 = *a15;
  v84 = *(a15 + 2);
  v83 = *(a15 + 3);
  v81 = *(a15 + 33);
  v82 = *(a15 + 32);
  v85 = a16[1];
  v86 = *a16;
  v87 = *a17;
  v89 = a18[1];
  v90 = *a18;
  v95 = *a20;
  v92 = a20[1].n128_u64[0];
  v91 = a20[1].n128_u8[8];
  v93 = *a21;
  v94 = *a22;
  v28 = *(a7 + 4);
  v29 = *(a7 + 5);
  v79 = *(a19 + 5);
  v80 = *(a19 + 4);
  v30 = sub_22036F388();
  v72 = a19[1];
  v73 = *a19;
  v62 = a7[1];
  v63 = *a7;
  (*(*(v30 - 8) + 32))(a9, a1, v30);
  v31 = type metadata accessor for NewsArticleViewEvent.Model(0);
  v32 = v31[5];
  v33 = sub_22036F3C8();
  (*(*(v33 - 8) + 32))(a9 + v32, a2, v33);
  v34 = a9 + v31[6];
  *(v34 + 64) = *(a3 + 16);
  v35 = a3[3];
  v37 = *a3;
  v36 = a3[1];
  *(v34 + 32) = a3[2];
  *(v34 + 48) = v35;
  *v34 = v37;
  *(v34 + 16) = v36;
  v38 = a9 + v31[7];
  *v38 = v27;
  *(v38 + 4) = v64;
  v39 = a9 + v31[8];
  *v39 = v66;
  *(v39 + 4) = v65;
  v40 = a9 + v31[9];
  *(v40 + 16) = v67;
  *v40 = v68;
  v41 = a9 + v31[10];
  *(v41 + 32) = v28;
  *(v41 + 40) = v29;
  *v41 = v63;
  *(v41 + 16) = v62;
  v42 = a9 + v31[11];
  *v42 = v71;
  *(v42 + 8) = v70;
  *(v42 + 16) = v69;
  v43 = a9 + v31[12];
  *(v43 + 192) = *(a10 + 24);
  v44 = a10[11];
  v45 = a10[6];
  v46 = a10[7];
  v48 = a10[8];
  v47 = a10[9];
  v49 = a10[2];
  v50 = a10[3];
  v52 = a10[4];
  v51 = a10[5];
  v54 = *a10;
  v53 = a10[1];
  *(v43 + 160) = a10[10];
  *(v43 + 176) = v44;
  *(v43 + 96) = v45;
  *(v43 + 112) = v46;
  *(v43 + 128) = v48;
  *(v43 + 144) = v47;
  *(v43 + 32) = v49;
  *(v43 + 48) = v50;
  *(v43 + 64) = v52;
  *(v43 + 80) = v51;
  *v43 = v54;
  *(v43 + 16) = v53;
  *(a9 + v31[13]) = v74;
  *(a9 + v31[14]) = v75;
  v55 = (a9 + v31[15]);
  *v55 = v77;
  v55[1] = v76;
  *(a9 + v31[16]) = v78;
  v56 = a9 + v31[17];
  *(v56 + 16) = v84;
  *(v56 + 24) = v83;
  *(v56 + 32) = v82;
  *(v56 + 33) = v81;
  *v56 = v88;
  v57 = (a9 + v31[18]);
  *v57 = v86;
  v57[1] = v85;
  *(a9 + v31[19]) = v87;
  v58 = (a9 + v31[20]);
  *v58 = v90;
  v58[1] = v89;
  v59 = a9 + v31[21];
  *(v59 + 32) = v80;
  *(v59 + 40) = v79;
  *v59 = v73;
  *(v59 + 16) = v72;
  v60 = (a9 + v31[22]);
  v60[1].n128_u64[0] = v92;
  v60[1].n128_u8[8] = v91;
  result = v95;
  *v60 = v95;
  *(a9 + v31[23]) = v93;
  *(a9 + v31[24]) = v94;
  return result;
}

uint64_t sub_220364480(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x697472417377656ELL;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0xD000000000000013;
    case 5:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 6:
      return 0x74614470756F7267;
    case 7:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 8:
      return 0xD000000000000012;
    case 9:
      return 0xD000000000000016;
    case 10:
      return 0x7461746E6569726FLL;
    case 11:
      v3 = 1970500457;
      return v3 | 0x7461446500000000;
    case 12:
      v3 = 1734631778;
      return v3 | 0x7461446500000000;
    case 13:
      v5 = 0x656E6E616863;
      goto LABEL_25;
    case 14:
      return 0x56656C6369747261;
    case 15:
      return 0x44646E4577656976;
    case 16:
      return 0xD000000000000013;
    case 17:
      return 0x6E676961706D6163;
    case 18:
      return 0xD000000000000014;
    case 19:
      v5 = 0x6C6177796170;
LABEL_25:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2203646CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220366E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220364700(uint64_t a1)
{
  v2 = sub_2203651F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22036473C(uint64_t a1)
{
  v2 = sub_2203651F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203661D4(0, &qword_27CF29878, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v68 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203651F8();
  sub_220370168();
  LOBYTE(v91) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NewsArticleViewEvent.Model(0);
    v13 = v12[5];
    v120 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v117 = *(v14 + 32);
    v118 = v16;
    v17 = *(v14 + 16);
    v116[0] = *v14;
    v116[1] = v17;
    v18 = *(v14 + 48);
    v113 = v117;
    v114 = v18;
    v119 = *(v14 + 64);
    v115 = *(v14 + 64);
    v111 = v116[0];
    v112 = v15;
    v110 = 2;
    sub_22022ECDC(v116, &v91);
    sub_22022EDA0();
    sub_22036FFF8();
    v108[2] = v113;
    v108[3] = v114;
    v109 = v115;
    v108[0] = v111;
    v108[1] = v112;
    sub_22022ED14(v108);
    v19 = (v3 + v12[7]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v91) = v20;
    BYTE4(v91) = v19;
    LOBYTE(v78) = 3;
    sub_2202760D8();
    sub_22036FF88();
    v21 = (v3 + v12[8]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    LODWORD(v91) = v22;
    BYTE4(v91) = v21;
    LOBYTE(v78) = 4;
    sub_220276330();
    sub_22036FF88();
    v23 = (v3 + v12[9]);
    v24 = *(v23 + 2);
    v91 = *v23;
    *&v92 = v24;
    LOBYTE(v78) = 5;
    sub_2201FBD1C();

    sub_22036FF88();

    v25 = (v3 + v12[10]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    *&v91 = *v25;
    *(&v91 + 1) = v26;
    *&v92 = v27;
    *(&v92 + 1) = v28;
    *&v93 = v29;
    *(&v93 + 1) = v30;
    LOBYTE(v78) = 6;
    sub_22023846C(v91, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v91, *(&v91 + 1), v92);
    v32 = (v3 + v12[11]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 8);
    v105 = v33;
    v106 = v34;
    v107 = v32;
    v104 = 7;
    sub_220202110();

    sub_22036FFF8();

    v35 = (v3 + v12[12]);
    v36 = v35[9];
    v37 = v35[11];
    v101 = v35[10];
    v102 = v37;
    v38 = v35[5];
    v39 = v35[7];
    v97 = v35[6];
    v98 = v39;
    v40 = v35[7];
    v41 = v35[9];
    v99 = v35[8];
    v100 = v41;
    v42 = v35[1];
    v43 = v35[3];
    v93 = v35[2];
    v94 = v43;
    v44 = v35[3];
    v45 = v35[5];
    v95 = v35[4];
    v96 = v45;
    v46 = v35[1];
    v91 = *v35;
    v92 = v46;
    v47 = v35[11];
    v88 = v101;
    v89 = v47;
    v84 = v97;
    v85 = v40;
    v86 = v99;
    v87 = v36;
    v80 = v93;
    v81 = v44;
    v82 = v95;
    v83 = v38;
    v103 = *(v35 + 24);
    v90 = *(v35 + 24);
    v78 = v91;
    v79 = v42;
    v77 = 8;
    sub_220272A1C(&v91, v75);
    sub_22025E6C0();
    sub_22036FFF8();
    v75[9] = v87;
    v75[10] = v88;
    v75[11] = v89;
    v75[5] = v83;
    v75[6] = v84;
    v76 = v90;
    v75[7] = v85;
    v75[8] = v86;
    v75[2] = v80;
    v75[3] = v81;
    v75[4] = v82;
    v75[0] = v78;
    v75[1] = v79;
    sub_22027391C(v75);
    LOWORD(v69) = *(v3 + v12[13]);
    v74 = 9;
    sub_22025E918();
    sub_22036FFF8();
    LOWORD(v69) = *(v3 + v12[14]);
    v74 = 10;
    sub_2201F8860();
    sub_22036FFF8();
    v48 = (v3 + v12[15]);
    v49 = v48[1];
    v69 = *v48;
    *&v70 = v49;
    v74 = 11;
    sub_220237744();

    sub_22036FF88();

    LOWORD(v69) = *(v3 + v12[16]);
    v74 = 12;
    sub_2202FD580();
    sub_22036FF88();
    v50 = v3 + v12[17];
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 24);
    v55 = *(v50 + 32);
    LOBYTE(v50) = *(v50 + 33);
    v69 = v51;
    *&v70 = v52;
    *(&v70 + 1) = v53;
    v71 = v54;
    LOBYTE(v72) = v55;
    BYTE1(v72) = v50;
    v74 = 13;
    sub_220236A84();

    sub_22036FFF8();

    v56 = (v3 + v12[18]);
    v57 = v56[1];
    v69 = *v56;
    *&v70 = v57;
    v74 = 14;
    sub_220250F98();

    sub_22036FFF8();

    LOBYTE(v69) = *(v3 + v12[19]);
    v74 = 15;
    sub_2202310D4();
    sub_22036FFF8();
    v58 = (v3 + v12[20]);
    v59 = v58[1];
    v69 = *v58;
    *&v70 = v59;
    v74 = 16;
    sub_220265D28();

    sub_22036FF88();

    v60 = (v3 + v12[21]);
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[3];
    v64 = v60[4];
    v65 = v60[5];
    v69 = *v60;
    *&v70 = v61;
    *(&v70 + 1) = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = 17;
    sub_220298C74(v69, v61);
    sub_2202981C0();
    sub_22036FF88();
    sub_220299818(v69, v70);
    v66 = v3 + v12[22];
    v67 = *(v66 + 24);
    v69 = *v66;
    v70 = *(v66 + 8);
    LOBYTE(v71) = v67;
    v74 = 18;
    sub_2202DC1E0();

    sub_22036FF88();

    LOBYTE(v69) = *(v3 + v12[23]);
    v74 = 19;
    sub_220266254();
    sub_22036FF88();
    LOBYTE(v69) = *(v3 + v12[24]);
    v74 = 20;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2203651F8()
{
  result = qword_281263FE0;
  if (!qword_281263FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FE0);
  }

  return result;
}

uint64_t NewsArticleViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_22036F3C8();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203661D4(0, &qword_281261DB0, MEMORY[0x277D844C8]);
  v71 = v9;
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v60 - v11;
  v13 = type metadata accessor for NewsArticleViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203651F8();
  v70 = v12;
  v18 = v72;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v67;
  v61 = v13;
  v62 = a1;
  v72 = v16;
  LOBYTE(v81) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  v20 = v68;
  sub_22036FF28();
  v21 = *(v66 + 32);
  v22 = v72;
  v68 = v6;
  v21(v72, v20, v6);
  LOBYTE(v81) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  v23 = v19;
  v24 = v65;
  sub_22036FF28();
  v60[1] = 0;
  v25 = v61;
  (*(v64 + 32))(&v22[v61[5]], v23, v24);
  v96 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v26 = &v22[v25[6]];
  v27 = v79;
  *(v26 + 2) = v78;
  *(v26 + 3) = v27;
  *(v26 + 16) = v80;
  v28 = v77;
  *v26 = v76;
  *(v26 + 1) = v28;
  LOBYTE(v73) = 3;
  sub_220276084();
  sub_22036FEB8();
  v29 = BYTE4(v81);
  v30 = &v22[v25[7]];
  *v30 = v81;
  v30[4] = v29;
  LOBYTE(v73) = 4;
  sub_2202762DC();
  sub_22036FEB8();
  v31 = BYTE4(v81);
  v32 = &v22[v25[8]];
  *v32 = v81;
  v32[4] = v31;
  LOBYTE(v73) = 5;
  sub_2201FBCC4();
  sub_22036FEB8();
  v33 = v82;
  v34 = &v22[v25[9]];
  *v34 = v81;
  *(v34 + 2) = v33;
  LOBYTE(v73) = 6;
  sub_220236C88();
  sub_22036FEB8();
  v35 = &v22[v25[10]];
  v36 = v82;
  *v35 = v81;
  *(v35 + 1) = v36;
  *(v35 + 2) = v83;
  LOBYTE(v73) = 7;
  sub_2202020B8();
  sub_22036FF28();
  v37 = *(&v81 + 1);
  v38 = v82;
  v39 = &v22[v25[11]];
  *v39 = v81;
  *(v39 + 1) = v37;
  *(v39 + 8) = v38;
  v95 = 8;
  sub_22025E66C();
  sub_22036FF28();
  v40 = &v72[v61[12]];
  v41 = v92;
  *(v40 + 10) = v91;
  *(v40 + 11) = v41;
  *(v40 + 24) = v93;
  v42 = v88;
  *(v40 + 6) = v87;
  *(v40 + 7) = v42;
  v43 = v90;
  *(v40 + 8) = v89;
  *(v40 + 9) = v43;
  v44 = v84;
  *(v40 + 2) = v83;
  *(v40 + 3) = v44;
  v45 = v86;
  *(v40 + 4) = v85;
  *(v40 + 5) = v45;
  v46 = v82;
  *v40 = v81;
  *(v40 + 1) = v46;
  v94 = 9;
  sub_22025E8C4();
  sub_22036FF28();
  *&v72[v61[13]] = v73;
  v94 = 10;
  sub_2201F8808();
  sub_22036FF28();
  *&v72[v61[14]] = v73;
  v94 = 11;
  sub_2202376F0();
  sub_22036FEB8();
  *&v72[v61[15]] = v73;
  v94 = 12;
  sub_2202FD52C();
  sub_22036FEB8();
  *&v72[v61[16]] = v73;
  v94 = 13;
  sub_220236A30();
  sub_22036FF28();
  v47 = v74;
  v48 = v75;
  v49 = BYTE1(v75);
  v50 = &v72[v61[17]];
  *v50 = v73;
  *(v50 + 1) = v47;
  v50[32] = v48;
  v50[33] = v49;
  v94 = 14;
  sub_220250F44();
  sub_22036FF28();
  v51 = *(&v73 + 1);
  v52 = &v72[v61[18]];
  *v52 = v73;
  *(v52 + 1) = v51;
  v94 = 15;
  sub_220231080();
  sub_22036FF28();
  v72[v61[19]] = v73;
  v94 = 16;
  sub_220265CD4();
  sub_22036FEB8();
  *&v72[v61[20]] = v73;
  v94 = 17;
  sub_22029816C();
  sub_22036FEB8();
  v53 = &v72[v61[21]];
  v54 = v74;
  *v53 = v73;
  *(v53 + 1) = v54;
  *(v53 + 2) = v75;
  v94 = 18;
  sub_2202DC188();
  sub_22036FEB8();
  v55 = v74;
  v56 = BYTE8(v74);
  v57 = &v72[v61[22]];
  *v57 = v73;
  *(v57 + 2) = v55;
  v57[24] = v56;
  v94 = 19;
  sub_220266200();
  sub_22036FEB8();
  v72[v61[23]] = v73;
  v94 = 20;
  sub_220237C1C();
  sub_22036FEB8();
  (*(v69 + 8))(v70, v71);
  v58 = v72;
  v72[v61[24]] = v73;
  sub_220366238(v58, v63);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return sub_22036629C(v58);
}

void sub_2203661D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203651F8();
    v7 = a3(a1, &type metadata for NewsArticleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220366238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036629C(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203663FC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_220362F1C(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
      if (v2 <= 0x3F)
      {
        sub_220362F1C(319, &qword_2812667C0, sub_220276084, sub_2202760D8);
        if (v3 <= 0x3F)
        {
          sub_220362F1C(319, &qword_281266798, sub_2202762DC, sub_220276330);
          if (v4 <= 0x3F)
          {
            sub_220362F1C(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
            if (v5 <= 0x3F)
            {
              sub_220362F1C(319, &qword_281266718, sub_220236C88, sub_220236CDC);
              if (v6 <= 0x3F)
              {
                sub_220362F1C(319, &qword_281266728, sub_2202020B8, sub_220202110);
                if (v7 <= 0x3F)
                {
                  sub_220362F1C(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
                  if (v8 <= 0x3F)
                  {
                    sub_220362F1C(319, &qword_281266760, sub_22025E8C4, sub_22025E918);
                    if (v9 <= 0x3F)
                    {
                      sub_220362F1C(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
                      if (v10 <= 0x3F)
                      {
                        sub_220362F1C(319, &qword_281266710, sub_2202376F0, sub_220237744);
                        if (v11 <= 0x3F)
                        {
                          sub_220362F1C(319, &qword_281266720, sub_2202FD52C, sub_2202FD580);
                          if (v12 <= 0x3F)
                          {
                            sub_220362F1C(319, &qword_281266858, sub_220236A30, sub_220236A84);
                            if (v13 <= 0x3F)
                            {
                              sub_220362F1C(319, &qword_2812667E8, sub_220250F44, sub_220250F98);
                              if (v14 <= 0x3F)
                              {
                                sub_220362F1C(319, &qword_281266840, sub_220231080, sub_2202310D4);
                                if (v15 <= 0x3F)
                                {
                                  sub_220362F1C(319, &qword_281266788, sub_220265CD4, sub_220265D28);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_220362F1C(319, &qword_281266830, sub_22029816C, sub_2202981C0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_220362F1C(319, &qword_281266780, sub_2202DC188, sub_2202DC1E0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_220362F1C(319, &qword_281266848, sub_220266200, sub_220266254);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_220362F1C(319, &qword_281266810, sub_220237C1C, sub_220237C70);
                                          if (v20 <= 0x3F)
                                          {
                                            swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220366A9C()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812652B8);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_2812644F0);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262190);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262048);
            if (v5 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281262008);
              if (v6 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_2812620C0);
                if (v7 <= 0x3F)
                {
                  sub_22023A8F4(319, &qword_2812644B0);
                  if (v8 <= 0x3F)
                  {
                    sub_22023A8F4(319, &qword_281265DA0);
                    if (v9 <= 0x3F)
                    {
                      sub_22023A8F4(319, &qword_281263CA0);
                      if (v10 <= 0x3F)
                      {
                        sub_22023A8F4(319, &qword_281266008);
                        if (v11 <= 0x3F)
                        {
                          sub_22023A8F4(319, &qword_281265970);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_220366D40()
{
  result = qword_27CF29880;
  if (!qword_27CF29880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29880);
  }

  return result;
}

unint64_t sub_220366D98()
{
  result = qword_281263FD0;
  if (!qword_281263FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FD0);
  }

  return result;
}

unint64_t sub_220366DF0()
{
  result = qword_281263FD8;
  if (!qword_281263FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FD8);
  }

  return result;
}

uint64_t sub_220366E44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461446567646162 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x56656C6369747261 && a2 == 0xEF61746144776569 || (sub_220370048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392B30 == a2 || (sub_220370048() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_2203675A0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF298B8);
  __swift_project_value_buffer(v0, qword_27CF298B8);
  return sub_22036F108();
}

uint64_t SubscribeButtonTapEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220368518(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonTapEvent(0);
  v5 = v4[5];
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t SubscribeButtonTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202669E8(v10, v9);
}

uint64_t SubscribeButtonTapEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t SubscribeButtonTapEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_2202440A8(v4, v5);
}

uint64_t SubscribeButtonTapEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t SubscribeButtonTapEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SubscribeButtonTapEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 SubscribeButtonTapEvent.Model.init(eventData:viewData:newsArticleData:feedData:channelData:groupData:purchaseSessionData:purchaseData:paywallData:subscribeButtonContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10, __int16 *a11)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 8);
  v37 = *a4;
  v19 = *(a4 + 2);
  v20 = *(a5 + 16);
  v38 = *(a6 + 40);
  v39 = *(a6 + 32);
  v40 = a7[1];
  v41 = *a7;
  v43 = a8[1];
  v44 = *a8;
  v42 = *(a8 + 16);
  v45 = *a10;
  v46 = *a11;
  v21 = sub_22036F388();
  v35 = *(a6 + 16);
  v36 = *a6;
  v33 = a5[1];
  v34 = *a5;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v23 = a9 + v22[5];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v18;
  v24 = a9 + v22[6];
  v25 = *(a3 + 48);
  *(v24 + 32) = *(a3 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a3 + 64);
  v26 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 16) = v26;
  v27 = a9 + v22[7];
  *v27 = v37;
  *(v27 + 16) = v19;
  v28 = a9 + v22[8];
  *v28 = v34;
  *(v28 + 16) = v33;
  *(v28 + 32) = v20;
  v29 = a9 + v22[9];
  result = v36;
  *v29 = v36;
  *(v29 + 16) = v35;
  *(v29 + 32) = v39;
  *(v29 + 40) = v38;
  v31 = (a9 + v22[10]);
  *v31 = v41;
  v31[1] = v40;
  v32 = a9 + v22[11];
  *v32 = v44;
  *(v32 + 8) = v43;
  *(v32 + 16) = v42;
  *(a9 + v22[12]) = v45;
  *(a9 + v22[13]) = v46;
  return result;
}

unint64_t sub_220368FF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6573616863727570;
    v6 = 0x446C6C6177796170;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74614470756F7267;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x697472417377656ELL;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x446C656E6E616863;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6174614477656976;
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
}

uint64_t sub_220369168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22036AD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220369190(uint64_t a1)
{
  v2 = sub_220369790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203691CC(uint64_t a1)
{
  v2 = sub_220369790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22036A0A0(0, &qword_27CF298D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220369790();
  sub_220370168();
  LOBYTE(v52[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v56 = v14;
    v57 = v15;
    v58 = v13;
    v61 = 1;
    sub_220202110();

    sub_22036FFF8();

    v16 = v3 + v12[6];
    v17 = *(v16 + 16);
    v18 = *(v16 + 48);
    v53 = *(v16 + 32);
    v54 = v18;
    v19 = *(v16 + 16);
    v52[0] = *v16;
    v52[1] = v19;
    v20 = *(v16 + 48);
    v49 = v53;
    v50 = v20;
    v55 = *(v16 + 64);
    v51 = *(v16 + 64);
    v47 = v52[0];
    v48 = v17;
    v60 = 2;
    sub_2202669E8(v52, v45);
    sub_22022EDA0();
    sub_22036FF88();
    v45[2] = v49;
    v45[3] = v50;
    v46 = v51;
    v45[0] = v47;
    v45[1] = v48;
    sub_220267640(v45);
    v22 = (v3 + v12[7]);
    v23 = *(v22 + 2);
    v40 = *v22;
    v41 = v23;
    v59 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = v3 + v12[8];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    v28 = *(v24 + 32);
    *&v40 = *v24;
    *(&v40 + 1) = v25;
    v41 = v26;
    v42 = v27;
    LOWORD(v43) = v28;
    v59 = 4;
    sub_2202440A8(v40, v25);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v40, *(&v40 + 1));
    v29 = (v3 + v12[9]);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v33 = v29[4];
    v34 = v29[5];
    *&v40 = *v29;
    *(&v40 + 1) = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v59 = 5;
    sub_22023846C(v40, v30, v31);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v40, *(&v40 + 1), v41);
    v35 = (v3 + v12[10]);
    v36 = v35[1];
    *&v40 = *v35;
    *(&v40 + 1) = v36;
    v59 = 6;
    sub_220265D28();

    sub_22036FFF8();

    v37 = (v3 + v12[11]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v37) = *(v37 + 16);
    *&v40 = v38;
    *(&v40 + 1) = v39;
    LOBYTE(v41) = v37;
    v59 = 7;
    sub_220265F80();

    sub_22036FFF8();

    LOBYTE(v40) = *(v3 + v12[12]);
    v59 = 8;
    sub_220266254();
    sub_22036FF88();
    LOWORD(v40) = *(v3 + v12[13]);
    v59 = 9;
    sub_220357214();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220369790()
{
  result = qword_27CF298E0;
  if (!qword_27CF298E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF298E0);
  }

  return result;
}

uint64_t SubscribeButtonTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_22036F388();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036A0A0(0, &qword_27CF298E8, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220369790();
  v47 = v11;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = a1;
  v41 = v12;
  v42 = v15;
  LOBYTE(v53) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v46;
  sub_22036FF28();
  v18 = v42;
  (*(v45 + 32))(v42, v17, v4);
  LOBYTE(v50) = 1;
  sub_2202020B8();
  sub_22036FF28();
  v40 = v4;
  v46 = 0;
  v19 = *(&v53 + 1);
  v20 = v54;
  v21 = v41;
  v22 = &v18[v41[5]];
  *v22 = v53;
  *(v22 + 1) = v19;
  *(v22 + 8) = v20;
  v59 = 2;
  sub_22022ED48();
  sub_22036FEB8();
  v23 = &v18[v21[6]];
  v24 = v56;
  *(v23 + 2) = v55;
  *(v23 + 3) = v24;
  *(v23 + 16) = v57;
  v25 = v54;
  *v23 = v53;
  *(v23 + 1) = v25;
  v58 = 3;
  sub_2201FBCC4();
  sub_22036FEB8();
  v26 = v51;
  v27 = &v18[v21[7]];
  *v27 = v50;
  *(v27 + 2) = v26;
  v58 = 4;
  sub_220236A30();
  sub_22036FEB8();
  v28 = v52;
  v29 = &v18[v21[8]];
  v30 = v51;
  *v29 = v50;
  *(v29 + 1) = v30;
  *(v29 + 16) = v28;
  v58 = 5;
  sub_220236C88();
  sub_22036FEB8();
  v31 = &v18[v21[9]];
  v32 = v51;
  *v31 = v50;
  *(v31 + 1) = v32;
  *(v31 + 2) = v52;
  v58 = 6;
  sub_220265CD4();
  sub_22036FF28();
  v33 = *(&v50 + 1);
  v34 = &v18[v21[10]];
  *v34 = v50;
  *(v34 + 1) = v33;
  v58 = 7;
  sub_220265F2C();
  sub_22036FF28();
  v35 = *(&v50 + 1);
  v36 = v51;
  v37 = &v18[v21[11]];
  *v37 = v50;
  *(v37 + 1) = v35;
  v37[16] = v36;
  v58 = 8;
  sub_220266200();
  sub_22036FEB8();
  v18[v21[12]] = v50;
  v58 = 9;
  sub_2203571BC();
  sub_22036FF28();
  (*(v49 + 8))(v47, v48);
  v38 = v42;
  *&v42[v41[13]] = v50;
  sub_22036A104(v38, v44);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_22036A168(v38);
}

void sub_22036A0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220369790();
    v7 = a3(a1, &type metadata for SubscribeButtonTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22036A104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036A168(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22036A29C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_22036A790()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220368518(319, &qword_281266728, sub_2202020B8, sub_220202110);
    if (v1 <= 0x3F)
    {
      sub_220368518(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
      if (v2 <= 0x3F)
      {
        sub_220368518(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_220368518(319, &qword_281266858, sub_220236A30, sub_220236A84);
          if (v4 <= 0x3F)
          {
            sub_220368518(319, &qword_281266718, sub_220236C88, sub_220236CDC);
            if (v5 <= 0x3F)
            {
              sub_220368518(319, &qword_281266788, sub_220265CD4, sub_220265D28);
              if (v6 <= 0x3F)
              {
                sub_220368518(319, &qword_281266820, sub_220265F2C, sub_220265F80);
                if (v7 <= 0x3F)
                {
                  sub_220368518(319, &qword_281266848, sub_220266200, sub_220266254);
                  if (v8 <= 0x3F)
                  {
                    sub_220368518(319, &qword_27CF298D0, sub_2203571BC, sub_220357214);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_22036AAF4()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26930);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26288);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281266008);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22036AC64()
{
  result = qword_27CF29910;
  if (!qword_27CF29910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29910);
  }

  return result;
}

unint64_t sub_22036ACBC()
{
  result = qword_27CF29918;
  if (!qword_27CF29918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29918);
  }

  return result;
}

unint64_t sub_22036AD14()
{
  result = qword_27CF29920;
  if (!qword_27CF29920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29920);
  }

  return result;
}

uint64_t sub_22036AD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220392B50 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22036B0B8()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF29928);
  v1 = __swift_project_value_buffer(v0, qword_27CF29928);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_22036B1A4()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF29940);
  v1 = __swift_project_value_buffer(v0, qword_27CF29940);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22036B264()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29958);
  __swift_project_value_buffer(v0, qword_27CF29958);
  return sub_22036F108();
}

uint64_t VideoAdEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdEngagementEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22036BCCC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t VideoAdEngagementEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdEngagementEvent(0);
  v5 = v4[5];
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t VideoAdEngagementEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t VideoAdEngagementEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdEngagementEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdEngagementEvent.Model.videoAdEngagementData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for VideoAdEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t VideoAdEngagementEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 VideoAdEngagementEvent.Model.init(eventData:adUserData:channelData:feedData:videoAdData:videoAdEngagementData:adPlacementData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, int *a5@<X4>, __int16 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = *(a3 + 32);
  v15 = *(a3 + 33);
  v26 = *a3;
  v27 = *a4;
  v16 = a4[1].n128_u64[0];
  v17 = *a5;
  v28 = *(a5 + 2);
  v29 = *(a5 + 1);
  v30 = *a6;
  v31 = a7[1];
  v32 = *a7;
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v10;
  v20[1] = v11;
  v21 = a8 + v19[6];
  result = v27;
  *v21 = v26;
  *(v21 + 16) = v12;
  *(v21 + 24) = v13;
  *(v21 + 32) = v14;
  *(v21 + 33) = v15;
  v23 = (a8 + v19[7]);
  *v23 = v27;
  v23[1].n128_u64[0] = v16;
  v24 = a8 + v19[8];
  *v24 = v17;
  *(v24 + 8) = v29;
  *(v24 + 16) = v28;
  *(a8 + v19[9]) = v30;
  v25 = (a8 + v19[10]);
  *v25 = v32;
  v25[1] = v31;
  return result;
}

unint64_t sub_22036C4E8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x6D6563616C506461;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x4464416F65646976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6144726573556461;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_22036C5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22036DAD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22036C608(uint64_t a1)
{
  v2 = sub_22036CA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22036C644(uint64_t a1)
{
  v2 = sub_22036CA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22036D0B4(0, &qword_27CF29978, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036CA78();
  sub_220370168();
  LOBYTE(v29) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for VideoAdEngagementEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v29 = *v13;
    *(&v29 + 1) = v14;
    v34 = 1;
    sub_2201F9420();

    sub_22036FFF8();

    v15 = (v3 + v12[6]);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = *(v15 + 32);
    LOBYTE(v15) = *(v15 + 33);
    *&v29 = v16;
    *(&v29 + 1) = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v15;
    v34 = 2;
    sub_220236A84();

    sub_22036FFF8();

    v21 = (v3 + v12[7]);
    v22 = *(v21 + 2);
    v29 = *v21;
    v30 = v22;
    v34 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v23 = v3 + v12[8];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    LODWORD(v29) = *v23;
    *(&v29 + 1) = v24;
    v30 = v25;
    v34 = 4;
    sub_2202B744C();

    sub_22036FFF8();

    LOWORD(v29) = *(v3 + v12[9]);
    v34 = 5;
    sub_22030AB88();
    sub_22036FFF8();
    v27 = (v3 + v12[10]);
    v28 = v27[1];
    *&v29 = *v27;
    *(&v29 + 1) = v28;
    v34 = 6;
    sub_220242D28();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22036CA78()
{
  result = qword_27CF29980;
  if (!qword_27CF29980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29980);
  }

  return result;
}

uint64_t VideoAdEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_22036F388();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036D0B4(0, &qword_27CF29988, MEMORY[0x277D844C8]);
  v37 = v7;
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036CA78();
  v38 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  LOBYTE(v39) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v36;
  sub_22036FF28();
  (*(v34 + 32))(v14, v17, v4);
  v44 = 1;
  sub_2201F93C8();
  sub_22036FF28();
  v18 = *(&v39 + 1);
  v19 = &v14[v11[5]];
  *v19 = v39;
  *(v19 + 1) = v18;
  v44 = 2;
  sub_220236A30();
  sub_22036FF28();
  v20 = v40;
  v21 = v41;
  v22 = v42;
  v23 = v43;
  v24 = &v14[v11[6]];
  *v24 = v39;
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  v24[32] = v22;
  v24[33] = v23;
  v44 = 3;
  sub_2201FBCC4();
  sub_22036FEB8();
  v25 = v40;
  v26 = &v14[v11[7]];
  *v26 = v39;
  *(v26 + 2) = v25;
  v44 = 4;
  sub_2202B73F4();
  sub_22036FF28();
  v27 = *(&v39 + 1);
  v28 = v40;
  v29 = &v14[v11[8]];
  *v29 = v39;
  *(v29 + 1) = v27;
  *(v29 + 2) = v28;
  v44 = 5;
  sub_22030AB30();
  sub_22036FF28();
  *&v14[v11[9]] = v39;
  v44 = 6;
  sub_220242CD4();
  sub_22036FF28();
  (*(v16 + 8))(v38, v37);
  v30 = *(&v39 + 1);
  v31 = &v14[v11[10]];
  *v31 = v39;
  *(v31 + 1) = v30;
  sub_22036D118(v14, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22036D17C(v14);
}

void sub_22036D0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22036CA78();
    v7 = a3(a1, &type metadata for VideoAdEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22036D118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036D17C(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22036D2B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_22036D63C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22036BCCC(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
    if (v1 <= 0x3F)
    {
      sub_22036BCCC(319, &qword_281266858, sub_220236A30, sub_220236A84);
      if (v2 <= 0x3F)
      {
        sub_22036BCCC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_22036BCCC(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
          if (v4 <= 0x3F)
          {
            sub_22036BCCC(319, &qword_27CF29970, sub_22030AB30, sub_22030AB88);
            if (v5 <= 0x3F)
            {
              sub_22036BCCC(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22036D8B0()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036D968();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22036D968()
{
  if (!qword_281262190)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281262190);
    }
  }
}

unint64_t sub_22036D9CC()
{
  result = qword_27CF299B0;
  if (!qword_27CF299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299B0);
  }

  return result;
}

unint64_t sub_22036DA24()
{
  result = qword_27CF299B8;
  if (!qword_27CF299B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299B8);
  }

  return result;
}

unint64_t sub_22036DA7C()
{
  result = qword_27CF299C0;
  if (!qword_27CF299C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299C0);
  }

  return result;
}

uint64_t sub_22036DAD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220392B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics15NewsArticleDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22036DD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22036DDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

StocksAnalytics::NetworkEventType_optional __swiftcall NetworkEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkEventType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6C754D6F6F686179;
    v8 = 0x77654E6F6F686179;
    if (v1 != 10)
    {
      v8 = 0xD000000000000010;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E696C6B72617073;
    v10 = 0xD000000000000011;
    if (v1 != 7)
    {
      v10 = 0x6168436F6F686179;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7472616843736473;
    v3 = 0x6372616553736473;
    v4 = 0x6E676953736473;
    if (v1 != 4)
    {
      v4 = 0x6B72617053736473;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x65746F7551736473;
    if (v1 != 1)
    {
      v5 = 0x7377654E736473;
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
}

uint64_t sub_22036E03C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = NetworkEventType.rawValue.getter();
  v4 = v3;
  if (v2 == NetworkEventType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_220370048();
  }

  return v7 & 1;
}

unint64_t sub_22036E0DC()
{
  result = qword_27CF299C8;
  if (!qword_27CF299C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299C8);
  }

  return result;
}

uint64_t sub_22036E130()
{
  v1 = *v0;
  sub_220370108();
  NetworkEventType.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22036E198()
{
  v2 = *v0;
  NetworkEventType.rawValue.getter();
  sub_22036FB08();
}

uint64_t sub_22036E1FC()
{
  v1 = *v0;
  sub_220370108();
  NetworkEventType.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22036E26C@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22036E354()
{
  result = qword_2812650E0;
  if (!qword_2812650E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812650E0);
  }

  return result;
}