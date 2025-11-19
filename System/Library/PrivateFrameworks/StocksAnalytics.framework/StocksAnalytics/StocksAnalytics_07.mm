uint64_t ExternalAnalyticsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202ACB5C(0, &qword_27CF276C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AC860();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_2202ACBC0();
  sub_22036FF28();
  v12 = v27;
  v25 = 1;
  v13 = sub_22036FEE8();
  v15 = v14;
  v23 = v13;
  v24 = 2;
  v16 = sub_22036FEE8();
  v18 = v17;
  v19 = *(v7 + 8);
  v22 = v16;
  v19(v10, v6);
  *a2 = v12;
  v20 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v15;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202ACB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AC860();
    v7 = a3(a1, &type metadata for ExternalAnalyticsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202ACBC0()
{
  result = qword_27CF276D0;
  if (!qword_27CF276D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276D0);
  }

  return result;
}

unint64_t sub_2202ACC18()
{
  result = qword_27CF276D8;
  if (!qword_27CF276D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276D8);
  }

  return result;
}

unint64_t sub_2202ACC70()
{
  result = qword_27CF276E0;
  if (!qword_27CF276E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276E0);
  }

  return result;
}

uint64_t sub_2202ACCF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2202ACD3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202ACDA8()
{
  result = qword_27CF276E8;
  if (!qword_27CF276E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276E8);
  }

  return result;
}

unint64_t sub_2202ACE00()
{
  result = qword_27CF276F0;
  if (!qword_27CF276F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276F0);
  }

  return result;
}

unint64_t sub_2202ACE58()
{
  result = qword_27CF276F8;
  if (!qword_27CF276F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276F8);
  }

  return result;
}

uint64_t sub_2202ACEAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000220390F90 == a2 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390FB0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390FD0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_220370048();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

StocksAnalytics::MediaPlayMethod_optional __swiftcall MediaPlayMethod.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaPlayMethod.rawValue.getter()
{
  v1 = 0x79616C706F747561;
  if (*v0 != 1)
  {
    v1 = 0x7474754279616C70;
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

uint64_t sub_2202AD098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v4 = 0x7474754279616C70;
    v3 = 0xEF73736572506E6FLL;
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

  v7 = 0xE800000000000000;
  v8 = 0x79616C706F747561;
  if (*a2 != 1)
  {
    v8 = 0x7474754279616C70;
    v7 = 0xEF73736572506E6FLL;
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

unint64_t sub_2202AD1B8()
{
  result = qword_27CF27700;
  if (!qword_27CF27700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27700);
  }

  return result;
}

uint64_t sub_2202AD20C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202AD2BC()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202AD358()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202AD410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v5 = 0x7474754279616C70;
    v4 = 0xEF73736572506E6FLL;
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

unint64_t sub_2202AD53C()
{
  result = qword_27CF27708;
  if (!qword_27CF27708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27708);
  }

  return result;
}

StocksAnalytics::GroupType_optional __swiftcall GroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GroupType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646574616C6572;
  if (v1 != 5)
  {
    v3 = 25697;
  }

  v4 = 0x6C6F626D7973;
  if (v1 != 3)
  {
    v4 = 0x6D6F724665726F6DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64657461727563;
  if (v1 != 1)
  {
    v5 = 0x69726F7453706F74;
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

unint64_t sub_2202AD6CC()
{
  result = qword_27CF27710;
  if (!qword_27CF27710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27710);
  }

  return result;
}

uint64_t sub_2202AD72C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

void sub_2202AD844(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x646574616C6572;
  if (v2 != 5)
  {
    v6 = 25697;
    v5 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (v2 != 3)
  {
    v8 = 0x6D6F724665726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64657461727563;
  if (v2 != 1)
  {
    v10 = 0x69726F7453706F74;
    v9 = 0xEA00000000007365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2202AD9D8()
{
  result = qword_281262038;
  if (!qword_281262038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262038);
  }

  return result;
}

uint64_t sub_2202ADAF4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281265060);
  __swift_project_value_buffer(v0, qword_281265060);
  return sub_22036F108();
}

uint64_t TipExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TipExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 24);
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 24);
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 28);
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 28);
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 32);
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 32);
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.tipData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 36);
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202AE2EC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_2202AE368()
{
  result = qword_281262270;
  if (!qword_281262270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262270);
  }

  return result;
}

unint64_t sub_2202AE3BC()
{
  result = qword_281262278;
  if (!qword_281262278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262278);
  }

  return result;
}

uint64_t TipExposureEvent.tipData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 36);
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TipExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t sub_2202AE80C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TipExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t TipExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TipExposureEvent.Model.symbolData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_2202AE9B0(v4, v5);
}

uint64_t sub_2202AE9B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t TipExposureEvent.Model.tipData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TipExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 TipExposureEvent.Model.init(eventData:timedData:feedData:viewData:symbolData:tipData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 8);
  v15 = *(a5 + 32);
  v16 = *a6;
  v17 = sub_22036F388();
  v25 = *(a5 + 16);
  v26 = *a5;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for TipExposureEvent.Model(0);
  v19 = v18[5];
  v20 = sub_22036F3C8();
  (*(*(v20 - 8) + 32))(a7 + v19, a2, v20);
  v21 = a7 + v18[6];
  *v21 = v27;
  *(v21 + 16) = v11;
  v22 = a7 + v18[7];
  *v22 = v12;
  *(v22 + 8) = v13;
  *(v22 + 16) = v14;
  v23 = a7 + v18[8];
  result = v26;
  *v23 = v26;
  *(v23 + 16) = v25;
  *(v23 + 32) = v15;
  *(a7 + v18[9]) = v16;
  return result;
}

uint64_t sub_2202AEB68()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0x61446C6F626D7973;
  if (v1 != 4)
  {
    v4 = 0x61746144706974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_2202AEC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202B0058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202AEC50(uint64_t a1)
{
  v2 = sub_2202AF080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AEC8C(uint64_t a1)
{
  v2 = sub_2202AF080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TipExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202AF798(0, &qword_27CF27718, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AF080();
  sub_220370168();
  LOBYTE(v25) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for TipExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v25) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = (v3 + v12[6]);
    v15 = *(v14 + 2);
    v25 = *v14;
    v26 = v15;
    v29 = 2;
    sub_2201FBD1C();

    sub_22036FF88();

    v16 = (v3 + v12[7]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    *&v25 = v17;
    *(&v25 + 1) = v18;
    LOWORD(v26) = v16;
    v29 = 3;
    sub_220202110();

    sub_22036FFF8();

    v19 = (v3 + v12[8]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    *&v25 = *v19;
    *(&v25 + 1) = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = 4;
    sub_2202AE9B0(v25, v20);
    sub_220230C50();
    sub_22036FF88();
    sub_2202AF0D4(v25, *(&v25 + 1));
    LOBYTE(v25) = *(v3 + v12[9]);
    v29 = 5;
    sub_2202AE3BC();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202AF080()
{
  result = qword_27CF27720;
  if (!qword_27CF27720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27720);
  }

  return result;
}

uint64_t sub_2202AF0D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t TipExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_22036F3C8();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AF798(0, &qword_27CF27728, MEMORY[0x277D844C8]);
  v45 = v10;
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TipExposureEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AF080();
  v44 = v13;
  v19 = v46;
  sub_220370148();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v46 = a1;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  LOBYTE(v47) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v24 = *(v39 + 32);
  v25 = v43;
  v43 = v7;
  v24(v17, v25, v7);
  LOBYTE(v47) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v22 + 32))(&v17[v14[5]], v20, v23);
  v50 = 2;
  sub_2201FBCC4();
  v37 = 0;
  sub_22036FEB8();
  v26 = v17;
  v27 = v48;
  v28 = &v17[v14[6]];
  *v28 = v47;
  *(v28 + 2) = v27;
  v50 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v29 = v46;
  v30 = *(&v47 + 1);
  v31 = v48;
  v32 = v26 + v14[7];
  *v32 = v47;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  v50 = 4;
  sub_220230BFC();
  sub_22036FEB8();
  v33 = v49;
  v34 = v26 + v14[8];
  v35 = v48;
  *v34 = v47;
  *(v34 + 16) = v35;
  *(v34 + 32) = v33;
  v50 = 5;
  sub_2202AE368();
  sub_22036FF28();
  (*(v21 + 8))(v44, v45);
  *(v26 + v14[9]) = v47;
  sub_2202AF7FC(v26, v38);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2202AF860(v26);
}

void sub_2202AF798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AF080();
    v7 = a3(a1, &type metadata for TipExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AF7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202AF860(uint64_t a1)
{
  v2 = type metadata accessor for TipExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202AF994@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_2202AFC70()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202AE2EC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
      if (v2 <= 0x3F)
      {
        sub_2202AE2EC(319, &qword_281266728, sub_2202020B8, sub_220202110);
        if (v3 <= 0x3F)
        {
          sub_2202AE2EC(319, &qword_281266870, sub_220230BFC, sub_220230C50);
          if (v4 <= 0x3F)
          {
            sub_2202AE2EC(319, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
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

void sub_2202AFE5C()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF27740);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2202AFF54()
{
  result = qword_27CF27748;
  if (!qword_27CF27748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27748);
  }

  return result;
}

unint64_t sub_2202AFFAC()
{
  result = qword_27CF27750;
  if (!qword_27CF27750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27750);
  }

  return result;
}

unint64_t sub_2202B0004()
{
  result = qword_27CF27758;
  if (!qword_27CF27758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27758);
  }

  return result;
}

uint64_t sub_2202B0058(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144706974 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202B0334()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27790);
  __swift_project_value_buffer(v0, qword_27CF27790);
  return sub_22036F108();
}

uint64_t NonNewsArticleExternalViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleExternalViewEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 20);
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 20);
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 24);
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 24);
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 28);
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 28);
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 32);
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 32);
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 36);
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B0BEC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t NonNewsArticleExternalViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 36);
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleExternalViewEvent(0);
  v5 = v4[5];
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v8, v15);
}

uint64_t NonNewsArticleExternalViewEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t NonNewsArticleExternalViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t NonNewsArticleExternalViewEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 36));
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

__n128 NonNewsArticleExternalViewEvent.Model.init(eventData:nonNewsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a2[1];
  v28 = *a2;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *a3;
  v13 = *(a3 + 4);
  v14 = *a4;
  v15 = *(a4 + 4);
  v29 = *a5;
  v16 = *(a5 + 2);
  v30 = *(a6 + 40);
  v31 = *(a6 + 32);
  v17 = sub_22036F388();
  v25 = *(a6 + 16);
  v26 = *a6;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v28;
  *(v19 + 16) = v27;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  v20 = a7 + v18[6];
  *v20 = v12;
  *(v20 + 4) = v13;
  v21 = a7 + v18[7];
  *v21 = v14;
  *(v21 + 4) = v15;
  v22 = a7 + v18[8];
  *v22 = v29;
  *(v22 + 16) = v16;
  v23 = a7 + v18[9];
  result = v26;
  *v23 = v26;
  *(v23 + 16) = v25;
  *(v23 + 32) = v31;
  *(v23 + 40) = v30;
  return result;
}

unint64_t sub_2202B134C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x6174614464656566;
  if (v1 != 4)
  {
    v4 = 0x74614470756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2202B1414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202B273C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202B143C(uint64_t a1)
{
  v2 = sub_2202B187C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B1478(uint64_t a1)
{
  v2 = sub_2202B187C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleExternalViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202B1DE4(0, &qword_27CF277A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B187C();
  sub_220370168();
  LOBYTE(v32) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    *&v32 = *v13;
    *(&v32 + 1) = v14;
    v33 = v15;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v37 = 1;
    sub_22026C27C();

    sub_22036FFF8();

    v19 = (v3 + v12[6]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v32) = v20;
    BYTE4(v32) = v19;
    v37 = 2;
    sub_2202760D8();
    sub_22036FF88();
    v21 = (v3 + v12[7]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    LODWORD(v32) = v22;
    BYTE4(v32) = v21;
    v37 = 3;
    sub_220276330();
    sub_22036FF88();
    v23 = (v3 + v12[8]);
    v24 = *(v23 + 2);
    v32 = *v23;
    v33 = v24;
    v37 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v25 = (v3 + v12[9]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    *&v32 = *v25;
    *(&v32 + 1) = v26;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = 5;
    sub_22023846C(v32, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v32, *(&v32 + 1), v33);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202B187C()
{
  result = qword_27CF277B0;
  if (!qword_27CF277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277B0);
  }

  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22036F388();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202B1DE4(0, &qword_27CF277B8, MEMORY[0x277D844C8]);
  v37 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B187C();
  v36 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v18 = v33;
  v17 = v34;
  LOBYTE(v38) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v35;
  sub_22036FF28();
  (*(v17 + 32))(v16, v19, v4);
  v41 = 1;
  sub_22026C224();
  sub_22036FF28();
  v20 = v39;
  v21 = v40;
  v22 = (v16 + v11[5]);
  *v22 = v38;
  v22[1] = v20;
  v22[2] = v21;
  v41 = 2;
  sub_220276084();
  v35 = 0;
  sub_22036FEB8();
  v23 = BYTE4(v38);
  v24 = v16 + v11[6];
  *v24 = v38;
  *(v24 + 4) = v23;
  v41 = 3;
  sub_2202762DC();
  sub_22036FEB8();
  v25 = BYTE4(v38);
  v26 = v16 + v11[7];
  *v26 = v38;
  *(v26 + 4) = v25;
  v41 = 4;
  sub_2201FBCC4();
  sub_22036FEB8();
  v27 = v39;
  v28 = v16 + v11[8];
  *v28 = v38;
  *(v28 + 16) = v27;
  v41 = 5;
  sub_220236C88();
  sub_22036FEB8();
  (*(v18 + 8))(v36, v37);
  v29 = (v16 + v11[9]);
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  v29[2] = v40;
  sub_2202B1E48(v16, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202B1EAC(v16);
}

void sub_2202B1DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B187C();
    v7 = a3(a1, &type metadata for NonNewsArticleExternalViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B1E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B1EAC(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B1FE0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v9, v16);
}

void sub_2202B22EC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202B0BEC(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
    if (v1 <= 0x3F)
    {
      sub_2202B0BEC(319, &qword_2812667C0, sub_220276084, sub_2202760D8);
      if (v2 <= 0x3F)
      {
        sub_2202B0BEC(319, &qword_281266798, sub_2202762DC, sub_220276330);
        if (v3 <= 0x3F)
        {
          sub_2202B0BEC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
          if (v4 <= 0x3F)
          {
            sub_2202B0BEC(319, &qword_281266718, sub_220236C88, sub_220236CDC);
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

void sub_2202B2510()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_2812652B8);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812644F0);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2202B2638()
{
  result = qword_27CF277E0;
  if (!qword_27CF277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277E0);
  }

  return result;
}

unint64_t sub_2202B2690()
{
  result = qword_27CF277E8;
  if (!qword_27CF277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277E8);
  }

  return result;
}

unint64_t sub_2202B26E8()
{
  result = qword_27CF277F0;
  if (!qword_27CF277F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277F0);
  }

  return result;
}

uint64_t sub_2202B273C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202B2A14()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27828);
  __swift_project_value_buffer(v0, qword_27CF27828);
  return sub_22036F108();
}

uint64_t ANFComponentExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ANFComponentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B305C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ANFComponentExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ANFComponentExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_2202B3448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ANFComponentExposureEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 24);
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

uint64_t ANFComponentExposureEvent.Model.anfComponentData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ANFComponentExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 32));
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

__n128 ANFComponentExposureEvent.Model.init(eventData:timedData:newsArticleData:anfComponentData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v26 = *a5;
  v12 = a5[1].n128_u64[1];
  v25 = a5[1].n128_u64[0];
  v13 = a5[2].n128_u8[0];
  v14 = a5[2].n128_u8[1];
  v15 = sub_22036F388();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  v17 = v16[5];
  v18 = sub_22036F3C8();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v19 = a6 + v16[6];
  v20 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a3 + 64);
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  v22 = (a6 + v16[7]);
  *v22 = v10;
  v22[1] = v11;
  v23 = (a6 + v16[8]);
  result = v26;
  *v23 = v26;
  v23[1].n128_u64[0] = v25;
  v23[1].n128_u64[1] = v12;
  v23[2].n128_u8[0] = v13;
  v23[2].n128_u8[1] = v14;
  return result;
}

uint64_t sub_2202B3750()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x697472417377656ELL;
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
    v2 = 0x74614464656D6974;
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

uint64_t sub_2202B3804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202B4AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202B382C(uint64_t a1)
{
  v2 = sub_2202B3C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B3868(uint64_t a1)
{
  v2 = sub_2202B3C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202B4314(0, &qword_27CF27840, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B3C84();
  sub_220370168();
  LOBYTE(v43[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for ANFComponentExposureEvent.Model(0);
    v13 = v12[5];
    v47 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v44 = *(v14 + 32);
    v45 = v16;
    v17 = *(v14 + 16);
    v43[0] = *v14;
    v43[1] = v17;
    v39 = v15;
    v40 = v44;
    v41 = *(v14 + 48);
    v46 = *(v14 + 64);
    v42 = *(v14 + 64);
    v38 = v43[0];
    v37 = 2;
    sub_22022ECDC(v43, v35);
    sub_22022EDA0();
    sub_22036FFF8();
    v35[2] = v40;
    v35[3] = v41;
    v36 = v42;
    v35[0] = v38;
    v35[1] = v39;
    sub_22022ED14(v35);
    v18 = (v3 + v12[7]);
    v19 = v18[1];
    v28 = *v18;
    v29 = v19;
    v34 = 3;
    sub_22024EDBC();

    sub_22036FFF8();

    v20 = (v3 + v12[8]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    v25 = *(v20 + 32);
    LOBYTE(v20) = *(v20 + 33);
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v20;
    v34 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202B3C84()
{
  result = qword_27CF27848;
  if (!qword_27CF27848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27848);
  }

  return result;
}

uint64_t ANFComponentExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_22036F3C8();
  v35 = *(v36 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202B4314(0, &qword_27CF27850, MEMORY[0x277D844C8]);
  v40 = v9;
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B3C84();
  v39 = v12;
  v18 = v41;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v41 = a1;
  v20 = v16;
  v21 = v35;
  v22 = v36;
  LOBYTE(v47) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v34 + 32))(v20, v38, v6);
  LOBYTE(v47) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v21 + 32))(v20 + v13[5], v19, v22);
  v53 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v23 = v20 + v13[6];
  v24 = v50;
  *(v23 + 32) = v49;
  *(v23 + 48) = v24;
  *(v23 + 64) = v51;
  v25 = v48;
  *v23 = v47;
  *(v23 + 16) = v25;
  v52 = 3;
  sub_22024ED64();
  sub_22036FF28();
  *(v20 + v13[7]) = v42;
  v52 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v37 + 8))(v39, v40);
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v30 = v20 + v13[8];
  *v30 = v42;
  *(v30 + 16) = v26;
  *(v30 + 24) = v27;
  *(v30 + 32) = v28;
  *(v30 + 33) = v29;
  sub_2202B4378(v20, v33);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_2202B43DC(v20);
}

void sub_2202B4314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B3C84();
    v7 = a3(a1, &type metadata for ANFComponentExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B4378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B43DC(uint64_t a1)
{
  v2 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B4510@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2202B4760()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202B305C(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
      if (v2 <= 0x3F)
      {
        sub_2202B305C(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
        if (v3 <= 0x3F)
        {
          sub_2202B305C(319, &qword_281266858, sub_220236A30, sub_220236A84);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2202B48FC()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2202B49B0()
{
  result = qword_27CF27878;
  if (!qword_27CF27878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27878);
  }

  return result;
}

unint64_t sub_2202B4A08()
{
  result = qword_27CF27880;
  if (!qword_27CF27880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27880);
  }

  return result;
}

unint64_t sub_2202B4A60()
{
  result = qword_27CF27888;
  if (!qword_27CF27888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27888);
  }

  return result;
}

uint64_t sub_2202B4AB4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
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

StocksAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InterfaceOrientation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x7469617274726F70;
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

unint64_t sub_2202B4DAC()
{
  result = qword_27CF27890;
  if (!qword_27CF27890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27890);
  }

  return result;
}

uint64_t sub_2202B4E00()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202B4F00()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202B4FEC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202B522C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF278C8);
  __swift_project_value_buffer(v0, qword_27CF278C8);
  return sub_22036F108();
}

uint64_t SearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_220230718();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t sub_2202B5568@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SearchExposureEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SearchExposureEvent.Model(0) + 20);
  v8 = sub_22036F3C8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_2202B56D4()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202B570C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

uint64_t sub_2202B57F0(uint64_t a1)
{
  v2 = sub_2202B5A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B582C(uint64_t a1)
{
  v2 = sub_2202B5A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchExposureEvent.Model.encode(to:)(void *a1)
{
  sub_2202B5EFC(0, &qword_27CF278E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B5A78();
  sub_220370168();
  v12[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v1)
  {
    v10 = *(type metadata accessor for SearchExposureEvent.Model(0) + 20);
    v12[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202B5A78()
{
  result = qword_27CF278E8;
  if (!qword_27CF278E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF278E8);
  }

  return result;
}

uint64_t SearchExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_22036F3C8();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22036F388();
  v29 = *(v33 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202B5EFC(0, &qword_27CF278F0, MEMORY[0x277D844C8]);
  v34 = v9;
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SearchExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B5A78();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v18 = v16;
  v20 = v29;
  v19 = v30;
  v36 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  v21 = v31;
  sub_22036FF28();
  v22 = *(v20 + 32);
  v25 = v18;
  v22(v18, v21, v33);
  v35 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v32 + 8))(v12, v34);
  v23 = v25;
  (*(v27 + 32))(v25 + *(v26 + 20), v6, v19);
  sub_2202B5F60(v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202B5FC4(v23);
}

void sub_2202B5EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B5A78();
    v7 = a3(a1, &type metadata for SearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B5F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B5FC4(uint64_t a1)
{
  v2 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B60F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_2202B6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2202B6514()
{
  result = qword_27CF27918;
  if (!qword_27CF27918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27918);
  }

  return result;
}

unint64_t sub_2202B656C()
{
  result = qword_27CF27920;
  if (!qword_27CF27920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27920);
  }

  return result;
}

unint64_t sub_2202B65C4()
{
  result = qword_27CF27928;
  if (!qword_27CF27928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27928);
  }

  return result;
}

uint64_t sub_2202B667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL)
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

uint64_t sub_2202B670C(uint64_t a1)
{
  v2 = sub_2202B68CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B6748(uint64_t a1)
{
  v2 = sub_2202B68CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollStartData.encode(to:)(void *a1)
{
  sub_2202B6AA8(0, &qword_27CF27930, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
  sub_220370168();
  sub_22036FFE8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202B68CC()
{
  result = qword_27CF27938;
  if (!qword_27CF27938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27938);
  }

  return result;
}

uint64_t ScrollStartData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2202B6AA8(0, &qword_27CF27940, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
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

void sub_2202B6AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B68CC();
    v7 = a3(a1, &type metadata for ScrollStartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B6B2C(void *a1)
{
  sub_2202B6AA8(0, &qword_27CF27930, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
  sub_220370168();
  sub_22036FFE8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202B6C98()
{
  result = qword_27CF27948;
  if (!qword_27CF27948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27948);
  }

  return result;
}

unint64_t sub_2202B6CF0()
{
  result = qword_27CF27950;
  if (!qword_27CF27950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27950);
  }

  return result;
}

unint64_t sub_2202B6D48()
{
  result = qword_27CF27958;
  if (!qword_27CF27958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27958);
  }

  return result;
}

uint64_t VideoAdData.prerollUrl.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t VideoAdData.prerollUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t VideoAdData.init(duration:prerollUrl:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2202B6E68()
{
  if (*v0)
  {
    result = 0x556C6C6F72657270;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t sub_2202B6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x556C6C6F72657270 && a2 == 0xEA00000000006C72)
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

uint64_t sub_2202B6F8C(uint64_t a1)
{
  v2 = sub_2202B7180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B6FC8(uint64_t a1)
{
  v2 = sub_2202B7180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdData.encode(to:)(void *a1)
{
  sub_2202B738C(0, &qword_27CF27960, MEMORY[0x277D84538]);
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
  sub_2202B7180();
  sub_220370168();
  v16 = 0;
  sub_220370008();
  if (!v2)
  {
    v15 = 1;
    sub_22036FFB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2202B7180()
{
  result = qword_27CF27968;
  if (!qword_27CF27968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27968);
  }

  return result;
}

uint64_t VideoAdData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202B738C(0, &qword_27CF27970, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B7180();
  sub_220370148();
  if (!v2)
  {
    v19 = 0;
    v12 = sub_22036FF38();
    v18 = 1;
    v14 = sub_22036FEE8();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202B738C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B7180();
    v7 = a3(a1, &type metadata for VideoAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202B73F4()
{
  result = qword_27CF27978;
  if (!qword_27CF27978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27978);
  }

  return result;
}

unint64_t sub_2202B744C()
{
  result = qword_27CF27980;
  if (!qword_27CF27980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27980);
  }

  return result;
}

unint64_t sub_2202B74F4()
{
  result = qword_27CF27988;
  if (!qword_27CF27988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27988);
  }

  return result;
}

unint64_t sub_2202B754C()
{
  result = qword_27CF27990;
  if (!qword_27CF27990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27990);
  }

  return result;
}

unint64_t sub_2202B75A4()
{
  result = qword_27CF27998;
  if (!qword_27CF27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27998);
  }

  return result;
}

uint64_t sub_2202B76C0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF279D0);
  __swift_project_value_buffer(v0, qword_27CF279D0);
  return sub_22036F108();
}

uint64_t HeartbeatEvent.heartbeatData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2202B77AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_2202B77AC()
{
  if (!qword_27CF279E8)
  {
    type metadata accessor for HeartbeatData();
    sub_2201FE9DC(&qword_27CF279F0);
    sub_2201FE9DC(&qword_281265A40);
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF279E8);
    }
  }
}

uint64_t HeartbeatEvent.heartbeatData.setter(uint64_t a1)
{
  sub_2202B77AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartbeatEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_2202B77AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2202B7964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B79F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165627472616568 && a2 == 0xED00006174614474)
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

uint64_t sub_2202B7A88(uint64_t a1)
{
  v2 = sub_2201FE5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B7AC4(uint64_t a1)
{
  v2 = sub_2201FE5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatEvent.Model.encode(to:)(void *a1)
{
  sub_2201FE384(0, &qword_281261CA8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FE5F8();
  sub_220370168();
  type metadata accessor for HeartbeatData();
  sub_2201FE9DC(&qword_281265A40);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t HeartbeatEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for HeartbeatData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FE384(0, &qword_27CF279F8, MEMORY[0x277D844C8]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for HeartbeatEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FE5F8();
  sub_220370148();
  if (!v2)
  {
    v17 = v21;
    sub_2201FE9DC(&qword_27CF279F0);
    v18 = v22;
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    sub_2202B7EFC(v18, v15, type metadata accessor for HeartbeatData);
    sub_2202B7EFC(v15, v20, type metadata accessor for HeartbeatEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2202B7EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2202B8024@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_2202B77AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

unint64_t sub_2202B8218()
{
  result = qword_27CF27A10;
  if (!qword_27CF27A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27A10);
  }

  return result;
}

uint64_t sub_2202B826C()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF27A18);
  v1 = __swift_project_value_buffer(v0, qword_27CF27A18);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_2202B8358()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF27A30);
  v1 = __swift_project_value_buffer(v0, qword_27CF27A30);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2202B8418()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27A48);
  __swift_project_value_buffer(v0, qword_27CF27A48);
  return sub_22036F108();
}

uint64_t VideoAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B8E80(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t VideoAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdImpressionEvent(0);
  v5 = v4[5];
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v14, v17);
}

uint64_t VideoAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 24));
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

uint64_t VideoAdImpressionEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t VideoAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 VideoAdImpressionEvent.Model.init(eventData:adUserData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v25 = *a3;
  v12 = a3[1].n128_u64[0];
  v13 = a3[1].n128_u64[1];
  v14 = a3[2].n128_u8[0];
  v15 = a3[2].n128_u8[1];
  v16 = *a4;
  v17 = *(a4 + 1);
  v28 = *a5;
  v26 = *(a4 + 2);
  v27 = a5[1];
  v29 = *a6;
  v30 = *a7;
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v10;
  v20[1] = v11;
  v21 = (a8 + v19[6]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v12;
  v21[1].n128_u64[1] = v13;
  v21[2].n128_u8[0] = v14;
  v21[2].n128_u8[1] = v15;
  v23 = a8 + v19[7];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v26;
  v24 = (a8 + v19[8]);
  *v24 = v28;
  v24[1] = v27;
  *(a8 + v19[9]) = v29;
  *(a8 + v19[10]) = v30;
  return result;
}

uint64_t sub_2202B966C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144646565466461;
  if (v1 != 5)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x4464416F65646976;
  if (v1 != 3)
  {
    v4 = 0x6D6563616C506461;
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

uint64_t sub_2202B976C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202BAC10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202B9794(uint64_t a1)
{
  v2 = sub_2202B9BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B97D0(uint64_t a1)
{
  v2 = sub_2202B9BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202BA21C(0, &qword_27CF27A68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B9BEC();
  sub_220370168();
  LOBYTE(v28) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for VideoAdImpressionEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v28 = *v13;
    v29 = v14;
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
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v15;
    v34 = 2;
    sub_220236A84();

    sub_22036FFF8();

    v21 = v3 + v12[7];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    LODWORD(v28) = *v21;
    v29 = v22;
    v30 = v23;
    v34 = 3;
    sub_2202B744C();

    sub_22036FFF8();

    v25 = (v3 + v12[8]);
    v26 = v25[1];
    v28 = *v25;
    v29 = v26;
    v34 = 4;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v28) = *(v3 + v12[9]);
    v34 = 5;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v28) = *(v3 + v12[10]);
    v34 = 6;
    sub_2202438B4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202B9BEC()
{
  result = qword_27CF27A70;
  if (!qword_27CF27A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27A70);
  }

  return result;
}

uint64_t VideoAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22036F388();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BA21C(0, &qword_27CF27A78, MEMORY[0x277D844C8]);
  v36 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B9BEC();
  v37 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v34;
  LOBYTE(v38) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v35;
  sub_22036FF28();
  (*(v33 + 32))(v14, v17, v4);
  v43 = 1;
  sub_2201F93C8();
  sub_22036FF28();
  v18 = *(&v38 + 1);
  v19 = &v14[v11[5]];
  *v19 = v38;
  *(v19 + 1) = v18;
  v43 = 2;
  sub_220236A30();
  sub_22036FF28();
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v24 = &v14[v11[6]];
  *v24 = v38;
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  v24[32] = v22;
  v24[33] = v23;
  v43 = 3;
  sub_2202B73F4();
  sub_22036FF28();
  v25 = *(&v38 + 1);
  v26 = v39;
  v27 = &v14[v11[7]];
  *v27 = v38;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;
  v43 = 4;
  sub_220242CD4();
  sub_22036FF28();
  v28 = *(&v38 + 1);
  v29 = &v14[v11[8]];
  *v29 = v38;
  *(v29 + 1) = v28;
  v43 = 5;
  sub_220202B10();
  sub_22036FEB8();
  v14[v11[9]] = v38;
  v43 = 6;
  sub_220243860();
  sub_22036FEB8();
  (*(v16 + 8))(v37, v36);
  v14[v11[10]] = v38;
  sub_2202BA280(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202BA2E4(v14);
}

void sub_2202BA21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B9BEC();
    v7 = a3(a1, &type metadata for VideoAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BA280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202BA2E4(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202BA418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v15, v18);
}

void sub_2202BA79C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202B8E80(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
    if (v1 <= 0x3F)
    {
      sub_2202B8E80(319, &qword_281266858, sub_220236A30, sub_220236A84);
      if (v2 <= 0x3F)
      {
        sub_2202B8E80(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
        if (v3 <= 0x3F)
        {
          sub_2202B8E80(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
          if (v4 <= 0x3F)
          {
            sub_2202B8E80(319, &qword_281266890, sub_220202B10, sub_220202B7C);
            if (v5 <= 0x3F)
            {
              sub_2202B8E80(319, &qword_281266868, sub_220243860, sub_2202438B4);
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

void sub_2202BAA10()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26298);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF262A0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2202BAB0C()
{
  result = qword_27CF27AA0;
  if (!qword_27CF27AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AA0);
  }

  return result;
}

unint64_t sub_2202BAB64()
{
  result = qword_27CF27AA8;
  if (!qword_27CF27AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AA8);
  }

  return result;
}

unint64_t sub_2202BABBC()
{
  result = qword_27CF27AB0;
  if (!qword_27CF27AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AB0);
  }

  return result;
}

uint64_t sub_2202BAC10(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t PurchaseSessionData.purchaseSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PurchaseSessionData.purchaseSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2202BAF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000220390FF0 == a2)
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

uint64_t sub_2202BAFC0(uint64_t a1)
{
  v2 = sub_2202BB184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202BAFFC(uint64_t a1)
{
  v2 = sub_2202BB184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseSessionData.encode(to:)(void *a1)
{
  sub_2202BB35C(0, &qword_281261C30, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202BB184()
{
  result = qword_2812644D8;
  if (!qword_2812644D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644D8);
  }

  return result;
}

uint64_t PurchaseSessionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202BB35C(0, &qword_27CF27AB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FEE8();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202BB35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202BB184();
    v7 = a3(a1, &type metadata for PurchaseSessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BB3E0(void *a1)
{
  sub_2202BB35C(0, &qword_281261C30, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202BB550()
{
  result = qword_27CF27AC0;
  if (!qword_27CF27AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AC0);
  }

  return result;
}

unint64_t sub_2202BB5A8()
{
  result = qword_2812644C8;
  if (!qword_2812644C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644C8);
  }

  return result;
}

unint64_t sub_2202BB600()
{
  result = qword_2812644D0;
  if (!qword_2812644D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644D0);
  }

  return result;
}

uint64_t sub_2202BB654()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
  v2 = sub_22036EF88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2202BB6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
  swift_beginAccess();
  v4 = sub_22036EF88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DenylistDescriptor.debugItem.getter()
{
  v0 = sub_22036F868();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22036EF98();
  *v4 = 0;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D270], v0);
  return sub_22036F8B8();
}

uint64_t String.denylistDescriptorValueDebugItem.getter()
{
  v0 = sub_22036F868();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 0;
  v3[1] = 0;
  (*(v4 + 104))(v3, *MEMORY[0x277D6D270]);

  return sub_22036F8B8();
}

uint64_t sub_2202BB968(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22036EFB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2201F6A50(&qword_2812666D8);
  v36 = a2;
  v13 = sub_22036FA78();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2201F6A50(&qword_27CF27AC8);
      v23 = sub_22036FAB8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2202BBF5C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2202BBC20(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22036EFB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_2202BCA08();
  result = sub_22036FD48();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2201F6A50(&qword_2812666D8);
      result = sub_22036FA78();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2202BBF5C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22036EFB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2202BBC20(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2202BC1D8();
      goto LABEL_12;
    }

    sub_2202BC400(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2201F6A50(&qword_2812666D8);
  v15 = sub_22036FA78();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2201F6A50(&qword_27CF27AC8);
      v23 = sub_22036FAB8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_220370088();
  __break(1u);
  return result;
}

void *sub_2202BC1D8()
{
  v1 = v0;
  v2 = sub_22036EFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BCA08();
  v7 = *v0;
  v8 = sub_22036FD38();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2202BC400(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22036EFB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_2202BCA08();
  v10 = sub_22036FD48();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2201F6A50(&qword_2812666D8);
      result = sub_22036FA78();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

size_t sub_2202BC6FC(size_t a1, int64_t a2, char a3)
{
  result = sub_2202BC73C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2202BC71C(char *a1, int64_t a2, char a3)
{
  result = sub_2202BC908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2202BC73C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2202BCA88();
  v10 = *(sub_22036EFB8() - 8);
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
  v15 = *(sub_22036EFB8() - 8);
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

char *sub_2202BC908(char *result, int64_t a2, char a3, char *a4)
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
    sub_2202BCAE0();
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

void sub_2202BCA08()
{
  if (!qword_27CF27AD0)
  {
    sub_22036EFB8();
    sub_2201F6A50(&qword_2812666D8);
    v0 = sub_22036FD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF27AD0);
    }
  }
}

void sub_2202BCA88()
{
  if (!qword_27CF27AD8)
  {
    sub_22036EFB8();
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF27AD8);
    }
  }
}

void sub_2202BCAE0()
{
  if (!qword_281261B08)
  {
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261B08);
    }
  }
}

uint64_t sub_2202BCBF8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27AE0);
  __swift_project_value_buffer(v0, qword_27CF27AE0);
  return sub_22036F108();
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202BCFA0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = *(v4 + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SearchResultsReturnedEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchResultsReturnedEvent.Model.searchResultsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24));
}

uint64_t SearchResultsReturnedEvent.Model.init(eventData:searchData:searchResultsData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = sub_22036F388();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v11 = (a4 + *(result + 20));
  *v11 = v6;
  v11[1] = v7;
  *(a4 + *(result + 24)) = v8;
  return result;
}

uint64_t sub_2202BD3E8()
{
  v1 = 0x6144686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_2202BD450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202BE1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202BD478(uint64_t a1)
{
  v2 = sub_2202BD738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202BD4B4(uint64_t a1)
{
  v2 = sub_2202BD738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202BDB64(0, &qword_27CF27AF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BD738();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[1];
    v18 = *v13;
    v19 = v14;
    v17 = 1;
    sub_220247C5C();

    sub_22036FFF8();

    v18 = *(v3 + *(v12 + 24));
    v17 = 2;
    sub_220248188();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202BD738()
{
  result = qword_27CF27B00;
  if (!qword_27CF27B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B00);
  }

  return result;
}

uint64_t SearchResultsReturnedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22036F388();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BDB64(0, &qword_27CF27B08, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BD738();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v30;
  v18 = v31;
  sub_22036FF28();
  (*(v16 + 32))(v26, v19, v4);
  v34 = 1;
  sub_220247C08();
  sub_22036FF28();
  v20 = v33;
  v21 = &v26[*(v25 + 20)];
  *v21 = v32;
  *(v21 + 1) = v20;
  v34 = 2;
  sub_220248134();
  sub_22036FF28();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v32;
  sub_2202BDBC8(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202BDC2C(v22);
}

void sub_2202BDB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202BD738();
    v7 = a3(a1, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BDBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202BDC2C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202BDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_2202BDEF8()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202BCFA0(319, &qword_281266878, sub_220247C08, sub_220247C5C);
    if (v1 <= 0x3F)
    {
      sub_2202BCFA0(319, &qword_2812667B0, sub_220248134, sub_220248188);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2202BE02C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202BE0C4()
{
  result = qword_27CF27B20;
  if (!qword_27CF27B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B20);
  }

  return result;
}

unint64_t sub_2202BE11C()
{
  result = qword_27CF27B28;
  if (!qword_27CF27B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B28);
  }

  return result;
}

unint64_t sub_2202BE174()
{
  result = qword_27CF27B30;
  if (!qword_27CF27B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B30);
  }

  return result;
}

uint64_t sub_2202BE1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390490 == a2)
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

uint64_t sub_2202BE2F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_281266A40 != -1)
  {
    swift_once();
  }

  sub_2201F50A0(&qword_2812654A0, a2, type metadata accessor for TrackerAssembly);
  return sub_22036EAC8();
}

uint64_t sub_2202BE3CC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_22036F158();
  sub_22036F0F8();
  v8 = sub_22036F0E8();
  if (qword_281266A50 != -1)
  {
    swift_once();
  }

  sub_2201F50A0(&qword_2812654A0, v7, type metadata accessor for TrackerAssembly);
  sub_22036EAC8();
  v9 = sub_22036F0D8();

  if (qword_2812669B8 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  v10 = sub_22036F0B8();

  if (qword_281266A00 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  sub_22036F0C8();

  return sub_22036F148();
}

uint64_t sub_2202BE650(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (!v13[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F358();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266988);
  result = sub_22036F4B8();
  if (!v12[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_2812662E0);
  result = sub_22036F4B8();
  if (!v11[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, qword_2812662E8);
  result = sub_22036F4B8();
  if (v10[3])
  {
    type metadata accessor for ExternalAnalyticsEventProcessor();
    v9 = swift_allocObject();
    v9[23] = sub_2203043C8(MEMORY[0x277D84F90]);
    v9[24] = 0;
    v9[25] = 0;
    v9[26] = 0;
    sub_2201F5DF4(v13, (v9 + 3));
    v9[2] = v5;
    sub_2201F5DF4(v12, (v9 + 8));
    sub_2201F5DF4(v11, (v9 + 13));
    sub_2201F5DF4(v10, (v9 + 18));

    sub_220301BF8();

    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2202BE894@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22036EBB8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_22036EBA8();
  v6 = MEMORY[0x277CEAC70];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_2202BE8EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ExternalAnalyticsPanelIdProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for ExternalAnalyticsPanelIdProvider;
  *a1 = result;
  return result;
}

uint64_t sub_2202BE934@<X0>(uint64_t *a1@<X8>)
{
  sub_2202BEB8C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22037EA40;
  started = type metadata accessor for AppSessionStartEventQueryItemsGenerator();
  v4 = swift_allocObject();
  *(v2 + 56) = started;
  *(v2 + 64) = &off_2833F4010;
  *(v2 + 32) = v4;
  ItemsGenerator = type metadata accessor for ArticleViewEventQueryItemsGenerator();
  v6 = swift_allocObject();
  *(v2 + 96) = ItemsGenerator;
  *(v2 + 104) = &off_2833F6648;
  *(v2 + 72) = v6;
  v7 = type metadata accessor for MediaEngageEventQueryItemsGenerator();
  v8 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_2833F5928;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for MediaEngageCompletedEventQueryItemsGenerator();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_2833F55C8;
  *(v2 + 152) = v10;
  v11 = type metadata accessor for ExternalAnalyticsURLProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v11;
  a1[4] = &protocol witness table for ExternalAnalyticsURLProvider;
  *a1 = result;
  return result;
}

void sub_2202BEA4C(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SessionObserver();
  v3 = sub_22036F4A8();
  if (v3)
  {
    v4 = v3;
    sub_2201F50A0(&qword_2812654D0, 255, type metadata accessor for SessionObserver);
    sub_22036F698();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2202BEB24(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2202BEB8C()
{
  if (!qword_281261B10)
  {
    sub_2201F358C(255, &qword_2812662D8);
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261B10);
    }
  }
}

uint64_t sub_2202BECC0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27B68);
  __swift_project_value_buffer(v0, qword_27CF27B68);
  return sub_22036F108();
}

uint64_t CustomItemExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CustomItemExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.customItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202BF158()
{
  result = qword_27CF27B88;
  if (!qword_27CF27B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B88);
  }

  return result;
}

unint64_t sub_2202BF1AC()
{
  result = qword_27CF27B90;
  if (!qword_27CF27B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B90);
  }

  return result;
}

uint64_t CustomItemExposureEvent.customItemData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202BFA70(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t CustomItemExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CustomItemExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v14, v21);
}

uint64_t sub_2202C0050@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CustomItemExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t CustomItemExposureEvent.Model.customItemData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t CustomItemExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CustomItemExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t CustomItemExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t CustomItemExposureEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 44));
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

uint64_t CustomItemExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 CustomItemExposureEvent.Model.init(eventData:timedData:viewData:customItemData:feedPositionData:inGroupPositionData:feedData:groupData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a3;
  v14 = a3[1];
  v16 = *(a3 + 8);
  v33 = *a4;
  v17 = *(a4 + 2);
  v18 = *(a4 + 3);
  v19 = *a5;
  v34 = *(a6 + 4);
  v35 = *a6;
  v38 = *a7;
  v36 = *(a7 + 2);
  v37 = *(a7 + 1);
  v39 = *(a8 + 40);
  v40 = *(a8 + 32);
  v42 = a10[1];
  v43 = *a10;
  v41 = *(a10 + 16);
  v20 = sub_22036F388();
  v31 = *(a8 + 16);
  v32 = *a8;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v22 = v21[5];
  v23 = sub_22036F3C8();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = a9 + v21[6];
  *v24 = v15;
  *(v24 + 8) = v14;
  *(v24 + 16) = v16;
  v25 = a9 + v21[7];
  *v25 = v33;
  *(v25 + 16) = v17;
  *(v25 + 24) = v18;
  *(a9 + v21[8]) = v19;
  v26 = a9 + v21[9];
  *v26 = v35;
  *(v26 + 4) = v34;
  v27 = a9 + v21[10];
  *v27 = v38;
  *(v27 + 8) = v37;
  *(v27 + 16) = v36;
  v28 = a9 + v21[11];
  result = v32;
  *v28 = v32;
  *(v28 + 16) = v31;
  *(v28 + 32) = v40;
  *(v28 + 40) = v39;
  v30 = a9 + v21[12];
  *v30 = v43;
  *(v30 + 8) = v42;
  *(v30 + 16) = v41;
  return result;
}

unint64_t sub_2202C04CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x6174614477656976;
    if (a1 != 2)
    {
      v6 = 0x74496D6F74737563;
    }

    if (a1)
    {
      v5 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6174614464656566;
    v2 = 0x74614470756F7267;
    if (a1 != 7)
    {
      v2 = 0x617373696D736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2202C0608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202C1F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202C0630(uint64_t a1)
{
  v2 = sub_2202C0B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C066C(uint64_t a1)
{
  v2 = sub_2202C0B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202C143C(0, &qword_27CF27B98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C0B94();
  sub_220370168();
  LOBYTE(v37) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for CustomItemExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v37) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *v14;
    v16 = *(v14 + 8);
    LOWORD(v14) = *(v14 + 16);
    v37 = v15;
    v38 = v16;
    LOWORD(v39) = v14;
    v43 = 2;
    sub_220202110();

    sub_22036FFF8();

    v17 = (v3 + v12[7]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v37 = *v17;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    v43 = 3;
    sub_2202BF1AC();

    sub_22036FFF8();

    LODWORD(v37) = *(v3 + v12[8]);
    v43 = 4;
    sub_2202760D8();
    sub_22036FFF8();
    v22 = (v3 + v12[9]);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 4);
    LODWORD(v37) = v23;
    BYTE4(v37) = v22;
    v43 = 5;
    sub_220276330();
    sub_22036FF88();
    v24 = v3 + v12[10];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    LOBYTE(v37) = *v24;
    v38 = v25;
    v39 = v26;
    v43 = 6;
    sub_2201FBD1C();

    sub_22036FFF8();

    v27 = (v3 + v12[11]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    v37 = *v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = 7;
    sub_22023846C(v37, v28, v29);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v37, v38, v39);
    v33 = v3 + v12[12];
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v33) = *(v33 + 16);
    v37 = v34;
    v38 = v35;
    LOBYTE(v39) = v33;
    v43 = 8;
    sub_220253D5C();

    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202C0B94()
{
  result = qword_27CF27BA0;
  if (!qword_27CF27BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BA0);
  }

  return result;
}

uint64_t CustomItemExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v46 = sub_22036F3C8();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C143C(0, &qword_27CF27BA8, MEMORY[0x277D844C8]);
  v49 = v9;
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C0B94();
  v48 = v12;
  v18 = v50;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v16;
  v21 = v44;
  v22 = v46;
  LOBYTE(v51) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v43 + 32))(v20, v47, v6);
  LOBYTE(v51) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  v41 = v6;
  (*(v21 + 32))(v20 + v13[5], v19, v22);
  v54 = 2;
  sub_2202020B8();
  v47 = 0;
  sub_22036FF28();
  v23 = v45;
  v24 = *(&v51 + 1);
  v25 = v52;
  v26 = v20 + v13[6];
  *v26 = v51;
  *(v26 + 8) = v24;
  *(v26 + 16) = v25;
  v54 = 3;
  sub_2202BF158();
  sub_22036FF28();
  v40 = a1;
  v27 = v52;
  v28 = (v20 + v13[7]);
  *v28 = v51;
  v28[1] = v27;
  v54 = 4;
  sub_220276084();
  sub_22036FF28();
  *(v20 + v13[8]) = v51;
  v54 = 5;
  sub_2202762DC();
  sub_22036FEB8();
  v29 = BYTE4(v51);
  v30 = v20 + v13[9];
  *v30 = v51;
  *(v30 + 4) = v29;
  v54 = 6;
  sub_2201FBCC4();
  sub_22036FF28();
  v31 = *(&v51 + 1);
  v32 = v52;
  v33 = v20 + v13[10];
  *v33 = v51;
  *(v33 + 8) = v31;
  *(v33 + 16) = v32;
  v54 = 7;
  sub_220236C88();
  sub_22036FEB8();
  v34 = (v20 + v13[11]);
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;
  v34[2] = v53;
  v54 = 8;
  sub_220253D04();
  sub_22036FEB8();
  (*(v23 + 8))(v48, v49);
  v36 = v52;
  v37 = v20 + v13[12];
  *v37 = v51;
  *(v37 + 16) = v36;
  sub_2202C14A0(v20, v42);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_2202C1504(v20);
}

void sub_2202C143C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C0B94();
    v7 = a3(a1, &type metadata for CustomItemExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202C14A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C1504(uint64_t a1)
{
  v2 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202C1638@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v15, v22);
}

void sub_2202C1A7C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202BFA70(319, &qword_281266728, sub_2202020B8, sub_220202110);
      if (v2 <= 0x3F)
      {
        sub_2202BFA70(319, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
        if (v3 <= 0x3F)
        {
          sub_2202BFA70(319, &qword_2812667C0, sub_220276084, sub_2202760D8);
          if (v4 <= 0x3F)
          {
            sub_2202BFA70(319, &qword_281266798, sub_2202762DC, sub_220276330);
            if (v5 <= 0x3F)
            {
              sub_2202BFA70(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
              if (v6 <= 0x3F)
              {
                sub_2202BFA70(319, &qword_281266718, sub_220236C88, sub_220236CDC);
                if (v7 <= 0x3F)
                {
                  sub_2202BFA70(319, &qword_281266818, sub_220253D04, sub_220253D5C);
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

void sub_2202C1D58()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812644F0);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262048);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF27BD0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2202C1E8C()
{
  result = qword_27CF27BD8;
  if (!qword_27CF27BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BD8);
  }

  return result;
}

unint64_t sub_2202C1EE4()
{
  result = qword_27CF27BE0;
  if (!qword_27CF27BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BE0);
  }

  return result;
}

unint64_t sub_2202C1F3C()
{
  result = qword_27CF27BE8;
  if (!qword_27CF27BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BE8);
  }

  return result;
}

uint64_t sub_2202C1F90(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74496D6F74737563 && a2 == 0xEE00617461446D65 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

void __swiftcall CampaignData.init(campaignID:campaignType:creativeID:)(StocksAnalytics::CampaignData *__return_ptr retstr, Swift::String campaignID, Swift::String_optional campaignType, Swift::String_optional creativeID)
{
  retstr->campaignID = campaignID;
  retstr->campaignType = campaignType;
  retstr->creativeID = creativeID;
}

uint64_t CampaignData.campaignID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CampaignData.campaignID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CampaignData.campaignType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CampaignData.campaignType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CampaignData.creativeID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CampaignData.creativeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2202C2444()
{
  v1 = 0x6576697461657263;
  if (*v0 == 1)
  {
    v1 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E676961706D6163;
  }
}

uint64_t sub_2202C2498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202C2B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202C24C0(uint64_t a1)
{
  v2 = sub_2202C26E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C24FC(uint64_t a1)
{
  v2 = sub_2202C26E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  sub_2202C29B0(0, &qword_27CF27BF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C26E8();
  sub_220370168();
  v19 = 0;
  v14 = v16[5];
  sub_22036FFB8();
  if (!v14)
  {
    v18 = 1;
    sub_22036FF68();
    v17 = 2;
    sub_22036FF68();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202C26E8()
{
  result = qword_27CF27BF8;
  if (!qword_27CF27BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BF8);
  }

  return result;
}

uint64_t CampaignData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202C29B0(0, &qword_27CF27C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C26E8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v27 = v12;
  v29 = 1;
  v15 = sub_22036FE98();
  v17 = v16;
  v26 = v15;
  v28 = 2;
  v18 = sub_22036FE98();
  v21 = v20;
  v22 = *(v7 + 8);
  v25 = v18;
  v22(v10, v6);
  v23 = v26;
  *a2 = v27;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v25;
  a2[5] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C29B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C26E8();
    v7 = a3(a1, &type metadata for CampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C2A70()
{
  result = qword_27CF27C08;
  if (!qword_27CF27C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C08);
  }

  return result;
}

unint64_t sub_2202C2AC8()
{
  result = qword_27CF27C10;
  if (!qword_27CF27C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C10);
  }

  return result;
}

unint64_t sub_2202C2B20()
{
  result = qword_27CF27C18;
  if (!qword_27CF27C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C18);
  }

  return result;
}

uint64_t sub_2202C2B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449;
  if (v3 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000065707954 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEA00000000004449)
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

uint64_t sub_2202C2D60()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812637F0);
  __swift_project_value_buffer(v0, qword_2812637F0);
  return sub_22036F108();
}

uint64_t ArticleEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleEngagementEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202C32B8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleEngagementEvent(0);
  v5 = v4[5];
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ArticleEngagementEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 20);
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

uint64_t ArticleEngagementEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 28));
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

__n128 ArticleEngagementEvent.Model.init(eventData:newsArticleData:userArticleContextData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v20 = *a4;
  v9 = a4[1].n128_u64[0];
  v10 = a4[1].n128_u64[1];
  v11 = a4[2].n128_u8[0];
  v12 = a4[2].n128_u8[1];
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v15 = a5 + v14[5];
  v16 = *(a2 + 48);
  *(v15 + 32) = *(a2 + 32);
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 64);
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v17;
  *(a5 + v14[6]) = v8;
  v18 = (a5 + v14[7]);
  result = v20;
  *v18 = v20;
  v18[1].n128_u64[0] = v9;
  v18[1].n128_u64[1] = v10;
  v18[2].n128_u8[0] = v11;
  v18[2].n128_u8[1] = v12;
  return result;
}

unint64_t sub_2202C3824()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v1 = 0x697472417377656ELL;
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

uint64_t sub_2202C38BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202C47F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202C38E4(uint64_t a1)
{
  v2 = sub_2202C3C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C3920(uint64_t a1)
{
  v2 = sub_2202C3C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202C4150(0, &qword_27CF27C20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C3C94();
  sub_220370168();
  v44 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleEngagementEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v41 = *(v13 + 32);
    v42 = v15;
    v16 = *(v13 + 16);
    v40[0] = *v13;
    v40[1] = v16;
    v36 = v14;
    v37 = v41;
    v38 = *(v13 + 48);
    v43 = *(v13 + 64);
    v39 = *(v13 + 64);
    v35 = v40[0];
    v34 = 1;
    sub_22022ECDC(v40, v32);
    sub_22022EDA0();
    sub_22036FFF8();
    v32[2] = v37;
    v32[3] = v38;
    v33 = v39;
    v32[0] = v35;
    v32[1] = v36;
    sub_22022ED14(v32);
    LOWORD(v25) = *(v3 + v12[6]);
    v31 = 2;
    sub_22025E918();
    sub_22036FFF8();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v17 + 32);
    LOBYTE(v17) = *(v17 + 33);
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v17;
    v31 = 3;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202C3C94()
{
  result = qword_2812637D8;
  if (!qword_2812637D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637D8);
  }

  return result;
}

uint64_t ArticleEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_22036F388();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C4150(0, &qword_281261D90, MEMORY[0x277D844C8]);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C3C94();
  v35 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v16 = v14;
  v17 = v31;
  LOBYTE(v41) = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v32;
  v19 = v34;
  sub_22036FF28();
  (*(v17 + 32))(v16, v18, v4);
  v47 = 1;
  sub_22022ED48();
  sub_22036FF28();
  v20 = v16 + v11[5];
  v21 = v44;
  *(v20 + 32) = v43;
  *(v20 + 48) = v21;
  *(v20 + 64) = v45;
  v22 = v42;
  *v20 = v41;
  *(v20 + 16) = v22;
  v46 = 2;
  sub_22025E8C4();
  sub_22036FF28();
  *(v16 + v11[6]) = v36;
  v46 = 3;
  sub_220236A30();
  sub_22036FF28();
  (*(v33 + 8))(v35, v19);
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v16 + v11[7];
  *v27 = v36;
  *(v27 + 16) = v23;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *(v27 + 33) = v26;
  sub_2202C41B4(v16, v30);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2202C4218(v16);
}

void sub_2202C4150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C3C94();
    v7 = a3(a1, &type metadata for ArticleEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202C41B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C4218(uint64_t a1)
{
  v2 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202C434C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202C455C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202C32B8(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
    if (v1 <= 0x3F)
    {
      sub_2202C32B8(319, &qword_281266760, sub_22025E8C4, sub_22025E918);
      if (v2 <= 0x3F)
      {
        sub_2202C32B8(319, &qword_281266858, sub_220236A30, sub_220236A84);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2202C46F4()
{
  result = qword_27CF27C28;
  if (!qword_27CF27C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C28);
  }

  return result;
}

unint64_t sub_2202C474C()
{
  result = qword_2812637C8;
  if (!qword_2812637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637C8);
  }

  return result;
}

unint64_t sub_2202C47A4()
{
  result = qword_2812637D0;
  if (!qword_2812637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637D0);
  }

  return result;
}

uint64_t sub_2202C47F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
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

void sub_2202C4978(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v74 = a6;
  v75 = a3;
  v73 = a2;
  v7 = sub_22036E5D8();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22036E468();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v67 - v14;
  v80 = type metadata accessor for NewsArticleViewEvent.Model(0);
  v15 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C50DC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22036ED58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - v24;
  sub_2202C5134();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a1, v21);
  v32 = swift_dynamicCast();
  v33 = *(v28 + 56);
  if (v32)
  {
    v33(v20, 0, 1, v27);
    (*(v28 + 32))(v31, v20, v27);
    v34 = sub_22036ED28();
    v35 = v82;
    v36 = sub_22036F1F8();
    if (v35)
    {
      (*(v28 + 8))(v31, v27);
    }

    else
    {
      v38 = v37;
      v39 = v36;

      v40 = sub_22036E3C8();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      sub_22036E3B8();
      sub_2202C51C8(&qword_281267068, type metadata accessor for NewsArticleViewEvent.Model);
      v43 = v80;
      sub_22036E3A8();
      v67 = v39;
      v82 = v38;

      v44 = v81;
      v45 = &v81[*(v43 + 24)];
      v46 = *(v45 + 3);
      v91 = *(v45 + 2);
      v92 = v46;
      v93 = *(v45 + 16);
      v47 = *(v45 + 1);
      v90[0] = *v45;
      v90[1] = v47;
      v87 = v91;
      v88 = v46;
      v89 = v93;
      v85 = v90[0];
      v86 = v47;
      sub_22022ECDC(v90, v83);
      v48 = v77;
      sub_22036E458();
      (*(v78 + 16))(v76, v48, v79);
      v49 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_220287E28(v50 > 1, v51 + 1, 1, v49);
      }

      v49[2] = v51 + 1;
      v52 = v78;
      v53 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51;
      v54 = v79;
      (*(v78 + 32))(v53, v76, v79);
      v96 = v49;
      v55 = v44 + *(v80 + 68);
      v56 = *(v55 + 16);
      v94[0] = *v55;
      v94[1] = v56;
      v95 = *(v55 + 32);
      v57 = sub_2202A6614(v90, v94, v68, v69);
      sub_2202A5E38(v57);
      v58 = v70;
      sub_22036E5C8();
      v80 = sub_22036E5B8();
      v76 = v59;
      sub_2202A6560(v67, v82);
      (*(v71 + 8))(v58, v72);
      (*(v52 + 8))(v77, v54);
      sub_2202C5210(v44, type metadata accessor for NewsArticleViewEvent.Model);
      (*(v28 + 8))(v31, v27);
      LODWORD(v84) = v89;
      v60 = v87;
      v61 = v88;
      v83[2] = v87;
      v83[3] = v88;
      v63 = v85;
      v62 = v86;
      v83[0] = v85;
      v83[1] = v86;
      v65 = v74;
      v64 = v75;
      *v74 = v96;
      *(v65 + 3) = v62;
      *(v65 + 5) = v60;
      *(v65 + 7) = v61;
      *(v65 + 1) = v63;
      v65[9] = v84;
      *(v65 + 80) = 1;
      v65[11] = v73;
      v65[12] = v64;
      v66 = v76;
      v65[13] = v80;
      v65[14] = v66;
    }
  }

  else
  {
    v33(v20, 1, 1, v27);
    sub_2202C5210(v20, sub_2202C50DC);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_2202C50DC()
{
  if (!qword_281267060)
  {
    sub_2202C5134();
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281267060);
    }
  }
}

void sub_2202C5134()
{
  if (!qword_2812668C8)
  {
    type metadata accessor for NewsArticleViewEvent(255);
    sub_2202C51C8(qword_281263EE8, type metadata accessor for NewsArticleViewEvent);
    v0 = sub_22036ED58();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668C8);
    }
  }
}

uint64_t sub_2202C51C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2202C5210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2202C52E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73696C6863746177 && a2 == 0xED00006570795474)
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

uint64_t sub_2202C5370(uint64_t a1)
{
  v2 = sub_2202C5544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C53AC(uint64_t a1)
{
  v2 = sub_2202C5544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistData.encode(to:)(void *a1)
{
  sub_2202C5730(0, &qword_281261CC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5544();
  sub_220370168();
  v13 = v9;
  sub_220269CAC();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202C5544()
{
  result = qword_281265998[0];
  if (!qword_281265998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265998);
  }

  return result;
}

uint64_t WatchlistData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202C5730(0, &qword_281261DF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5544();
  sub_220370148();
  if (!v2)
  {
    sub_220269FD0();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C5730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C5544();
    v7 = a3(a1, &type metadata for WatchlistData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C57F0()
{
  result = qword_27CF27C30;
  if (!qword_27CF27C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C30);
  }

  return result;
}

unint64_t sub_2202C5848()
{
  result = qword_281265988;
  if (!qword_281265988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265988);
  }

  return result;
}

unint64_t sub_2202C58A0()
{
  result = qword_281265990;
  if (!qword_281265990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265990);
  }

  return result;
}

uint64_t MediaData.mediaID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MediaData.mediaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MediaData.mediaDuration.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

_BYTE *MediaData.init(mediaType:mediaID:mediaDuration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_2202C5A28()
{
  v1 = 0x4449616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x727544616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_2202C5A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202C62A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202C5ABC(uint64_t a1)
{
  v2 = sub_2202C5D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C5AF8(uint64_t a1)
{
  v2 = sub_2202C5D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaData.encode(to:)(void *a1)
{
  sub_2202C5FEC(0, &qword_281261B70, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v11;
  v16 = *(v1 + 6);
  HIDWORD(v15) = v1[28];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5D04();
  sub_220370168();
  v23 = v10;
  v22 = 0;
  sub_2202C5D58();
  sub_22036FFF8();
  if (!v2)
  {
    v13 = BYTE4(v15);
    v21 = 1;
    sub_22036FFB8();
    v20 = 2;
    v19 = v13;
    sub_22036FF98();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2202C5D04()
{
  result = qword_281262000;
  if (!qword_281262000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262000);
  }

  return result;
}

unint64_t sub_2202C5D58()
{
  result = qword_281261FD8;
  if (!qword_281261FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FD8);
  }

  return result;
}

uint64_t MediaData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202C5FEC(0, &qword_27CF27C38, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5D04();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_2202C6050();
  sub_22036FF28();
  v12 = v23;
  v21 = 1;
  v13 = sub_22036FEE8();
  v15 = v14;
  v19 = v13;
  v20 = 2;
  v16 = sub_22036FEC8();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 28) = BYTE4(v16) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C5FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C5D04();
    v7 = a3(a1, &type metadata for MediaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C6050()
{
  result = qword_27CF27C40;
  if (!qword_27CF27C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C40);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_2202C60F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2202C6138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202C61A4()
{
  result = qword_27CF27C48;
  if (!qword_27CF27C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C48);
  }

  return result;
}

unint64_t sub_2202C61FC()
{
  result = qword_281261FF0;
  if (!qword_281261FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FF0);
  }

  return result;
}

unint64_t sub_2202C6254()
{
  result = qword_281261FF8;
  if (!qword_281261FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FF8);
  }

  return result;
}

uint64_t sub_2202C62A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449616964656DLL && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544616964656DLL && a2 == 0xED00006E6F697461)
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

uint64_t UserData.init(userID:userType:userStartDate:ageBracket:ageBracketConfidenceLevel:gender:genderConfidenceLevel:userStorefrontID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  v11 = *a3;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = a10;
  *(a9 + 40) = a6;
  *(a9 + 44) = a11;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_2202C6638()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0x7265646E6567;
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
    v2 = 0x444972657375;
    v3 = 0x7261745372657375;
    if (v1 != 2)
    {
      v3 = 0x6B63617242656761;
    }

    if (*v0)
    {
      v2 = 0x6570795472657375;
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

uint64_t sub_2202C6748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202C7230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202C6770(uint64_t a1)
{
  v2 = sub_2202C6ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C67AC(uint64_t a1)
{
  v2 = sub_2202C6ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  sub_2202C6F20(0, &qword_281261B98, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v25 = *(v1 + 16);
  v24 = v1[3];
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v22 = *(v1 + 10);
  v23 = v10;
  v12 = *(v1 + 11);
  v13 = v1[7];
  v21 = v1[6];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_2202C6ABC();
  sub_220370168();
  v35 = 0;
  v19 = v26;
  sub_22036FFB8();
  if (!v19)
  {
    v26 = v13;
    v34 = v25;
    v33 = 1;
    sub_2202C6B10();
    sub_22036FFF8();
    v32 = 2;
    sub_220370018();
    v31 = 3;
    sub_220370008();
    v30 = 4;
    sub_22036FFE8();
    v29 = 5;
    sub_220370008();
    v28 = 6;
    sub_22036FFE8();
    v27 = 7;
    sub_22036FFB8();
  }

  return (*(v4 + 8))(v7, v18);
}

unint64_t sub_2202C6ABC()
{
  result = qword_281262170;
  if (!qword_281262170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262170);
  }

  return result;
}

unint64_t sub_2202C6B10()
{
  result = qword_281262140;
  if (!qword_281262140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262140);
  }

  return result;
}

uint64_t UserData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2202C6F20(0, &qword_281261D50, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C6ABC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41[0]) = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v53 = v12;
  LOBYTE(v37) = 1;
  sub_2202C6F84();
  sub_22036FF28();
  v15 = LOBYTE(v41[0]);
  LOBYTE(v41[0]) = 2;
  v16 = sub_22036FF48();
  v36 = v15;
  v35 = v16;
  LOBYTE(v41[0]) = 3;
  v34 = sub_22036FF38();
  LOBYTE(v41[0]) = 4;
  sub_22036FF18();
  v18 = v17;
  LOBYTE(v41[0]) = 5;
  v33 = sub_22036FF38();
  LOBYTE(v41[0]) = 6;
  sub_22036FF18();
  v20 = v19;
  v51 = 7;
  v21 = sub_22036FEE8();
  v22 = v10;
  v24 = v23;
  (*(v7 + 8))(v22, v6);
  v25 = v53;
  *&v37 = v53;
  *(&v37 + 1) = v14;
  LOBYTE(v38) = v36;
  *(&v38 + 1) = v52[0];
  DWORD1(v38) = *(v52 + 3);
  v26 = v35;
  *(&v38 + 1) = v35;
  v27 = v34;
  *&v39 = __PAIR64__(v18, v34);
  *(&v39 + 1) = __PAIR64__(v20, v33);
  *&v40 = v21;
  *(&v40 + 1) = v24;
  v28 = v37;
  v29 = v38;
  v30 = v40;
  a2[2] = v39;
  a2[3] = v30;
  *a2 = v28;
  a2[1] = v29;
  sub_2202C6FD8(&v37, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v25;
  v41[1] = v14;
  v42 = v36;
  *v43 = v52[0];
  *&v43[3] = *(v52 + 3);
  v44 = v26;
  v45 = v27;
  v46 = v18;
  v47 = v33;
  v48 = v20;
  v49 = v21;
  v50 = v24;
  return sub_2202C7010(v41);
}

void sub_2202C6F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C6ABC();
    v7 = a3(a1, &type metadata for UserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C6F84()
{
  result = qword_281262130;
  if (!qword_281262130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262130);
  }

  return result;
}

uint64_t sub_2202C7070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2202C70B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202C712C()
{
  result = qword_27CF27C50;
  if (!qword_27CF27C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C50);
  }

  return result;
}

unint64_t sub_2202C7184()
{
  result = qword_281262160;
  if (!qword_281262160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262160);
  }

  return result;
}

unint64_t sub_2202C71DC()
{
  result = qword_281262168;
  if (!qword_281262168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262168);
  }

  return result;
}

uint64_t sub_2202C7230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220391140 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391160 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220391180 == a2)
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

unint64_t sub_2202C74DC@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_22036E5A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C797C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage);
  result = [v15 size];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = result % 0x3E8;
  if (result % 0x3E8 > 0x1F3)
  {
    v19 = 1000 - v17;
    v18 = result + v19;
    if (__OFADD__(result, v19))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    v18 = result - v17;
  }

  v20 = [v15 prunedSessionIDs];
  v21 = sub_22036FB68();

  v22 = *(v21 + 16);

  v23 = v22 % 0xA;
  if (v22 % 0xA > 4)
  {
    v25 = 10 - v23;
    v26 = __OFADD__(v22, v25);
    v24 = v22 + v25;
    if (v26)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v24 = v22 - v23;
  }

  v45 = v24;
  result = [v15 prunedSessionSize];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v27 = result;
  v44 = v18;
  v28 = [v15 sessionIDs];
  if (!v28)
  {
    goto LABEL_14;
  }

  v29 = v28;
  v30 = sub_22036FB68();

  swift_getKeyPath();
  v47 = v30;

  swift_getAtKeyPath();
  swift_bridgeObjectRelease_n();

  v31 = v46 % 10;
  if (v46 % 10 <= 4)
  {
    v32 = v46 - v31;
    if (!__OFSUB__(v46, v31))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v32 = -1;
    goto LABEL_16;
  }

  v33 = 10 - v31;
  v32 = v46 + v33;
  if (__OFADD__(v46, v33))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_16:
  v34 = [v15 earliestSessionDate];
  if (v34)
  {
    v35 = v34;
    sub_22036E588();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v4 + 56))(v14, v36, 1, v3);
  sub_2202C79D4(v14, v12);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    result = sub_2202C7A38(v14);
    v37 = -1;
LABEL_30:
    v26 = __OFSUB__(0, v37);
    v37 = -v37;
    if (!v26)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  (*(v4 + 32))(v7, v12, v3);
  sub_22036E558();
  v39 = v38;
  v40 = v38;
  (*(v4 + 8))(v7, v3);
  result = sub_2202C7A38(v14);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v39;
  v41 = v39 % 1000;
  if (v41 <= 499)
  {
    v26 = __OFSUB__(v37, v41);
    v37 -= v41;
    if (!v26)
    {
LABEL_29:
      if ((v37 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v43 = v45;
        *a1 = v44;
        a1[1] = v43;
        a1[2] = v27;
        a1[3] = v32;
        a1[4] = v37;
        return result;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  v42 = 1000 - v41;
  v26 = __OFADD__(v37, v42);
  v37 += v42;
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_2202C797C()
{
  if (!qword_281266AC0)
  {
    sub_22036E5A8();
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266AC0);
    }
  }
}

uint64_t sub_2202C79D4(uint64_t a1, uint64_t a2)
{
  sub_2202C797C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C7A38(uint64_t a1)
{
  sub_2202C797C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

StocksAnalytics::WebSubscriptionStatus_optional __swiftcall WebSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t WebSubscriptionStatus.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x6373627553746F6ELL;
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

uint64_t sub_2202C7B5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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

unint64_t sub_2202C7C84()
{
  result = qword_27CF27C58;
  if (!qword_27CF27C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C58);
  }

  return result;
}

uint64_t sub_2202C7CD8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C7D8C()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202C7E2C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C7EE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
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

unint64_t sub_2202C8018()
{
  result = qword_281263858;
  if (!qword_281263858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263858);
  }

  return result;
}

uint64_t TrackData.init(trackDuration:trackVariant:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_2202C80EC()
{
  if (*v0)
  {
    result = 0x7261566B63617274;
  }

  else
  {
    result = 0x7275446B63617274;
  }

  *v0;
  return result;
}

uint64_t sub_2202C813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275446B63617274 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261566B63617274 && a2 == 0xEC000000746E6169)
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

uint64_t sub_2202C8224(uint64_t a1)
{
  v2 = sub_2202C8434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C8260(uint64_t a1)
{
  v2 = sub_2202C8434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackData.encode(to:)(void *a1)
{
  sub_2202C86A8(0, &qword_27CF27C60, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 4);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C8434();
  sub_220370168();
  v17 = 0;
  sub_220370008();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_2202C8488();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2202C8434()
{
  result = qword_27CF27C68;
  if (!qword_27CF27C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C68);
  }

  return result;
}

unint64_t sub_2202C8488()
{
  result = qword_27CF27C70;
  if (!qword_27CF27C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C70);
  }

  return result;
}

uint64_t TrackData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202C86A8(0, &qword_27CF27C78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C8434();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_22036FF38();
    v16 = 1;
    sub_2202C870C();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 4) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C86A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C8434();
    v7 = a3(a1, &type metadata for TrackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C870C()
{
  result = qword_27CF27C80;
  if (!qword_27CF27C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C80);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2202C8858()
{
  result = qword_27CF27C88;
  if (!qword_27CF27C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C88);
  }

  return result;
}

unint64_t sub_2202C88B0()
{
  result = qword_27CF27C90;
  if (!qword_27CF27C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C90);
  }

  return result;
}

unint64_t sub_2202C8908()
{
  result = qword_27CF27C98;
  if (!qword_27CF27C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C98);
  }

  return result;
}

unint64_t sub_2202C89A8()
{
  result = qword_27CF27CA0;
  if (!qword_27CF27CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CA0);
  }

  return result;
}

uint64_t sub_2202C8A0C()
{
  sub_2202C8CE0();

  sub_22036EDA8();

  type metadata accessor for UserSegmentationTreatmentIDsChangeEvent(0);
  sub_2202C8D34(&qword_281262500, type metadata accessor for UserSegmentationTreatmentIDsChangeEvent);
  memset(v1, 0, sizeof(v1));
  sub_22036EDC8();
  return sub_220235924(v1);
}

uint64_t sub_2202C8B04()
{
  sub_2202C8C8C();

  sub_22036EDA8();

  type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0);
  sub_2202C8D34(&qword_281262418, type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent);
  memset(v1, 0, sizeof(v1));
  sub_22036EDC8();
  return sub_220235924(v1);
}

uint64_t sub_2202C8BFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2202C8C34()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  sub_2201F6C84();
}

unint64_t sub_2202C8C8C()
{
  result = qword_2812628B8;
  if (!qword_2812628B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628B8);
  }

  return result;
}

unint64_t sub_2202C8CE0()
{
  result = qword_2812628E8;
  if (!qword_2812628E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628E8);
  }

  return result;
}

uint64_t sub_2202C8D34(unint64_t *a1, void (*a2)(uint64_t))
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

StocksAnalytics::EventPath_optional __swiftcall EventPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2202C8DD8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = EventPath.rawValue.getter();
  v4 = v3;
  if (v2 == EventPath.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_220370048();
  }

  return v7 & 1;
}

unint64_t sub_2202C8E78()
{
  result = qword_27CF27CA8;
  if (!qword_27CF27CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CA8);
  }

  return result;
}

uint64_t sub_2202C8ECC()
{
  v1 = *v0;
  sub_220370108();
  EventPath.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C8F34()
{
  v2 = *v0;
  EventPath.rawValue.getter();
  sub_22036FB08();
}

uint64_t sub_2202C8F98()
{
  v1 = *v0;
  sub_220370108();
  EventPath.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C9008@<X0>(uint64_t *a1@<X8>)
{
  result = EventPath.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EventPath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2202C9230()
{
  result = qword_27CF27CB0;
  if (!qword_27CF27CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CB0);
  }

  return result;
}

StocksAnalytics::ArticleAccessType_optional __swiftcall ArticleAccessType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArticleAccessType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 1684627824;
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