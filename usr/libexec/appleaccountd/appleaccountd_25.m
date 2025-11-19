Swift::Int sub_1002C95D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100349818[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1002C9660()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100349818[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1002C96AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002C9E28(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002C96F0()
{
  _StringGuts.grow(_:)(39);

  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000025;
}

uint64_t type metadata accessor for PushMessage()
{
  result = qword_1003E7668;
  if (!qword_1003E7668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C97F0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Push with empty command sent to topic", v5, 2u);
    }

    return 6;
  }

  if (a1 > 5199)
  {
    switch(a1)
    {
      case 5200:
        return 5;
      case 6000:
        return 3;
      case 6001:
        return 4;
      default:
        return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 5000:
        return 0;
      case 5100:
        return 1;
      case 5101:
        return 2;
      default:
        return 6;
    }
  }
}

uint64_t sub_1002C9958(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7148, &unk_100349380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C99D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005814(&qword_1003E7148, &unk_100349380);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_1002C9AA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005814(&qword_1003E7148, &unk_100349380);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C9B54()
{
  sub_1002C9CC0();
  if (v0 <= 0x3F)
  {
    sub_1002C9D0C(319, &qword_1003E7680);
    if (v1 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DB130);
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003E7688);
        if (v3 <= 0x3F)
        {
          sub_1000EEDD4(319, &qword_1003E7690);
          if (v4 <= 0x3F)
          {
            sub_1002C9D0C(319, &qword_1003E7698);
            if (v5 <= 0x3F)
            {
              sub_1002C9D68();
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

unint64_t sub_1002C9CC0()
{
  result = qword_1003E7678;
  if (!qword_1003E7678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E7678);
  }

  return result;
}

void sub_1002C9D0C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Dictionary();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1002C9D68()
{
  if (!qword_1003E76A0)
  {
    type metadata accessor for WalrusWebAccessInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E76A0);
    }
  }
}

unint64_t sub_1002C9DD4()
{
  result = qword_1003E76F8;
  if (!qword_1003E76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E76F8);
  }

  return result;
}

uint64_t sub_1002C9E28(uint64_t a1)
{
  if (a1 > 5199)
  {
    if (a1 == 5200)
    {
      return 5;
    }

    if (a1 != 6000)
    {
      if (a1 == 6001)
      {
        return 4;
      }

      return 6;
    }

    return 3;
  }

  else
  {
    if (a1 == 5000)
    {
      return 0;
    }

    if (a1 != 5100)
    {
      if (a1 == 5101)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

uint64_t sub_1002C9EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_1003084DC(0x656C746974, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }

LABEL_22:
    v13 = 0;
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v4, v20);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v18;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = sub_1003084DC(2036625250, 0xE400000000000000);
  if (v10)
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v9, v20);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  v16 = sub_1003084DC(0x746E656C6973, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v16, v20);

  result = swift_dynamicCast();
  if (result)
  {
    v15 = v18 != 0;
    goto LABEL_25;
  }

LABEL_24:
  v15 = 1;
LABEL_25:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  return result;
}

__n128 sub_1002CA078(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002CA08C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1002CA0E8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1002CA150(void *a1@<X8>)
{
  v380 = a1;
  v2 = type metadata accessor for PersonNameComponents();
  v376 = *(v2 - 1);
  v377 = v2;
  v3 = *(v376 + 64);
  v4 = __chkstk_darwin(v2);
  v369 = &v366 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v368 = &v366 - v7;
  v8 = __chkstk_darwin(v6);
  v367 = &v366 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v366 - v11;
  __chkstk_darwin(v10);
  v14 = &v366 - v13;
  v381 = type metadata accessor for CustodianRecord();
  v366 = *(v381 - 8);
  v15 = *(v366 + 64);
  v16 = __chkstk_darwin(v381);
  v18 = &v366 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v375 = &v366 - v20;
  v21 = __chkstk_darwin(v19);
  v371 = &v366 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v366 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v366 - v27;
  __chkstk_darwin(v26);
  v30 = &v366 - v29;
  v31 = type metadata accessor for UUID();
  v378 = *(v31 - 8);
  v379 = v31;
  v32 = *(v378 + 64);
  v33 = __chkstk_darwin(v31);
  v370 = &v366 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v374 = &v366 - v36;
  v37 = __chkstk_darwin(v35);
  v372 = &v366 - v38;
  __chkstk_darwin(v37);
  v373 = &v366 - v39;
  v40 = type metadata accessor for TrustedContactUserNotification();
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = &v366 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D17D8(v1, v43, type metadata accessor for TrustedContactUserNotification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v149 = v28;
        sub_1002D1840(v43, v28, type metadata accessor for CustodianRecord);
        PersonNameComponents.init()();
        v150 = v381;
        v151 = &v28[*(v381 + 28)];
        v152 = v151[1];
        if (v152)
        {
          sub_1002576F0(*v151, v152);
        }

        PersonNameComponents.givenName.setter();
        v153 = &v28[v150[8]];
        v154 = v153[1];
        if (v154)
        {
          sub_1002576F0(*v153, v154);
        }

        PersonNameComponents.familyName.setter();
        v155 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v157 = [v155 localizedStringFromPersonNameComponents:isa style:0 options:0];

        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v159;

        (*(v376 + 8))(v12, v377);
        v161 = sub_1002576F0(v158, v160);
        v163 = v162;

        if (!v163)
        {
          v164 = &v149[v150[6]];
          v161 = *v164;
          v163 = v164[1];
        }

        sub_100005814(&qword_1003E7740, &qword_1003498E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033F070;
        v166 = AAFollowUpTrustedContactID;
        *(inited + 32) = AAFollowUpTrustedContactID;
        v167 = v150[5];
        v168 = v166;
        *(inited + 40) = UUID.uuidString.getter();
        *(inited + 48) = v169;
        v170 = AAFollowUpTrustedContactHandle;
        *(inited + 56) = AAFollowUpTrustedContactHandle;
        v171 = &v149[v150[6]];
        v172 = *(v171 + 1);
        *(inited + 64) = *v171;
        *(inited + 72) = v172;
        v173 = AAFollowUpTrustedContactName;
        *(inited + 80) = AAFollowUpTrustedContactName;
        *(inited + 88) = v161;
        *(inited + 96) = v163;
        v174 = v170;

        v175 = v173;
        v66 = sub_1003090E8(inited);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7748, &unk_1003498F0);
        swift_arrayDestroy();
        v79 = AAFollowUpIdentifierCustodianWalrusRemoved;
        v176 = v149;
LABEL_72:
        sub_1000120B4(v176);
LABEL_94:
        v69 = 0;
        v71 = 0;
        v77 = 0;
        v78 = 0;
        goto LABEL_95;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v80 = *v43;
        v81 = v43[1];
        v82 = v43[2];
        sub_100005814(&qword_1003E7710, &qword_1003498D0);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_10033E5C0;
        v84 = AAFollowUpUserInfoHasWalrusEnabled;
        *(v83 + 32) = AAFollowUpUserInfoHasWalrusEnabled;
        *(v83 + 40) = v80;
        v85 = AAFollowUpUserInfoHasRecoveryContact;
        *(v83 + 48) = AAFollowUpUserInfoHasRecoveryContact;
        *(v83 + 56) = v81;
        v86 = v84;
        v87 = v85;
        v88 = sub_1003091E8(v83);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7718, &unk_1003498D8);
        swift_arrayDestroy();
        v89 = AAFollowUpUserInfoHasDistrustedRK;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v382 = v88;
        sub_1002CF758(v82, v89, isUniquelyReferenced_nonNull_native);
        v91 = v382;
        v79 = AAFollowUpIdentifierRecoveryKeyMismatch;
        v66 = sub_1002D263C(v91);

LABEL_82:
        v69 = 0;
        v71 = 0;
        v77 = 0;
        v78 = 1;
        goto LABEL_95;
      }

      v252 = &v43[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
      v253 = *v252;
      v254 = v252[1];
      (*(v378 + 32))(v372, v43, v379);
      v255 = type metadata accessor for ContactsHelper();
      v256 = *(v255 + 48);
      v257 = *(v255 + 52);
      v258 = swift_allocObject();
      sub_100005814(&unk_1003D9820, &unk_10033EFD0);
      Dependency.init(dependencyId:config:)();
      v259 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
      Dependency.wrappedValue.getter();
      v260 = v382;
      v261 = String._bridgeToObjectiveC()();
      v262 = [v260 contactForHandle:v261];

      swift_unknownObjectRelease();
      if (v262)
      {
        v263 = objc_allocWithZone(AALocalContactInfo);
        v264 = v262;
        v265 = String._bridgeToObjectiveC()();
        v266 = [v263 initWithHandle:v265 contact:v264];

        swift_setDeallocating();
        (*(*(v259 - 8) + 8))(v258 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v259);
        v267 = *(*v258 + 48);
        v268 = *(*v258 + 52);
        swift_deallocClassInstance();
        if (v266)
        {
          v269 = [v266 displayName];

          if (v269)
          {
            v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v272 = v271;

LABEL_85:
            sub_100005814(&qword_1003E7740, &qword_1003498E8);
            v323 = swift_initStackObject();
            *(v323 + 16) = xmmword_10033F070;
            v324 = AAFollowUpTrustedContactID;
            *(v323 + 32) = AAFollowUpTrustedContactID;
            v325 = v324;
            v326 = v372;
            *(v323 + 40) = UUID.uuidString.getter();
            *(v323 + 48) = v327;
            v328 = AAFollowUpTrustedContactHandle;
            *(v323 + 56) = AAFollowUpTrustedContactHandle;
            *(v323 + 64) = v253;
            v329 = AAFollowUpTrustedContactName;
            *(v323 + 72) = v254;
            *(v323 + 80) = v329;
            *(v323 + 88) = v270;
            *(v323 + 96) = v272;
            v330 = v328;
            v331 = v329;
            v66 = sub_1003090E8(v323);
            swift_setDeallocating();
            sub_100005814(&qword_1003E7748, &unk_1003498F0);
            swift_arrayDestroy();
            v313 = *(v378 + 8);
            v79 = AAFollowUpIdentifierBeneficiaryRemoved;
            v314 = v326;
            goto LABEL_86;
          }
        }
      }

      else
      {
        swift_setDeallocating();
        (*(*(v259 - 8) + 8))(v258 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v259);
        v321 = *(*v258 + 48);
        v322 = *(*v258 + 52);
        swift_deallocClassInstance();
      }

      v270 = v253;
      v272 = v254;
      goto LABEL_85;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        v79 = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing;
        v66 = sub_1003090E8(_swiftEmptyArrayStorage);
        goto LABEL_94;
      }

      v110 = *v43;
      v111 = [v110 handle];
      if (v111)
      {
        v112 = v111;
        v113 = type metadata accessor for ContactsHelper();
        v114 = *(v113 + 48);
        v115 = *(v113 + 52);
        v116 = swift_allocObject();
        v117 = v112;
        sub_100005814(&unk_1003D9820, &unk_10033EFD0);
        Dependency.init(dependencyId:config:)();
        v118 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
        Dependency.wrappedValue.getter();
        v119 = [v382 contactForHandle:v117];

        swift_unknownObjectRelease();
        if (v119)
        {
          v120 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v117 contact:v119];

          swift_setDeallocating();
          (*(*(v118 - 8) + 8))(v116 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v118);
          v121 = *(*v116 + 48);
          v122 = *(*v116 + 52);
          swift_deallocClassInstance();
          if (v120)
          {
            v123 = [v120 firstName];

            if (v123)
            {
              goto LABEL_89;
            }
          }
        }

        else
        {

          swift_setDeallocating();
          (*(*(v118 - 8) + 8))(v116 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v118);
          v332 = *(*v116 + 48);
          v333 = *(*v116 + 52);
          swift_deallocClassInstance();
        }
      }

      v123 = [objc_opt_self() BenefactorUnknownName];
LABEL_89:
      v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v336 = v335;

      v337 = objc_opt_self();
      v338 = [v337 BenefactorAccessKeyChangedNotificationTitle];
      v377 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v381 = v339;

      v340 = [v337 BenefactorAccessKeyChangedNotificationBody];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100005814(&unk_1003E7720, &qword_100346B60);
      v341 = swift_allocObject();
      *(v341 + 16) = xmmword_10033EB30;
      *(v341 + 56) = &type metadata for String;
      *(v341 + 64) = sub_100242A70();
      *(v341 + 32) = v334;
      *(v341 + 40) = v336;
      v69 = String.init(format:_:)();
      v71 = v342;

      v376 = 0x8000000100333BF0;
      sub_100005814(&unk_1003E7730, &unk_1003492E0);
      v343 = swift_initStackObject();
      *(v343 + 16) = xmmword_10033E5C0;
      *(v343 + 32) = 0xD000000000000010;
      *(v343 + 40) = 0x800000010032C670;
      v382 = 0xD000000000000034;
      v383 = 0x8000000100333C20;
      v344 = [v110 beneficiaryID];
      v345 = v370;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100110C1C(&qword_1003D9150);
      v375 = v110;
      v346 = v379;
      v347._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v347);

      (*(v378 + 8))(v345, v346);
      v348 = v383;
      *(v343 + 48) = v382;
      *(v343 + 56) = v348;
      *(v343 + 64) = 0xD000000000000010;
      *(v343 + 72) = 0x800000010032C690;
      v66 = v381;
      v349 = v376;
      *(v343 + 80) = 0xD00000000000002ELL;
      *(v343 + 88) = v349;
      v77 = sub_100308864(v343);
      swift_setDeallocating();
      sub_100005814(&qword_1003DDEC0, &unk_10033E630);
      v79 = v377;
      swift_arrayDestroy();

      v78 = 2;
      goto LABEL_95;
    }

    v203 = &v43[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
    v205 = *v203;
    v204 = v203[1];
    (*(v378 + 32))(v374, v43, v379);
    v206 = type metadata accessor for ContactsHelper();
    v207 = *(v206 + 48);
    v208 = *(v206 + 52);
    v209 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v210 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v211 = v382;
    v212 = String._bridgeToObjectiveC()();
    v213 = [v211 contactForHandle:v212];

    swift_unknownObjectRelease();
    if (v213)
    {
      v214 = objc_allocWithZone(AALocalContactInfo);
      v215 = v213;
      v216 = String._bridgeToObjectiveC()();
      v217 = [v214 initWithHandle:v216 contact:v215];

      swift_setDeallocating();
      (*(*(v210 - 8) + 8))(v209 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v210);
      v218 = *(*v209 + 48);
      v219 = *(*v209 + 52);
      swift_deallocClassInstance();
      if (v217)
      {
        v220 = [v217 displayName];
        if (v220)
        {
          v221 = v220;
          v381 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v223 = v222;
        }

        else
        {

          v381 = v205;
          v223 = v204;
        }

        v350 = [v217 firstName];
        v377 = v217;
        if (v350)
        {
          v351 = v350;
          v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v318 = v352;

          goto LABEL_93;
        }

LABEL_79:

        v317 = v205;
        v318 = v204;
LABEL_93:
        v353 = v205;
        sub_100005814(&qword_1003E7740, &qword_1003498E8);
        v354 = swift_initStackObject();
        *(v354 + 16) = xmmword_1003498B0;
        v355 = AAFollowUpTrustedContactID;
        *(v354 + 32) = AAFollowUpTrustedContactID;
        v356 = v355;
        v357 = v374;
        *(v354 + 40) = UUID.uuidString.getter();
        *(v354 + 48) = v358;
        v359 = AAFollowUpTrustedContactHandle;
        *(v354 + 56) = AAFollowUpTrustedContactHandle;
        *(v354 + 64) = v353;
        v360 = AAFollowUpTrustedContactName;
        *(v354 + 72) = v204;
        *(v354 + 80) = v360;
        *(v354 + 88) = v381;
        *(v354 + 96) = v223;
        v361 = AAFollowUpTrustedContactFirstName;
        *(v354 + 104) = AAFollowUpTrustedContactFirstName;
        *(v354 + 112) = v317;
        *(v354 + 120) = v318;
        v362 = v359;
        v363 = v360;
        v364 = v361;
        v66 = sub_1003090E8(v354);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7748, &unk_1003498F0);
        swift_arrayDestroy();
        v79 = AAFollowUpIdentifierBeneficiaryIneligible;

        (*(v378 + 8))(v357, v379);
        goto LABEL_94;
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v210 - 8) + 8))(v209 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v210);
      v315 = *(*v209 + 48);
      v316 = *(*v209 + 52);
      swift_deallocClassInstance();
    }

    v377 = 0;
    v381 = v205;
    v223 = v204;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload > 2)
  {
    v92 = v381;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1002D1840(v43, v30, type metadata accessor for CustodianRecord);
      PersonNameComponents.init()();
      v177 = &v30[v92[7]];
      v178 = v177[1];
      if (v178)
      {
        sub_1002576F0(*v177, v178);
      }

      PersonNameComponents.givenName.setter();
      v179 = &v30[v92[8]];
      v180 = v179[1];
      if (v180)
      {
        sub_1002576F0(*v179, v180);
      }

      PersonNameComponents.familyName.setter();
      v181 = objc_opt_self();
      v182 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v183 = [v181 localizedStringFromPersonNameComponents:v182 style:0 options:0];

      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;

      (*(v376 + 8))(v14, v377);
      v187 = sub_1002576F0(v184, v186);
      v189 = v188;

      if (!v189)
      {
        v190 = &v30[v92[6]];
        v187 = *v190;
        v189 = v190[1];
      }

      sub_100005814(&qword_1003E7740, &qword_1003498E8);
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_10033F070;
      v192 = AAFollowUpTrustedContactID;
      *(v191 + 32) = AAFollowUpTrustedContactID;
      v193 = v92[5];
      v194 = v192;
      *(v191 + 40) = UUID.uuidString.getter();
      *(v191 + 48) = v195;
      v196 = AAFollowUpTrustedContactHandle;
      *(v191 + 56) = AAFollowUpTrustedContactHandle;
      v197 = &v30[v92[6]];
      v198 = *(v197 + 1);
      *(v191 + 64) = *v197;
      *(v191 + 72) = v198;
      v199 = AAFollowUpTrustedContactName;
      *(v191 + 80) = AAFollowUpTrustedContactName;
      *(v191 + 88) = v187;
      *(v191 + 96) = v189;
      v200 = v196;

      v201 = v199;
      v66 = sub_1003090E8(v191);
      swift_setDeallocating();
      sub_100005814(&qword_1003E7748, &unk_1003498F0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v202 = &AAFollowUpIdentifierCustodianRemoved;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v93 = *v43;
        sub_100005814(&qword_1003E7700, &qword_1003498C0);
        v94 = swift_initStackObject();
        v95 = v94;
        *(v94 + 16) = xmmword_10033EB30;
        v96 = AAFollowUpTrustedContactIDs;
        *(v94 + 32) = AAFollowUpTrustedContactIDs;
        v97 = v94 + 32;
        v98 = *(v93 + 2);
        if (v98)
        {
          v376 = v94 + 32;
          v378 = v94;
          v382 = _swiftEmptyArrayStorage;
          v99 = v96;
          sub_1002E0224(0, v98, 0);
          v100 = v382;
          v101 = *(v366 + 80);
          v377 = v93;
          v102 = &v93[(v101 + 32) & ~v101];
          v379 = *(v366 + 72);
          do
          {
            sub_1002D17D8(v102, v18, type metadata accessor for CustodianRecord);
            v103 = &v18[*(v381 + 20)];
            v104 = UUID.uuidString.getter();
            v106 = v105;
            sub_1000120B4(v18);
            v382 = v100;
            v108 = v100[2];
            v107 = v100[3];
            if (v108 >= v107 >> 1)
            {
              sub_1002E0224((v107 > 1), v108 + 1, 1);
              v100 = v382;
            }

            v100[2] = v108 + 1;
            v109 = &v100[2 * v108];
            v109[4] = v104;
            v109[5] = v106;
            v102 += v379;
            --v98;
          }

          while (v98);

          v95 = v378;
          v97 = v376;
        }

        else
        {
          v319 = v96;

          v100 = _swiftEmptyArrayStorage;
        }

        *(v95 + 40) = v100;
        v320 = sub_1003092D8(v95);
        swift_setDeallocating();
        sub_1002D170C(v97);
        v79 = AAFollowUpIdentifierCustodianReview;
        v66 = sub_1002D28F8(v320);

        goto LABEL_82;
      }

      v30 = v25;
      sub_1002D1840(v43, v25, type metadata accessor for CustodianRecord);
      v273 = v367;
      PersonNameComponents.init()();
      v274 = &v25[v92[7]];
      v275 = v274[1];
      if (v275)
      {
        sub_1002576F0(*v274, v275);
      }

      PersonNameComponents.givenName.setter();
      v276 = &v25[v92[8]];
      v277 = v276[1];
      if (v277)
      {
        sub_1002576F0(*v276, v277);
      }

      PersonNameComponents.familyName.setter();
      v278 = objc_opt_self();
      v279 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v280 = [v278 localizedStringFromPersonNameComponents:v279 style:0 options:0];

      v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v283 = v282;

      (*(v376 + 8))(v273, v377);
      v284 = sub_1002576F0(v281, v283);
      v286 = v285;

      if (!v286)
      {
        v287 = &v25[v92[6]];
        v284 = *v287;
        v286 = v287[1];
      }

      sub_100005814(&qword_1003E7740, &qword_1003498E8);
      v288 = swift_initStackObject();
      *(v288 + 16) = xmmword_10033F070;
      v289 = AAFollowUpTrustedContactID;
      *(v288 + 32) = AAFollowUpTrustedContactID;
      v290 = v92[5];
      v291 = v289;
      *(v288 + 40) = UUID.uuidString.getter();
      *(v288 + 48) = v292;
      v293 = AAFollowUpTrustedContactHandle;
      *(v288 + 56) = AAFollowUpTrustedContactHandle;
      v294 = &v25[v92[6]];
      v295 = *(v294 + 1);
      *(v288 + 64) = *v294;
      *(v288 + 72) = v295;
      v296 = AAFollowUpTrustedContactName;
      *(v288 + 80) = AAFollowUpTrustedContactName;
      *(v288 + 88) = v284;
      *(v288 + 96) = v286;
      v297 = v293;

      v298 = v296;
      v66 = sub_1003090E8(v288);
      swift_setDeallocating();
      sub_100005814(&qword_1003E7748, &unk_1003498F0);
      swift_arrayDestroy();
      v202 = &AAFollowUpIdentifierCustodianWalrusNoLiveness;
    }

    v79 = *v202;
    v176 = v30;
    goto LABEL_72;
  }

  v45 = v381;
  if (!EnumCaseMultiPayload)
  {
    v124 = &v43[*(sub_100005814(&qword_1003E7750, qword_100340600) + 48)];
    v125 = *v124;
    v126 = v124[1];
    (*(v378 + 32))(v373, v43, v379);
    v127 = objc_opt_self();
    v128 = UUID._bridgeToObjectiveC()().super.isa;
    v129 = [v127 stringForCustodianMessagesURLWithUUID:v128];

    v381 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v377 = v130;

    v131 = type metadata accessor for ContactsHelper();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    v134 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v135 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v136 = v382;
    v137 = String._bridgeToObjectiveC()();
    v138 = [v136 contactForHandle:v137];

    swift_unknownObjectRelease();
    if (v138)
    {
      v139 = objc_allocWithZone(AALocalContactInfo);
      v140 = v138;
      v141 = String._bridgeToObjectiveC()();
      v142 = [v139 initWithHandle:v141 contact:v140];

      swift_setDeallocating();
      (*(*(v135 - 8) + 8))(v134 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v135);
      v143 = *(*v134 + 48);
      v144 = *(*v134 + 52);
      swift_deallocClassInstance();
      if (v142)
      {
        v145 = [v142 displayName];

        if (v145)
        {
          v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v147;

LABEL_76:
          sub_100005814(&qword_1003E7740, &qword_1003498E8);
          v301 = swift_allocObject();
          *(v301 + 16) = xmmword_1003498B0;
          v302 = AAFollowUpTrustedContactID;
          *(v301 + 32) = AAFollowUpTrustedContactID;
          v303 = v302;
          v304 = v373;
          *(v301 + 40) = UUID.uuidString.getter();
          *(v301 + 48) = v305;
          v306 = AAFollowUpTrustedContactHandle;
          *(v301 + 56) = AAFollowUpTrustedContactHandle;
          *(v301 + 64) = v125;
          v307 = AAFollowUpTrustedContactName;
          *(v301 + 72) = v126;
          *(v301 + 80) = v307;
          *(v301 + 88) = v146;
          *(v301 + 96) = v148;
          v308 = AAFollowUpTrustedContactInvitationURL;
          v309 = v381;
          *(v301 + 104) = AAFollowUpTrustedContactInvitationURL;
          *(v301 + 112) = v309;
          *(v301 + 120) = v377;
          v310 = v306;
          v311 = v307;
          v312 = v308;
          v66 = sub_1003090E8(v301);
          swift_setDeallocating();
          sub_100005814(&qword_1003E7748, &unk_1003498F0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v313 = *(v378 + 8);
          v79 = AAFollowUpIdentifierCustodianInvitationReminder;
          v314 = v304;
LABEL_86:
          v313(v314, v379);
          goto LABEL_94;
        }
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v135 - 8) + 8))(v134 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v135);
      v299 = *(*v134 + 48);
      v300 = *(*v134 + 52);
      swift_deallocClassInstance();
    }

    v146 = v125;
    v148 = v126;
    goto LABEL_76;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v46 = v43;
    v47 = v371;
    sub_1002D1840(v46, v371, type metadata accessor for CustodianRecord);
    v48 = v368;
    PersonNameComponents.init()();
    v49 = (v47 + v45[7]);
    v50 = v49[1];
    if (v50)
    {
      sub_1002576F0(*v49, v50);
    }

    PersonNameComponents.givenName.setter();
    v51 = (v47 + v45[8]);
    v52 = v51[1];
    if (v52)
    {
      sub_1002576F0(*v51, v52);
    }

    PersonNameComponents.familyName.setter();
    v53 = objc_opt_self();
    v54 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v55 = [v53 localizedStringFromPersonNameComponents:v54 style:0 options:0];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    (*(v376 + 8))(v48, v377);
    v59 = sub_1002576F0(v56, v58);
    v61 = v60;

    if (!v61)
    {
      v62 = (v47 + v45[6]);
      v59 = *v62;
      v61 = v62[1];
    }

    v63 = objc_opt_self();
    v64 = [v63 custodianAcceptedNotificationTitle];
    v377 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = [v63 custodianAcceptedNotificationBody];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10033EB30;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = sub_100242A70();
    *(v68 + 32) = v59;
    *(v68 + 40) = v61;
    v69 = String.init(format:_:)();
    v71 = v70;

    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_10033E5C0;
    *(v72 + 32) = 0xD000000000000010;
    *(v72 + 40) = 0x800000010032C670;
    v382 = 0xD00000000000002ALL;
    v383 = 0x8000000100333CD0;
    v73 = v45[5];
    sub_100110C1C(&qword_1003D9150);
    v74 = v371;
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);

    v76 = v383;
    *(v72 + 48) = v382;
    *(v72 + 56) = v76;
    *(v72 + 64) = 0xD000000000000010;
    *(v72 + 72) = 0x800000010032C690;
    *(v72 + 80) = 0xD000000000000031;
    *(v72 + 88) = 0x8000000100333C90;
    v77 = sub_100308864(v72);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    v78 = 2;
    v79 = v377;
    swift_arrayDestroy();
    sub_1000120B4(v74);
  }

  else
  {
    v224 = v43;
    v225 = v375;
    sub_1002D1840(v224, v375, type metadata accessor for CustodianRecord);
    v226 = v369;
    PersonNameComponents.init()();
    v227 = &v225[v45[7]];
    v228 = v227[1];
    if (v228)
    {
      sub_1002576F0(*v227, v228);
    }

    PersonNameComponents.givenName.setter();
    v229 = &v225[v45[8]];
    v230 = v229[1];
    if (v230)
    {
      sub_1002576F0(*v229, v230);
    }

    PersonNameComponents.familyName.setter();
    v231 = objc_opt_self();
    v232 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v233 = [v231 localizedStringFromPersonNameComponents:v232 style:0 options:0];

    v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v236 = v235;

    (*(v376 + 8))(v226, v377);
    v237 = sub_1002576F0(v234, v236);
    v239 = v238;

    if (!v239)
    {
      v240 = &v225[v45[6]];
      v237 = *v240;
      v239 = v240[1];
    }

    v241 = objc_opt_self();
    v242 = [v241 custodianDeclinedNotificationTitle];
    v377 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v243;

    v244 = [v241 custodianDeclinedNotificationBody];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v245 = swift_allocObject();
    *(v245 + 16) = xmmword_10033EB30;
    *(v245 + 56) = &type metadata for String;
    *(v245 + 64) = sub_100242A70();
    *(v245 + 32) = v237;
    *(v245 + 40) = v239;
    v69 = String.init(format:_:)();
    v71 = v246;

    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    v247 = swift_initStackObject();
    *(v247 + 16) = xmmword_10033E5C0;
    *(v247 + 32) = 0xD000000000000010;
    *(v247 + 40) = 0x800000010032C670;
    v382 = 0xD00000000000002ALL;
    v383 = 0x8000000100333C60;
    v248 = v45[5];
    sub_100110C1C(&qword_1003D9150);
    v249 = v375;
    v250._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v250);

    v251 = v383;
    *(v247 + 48) = v382;
    *(v247 + 56) = v251;
    *(v247 + 64) = 0xD000000000000010;
    *(v247 + 72) = 0x800000010032C690;
    *(v247 + 80) = 0xD000000000000031;
    *(v247 + 88) = 0x8000000100333C90;
    v77 = sub_100308864(v247);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    v78 = 2;
    v79 = v377;
    swift_arrayDestroy();
    sub_1000120B4(v249);
  }

LABEL_95:
  v365 = v380;
  *v380 = v79;
  v365[1] = v66;
  v365[2] = v69;
  v365[3] = v71;
  v365[4] = v77;
  *(v365 + 40) = v78;
}

uint64_t type metadata accessor for TrustedContactUserNotification()
{
  result = qword_1003E7848;
  if (!qword_1003E7848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CC470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&unk_1003E7770, &unk_100349910);
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

        swift_errorRetain();
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

uint64_t sub_1002CC718(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CustodianRecoveryInfoRecord();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100005814(&qword_1003E77D0, qword_100349980);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1002D1840(v31 + v32 * v28, v52, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1002D17D8(v33 + v32 * v28, v52, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      v34 = *(v16 + 40);
      sub_100110C1C(&qword_1003DB0B8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1002D1840(v52, *(v16 + 56) + v32 * v24, type metadata accessor for CustodianRecoveryInfoRecord);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1002CCBA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E8C20, &qword_10034A850);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100070AF0((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_1000D1064(v24, &v37);
        sub_10000DB1C(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100070AF0(v36, (*(v8 + 56) + 32 * v16));
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
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1002CCE5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E8C70, &qword_10034A8B0);
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
      v25 = *(*(v5 + 56) + v21);
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_1002CD0FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&unk_1003DBB70, &unk_100349970);
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
      v25 = *(*(v5 + 56) + v21);
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_1002CD39C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E7758, &unk_100349900);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1002CD658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E3460, qword_1003469E0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100070AF0(v25, v37);
      }

      else
      {
        sub_10000DB1C(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_100070AF0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1002CD910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E7790, &qword_100349930);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1002CDBD0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100005814(&unk_1003E7760, &unk_10034A870);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v57 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v46 = v2;
    v47 = (v7 + 16);
    v48 = v10;
    v49 = v7;
    v52 = (v7 + 32);
    v20 = result + 64;
    v21 = v51;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_17:
      v29 = v25 | (v14 << 6);
      v30 = *(v10 + 48) + *(v49 + 72) * v29;
      v55 = *(v49 + 72);
      v56 = v26;
      if (v50)
      {
        (*v52)(v21, v30, v57);
        v31 = (*(v10 + 56) + 32 * v29);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[3];
        v53 = v31[2];
        v54 = v32;
      }

      else
      {
        (*v47)(v21, v30, v57);
        v35 = (*(v10 + 56) + 32 * v29);
        v36 = *v35;
        v33 = v35[1];
        v34 = v35[3];
        v53 = v35[2];
        v54 = v36;
      }

      v37 = *(v13 + 40);
      sub_100110C1C(&qword_1003DB0B8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v13 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v21 = v51;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v21 = v51;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v13 + 48) + v55 * v22, v21, v57);
      v23 = (*(v13 + 56) + 32 * v22);
      v24 = v53;
      *v23 = v54;
      v23[1] = v33;
      v23[2] = v24;
      v23[3] = v34;
      ++*(v13 + 16);
      v10 = v48;
      v18 = v56;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1002CDFC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E7780, &qword_100349920);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

        sub_100015D6C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1002CE280(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E8C60, &qword_10034A8A0);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_100015D6C(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_100110C1C(&qword_1003DB0B8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1002CE654(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100005814(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1002CE8F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&unk_1003E77C0, &unk_100349960);
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

        swift_errorRetain();
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

uint64_t sub_1002CEB98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005814(&qword_1003E7788, &qword_100349928);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1002CEE28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1003084DC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1002CE654(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1003084DC(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_1002D12E0(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_1002CEFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003084DC(a2, a3);
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
      sub_1002CC470(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1003084DC(a2, a3);
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
      sub_1002CFE94();
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

uint64_t sub_1002CF140(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10031AF8C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002D0004();
      goto LABEL_7;
    }

    sub_1002CC718(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10031AF8C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1002CFBE8(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 72) * v15;

  return sub_1002D1774(a1, v23);
}

_OWORD *sub_1002CF328(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10031B060(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002D0330();
      goto LABEL_7;
    }

    sub_1002CCBA4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10031B060(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000D1064(a2, v22);
      return sub_1002CFCD8(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000839C(v17);

  return sub_100070AF0(a1, v17);
}

unint64_t sub_1002CF488(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003084DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1002CCE5C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1003084DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1002D04E8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_1002CF5EC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003084DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1002CD0FC(v16, a4 & 1);
      v20 = *v5;
      result = sub_1003084DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1002D0650();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_1002CF758(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10031B728(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1002CD39C(v13, a3 & 1);
      v17 = *v4;
      result = sub_10031B728(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for AAFollowUpUserInfo(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1002D07B8();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

_OWORD *sub_1002CF8B4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003084DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002D0914();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1002CD658(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1003084DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000839C(v23);

    return sub_100070AF0(a1, v23);
  }

  else
  {
    sub_1002CFD54(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1002CFA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1003084DC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1002CDFC4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1003084DC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1002D0ED0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_100012324(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

unint64_t sub_1002CFBA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1002CFBE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CustodianRecoveryInfoRecord();
  result = sub_1002D1840(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for CustodianRecoveryInfoRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1002CFCD8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100070AF0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1002CFD54(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100070AF0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1002CFDC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

void *sub_1002CFE94()
{
  v1 = v0;
  sub_100005814(&unk_1003E7770, &unk_100349910);
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

        result = swift_errorRetain();
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

char *sub_1002D0004()
{
  v1 = v0;
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E77D0, qword_100349980);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1002D17D8(*(v7 + 56) + v28, v37, type metadata accessor for CustodianRecoveryInfoRecord);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1002D1840(v27, *(v29 + 56) + v28, type metadata accessor for CustodianRecoveryInfoRecord);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1002D0330()
{
  v1 = v0;
  sub_100005814(&qword_1003E8C20, &qword_10034A850);
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
        v18 = 40 * v17;
        sub_1000D1064(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DB1C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100070AF0(v22, (*(v4 + 56) + v17));
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

void *sub_1002D04E8()
{
  v1 = v0;
  sub_100005814(&qword_1003E8C70, &qword_10034A8B0);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1002D0650()
{
  v1 = v0;
  sub_100005814(&unk_1003DBB70, &unk_100349970);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_1002D07B8()
{
  v1 = v0;
  sub_100005814(&qword_1003E7758, &unk_100349900);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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

void *sub_1002D0914()
{
  v1 = v0;
  sub_100005814(&qword_1003E3460, qword_1003469E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DB1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100070AF0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1002D0AB8()
{
  v1 = v0;
  sub_100005814(&qword_1003E7790, &qword_100349930);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_1002D0C30()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&unk_1003E7760, &unk_10034A870);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v43 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    v39 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v46 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v41;
        v23 = v42;
        v24 = *(v42 + 72) * v21;
        v25 = v40;
        (*(v42 + 16))(v40, *(v6 + 48) + v24, v41);
        v26 = *(v6 + 56);
        v27 = 32 * v21;
        v28 = (v26 + 32 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v44 = v28[2];
        v45 = v29;
        v32 = v43;
        (*(v23 + 32))(*(v43 + 48) + v24, v25, v22);
        v33 = (*(v32 + 56) + v27);
        v6 = v39;
        v34 = v44;
        *v33 = v45;
        v33[1] = v30;
        v33[2] = v34;
        v33[3] = v31;

        v16 = v46;
      }

      while (v46);
    }

    v19 = v12;
    v8 = v43;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1002D0ED0()
{
  v1 = v0;
  sub_100005814(&qword_1003E7780, &qword_100349920);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100015D6C(v22, *(&v22 + 1));
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

char *sub_1002D1054()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E8C60, &qword_10034A8A0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_100015D6C(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1002D12E0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100005814(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D143C()
{
  v1 = v0;
  sub_100005814(&unk_1003E77C0, &unk_100349960);
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

        result = swift_errorRetain();
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

id sub_1002D15AC()
{
  v1 = v0;
  sub_100005814(&qword_1003E7788, &qword_100349928);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_1002D170C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7708, &qword_1003498C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D1774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D17D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D1840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1002D18F8()
{
  sub_1002D1AF8(319, &qword_1003E7858);
  if (v0 <= 0x3F)
  {
    sub_1002D1B64(319, &qword_1003E7860, type metadata accessor for CustodianRecord);
    if (v1 <= 0x3F)
    {
      sub_1002D1B64(319, &qword_1003E7868, sub_1002D1A3C);
      if (v2 <= 0x3F)
      {
        sub_1002D1A94();
        if (v3 <= 0x3F)
        {
          sub_1002D1AF8(319, &qword_1003E7880);
          if (v4 <= 0x3F)
          {
            sub_1002D1B64(319, qword_1003E7888, sub_1002D1BB0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002D1A3C()
{
  if (!qword_1003E7870)
  {
    type metadata accessor for CustodianRecord();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E7870);
    }
  }
}

void sub_1002D1A94()
{
  if (!qword_1003E7878)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1003E7878);
    }
  }
}

void sub_1002D1AF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002D1B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1002D1BB0()
{
  result = qword_1003E3170;
  if (!qword_1003E3170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E3170);
  }

  return result;
}

uint64_t sub_1002D1BFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100070AF0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100070AF0(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100070AF0(v34, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_1002D1EC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    type metadata accessor for AAFollowUpUserInfo(0);
    v17 = v13;

    swift_dynamicCast();
    *&v34[0] = v15;
    *(&v34[0] + 1) = v16;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100070AF0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100070AF0(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v1[5]);
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
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
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v1[6] + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    result = sub_100070AF0(v34, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002D2194(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DB1C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100070AF0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100070AF0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100070AF0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100070AF0(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

void sub_1002D245C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&unk_1003E77B0, &unk_100349950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_1003084DC(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1002D263C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v15 = *(*(a1 + 56) + v13);
    *&v32[0] = *(*(a1 + 48) + 8 * v13);
    v14 = *&v32[0];
    type metadata accessor for AAFollowUpUserInfo(0);
    v16 = v14;
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100070AF0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100070AF0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100070AF0(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_1002D28F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v15 = *(*(a1 + 56) + v13);
    *&v32[0] = *(*(a1 + 48) + v13);
    v14 = *&v32[0];
    type metadata accessor for AAFollowUpUserInfo(0);
    v16 = v14;

    swift_dynamicCast();
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100070AF0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100070AF0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100070AF0(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

unint64_t sub_1002D2BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E3460, qword_1003469E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_100070AF0(&v27, v29);
        sub_100070AF0(v29, v30);
        sub_100070AF0(v30, &v28);
        result = sub_1003084DC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000839C(v12);
          result = sub_100070AF0(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_100070AF0(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1002D2E28(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v52 = &v49 - v11;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA40);
  sub_1002D4C5C(a1, v53);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  sub_1000C5460(a1);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v51 = v8;
    v16 = v15;
    v49 = swift_slowAlloc();
    v50 = v9;
    v53[0] = v49;
    *v16 = 136315138;
    v17 = sub_1002D4614();
    v19 = a2;
    v20 = a3;
    v21 = sub_10021145C(v17, v18, v53);

    *(v16 + 4) = v21;
    a3 = v20;
    a2 = v19;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v13, v14, "Posting User notification : %s", v16, 0xCu);
    sub_10000839C(v49);
    v9 = v50;

    v8 = v51;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 40);
  if (v24 > 1)
  {
    v36 = *(a1 + 16);
    v37 = *(a1 + 24);
    v38 = *(a1 + 32);
    if (v24 == 2)
    {
      v39 = *sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
      sub_1002C4C2C(v22, v23, v36, v37, v38, a2, a3);
    }

    else
    {
      sub_1002D4E28(v22, v23, v36, v37, v38);
      if (a2)
      {
        (a2)(0);
      }
    }
  }

  else if (*(a1 + 40))
  {
    v40 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 32);
    v52 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
    sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController), v52);
    v41 = a3;
    v42 = swift_allocObject();
    v43 = *(a1 + 16);
    *(v42 + 16) = *a1;
    *(v42 + 32) = v43;
    *(v42 + 41) = *(a1 + 25);
    *(v42 + 64) = a2;
    *(v42 + 72) = v41;
    v44 = *(v40 + 8);
    sub_1002D4C5C(a1, v53);
    sub_100083AA0(a2);
    v44(v22, v23, sub_1002D5454, v42, v52, v40);
  }

  else
  {
    v25 = v52;
    (*(v9 + 16))(v52, v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager__accountStore, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v25, v8);
    v26 = [*(*sub_1000080F8(v53 v53[3]) + 16)];
    if (v26)
    {
      v27 = v26;
      sub_10000839C(v53);
      v28 = (v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
      v29 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
      v30 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 32);
      v52 = v29;
      v51 = sub_1000080F8(v28, v29);
      v31 = sub_1002D1EC4(v23);
      v32 = swift_allocObject();
      v33 = *(a1 + 16);
      *(v32 + 16) = *a1;
      *(v32 + 32) = v33;
      *(v32 + 41) = *(a1 + 25);
      *(v32 + 64) = a2;
      *(v32 + 72) = a3;
      *(v32 + 80) = v27;
      v34 = *(v30 + 16);
      sub_1002D4C5C(a1, v53);
      sub_100083AA0(a2);
      v35 = v27;
      v34(v22, v35, v31, sub_1002D54BC, v32, v52, v30);
    }

    else
    {
      sub_10000839C(v53);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Primary account found nil while preparing to post CFU, exiting.", v47, 2u);
      }

      if (a2)
      {
        v48 = [objc_allocWithZone(NSError) initWithDomain:AAErrorDomain code:-4404 userInfo:0];
        a2();
      }
    }
  }
}

void sub_1002D33B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    swift_errorRetain();
    sub_1002D4C5C(a3, v31);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1002D4614();
      v15 = sub_10021145C(v13, v14, v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v16 = String.init<A>(describing:)();
      v18 = sub_10021145C(v16, v17, v31);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error occurred while posting FollowUp %s - Error: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    if (a4)
    {
      swift_errorRetain();
      a4(a2);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    sub_1002D4C5C(a3, v31);
    v21 = a6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v24 = 136315394;
      v27 = sub_1002D4614();
      v29 = sub_10021145C(v27, v28, v31);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully posted Follow Up - %s on account: %@", v24, 0x16u);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v26);
    }

    if (a4)
    {
      a4(0);
    }
  }
}

void sub_1002D3764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    sub_1002D4C5C(a3, v25);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v10 = 136315394;
      v11 = sub_1002D4614();
      v13 = sub_10021145C(v11, v12, v25);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, v25);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error occurred while posting FollowUp %s - Error: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    if (a4)
    {
      swift_errorRetain();
      a4(a2);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    sub_1002D4C5C(a3, v25);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v22 = sub_1002D4614();
      v24 = sub_10021145C(v22, v23, v25);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully posted Follow Up - %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    if (a4)
    {
      a4(0);
    }
  }
}

void sub_1002D3AB8(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);
  sub_1002D4C5C(a1, v34);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_1000C5460(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    v10 = v34[0];
    *v9 = 136315138;
    v11 = sub_1002D4614();
    v13 = sub_10021145C(v11, v12, v34);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Dismissing User notification: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v23 = *(a1 + 32);
      if (*(v23 + 16))
      {
        v24 = sub_1003084DC(0xD000000000000010, 0x800000010032C670);
        if (v25)
        {
          v26 = (*(v23 + 56) + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          sub_1000080F8((v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
          type metadata accessor for NotificationController();

          sub_1002C54D8(v27, v28);
        }
      }
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Dismissing system alert is not supported.", v33, 2u);
      }
    }
  }

  else
  {
    v14 = *a1;
    v15 = (v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
    v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
    v17 = v15[4];
    if (*(a1 + 40))
    {
      sub_1000080F8(v15, v16);
      v18 = swift_allocObject();
      v29 = *(a1 + 16);
      v18[1] = *a1;
      v18[2] = v29;
      *(v18 + 41) = *(a1 + 25);
      v20 = *(v17 + 32);
      v30 = v4;

      v22 = sub_1002D56AC;
    }

    else
    {
      sub_1000080F8(v15, v16);
      v18 = swift_allocObject();
      v19 = *(a1 + 16);
      v18[1] = *a1;
      v18[2] = v19;
      *(v18 + 41) = *(a1 + 25);
      v20 = *(v17 + 32);
      v21 = v4;

      v22 = sub_1002D57E4;
    }

    v20(v14, v22, v18, v16, v17);
  }
}

void sub_1002D3E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA40);
    sub_1002D4C5C(a3, v22);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = sub_1002D4614();
      v10 = sub_10021145C(v8, v9, v22);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, v22);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error occured while dismissing FollowUp %s - Error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    sub_1002D4C5C(a3, v22);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      v19 = sub_1002D4614();
      v21 = sub_10021145C(v19, v20, v22);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully dismissed Follow Up - %s", v17, 0xCu);
      sub_10000839C(v18);
    }
  }
}

void sub_1002D4188(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "User dismissed system alert", v13, 2u);
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Alternate response pressed for system alert", v5, 2u);
    }

    v6 = [objc_opt_self() defaultWorkspace];
    if (v6)
    {
      v8 = v6;
      URL._bridgeToObjectiveC()(v7);
      v10 = v9;
      sub_100308978(_swiftEmptyArrayStorage);
      oslog = Dictionary._bridgeToObjectiveC()().super.isa;

      [v8 openSensitiveURL:v10 withOptions:oslog];

LABEL_14:
    }
  }
}

void sub_1002D43E4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_1002D445C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23UserNotificationManager__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationManager()
{
  result = qword_1003E7900;
  if (!qword_1003E7900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D4578()
{
  sub_1001CFA84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D4614()
{
  v14 = type metadata accessor for Mirror();
  v13 = *(v14 - 8);
  v1 = *(v13 + 64);
  __chkstk_darwin(v14);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = &type metadata for UserNotificationType;
  v4 = swift_allocObject();
  *&v17 = v4;
  v5 = v0[1];
  v4[1] = *v0;
  v4[2] = v5;
  *(v4 + 41) = *(v0 + 25);
  sub_1002D4C5C(v0, &v19);
  Mirror.init(reflecting:)();
  v22 = 0;
  v23 = 0xE000000000000000;
  v12 = v3;
  Mirror.children.getter();
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (v21)
  {
    v17 = v19;
    sub_100070AF0(&v20, &v18);
    sub_1002D54D0(&v17, &v15);
    object = v15._object;
    if (v15._object)
    {
      countAndFlagsBits = v15._countAndFlagsBits;
      sub_10000839C(v16);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v8._countAndFlagsBits = countAndFlagsBits;
      v8._object = object;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 8250;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
    }

    else
    {
      sub_10000839C(v16);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v15);

    sub_100008D3C(&v17, &qword_1003E79A0, &unk_100349A90);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  (*(v13 + 8))(v12, v14);

  return v22;
}

uint64_t sub_1002D489C()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_1002D4614();
}

uint64_t sub_1002D48D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
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
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_10031B728(v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D4A6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
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
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1003084DC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D4C10(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1002D4C94(&v5, &v7) & 1;
}

uint64_t sub_1002D4C94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 40) != 2)
  {
    if (!*(a1 + 40) && !*(a2 + 40))
    {
      v6 = *a2;
      v5 = a2[1];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {

LABEL_22:

        return sub_1002D48D8(v4, v5);
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (*(a2 + 40) != 2)
  {
    return 0;
  }

  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  if (v3 != *a2 || v4 != a2[1])
  {
    v19 = a1[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if ((v13 != v16 || v14 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1002D4A6C(v15, v18);
}

void sub_1002D4E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v8 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v45 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v45 - v17;
  if (*(a5 + 16))
  {
    v19 = sub_1003084DC(0xD000000000000010, 0x800000010032C690);
    if (v20)
    {
      v49 = a3;
      v21 = (*(a5 + 56) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];

      URL.init(string:)();

      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        v28 = *(v13 + 32);
        v47 = v13 + 32;
        v48 = v28;
        v28(v18, v11, v12);
        sub_1002D5540();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v30 = objc_opt_self();
        v31 = [v30 bundleForClass:ObjCClassFromMetadata];
        v45[2] = a4;
        v32 = v31;
        v52._object = 0x8000000100333DD0;
        v33._countAndFlagsBits = 0x53474E4954544553;
        v52._countAndFlagsBits = 0xD000000000000032;
        v33._object = 0xE800000000000000;
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        v45[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v52)._countAndFlagsBits;

        v35 = [v30 bundleForClass:ObjCClassFromMetadata];
        v53._object = 0x8000000100333E10;
        v53._countAndFlagsBits = 0xD00000000000001ALL;
        v36._countAndFlagsBits = 19279;
        v36._object = 0xE200000000000000;
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v53);

        v46 = objc_opt_self();
        v50 = String._bridgeToObjectiveC()();
        v38 = String._bridgeToObjectiveC()();
        v39 = String._bridgeToObjectiveC()();

        v40 = String._bridgeToObjectiveC()();

        (*(v13 + 16))(v16, v18, v12);
        v41 = (*(v13 + 80) + 16) & ~*(v13 + 80);
        v42 = swift_allocObject();
        v48(v42 + v41, v16, v12);
        aBlock[4] = sub_1002D5614;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002D43E4;
        aBlock[3] = &unk_1003B34E8;
        v43 = _Block_copy(aBlock);

        v44 = v50;
        [v46 showUserNotificationWithTitle:v50 message:v38 cancelButtonTitle:v39 otherButtonTitle:v40 withCompletionBlock:v43];
        _Block_release(v43);

        (*(v13 + 8))(v18, v12);
        return;
      }

      sub_100008D3C(v11, &qword_1003E7500, &qword_10033EC30);
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAA40);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unable to post system alert, action URL is missing.", v27, 2u);
  }
}

uint64_t sub_1002D5368()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
    v1 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 80);
}

void *sub_1002D53BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2 && a6 != 3)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1002D5460()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
    v1 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002D54D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E79A0, &unk_100349A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002D5540()
{
  result = qword_1003E79A8;
  if (!qword_1003E79A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E79A8);
  }

  return result;
}

uint64_t sub_1002D558C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002D5614(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for URL() - 8) + 80);

  sub_1002D4188(a1, a2);
}

uint64_t sub_1002D5694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D56C8()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57);
}

__n128 sub_1002D5718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002D572C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D5774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002D57E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1002D5870()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 1;
  v2 = *(v1 + 40);
  swift_errorRetain();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002D58E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v96 = *(v11 - 8);
  v12 = *(v96 + 64);
  __chkstk_darwin(v11);
  v95 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  __chkstk_darwin(v14);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[5];
  v18 = v2[6];
  sub_1000080F8(v2 + 2, v17);
  if (((*(v18 + 40))(v17, v18) & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  v19 = v2[5];
  v20 = v2[6];
  sub_1000080F8(v2 + 2, v19);
  v21 = (*(v20 + 88))(AAFollowUpIdentifierRenewCredentials, v19, v20);
  if (v21)
  {
    v22 = v21;
    v97 = *(v21 + 16);
    if (v97)
    {
      v83 = v10;
      v84 = v11;
      v85 = v7;
      v86 = v6;
      v87 = a1;
      v88 = a2;
      v23 = dispatch_group_create();
      v24 = 0;
      a1 = AAFollowUpUserInfoAltDSID;
      v89 = &v102;
      v25 = v97;
      v91 = v2;
      while (1)
      {
        if (v24 >= *(v22 + 16))
        {
          __break(1u);
LABEL_48:
          swift_once();
LABEL_37:
          v66 = type metadata accessor for Logger();
          sub_100008D04(v66, qword_1003FAA40);
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            v70 = "Post install activity - No renew credentials CFU found";
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v26 = *(v22 + 8 * v24 + 32);

        dispatch_group_enter(v23);
        v98 = a1;
        type metadata accessor for AAFollowUpUserInfo(0);
        sub_1002D699C(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo);
        v27 = a1;
        AnyHashable.init<A>(_:)();
        if (!*(v26 + 16))
        {
          break;
        }

        v28 = sub_10031B060(&aBlock);
        if ((v29 & 1) == 0)
        {
          break;
        }

        sub_10000DB1C(*(v26 + 56) + 32 * v28, &v106);
        sub_1000526B0(&aBlock);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_17;
        }

        v30 = v3;
        v32 = v98;
        v31 = v99;
        v33 = v30[7];
        v34 = String._bridgeToObjectiveC()();
        v35 = [v33 iCloudAccountForAltDSID:v34];

        if (v35)
        {
          v36 = String._bridgeToObjectiveC()();
          v37 = [v33 authKitAccountWithAltDSID:v36];

          if (v37)
          {
            v38 = [v33 continuationTokenForAccount:v37];
            if (v38)
            {

              v39 = v91;
              v90 = v91[8];
              v40 = swift_allocObject();
              swift_weakInit();
              v41 = swift_allocObject();
              v41[2] = v37;
              v41[3] = v40;
              v41[4] = v35;
              v41[5] = v32;
              v3 = v39;
              v41[6] = v31;
              v41[7] = v23;
              v104 = sub_1002D6A74;
              v105 = v41;
              aBlock = _NSConcreteStackBlock;
              v101 = 1107296256;
              v102 = sub_1002D6838;
              v103 = &unk_1003B36B8;
              v42 = _Block_copy(&aBlock);
              v43 = v35;
              v44 = v37;
              v45 = v23;

              [v90 renewCredentialsForAccount:v43 completion:v42];
              _Block_release(v42);
            }

            else
            {

              if (qword_1003D7F20 != -1)
              {
                swift_once();
              }

              v61 = type metadata accessor for Logger();
              sub_100008D04(v61, qword_1003FAA40);
              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.debug.getter();
              v64 = os_log_type_enabled(v62, v63);
              v3 = v91;
              if (v64)
              {
                v65 = swift_slowAlloc();
                *v65 = 0;
                _os_log_impl(&_mh_execute_header, v62, v63, "Post install activity - Missing continuation key", v65, 2u);
              }

              dispatch_group_leave(v23);
            }

            v25 = v97;
          }

          else
          {

            if (qword_1003D7F20 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            sub_100008D04(v56, qword_1003FAA40);
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.debug.getter();
            v59 = os_log_type_enabled(v57, v58);
            v3 = v91;
            v25 = v97;
            if (v59)
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&_mh_execute_header, v57, v58, "Post install activity - Missing IdMS account", v60, 2u);
            }

            dispatch_group_leave(v23);
          }

          goto LABEL_7;
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100008D04(v53, qword_1003FAA40);
        v47 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        v55 = os_log_type_enabled(v47, v54);
        v3 = v91;
        v25 = v97;
        if (v55)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = v54;
          v51 = v47;
          v52 = "Post install activity - Missing AppleAccount";
          goto LABEL_5;
        }

LABEL_6:

        dispatch_group_leave(v23);
LABEL_7:
        if (v25 == ++v24)
        {

          sub_100071C74();
          v72 = v92;
          v71 = v93;
          v73 = v94;
          (*(v93 + 104))(v92, enum case for DispatchQoS.QoSClass.default(_:), v94);
          v74 = static OS_dispatch_queue.global(qos:)();
          (*(v71 + 8))(v72, v73);
          v75 = swift_allocObject();
          v76 = v88;
          *(v75 + 16) = v87;
          *(v75 + 24) = v76;
          v104 = sub_1002D6954;
          v105 = v75;
          aBlock = _NSConcreteStackBlock;
          v101 = 1107296256;
          v102 = sub_100031EF0;
          v103 = &unk_1003B3640;
          v77 = _Block_copy(&aBlock);

          v78 = v95;
          static DispatchQoS.unspecified.getter();
          v106 = &_swiftEmptyArrayStorage;
          sub_1002D699C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
          sub_100005814(&unk_1003DABE0, &unk_10033EC20);
          sub_1000383E4();
          v79 = v83;
          v80 = v86;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v77);

          (*(v85 + 8))(v79, v80);
          (*(v96 + 8))(v78, v84);
        }
      }

      sub_1000526B0(&aBlock);
LABEL_17:
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100008D04(v46, qword_1003FAA40);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_6;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v48;
      v51 = v47;
      v52 = "Post install activity - Missing altDSID";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v51, v50, v52, v49, 2u);

      goto LABEL_6;
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_100008D04(v82, qword_1003FAA40);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Post install activity - No renew credentials followUp UserInfos found";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v67, v68, v70, v69, 2u);
  }

LABEL_46:

  return (a1)(0, 0);
}

void sub_1002D64C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, NSObject *a8)
{
  if (a1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_10021145C(a6, a7, v32);
      *(v15 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 14) = v18;
      *v16 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to renew credentials for altDSID - %s with error - %@", v15, 0x16u);
      sub_100083380(v16);

      sub_10000839C(v17);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);
    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Post install activity - Credentials renewed for account: %@", v26, 0xCu);
      sub_100083380(v27);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 16, v32);

      v30 = v33;
      v31 = v34;
      sub_1000080F8(v32, v33);
      (*(v31 + 56))(AAFollowUpIdentifierRenewCredentials, a5, OSTransaction.complete(), 0, v30, v31);
      sub_10000839C(v32);
    }
  }

  dispatch_group_leave(a8);
}

void sub_1002D6838(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1002D68B0()
{
  sub_10000839C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1002D691C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002D6954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

uint64_t sub_1002D6984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D699C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D69E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002D6A1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

void sub_1002D6A8C(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v25 - v5 + 48;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore;
    v10 = v3[2];
    v10(v6, Strong + OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore, v2);
    Dependency.wrappedValue.getter();
    v11 = v3[1];
    v11(v6, v2);
    v12 = [*(*sub_1000080F8(v25 v26) + 16)];
    if (v12)
    {

      sub_10000839C(v25);
      v10(v6, v8 + v9, v2);

      Dependency.wrappedValue.getter();
      v11(v6, v2);
      v13 = [*(*sub_1000080F8(v25 v26) + 16)];
      if (v13)
      {

        sub_10000839C(v25);
        sub_1002D70E8(1, sub_1002D8B6C, a1);
      }

      else
      {
        sub_10000839C(v25);
        sub_100005814(&qword_1003E4610, &qword_100347AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0x72456E496E676953;
        *(inited + 40) = 0xEB00000000726F72;
        type metadata accessor for AASignInError(0);
        v24 = -8014;
        sub_100212324(&_swiftEmptyArrayStorage);
        sub_1002D8B74(&qword_1003D8338, type metadata accessor for AASignInError);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(inited + 48) = v25[0];
        v23 = sub_100308AA8(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
        sub_1002D6F50(v23);
      }
    }

    else
    {
      sub_10000839C(v25);
      sub_10030FF34();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100008D04(v18, qword_1003FAA40);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "No account signed in. Skipping Post Install Activities.", v21, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Lost reference to self. Aborting XPC activity for Post Install Activities", v17, 2u);
    }
  }
}

BOOL sub_1002D6F50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v6 = Dictionary.description.getter();
      v8 = sub_10021145C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Overall Post Install Activities failed: %s", v4, 0xCu);
      sub_10000839C(v5);
    }
  }

  return sub_10030FF34();
}

uint64_t sub_1002D70E8(int a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v66 = a2;
  LODWORD(v75) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS.QoSClass();
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v70 = type metadata accessor for DispatchQoS();
  v69 = *(v70 - 8);
  v10 = *(v69 + 64);
  __chkstk_darwin(v70);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  v78 = swift_allocObject();
  *(v78 + 16) = &_swiftEmptyDictionarySingleton;
  v19 = sub_100071C74();
  v77 = "ActivityProvider";
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v67 = v12;
  v62 = v19;
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v77 = sub_100008D04(v21, qword_1003FAA40);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    if (v75)
    {
      v26 = 0x656C756465686353;
    }

    else
    {
      v26 = 0x6E616D6544206E4FLL;
    }

    v27 = sub_10021145C(v26, 0xE900000000000064, aBlock);

    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting %s Post Install Activities.", v24, 0xCu);
    sub_10000839C(v25);
  }

  v29 = *(v74 + 16);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + 32;
    v32 = v75 & 1;
    if (v75)
    {
      v33 = 0x656C756465686353;
    }

    else
    {
      v33 = 0x6E616D6544206E4FLL;
    }

    v75 = v33;
    *&v28 = 136315394;
    v74 = v28;
    v76 = v18;
    do
    {
      sub_100040738(v31, aBlock);
      dispatch_group_enter(v18);
      sub_100040738(aBlock, &v84);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v34 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v34 = v74;
        v35 = v20;
        v36 = v32;
        v37 = sub_10021145C(v75, 0xE900000000000064, &v79);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        sub_1000080F8(&v84, v85);
        swift_getDynamicType();
        v38 = _typeName(_:qualified:)();
        v40 = v39;
        sub_10000839C(&v84);
        v41 = sub_10021145C(v38, v40, &v79);

        *(v34 + 14) = v41;
        v32 = v36;
        v20 = v35;
        v18 = v76;
        _os_log_impl(&_mh_execute_header, v48, v49, "Starting %s Post Install Activity - %s", v34, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v84);
      }

      v42 = sub_1000080F8(aBlock, v81);
      sub_100040738(aBlock, &v84);
      v43 = swift_allocObject();
      *(v43 + 16) = v32;
      sub_10003E950(&v84, v43 + 24);
      v44 = v78;
      *(v43 + 64) = v20;
      *(v43 + 72) = v44;
      *(v43 + 80) = v18;
      v45 = *v42;
      v46 = v20;

      v47 = v18;
      sub_1002D58E4(sub_1002D8A40, v43);

      sub_10000839C(aBlock);
      v31 += 40;
      --v30;
    }

    while (v30);
  }

  else
  {
    LOBYTE(v32) = v75 & 1;
  }

  v50 = v64;
  v51 = v63;
  v52 = v65;
  (*(v64 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v65);
  v77 = static OS_dispatch_queue.global(qos:)();
  (*(v50 + 8))(v51, v52);
  v53 = swift_allocObject();
  *(v53 + 16) = v20;
  *(v53 + 24) = v32;
  v54 = v66;
  *(v53 + 32) = v78;
  *(v53 + 40) = v54;
  *(v53 + 48) = v68;
  v82 = sub_1002D8A9C;
  v83 = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v81 = &unk_1003B3778;
  v55 = _Block_copy(aBlock);
  v56 = v20;

  v57 = v67;
  static DispatchQoS.unspecified.getter();
  *&v84 = &_swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v58 = v71;
  v59 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v77;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v55);

  (*(v72 + 8))(v58, v59);
  (*(v69 + 8))(v57, v70);
}

void sub_1002D7AC4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v63 = a7;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v57 = v20;
    v59 = v19;
    v61 = v13;
    v62 = v12;
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v58 = v16;
    v60 = a5;
    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA40);
    sub_100040738(a4, &aBlock);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v56 = a6;
      v28 = v27;
      v70 = swift_slowAlloc();
      *v26 = 136315650;
      if (a3)
      {
        v29 = 0x656C756465686353;
      }

      else
      {
        v29 = 0x6E616D6544206E4FLL;
      }

      v30 = sub_10021145C(v29, 0xE900000000000064, &v70);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      sub_1000080F8(&aBlock, v67);
      swift_getDynamicType();
      v31 = _typeName(_:qualified:)();
      v33 = v32;
      sub_10000839C(&aBlock);
      v34 = sub_10021145C(v31, v33, &v70);

      *(v26 + 14) = v34;
      *(v26 + 22) = 2112;
      v35 = _convertErrorToNSError(_:)();
      *(v26 + 24) = v35;
      *v28 = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s %s Post Install Activity failed with error %@", v26, 0x20u);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
      a6 = v56;

      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a4, a4[3]);
    DynamicType = swift_getDynamicType();
    v47 = a4[4];
    aBlock = DynamicType;
    v65 = v47;
    sub_100005814(&qword_1003E7CA8, &unk_100349CE0);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    v51 = swift_allocObject();
    v51[2] = a2;
    v51[3] = a6;
    v51[4] = v48;
    v51[5] = v50;
    v68 = sub_1002D8B60;
    v69 = v51;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100031EF0;
    v67 = &unk_1003B3818;
    v52 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v70 = &_swiftEmptyArrayStorage;
    sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v53 = v58;
    v54 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (*(v61 + 8))(v53, v54);
    (*(v57 + 8))(v22, v59);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA40);
    sub_100040738(a4, &aBlock);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v39 = 136315394;
      if (a3)
      {
        v40 = 0x656C756465686353;
      }

      else
      {
        v40 = 0x6E616D6544206E4FLL;
      }

      v41 = sub_10021145C(v40, 0xE900000000000064, &v70);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2080;
      sub_1000080F8(&aBlock, v67);
      swift_getDynamicType();
      v42 = _typeName(_:qualified:)();
      v44 = v43;
      sub_10000839C(&aBlock);
      v45 = sub_10021145C(v42, v44, &v70);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s %s Post Install Activity completed.", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v63);
}

uint64_t sub_1002D8204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _convertErrorToNSError(_:)();
  v9 = [v8 aa_partialErrorsByName];

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16))
  {

LABEL_7:
    swift_beginAccess();

    swift_errorRetain();
    v12 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_1002CEFC4(a1, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v14;
    return swift_endAccess();
  }

  sub_100259C8C(v10, (a2 + 16), a3, a4);
}

uint64_t sub_1002D8378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a2 & 1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  aBlock[4] = sub_1002D8B08;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B37C8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_1002D8650(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v9 = 136315394;
    if (a1)
    {
      v10 = 0x656C756465686353;
    }

    else
    {
      v10 = 0x6E616D6544206E4FLL;
    }

    v11 = sub_10021145C(v10, 0xE900000000000064, v20);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    swift_beginAccess();
    v12 = *(a2 + 16);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = sub_10021145C(v13, v15, v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Overall %s Post Install Activities finished with errors: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v17 = *(a2 + 16);

  a3(v18);
}

uint64_t sub_1002D88B4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallActivityProvider()
{
  result = qword_1003E7BC0;
  if (!qword_1003E7BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D89B8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002D89F0()
{
  sub_10000839C((v0 + 24));

  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002D8A54()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002D8AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D8AC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8B18()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D8BCC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002D8E30();
    v4 = type metadata accessor for PostInstallActivityProvider();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    v7 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002D8C8C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallActivityScheduler()
{
  result = qword_1003E7CE8;
  if (!qword_1003E7CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D8D98()
{
  sub_100260880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_1002D8E30()
{
  v0 = [objc_allocWithZone(AAFollowUpController) init];
  v1 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v19 = sub_1002D9044();
    v20 = &off_1003B1488;
    *&v18 = v0;
    v4 = type metadata accessor for RenewCredentialsActivity();
    v5 = swift_allocObject();
    sub_10003E950(&v18, v5 + 16);
    *(v5 + 56) = v1;
    *(v5 + 64) = v3;
    v19 = v4;
    v20 = &off_1003B3608;
    *&v18 = v5;
    v6 = sub_100305D58(0, 1, 1, &_swiftEmptyArrayStorage);
    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100305D58((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = sub_10003E968(&v18, v4);
    v10 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v9);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v16 = v4;
    v17 = &off_1003B3608;
    *&v15 = v14;
    v6[2] = v8 + 1;
    sub_10003E950(&v15, &v6[5 * v8 + 4]);
    sub_10000839C(&v18);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002D9044()
{
  result = qword_1003E0360;
  if (!qword_1003E0360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0360);
  }

  return result;
}

void sub_1002D9090(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    swift_errorRetain();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v51 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_10021145C(a3, a4, &v51);
      *(v15 + 12) = 2112;
      v18 = _convertErrorToNSError(_:)();
      *(v15 + 14) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to verify arming for service %s with error: %@", v15, 0x16u);
      sub_100083380(v16);

      sub_10000839C(v17);
    }

    swift_errorRetain();
    (a5)(a2);

LABEL_7:

    return;
  }

  if (!a1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA40);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unknown error, no arming information located.", v38, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v39 = 3;
    a5();
    goto LABEL_7;
  }

  v50 = a1;
  v21 = [v50 webSessionIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == a7 && v24 == a8)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA40);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v51 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10021145C(a3, a4, &v51);
        sub_10000839C(v31);
      }

      sub_1002BC0A4();
      v32 = swift_allocError();
      v34 = 4;
      goto LABEL_38;
    }
  }

  if ([v50 isValid])
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAA40);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10021145C(a3, a4, &v51);
      _os_log_impl(&_mh_execute_header, v41, v42, "Service %s is armed!", v43, 0xCu);
      sub_10000839C(v44);
    }

    (a5)(0);
    goto LABEL_39;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100008D04(v45, qword_1003FAA40);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10021145C(a3, a4, &v51);
    _os_log_impl(&_mh_execute_header, v46, v47, "Arming context for service %s was invalid.", v48, 0xCu);
    sub_10000839C(v49);
  }

  sub_1002BC0A4();
  v32 = swift_allocError();
  v34 = 5;
LABEL_38:
  *v33 = v34;
  (a5)(v32);

LABEL_39:
}

uint64_t sub_1002D97C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D9820(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002D98F0()
{
  v0[30] = *sub_1000080F8((v0[33] + 16), *(v0[33] + 40));
  v1 = swift_task_alloc();
  v0[34] = v1;
  *(v1 + 16) = v0 + 30;
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[35] = v3;
  v4 = sub_100005814(&qword_1003E7FD0, qword_100349F30);
  *v3 = v0;
  v3[1] = sub_1002D9A10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 31, 0, 0, 0xD000000000000014, 0x8000000100334160, sub_1002DC34C, v1, v4);
}

uint64_t sub_1002D9A10()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1002D9F84;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_1002D9B2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

id sub_1002D9B2C()
{
  v1 = v0[31];
  v33 = _swiftEmptyArrayStorage;
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_33:

    v27 = _swiftEmptyArrayStorage;
LABEL_34:
    v28 = v0[1];

    return v28(v27);
  }

LABEL_32:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = 0;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v32 = v1 & 0xC000000000000001;
  v30 = v2;
  v31 = v1;
  while (1)
  {
    if (v32)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v29 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v7 = [v4 appleID];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100305F30(0, *(v33 + 2) + 1, 1, v33);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_100305F30((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      v33 = v12;
      v2 = v30;
      v1 = v31;
    }

    result = [v5 dictionary];
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[20] = 0xD000000000000016;
    v0[21] = 0x80000001003340D0;
    AnyHashable.init<A>(_:)();
    if (*(v18 + 16) && (v19 = sub_10031B060((v0 + 2)), (v20 & 1) != 0))
    {
      sub_10000DB1C(*(v18 + 56) + 32 * v19, (v0 + 12));
      sub_1000526B0((v0 + 2));

      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      if (swift_dynamicCast())
      {
        sub_10028BBC0(v0[32]);
      }
    }

    else
    {

      sub_1000526B0((v0 + 2));
    }

    result = [v5 dictionary];
    if (!result)
    {
      goto LABEL_38;
    }

    v21 = result;
    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[22] = 0xD000000000000014;
    v0[23] = 0x80000001003340F0;
    AnyHashable.init<A>(_:)();
    if (*(v22 + 16) && (v23 = sub_10031B060((v0 + 7)), (v24 & 1) != 0))
    {
      sub_10000DB1C(*(v22 + 56) + 32 * v23, (v0 + 16));
      sub_1000526B0((v0 + 7));

      if (swift_dynamicCast())
      {
        v25 = v0[25];
        v0[26] = v0[24];
        v0[27] = v25;
        v0[28] = 44;
        v0[29] = 0xE100000000000000;
        sub_1000709A0();
        v26 = StringProtocol.components<A>(separatedBy:)();

        sub_10028BBC0(v26);
      }
    }

    else
    {

      sub_1000526B0((v0 + 7));
    }

    ++v3;
    if (v6 == v2)
    {

      v27 = v33;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1002D9F84()
{
  v1 = v0[34];

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occured when fetching all family members: %@", v7, 0xCu);
    sub_100083380(v8);
  }

  v10 = v0[36];

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1002DA11C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002DA254, 0, 0);
}

uint64_t sub_1002DA254()
{
  v39 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[22] = v0[10];
  v8 = kAAAnalyticsEventCustodianSetupFetchSuggestedContactsFromFamilyMembers;
  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v4, v5);
  v9 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v9 && (v10 = v9, v11 = [v9 aa_altDSID], v10, v11))
  {
    v13 = v0[14];
    v12 = v0[15];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v8;

    v17 = String._bridgeToObjectiveC()();

    v18 = v0[14];
  }

  else
  {
    v20 = v0[14];
    v19 = v0[15];

    v21 = v8;

    v17 = 0;
    v15 = 0;
  }

  v0[23] = v15;
  v22 = v0[13];
  v23 = objc_opt_self();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 analyticsEventWithName:v8 altDSID:v17 flowID:v24];
  v0[24] = v25;

  if (v25)
  {
    sub_100245EF4();
    v26 = v25;
    v27 = NSString.init(stringLiteral:)();
    [v26 setObject:0 forKeyedSubscript:v27];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v0[25] = sub_100008D04(v28, qword_1003FAA40);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v38);
    _os_log_impl(&_mh_execute_header, v29, v30, "Performing: %s...", v31, 0xCu);
    sub_10000839C(v32);
  }

  sub_100257274(v8);
  v33 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v34 = swift_task_alloc();
  v0[26] = v34;
  v35 = sub_100005814(&qword_1003E55E0, &unk_100348188);
  *v34 = v0;
  v34[1] = sub_1002DA8FC;
  v36 = v0[15];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, 0, 0, 0xD000000000000029, 0x8000000100334130, sub_1002DC308, v36, v35);
}

uint64_t sub_1002DA8FC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1002DAA10;
  }

  else
  {
    v3 = sub_1002DAC9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002DAA10()
{
  v25 = v0;
  v1 = v0[27];
  v2 = v0[25];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v24);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100083380(v6);

    sub_10000839C(v7);
  }

  v9 = v0[24];
  swift_getErrorValue();
  v10 = v0[7];
  v11 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v9)
  {
    v12 = v0[24];
    v13 = v0[22];
    v14 = v12;
    swift_errorRetain();
    v15 = _convertErrorToNSError(_:)();
    [v14 updateTaskResultWithError:v15];

    swift_getObjectType();
    sub_100246FA8(v12);
  }

  else
  {
    swift_errorRetain();
  }

  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[22];
  v19 = v0[15];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_10000839C(v0 + 2);
  v20 = v0[21];
  v21 = v0[18];

  v22 = v0[1];

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_1002DAC9C()
{
  v17 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 120);
  if (v8)
  {
    [*(v0 + 192) updateTaskResultWithError:0];
    swift_getObjectType();
    v11 = v8;
    sub_100246FA8(v8);
  }

  swift_unknownObjectRelease();

  sub_10000839C((v0 + 16));
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14(v2);
}