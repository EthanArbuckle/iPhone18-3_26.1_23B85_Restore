void sub_100242138(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[6] = v3;
    v6[7] = v4;
    v6[8] = v5;
  }

  else
  {

    v6[6] = v3;
    v6[7] = v4;
    v6[8] = v5;
  }

  free(v2);
}

uint64_t sub_1002421F0()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_100242238(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[9] = v3;
  a2[10] = v4;
  a2[11] = v5;
  return result;
}

uint64_t (*Config.Identification.$usageLabel.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = v1[9];
  *(v3 + 32) = v5;
  v7 = v1[10];
  v6 = v1[11];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100242334;
}

void sub_100242338(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[9] = v3;
    v6[10] = v4;
    v6[11] = v5;
  }

  else
  {

    v6[9] = v3;
    v6[10] = v4;
    v6[11] = v5;
  }

  free(v2);
}

void Config.Identification.init()(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = &_swiftEmptyArrayStorage;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &_swiftEmptyArrayStorage;
  a1[10] = 0;
  a1[11] = 0;
}

uint64_t Config.Identification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD488);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025ABDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[2];
  v11 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = *(v3 + 56);
  v11 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = v3[5];
  v11 = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

double Config.Identification.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100254958(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100242698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s10DarwinInit6ConfigV14IdentificationV2eeoiySbAE_AEtFZ_0(v9, v10) & 1;
}

void Config.Identification.hash(into:)()
{
  if (v0[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[5])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[8])
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v0[11])
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v0[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[11])
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_10024281C(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10024287C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002428E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

DarwinInit::Config::Identification::CodingKeys_optional __swiftcall Config.Identification.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004880B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Identification.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657475706D6F63;
  v2 = 0x6F685F6C61636F6CLL;
  if (a1 != 2)
  {
    v2 = 0x616C5F6567617375;
  }

  if (a1)
  {
    v1 = 0x656D616E74736F68;
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

uint64_t sub_100242A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x72657475706D6F63;
  v4 = *a1;
  v5 = 0x6F685F6C61636F6CLL;
  v6 = 0xEE00656D616E7473;
  if (v4 != 2)
  {
    v5 = 0x616C5F6567617375;
    v6 = 0xEB000000006C6562;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D616E74736F68;
  if (!*a1)
  {
    v8 = 0x72657475706D6F63;
    v7 = 0xED0000656D616E5FLL;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6F685F6C61636F6CLL;
  v12 = 0xEE00656D616E7473;
  if (*a2 != 2)
  {
    v11 = 0x616C5F6567617375;
    v12 = 0xEB000000006C6562;
  }

  if (*a2)
  {
    v3 = 0x656D616E74736F68;
    v2 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_100242B90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100242C74()
{
  String.hash(into:)();
}

Swift::Int sub_100242D44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Identification::CodingKeys_optional sub_100242E24@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Identification::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Identification.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100242E54(uint64_t *a1@<X8>)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x72657475706D6F63;
  v4 = 0xEE00656D616E7473;
  v5 = 0x6F685F6C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x616C5F6567617375;
    v4 = 0xEB000000006C6562;
  }

  if (*v1)
  {
    v3 = 0x656D616E74736F68;
    v2 = 0xE800000000000000;
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

uint64_t sub_100242EF4()
{
  v1 = 0x72657475706D6F63;
  v2 = 0x6F685F6C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x616C5F6567617375;
  }

  if (*v0)
  {
    v1 = 0x656D616E74736F68;
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

DarwinInit::Config::Identification::CodingKeys_optional sub_100242F90@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Identification::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Identification.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100242FC8(uint64_t a1)
{
  v2 = sub_10025ABDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100243004(uint64_t a1)
{
  v2 = sub_10025ABDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Tailspin.ClassConfig.SubclassConfig.$subclassEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1002430CC;
}

Swift::Int Config.Log.hashValue.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  sub_100252B3C(v7, a2, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10024321C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252B3C(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100243278()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252B3C(v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t Config.Log.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74736973726570;
  }

  else
  {
    return 0x5F79636176697270;
  }
}

uint64_t sub_100243320(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74736973726570;
  }

  else
  {
    v3 = 0x5F79636176697270;
  }

  if (v2)
  {
    v4 = 0xED00006C6576656CLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74736973726570;
  }

  else
  {
    v5 = 0x5F79636176697270;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xED00006C6576656CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002433D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100243464()
{
  String.hash(into:)();
}

Swift::Int sub_1002434E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100243578(uint64_t *a1@<X8>)
{
  v2 = 0x5F79636176697270;
  if (*v1)
  {
    v2 = 0x74736973726570;
  }

  v3 = 0xED00006C6576656CLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002435C4()
{
  if (*v0)
  {
    return 0x74736973726570;
  }

  else
  {
    return 0x5F79636176697270;
  }
}

uint64_t sub_100243628(uint64_t a1)
{
  v2 = sub_100268D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100243664(uint64_t a1)
{
  v2 = sub_100268D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Log.PrivacyLevel.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x63696C627550;
  }

  if (a1 == 1)
  {
    return 0x65746176697250;
  }

  return 0x76697469736E6553;
}

uint64_t sub_100243704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65746176697250;
  if (v2 != 1)
  {
    v4 = 0x76697469736E6553;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x63696C627550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65746176697250;
  if (*a2 != 1)
  {
    v8 = 0x76697469736E6553;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x63696C627550;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10024380C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002438B0()
{
  String.hash(into:)();
}

Swift::Int sub_100243940()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002439E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV3LogV12PrivacyLevelO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100243A10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65746176697250;
  if (v2 != 1)
  {
    v5 = 0x76697469736E6553;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63696C627550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t (*Config.Meta.$applyTimeout.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

void sub_100243BC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    *v6 = v3;
    v6[1] = v4;
    v6[2] = v5;
  }

  else
  {

    *v6 = v3;
    v6[1] = v4;
    v6[2] = v5;
  }

  free(v2);
}

uint64_t (*Config.Meta.$name.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = v1[3];
  *(v3 + 32) = v5;
  v7 = v1[4];
  v6 = v1[5];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269AA4;
}

void sub_100243D14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  else
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  free(v2);
}

void Config.Meta.init()(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  a1[4] = 0;
  a1[5] = 0;
}

double Config.Meta.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100255444(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void Config.Meta.hash(into:)()
{
  if (!*(v0 + 16))
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 40))
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

void sub_100243F7C()
{
  v1 = *(v0 + 40);
  if (!*(v0 + 16))
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_100244034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Config.Meta.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x69745F796C707061;
  }
}

uint64_t sub_100244130(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x69745F796C707061;
  }

  if (v2)
  {
    v4 = 0xED000074756F656DLL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x69745F796C707061;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xED000074756F656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002441DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100244264()
{
  String.hash(into:)();
}

Swift::Int sub_1002442D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100244368(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x69745F796C707061;
  }

  v3 = 0xED000074756F656DLL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002443AC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x69745F796C707061;
  }
}

uint64_t sub_100244408(uint64_t a1)
{
  v2 = sub_100268D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244444(uint64_t a1)
{
  v2 = sub_100268D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Network.firewall.getter()
{
  v1 = *(v0 + 8);
  sub_10025B050(v1);
  return v1;
}

uint64_t Config.Network.$firewall.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_10025B050(v2);
  return v1;
}

uint64_t sub_100244500(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  sub_10025B050(v4);

  result = sub_100219A48(a2[1]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t Config.Network.$firewall.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = sub_100219A48(v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

void (*Config.Network.$firewall.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = v1[1];
  v4[5] = v6;
  v7 = v1[2];
  v4[6] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  sub_10025B050(v6);
  return sub_100244650;
}

void sub_100244650(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[5];
  v6 = (*a1)[3];
  v7 = (*a1)[2];
  if (a2)
  {

    sub_10025B050(v3);

    sub_100219A48(v5);
    *v6 = v4;
    v6[1] = v3;
    v6[2] = v7;
    v8 = v2[1];

    sub_100219A48(v8);
  }

  else
  {

    sub_100219A48(v5);
    *v6 = v4;
    v6[1] = v3;
    v6[2] = v7;
  }

  free(v2);
}

uint64_t Config.Network.$interfaces.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100244750(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t Config.Network.$interfaces.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void (*Config.Network.$interfaces.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100244878;
}

void sub_100244878(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
  }

  else
  {

    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
  }

  free(v2);
}

uint64_t (*Config.Network.$uplinkMtu.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 40);
  *(v4 + 32) = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100269AB0;
}

void sub_1002449A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 40) = v3;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
  }

  else
  {

    *(v6 + 40) = v3;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
  }

  free(v2);
}

uint64_t Config.Network.init(firewall:interfaces:uplinkMtu:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = &_swiftEmptyArrayStorage;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = &_swiftEmptyArrayStorage;
  *(a6 + 32) = a3;
  *(a6 + 40) = &_swiftEmptyArrayStorage;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5 & 1;
  return result;
}

uint64_t Config.Network.isEmpty.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  if (*(v0 + 32))
  {
    return 0;
  }

  return *(v0 + 56) & 1;
}

uint64_t Config.Network.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B090();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  sub_10025B0E4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 32);
    v11 = 1;
    sub_1000039E8(&qword_1004ACCF0);
    sub_10025980C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 48);
    BYTE8(v12) = *(v3 + 56);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double Config.Network.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100258488(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100244CE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s10DarwinInit6ConfigV7NetworkV2eeoiySbAE_AEtFZ_0(v5, v7) & 1;
}

void Config.Network.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (!*(v2 + 8))
  {
    Hasher._combine(_:)(0);
    v7 = *(v2 + 32);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    if (*(v2 + 56))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v4 = *(v2 + 16);
  Hasher._combine(_:)(1u);
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = *(v2 + 32);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  sub_1001D4AA0(a1, v7);
  if (*(v2 + 56))
  {
LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_10:
  v8 = *(v2 + 48);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v8);
}

Swift::Int Config.Network.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100244E74()
{
  Hasher.init(_seed:)();
  Config.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Network::CodingKeys_optional __swiftcall Config.Network.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Network.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6C617765726966;
  }

  if (a1 == 1)
  {
    return 0x6361667265746E69;
  }

  return 0x6D5F6B6E696C7075;
}

uint64_t sub_100244F68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007365;
  v3 = *a1;
  v4 = 0x6361667265746E69;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0x6D5F6B6E696C7075;
    v5 = 0xEA00000000007574;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C6C617765726966;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6361667265746E69;
  if (*a2 != 1)
  {
    v8 = 0x6D5F6B6E696C7075;
    v2 = 0xEA00000000007574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C617765726966;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100245068()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100245110()
{
  String.hash(into:)();
}

Swift::Int sub_1002451A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Network::CodingKeys_optional sub_100245248@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Network.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100245278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6361667265746E69;
  v5 = 0xEA00000000007365;
  if (v2 != 1)
  {
    v4 = 0x6D5F6B6E696C7075;
    v5 = 0xEA00000000007574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C6C617765726966;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1002452DC()
{
  v1 = 0x6361667265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6D5F6B6E696C7075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C617765726966;
  }
}

DarwinInit::Config::Network::CodingKeys_optional sub_10024533C@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Network.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100245374(uint64_t a1)
{
  v2 = sub_10025B090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002453B0(uint64_t a1)
{
  v2 = sub_10025B090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002453EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

void (*Config.Network.Firewall.$rules.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *v1;
  v4[3] = *v1;
  v6 = v1[1];
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_1002454D4;
}

void sub_1002454D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *v5 = v4;
    v5[1] = v3;
  }

  else
  {

    *v5 = v4;
    v5[1] = v3;
  }

  free(v2);
}

uint64_t Config.Network.Firewall.init(from:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AD4B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10025B294();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_100223854();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_1002456E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AD4B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B294();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_100223854();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

Swift::Int sub_1002458B4()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252DEC(v3, v1);
  return Hasher._finalize()();
}

BOOL Config.Network.Firewall.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004883D0, v2);

  return v3 != 0;
}

BOOL Config.Network.Firewall.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488408, v2);

  return v3 != 0;
}

uint64_t sub_1002459A0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004884A0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100245A08(uint64_t a1)
{
  v2 = sub_10025B294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100245A44(uint64_t a1)
{
  v2 = sub_10025B294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Analytics.coredumps.getter()
{
  v1 = *(v0 + 24);
  sub_1002593F0(v1, *(v0 + 32));
  return v1;
}

uint64_t Config.Analytics.coredumps.setter(uint64_t a1, char a2)
{
  result = sub_100218EE4(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Config.Analytics.$coredumps.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  sub_1002593F0(v2, v3);
  return v1;
}

uint64_t sub_100245B44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  sub_1002593F0(v4, v5);

  result = sub_100218EE4(*(a2 + 24), *(a2 + 32));
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t Config.Analytics.$coredumps.setter(uint64_t a1, uint64_t a2, char a3)
{

  result = sub_100218EE4(*(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void (*Config.Analytics.$coredumps.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  *(v4 + 32) = v5;
  v6 = *(v1 + 24);
  *(v4 + 40) = v6;
  v7 = *(v1 + 32);
  *(v4 + 17) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  sub_1002593F0(v6, v7);
  return sub_100245C9C;
}

void sub_100245C9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 17);
  v7 = (*a1)[5];
  v8 = (*a1)[3];
  if (a2)
  {

    sub_1002593F0(v3, v5);

    sub_100218EE4(v7, v6);
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
    v9 = v2[1];
    v10 = *(v2 + 16);

    sub_100218EE4(v9, v10);
  }

  else
  {

    sub_100218EE4(v7, v6);
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
  }

  free(v2);
}

void Config.Analytics.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 2;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
}

uint64_t Config.Analytics.init(submit:coredumps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = &_swiftEmptyArrayStorage;
  *(a4 + 8) = result;
  *(a4 + 16) = &_swiftEmptyArrayStorage;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

void Config.Analytics.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  v6 = *(v2 + 32);
  if (v6 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = *(v2 + 24);
    Hasher._combine(_:)(1u);

    sub_100250308(a1, v7, v6 & 1);
  }
}

void sub_100245F5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (v4 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v4 & 1;
  }

  Hasher._combine(_:)(v7);
  if (v6 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    sub_100250308(a1, v5, v6 & 1);
  }
}

Swift::Int sub_100245FF8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v1 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100250308(v6, v2, v3 & 1);
  }

  return Hasher._finalize()();
}

uint64_t Config.Analytics.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x706D756465726F63;
  }

  else
  {
    return 0x74696D627573;
  }
}

uint64_t sub_1002460E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x706D756465726F63;
  }

  else
  {
    v3 = 0x74696D627573;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x706D756465726F63;
  }

  else
  {
    v5 = 0x74696D627573;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100246190()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100246214()
{
  String.hash(into:)();
}

Swift::Int sub_100246284()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100246310(uint64_t *a1@<X8>)
{
  v2 = 0x74696D627573;
  if (*v1)
  {
    v2 = 0x706D756465726F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100246350()
{
  if (*v0)
  {
    return 0x706D756465726F63;
  }

  else
  {
    return 0x74696D627573;
  }
}

uint64_t sub_1002463A8(uint64_t a1)
{
  v2 = sub_100268CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002463E4(uint64_t a1)
{
  v2 = sub_100268CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Package.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002464A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_100246534(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t Config.Package.url.setter(uint64_t a1)
{
  v3 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10024669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1000039E8(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_100013E54(a1, &v12 - v9, a5);
  sub_100013F2C(a2, a5);
  return sub_10003E154(v10, a2, a5);
}

void (*Config.Package.$url.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000039E8(&qword_1004ACD08) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_100013E54(v1, v4, &qword_1004ACD08);
  return sub_100246828;
}

void sub_10024683C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_100013E54(a1[2], v4, a3);
    sub_100013F2C(v6, a3);
    sub_10003E154(v4, v6, a3);
    sub_100013F2C(v5, a3);
  }

  else
  {
    sub_100013F2C(*a1, a3);
    sub_10003E154(v5, v6, a3);
  }

  free(v5);

  free(v4);
}

uint64_t Config.Package.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AD4C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B5D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000039E8(&qword_1004ACD08);
  type metadata accessor for URL();
  sub_1002599A0(&qword_1004A9058, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Config.Package.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = type metadata accessor for URL();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000039E8(&qword_1004ACD08);
  __chkstk_darwin(v27);
  v6 = &v23 - v5;
  v33 = sub_1000039E8(&qword_1004AD4D0);
  v29 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Config.Package(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(a1, a1[3]);
  v12 = sub_10025B5D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v24 = v11;
    v25 = v6;
    v13 = v29;
    v14 = v30;
    v15 = KeyedDecodingContainer.codingPath.getter();
    sub_1000039E8(&qword_1004AAA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 56) = &type metadata for Config.Package.CodingKeys;
    *(inited + 64) = v12;
    v34 = v15;
    sub_10034A3A8(inited);
    v26 = v34;
    sub_1002599A0(&qword_1004A90E0, &type metadata accessor for URL);
    v18 = v31;
    v17 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v33);
    v19 = v25;
    (*(v14 + 32))(v25 + *(v27 + 44), v18, v17);
    *v19 = v26;
    v20 = v19;
    v21 = v24;
    sub_10003E154(v20, v24, &qword_1004ACD08);
    sub_100268EDC(v21, v28, type metadata accessor for Config.Package);
  }

  return sub_100003C3C(a1);
}

uint64_t static Config.Package.== infix(_:_:)()
{
  type metadata accessor for URL();
  sub_1000039E8(&qword_1004ACD08);
  sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Config.Package.hash(into:)()
{
  sub_1000039E8(&qword_1004ACD08);
  type metadata accessor for URL();
  sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Config.Package.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_1000039E8(&qword_1004ACD08);
  type metadata accessor for URL();
  sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100247038()
{
  Hasher.init(_seed:)();
  sub_1000039E8(&qword_1004ACD08);
  type metadata accessor for URL();
  sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL Config.Package.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004885A0, v2);

  return v3 != 0;
}

BOOL Config.Package.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004885D8, v2);

  return v3 != 0;
}

uint64_t sub_100247188@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100488670, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1002471F0(uint64_t a1)
{
  v2 = sub_10025B5D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024722C(uint64_t a1)
{
  v2 = sub_10025B5D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Tailspin.ClassConfig.$classEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100269AB4;
}

uint64_t sub_100247324(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100247378@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

void Config.SSH.hash(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = a3 & 1;
  }

  Hasher._combine(_:)(v6);
  if (a5 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = a5 & 1;
  }

  Hasher._combine(_:)(v8);
}

void sub_10024748C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v1 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v1 & 1;
  }

  Hasher._combine(_:)(v3);
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v2 & 1;
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100247500()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v1 & 1;
  }

  Hasher._combine(_:)(v3);
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v2 & 1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t Config.SSH.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x687475617770;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1002475E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x687475617770;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x687475617770;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100247684()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100247704()
{
  String.hash(into:)();
}

Swift::Int sub_100247770()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002477F8(uint64_t *a1@<X8>)
{
  v2 = 0x64656C62616E65;
  if (*v1)
  {
    v2 = 0x687475617770;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100247834()
{
  if (*v0)
  {
    return 0x687475617770;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_100247888(uint64_t a1)
{
  v2 = sub_100268C90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002478C4(uint64_t a1)
{
  v2 = sub_100268C90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100247908(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
  }

  else
  {

    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
  }

  return result;
}

uint64_t (*Config.Start.$scripts.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100247A20;
}

double Config.Start.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100256BC0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int Config.Start.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_100252D08(v2, *(v0 + 8), *(v0 + 24), *(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_100247B48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252D08(v5, v3, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100247BB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252D08(v5, v3, v2, v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Start::CodingKeys_optional __swiftcall Config.Start.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488770, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Start.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x63645F6575737369;
  }

  if (a1 == 1)
  {
    return 0x6174616466726570;
  }

  return 0x73747069726373;
}

uint64_t sub_100247CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6174616466726570;
  if (v2 != 1)
  {
    v4 = 0x73747069726373;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x63645F6575737369;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007472;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6174616466726570;
  if (*a2 != 1)
  {
    v8 = 0x73747069726373;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x63645F6575737369;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007472;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100247DD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100247E78()
{
  String.hash(into:)();
}

Swift::Int sub_100247F0C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Start::CodingKeys_optional sub_100247FB0@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Start::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Start.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100247FE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007472;
  v4 = 0xE800000000000000;
  v5 = 0x6174616466726570;
  if (v2 != 1)
  {
    v5 = 0x73747069726373;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63645F6575737369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100248044()
{
  v1 = 0x6174616466726570;
  if (*v0 != 1)
  {
    v1 = 0x73747069726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63645F6575737369;
  }
}

DarwinInit::Config::Start::CodingKeys_optional sub_1002480A4@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Start::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Start.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002480DC(uint64_t a1)
{
  v2 = sub_100268C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248118(uint64_t a1)
{
  v2 = sub_100268C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Tailspin.$fullSamplingPeriodSet.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v4 + 32) = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100269AB8;
}

void sub_1002481E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
  }

  else
  {

    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
  }

  free(v2);
}

uint64_t (*Config.Tailspin.$oncoreSamplingPeriodSet.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 24);
  *(v4 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100269ABC;
}

void sub_1002482FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
  }

  else
  {

    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
  }

  free(v2);
}

uint64_t Config.Tailspin.bufferSizeSet.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void (*Config.Tailspin.$bufferSizeSet.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 48);
  *(v4 + 32) = v5;
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100248464;
}

void sub_100248464(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 48) = v3;
    *(v6 + 56) = v4;
    *(v6 + 64) = v5;
  }

  else
  {

    *(v6 + 48) = v3;
    *(v6 + 56) = v4;
    *(v6 + 64) = v5;
  }

  free(v2);
}

uint64_t (*Config.Tailspin.$classConfigs.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100269AC0;
}

void sub_100248580(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 72) = v4;
    *(v5 + 80) = v3;
  }

  else
  {

    *(v5 + 72) = v4;
    *(v5 + 80) = v3;
  }

  free(v2);
}

void Config.Tailspin.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = &_swiftEmptyArrayStorage;
  *(a1 + 80) = 0;
}

uint64_t Config.Tailspin.init(fullSamplingPeriodSet:oncoreSamplingPeriodSet:bufferSizeSet:classConfigs:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = &_swiftEmptyArrayStorage;
  *(a8 + 8) = result;
  *(a8 + 16) = a2 & 1;
  *(a8 + 24) = &_swiftEmptyArrayStorage;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4 & 1;
  *(a8 + 48) = &_swiftEmptyArrayStorage;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6 & 1;
  *(a8 + 72) = &_swiftEmptyArrayStorage;
  *(a8 + 80) = a7;
  return result;
}

uint64_t Config.Tailspin.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD4D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025BAAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 80);
    v11 = 3;
    sub_1000039E8(&qword_1004AD4E8);
    sub_10025BB00();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1002489C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10DarwinInit6ConfigV8TailspinV2eeoiySbAE_AEtFZ_0(v7, v9);
}

void Config.Tailspin.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v2 + 16))
  {
    Hasher._combine(_:)(0);
    if ((*(v2 + 40) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
    if ((*(v2 + 40) & 1) == 0)
    {
LABEL_3:
      v4 = *(v2 + 32);
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v4);
      if ((*(v2 + 64) & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      v6 = *(v2 + 80);
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (*(v2 + 64))
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = *(v2 + 56);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
  v6 = *(v2 + 80);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  sub_1001D2AB0(a1, v6);
}

Swift::Int Config.Tailspin.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Tailspin.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100248B64()
{
  Hasher.init(_seed:)();
  Config.Tailspin.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Tailspin::CodingKeys_optional __swiftcall Config.Tailspin.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488828, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

DarwinInit::Config::Tailspin::CodingKeys_optional sub_100248BFC@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Tailspin::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Tailspin.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

DarwinInit::Config::Tailspin::CodingKeys_optional sub_100248C2C@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Tailspin::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Tailspin.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100248C64(uint64_t a1)
{
  v2 = sub_10025BAAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248CA0(uint64_t a1)
{
  v2 = sub_10025BAAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s10DarwinInit6ConfigV5StartV8_scriptsAA9PathCodedVySaySSGSgGvg_0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100248D20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t (*Config.Tailspin.ClassConfig.$subclassConfigs.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100269AC4;
}

void sub_100248E08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
  }

  else
  {

    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
  }

  free(v2);
}

double Config.Tailspin.ClassConfig.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100258934(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL static Config.Tailspin.ClassConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 16);
  if (v5 != *(v4 + 16))
  {
    return 0;
  }

  if (v5 && v3 != v4)
  {
    v6 = (v3 + 56);
    v7 = (v4 + 56);
    result = 1;
    while (*(v6 - 16) == *(v7 - 16) && ((*v6 ^ *v7) & 1) == 0)
    {
      v6 += 32;
      v7 += 32;
      if (!--v5)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100248FE0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    if (v4)
    {
      if (v5 && (sub_10024DE28(v4, v5) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int Config.Tailspin.ClassConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_100252E64(&v2, *(v0 + 8), *(v0 + 24) & 1, *(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_1002490AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252E64(&v5, v3, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10024911C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252E64(&v5, v3, v1, v2);
  return Hasher._finalize()();
}

DarwinInit::Config::Tailspin::ClassConfig::CodingKeys_optional __swiftcall Config.Tailspin.ClassConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004888F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

DarwinInit::Config::Tailspin::ClassConfig::CodingKeys_optional sub_1002491D4@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Tailspin::ClassConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Tailspin.ClassConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

DarwinInit::Config::Tailspin::ClassConfig::CodingKeys_optional sub_100249204@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Tailspin::ClassConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Tailspin.ClassConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10024923C(uint64_t a1)
{
  v2 = sub_100268BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249278(uint64_t a1)
{
  v2 = sub_100268BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002492B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *v4 = v2;
    *(v4 + 8) = v3;
  }

  else
  {

    *v4 = v2;
    *(v4 + 8) = v3;
  }

  return result;
}

uint64_t Config.Tailspin.ClassConfig.SubclassConfig.init(from:)(void *a1)
{
  result = sub_100258764(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100249384@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100258764(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1002493FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int Config.Tailspin.ClassConfig.SubclassConfig.hashValue.getter(uint64_t a1, Swift::UInt8 a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a4 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002494C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100249520()
{
  v1 = *(v0 + 24);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100249560()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1002495FC(uint64_t a1)
{
  v2 = sub_100268B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249638(uint64_t a1)
{
  v2 = sub_100268B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 Config.User.authentication.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v14 = *(v1 + 72);
  v15 = v4;
  v16 = *(v1 + 104);
  v5 = *(v1 + 24);
  v10 = *(v1 + 8);
  v11 = v5;
  v12 = *(v1 + 40);
  v13 = v3;
  sub_100013E54(&v10, v9, &qword_1004AD190);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

__n128 Config.User.$authentication.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v15 = v3;
  v16 = v1[6];
  v4 = v1[1];
  v10 = *v1;
  v11 = v4;
  v5 = v1[3];
  v12 = v1[2];
  v13 = v5;
  sub_100013E54(&v10, &v9, &qword_1004AD500);
  v6 = v15;
  a1[4] = v14;
  a1[5] = v6;
  a1[6] = v16;
  v7 = v11;
  *a1 = v10;
  a1[1] = v7;
  result = v13;
  a1[2] = v12;
  a1[3] = result;
  return result;
}

void (*Config.User.$authentication.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2A8uLL);
  }

  *a1 = v3;
  *(v3 + 672) = v1;
  v4 = *v1;
  v5 = v1[2];
  *(v3 + 16) = v1[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[6];
  *(v3 + 80) = v1[5];
  *(v3 + 96) = v8;
  *(v3 + 48) = v6;
  *(v3 + 64) = v7;
  v9 = v1[6];
  v11 = v1[3];
  v10 = v1[4];
  *(v3 + 192) = v1[5];
  *(v3 + 208) = v9;
  *(v3 + 160) = v11;
  *(v3 + 176) = v10;
  v12 = *v1;
  v13 = v1[2];
  *(v3 + 128) = v1[1];
  *(v3 + 144) = v13;
  *(v3 + 112) = v12;
  sub_100013E54(v3, v3 + 224, &qword_1004AD500);
  return sub_100249888;
}

void sub_100249888(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 672);
    v4 = *(v2 + 128);
    *(v2 + 448) = *(v2 + 112);
    *(v2 + 464) = v4;
    v5 = *(v2 + 208);
    *(v2 + 528) = *(v2 + 192);
    *(v2 + 544) = v5;
    v6 = *(v2 + 176);
    *(v2 + 496) = *(v2 + 160);
    *(v2 + 512) = v6;
    *(v2 + 480) = *(v2 + 144);
    v7 = *v3;
    v8 = v3[2];
    *(v2 + 352) = v3[1];
    *(v2 + 368) = v8;
    *(v2 + 336) = v7;
    v9 = v3[3];
    v10 = v3[4];
    v11 = v3[6];
    *(v2 + 416) = v3[5];
    *(v2 + 432) = v11;
    *(v2 + 384) = v9;
    *(v2 + 400) = v10;
    sub_100013E54(v2 + 448, v2 + 560, &qword_1004AD500);
    sub_100013F2C(v2 + 336, &qword_1004AD500);
    v13 = *(v2 + 464);
    v12 = *(v2 + 480);
    *v3 = *(v2 + 448);
    v3[1] = v13;
    v3[2] = v12;
    v14 = *(v2 + 544);
    v16 = *(v2 + 496);
    v15 = *(v2 + 512);
    v3[5] = *(v2 + 528);
    v3[6] = v14;
    v3[3] = v16;
    v3[4] = v15;
    v17 = *(v2 + 192);
    *(v2 + 288) = *(v2 + 176);
    *(v2 + 304) = v17;
    *(v2 + 320) = *(v2 + 208);
    v18 = *(v2 + 128);
    *(v2 + 224) = *(v2 + 112);
    *(v2 + 240) = v18;
    v19 = *(v2 + 160);
    *(v2 + 256) = *(v2 + 144);
    *(v2 + 272) = v19;
    sub_100013F2C(v2 + 224, &qword_1004AD500);
  }

  else
  {
    v20 = *(v2 + 672);
    v30 = *(v2 + 176);
    v31 = *(v2 + 192);
    v32 = *(v2 + 208);
    v26 = *(v2 + 112);
    v27 = *(v2 + 128);
    v28 = *(v2 + 144);
    v29 = *(v2 + 160);
    v22 = v20[1];
    v21 = v20[2];
    *(v2 + 224) = *v20;
    *(v2 + 240) = v22;
    *(v2 + 256) = v21;
    v23 = v20[6];
    v25 = v20[3];
    v24 = v20[4];
    *(v2 + 304) = v20[5];
    *(v2 + 320) = v23;
    *(v2 + 272) = v25;
    *(v2 + 288) = v24;
    sub_100013F2C(v2 + 224, &qword_1004AD500);
    v20[4] = v30;
    v20[5] = v31;
    v20[6] = v32;
    *v20 = v26;
    v20[1] = v27;
    v20[2] = v28;
    v20[3] = v29;
  }

  free(v2);
}

uint64_t (*Config.User.$admin.modify(uint64_t a1))()
{
  v3 = *(v1 + 112);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100269AC8;
}

uint64_t sub_100249A70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
  }

  else
  {

    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
  }

  return result;
}

uint64_t (*Config.User.$uid.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v3;
  a1[1] = v4;

  return sub_100249B50;
}

uint64_t sub_100249B50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 128) = v2;
    *(v4 + 136) = v3;
  }

  else
  {

    *(v4 + 128) = v2;
    *(v4 + 136) = v3;
  }

  return result;
}

uint64_t (*Config.User.$gid.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v3;
  a1[1] = v4;

  return sub_100249C24;
}

uint64_t sub_100249C24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 144) = v2;
    *(v4 + 152) = v3;
  }

  else
  {

    *(v4 + 144) = v2;
    *(v4 + 152) = v3;
  }

  return result;
}

uint64_t Config.User.$groups.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_100249CD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 160) = v3;
  *(a2 + 168) = v4;
  return result;
}

uint64_t Config.User.$groups.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

void (*Config.User.$groups.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 160);
  *(v3 + 24) = v5;
  v6 = *(v1 + 168);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100249DF8;
}

void sub_100249DF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 160) = v4;
    *(v5 + 168) = v3;
  }

  else
  {

    *(v5 + 160) = v4;
    *(v5 + 168) = v3;
  }

  free(v2);
}

uint64_t (*Config.User.$passwordlessSudo.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 176);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 184);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100249F2C;
}

uint64_t sub_100249F2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 176) = v2;
    *(v4 + 184) = v3;
  }

  else
  {

    *(v4 + 176) = v2;
    *(v4 + 184) = v3;
  }

  return result;
}

uint64_t Config.User.plaintextPassword.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t Config.User.plaintextPassword.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

uint64_t Config.User.$plaintextPassword.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t sub_10024A05C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[24] = v3;
  a2[25] = v4;
  a2[26] = v5;
  return result;
}

void (*Config.User.$plaintextPassword.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = v1[24];
  *(v3 + 32) = v5;
  v7 = v1[25];
  v6 = v1[26];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10024A158;
}

void sub_10024A158(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[24] = v3;
    v6[25] = v4;
    v6[26] = v5;
  }

  else
  {

    v6[24] = v3;
    v6[25] = v4;
    v6[26] = v5;
  }

  free(v2);
}

uint64_t Config.User.sshAuthorizedKey.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t Config.User.sshAuthorizedKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t Config.User.$sshAuthorizedKey.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_10024A2DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[27] = v3;
  a2[28] = v4;
  a2[29] = v5;
  return result;
}

void (*Config.User.$sshAuthorizedKey.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = v1[27];
  *(v3 + 32) = v5;
  v7 = v1[28];
  v6 = v1[29];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10024A3D8;
}

void sub_10024A3D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[27] = v3;
    v6[28] = v4;
    v6[29] = v5;
  }

  else
  {

    v6[27] = v3;
    v6[28] = v4;
    v6[29] = v5;
  }

  free(v2);
}

uint64_t Config.User.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025BFC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[5];
  v19 = v3[4];
  v20 = v9;
  v21 = v3[6];
  v10 = v3[1];
  v15 = *v3;
  v16 = v10;
  v11 = v3[3];
  v17 = v3[2];
  v18 = v11;
  v14 = 0;
  sub_10025C014();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v15) = *(v3 + 120);
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + 17);
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + 19);
    v14 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + 21);
    v14 = 4;
    sub_1000039E8(&qword_1004AD520);
    sub_10025C068();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = *(v3 + 184);
    v14 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 200);
    v14 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v3[14];
    v14 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_10024A874(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v17[12] = a1[12];
  v17[13] = v2;
  v17[14] = a1[14];
  v3 = a1[9];
  v17[8] = a1[8];
  v17[9] = v3;
  v4 = a1[11];
  v17[10] = a1[10];
  v17[11] = v4;
  v5 = a1[5];
  v17[4] = a1[4];
  v17[5] = v5;
  v6 = a1[7];
  v17[6] = a1[6];
  v17[7] = v6;
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[3];
  v17[2] = a1[2];
  v17[3] = v8;
  v9 = a2[13];
  v18[12] = a2[12];
  v18[13] = v9;
  v18[14] = a2[14];
  v10 = a2[9];
  v18[8] = a2[8];
  v18[9] = v10;
  v11 = a2[11];
  v18[10] = a2[10];
  v18[11] = v11;
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  return _s10DarwinInit6ConfigV4UserV2eeoiySbAE_AEtFZ_0(v17, v18);
}

void Config.User.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    Hasher._combine(_:)(1u);
    sub_100250E10(a1, v6, v5, v4, v3);
    sub_100250CA0();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(v1 + 120);
  if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v7 & 1;
  }

  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v1 + 136));
  Hasher._combine(_:)(*(v1 + 152));
  v9 = *(v1 + 168);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    sub_1001D2B80(a1, v9);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = *(v1 + 184);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = v10 & 1;
  }

  Hasher._combine(_:)(v11);
  if (!*(v1 + 208))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 232))
    {
      goto LABEL_15;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 232))
  {
    goto LABEL_19;
  }

LABEL_15:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Config.User.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.User.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10024AB58()
{
  Hasher.init(_seed:)();
  Config.User.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10024ABB0(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000011;
    if (a1 == 4)
    {
      v4 = 0x7370756F7267;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v1 = 0x69746E6568747561;
    v2 = 6580597;
    if (a1 != 2)
    {
      v2 = 6580583;
    }

    if (a1)
    {
      v1 = 0x6E696D6461;
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

unint64_t sub_10024AD0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV4UserV10CodingKeysO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10024AD3C@<X0>(uint64_t *a1@<X8>)
{
  result = Config.User.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10024AD70@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV4UserV10CodingKeysO8rawValueAGSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10024ADA8(uint64_t a1)
{
  v2 = sub_10025BFC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024ADE4(uint64_t a1)
{
  v2 = sub_10025BFC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024AE20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  sub_1002591F8(*a1);
  result = sub_100259198(v7);
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  return result;
}

uint64_t Config.User.Authentication.esc.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100259198(v4[1]);
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

uint64_t Config.User.Authentication.$esc.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];

  result = sub_1002591F8(v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_10024AF54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;

  return sub_1002591F8(v2);
}

uint64_t sub_10024AFB8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];

  sub_1002591F8(v4);

  result = sub_100259198(a2[1]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

void (*Config.User.Authentication.$esc.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  v6 = v1[1];
  *(v4 + 56) = v6;
  v7 = v1[2];
  *(v4 + 64) = v7;
  v8 = v1[3];
  *(v4 + 72) = v8;
  v9 = v1[4];
  *(v4 + 80) = v9;
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *v4 = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  *(v4 + 8) = v11;
  *(v4 + 24) = v10;

  sub_1002591F8(v6);
  return sub_10024B110;
}

void sub_10024B110(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[7];
  v8 = (*a1)[5];
  v9 = (*a1)[4];
  if (a2)
  {

    sub_1002591F8(v3);

    sub_100259198(v7);
    *v8 = v4;
    v8[1] = v3;
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v9;
    v10 = v2[1];

    sub_100259198(v10);
  }

  else
  {

    sub_100259198(v7);
    *v8 = v4;
    v8[1] = v3;
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v9;
  }

  free(v2);
}

uint64_t sub_10024B218@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  v8 = a1[12];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return sub_10025925C(v3);
}

uint64_t sub_10024B240(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a2[6];
  sub_10025925C(*a1);
  result = sub_100268A58(v10);
  a2[6] = v3;
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  return result;
}

double Config.User.Authentication.$memento.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v4 = *(v1 + 88);
  v11 = *(v1 + 72);
  v12 = v4;
  sub_100013E54(&v9, &v8, &qword_1004AD188);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

void (*Config.User.Authentication.$memento.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  *a1 = v3;
  *(v3 + 384) = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  *(v3 + 32) = *(v1 + 72);
  *(v3 + 48) = v6;
  *v3 = v4;
  *(v3 + 16) = v5;
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  *(v3 + 96) = *(v1 + 72);
  *(v3 + 112) = v9;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  sub_100013E54(v3, v3 + 128, &qword_1004AD188);
  return sub_10024B44C;
}

void sub_10024B44C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 80);
    *(v2 + 256) = *(v2 + 64);
    *(v2 + 272) = v4;
    v5 = *(v2 + 112);
    *(v2 + 288) = *(v2 + 96);
    *(v2 + 304) = v5;
    v6 = *(v3 + 56);
    v7 = *(v3 + 88);
    v8 = *(v3 + 40);
    *(v2 + 224) = *(v3 + 72);
    *(v2 + 240) = v7;
    *(v2 + 192) = v8;
    *(v2 + 208) = v6;
    sub_100013E54(v2 + 256, v2 + 320, &qword_1004AD188);
    sub_100013F2C(v2 + 192, &qword_1004AD188);
    v9 = *(v2 + 288);
    v10 = *(v2 + 304);
    v11 = *(v2 + 272);
    *(v3 + 40) = *(v2 + 256);
    *(v3 + 88) = v10;
    *(v3 + 72) = v9;
    *(v3 + 56) = v11;
    v12 = *(v2 + 112);
    *(v2 + 160) = *(v2 + 96);
    *(v2 + 176) = v12;
    v13 = *(v2 + 80);
    *(v2 + 128) = *(v2 + 64);
    *(v2 + 144) = v13;
    sub_100013F2C(v2 + 128, &qword_1004AD188);
  }

  else
  {
    v14 = *(v2 + 384);
    v18 = *(v2 + 64);
    v19 = *(v2 + 80);
    v20 = *(v2 + 96);
    v21 = *(v2 + 112);
    v15 = *(v14 + 56);
    v16 = *(v14 + 88);
    v17 = *(v14 + 40);
    *(v2 + 160) = *(v14 + 72);
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_100013F2C(v2 + 128, &qword_1004AD188);
    *(v14 + 40) = v18;
    *(v14 + 56) = v19;
    *(v14 + 72) = v20;
    *(v14 + 88) = v21;
  }

  free(v2);
}

double Config.User.Authentication.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

__n128 Config.User.Authentication.init(esc:memento:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = &_swiftEmptyArrayStorage;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = &_swiftEmptyArrayStorage;
  v6 = *(a5 + 16);
  *(a6 + 48) = *a5;
  *(a6 + 64) = v6;
  result = *(a5 + 32);
  *(a6 + 80) = result;
  *(a6 + 96) = *(a5 + 48);
  return result;
}

uint64_t Config.User.Authentication.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD548);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025C164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v13 = *(v3 + 8);
  v14 = v9;
  v17 = 0;
  sub_10025C1B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 56);
    v13 = *(v3 + 40);
    v14 = v10;
    v11 = *(v3 + 88);
    v15 = *(v3 + 72);
    v16 = v11;
    v17 = 1;
    sub_10025C20C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL static Config.User.Authentication.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a2 + 32);
  if (v2)
  {
    if (v5)
    {
      if (*(a1 + 16))
      {
        if (!v4)
        {
          goto LABEL_16;
        }

        v7 = a1;
        v8 = a2;
        v9 = sub_10024DC98(*(a1 + 16), *(a2 + 16));
        a2 = v8;
        v10 = v9;
        a1 = v7;
        if ((v10 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v4)
      {
        goto LABEL_16;
      }

      if (v3)
      {
        if (v6)
        {
          v12 = a1;
          v13 = a2;
          v14 = sub_10024DC98(v3, v6);
          a2 = v13;
          v15 = v14;
          a1 = v12;
          if (v15)
          {
            goto LABEL_13;
          }
        }
      }

      else if (!v6)
      {
LABEL_13:
        v16 = a1;
        v17 = a2;
        sub_1002591F8(v5);
        sub_1002591F8(v2);

        sub_100259198(v2);
        a1 = v16;
        a2 = v17;
        goto LABEL_14;
      }

LABEL_16:
      sub_1002591F8(v5);
      sub_1002591F8(v2);

      v11 = v2;
      goto LABEL_17;
    }

LABEL_8:
    sub_1002591F8(*(a2 + 8));
    sub_1002591F8(v2);
    sub_100259198(v2);
    v11 = v5;
LABEL_17:
    sub_100259198(v11);
    return 0;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_14:
  v18 = *(a1 + 56);
  v25[0] = *(a1 + 40);
  v25[1] = v18;
  v19 = *(a1 + 88);
  v25[2] = *(a1 + 72);
  v25[3] = v19;
  v20 = *(a2 + 56);
  v24[0] = *(a2 + 40);
  v24[1] = v20;
  v21 = *(a2 + 88);
  v24[2] = *(a2 + 72);
  v24[3] = v21;
  return sub_100222E60(v25, v24);
}

BOOL sub_10024BA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v17[0] = *(a1 + 40);
  v17[1] = v6;
  v7 = *(a1 + 88);
  v17[2] = *(a1 + 72);
  v17[3] = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 56);
  v14 = *(a2 + 88);
  v18[2] = *(a2 + 72);
  v18[3] = v14;
  v18[0] = v12;
  v18[1] = v13;
  return (sub_100251924(v2, v3, v4, v5, v8, v9, v10, v11) & 1) != 0 && sub_100222E60(v17, v18);
}

Swift::Int Config.User.Authentication.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_100250E10(v3, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = v1;
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  sub_100250CA0();
  return Hasher._finalize()();
}

Swift::Int sub_10024BB98()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = v5;
  v10 = *(v0 + 80);
  v11 = *(v0 + 96);
  Hasher.init(_seed:)();
  sub_100250E10(v7, v1, v2, v3, v4);
  sub_100250CA0();
  return Hasher._finalize()();
}

Swift::Int sub_10024BC7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = v5;
  v10 = *(v0 + 80);
  v11 = *(v0 + 96);
  Hasher.init(_seed:)();
  sub_100250E10(v7, v1, v2, v3, v4);
  sub_100250CA0();
  return Hasher._finalize()();
}

uint64_t Config.User.Authentication.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F746E656D656DLL;
  }

  else
  {
    return 6517605;
  }
}

uint64_t sub_10024BD4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F746E656D656DLL;
  }

  else
  {
    v3 = 6517605;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F746E656D656DLL;
  }

  else
  {
    v5 = 6517605;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10024BDEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024BE68()
{
  String.hash(into:)();
}

Swift::Int sub_10024BED0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10024BF54(uint64_t *a1@<X8>)
{
  v2 = 6517605;
  if (*v1)
  {
    v2 = 0x6F746E656D656DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10024BF8C()
{
  if (*v0)
  {
    return 0x6F746E656D656DLL;
  }

  else
  {
    return 6517605;
  }
}

uint64_t sub_10024BFDC(uint64_t a1)
{
  v2 = sub_10025C164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C018(uint64_t a1)
{
  v2 = sub_10025C164();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024C054(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t (*Config.User.Authentication.ESC.$principals.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_10024C13C;
}

uint64_t Config.User.Authentication.Memento.groups.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Config.User.Authentication.ESC.$groups.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t sub_10024C1A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t (*Config.User.Authentication.ESC.$groups.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_10024C290;
}

uint64_t Config.User.Authentication.ESC.init(from:)(void *a1)
{
  result = sub_100255A8C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10024C308@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100255A8C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t static Config.User.Authentication.ESC.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6 || (sub_10024DC98(a2, a6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8 && (sub_10024DC98(a4, a8) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10024C3C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!v6 || (sub_10024DC98(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7 && (sub_10024DC98(v5, v7) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

Swift::Int Config.User.Authentication.ESC.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v7, a2, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10024C494()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10024C4F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  DInitAppleConnectSSHConfig.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10024C57C(uint64_t a1)
{
  v2 = sub_100268B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C5B8(uint64_t a1)
{
  v2 = sub_100268B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.User.Authentication.Memento.$users.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t (*Config.User.Authentication.Memento.$users.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100269ACC;
}

void sub_10024C6C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *v5 = v4;
    v5[1] = v3;
  }

  else
  {

    *v5 = v4;
    v5[1] = v3;
  }

  free(v2);
}

uint64_t Config.User.Authentication.Memento.$groups.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t (*Config.User.Authentication.Memento.$groups.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100269AD0;
}

void sub_10024C82C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
  }

  else
  {

    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
  }

  free(v2);
}

uint64_t Config.User.Authentication.Memento.$ldapServer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10024C914(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[4] = v3;
  a2[5] = v4;
  a2[6] = v5;
  return result;
}

void (*Config.User.Authentication.Memento.$ldapServer.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = v1[4];
  *(v3 + 32) = v5;
  v7 = v1[5];
  v6 = v1[6];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10024CA10;
}

void sub_10024CA10(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[4] = v3;
    v6[5] = v4;
    v6[6] = v5;
  }

  else
  {

    v6[4] = v3;
    v6[5] = v4;
    v6[6] = v5;
  }

  free(v2);
}

void Config.User.Authentication.Memento.init()(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = 0;
  a1[2] = &_swiftEmptyArrayStorage;
  a1[3] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = &_swiftEmptyArrayStorage;
}

uint64_t Config.User.Authentication.Memento.init(users:groups:ldapServer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = result;
  *a5 = &_swiftEmptyArrayStorage;
  a5[2] = &_swiftEmptyArrayStorage;
  a5[3] = a2;
  a5[4] = &_swiftEmptyArrayStorage;
  a5[5] = a3;
  a5[6] = a4;
  return result;
}

BOOL Config.User.Authentication.Memento.isEmpty.getter()
{
  if (v0[1])
  {
    return 0;
  }

  if (v0[3])
  {
    return 0;
  }

  return v0[6] == 0;
}

uint64_t Config.User.Authentication.Memento.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD568);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025C424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v10 = *(v3 + 8);
  v11 = 0;
  sub_1000039E8(&qword_1004A6B48);
  sub_1000BD1B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  *&v10 = *(v3 + 24);
  v11 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v10 = *(v3 + 40);
  v11 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL sub_10024CD94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s10DarwinInit6ConfigV4UserV14AuthenticationV7MementoV2eeoiySbAI_AItFZ_0(v5, v7);
}

void Config.User.Authentication.Memento.hash(into:)()
{
  v1 = v0[1];
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = *(v1 + 16);
    Hasher._combine(_:)(v2);
    if (v2)
    {
      v3 = v1 + 40;
      do
      {

        String.hash(into:)();

        v3 += 16;
        --v2;
      }

      while (v2);
    }

    v4 = v0[3];
    if (v4)
    {
LABEL_6:
      Hasher._combine(_:)(1u);
      v5 = *(v4 + 16);
      Hasher._combine(_:)(v5);
      if (v5)
      {
        v6 = v4 + 40;
        do
        {

          String.hash(into:)();

          v6 += 16;
          --v5;
        }

        while (v5);
      }

      if (v0[6])
      {
        goto LABEL_10;
      }

LABEL_15:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v4 = v0[3];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  Hasher._combine(_:)(0);
  if (!v0[6])
  {
    goto LABEL_15;
  }

LABEL_10:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Config.User.Authentication.Memento.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.User.Authentication.Memento.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10024CF7C()
{
  Hasher.init(_seed:)();
  Config.User.Authentication.Memento.hash(into:)();
  return Hasher._finalize()();
}

DarwinInit::Config::User::Authentication::Memento::CodingKeys_optional __swiftcall Config.User.Authentication.Memento.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488C98, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.User.Authentication.Memento.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7372657375;
  }

  if (a1 == 1)
  {
    return 0x7370756F7267;
  }

  return 0x7265735F7061646CLL;
}

uint64_t sub_10024D06C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7370756F7267;
  if (v2 != 1)
  {
    v4 = 0x7265735F7061646CLL;
    v3 = 0xEB00000000726576;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7372657375;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7370756F7267;
  if (*a2 != 1)
  {
    v8 = 0x7265735F7061646CLL;
    v7 = 0xEB00000000726576;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7372657375;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10024D174()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024D218()
{
  String.hash(into:)();
}

Swift::Int sub_10024D2A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::User::Authentication::Memento::CodingKeys_optional sub_10024D348@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::User::Authentication::Memento::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.User.Authentication.Memento.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10024D378(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7370756F7267;
  if (v2 != 1)
  {
    v5 = 0x7265735F7061646CLL;
    v4 = 0xEB00000000726576;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7372657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10024D3D8()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x7265735F7061646CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7372657375;
  }
}

DarwinInit::Config::User::Authentication::Memento::CodingKeys_optional sub_10024D434@<W0>(uint64_t a1@<X0>, DarwinInit::Config::User::Authentication::Memento::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.User.Authentication.Memento.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10024D46C(uint64_t a1)
{
  v2 = sub_10025C424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024D4A8(uint64_t a1)
{
  v2 = sub_10025C424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024D4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Package(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      type metadata accessor for URL();
      v15 = *(v5 + 72);
      do
      {
        sub_100259EBC(v13, v10, type metadata accessor for Config.Package);
        sub_100259EBC(v14, v8, type metadata accessor for Config.Package);
        sub_1000039E8(&qword_1004ACD08);
        sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100259F24(v8, type metadata accessor for Config.Package);
        sub_100259F24(v10, type metadata accessor for Config.Package);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10024D708(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    if (a1 != a2)
    {
      v5 = 0;
      while (1)
      {
        v7 = v4 + v5;
        v8 = *(v4 + v5 + 48);
        v10 = *(v4 + v5 + 64);
        v9 = *(v4 + v5 + 72);
        v11 = *(v4 + v5 + 88);
        v12 = *(v4 + v5 + 104);
        v13 = *(v4 + v5 + 112);
        v14 = *(v4 + v5 + 128);
        v15 = *(v4 + v5 + 136);
        v51 = *(v4 + v5 + 152);
        v16 = v3 + v5;
        v17 = *(v3 + v5 + 48);
        v18 = *(v3 + v5 + 64);
        v19 = *(v3 + v5 + 72);
        v20 = *(v3 + v5 + 88);
        v22 = *(v16 + 104);
        v21 = *(v16 + 112);
        v23 = *(v16 + 136);
        v49 = *(v16 + 128);
        v50 = v14;
        v52 = *(v16 + 152);
        if (v8)
        {
          if (!v17)
          {
            return 0;
          }

          if (*(v7 + 40) != *(v16 + 40) || v8 != v17)
          {
            v45 = v13;
            v46 = v5;
            v43 = *(v16 + 104);
            v44 = v12;
            v24 = *(v16 + 136);
            v25 = v15;
            v26 = *(v16 + 112);
            v27 = v11;
            v28 = v18;
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v18 = v28;
            v11 = v27;
            v21 = v26;
            v15 = v25;
            v23 = v24;
            v22 = v43;
            v12 = v44;
            v13 = v45;
            v5 = v46;
            if ((v29 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v17)
        {
          return 0;
        }

        if (v9)
        {
          if (!v19)
          {
            return 0;
          }

          if (v10 != v18 || v9 != v19)
          {
            v30 = v15;
            v31 = v21;
            v32 = v11;
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v11 = v32;
            v21 = v31;
            v15 = v30;
            if ((v33 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v11 == 2)
        {
          if (v20 != 2)
          {
            return 0;
          }
        }

        else if (v20 == 2 || ((v11 ^ v20) & 1) != 0)
        {
          return 0;
        }

        if (v13)
        {
          if (!v21)
          {
            return 0;
          }

          if (v12 != v22 || v13 != v21)
          {
            v34 = v15;
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v15 = v34;
            if ((v35 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v21)
        {
          return 0;
        }

        if (v15)
        {
          v3 = a2;
          v36 = v51;
          v37 = v52;
          if (!v23 || (v50 != v49 || v15 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v3 = a2;
          v36 = v51;
          v37 = v52;
          if (v23)
          {
            return 0;
          }
        }

        if (v36 == 4)
        {
          if (v37 != 4)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v37 == 4)
        {
          return 0;
        }

        if (v36 <= 1)
        {
          break;
        }

        if (v36 == 2)
        {
          v38 = 0x5277656976657250;
          v39 = 0xEC00000079646165;
LABEL_48:
          if (v37 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_53;
        }

        v38 = 0x4365727574616546;
        v39 = 0xEF6574656C706D6FLL;
        if (v37 <= 1)
        {
LABEL_49:
          v40 = 0x706D6F4365646F43;
          v41 = 0xEC0000006574656CLL;
          if (!v37)
          {
            v41 = 0x800000010043D000;
            if (v38 != 0xD000000000000010)
            {
              goto LABEL_59;
            }

            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_53:
        if (v37 != 2)
        {
          v41 = 0xEF6574656C706D6FLL;
          if (v38 != 0x4365727574616546)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v40 = 0x5277656976657250;
        v41 = 0xEC00000079646165;
LABEL_55:
        if (v38 != v40)
        {
          goto LABEL_59;
        }

LABEL_56:
        if (v39 == v41)
        {

          goto LABEL_6;
        }

LABEL_59:
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          return 0;
        }

LABEL_6:
        v5 += 128;
        result = 1;
        --v2;
        v4 = a1;
        if (!v2)
        {
          return result;
        }
      }

      v38 = 0x706D6F4365646F43;
      v39 = 0xEC0000006574656CLL;
      if (!v36)
      {
        v38 = 0xD000000000000010;
        v39 = 0x800000010043D000;
        if (v37 <= 1)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      goto LABEL_48;
    }
  }

  return 1;
}

uint64_t sub_10024DAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *v4;
      v7 = v4[1];
      v9 = v4[3];
      v8 = v4[4];
      v25 = v4[7];
      v10 = *(v3 - 2);
      v11 = *v3;
      v12 = v3[1];
      v14 = v3[3];
      v13 = v3[4];
      v23 = v3[6];
      v24 = v3[7];
      v22 = v4[6];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 3) != *(v3 - 3) || v5 != v10)
        {
          v21 = v4[4];
          v15 = v3[4];
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v13 = v15;
          v8 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v7 != v12)
      {
        v17 = v8;
        v18 = v13;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = v18;
        v8 = v17;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v8)
      {
        if (!v13 || (v9 != v14 || v8 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v13)
      {
        return 0;
      }

      if (v25)
      {
        if (!v24 || (v22 != v23 || v25 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v24)
      {
        return 0;
      }

      v4 += 12;
      v3 += 12;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10024DC98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10024DD28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    result = 0;
    v5 = v4 + 48 * v3;
    v6 = a2 + 32 + 48 * v3;
    if (*(v5 + 8) != *(v6 + 8) || ((*(v5 + 24) ^ *(v6 + 24)) & 1) != 0)
    {
      return result;
    }

    v7 = *(v5 + 40);
    v8 = *(v6 + 40);
    if (v7)
    {
      if (!v8)
      {
        return 0;
      }

      v9 = *(v7 + 16);
      if (v9 != *(v8 + 16))
      {
        return 0;
      }

      if (v9)
      {
        v10 = v7 == v8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = (v7 + 56);
        v12 = (v8 + 56);
        while (v9)
        {
          result = 0;
          if (*(v11 - 16) != *(v12 - 16) || ((*v11 ^ *v12) & 1) != 0)
          {
            return result;
          }

          v11 += 32;
          v12 += 32;
          if (!--v9)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v8)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024DE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 56);
  v4 = (a2 + 56);
  do
  {
    v5 = (*(v3 - 16) != *(v4 - 16)) | *v3 ^ *v4;
    if ((*(v3 - 16) != *(v4 - 16)) | (*v3 ^ *v4) & 1)
    {
      break;
    }

    v3 += 32;
    v4 += 32;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_10024DEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      v5 = *v3;
      if (*v4)
      {
        if (v6 != v7)
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v8 = v6 == v7 && *(v4 - 1) == *(v3 - 1);
        if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10024DF64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    result = 0;
    v5 = (v4 + 16 * v3);
    v6 = (a2 + 32 + 16 * v3);
    if (*v5 != *v6 || ((v5[1] ^ v6[1]) & 1) != 0)
    {
      return result;
    }

    v7 = *(v5 + 1);
    v8 = *(v6 + 1);
    if (v7)
    {
      if (!v8)
      {
        return 0;
      }

      v9 = *(v7 + 16);
      if (v9 != *(v8 + 16))
      {
        return 0;
      }

      if (v9)
      {
        v10 = v7 == v8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = (v7 + 33);
        v12 = (v8 + 33);
        while (v9)
        {
          result = 0;
          if (*(v11 - 1) != *(v12 - 1) || ((*v11 ^ *v12) & 1) != 0)
          {
            return result;
          }

          v11 += 2;
          v12 += 2;
          if (!--v9)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v8)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024E060(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static JSON.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10024E120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000039E8(&qword_1004AE268);
  __chkstk_darwin(v48);
  v8 = &v39 - v7;
  v9 = type metadata accessor for ConfigLoader.LoadingKey(0);
  v10 = __chkstk_darwin(v9);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = (&v39 - v13);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - v19;
  __chkstk_darwin(v18);
  v24 = &v39 - v22;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v42 = v6;
  v43 = v23;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v47 = *(v21 + 72);
  v40 = v20;
  v41 = &v39 - v22;
  while (1)
  {
    sub_100259EBC(v27, v24, type metadata accessor for ConfigLoader.LoadingKey);
    sub_100259EBC(v28, v20, type metadata accessor for ConfigLoader.LoadingKey);
    v29 = *(v48 + 48);
    sub_100259EBC(v24, v8, type metadata accessor for ConfigLoader.LoadingKey);
    sub_100259EBC(v20, &v8[v29], type metadata accessor for ConfigLoader.LoadingKey);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100259EBC(v8, v45, type metadata accessor for ConfigLoader.LoadingKey);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_24;
        }

        if (*v45 != *&v8[v29])
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_100259EBC(v8, v46, type metadata accessor for ConfigLoader.LoadingKey);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_24;
        }

        if (*v46 != v8[v29])
        {
LABEL_21:
          sub_100259F24(v8, type metadata accessor for ConfigLoader.LoadingKey);
          goto LABEL_25;
        }
      }

      goto LABEL_5;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_100259EBC(v8, v17, type metadata accessor for ConfigLoader.LoadingKey);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_24;
    }

    v31 = *v17;
    v32 = v8[v29];
    sub_100259F24(v8, type metadata accessor for ConfigLoader.LoadingKey);
    if (v31 != v32)
    {
      goto LABEL_25;
    }

LABEL_6:
    sub_100259F24(v20, type metadata accessor for ConfigLoader.LoadingKey);
    sub_100259F24(v24, type metadata accessor for ConfigLoader.LoadingKey);
    v28 += v47;
    v27 += v47;
    if (!--v25)
    {
      return 1;
    }
  }

  v33 = v17;
  v34 = v43;
  sub_100259EBC(v8, v43, type metadata accessor for ConfigLoader.LoadingKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v9;
    v36 = v42;
    sub_100268EDC(&v8[v29], v42, type metadata accessor for DInitConfigSource);
    v44 = _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(v34, v36);
    v37 = v36;
    v9 = v35;
    v20 = v40;
    v24 = v41;
    sub_100259F24(v37, type metadata accessor for DInitConfigSource);
    sub_100259F24(v34, type metadata accessor for DInitConfigSource);
    v17 = v33;
    if ((v44 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    sub_100259F24(v8, type metadata accessor for ConfigLoader.LoadingKey);
    goto LABEL_6;
  }

  sub_100259F24(v34, type metadata accessor for DInitConfigSource);
LABEL_24:
  sub_100013F2C(v8, &qword_1004AE268);
LABEL_25:
  sub_100259F24(v20, type metadata accessor for ConfigLoader.LoadingKey);
  sub_100259F24(v24, type metadata accessor for ConfigLoader.LoadingKey);
  return 0;
}

uint64_t sub_10024E738(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[2];
    *&v20[32] = v5[3];
    v21 = *(v5 + 8);
    v9 = *v5;
    *v20 = v5[1];
    *&v20[16] = v8;
    v19 = v9;
    v10 = v6[3];
    *&v23[16] = v6[2];
    *&v23[32] = v10;
    v24 = *(v6 + 8);
    v11 = v6[1];
    v22 = *v6;
    *v23 = v11;
    if (v19 != v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v17 = *v23;
    v18 = *v20;
    sub_1001B546C(&v19, v16);
    sub_1001B546C(&v22, v16);

    v12 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v18, &v17);

    if ((v12 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (*&v20[16])
    {
      if (!*&v23[16] || *&v20[8] != *&v23[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_32:
        sub_1001B54A4(&v22);
        sub_1001B54A4(&v19);
        return 0;
      }
    }

    else if (*&v23[16])
    {
      goto LABEL_32;
    }

    if (*&v20[32])
    {
      if (!*&v23[32] || *&v20[24] != *&v23[24] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*&v23[32])
    {
      goto LABEL_32;
    }

    v13 = v24;
    if (v21)
    {
      if (!v24)
      {
        goto LABEL_32;
      }

      if (*&v20[40] == *&v23[40] && v21 == v24)
      {
        sub_1001B54A4(&v22);
        sub_1001B54A4(&v19);
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1001B54A4(&v22);
        sub_1001B54A4(&v19);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      sub_1001B54A4(&v22);
      sub_1001B54A4(&v19);
      if (v13)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

uint64_t sub_10024E98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if ((~v5 & 0xF000000000000007) != 0)
      {
        v11 = v5;
        if ((~v6 & 0xF000000000000007) == 0)
        {

          sub_1001C8518(v5);

          sub_1001C8518(v6);
          sub_1001C8518(v5);
          sub_1001C8518(v6);
          sub_1001C8518(v5);

LABEL_20:
          sub_1001C855C(v5);
          sub_1001C855C(v6);

          sub_1001C855C(v6);

          sub_1001C855C(v5);
          return 0;
        }

        v10 = v6;

        sub_1001C8518(v5);

        sub_1001C8518(v6);
        sub_1001C8518(v5);
        sub_1001C8518(v6);
        sub_1001C8518(v5);
        v8 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v11, &v10);

        sub_1001C855C(v5);

        sub_1001C855C(v6);

        sub_1001C855C(v5);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((~v6 & 0xF000000000000007) != 0)
        {

          sub_1001C8518(v5);

          sub_1001C8518(v6);
          sub_1001C8518(v5);
          sub_1001C8518(v6);
          goto LABEL_20;
        }

        sub_1001C8518(v5);
        sub_1001C8518(v6);
        sub_1001C855C(v5);
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10024EBC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v6;
      v11 = v5;
      swift_retain_n();
      swift_retain_n();

      v8 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v11, &v10);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10024ECF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    while (1)
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v4 + 8);
      v10 = v4[3];
      v40 = v4[2];
      v11 = v4[5];
      v41 = v4[7];
      v12 = *(v3 - 2);
      v13 = *(v3 - 1);
      v14 = *v3;
      v15 = *(v3 + 8);
      v17 = v3[2];
      v16 = v3[3];
      v18 = v3[5];
      v39 = v3[4];
      v37 = v4[4];
      v38 = v3[6];
      v42 = v3[7];
      v36 = v4[6];
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v4 - 3) != *(v3 - 3) || v6 != v12)
        {
          v32 = *(v3 - 1);
          v33 = v4[5];
          v35 = v4[3];
          v19 = v3[3];
          v34 = *(v3 + 8);
          v20 = *(v4 + 8);
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v13 = v32;
          v11 = v33;
          v9 = v20;
          v15 = v34;
          v16 = v19;
          v10 = v35;
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v8)
      {
        if (!v14)
        {
          return 0;
        }

        if (v7 != v13 || v8 != v14)
        {
          v22 = v11;
          v23 = v18;
          v24 = v16;
          v25 = v17;
          v26 = v9;
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v9 = v26;
          v17 = v25;
          v16 = v24;
          v18 = v23;
          v11 = v22;
          if ((v27 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v9 == 2)
      {
        if (v15 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15 == 2 || ((v15 ^ v9) & 1) != 0)
        {
          return result;
        }
      }

      if (v10)
      {
        v28 = v42;
        if (!v16)
        {
          return 0;
        }

        if (v40 != v17 || v10 != v16)
        {
          v29 = v11;
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v11 = v29;
          if ((v30 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = v42;
        if (v16)
        {
          return 0;
        }
      }

      if (v11)
      {
        v31 = v41;
        if (!v18 || (v37 != v39 || v11 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v31 = v41;
        if (v18)
        {
          return 0;
        }
      }

      if (v31)
      {
        if (!v28 || (v36 != v38 || v31 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v28)
      {
        return 0;
      }

      v4 += 11;
      v3 += 11;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_10024EFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_100259EBC(v20, v17, a4);
        sub_100259EBC(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_100259F24(v14, a6);
        sub_100259F24(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10024F188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v61 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v50 - v8;
  v9 = sub_1000039E8(&qword_1004ABB90);
  v10 = __chkstk_darwin(v9 - 8);
  result = __chkstk_darwin(v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = sub_1000039E8(&qword_1004ABB98);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_10003E154(v20, v54, &qword_1004ABB90);
    v34 = sub_1000039E8(&qword_1004ABB98);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_100013364(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = sub_1000039E8(&qword_1004ABB98);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F698(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v3 + 56) + 240 * v10);
      v20 = v18[1];
      v19 = v18[2];
      v51[0] = *v18;
      v51[1] = v20;
      v51[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v51[5] = v18[5];
      v51[6] = v21;
      v51[3] = v23;
      v51[4] = v22;
      v24 = v18[10];
      v26 = v18[7];
      v25 = v18[8];
      v51[9] = v18[9];
      v51[10] = v24;
      v51[7] = v26;
      v51[8] = v25;
      v27 = v18[14];
      v29 = v18[11];
      v28 = v18[12];
      v51[13] = v18[13];
      v51[14] = v27;
      v51[11] = v29;
      v51[12] = v28;
      v63 = v18[11];
      v64 = v18[12];
      v65 = v18[13];
      v66 = v18[14];
      v59 = v18[7];
      v60 = v18[8];
      v61 = v18[9];
      v62 = v18[10];
      v55 = v18[3];
      v56 = v18[4];
      v57 = v18[5];
      v58 = v18[6];
      v52 = *v18;
      v53 = v18[1];
      v54 = v18[2];
      *&v67 = v16;
      *(&v67 + 1) = v17;
      v80 = v64;
      v81 = v65;
      v82 = v66;
      v76 = v60;
      v77 = v61;
      v78 = v62;
      v79 = v63;
      v72 = v56;
      v73 = v57;
      v74 = v58;
      v75 = v59;
      v68 = v52;
      v69 = v53;
      v70 = v54;
      v71 = v55;
      DInitData.init(rawValue:)(&v67);

      sub_100189980(v51, &v50);
      v30 = *(&v67 + 1);
      v31 = v67;
      v95 = v80;
      v96 = v81;
      v97 = v82;
      v91 = v76;
      v92 = v77;
      v94 = v79;
      v93 = v78;
      v87 = v72;
      v88 = v73;
      v90 = v75;
      v89 = v74;
      v83 = v68;
      v84 = v69;
      v33 = v70;
      v32 = v71;
      v12 = v4;
LABEL_16:
      v85 = v33;
      v86 = v32;
      v80 = v95;
      v81 = v96;
      v82 = v97;
      v76 = v91;
      v77 = v92;
      v78 = v93;
      v79 = v94;
      v72 = v87;
      v73 = v88;
      v74 = v89;
      v75 = v90;
      v68 = v83;
      v69 = v84;
      v70 = v33;
      v71 = v32;
      *&v67 = v31;
      *(&v67 + 1) = v30;
      result = sub_1001D84A0(&v67);
      if (result == 1)
      {
        break;
      }

      v99[12] = v95;
      v99[13] = v96;
      v99[14] = v97;
      v99[8] = v91;
      v99[9] = v92;
      v99[11] = v94;
      v99[10] = v93;
      v99[4] = v87;
      v99[5] = v88;
      v99[7] = v90;
      v99[6] = v89;
      v99[0] = v83;
      v99[1] = v84;
      v99[3] = v86;
      v99[2] = v85;
      v34 = sub_100013364(v31, v30);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        sub_1001D87FC(v99);
        return 0;
      }

      v37 = (*(a2 + 56) + 240 * v34);
      v39 = v37[1];
      v38 = v37[2];
      v98[0] = *v37;
      v98[1] = v39;
      v98[2] = v38;
      v40 = v37[5];
      v42 = v37[3];
      v41 = v37[4];
      v98[6] = v37[6];
      v98[5] = v40;
      v98[3] = v42;
      v98[4] = v41;
      v43 = v37[9];
      v45 = v37[7];
      v44 = v37[8];
      v98[10] = v37[10];
      v98[9] = v43;
      v98[7] = v45;
      v98[8] = v44;
      v46 = v37[13];
      v48 = v37[11];
      v47 = v37[12];
      v98[14] = v37[14];
      v98[13] = v46;
      v98[11] = v48;
      v98[12] = v47;
      sub_100189980(v98, &v52);
      v49 = _s10DarwinInit6ConfigV4UserV2eeoiySbAE_AEtFZ_0(v98, v99);
      sub_1001D87FC(v98);
      result = sub_1001D87FC(v99);
      if (!v49)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_1001D8850(&v67);
        v7 = 0;
        v30 = *(&v67 + 1);
        v31 = v67;
        v95 = v80;
        v96 = v81;
        v97 = v82;
        v91 = v76;
        v92 = v77;
        v94 = v79;
        v93 = v78;
        v87 = v72;
        v88 = v73;
        v90 = v75;
        v89 = v74;
        v83 = v68;
        v84 = v69;
        v33 = v70;
        v32 = v71;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10024FB5C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_100013364(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v20 = a3(v19, v16);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024FCD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_100013364(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = static JSON.== infix(_:_:)(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024FE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = sub_1000039E8(&qword_1004ABB78);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = (&v49 - v15);
  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v54 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v53;
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    sub_100259EBC(*(v50 + 56) + *(v5 + 72) * v22, v10, type metadata accessor for Config.Cryptex.Cryptex);
    v31 = sub_1000039E8(&qword_1004ABB80);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    sub_100268EDC(v10, v23 + v32, type metadata accessor for Config.Cryptex.Cryptex);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v52;
    sub_10003E154(v23, v52, &qword_1004ABB78);
    v34 = sub_1000039E8(&qword_1004ABB80);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v10;
    v38 = v5;
    v39 = *(v34 + 48);
    v41 = *v33;
    v40 = v33[1];
    sub_100268EDC(v33 + v39, v8, type metadata accessor for Config.Cryptex.Cryptex);
    v42 = v51;
    v43 = sub_100013364(v41, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      sub_100259F24(v8, type metadata accessor for Config.Cryptex.Cryptex);
      return 0;
    }

    v46 = *(v42 + 56);
    v5 = v38;
    v10 = v37;
    sub_100259EBC(v46 + *(v38 + 72) * v43, v37, type metadata accessor for Config.Cryptex.Cryptex);
    v47 = _s10DarwinInit6ConfigV7CryptexVADV2eeoiySbAF_AFtFZ_0(v37, v8);
    sub_100259F24(v37, type metadata accessor for Config.Cryptex.Cryptex);
    result = sub_100259F24(v8, type metadata accessor for Config.Cryptex.Cryptex);
    v20 = v54;
    if (!v47)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v53;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = sub_1000039E8(&qword_1004ABB80);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v54 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v54 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_100250308(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    v4 = *(a2 + 16);
    Hasher._combine(_:)(v4);
    if (v4)
    {
      v5 = a2 + 40;
      do
      {

        String.hash(into:)();

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a2 & 1);
  }
}

uint64_t sub_1002503A0(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000039E8(&qword_1004AE260);
  __chkstk_darwin(v7);
  v9 = &v11[-v8];
  sub_100013E54(v2, &v11[-v8], &qword_1004AE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v11, v9, sizeof(v11));
    Hasher._combine(_:)(1uLL);
    DInitConfig.hash(into:)(a1);
    memcpy(v12, v11, sizeof(v12));
    return sub_1001D711C(v12);
  }

  else
  {
    sub_100268EDC(v9, v6, type metadata accessor for DInitConfigSource);
    Hasher._combine(_:)(0);
    DInitConfigSource.hash(into:)();
    return sub_100259F24(v6, type metadata accessor for DInitConfigSource);
  }
}

void sub_100250550()
{
  if (*v0 && ((v1 = *(v0 + 40), v2 = *(v0 + 24), v3 = *(v0 + 8), Hasher._combine(_:)(1u), v3 != 2) ? (Hasher._combine(_:)(1u), v4 = v3 & 1) : (v4 = 0), (Hasher._combine(_:)(v4), v2 != 2) ? (Hasher._combine(_:)(1u), v5 = v2 & 1) : (v5 = 0), Hasher._combine(_:)(v5), v1))
  {
    Hasher._combine(_:)(1u);
    v6 = *(v1 + 16);
    Hasher._combine(_:)(v6);
    if (v6)
    {
      v7 = v1 + 40;
      do
      {

        String.hash(into:)();

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

void sub_100250654(uint64_t a1)
{
  if (!*v1)
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  Hasher._combine(_:)(1u);
  if (!v6)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  Hasher._combine(_:)(1u);
  v8 = *(v7 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {

      String.hash(into:)();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_7:
  Hasher._combine(_:)(1u);
  sub_1001D4AA0(a1, v3);
  if (v5)
  {
LABEL_8:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v4);
}

void sub_100250768(uint64_t a1)
{
  v20[1] = a1;
  v2 = type metadata accessor for URL();
  v20[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Config.Diavlo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000039E8(&qword_1004AD1B8);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - v13;
  sub_100013E54(v1, v20 - v13, &qword_1004AD1B8);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100268EDC(v14, v11, type metadata accessor for Config.Diavlo);
    Hasher._combine(_:)(1u);
    v15 = sub_1000039E8(&qword_1004ACD10);
    sub_100013E54(&v11[*(v15 + 44)], v7, &qword_1004A6D30);
    v16 = v20[0];
    if ((*(v20[0] + 48))(v7, 1, v2) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      (*(v16 + 32))(v4, v7, v2);
      Hasher._combine(_:)(1u);
      sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v16 + 8))(v4, v2);
    }

    v17 = &v11[*(v8 + 20)];
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    if (v19 >> 60 == 15)
    {
      Hasher._combine(_:)(0);

      sub_100031994(v18, v19);
    }

    else
    {
      Hasher._combine(_:)(1u);

      sub_100031994(v18, v19);
      Data.hash(into:)();
    }

    sub_100259F24(v11, type metadata accessor for Config.Diavlo);

    sub_100031914(v18, v19);
  }
}

void sub_100250B54()
{
  if (!*v0)
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 112);
  Hasher._combine(_:)(1u);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1 & 1);
    if (v2)
    {
LABEL_4:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_12:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_6:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

void sub_100250CA0()
{
  if (!*v0)
  {
    goto LABEL_16;
  }

  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[6];
  Hasher._combine(_:)(1u);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v4 = *(v1 + 16);
    Hasher._combine(_:)(v4);
    if (v4)
    {
      v5 = v1 + 40;
      do
      {

        String.hash(into:)();

        v5 += 16;
        --v4;
      }

      while (v4);
    }

    if (v2)
    {
LABEL_7:
      Hasher._combine(_:)(1u);
      v6 = *(v2 + 16);
      Hasher._combine(_:)(v6);
      if (v6)
      {
        v7 = v2 + 40;
        do
        {

          String.hash(into:)();

          v7 += 16;
          --v6;
        }

        while (v6);
      }

      if (v3)
      {
        goto LABEL_11;
      }

LABEL_16:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_7;
    }
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_11:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

void sub_100250E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  Hasher._combine(_:)(1u);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v7 = *(a3 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = a3 + 40;
      do
      {

        String.hash(into:)();

        v8 += 16;
        --v7;
      }

      while (v7);
    }

    if (a5)
    {
      goto LABEL_7;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_7:
  Hasher._combine(_:)(1u);
  v9 = *(a5 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = a5 + 40;
    do
    {

      String.hash(into:)();

      v10 += 16;
      --v9;
    }

    while (v9);
  }
}

uint64_t _s10DarwinInit6ConfigV11FeatureFlagV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = *(a1 + 80);
  v18 = *(a2 + 80);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (*(a1 + 72) != *(a2 + 72) || v17 != v18)
    {
      v19 = a1;
      v20 = a2;
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v20;
      v22 = v21;
      a1 = v19;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v23 = *(a1 + 104);
  v24 = *(a2 + 104);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v23 != v24)
    {
      v25 = a1;
      v26 = a2;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v26;
      v28 = v27;
      a1 = v25;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_36:
    v29 = *(a1 + 120);
    v30 = *(a2 + 120);
    if (v29 == 4)
    {
      if (v30 != 4)
      {
        return 0;
      }
    }

    else if (v30 == 4 || (sub_1001DDFCC(v29, v30) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t _s10DarwinInit6ConfigV14AuthenticationV8WestgateV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t _s10DarwinInit6ConfigV14AuthenticationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v22[0] = *(a1 + 40);
  v22[1] = v8;
  v22[2] = *(a1 + 72);
  v9 = *(a1 + 96);
  v23 = *(a1 + 88);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 96);
  v25 = *(a2 + 88);
  v17 = *(a2 + 72);
  v18 = *(a2 + 40);
  v24[1] = *(a2 + 56);
  v24[2] = v17;
  v24[0] = v18;
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  if (v4 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v4 ^ v12) & 1) != 0)
  {
    return 0;
  }

  if ((sub_1002230B4(v5, v6, v7, v13, v14, v15) & 1) == 0 || (sub_10022316C(v22, v24, &qword_1004AE448) & 1) == 0)
  {
    return 0;
  }

  return sub_1002230B4(v9, v10, v11, v16, v19, v20);
}

uint64_t _s10DarwinInit6ConfigV14IdentificationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[8];
  v16 = a2[8];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[7] != a2[7] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[11];
  v22 = a2[11];
  if (v21)
  {
    if (v22 && (a1[10] == a2[10] && v21 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100251418(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a7;
      v11 = a8;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a4 = v9;
      a3 = v8;
      a8 = v11;
      a7 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_8:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_8;
  }

  return 0;
}

BOOL sub_1002514B8(unsigned __int8 a1, int a2, char a3, int a4)
{
  if (a1 == 3)
  {
    if (a3 != 3)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (a3 == 3)
  {
    return 0;
  }

  LOBYTE(v4) = a3;
  v5 = 0x63696C627550;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x65746176697250;
    }

    else
    {
      v7 = 0x76697469736E6553;
    }

    if (v6 == 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000065;
    }

    v4 = v4;
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_20:
    v9 = 0xE600000000000000;
    goto LABEL_21;
  }

  v8 = 0xE600000000000000;
  v7 = 0x63696C627550;
  v4 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v4 == 1)
  {
    v5 = 0x65746176697250;
  }

  else
  {
    v5 = 0x76697469736E6553;
  }

  if (v4 == 1)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE900000000000065;
  }

LABEL_21:
  v10 = a2;
  v11 = a4;
  if (v7 == v5 && v8 == v9)
  {

    a4 = v11;
    a2 = v10;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v11;
    a2 = v10;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (a2 == 2)
  {
    return a4 == 2;
  }

  return a4 != 2 && ((a2 ^ a4) & 1) == 0;
}

uint64_t sub_100251654(int a1, int a2, int a3, int a4)
{
  if (a1 == 2)
  {
    if (a3 != 2)
    {
      return 0;
    }
  }

  else if (a3 == 2 || ((a1 ^ a3) & 1) != 0)
  {
    return 0;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a2 ^ a4) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1002516C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v8;
      a4 = v9;
      a7 = v11;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10DarwinInit6ConfigV4RootV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a2[8];
  if (v8)
  {
    if (!v9 || (a1[7] != a2[7] || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[11];
  v11 = a2[11];
  if (v10)
  {
    if (v11 && (a1[10] == a2[10] && v10 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

BOOL _s10DarwinInit6ConfigV4UserV14AuthenticationV7MementoV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || (sub_10024DC98(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (v6)
  {
    if (!v7 || (sub_10024DC98(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    return v9 && (a1[5] == a2[5] && v8 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v9;
}

uint64_t sub_100251924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a5)
    {
      if (a2)
      {
        if (!a6 || (sub_10024DC98(a2, a6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (a6)
      {
        goto LABEL_16;
      }

      if (a4)
      {
        if (a8 && (sub_10024DC98(a4, a8) & 1) != 0)
        {
          goto LABEL_13;
        }
      }

      else if (!a8)
      {
LABEL_13:
        v12 = 1;
LABEL_17:
        sub_1002591F8(a5);
        sub_1002591F8(a1);

        sub_100259198(a1);
        return v12;
      }

LABEL_16:
      v12 = 0;
      goto LABEL_17;
    }
  }

  else if (!a5)
  {
    return 1;
  }

  sub_1002591F8(a5);
  sub_1002591F8(a1);
  sub_100259198(a1);
  sub_100259198(a5);
  return 0;
}

BOOL _s10DarwinInit6ConfigV4UserV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  v78 = *(a1 + 72);
  v79 = v5;
  v80 = *(a1 + 104);
  v6 = *(a1 + 24);
  *v76 = *(a1 + 8);
  *&v76[16] = v6;
  *&v76[32] = *(a1 + 40);
  v77 = v4;
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v74[0] = *(a2 + 8);
  v74[1] = v7;
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v75 = *(a2 + 104);
  v74[4] = v10;
  v74[5] = v11;
  v74[2] = v8;
  v74[3] = v9;
  v12 = *v76;
  v14 = *&v76[8];
  v13 = *&v76[24];
  if (!*v76)
  {
    if (!*&v74[0])
    {
      v60 = 0;
      v61 = *&v76[8];
      v62 = *&v76[24];
      v28 = *(a1 + 64);
      v63 = *(a1 + 48);
      v64 = v28;
      v29 = *(a1 + 96);
      v65 = *(a1 + 80);
      v66 = v29;
      sub_100013E54(v76, &v52, &qword_1004AD190);
      sub_100013E54(v74, &v52, &qword_1004AD190);
      sub_100013F2C(&v60, &qword_1004AD190);
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (!*&v74[0])
  {
LABEL_10:
    v60 = *v76;
    v61 = *&v76[8];
    v62 = *&v76[24];
    v19 = *(a1 + 64);
    v63 = *(a1 + 48);
    v64 = v19;
    v20 = *(a1 + 96);
    v65 = *(a1 + 80);
    v66 = v20;
    v67 = *&v74[0];
    v21 = *(a2 + 64);
    v70 = *(a2 + 48);
    v71 = v21;
    v22 = *(a2 + 96);
    v72 = *(a2 + 80);
    v73 = v22;
    v23 = *(a2 + 32);
    v68 = *(a2 + 16);
    v69 = v23;
    sub_100013E54(v76, &v52, &qword_1004AD190);
    sub_100013E54(v74, &v52, &qword_1004AD190);
    v24 = &unk_1004AE2A0;
    v25 = &v60;
LABEL_28:
    sub_100013F2C(v25, v24);
    return 0;
  }

  v15 = *(a2 + 32);
  v61 = *(a2 + 16);
  v62 = v15;
  v16 = *(a2 + 64);
  v63 = *(a2 + 48);
  v64 = v16;
  v17 = *(a2 + 96);
  v65 = *(a2 + 80);
  v60 = *&v74[0];
  v66 = v17;
  v18 = v61;
  v51 = *&v76[32];
  if (!*&v76[8])
  {
    if (!v61)
    {
      sub_100013E54(v76, &v52, &qword_1004AD190);
      sub_100013E54(v74, &v52, &qword_1004AD190);
      v27 = v51;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v61)
  {
LABEL_12:
    sub_100013E54(v76, &v52, &qword_1004AD190);
    sub_100013E54(v74, &v52, &qword_1004AD190);
    sub_1002591F8(v18);
    sub_1002591F8(v14);
    sub_100259198(v14);
    v26 = v18;
    v27 = v51;
    sub_100259198(v26);
LABEL_27:
    sub_100013F2C(&v60, &qword_1004AD190);
    v52 = v12;
    v53 = v14;
    v54 = v13;
    v55 = v27;
    v39 = *(a1 + 64);
    v56 = *(a1 + 48);
    v57 = v39;
    v40 = *(a1 + 96);
    v58 = *(a1 + 80);
    v59 = v40;
    v25 = &v52;
    v24 = &qword_1004AD190;
    goto LABEL_28;
  }

  if (*&v76[16])
  {
    if (!*(&v61 + 1) || (sub_10024DC98(*&v76[16], *(&v61 + 1)) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (*(&v61 + 1))
  {
    goto LABEL_21;
  }

  if (*&v76[32])
  {
    if (*(&v62 + 1) && (sub_10024DC98(*&v76[32], *(&v62 + 1)) & 1) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (!*(&v62 + 1))
  {
LABEL_18:
    v50 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v50 = 0;
LABEL_22:
  sub_100013E54(v76, &v52, &qword_1004AD190);
  sub_100013E54(v74, &v52, &qword_1004AD190);
  sub_1002591F8(v18);
  v27 = v51;
  sub_1002591F8(v14);

  sub_100259198(v14);
  if ((v50 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v30 = *(a1 + 64);
  v81[0] = *(a1 + 48);
  v81[1] = v30;
  v31 = *(a1 + 96);
  v81[2] = *(a1 + 80);
  v81[3] = v31;
  v32 = *(a2 + 64);
  v82[0] = *(a2 + 48);
  v82[1] = v32;
  v33 = *(a2 + 96);
  v82[2] = *(a2 + 80);
  v82[3] = v33;
  v34 = sub_100222E60(v81, v82);
  sub_100013F2C(&v60, &qword_1004AD190);
  v52 = v12;
  v53 = v14;
  v54 = v13;
  v55 = v27;
  v35 = *(a1 + 64);
  v56 = *(a1 + 48);
  v57 = v35;
  v36 = *(a1 + 96);
  v58 = *(a1 + 80);
  v59 = v36;
  sub_100013F2C(&v52, &qword_1004AD190);
  if (!v34)
  {
    return 0;
  }

LABEL_24:
  v37 = *(a1 + 120);
  v38 = *(a2 + 120);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 136) != *(a2 + 136) || *(a1 + 152) != *(a2 + 152))
  {
    return 0;
  }

  v42 = *(a1 + 168);
  v43 = *(a2 + 168);
  if (v42)
  {
    if (!v43 || (sub_10024DEB0(v42, v43) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = *(a1 + 184);
  v45 = *(a2 + 184);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    return 0;
  }

  v46 = *(a1 + 208);
  v47 = *(a2 + 208);
  if (v46)
  {
    if (!v47 || (*(a1 + 200) != *(a2 + 200) || v46 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = *(a1 + 232);
  v49 = *(a2 + 232);
  if (!v48)
  {
    return !v49;
  }

  return v49 && (*(a1 + 224) == *(a2 + 224) && v48 == v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

BOOL sub_100252070(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a1 ^ a4) & 1) != 0)
  {
    return 0;
  }

  if (a2 == 2)
  {
    if (a5 != 2)
    {
      return 0;
    }
  }

  else if (a5 == 2 || ((a2 ^ a5) & 1) != 0)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (sub_10024DC98(a3, a6) & 1) != 0;
  }

  return !a6;
}