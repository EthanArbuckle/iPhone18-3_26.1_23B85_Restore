uint64_t sub_1002BA174()
{
  String.hash(into:)();
}

uint64_t sub_1002BA33C()
{
  String.hash(into:)();
}

uint64_t sub_1002BA3A0(uint64_t a1, char a2)
{
  sub_100434BAC(a2);
  String.hash(into:)();
}

uint64_t sub_1002BA3F4()
{
  String.hash(into:)();
}

uint64_t sub_1002BA484()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[2];
  v5 = v1[3];
  objc_allocWithZone(TUMutableRoute);

  v6 = sub_10001619C();
  [v6 setDeviceType:v1[4]];
  [v6 setSupportsRelay:1];
  [v6 setCurrentlyPicked:*(v1 + 40)];
  [v6 setGuest:{objc_msgSend(v1[6], "isGuest")}];
  if (v1[8])
  {
    v7 = v1[7];
    v8 = String._bridgeToObjectiveC()();
    [v6 setModelIdentifier:v8];
  }

  [v6 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  swift_dynamicCast();
  return v10;
}

uint64_t sub_1002BA5EC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (*(a1 + 56) == *(a2 + 56) && v8 == v9)
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

void sub_1002BA708()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = v0[2];
  v5 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5] & 1);
  v6 = v0[6];
  NSObject.hash(into:)();
  if (v1[8])
  {
    v7 = v1[7];
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1002BA7BC()
{
  Hasher.init(_seed:)();
  sub_1002BA708();
  return Hasher._finalize()();
}

Swift::Int sub_1002BA804()
{
  Hasher.init(_seed:)();
  sub_1002BA708();
  return Hasher._finalize()();
}

unint64_t sub_1002BA848()
{
  result = qword_1006A3728;
  if (!qword_1006A3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3728);
  }

  return result;
}

void sub_1002BA89C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() destinationWithDevice:a1];
  v5 = sub_10001B8C8(a1, &selRef_uniqueIDOverride);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_10001B8C8(a1, &selRef_name);
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_10001B8C8(a1, &selRef_modelIdentifier);
  if (v14)
  {
    v15 = sub_10001BF50(v13, v14);
    v16 = sub_10001B8C8(a1, &selRef_modelIdentifier);
    v18 = v17;

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v15;
    *(a2 + 40) = 0;
    *(a2 + 48) = v4;
    *(a2 + 56) = v16;
    *(a2 + 64) = v18;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1002BA99C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  if (v5)
  {

    return sub_10001BF50(v4, v5);
  }

  else if (((*(a2 + 40))(a1, a2) & 2) != 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002BAA28(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  if (!v2)
  {
    return 0;
  }

  v3._countAndFlagsBits = 0x5654656C707041;
  v3._object = 0xE700000000000000;
  v4 = String.hasPrefix(_:)(v3);

  return v4;
}

uint64_t sub_1002BAA98@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v60 - v11;
  v64[3] = a2;
  v64[4] = a3;
  sub_1002A1D5C(v64);
  (*(*(a2 - 8) + 32))();
  v13 = sub_100006694();
  if ((sub_1003EE3A0(v13, v14) & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = *(a3 + 56);
  v16 = sub_100006694();
  v17(v16);
  v18 = type metadata accessor for UUID();
  v19 = sub_100015468(v12, 1, v18);
  sub_10001D334(v12);
  if (v19 != 1)
  {
    v32 = sub_100006694();
    v34 = sub_1002BA99C(v32, v33);
    if (v34 <= 0x1B && ((1 << v34) & 0x8400040) != 0)
    {
      v35 = *(a3 + 40);
      v36 = sub_100006694();
      if ((v37(v36) & 0x200) != 0)
      {
        sub_100009AB0(v64, v62);
        sub_10001BDB8(v62, v63);
        sub_10000A664();
        v48 = *(v47 + 64);
        __chkstk_darwin(v49, v50);
        v52 = sub_100008204(v51, v60);
        v53(v52);
        v54 = sub_10000F544();
        sub_1002BAF48(v54, v55, v56, v57, v58);
        goto LABEL_10;
      }
    }

LABEL_7:

    v38 = 0;
    v39 = 0;
    goto LABEL_8;
  }

  sub_100009AB0(v64, v62);
  sub_10001BDB8(v62, v63);
  sub_10000A664();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22, v23);
  v25 = sub_100008204(v24, v60);
  v26(v25);
  v27 = sub_10000F544();
  sub_1002BAD9C(v27, v28, v29, v30, v31);
LABEL_10:
  v38 = v64[5];
  v39 = v64[6];
  v40 = v64[7];
  v41 = v64[8];
  v42 = v64[9];
  v61 = v65;
  v43 = v66;
  v44 = v67;
  v45 = v68;
  sub_100009B7C(v62);
  if (v39)
  {
    v46 = v61 & 1;
    goto LABEL_12;
  }

  v38 = 0;
LABEL_8:
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
LABEL_12:
  result = sub_100009B7C(v64);
  *a4 = v38;
  a4[1] = v39;
  a4[2] = v40;
  a4[3] = v41;
  a4[4] = v42;
  a4[5] = v46;
  a4[6] = v43;
  a4[7] = v44;
  a4[8] = v45;
  return result;
}

uint64_t sub_1002BAD9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1, a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12);
  v13 = (*(a4 + 32))(a3, a4);
  v15 = v14;
  if (v14)
  {
    v16 = *(a4 + 8);
    v26 = v13;
    v25 = v16(a3, a4);
    v18 = v17;
    v19 = sub_1002BA99C(a3, a4);
    v20 = (*(a4 + 48))(a3, a4);
    v22 = v21;
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v18 = 0;
    v19 = 0;
    a2 = 0;
    v20 = 0;
    v22 = 0;
  }

  result = (*(v9 + 8))(v12, a3);
  v24 = v26;
  *a5 = v25;
  a5[1] = v18;
  a5[2] = v24;
  a5[3] = v15;
  a5[4] = v19;
  a5[5] = 0;
  a5[6] = a2;
  a5[7] = v20;
  a5[8] = v22;
  return result;
}

uint64_t sub_1002BAF48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a2;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(a3 - 8) + 64);
  __chkstk_darwin(v18, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v25;
  (*(v25 + 32))(v24, a1, a3);
  (*(a4 + 56))(a3, a4);
  v26 = sub_100015468(v13, 1, v14);
  v50 = a3;
  if (v26 != 1)
  {
    (*(v15 + 32))(v20, v13, v14);
    v48 = (*(a4 + 64))(a3, a4);
    if (!v27)
    {
      (*(v15 + 8))(v20, v14);

      goto LABEL_9;
    }

    v44 = v27;
    v47 = v15;
    v28 = UUID.uuidString.getter();
    v45 = v29;
    v30 = sub_1002BA99C(a3, a4);
    v46 = v28;
    switch(v30)
    {
      case 6:
        v31 = 14;
        break;
      case 22:
        v31 = 23;
        break;
      case 27:
        v31 = 28;
        break;
      default:
        v43 = 0;
        goto LABEL_14;
    }

    v43 = v31;
LABEL_14:
    v38 = (*(a4 + 48))(a3, a4);
    v39 = v40;
    (*(v47 + 8))(v20, v14);
    v37 = v51;
    v34 = v48;
    v33 = v45;
    v32 = v46;
    v36 = v43;
    v35 = v44;
    goto LABEL_15;
  }

  sub_10001D334(v13);
LABEL_9:
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
LABEL_15:
  result = (*(v49 + 8))(v24, v50);
  *a5 = v32;
  a5[1] = v33;
  a5[2] = v34;
  a5[3] = v35;
  a5[4] = v36;
  a5[5] = 0;
  a5[6] = v37;
  a5[7] = v38;
  a5[8] = v39;
  return result;
}

void sub_1002BB354(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_10026D814(&qword_1006A37D0, &qword_10057E748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000002DLL;
  *(inited + 40) = 0x8000000100564E70;
  *(inited + 48) = a1;

  sub_10026D814(&unk_1006AC0B0, &unk_10057E750);
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = objc_opt_self();
  sub_100455590(v6);
  v9 = v8;

  sub_1002E4C68(v9, v7);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, isa);

  _Block_release(a3);
}

uint64_t sub_1002BB584()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v10 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v3 + 8))(v9, v0);
  return v10;
}

BOOL LetMeInRequestorKeyAgreement.isExhausted.getter()
{
  v1 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v2 = sub_100007BF0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007BAC();
  v8 = v6 - v7;
  __chkstk_darwin(v9, v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v0 + v13, v12);
  v14 = type metadata accessor for SymmetricKey();
  v15 = sub_100015468(v12, 1, v14);
  sub_100009A5C(v12, &qword_1006A37D8, &qword_10057E770);
  if (v15 != 1)
  {
    return 0;
  }

  v16 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v0 + v16, v8);
  v17 = sub_100015468(v8, 1, v14) == 1;
  sub_100009A5C(v8, &qword_1006A37D8, &qword_10057E770);
  return v17;
}

uint64_t sub_1002BB7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1002BB864(uint64_t a1, unint64_t a2)
{
  v6 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_100007BAC();
  v100 = v11 - v12;
  __chkstk_darwin(v13, v14);
  v99 = &v89 - v15;
  v16 = type metadata accessor for SharedSecret();
  v17 = sub_100007FEC(v16);
  v97 = v18;
  v98 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007FDC();
  v102 = v23 - v22;
  v107 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v24 = sub_100007FEC(v107);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24, v29);
  sub_100007FDC();
  v104 = v31 - v30;
  v32 = type metadata accessor for SymmetricKey();
  v33 = sub_100007FEC(v32);
  v96 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33, v37);
  sub_100007BAC();
  v95 = (v38 - v39);
  __chkstk_darwin(v40, v41);
  v101 = &v89 - v42;
  v43 = sub_10026D814(&qword_1006A3838, &qword_10057E7A0);
  v44 = sub_100007BF0(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44, v47);
  sub_100015F18();
  v48 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v49 = sub_100007FEC(v48);
  v103 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49, v53);
  sub_100007FDC();
  v56 = v55 - v54;
  v57 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_localKey;
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  v109 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_100007928();
  sub_10000AF74(v58, v59, v60, v32);
  v114 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  v108 = v2;
  sub_100007928();
  sub_10000AF74(v61, v62, v63, v32);
  *&v111 = a1;
  *(&v111 + 1) = a2;
  sub_100290AC4(a1, a2);
  v64 = v106;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v105 = v57;
  if (v64)
  {

    sub_100007928();
    sub_10000AF74(v65, v66, v67, v48);
    sub_100009A5C(v3, &qword_1006A3838, &qword_10057E7A0);
    sub_1002BCB28();
    sub_100008248();
    *v68 = 0;
    swift_willThrow();
    sub_100049B14(a1, a2);
    v69 = v108;
    (*(v26 + 8))(v108 + v105, v107);
    v72 = sub_1000112A4(v109);
    sub_100009A5C(v72, v73, &qword_10057E770);
    v74 = sub_1000112A4(v114);
    sub_100009A5C(v74, v75, &qword_10057E770);
    type metadata accessor for LetMeInRequestorKeyAgreement();
    v76 = *((swift_isaMask & *v69) + 0x30);
    v77 = *((swift_isaMask & *v69) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v93 = v32;
    v94 = a1;
    v106 = a2;
    sub_10000E5C8(v3);
    (*(v103 + 32))(v56, v3, v48);
    v71 = v107;
    v70 = v108;
    (*(v26 + 16))(v104, v108 + v57, v107);
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v90 = v56;
    v91 = v48;
    v92 = v26;
    v79 = v102;
    v105 = 0;
    type metadata accessor for SHA256();
    v89 = xmmword_10057E760;
    v111 = xmmword_10057E760;
    if (qword_1006A0B98 != -1)
    {
      swift_once();
    }

    v112 = qword_1006A8A00;
    v113 = *algn_1006A8A08;
    sub_100290AC4(qword_1006A8A00, *algn_1006A8A08);
    sub_1002BCB7C();
    sub_1002BCBD4();
    sub_1000170F8();
    sub_100049B14(v112, v113);
    sub_100049B14(v111, *(&v111 + 1));
    v111 = v89;
    v80 = v100;
    v81 = v98;
    if (qword_1006A0BA0 != -1)
    {
      swift_once();
    }

    v112 = qword_1006A8A10;
    v113 = *algn_1006A8A18;
    sub_100290AC4(qword_1006A8A10, *algn_1006A8A18);
    v82 = v95;
    sub_1000170F8();
    (*(v97 + 8))(v79, v81);
    (*(v92 + 8))(v104, v71);
    (*(v103 + 8))(v90, v91);
    sub_100049B14(v112, v113);
    sub_100049B14(v111, *(&v111 + 1));
    v83 = *(v96 + 32);
    v84 = v99;
    v85 = v93;
    v83(v99, v101, v93);
    sub_10000E5C8(v84);
    v83(v80, v82, v85);
    sub_10000E5C8(v80);
    v86 = v109;
    sub_1000170DC();
    sub_1002BCC28(v84, v70 + v86);
    swift_endAccess();
    v87 = v114;
    sub_1000170DC();
    sub_1002BCC28(v80, v70 + v87);
    swift_endAccess();
    v88 = type metadata accessor for LetMeInRequestorKeyAgreement();
    v110.receiver = v70;
    v110.super_class = v88;
    v69 = objc_msgSendSuper2(&v110, "init");
    sub_100049B14(v94, v106);
  }

  return v69;
}

NSObject *sub_1002BC008(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v4 = v2;
  v77 = a1;
  v5 = sub_10026D814(&qword_1006A3858, &qword_10057E7A8);
  v6 = sub_100007BF0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100015F18();
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v11 = sub_100007FEC(v10);
  v75 = v12;
  v76 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007FDC();
  v82 = (v17 - v16);
  v18 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v19 = sub_100007BF0(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100007BAC();
  v25 = v23 - v24;
  __chkstk_darwin(v26, v27);
  v29 = (&v72 - v28);
  v30 = type metadata accessor for SymmetricKey();
  v31 = sub_100007FEC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31, v36);
  sub_100007FDC();
  v39 = v38 - v37;
  v40 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v4 + v40, v29);
  if (sub_100015468(v29, 1, v30) == 1)
  {
    sub_100009A5C(v29, &qword_1006A37D8, &qword_10057E770);
    sub_1002BCB28();
    sub_100008248();
    *v41 = 1;
    swift_willThrow();
    return v29;
  }

  v74 = v33;
  (*(v33 + 32))(v39, v29, v30);
  v42 = sub_1002BB584();
  if (v43 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v44 = type metadata accessor for Logger();
    sub_10000AF9C(v44, qword_1006BA5E0);
    v29 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v29, v45, "Failed to derive let me in requestor's public key from the locally-generated private key", v46, 2u);
    }

    sub_1002BCB28();
    v47 = sub_100008248();
    sub_100007C5C(v47, v48);
    goto LABEL_11;
  }

  v49 = v43;
  v73 = v42;
  v80 = v77;
  v81 = v78;
  type metadata accessor for AES.GCM.Nonce();
  sub_100007928();
  sub_10000AF74(v50, v51, v52, v53);
  sub_1002BCBD4();
  v29 = v82;
  v54 = v79;
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v54)
  {
    sub_100290B6C(v73, v49);
    sub_100009A5C(v3, &qword_1006A3858, &qword_10057E7A8);
LABEL_11:
    v55 = sub_10000FD30();
    v56(v55);
    return v29;
  }

  sub_100009A5C(v3, &qword_1006A3858, &qword_10057E7A8);
  v58 = AES.GCM.SealedBox.combined.getter();
  if (v59 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v60 = type metadata accessor for Logger();
    sub_10000AF9C(v60, qword_1006BA5E0);
    v29 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v29, v61);
    v63 = v74;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v29, v61, "Failed to retrieve combined data from encrypted LMI response.", v64, 2u);
    }

    sub_1002BCB28();
    v65 = sub_100008248();
    sub_100007C5C(v65, v66);
    sub_100290B6C(v73, v49);
    (*(v75 + 8))(v82, v76);
    (*(v63 + 8))(v39, v30);
  }

  else
  {
    v29 = v58;
    (*(v75 + 8))(v82, v76);
    v67 = sub_10000FD30();
    v68(v67);
    sub_100007928();
    sub_10000AF74(v69, v70, v71, v30);
    sub_1000170DC();
    sub_1002BCC28(v25, v4 + v40);
    swift_endAccess();
  }

  return v29;
}

id sub_1002BC560(uint64_t a1, unint64_t a2)
{
  v52 = a2;
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v5 = sub_100007FEC(v4);
  v50 = v6;
  v51 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v14 = sub_100007BF0(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v49 - v23;
  v25 = type metadata accessor for SymmetricKey();
  v26 = sub_100007FEC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26, v31);
  sub_100007FDC();
  v34 = v33 - v32;
  v35 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v2 + v35, v24);
  if (sub_100015468(v24, 1, v25) == 1)
  {
    sub_100009A5C(v24, &qword_1006A37D8, &qword_10057E770);
    sub_1002BCB28();
    sub_100008248();
    *v36 = 2;
    swift_willThrow();
    return v2;
  }

  (*(v28 + 32))(v34, v24, v25);
  v37 = v52;
  sub_100290AC4(a1, v52);
  v38 = v53;
  sub_10039C5A8(a1, v37);
  if (v38)
  {
    (*(v28 + 8))(v34, v25);
    return v2;
  }

  v39 = static AES.GCM.open(_:using:)();
  v40 = v12;
  v41 = v39;
  v43 = v42;
  v53 = v40;
  sub_100007928();
  sub_10000AF74(v44, v45, v46, v25);
  sub_1000170DC();
  sub_1002BCC28(v20, v2 + v35);
  swift_endAccess();
  v47 = objc_allocWithZone(CSDMessagingConversationMessage);
  sub_100290AC4(v41, v43);
  result = sub_10039D1B4();
  if (result)
  {
    v2 = result;
    sub_100049B14(v41, v43);
    (*(v50 + 8))(v53, v51);
    (*(v28 + 8))(v34, v25);
    return v2;
  }

  __break(1u);
  return result;
}

id LetMeInRequestorKeyAgreement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LetMeInRequestorKeyAgreement();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LetMeInRequestorKeyAgreement()
{
  result = qword_1006A3820;
  if (!qword_1006A3820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BCA04()
{
  v0 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002BCAD0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002BCAD0()
{
  if (!qword_1006A3830)
  {
    type metadata accessor for SymmetricKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A3830);
    }
  }
}

unint64_t sub_1002BCB28()
{
  result = qword_1006A3840;
  if (!qword_1006A3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3840);
  }

  return result;
}

unint64_t sub_1002BCB7C()
{
  result = qword_1006A3848;
  if (!qword_1006A3848)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3848);
  }

  return result;
}

unint64_t sub_1002BCBD4()
{
  result = qword_1006A3850;
  if (!qword_1006A3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3850);
  }

  return result;
}

uint64_t sub_1002BCC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BCC98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDBlockUtilities_blocklistUtilities);
  sub_1003CED1C(a1);
  v3 = sub_1002F1DF4();
  sub_1003CEA7C(v3);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_1002BCDCC(uint64_t a1)
{
  v2 = sub_10001E550(a1);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578(a1);
    v35 = result;
    v36 = v5;
    v37 = v6 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (!__OFADD__(v7++, 1))
      {
        v9 = v35;
        v10 = v36;
        v11 = v37;
        v12 = sub_100008260();
        sub_1002E9460(v12, v13, v11, a1);
        v15 = v14;
        v16 = [v14 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = v38[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((a1 & 0xC000000000000001) != 0)
        {
          if (!v11)
          {
            goto LABEL_31;
          }

          sub_100008260();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&unk_1006A38A0, &qword_10057E7C8);
          v22 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v22(v34, 0);
        }

        else
        {
          if (v11)
          {
            goto LABEL_32;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_27;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_28;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_29;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = v19 << 6;
            v24 = v19 + 1;
            v25 = (a1 + 64 + 8 * v19);
            while (v24 < (v18 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                v28 = sub_100008260();
                result = sub_100010000(v28, v29, 0);
                v18 = __clz(__rbit64(v26)) + v23;
                goto LABEL_22;
              }
            }

            v30 = sub_100008260();
            result = sub_100010000(v30, v31, 0);
          }

LABEL_22:
          v35 = v18;
          v36 = v10;
          v37 = 0;
        }

        if (v7 == v2)
        {
          sub_100010000(v35, v36, v37);
          v3 = v38;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_25:
    v32 = sub_1002F1DF4(v3);
    v33 = sub_1002BD090(v32);

    return v33;
  }

  return result;
}

uint64_t sub_1002BD090(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDBlockUtilities_blocklistUtilities);
  sub_1003CEA7C(a1);
  if (v3)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BD128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  sub_100006AF0(0, a5, a6);
  sub_10000CE3C(a7, a5, a6);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a1;
  v18 = a8(v13, v14, v16);

  return v18;
}

void sub_1002BD204(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_100004778();
  static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  type metadata accessor for CXCallFailureReason(0);
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:type:_:)();

  [a4 fail];
  v12 = [objc_allocWithZone(CXCallFailureContext) init];
  [v12 setFailureReason:a1];
  if ((a1 - 16) > 5)
  {
    v13 = 511;
  }

  else
  {
    v13 = qword_10057E7D0[a1 - 16];
  }

  [v12 setProviderEndedReason:v13];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a2 reportCallWithUUID:isa failedAtDate:0 withContext:v12];
}

id sub_1002BD4C4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CSDBlockUtilities_blocklistUtilities;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for BlocklistUtilities()) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1002BD588(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationUUID] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationGroupUUID] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_uuidToNWActivity] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_idsSessionUUIDToChatUUIDs] = &_swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  *&v1[v4] = Dictionary.init(dictionaryLiteral:)();
  v5 = OBJC_IVAR___CSDRTCReporter_userScoreEnabled;
  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = [v6 FTUserScore];

  v1[v5] = v7;
  *&v1[OBJC_IVAR___CSDRTCReporter_queue] = a1;
  *&v1[OBJC_IVAR___CSDRTCReporter_chManager] = 0;
  v8 = objc_allocWithZone(CSDAppleIDUtilities);
  v9 = a1;
  v10 = [v8 init];
  *&v1[OBJC_IVAR___CSDRTCReporter_appleIDUtilities] = v10;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");

  return v11;
}

id sub_1002BD764(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationUUID] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationGroupUUID] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_uuidToNWActivity] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_idsSessionUUIDToChatUUIDs] = &_swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  *&v2[v6] = Dictionary.init(dictionaryLiteral:)();
  v7 = OBJC_IVAR___CSDRTCReporter_userScoreEnabled;
  v8 = [objc_allocWithZone(TUFeatureFlags) init];
  v9 = [v8 FTUserScore];

  v2[v7] = v9;
  *&v2[OBJC_IVAR___CSDRTCReporter_queue] = a1;
  *&v2[OBJC_IVAR___CSDRTCReporter_chManager] = a2;
  v10 = objc_allocWithZone(CSDAppleIDUtilities);
  v11 = a1;
  v12 = a2;
  v13 = [v10 init];
  *&v2[OBJC_IVAR___CSDRTCReporter_appleIDUtilities] = v13;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "init");

  return v14;
}

void sub_1002BD96C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v78 = &v74 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v79 = &v74 - v16;
  __chkstk_darwin(v15, v17);
  v19 = &v74 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v25 = v26;
  (*(v21 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v20);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v25, v20);
  if (v26)
  {
    v28 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
    swift_beginAccess();
    v30 = sub_100025C58(v19, *(v2 + v29));
    swift_endAccess();
    v32 = v5 + 8;
    v31 = *(v5 + 8);
    v31(v19, v4);
    if (v30)
    {

      v33 = sub_10003D4D0();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10057D690;
      v35 = [a1 UUID];
      v36 = v79;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 16))(v78, v36, v4);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      v31(v36, v4);
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_100009D88();
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v75 = sub_10003D4D0();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10057D690;
      v41 = [a1 UUID];
      v76 = a1;
      v42 = v10;
      v43 = v31;
      v44 = v41;
      v45 = v79;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 16))(v78, v45, v4);
      v46 = String.init<A>(reflecting:)();
      v48 = v47;
      v77 = v32;
      v78 = v4;
      v49 = v4;
      v50 = v43;
      v43(v45, v49);
      v51 = v42;
      v52 = v76;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = sub_100009D88();
      *(v40 + 32) = v46;
      *(v40 + 40) = v48;
      static os_log_type_t.default.getter();
      v53 = v75;
      os_log(_:dso:log:type:_:)();

      v54 = [v52 reportingHierarchyToken];
      v55 = sub_1002C6DAC(v52, v54);

      v56 = [v52 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      if (v55)
      {
        v64 = v55;
        v65 = *(v2 + v29);
        swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v2 + v29);
        sub_1003788C4();
        *(v2 + v29) = v80;
      }

      else
      {
        sub_100383A0C(v51, v57, v58, v59, v60, v61, v62, v63, v74, v75);

        v64 = 0;
      }

      v67 = v78;
      v68 = v50;
      v50(v51, v78);
      swift_endAccess();
      v69 = [v52 groupUUID];
      v70 = v79;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = objc_allocWithZone(type metadata accessor for RTCCSDConversationInfo());
      sub_1004471E0(v52);
      v72 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
      swift_beginAccess();
      v73 = *(v2 + v72);
      swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v2 + v72);
      sub_10037889C();
      *(v2 + v72) = v80;
      v68(v70, v67);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002BE04C(void *a1, uint64_t a2, void *a3)
{
  if ([a1 supportsRelay])
  {
    v5 = [a3 callUUID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
    swift_beginAccess();
    v8 = *(a2 + v7);
    v9 = sub_100005E74(v6);

    if (v9)
    {
      swift_endAccess();
      v10 = sub_100320904(v9);

      if (v10)
      {
        v10[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_failed] = 0;
      }
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_1002BE1E8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v8, v10, v11, v12, v13, v14, v15, v16, v30, v31);
  v18 = v17;
  v19 = *(v4 + 8);
  v19(v8, v3);
  swift_endAccess();

  v20 = [a2 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v8, v21, v22, v23, v24, v25, v26, v27, v30, v31);
  v29 = v28;
  v19(v8, v3);
  swift_endAccess();
}

void sub_1002BE38C(uint64_t a1, id a2)
{
  v3 = [a2 callUUID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  swift_beginAccess();
  v8 = sub_1002CB61C(v4, v6, *(a1 + v7));
  v10 = v9;

  swift_endAccess();
  if (v8)
  {
    if (v8 == 1)
    {
      return;
    }

    v11 = *&v8[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID];
    v12 = *&v8[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID + 8];

    sub_1002BE480();
  }
}

void sub_1002BE480()
{
  sub_100005EF4();
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v34);
  v38 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_10000E598();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v12);
  v36 = v14;
  v37 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_10000E4F4();
  v18 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D690;
  v39 = v6;
  v40 = v4;

  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100009D88();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v23 = *&v0[OBJC_IVAR___CSDRTCReporter_queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = v6;
  *(v24 + 32) = v4;
  *(v24 + 40) = v35;
  v43 = sub_1002C75F8;
  v44 = v24;
  v39 = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100004CEC;
  v42 = &unk_100623E80;
  v25 = _Block_copy(&v39);

  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v27, v28);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v29, v30, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v31 = *(v38 + 8);
  v32 = sub_100007764();
  v33(v32);
  (*(v36 + 8))(v1, v37);

  sub_100005EDC();
}

uint64_t sub_1002BE79C(void *a1, char *a2)
{
  v3 = v2;
  v154 = a2;
  v151 = a1;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v142 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v137 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(v12, v15);
  v143 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v141 = &v137 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v139 = &v137 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v149 = &v137 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v147 = &v137 - v29;
  __chkstk_darwin(v28, v30);
  v32 = &v137 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33, v36);
  v38 = (&v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v38 = v39;
  (*(v34 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v33);
  v40 = v39;
  v41 = _dispatchPreconditionTest(_:)();
  result = (*(v34 + 8))(v38, v33);
  if (v41)
  {
    v148 = v13;
    v44 = v13 + 2;
    v43 = v13[2];
    v45 = v154;
    v43(v32, v154, v12);
    v46 = v151;
    v47 = [v151 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000AF74(v11, 0, 1, v12);
    swift_beginAccess();
    sub_10003D99C(v11, v32);
    swift_endAccess();
    v43(v32, v45, v12);
    v48 = [v46 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000AF74(v11, 0, 1, v12);
    swift_beginAccess();
    sub_10003D99C(v11, v32);
    swift_endAccess();
    v49 = [v46 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v152 = v44;
    v43(v11, v154, v12);
    v50 = v43;
    sub_10000AF74(v11, 0, 1, v12);
    v51 = OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID;
    swift_beginAccess();
    v140 = v51;
    v150 = v32;
    sub_10003D99C(v11, v32);
    swift_endAccess();
    v52 = [v46 UUID];
    v53 = v147;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v46 report];
    v55 = OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport;
    swift_beginAccess();
    v153 = v3;
    if (v54)
    {
      v63 = *(v3 + v55);
      swift_isUniquelyReferenced_nonNull_native();
      v155 = *(v3 + v55);
      sub_1003788EC();
      *(v3 + v55) = v155;
    }

    else
    {
      sub_100383A30(v53, v56, v57, v58, v59, v60, v61, v62, v137, v138);
    }

    v66 = v148 + 8;
    v65 = *(v148 + 1);
    v65(v53, v12);
    swift_endAccess();
    v67 = sub_10003D4D0();
    v147 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v68 = swift_allocObject();
    v145 = xmmword_10057D690;
    *(v68 + 16) = xmmword_10057D690;
    v69 = [v46 UUID];
    v70 = v12;
    v71 = v150;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v50(v149, v71, v70);
    v72 = String.init<A>(reflecting:)();
    v74 = v73;
    v146 = v65;
    v65(v71, v70);
    *(v68 + 56) = &type metadata for String;
    v75 = sub_100009D88();
    *(v68 + 64) = v75;
    *(v68 + 32) = v72;
    *(v68 + 40) = v74;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v76 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
    v77 = v153;
    swift_beginAccess();
    v78 = v154;
    v79 = sub_100025C58(v154, *(v77 + v76));
    swift_endAccess();
    if (v79)
    {

      v80 = sub_10003D4D0();
      v81 = swift_allocObject();
      *(v81 + 16) = v145;
      v50(v71, v78, v70);
      v82 = String.init<A>(reflecting:)();
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = v75;
      *(v81 + 32) = v82;
      *(v81 + 40) = v83;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v84 = v153;
      swift_beginAccess();
      v85 = sub_100025C58(v78, *(v84 + v76));
      swift_endAccess();
    }

    else
    {
      v144 = v66;
      v138 = v50;
      v86 = v151;
      v87 = [v151 reportingHierarchySubToken];
      v88 = v70;
      if (!v87)
      {
        v89 = sub_10003D4D0();
        v90 = swift_allocObject();
        *(v90 + 16) = v145;
        v138(v150, v78, v70);
        v91 = String.init<A>(reflecting:)();
        *(v90 + 56) = &type metadata for String;
        *(v90 + 64) = v75;
        *(v90 + 32) = v91;
        *(v90 + 40) = v92;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      *&v145 = v87;
      v93 = [v86 groupUUID];
      v94 = v141;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v95 = v153;
      v96 = v140;
      swift_beginAccess();
      v97 = *(v95 + v96);
      v98 = v142;
      sub_1002CB574(v94, v97);
      if (sub_100015468(v98, 1, v88) == 1)
      {
        sub_1000099A4(v98, &unk_1006A3DD0, &unk_10057C9D0);
        swift_endAccess();
        v146(v94, v88);
      }

      else
      {
        v99 = v139;
        (*(v148 + 4))(v139, v98, v88);
        swift_endAccess();
        v100 = v146;
        v146(v94, v88);
        swift_beginAccess();
        sub_100383A0C(v99, v101, v102, v103, v104, v105, v106, v107, v137, v138);
        v109 = v108;
        swift_endAccess();

        v100(v99, v88);
      }

      v148 = sub_10003D4D0();
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_10057D6A0;
      v111 = v88;
      v112 = v150;
      v113 = v138;
      v138(v150, v78, v111);
      v114 = String.init<A>(reflecting:)();
      *(v110 + 56) = &type metadata for String;
      *(v110 + 64) = v75;
      *(v110 + 32) = v114;
      *(v110 + 40) = v115;
      v116 = [v151 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v113(v149, v112, v111);
      v117 = String.init<A>(reflecting:)();
      v119 = v118;
      v120 = v112;
      v121 = v111;
      v146(v120, v111);
      *(v110 + 96) = &type metadata for String;
      *(v110 + 104) = v75;
      *(v110 + 72) = v117;
      *(v110 + 80) = v119;
      v122 = v154;
      static os_log_type_t.default.getter();
      v123 = v148;
      os_log(_:dso:log:type:_:)();

      v124 = v143;
      v113(v143, v122, v121);
      v125 = v145;
      v126 = v153;
      v127 = sub_1002C6DAC(v151, v145);
      swift_beginAccess();
      if (v127)
      {
        v135 = *(v126 + v76);
        swift_isUniquelyReferenced_nonNull_native();
        v155 = *(v126 + v76);
        sub_1003788C4();
        *(v126 + v76) = v155;
      }

      else
      {
        sub_100383A0C(v124, v128, v129, v130, v131, v132, v133, v134, v137, v138);
      }

      v146(v124, v121);
      swift_endAccess();
      swift_beginAccess();
      v85 = sub_100025C58(v122, *(v126 + v76));
      swift_endAccess();
    }

    return v85;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002BF35C(void **a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeConversationForCall:a2 backedByGroupSession:1];

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1002BF3E8(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v47 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v47 - v15;
  v17 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
  swift_beginAccess();
  v19 = sub_100025C58(v16, *(v1 + v18));
  swift_endAccess();
  if (v19)
  {

    v20 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057D690;
    (*(v4 + 16))(v13, v16, v3);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100009D88();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v25 = sub_100025C58(v16, *(v1 + v18));
    swift_endAccess();
    (*(v4 + 8))(v16, v3);
  }

  else
  {
    v48 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v26 = swift_allocObject();
    v49 = a1;
    v50 = v1;
    v27 = v26;
    *(v26 + 16) = xmmword_10057D690;
    v28 = *(v4 + 16);
    v28(v13, v16, v3);
    v29 = String.init<A>(reflecting:)();
    v30 = v3;
    v32 = v31;
    v27[7] = &type metadata for String;
    v27[8] = sub_100009D88();
    v27[4] = v29;
    v27[5] = v32;
    static os_log_type_t.default.getter();
    v33 = v48;
    os_log(_:dso:log:type:_:)();

    v34 = v50;

    v28(v9, v16, v30);
    v35 = sub_1002C6B10(v49);
    swift_beginAccess();
    if (v35)
    {
      v43 = *(v34 + v18);
      swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v34 + v18);
      sub_1003788C4();
      *(v34 + v18) = v51;
    }

    else
    {
      sub_100383A0C(v9, v36, v37, v38, v39, v40, v41, v42, v47, v48);
    }

    v45 = *(v4 + 8);
    v45(v9, v30);
    swift_endAccess();
    swift_beginAccess();
    v25 = sub_100025C58(v16, *(v34 + v18));
    swift_endAccess();
    v45(v16, v30);
  }

  return v25;
}

void sub_1002BF808()
{
  sub_100005EF4();
  v10 = sub_10000FD44(v4, v5, v6, v7, v8, v9);
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_10000E598();
  v37 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v37);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v0;
  v21[4] = v1;
  v39 = v3;
  v40 = v21;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v38[2] = v22;
  v38[3] = v36;
  v23 = _Block_copy(v38);
  v24 = v2;
  v25 = v0;
  v26 = v1;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v27, v28);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v29, v30, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_100018F10();
  _Block_release(v23);
  v31 = *(v13 + 8);
  v32 = sub_100007764();
  v33(v32);
  v34 = sub_100008AC0();
  v35(v34);

  sub_100005EDC();
}

id sub_1002BF9F8(void *a1, uint64_t a2, void *a3)
{
  result = [a1 supportsRelay];
  if (result)
  {
    v7 = [a3 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
    swift_beginAccess();
    v10 = *(a2 + v9);
    v11 = sub_100005E74(v8);

    if (v11)
    {
      swift_endAccess();
      v12 = objc_allocWithZone(type metadata accessor for RTCCSDRelayDeviceRoute());
      v13 = sub_1003A9CA0(a1);
      if (*(v13 + OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type) == 6)
      {
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1002BFC0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 3)
  {
    v10 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v12 = sub_100025C58(v9, *(a2 + v11));
    if (v12)
    {
      v13 = v12;
      swift_endAccess();
      (*(v5 + 8))(v9, v4);
      sub_10044680C(a1);
    }

    else
    {
      swift_endAccess();
      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_1002BFF4C(uint64_t a1, void *a2, void (*a3)(void *))
{
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_10000E598();
  v14 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v16 = sub_100025C58(v3, *(a1 + v15));
  if (v16)
  {
    v17 = v16;
    swift_endAccess();
    (*(v10 + 8))(v3, v7);
    a3(a2);
  }

  else
  {
    swift_endAccess();
    (*(v10 + 8))(v3, v7);
  }
}

uint64_t sub_1002C0138(uint64_t a1, void *a2)
{
  v46 = type metadata accessor for UUID();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v46, v6);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v44 = v39 - v10;
  v47 = a2;
  v52 = a1;
  sub_1002BD96C(a2);
  v55 = _swiftEmptyArrayStorage;
  v49 = objc_opt_self();
  v11 = [v49 sharedInstance];
  v12 = [v11 queue];

  v13 = swift_allocObject();
  *(v13 + 16) = &v55;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002C7AAC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_1006246C8;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v12, v15);

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v50 = v55;
    result = sub_10000B6F4(v55);
    if (!result)
    {
LABEL_12:
    }

    v17 = result;
    if (result >= 1)
    {
      v39[1] = v13;
      v18 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
      v48 = v50 & 0xC000000000000001;

      v43 = v18;
      swift_beginAccess();
      v19 = 0;
      v41 = (v4 + 16);
      v42 = (v4 + 8);
      v40 = xmmword_10057D6A0;
      do
      {
        if (v48)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v50 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = [v49 sharedInstance];
        v23 = [v22 activeConversationForCall:v21 backedByGroupSession:1];

        if (v23)
        {

          v24 = [v21 uniqueProxyIdentifierUUID];
          v25 = v44;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = *v42;
          v27 = v46;
          (*v42)(v25, v46);
          v51 = sub_10003D4D0();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v28 = swift_allocObject();
          *(v28 + 16) = v40;
          v29 = v17;
          v30 = [v21 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v41)(v45, v25, v27);
          v31 = String.init<A>(reflecting:)();
          v32 = v21;
          v34 = v33;
          v26(v25, v27);
          *(v28 + 56) = &type metadata for String;
          v35 = sub_100009D88();
          *(v28 + 64) = v35;
          *(v28 + 32) = v31;
          *(v28 + 40) = v34;
          v17 = v29;
          v21 = v32;
          v53 = *(v52 + v43);

          sub_10026D814(&qword_1006A39D0, &qword_10057E8C8);
          v36 = String.init<A>(reflecting:)();
          *(v28 + 96) = &type metadata for String;
          *(v28 + 104) = v35;
          *(v28 + 72) = v36;
          *(v28 + 80) = v37;
          static os_log_type_t.default.getter();
          v38 = v51;
          os_log(_:dso:log:type:_:)();
        }

        ++v19;
      }

      while (v17 != v19);

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C066C(uint64_t *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 _allCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *a1;
  *a1 = v4;
}

uint64_t sub_1002C07B0(void *a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v39 = &v37 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v37 - v14;
  v16 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10057D690;
  v18 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 16))(v12, v15, v6);
  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  v38 = *(v7 + 8);
  v38(v15, v6);
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100009D88();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = a1;

  v23 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v39;
  sub_10000AF74(v39, 1, 1, v6);
  swift_beginAccess();
  sub_10003D99C(v24, v15);
  swift_endAccess();
  v25 = [v22 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v15, v26, v27, v28, v29, v30, v31, v32, v37, v38);
  v34 = v33;
  swift_endAccess();
  result = (v38)(v15, v6);
  if (v34)
  {
    v36 = sub_1002C0AFC(v22);
    sub_100055190(v34, v36);
  }

  return result;
}

uint64_t sub_1002C0AFC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = &type metadata for Int;
  *&v32 = 0;
  sub_10003EBF0(&v32, v31);
  swift_isUniquelyReferenced_nonNull_native();
  v30 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = &type metadata for Int;
  *&v32 = 1;
  sub_10003EBF0(&v32, v31);
  swift_isUniquelyReferenced_nonNull_native();
  v30 = v19;
  sub_100040430();

  v20 = v30;
  v21 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v22 = sub_1003839E4(v9);
  swift_endAccess();
  (*(v5 + 8))(v9, v4);
  if (!v22)
  {
    return v20;
  }

  sub_100446DCC(a1);
  v23 = sub_100053730(&qword_1006A39C8, type metadata accessor for RTCCSDConversationInfo);
  if (!v23)
  {

    return v20;
  }

  v24 = v23;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
    goto LABEL_18;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = [a1 isOneToOneModeEnabled];
  v26 = 0x6E6F6973736573;
  if (v25)
  {
    v26 = 0x7961776F7774;
  }

  v27 = 0xE700000000000000;
  v33 = &type metadata for String;
  if (v25)
  {
    v27 = 0xE600000000000000;
  }

  *&v32 = v26;
  *(&v32 + 1) = v27;
  sub_10003EBF0(&v32, v31);
  swift_isUniquelyReferenced_nonNull_native();
  v30 = v24;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v28 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v32 = v28;
    sub_10003EBF0(&v32, v31);
    swift_isUniquelyReferenced_nonNull_native();
    v30 = v20;
    sub_100040430();

    return v30;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1002C1268(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v14 = sub_100025C58(v11, *(a1 + v13));
  if (v14)
  {
    v15 = v14;
    swift_endAccess();
    (*(v7 + 8))(v11, v6);
    if (a3)
    {
      sub_100446D00();
    }

    else
    {
      sub_100446D0C();
    }
  }

  else
  {
    swift_endAccess();
    (*(v7 + 8))(v11, v6);
  }
}

void sub_1002C14CC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v1;
  v15 = v3;
  sub_1002C1640();

  (*(v7 + 8))(v13, v4);
  sub_100005EDC();
}

void sub_1002C1640()
{
  sub_100005EF4();
  v42 = v2;
  v39[1] = v3;
  v40 = v4;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v44 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_10000E598();
  v43 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v43);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_10000E4F4();
  v19 = type metadata accessor for UUID();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  v26 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *&v0[OBJC_IVAR___CSDRTCReporter_queue];
  (*(v22 + 16))(v26, v6, v19);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  (*(v22 + 32))(v28 + v27, v26, v19);
  v46[4] = v40;
  v46[5] = v28;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v46[2] = v29;
  v46[3] = v42;
  v30 = _Block_copy(v46);
  v31 = v0;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10000A01C();
  sub_10000ED20(v32, v33);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v34, v35, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  v36 = *(v44 + 8);
  v37 = sub_100007764();
  v38(v37);
  (*(v15 + 8))(v1, v43);

  sub_100005EDC();
}

uint64_t sub_1002C1910(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (!*(v6 + 16))
  {
    return swift_endAccess();
  }

  sub_100021E24();
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v10 = swift_endAccess();
  return a3(v10);
}

uint64_t sub_1002C19C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v35 - v23;
  v25 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID;
  swift_beginAccess();
  sub_1002CB574(v21, *(a1 + v26));
  if (sub_100015468(v14, 1, v15) == 1)
  {
    sub_1000099A4(v14, &unk_1006A3DD0, &unk_10057C9D0);
    swift_endAccess();
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    (*(v16 + 32))(v24, v14, v15);
    swift_endAccess();
    v28 = *(v16 + 8);
    v28(v21, v15);
    v29 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
    swift_beginAccess();
    v30 = sub_100025C58(v24, *(a1 + v29));
    if (v30)
    {
      v31 = v30;
      swift_endAccess();
      v32 = [a2 report];
      v33 = [v32 conversationID];

      if (v33)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      sub_10000AF74(v11, v34, 1, v15);
      sub_1002C1CF4(a3, v31, v11);

      sub_1000099A4(v11, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      swift_endAccess();
    }

    return (v28)(v24, v15);
  }
}

uint64_t sub_1002C1CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v20, v15);
  if (v21)
  {
    v24 = *(v31 + 16);
    if (v24)
    {
      v25 = (v31 + 32);
      v31 = v10 + 32;
      v26 = (v10 + 8);
      do
      {
        v27 = *v25;
        sub_1002A5F90(v33, v8);
        if (sub_100015468(v8, 1, v9) == 1)
        {

          sub_1000099A4(v8, &unk_1006A3DD0, &unk_10057C9D0);
        }

        else
        {
          (*v31)(v14, v8, v9);

          v28 = UUID.uuidString.getter();
          v37 = &type metadata for String;
          *&v36 = v28;
          *(&v36 + 1) = v29;
          sub_10003EBF0(&v36, &v35);
          swift_isUniquelyReferenced_nonNull_native();
          v34 = v27;
          sub_100040430();
          (*v26)(v14, v9);
          v27 = v34;
        }

        v30 = sub_1002C713C(v27);

        sub_100055190(v32, v30);

        ++v25;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C2044()
{
  sub_100005EF4();
  v4 = sub_10000C6CC();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_10000E598();
  v29 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v29);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v0;
  v32 = v3;
  v33 = v15;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v16;
  v31 = v2;
  v17 = _Block_copy(v30);
  v18 = v1;
  v19 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v22, v23, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_10001AB88();
  _Block_release(v17);
  v24 = *(v7 + 8);
  v25 = sub_100007764();
  v26(v25);
  v27 = sub_100007C7C();
  v28(v27);

  sub_100005EDC();
}

uint64_t sub_1002C2238(void *a1, void *a2)
{
  v57 = a2;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v55 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v55 - v24;
  v26 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v30 = &v55 - v29;
  v31 = [a1 dateConnected];
  if (!v31)
  {
    v38 = type metadata accessor for Date();
    sub_10000AF74(v30, 1, 1, v38);
    v35 = &qword_1006A3C70;
    v36 = &unk_10057EA80;
    v37 = v30;
    return sub_1000099A4(v37, v35, v36);
  }

  v32 = v31;
  v56 = v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = type metadata accessor for Date();
  sub_10000AF74(v30, 0, 1, v33);
  sub_1000099A4(v30, &qword_1006A3C70, &unk_10057EA80);
  v34 = [a1 sessionUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  if (sub_100015468(v11, 1, v12) == 1)
  {
    v35 = &unk_1006A3DD0;
    v36 = &unk_10057C9D0;
    v37 = v11;
    return sub_1000099A4(v37, v35, v36);
  }

  (*(v13 + 32))(v25, v11, v12);
  v55 = v13;
  v40 = *(v13 + 16);
  v40(v22, v25, v12);
  v41 = v40;
  v42 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v8, 0, 1, v12);
  swift_beginAccess();
  sub_10003D99C(v8, v22);
  swift_endAccess();
  v57 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10057D6A0;
  v41(v22, v25, v12);
  v44 = v41;
  v45 = String.init<A>(reflecting:)();
  v47 = v46;
  *(v43 + 56) = &type metadata for String;
  v48 = sub_100009D88();
  *(v43 + 64) = v48;
  *(v43 + 32) = v45;
  *(v43 + 40) = v47;
  v49 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v44(v56, v22, v12);
  v50 = String.init<A>(reflecting:)();
  v52 = v51;
  v53 = *(v55 + 8);
  v53(v22, v12);
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v48;
  *(v43 + 72) = v50;
  *(v43 + 80) = v52;
  static os_log_type_t.default.getter();
  v54 = v57;
  os_log(_:dso:log:type:_:)();

  return (v53)(v25, v12);
}

void sub_1002C27B4()
{
  sub_100005EF4();
  v3 = v2;
  v36[0] = v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v39 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_10000E598();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_10000E4F4();
  v17 = type metadata accessor for UUID();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  v36[1] = *&v0[OBJC_IVAR___CSDRTCReporter_queue];
  (*(v20 + 16))(v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v17);
  v24 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v0;
  (*(v20 + 32))(v25 + v24, v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v25 + ((v22 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36[0];
  v41[4] = sub_1002C7728;
  v41[5] = v25;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v41[2] = v26;
  v41[3] = &unk_1006241A0;
  v27 = _Block_copy(v41);
  v28 = v0;

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10000A01C();
  sub_10000ED20(v29, v30);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v31, v32, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  v33 = *(v39 + 8);
  v34 = sub_100007764();
  v35(v34);
  (*(v37 + 8))(v1, v38);

  sub_100005EDC();
}

uint64_t sub_1002C2AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v55 - v22;
  swift_beginAccess();
  sub_10003DC5C(a2, v24, v25, v26, v27, v28, v29, v30, v55, v56);
  swift_endAccess();
  if (sub_100015468(v13, 1, v14) == 1)
  {
    return sub_1000099A4(v13, &unk_1006A3DD0, &unk_10057C9D0);
  }

  (*(v15 + 32))(v23, v13, v14);
  swift_beginAccess();
  sub_100383A0C(v23, v32, v33, v34, v35, v36, v37, v38, v55, v56);
  v40 = v39;
  swift_endAccess();
  if (!v40)
  {
    return (*(v15 + 8))(v23, v14);
  }

  v58 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v41 = swift_allocObject();
  v42 = v15;
  v59 = v15;
  v43 = v41;
  *(v41 + 16) = xmmword_10057D6A0;
  v57 = v10;
  v44 = *(v42 + 16);
  v44(v20, a2, v14);
  v45 = String.init<A>(reflecting:)();
  v56 = a3;
  v47 = v46;
  v43[7] = &type metadata for String;
  v48 = sub_100009D88();
  v55 = v40;
  v49 = v48;
  v43[8] = v48;
  v43[4] = v45;
  v43[5] = v47;
  v44(v20, v23, v14);
  v50 = String.init<A>(reflecting:)();
  v43[12] = &type metadata for String;
  v43[13] = v49;
  v43[9] = v50;
  v43[10] = v51;
  static os_log_type_t.default.getter();
  v52 = v58;
  os_log(_:dso:log:type:_:)();

  v53 = v57;
  sub_10000AF74(v57, 1, 1, v14);
  v54 = v55;
  sub_1002C1CF4(v56, v55, v53);

  sub_1000099A4(v53, &unk_1006A3DD0, &unk_10057C9D0);
  return (*(v59 + 8))(v23, v14);
}

void sub_1002C2F8C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v46 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v46 - v18;
  v20 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v22 = sub_100025C58(v19, *(a1 + v21));
  if (v22)
  {
    v48 = v22;
    swift_endAccess();
    v23 = *(v7 + 8);
    v23(v19, v6);
    v47 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v24 = a3;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10057D6A0;
    v26 = [a2 UUID];
    v46 = a2;
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v12, v16, v6);
    v28 = String.init<A>(reflecting:)();
    v30 = v29;
    v23(v16, v6);
    *(v25 + 56) = &type metadata for String;
    v31 = sub_100009D88();
    *(v25 + 64) = v31;
    *(v25 + 32) = v28;
    *(v25 + 40) = v30;
    v49 = v24;

    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v32 = String.init<A>(reflecting:)();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v31;
    *(v25 + 72) = v32;
    *(v25 + 80) = v33;
    static os_log_type_t.default.getter();
    v34 = v47;
    os_log(_:dso:log:type:_:)();

    v35 = [v46 report];
    v36 = sub_1002C33E8(v24, v35);

    if (v36[2])
    {
      v37 = v48;
      sub_100055190(v48, v36);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    v38 = a2;
    v39 = *(v7 + 8);
    v39(v19, v6);
    v40 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10057D690;
    v42 = [v38 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v12, v16, v6);
    v43 = String.init<A>(reflecting:)();
    v45 = v44;
    v39(v16, v6);
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100009D88();
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void *sub_1002C33E8(uint64_t a1, void *a2)
{
  v105 = a2;
  v4 = type metadata accessor for UUID();
  v103 = *(v4 - 8);
  v5 = *(v103 + 64);
  __chkstk_darwin(v4, v6);
  v102 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v106 = &v93[-v11];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v100 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v93[-v20];
  __chkstk_darwin(v19, v22);
  v24 = &v93[-v23];
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v93[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v30 = v31;
  (*(v26 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v25);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v30, v25);
  if ((v31 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v101 = v4;
  v33 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10057D690;
  v35 = [v105 timebase];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v13 + 16))(v21, v24, v12);
  v36 = String.init<A>(reflecting:)();
  v38 = v37;
  v40 = *(v13 + 8);
  v39 = v13 + 8;
  v97 = v24;
  v98 = v40;
  v40(v24, v12);
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100009D88();
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v41 = a1 + 64;
  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 64);
  v45 = (v42 + 63) >> 6;
  v96 = (v39 + 24);

  v46 = 0;
  v104 = &_swiftEmptyDictionarySingleton;
  v47 = a1;
  v48 = v106;
  v99 = v39;
  while (v44)
  {
    v49 = v44;
LABEL_12:
    v44 = (v49 - 1) & v49;
    if (!v47[2])
    {
      goto LABEL_17;
    }

    v52 = v12;
    v53 = (v47[6] + ((v46 << 10) | (16 * __clz(__rbit64(v49)))));
    v55 = *v53;
    v54 = v53[1];

    v56 = sub_100005208();
    if (v57)
    {
      sub_100006A94(v47[7] + 32 * v56, &v109);
      v58 = v106;
      v59 = swift_dynamicCast();
      sub_10000AF74(v58, v59 ^ 1u, 1, v12);
      if (sub_100015468(v58, 1, v12) == 1)
      {

        v48 = v106;
        goto LABEL_18;
      }

      v95 = v47;
      (*v96)(v100, v106, v12);
      v60 = [v105 timebase];
      v61 = v97;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v63 = v62;
      v98(v61, v52);
      v64 = v63 * 1000.0;
      if (COERCE__INT64(fabs(v63 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_40;
      }

      if (v64 <= -9.22337204e18)
      {
        goto LABEL_41;
      }

      if (v64 >= 9.22337204e18)
      {
        goto LABEL_42;
      }

      v110 = &type metadata for Int;
      *&v109 = v64;
      sub_10003EBF0(&v109, v108);
      v65 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v65;
      v66 = sub_100005208();
      v68 = *(v65 + 16);
      v69 = (v67 & 1) == 0;
      v104 = (v68 + v69);
      if (__OFADD__(v68, v69))
      {
        goto LABEL_43;
      }

      v70 = v66;
      v71 = v67;
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v104))
      {
        v72 = sub_100005208();
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_48;
        }

        v70 = v72;
      }

      v74 = v71;
      v12 = v52;
      v47 = v95;
      if (v74)
      {

        v104 = v107;
        v75 = (v107[7] + 32 * v70);
        sub_100009B7C(v75);
        sub_10003EBF0(v108, v75);
        v98(v100, v52);
        v48 = v106;
      }

      else
      {
        v76 = v70;
        v77 = v107;
        v107[(v76 >> 6) + 8] |= 1 << v76;
        v78 = (v77[6] + 16 * v76);
        *v78 = v55;
        v78[1] = v54;
        sub_10003EBF0(v108, (v77[7] + 32 * v76));
        v98(v100, v52);
        v79 = v77[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_44;
        }

        v104 = v77;
        v77[2] = v81;
        v48 = v106;
      }
    }

    else
    {

      v48 = v106;
LABEL_17:
      sub_10000AF74(v48, 1, 1, v12);
LABEL_18:
      sub_1000099A4(v48, &qword_1006A3C70, &unk_10057EA80);
    }
  }

  v50 = v105;
  while (1)
  {
    v51 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v51 >= v45)
    {
      break;
    }

    v49 = *(v41 + 8 * v51);
    ++v46;
    if (v49)
    {
      v46 = v51;
      goto LABEL_12;
    }
  }

  v82 = v104;
  if (!v104[2])
  {

    v92 = sub_10003D4D0();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return &_swiftEmptyDictionarySingleton;
  }

  v83 = [v50 conversationID];
  if (v83)
  {
    v84 = v83;
    v85 = v102;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = v101;
    v110 = v101;
    v87 = sub_1002A1D5C(&v109);
    v88 = v103;
    (*(v103 + 16))(v87, v85, v86);
    sub_10003EBF0(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v82;
    sub_100040430();
    v82 = v107;
    (*(v88 + 8))(v85, v86);
  }

  if (kRTCReportingMessageParametersCategory)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = &type metadata for Int;
    *&v109 = 7;
    sub_10003EBF0(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v107 = &_swiftEmptyDictionarySingleton;
    sub_100040430();

    if (!kRTCReportingMessageParametersType)
    {
      goto LABEL_46;
    }

    v89 = v107;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = &type metadata for Int;
    *&v109 = 1;
    sub_10003EBF0(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v89;
    sub_100040430();

    if (kRTCReportingMessageParametersPayload)
    {
      v90 = v107;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
      *&v109 = v82;
      sub_10003EBF0(&v109, v108);
      swift_isUniquelyReferenced_nonNull_native();
      v107 = v90;
      sub_100040430();

      return v107;
    }

    goto LABEL_47;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002C3F14()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_10000E598();
  v32 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v32);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v18 = swift_allocObject();
  v18[2] = v0;
  v18[3] = v2;
  v18[4] = v6;
  v18[5] = v4;
  v33[4] = sub_1002C7710;
  v33[5] = v18;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v33[2] = v19;
  v33[3] = &unk_100624100;
  v20 = _Block_copy(v33);
  v21 = v0;
  v22 = v2;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v23, v24);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v25, v26, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_100018F10();
  _Block_release(v20);
  v27 = *(v10 + 8);
  v28 = sub_100007764();
  v29(v28);
  v30 = sub_100007C7C();
  v31(v30);

  sub_100005EDC();
}

uint64_t sub_1002C4140(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v36 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v36 - v20;
  v22 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v24 = sub_100025C58(v21, *(a1 + v23));
  if (v24)
  {
    v25 = v24;
    swift_endAccess();
    (*(v9 + 8))(v21, v8);
    v26 = [a2 report];
    v27 = sub_1002C442C(a3, a4, v26);

    sub_100055190(v25, v27);
  }

  else
  {
    swift_endAccess();
    v28 = *(v9 + 8);
    v28(v21, v8);
    v29 = v28;
    v25 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D690;
    v31 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 16))(v14, v18, v8);
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
    v29(v18, v8);
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100009D88();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1002C442C(void *a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for UUID();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = (&v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v25 = v26;
  (*(v21 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v20);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v25, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
    sub_10000AF74(v14, 1, 1, v15);
    v29 = a1;

LABEL_8:
    sub_1000099A4(v14, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_10;
  }

  v29 = a1;

  v30 = [a3 conversationID];
  if (v30)
  {
    v31 = v30;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_10000AF74(v11, v32, 1, v15);
  sub_100286068(v11, v14);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  v33 = v38;
  (*(v38 + 32))(v19, v14, v15);
  v43 = v15;
  v34 = sub_1002A1D5C(&v42);
  (*(v33 + 16))(v34, v19, v15);
  sub_10003EBF0(&v42, v41);
  swift_isUniquelyReferenced_nonNull_native();
  v40 = v29;
  sub_100040430();
  v29 = v40;
  (*(v33 + 8))(v19, v15);
LABEL_10:
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = &type metadata for Int;
  *&v42 = 6;
  sub_10003EBF0(&v42, v41);
  swift_isUniquelyReferenced_nonNull_native();
  v40 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v40;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = &type metadata for Int;
  *&v42 = v39;
  sub_10003EBF0(&v42, v41);
  swift_isUniquelyReferenced_nonNull_native();
  v40 = v35;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v36 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v42 = v29;
    sub_10003EBF0(&v42, v41);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = v36;
    sub_100040430();

    return v40;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1002C49A8()
{
  sub_100005EF4();
  v10 = sub_10000FD44(v4, v5, v6, v7, v8, v9);
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_10000E598();
  v36 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v36);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v21 = swift_allocObject();
  v21[2] = v0;
  v21[3] = v1;
  v21[4] = v2;
  v38 = v3;
  v39 = v21;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v37[2] = v22;
  v37[3] = v35;
  v23 = _Block_copy(v37);
  v24 = v0;
  v25 = v1;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v26, v27);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v28, v29, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_100018F10();
  _Block_release(v23);
  v30 = *(v13 + 8);
  v31 = sub_100007764();
  v32(v31);
  v33 = sub_100008AC0();
  v34(v33);

  sub_100005EDC();
}

void sub_1002C4B9C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v36 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v36 - v18;
  v20 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
  swift_beginAccess();
  v22 = sub_100025C58(v19, *(a1 + v21));
  if (v22)
  {
    v23 = v22;
    swift_endAccess();
    (*(v7 + 8))(v19, v6);
    v24 = *(a3 + 16);
    if (v24)
    {
      v25 = (a3 + 32);
      do
      {
        v26 = *v25++;

        v27 = [a2 report];
        v28 = sub_1002C4EB0(v26, v27);

        sub_100055190(v23, v28);

        --v24;
      }

      while (v24);
    }
  }

  else
  {
    swift_endAccess();
    v29 = *(v7 + 8);
    v29(v19, v6);
    v30 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057D690;
    v32 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 16))(v12, v16, v6);
    v33 = String.init<A>(reflecting:)();
    v35 = v34;
    v29(v16, v6);
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100009D88();
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1002C4EB0(void *a1, void *a2)
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for UUID();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (&v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v24 = v25;
  (*(v20 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v19);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v24, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_10000AF74(v13, 1, 1, v14);

LABEL_8:
    sub_1000099A4(v13, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_10;
  }

  v28 = [a2 conversationID];
  if (v28)
  {
    v29 = v28;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  sub_10000AF74(v10, v30, 1, v14);
  sub_100286068(v10, v13);
  if (sub_100015468(v13, 1, v14) == 1)
  {
    goto LABEL_8;
  }

  v31 = v35;
  (*(v35 + 32))(v18, v13, v14);
  v39 = v14;
  v32 = sub_1002A1D5C(v38);
  (*(v31 + 16))(v32, v18, v14);
  sub_10003EBF0(v38, v37);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = a1;
  sub_100040430();
  a1 = v36;
  (*(v31 + 8))(v18, v14);
LABEL_10:
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = &type metadata for Int;
  v38[0] = 5;
  sub_10003EBF0(v38, v37);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v36;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = &type metadata for Int;
  v38[0] = 7;
  sub_10003EBF0(v38, v37);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = v33;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v34 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v38[0] = a1;
    sub_10003EBF0(v38, v37);
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v34;
    sub_100040430();

    return v36;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1002C5394(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a5;
  v10 = a1;
  sub_1002C49A8();
}

uint64_t sub_1002C5480(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
    __break(1u);
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = &type metadata for Int;
  *&v25 = 4;
  sub_10003EBF0(&v25, v24);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v23;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = &type metadata for Int;
  *&v25 = a1;
  sub_10003EBF0(&v25, v24);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = v13;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (!kRTCReportingMessageParametersPayload)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = v23;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026D814(&unk_1006A61D0, &qword_100581190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100565550;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v16 = Dictionary.init(dictionaryLiteral:)();
  v26 = sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  *&v25 = v16;
  sub_10003EBF0(&v25, v24);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = v14;
  sub_100040430();

  v17 = v23;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v7 + 8))(v11, v6);
  v21 = sub_10003DF24(v18, v20, 0, 0xD000000000000012, 0x8000000100565570, 0xD000000000000021, 0x8000000100565520, 0);

  if (v21)
  {
    sub_100055190(v21, v17);
  }
}

uint64_t sub_1002C5828(void *a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a3;
  v6 = a1;
  sub_1002C5914();
}

void sub_1002C5914()
{
  sub_100005EF4();
  v10 = sub_10000FD44(v4, v5, v6, v7, v8, v9);
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_10000E598();
  v35 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v35);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v21 = swift_allocObject();
  v21[2] = v0;
  v21[3] = v2;
  v21[4] = v1;
  v37 = v3;
  v38 = v21;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v36[2] = v22;
  v36[3] = v34;
  v23 = _Block_copy(v36);
  v24 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v25, v26);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v27, v28, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_10001AB88();
  _Block_release(v23);
  v29 = *(v13 + 8);
  v30 = sub_100007764();
  v31(v30);
  v32 = sub_100008AC0();
  v33(v32);

  sub_100005EDC();
}

void sub_1002C5B54()
{
  sub_100005EF4();
  v4 = sub_10000C6CC();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_10000E598();
  v29 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v29);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  *(v15 + 24) = v1;
  v32 = v3;
  v33 = v15;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v16;
  v31 = v2;
  v17 = _Block_copy(v30);
  v18 = v0;
  v19 = v1;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v22, v23, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_10001AB88();
  _Block_release(v17);
  v24 = *(v7 + 8);
  v25 = sub_100007764();
  v26(v25);
  v27 = sub_100007C7C();
  v28(v27);

  sub_100005EDC();
}

void sub_1002C5D48(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v18 = sub_100025C58(v15, *(a1 + v17));
  if (v18)
  {
    v19 = v18;
    swift_endAccess();
    v20 = (*(v9 + 8))(v15, v6);
    a3(v20);
  }

  else
  {
    swift_endAccess();
    (*(v9 + 8))(v15, v6);
  }
}

void sub_1002C5F30()
{
  sub_100005EF4();
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_10000E598();
  v34 = type metadata accessor for DispatchQoS();
  v15 = sub_100007FEC(v34);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  sub_10000E4F4();
  sub_100035A10(OBJC_IVAR___CSDRTCReporter_queue);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v7;
  *(v19 + 32) = v5;
  v35[4] = v3;
  v35[5] = v19;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v35[2] = v20;
  v35[3] = v33;
  v21 = _Block_copy(v35);
  v22 = v0;
  v23 = v7;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v24, v25);
  sub_10000F9E4();
  sub_10000826C();
  sub_10001000C(v26, v27, &unk_10057D6E0);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  sub_10001AB88();
  _Block_release(v21);
  v28 = *(v11 + 8);
  v29 = sub_100007764();
  v30(v29);
  v31 = sub_100008AC0();
  v32(v31);

  sub_100005EDC();
}

void sub_1002C6138(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
  swift_beginAccess();
  v14 = sub_100025C58(v11, *(a1 + v13));
  if (v14)
  {
    v15 = v14;
    swift_endAccess();
    (*(v7 + 8))(v11, v6);
    sub_100446D88(a3 & 1);
  }

  else
  {
    swift_endAccess();
    (*(v7 + 8))(v11, v6);
  }
}

void sub_1002C6344(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  swift_beginAccess();
  v9 = sub_1002CB61C(a2, a3, *(a1 + v8));
  v11 = v10;
  swift_endAccess();
  if (v9 == 1)
  {
    v13 = sub_10003D4D0();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_10;
  }

  if (v9)
  {
    *&v9[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_userScore] = a4;
    if (v11)
    {
      v14 = v11;
      v13 = v9;
      v15 = sub_1002C6558(v13, a2);
      sub_100055190(v14, v15);

      swift_beginAccess();
      v16 = sub_100383A54(a2, a3);
      v18 = v17;
      swift_endAccess();
      sub_1002C7608(v16, v18);

      goto LABEL_10;
    }

LABEL_9:
    v13 = sub_10003D4D0();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_10;
  }

  if (!v11)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_10003D4D0();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

LABEL_10:
}

uint64_t sub_1002C6558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = &type metadata for Int;
  *&v28 = 2;
  sub_10003EBF0(&v28, v27);
  swift_isUniquelyReferenced_nonNull_native();
  v26 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v26;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = &type metadata for Int;
  *&v28 = 1;
  sub_10003EBF0(&v28, v27);
  swift_isUniquelyReferenced_nonNull_native();
  v26 = v15;
  sub_100040430();

  v16 = v26;
  v17 = [*(v3 + OBJC_IVAR___CSDRTCReporter_appleIDUtilities) isSignedIntoiCloud];
  *(a1 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud) = v17;
  v18 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
  swift_beginAccess();
  v19 = *(v3 + v18);
  v20 = sub_100005E74(a2);
  swift_endAccess();
  v21 = *(a1 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges);
  *(a1 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges) = v20;

  v22 = sub_100053730(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo);
  if (!v22)
  {
    return v16;
  }

  v23 = v22;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = &type metadata for String;
  *&v28 = 0xD000000000000021;
  *(&v28 + 1) = 0x8000000100565520;
  sub_10003EBF0(&v28, v27);
  swift_isUniquelyReferenced_nonNull_native();
  v26 = v23;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v24 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v28 = v24;
    sub_10003EBF0(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    sub_100040430();

    return v26;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1002C69A0(void *a1)
{
  v1 = 0x6E69706F7264;
  v2 = [a1 provider];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0xD00000000000002CLL && 0x80000001005659A0 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0xD000000000000012;
    }
  }

  return v1;
}

uint64_t sub_1002C6A94(void *a1)
{
  v1 = [a1 provider];
  v2 = [v1 isTinCanProvider];

  if (v2)
  {
    return 0x6E61636E6974;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1002C6B10(void *a1)
{
  v22 = type metadata accessor for UUID();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isVideo];
  v8 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  nw_activity_create();
  nw_activity_activate();
  v9 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivity;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v10 = *(v1 + v9);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + v9);
  sub_10037876C();
  *(v1 + v9) = v23;
  swift_endAccess();
  nw_activity_create();
  nw_activity_activate();
  v11 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v12 = *(v1 + v11);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + v11);
  sub_10037876C();
  *(v1 + v11) = v23;
  swift_endAccess();
  v13 = [objc_opt_self() newHierarchyTokenFromParentToken:0];
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = sub_1002C6A94(a1);
  v19 = sub_10003DF24(v14, v16, v13, v17, v18, 0xD000000000000024, 0x8000000100565B30, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v7, v22);
  return v19;
}

uint64_t sub_1002C6DAC(void *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = v37 - v13;
  v15 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivity;
  swift_beginAccess();
  v17 = sub_1002CB528(v14, *(v3 + v16));
  swift_endAccess();
  if (!v17)
  {
    nw_activity_create();
    nw_activity_activate();
    swift_beginAccess();
    swift_unknownObjectRetain();
    v18 = *(v3 + v16);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v3 + v16);
    sub_10037876C();
    *(v3 + v16) = v40;
    swift_endAccess();
  }

  swift_unknownObjectRelease();
  v19 = OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting;
  swift_beginAccess();
  v20 = sub_1002CB528(v14, *(v3 + v19));
  swift_endAccess();
  v38 = v14;
  if (!v20)
  {
    nw_activity_create();
    nw_activity_activate();
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = *(v3 + v19);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v3 + v19);
    sub_10037876C();
    *(v3 + v19) = v40;
    swift_endAccess();
  }

  swift_unknownObjectRelease();
  v22 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = UUID.uuidString.getter();
  v25 = v24;
  v26 = *(v6 + 8);
  v37[1] = v6 + 8;
  v26(v11, v5);
  v27 = sub_1002C69A0(a1);
  v29 = v28;
  v30 = [a1 isOneToOneModeEnabled];
  v31 = v5;
  if (v30)
  {
    v32 = 0x7961776F7774;
  }

  else
  {
    v32 = 0x6E6F6973736573;
  }

  if (v30)
  {
    v33 = 0xE600000000000000;
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  v34 = [a1 report];
  v35 = sub_10003DF24(v23, v25, v39, v27, v29, v32, v33, v34);

  v26(v38, v31);
  return v35;
}

uint64_t sub_1002C713C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___CSDRTCReporter_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = &type metadata for Int;
  *&v17 = 3;
  sub_10003EBF0(&v17, v16);
  swift_isUniquelyReferenced_nonNull_native();
  v15 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = &type metadata for Int;
  *&v17 = 2;
  sub_10003EBF0(&v17, v16);
  swift_isUniquelyReferenced_nonNull_native();
  v15 = v12;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v13 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v17 = a1;
    sub_10003EBF0(&v17, v16);

    swift_isUniquelyReferenced_nonNull_native();
    v15 = v13;
    sub_100040430();

    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1002C7544(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C7598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1002C7608(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1002C76AC(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002C7728()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C2AAC(v3, v0 + v2, v4);
}

uint64_t sub_1002C77C0(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002C7900()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_1002C7B94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1002BD96C(v1);
}

id sub_1002C7CD0()
{
  v1 = OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver;
  v2 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___CSDProviderDisplayMonitor_queue);
    v5 = objc_allocWithZone(type metadata accessor for ProcessObserver());
    v6 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 initWithBundleIdentifiers:isa queue:v6];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1002C7D94(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_allocWithZone(type metadata accessor for ProviderDisplayMonitor());
  v7 = sub_1002C7E40(a1, a2, a3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id sub_1002C7E40(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  sub_100007FDC();
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  sub_100007FDC();
  v22 = OBJC_IVAR___CSDProviderDisplayMonitor_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v3[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor;
  v18 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v19 = [objc_opt_self() monitorWithConfiguration:v18];

  *&v4[v17] = v19;
  *&v4[OBJC_IVAR___CSDProviderDisplayMonitor____lazy_storage___processObserver] = 0;
  v20 = &v4[OBJC_IVAR___CSDProviderDisplayMonitor_provider];
  *v20 = a1;
  *(v20 + 1) = a2;
  *(v20 + 4) = a3;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for ProviderDisplayMonitor();
  return objc_msgSendSuper2(&v27, "init");
}

id sub_1002C80F4()
{
  [*&v0[OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProviderDisplayMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002C820C()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___CSDProviderDisplayMonitor_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1002C8A54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100624BD0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1002C8370(_BYTE *a1)
{
  v2 = sub_1002C83B4(4);
  *a1 = v2 & 1;
  if (v2)
  {
    sub_1002C86A0();
    *a1 = v3 & 1;
  }
}

uint64_t sub_1002C83B4(uint64_t a1)
{
  v3 = sub_1002C7CD0();
  v4 = v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider;
  v5 = sub_1002F43CC(*(v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider), *(v1 + OBJC_IVAR___CSDProviderDisplayMonitor_provider + 8), 1);

  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(v5 + 56) + 8 * v14);
    if (v15 <= 4)
    {
      v16 = *(*(v5 + 48) + 4 * v14);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v42 = v16;
      v39 = sub_100007558(v16);
      v17 = *(v6 + 16);
      v41 = v18;
      v19 = (v18 & 1) == 0;
      v20 = v17 + v19;
      if (__OFADD__(v17, v19))
      {
        goto LABEL_38;
      }

      sub_10026D814(&qword_1006A3A28, &qword_10057E918);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v20))
      {
        v21 = sub_100007558(v42);
        v23 = v41;
        if ((v41 & 1) != (v22 & 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v21 = v39;
        v23 = v41;
      }

      if (v23)
      {
        *(*(v6 + 56) + 8 * v21) = v15;
      }

      else
      {
        *(v6 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        *(*(v6 + 48) + 4 * v21) = v42;
        *(*(v6 + 56) + 8 * v21) = v15;
        v24 = *(v6 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        *(v6 + 16) = v26;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = 1 << *(v6 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v6 + 64);
  v31 = (v28 + 63) >> 6;
  while (v30)
  {
    v32 = v27;
LABEL_28:
    v33 = __clz(__rbit64(v30)) | (v32 << 6);
    v34 = *(*(v6 + 48) + 4 * v33);
    v30 &= v30 - 1;
    v35 = *(*(v6 + 56) + 8 * v33);
    if (v34 == *(v4 + 16) && v35 == a1)
    {
      v37 = 1;
LABEL_35:

      return v37;
    }
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      v37 = 0;
      goto LABEL_35;
    }

    v30 = *(v6 + 64 + 8 * v32);
    ++v27;
    if (v30)
    {
      v27 = v32;
      goto LABEL_28;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002C86A0()
{
  v1 = [*(v0 + OBJC_IVAR___CSDProviderDisplayMonitor_displayLayoutMonitor) currentLayout];
  if (v1)
  {
    v19 = v1;
    v2 = [v1 elements];
    sub_100006AF0(0, &qword_1006A3A20, FBSDisplayLayoutElement_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_10000B6F4(v3);
    v5 = 0;
    v6 = (v0 + OBJC_IVAR___CSDProviderDisplayMonitor_provider);
    while (1)
    {
      if (v4 == v5)
      {

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

LABEL_26:

        return;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {

        goto LABEL_26;
      }

      v16 = sub_1002C89F0(v8);
      if (v17)
      {
        if (v16 != *v6 || v17 != v6[1])
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      ++v5;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

__n128 sub_1002C894C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002C8960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C89A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C89F0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1002C8A5C()
{
  result = qword_1006A0CB0;
  if (!qword_1006A0CB0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A0CB0);
  }

  return result;
}

uint64_t sub_1002C8B34()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = TUSilenceUnknownFaceTimeCallersDefaultValue();
  LOBYTE(v0) = sub_1000535D8(v0, v2, v3);

  return v0 & 1;
}

id sub_1002C8BC8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_1002C8C10(v0, v1, 1);

  return v2;
}

id sub_1002C8C10(uint64_t a1, uint64_t a2, id a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v9, v10);
    sub_10004975C(v10);
    v7 = String._bridgeToObjectiveC()();
    a3 = [v3 integerForKey:v7];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_10004975C(v10);
  }

  return a3;
}

uint64_t sub_1002C8CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (!v4)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_8:
    sub_10004975C(&v14);
    v10 = type metadata accessor for Date();
    v9 = a1;
    v8 = 1;
    return sub_10000AF74(v9, v8, 1, v10);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v12, &v14);
  sub_10004975C(&v14);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v1 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_8;
  }

  v7 = type metadata accessor for Date();
  v8 = swift_dynamicCast() ^ 1;
  v9 = a1;
  v10 = v7;
  return sub_10000AF74(v9, v8, 1, v10);
}

uint64_t sub_1002C8F04()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002C8FE4()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_notificationCenter);
  [v1 removeObserver:v0];
  if (qword_1006A07A0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = off_1006A3A30;
  v3 = off_1006A3A30 + 64;
  v4 = 1 << *(off_1006A3A30 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_1006A3A30 + 8);
  v7 = OBJC_IVAR___CSDCallCenterObserver_triggers;
  v8 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    if ((*(v2[7] + 8 * v12) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleTrigger:" name:*(v2[6] + 8 * v12) object:0];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1006A07A8 != -1)
  {
    swift_once();
  }

  v13 = off_1006A3A38;
  v14 = off_1006A3A38 + 64;
  v15 = 1 << *(off_1006A3A38 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(off_1006A3A38 + 8);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_22:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    if ((*(v13[7] + 8 * v22) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleChannelTrigger:" name:*(v13[6] + 8 * v22) object:0];
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_40;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *&v14[8 * v20];
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_22;
    }
  }

  if (qword_1006A07B0 != -1)
  {
    swift_once();
  }

  v23 = off_1006A3A40;
  v24 = off_1006A3A40 + 64;
  v25 = 1 << *(off_1006A3A40 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(off_1006A3A40 + 8);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
LABEL_34:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v29 << 6);
    if ((*(v23[7] + 8 * v32) & ~*(v0 + v7)) == 0)
    {
      [v1 addObserver:v0 selector:"handleSharePlayTrigger:" name:*(v23[6] + 8 * v32) object:0];
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_41;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *&v24[8 * v30];
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_34;
    }
  }
}

uint64_t sub_1002C93DC()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  v2 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8);
  sub_1000115CC(v1);
  return v1;
}

uint64_t sub_1002C94C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

id sub_1002C94E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CSDCallCenterObserver_triggers] = 0;
  v8 = &v3[OBJC_IVAR___CSDCallCenterObserver_callChanged];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___CSDCallCenterObserver_callContainerClosure];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___CSDCallCenterObserver_notificationCenter] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1002C9590()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_1002C94E4(sub_1000131A8, 0, v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1002C965C()
{
  result = sub_1002C967C();
  off_1006A3A30 = result;
  return result;
}

uint64_t sub_1002C967C()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  v57 = TUCallCenterCallStatusChangedNotification;
  *(inited + 32) = TUCallCenterCallStatusChangedNotification;
  *(inited + 40) = 1;
  v56 = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 48) = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 56) = 1;
  v55 = TUCallCenterCallStartedConnectingNotification;
  *(inited + 64) = TUCallCenterCallStartedConnectingNotification;
  *(inited + 72) = 2;
  v54 = TUCallCenterCallConnectedNotification;
  *(inited + 80) = TUCallCenterCallConnectedNotification;
  *(inited + 88) = 4;
  v53 = TUCallIsUsingBasebandChangedNotification;
  *(inited + 96) = TUCallIsUsingBasebandChangedNotification;
  *(inited + 104) = 8;
  v52 = TUCallCenterCallInvitationSentNotification;
  *(inited + 112) = TUCallCenterCallInvitationSentNotification;
  *(inited + 120) = 16;
  v51 = TUCallCenterVideoCallInvitationSentNotification;
  *(inited + 128) = TUCallCenterVideoCallInvitationSentNotification;
  *(inited + 136) = 16;
  v50 = TUCallCenterCallContinuityStateChangedNotification;
  *(inited + 144) = TUCallCenterCallContinuityStateChangedNotification;
  *(inited + 152) = 32;
  *(inited + 160) = @"CSDCallHasStartedOutgoingChangedNotification";
  *(inited + 168) = 64;
  v49 = TUCallCenterCallWantsHoldMusicChangedNotification;
  *(inited + 176) = TUCallCenterCallWantsHoldMusicChangedNotification;
  *(inited + 184) = 128;
  v48 = TUCallShouldSuppressRingingChangedNotification;
  *(inited + 192) = TUCallShouldSuppressRingingChangedNotification;
  *(inited + 200) = 256;
  v47 = TUCallNeedsManualInCallSoundsChangedNotification;
  *(inited + 208) = TUCallNeedsManualInCallSoundsChangedNotification;
  *(inited + 216) = 512;
  v46 = TUCallAudioPropertiesChangedNotification;
  *(inited + 224) = TUCallAudioPropertiesChangedNotification;
  *(inited + 232) = 1024;
  *(inited + 240) = @"CSDCallHasAudioInterruptionChangedNotification";
  *(inited + 248) = 2048;
  *(inited + 256) = @"CSDCallRemoteParticipantJoinedNotification";
  *(inited + 264) = 4096;
  *(inited + 272) = @"CSDCallRemoteParticipantLeftNotification";
  *(inited + 280) = 0x2000;
  v45 = TUCallMixesVoiceWithMediaChangedNotification;
  *(inited + 288) = TUCallMixesVoiceWithMediaChangedNotification;
  *(inited + 296) = 0x4000;
  v44 = TUCallBluetoothAudioFormatChangedNotification;
  *(inited + 304) = TUCallBluetoothAudioFormatChangedNotification;
  *(inited + 312) = 0x8000;
  v43 = TUCallIsUplinkMutedChangedNotification;
  *(inited + 320) = TUCallIsUplinkMutedChangedNotification;
  *(inited + 328) = 0x10000;
  v42 = TUCallIsSharingScreenChangedNotification;
  *(inited + 336) = TUCallIsSharingScreenChangedNotification;
  *(inited + 344) = 0x40000;
  v41 = TUCallScreenShareAttributesChangedNotification;
  *(inited + 352) = TUCallScreenShareAttributesChangedNotification;
  *(inited + 360) = 0x2000000;
  v1 = TUCallCenterPendingMemberAddedNotification;
  *(inited + 368) = TUCallCenterPendingMemberAddedNotification;
  *(inited + 376) = 0x80000;
  v2 = TUCallCenterHaveBeenLetInNotification;
  *(inited + 384) = TUCallCenterHaveBeenLetInNotification;
  *(inited + 392) = 0x100000;
  *(inited + 400) = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
  *(inited + 408) = 0x800000;
  *(inited + 416) = @"CSDCallTransmissionStateChangedNotification";
  *(inited + 424) = 0x1000000;
  v3 = TUCallCenterIsScreeningChangedNotification;
  *(inited + 432) = TUCallCenterIsScreeningChangedNotification;
  *(inited + 440) = 0x4000000;
  v4 = TUCallScreeningDidFinishAnnouncementNotification;
  *(inited + 448) = TUCallScreeningDidFinishAnnouncementNotification;
  *(inited + 456) = 0x8000000;
  *(inited + 464) = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
  *(inited + 472) = 0x10000000;
  *(inited + 480) = @"CSDCallInjectingAudioChangedNotification";
  *(inited + 488) = 0xFFFFFFFF80000000;
  *(inited + 504) = 0xFFFFFFFF80000000;
  v5 = TUCallCenterReceptionistStateChangedNotification;
  *(inited + 496) = TUCallCenterReceptionistStateChangedNotification;
  *(inited + 16) = xmmword_10057E9A0;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name);
  v6 = v57;
  v7 = v56;
  v8 = v55;
  v9 = v54;
  v10 = v53;
  v11 = v52;
  v12 = v51;
  v13 = v50;
  v14 = @"CSDCallHasStartedOutgoingChangedNotification";
  v15 = v49;
  v16 = v48;
  v17 = v47;
  v18 = v46;
  v19 = @"CSDCallHasAudioInterruptionChangedNotification";
  v20 = @"CSDCallRemoteParticipantJoinedNotification";
  v21 = @"CSDCallRemoteParticipantLeftNotification";
  v22 = v45;
  v23 = v44;
  v24 = v43;
  v25 = v42;
  v26 = v41;
  v27 = v1;
  v28 = v2;
  v29 = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
  v30 = @"CSDCallTransmissionStateChangedNotification";
  v31 = v3;
  v32 = v4;
  v33 = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
  v34 = @"CSDCallInjectingAudioChangedNotification";
  v35 = v5;
  v36 = Dictionary.init(dictionaryLiteral:)();
  v37 = TUCallRecordingStateChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0x40000000, v37);
  v38 = TUCallTranslationStateChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, v38);
  v39 = TUCallSmartHoldingSessionChangedNotification;
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, v39);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100378B94(0xFFFFFFFF80000000, @"CSDCallAudioInterruptionProviderTypeChangedNotification");
  return v36;
}

void *sub_1002C9B7C()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v1 = TUBargeCallStatusChangedNotification;
  *(inited + 32) = TUBargeCallStatusChangedNotification;
  *(inited + 40) = 1;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name);
  v2 = v1;
  result = Dictionary.init(dictionaryLiteral:)();
  off_1006A3A38 = result;
  return result;
}

void *sub_1002C9C84()
{
  sub_10026D814(&qword_1006A3AB8, qword_10057E9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = @"CSDSharePlayMediaDidHandoffNotification";
  *(inited + 40) = 0x200000;
  *(inited + 48) = @"CSDSharePlayRemoteActivityDidChangeNotification";
  *(inited + 56) = 0x400000;
  type metadata accessor for Name(0);
  type metadata accessor for Triggers(0);
  sub_10000ED68(&qword_1006A1DA0, type metadata accessor for Name);
  v1 = @"CSDSharePlayMediaDidHandoffNotification";
  v2 = @"CSDSharePlayRemoteActivityDidChangeNotification";
  result = Dictionary.init(dictionaryLiteral:)();
  off_1006A3A40 = result;
  return result;
}

uint64_t sub_1002C9D80(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v2, v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v52, v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v13 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UUID();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v47, v16);
  v18 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v43 - v20;
  Notification.object.getter();
  if (v55)
  {
    sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    if (swift_dynamicCast())
    {
      v46 = v58;
      v22 = [v58 groupUUID];
      v45 = v2;
      v23 = v22;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = [objc_opt_self() sharedInstance];
      v43 = [v24 queue];

      v25 = *(v14 + 16);
      v26 = v21;
      v44 = v21;
      v27 = v47;
      v25(v18, v26);
      (*(v10 + 16))(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
      v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v29 = (v15 + *(v10 + 80) + v28) & ~*(v10 + 80);
      v30 = swift_allocObject();
      v31 = v48;
      *(v30 + 16) = v48;
      (*(v14 + 32))(v30 + v28, v18, v27);
      (*(v10 + 32))(v30 + v29, v13, v9);
      v56 = sub_1002CA9F4;
      v57 = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      v55 = &unk_100624C40;
      v32 = _Block_copy(aBlock);
      v33 = v31;
      v34 = v49;
      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_10000ED68(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v35 = v51;
      v36 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v43;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v53 + 8))(v35, v36);
      (*(v50 + 8))(v34, v52);
      (*(v14 + 8))(v44, v27);
    }
  }

  else
  {
    sub_10004975C(aBlock);
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10057D690;
  (*(v10 + 16))(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v40 = String.init<A>(reflecting:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_100009D88();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_1002CA3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR___CSDCallCenterObserver_callContainerClosure + 8);
  v18 = (*(a1 + OBJC_IVAR___CSDCallCenterObserver_callContainerClosure))(v14);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v18 callsWithGroupUUID:isa];

  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_10000B6F4(v21))
  {

LABEL_13:
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10057D690;
    (*(v6 + 16))(v10, a2, v5);
    v35 = String.init<A>(reflecting:)();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100009D88();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_16;
  }

  sub_10039C390(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v42 = v22;

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

    goto LABEL_13;
  }

  v24 = v23;
  if (qword_1006A07B0 != -1)
  {
    swift_once();
  }

  v25 = off_1006A3A40;
  v26 = v41;
  v27 = Notification.name.getter();
  v28 = sub_100027DE0(v27, v25);
  LOBYTE(v25) = v29;

  if (v25)
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D690;
    (*(v40 + 16))(v16, v26, v11);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100009D88();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_16:

    return;
  }

  sub_100027FF8(v24, v28);
  v38 = v42;
}

void sub_1002CA9F4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1002CA3C4(v5, v0 + v2, v6);
}

void sub_1002CAAC4(uint64_t a1)
{
  v1 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v41 = _swiftEmptyArrayStorage;
    v43 = sub_10001E578(v1);
    v44 = v3;
    v45 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      v38 = v2;
      v39 = v1;
      while (!__OFADD__(v5++, 1))
      {
        v9 = v43;
        v8 = v44;
        v10 = v45;
        sub_1002E944C(v43, v44, v45, v1);
        v12 = v11;
        v13 = sub_1004450C8([v11 v6[120]]);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
        }

        else
        {
          v17 = [v12 v6[120]];
          v18 = [v17 value];

          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v19;
        }

        v20 = v41;
        v46 = v41;
        v22 = v41[2];
        v21 = v41[3];
        if (v22 >= v21 >> 1)
        {
          sub_10039A2E0(v21 > 1, v22 + 1, 1);
          v20 = v46;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v15;
        v23[5] = v16;
        v41 = v20;
        if (v40)
        {
          v1 = v39;
          v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          if (!v10)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v38;
          sub_10026D814(&unk_1006A3C40, &unk_100580340);
          v29 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v29(v42, 0);
        }

        else
        {
          v1 = v39;
          v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = 1 << *(v39 + 32);
          if (v9 >= v24)
          {
            goto LABEL_36;
          }

          v25 = v9 >> 6;
          v26 = *(v37 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v39 + 36) != v8)
          {
            goto LABEL_38;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v28 = v38;
          }

          else
          {
            v30 = v25 << 6;
            v31 = v25 + 1;
            v32 = (v36 + 8 * v25);
            v28 = v38;
            while (v31 < (v24 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100010000(v9, v8, 0);
                v24 = __clz(__rbit64(v33)) + v30;
                goto LABEL_30;
              }
            }

            sub_100010000(v9, v8, 0);
LABEL_30:
            v6 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
          }

          v35 = *(v39 + 36);
          v43 = v24;
          v44 = v35;
          v45 = 0;
        }

        if (v5 == v28)
        {
          sub_100010000(v43, v44, v45);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1002CAE68(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, a4, a5);
    sub_10000CE3C(a6, a4, a5);
    Set.Iterator.init(_cocoa:)();
    v8 = v35;
    v12 = v36;
    v13 = v37;
    v14 = v38;
    v15 = v39;
  }

  else
  {
    v16 = *(a3 + 32);
    sub_1000052DC();
    v12 = v8 + 56;
    v17 = *(v8 + 56);
    v13 = ~v18;
    sub_1000082B4();
    v15 = v19 & v20;

    v14 = 0;
  }

  v34 = v8;
  if (v8 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v21 = v14;
  v22 = v14;
  if (v15)
  {
LABEL_9:
    sub_100007C8C();
    v25 = v24 & v23;
    v26 = *(v8 + 48);
    sub_10003DB58(v27);
    v29 = v28;
    if (v29)
    {
      while (1)
      {
        v40 = v29;
        v30 = a1(&v40);
        if (v7)
        {
          break;
        }

        if (v30)
        {
          goto LABEL_20;
        }

        v14 = v22;
        v15 = v25;
        v8 = v34;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100006AF0(0, a4, a5);
          swift_dynamicCast();
          v29 = v40;
          v22 = v14;
          v25 = v15;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    sub_1002DB8B8();
  }

  else
  {
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      ++v21;
      if (*(v12 + 8 * v22))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002CB078@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a1;
  v32 = a3;
  v31 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v5 = sub_100007FEC(v31);
  v33 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007BAC();
  v12 = v10 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v30 - v15;
  v17 = *(a2 + 64);
  v18 = *(a2 + 32);
  sub_100007990();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;

  v25 = 0;
  if (v21)
  {
    while (1)
    {
      v26 = v25;
LABEL_6:
      sub_1002DB7F0(*(a2 + 48) + *(v33 + 72) * (__clz(__rbit64(v21)) | (v26 << 6)), v16, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
      sub_1002DB564(v16, v12);
      v27 = v34(v12);
      if (v3)
      {
        sub_1002DB508(v12);
      }

      if (v27)
      {
        break;
      }

      v21 &= v21 - 1;
      result = sub_1002DB508(v12);
      v25 = v26;
      if (!v21)
      {
        goto LABEL_3;
      }
    }

    v29 = v32;
    sub_1002DB564(v12, v32);
    v28 = 0;
    return sub_10000AF74(v29, v28, 1, v31);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v28 = 1;
        v29 = v32;
        return sub_10000AF74(v29, v28, 1, v31);
      }

      v21 = *(a2 + 64 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002CB280(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B6F4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

unint64_t sub_1002CB384(Swift::UInt32 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1002DA540(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1002CB3E0(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v6 && (sub_1002DA664(v5), (v7 & 1) != 0))
  {
    v8 = sub_100008928();
    v9 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(v8);
    sub_100008070(v9);
    sub_1002DB7F0(v4 + *(v10 + 72) * v3, v2, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
    v11 = sub_10000E5E4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
    v11 = sub_100008D20();
  }

  return sub_10000AF74(v11, v12, v13, v14);
}

uint64_t sub_1002CB47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_100005208(), (v4 & 1) != 0))
  {
    sub_100015CDC(v3);
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CB4C4(uint64_t a1)
{
  if (*(a1 + 16) && (v1 = sub_1002DA6A0(), (v2 & 1) != 0))
  {
    sub_10000B89C(v1);
    v4 = *(v3 + 16);
    swift_unknownObjectRetain();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CB528(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1002CB574(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v4 && (v5 = v3, sub_100021E24(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for UUID();
    sub_100008070(v10);
    (*(v11 + 16))(v2, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_10000E5E4();
    v15 = v10;
  }

  else
  {
    type metadata accessor for UUID();
    v12 = sub_100008D20();
  }

  return sub_10000AF74(v12, v13, v14, v15);
}

uint64_t sub_1002CB61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_100005208();
    if (v5)
    {
      v6 = *(a3 + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = v7;
    }
  }

  return sub_100005ED0();
}

uint64_t sub_1002CB670(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  return v6;
}

uint64_t sub_1002CB6C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA6EC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v2);
  return v1;
}

uint64_t sub_1002CB720(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v5 && (v6 = v4, v7 = sub_1002DA750(v3), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for URL();
    sub_100008070(v11);
    (*(v12 + 16))(v2, v10 + *(v12 + 72) * v9, v11);
    v13 = sub_10000E5E4();
    v16 = v11;
  }

  else
  {
    type metadata accessor for URL();
    v13 = sub_100008D20();
  }

  return sub_10000AF74(v13, v14, v15, v16);
}

uint64_t sub_1002CB7C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
}

uint64_t sub_1002CB814@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_100005208(), (v5 & 1) != 0))
  {
    sub_100008928();
    v6 = type metadata accessor for PendingMembershipInfo();
    sub_100008070(v6);
    sub_1002DB7F0(v3 + *(v7 + 72) * v2, a2, type metadata accessor for PendingMembershipInfo);
    v8 = sub_10000E5E4();
    v11 = v6;
  }

  else
  {
    type metadata accessor for PendingMembershipInfo();
    v8 = sub_100008D20();
  }

  return sub_10000AF74(v8, v9, v10, v11);
}

uint64_t sub_1002CB8B4(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v5 && (sub_100021E24(), (v6 & 1) != 0))
  {
    v7 = sub_100008928();
    v8 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(v7);
    sub_100008070(v8);
    sub_1002DB7F0(v4 + *(v9 + 72) * v3, v2, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    v10 = sub_10000E5E4();
    v13 = v8;
  }

  else
  {
    type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    v10 = sub_100008D20();
  }

  return sub_10000AF74(v10, v11, v12, v13);
}

uint64_t sub_1002CB950(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1002DA664(a1), (v4 & 1) != 0))
  {
    sub_10000B89C(v3);
    v6 = *(v5 + 16);
    *(v5 + 17);
    v7 = v2;
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

void sub_1002CB9BC(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1002DA7D0(), (v7 & 1) != 0))
  {
    sub_1002DB5DC(*(v5 + 56) + 8 * v6, v2);
    v8 = 0;
  }

  else
  {
    *v2 = 0;
    v8 = 1;
  }

  *(v2 + 8) = v8;
}

uint64_t sub_1002CBA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

uint64_t sub_1002CBA60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1002DA824(), (v3 & 1) != 0))
  {
    sub_100015CDC(v2);
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

uint64_t sub_1002CBAA8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100005208(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_100008070(v8);
    sub_100285FC4(v7 + *(v9 + 72) * v6, a2, &qword_1006A3BF0, &qword_10057DE60);
    v10 = sub_10000E5E4();
    v13 = v8;
  }

  else
  {
    sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    v10 = sub_100008D20();
  }

  return sub_10000AF74(v10, v11, v12, v13);
}

uint64_t sub_1002CBB6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1002DA8CC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v2);
}

uint64_t sub_1002CBBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005208();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1002CBC08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 2;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  result = *v5;
  v7 = *(v5 + 1);
  return result;
}

uint64_t sub_1002CBC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_100005208();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002CBCC8@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_100005208(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = a2(0);
    sub_100008070(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_10000E5E4();
    v15 = v10;
  }

  else
  {
    a2(0);
    v12 = sub_100008D20();
  }

  return sub_10000AF74(v12, v13, v14, v15);
}

unint64_t sub_1002CBD84(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1006204A0, v3);
  sub_10000667C();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002CBDCC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BadgeCountCategory.missedFaceTimeGroupCalls(_:);
  v3 = type metadata accessor for BadgeCountCategory();
  sub_100008070(v3);
  (*(v4 + 104))(a1, v2, v3);
  v5 = sub_10000E5E4();

  return sub_10000AF74(v5, v6, v7, v3);
}

id sub_1002CBE50()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 pairedDevice];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 canReceiveRelayedGFTCalls];

  return v2;
}

uint64_t sub_1002CBEE4(void *a1)
{
  v1 = [a1 displayName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1002CBF38(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v4 = [a2 executeFetchRequest:v3];

  v5 = [v4 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_10000C3E4();
}

void sub_1002CBFDC(void *a1, void *a2, void *a3)
{
  v5 = [a1 value];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v5 destinationIdIsTemporary];

  if (!v6)
  {
    goto LABEL_21;
  }

  v44 = a2;
  v7 = [a3 remoteMembers];
  sub_10000D310();
  sub_100006AF0(v8, v9, v10);
  sub_10000D310();
  sub_10000CE3C(v11, v12, v13);
  sub_100007770();
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = v51;
  }

  else
  {
    v19 = *(v14 + 32);
    sub_1000052DC();
    v15 = v14 + 56;
    v20 = *(v14 + 56);
    v16 = ~v21;
    sub_1000082B4();
    v18 = v22 & v23;

    v17 = 0;
  }

  v24 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v25 = v17;
  v26 = v17;
  if (v18)
  {
LABEL_12:
    sub_100007C8C();
    v29 = v28 & v27;
    v30 = *(v14 + 48);
    sub_10003DB58(v31);
    v33 = v32;
    if (v33)
    {
      while (1)
      {
        v34 = [v33 handle];
        v35 = [v34 isEquivalentToHandle:a1];

        if (v35)
        {
          break;
        }

        v17 = v26;
        v18 = v29;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v33 = v46;
          v26 = v17;
          v29 = v18;
          if (v46)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_10003A58C();
      sub_100022DDC();

      v39 = sub_1003EB9A8(v33);
      if (v40)
      {
        v41 = v39;
        v42 = v40;
        sub_100025BF0("MAYBE_NICKNAME_%@");
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_10057D690;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_100009D88();
        *(v43 + 32) = v41;
        *(v43 + 40) = v42;
        String.init(format:_:)();

        return;
      }
    }

    else
    {
LABEL_19:
      sub_10003A58C();
      sub_100022DDC();
    }

    a2 = v44;
LABEL_21:
    v36 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
    v37 = [a2 executeFetchRequest:v36];

    v38 = [v37 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      goto LABEL_19;
    }

    ++v25;
    if (*(v15 + 8 * v26))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1002CC398(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 1;
  }
}

void sub_1002CC3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
  }
}

void sub_1002CC3F4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, void *, uint64_t, void *))
{
  v12 = a1;
  v13 = a3;
  v14 = a5;
  a6(a1, a2, a3, a4, a5);
}

void sub_1002CC498(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  TUOpenURL();
}

void sub_1002CC4E0(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  TUUnlockAndOpenSensitiveURL();
}

void sub_1002CC528()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags;
  *(v1 + v2) = [objc_allocWithZone(TUFeatureFlags) init];
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID) = &_swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter;
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  *(v1 + v3) = sub_10040BDB0();
  v4 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification);
  *v4 = sub_1002CBE50;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
  v5 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType) = 0;
  v7 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_categories;
  *(v1 + v7) = sub_1002CED8C();
  v8 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_updateBadgeValue);
  *v11 = 0;
  v11[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002CC6D4()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002CC8F0()
{
  v0 = [objc_opt_self() soundWithAlertType:1];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002FBDBC(v1, v2, v0);
  qword_1006A3AC0 = v0;
}

void sub_1002CC954(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 mergedRemoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10001E550(v10);

  if (v11 <= 1)
  {
    v12 = [a1 link];
    if (!v12)
    {
      return;
    }
  }

  if (([a1 isLocallyCreated] & 1) == 0 && !objc_msgSend(a1, "state") && !objc_msgSend(a1, "letMeInRequestState") && (objc_msgSend(a1, "hasJoined") & 1) == 0)
  {
    v13 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver);
    v14 = [a1 localMember];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 handle];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v13 shouldShowInvitationUserNotificationForConversation:a1 handle:v16];

    if (v17)
    {
      v18 = [a1 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
      swift_beginAccess();
      sub_1002CB670(v8, *(v1 + v19));
      v21 = v20;
      swift_endAccess();
      (*(v4 + 8))(v8, v3);
      if (v21)
      {
LABEL_13:

        return;
      }

      if (([a1 isOneToOneModeEnabled] & 1) == 0 && (objc_msgSend(a1, "isFromStorage") & 1) == 0 && objc_msgSend(objc_opt_self(), "supportsConversations") && objc_msgSend(a1, "hostedOnCurrentDevice"))
      {
        v22 = [a1 activeRemoteParticipants];
        v23 = sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v39[2] = v23;
        if ((v24 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v26 = v39[5];
          v25 = v39[6];
          v27 = v39[7];
          v28 = v39[8];
          v29 = v39[9];
        }

        else
        {
          v30 = -1 << *(v24 + 32);
          v25 = v24 + 56;
          v27 = ~v30;
          v31 = -v30;
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          else
          {
            v32 = -1;
          }

          v29 = v32 & *(v24 + 56);

          v28 = 0;
          v26 = v24;
        }

        v39[1] = v27;
        v33 = (v27 + 64) >> 6;
        while (1)
        {
          if (v26 < 0)
          {
            v37 = __CocoaSet.Iterator.next()();
            if (!v37)
            {
              goto LABEL_37;
            }

            v39[3] = v37;
            swift_dynamicCast();
            v36 = v39[4];
          }

          else
          {
            v34 = v28;
            v35 = v29;
            if (!v29)
            {
              while (1)
              {
                v28 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  break;
                }

                if (v28 >= v33)
                {
                  goto LABEL_37;
                }

                v35 = *(v25 + 8 * v28);
                ++v34;
                if (v35)
                {
                  goto LABEL_31;
                }
              }

              __break(1u);
              return;
            }

LABEL_31:
            v29 = (v35 - 1) & v35;
            v36 = *(*(v26 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v35)))));
          }

          if (!v36)
          {
LABEL_37:
            sub_100022DDC();

            return;
          }

          v38 = [v36 isLocalAccountHandle];

          if (v38)
          {
            sub_100022DDC();
            goto LABEL_13;
          }
        }
      }
    }
  }
}

uint64_t sub_1002CCE68(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver);
  v4 = [a1 localMember];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 handle];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 shouldShowInvitationRingingUIForConversation:a1 handle:v6];

  if (v7)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_1002CCF08(void *a1)
{
  v1 = [a1 pseudonym];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  _StringGuts.grow(_:)(23);

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000015;
}

uint64_t sub_1002CCFB0(void *a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_100007654();
  if (a2)
  {
    v11 = 0x2D79616C70726163;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v7 + 8);
  v17 = sub_100007764();
  v18(v17);

  v19._countAndFlagsBits = v13;
  v19._object = v15;
  String.append(_:)(v19);

  return v11;
}

id sub_1002CD140(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:a1 originatingUIType:24];
  [v3 setWantsStagingArea:1];
  [v3 setVideoEnabled:a2 & 1];
  return v3;
}

void *sub_1002CD1B0(void *a1)
{
  v2 = objc_allocWithZone(TUJoinConversationRequest);
  v3 = a1;
  sub_100395AD8();
  v5 = v4;
  [v4 setWantsStagingArea:1];
  [v5 setVideoEnabled:1];
  v6 = [objc_opt_self() standardInvitationPreferencesForLink];
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002DB204(v7, v5);
  return v5;
}

uint64_t sub_1002CD2AC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  __chkstk_darwin(v3, v5);
  v85 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v86, v8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  __chkstk_darwin(v11, v13);
  v79 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for DispatchTime();
  v83 = *(v91 - 8);
  v15 = *(v83 + 64);
  v17 = __chkstk_darwin(v91, v16);
  v89 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v90 = &v78 - v20;
  v93 = type metadata accessor for UUID();
  v21 = *(v93 - 1);
  v22 = *(v21 + 64);
  v24 = __chkstk_darwin(v93, v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v78 - v28;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *&v1[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
  *v35 = v36;
  (*(v31 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v30);
  v82 = v36;
  v37 = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v35, v30);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v35 = v1;
  v92 = a1;
  v39 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
  swift_beginAccess();
  v40 = sub_100025C60(v29, *&v35[v30]);
  swift_endAccess();
  if (v40)
  {

    v37 = *(v21 + 8);
    (v37)(v29, v93);
    if (qword_1006A0B70 == -1)
    {
LABEL_4:
      v41 = type metadata accessor for Logger();
      sub_10000AF9C(v41, qword_1006BA6D0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Updating conversation for pending invite notification", v44, 2u);
      }

      v45 = v92;
      v46 = [v92 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v47 = v45;
      v48 = *&v35[v30];
      swift_isUniquelyReferenced_nonNull_native();
      v95 = *&v35[v30];
      sub_100378EC8();
      *&v35[v30] = v95;
      (v37)(v26, v93);
      swift_endAccess();
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  v78 = v10;
  v49 = v38;
  v50 = *(v21 + 8);
  v50(v29, v93);
  v52 = *&v35[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification];
  v51 = *&v35[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification + 8];

  v54 = v52(v53);

  if ((v54 & 1) == 0)
  {
    sub_1002CDCC0(v92, v35);
  }

  v55 = v49;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v56 = v50;
  v57 = type metadata accessor for Logger();
  sub_10000AF9C(v57, qword_1006BA6D0);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Delaying invite notification because a paired device is connected", v60, 2u);
  }

  v61 = v92;
  v62 = [v92 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v63 = v61;
  v64 = *&v35[v30];
  swift_isUniquelyReferenced_nonNull_native();
  v95 = *&v35[v30];
  sub_100378EC8();
  *&v35[v30] = v95;
  v56(v26, v93);
  swift_endAccess();
  v65 = v89;
  static DispatchTime.now()();
  result = [*&v35[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag] watchInviteNotificationDelay];
  if ((result & 0x8000000000000000) == 0)
  {
    v67 = v79;
    *v79 = result;
    v69 = v80;
    v68 = v81;
    (*(v80 + 104))(v67, enum case for DispatchTimeInterval.seconds(_:), v81);
    + infix(_:_:)();
    (*(v69 + 8))(v67, v68);
    v93 = *(v83 + 8);
    v93(v65, v91);
    v70 = swift_allocObject();
    v70[2] = v35;
    v70[3] = v63;
    v70[4] = sub_1002DB638;
    v70[5] = v55;
    aBlock[4] = sub_1002DB640;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100624DF0;
    v71 = _Block_copy(aBlock);
    v72 = v35;
    v73 = v63;

    v74 = v78;
    static DispatchQoS.unspecified.getter();
    v95 = _swiftEmptyArrayStorage;
    sub_10000EDB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v75 = v85;
    v76 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v77 = v90;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v71);

    (*(v87 + 8))(v75, v76);
    (*(v84 + 8))(v74, v86);
    v93(v77, v91);
  }

  __break(1u);
  return result;
}

void sub_1002CDCC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v58 = *(v4 - 1);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4, v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for UUID();
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v62, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CE2C4(a1);
  v13 = v12;
  v14 = sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v15 = sub_1002CCFB0(a1, 0);
  v17 = v16;
  v18 = v13;
  v56 = v14;
  v19 = sub_10044F628(v15, v17, v18, 0);
  v20 = sub_1002CCE68(a1);
  v61 = v19;
  [v19 setDestinations:v20];
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA6D0);
  v22 = v18;
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315394;
    v28 = [v23 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000EDB0(&qword_1006A25E0, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v22;
    v32 = v31;
    (*(v60 + 8))(v11, v62);
    v33 = sub_10002741C(v29, v32, &v64);
    v22 = v30;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v30;
    v34 = v54;
    *v54 = v30;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Posting notification request for conversation UUID %s with content %@", v26, 0x16u);
    sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v27);
  }

  v55 = v22;
  sub_1002CE7A4(v61);
  v36 = sub_1002CD140(v23, 0);
  v37 = [v36 URL];

  v38 = v57;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  (*(v58 + 8))(v38, v59);
  [v22 setDefaultActionURL:v41];

  v42 = sub_1002CCFB0(v23, 1);
  v44 = sub_10044F628(v42, v43, v22, 0);
  v59 = v44;
  [v44 setDestinations:8];
  sub_1002CE7A4(v44);
  v45 = [v23 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002CCFB0(v23, 0);
  v46 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
  swift_beginAccess();
  v47 = *(a2 + v46);
  swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a2 + v46);
  sub_100378D80();
  v48 = v62;
  *(a2 + v46) = v63;
  v49 = *(v60 + 8);
  v49(v11, v48);
  swift_endAccess();
  v50 = [v23 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002CCFB0(v23, 1);
  v51 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
  swift_beginAccess();
  v52 = *(a2 + v51);
  swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a2 + v51);
  sub_100378D80();
  *(a2 + v51) = v63;
  v49(v11, v48);
  swift_endAccess();
}

void sub_1002CE2C4(void *a1)
{
  v3 = type metadata accessor for URL();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3, v5);
  v41 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E958(0xD000000000000012, 0x8000000100566450);
  v40 = v1;
  v44 = sub_1002D283C(a1);

  v39 = a1;
  v7 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1002D3A04(v8);
  v38[1] = 0;

  v10 = sub_10000B6F4(v9);
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v10 == v11)
    {

      v24 = v44;
      sub_100420F48(v12, v44);
      v25 = v39;
      v26 = [v39 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = sub_1002D3748(v27);

      sub_1002DB32C(v28, v24);
      strcpy(&v47, "joinRequestURL");
      HIBYTE(v47) = -18;
      AnyHashable.init<A>(_:)();
      v29 = sub_1002CD140(v25, 1);
      v30 = [v29 URL];

      v31 = v41;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = URL.absoluteString.getter();
      v34 = v33;
      (*(v42 + 8))(v31, v43);
      v48 = &type metadata for String;
      *&v47 = v32;
      *(&v47 + 1) = v34;
      v35 = [v24 userInfo];
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003EBF0(&v47, v46);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = v36;
      sub_100378C74(v46, v49);
      sub_100006780(v49);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v24 setUserInfo:isa];

      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v15 = [v13 value];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = v12[2];
      sub_100017840();
      v12 = v22;
    }

    v19 = v12[2];
    if (v19 >= v12[3] >> 1)
    {
      sub_100017840();
      v12 = v23;
    }

    v12[2] = v19 + 1;
    v20 = &v12[2 * v19];
    v20[4] = v16;
    v20[5] = v18;
    ++v11;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1002CE7A4(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_ftNetworkSupport) validNetworkReachable])
  {
    v3 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add + 8);

      v3(a1);

      sub_1000051F8(v3);
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA6D0);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Ignoring adding notification request %@ since valid network is not reachable", v8, 0xCu);
      sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    }
  }
}

void sub_1002CE978(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v33 - v14;
  v16 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
  swift_beginAccess();
  v18 = sub_100025C60(v15, *(a1 + v17));
  if (v18)
  {
    v19 = v18;
    swift_endAccess();
    (*(v7 + 8))(v15, v6);
    a3(v19);
  }

  else
  {
    swift_endAccess();
    v20 = *(v7 + 8);
    v20(v15, v6);
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000AF9C(v21, qword_1006BA6D0);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = v20;
      v26 = v25;
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = [v22 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000EDB0(&qword_1006A25E0, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v33(v12, v6);
      v32 = sub_10002741C(v29, v31, &v34);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "No conversation is waiting to post a notification for uuid %s so not posting invite notification", v26, 0xCu);
      sub_100009B7C(v27);
    }
  }
}

uint64_t sub_1002CECB8()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A3BD8, &unk_10057EA50);
  v1 = String.init<A>(describing:)();
  *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType);
  *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType);
  v4 = v1;

  v2._countAndFlagsBits = sub_10000C3E4();
  String.append(_:)(v2);

  return v4;
}

void *sub_1002CED8C()
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  v1 = 536870914;
  v236 = v0;
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 pairedDevice];

  if (v3)
  {
    v4 = [v3 canReceiveRelayedGFTCalls];

    if (v4)
    {
      v1 = 2;
    }
  }

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(1313427274, 0xE400000000000000);
  sub_100006B5C();
  v7 = sub_10003FB20(1852403562, 0xE400000000000000, v5, v6);
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100007934();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  *(v8 + 32) = v7;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v10;
  v206 = v7;
  v11 = sub_1003890FC(0xD000000000000015, 0x80000001005662A0, v8, v9, v1);
  v18 = sub_1002DB878(v11, v11, v12, v13, v14, v15, v16, v17, v144, v157, v169, v182, v11, v206, 1, 3, v229);
  sub_10039634C(v18, v19);

  sub_10031E958(0x4C41435F57454956, 0xE90000000000004CLL);
  sub_100006B5C();
  v22 = sub_10003FB20(0x6C6C614377656976, 0xE800000000000000, v20, v21);
  v23 = sub_100007C9C();
  sub_10003DDB4(v23, v24, v25, v26, v27, v28, v29, v30, v145, v158, v170, v183, v194, v207, v31);
  *(v32 + 32) = v22;
  v33 = v22;
  v34 = sub_1003890FC(0xD00000000000001FLL, v9 | 0x8000000000000000, v23, _swiftEmptyArrayStorage, 2);
  v41 = sub_1002DB878(v34, v34, v35, v36, v37, v38, v39, v40, v146, v159, v171, v34, v195, v208, v219, v224, v230);
  sub_10039634C(v41, v42);

  sub_10031E958(0xD00000000000001BLL, 0x80000001005662E0);
  sub_100006B5C();
  v45 = sub_10003FB20(0xD000000000000012, 0x8000000100560F70, v43, v44);
  v46 = sub_100007C9C();
  sub_10003DDB4(v46, v47, v48, v49, v50, v51, v52, v53, v147, v160, v172, v184, v196, v209, v54);
  *(v55 + 32) = v45;
  v173 = v45;
  v56 = sub_1002DB8D8(0xD00000000000002ELL, v9 | 0x8000000000000000, v46, _swiftEmptyArrayStorage);
  v63 = sub_1002DB878(v56, v56, v57, v58, v59, v60, v61, v62, v148, v56, v173, v185, v197, v210, v220, v225, v231);
  sub_10039634C(v63, v64);

  v65 = sub_100007C9C();
  sub_10003DDB4(v65, v66, v67, v68, v69, v70, v71, v72, v149, v161, v174, v186, v198, v211, v73);
  *(v74 + 32) = v33;
  v75 = v33;
  v76 = sub_1002DB8D8(0xD00000000000001ELL, v9 | 0x8000000000000000, v65, _swiftEmptyArrayStorage);
  v84 = sub_1002DB878(v76, v77, v78, v79, v80, v81, v82, v83, v150, v162, v175, v187, v199, v212, v221, v226, v232);
  sub_10039634C(v84, v76);

  v85 = sub_100007C9C();
  sub_10003DDB4(v85, v86, v87, v88, v89, v90, v91, v92, v151, v163, v176, v188, v200, v213, v93);
  *(v94 + 32) = v75;
  v152 = v75;
  v95 = sub_1002DB8D8(0xD000000000000021, v9 | 0x8000000000000000, v85, _swiftEmptyArrayStorage);
  v103 = sub_1002DB878(v95, v96, v97, v98, v99, v100, v101, v102, v152, v164, v177, v189, v201, v214, v222, v227, v233);
  sub_10039634C(v103, v95);

  sub_100025BF0("VIEW_LINK_DETAILS");
  sub_100006B5C();
  v106 = sub_10003FB20(0x6B6E694C77656976, 0xEF736C6961746544, v104, v105);
  sub_100007934();
  v107 = swift_allocObject();
  sub_10003DDB4(v107, v108, v109, v110, v111, v112, v113, v114, v153, v165, v178, v190, v202, v215, v115);
  *(v116 + 32) = v106;
  v117 = v106;
  v118 = sub_1002DB8D8(0xD000000000000031, 0x80000001005663A0, v107, _swiftEmptyArrayStorage);
  v126 = sub_1002DB878(v118, v119, v120, v121, v122, v123, v124, v125, v154, v166, v179, v191, v203, v216, v223, v228, v234);
  sub_10039634C(v126, v118);

  sub_10031E958(0x484354495753, 0xE600000000000000);
  sub_100006B5C();
  v129 = sub_10003FB20(0x65756E69746E6F63, 0xEF66666F646E6148, v127, v128);
  sub_100007934();
  v130 = swift_allocObject();
  sub_10003DDB4(v130, v131, v132, v133, v134, v135, v136, v137, v155, v167, v180, v192, v204, v217, v138);
  *(v139 + 32) = v129;
  v140 = v129;
  v141 = sub_10031E958(0x41454E5F4C4C4143, 0xEB00000000594252);

  return v236;
}

id sub_1002CF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [swift_getObjCClassFromMetadata() actionWithIdentifier:v6 title:v7 options:a5];

  return v8;
}

id sub_1002CF3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = String._bridgeToObjectiveC()();

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = String._bridgeToObjectiveC()();

  v12 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v8 actions:isa intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:v11 options:a7];

  return v12;
}

void sub_1002CF508()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  sub_100007654();
  v31 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v31);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v30 = *&v0[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
  sub_100009AB0(v2, v33);
  v19 = swift_allocObject();
  sub_10002F0C8(v33, v19 + 16);
  *(v19 + 56) = v0;
  v32[4] = sub_1002DA534;
  v32[5] = v19;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  sub_10000A600();
  v32[2] = v20;
  v32[3] = &unk_100624D78;
  v21 = _Block_copy(v32);
  v22 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008AD0();
  sub_10000EDB0(v23, v24);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v25, v26, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  v27 = *(v6 + 8);
  v28 = sub_100007764();
  v29(v28);
  (*(v12 + 8))(v18, v31);

  sub_100005EDC();
}

void sub_1002CF788(NSObject *a1, NSObject *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = v51 - v12;
  isa = a1[3].isa;
  v15 = a1[4].isa;
  sub_100009B14(a1, isa);
  v57._countAndFlagsBits = (*(v15 + 1))(isa, v15);
  if (sub_1002CBD84(v57) == 6)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA6D0);
    v51[0] = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51[0], v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v51[0], v17, "Unknown notification response received", v18, 2u);
    }

    v19 = v51[0];
  }

  else
  {
    v20 = a1[3].isa;
    v21 = a1[4].isa;
    sub_100009B14(a1, v20);
    (*(v21 + 2))(v20, v21);
    v22._countAndFlagsBits = 0x2D79616C70726163;
    v22._object = 0xE800000000000000;
    v23 = String.hasPrefix(_:)(v22);

    switch(v24)
    {
      case 1:
      case 2:
        v25 = *(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
        if (v25)
        {
          v26 = *(&a2[1].isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
          v27 = objc_opt_self();

          v28 = [v27 faceTimeShowInCallUIURL];
          if (v28)
          {
            v29 = v28;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v25(v10);
            sub_1000051F8(v25);
            (*(v5 + 8))(v10, v4);
          }

          else
          {
            __break(1u);
          }
        }

        break;
      case 3:
        if (qword_1006A0B70 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000AF9C(v30, qword_1006BA6D0);
        sub_100009AB0(a1, v53);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v52 = v34;
          *v33 = 136315138;
          v35 = v54;
          v36 = v55;
          sub_100009B14(v53, v54);
          v37 = (*(v36 + 16))(v35, v36);
          v39 = v38;
          sub_100009B7C(v53);
          v40 = sub_10002741C(v37, v39, &v52);

          *(v33 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v31, v32, "continueActivity action for notification: %s", v33, 0xCu);
          sub_100009B7C(v34);
        }

        else
        {

          sub_100009B7C(v53);
        }

        break;
      case 4:
        sub_1002CFE78(a1);
        break;
      case 5:
        sub_1002D04CC(a1);
        break;
      default:
        v41 = [*(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
        sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
        sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
        v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v43, v44);
        v51[-4] = a2;
        LOBYTE(v51[-3]) = v23;
        v51[-2] = a1;
        sub_1002CAE68(sub_1002DB14C, &v51[-6], v42, &unk_1006A0C80, TUConversation_ptr, &unk_1006A3BB8);
        v46 = v45;

        if (v46)
        {
          v47 = *(&a2->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);
          if (v47)
          {
            v48 = *(&a2[1].isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL);

            v49 = sub_1002CD140(v46, !v23);
            v50 = [v49 URL];

            static URL._unconditionallyBridgeFromObjectiveC(_:)();
            v47(v13);

            sub_1000051F8(v47);
            (*(v5 + 8))(v13, v4);
          }

          else
          {
          }
        }

        break;
    }
  }
}

uint64_t sub_1002CFDB4(void **a1, uint64_t a2, char a3, void *a4)
{
  v5 = sub_1002CCFB0(*a1, a3);
  v7 = v6;
  v8 = a4[3];
  v9 = a4[4];
  sub_100009B14(a4, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

void sub_1002CFE78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v47 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_100009B14(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v51 = 0x796E6F6475657370;
  v52 = 0xE90000000000006DLL;
  AnyHashable.init<A>(_:)();
  sub_100006600(v53, v16);

  sub_100006780(v53);
  if (!v50)
  {
    sub_100009A04(v49, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000AF9C(v31, qword_1006BA6D0);
    sub_100009AB0(a1, v53);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {

      sub_100009B7C(v53);
      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51 = v35;
    *v34 = 136315138;
    sub_100009AB0(v53, v49);
    sub_10026D814(&qword_1006A3BC8, &qword_10057EA48);
    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    sub_100009B7C(v53);
    v39 = sub_10002741C(v36, v38, &v51);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring notification response %s because a pseudonym is missing/could not be typecasted in userInfo", v34, 0xCu);
    sub_100009B7C(v35);

    goto LABEL_13;
  }

  v17 = v51;
  v18 = v52;
  v19 = objc_opt_self();
  v20 = sub_1002DB398(v17, v18, v19);

  if (!v20)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000AF9C(v40, qword_1006BA6D0);
    v32 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v32, v41, "Failed to construct FaceTime app URL to view link details", v42, 2u);
LABEL_13:

LABEL_14:

    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA6D0);
  (*(v5 + 16))(v10, v13, v4);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53[0] = v48;
    *v24 = 136315138;
    sub_10000EDB0(&qword_1006A3BD0, &type metadata accessor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = v10;
    v29 = *(v5 + 8);
    v29(v28, v4);
    v30 = sub_10002741C(v25, v27, v53);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Launching FaceTime for notification response via url %s", v24, 0xCu);
    sub_100009B7C(v48);
  }

  else
  {

    v43 = v10;
    v29 = *(v5 + 8);
    v29(v43, v4);
  }

  v44 = v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL;
  swift_beginAccess();
  v45 = *v44;
  if (*v44)
  {
    v46 = *(v44 + 8);
    swift_endAccess();

    v45(v13);
    sub_1000051F8(v45);
    v29(v13, v4);
  }

  else
  {
    v29(v13, v4);
    swift_endAccess();
  }
}

void sub_1002D04CC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100009B14(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v17[0] = 0xD000000000000018;
  v17[1] = 0x8000000100566260;
  AnyHashable.init<A>(_:)();
  sub_100006600(v18, v4);

  sub_100006780(v18);
  if (v16[3])
  {
    if (swift_dynamicCast())
    {
      v5 = String._bridgeToObjectiveC()();

      v6 = [v5 tu_handoffEligibility];

      if (v6)
      {
        v7 = [objc_opt_self() sharedInstance];
        [v7 continueHandoffForConversationWithEligibility:v6];

LABEL_10:
        return;
      }
    }
  }

  else
  {
    sub_100009A04(v16, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA6D0);
  sub_100009AB0(a1, v18);
  v7 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    sub_100009AB0(v18, v16);
    sub_10026D814(&qword_1006A3BC8, &qword_10057EA48);
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    sub_100009B7C(v18);
    v15 = sub_10002741C(v12, v14, v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v9, "Ignoring notification response %s because a handoff dynamic identifier is missing/could not be typecasted in userInfo", v10, 0xCu);
    sub_100009B7C(v11);

    goto LABEL_10;
  }

  sub_100009B7C(v18);
}

void sub_1002D07AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v142 = *(v5 - 8);
  v6 = *(v142 + 64);
  __chkstk_darwin(v5, v7);
  v141 = v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = v132 - v17;
  Notification.object.getter();
  if (v149)
  {
    type metadata accessor for MomentsNotification();
    if (swift_dynamicCast())
    {
      v137 = v5;
      v133 = v18;
      v134 = a1;
      v135 = v10;
      v136 = v9;
      v143 = v156[0];
      v154 = 0;
      v155 = 0xE000000000000000;
      v152 = 0;
      v153 = 0xE000000000000000;
      v138 = a2;
      v19 = [*(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
      v20 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
      sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
      v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = v20;
      if ((v21 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v23 = v156[0];
        v22 = v156[1];
        v24 = v156[2];
        v25 = v156[3];
        v26 = v156[4];
      }

      else
      {
        v36 = -1 << *(v21 + 32);
        v22 = (v21 + 56);
        v24 = ~v36;
        v37 = -v36;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        else
        {
          v38 = -1;
        }

        v26 = v38 & *(v21 + 56);

        v25 = 0;
        v23 = v21;
      }

      v139 = v24;
      v39 = (v24 + 64) >> 6;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v40 = __CocoaSet.Iterator.next()();
      if (v40)
      {
        v144[0] = v40;
        swift_dynamicCast();
        v2 = aBlock;
        v41 = v25;
        v42 = v26;
        if (aBlock)
        {
          while (1)
          {
            v45 = [v2 avcSessionToken];
            if ((v45 & 0x8000000000000000) == 0 && v45 == *&v143[OBJC_IVAR___CSDMomentsNotification_streamToken])
            {
              break;
            }

            v25 = v41;
            v26 = v42;
            if (v23 < 0)
            {
              goto LABEL_16;
            }

LABEL_19:
            v43 = v25;
            isa = v26;
            v41 = v25;
            if (!v26)
            {
              while (1)
              {
                v41 = v43 + 1;
                if (__OFADD__(v43, 1))
                {
                  break;
                }

                if (v41 >= v39)
                {
                  goto LABEL_28;
                }

                isa = v22[v41].isa;
                ++v43;
                if (isa)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_74:

              (*(v23 + 8))(v26, v39);
              goto LABEL_37;
            }

LABEL_23:
            v42 = (isa - 1) & isa;
            v2 = *(*(v23 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(isa)))));
            if (!v2)
            {
              goto LABEL_28;
            }
          }

          sub_100022DDC();

          v76 = [v2 activeRemoteParticipants];
          v77 = sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
          sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
          v78 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v132[2] = v78;
          v132[3] = v77;
          if ((v78 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v79 = aBlock;
            v80 = v147;
            v81 = v148;
            v82 = v149;
            v83 = v150;
          }

          else
          {
            v84 = -1 << *(v78 + 32);
            v80 = v78 + 56;
            v81 = ~v84;
            v85 = -v84;
            if (v85 < 64)
            {
              v86 = ~(-1 << v85);
            }

            else
            {
              v86 = -1;
            }

            v83 = v86 & *(v78 + 56);

            v82 = 0;
            v79 = v78;
          }

          v132[1] = v81;
          v87 = (v81 + 64) >> 6;
          if ((v79 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

LABEL_45:
          v88 = __CocoaSet.Iterator.next()();
          if (v88)
          {
            v145 = v88;
            swift_dynamicCast();
            v89 = v144[0];
            v90 = v82;
            v91 = v83;
            if (v144[0])
            {
              while (1)
              {
                v139 = v83;
                v94 = v79;
                v140 = v89;
                v95 = [v89 avcIdentifier];
                v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v97;

                if (v96 == *&v143[OBJC_IVAR___CSDMomentsNotification_requesterID] && v98 == *&v143[OBJC_IVAR___CSDMomentsNotification_requesterID + 8])
                {
                  break;
                }

                v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v79 = v94;
                if (v100)
                {
                  goto LABEL_66;
                }

                v82 = v90;
                v83 = v91;
                if ((v94 & 0x8000000000000000) != 0)
                {
                  goto LABEL_45;
                }

LABEL_48:
                v92 = v82;
                v93 = v83;
                v90 = v82;
                if (!v83)
                {
                  while (1)
                  {
                    v90 = v92 + 1;
                    if (__OFADD__(v92, 1))
                    {
                      break;
                    }

                    if (v90 >= v87)
                    {
                      goto LABEL_60;
                    }

                    v93 = *(v80 + 8 * v90);
                    ++v92;
                    if (v93)
                    {
                      goto LABEL_52;
                    }
                  }

                  __break(1u);
                  goto LABEL_76;
                }

LABEL_52:
                v91 = (v93 - 1) & v93;
                v89 = *(*(v79 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v93)))));
                if (!v89)
                {
                  goto LABEL_60;
                }
              }

LABEL_66:
              sub_100022DDC();

              v111 = v138;
              if (![*(v138 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) conversationOneToOneModeEnabled] || !objc_msgSend(v2, "isOneToOneModeEnabled"))
              {
                v121 = *(v111 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation);
                v120 = *(v111 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation + 8);

                v122 = v140;
                v123 = [v140 handle];
                v124 = *(v111 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider);
                v125 = v121();
                v127 = v126;

                v154 = v125;
                v155 = v127;

                v128 = v141;
                UUID.init()();
                v129 = UUID.uuidString.getter();
                v131 = v130;

                (*(v142 + 8))(v128, v137);
                v152 = v129;
                v153 = v131;

                v51 = 0;
                goto LABEL_30;
              }

              if (qword_1006A0B70 != -1)
              {
                swift_once();
              }

              v112 = type metadata accessor for Logger();
              sub_10000AF9C(v112, qword_1006BA6D0);
              v23 = v135;
              v26 = v133;
              v39 = v136;
              (*(v135 + 16))(v133, v134, v136);
              v22 = Logger.logObject.getter();
              v113 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v22, v113))
              {
                v114 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v145 = v115;
                *v114 = 136315138;
                Notification.object.getter();
                v116 = sub_100291184();
                v118 = v117;
                sub_100009A04(v144, &unk_1006A2D10, &unk_10057D940);
                (*(v23 + 8))(v26, v39);
                v119 = sub_10002741C(v116, v118, &v145);

                *(v114 + 4) = v119;
                _os_log_impl(&_mh_execute_header, v22, v113, "Handle momentsStartedRemoteCapture in-app %s", v114, 0xCu);
                sub_100009B7C(v115);

                goto LABEL_37;
              }

              goto LABEL_74;
            }
          }

LABEL_60:
          sub_100022DDC();

          if (qword_1006A0B70 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_10000AF9C(v101, qword_1006BA6D0);
          v102 = v2;
          v68 = v143;
          v69 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v144[0] = v106;
            *v104 = 138412546;
            *(v104 + 4) = v102;
            *v105 = v2;
            *(v104 + 12) = 2080;
            v107 = *&v68[OBJC_IVAR___CSDMomentsNotification_requesterID];
            v108 = *&v68[OBJC_IVAR___CSDMomentsNotification_requesterID + 8];
            v109 = v102;

            v110 = sub_10002741C(v107, v108, v144);

            *(v104 + 14) = v110;
            _os_log_impl(&_mh_execute_header, v69, v103, "could not find participant for participant in conversation: %@ for requesterID: %s", v104, 0x16u);
            sub_100009A04(v105, &unk_1006A2630, &qword_10057CB40);

            sub_100009B7C(v106);

            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

LABEL_28:
      sub_100022DDC();

      if ([*(v138 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) conversationOneToOneModeEnabled])
      {
        v46 = [objc_opt_self() sharedInstance];
        v47 = [v46 queue];

        v48 = swift_allocObject();
        v49 = v143;
        v48[2] = v143;
        v48[3] = &v154;
        v48[4] = &v152;
        v50 = swift_allocObject();
        v51 = sub_1002DB7E4;
        *(v50 + 16) = sub_1002DB7E4;
        *(v50 + 24) = v48;
        v150 = sub_1000200A4;
        v151 = v50;
        aBlock = _NSConcreteStackBlock;
        v147 = 1107296256;
        v148 = sub_10002007C;
        v149 = &unk_100624FD0;
        v52 = _Block_copy(&aBlock);
        v53 = v49;

        dispatch_sync(v47, v52);

        _Block_release(v52);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if ((v47 & 1) == 0)
        {
LABEL_30:
          v54 = [objc_allocWithZone(UNMutableNotificationContent) init];
          sub_10031E958(0xD000000000000025, 0x8000000100566500);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10057D690;
          v57 = v154;
          v56 = v155;
          *(v55 + 56) = &type metadata for String;
          *(v55 + 64) = sub_100009D88();
          *(v55 + 32) = v57;
          *(v55 + 40) = v56;

          String.init(format:_:)();

          v58 = String._bridgeToObjectiveC()();

          [v54 setBody:v58];

          v59 = String._bridgeToObjectiveC()();
          [v54 setCategoryIdentifier:v59];

          sub_10031E958(0xD000000000000021, 0x8000000100566530);
          v60 = String._bridgeToObjectiveC()();

          [v54 setTitle:v60];

          [v54 setShouldSuppressDefaultAction:1];
          [v54 setShouldIgnoreDoNotDisturb:1];
          v61 = sub_1002CECB8();
          sub_1004554A0(v61, v62, v54);
          [v54 setInterruptionLevel:2];
          sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
          v63 = v152;
          v64 = v153;

          v65 = v54;
          v66 = sub_10044F628(v63, v64, v65, 0);
          [v66 setDestinations:3];
          sub_1002CE7A4(v66);

          sub_1000051F8(v51);
          return;
        }

LABEL_76:
        __break(1u);
      }

      else if (qword_1006A0B70 == -1)
      {
LABEL_32:
        v67 = type metadata accessor for Logger();
        sub_10000AF9C(v67, qword_1006BA6D0);
        v68 = v143;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          aBlock = v72;
          *v71 = 136315138;
          v144[0] = *&v68[OBJC_IVAR___CSDMomentsNotification_streamToken];
          v73 = String.init<A>(reflecting:)();
          v75 = sub_10002741C(v73, v74, &aBlock);

          *(v71 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v69, v70, "could not find conversation for notification stream token: %s", v71, 0xCu);
          sub_100009B7C(v72);

LABEL_34:
          goto LABEL_37;
        }

LABEL_36:
LABEL_37:

        return;
      }

      swift_once();
      goto LABEL_32;
    }
  }

  else
  {
    sub_100009A04(&aBlock, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000AF9C(v27, qword_1006BA6D0);
  (*(v10 + 16))(v15, a1, v9);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v156[0] = v31;
    *v30 = 136315138;
    Notification.object.getter();
    v32 = sub_100291184();
    v34 = v33;
    sub_100009A04(&aBlock, &unk_1006A2D10, &unk_10057D940);
    (*(v10 + 8))(v15, v9);
    v35 = sub_10002741C(v32, v34, v156);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "momentsStartedRemoteCapture received invalid notification object: %s", v30, 0xCu);
    sub_100009B7C(v31);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }
}

void sub_1002D19F4(char *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 currentVideoCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10000B6F4(v7);
  v9 = 0;
  v10 = OBJC_IVAR___CSDMomentsNotification_streamToken;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = [v11 videoStreamToken];
    if ((v13 & 0x8000000000000000) == 0 && v13 == *&a1[v10])
    {

      v22 = sub_1002DB3E8(v12, &selRef_displayFirstName);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
      }

      else
      {
        v26 = [v12 displayName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v27;
      }

      v28 = a2[1];
      *a2 = v24;
      a2[1] = v25;

      v29 = [v12 uniqueProxyIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = a3[1];
      *a3 = v30;
      a3[1] = v32;

      return;
    }

    ++v9;
  }

  if (qword_1006A0B70 == -1)
  {
    goto LABEL_12;
  }

LABEL_25:
  swift_once();
LABEL_12:
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA6D0);
  v15 = a1;
  osloga = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v36 = *&a1[v10];
    v37 = v18;
    v19 = String.init<A>(reflecting:)();
    v21 = sub_10002741C(v19, v20, &v37);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, osloga, v16, "could not find conversation or call for notification stream token: %s", v17, 0xCu);
    sub_100009B7C(v18);
  }

  else
  {
  }
}

void sub_1002D1DA0()
{
  sub_100005EF4();
  v45 = v1;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v48 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_100007FDC();
  sub_100007654();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v12);
  v46 = v14;
  v47 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = type metadata accessor for Notification();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  v28 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *&v0[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
  (*(v24 + 16))(v28, v5, v21);
  v29 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v30 = (v26 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v29, v28, v21);
  *(v31 + v30) = v0;
  v50[4] = v43;
  v50[5] = v31;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 1107296256;
  sub_10000A600();
  v50[2] = v32;
  v50[3] = v45;
  v33 = _Block_copy(v50);
  v34 = v0;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100008AD0();
  sub_10000EDB0(v35, v36);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v37, v38, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  v39 = *(v48 + 8);
  v40 = sub_100007764();
  v41(v40);
  (*(v46 + 8))(v20, v47);

  sub_100005EDC();
}

void sub_1002D20BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA6D0);
  (*(v5 + 16))(v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v45 = a2;
    v14 = v13;
    v44 = swift_slowAlloc();
    v48[0] = v44;
    *v14 = 136315138;
    sub_10000EDB0(&unk_1006A3C80, &type metadata accessor for Notification);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_10002741C(v15, v17, v48);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Handling notification for pending message did receive invite: %s", v14, 0xCu);
    sub_100009B7C(v44);

    a2 = v45;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v19 = Notification.userInfo.getter();
  if (!v19)
  {
    v49 = 0u;
    v50 = 0u;
    goto LABEL_15;
  }

  v20 = v19;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v21;
  AnyHashable.init<A>(_:)();
  sub_100006600(v48, v20);

  sub_100006780(v48);
  if (!*(&v50 + 1))
  {
LABEL_15:
    sub_100009A04(&v49, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_16;
  }

  type metadata accessor for GroupIDSPendingChat(0);
  if (swift_dynamicCast())
  {
    v22 = v48[0];
    v23 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v25 = *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName);
    v24 = *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName + 8);
    v26 = OBJC_IVAR___CSDGroupIDSPendingChat_handle;
    v27 = *&v22[OBJC_IVAR___CSDGroupIDSPendingChat_handle];
    v28 = *(a2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider);

    v29 = v27;
    v25();

    v30 = String._bridgeToObjectiveC()();

    [v23 setTitle:v30];

    sub_10031E958(0xD000000000000012, 0x8000000100566450);
    v31 = String._bridgeToObjectiveC()();

    [v23 setBody:v31];

    v32 = String._bridgeToObjectiveC()();
    [v23 setCategoryIdentifier:v32];

    if (qword_1006A07B8 != -1)
    {
      swift_once();
    }

    [v23 setSound:qword_1006A3AC0];
    v33 = [*&v22[v26] value];
    if (!v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String._bridgeToObjectiveC()();
    }

    [v23 setThreadIdentifier:v33];

    v34 = sub_1002CECB8();
    sub_1004554A0(v34, v35, v23);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v36 = UUID.uuidString.getter();
    v38 = v37;
    v39 = v23;
    v40 = sub_10044F628(v36, v38, v39, 0);
    [v40 setDestinations:15];
    sub_1002CE7A4(v40);

    goto LABEL_18;
  }

LABEL_16:
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Did not find expected pending chat information", v42, 2u);
  }

LABEL_18:
}

uint64_t sub_1002D26EC(void *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a1;
  sub_1002D1DA0();

  return (*(v5 + 8))(v11, v2);
}

id sub_1002D283C(void *a1)
{
  v2 = v1;
  v51 = type metadata accessor for URL();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51, v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v50 - v12;
  v14 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setBody:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setCategoryIdentifier:v16];

  if (qword_1006A07B8 != -1)
  {
    swift_once();
  }

  [v14 setSound:qword_1006A3AC0];
  v18 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation);
  v17 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation + 8);

  v19 = [a1 initiator];
  v20 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider);
  v18();

  v21 = String._bridgeToObjectiveC()();

  [v14 setTitle:v21];

  v22 = sub_1002CECB8();
  sub_1004554A0(v22, v23, v14);
  sub_100320858(a1);
  if (!v24)
  {
    v25 = [a1 link];
    if (v25)
    {

      v26 = [a1 link];
      if (!v26 || (v27 = v26, v28 = [v26 isLocallyCreated], v27, !v28) || (v29 = objc_msgSend(a1, "link")) == 0 || (sub_1002DB2BC(v29), !v30))
      {
        sub_10031E958(0x454D495445434146, 0xED00004B4E494C5FLL);
      }
    }

    else
    {
      v42 = sub_10031E958(0x49564E495F544647, 0xEA00000000004554);
      v50[1] = v43;
      v50[2] = v42;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10057D690;
      v46 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);
      v45 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName + 8);

      v47 = v46(a1);
      v49 = v48;

      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_100009D88();
      *(v44 + 32) = v47;
      *(v44 + 40) = v49;
      String.init(format:_:)();
    }
  }

  v31 = String._bridgeToObjectiveC()();

  [v14 setSubtitle:v31];

  if (([a1 isVideoEnabled] & 1) != 0 || (sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr), v32 = objc_msgSend(a1, "provider"), v33 = objc_msgSend(objc_opt_self(), "expanseProvider"), v34 = static NSObject.== infix(_:_:)(), v32, v33, (v34 & 1) == 0))
  {
    v38 = sub_1002CD140(a1, 1);
    v39 = [v38 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v8;
    v35 = v51;
    goto LABEL_16;
  }

  sub_1002D2D98(a1, v13);
  v35 = v51;
  if (sub_100015468(v13, 1, v51) != 1)
  {
LABEL_16:
    URL._bridgeToObjectiveC()(v36);
    v37 = v40;
    (*(v4 + 8))(v13, v35);
    goto LABEL_17;
  }

  v37 = 0;
LABEL_17:
  [v14 setDefaultActionURL:v37];

  return v14;
}

uint64_t sub_1002D2D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for URLComponents();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URLQueryItem();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v47, v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v44 - v24;
  v26 = [a1 messagesGroupUUID];
  if (v26)
  {
    v27 = v26;
    v45 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 32))(v25, v22, v16);
    UUID.uuidString.getter();
    URLQueryItem.init(name:value:)();

    sub_100470158(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v28;
    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_100470158(v30 > 1, v31 + 1, 1, v28);
      v29 = v43;
    }

    (*(v17 + 8))(v25, v16);
    v29[2] = v31 + 1;
    v32 = v47;
    (*(v8 + 32))(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, v15, v47);
    v3 = v45;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
    v32 = v47;
  }

  v33 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002D32DC(v34);
  v36 = v35;

  v50 = v36;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910);
  BidirectionalCollection<>.joined(separator:)();

  v37 = v46;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100470158(0, v29[2] + 1, 1, v29);
    v29 = v41;
  }

  v39 = v29[2];
  v38 = v29[3];
  if (v39 >= v38 >> 1)
  {
    sub_100470158(v38 > 1, v39 + 1, 1, v29);
    v29 = v42;
  }

  v29[2] = v39 + 1;
  (*(v8 + 32))(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39, v37, v32);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  return (*(v48 + 8))(v7, v3);
}

void sub_1002D32DC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v51;
    v2 = v52;
    v4 = v53;
    v3 = v54;
    v5 = v55;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = (v4 + 64) >> 6;
  v47 = _swiftEmptyArrayStorage;
  v48 = v2;
LABEL_8:
  v10 = v3;
  if (v1 < 0)
  {
    while (__CocoaSet.Iterator.next()())
    {
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      swift_dynamicCast();
      v14 = v56;
      v3 = v10;
      v13 = v5;
      if (!v56)
      {
        break;
      }

LABEL_17:
      v49 = v14;
      v50 = v13;
      v15 = [v14 handles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v16 & 0xC000000000000001;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = v1;
        v19 = __CocoaSet.startIndex.getter();
        v21 = v20;
        v22 = __CocoaSet.endIndex.getter();
        v23 = v9;
        v25 = v24;
        v26 = static __CocoaSet.Index.== infix(_:_:)();
        v27 = v22;
        v1 = v18;
        v2 = v48;
        v28 = v25;
        v9 = v23;
        sub_100010000(v27, v28, 1);
        v17 = v16 & 0xC000000000000001;
        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = 0;
        v30 = (v16 + 56);
        v19 = 1 << *(v16 + 32);
        v31 = (v19 + 63) >> 6;
        if (v31)
        {
          while (!*v30)
          {
            v29 -= 64;
            --v31;
            ++v30;
            if (!v31)
            {
              goto LABEL_23;
            }
          }

          v32 = __clz(__rbit64(*v30));
          v21 = *(v16 + 36);
          if (v32 - v19 != v29)
          {
            v19 = v32 - v29;
LABEL_28:
            v46 = v9;
            v33 = v17 != 0;
            sub_10001E580(v19, v21, v17 != 0, v16);
            v35 = v34;
            sub_100010000(v19, v21, v33);

            v36 = [v35 value];

            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40 = v2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = v47[2];
              sub_100017840();
              v47 = v44;
            }

            v41 = v47[2];
            v9 = v46;
            if (v41 >= v47[3] >> 1)
            {
              sub_100017840();
              v47 = v45;
            }

            v47[2] = v41 + 1;
            v42 = &v47[2 * v41];
            v42[4] = v37;
            v42[5] = v39;
            v2 = v40;
            v5 = v50;
            goto LABEL_8;
          }
        }

        else
        {
LABEL_23:
          v21 = *(v16 + 36);
        }
      }

      sub_100010000(v19, v21, v17 != 0);

      v10 = v3;
      v5 = v50;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_33;
  }

LABEL_9:
  v11 = v10;
  v12 = v5;
  v3 = v10;
  if (v5)
  {
LABEL_13:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_33:
    sub_100022DDC();
    return;
  }

  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v9)
    {
      goto LABEL_33;
    }

    v12 = *(v2 + 8 * v3);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}