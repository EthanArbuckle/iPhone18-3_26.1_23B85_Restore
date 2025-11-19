uint64_t sub_1000B96B4(char a1)
{
  result = 0x2D64657461657263;
  switch(a1)
  {
    case 1:
      v3 = 1701602660;
      goto LABEL_6;
    case 2:
      return 0x747365676964;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x6574707972636E65;
    case 5:
      return 0x74616D726F66;
    case 6:
      return 0x7972636E652D7369;
    case 7:
      return 7564651;
    case 8:
      return 0x6E6564692D736D6BLL;
    case 9:
      return 0x697373696D726570;
    case 10:
      return 0x737265746E696F70;
    case 11:
      v3 = 1634493810;
      goto LABEL_6;
    case 12:
      return 0x662D64656E676973;
    case 13:
      return 1702521203;
    case 14:
      return 0x737574617473;
    case 15:
      return 1701869940;
    case 16:
      v3 = 1633972341;
LABEL_6:
      result = v3 | 0x2D64657400000000;
      break;
    case 17:
      result = 0x726564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B9934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000BF0C4();
  *a1 = result;
  return result;
}

uint64_t sub_1000B9964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B96B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B99AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000BF0C4();
  *a1 = result;
  return result;
}

uint64_t sub_1000B99E0(uint64_t a1)
{
  v2 = sub_1000BCF78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9A1C(uint64_t a1)
{
  v2 = sub_1000BCF78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointer.File.Encryption.digest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digest);

  return v1;
}

uint64_t KnoxPointer.File.Encryption.digestAlgorithm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digestAlgorithm);

  return v1;
}

id KnoxPointer.File.Encryption.init(digest:digestAlgorithm:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digest];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v5[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digestAlgorithm];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&v5[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_size] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for KnoxPointer.File.Encryption();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000B9B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000100429370;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000100429370;
  }

  else
  {
    v3 = 1702521203;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x747365676964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1702521203;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x747365676964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int sub_1000B9C28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B9CC4()
{
  String.hash(into:)();
}

Swift::Int sub_1000B9D4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B9DE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF118(*a1);
  *a2 = result;
  return result;
}

void sub_1000B9E14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000100429370;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x747365676964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000B9E6C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747365676964;
  }
}

unint64_t sub_1000B9EC0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF118(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B9EE8(uint64_t a1)
{
  v2 = sub_1000BD110();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9F24(uint64_t a1)
{
  v2 = sub_1000BD110();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1000B9FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000BA024(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A91D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD110();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

id KnoxPointer.File.Encryption.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A91E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD110();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for KnoxPointer.File.Encryption();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digest];
    *v11 = v9;
    v11[1] = v12;
    v18 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digestAlgorithm];
    *v14 = v13;
    v14[1] = v15;
    v18 = 2;
    *&v1[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_size] = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = type metadata accessor for KnoxPointer.File.Encryption();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

uint64_t sub_1000BA4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = objc_allocWithZone(a3(a2));
  result = a4(a1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

Swift::Int sub_1000BA58C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000BA668()
{
  String.hash(into:)();
}

Swift::Int sub_1000BA730()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000BA808@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF164(*a1);
  *a2 = result;
  return result;
}

void sub_1000BA838(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x727574616E676973;
  v4 = 0xEB0000000079656BLL;
  v5 = 0x2D676E696E676973;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000100429410;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001004293E0;
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

unint64_t sub_1000BA8D0()
{
  v1 = 0x727574616E676973;
  v2 = 0x2D676E696E676973;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_1000BA964@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF164(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BA98C(uint64_t a1)
{
  v2 = sub_1000BD164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA9C8(uint64_t a1)
{
  v2 = sub_1000BD164();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointer.File.SignedFile.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A91E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v9 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v10;
    v20 = 3;
    sub_1000039E8(&qword_1004A6B48);
    sub_1000BD1B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t KnoxPointer.File.SignedFile.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A91F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD164();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v29 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v10;
  v28 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v13;
  sub_1000039E8(&qword_1004A6B48);
  v26 = 3;
  sub_1000BD234(&qword_1004A88F8, &qword_1004A6B48);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  sub_100003C3C(a1);
}

uint64_t KnoxPointer.File.Uploader.value.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_value);

  return v1;
}

uint64_t KnoxPointer.File.Uploader.method.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_method);

  return v1;
}

id KnoxPointer.File.Uploader.init(value:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_value];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_method];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for KnoxPointer.File.Uploader();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1000BB0DC()
{
  if (*v0)
  {
    return 0x646F6874656DLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000BB110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000)
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

uint64_t sub_1000BB1E4(uint64_t a1)
{
  v2 = sub_1000BD294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BB220(uint64_t a1)
{
  v2 = sub_1000BD294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BB288()
{
}

uint64_t sub_1000BB2D8(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A9200);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

id KnoxPointer.File.Uploader.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A9210);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BD294();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for KnoxPointer.File.Uploader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_value];
    *v11 = v9;
    v11[1] = v12;
    v18 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_method];
    *v14 = v13;
    v14[1] = v15;
    v16 = type metadata accessor for KnoxPointer.File.Uploader();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

uint64_t sub_1000BB988(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A9218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCF78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  type metadata accessor for Date();
  sub_1000B0B5C(&qword_1004A7D40, 255, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_encryptedFile);
    v31 = 4;
    type metadata accessor for KnoxPointer.File.Encryption();
    sub_1000B0B5C(&qword_1004A9220, v9, type metadata accessor for KnoxPointer.File.Encryption);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_format);
    v31 = 5;
    sub_1000BD2E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kms);
    v31 = 7;
    sub_1000BD33C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions);
    v11 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions + 8);
    v12 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions + 24);
    v21 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions + 16);
    v22 = v12;
    v23 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions + 32);
    v24 = v10;
    v25 = v11;
    v26 = v21;
    v27 = v12;
    v28 = v23;
    v31 = 9;
    sub_1000B0BC4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v27;
    v23 = v28;

    v24 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_pointers);
    v31 = 10;
    sub_1000039E8(&qword_1004A8D20);
    sub_1000BD390(&qword_1004A9238, &qword_1004A90A0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v24) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile);
    v14 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 8);
    v15 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 16);
    v16 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 24);
    v17 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 32);
    v18 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 48);
    v22 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 40);
    v23 = v18;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v22;
    v30 = v18;
    v31 = 12;
    sub_1000BD430();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v30;

    LOBYTE(v24) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_uploader);
    v31 = 17;
    type metadata accessor for KnoxPointer.File.Uploader();
    sub_1000B0B5C(&qword_1004A9248, v19, type metadata accessor for KnoxPointer.File.Uploader);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BC118(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x2D64657461657263;
    v7 = 0x64616F6C6E776F64;
    v8 = 1701603686;
    if (a1 != 3)
    {
      v8 = 1701667182;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x2D646574656C6564;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x2D64657461647075;
    if (a1 != 9)
    {
      v2 = 1684632949;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x697373696D726570;
    v4 = 0x6F69746E65746572;
    if (a1 != 6)
    {
      v4 = 0x6563617073;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id sub_1000BC2C8()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1004A9040 = result;
  return result;
}

uint64_t sub_1000BC314(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000BC3C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000BC444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1000BC4B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000BC51C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF1B0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BC54C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BC118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000BC594@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF1B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BC5C8(uint64_t a1)
{
  v2 = sub_1000B02C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BC604(uint64_t a1)
{
  v2 = sub_1000B02C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BC864@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 304))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void (*sub_1000BC8FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v8 + 64));
  }

  v12 = v11;
  a1[3] = v11;
  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_1000BCA70;
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_1000BCA70;
  }

  __break(1u);
  return result;
}

void sub_1000BCA70(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

unint64_t sub_1000BCADC()
{
  result = qword_1004A90D8;
  if (!qword_1004A90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A90D8);
  }

  return result;
}

unint64_t sub_1000BCB30()
{
  result = qword_1004A90F0;
  if (!qword_1004A90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A90F0);
  }

  return result;
}

unint64_t sub_1000BCB84()
{
  result = qword_1004A9108;
  if (!qword_1004A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9108);
  }

  return result;
}

uint64_t sub_1000BCBD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A90F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BCC50()
{
  result = qword_1004A9120;
  if (!qword_1004A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9120);
  }

  return result;
}

uint64_t _s16KnoxClientPublic0A7PointerC13OnePermissionV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = 0x6C6F702D6E727061;
  v8 = 0xEB00000000796369;
  if (v2 != 1)
  {
    v7 = 1886351214;
    v8 = 0xE400000000000000;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F632D656C707061;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00007463656E6ELL;
  }

  v11 = 0x6C6F702D6E727061;
  v12 = 0xEB00000000796369;
  if (*a2 != 1)
  {
    v11 = 1886351214;
    v12 = 0xE400000000000000;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6F632D656C707061;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xED00007463656E6ELL;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_1000BCE28()
{
  result = qword_1004A9130;
  if (!qword_1004A9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9130);
  }

  return result;
}

unint64_t sub_1000BCE7C()
{
  result = qword_1004A9138;
  if (!qword_1004A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9138);
  }

  return result;
}

unint64_t sub_1000BCED0()
{
  result = qword_1004A9148;
  if (!qword_1004A9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9148);
  }

  return result;
}

unint64_t sub_1000BCF24()
{
  result = qword_1004A9158;
  if (!qword_1004A9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9158);
  }

  return result;
}

unint64_t sub_1000BCF78()
{
  result = qword_1004A9198;
  if (!qword_1004A9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9198);
  }

  return result;
}

unint64_t sub_1000BCFCC()
{
  result = qword_1004A91A0;
  if (!qword_1004A91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A91A0);
  }

  return result;
}

unint64_t sub_1000BD020()
{
  result = qword_1004A91A8;
  if (!qword_1004A91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A91A8);
  }

  return result;
}

unint64_t sub_1000BD098()
{
  result = qword_1004A91C0;
  if (!qword_1004A91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A91C0);
  }

  return result;
}

unint64_t sub_1000BD110()
{
  result = qword_1004A91D8;
  if (!qword_1004A91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A91D8);
  }

  return result;
}

unint64_t sub_1000BD164()
{
  result = qword_1004A91F0;
  if (!qword_1004A91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A91F0);
  }

  return result;
}

unint64_t sub_1000BD1B8()
{
  result = qword_1004A8B08;
  if (!qword_1004A8B08)
  {
    sub_100003A94(&qword_1004A6B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8B08);
  }

  return result;
}

uint64_t sub_1000BD234(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BD294()
{
  result = qword_1004A9208;
  if (!qword_1004A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9208);
  }

  return result;
}

unint64_t sub_1000BD2E8()
{
  result = qword_1004A9228;
  if (!qword_1004A9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9228);
  }

  return result;
}

unint64_t sub_1000BD33C()
{
  result = qword_1004A9230;
  if (!qword_1004A9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9230);
  }

  return result;
}

uint64_t sub_1000BD390(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A8D20);
    sub_1000B0B5C(a2, 255, type metadata accessor for KnoxPointer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BD430()
{
  result = qword_1004A9240;
  if (!qword_1004A9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9240);
  }

  return result;
}

unint64_t sub_1000BD488()
{
  result = qword_1004A9250;
  if (!qword_1004A9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9250);
  }

  return result;
}

unint64_t sub_1000BD4E0()
{
  result = qword_1004A9258;
  if (!qword_1004A9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9258);
  }

  return result;
}

unint64_t sub_1000BD538()
{
  result = qword_1004A9260;
  if (!qword_1004A9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9260);
  }

  return result;
}

uint64_t sub_1000BD58C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000BD5E8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1000BD650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  swift_beginAccess();
  return sub_100013E54(v3 + v4, a2, &qword_1004A6D30);
}

void sub_1000BD6C8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000BDBCC(319, &qword_1004A74C0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_1000BDBCC(319, &qword_1004A6E28, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000BDBCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1000BDC20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BDC34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000BDC90(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DiavloCertAudience(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000BDD10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000BDD58(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1000BDE64()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000BDBCC(319, &qword_1004A74C0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000BE160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000BE1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnoxPointer.File.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxPointer.File.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnoxPointer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxPointer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BE5B4()
{
  result = qword_1004A9350;
  if (!qword_1004A9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9350);
  }

  return result;
}

unint64_t sub_1000BE60C()
{
  result = qword_1004A9358;
  if (!qword_1004A9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9358);
  }

  return result;
}

unint64_t sub_1000BE664()
{
  result = qword_1004A9360;
  if (!qword_1004A9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9360);
  }

  return result;
}

unint64_t sub_1000BE6BC()
{
  result = qword_1004A9368;
  if (!qword_1004A9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9368);
  }

  return result;
}

unint64_t sub_1000BE714()
{
  result = qword_1004A9370;
  if (!qword_1004A9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9370);
  }

  return result;
}

unint64_t sub_1000BE76C()
{
  result = qword_1004A9378;
  if (!qword_1004A9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9378);
  }

  return result;
}

unint64_t sub_1000BE7C4()
{
  result = qword_1004A9380;
  if (!qword_1004A9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9380);
  }

  return result;
}

unint64_t sub_1000BE81C()
{
  result = qword_1004A9388;
  if (!qword_1004A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9388);
  }

  return result;
}

unint64_t sub_1000BE874()
{
  result = qword_1004A9390;
  if (!qword_1004A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9390);
  }

  return result;
}

unint64_t sub_1000BE8CC()
{
  result = qword_1004A9398;
  if (!qword_1004A9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9398);
  }

  return result;
}

unint64_t sub_1000BE924()
{
  result = qword_1004A93A0;
  if (!qword_1004A93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93A0);
  }

  return result;
}

unint64_t sub_1000BE97C()
{
  result = qword_1004A93A8;
  if (!qword_1004A93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93A8);
  }

  return result;
}

unint64_t sub_1000BE9D4()
{
  result = qword_1004A93B0;
  if (!qword_1004A93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93B0);
  }

  return result;
}

unint64_t sub_1000BEA2C()
{
  result = qword_1004A93B8;
  if (!qword_1004A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93B8);
  }

  return result;
}

unint64_t sub_1000BEA84()
{
  result = qword_1004A93C0;
  if (!qword_1004A93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93C0);
  }

  return result;
}

unint64_t sub_1000BEADC()
{
  result = qword_1004A93C8;
  if (!qword_1004A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93C8);
  }

  return result;
}

unint64_t sub_1000BEB34()
{
  result = qword_1004A93D0;
  if (!qword_1004A93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93D0);
  }

  return result;
}

unint64_t sub_1000BEB8C()
{
  result = qword_1004A93D8;
  if (!qword_1004A93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93D8);
  }

  return result;
}

unint64_t sub_1000BEBE4()
{
  result = qword_1004A93E0;
  if (!qword_1004A93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93E0);
  }

  return result;
}

unint64_t sub_1000BEC3C()
{
  result = qword_1004A93E8;
  if (!qword_1004A93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93E8);
  }

  return result;
}

unint64_t sub_1000BEC94()
{
  result = qword_1004A93F0;
  if (!qword_1004A93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93F0);
  }

  return result;
}

unint64_t sub_1000BECEC()
{
  result = qword_1004A93F8;
  if (!qword_1004A93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A93F8);
  }

  return result;
}

unint64_t sub_1000BED44()
{
  result = qword_1004A9400;
  if (!qword_1004A9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9400);
  }

  return result;
}

unint64_t sub_1000BED9C()
{
  result = qword_1004A9408;
  if (!qword_1004A9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9408);
  }

  return result;
}

uint64_t sub_1000BEDF0()
{
  v0 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v4);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v5 = JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100376BB0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v8[1] = v6;
  sub_1000B0B5C(&qword_1004A84E8, 255, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0);
  sub_10001F9A4(&qword_1004A84F8, &qword_1004A84F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v1 + 104))(v3, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  return v5;
}

unint64_t sub_1000BF078(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047B290, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BF0C4()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1000BF118(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047B648, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000BF164(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047B6B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000BF1B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047B730, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000BF1FC()
{
  result = qword_1004A9410;
  if (!qword_1004A9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9410);
  }

  return result;
}

unint64_t sub_1000BF250()
{
  result = qword_1004A9418;
  if (!qword_1004A9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9418);
  }

  return result;
}

unint64_t sub_1000BF2A4()
{
  result = qword_1004A9420;
  if (!qword_1004A9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9420);
  }

  return result;
}

uint64_t sub_1000BF318@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*(*a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

void sub_1000BF3B4(int64_t a1, uint64_t a2, char a3)
{
  v92 = a1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v88 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v89 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v83);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v86 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    URL.deletingLastPathComponent()();
    v15 = URL.path.getter();
    v17 = v16;
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v15 = URL.path.getter();
    v17 = v18;
  }

  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = String._bridgeToObjectiveC()();
  *&v95[0] = 0;
  v22 = [v20 attributesOfFileSystemForPath:v21 error:v95];

  v23 = *&v95[0];
  if (!v22)
  {
    v53 = *&v95[0];

    _convertNSErrorToError(_:)();

    goto LABEL_16;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1000C0118(&qword_1004A6CC0, type metadata accessor for FileAttributeKey);
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v23;

  if (!*(v24 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v26 = sub_1000133DC(NSFileSystemFreeSize);
  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100003CA0(*(v24 + 56) + 32 * v26, v94);

  sub_1000279A4(v94, v95);
  swift_dynamicCast();
  v29 = v92;
  v28 = v93;
  if (v93 < v92)
  {
    v30 = [objc_allocWithZone(NSByteCountFormatter) init];
    v82 = v30;
    v31 = [v30 stringFromByteCount:v29];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = [v30 stringFromByteCount:v28];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v81 = 0x8000000100430D00;
    v92 = 0x8000000100430D50;
    *&v95[0] = 0;
    *(&v95[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v95[0] = 0x206465656E206557;
    *(&v95[0] + 1) = 0xE800000000000000;
    v39._countAndFlagsBits = v32;
    v39._object = v34;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x6C6E6F2074756220;
    v40._object = 0xEF20657661682079;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v36;
    v41._object = v38;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 0x6572696420746120;
    v42._object = 0xEE002079726F7463;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v15;
    v43._object = v17;
    String.append(_:)(v43);

    v78 = *(&v95[0] + 1);
    v79 = *&v95[0];
    v80 = type metadata accessor for KnoxServiceClient.ClientError();
    v44 = swift_allocObject();
    sub_10000E014();
    v77[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v95[0] = &_swiftEmptyArrayStorage;
    sub_1000C0118(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v89, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v45 = v90;
    v46 = v91;
    v47 = v88;
    (*(v90 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v47, v46);
    v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v49 = v81;
    *(v44 + 16) = 0xD00000000000004CLL;
    *(v44 + 24) = v49;
    v50 = v92;
    *(v44 + 32) = 0xD00000000000005ALL;
    *(v44 + 40) = v50;
    *(v44 + 56) = 16;
    *(v44 + 48) = 138;
    v51 = v78;
    *(v44 + 64) = v79;
    *(v44 + 72) = v51;
    *(v44 + 80) = 0;
    *(v44 + 88) = v48;
    sub_1000C0118(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v52 = v44;
    swift_willThrow();

    return;
  }

  v54 = [v19 defaultManager];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 isReadableFileAtPath:v55];

  if (v56)
  {
    v57 = [v19 defaultManager];
    v58 = String._bridgeToObjectiveC()();
    v59 = [v57 isWritableFileAtPath:v58];

    if (v59)
    {

      return;
    }

    v82 = 0x8000000100430D00;
    v92 = 0x8000000100430D50;
    *&v95[0] = 0;
    *(&v95[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v95[0] = 0xD000000000000024;
    *(&v95[0] + 1) = 0x8000000100430DE0;
    v69._countAndFlagsBits = v15;
    v69._object = v17;
    String.append(_:)(v69);

    v79 = *(&v95[0] + 1);
    v80 = *&v95[0];
    v81 = type metadata accessor for KnoxServiceClient.ClientError();
    v61 = swift_allocObject();
    sub_10000E014();
    v78 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v95[0] = &_swiftEmptyArrayStorage;
    sub_1000C0118(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v89, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v70 = v90;
    v71 = v91;
    v72 = v88;
    (*(v90 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v70 + 8))(v72, v71);
    v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v73 = v82;
    *(v61 + 16) = 0xD00000000000004CLL;
    *(v61 + 24) = v73;
    v74 = v92;
    *(v61 + 32) = 0xD00000000000005ALL;
    *(v61 + 40) = v74;
    *(v61 + 56) = 13;
    v68 = 148;
  }

  else
  {
    v82 = 0x8000000100430D00;
    v92 = 0x8000000100430D50;
    *&v95[0] = 0;
    *(&v95[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    *&v95[0] = 0xD000000000000023;
    *(&v95[0] + 1) = 0x8000000100430DB0;
    v60._countAndFlagsBits = v15;
    v60._object = v17;
    String.append(_:)(v60);

    v79 = *(&v95[0] + 1);
    v80 = *&v95[0];
    v81 = type metadata accessor for KnoxServiceClient.ClientError();
    v61 = swift_allocObject();
    sub_10000E014();
    v78 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v95[0] = &_swiftEmptyArrayStorage;
    sub_1000C0118(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v89, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v62 = v90;
    v63 = v91;
    v64 = v88;
    (*(v90 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v62 + 8))(v64, v63);
    v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v66 = v82;
    *(v61 + 16) = 0xD00000000000004CLL;
    *(v61 + 24) = v66;
    v67 = v92;
    *(v61 + 32) = 0xD00000000000005ALL;
    *(v61 + 40) = v67;
    *(v61 + 56) = 13;
    v68 = 144;
  }

  *(v61 + 48) = v68;
  v75 = v79;
  *(v61 + 64) = v80;
  *(v61 + 72) = v75;
  *(v61 + 80) = 0;
  *(v61 + 88) = v65;
  sub_1000C0118(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v76 = v61;
LABEL_16:
  swift_willThrow();
}

uint64_t sub_1000C0118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0170()
{
  if (*v0)
  {
    return 0x74736566696E616DLL;
  }

  else
  {
    return 0x65766968637261;
  }
}

uint64_t sub_1000C01AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65766968637261 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1000C0288(uint64_t a1)
{
  v2 = sub_1000C0538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C02C4(uint64_t a1)
{
  v2 = sub_1000C0538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArchiveDecryptionComponents.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0368(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A94C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000C0538();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  type metadata accessor for ImageDecryptionComponents();
  sub_1000C0838(&qword_1004A94D0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000C0538()
{
  result = qword_1004A94C8;
  if (!qword_1004A94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A94C8);
  }

  return result;
}

uint64_t ArchiveDecryptionComponents.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ArchiveDecryptionComponents.init(from:)(a1);
  return v2;
}

uint64_t ArchiveDecryptionComponents.init(from:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004A94D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_1000C0538();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for ArchiveDecryptionComponents();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ImageDecryptionComponents();
    v10 = 0;
    sub_1000C0838(&qword_1004A7708);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 16) = v11;
    v10 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v11;
  }

  sub_100003C3C(a1);
  return v1;
}

uint64_t sub_1000C0838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageDecryptionComponents();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C087C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ArchiveDecryptionComponents();
  v5 = swift_allocObject();
  result = ArchiveDecryptionComponents.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000C0984()
{
  result = qword_1004A9598;
  if (!qword_1004A9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9598);
  }

  return result;
}

unint64_t sub_1000C09DC()
{
  result = qword_1004A95A0;
  if (!qword_1004A95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A95A0);
  }

  return result;
}

unint64_t sub_1000C0A34()
{
  result = qword_1004A95A8;
  if (!qword_1004A95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A95A8);
  }

  return result;
}

void *KnoxUpdate.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A95C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = sub_10000E2A8(a1, a1[3]);
  sub_1000C0FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = (*(v3 + 152))(v10);
    (*(v6 + 8))(v8, v5);
  }

  sub_100003C3C(a1);
  return v9;
}

id KnoxUpdate.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000B080();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  (*(v7 + 8))(v9, v6);

  v13 = &v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_identifier];
  *v13 = v10;
  v13[1] = v12;

  sub_1000C1050(v10, v12, &v28);

  v15 = v36;
  v14 = v37;
  v17 = v34;
  v16 = v35;
  v19 = v32;
  v18 = v33;
  v21 = v30;
  v20 = v31;
  v27[0] = v28;
  v27[1] = v29;
  v27[2] = v30;
  v27[3] = v31;
  v27[4] = v32;
  v27[5] = v33;
  v27[6] = v34;
  v27[7] = v35;
  v27[8] = v36;
  v27[9] = v37;

  sub_1000C2268(v27);
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue] = ((v21 & 0xFFFFFF) << 38) | ((v20 & 0x3F) << 32) | ((v19 & 0xFFFFFF) << 8) | (4 * (v18 & 0x3F));
  v22 = &v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_train];
  *v22 = v17;
  *(v22 + 1) = v16;
  v23 = &v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_revision];
  *v23 = v15;
  *(v23 + 1) = v14;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_majorVersion] = v21;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_majorLetter] = v20;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_minorVersion] = v19;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_minorLetter] = v18;
  v24 = type metadata accessor for KnoxUpdate();
  v26.receiver = v3;
  v26.super_class = v24;
  return objc_msgSendSuper2(&v26, "init");
}

unint64_t sub_1000C0FFC()
{
  result = qword_1004A95D0;
  if (!qword_1004A95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A95D0);
  }

  return result;
}

uint64_t sub_1000C1050@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v99 = a3;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v107 = *(v6 - 8);
  v108 = v6;
  __chkstk_darwin(v6);
  v105 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v103 = *(v8 - 8);
  v104 = v8;
  __chkstk_darwin(v8);
  v106 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v102);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A6AD0 != -1)
  {
LABEL_89:
    swift_once();
  }

  v15 = qword_1004A95B8;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 firstMatchInString:v17 options:0 range:{0, String.count.getter()}];

  if (v18)
  {
    v19 = [v18 numberOfRanges];
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v19 - 1 < 1)
    {
      v20 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v101 = a1;
      v96 = a2;
      v97 = v14;
      v98 = v11;
      a2 = (2 - v19);
      v20 = &_swiftEmptyArrayStorage;
      v14 = 1;
      while (1)
      {
        v21 = [v18 rangeAtIndex:v14];
        v23 = [v16 substringWithRange:{v21, v22}];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100011A4C(0, *(v20 + 2) + 1, 1, v20);
        }

        v3 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v3 >= v25 >> 1)
        {
          v20 = sub_100011A4C((v25 > 1), v3 + 1, 1, v20);
        }

        *(v20 + 2) = v3 + 1;
        v26 = &v20[16 * v3];
        *(v26 + 4) = v11;
        *(v26 + 5) = a1;
        if (&a2[v14] == 1)
        {
          break;
        }

        if (__OFADD__(v14++, 1))
        {
          __break(1u);
          goto LABEL_89;
        }
      }

      v14 = v97;
      a2 = v96;
      a1 = v101;
    }
  }

  else
  {
    v18 = v16;
    v20 = &_swiftEmptyArrayStorage;
  }

  v3 = 0xD000000000000020;

  if (*(v20 + 2) != 5)
  {

    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v109 = 0xD000000000000017;
    v110 = 0x8000000100430FD0;
    v45._countAndFlagsBits = a1;
    v45._object = a2;
    String.append(_:)(v45);
    v100 = v110;
    v101 = v109;
    v99 = type metadata accessor for KnoxServiceClient.ClientError();
    v46 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v98 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    sub_1000C40F8(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v103 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
    v48 = v107;
    v47 = v108;
    v49 = v105;
    (*(v107 + 104))(v105, enum case for DispatchQoS.QoSClass.default(_:), v108);
    static OS_dispatch_queue.global(qos:)();
    (*(v48 + 8))(v49, v47);
    *(v46 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v50 = 213;
LABEL_43:
    *(v46 + 16) = 0xD000000000000017;
    *(v46 + 24) = 0x8000000100430F50;
    *(v46 + 32) = 0xD00000000000005BLL;
    *(v46 + 40) = 0x8000000100430F70;
    *(v46 + 56) = 4;
    *(v46 + 48) = v50;
    v55 = v100;
    *(v46 + 64) = v101;
    *(v46 + 72) = v55;
    *(v46 + 80) = 0;
    sub_1000C40F8(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v56 = v46;
    return swift_willThrow();
  }

  v101 = a1;
  v28 = *(v20 + 7);
  v98 = *(v20 + 6);
  v29 = *(v20 + 8);
  v30 = *(v20 + 9);

  sub_100083848(v29, v30);
  v32 = v31;

  if (!v32 || (v33 = Character.asciiValue.getter(), , (v33 & 0x100) != 0))
  {

    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v109 = 0xD000000000000020;
    v110 = 0x8000000100430FF0;
    v51._countAndFlagsBits = v101;
    v51._object = a2;
    String.append(_:)(v51);
    v100 = v110;
    v101 = v109;
    v99 = type metadata accessor for KnoxServiceClient.ClientError();
    v46 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v98 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    sub_1000C40F8(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v103 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
    v53 = v107;
    v52 = v108;
    v54 = v105;
    (*(v107 + 104))(v105, enum case for DispatchQoS.QoSClass.default(_:), v108);
    static OS_dispatch_queue.global(qos:)();
    (*(v53 + 8))(v54, v52);
    *(v46 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v50 = 221;
    goto LABEL_43;
  }

  if (*(v20 + 2) < 4uLL)
  {
LABEL_91:
    __break(1u);
LABEL_92:

    v41 = v101;
    goto LABEL_88;
  }

  v34 = *(v20 + 10);
  v35 = *(v20 + 11);
  v36 = HIBYTE(v35) & 0xF;
  v37 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v38 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_92;
  }

  if ((v35 & 0x1000000000000000) == 0)
  {
    if ((v35 & 0x2000000000000000) != 0)
    {
      v109 = *(v20 + 10);
      v110 = v35 & 0xFFFFFFFFFFFFFFLL;
      if (v34 == 43)
      {
        v41 = v101;
        if (!v36)
        {
          goto LABEL_117;
        }

        if (--v36)
        {
          v32 = 0;
          v64 = &v109 + 1;
          while (1)
          {
            v65 = *v64 - 48;
            if (v65 > 9)
            {
              break;
            }

            v66 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
              break;
            }

            ++v64;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }
      }

      else
      {
        v41 = v101;
        if (v34 == 45)
        {
          if (!v36)
          {
            goto LABEL_115;
          }

          if (--v36)
          {
            v32 = 0;
            v58 = &v109 + 1;
            while (1)
            {
              v59 = *v58 - 48;
              if (v59 > 9)
              {
                break;
              }

              v60 = 10 * v32;
              if ((v32 * 10) >> 64 != (10 * v32) >> 63)
              {
                break;
              }

              v32 = v60 - v59;
              if (__OFSUB__(v60, v59))
              {
                break;
              }

              ++v58;
              if (!--v36)
              {
                goto LABEL_86;
              }
            }
          }
        }

        else if (v36)
        {
          v32 = 0;
          v69 = &v109;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              break;
            }

            v69 = (v69 + 1);
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }
      }

      goto LABEL_85;
    }

    if ((v34 & 0x1000000000000000) != 0)
    {
      v39 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v39 = _StringObject.sharedUTF8.getter();
    }

    v40 = *v39;
    v41 = v101;
    if (v40 == 43)
    {
      if (v37 < 1)
      {
        goto LABEL_116;
      }

      v36 = v37 - 1;
      if (v37 != 1)
      {
        v32 = 0;
        if (v39)
        {
          v61 = v39 + 1;
          while (1)
          {
            v62 = *v61 - 48;
            if (v62 > 9)
            {
              goto LABEL_85;
            }

            v63 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_85;
            }

            v32 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              goto LABEL_85;
            }

            ++v61;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else if (v40 == 45)
    {
      if (v37 < 1)
      {
        goto LABEL_114;
      }

      v36 = v37 - 1;
      if (v37 != 1)
      {
        v32 = 0;
        if (v39)
        {
          v42 = v39 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              goto LABEL_85;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_85;
            }

            v32 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              goto LABEL_85;
            }

            ++v42;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }

LABEL_77:
        LOBYTE(v36) = 0;
        goto LABEL_86;
      }
    }

    else if (v37)
    {
      v32 = 0;
      if (v39)
      {
        while (1)
        {
          v67 = *v39 - 48;
          if (v67 > 9)
          {
            goto LABEL_85;
          }

          v68 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_85;
          }

          v32 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            goto LABEL_85;
          }

          ++v39;
          if (!--v37)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

LABEL_85:
    v32 = 0;
    LOBYTE(v36) = 1;
LABEL_86:
    v112 = v36;
    if (v36)
    {
LABEL_87:

LABEL_88:
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v109 = (v3 + 1);
      v110 = 0x8000000100431020;
      v72._countAndFlagsBits = v41;
      v72._object = a2;
      String.append(_:)(v72);
      v100 = v110;
      v101 = v109;
      v99 = type metadata accessor for KnoxServiceClient.ClientError();
      v46 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v98 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v109 = &_swiftEmptyArrayStorage;
      sub_1000C40F8(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v103 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
      v74 = v107;
      v73 = v108;
      v75 = v105;
      (*(v107 + 104))(v105, enum case for DispatchQoS.QoSClass.default(_:), v108);
      static OS_dispatch_queue.global(qos:)();
      (*(v74 + 8))(v75, v73);
      *(v46 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v50 = 226;
      goto LABEL_43;
    }

    goto LABEL_94;
  }

  v32 = sub_100083C88(v34, v35, 10);
  LODWORD(v97) = v76;

  v41 = v101;
  if (v97)
  {
    goto LABEL_87;
  }

LABEL_94:
  v97 = v32;
  v77 = sub_1000824A0(v98, v28);
  if (v78)
  {

    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v109 = 0xD000000000000021;
    v110 = 0x8000000100431050;
    v79._countAndFlagsBits = v41;
    v79._object = a2;
    String.append(_:)(v79);
    v100 = v110;
    v101 = v109;
    v99 = type metadata accessor for KnoxServiceClient.ClientError();
    v46 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v98 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    sub_1000C40F8(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v103 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
    v81 = v107;
    v80 = v108;
    v82 = v105;
    (*(v107 + 104))(v105, enum case for DispatchQoS.QoSClass.default(_:), v108);
    static OS_dispatch_queue.global(qos:)();
    (*(v81 + 8))(v82, v80);
    *(v46 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v50 = 231;
    goto LABEL_43;
  }

  v108 = v77;
  if (*(v20 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_110;
  }

  v83 = *(v20 + 12);
  v84 = *(v20 + 13);

  LOBYTE(v32) = sub_100083848(v83, v84);
  v86 = v85;

  if (!v86 || (, Character.isLetter.getter(), , LOWORD(v32) = Character.asciiValue.getter(), result = , (v32 & 0x100) != 0))
  {
    v14 = 0;
    goto LABEL_103;
  }

  if (qword_1004A6AC0 != -1)
  {
    goto LABEL_118;
  }

  while (((v32 - byte_1004A95B0) & 0xFFFFFF00) == 0)
  {
    v14 = (v32 - byte_1004A95B0);
LABEL_103:
    if (qword_1004A6AC8 != -1)
    {
LABEL_110:
      swift_once();
    }

    v87 = v33 - byte_1004A95B1;
    if ((v87 & 0xFFFFFF00) != 0)
    {
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v88 = *(v20 + 2);
    if (!v88)
    {
      goto LABEL_112;
    }

    if (v88 >= 5)
    {
      v90 = *(v20 + 4);
      v89 = *(v20 + 5);
      v109 = v20;
      v110 = (v20 + 32);
      v111 = xmmword_10037AF10;
      sub_1000039E8(&qword_1004A6110);
      sub_10000E720(&qword_1004A6118, &qword_1004A6110);

      v91 = BidirectionalCollection<>.joined(separator:)();
      v93 = v92;

      v94 = v99;
      *v99 = v101;
      v94[1] = a2;
      v94[2] = v108;
      v94[3] = v87;
      v94[4] = v97;
      v94[5] = v14;
      v94[6] = v90;
      v94[7] = v89;
      v94[8] = v91;
      v94[9] = v93;
    }

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
    result = swift_once();
  }

  __break(1u);
  return result;
}

uint64_t KnoxUpdate.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_identifier);

  return v1;
}

uint64_t KnoxUpdate.revision.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_revision);

  return v1;
}

uint64_t KnoxUpdate.train.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_train);

  return v1;
}

uint64_t sub_1000C2428()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for KnoxUpdate();
  v1 = objc_msgSendSuper2(&v9, "description");
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x8000000100430EA0;
  String.append(_:)(v5);
  String.append(_:)(*&v0[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_identifier]);
  v6._object = 0x8000000100430EC0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return v10;
}

unint64_t sub_1000C257C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C38F4(*a1);
  *a2 = result;
  return result;
}

void sub_1000C25AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065756C61566CLL;
  v4 = 0x6163696E6F6E6163;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697369766572;
  if (v2 != 6)
  {
    v6 = 0x6E69617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0x74654C726F6E696DLL;
  v8 = 0xEB00000000726574;
  if (v2 != 4)
  {
    v7 = 0x726556726F6E696DLL;
    v8 = 0xEC0000006E6F6973;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x74654C726F6A616DLL;
  v10 = 0xEB00000000726574;
  if (v2 != 2)
  {
    v9 = 0x726556726F6A616DLL;
    v10 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_1000C26CC()
{
  v1 = *v0;
  v2 = 0x6163696E6F6E6163;
  v3 = 0x6E6F697369766572;
  if (v1 != 6)
  {
    v3 = 0x6E69617274;
  }

  v4 = 0x74654C726F6E696DLL;
  if (v1 != 4)
  {
    v4 = 0x726556726F6E696DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74654C726F6A616DLL;
  if (v1 != 2)
  {
    v5 = 0x726556726F6A616DLL;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

unint64_t sub_1000C27E8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C38F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C281C(uint64_t a1)
{
  v2 = sub_1000C0FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2858(uint64_t a1)
{
  v2 = sub_1000C0FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C2894(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

id KnoxUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxUpdate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C2A3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000C2A78(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

__n128 sub_1000C2C2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000C2C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000C2C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnoxUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxUpdate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C2E48()
{
  result = qword_1004A9640;
  if (!qword_1004A9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9640);
  }

  return result;
}

unint64_t sub_1000C2EBC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    result = 10;
LABEL_7:
    if (((result - 1) & 0xFFFFFF00) == 0)
    {
      *a3 = result - 1;
      return result;
    }

    goto LABEL_12;
  }

  result = Character._isSingleScalar.getter();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1000C3574(a2, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_11;
  }

  result = sub_1000C3574(a2, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) != 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1000C2F70()
{
  v0 = objc_allocWithZone(NSRegularExpression);
  result = sub_1000D37E4(0xD000000000000026, 0x8000000100431080, 0);
  qword_1004A95B8 = result;
  return result;
}

uint64_t sub_1000C2FFC(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A9668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1000C406C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000C321C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E69617274;
  if (v1 != 5)
  {
    v3 = 0x6E6F697369766572;
  }

  v4 = 0x726556726F6E696DLL;
  if (v1 != 3)
  {
    v4 = 0x74654C726F6E696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726556726F6A616DLL;
  if (v1 != 1)
  {
    v5 = 0x74654C726F6A616DLL;
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

uint64_t sub_1000C330C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C3940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C3340(uint64_t a1)
{
  v2 = sub_1000C406C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C337C(uint64_t a1)
{
  v2 = sub_1000C406C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000C33B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C3B9C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1000C344C()
{
  result = qword_1004A9648;
  if (!qword_1004A9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9648);
  }

  return result;
}

unint64_t sub_1000C34A4()
{
  result = qword_1004A9650;
  if (!qword_1004A9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9650);
  }

  return result;
}

uint64_t sub_1000C34F8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1000C3574(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1000C36C4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1000C36C4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1000C375C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1000C37D0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1000C375C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1000C34F8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000C37D0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_1000C38F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047BAC8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C3940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654C726F6A616DLL && a2 == 0xEB00000000726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74654C726F6E696DLL && a2 == 0xEB00000000726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000C3B9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A9658);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v31 = a1;
  sub_10000E2A8(a1, v9);
  sub_1000C406C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v32 = v2;
    sub_100003C3C(v31);
    *&v38 = 0x6E776F6E6B6E55;
    *(&v38 + 1) = 0xE700000000000000;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0x6E776F6E6B6E55;
    v44 = 0xE700000000000000;
    v45 = 0x6E776F6E6B6E55;
    v46 = 0xE700000000000000;
    return sub_1000C2268(&v38);
  }

  else
  {
    LOBYTE(v38) = 0;
    *&v30 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v30 + 1) = v11;
    LOBYTE(v38) = 1;
    v12 = v6;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 2;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 3;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 4;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 5;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v47 = 6;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = 0;
    v18 = v17;
    v19 = v8;
    v21 = v20;
    (*(v12 + 8))(v19, v5);
    v22 = v30;
    v33 = v30;
    v23 = v29;
    *&v34 = v29;
    *(&v34 + 1) = v28;
    v24 = v27;
    *&v35 = v27;
    *(&v35 + 1) = v13;
    *&v36 = v14;
    *(&v36 + 1) = v16;
    *&v37 = v18;
    *(&v37 + 1) = v21;
    sub_1000C40C0(&v33, &v38);
    sub_100003C3C(v31);
    v38 = __PAIR128__(*(&v30 + 1), v22);
    v39 = v23;
    v40 = v28;
    v41 = v24;
    v42 = v13;
    v43 = v14;
    v44 = v16;
    v45 = v18;
    v46 = v21;
    result = sub_1000C2268(&v38);
    v25 = v36;
    a2[2] = v35;
    a2[3] = v25;
    a2[4] = v37;
    v26 = v34;
    *a2 = v33;
    a2[1] = v26;
  }

  return result;
}

unint64_t sub_1000C406C()
{
  result = qword_1004A9660;
  if (!qword_1004A9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9660);
  }

  return result;
}

uint64_t sub_1000C40F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for UpdateIdentifierParts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateIdentifierParts.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C4294()
{
  result = qword_1004A9670;
  if (!qword_1004A9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9670);
  }

  return result;
}

unint64_t sub_1000C42EC()
{
  result = qword_1004A9678;
  if (!qword_1004A9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9678);
  }

  return result;
}

unint64_t sub_1000C4344()
{
  result = qword_1004A9680;
  if (!qword_1004A9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9680);
  }

  return result;
}

char *ArchiveDecryptionInfoTask.__allocating_init(client:forDigest:inSpace:finalHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents] = 0;
  v16 = &v15[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest];
  *v16 = a2;
  v16[1] = a3;
  v17 = &v15[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space];
  *v17 = a4;
  v17[1] = a5;
  v18 = &v15[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_finalHandler];
  *v18 = a6;
  *(v18 + 1) = a7;

  v19 = sub_10003D38C(a1);
  _StringGuts.grow(_:)(33);

  v20._countAndFlagsBits = a4;
  v20._object = a5;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 47;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a2;
  v22._object = a3;
  String.append(_:)(v22);

  v23 = &v19[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v23 = 0xD00000000000001CLL;
  *(v23 + 1) = 0x800000010042CC80;

  return v19;
}

uint64_t sub_1000C4594()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ArchiveDecryptionInfoTask();
  v2 = objc_msgSendSuper2(&v16, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  _StringGuts.grow(_:)(27);

  v15 = v3;
  v4._countAndFlagsBits = 0x3D6563617073202CLL;
  v4._object = 0xE900000000000027;
  String.append(_:)(v4);
  v5 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space];
  v6 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space + 8];

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7365676964202C27;
  v8._object = 0xEB00000000273D74;
  String.append(_:)(v8);
  v9 = &v1[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest];
  v10 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest];
  v11 = *(v9 + 1);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 39;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v15;
}

char *ArchiveDecryptionInfoTask.init(client:forDigest:inSpace:finalHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents) = 0;
  v13 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space);
  *v14 = a4;
  v14[1] = a5;
  v15 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_finalHandler);
  *v15 = a6;
  v15[1] = a7;

  v16 = sub_10003D38C(a1);
  _StringGuts.grow(_:)(33);

  v17._countAndFlagsBits = a4;
  v17._object = a5;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 47;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  v20 = &v16[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v20 = 0xD00000000000001CLL;
  *(v20 + 1) = 0x800000010042CC80;

  return v16;
}

char *sub_1000C4858()
{
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v1 = v0;
  v2 = sub_100072164(v1);
  v3 = v1;
  sub_10007C220(v2, v3);

  return v3;
}

uint64_t sub_1000C48C8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100376F00;
    v7 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v9 = *v7;
    v8 = *(v7 + 1);
    *(v6 + 56) = &type metadata for String;
    v10 = sub_10001A9EC();
    *(v6 + 64) = v10;
    *(v6 + 32) = v9;
    *(v6 + 40) = v8;
    v11 = *(*a2 + 168);

    result = v11(v12);
    if (!v14)
    {
      __break(1u);
      return result;
    }

    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    *(v6 + 72) = result;
    *(v6 + 80) = v14;
    v15 = [a1 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v6 + 136) = &type metadata for String;
    *(v6 + 144) = v10;
    *(v6 + 112) = v16;
    *(v6 + 120) = v18;
    sub_10001AA40(0, &qword_1004A7380);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v20 = swift_allocError();
    *v21 = a2;
    swift_getErrorValue();

    v22 = Error.localizedDescription.getter();
    sub_100036D50(v20, v22, v23);

    v24 = *(a3 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_finalHandler);
    v25 = *(a3 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents);
    v26 = swift_allocError();
    *v27 = a2;
  }

  else
  {
    sub_1000039E8(&unk_1004A7370);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100376BB0;
    v29 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v31 = *v29;
    v30 = *(v29 + 1);
    *(v28 + 56) = &type metadata for String;
    v32 = sub_10001A9EC();
    *(v28 + 64) = v32;
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;

    v33 = [a1 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v36;
    sub_10001AA40(0, &qword_1004A7380);
    v37 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = 0;
    v24 = *(a3 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_finalHandler);
    v25 = *(a3 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents);
  }

  v24(v25, v26);

  sub_100003B20(*(a3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v43);
  v38 = v44;
  v39 = v45;
  sub_10000E2A8(v43, v44);
  if (a2)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v40 = swift_allocError();
    *v41 = a2;
  }

  else
  {
    v40 = 0;
  }

  v42 = *(v39 + 16);

  v42(a3, v40, v38, v39);

  return sub_100003C3C(v43);
}

uint64_t sub_1000C4DB0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v55);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = *(v13 + 16);
  v50 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v19(&v50 - v17, &v50[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v12);
  v20 = URL.absoluteString.getter();
  v22 = v21;
  v51 = *(v13 + 8);
  v52 = v13 + 8;
  v51(v18, v12);
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v64 = 0x2F7365636170732FLL;
  v65 = 0xE800000000000000;
  v23 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space);
  v24 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space + 8);

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x657669686372612FLL;
  v26._object = 0xEA00000000002F73;
  String.append(_:)(v26);
  v28 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest);
  v27 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest + 8);

  v29._countAndFlagsBits = v28;
  v29._object = v27;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000016;
  v30._object = 0x800000010042C960;
  String.append(_:)(v30);
  v32 = v64;
  v31 = v65;
  v64 = v20;
  v65 = v22;

  v33._countAndFlagsBits = v32;
  v33._object = v31;
  String.append(_:)(v33);

  v35 = v64;
  v34 = v65;
  URL.init(string:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10004B034(v11);
    v54 = 0x80000001004310E0;
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v64 = 0xD00000000000001ALL;
    v65 = 0x800000010042FFC0;
    v36._countAndFlagsBits = v35;
    v36._object = v34;
    String.append(_:)(v36);

    v51 = v65;
    v52 = v64;
    v53 = type metadata accessor for KnoxServiceClient.ClientError();
    v37 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v50 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v64 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 104))(v60, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
    v39 = v61;
    v38 = v62;
    v40 = v63;
    (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v63);
    static OS_dispatch_queue.global(qos:)();
    (*(v38 + 8))(v39, v40);
    v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v37 + 16), "urlRequest()");
    *(v37 + 29) = 0;
    *(v37 + 30) = -5120;
    v42 = v54;
    *(v37 + 32) = 0xD000000000000073;
    *(v37 + 40) = v42;
    *(v37 + 56) = 18;
    *(v37 + 48) = 90;
    v43 = v51;
    *(v37 + 64) = v52;
    *(v37 + 72) = v43;
    *(v37 + 80) = 0;
    *(v37 + 88) = v41;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v44 = v37;
    return swift_willThrow();
  }

  else
  {

    (*(v13 + 32))(v16, v11, v12);
    LOBYTE(v64) = 2;
    v46 = v54;
    sub_10005ADB0(v16, 0, 1, v53);
    if (v46)
    {
      v64 = v46;
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      type metadata accessor for KnoxServiceClient.ClientError();
      if (swift_dynamicCast())
      {
        v47 = v66;
      }

      else
      {
        v48 = _convertErrorToNSError(_:)();
        swift_allocObject();
        v47 = sub_100059DCC(0x65757165526C7275, 0xEC00000029287473, 0xD000000000000073, 0x80000001004310E0, 100, v48);
      }

      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v49 = v47;
      swift_willThrow();

      return (v51)(v16, v12);
    }

    else
    {
      return (v51)(v16, v12);
    }
  }
}

void sub_1000C5644(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v65 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v60 = v2;
  v61 = v3;
  v14 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v15 = a2 >> 62;
  v68 = v9;
  if ((a2 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v16 = HIDWORD(a1) - a1;
LABEL_10:
  v62 = v7;
  v63 = v6;
  v19 = *(v14 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v14;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100027124;
  *(v21 + 24) = v20;
  v73 = sub_10001F874;
  v74 = v21;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10003885C;
  v72 = &unk_100482E10;
  v22 = _Block_copy(&aBlock);

  dispatch_sync(v19, v22);
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = sub_10004325C(&aBlock, a1, a2);
  v25 = aBlock;
  if (v24)
  {
    v57 = 0x80000001004310E0;
    v58 = 0x800000010042A530;
    v59 = v24;
    v60 = v23;
    v61 = type metadata accessor for KnoxServiceClient.ClientError();
    v26 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v56[0] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    v56[1] = v25;
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v64 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v66);
    v27 = v62;
    v28 = v63;
    v29 = v68;
    (*(v62 + 104))(v68, enum case for DispatchQoS.QoSClass.default(_:), v63);
    static OS_dispatch_queue.global(qos:)();
    (*(v27 + 8))(v29, v28);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = v58;
    *(v26 + 16) = 0xD00000000000001ALL;
    *(v26 + 24) = v31;
    v32 = v57;
    *(v26 + 32) = 0xD000000000000073;
    *(v26 + 40) = v32;
    *(v26 + 56) = 7;
    *(v26 + 48) = 118;
    v33 = v59;
    *(v26 + 64) = v60;
    *(v26 + 72) = v33;
    *(v26 + 80) = 0;
    *(v26 + 88) = v30;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v34 = v26;
    swift_willThrow();

    return;
  }

  v35 = v60;
  v36 = *&v60[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost;
  swift_beginAccess();
  v37 = *(v36 + 8);
  if (v37 && v25)
  {
    v38 = v35;
    v39 = *v36;
    v40 = v25[2];
    v41 = type metadata accessor for ImageDecryptionComponents();
    v42 = objc_allocWithZone(v41);
    swift_bridgeObjectRetain_n();

    v43 = v40;
    v44 = v61;
    v45 = ImageDecryptionComponents.init(copyingFrom:using:)(v43, v39, v37);
    if (v44)
    {

      return;
    }

    v51 = v45;
    v52 = v25[3];
    v53 = objc_allocWithZone(v41);
    v54 = ImageDecryptionComponents.init(copyingFrom:using:)(v52, v39, v37);

    type metadata accessor for ArchiveDecryptionComponents();
    v55 = swift_allocObject();
    *(v55 + 16) = v51;
    *(v55 + 24) = v54;
    v35 = v38;
    *&v38[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents] = v55;
  }

  else
  {
    *&v35[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents] = v25;
  }

  v46 = *&v35[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v47 = swift_allocObject();
  *(v47 + 16) = v35;
  *(v47 + 24) = 1;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10001F9F8;
  *(v48 + 24) = v47;
  v73 = sub_10001FA40;
  v74 = v48;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10003885C;
  v72 = &unk_100482E88;
  v49 = _Block_copy(&aBlock);
  v50 = v35;

  dispatch_sync(v46, v49);
  _Block_release(v49);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1000C5EC4()
{
}

id ArchiveDecryptionInfoTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArchiveDecryptionInfoTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArchiveDecryptionInfoTask()
{
  result = qword_1004A96D0;
  if (!qword_1004A96D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C602C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C6074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C608C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000C61D8()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for DownloadSubTask();
  v2 = objc_msgSendSuper2(&v33, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [objc_opt_self() currentThread];
  v7 = [v6 description];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  OS_dispatch_queue.sync<A>(execute:)();
  if (v32 > 0.0)
  {
    OS_dispatch_queue.sync<A>(execute:)();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    _StringGuts.grow(_:)(44);
    v13 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 8236;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    Double.write<A>(to:)();
    v18._countAndFlagsBits = 0xD000000000000019;
    v18._object = 0x8000000100431570;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v8;
    v19._object = v10;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 543584032;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    swift_beginAccess();
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 2108704;
    v22._object = 0xE300000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v3;
    v23._object = v5;
    String.append(_:)(v23);
  }

  else
  {

    _StringGuts.grow(_:)(24);
    v25 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v26 = *v25;
    v27 = v25[1];

    v28._countAndFlagsBits = v26;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 8236;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    Double.write<A>(to:)();
    v30._object = 0x8000000100431550;
    v30._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v3;
    v31._object = v5;
    String.append(_:)(v31);
  }

  return 0;
}

uint64_t sub_1000C65A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_request;
  v4 = type metadata accessor for URLRequest();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1000C6618(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v157 = a2;
  v161 = a1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v160 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v162 = *(v159 - 8);
  __chkstk_darwin(v159);
  v8 = v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_size;
  v15 = sub_1000C8FE0(*&v2[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_size]);
  v17 = v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  v163 = v15;
  v164 = v17;
  v158 = v4;
  if (!Strong)
  {
    v156 = 0x800000010042A530;
    v155 = 0x8000000100431260;
    v157 = 0x8000000100431300;
    v161 = type metadata accessor for KnoxServiceClient.ClientError();
    v44 = swift_allocObject();
    v153 = sub_10001AA40(0, &qword_1004A7840);
    v154 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v162 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v159);
    v45 = v160;
    v46 = v158;
    (*(v160 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v158);
    static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v6, v46);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v48 = v156;
    *(v44 + 16) = 0xD00000000000001ALL;
    *(v44 + 24) = v48;
    v49 = v155;
    *(v44 + 32) = 0xD000000000000069;
    *(v44 + 40) = v49;
    *(v44 + 56) = 14;
    *(v44 + 48) = 106;
    v50 = v157;
    *(v44 + 64) = 0xD000000000000029;
    *(v44 + 72) = v50;
    *(v44 + 80) = 0;
    *(v44 + 88) = v47;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v51 = v44;
    swift_willThrow();
LABEL_74:
    v122 = v163;
    v123 = v164;
    goto LABEL_75;
  }

  v150 = v9;
  v153 = v14;
  v151 = v11;
  v152 = v6;
  v149 = v8;
  v19 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  v20 = Strong;
  v21 = swift_beginAccess();
  v154 = v20;
  v22 = (*&v20[v19] + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name);
  v24 = *v22;
  v23 = v22[1];
  v25 = *&v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  __chkstk_darwin(v21);
  v26 = v3;
  v147[-2] = v3;

  sub_1000039E8(&unk_1004A7340);
  v148 = v25;
  v27 = v155;
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = v27;
  v29 = aBlock;
  if (!aBlock || (v30 = [aBlock statusCode], v29, v30 != 200))
  {
    v39 = v23;
    v31 = v157;
    v40 = v157 >> 62;
    if ((v157 >> 62) > 1)
    {
      v41 = v164;
      v42 = v162;
      if (v40 != 2)
      {
        v43 = 0;
        goto LABEL_20;
      }

      v53 = *(v161 + 16);
      v52 = *(v161 + 24);
      v54 = __OFSUB__(v52, v53);
      v43 = v52 - v53;
      if (!v54)
      {
LABEL_20:
        if (v43 == *&v156[v26])
        {

          sub_100031928(v163, v41);
          v55 = v161;
          sub_1000318C0(v161, v31);
          v56 = v31;
          goto LABEL_54;
        }

        aBlock = 0;
        v166 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        v57._countAndFlagsBits = 0x6465766965636552;
        v57._object = 0xE900000000000020;
        String.append(_:)(v57);
        if (v40 > 1)
        {
          v58 = 0;
          if (v40 == 2)
          {
            v60 = *(v161 + 16);
            v59 = *(v161 + 24);
            v54 = __OFSUB__(v59, v60);
            v58 = (v59 - v60);
            if (v54)
            {
              __break(1u);
              goto LABEL_29;
            }
          }
        }

        else if (v40)
        {
          LODWORD(v58) = HIDWORD(v161) - v161;
          if (__OFSUB__(HIDWORD(v161), v161))
          {
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v58 = v58;
        }

        else
        {
          v58 = BYTE6(v31);
        }

        v161 = 0x8000000100431260;
        v162 = 0x800000010042A530;
        v171 = v58;
        v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v88);

        v89._countAndFlagsBits = 0xD000000000000020;
        v89._object = 0x800000010042D870;
        String.append(_:)(v89);
        v171 = *&v156[v26];
        v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v90);

        v91._countAndFlagsBits = 0x6E615220726F6620;
        v91._object = 0xEC000000203A6567;
        String.append(_:)(v91);
        String.append(_:)(*(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader));
        v92._countAndFlagsBits = 0x65746E696F70202CLL;
        v92._object = 0xEA00000000003D72;
        String.append(_:)(v92);
        v93._countAndFlagsBits = v24;
        v93._object = v39;
        String.append(_:)(v93);

        v155 = v166;
        v156 = aBlock;
        v157 = type metadata accessor for KnoxServiceClient.ClientError();
        v66 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        v148 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v42 + 104))(v149, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v159);
        v94 = v160;
        v95 = v152;
        v96 = v158;
        (*(v160 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v158);
        static OS_dispatch_queue.global(qos:)();
        (*(v94 + 8))(v95, v96);
        v97 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v98 = v162;
        *(v66 + 16) = 0xD00000000000001ALL;
        *(v66 + 24) = v98;
        v99 = v161;
        *(v66 + 32) = 0xD000000000000069;
        *(v66 + 40) = v99;
        *(v66 + 56) = 10;
        *(v66 + 48) = 154;
        v100 = v155;
        *(v66 + 64) = v156;
        *(v66 + 72) = v100;
        *(v66 + 80) = 0;
        *(v66 + 88) = v97;
        sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        goto LABEL_73;
      }

      __break(1u);
    }

    else
    {
      v41 = v164;
      v42 = v162;
      if (!v40)
      {
        v43 = BYTE6(v157);
        goto LABEL_20;
      }
    }

    LODWORD(v43) = HIDWORD(v161) - v161;
    if (__OFSUB__(HIDWORD(v161), v161))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v43 = v43;
    goto LABEL_20;
  }

  v31 = v154;
  v32 = *&v154[v19];
  v33 = *((swift_isaMask & *v32) + 0xF0);
  v34 = v32;
  v35 = v33();

  if (!v35)
  {
LABEL_29:

    v157 = 0x800000010042A530;
    v161 = 0x8000000100431260;
    aBlock = 0;
    v166 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    aBlock = 0xD00000000000002BLL;
    v166 = 0x8000000100431520;
    v61 = [*(v31 + v19) description];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v155 = aBlock;
    v148 = v166;
    v156 = type metadata accessor for KnoxServiceClient.ClientError();
    v66 = swift_allocObject();
    v147[0] = sub_10001AA40(0, &qword_1004A7840);
    v147[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v162 + 104))(v149, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v159);
    v67 = v160;
    v68 = v152;
    v69 = v158;
    (*(v160 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v158);
    static OS_dispatch_queue.global(qos:)();
    (*(v67 + 8))(v68, v69);
    v70 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v71 = v157;
    *(v66 + 16) = 0xD00000000000001ALL;
    *(v66 + 24) = v71;
    v72 = v161;
    *(v66 + 32) = 0xD000000000000069;
    *(v66 + 40) = v72;
    *(v66 + 56) = 14;
    *(v66 + 48) = 117;
    v73 = v148;
    *(v66 + 64) = v155;
    *(v66 + 72) = v73;
    *(v66 + 80) = 0;
    *(v66 + 88) = v70;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_73:
    swift_allocError();
    *v146 = v66;
    swift_willThrow();

    goto LABEL_74;
  }

  v36 = *&v35[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size];

  v38 = v157 >> 62;
  if ((v157 >> 62) > 1)
  {
    if (v38 == 2)
    {
      v75 = *(v161 + 16);
      v74 = *(v161 + 24);
      v54 = __OFSUB__(v74, v75);
      v76 = (v74 - v75);
      if (v54)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v76 != v36)
      {
        goto LABEL_42;
      }
    }

    else if (v36)
    {
LABEL_42:
      v156 = v23;
      aBlock = 0;
      v166 = 0xE000000000000000;
      _StringGuts.grow(_:)(123);
      v101._object = 0x8000000100431330;
      v101._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v101);
      String.append(_:)(*(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader));
      v102._countAndFlagsBits = 0xD000000000000032;
      v102._object = 0x8000000100431350;
      String.append(_:)(v102);
      v171 = v36;
      v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      p_aBlock = &aBlock;
      String.append(_:)(v103);

      v104._countAndFlagsBits = 0xD000000000000014;
      v104._object = 0x8000000100431390;
      String.append(_:)(v104);
      if (v38 <= 1)
      {
        v105 = v160;
        v28 = v24;
        if (!v38)
        {
          v106 = BYTE6(v157);
          v77 = v152;
LABEL_71:
          v24 = v159;
LABEL_72:
          v160 = 0x8000000100431260;
          v161 = 0x800000010042A530;
          v171 = v106;
          v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v138);

          v139._countAndFlagsBits = 0xD000000000000013;
          v139._object = 0x80000001004313B0;
          String.append(_:)(v139);
          v140._countAndFlagsBits = v28;
          v140._object = v156;
          String.append(_:)(v140);

          v156 = v166;
          v157 = aBlock;
          v159 = type metadata accessor for KnoxServiceClient.ClientError();
          v66 = swift_allocObject();
          v152 = sub_10001AA40(0, &qword_1004A7840);
          v155 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          aBlock = &_swiftEmptyArrayStorage;
          sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10003DEE8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v162 + 104))(v149, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
          v141 = v158;
          (v105[13])(v77, enum case for DispatchQoS.QoSClass.default(_:), v158);
          static OS_dispatch_queue.global(qos:)();
          (v105[1])(v77, v141);
          v142 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v143 = v161;
          *(v66 + 16) = 0xD00000000000001ALL;
          *(v66 + 24) = v143;
          v144 = v160;
          *(v66 + 32) = 0xD000000000000069;
          *(v66 + 40) = v144;
          *(v66 + 56) = 10;
          *(v66 + 48) = 121;
          v145 = v156;
          *(v66 + 64) = v157;
          *(v66 + 72) = v145;
          *(v66 + 80) = 0;
          *(v66 + 88) = v142;
          sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          goto LABEL_73;
        }

        goto LABEL_69;
      }

      v106 = 0;
      v107 = v38 == 2;
      v77 = v152;
      v36 = v151;
      v105 = v160;
      v28 = v24;
      v24 = v159;
      if (!v107)
      {
        goto LABEL_72;
      }

      v109 = *(v161 + 16);
      v108 = *(v161 + 24);
      v54 = __OFSUB__(v108, v109);
      v106 = (v108 - v109);
      if (!v54)
      {
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  else if (v38)
  {
    if (__OFSUB__(HIDWORD(v161), v161))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if ((HIDWORD(v161) - v161) != v36)
    {
      goto LABEL_42;
    }
  }

  else if (BYTE6(v157) != v36)
  {
    goto LABEL_42;
  }

  v77 = v23;
  __chkstk_darwin(v37);
  v78 = v161;
  v147[-4] = v79;
  v147[-3] = v78;
  v147[-2] = v157;
  OS_dispatch_queue.sync<A>(execute:)();
  v80 = aBlock;
  sub_1000039E8(&unk_1004A7370);
  p_aBlock = &type metadata for String;
  if (v80 != 1)
  {
LABEL_50:
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_100376BB0;
    v111 = *(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader);
    v83 = *(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader + 8);
    *(v110 + 56) = p_aBlock;
    v112 = sub_10001A9EC();
    v162 = v111;
    *(v110 + 32) = v111;
    *(v110 + 40) = v83;
    *(v110 + 96) = p_aBlock;
    *(v110 + 104) = v112;
    *(v110 + 64) = v112;
    *(v110 + 72) = v24;
    v86 = v77;
    *(v110 + 80) = v77;
    sub_10001AA40(0, &qword_1004A7380);
    swift_bridgeObjectRetain_n();

    v87 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    goto LABEL_51;
  }

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100376F00;
  *(v82 + 56) = &type metadata for Int;
  *(v82 + 64) = &protocol witness table for Int;
  *(v82 + 32) = v36;
  v84 = *(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader);
  v83 = *(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader + 8);
  *(v82 + 96) = &type metadata for String;
  v85 = sub_10001A9EC();
  v162 = v84;
  *(v82 + 72) = v84;
  *(v82 + 80) = v83;
  *(v82 + 136) = &type metadata for String;
  *(v82 + 144) = v85;
  *(v82 + 104) = v85;
  *(v82 + 112) = v24;
  v86 = v77;
  *(v82 + 120) = v77;
  sub_10001AA40(0, &qword_1004A7380);
  swift_bridgeObjectRetain_n();

  v87 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
LABEL_51:
  os_log(_:dso:log:type:_:)();

  sub_1000039E8(&unk_1004A7370);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_100376F00;
  *(v113 + 56) = &type metadata for Int;
  *(v113 + 64) = &protocol witness table for Int;
  *(v113 + 32) = v36;
  *(v113 + 96) = &type metadata for String;
  v114 = sub_10001A9EC();
  *(v113 + 72) = v162;
  *(v113 + 80) = v83;
  *(v113 + 136) = &type metadata for String;
  *(v113 + 144) = v114;
  *(v113 + 104) = v114;
  *(v113 + 112) = v24;
  *(v113 + 120) = v86;
  sub_10001AA40(0, &qword_1004A7380);
  v115 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v116 = *(v26 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_offset);
  v117 = *&v156[v26];
  if (__OFADD__(v116, v117))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v119 = v163;
  v118 = v164;
  v31 = v157;
  if (v116 + v117 < v116)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v55 = Data._Representation.subscript.getter();
  v56 = v120;
  sub_100031928(v119, v118);
LABEL_54:
  v121 = v26;
  sub_1000C8C4C(v55, v56, v121);
  if (!v28)
  {
    sub_100031928(v55, v56);
    v124 = *&v121[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
    v125 = v31 >> 62;
    if ((v31 >> 62) <= 1)
    {
      if (!v125)
      {
        v126 = BYTE6(v31);
        goto LABEL_66;
      }

LABEL_63:
      if (__OFSUB__(HIDWORD(v161), v161))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v126 = HIDWORD(v161) - v161;
      goto LABEL_66;
    }

    if (v125 == 2)
    {
      v128 = *(v161 + 16);
      v127 = *(v161 + 24);
      v126 = v127 - v128;
      if (__OFSUB__(v127, v128))
      {
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v126 = 0;
    }

LABEL_66:
    v129 = *(v124 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
    v130 = swift_allocObject();
    *(v130 + 16) = v126;
    *(v130 + 24) = v124;
    v131 = swift_allocObject();
    *(v131 + 16) = sub_100027124;
    *(v131 + 24) = v130;
    v169 = sub_10001FA40;
    v170 = v131;
    v105 = &aBlock;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_10003885C;
    v168 = &unk_100482F78;
    v28 = _Block_copy(&aBlock);

    dispatch_sync(v129, v28);
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v133 = swift_allocObject();
      *(v133 + 16) = v121;
      *(v133 + 24) = 1;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_10001F9F8;
      *(v134 + 24) = v133;
      v169 = sub_10001FA40;
      v170 = v134;
      aBlock = _NSConcreteStackBlock;
      v166 = 1107296256;
      v167 = sub_10003885C;
      v168 = &unk_100482FF0;
      v135 = _Block_copy(&aBlock);
      v136 = v121;

      dispatch_sync(v148, v135);
      _Block_release(v135);
      v137 = swift_isEscapingClosureAtFileLocation();

      if ((v137 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_69:
      LODWORD(v106) = HIDWORD(v161) - v161;
      v77 = v152;
      if (!__OFSUB__(HIDWORD(v161), v161))
      {
        v106 = v106;
        goto LABEL_71;
      }

LABEL_85:
      __break(1u);
      return;
    }

    goto LABEL_78;
  }

  v122 = v55;
  v123 = v56;
LABEL_75:
  sub_100031928(v122, v123);
}

char *sub_1000C7DE8()
{
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v1 = v0;
  v2 = sub_100072164(v1);
  v3 = v1;
  sub_100079A68(v2, v3);

  return v3;
}

void sub_1000C7E58(void *a1, uint64_t a2, char *a3)
{
  v67 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  if (a2)
  {

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100376A40;
    v12 = (*(*a2 + 168))();
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = v12;
    v15 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10001A9EC();
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_10001AA40(0, &qword_1004A7380);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v17 = swift_allocError();
    *v18 = a2;
    v19 = *((swift_isaMask & *a1) + 0x410);

    v19(v17);
  }

  type metadata accessor for DownloadSubTask();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = *(v20 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_dataTaskFinishedCallback);
  v22 = v20;
  v23 = a1;

  v21(v22);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_11;
  }

  v25 = Strong;
  v26 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue;
  *(&v57 - 2) = __chkstk_darwin(Strong);
  a1 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  v27 = aBlock - 1;
  if (!__OFSUB__(aBlock, 1))
  {
    v28 = *&v25[v26];
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1000C8FB0;
    *(v30 + 24) = v29;
    v72 = sub_10001F874;
    v73 = v30;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10003885C;
    v71 = &unk_100482F00;
    v31 = _Block_copy(&aBlock);
    v7 = v73;
    v32 = v25;

    dispatch_sync(v28, v31);
    _Block_release(v31);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
LABEL_11:
      v47 = v67;
      sub_100003B20(*&v67[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &aBlock);
      v48 = v71;
      v49 = v72;
      sub_10000E2A8(&aBlock, v71);
      (*(v49 + 2))(v47, 0, v48, v49);
      sub_100003C3C(&aBlock);
      sub_1000039E8(&unk_1004A7370);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100376BB0;
      v51 = &v47[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
      swift_beginAccess();
      v53 = *v51;
      v52 = *(v51 + 1);
      *(v50 + 56) = &type metadata for String;
      v54 = sub_10001A9EC();
      *(v50 + 64) = v54;
      *(v50 + 32) = v53;
      *(v50 + 40) = v52;
      __chkstk_darwin(v54);
      *(&v57 - 2) = v47;

      OS_dispatch_queue.sync<A>(execute:)();
      v55 = v74;
      *(v50 + 96) = &type metadata for UInt;
      *(v50 + 104) = &protocol witness table for UInt;
      *(v50 + 72) = v55;
      sub_10001AA40(0, &qword_1004A7380);
      v56 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    __break(1u);
LABEL_9:
    v61 = 0x8000000100431260;
    aBlock = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    aBlock = 0xD000000000000023;
    v69 = 0x80000001004312D0;
    v33 = [a1 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v58 = v69;
    v59 = aBlock;
    v60 = type metadata accessor for KnoxServiceClient.ClientError();
    v38 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v57 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v7 + 104))(v64, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
    v40 = v65;
    v39 = v66;
    v41 = v62;
    (*(v65 + 104))(v62, enum case for DispatchQoS.QoSClass.default(_:), v66);
    static OS_dispatch_queue.global(qos:)();
    (*(v40 + 8))(v41, v39);
    v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v38 + 16) = 0x2865747563657865;
    *(v38 + 24) = 0xE900000000000029;
    *(v38 + 32) = 0xD000000000000069;
    v43 = v61;
    *(v38 + 56) = 14;
    *(v38 + 40) = v43;
    *(v38 + 48) = 184;
    v44 = v58;
    *(v38 + 64) = v59;
    *(v38 + 72) = v44;
    *(v38 + 80) = 0;
    *(v38 + 88) = v42;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v45 = swift_allocError();
    *v46 = v38;
    (*((swift_isaMask & *a1) + 0x410))(v45);

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1000C88D8()
{

  v1 = OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_signedURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_request;
  v4 = type metadata accessor for URLRequest();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectWeakDestroy();

  v5 = v0 + OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_asyncStream;

  return sub_100003C3C(v5);
}

id sub_1000C89C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadSubTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DownloadSubTask()
{
  result = qword_1004A9720;
  if (!qword_1004A9720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C8B48()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URLRequest();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1000C8C4C(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v13, 0, 14);
      v5 = a3;
      sub_100003B20(&a3[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_asyncStream], v14);
      v11 = v15;
      v12 = v16;
      sub_10000E2A8(v14, v15);
      (*(v12 + 48))(v13, v13, *&v5[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_offset], v11, v12);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
LABEL_7:
    v10 = a3;
    sub_1000C8E5C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, v10);

    return;
  }

  if (v4)
  {
    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v13[0] = a1;
  LOWORD(v13[1]) = a2;
  BYTE2(v13[1]) = BYTE2(a2);
  BYTE3(v13[1]) = BYTE3(a2);
  BYTE4(v13[1]) = BYTE4(a2);
  BYTE5(v13[1]) = BYTE5(a2);
  v5 = a3;
  sub_100003B20(&a3[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_asyncStream], v14);
  v6 = v15;
  v7 = v16;
  sub_10000E2A8(v14, v15);
  (*(v7 + 48))(v13, v13 + BYTE6(a2), *&v5[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_offset], v6, v7);
LABEL_9:
  sub_100003C3C(v14);
}

void sub_1000C8E5C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v7;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_100003B20(&a4[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_asyncStream], v17);
  v15 = v18;
  v16 = v19;
  sub_10000E2A8(v17, v18);
  (*(v16 + 48))(v7, v14, *&a4[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_offset], v15, v16);
  sub_100003C3C(v17);
}

uint64_t sub_1000C8F78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C8FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C8FE0(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000C9084()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C90BC()
{

  return _swift_deallocObject(v0, 25, 7);
}

Swift::Int sub_1000C9154()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C91B0()
{
  String.hash(into:)();
}

Swift::Int sub_1000C91F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C9248@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C968C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C9294()
{
  result = *(v0 + 24);
  if (!result)
  {
    result = swift_slowAlloc();
    *(v0 + 24) = result;
  }

  return result;
}

uint64_t sub_1000C9330(uint64_t a1, uint64_t a2)
{
  if (qword_1004A6AD8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1004A9730;
  if (*(off_1004A9730 + 2))
  {
    v5 = sub_100013364(a1, a2);
    if (v6)
    {
      v7 = *(v4[7] + 4 * v5);
LABEL_10:
      swift_endAccess();
      return v7;
    }
  }

  swift_endAccess();
  result = String.utf8CString.getter();
  v9 = *(result + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 3)
  {
    v10 = *(result + 32);
    v11 = *(result + 33);
    v12 = *(result + 34);

    v7 = v10 | (v11 << 8) | (v12 << 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = off_1004A9730;
    off_1004A9730 = 0x8000000000000000;
    sub_100026E9C(v7, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1004A9730 = v14;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AAHeaderWrapper.AAHeaderWrapperError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AAHeaderWrapper.AAHeaderWrapperError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C9638()
{
  result = qword_1004A98D8;
  if (!qword_1004A98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A98D8);
  }

  return result;
}

unint64_t sub_1000C968C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047BBA8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t ClearTextKey.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1000C9808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000C9890(uint64_t a1)
{
  v2 = sub_1000C9A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C98CC(uint64_t a1)
{
  v2 = sub_1000C9A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClearTextKey.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004A98E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_1000C9A44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000C9A44()
{
  result = qword_1004A98E8;
  if (!qword_1004A98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A98E8);
  }

  return result;
}

uint64_t ClearTextKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A98F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000C9A44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_100003C3C(a1);
}

__n128 sub_1000C9C24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000C9C30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000C9C78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000C9CD8()
{
  result = qword_1004A98F8;
  if (!qword_1004A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A98F8);
  }

  return result;
}

unint64_t sub_1000C9D30()
{
  result = qword_1004A9900;
  if (!qword_1004A9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9900);
  }

  return result;
}

unint64_t sub_1000C9D88()
{
  result = qword_1004A9908;
  if (!qword_1004A9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9908);
  }

  return result;
}

KnoxClientPublic::XB3TraceId __swiftcall XB3TraceId.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[4] = v6;
  v13[5] = v8;
  v13[2] = 45;
  v13[3] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v9 = String.lowercased()();

  *v1 = v9;
  result.traceIdString._object = v11;
  result.traceIdString._countAndFlagsBits = v10;
  return result;
}

KnoxClientPublic::XB3TraceId_optional __swiftcall XB3TraceId.init(traceIdString:)(Swift::String traceIdString)
{
  v2 = v1;
  v3 = String.lowercased()();

  if (String.count.getter() > 15 && String.count.getter() < 33)
  {

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v8 = v7;

      if (v8)
      {
        goto LABEL_7;
      }
    }

    v11 = String.Iterator.next()();
    object = v11.value._object;
    countAndFlagsBits = v11.value._countAndFlagsBits;
    if (v11.value._object)
    {
      do
      {
        if (countAndFlagsBits == 48 && object == 0xE100000000000000)
        {
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v12 & 1) == 0)
          {

            *v2 = v3;
            goto LABEL_17;
          }
        }

        v13 = String.Iterator.next()();
        object = v13.value._object;
        countAndFlagsBits = v13.value._countAndFlagsBits;
      }

      while (v13.value._object);
    }

LABEL_7:
  }

  v2->_countAndFlagsBits = 0;
  v2->_object = 0;
LABEL_17:
  result.value.traceIdString._object = v5;
  result.value.traceIdString._countAndFlagsBits = v4;
  result.is_nil = v6;
  return result;
}

uint64_t static XB3TraceId.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000CA118()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CA220()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CA324()
{
  String.hash(into:)();
}

uint64_t sub_1000CA474()
{
  String.hash(into:)();
}

Swift::Int sub_1000CA5D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CA740()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CA844()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CA944()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t ImageDecryptionComponents.digest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest);

  return v1;
}

uint64_t ImageDecryptionComponents.digestAlgorithm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm);

  return v1;
}

uint64_t ImageDecryptionComponents.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000CAC0C()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1004A9910 = result;
  return result;
}

char *ImageDecryptionComponents.init(from:)(void *a1)
{
  v59 = type metadata accessor for DispatchQoS.QoSClass();
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v60);
  v66 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v65 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000039E8(&qword_1004A9940);
  v67 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = v52 - v13;
  v69 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder;
  v71 = v1;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder] = 0;
  sub_10000E2A8(a1, a1[3]);
  sub_1000CF8EC();
  v15 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    sub_100003C3C(a1);
    v19 = v71;
  }

  else
  {
    v57 = v11;
    v58 = v8;
    v17 = v67;
    v16 = v68;
    v70 = a1;
    type metadata accessor for ImageDecryptionComponents.Encryption();
    v75 = 0;
    sub_1000CFB24(&qword_1004A9958, v18, type metadata accessor for ImageDecryptionComponents.Encryption);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v71;
    v56 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption;
    *&v71[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption] = v73;
    LOBYTE(v73) = 3;
    *&v19[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v73) = 1;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = &v19[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v73) = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = &v19[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm];
    *v25 = v24;
    v25[1] = v26;
    type metadata accessor for ImageDecryptionComponents.Location();
    v75 = 4;
    sub_1000CFB24(&qword_1004A9960, v27, type metadata accessor for ImageDecryptionComponents.Location);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v19[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location] = v73;
    LOBYTE(v73) = 5;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v29;
    v55 = v28;
    if (qword_1004A6AE0 != -1)
    {
      swift_once();
    }

    v31 = qword_1004A9910;
    v53 = v31;
    v32 = String._bridgeToObjectiveC()();
    v54 = v30;
    v33 = v32;
    v34 = [v31 dateFromString:v32];

    if (v34)
    {
      v35 = v34;

      v36 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v65;
      (*(v65 + 16))(&v19[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt], v36, v9);
      v38 = type metadata accessor for ImageDecryptionComponents();
      v72.receiver = v19;
      v72.super_class = v38;
      v19 = objc_msgSendSuper2(&v72, "init");
      (*(v37 + 8))(v36, v9);
      (*(v17 + 8))(v14, v12);
      sub_100003C3C(v70);
      return v19;
    }

    v65 = 0x8000000100431640;
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v39._object = 0x80000001004302A0;
    v39._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v39);
    v40._countAndFlagsBits = v55;
    v40._object = v54;
    String.append(_:)(v40);

    v41._countAndFlagsBits = 0xD000000000000022;
    v41._object = 0x80000001004302C0;
    String.append(_:)(v41);
    v55 = v73;
    v54 = v74;
    v57 = type metadata accessor for KnoxServiceClient.ClientError();
    v42 = v16;
    v43 = swift_allocObject();
    v52[0] = sub_10000E014();
    v52[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v73 = &_swiftEmptyArrayStorage;
    sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    v53 = v12;
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v42 + 104))(v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
    v45 = v63;
    v44 = v64;
    v46 = v59;
    (*(v64 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v59);
    v68 = static OS_dispatch_queue.global(qos:)();
    (*(v44 + 8))(v45, v46);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v43 + 16) = 0x6F72662874696E69;
    *(v43 + 24) = 0xEB00000000293A6DLL;
    v48 = v65;
    *(v43 + 32) = 0xD00000000000006ALL;
    *(v43 + 40) = v48;
    *(v43 + 56) = 7;
    *(v43 + 48) = 56;
    v49 = v54;
    *(v43 + 64) = v55;
    *(v43 + 72) = v49;
    *(v43 + 80) = 0;
    *(v43 + 88) = v47;
    sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v50 = v43;
    v51 = v70;
    swift_willThrow();
    (*(v17 + 8))(v14, v53);
    sub_100003C3C(v51);
  }

  type metadata accessor for ImageDecryptionComponents();
  swift_deallocPartialClassInstance();
  return v19;
}

char *ImageDecryptionComponents.init(copyingFrom:using:)(char *a1, char *a2, char *a3)
{
  v121 = a3;
  v100 = a2;
  v5 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v5 - 8);
  v102 = &v97 - v6;
  v104 = type metadata accessor for URLComponents();
  v122 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin(v8);
  v111 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v110 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v106);
  v109 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v105 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004A6D30);
  v15 = __chkstk_darwin(v14 - 8);
  v99 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v97 - v17;
  v19 = type metadata accessor for URL();
  v130 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v97 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v123 = &v97 - v22;
  v120 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder] = 0;
  v23 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption];
  v119 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption] = v23;
  v24 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest + 8];
  v25 = &v3[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
  *v25 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
  *(v25 + 1) = v24;
  v117 = v25;
  v26 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm + 8];
  v27 = &v3[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm];
  *v27 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm];
  *(v27 + 1) = v26;
  v116 = v27;
  v28 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt;
  v29 = type metadata accessor for Date();
  v114 = *(v29 - 8);
  v115 = v29;
  v30 = *(v114 + 16);
  v118 = v28;
  v30(&v3[v28], &a1[v28]);
  v31 = *&a1[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size];
  v125 = v3;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size] = v31;
  v103 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location;
  v32 = v23;

  v33 = v130;
  URL.init(string:)();

  v34 = *(v33 + 48);
  v35 = v34(v18, 1, v19);
  v124 = a1;
  if (v35 == 1)
  {

    sub_100013F2C(v18, &qword_1004A6D30);
    v123 = 0x80000001004316B0;
    v130 = 0x8000000100431640;
    v128 = 0;
    v129 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v128 = 0xD00000000000001ELL;
    v129 = 0x80000001004316D0;
    v36 = (*&v103[a1] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);
    v37 = *v36;
    v38 = v36[1];

    v39._countAndFlagsBits = v37;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v121 = v128;
    v104 = v129;
    v122 = type metadata accessor for KnoxServiceClient.ClientError();
    v41 = swift_allocObject();
    sub_10000E014();
    v103 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v128 = &_swiftEmptyArrayStorage;
    sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v107 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
    v43 = v111;
    v42 = v112;
    v44 = v113;
    (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v44);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v123;
    *(v41 + 16) = 0xD000000000000018;
    *(v41 + 24) = v46;
    v47 = v130;
    *(v41 + 32) = 0xD00000000000006ALL;
    *(v41 + 40) = v47;
    *(v41 + 56) = 7;
    *(v41 + 48) = 84;
    v48 = v104;
    *(v41 + 64) = v121;
    *(v41 + 72) = v48;
    *(v41 + 80) = 0;
    *(v41 + 88) = v45;
    sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v49 = v41;
    swift_willThrow();
  }

  else
  {
    v50 = *(v33 + 32);
    v51 = v18;
    v52 = v19;
    v50(v123, v51, v19);
    v53 = v102;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v54 = v104;
    if ((*(v122 + 48))(v53, 1, v104) == 1)
    {

      sub_100013F2C(v53, &qword_1004A7160);
      v104 = 0x80000001004316B0;
      v122 = 0x8000000100431640;
      v128 = 0;
      v129 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v128 = 0xD000000000000026;
      v129 = 0x80000001004316F0;
      sub_1000CFB24(&qword_1004AAE30, 255, &type metadata accessor for URL);
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 39;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      v102 = v128;
      v101 = v129;
      v103 = type metadata accessor for KnoxServiceClient.ClientError();
      v57 = swift_allocObject();
      v121 = v19;
      v58 = v57;
      sub_10000E014();
      v100 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v128 = &_swiftEmptyArrayStorage;
      sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v107 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
      v60 = v111;
      v59 = v112;
      v61 = v113;
      (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
      static OS_dispatch_queue.global(qos:)();
      (*(v59 + 8))(v60, v61);
      v62 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v63 = v104;
      *(v58 + 16) = 0xD000000000000018;
      *(v58 + 24) = v63;
      v64 = v122;
      *(v58 + 32) = 0xD00000000000006ALL;
      *(v58 + 40) = v64;
      *(v58 + 56) = 7;
      *(v58 + 48) = 89;
      v65 = v101;
      *(v58 + 64) = v102;
      *(v58 + 72) = v65;
      *(v58 + 80) = 0;
      *(v58 + 88) = v62;
      sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v66 = v58;
      swift_willThrow();
    }

    else
    {
      v67 = v101;
      (*(v122 + 32))(v101, v53, v54);
      URLComponents.host.setter();
      v68 = v99;
      URLComponents.url.getter();
      if (v34(v68, 1, v52) != 1)
      {
        v83 = v97;
        v50(v97, v68, v52);
        v84 = URL.absoluteString.getter();
        v86 = v85;
        v87 = v52;
        v88 = v124;
        v89 = *(*&v103[v124] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_expiration);
        v90 = type metadata accessor for ImageDecryptionComponents.Location();
        v91 = objc_allocWithZone(v90);
        *&v91[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_expiration] = v89;
        v92 = &v91[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri];
        *v92 = v84;
        v92[1] = v86;
        v127.receiver = v91;
        v127.super_class = v90;
        v93 = objc_msgSendSuper2(&v127, "init");
        v94 = *(v130 + 8);
        v94(v83, v87);
        (*(v122 + 8))(v67, v104);
        v94(v123, v87);
        v95 = v125;
        *&v125[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location] = v93;
        v96 = type metadata accessor for ImageDecryptionComponents();
        v126.receiver = v95;
        v126.super_class = v96;
        v81 = objc_msgSendSuper2(&v126, "init");

        return v81;
      }

      sub_100013F2C(v68, &qword_1004A6D30);
      v102 = 0x80000001004316B0;
      v103 = 0x8000000100431640;
      v128 = 0;
      v129 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v128 = 0xD00000000000001ELL;
      v129 = 0x8000000100431720;
      sub_1000CFB24(&qword_1004A80C8, 255, &type metadata accessor for URLComponents);
      v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v69);

      v70._countAndFlagsBits = 39;
      v70._object = 0xE100000000000000;
      String.append(_:)(v70);
      v99 = v128;
      v98 = v129;
      v100 = type metadata accessor for KnoxServiceClient.ClientError();
      v71 = swift_allocObject();
      v121 = v52;
      v72 = v71;
      sub_10000E014();
      v97 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v128 = &_swiftEmptyArrayStorage;
      sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v107 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
      v74 = v111;
      v73 = v112;
      v75 = v113;
      (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
      static OS_dispatch_queue.global(qos:)();
      (*(v73 + 8))(v74, v75);
      v76 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v77 = v102;
      *(v72 + 16) = 0xD000000000000018;
      *(v72 + 24) = v77;
      v78 = v103;
      *(v72 + 32) = 0xD00000000000006ALL;
      *(v72 + 40) = v78;
      *(v72 + 56) = 7;
      *(v72 + 48) = 98;
      v79 = v98;
      *(v72 + 64) = v99;
      *(v72 + 72) = v79;
      *(v72 + 80) = 0;
      *(v72 + 88) = v76;
      sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v80 = v72;
      swift_willThrow();

      (*(v122 + 8))(v101, v104);
    }

    (*(v130 + 8))(v123, v121);
  }

  v81 = v125;

  (*(v114 + 8))(&v81[v118], v115);

  type metadata accessor for ImageDecryptionComponents();
  swift_deallocPartialClassInstance();
  return v81;
}

Swift::Int sub_1000CC958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  v8 = *(a4 + 16);
  *(a4 + 16) = a1;
  v9 = a1;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1000CC9F4()
{
  sub_1000CD048();
  type metadata accessor for ImageDecryptionComponents();
  sub_1000CFB24(&qword_1004A94D0, 255, type metadata accessor for ImageDecryptionComponents);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

char *sub_1000CCAAC()
{
  v36 = type metadata accessor for DispatchQoS.QoSClass();
  v43 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v39 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  sub_1000CD048();
  v41 = v0;
  type metadata accessor for ImageDecryptionComponents();
  sub_1000CFB24(&qword_1004A94D0, 255, type metadata accessor for ImageDecryptionComponents);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  if (!v1)
  {
    v34 = v10;
    v35 = v7;
    static String.Encoding.utf8.getter();
    v15 = String.init(data:encoding:)();
    if (v16)
    {
      v7 = v15;
      sub_100031928(v12, v14);
    }

    else
    {
      v32 = 0x8000000100431640;
      v33 = v14;
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v41 = 0xD000000000000012;
      v42 = 0x800000010042E570;
      swift_getObjectType();
      v18._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0xD000000000000014;
      v19._object = 0x800000010042E590;
      String.append(_:)(v19);
      v29 = v42;
      v30 = v41;
      v31 = type metadata accessor for KnoxServiceClient.ClientError();
      v7 = swift_allocObject();
      sub_10000E014();
      v28[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v41 = &_swiftEmptyArrayStorage;
      sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v37 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
      v20 = v43;
      v21 = *(v43 + 104);
      v38 = v12;
      v22 = v40;
      v23 = v36;
      v21(v40, enum case for DispatchQoS.QoSClass.default(_:), v36);
      static OS_dispatch_queue.global(qos:)();
      (*(v20 + 8))(v22, v23);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy(v7 + 16, "jsonString()");
      v7[29] = 0;
      *(v7 + 15) = -5120;
      v25 = v32;
      *(v7 + 4) = 0xD00000000000006ALL;
      *(v7 + 5) = v25;
      v7[56] = 7;
      *(v7 + 6) = 177;
      v26 = v29;
      *(v7 + 8) = v30;
      *(v7 + 9) = v26;
      *(v7 + 10) = 0;
      *(v7 + 11) = v24;
      sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v27 = v7;
      swift_willThrow();
      sub_100031928(v38, v33);
    }
  }

  return v7;
}

uint64_t sub_1000CD048()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder;
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder))
  {
    v4 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents____lazy_storage___jsonEncoder);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v4 = JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_1000CD134()
{
  String.hash(into:)();
}

unint64_t sub_1000CD228@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0238(*a1);
  *a2 = result;
  return result;
}

void sub_1000CD258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6974707972636E65;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  v6 = 0xE800000000000000;
  v7 = 0x6E6F697461636F6CLL;
  if (v2 != 4)
  {
    v7 = 0x2D64657461657263;
    v6 = 0xEA00000000007461;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747365676964;
  if (v2 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = 0x8000000100429370;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006E6FLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_1000CD314()
{
  v1 = *v0;
  v2 = 0x6974707972636E65;
  v3 = 1702521203;
  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x2D64657461657263;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x747365676964;
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

unint64_t sub_1000CD3CC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0238(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CD3F4(uint64_t a1)
{
  v2 = sub_1000CF8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CD430(uint64_t a1)
{
  v2 = sub_1000CF8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

KnoxClientPublic::ImageDecryptionComponents::Encryption::KeyManagementSystem_optional __swiftcall ImageDecryptionComponents.Encryption.KeyManagementSystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047BCD8, v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ImageDecryptionComponents.Encryption.KeyManagementSystem.rawValue.getter()
{
  v1 = 1397440851;
  if (*v0 != 2)
  {
    v1 = 1397574487;
  }

  v2 = 1397574475;
  if (!*v0)
  {
    v2 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1000CD52C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CD5CC()
{
  String.hash(into:)();
}

Swift::Int sub_1000CD658()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000CD700(uint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 1397440851;
  if (*v1 != 2)
  {
    v3 = 1397574487;
  }

  v4 = 1397574475;
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v4 = *v1;
  }

  if (*v1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t ImageDecryptionComponents.Encryption.algorithm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_algorithm);

  return v1;
}

uint64_t ImageDecryptionComponents.Encryption.key.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key);

  return v1;
}

uint64_t ImageDecryptionComponents.Encryption.nonce.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_nonce);

  return v1;
}

id ImageDecryptionComponents.Encryption.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A9998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000CF9D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for ImageDecryptionComponents.Encryption();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_algorithm];
    *v11 = v9;
    v11[1] = v12;
    v22 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key];
    *v14 = v13;
    v14[1] = v15;
    v21 = 2;
    sub_1000CFA28();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms] = v22;
    v22 = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_nonce];
    *v17 = v16;
    v17[1] = v18;
    v19 = type metadata accessor for ImageDecryptionComponents.Encryption();
    v20.receiver = v1;
    v20.super_class = v19;
    v3 = objc_msgSendSuper2(&v20, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

Swift::Int sub_1000CDBFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CDCB0()
{
  String.hash(into:)();
}

Swift::Int sub_1000CDD50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CDE00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0284(*a1);
  *a2 = result;
  return result;
}

void sub_1000CDE30(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006DLL;
  v3 = 0x687469726F676C61;
  v4 = 0xE300000000000000;
  v5 = 7564651;
  if (*v1 != 2)
  {
    v5 = 0x65636E6F6ELL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 7955819;
    v2 = 0xE300000000000000;
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

uint64_t sub_1000CDEA0()
{
  v1 = 0x687469726F676C61;
  v2 = 7564651;
  if (*v0 != 2)
  {
    v2 = 0x65636E6F6ELL;
  }

  if (*v0)
  {
    v1 = 7955819;
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

unint64_t sub_1000CDF0C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0284(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CDF34(uint64_t a1)
{
  v2 = sub_1000CF9D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDF70(uint64_t a1)
{
  v2 = sub_1000CF9D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CE05C(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A99B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1000CF9D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms);
    v10[12] = 2;
    sub_1000CFA7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImageDecryptionComponents.Location.uri.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);

  return v1;
}

uint64_t sub_1000CE398()
{
  if (*v0)
  {
    return 6910581;
  }

  else
  {
    return 0x6974617269707865;
  }
}

uint64_t sub_1000CE3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
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

uint64_t sub_1000CE4B4(uint64_t a1)
{
  v2 = sub_1000CFAD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CE4F0(uint64_t a1)
{
  v2 = sub_1000CFAD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CE558(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A99C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1000CFAD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

id ImageDecryptionComponents.Location.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A99D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000CFAD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for ImageDecryptionComponents.Location();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    *&v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_expiration] = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri];
    *v11 = v9;
    v11[1] = v12;
    v13 = type metadata accessor for ImageDecryptionComponents.Location();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

id sub_1000CEA04(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000CEB00(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A99D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000CF8EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption);
  HIBYTE(v12) = 0;
  type metadata accessor for ImageDecryptionComponents.Encryption();
  sub_1000CFB24(&qword_1004A99E0, v9, type metadata accessor for ImageDecryptionComponents.Encryption);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location);
    HIBYTE(v12) = 4;
    type metadata accessor for ImageDecryptionComponents.Location();
    sub_1000CFB24(&qword_1004A99E8, v10, type metadata accessor for ImageDecryptionComponents.Location);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    type metadata accessor for Date();
    sub_1000CFB24(&qword_1004A7D40, 255, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CEE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = objc_allocWithZone(a3(a2));
  result = a4(a1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1000CEF18(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  v59 = a5;
  v60 = a6;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v53 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v65 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v61);
  v62 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v68 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = type metadata accessor for DispatchTime();
  v54 = *(v55 - 1);
  v13 = __chkstk_darwin(v55);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v48[-v16];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v50 = (v18 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v49 = (v19 + 16);
  v20 = dispatch_semaphore_create(0);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v20;
  v22 = *((swift_isaMask & *a1) + 0x300);
  v67 = v18;

  v66 = v19;

  v23 = v20;

  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v54 + 1);
  v25 = v55;
  v24(v15, v55);
  OS_dispatch_semaphore.wait(timeout:)();
  v24(v17, v25);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v58 = 0x8000000100431860;
    v59 = 0x8000000100431640;
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v26._countAndFlagsBits = 0x207265746661;
    v26._object = 0xE600000000000000;
    String.append(_:)(v26);
    Double.write<A>(to:)();
    v27._countAndFlagsBits = 0x73646E6F63657320;
    v27._object = 0xE800000000000000;
    String.append(_:)(v27);
    v60 = v23;
    v55 = v71;
    v56 = v70;
    v57 = type metadata accessor for KnoxServiceClient.ClientError();
    v28 = swift_allocObject();
    sub_10000E014();
    v54 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v70 = &_swiftEmptyArrayStorage;
    sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v63 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
    v29 = v51;
    v30 = v52;
    v31 = v53;
    (*(v51 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v53);
    static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v30, v31);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v58;
    *(v28 + 16) = 0xD00000000000004ALL;
    *(v28 + 24) = v33;
    *(v28 + 32) = 0xD00000000000006ALL;
    v34 = v59;
    v23 = v60;
    *(v28 + 56) = 20;
    *(v28 + 40) = v34;
    *(v28 + 48) = 138;
    v35 = v55;
    *(v28 + 64) = v56;
    *(v28 + 72) = v35;
    *(v28 + 80) = 0;
    *(v28 + 88) = v32;
    sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_3:
    swift_allocError();
    *v36 = v28;
LABEL_6:
    swift_willThrow();

    return;
  }

  v38 = v63;
  v37 = v64;
  v39 = v65;
  v40 = v50;
  swift_beginAccess();
  if (*v40)
  {
    swift_errorRetain();
    goto LABEL_6;
  }

  v41 = v49;
  swift_beginAccess();
  if (!*v41)
  {
    v60 = v23;
    v56 = 0x8000000100431860;
    v57 = 0x8000000100431640;
    v58 = 0x80000001004318B0;
    v59 = type metadata accessor for KnoxServiceClient.ClientError();
    v28 = swift_allocObject();
    v54 = sub_10000E014();
    v55 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v69 = &_swiftEmptyArrayStorage;
    sub_1000CFB24(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v38 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
    v42 = v51;
    v43 = v52;
    v44 = v53;
    (*(v51 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v53);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v44);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v56;
    *(v28 + 16) = 0xD00000000000004ALL;
    *(v28 + 24) = v46;
    v23 = v60;
    *(v28 + 32) = 0xD00000000000006ALL;
    v47 = v57;
    *(v28 + 56) = 14;
    *(v28 + 40) = v47;
    *(v28 + 48) = 152;
    *(v28 + 64) = 0xD00000000000002BLL;
    *(v28 + 72) = v58;
    *(v28 + 80) = 0;
    *(v28 + 88) = v45;
    sub_1000CFB24(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    goto LABEL_3;
  }

  *v41;
}

unint64_t sub_1000CF8EC()
{
  result = qword_1004A9950;
  if (!qword_1004A9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9950);
  }

  return result;
}

uint64_t type metadata accessor for ImageDecryptionComponents()
{
  result = qword_1004A9A20;
  if (!qword_1004A9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CF9D4()
{
  result = qword_1004A99A0;
  if (!qword_1004A99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A99A0);
  }

  return result;
}

unint64_t sub_1000CFA28()
{
  result = qword_1004A99A8;
  if (!qword_1004A99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A99A8);
  }

  return result;
}

unint64_t sub_1000CFA7C()
{
  result = qword_1004A99B8;
  if (!qword_1004A99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A99B8);
  }

  return result;
}

unint64_t sub_1000CFAD0()
{
  result = qword_1004A99C8;
  if (!qword_1004A99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A99C8);
  }

  return result;
}

uint64_t sub_1000CFB24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000CFB70()
{
  result = qword_1004A99F0;
  if (!qword_1004A99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A99F0);
  }

  return result;
}

uint64_t sub_1000CFBCC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000CFF24()
{
  result = qword_1004A9A80;
  if (!qword_1004A9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9A80);
  }

  return result;
}

unint64_t sub_1000CFF7C()
{
  result = qword_1004A9A88;
  if (!qword_1004A9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9A88);
  }

  return result;
}

unint64_t sub_1000CFFD4()
{
  result = qword_1004A9A90;
  if (!qword_1004A9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9A90);
  }

  return result;
}

unint64_t sub_1000D002C()
{
  result = qword_1004A9A98;
  if (!qword_1004A9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9A98);
  }

  return result;
}

unint64_t sub_1000D0084()
{
  result = qword_1004A9AA0;
  if (!qword_1004A9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AA0);
  }

  return result;
}

unint64_t sub_1000D00DC()
{
  result = qword_1004A9AA8;
  if (!qword_1004A9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AA8);
  }

  return result;
}

unint64_t sub_1000D0134()
{
  result = qword_1004A9AB0;
  if (!qword_1004A9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AB0);
  }

  return result;
}

unint64_t sub_1000D018C()
{
  result = qword_1004A9AB8;
  if (!qword_1004A9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AB8);
  }

  return result;
}

unint64_t sub_1000D01E4()
{
  result = qword_1004A9AC0;
  if (!qword_1004A9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AC0);
  }

  return result;
}

unint64_t sub_1000D0238(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047BC28, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D0284(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047BD58, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D02D0()
{
  result = qword_1004A9AC8;
  if (!qword_1004A9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9AC8);
  }

  return result;
}

uint64_t sub_1000D0324()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D035C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D0394()
{

  return _swift_deallocObject(v0, 40, 7);
}

id GenericKnoxPointer.init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = v13;
  v96 = a8;
  v93 = a6;
  v92 = a5;
  v110 = a4;
  v91 = a3;
  v111 = a2;
  v112 = a1;
  v108 = a11;
  v109 = a13;
  v98 = a12;
  v95 = a10;
  v94 = a9;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  __chkstk_darwin(v16);
  v100 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000039E8(&qword_1004A6D30);
  v20 = __chkstk_darwin(v19 - 8);
  v86 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v97 = &v83 - v23;
  v24 = __chkstk_darwin(v22);
  v90 = &v83 - v25;
  __chkstk_darwin(v24);
  v27 = &v83 - v26;
  v105 = &v83 - v26;
  v28 = sub_1000039E8(&qword_1004A73C0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v31;
  __chkstk_darwin(v29);
  v33 = (&v83 - v32);
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a7 + 4);
  v102 = v35;
  v103 = *(v35 + 16);
  v38 = a7[1];
  v88 = *a7;
  v87 = v38;
  v103(v37, v112, v34);
  sub_100013E54(v111, v33, &qword_1004A73C0);
  sub_100013E54(v110, v27, &qword_1004A6D30);
  sub_100013E54(v108, v31, &qword_1004A73C0);
  v39 = v106;
  v41 = v107 + 56;
  v40 = *(v107 + 56);
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v42 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v40(&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v39);
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v101 = v37;
  v99 = v34;
  v103(&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v37, v34);
  v103 = v33;
  sub_100013E54(v33, &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v43 = v90;
  v44 = v39;
  v85 = v41;
  v84 = v40;
  v40(v90, 1, 1, v39);
  swift_beginAccess();
  sub_100013EBC(v43, &v14[v42]);
  swift_endAccess();
  v45 = v91;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v91;
  v46 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v47 = v93;
  *v46 = v92;
  *(v46 + 1) = v47;
  v48 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v49 = v87;
  *v48 = v88;
  *(v48 + 1) = v49;
  *(v48 + 4) = v89;
  v50 = v96;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v96;
  v51 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v52 = v95;
  *v51 = v94;
  *(v51 + 1) = v52;
  v53 = *(swift_getObjectType() + 184);
  v54 = v45;
  v55 = v50;
  v56 = v53();
  v57 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v57 = v56;
  v57[1] = v58;
  v59 = v104;
  sub_100013E54(v104, &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v60 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v61 = v109;
  *v60 = v98;
  *(v60 + 1) = v61;
  v62 = type metadata accessor for KnoxPointer(0);
  v113.receiver = v14;
  v113.super_class = v62;
  v63 = v105;
  v109 = objc_msgSendSuper2(&v113, "init");
  v64 = v97;
  sub_100013E54(v63, v97, &qword_1004A6D30);
  v65 = v107;
  v66 = v64;
  if ((*(v107 + 48))(v64, 1, v44) == 1)
  {

    sub_100013F2C(v108, &qword_1004A73C0);
    sub_100013F2C(v110, &qword_1004A6D30);
    sub_100013F2C(v111, &qword_1004A73C0);
    v67 = *(v102 + 8);
    v68 = v99;
    v67(v112, v99);
    sub_100013F2C(v59, &qword_1004A73C0);
    sub_100013F2C(v63, &qword_1004A6D30);
    sub_100013F2C(v103, &qword_1004A73C0);
    v67(v101, v68);
    sub_100013F2C(v64, &qword_1004A6D30);
  }

  else
  {
    v69 = v55;
    v70 = v108;
    v71 = v110;
    v72 = v111;
    (*(v65 + 32))(v100, v66, v106);
    v73 = v114;
    sub_1000B0C5C(v86);
    v114 = v73;

    if (v73)
    {

      sub_100013F2C(v70, &qword_1004A73C0);
      sub_100013F2C(v71, &qword_1004A6D30);
      sub_100013F2C(v72, &qword_1004A73C0);
      v74 = *(v102 + 8);
      v75 = v99;
      v74(v112, v99);
      (*(v65 + 8))(v100, v106);
      sub_100013F2C(v104, &qword_1004A73C0);
      sub_100013F2C(v105, &qword_1004A6D30);
      sub_100013F2C(v103, &qword_1004A73C0);
      v74(v101, v75);
    }

    else
    {
      sub_100013F2C(v70, &qword_1004A73C0);
      sub_100013F2C(v71, &qword_1004A6D30);
      sub_100013F2C(v72, &qword_1004A73C0);
      v76 = *(v102 + 8);
      v77 = v99;
      v76(v112, v99);
      v78 = v106;
      (*(v65 + 8))(v100, v106);
      sub_100013F2C(v104, &qword_1004A73C0);
      sub_100013F2C(v105, &qword_1004A6D30);
      sub_100013F2C(v103, &qword_1004A73C0);
      v76(v101, v77);
      v79 = v86;
      v84(v86, 0, 1, v78);
      v80 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v81 = v109;
      swift_beginAccess();
      sub_100013EBC(v79, v81 + v80);
      swift_endAccess();
    }
  }

  return v109;
}

char *GenericKnoxPointer.init(from:)(uint64_t a1)
{
  sub_100003B20(a1, v4);
  v2 = KnoxPointer.init(from:)(v4);
  sub_100003C3C(a1);
  return v2;
}

uint64_t static GenericKnoxPointer.pointerType(withName:)(uint64_t a1, void *a2)
{
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  if (a1 == 0xD000000000000016 && 0x800000010042A2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return type metadata accessor for GenericFilePointer();
  }

  v27 = 0x80000001004318E0;
  v28 = 0x8000000100431900;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v12._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0x8000000100431970;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 39;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v24 = v32;
  v25 = v31;
  v26 = type metadata accessor for KnoxServiceClient.ClientError();
  v15 = swift_allocObject();
  v23[1] = sub_10000E014();
  v23[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v16 = v30;
  v17 = v33;
  (*(v30 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v33);
  static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v5, v17);
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v27;
  *(v15 + 16) = 0xD000000000000016;
  *(v15 + 24) = v19;
  v20 = v28;
  *(v15 + 32) = 0xD00000000000006ELL;
  *(v15 + 40) = v20;
  *(v15 + 56) = 4;
  *(v15 + 48) = 41;
  v21 = v24;
  *(v15 + 64) = v25;
  *(v15 + 72) = v21;
  *(v15 + 80) = 0;
  *(v15 + 88) = v18;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v22 = v15;
  return swift_willThrow();
}

id GenericKnoxPointer.__allocating_init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = v13;
  v97 = a8;
  v94 = a6;
  v93 = a5;
  v110 = a4;
  v92 = a3;
  v111 = a2;
  v112 = a1;
  v105 = a13;
  v109 = a11;
  v100 = a12;
  v96 = a10;
  v95 = a9;
  v113 = type metadata accessor for URL();
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v102 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000039E8(&qword_1004A6D30);
  v18 = __chkstk_darwin(v17 - 8);
  v87 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v98 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v91 = &v84 - v23;
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v107 = &v84 - v24;
  v26 = sub_1000039E8(&qword_1004A73C0);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v29;
  __chkstk_darwin(v27);
  v31 = (&v84 - v30);
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = objc_allocWithZone(v14);
  v90 = *(a7 + 4);
  v99 = v33;
  v104 = *(v33 + 16);
  v37 = a7[1];
  v89 = *a7;
  v88 = v37;
  v104(v35, v112, v32);
  sub_100013E54(v111, v31, &qword_1004A73C0);
  sub_100013E54(v110, v25, &qword_1004A6D30);
  sub_100013E54(v109, v29, &qword_1004A73C0);
  v38 = v108 + 56;
  v39 = *(v108 + 56);
  *&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v40 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v41 = v113;
  v39(&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v113);
  *&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v103 = v35;
  v101 = v32;
  v104(&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v35, v32);
  v104 = v31;
  v42 = v31;
  v43 = v106;
  sub_100013E54(v42, &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v44 = v91;
  v86 = v38;
  v85 = v39;
  v39(v91, 1, 1, v41);
  swift_beginAccess();
  sub_100013EBC(v44, &v36[v40]);
  swift_endAccess();
  v45 = v92;
  *&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v92;
  v46 = &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v47 = v94;
  *v46 = v93;
  *(v46 + 1) = v47;
  v48 = &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v49 = v88;
  *v48 = v89;
  *(v48 + 1) = v49;
  *(v48 + 4) = v90;
  v50 = v97;
  *&v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v97;
  v51 = &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v52 = v96;
  *v51 = v95;
  *(v51 + 1) = v52;
  v53 = *(swift_getObjectType() + 184);
  v54 = v45;
  v55 = v50;
  v56 = v53();
  v57 = &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v57 = v56;
  v57[1] = v58;
  sub_100013E54(v43, &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v59 = &v36[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v60 = v105;
  *v59 = v100;
  *(v59 + 1) = v60;
  v61 = type metadata accessor for KnoxPointer(0);
  v114.receiver = v36;
  v114.super_class = v61;
  v62 = v107;
  v105 = objc_msgSendSuper2(&v114, "init");
  v63 = v98;
  sub_100013E54(v62, v98, &qword_1004A6D30);
  v64 = v108;
  v65 = v63;
  if ((*(v108 + 48))(v63, 1, v41) == 1)
  {

    sub_100013F2C(v109, &qword_1004A73C0);
    sub_100013F2C(v110, &qword_1004A6D30);
    sub_100013F2C(v111, &qword_1004A73C0);
    v66 = *(v99 + 8);
    v67 = v101;
    v66(v112, v101);
    sub_100013F2C(v43, &qword_1004A73C0);
    sub_100013F2C(v62, &qword_1004A6D30);
    sub_100013F2C(v104, &qword_1004A73C0);
    v66(v103, v67);
    sub_100013F2C(v63, &qword_1004A6D30);
    return v105;
  }

  else
  {
    v69 = v55;
    v71 = v109;
    v70 = v110;
    v72 = v99;
    v73 = v111;
    (*(v64 + 32))(v102, v65, v113);
    v74 = v115;
    sub_1000B0C5C(v87);
    v115 = v74;

    if (v74)
    {
      v75 = v105;

      sub_100013F2C(v71, &qword_1004A73C0);
      sub_100013F2C(v70, &qword_1004A6D30);
      sub_100013F2C(v73, &qword_1004A73C0);
      v76 = *(v72 + 8);
      v77 = v101;
      v76(v112, v101);
      (*(v64 + 8))(v102, v113);
      sub_100013F2C(v106, &qword_1004A73C0);
      sub_100013F2C(v107, &qword_1004A6D30);
      sub_100013F2C(v104, &qword_1004A73C0);
      v76(v103, v77);
    }

    else
    {
      sub_100013F2C(v71, &qword_1004A73C0);
      sub_100013F2C(v70, &qword_1004A6D30);
      sub_100013F2C(v73, &qword_1004A73C0);
      v78 = *(v72 + 8);
      v79 = v101;
      v78(v112, v101);
      v80 = *(v64 + 8);
      v81 = v113;
      v80(v102, v113);
      sub_100013F2C(v106, &qword_1004A73C0);
      sub_100013F2C(v107, &qword_1004A6D30);
      sub_100013F2C(v104, &qword_1004A73C0);
      v78(v103, v79);
      v82 = v87;
      v85(v87, 0, 1, v81);
      v83 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v75 = v105;
      swift_beginAccess();
      sub_100013EBC(v82, v75 + v83);
      swift_endAccess();
    }

    return v75;
  }
}

char *GenericKnoxPointer.__allocating_init(from:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_100003B20(a1, v6);
  v4 = KnoxPointer.init(from:)(v6);
  sub_100003C3C(a1);
  return v4;
}

id GenericKnoxPointer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericKnoxPointer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericKnoxPointer()
{
  result = qword_1004A9AF8;
  if (!qword_1004A9AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D1CC8()
{
  v1 = v0;
  v2 = type metadata accessor for ArchiveHeader.Field();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ArchiveHeader.Field.uint(_:))
  {
    goto LABEL_2;
  }

  if (v6 == enum case for ArchiveHeader.Field.string(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = *&v5[*(sub_1000039E8(&qword_1004A7970) + 48)];
    v10 = type metadata accessor for ArchiveHeader.FieldKey();
    (*(*(v10 - 8) + 8))(v5, v10);
    return v9;
  }

  else
  {
    if (v6 == enum case for ArchiveHeader.Field.timespec(_:) || v6 == enum case for ArchiveHeader.Field.blob(_:))
    {
LABEL_2:
      (*(v3 + 96))(v5, v2);
      v7 = type metadata accessor for ArchiveHeader.FieldKey();
      (*(*(v7 - 8) + 8))(v5, v7);
      return 0;
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_1000D1EF0(const char *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8)
{
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v46 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v40);
  v43 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v20 - 8);
  v41 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AEADecryptAndExtractChunk(a2, a3, a1, *a4, a5, sub_1000D2420, sub_1000D24A8, a6, a7, 0x440000000000001uLL, a8);
  if (result)
  {
    v23 = result;
    v38 = 0x800000010042A130;
    v39 = 0x8000000100429EB0;
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v24._countAndFlagsBits = 0xD000000000000035;
    v24._object = 0x800000010042A1B0;
    String.append(_:)(v24);
    v51 = v23;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v35 = v50;
    v36 = v49;
    v37 = type metadata accessor for KnoxServiceClient.ClientError();
    v26 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v34[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v49 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v42 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
    v28 = v46;
    v27 = v47;
    v29 = v48;
    (*(v47 + 104))(v46, enum case for DispatchQoS.QoSClass.default(_:), v48);
    static OS_dispatch_queue.global(qos:)();
    (*(v27 + 8))(v28, v29);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v26 + 16) = 0xD00000000000007ELL;
    *(v26 + 24) = v38;
    *(v26 + 32) = 0xD00000000000005DLL;
    v31 = v39;
    *(v26 + 56) = 0;
    *(v26 + 40) = v31;
    *(v26 + 48) = 380;
    v32 = v35;
    *(v26 + 64) = v36;
    *(v26 + 72) = v32;
    *(v26 + 80) = 0;
    *(v26 + 88) = v30;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v33 = v26;
    return swift_willThrow();
  }

  return result;
}