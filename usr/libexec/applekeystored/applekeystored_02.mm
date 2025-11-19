unint64_t sub_10002ACF0()
{
  result = qword_1000A2BC0;
  if (!qword_1000A2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BC0);
  }

  return result;
}

unint64_t sub_10002AD44()
{
  result = qword_1000A2BD0;
  if (!qword_1000A2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BD0);
  }

  return result;
}

unint64_t sub_10002AD98()
{
  result = qword_1000A2BD8;
  if (!qword_1000A2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BD8);
  }

  return result;
}

unint64_t sub_10002ADEC()
{
  result = qword_1000A2BE0;
  if (!qword_1000A2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BE0);
  }

  return result;
}

unint64_t sub_10002AE40()
{
  result = qword_1000A2BF0;
  if (!qword_1000A2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BF0);
  }

  return result;
}

unint64_t sub_10002AE94()
{
  result = qword_1000A2BF8;
  if (!qword_1000A2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnforcementEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnforcementEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileAccessEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FileAccessEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RapidRepair.Rule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RapidRepair.Rule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B2FC()
{
  result = qword_1000A2C00;
  if (!qword_1000A2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C00);
  }

  return result;
}

unint64_t sub_10002B354()
{
  result = qword_1000A2C08;
  if (!qword_1000A2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C08);
  }

  return result;
}

unint64_t sub_10002B3AC()
{
  result = qword_1000A2C10;
  if (!qword_1000A2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C10);
  }

  return result;
}

unint64_t sub_10002B404()
{
  result = qword_1000A2C18;
  if (!qword_1000A2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C18);
  }

  return result;
}

unint64_t sub_10002B45C()
{
  result = qword_1000A2C20;
  if (!qword_1000A2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C20);
  }

  return result;
}

unint64_t sub_10002B4B4()
{
  result = qword_1000A2C28;
  if (!qword_1000A2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C28);
  }

  return result;
}

unint64_t sub_10002B50C()
{
  result = qword_1000A2C30;
  if (!qword_1000A2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C30);
  }

  return result;
}

unint64_t sub_10002B564()
{
  result = qword_1000A2C38;
  if (!qword_1000A2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C38);
  }

  return result;
}

unint64_t sub_10002B5BC()
{
  result = qword_1000A2C40;
  if (!qword_1000A2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C40);
  }

  return result;
}

unint64_t sub_10002B610()
{
  result = qword_1000A2C48;
  if (!qword_1000A2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C48);
  }

  return result;
}

unint64_t sub_10002B664()
{
  result = qword_1000A2C50;
  if (!qword_1000A2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C50);
  }

  return result;
}

unint64_t sub_10002B6B8()
{
  result = qword_1000A2C58;
  if (!qword_1000A2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C58);
  }

  return result;
}

char *sub_10002B71C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return strdup(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return strdup(v3);
    }
  }

  sub_10000A0C8(&qword_1000A3290, &unk_100076BF0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v5[3];
  }

  return result;
}

uint64_t sub_10002B7E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B19B0);
  sub_100002DB8(v0, qword_1000B19B0);
  return Logger.init(subsystem:category:)();
}

ProtectionDomainManager::ScanningAction_optional __swiftcall ScanningAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095FC0, v2);

  if (v3 == 1)
  {
    v4.value = ProtectionDomainManager_ScanningAction_CountSubdirs;
  }

  else
  {
    v4.value = ProtectionDomainManager_ScanningAction_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ScanningAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x627553746E756F43;
  }

  else
  {
    return 0x726944746E756F43;
  }
}

uint64_t sub_10002B8F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x627553746E756F43;
  }

  else
  {
    v4 = 0x726944746E756F43;
  }

  if (v3)
  {
    v5 = 0xEE0079726F746365;
  }

  else
  {
    v5 = 0xEC00000073726964;
  }

  if (*a2)
  {
    v6 = 0x627553746E756F43;
  }

  else
  {
    v6 = 0x726944746E756F43;
  }

  if (*a2)
  {
    v7 = 0xEC00000073726964;
  }

  else
  {
    v7 = 0xEE0079726F746365;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10002B9B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002BA4C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10002BAD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002BB64@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100095FC0, *a1);

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

  *a2 = v5;
  return result;
}

void sub_10002BBC4(uint64_t *a1@<X8>)
{
  v2 = 0x726944746E756F43;
  if (*v1)
  {
    v2 = 0x627553746E756F43;
  }

  v3 = 0xEE0079726F746365;
  if (*v1)
  {
    v3 = 0xEC00000073726964;
  }

  *a1 = v2;
  a1[1] = v3;
}

ProtectionDomainManager::ScanningRule __swiftcall ScanningRule.init(_:_:)(ProtectionDomainManager::ScanningRule result, ProtectionDomainManager::ScanningAction a2)
{
  v2 = a2 & 1;
  result.action = v2;
  return result;
}

uint64_t sub_10002BCD0()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 1752457584;
  }

  *v0;
  return result;
}

uint64_t sub_10002BD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10002BDD8(uint64_t a1)
{
  v2 = sub_10002BFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002BE14(uint64_t a1)
{
  v2 = sub_10002BFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScanningRule.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_10000A0C8(&qword_1000A2C60, &qword_1000763A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002BFE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = v14 & 1;
    v15 = 1;
    sub_10002C034();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10002BFE0()
{
  result = qword_1000A2C68;
  if (!qword_1000A2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C68);
  }

  return result;
}

unint64_t sub_10002C034()
{
  result = qword_1000A2C70;
  if (!qword_1000A2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C70);
  }

  return result;
}

uint64_t ScanningRule.init(from:)(uint64_t *a1)
{
  result = sub_100031B30(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C0B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100031B30(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10002C104()
{
  if (*v0)
  {
    result = 0x73656C7572;
  }

  else
  {
    result = 1752457584;
  }

  *v0;
  return result;
}

uint64_t sub_10002C134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10002C20C(uint64_t a1)
{
  v2 = sub_100031D20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C248(uint64_t a1)
{
  v2 = sub_100031D20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScanningCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_10000A0C8(&qword_1000A2C78, &qword_1000763A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100031D20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_10000A0C8(&qword_1000A2C88, &qword_1000763B0);
    sub_100031D74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t ScanningCommand.init(from:)(uint64_t *a1)
{
  result = sub_100031E4C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C450@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100031E4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

ProtectionDomainManager::ScanningConfiguration __swiftcall ScanningConfiguration.init(commands:enableFileDetails:enableDirectoryDetails:enableProtectionClassDetails:enableHardLinkDetails:)(Swift::OpaquePointer commands, Swift::Bool enableFileDetails, Swift::Bool enableDirectoryDetails, Swift::OpaquePointer enableProtectionClassDetails, Swift::Bool enableHardLinkDetails)
{
  if (enableDirectoryDetails)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = enableHardLinkDetails;
  v8 = v6 & 0xFFFE | enableFileDetails;
  rawValue = enableProtectionClassDetails._rawValue;
  result.enableProtectionClassDetails._rawValue = rawValue;
  result.commands = commands;
  result.enableFileDetails = v8;
  result.enableDirectoryDetails = HIBYTE(v8);
  result.enableHardLinkDetails = v7;
  return result;
}

unint64_t sub_10002C4C4()
{
  v1 = *v0;
  v2 = 0x73646E616D6D6F63;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_10002C56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C5A0(uint64_t a1)
{
  v2 = sub_100032050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C5DC(uint64_t a1)
{
  v2 = sub_100032050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScanningConfiguration.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v16[1] = a5;
  v16[2] = a3;
  v9 = sub_10000A0C8(&qword_1000A2CA0, &qword_1000763B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100032050();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  sub_10000A0C8(&qword_1000A2CB0, &qword_1000763C0);
  sub_1000320A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = a4;
    v17 = 3;
    sub_10000A0C8(&qword_1000A2CC8, &qword_1000763C8);
    sub_10003217C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t ScanningConfiguration.init(from:)(uint64_t *a1)
{
  result = sub_1000323B4(a1);
  if (v1)
  {
    return v3 & 0x101;
  }

  return result;
}

uint64_t sub_10002C8C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000323B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5) & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_10002C908(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScanningConfiguration.encode(to:)(a1, *v1, v2 | *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

void *sub_10002C948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtectionClassCounter();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = sub_100032728(&_swiftEmptyArrayStorage);
  *(v5 + 32) = 0;
  v2[4] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = sub_100032728(&_swiftEmptyArrayStorage);
  *(v6 + 32) = 0;
  v2[5] = v6;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_10002C9E4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = v1[4];
    swift_beginAccess();
    v4 = *(v3 + 24);
    if (*(v4 + 16))
    {
      v5 = *(v3 + 24);

      v6 = sub_10003086C(1u);
      if (v7)
      {
        v8 = *(*(v4 + 56) + 8 * v6);
      }
    }

    v11 = *(v3 + 24);
    if (*(v11 + 16))
    {
      v12 = *(v3 + 24);

      v13 = sub_10003086C(2u);
      if (v14)
      {
        v117 = *(*(v11 + 56) + 8 * v13);
      }
    }

    v15 = *(v3 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v3 + 24);

      v17 = sub_10003086C(3u);
      if (v18)
      {
        v116 = *(*(v15 + 56) + 8 * v17);
      }
    }

    v19 = *(v3 + 24);
    if (*(v19 + 16))
    {
      v20 = *(v3 + 24);

      v21 = sub_10003086C(4u);
      if (v22)
      {
        v115 = *(*(v19 + 56) + 8 * v21);
      }
    }

    v23 = *(v3 + 24);
    if (*(v23 + 16))
    {
      v24 = *(v3 + 24);

      v25 = sub_10003086C(5u);
      if (v26)
      {
        v114 = *(*(v23 + 56) + 8 * v25);
      }
    }

    v27 = *(v3 + 24);
    if (*(v27 + 16))
    {
      v28 = *(v3 + 24);

      v29 = sub_10003086C(6u);
      if (v30)
      {
        v112 = *(*(v27 + 56) + 8 * v29);
      }
    }

    v31 = *(v3 + 24);
    if (*(v31 + 16))
    {
      v32 = *(v3 + 24);

      v33 = sub_10003086C(7u);
      if (v34)
      {
        v110 = *(*(v31 + 56) + 8 * v33);
      }
    }

    v113 = *(v3 + 32);
    v35 = v2[5];
    swift_beginAccess();
    v36 = *(v35 + 24);
    if (*(v36 + 16))
    {
      v37 = *(v35 + 24);

      v38 = sub_10003086C(1u);
      if (v39)
      {
        v111 = *(*(v36 + 56) + 8 * v38);
      }
    }

    v40 = *(v35 + 24);
    if (*(v40 + 16))
    {
      v41 = *(v35 + 24);

      v42 = sub_10003086C(2u);
      if (v43)
      {
        v109 = *(*(v40 + 56) + 8 * v42);
      }
    }

    v44 = *(v35 + 24);
    if (*(v44 + 16))
    {
      v45 = *(v35 + 24);

      v46 = sub_10003086C(3u);
      if (v47)
      {
        v108 = *(*(v44 + 56) + 8 * v46);
      }
    }

    v48 = *(v35 + 24);
    if (*(v48 + 16))
    {
      v49 = *(v35 + 24);

      v50 = sub_10003086C(4u);
      if (v51)
      {
        v52 = *(*(v48 + 56) + 8 * v50);
      }
    }

    v53 = *(v35 + 24);
    if (*(v53 + 16))
    {
      v54 = *(v35 + 24);

      v55 = sub_10003086C(5u);
      if (v56)
      {
        v57 = *(*(v53 + 56) + 8 * v55);
      }
    }

    v58 = *(v35 + 24);
    if (*(v58 + 16))
    {
      v59 = *(v35 + 24);

      v60 = sub_10003086C(6u);
      if (v61)
      {
        v62 = *(*(v58 + 56) + 8 * v60);
      }
    }

    v63 = *(v35 + 24);
    if (*(v63 + 16))
    {
      v64 = *(v35 + 24);

      v65 = sub_10003086C(7u);
      if (v66)
      {
        v67 = *(*(v63 + 56) + 8 * v65);
      }
    }

    v68 = *(v35 + 24);
    if (*(v68 + 16))
    {
      v69 = *(v35 + 24);

      v70 = sub_10003086C(0);
      if (v71)
      {
        v72 = *(*(v68 + 56) + 8 * v70);
      }
    }

    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100076380;
    _StringGuts.grow(_:)(50);
    v75 = v2[2];
    v74 = v2[3];

    v76._countAndFlagsBits = 44;
    v76._object = 0xE100000000000000;
    String.append(_:)(v76);
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 44;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 44;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v81);

    v82._countAndFlagsBits = 44;
    v82._object = 0xE100000000000000;
    String.append(_:)(v82);
    v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v83);

    v84._countAndFlagsBits = 44;
    v84._object = 0xE100000000000000;
    String.append(_:)(v84);
    v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v85);

    v86._countAndFlagsBits = 44;
    v86._object = 0xE100000000000000;
    String.append(_:)(v86);
    v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v87);

    v88._countAndFlagsBits = 44;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v89);

    v90._countAndFlagsBits = 44;
    v90._object = 0xE100000000000000;
    String.append(_:)(v90);
    v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v91);

    v92._countAndFlagsBits = 44;
    v92._object = 0xE100000000000000;
    String.append(_:)(v92);
    v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v93);

    v94._countAndFlagsBits = 44;
    v94._object = 0xE100000000000000;
    String.append(_:)(v94);
    v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v95);

    v96._countAndFlagsBits = 44;
    v96._object = 0xE100000000000000;
    String.append(_:)(v96);
    v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v97);

    v98._countAndFlagsBits = 44;
    v98._object = 0xE100000000000000;
    String.append(_:)(v98);
    v99._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v99);

    v100._countAndFlagsBits = 44;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    v101._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v101);

    v102._countAndFlagsBits = 44;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v103);

    v104._countAndFlagsBits = 44;
    v104._object = 0xE100000000000000;
    String.append(_:)(v104);
    v105._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v105);

    v106._countAndFlagsBits = 44;
    v106._object = 0xE100000000000000;
    String.append(_:)(v106);
    v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v107);

    *(v73 + 56) = &type metadata for String;
    *(v73 + 32) = v75;
    *(v73 + 40) = v74;
    print(_:separator:terminator:)();
  }

  else
  {
    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100076380;
    *(v9 + 56) = type metadata accessor for DirectoryCounter();
    *(v9 + 32) = v2;

    print(_:separator:terminator:)();
  }
}

uint64_t sub_10002D328()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10002D370()
{
  v1 = v0;
  _StringGuts.grow(_:)(21);

  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v4._countAndFlagsBits = sub_10002D958(v2);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A5352494420;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  object = v1[2]._object;
  v8._countAndFlagsBits = sub_10002D958(v7);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v1[1]);
  return 0x203A53454C4946;
}

uint64_t sub_10002D46C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 16);

  for (i = 0; v6; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * v12)));

    sub_10002C9E4(a1 & 1);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D580(unsigned __int8 a1, char a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_10003086C(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v13 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1000311C0(v12, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 24) = v17;
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v15 = *(v3 + 32);
  v11 = __CFADD__(v15, 1);
  v16 = v15 + 1;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(v3 + 32) = v16;
  return result;
}

uint64_t sub_10002D688(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v41 = a1;
  v4 = *(a1 + 24);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v42 = v4;

  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v9 << 6);
    v13 = *(*(v42 + 48) + v12);
    v14 = *(*(v42 + 56) + 8 * v12);
    v15 = *(v2 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v2 + 24);

      v17 = sub_10003086C(v13);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v17);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = __CFADD__(v19, v14);
    v21 = v19 + v14;
    if (v20)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v22 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    v25 = sub_10003086C(v13);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_32;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_100030B94(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_10003086C(v13);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_35;
      }

LABEL_23:
      v33 = v24;
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v36 = v25;
    sub_100031460();
    v25 = v36;
    v33 = v24;
    if (v31)
    {
LABEL_4:
      *(v33[7] + 8 * v25) = v21;
      goto LABEL_5;
    }

LABEL_24:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    *(v33[6] + v25) = v13;
    *(v33[7] + 8 * v25) = v21;
    v34 = v33[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_33;
    }

    v33[2] = v35;
LABEL_5:
    v8 &= v8 - 1;
    *(v2 + 24) = v33;
    swift_endAccess();
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v9;
    if (v8)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v38 = *(v41 + 32);
  v39 = *(v2 + 32);
  v20 = __CFADD__(v39, v38);
  v40 = v39 + v38;
  if (v20)
  {
    goto LABEL_34;
  }

  *(v2 + 32) = v40;
  return result;
}

uint64_t sub_10002D920()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

void *sub_10002E0BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a3)
  {
    type metadata accessor for DirectoryCounterCollection();
    v7 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    *(v7 + 16) = sub_100032814(&_swiftEmptyArrayStorage);
    type metadata accessor for DirectoryCounter();
    v8 = swift_allocObject();
    sub_10002C948(a1, a2);

    *(v7 + 24) = v8;
    v10 = v7 | 0x8000000000000000;
  }

  else
  {
    type metadata accessor for DirectoryCounter();
    v10 = swift_allocObject();

    v9 = sub_10002C948(a1, a2);
  }

  v4[4] = v10;
  v11 = v4[2];
  v12 = v4[3];
  v30[0] = 47;
  v30[1] = 0xE100000000000000;
  __chkstk_darwin(v9);
  v29[2] = v30;

  v14 = sub_10003045C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000339E4, v29, v11, v12, v13);
  v15 = v14[2];
  if (v15)
  {
    v30[0] = &_swiftEmptyArrayStorage;
    sub_10003171C(0, v15, 0);
    v16 = v30[0];
    v17 = v14 + 7;
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = static String._fromSubstring(_:)();
      v24 = v23;

      v30[0] = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_10003171C((v25 > 1), v26 + 1, 1);
        v16 = v30[0];
      }

      v16[2] = v26 + 1;
      v27 = &v16[2 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      v17 += 4;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = &_swiftEmptyArrayStorage;
  }

  v4[5] = v16;
  return v4;
}

uint64_t sub_10002E300()
{
  v1 = v0[3];

  v2 = v0[4];
  sub_100032D84();
  v3 = v0[5];

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10002E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  *(v3 + 32) = 0;
  v8 = *(a3 + 16);
  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for ScanningRuleState();
    v9 = (a3 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v9 += 24;
      swift_allocObject();

      sub_10002E0BC(v10, v11, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v8;
    }

    while (v8);

    v6 = a2;
  }

  else
  {
  }

  *(v4 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for DirectoryCounter();
  v14 = swift_allocObject();
  sub_10002C948(a1, v6);
  *(v4 + 24) = v14;
  return v4;
}

uint64_t sub_10002E490(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  LOBYTE(v8) = a3;
  v11 = 32;
  if (a4)
  {
    v11 = 40;
  }

  v12 = *(*(v5 + 24) + v11);

  v66 = a5;
  sub_10002D580(v8, a5);

  v76[0] = 47;
  v76[1] = 0xE100000000000000;
  v72 = v76;

  v14 = sub_10003045C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000335D4, v71, a1, a2, v13);
  v15 = v14[2];
  if (v15)
  {
    v76[0] = _swiftEmptyArrayStorage;
    sub_10003171C(0, v15, 0);
    v16 = v76[0];
    v17 = v14 + 7;
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = static String._fromSubstring(_:)();
      v24 = v23;

      v76[0] = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_10003171C((v25 > 1), v26 + 1, 1);
        v16 = v76[0];
      }

      v16[2] = v26 + 1;
      v27 = &v16[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v17 += 4;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v29 = *(v6 + 16);
  if (v29 >> 62)
  {
    goto LABEL_48;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_12:
  if (v30 < 1)
  {
    goto LABEL_50;
  }

  v65 = v8;
  v31 = v16[2];
  v70 = (v16 + 4);

  v68 = 0;
  v69 = 0;
  v32 = 0;
  for (i = 0; i != v30; ++i)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v34 = *(v29 + 8 * i + 32);
    }

    v35 = *(v34 + 40);
    v36 = *(v35 + 16);
    if (v36 >= v31)
    {
LABEL_14:

      continue;
    }

    if (v16[2] < v36)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      result = _CocoaArrayWrapper.endIndex.getter();
      v30 = result;
      if (!result)
      {
        goto LABEL_49;
      }

      goto LABEL_12;
    }

    v8 = v32;
    v37 = (2 * v36) | 1;
    v38 = *(v34 + 40);

    LOBYTE(v37) = sub_100032918(v70, 0, v37, v35);

    if (v37)
    {
      if (v8)
      {
        v32 = v8;
        if (*(v8[5] + 16) >= *(*(v34 + 40) + 16))
        {
          goto LABEL_14;
        }
      }

      v39 = *(*(v34 + 40) + 16);
      if (v39 >= v16[2])
      {
        goto LABEL_47;
      }

      v40 = (v70 + 16 * v39);
      v68 = *v40;
      v69 = v40[1];

      v32 = v34;
    }

    else
    {

      v32 = v8;
    }
  }

  if (!v32)
  {
    goto LABEL_51;
  }

  v41 = v69;
  if (!v69)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v42 = v32[4];
  if (v42 < 0)
  {
    v45 = v16[2];

    if (v45 != *(v32[5] + 16) + 1 || (a4 & 1) != 0)
    {
    }

    else
    {

      v41 = 0xE100000000000000;
      v68 = 46;
    }

    swift_beginAccess();
    v47 = *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v47 + 16) && (v48 = *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10), , v49 = sub_10000613C(v68, v41), v51 = v50, , (v51 & 1) != 0))
    {

      v52 = *(*(v47 + 56) + 8 * v49);
      swift_retain_n();

      if ((a4 & 1) == 0)
      {
LABEL_42:
        v53 = *(v52 + 32);
        v54 = v66;
        sub_10002D580(v65, v66 & 1);

        v55 = *(*((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) + 32);
LABEL_45:

        sub_10002D580(v65, v54 & 1);

        sub_100032D84();
      }
    }

    else
    {

      v56 = v32[3];
      v74 = v32[2];
      v75 = v56;

      v57._countAndFlagsBits = 47;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v58._countAndFlagsBits = v68;
      v58._object = v41;
      String.append(_:)(v58);
      v59 = v74;
      v60 = v75;
      type metadata accessor for DirectoryCounter();
      v52 = swift_allocObject();
      sub_10002C948(v59, v60);
      swift_beginAccess();
      swift_retain_n();
      v61 = *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) = 0x8000000000000000;
      sub_1000312E4(v52, v68, v41, isUniquelyReferenced_nonNull_native);

      *((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) = v73;
      swift_endAccess();
      if ((a4 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v63 = *(v52 + 40);
    v54 = v66;
    sub_10002D580(v65, v66 & 1);

    v64 = *(*((v42 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) + 40);
    goto LABEL_45;
  }

  v43 = v32[4];

  if (a4)
  {
    v44 = *(v42 + 40);
  }

  else
  {
    v46 = *(v42 + 32);
  }

  sub_10002D580(v65, v66 & 1);

  return sub_100032D84();
}

uint64_t sub_10002EA64(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocClassInstance(v1, a1, 7);
}

uint64_t ProtectionClassScanner.__allocating_init(_:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 25) = HIBYTE(a2) & 1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t ProtectionClassScanner.init(_:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  *(v4 + 25) = HIBYTE(a2) & 1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t ProtectionClassScanner.__allocating_init(fromConfig:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 56))(v12, 1, 1, v13);
  (*(v5 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v4);

  URL.init(filePath:directoryHint:relativeTo:)();
  v18 = v37;
  v19 = Data.init(contentsOf:options:)();
  if (v18)
  {

    (*(v14 + 8))(v17, v13);
    sub_10000EEA4();
    swift_allocError();
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 13;
    return swift_willThrow();
  }

  else
  {
    v23 = v19;
    v24 = v20;
    (*(v14 + 8))(v17, v13);
    v25 = type metadata accessor for JSONDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10003268C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000B068(v23, v24);

    v28 = v32;
    v29 = v33;
    LOBYTE(v24) = v34;
    v30 = v35;
    v31 = v36;
    type metadata accessor for ProtectionClassScanner();
    result = swift_allocObject();
    *(result + 16) = v28;
    *(result + 24) = v29;
    *(result + 25) = v24;
    *(result + 32) = v30;
    *(result + 40) = v31;
  }

  return result;
}

uint64_t ProtectionClassScanner.__allocating_init(forPath:enableFileDetails:enableDirectoryDetails:enableProtectionClassDetails:enableHardLinkDetails:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  sub_10000A0C8(&qword_1000A2CE8, &qword_1000763D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100076380;
  sub_10000A0C8(&qword_1000A2CF0, &qword_1000763E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100076380;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = v13;
  type metadata accessor for ProtectionClassScanner();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a3;
  *(v14 + 25) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;

  return v14;
}

uint64_t ProtectionClassScanner.scan(csv:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return _swift_task_switch(sub_10002EFE4, 0, 0);
}

uint64_t sub_10002EFE4()
{
  v1 = *(v0 + 72);
  type metadata accessor for DirectoryCounter();
  v2 = swift_allocObject();
  result = sub_10002C948(0x4C41544F54, 0xE500000000000000);
  if (v1 == 1)
  {
    sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100076380;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = 0xD00000000000005BLL;
    *(v4 + 40) = 0x8000000100083480;
    print(_:separator:terminator:)();
  }

  v5 = *(*(v0 + 64) + 16);
  v32 = *(v5 + 16);
  if (v32)
  {
    v6 = 0;
    v7 = 0;
    v30 = *(*(v0 + 64) + 16);
    v31 = v5 + 32;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v8 = *(v0 + 64);
      v34 = v7;
      v9 = (v31 + 24 * v7);
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      type metadata accessor for ScanningState();

      inited = swift_initStackObject();

      sub_10002E348(v12, v11, v10);

      sub_100032A6C(v12, v11, v12, v11, inited, v8);

      v35 = inited;
      v14 = *(inited + 16);
      if (v14 >> 62)
      {
        if (v14 < 0)
        {
          v26 = *(inited + 16);
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        v15 = result;
        if (result)
        {
LABEL_8:
          if (v15 < 1)
          {
            goto LABEL_34;
          }

          v33 = v6;

          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v14 + 8 * i + 32);
            }

            v18 = *(v0 + 72);
            if ((*(v17 + 32) & 0x8000000000000000) != 0)
            {

              sub_10002D46C(v18);
            }

            else
            {
              v19 = *(v17 + 32);

              sub_10002C9E4(v18);
            }

            sub_100032D84();
          }

          v6 = v33;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_8;
        }
      }

      v20 = *(inited + 24);
      v21 = *(v2 + 32);
      v22 = *(v20 + 32);

      sub_10002D688(v22);
      v23 = *(v2 + 40);
      sub_10002D688(*(v20 + 40));

      v24 = *(v35 + 32);

      v25 = __OFADD__(v6, v24);
      v6 += v24;
      if (v25)
      {
        goto LABEL_33;
      }

      v7 = v34 + 1;
      v5 = v30;
      if (v34 + 1 == v32)
      {
        sub_10002C9E4(*(v0 + 72));
        if (v6 >= 1)
        {
          sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_100076380;
          *(v0 + 56) = v6;
          v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v28);

          *(v27 + 56) = &type metadata for String;
          *(v27 + 32) = 0x73726F7272452023;
          *(v27 + 40) = 0xEA0000000000203ALL;
          print(_:separator:terminator:)();

          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

  sub_10002C9E4(*(v0 + 72));
LABEL_28:

LABEL_29:
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10002F420(uint64_t result, void *a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v8 = result;
  if (result != a4 || a2 != a5)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      v11 = sub_10005A65C(v8, v7);
      if (HIDWORD(v11))
      {
        v13 = errno.getter();
        LODWORD(v72) = v13;
        goto LABEL_8;
      }

      LOBYTE(v12) = ProtectionClass.init(value:)(v11);
      if (v12 == 9)
      {
        v13 = 34;
        LODWORD(v72) = 34;
LABEL_8:
        sub_100033644();
        swift_willThrowTypedImpl();
        sub_100033644();
        v14 = swift_allocError();
        *v15 = v13;
        v72 = v14;
        swift_errorRetain();
        sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
        if ((swift_dynamicCast() & 1) != 0 && v74 == 2)
        {
          if (qword_1000A21A0 == -1)
          {
LABEL_11:
            v16 = type metadata accessor for Logger();
            sub_100002DB8(v16, qword_1000B19B0);

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              v72 = v20;
              *v19 = 136315138;
              *(v19 + 4) = sub_100005C68(v8, v7, &v72);
              _os_log_impl(&_mh_execute_header, v17, v18, "file at %s deleted before it could be processed", v19, 0xCu);
              sub_100005E9C(v20);
            }
          }
        }

        else
        {
          swift_errorRetain();
          if (qword_1000A21A0 != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          sub_100002DB8(v21, qword_1000B19B0);
          swift_errorRetain();

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v72 = v26;
            *v24 = 136315394;
            *(v24 + 4) = sub_100005C68(v8, v7, &v72);
            *(v24 + 12) = 2112;
            swift_errorRetain();
            v27 = _swift_stdlib_bridgeErrorToNSError();
            *(v24 + 14) = v27;
            *v25 = v27;
            _os_log_impl(&_mh_execute_header, v22, v23, "cannot get protectionClass for %s: %@", v24, 0x16u);
            sub_10000A50C(v25);

            sub_100005E9C(v26);
          }

          else
          {
          }

          v28 = *(a6 + 32);
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (!v29)
          {
            *(a6 + 32) = v30;
          }

          __break(1u);
        }

        swift_once();
        goto LABEL_11;
      }

      v31 = v12;
      if (a3)
      {
        v32 = a3;
        v33 = 1;
      }

      else
      {
        v34 = sub_10002FCA8(v8, v7);
        v32 = a3;
        v33 = v34;
      }

      v35 = v32;
      result = sub_10002E490(v8, v7, v31, v32 & 1, v33 > 1);
      v36 = *(a7 + 32);
      if (v35)
      {
        if ((*(a7 + 25) & 1) == 0)
        {
          return result;
        }
      }

      else if (*(a7 + 24) != 1)
      {
        return result;
      }

      if (!*(a7 + 40) || v33 >= 2)
      {
        v68 = v33;
        v37 = *(v36 + 16);
        if (v37)
        {
          v38 = 0xEC000000656E6F4ELL;
          v39 = (v36 + 32);
          v40 = 0xE600000000000000;
          v69 = v7;
          while (v37)
          {
            v45 = *v39;
            if (v45 <= 3)
            {
              if (v45 == 2)
              {
                v48 = 0x427373616C63;
              }

              else
              {
                v48 = 0x437373616C63;
              }

              if (*v39)
              {
                v49 = 0x417373616C63;
              }

              else
              {
                v49 = 0x7269447373616C63;
              }

              if (*v39)
              {
                v50 = 0xE600000000000000;
              }

              else
              {
                v50 = v38;
              }

              if (*v39 <= 1u)
              {
                v47 = v49;
              }

              else
              {
                v47 = v48;
              }

              if (*v39 <= 1u)
              {
                v46 = v50;
              }

              else
              {
                v46 = 0xE600000000000000;
              }
            }

            else if (*v39 <= 5u)
            {
              if (v45 == 4)
              {
                v47 = 0x447373616C63;
              }

              else
              {
                v47 = 0x457373616C63;
              }

              v46 = 0xE600000000000000;
            }

            else if (v45 == 6)
            {
              v46 = 0xE600000000000000;
              v47 = 0x467373616C63;
            }

            else if (v45 == 7)
            {
              v46 = 0xE700000000000000;
              v47 = 0x58437373616C63;
            }

            else
            {
              v47 = 0x6365746F72506F6ELL;
              v46 = 0xEC0000006E6F6974;
            }

            v51 = 0x6365746F72506F6ELL;
            if (v31 == 7)
            {
              v51 = 0x58437373616C63;
            }

            v52 = 0xEC0000006E6F6974;
            if (v31 == 7)
            {
              v52 = 0xE700000000000000;
            }

            if (v31 == 6)
            {
              v51 = 0x467373616C63;
              v52 = 0xE600000000000000;
            }

            v53 = 0x457373616C63;
            if (v31 == 4)
            {
              v53 = 0x447373616C63;
            }

            if (v31 <= 5u)
            {
              v51 = v53;
              v52 = 0xE600000000000000;
            }

            if (v31 == 2)
            {
              v54 = 0x427373616C63;
            }

            else
            {
              v54 = 0x437373616C63;
            }

            v55 = 0xE600000000000000;
            if (v31)
            {
              v56 = 0x417373616C63;
            }

            else
            {
              v56 = 0x7269447373616C63;
            }

            if (!v31)
            {
              v40 = v38;
            }

            if (v31 <= 1u)
            {
              v54 = v56;
              v55 = v40;
            }

            if (v31 <= 3u)
            {
              v57 = v54;
            }

            else
            {
              v57 = v51;
            }

            if (v31 <= 3u)
            {
              v58 = v55;
            }

            else
            {
              v58 = v52;
            }

            if (v47 == v57 && v46 == v58)
            {

              goto LABEL_91;
            }

            v41 = v37;
            v42 = v31;
            v43 = v38;
            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v40 = 0xE600000000000000;
            v44 = v41;
            v7 = v69;
            v38 = v43;
            v31 = v42;
            ++v39;
            v37 = v44 - 1;
            if (v71)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
LABEL_91:
          sub_10000A0C8(&qword_1000A2CF8, &qword_1000763F0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_100076380;
          v72 = 0;
          v73 = 0xE000000000000000;
          if (v68 < 2)
          {
            LOBYTE(v74) = v31;
            _print_unlocked<A, B>(_:_:)();
            v64._countAndFlagsBits = 32;
            v64._object = 0xE100000000000000;
            String.append(_:)(v64);
            v65._countAndFlagsBits = v8;
            v65._object = v7;
            String.append(_:)(v65);
          }

          else
          {
            _StringGuts.grow(_:)(18);
            _print_unlocked<A, B>(_:_:)();
            v60._countAndFlagsBits = 32;
            v60._object = 0xE100000000000000;
            String.append(_:)(v60);
            v61._countAndFlagsBits = v8;
            v61._object = v7;
            String.append(_:)(v61);
            v62._countAndFlagsBits = 0x6E694C6472614820;
            v62._object = 0xEB000000003D736BLL;
            String.append(_:)(v62);
            v74 = v68;
            v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v63);
          }

          v66 = v72;
          v67 = v73;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 32) = v66;
          *(v59 + 40) = v67;
          print(_:separator:terminator:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002FCA8(uint64_t a1, unint64_t a2)
{
  memset(&v12, 0, sizeof(v12));
  v4 = String.utf8CString.getter();
  v5 = stat((v4 + 32), &v12);

  if (!v5)
  {
    return v12.st_nlink;
  }

  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DB8(v6, qword_1000B19B0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100005C68(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "stat failed for %s", v9, 0xCu);
    sub_100005E9C(v10);
  }

  return 0;
}

void sub_10002FE64(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DB8(v8, qword_1000B19B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005C68(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "scanning %s", v11, 0xCu);
    sub_100005E9C(v12);
    v4 = v3;
  }

  v13 = sub_10002B71C(a1, a2);
  v22[0] = v13;
  v22[1] = 0;
  v14 = fts_open(v22, 84, 0);
  if (!v14)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67240192;
      *(v21 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v19, v20, "failed to scan: %{public}d", v21, 8u);
    }

LABEL_20:
    free(v13);
    return;
  }

  v15 = v14;
  while (1)
  {
    v16 = fts_read(v15);
    if (!v16)
    {
      goto LABEL_19;
    }

    fts_info = v16->fts_info;
    if (fts_info == 8)
    {
      break;
    }

    if (fts_info == 1)
    {
      if (!v16->fts_path)
      {
        goto LABEL_22;
      }

LABEL_13:
      v18 = String.init(cString:)();
      a3(v18);
      if (v4)
      {

LABEL_19:
        fts_close(v15);
        goto LABEL_20;
      }
    }
  }

  if (v16->fts_path)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t ProtectionClassScanner.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  return v0;
}

uint64_t ProtectionClassScanner.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 41, 7);
}

char *sub_1000301A0@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000301D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6365746F72506F6ELL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x427373616C63;
    if (a1 != 2)
    {
      v12 = 0x437373616C63;
    }

    v13 = 0x7269447373616C63;
    v14 = 0xEC000000656E6F4ELL;
    if (a1)
    {
      v13 = 0x417373616C63;
      v14 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x467373616C63;
    v7 = 0xE700000000000000;
    v8 = 0x58437373616C63;
    if (a1 != 7)
    {
      v8 = 0x6365746F72506F6ELL;
      v7 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x447373616C63;
    if (a1 != 4)
    {
      v9 = 0x457373616C63;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v4 <= 5)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x417373616C63)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC000000656E6F4ELL;
        if (v10 != 0x7269447373616C63)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v2 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v10 != 0x427373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x437373616C63;
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x447373616C63)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x457373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x467373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x58437373616C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  if (v10 != v3)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

void *sub_10003045C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000287C8(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000287C8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000287C8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000287C8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000287C8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003081C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10003083C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10003086C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10003173C();
  v4 = Hasher._finalize()();

  return sub_1000308D8(a1, v4);
}

unint64_t sub_1000308D8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = 0xE600000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v25 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x427373616C63;
        }

        else
        {
          v10 = 0x437373616C63;
        }

        if (*(*(v25 + 48) + v4))
        {
          v11 = 0x417373616C63;
        }

        else
        {
          v11 = 0x7269447373616C63;
        }

        if (*(*(v25 + 48) + v4))
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xEC000000656E6F4ELL;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v9 = v11;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = 0xE600000000000000;
        }
      }

      else if (*(*(v25 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v9 = 0x447373616C63;
        }

        else
        {
          v9 = 0x457373616C63;
        }

        v8 = 0xE600000000000000;
      }

      else if (v7 == 6)
      {
        v8 = 0xE600000000000000;
        v9 = 0x467373616C63;
      }

      else if (v7 == 7)
      {
        v8 = 0xE700000000000000;
        v9 = 0x58437373616C63;
      }

      else
      {
        v9 = 0x6365746F72506F6ELL;
        v8 = 0xEC0000006E6F6974;
      }

      v13 = 0x6365746F72506F6ELL;
      if (v6 == 7)
      {
        v13 = 0x58437373616C63;
      }

      v14 = 0xEC0000006E6F6974;
      if (v6 == 7)
      {
        v14 = 0xE700000000000000;
      }

      if (v6 == 6)
      {
        v13 = 0x467373616C63;
        v14 = 0xE600000000000000;
      }

      v15 = 0x457373616C63;
      if (v6 == 4)
      {
        v15 = 0x447373616C63;
      }

      if (v6 <= 5)
      {
        v13 = v15;
        v14 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v16 = 0x427373616C63;
      }

      else
      {
        v16 = 0x437373616C63;
      }

      v17 = 0xE600000000000000;
      if (v6)
      {
        v18 = 0x417373616C63;
      }

      else
      {
        v18 = 0x7269447373616C63;
      }

      if (!v6)
      {
        v5 = 0xEC000000656E6F4ELL;
      }

      if (v6 <= 1)
      {
        v16 = v18;
        v17 = v5;
      }

      v19 = v6 <= 3 ? v16 : v13;
      v20 = v6 <= 3 ? v17 : v14;
      if (v9 == v19 && v8 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        v5 = 0xE600000000000000;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100030B94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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
            goto LABEL_11;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
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
        goto LABEL_36;
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
        goto LABEL_19;
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

uint64_t sub_100030F18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

unint64_t sub_1000311C0(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003086C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100031460();
    result = v17;
    goto LABEL_8;
  }

  sub_100030B94(v14, a3 & 1);
  v18 = *v4;
  result = sub_10003086C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000312E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000613C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100030F18(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000613C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000315AC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_100031460()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000315AC()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10003171C(char *a1, int64_t a2, char a3)
{
  result = sub_100068444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10003173C()
{
  String.hash(into:)();
}

void sub_10003187C(uint64_t a1, unint64_t a2, char a3, _BYTE *a4)
{
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DB8(v8, qword_1000B19B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a4;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005C68(a1, a2, &v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "scanning %s", v11, 0xCu);
    sub_100005E9C(v13);
    a4 = v12;
  }

  v14 = sub_10002B71C(a1, a2);
  v24[0] = v14;
  v24[1] = 0;
  v15 = fts_open(v24, 84, 0);
  if (!v15)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      *(v23 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v21, v22, "failed to scan: %{public}d", v23, 8u);
    }

LABEL_20:
    free(v14);
    return;
  }

  v16 = v15;
  do
  {
    while (1)
    {
      v17 = fts_read(v16);
      if (!v17)
      {
        fts_close(v16);
        goto LABEL_20;
      }

      fts_info = v17->fts_info;
      if (fts_info != 1)
      {
        break;
      }

      if (!v17->fts_path)
      {
        goto LABEL_22;
      }

      String.init(cString:)();
LABEL_7:
    }
  }

  while (fts_info != 8);
  if (v17->fts_path)
  {
    v19 = String.init(cString:)();
    if ((sub_10006B728(v19, v20, a3) & 1) == 0)
    {
      *a4 = 0;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100031B30(uint64_t *a1)
{
  v3 = sub_10000A0C8(&qword_1000A32D8, &qword_100076C18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002BFE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[13] = 1;
    sub_100033924();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100005E9C(a1);
  return v8;
}

unint64_t sub_100031D20()
{
  result = qword_1000A2C80;
  if (!qword_1000A2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C80);
  }

  return result;
}

unint64_t sub_100031D74()
{
  result = qword_1000A2C90;
  if (!qword_1000A2C90)
  {
    sub_10000A738(&qword_1000A2C88, &qword_1000763B0);
    sub_100031DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C90);
  }

  return result;
}

unint64_t sub_100031DF8()
{
  result = qword_1000A2C98;
  if (!qword_1000A2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2C98);
  }

  return result;
}

uint64_t sub_100031E4C(uint64_t *a1)
{
  v3 = sub_10000A0C8(&qword_1000A32C0, &qword_100076C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100031D20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000A0C8(&qword_1000A2C88, &qword_1000763B0);
    v10[15] = 1;
    sub_10003384C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100005E9C(a1);
  return v8;
}

unint64_t sub_100032050()
{
  result = qword_1000A2CA8;
  if (!qword_1000A2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CA8);
  }

  return result;
}

unint64_t sub_1000320A4()
{
  result = qword_1000A2CB8;
  if (!qword_1000A2CB8)
  {
    sub_10000A738(&qword_1000A2CB0, &qword_1000763C0);
    sub_100032128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CB8);
  }

  return result;
}

unint64_t sub_100032128()
{
  result = qword_1000A2CC0;
  if (!qword_1000A2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CC0);
  }

  return result;
}

unint64_t sub_10003217C()
{
  result = qword_1000A2CD0;
  if (!qword_1000A2CD0)
  {
    sub_10000A738(&qword_1000A2CC8, &qword_1000763C8);
    sub_10002AC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CD0);
  }

  return result;
}

uint64_t sub_100032200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000836E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100083700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100083720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100083740 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000323B4(uint64_t *a1)
{
  v2 = sub_10000A0C8(&qword_1000A32A0, &qword_100076C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100032050();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10000A0C8(&qword_1000A2CB0, &qword_1000763C0);
  v11 = 0;
  sub_1000336F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12;
  LOBYTE(v12) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v12) = 2;
  v10[2] = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000A0C8(&qword_1000A2CC8, &qword_1000763C8);
  v11 = 3;
  sub_1000337C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v12) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100005E9C(a1);
  return v9;
}

unint64_t sub_10003268C()
{
  result = qword_1000A2CE0;
  if (!qword_1000A2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2CE0);
  }

  return result;
}

unint64_t sub_100032728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3278, &qword_100076BE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10003086C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100032814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3270, &qword_100076BD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000613C(v5, v6);
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

uint64_t sub_100032918(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = a3 >> 1;
  v8 = a4 + 32;
  for (i = (result + 16 * a2 + 8); ; i += 2)
  {
    if (v5 == v6)
    {
      if (v7 == v4)
      {
        return 1;
      }

      v11 = 0;
      v12 = 0;
      v5 = v6;
    }

    else
    {
      if (v5 >= v6)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_26;
      }

      v13 = (v8 + 16 * v5);
      v12 = *v13;
      v11 = v13[1];

      if (v7 == v4)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        return 1;
      }

      ++v5;
    }

    if (v4 >= v7)
    {
      break;
    }

    v15 = *(i - 1);
    v14 = *i;

    if (!v11)
    {
      if (v14)
      {
LABEL_21:

        return 0;
      }

      return 1;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    if (v12 == v15 && v11 == v14)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    ++v4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100032A6C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_1000A21A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002DB8(v13, qword_1000B19B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a4;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    v18 = a1;
    *(v16 + 4) = sub_100005C68(a1, a2, &v35);
    _os_log_impl(&_mh_execute_header, v14, v15, "scanning %s", v16, 0xCu);
    sub_100005E9C(v17);
    a4 = v32;

    v7 = v6;
  }

  else
  {

    v18 = a1;
  }

  v19 = sub_10002B71C(v18, a2);
  v20 = v7;
  v34[0] = v19;
  v34[1] = 0;
  v21 = fts_open(v34, 84, 0);
  if (!v21)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v29, v30, "failed to scan: %{public}d", v31, 8u);
    }

LABEL_22:
    free(v19);
  }

  v22 = v21;
  while (1)
  {
    v23 = fts_read(v22);
    if (!v23)
    {
      goto LABEL_21;
    }

    fts_info = v23->fts_info;
    if (fts_info == 1)
    {
      break;
    }

    if (fts_info == 8)
    {
      result = v23->fts_path;
      if (!result)
      {
        goto LABEL_24;
      }

      v26 = String.init(cString:)();
      v28 = 0;
LABEL_15:
      sub_10002F420(v26, v27, v28, a3, a4, a5, a6);
      if (v20)
      {

LABEL_21:
        fts_close(v22);
        goto LABEL_22;
      }
    }
  }

  result = v23->fts_path;
  if (result)
  {
    v26 = String.init(cString:)();
    v28 = 1;
    goto LABEL_15;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100032D90()
{
  result = qword_1000A2D00;
  if (!qword_1000A2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2D00);
  }

  return result;
}

__n128 sub_100032DF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100032E08(uint64_t a1, int a2)
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

uint64_t sub_100032E50(uint64_t result, int a2, int a3)
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

uint64_t sub_100032EA0(uint64_t a1, int a2)
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

uint64_t sub_100032EE8(uint64_t result, int a2, int a3)
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

__n128 sub_100032F38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100032F4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100032F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003306C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000330C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanningConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanningConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000332C0()
{
  result = qword_1000A3228;
  if (!qword_1000A3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3228);
  }

  return result;
}

unint64_t sub_100033318()
{
  result = qword_1000A3230;
  if (!qword_1000A3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3230);
  }

  return result;
}

unint64_t sub_100033370()
{
  result = qword_1000A3238;
  if (!qword_1000A3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3238);
  }

  return result;
}

unint64_t sub_1000333C8()
{
  result = qword_1000A3240;
  if (!qword_1000A3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3240);
  }

  return result;
}

unint64_t sub_100033420()
{
  result = qword_1000A3248;
  if (!qword_1000A3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3248);
  }

  return result;
}

unint64_t sub_100033478()
{
  result = qword_1000A3250;
  if (!qword_1000A3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3250);
  }

  return result;
}

unint64_t sub_1000334D0()
{
  result = qword_1000A3258;
  if (!qword_1000A3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3258);
  }

  return result;
}

unint64_t sub_100033528()
{
  result = qword_1000A3260;
  if (!qword_1000A3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3260);
  }

  return result;
}

unint64_t sub_100033580()
{
  result = qword_1000A3268;
  if (!qword_1000A3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3268);
  }

  return result;
}

unint64_t sub_1000335F0()
{
  result = qword_1000A3288;
  if (!qword_1000A3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3288);
  }

  return result;
}

unint64_t sub_100033644()
{
  result = qword_1000A3298;
  if (!qword_1000A3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3298);
  }

  return result;
}

uint64_t sub_100033698(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000336F0()
{
  result = qword_1000A32A8;
  if (!qword_1000A32A8)
  {
    sub_10000A738(&qword_1000A2CB0, &qword_1000763C0);
    sub_100033774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32A8);
  }

  return result;
}

unint64_t sub_100033774()
{
  result = qword_1000A32B0;
  if (!qword_1000A32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32B0);
  }

  return result;
}

unint64_t sub_1000337C8()
{
  result = qword_1000A32B8;
  if (!qword_1000A32B8)
  {
    sub_10000A738(&qword_1000A2CC8, &qword_1000763C8);
    sub_10002ABA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32B8);
  }

  return result;
}

unint64_t sub_10003384C()
{
  result = qword_1000A32C8;
  if (!qword_1000A32C8)
  {
    sub_10000A738(&qword_1000A2C88, &qword_1000763B0);
    sub_1000338D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32C8);
  }

  return result;
}

unint64_t sub_1000338D0()
{
  result = qword_1000A32D0;
  if (!qword_1000A32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32D0);
  }

  return result;
}

unint64_t sub_100033924()
{
  result = qword_1000A32E0;
  if (!qword_1000A32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32E0);
  }

  return result;
}

unint64_t sub_100033978()
{
  result = qword_1000A32E8;
  if (!qword_1000A32E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A32E8);
  }

  return result;
}

uint64_t sub_100033A04()
{
  v1[110] = v0;
  v2 = type metadata accessor for URLResourceValues();
  v1[111] = v2;
  v3 = *(v2 - 8);
  v1[112] = v3;
  v4 = *(v3 + 64) + 15;
  v1[113] = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  v1[114] = v5;
  v6 = *(v5 - 8);
  v1[115] = v6;
  v7 = *(v6 + 64) + 15;
  v1[116] = swift_task_alloc();
  v8 = *(*(sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0) - 8) + 64) + 15;
  v1[117] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[118] = v9;
  v10 = *(v9 - 8);
  v1[119] = v10;
  v11 = *(v10 + 64) + 15;
  v1[120] = swift_task_alloc();
  v12 = sub_10000A0C8(&qword_1000A3568, &unk_100076E70);
  v1[121] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v1[122] = swift_task_alloc();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[123] = v14;
  v15 = *(v14 - 8);
  v1[124] = v15;
  v16 = *(v15 + 64) + 15;
  v1[125] = swift_task_alloc();
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[126] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v1[127] = swift_task_alloc();
  v19 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[128] = swift_task_alloc();
  v20 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v1[129] = v20;
  v21 = *(v20 - 8);
  v1[130] = v21;
  v1[131] = *(v21 + 64);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v22 = *(*(sub_10000A0C8(&qword_1000A2230, &qword_100073A58) - 8) + 64) + 15;
  v1[134] = swift_task_alloc();

  return _swift_task_switch(sub_100033D5C, 0, 0);
}

uint64_t sub_100033D5C()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[131];
  v4 = v0[130];
  v21 = v0[128];
  v22 = v0[127];
  v5 = v0[126];
  v23 = v0[125];
  v6 = v0[124];
  v24 = v0[123];
  v7 = v0[110];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  v0[135] = sub_10000DD40(0, 0, v1, &unk_100076E88, v9);
  v10 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream;
  v0[136] = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream;
  sub_10003F3B4(v7 + v10, v2, qword_1000A3480, &qword_100076D10);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100002D50(v2, v12 + v11, qword_1000A3480, &qword_100076D10);
  sub_10000A5D8();
  static DispatchQoS.unspecified.getter();
  v0[107] = &_swiftEmptyArrayStorage;
  sub_10003F52C(&unk_1000A4E70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A0C8(&qword_1000A3570, &unk_100076E90);
  sub_10003F574();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10000803C;
  *(v14 + 24) = v12;
  v0[100] = sub_100007B40;
  v0[101] = v14;
  v0[96] = _NSConcreteStackBlock;
  v0[97] = 1107296256;
  v0[98] = sub_100007A6C;
  v0[99] = &unk_100097E20;
  v15 = _Block_copy(v0 + 96);
  v16 = v0[101];

  v17 = AKSEventsRegister();

  _Block_release(v15);
  v18 = 0;
  if (v17)
  {
    type metadata accessor for LockState.NotificationContext();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
  }

  v0[137] = v18;
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  v19 = swift_task_alloc();
  v0[138] = v19;
  *v19 = v0;
  v19[1] = sub_100034158;

  return RapidRepair.run()();
}

uint64_t sub_100034158()
{
  v2 = *(*v1 + 1104);
  v5 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = sub_100034CD0;
  }

  else
  {
    v3 = sub_10003426C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003426C()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Succesfully applied repair rules", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 1120) = v5;
  *v5 = v0;
  v5[1] = sub_1000343B8;
  v6 = *(v0 + 880);

  return sub_1000374F8();
}

uint64_t sub_1000343B8()
{
  v2 = *(*v1 + 1120);
  v5 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = sub_100035050;
  }

  else
  {
    v3 = sub_1000344CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000344CC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = (*(v0 + 880) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue);
  v7 = *v6;
  v8 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v6 + *(v8 + 28), v2, qword_1000A3480, &qword_100076D10);
  v9 = *(v3 + 48);
  v10 = *(v5 + 28);

  v11 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  *(v0 + 1136) = v11;
  AsyncStream.makeAsyncIterator()();
  v12 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  *(v0 + 1144) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  *(v0 + 1152) = v14;
  *(v0 + 1160) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2 + v9, v12);
  v15 = *(v11 - 8);
  v16 = *(v15 + 8);
  *(v0 + 1168) = v16;
  *(v0 + 1176) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v2, v11);
  *v4 = v7;
  *(v0 + 1248) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 1184) = NSURLIsSymbolicLinkKey;
  *(v0 + 1192) = v1;
  v17 = swift_task_alloc();
  *(v0 + 1200) = v17;
  *v17 = v0;
  v17[1] = sub_100002DF0;
  v18 = *(v0 + 976);

  return sub_10003DAB8(v0 + 304);
}

uint64_t sub_1000346E0()
{
  v2 = *(*v1 + 1216);
  v5 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v3 = sub_1000348F0;
  }

  else
  {
    v3 = sub_1000347F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000347F4()
{
  v1 = v0[153];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v3 + 8))(v2, v4);
  v0[149] = v1;
  v5 = swift_task_alloc();
  v0[150] = v5;
  *v5 = v0;
  v5[1] = sub_100002DF0;
  v6 = v0[122];

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_1000348F0()
{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v4 + 8))(v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed to upgrade path: %@", v8, 0xCu);
    sub_100002CF0(v9, &qword_1000A4EC0, &qword_100076C00);
  }

  else
  {
  }

  v0[149] = 0;
  v11 = swift_task_alloc();
  v0[150] = v11;
  *v11 = v0;
  v11[1] = sub_100002DF0;
  v12 = v0[122];

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_100034AE0()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_100002CF0((v0 + 26), &qword_1000A3548, &qword_100076E40);
  (*(v4 + 8))(v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed to upgrade path: %@", v8, 0xCu);
    sub_100002CF0(v9, &qword_1000A4EC0, &qword_100076C00);
  }

  else
  {
  }

  v0[149] = 0;
  v11 = swift_task_alloc();
  v0[150] = v11;
  *v11 = v0;
  v11[1] = sub_100002DF0;
  v12 = v0[122];

  return sub_10003DAB8((v0 + 38));
}

uint64_t sub_100034CD0()
{
  v1 = (v0 + 864);
  *(v0 + 864) = *(v0 + 1112);
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1112);

    if (*(v0 + 1252) == 1)
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002DB8(v3, qword_1000B19C8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_16;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Failed to repair some files";
    }

    else
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100002DB8(v18, qword_1000B19C8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_16;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Cannot repair files, device is still before-first-unlock";
    }

    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_16:

    v19 = *v1;
    goto LABEL_18;
  }

  v8 = *v1;

  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1112);
  v10 = type metadata accessor for Logger();
  sub_100002DB8(v10, qword_1000B19C8);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1112);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Repair failed for unknown reason: %@", v15, 0xCu);
    sub_100002CF0(v16, &qword_1000A4EC0, &qword_100076C00);

    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  v20 = swift_task_alloc();
  *(v0 + 1120) = v20;
  *v20 = v0;
  v20[1] = sub_1000343B8;
  v21 = *(v0 + 880);

  return sub_1000374F8();
}

uint64_t sub_100035050()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1128);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to schedule backlog of tasks", v6, 2u);
  }

  v7 = *(v0 + 1056);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 976);
  v10 = *(v0 + 968);
  v11 = (*(v0 + 880) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue);
  v12 = *v11;
  v13 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v11 + *(v13 + 28), v7, qword_1000A3480, &qword_100076D10);
  v14 = *(v8 + 48);
  v15 = *(v10 + 28);

  v16 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  *(v0 + 1136) = v16;
  AsyncStream.makeAsyncIterator()();
  v17 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  *(v0 + 1144) = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  *(v0 + 1152) = v19;
  *(v0 + 1160) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v7 + v14, v17);
  v20 = *(v16 - 8);
  v21 = *(v20 + 8);
  *(v0 + 1168) = v21;
  *(v0 + 1176) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v7, v16);
  *v9 = v12;
  *(v0 + 1248) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 1184) = NSURLIsSymbolicLinkKey;
  *(v0 + 1192) = 0;
  v22 = swift_task_alloc();
  *(v0 + 1200) = v22;
  *v22 = v0;
  v22[1] = sub_100002DF0;
  v23 = *(v0 + 976);

  return sub_10003DAB8(v0 + 304);
}

uint64_t sub_10003531C(uint64_t a1)
{
  v2[99] = v1;
  v2[98] = a1;
  v3 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v2[100] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[101] = swift_task_alloc();
  v5 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v2[102] = v5;
  v6 = *(v5 - 8);
  v2[103] = v6;
  v7 = *(v6 + 64) + 15;
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_100035428, 0, 0);
}

uint64_t sub_100035428()
{
  v33 = v0;
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = type metadata accessor for Logger();
  sub_100002DB8(v2, qword_1000B19C8);
  sub_10000626C(v1, v0 + 496);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100005BFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 784);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    v8 = sub_100003644();
    v10 = v9;
    if (v11)
    {
      v12 = sub_100005A2C(0, v8);
      v14 = v13;
      sub_100005C50();
      v8 = v12;
      v10 = v14;
    }

    v15 = sub_100005C68(v8, v10, &v32);

    *(v6 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "scheduling remediation for event: %s", v6, 0xCu);
    sub_100005E9C(v7);
  }

  v16 = *(v0 + 784);
  if (*(v16 + 54))
  {
    goto LABEL_11;
  }

  if (*(v16 + 50) == 4)
  {

    v16 = *(v0 + 784);
LABEL_11:
    v18 = *(v0 + 792);
    v19 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
    *(v0 + 840) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
    v20 = *(v16 + 80);
    v22 = *(v16 + 48);
    v21 = *(v16 + 64);
    *(v0 + 240) = *(v16 + 32);
    *(v0 + 256) = v22;
    *(v0 + 272) = v21;
    *(v0 + 288) = v20;
    v23 = *(v16 + 16);
    *(v0 + 208) = *v16;
    *(v0 + 224) = v23;
    *(v0 + 296) = 0;
    sub_10000626C(v16, v0 + 672);
    v24 = *(v18 + v19);
    *(v0 + 848) = v24;

    return _swift_task_switch(sub_100035830, v24, 0);
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v16 = *(v0 + 784);
  if (v17)
  {
    goto LABEL_11;
  }

  v25 = *(v16 + 16);
  *(v0 + 112) = *v16;
  *(v0 + 128) = v25;
  v26 = *(v16 + 32);
  v27 = *(v16 + 64);
  v28 = *(v16 + 80);
  *(v0 + 160) = *(v16 + 48);
  *(v0 + 176) = v27;
  *(v0 + 144) = v26;
  *(v0 + 192) = v28;
  *(v0 + 200) = 0;
  sub_10000626C(v16, v0 + 584);
  v29 = swift_task_alloc();
  *(v0 + 864) = v29;
  *v29 = v0;
  v29[1] = sub_100035E04;
  v30 = *(v0 + 792);

  return sub_1000363FC(v0 + 112);
}

uint64_t sub_100035830()
{
  v1 = *(v0 + 848);
  swift_beginAccess();
  v2 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v2;
  v3 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v3;
  v4 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v4;
  sub_10003F37C(v0 + 208, v0 + 304);
  sub_10003F2A8(0, 0, (v0 + 16));
  swift_endAccess();
  sub_10003F01C(v0 + 208);
  v5 = *(*(v1 + 112) + 16);
  *(v0 + 856) = v5;
  if (v5 < 0x41)
  {
    v7 = sub_100035BBC;
  }

  else
  {
    v6 = *(v0 + 848);
    sub_10003EA4C((v0 + 400));
    sub_100002CF0(v0 + 400, &qword_1000A3548, &qword_100076E40);
    v7 = sub_100035938;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035938()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 792);
  v3 = v2 + v1 + *(sub_10000A0C8(&qword_1000A3538, &qword_100076E20) + 32);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
    v1 = *(v0 + 840);
    v2 = *(v0 + 792);
  }

  v5 = *(v0 + 856);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v9 = *(v0 + 808);
  v10 = v2 + v1;
  v11 = *(v0 + 800);
  v12 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v10 + *(v12 + 28), v9, qword_1000A3480, &qword_100076D10);
  v13 = *(v11 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v7 + 8))(v6, v8);
  v14 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v15 - 8) + 8))(v9, v15);
  sub_10003F01C(v0 + 208);
  if (v5 < 0x41)
  {
    v24 = *(v0 + 832);
    v25 = *(v0 + 808);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v16 = *(v0 + 784);
    v17 = *(v16 + 16);
    *(v0 + 112) = *v16;
    *(v0 + 128) = v17;
    v18 = *(v16 + 32);
    v19 = *(v16 + 64);
    v20 = *(v16 + 80);
    *(v0 + 160) = *(v16 + 48);
    *(v0 + 176) = v19;
    *(v0 + 144) = v18;
    *(v0 + 192) = v20;
    *(v0 + 200) = 0;
    sub_10000626C(v16, v0 + 584);
    v21 = swift_task_alloc();
    *(v0 + 864) = v21;
    *v21 = v0;
    v21[1] = sub_100035E04;
    v22 = *(v0 + 792);

    return sub_1000363FC(v0 + 112);
  }
}

uint64_t sub_100035BBC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v0 + 792) + *(v0 + 840);
  v8 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v7 + *(v8 + 28), v5, qword_1000A3480, &qword_100076D10);
  v9 = *(v6 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v11 - 8) + 8))(v5, v11);
  sub_10003F01C(v0 + 208);
  if (v1 < 0x41)
  {
    v20 = *(v0 + 832);
    v21 = *(v0 + 808);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v12 = *(v0 + 784);
    v13 = *(v12 + 16);
    *(v0 + 112) = *v12;
    *(v0 + 128) = v13;
    v14 = *(v12 + 32);
    v15 = *(v12 + 64);
    v16 = *(v12 + 80);
    *(v0 + 160) = *(v12 + 48);
    *(v0 + 176) = v15;
    *(v0 + 144) = v14;
    *(v0 + 192) = v16;
    *(v0 + 200) = 0;
    sub_10000626C(v12, v0 + 584);
    v17 = swift_task_alloc();
    *(v0 + 864) = v17;
    *v17 = v0;
    v17[1] = sub_100035E04;
    v18 = *(v0 + 792);

    return sub_1000363FC(v0 + 112);
  }
}

uint64_t sub_100035E04()
{
  v2 = *(*v1 + 864);
  v3 = *v1;
  v3[109] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100035F58, 0, 0);
  }

  else
  {
    sub_10003F01C((v3 + 14));
    v4 = v3[104];
    v5 = v3[101];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100035F58()
{
  v1 = v0[104];
  v2 = v0[101];
  sub_10003F01C((v0 + 14));

  v3 = v0[1];
  v4 = v0[109];

  return v3();
}

uint64_t sub_100035FD4()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B19C8);
  sub_100002DB8(v0, qword_1000B19C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100036050(uint64_t a1)
{
  v25 = a1;
  v2 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  v3 = *(v2 - 8);
  v27 = v2 - 8;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v26 = (&v24 - v5);
  v6 = sub_10000A0C8(&qword_1000A3588, &qword_100076F40);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v24 - v9);
  v24 = v1;
  *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_maxRetryCount) = 5;
  *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_rescheduleBatchSize) = 256;
  v11 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v12 = *(v11 + 48);
  *v10 = 1;
  v13 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  v14 = v7[13];
  v14(v10, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v6);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v15 = v7[1];
  v15(v10, v6);
  v16 = v26 + *(v27 + 36);
  v17 = *(v11 + 48);
  *v10 = 1;
  v14(v10, v13, v6);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v15(v10, v6);
  sub_10000A0C8(qword_1000A3590, &qword_100076F48);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = &_swiftEmptyArrayStorage;
  *(v18 + 120) = 64;
  v19 = v26;
  v20 = v27;
  *v26 = v18;
  v21 = (v19 + *(v20 + 40));
  *v21 = sub_100036314;
  v21[1] = 0;
  v22 = v24;
  sub_100002D50(v19, v24 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue, &qword_1000A3538, &qword_100076E20);
  *(v22 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext) = v25;
  return v22;
}

void sub_100036314()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DB8(v0, qword_1000B19C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Remediation queue dropped entries", v2, 2u);
  }
}

uint64_t sub_1000363FC(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  v3 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v2[63] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v5 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v2[65] = v5;
  v6 = *(v5 - 8);
  v2[66] = v6;
  v7 = *(v6 + 64) + 15;
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_100036504, 0, 0);
}

uint64_t sub_100036504()
{
  v30 = v0;
  v1 = *(v0 + 488);
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 32);
  *(v0 + 448) = *(v1 + 48);
  v5 = *(v1 + 16);
  *(v0 + 400) = *v1;
  *(v0 + 416) = v5;
  *(v0 + 432) = v4;
  *(v0 + 480) = v3;
  *(v0 + 464) = v2;
  if ((*(v0 + 452) & 1) == 0)
  {
LABEL_10:
    v20 = *(v0 + 536);
    v21 = *(v0 + 512);

    v22 = *(v0 + 8);

    return v22();
  }

  v6 = *(v1 + 88);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 + 1 > 5)
  {
    if (qword_1000A21A8 == -1)
    {
LABEL_5:
      v7 = type metadata accessor for Logger();
      sub_100002DB8(v7, qword_1000B19C8);
      sub_10003F37C(v1, v0 + 304);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      sub_10003F01C(v1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v29 = v11;
        *v10 = 136315138;
        v12 = sub_100003644();
        v14 = v13;
        if (v15)
        {
          v16 = sub_100005A2C(0, v12);
          v18 = v17;
          sub_100005C50();
          v12 = v16;
          v14 = v18;
        }

        v19 = sub_100005C68(v12, v14, &v29);

        *(v10 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "retry count exceeded for event %s", v10, 0xCu);
        sub_100005E9C(v11);
      }

      goto LABEL_10;
    }

LABEL_17:
    swift_once();
    v1 = *(v0 + 488);
    goto LABEL_5;
  }

  *(v0 + 544) = *(*(v0 + 496) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);
  v24 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_10003F37C(v1, v0 + 16);
  *(v0 + 552) = sub_10004E014(v0 + 400);
  *(v0 + 560) = type metadata accessor for AnalyticsStoreContext();
  sub_10003F52C(&qword_1000A2338, type metadata accessor for AnalyticsStoreContext);
  v28 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 568) = v28;
  *(v0 + 576) = v27;

  return _swift_task_switch(sub_10003683C, v28, v27);
}

uint64_t sub_10003683C()
{
  v1 = *(v0 + 544);
  *(v0 + 584) = sub_100045114(*(v0 + 552)) & 1;

  return _swift_task_switch(sub_1000368BC, 0, 0);
}

uint64_t sub_1000368BC()
{
  v30 = v0;
  if (*(v0 + 584) == 1)
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 488);
    v2 = type metadata accessor for Logger();
    sub_100002DB8(v2, qword_1000B19C8);
    sub_10003F37C(v1, v0 + 208);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_10003F01C(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315138;
      v7 = sub_100003644();
      v9 = v8;
      if (v10)
      {
        v11 = sub_100005A2C(0, v7);
        v13 = v12;
        sub_100005C50();
        v7 = v11;
        v9 = v13;
      }

      v14 = sub_100005C68(v7, v9, &v29);

      *(v5 + 4) = v14;
      v15 = "rescheduled %s for later";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v3, v4, v15, v5, 0xCu);
      sub_100005E9C(v6);
    }
  }

  else
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 488);
    v17 = type metadata accessor for Logger();
    sub_100002DB8(v17, qword_1000B19C8);
    sub_10003F37C(v16, v0 + 112);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_10003F01C(v16);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315138;
      v18 = sub_100003644();
      v20 = v19;
      if (v21)
      {
        v22 = sub_100005A2C(0, v18);
        v24 = v23;
        sub_100005C50();
        v18 = v22;
        v20 = v24;
      }

      v25 = sub_100005C68(v18, v20, &v29);

      *(v5 + 4) = v25;
      v15 = "discarded duplicate event %s";
      goto LABEL_14;
    }
  }

  v26 = *(v0 + 576);
  v27 = *(v0 + 568);

  return _swift_task_switch(sub_100036BDC, v27, v26);
}

uint64_t sub_100036BDC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  sub_10003F52C(&qword_1000A2B30, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  return _swift_task_switch(sub_100036D08, 0, 0);
}

uint64_t sub_100036D08()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  sub_10003F3B4(v0[62] + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v4, qword_1000A3480, &qword_100076D10);
  v6 = *(v5 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v1, v3);
  v7 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v8 - 8) + 8))(v4, v8);
  v9 = v0[67];
  v10 = v0[64];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100036E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100036F78, 0, 0);
}

uint64_t sub_100036F78()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_10003F3B4(v0[2] + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v2, qword_1000A3480, &qword_100076D10);
  v4 = *(v3 + 48);
  v5 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  AsyncStream.makeAsyncIterator()();
  v6 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v6 - 8) + 8))(v2 + v4, v6);
  (*(*(v5 - 8) + 8))(v2, v5);
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000370F4;
  v9 = v0[7];
  v10 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v10);
}

uint64_t sub_1000370F4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1000371F0, 0, 0);
}

uint64_t sub_1000371F0()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 32);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1000372EC;
    v5 = *(v0 + 16);

    return sub_1000374F8();
  }
}

uint64_t sub_1000372EC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100037470, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v3;
    v5[1] = sub_1000370F4;
    v6 = v3[7];
    v7 = v3[5];

    return AsyncStream.Iterator.next(isolation:)(v3 + 11, 0, 0, v7);
  }
}

uint64_t sub_100037470()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100037518()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "scheduling class D tasks", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10003766C;
  v6 = v0[7];

  return sub_100038214(4);
}

uint64_t sub_10003766C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000377A0, 0, 0);
  }
}

uint64_t sub_1000377A0()
{
  v1 = *(v0 + 80);
  sub_10006DCE4(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 8);
LABEL_10:

    return v2();
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = *(v0 + 8);
    goto LABEL_10;
  }

  v3 = *(v0 + 64);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "scheduling class C tasks", v6, 2u);
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10003790C;
  v8 = *(v0 + 56);

  return sub_100038214(3);
}

uint64_t sub_10003790C()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100037A1C()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100037AE8;

  return RapidRepair.run()();
}

uint64_t sub_100037AE8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100037D10;
  }

  else
  {
    v3 = sub_100037BFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100037BFC()
{
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B19C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Succesfully applied repair rules (lockNotification handler)", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100037D10()
{
  *(v0 + 16) = *(v0 + 32);
  v1 = (v0 + 16);
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 32);

    if (*(v0 + 40) == 1)
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002DB8(v3, qword_1000B19C8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_16;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Failed to repair some files (lockNotification handler)";
    }

    else
    {
      if (qword_1000A21A8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100002DB8(v18, qword_1000B19C8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_16;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Cannot repair files, device is unexpectedly still before-first-unlock (lockNotification handler)";
    }

    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_16:

    v19 = *v1;
    goto LABEL_18;
  }

  v8 = *v1;

  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 32);
  v10 = type metadata accessor for Logger();
  sub_100002DB8(v10, qword_1000B19C8);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 32);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Repair failed for unknown reason (lockNotification handler): %@", v15, 0xCu);
    sub_100002CF0(v16, &qword_1000A4EC0, &qword_100076C00);

    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100038058@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = *v2;
  sub_10003F3B4(v2 + *(a1 + 28), v9, qword_1000A3480, &qword_100076D10);
  v15 = *(v6 + 56);

  v16 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  AsyncStream.makeAsyncIterator()();
  v17 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v17 - 8) + 8))(&v9[v15], v17);
  (*(*(v16 - 8) + 8))(v9, v16);
  return sub_10003DA14(v14, v13, a2);
}

uint64_t sub_100038214(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 81) = a1;
  v3 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  *(v2 + 40) = v5;
  v6 = *(v5 - 8);
  *(v2 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100038320, 0, 0);
}

uint64_t sub_100038320()
{
  v1 = *(v0 + 16);
  *(v0 + 80) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100038400;
  v4 = *(v0 + 16);
  v5 = *(v0 + 81);

  return sub_100044414(v5, 256, v2, v4, v0 + 80);
}

uint64_t sub_100038400(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10003869C;
  }

  else
  {
    *(v4 + 82) = a1 & 1;
    v7 = sub_10003852C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003852C()
{
  if ((*(v0 + 80) & 1) != 0 || *(v0 + 82))
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_10003F3B4(*(v0 + 16) + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, v3, qword_1000A3480, &qword_100076D10);
    v6 = *(v5 + 48);
    AsyncStream.Continuation.yield<A>()();
    (*(v2 + 8))(v1, v4);
    v7 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
    v8 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003869C()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10003870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = sub_10000A0C8(qword_1000A3480, &qword_100076D10);
  v4[79] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v7 = sub_10000A0C8(&qword_1000A3540, &qword_100076E30);
  v4[81] = v7;
  v8 = *(v7 - 8);
  v4[82] = v8;
  v9 = *(v8 + 64) + 15;
  v4[83] = swift_task_alloc();

  return _swift_task_switch(sub_100038820, 0, 0);
}

uint64_t sub_100038820()
{
  v28 = v0;
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = type metadata accessor for Logger();
  *(v0 + 672) = sub_100002DB8(v2, qword_1000B19C8);
  sub_10000626C(v1, v0 + 400);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100005BFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 600);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315394;
    v8 = sub_100003644();
    v10 = v9;
    if (v11)
    {
      v12 = sub_100005A2C(0, v8);
      v14 = v13;
      sub_100005C50();
      v8 = v12;
      v10 = v14;
    }

    v15 = *(v0 + 608);
    v16 = sub_100005C68(v8, v10, &v27);

    *(v6 + 4) = v16;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "enqueuing deferred enforcement event: %s retryCount=%ld", v6, 0x16u);
    sub_100005E9C(v7);
  }

  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v20 = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
  *(v0 + 680) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue;
  v21 = *(v19 + 80);
  v23 = *(v19 + 48);
  v22 = *(v19 + 64);
  *(v0 + 144) = *(v19 + 32);
  *(v0 + 160) = v23;
  *(v0 + 176) = v22;
  *(v0 + 192) = v21;
  v24 = *(v19 + 16);
  *(v0 + 112) = *v19;
  *(v0 + 128) = v24;
  *(v0 + 200) = v18;
  sub_10000626C(v19, v0 + 488);
  v25 = *(v17 + v20);
  *(v0 + 688) = v25;

  return _swift_task_switch(sub_100038A68, v25, 0);
}

uint64_t sub_100038A68()
{
  v1 = *(v0 + 688);
  swift_beginAccess();
  v2 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v2;
  v3 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v3;
  v4 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v4;
  sub_10003F37C(v0 + 112, v0 + 208);
  sub_10003F2A8(0, 0, (v0 + 16));
  swift_endAccess();
  sub_10003F01C(v0 + 112);
  v5 = *(*(v1 + 112) + 16);
  *(v0 + 696) = v5;
  if (v5 >= 0x41)
  {
    v7 = *(v0 + 688);
    sub_10003EA4C((v0 + 304));
    sub_100002CF0(v0 + 304, &qword_1000A3548, &qword_100076E40);
    v6 = sub_100038B70;
  }

  else
  {
    v6 = sub_100038DD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100038B70()
{
  v1 = v0[85];
  v2 = v0[77];
  v3 = v2 + v1 + *(sub_10000A0C8(&qword_1000A3538, &qword_100076E20) + 32);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
    v1 = v0[85];
    v2 = v0[77];
  }

  v5 = v0[87];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v2 + v1;
  v11 = v0[79];
  v12 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v10 + *(v12 + 28), v9, qword_1000A3480, &qword_100076D10);
  v13 = *(v11 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v7 + 8))(v6, v8);
  v14 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v15 - 8) + 8))(v9, v15);
  sub_10003F01C((v0 + 14));
  if (v5 >= 0x41)
  {
    v16 = v0[84];
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "failed to enqueue deferred enforcement event", v19, 2u);
    }

    v20 = v0[78];

    *v20 = 1;
  }

  v21 = v0[83];
  v22 = v0[80];

  v23 = v0[1];
  v24 = v0[87] < 0x41uLL;

  return v23(v24);
}

uint64_t sub_100038DD4()
{
  v1 = v0[87];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[77] + v0[85];
  v8 = sub_10000A0C8(&qword_1000A3538, &qword_100076E20);
  sub_10003F3B4(v7 + *(v8 + 28), v5, qword_1000A3480, &qword_100076D10);
  v9 = *(v6 + 48);
  AsyncStream.Continuation.yield<A>()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_10000A0C8(&qword_1000A3518, &qword_100076D28);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = sub_10000A0C8(&qword_1000A3510, &qword_100076D20);
  (*(*(v11 - 8) + 8))(v5, v11);
  sub_10003F01C((v0 + 14));
  if (v1 >= 0x41)
  {
    v12 = v0[84];
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "failed to enqueue deferred enforcement event", v15, 2u);
    }

    v16 = v0[78];

    *v16 = 1;
  }

  v17 = v0[83];
  v18 = v0[80];

  v19 = v0[1];
  v20 = v0[87] < 0x41uLL;

  return v19(v20);
}

uint64_t sub_100038FFC()
{
  v0 = type metadata accessor for URLResourceValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A0C8(&qword_1000A3558, &qword_100076E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100076380;
  *(inited + 32) = NSURLIsSymbolicLinkKey;
  v6 = NSURLIsSymbolicLinkKey;
  sub_100005EE8(inited);
  swift_setDeallocating();
  sub_10003F41C(inited + 32);
  URL.resourceValues(forKeys:)();

  v7 = URLResourceValues.isSymbolicLink.getter();
  (*(v1 + 8))(v4, v0);
  return v7 & 1;
}

uint64_t sub_10003916C(uint64_t a1)
{
  *(v2 + 1256) = v1;
  *(v2 + 1248) = a1;

  return _swift_task_switch(sub_100039200, 0, 0);
}

uint64_t sub_100039200()
{
  v92 = v0;
  v1 = *(v0 + 1248);
  *(v0 + 1232) = 0;
  v2 = *(v1 + 16);
  *(v0 + 392) = *v1;
  *(v0 + 408) = v2;
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  *(v0 + 472) = *(v1 + 80);
  *(v0 + 440) = v4;
  *(v0 + 456) = v5;
  *(v0 + 424) = v3;
  *(v0 + 1177) = 2;
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  *(v0 + 1264) = v7;
  *(v0 + 1272) = v6;

  v8._object = 0x8000000100083850;
  v8._countAndFlagsBits = 0xD00000000000003CLL;
  if (String.hasPrefix(_:)(v8))
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 1248);
    v10 = type metadata accessor for Logger();
    sub_100002DB8(v10, qword_1000B19C8);
    sub_10003F37C(v9, v0 + 16);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_10003F01C(v9);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v91 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100005C68(v7, v6, &v91);
      _os_log_impl(&_mh_execute_header, v11, v12, "skipping %s due to rdar://150951905", v13, 0xCu);
      sub_100005E9C(v14);
    }

    goto LABEL_101;
  }

  v15 = sub_10002B71C(v7, v6);
  *(v0 + 1280) = v15;
  *(v0 + 1128) = v15;
  *(v0 + 1136) = 0;
  v16 = fts_open((v0 + 1128), 84, 0);
  *(v0 + 1288) = v16;
  if (!v16)
  {

    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100002DB8(v49, qword_1000B19C8);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67240192;
      *(v52 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v50, v51, "failed to scan: %{public}d", v52, 8u);
    }

    v53 = v15;
LABEL_100:
    free(v53);
LABEL_101:
    v59 = *(v0 + 8);
    goto LABEL_102;
  }

  v89 = (v0 + 1232);
  *(v0 + 1296) = OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext;
  v17 = fts_read(v16);
  if (!v17)
  {
LABEL_73:
    v34 = *v89;
    if (*v89 >= 1)
    {
      v35 = *(v0 + 1177);
      if (v35 != 2 && (v35 & 1) != 0)
      {
        v36 = *(v0 + 1272);

        if (qword_1000A21A8 != -1)
        {
          swift_once();
        }

        v37 = *(v0 + 1248);
        v38 = type metadata accessor for Logger();
        sub_100002DB8(v38, qword_1000B19C8);
        sub_10003F37C(v37, v0 + 112);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        sub_10003F01C(v37);
        if (os_log_type_enabled(v39, v40))
        {
          v41 = *(v0 + 1272);
          v42 = *(v0 + 1264);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v91 = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_100005C68(v42, v41, &v91);
          _os_log_impl(&_mh_execute_header, v39, v40, "rescheduling directory %s", v43, 0xCu);
          sub_100005E9C(v44);
        }

        v45 = swift_task_alloc();
        *(v0 + 1368) = v45;
        *v45 = v0;
        v45[1] = sub_10003C014;
        v46 = *(v0 + 1256);
        v47 = *(v0 + 1248);

        return sub_1000363FC(v47);
      }

      v54 = *(v0 + 1272);
      v55 = *(v0 + 1264);
      v56 = *(v0 + 442);
      sub_10000EEA4();
      swift_allocError();
      *v57 = v55;
      *(v57 + 8) = v54;
      *(v57 + 16) = v56;
      *(v57 + 24) = v34;
      *(v57 + 32) = 15;
      swift_willThrow();
      v58 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v58);
      v59 = *(v0 + 8);
LABEL_102:

      return v59();
    }

    v60 = *(v0 + 1272);
LABEL_98:

LABEL_99:
    v76 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    v53 = v76;
    goto LABEL_100;
  }

  v88 = (v0 + 1008);
  v90 = (v0 + 1392);
  while (1)
  {
    if (v17->fts_info != 8)
    {
      goto LABEL_12;
    }

    if (!v17->fts_path)
    {
      __break(1u);
    }

    v18 = String.init(cString:)();
    v20 = v19;
    *(v0 + 1304) = v18;
    *(v0 + 1312) = v19;
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    *(v0 + 1320) = sub_100002DB8(v21, qword_1000B19C8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v91 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100005C68(v18, v20, &v91);
      _os_log_impl(&_mh_execute_header, v22, v23, "remediating file in dir: %s", v24, 0xCu);
      sub_100005E9C(v25);
    }

    if ((v20 & 0x1000000000000000) == 0)
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        *(v0 + 1216) = v18;
        *(v0 + 1224) = v20 & 0xFFFFFFFFFFFFFFLL;
        *(v0 + 1388) = 0;
        if (get_protection_class((v0 + 1216), (v0 + 1388)))
        {
          goto LABEL_90;
        }

        v26 = *(v0 + 1388);
        goto LABEL_26;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {
        *v90 = 0;
        if (get_protection_class(((v20 & 0xFFFFFFFFFFFFFFFLL) + 32), v90))
        {
          goto LABEL_90;
        }

        v26 = *v90;
        goto LABEL_26;
      }
    }

    sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
    _StringGuts._slowWithCString<A>(_:)();
    if (*(v0 + 1184))
    {
LABEL_90:
      v61 = *(v0 + 1272);

      v62 = errno.getter();
      *(v0 + 1188) = v62;
      sub_100033644();
      swift_willThrowTypedImpl();
      if (v62 == 2)
      {

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v91 = v66;
          *v65 = 136315138;
          v67 = sub_100005C68(v18, v20, &v91);

          *(v65 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v63, v64, "file at %s deleted before it could be processed", v65, 0xCu);
          sub_100005E9C(v66);
LABEL_96:

          goto LABEL_99;
        }

        goto LABEL_97;
      }

LABEL_94:

      v63 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v91 = v72;
        *v70 = 136315394;
        v73 = sub_100005C68(v18, v20, &v91);

        *(v70 + 4) = v73;
        *(v70 + 12) = 2112;
        sub_100033644();
        swift_allocError();
        *v74 = v62;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 14) = v75;
        *v71 = v75;
        _os_log_impl(&_mh_execute_header, v63, v69, "failed to get current protection class for %s: %@", v70, 0x16u);
        sub_100002CF0(v71, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v72);
        goto LABEL_96;
      }

LABEL_97:

      goto LABEL_98;
    }

    v26 = *(v0 + 1180);
LABEL_26:
    if (ProtectionClass.init(value:)(v26).value == libdomainpolicy_ProtectionClass_unknownDefault)
    {
      v68 = *(v0 + 1272);

      v62 = 34;
      *(v0 + 1384) = 34;
      sub_100033644();
      swift_willThrowTypedImpl();
      goto LABEL_94;
    }

    v27 = *(v0 + 442);
    if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
    {
      break;
    }

    if (v27 <= 3)
    {
      if (v27 > 1)
      {
        v28 = 0xE600000000000000;
        if (v27 == 2)
        {
          v29 = 0x427373616C63;
        }

        else
        {
          v29 = 0x437373616C63;
        }
      }

      else
      {
        v29 = 0x7269447373616C63;
        v28 = 0xEC000000656E6F4ELL;
        if (v27)
        {
          v28 = 0xE600000000000000;
          v29 = 0x417373616C63;
        }
      }
    }

    else if (v27 <= 5)
    {
      v28 = 0xE600000000000000;
      if (v27 == 4)
      {
        v29 = 0x447373616C63;
      }

      else
      {
        v29 = 0x457373616C63;
      }
    }

    else if (v27 == 6)
    {
      v28 = 0xE600000000000000;
      v29 = 0x467373616C63;
    }

    else if (v27 == 7)
    {
      v28 = 0xE700000000000000;
      v29 = 0x58437373616C63;
    }

    else
    {
      v29 = 0x6365746F72506F6ELL;
      v28 = 0xEC0000006E6F6974;
    }

    v30 = *(v0 + 443);
    if (v30 <= 3)
    {
      if (*(v0 + 443) > 1u)
      {
        v31 = 0xE600000000000000;
        if (v30 == 2)
        {
          if (v29 != 0x427373616C63)
          {
            goto LABEL_67;
          }
        }

        else if (v29 != 0x437373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v32 = 0x7269447373616C63;
      v31 = 0xEC000000656E6F4ELL;
      if (*(v0 + 443))
      {
        v31 = 0xE600000000000000;
        if (v29 != 0x417373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (*(v0 + 443) > 5u)
    {
      if (v30 == 6)
      {
        v31 = 0xE600000000000000;
        if (v29 != 0x467373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (v30 == 7)
      {
        v31 = 0xE700000000000000;
        if (v29 != 0x58437373616C63)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v32 = 0x6365746F72506F6ELL;
      v31 = 0xEC0000006E6F6974;
LABEL_65:
      if (v29 != v32)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v31 = 0xE600000000000000;
    if (v30 == 4)
    {
      if (v29 != 0x447373616C63)
      {
        goto LABEL_67;
      }
    }

    else if (v29 != 0x457373616C63)
    {
LABEL_67:
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        sub_10003FA60(v18, v20, *(v0 + 392), *(v0 + 400), (v0 + 1144));
      }

      goto LABEL_11;
    }

LABEL_66:
    if (v28 != v31)
    {
      goto LABEL_67;
    }

LABEL_11:

LABEL_12:
    v17 = fts_read(*(v0 + 1288));
    if (!v17)
    {
      goto LABEL_73;
    }
  }

  v77 = *(v0 + 1296);
  v78 = *(v0 + 1272);
  v79 = *(v0 + 1256);
  v80 = *(v0 + 1248);
  v81 = *(v0 + 440);
  *(v0 + 512) = *(v0 + 424);
  *(v0 + 528) = v81;
  *(v0 + 544) = *(v0 + 456);
  *(v0 + 560) = *(v0 + 472);
  v82 = *(v0 + 408);
  *(v0 + 480) = *(v0 + 392);
  *(v0 + 496) = v82;
  swift_beginAccess();
  *(v0 + 496) = v18;
  *(v0 + 504) = v20;
  sub_10003F37C(v80, v0 + 208);

  sub_100024DD8(v83);
  swift_endAccess();
  v84 = *(v0 + 528);
  *(v0 + 1040) = *(v0 + 512);
  *(v0 + 1056) = v84;
  *(v0 + 1072) = *(v0 + 544);
  *(v0 + 1088) = *(v0 + 560);
  v85 = *(v0 + 496);
  *v88 = *(v0 + 480);
  *(v0 + 1024) = v85;
  v86 = *(v79 + v77);
  sub_10000626C(v88, v0 + 568);
  v87 = swift_task_alloc();
  *(v0 + 1328) = v87;
  *v87 = v0;
  v87[1] = sub_10003A0B8;

  return sub_100024EA4(v86);
}

uint64_t sub_10003A0B8()
{
  v1 = *v0;
  v2 = *(*v0 + 1328);
  v4 = *v0;

  sub_100005BFC(v1 + 1008);

  return _swift_task_switch(sub_10003A1E8, 0, 0);
}

uint64_t sub_10003A1E8()
{
  v1 = (v0 + 480);
  v2 = *(v0 + 1320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *(v0 + 1240) = v6;
    *v5 = 136446210;
    v7 = *(v0 + 528);
    *(v0 + 336) = *(v0 + 512);
    *(v0 + 352) = v7;
    *(v0 + 368) = *(v0 + 544);
    *(v0 + 384) = *(v0 + 560);
    v8 = *(v0 + 496);
    *(v0 + 304) = *v1;
    *(v0 + 320) = v8;
    sub_10000626C(v0 + 304, v0 + 920);
    v9 = sub_100003644();
    v11 = v10;
    v13 = v12;
    sub_100005BFC(v0 + 304);
    if (v13)
    {

      v14 = sub_100005A2C(1, v9);
      v30 = v15;
      sub_100005C50();
      sub_100005C50();
      v9 = v14;
      v11 = v30;
    }

    v16 = sub_100005C68(v9, v11, (v0 + 1240));

    *(v5 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VIOLATION %{public}s", v5, 0xCu);
    sub_100005E9C(v6);
  }

  if (*(v0 + 444))
  {
    v17 = swift_task_alloc();
    *(v0 + 1336) = v17;
    *(v17 + 16) = v0 + 1177;
    *(v17 + 24) = v0 + 1232;
    v18 = swift_task_alloc();
    *(v0 + 1344) = v18;
    *(v18 + 16) = v0 + 1177;
    *(v18 + 24) = v0 + 1232;
    v19 = swift_task_alloc();
    *(v0 + 1352) = v19;
    *v19 = v0;
    v19[1] = sub_10003A554;
    v20 = *(v0 + 1312);
    v21 = *(v0 + 1304);

    return sub_1000077A4(v21, v20, v0 + 392, &unk_100076ED8, v17, &unk_100076EE8, v18);
  }

  else
  {
    v23 = *(v0 + 1312);
    v24 = *(v0 + 1288);
    v25 = *(v0 + 1280);
    v26 = *(v0 + 1272);

    v27 = *(v0 + 528);
    *(v0 + 688) = *(v0 + 512);
    *(v0 + 704) = v27;
    *(v0 + 720) = *(v0 + 544);
    *(v0 + 736) = *(v0 + 560);
    v28 = *(v0 + 496);
    *(v0 + 656) = *v1;
    *(v0 + 672) = v28;
    sub_100005BFC(v0 + 656);
    fts_close(v24);
    free(v25);
    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10003A554()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v4 = *v1;
  *(*v1 + 1360) = v0;

  v5 = *(v2 + 1312);

  if (v0)
  {
    v6 = sub_10003B35C;
  }

  else
  {
    v6 = sub_10003A6B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003A6B8()
{
  v90 = v0;
  v87 = (v0 + 1232);
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 528);
  *(v0 + 864) = *(v0 + 512);
  *(v0 + 880) = v3;
  *(v0 + 896) = *(v0 + 544);
  *(v0 + 912) = *(v0 + 560);
  v4 = *(v0 + 496);
  *(v0 + 832) = *(v0 + 480);
  *(v0 + 848) = v4;
  sub_100005BFC(v0 + 832);

  v88 = *(v0 + 1360);
  v5 = fts_read(*(v0 + 1288));
  if (v5)
  {
    v85 = (v0 + 480);
    v86 = (v0 + 1008);
    v6 = (v0 + 1392);
    p_base_props = &AnalyticsSchemaV1.EnforcementTask.base_props;
    v8 = qword_1000B19C8;
    do
    {
      if (v5->fts_info != 8)
      {
        goto LABEL_5;
      }

      if (!v5->fts_path)
      {
        __break(1u);
      }

      v9 = String.init(cString:)();
      v11 = v10;
      *(v0 + 1304) = v9;
      *(v0 + 1312) = v10;
      if (p_base_props[53] != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      *(v0 + 1320) = sub_100002DB8(v12, v8);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v8;
        v16 = swift_slowAlloc();
        v17 = v6;
        v18 = p_base_props;
        v19 = swift_slowAlloc();
        v89[0] = v19;
        *v16 = 136315138;
        *(v16 + 4) = sub_100005C68(v9, v11, v89);
        _os_log_impl(&_mh_execute_header, v13, v14, "remediating file in dir: %s", v16, 0xCu);
        sub_100005E9C(v19);
        p_base_props = v18;
        v6 = v17;

        v8 = v15;
      }

      if ((v11 & 0x1000000000000000) == 0)
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          *(v0 + 1216) = v9;
          *(v0 + 1224) = v11 & 0xFFFFFFFFFFFFFFLL;
          *(v0 + 1388) = 0;
          if (get_protection_class((v0 + 1216), (v0 + 1388)))
          {
            goto LABEL_80;
          }

          v20 = *(v0 + 1388);
          goto LABEL_19;
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          *v6 = 0;
          if (get_protection_class(((v11 & 0xFFFFFFFFFFFFFFFLL) + 32), v6))
          {
            goto LABEL_80;
          }

          v20 = *v6;
          goto LABEL_19;
        }
      }

      sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
      _StringGuts._slowWithCString<A>(_:)();
      if (*(v0 + 1184))
      {
LABEL_80:
        v58 = *(v0 + 1272);

        v59 = errno.getter();
        *(v0 + 1188) = v59;
        sub_100033644();
        swift_willThrowTypedImpl();
        if (v59 == 2)
        {

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v89[0] = v63;
            *v62 = 136315138;
            v64 = sub_100005C68(v9, v11, v89);

            *(v62 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v60, v61, "file at %s deleted before it could be processed", v62, 0xCu);
            sub_100005E9C(v63);
LABEL_86:

            goto LABEL_89;
          }

          goto LABEL_87;
        }

LABEL_84:

        v60 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v89[0] = v69;
          *v67 = 136315394;
          v70 = sub_100005C68(v9, v11, v89);

          *(v67 + 4) = v70;
          *(v67 + 12) = 2112;
          sub_100033644();
          swift_allocError();
          *v71 = v59;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 14) = v72;
          *v68 = v72;
          _os_log_impl(&_mh_execute_header, v60, v66, "failed to get current protection class for %s: %@", v67, 0x16u);
          sub_100002CF0(v68, &qword_1000A4EC0, &qword_100076C00);

          sub_100005E9C(v69);
          goto LABEL_86;
        }

LABEL_87:

        goto LABEL_88;
      }

      v20 = *(v0 + 1180);
LABEL_19:
      if (ProtectionClass.init(value:)(v20).value == libdomainpolicy_ProtectionClass_unknownDefault)
      {
        v65 = *(v0 + 1272);

        v59 = 34;
        *(v0 + 1384) = 34;
        sub_100033644();
        swift_willThrowTypedImpl();
        goto LABEL_84;
      }

      v21 = *(v0 + 442);
      if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
      {
        v74 = *(v0 + 1296);
        v75 = *(v0 + 1272);
        v76 = *(v0 + 1256);
        v77 = *(v0 + 1248);
        v78 = *(v0 + 440);
        *(v0 + 512) = *(v0 + 424);
        *(v0 + 528) = v78;
        *(v0 + 544) = *(v0 + 456);
        *(v0 + 560) = *(v0 + 472);
        v79 = *(v0 + 408);
        *v85 = *(v0 + 392);
        *(v0 + 496) = v79;
        swift_beginAccess();
        *(v0 + 496) = v9;
        *(v0 + 504) = v11;
        sub_10003F37C(v77, v0 + 208);

        sub_100024DD8(v80);
        swift_endAccess();
        v81 = *(v0 + 528);
        *(v0 + 1040) = *(v0 + 512);
        *(v0 + 1056) = v81;
        *(v0 + 1072) = *(v0 + 544);
        *(v0 + 1088) = *(v0 + 560);
        v82 = *(v0 + 496);
        *v86 = *v85;
        *(v0 + 1024) = v82;
        v83 = *(v76 + v74);
        sub_10000626C(v86, v0 + 568);
        v84 = swift_task_alloc();
        *(v0 + 1328) = v84;
        *v84 = v0;
        v84[1] = sub_10003A0B8;

        return sub_100024EA4(v83);
      }

      if (v21 <= 3)
      {
        if (v21 > 1)
        {
          v22 = 0xE600000000000000;
          if (v21 == 2)
          {
            v23 = 0x427373616C63;
          }

          else
          {
            v23 = 0x437373616C63;
          }
        }

        else
        {
          v23 = 0x7269447373616C63;
          v22 = 0xEC000000656E6F4ELL;
          if (v21)
          {
            v22 = 0xE600000000000000;
            v23 = 0x417373616C63;
          }
        }
      }

      else if (v21 <= 5)
      {
        v22 = 0xE600000000000000;
        if (v21 == 4)
        {
          v23 = 0x447373616C63;
        }

        else
        {
          v23 = 0x457373616C63;
        }
      }

      else if (v21 == 6)
      {
        v22 = 0xE600000000000000;
        v23 = 0x467373616C63;
      }

      else if (v21 == 7)
      {
        v22 = 0xE700000000000000;
        v23 = 0x58437373616C63;
      }

      else
      {
        v23 = 0x6365746F72506F6ELL;
        v22 = 0xEC0000006E6F6974;
      }

      v24 = *(v0 + 443);
      if (v24 <= 3)
      {
        if (*(v0 + 443) > 1u)
        {
          v25 = 0xE600000000000000;
          if (v24 == 2)
          {
            if (v23 != 0x427373616C63)
            {
              goto LABEL_60;
            }
          }

          else if (v23 != 0x437373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v26 = 0x7269447373616C63;
        v25 = 0xEC000000656E6F4ELL;
        if (*(v0 + 443))
        {
          v25 = 0xE600000000000000;
          if (v23 != 0x417373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

LABEL_58:
        if (v23 != v26)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if (*(v0 + 443) > 5u)
      {
        if (v24 == 6)
        {
          v25 = 0xE600000000000000;
          if (v23 != 0x467373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        if (v24 == 7)
        {
          v25 = 0xE700000000000000;
          if (v23 != 0x58437373616C63)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v26 = 0x6365746F72506F6ELL;
        v25 = 0xEC0000006E6F6974;
        goto LABEL_58;
      }

      v25 = 0xE600000000000000;
      if (v24 == 4)
      {
        if (v23 != 0x447373616C63)
        {
          goto LABEL_60;
        }
      }

      else if (v23 != 0x457373616C63)
      {
        goto LABEL_60;
      }

LABEL_59:
      if (v22 == v25)
      {

LABEL_4:

        goto LABEL_5;
      }

LABEL_60:
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_4;
      }

      sub_10003FA60(v9, v11, *(v0 + 392), *(v0 + 400), (v0 + 1144));
      if (v88)
      {
        v28 = *(v0 + 1144);
        v29 = *(v0 + 1152);
        v30 = *(v0 + 1160);
        v31 = *(v0 + 1168);
        v32 = *(v0 + 1176);

        sub_100021030(v28, v29, v30, v31, v32);
        v33 = *(v0 + 1232);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          __break(1u);
          goto LABEL_97;
        }

        v88 = 0;
        *v87 = v35;
      }

      else
      {

        v88 = 0;
      }

LABEL_5:
      v5 = fts_read(*(v0 + 1288));
    }

    while (v5);
  }

  v36 = *v87;
  if (*v87 < 1)
  {
    v57 = *(v0 + 1272);
LABEL_88:

LABEL_89:
    v73 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    free(v73);
    v56 = *(v0 + 8);
    goto LABEL_90;
  }

  v37 = *(v0 + 1177);
  if (v37 == 2 || (v37 & 1) == 0)
  {
    v51 = *(v0 + 1272);
    v52 = *(v0 + 1264);
    v53 = *(v0 + 442);
    sub_10000EEA4();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v51;
    *(v54 + 16) = v53;
    *(v54 + 24) = v36;
    *(v54 + 32) = 15;
    swift_willThrow();
    v55 = *(v0 + 1280);
    fts_close(*(v0 + 1288));
    free(v55);
    v56 = *(v0 + 8);
LABEL_90:

    return v56();
  }

  v38 = *(v0 + 1272);

  if (qword_1000A21A8 != -1)
  {
LABEL_97:
    swift_once();
  }

  v39 = *(v0 + 1248);
  v40 = type metadata accessor for Logger();
  sub_100002DB8(v40, qword_1000B19C8);
  sub_10003F37C(v39, v0 + 112);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_10003F01C(v39);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1264);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v89[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100005C68(v44, v43, v89);
    _os_log_impl(&_mh_execute_header, v41, v42, "rescheduling directory %s", v45, 0xCu);
    sub_100005E9C(v46);
  }

  v47 = swift_task_alloc();
  *(v0 + 1368) = v47;
  *v47 = v0;
  v47[1] = sub_10003C014;
  v48 = *(v0 + 1256);
  v49 = *(v0 + 1248);

  return sub_1000363FC(v49);
}

uint64_t sub_10003B35C()
{
  v87 = v0;
  v1 = *(v0 + 1360);

  v2 = *(v0 + 528);
  *(v0 + 776) = *(v0 + 512);
  *(v0 + 792) = v2;
  *(v0 + 808) = *(v0 + 544);
  *(v0 + 824) = *(v0 + 560);
  v3 = *(v0 + 496);
  *(v0 + 744) = *(v0 + 480);
  *(v0 + 760) = v3;
  sub_100005BFC(v0 + 744);
  v4 = *(v0 + 1232);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    __break(1u);
    goto LABEL_95;
  }

  v84 = (v0 + 1232);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  *(v0 + 1232) = v6;

  v9 = fts_read(*(v0 + 1288));
  if (!v9)
  {
LABEL_67:
    v32 = *v84;
    if (*v84 < 1)
    {
      v53 = *(v0 + 1272);
LABEL_86:

LABEL_87:
      v69 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v69);
      v52 = *(v0 + 8);
    }

    else
    {
      v33 = *(v0 + 1177);
      if (v33 != 2 && (v33 & 1) != 0)
      {
        v34 = *(v0 + 1272);

        if (qword_1000A21A8 == -1)
        {
LABEL_71:
          v35 = *(v0 + 1248);
          v36 = type metadata accessor for Logger();
          sub_100002DB8(v36, qword_1000B19C8);
          sub_10003F37C(v35, v0 + 112);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          sub_10003F01C(v35);
          if (os_log_type_enabled(v37, v38))
          {
            v39 = *(v0 + 1272);
            v40 = *(v0 + 1264);
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v86[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_100005C68(v40, v39, v86);
            _os_log_impl(&_mh_execute_header, v37, v38, "rescheduling directory %s", v41, 0xCu);
            sub_100005E9C(v42);
          }

          v43 = swift_task_alloc();
          *(v0 + 1368) = v43;
          *v43 = v0;
          v43[1] = sub_10003C014;
          v44 = *(v0 + 1256);
          v45 = *(v0 + 1248);

          return sub_1000363FC(v45);
        }

LABEL_95:
        swift_once();
        goto LABEL_71;
      }

      v47 = *(v0 + 1272);
      v48 = *(v0 + 1264);
      v49 = *(v0 + 442);
      sub_10000EEA4();
      swift_allocError();
      *v50 = v48;
      *(v50 + 8) = v47;
      *(v50 + 16) = v49;
      *(v50 + 24) = v32;
      *(v50 + 32) = 15;
      swift_willThrow();
      v51 = *(v0 + 1280);
      fts_close(*(v0 + 1288));
      free(v51);
      v52 = *(v0 + 8);
    }

    return v52();
  }

  v81 = v0 + 392;
  v82 = v0 + 480;
  v83 = v0 + 1008;
  v10 = (v0 + 1392);
  p_base_props = &AnalyticsSchemaV1.EnforcementTask.base_props;
  v12 = qword_1000B19C8;
  v85 = v0;
  while (1)
  {
    if (v9->fts_info != 8)
    {
      goto LABEL_6;
    }

    if (!v9->fts_path)
    {
      __break(1u);
    }

    v13 = String.init(cString:)();
    v15 = v14;
    *(v0 + 1304) = v13;
    *(v0 + 1312) = v14;
    if (p_base_props[53] != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 1320) = sub_100002DB8(v16, v12);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v12;
      v20 = swift_slowAlloc();
      v21 = v10;
      v22 = p_base_props;
      v23 = swift_slowAlloc();
      v86[0] = v23;
      *v20 = 136315138;
      *(v20 + 4) = sub_100005C68(v13, v15, v86);
      _os_log_impl(&_mh_execute_header, v17, v18, "remediating file in dir: %s", v20, 0xCu);
      sub_100005E9C(v23);
      p_base_props = v22;
      v10 = v21;

      v12 = v19;
      v0 = v85;
    }

    if ((v15 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        *(v0 + 1216) = v13;
        *(v0 + 1224) = v15 & 0xFFFFFFFFFFFFFFLL;
        *(v0 + 1388) = 0;
        if (get_protection_class((v0 + 1216), (v0 + 1388)))
        {
          goto LABEL_78;
        }

        v24 = *(v0 + 1388);
        goto LABEL_20;
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        *v10 = 0;
        if (get_protection_class(((v15 & 0xFFFFFFFFFFFFFFFLL) + 32), v10))
        {
          goto LABEL_78;
        }

        v24 = *v10;
        goto LABEL_20;
      }
    }

    sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
    _StringGuts._slowWithCString<A>(_:)();
    if (*(v0 + 1184))
    {
LABEL_78:
      v54 = *(v0 + 1272);

      v55 = errno.getter();
      *(v0 + 1188) = v55;
      sub_100033644();
      swift_willThrowTypedImpl();
      if (v55 == 2)
      {

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v86[0] = v59;
          *v58 = 136315138;
          v60 = sub_100005C68(v13, v15, v86);

          *(v58 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v56, v57, "file at %s deleted before it could be processed", v58, 0xCu);
          sub_100005E9C(v59);
LABEL_84:

          goto LABEL_87;
        }

        goto LABEL_85;
      }

LABEL_82:

      v56 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v86[0] = v65;
        *v63 = 136315394;
        v66 = sub_100005C68(v13, v15, v86);

        *(v63 + 4) = v66;
        *(v63 + 12) = 2112;
        sub_100033644();
        swift_allocError();
        *v67 = v55;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v68;
        *v64 = v68;
        _os_log_impl(&_mh_execute_header, v56, v62, "failed to get current protection class for %s: %@", v63, 0x16u);
        sub_100002CF0(v64, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v65);
        goto LABEL_84;
      }

LABEL_85:

      goto LABEL_86;
    }

    v24 = *(v0 + 1180);
LABEL_20:
    if (ProtectionClass.init(value:)(v24).value == libdomainpolicy_ProtectionClass_unknownDefault)
    {
      v61 = *(v0 + 1272);

      v55 = 34;
      *(v0 + 1384) = 34;
      sub_100033644();
      swift_willThrowTypedImpl();
      goto LABEL_82;
    }

    v25 = *(v0 + 442);
    if (!ProtectionClass.allowed(forMinimumProtection:)(*(v0 + 442)))
    {
      break;
    }

    if (v25 <= 3)
    {
      if (v25 > 1)
      {
        v26 = 0xE600000000000000;
        if (v25 == 2)
        {
          v27 = 0x427373616C63;
        }

        else
        {
          v27 = 0x437373616C63;
        }
      }

      else
      {
        v27 = 0x7269447373616C63;
        v26 = 0xEC000000656E6F4ELL;
        if (v25)
        {
          v26 = 0xE600000000000000;
          v27 = 0x417373616C63;
        }
      }
    }

    else if (v25 <= 5)
    {
      v26 = 0xE600000000000000;
      if (v25 == 4)
      {
        v27 = 0x447373616C63;
      }

      else
      {
        v27 = 0x457373616C63;
      }
    }

    else if (v25 == 6)
    {
      v26 = 0xE600000000000000;
      v27 = 0x467373616C63;
    }

    else if (v25 == 7)
    {
      v26 = 0xE700000000000000;
      v27 = 0x58437373616C63;
    }

    else
    {
      v27 = 0x6365746F72506F6ELL;
      v26 = 0xEC0000006E6F6974;
    }

    v28 = *(v0 + 443);
    if (v28 <= 3)
    {
      if (*(v0 + 443) > 1u)
      {
        v29 = 0xE600000000000000;
        if (v28 == 2)
        {
          if (v27 != 0x427373616C63)
          {
            goto LABEL_61;
          }
        }

        else if (v27 != 0x437373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v30 = 0x7269447373616C63;
      v29 = 0xEC000000656E6F4ELL;
      if (*(v0 + 443))
      {
        v29 = 0xE600000000000000;
        if (v27 != 0x417373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if (*(v0 + 443) > 5u)
    {
      if (v28 == 6)
      {
        v29 = 0xE600000000000000;
        if (v27 != 0x467373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v28 == 7)
      {
        v29 = 0xE700000000000000;
        if (v27 != 0x58437373616C63)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v30 = 0x6365746F72506F6ELL;
      v29 = 0xEC0000006E6F6974;
LABEL_59:
      if (v27 != v30)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v29 = 0xE600000000000000;
    if (v28 == 4)
    {
      if (v27 != 0x447373616C63)
      {
        goto LABEL_61;
      }
    }

    else if (v27 != 0x457373616C63)
    {
LABEL_61:
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        sub_10003FA60(v13, v15, *(v0 + 392), *(v0 + 400), (v0 + 1144));

        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_60:
    if (v26 != v29)
    {
      goto LABEL_61;
    }

LABEL_5:

LABEL_6:
    v9 = fts_read(*(v0 + 1288));
    if (!v9)
    {
      goto LABEL_67;
    }
  }

  v70 = *(v0 + 1296);
  v71 = *(v0 + 1272);
  v72 = *(v0 + 1256);
  v73 = *(v0 + 1248);
  v74 = *(v81 + 48);
  *(v82 + 32) = *(v81 + 32);
  *(v82 + 48) = v74;
  *(v82 + 64) = *(v81 + 64);
  *(v82 + 80) = *(v81 + 80);
  v75 = *(v81 + 16);
  *v82 = *v81;
  *(v82 + 16) = v75;
  swift_beginAccess();
  *(v0 + 496) = v13;
  *(v0 + 504) = v15;
  sub_10003F37C(v73, v0 + 208);

  sub_100024DD8(v76);
  swift_endAccess();
  v77 = *(v82 + 48);
  *(v83 + 32) = *(v82 + 32);
  *(v83 + 48) = v77;
  *(v83 + 64) = *(v82 + 64);
  *(v83 + 80) = *(v82 + 80);
  v78 = *(v82 + 16);
  *v83 = *v82;
  *(v83 + 16) = v78;
  v79 = *(v72 + v70);
  sub_10000626C(v83, v0 + 568);
  v80 = swift_task_alloc();
  *(v0 + 1328) = v80;
  *v80 = v0;
  v80[1] = sub_10003A0B8;

  return sub_100024EA4(v79);
}

uint64_t sub_10003C014()
{
  v2 = *(*v1 + 1368);
  v5 = *v1;
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v3 = sub_10003C1F0;
  }

  else
  {
    v3 = sub_10003C154;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003C154()
{
  v1 = *(v0 + 1280);
  fts_close(*(v0 + 1288));
  free(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003C1F0()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1280);
  fts_close(*(v0 + 1288));
  free(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003C294(uint64_t a1)
{
  *(v2 + 2128) = v1;
  *(v2 + 2120) = a1;
  return _swift_task_switch(sub_10003C2B8, 0, 0);
}

uint64_t sub_10003C2B8()
{
  v1 = *(v0 + 2120);
  *(v0 + 464) = *v1;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v0 + 2096) = *(v1 + 72);
  *(v0 + 480) = v3;
  *(v0 + 488) = v2;
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v0 + 544) = *(v1 + 80);
  *(v0 + 512) = v5;
  *(v0 + 528) = v6;
  *(v0 + 496) = v4;
  v7._countAndFlagsBits = sub_10003F37C(v1, v0 + 16);
  ScanningCommand.init(_:_:)(v7, v8);
  ProtectionDomainIndex.find(_:)(v0 + 1960);
  if (*(v0 + 1984))
  {
    sub_100006B04(v0 + 1960, v0 + 2032);
    sub_10001139C(v0 + 1960);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 2064);
    sub_100006978((v0 + 2032), v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_100005E9C((v0 + 2032));
    sub_100002CF0(v0 + 2096, &qword_1000A25C0, &qword_100074D80);
  }

  else
  {
    sub_100002CF0(v0 + 1960, &qword_1000A25B8, &unk_100074610);
    sub_100002CF0(v0 + 2096, &qword_1000A25C0, &qword_100074D80);
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v0 + 2128);
  *(v0 + 536) = v11;
  *(v0 + 544) = v13;
  v15 = *(v0 + 512);
  *(v0 + 1288) = *(v0 + 496);
  *(v0 + 1304) = v15;
  v16 = *(v0 + 480);
  *(v0 + 1256) = *(v0 + 464);
  *(v0 + 1272) = v16;
  *(v0 + 1320) = *(v0 + 528);
  *(v0 + 1336) = *(v0 + 544);
  v17 = *(v14 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);
  v18 = swift_task_alloc();
  *(v0 + 2136) = v18;
  *v18 = v0;
  v18[1] = sub_10003C494;

  return sub_100024EA4(v17);
}

uint64_t sub_10003C494()
{
  v1 = *(*v0 + 2136);
  v3 = *v0;

  return _swift_task_switch(sub_10003C590, 0, 0);
}

uint64_t sub_10003C590()
{
  v30 = v0;
  v1 = (v0 + 464);
  if (qword_1000A21A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 2144) = sub_100002DB8(v2, qword_1000B19C8);
  v3 = *(v0 + 512);
  *(v0 + 232) = *(v0 + 496);
  *(v0 + 248) = v3;
  *(v0 + 264) = *(v0 + 528);
  *(v0 + 280) = *(v0 + 544);
  v4 = *(v0 + 480);
  *(v0 + 200) = *v1;
  *(v0 + 216) = v4;
  sub_10000626C(v0 + 200, v0 + 552);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100005BFC(v0 + 200);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446210;
    v9 = sub_100003644();
    v11 = v10;
    if (v12)
    {
      v13 = sub_100005A2C(1, v9);
      v28 = v14;
      sub_100005C50();
      v9 = v13;
      v11 = v28;
    }

    v15 = sub_100005C68(v9, v11, &v29);

    *(v7 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "VIOLATION %{public}s", v7, 0xCu);
    sub_100005E9C(v8);
  }

  if (*(v0 + 252))
  {
    v16 = *(v0 + 2128);
    v17 = *(v0 + 2120);
    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    swift_beginAccess();
    v20 = *(v0 + 512);
    *(v0 + 320) = *(v0 + 496);
    *(v0 + 336) = v20;
    *(v0 + 352) = *(v0 + 528);
    *(v0 + 368) = *(v0 + 544);
    v21 = *(v0 + 480);
    *(v0 + 288) = *v1;
    *(v0 + 304) = v21;
    v22 = swift_task_alloc();
    *(v0 + 2152) = v22;
    *(v22 + 16) = v16;
    *(v22 + 24) = v17;
    sub_10000626C(v0 + 288, v0 + 816);
    v23 = swift_task_alloc();
    *(v0 + 2160) = v23;
    *v23 = v0;
    v23[1] = sub_10003C8E0;

    return sub_1000077A4(v18, v19, v0 + 288, &unk_100076F10, v22, &unk_100076F18, 0);
  }

  else
  {
    v25 = *(v0 + 512);
    *(v0 + 672) = *(v0 + 496);
    *(v0 + 688) = v25;
    *(v0 + 704) = *(v0 + 528);
    *(v0 + 720) = *(v0 + 544);
    v26 = *(v0 + 480);
    *(v0 + 640) = *v1;
    *(v0 + 656) = v26;
    sub_100005BFC(v0 + 640);
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10003C8E0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2160);
  v11 = *v2;
  *(*v2 + 2168) = v1;

  if (v1)
  {
    sub_100005BFC(v4 + 288);
    v6 = *(v4 + 512);
    *(v4 + 936) = *(v4 + 496);
    *(v4 + 952) = v6;
    *(v4 + 968) = *(v4 + 528);
    *(v4 + 984) = *(v4 + 544);
    v7 = *(v4 + 480);
    *(v4 + 904) = *(v4 + 464);
    *(v4 + 920) = v7;
    sub_100005BFC(v4 + 904);
    v8 = sub_10003D42C;
  }

  else
  {
    v9 = *(v4 + 2152);
    *(v4 + 2188) = a1 & 1;
    sub_100005BFC(v4 + 288);

    v8 = sub_10003CA50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003CA50()
{
  v85 = v0;
  v1 = (v0 + 464);
  if (*(v0 + 2188) != 1)
  {
    v8 = *(v0 + 496);
    *(v0 + 1040) = *(v0 + 512);
    *(v0 + 1056) = *(v0 + 528);
    *(v0 + 1072) = *(v0 + 544);
    v9 = *(v0 + 480);
    *(v0 + 992) = *v1;
    *(v0 + 1008) = v9;
    *(v0 + 1024) = v8;
    v10 = v0 + 992;
    goto LABEL_6;
  }

  v2 = *(v0 + 2168);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);

  v5 = sub_10005A65C(v4, v3);
  if (HIDWORD(v5))
  {
    v7 = errno.getter();
    *(v0 + 2180) = v7;
    goto LABEL_8;
  }

  v6.value = ProtectionClass.init(value:)(v5).value;
  if (v6.value == libdomainpolicy_ProtectionClass_unknownDefault)
  {
    v7 = 34;
    *(v0 + 2176) = 34;
LABEL_8:
    sub_100033644();
    swift_willThrowTypedImpl();
    v11 = swift_allocError();
    *v12 = v7;
    goto LABEL_9;
  }

  v34 = sub_1000301D0(v6.value, *(v0 + 338));
  v35 = *(v0 + 2144);
  if (v34)
  {
    v36 = *(v0 + 496);
    v37 = *(v0 + 512);
    *(v0 + 1112) = v36;
    *(v0 + 1128) = v37;
    v38 = *(v0 + 528);
    *(v0 + 1144) = v38;
    v39 = *(v0 + 544);
    *(v0 + 1160) = v39;
    v40 = *v1;
    v41 = *(v0 + 480);
    *(v0 + 1080) = *v1;
    *(v0 + 1096) = v41;
    *(v0 + 1216) = v37;
    *(v0 + 1232) = v38;
    *(v0 + 1184) = v41;
    *(v0 + 1200) = v36;
    *(v0 + 1248) = v39;
    *(v0 + 1168) = v40;
    sub_10000626C(v0 + 1080, v0 + 728);
    sub_10000626C(v0 + 1168, v0 + 376);
    v16 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    sub_100005BFC(v0 + 1168);
    if (os_log_type_enabled(v16, v42))
    {
      v43 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v43 = 136315394;
      v44 = *(v0 + 1096);
      v45 = *(v0 + 1104);

      sub_100005BFC(v0 + 1080);
      v46 = sub_100005C68(v44, v45, v84);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v47 = *(v0 + 1218);
      sub_100005BFC(v0 + 1168);
      if (v47 <= 3)
      {
        v72 = 0x7269447373616C63;
        v73 = 0xEC000000656E6F4ELL;
        v74 = 0x427373616C63;
        if (v47 != 2)
        {
          v74 = 0x437373616C63;
        }

        if (v47)
        {
          v72 = 0x417373616C63;
          v73 = 0xE600000000000000;
        }

        if (v47 <= 1)
        {
          v48 = v72;
        }

        else
        {
          v48 = v74;
        }

        if (v47 <= 1)
        {
          v49 = v73;
        }

        else
        {
          v49 = 0xE600000000000000;
        }
      }

      else if (v47 <= 5)
      {
        if (v47 == 4)
        {
          v48 = 0x447373616C63;
        }

        else
        {
          v48 = 0x457373616C63;
        }

        v49 = 0xE600000000000000;
      }

      else if (v47 == 6)
      {
        v49 = 0xE600000000000000;
        v48 = 0x467373616C63;
      }

      else
      {
        if (v47 == 7)
        {
          v48 = 0x58437373616C63;
        }

        else
        {
          v48 = 0x6365746F72506F6ELL;
        }

        if (v47 == 7)
        {
          v49 = 0xE700000000000000;
        }

        else
        {
          v49 = 0xEC0000006E6F6974;
        }
      }

      v80 = sub_100005C68(v48, v49, v84);

      *(v43 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v16, v42, "set %s to protectionClass: %s", v43, 0x16u);
      swift_arrayDestroy();

      goto LABEL_72;
    }

    sub_100005BFC(v0 + 1080);
    v10 = v0 + 1168;
LABEL_6:
    sub_100005BFC(v10);
    goto LABEL_74;
  }

  v50 = *(v0 + 496);
  v51 = *(v0 + 512);
  *(v0 + 1904) = v50;
  *(v0 + 1920) = v51;
  v52 = *(v0 + 528);
  *(v0 + 1936) = v52;
  v53 = *(v0 + 544);
  *(v0 + 1952) = v53;
  v54 = *v1;
  v55 = *(v0 + 480);
  *(v0 + 1872) = *v1;
  *(v0 + 1888) = v55;
  *(v0 + 1832) = v51;
  *(v0 + 1848) = v52;
  *(v0 + 1800) = v55;
  *(v0 + 1816) = v50;
  *(v0 + 1864) = v53;
  *(v0 + 1784) = v54;
  v56 = *(v0 + 1800);
  v57 = *(v0 + 1808);
  v58 = *(v0 + 1834);
  sub_10000626C(v0 + 1872, v0 + 112);
  sub_10000626C(v0 + 1784, v0 + 1696);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  sub_100005BFC(v0 + 1872);
  sub_100005BFC(v0 + 1784);
  if (os_log_type_enabled(v59, v60))
  {
    v83 = v56;
    v61 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v61 = 136315394;
    v62 = *(v0 + 1888);
    v63 = *(v0 + 1896);

    v64 = sub_100005C68(v62, v63, v84);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2082;
    if (v58 <= 3)
    {
      v75 = 0x7269447373616C63;
      v76 = 0xEC000000656E6F4ELL;
      v77 = 0x427373616C63;
      if (v58 != 2)
      {
        v77 = 0x437373616C63;
      }

      if (v58)
      {
        v75 = 0x417373616C63;
        v76 = 0xE600000000000000;
      }

      if (v58 <= 1)
      {
        v70 = v75;
      }

      else
      {
        v70 = v77;
      }

      if (v58 <= 1)
      {
        v71 = v76;
      }

      else
      {
        v71 = 0xE600000000000000;
      }
    }

    else
    {
      v65 = 0xE600000000000000;
      v66 = 0x467373616C63;
      v67 = 0xE700000000000000;
      v68 = 0x58437373616C63;
      if (v58 != 7)
      {
        v68 = 0x6365746F72506F6ELL;
        v67 = 0xEC0000006E6F6974;
      }

      if (v58 != 6)
      {
        v66 = v68;
        v65 = v67;
      }

      v69 = 0x447373616C63;
      if (v58 != 4)
      {
        v69 = 0x457373616C63;
      }

      if (v58 <= 5)
      {
        v70 = v69;
      }

      else
      {
        v70 = v66;
      }

      if (v58 <= 5)
      {
        v71 = 0xE600000000000000;
      }

      else
      {
        v71 = v65;
      }
    }

    v78 = sub_100005C68(v70, v71, v84);

    *(v61 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v59, v60, "setProtectionClass(for: %s, protection: %{public}s) returned 0, but did not actually change the effective class", v61, 0x16u);
    swift_arrayDestroy();

    v56 = v83;
  }

  else
  {
  }

  sub_10000EEA4();
  v11 = swift_allocError();
  *v79 = v56;
  *(v79 + 8) = v57;
  *(v79 + 16) = v58;
  *(v79 + 24) = 0;
  *(v79 + 32) = 14;
  swift_willThrow();
LABEL_9:
  *(v0 + 2112) = v11;
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if (swift_dynamicCast() && *(v0 + 2184) == 2)
  {
    v13 = *(v0 + 2144);

    v14 = *(v0 + 512);
    *(v0 + 1552) = *(v0 + 496);
    *(v0 + 1568) = v14;
    *(v0 + 1584) = *(v0 + 528);
    *(v0 + 1600) = *(v0 + 544);
    v15 = *(v0 + 480);
    *(v0 + 1520) = *v1;
    *(v0 + 1536) = v15;
    sub_10000626C(v0 + 1520, v0 + 1608);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    sub_100005BFC(v0 + 1520);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v84[0] = v19;
      *v18 = 136315138;
      v20 = *(v0 + 1536);
      v21 = *(v0 + 1544);

      sub_100005BFC(v0 + 1520);
      v22 = sub_100005C68(v20, v21, v84);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "getProtectionClass(for: %s) skipped: file no longer exists", v18, 0xCu);
      sub_100005E9C(v19);

LABEL_72:

      goto LABEL_73;
    }

    v10 = v0 + 1520;
    goto LABEL_6;
  }

  v23 = *(v0 + 2144);
  v24 = *(v0 + 512);
  *(v0 + 1376) = *(v0 + 496);
  *(v0 + 1392) = v24;
  *(v0 + 1408) = *(v0 + 528);
  *(v0 + 1424) = *(v0 + 544);
  v25 = *(v0 + 480);
  *(v0 + 1344) = *v1;
  *(v0 + 1360) = v25;
  swift_errorRetain();
  sub_10000626C(v0 + 1344, v0 + 1432);
  v16 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  sub_100005BFC(v0 + 1344);

  if (!os_log_type_enabled(v16, v26))
  {

    sub_100005BFC(v0 + 1344);

    goto LABEL_74;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v84[0] = v29;
  *v27 = 136315394;
  v30 = *(v0 + 1360);
  v31 = *(v0 + 1368);

  sub_100005BFC(v0 + 1344);
  v32 = sub_100005C68(v30, v31, v84);

  *(v27 + 4) = v32;
  *(v27 + 12) = 2112;
  swift_errorRetain();
  v33 = _swift_stdlib_bridgeErrorToNSError();
  *(v27 + 14) = v33;
  *v28 = v33;
  _os_log_impl(&_mh_execute_header, v16, v26, "getProtectionClass(for: %s) failed: errno(%@)", v27, 0x16u);
  sub_100002CF0(v28, &qword_1000A4EC0, &qword_100076C00);

  sub_100005E9C(v29);

LABEL_73:

LABEL_74:
  v81 = *(v0 + 8);

  return v81();
}