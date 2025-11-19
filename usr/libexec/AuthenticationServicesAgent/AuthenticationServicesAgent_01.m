uint64_t sub_1000190CC()
{
  v0 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = WBSKeychainPasskey.persistentRef.getter();
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  sub_10000D1D4(&qword_100035C40, &qword_1000255C0);
  inited = swift_initStackObject();
  v28 = xmmword_100025360;
  *(inited + 16) = xmmword_100025360;
  *(inited + 32) = kSecValuePersistentRef;
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v10 = kSecValuePersistentRef;
  sub_100018EB0(v7, v8);
  sub_100018EC4(inited);
  swift_setDeallocating();
  sub_10001FAE8(inited + 32, &unk_100035C48, &qword_1000255C8);
  type metadata accessor for CFString(0);
  sub_100018E68(&qword_100035950, type metadata accessor for CFString);
  v29 = v7;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10000D1D4(&qword_100035C58, &qword_1000255D0);
  v11 = swift_initStackObject();
  *(v11 + 16) = v28;
  *(v11 + 32) = kSecAttrApplicationTag;
  v12 = kSecAttrApplicationTag;
  WBSKeychainPasskey.metadata.getter();
  v13 = WBSKeychainPasskey.Metadata.toCBOR()();
  v15 = v14;
  (*(v1 + 8))(v4, v0);
  *(v11 + 40) = v13;
  *(v11 + 48) = v15;
  sub_100018FC8(v11);
  swift_setDeallocating();
  sub_10001FAE8(v11 + 32, &qword_100035C60, &qword_1000255D8);
  sub_10000D1D4(&qword_100035C68, &qword_1000255E0);
  v16 = isa;
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = SecItemUpdate(v16, v17.super.isa);
  if (v18)
  {
    v19 = v18;
    v20 = v29;
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000BC18(v21, qword_100036040);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67240192;
      *(v24 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not update passkey: %{public}d", v24, 8u);
    }

    sub_10000B9A8(v20, v8);

    return 0;
  }

  sub_10000B9A8(v29, v8);
  return 1;
}

uint64_t sub_100019478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 decodeFromData:isa keepKeyOrdering:1];

  if (!v10)
  {
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000BC18(v27, qword_100036040);
    v10 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v10, v28, "Could not encode extensions", v29, 2u);
    }

    goto LABEL_20;
  }

  result = sub_10000E630(a1, a2);
  if ((result & 0x100) == 0)
  {
    v12 = result;
    sub_10000B9BC(a1, a2);
    sub_100013484(1, a1, a2, v40);
    v13 = v40[0];
    v14 = v40[1];
    v15 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B954(v13, v14);
    v16 = [v8 decodeFromData:v15 keepKeyOrdering:1];

    if (v16)
    {
      v17 = [v16 dictionary];

      if (v17)
      {
        sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
        sub_10001F824();
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = [v8 cborWithInteger:a5];
        if ((v18 & 0xC000000000000001) != 0)
        {
          if (v18 < 0)
          {
            v20 = v18;
          }

          else
          {
            v20 = v18 & 0xFFFFFFFFFFFFFF8;
          }

          v21 = v10;
          v22 = __CocoaDictionary.count.getter();
          if (__OFADD__(v22, 1))
          {
            __break(1u);
          }

          v18 = sub_10001479C(v20, v22 + 1);
        }

        else
        {
          v30 = v10;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = v18;
        sub_1000150C8(v10, v19, isUniquelyReferenced_nonNull_native);

        v32 = Dictionary._bridgeToObjectiveC()().super.isa;

        v33 = [v8 cborWithDictionary:v32];

        v34 = [objc_opt_self() dataWithCBOR:v33 encodingKeyOrder:1];
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v41 = v35;
        v42 = v37;
        v38 = sub_10000D1D4(&qword_100035BD0, &qword_100025570);
        v40[3] = v38;
        v40[4] = sub_10001F9F8(&qword_100035BD8, &qword_100035BD0, &qword_100025570);
        LOBYTE(v40[0]) = v12;
        v39 = *sub_10001F664(v40, v38);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_10001F5C4(v40);

        return v41;
      }
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000BC18(v23, qword_100036040);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected command format", v26, 2u);
    }

LABEL_20:
    sub_10000B9BC(a1, a2);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019954(uint64_t a1, unint64_t a2, void *a3)
{
  Assertion = type metadata accessor for ASCTAPAuthenticatorGetAssertionCommand.CodingKeys();
  v7 = *(Assertion - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(Assertion);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 extensions];
  v12 = dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.hasAtLeastOneExtension.getter();

  if (v12)
  {
    v13 = [a3 extensions];
    v14 = dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.cborForHybrid()();
    v16 = v15;

    if (v16 >> 60 != 15)
    {
      (*(v7 + 104))(v10, enum case for ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.extensions(_:), Assertion);
      v21 = ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.rawValue.getter();
      (*(v7 + 8))(v10, Assertion);
      a1 = sub_100019478(a1, a2, v14, v16, v21);
      sub_10000B9A8(v14, v16);
      return a1;
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BC18(v17, qword_100036040);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not encode extensions", v20, 2u);
    }
  }

  sub_10000B9BC(a1, a2);
  return a1;
}

uint64_t sub_100019BBC(uint64_t a1, unint64_t a2, void *a3)
{
  Credential = type metadata accessor for ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys();
  v7 = *(Credential - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(Credential);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 extensions];
  v12 = dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.hasAtLeastOneExtension.getter();

  if (v12)
  {
    v13 = [a3 extensions];
    v14 = dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.cborForHybrid()();
    v16 = v15;

    if (v16 >> 60 != 15)
    {
      (*(v7 + 104))(v10, enum case for ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.extensions(_:), Credential);
      v21 = ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.rawValue.getter();
      (*(v7 + 8))(v10, Credential);
      a1 = sub_100019478(a1, a2, v14, v16, v21);
      sub_10000B9A8(v14, v16);
      return a1;
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BC18(v17, qword_100036040);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not encode extensions", v20, 2u);
    }
  }

  sub_10000B9BC(a1, a2);
  return a1;
}

uint64_t sub_100019E24(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100019EDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100019F58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100019FDC(uint64_t a1)
{
  v9 = sub_10000D1D4(&qword_100035BB0, &qword_100025568);
  v10 = sub_10001F9F8(&qword_100035BB8, &qword_100035BB0, &qword_100025568);
  v8[0] = a1;
  v2 = sub_10001F664(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100016014(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10001F5C4(v8);
  return v5;
}

uint64_t sub_10001A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_10000D1D4(&qword_100035BA0, &qword_100025558) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = *(*(sub_10000D1D4(&qword_100035B18, &qword_1000254F0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for ASCTAPAuthData.Flags();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for SHA256();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = type metadata accessor for String.Encoding();
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = type metadata accessor for SHA256Digest();
  v3[24] = v15;
  v16 = *(v15 - 8);
  v3[25] = v16;
  v17 = *(v16 + 64) + 15;
  v3[26] = swift_task_alloc();
  v18 = type metadata accessor for ASCTAPAuthData();
  v3[27] = v18;
  v19 = *(v18 - 8);
  v3[28] = v19;
  v20 = *(v19 + 64) + 15;
  v3[29] = swift_task_alloc();
  CredentialResponse = type metadata accessor for ASCTAPAuthenticatorMakeCredentialResponse();
  v3[30] = CredentialResponse;
  v22 = *(CredentialResponse - 8);
  v3[31] = v22;
  v23 = *(v22 + 64) + 15;
  v3[32] = swift_task_alloc();
  v24 = *(*(sub_10000D1D4(&qword_100035BA8, &qword_100025560) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v25 = type metadata accessor for COSEKey();
  v3[34] = v25;
  v26 = *(v25 - 8);
  v3[35] = v26;
  v27 = *(v26 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v28 = type metadata accessor for WBSKeychainPasskey();
  v3[38] = v28;
  v29 = *(v28 - 8);
  v3[39] = v29;
  v30 = *(v29 + 64) + 15;
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10001A4B4, 0, 0);
}

uint64_t sub_10001A4B4()
{
  v1 = [*(v0 + 80) authenticatorSelection];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 authenticatorAttachment];

    if (v5 != 1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    if (qword_100035800 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 80);
    *(v0 + 328) = qword_100036070;
    v7 = [v6 relyingParty];
    v8 = [v7 identifier];

    if (v8)
    {
      v9 = *(v0 + 80);
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 336) = v10;
      *(v0 + 344) = v12;
      v13 = [v9 user];
      v14 = [v13 name];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(v0 + 352) = v15;
      *(v0 + 360) = v17;
      v18 = [v9 user];
      v19 = [v18 displayName];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      *(v0 + 368) = v20;
      *(v0 + 376) = v22;
      v23 = [v9 user];
      v24 = [v23 identifier];

      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v0 + 384) = v25;
      *(v0 + 392) = v27;
      *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 408) = v28;
      *(v0 + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 424) = v29;
      type metadata accessor for WBSPasskeyStore();
      sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore);
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v3 = v31;
      *(v0 + 432) = v30;
      *(v0 + 440) = v31;
      v1 = sub_10001A80C;
      v2 = v30;

      return _swift_task_switch(v1, v2, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10001A80C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[41];
  v23 = v0[52];
  v24 = v0[53];
  v21 = v0[50];
  v22 = v0[51];
  WBSPasskeyStore.test_createPasskey(for:username:displayName:userHandle:groupID:inRecentlyDeleted:asLegacyCredential:unsafeAllowRealKeychainAccess:keyClass:)();
  v0[56] = 0;
  v11 = v0[53];
  v12 = v0[51];
  v14 = v0[48];
  v13 = v0[49];
  v15 = v0[47];
  v16 = v0[45];
  v17 = v0[43];

  sub_10000B954(v14, v13);

  v18 = v0[54];
  v19 = v0[55];

  return _swift_task_switch(sub_10001A920, v18, v19);
}

uint64_t sub_10001A920()
{
  v1 = v0[56];
  v2 = v0[40];
  v3 = v0[41];
  v4 = WBSPasskeyStore.test_publicKey(for:)();
  v0[57] = v1;
  v0[58] = v4;
  v0[59] = v5;
  if (v1)
  {
    v6 = sub_10001B418;
  }

  else
  {
    v6 = sub_10001A9B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_10001A9B0()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v0[10];
  (*(v0[35] + 32))(v0[37], v0[33], v0[34]);
  v7 = [v6 relyingParty];
  v8 = [v7 identifier];

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v87 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  if (v15 >> 60 == 15)
  {
LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  v16 = v0[57];
  v69 = v0[40];
  v79 = v0[37];
  v75 = v0[36];
  v71 = v0[35];
  v77 = v0[34];
  v81 = v0[29];
  v83 = v0[28];
  v17 = v0[26];
  v85 = v0[27];
  v59 = v0[24];
  v61 = v0[25];
  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  v63 = v0[16];
  v65 = v0[17];
  v67 = v0[15];
  v73 = v0[14];
  sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10000B9BC(v13, v15);
  sub_100017DC4(v13, v15);
  sub_10000B9A8(v13, v15);
  dispatch thunk of HashFunction.finalize()();
  sub_10000B9A8(v13, v15);
  (*(v18 + 8))(v19, v20);
  v0[5] = v59;
  v0[6] = sub_100018E68(&qword_100035B40, &type metadata accessor for SHA256Digest);
  v21 = sub_10001F560(v0 + 2);
  (*(v61 + 16))(v21, v17, v59);
  sub_10001F664(v0 + 2, v0[5]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v61 + 8))(v17, v59);
  v22 = v0[7];
  v23 = v0[8];
  sub_10001F5C4(v0 + 2);
  sub_10000D1D4(&qword_100035B48, &qword_100025508);
  v24 = *(v63 + 72);
  v25 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100025380;
  static ASCTAPAuthData.Flags.userPresent.getter();
  static ASCTAPAuthData.Flags.userVerified.getter();
  static ASCTAPAuthData.Flags.backupState.getter();
  static ASCTAPAuthData.Flags.backupEligible.getter();
  static ASCTAPAuthData.Flags.attestedCredentialDataPresent.getter();
  v0[9] = v26;
  sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags);
  sub_10000D1D4(&qword_100035B58, &qword_100025510);
  sub_10001F9F8(&qword_100035B60, &qword_100035B58, &qword_100025510);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v27[2] = 16;
  v27[4] = 0;
  v27[5] = 0;
  sub_100019FDC(v27);

  WBSKeychainPasskey.credentialID.getter();
  (*(v71 + 16))(v75, v79, v77);
  Data.init(coseKey:)();
  ASCTAPCredentialData.init(aaguid:credentialID:credentialPublicKey:)();
  v28 = type metadata accessor for ASCTAPCredentialData();
  (*(*(v28 - 8) + 56))(v73, 0, 1, v28);
  ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)();
  ASCTAPAuthData.test_webAuthnEncoded()();
  (*(v83 + 8))(v81, v85);
  Data.init(hexString:)();
  if (v29 >> 60 == 15)
  {
LABEL_13:

    __break(1u);
    return;
  }

  v30 = v0[40];
  v31 = v0[32];
  v32 = v0[13];

  v33 = type metadata accessor for ASCTAPExtensionOutput();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  ASCTAPAuthenticatorMakeCredentialResponse.init(attestationFormat:authData:attestationStatement:unsignedExtensionOutputs:)();
  Credential = ASCTAPAuthenticatorMakeCredentialResponse.attestationObjectEncoded()();
  v88 = v35;
  v36 = WBSKeychainPasskey.credentialID.getter();
  v72 = v37;
  v74 = v36;
  isa = [objc_opt_self() _defaultTransports];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v54 = v0[58];
  v55 = v0[59];
  v62 = v0[38];
  v64 = v0[40];
  v58 = v0[37];
  v60 = v0[39];
  v56 = v0[35];
  v57 = v0[34];
  v66 = v0[36];
  v68 = v0[33];
  v51 = v0[31];
  v52 = v0[30];
  v53 = v0[32];
  v70 = v0[29];
  v76 = v0[26];
  v78 = v0[23];
  v80 = v0[20];
  v82 = v0[17];
  v84 = v0[14];
  v86 = v0[13];
  v39 = v0[11];
  v40 = v0[12];
  v41 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs()) init];
  v42 = ASFIDOAuthenticatorAttachmentPlatform;
  v43 = objc_allocWithZone(ASCPlatformPublicKeyCredentialRegistration);
  v50 = Credential;
  v44 = Data._bridgeToObjectiveC()().super.isa;
  v45 = Data._bridgeToObjectiveC()().super.isa;
  v46 = Data._bridgeToObjectiveC()().super.isa;
  LOBYTE(v49) = 0;
  v47 = [v43 initWithRelyingPartyIdentifier:v87 attestationObject:v44 rawClientDataJSON:v45 credentialID:v46 transports:isa extensions:v41 attachment:v42 isExternal:v49];

  sub_10000B954(v74, v72);
  sub_10000B954(v50, v88);
  sub_10000B954(v54, v55);
  (*(v51 + 8))(v53, v52);
  (*(v56 + 8))(v58, v57);
  (*(v60 + 8))(v64, v62);

  v48 = v0[1];

  v48(v47);
}

uint64_t sub_10001B2C8()
{
  v1 = v0[53];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[45];
  v7 = v0[43];

  sub_10000B954(v4, v3);

  v8 = v0[40];
  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[17];
  v20 = v0[14];
  v21 = v0[13];
  v22 = v0[56];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10001B418()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[17];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[57];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001B538(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10001F610();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10000B9BC(v6, *v4);
      sub_1000160A8(v7, v6, v5);
      sub_10000B954(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  v6 = *(*(sub_10000D1D4(&qword_100035B10, &qword_1000254E8) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v7 = type metadata accessor for WBSPasskeyStore.PasskeyStoreError();
  v5[48] = v7;
  v8 = *(v7 - 8);
  v5[49] = v8;
  v9 = *(v8 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v10 = *(*(sub_10000D1D4(&qword_100035B18, &qword_1000254F0) - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v11 = type metadata accessor for ASCTAPAuthData();
  v5[53] = v11;
  v12 = *(v11 - 8);
  v5[54] = v12;
  v13 = *(v12 + 64) + 15;
  v5[55] = swift_task_alloc();
  v14 = type metadata accessor for ASCTAPAuthData.Flags();
  v5[56] = v14;
  v15 = *(v14 - 8);
  v5[57] = v15;
  v16 = *(v15 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v17 = type metadata accessor for SHA256();
  v5[61] = v17;
  v18 = *(v17 - 8);
  v5[62] = v18;
  v19 = *(v18 + 64) + 15;
  v5[63] = swift_task_alloc();
  v20 = type metadata accessor for String.Encoding();
  v5[64] = v20;
  v21 = *(v20 - 8);
  v5[65] = v21;
  v22 = *(v21 + 64) + 15;
  v5[66] = swift_task_alloc();
  v23 = type metadata accessor for SHA256Digest();
  v5[67] = v23;
  v24 = *(v23 - 8);
  v5[68] = v24;
  v25 = *(v24 + 64) + 15;
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v26 = type metadata accessor for WBSKeychainPasskey();
  v5[71] = v26;
  v27 = *(v26 - 8);
  v5[72] = v27;
  v28 = *(v27 + 64) + 15;
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return _swift_task_switch(sub_10001B988, 0, 0);
}

uint64_t sub_10001B988()
{
  v1 = [*(v0 + 352) relyingPartyIdentifier];
  *(v0 + 616) = v1;
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    *(v0 + 624) = v2;
    *(v0 + 632) = v3;
    if (qword_100035800 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = qword_100036070;
    v5 = async function pointer to WBSPasskeyStore.passkeys(for:)[1];
    v6 = swift_task_alloc();
    *(v0 + 648) = v6;
    *v6 = v0;
    v6[1] = sub_10001BBDC;

    return WBSPasskeyStore.passkeys(for:)(v2, v4);
  }

  else
  {
    sub_10001F484();
    swift_allocError();
    swift_willThrow();
    v7 = *(v0 + 608);
    v8 = *(v0 + 600);
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 528);
    v14 = *(v0 + 504);
    v15 = *(v0 + 472);
    v16 = *(v0 + 480);
    v19 = *(v0 + 464);
    v20 = *(v0 + 440);
    v21 = *(v0 + 416);
    v22 = *(v0 + 408);
    v23 = *(v0 + 400);
    v24 = *(v0 + 376);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10001BBDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 648);
  v6 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v7 = sub_10001D104;
  }

  else
  {
    *(v4 + 664) = a1;
    v7 = sub_10001BD04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001BD04()
{
  v1 = *(v0 + 664);
  *(v0 + 672) = *(v0 + 656);
  v2 = [*(v0 + 352) allowCredentials];
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = v2;
  v66 = v1;
  sub_10001F88C(0, &qword_100035B70, _WKPublicKeyCredentialDescriptor_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = sub_100016A68(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_40:
        __break(1u);
        return _swift_continuation_await(v6);
      }

      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = [v9 identifier];
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_100016A68((v14 > 1), v15 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
      }

      while (v5 != v7);
    }
  }

  v74 = sub_10001B538(_swiftEmptyArrayStorage);

  v17 = v66;
  v71 = v66[2];
  if (v71)
  {
    v18 = 0;
    v19 = *(v0 + 576);
    v68 = (v19 + 32);
    while (v18 < v17[2])
    {
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      (*(v19 + 16))(*(v0 + 608), v17 + v20 + v21 * v18, *(v0 + 568));
      v22 = WBSKeychainPasskey.credentialID.getter();
      v24 = v23;
      v25 = sub_10000ECE0(v22, v23, v74);
      sub_10000B954(v22, v24);
      v26 = *(v0 + 608);
      if (v25)
      {
        v27 = *v68;
        (*v68)(*(v0 + 600), *(v0 + 608), *(v0 + 568));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v29 = _swiftEmptyArrayStorage[2];
        v28 = _swiftEmptyArrayStorage[3];
        if (v29 >= v28 >> 1)
        {
          sub_100016A24(v28 > 1, v29 + 1, 1);
        }

        v30 = *(v0 + 600);
        v31 = *(v0 + 568);
        _swiftEmptyArrayStorage[2] = v29 + 1;
        v6 = v27(_swiftEmptyArrayStorage + v20 + v29 * v21, v30, v31);
        v17 = v66;
      }

      else
      {
        v6 = (*(v19 + 8))(*(v0 + 608), *(v0 + 568));
      }

      if (v71 == ++v18)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_25:

  v1 = _swiftEmptyArrayStorage;
LABEL_26:
  *(v0 + 680) = v1;
  v32 = v1[2];
  if (v32)
  {
    v33 = *(v0 + 576);
    type metadata accessor for WebAuthenticationAssertionResponse();
    v36 = *(v33 + 16);
    v34 = v33 + 16;
    v35 = v36;
    v37 = v1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v72 = *(v34 + 56);
    do
    {
      v38 = *(v0 + 592);
      v39 = *(v0 + 584);
      v40 = *(v0 + 568);
      v35(v38, v37, v40);
      v35(v39, v38, v40);
      v41 = sub_10000AE68(v39);
      (*(v34 - 8))(v38, v40);
      if (v41)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      *(v0 + 704) = _swiftEmptyArrayStorage;
      v37 += v72;
      --v32;
    }

    while (v32);
    v43 = *(v0 + 360);
    v44 = *(v0 + 368);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 688) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_10001C464;
    v46 = swift_continuation_init();
    *(v0 + 136) = sub_10000D1D4(&qword_100035B30, &qword_100025500);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000F5A8;
    *(v0 + 104) = &unk_100031B18;
    *(v0 + 112) = v46;
    [v44 operation:v43 selectAssertionResponse:isa source:0 completionHandler:v0 + 80];
    v6 = v0 + 16;

    return _swift_continuation_await(v6);
  }

  v47 = *(v0 + 632);
  v48 = *(v0 + 384);
  v49 = *(v0 + 392);
  v51 = *(v0 + 360);
  v50 = *(v0 + 368);

  [v50 operation:v51 updateWebAuthenticationPanel:7];
  sub_100018E68(&qword_100035B68, &type metadata accessor for WBSPasskeyStore.PasskeyStoreError);
  swift_allocError();
  (*(v49 + 104))(v52, enum case for WBSPasskeyStore.PasskeyStoreError.notFound(_:), v48);
  swift_willThrow();
  v53 = *(v0 + 608);
  v54 = *(v0 + 600);
  v55 = *(v0 + 592);
  v56 = *(v0 + 584);
  v57 = *(v0 + 560);
  v58 = *(v0 + 552);
  v59 = *(v0 + 528);
  v60 = *(v0 + 504);
  v62 = *(v0 + 472);
  v61 = *(v0 + 480);
  v65 = *(v0 + 464);
  v67 = *(v0 + 440);
  v69 = *(v0 + 416);
  v70 = *(v0 + 408);
  v73 = *(v0 + 400);
  v75 = *(v0 + 376);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10001C464()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001C544, 0, 0);
}

uint64_t sub_10001C544()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v73 = *(v0 + 320);
  *(v0 + 696) = v73;

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  if (v9 >> 60 == 15)
  {

    __break(1u);
  }

  else
  {
    v10 = *(v0 + 672);
    v11 = *(v0 + 560);
    v74 = *(v0 + 544);
    v70 = *(v0 + 536);
    v12 = *(v0 + 496);
    v13 = *(v0 + 504);
    v14 = *(v0 + 488);
    v60 = *(v0 + 456);
    v62 = *(v0 + 480);
    v66 = *(v0 + 448);
    sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B9BC(v7, v9);
    sub_100017DC4(v7, v9);
    sub_10000B9A8(v7, v9);
    dispatch thunk of HashFunction.finalize()();
    sub_10000B9A8(v7, v9);
    v68 = *(v12 + 8);
    v68(v13, v14);
    *(v0 + 168) = v70;
    v15 = sub_100018E68(&qword_100035B40, &type metadata accessor for SHA256Digest);
    *(v0 + 176) = v15;
    v16 = sub_10001F560((v0 + 144));
    v65 = *(v74 + 16);
    v65(v16, v11, v70);
    sub_10001F664((v0 + 144), *(v0 + 168));
    v72 = v15;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v64 = *(v74 + 8);
    v64(v11, v70);
    v69 = *(v0 + 272);
    v71 = *(v0 + 264);
    *(v0 + 712) = v71;
    *(v0 + 720) = v69;
    sub_10001F5C4((v0 + 144));
    sub_10000D1D4(&qword_100035B48, &qword_100025508);
    v17 = *(v60 + 72);
    v18 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100025390;
    static ASCTAPAuthData.Flags.backupEligible.getter();
    static ASCTAPAuthData.Flags.backupState.getter();
    static ASCTAPAuthData.Flags.userPresent.getter();
    *(v0 + 328) = v19;
    sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags);
    sub_10000D1D4(&qword_100035B58, &qword_100025510);
    sub_10001F9F8(&qword_100035B60, &qword_100035B58, &qword_100025510);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = [v73 laContext];
    if (v20)
    {
      v21 = *(v0 + 472);
      v22 = *(v0 + 480);
      v24 = *(v0 + 456);
      v23 = *(v0 + 464);
      v25 = *(v0 + 448);

      static ASCTAPAuthData.Flags.userVerified.getter();
      sub_10000F60C(v21, v23);
      v26 = *(v24 + 8);
      v26(v23, v25);
      v26(v21, v25);
    }

    v67 = *(v0 + 640);
    v27 = *(v0 + 552);
    v28 = *(v0 + 536);
    v29 = *(v0 + 504);
    v30 = *(v0 + 488);
    v54 = *(v0 + 456);
    v55 = *(v0 + 472);
    v56 = *(v0 + 448);
    v57 = *(v0 + 480);
    v59 = *(v0 + 440);
    v61 = *(v0 + 432);
    v63 = *(v0 + 424);
    v58 = *(v0 + 416);
    v32 = *(v0 + 336);
    v31 = *(v0 + 344);
    dispatch thunk of HashFunction.init()();
    sub_10000B9BC(v32, v31);
    sub_100017DC4(v32, v31);
    sub_10000B954(v32, v31);
    dispatch thunk of HashFunction.finalize()();
    v68(v29, v30);
    *(v0 + 208) = v28;
    *(v0 + 216) = v72;
    v33 = sub_10001F560((v0 + 184));
    v65(v33, v27, v28);
    sub_10001F664((v0 + 184), *(v0 + 208));
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v64(v27, v28);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    *(v0 + 728) = v34;
    *(v0 + 736) = v35;
    sub_10001F5C4((v0 + 184));
    (*(v54 + 16))(v55, v57, v56);
    v36 = type metadata accessor for ASCTAPCredentialData();
    (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
    sub_10000B9BC(v71, v69);
    ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)();
    v37 = ASCTAPAuthData.test_webAuthnEncoded()();
    v39 = v38;
    *(v0 + 744) = v37;
    *(v0 + 752) = v38;
    (*(v61 + 8))(v59, v63);
    *&v75 = v37;
    *(&v75 + 1) = v39;
    *(v0 + 248) = &type metadata for Data;
    *(v0 + 256) = &protocol witness table for Data;
    *(v0 + 224) = v34;
    *(v0 + 232) = v35;
    v40 = sub_10001F664((v0 + 224), &type metadata for Data);
    v41 = *v40;
    v42 = v40[1];
    sub_10000B9BC(v37, v39);
    sub_10000B9BC(v34, v35);
    sub_100017FA4(v41, v42);
    *(v0 + 760) = v10;
    sub_10001F5C4((v0 + 224));
    *(v0 + 768) = v75;
    v43 = [v73 credentialID];
    v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v0 + 784) = v44;
    *(v0 + 792) = v46;
    type metadata accessor for WBSPasskeyStore();
    sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore);
    v47 = dispatch thunk of Actor.unownedExecutor.getter();
    v49 = v48;
    v50 = sub_10001CC94;
    v51 = v47;
    v52 = v49;
  }

  return _swift_task_switch(v50, v51, v52);
}

uint64_t sub_10001CC94()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 640);
  *(v0 + 296) = WBSPasskeyStore.test_sign(data:usingPasskeyWithCredentialID:)();
  *(v0 + 304) = v7;
  *(v0 + 800) = v5;
  v8 = *(v0 + 792);
  v9 = *(v0 + 784);
  if (v5)
  {
    v10 = *(v0 + 704);
    v11 = *(v0 + 680);
    v12 = *(v0 + 632);

    sub_10000B954(v9, v8);

    v13 = sub_10001D9E4;
  }

  else
  {
    sub_10000B954(*(v0 + 784), *(v0 + 792));
    v13 = sub_10001CD88;
  }

  return _swift_task_switch(v13, 0, 0);
}

void sub_10001CD88()
{
  v1 = [*(v0 + 696) userHandle];
  if (v1)
  {
    v2 = v1;
    v56 = *(v0 + 296);
    v34 = *(v0 + 776);
    v3 = *(v0 + 752);
    v28 = *(v0 + 304);
    v29 = *(v0 + 744);
    v36 = *(v0 + 728);
    v38 = *(v0 + 736);
    v39 = *(v0 + 712);
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);
    v31 = v5;
    v32 = *(v0 + 768);
    v6 = *(v0 + 680);
    v7 = *(v0 + 632);
    v30 = *(v0 + 616);
    v40 = *(v0 + 720);
    v41 = *(v0 + 608);
    v42 = *(v0 + 600);
    v43 = *(v0 + 592);
    v44 = *(v0 + 584);
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v47 = *(v0 + 528);
    v48 = *(v0 + 504);
    v37 = *(v0 + 480);
    v49 = *(v0 + 472);
    v50 = *(v0 + 464);
    v33 = *(v0 + 456);
    v35 = *(v0 + 448);
    v51 = *(v0 + 440);
    v52 = *(v0 + 416);
    v53 = *(v0 + 408);
    v54 = *(v0 + 400);
    v55 = *(v0 + 376);
    v25 = *(v0 + 336);
    v26 = *(v0 + 344);

    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v9;
    v24 = v8;

    v10 = [v5 credentialID];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v22 = ASFIDOAuthenticatorAttachmentPlatform;
    v14 = objc_allocWithZone(ASCPlatformPublicKeyCredentialAssertion);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = Data._bridgeToObjectiveC()().super.isa;
    v17 = Data._bridgeToObjectiveC()().super.isa;
    v18 = Data._bridgeToObjectiveC()().super.isa;
    v19 = Data._bridgeToObjectiveC()().super.isa;
    LOBYTE(v21) = 0;
    v27 = [v14 initWithRelyingPartyIdentifier:v30 authenticatorData:isa signature:v16 userHandle:v17 rawClientDataJSON:v18 credentialID:v19 extensions:0 attachment:v22 isExternal:v21];

    sub_10000B954(v11, v13);
    sub_10000B954(v24, v23);

    sub_10000B954(v56, v28);
    sub_10000B954(v32, v34);

    sub_10000B954(v36, v38);
    sub_10000B954(v29, v3);
    sub_10000B954(v39, v40);
    (*(v33 + 8))(v37, v35);

    v20 = *(v0 + 8);

    v20(v27);
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_10001D104()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  *(v0 + 312) = *(v0 + 656);
  swift_errorRetain();
  sub_10000D1D4(&qword_100035B28, &qword_1000254F8);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  if ((v3 & 1) == 0)
  {
    v29 = *(v0 + 632);

    (*(v5 + 56))(v6, 1, 1, v4);
    sub_10001FAE8(v6, &qword_100035B10, &qword_1000254E8);
LABEL_17:
    v32 = *(v0 + 656);
    swift_willThrow();
    v94 = *(v0 + 656);
    goto LABEL_18;
  }

  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  (*(v5 + 56))(*(v0 + 376), 0, 1, *(v0 + 384));
  (*(v5 + 32))(v7, v6, v4);
  v82 = enum case for WBSPasskeyStore.PasskeyStoreError.notFound(_:);
  (*(v5 + 104))(v8);
  v9 = static WBSPasskeyStore.PasskeyStoreError.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    v30 = *(v0 + 632);
    v31 = *(v0 + 616);
    v10(*(v0 + 408), *(v0 + 384));

    goto LABEL_17;
  }

  v11 = *(v0 + 656);
  v12 = *(v0 + 408);
  v13 = *(v0 + 384);

  v10(v12, v13);
  *(v0 + 672) = 0;
  v14 = [*(v0 + 352) allowCredentials];
  v93 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v15 = v14;
    sub_10001F88C(0, &qword_100035B70, _WKPublicKeyCredentialDescriptor_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_6:
        v18 = sub_100016A68(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
LABEL_47:
          __break(1u);
          return _swift_continuation_await(v18);
        }

        v19 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v16 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = [v21 identifier];
          v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v27 = _swiftEmptyArrayStorage[2];
          v26 = _swiftEmptyArrayStorage[3];
          if (v27 >= v26 >> 1)
          {
            sub_100016A68((v26 > 1), v27 + 1, 1);
          }

          ++v19;
          _swiftEmptyArrayStorage[2] = v27 + 1;
          v28 = &_swiftEmptyArrayStorage[2 * v27];
          v28[4] = v23;
          v28[5] = v25;
        }

        while (v17 != v19);
      }
    }

    v45 = sub_10001B538(_swiftEmptyArrayStorage);

    v92 = _swiftEmptyArrayStorage[2];
    if (v92)
    {
      v46 = 0;
      v47 = *(v0 + 576);
      v86 = v45;
      v88 = (v47 + 32);
      while (v46 < _swiftEmptyArrayStorage[2])
      {
        v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v49 = *(v47 + 72);
        (*(v47 + 16))(*(v0 + 608), _swiftEmptyArrayStorage + v48 + v49 * v46, *(v0 + 568));
        v50 = WBSKeychainPasskey.credentialID.getter();
        v52 = v51;
        v53 = sub_10000ECE0(v50, v51, v45);
        sub_10000B954(v50, v52);
        v54 = *(v0 + 608);
        if (v53)
        {
          v55 = *v88;
          (*v88)(*(v0 + 600), *(v0 + 608), *(v0 + 568));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v57 = _swiftEmptyArrayStorage[2];
          v56 = _swiftEmptyArrayStorage[3];
          if (v57 >= v56 >> 1)
          {
            sub_100016A24(v56 > 1, v57 + 1, 1);
          }

          v58 = *(v0 + 600);
          v59 = *(v0 + 568);
          _swiftEmptyArrayStorage[2] = v57 + 1;
          v18 = v55(_swiftEmptyArrayStorage + v48 + v57 * v49, v58, v59);
          v45 = v86;
        }

        else
        {
          v18 = (*(v47 + 8))(*(v0 + 608), *(v0 + 568));
        }

        if (v92 == ++v46)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_34:
  }

  *(v0 + 680) = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage[2];
  if (v60)
  {
    v61 = *(v0 + 576);
    type metadata accessor for WebAuthenticationAssertionResponse();
    v64 = *(v61 + 16);
    v63 = v61 + 16;
    v62 = v64;
    v65 = _swiftEmptyArrayStorage + ((*(v63 + 64) + 32) & ~*(v63 + 64));
    v90 = *(v63 + 56);
    do
    {
      v67 = *(v0 + 592);
      v68 = *(v0 + 584);
      v69 = *(v0 + 568);
      v62(v67, v65, v69);
      v62(v68, v67, v69);
      v70 = sub_10000AE68(v68);
      (*(v63 - 8))(v67, v69);
      v66 = v93;
      if (v70)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = _swiftEmptyArrayStorage;
      }

      v93 = v66;
      *(v0 + 704) = v66;
      v65 += v90;
      --v60;
    }

    while (v60);
    v72 = *(v0 + 360);
    v73 = *(v0 + 368);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 688) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_10001C464;
    v75 = swift_continuation_init();
    *(v0 + 136) = sub_10000D1D4(&qword_100035B30, &qword_100025500);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000F5A8;
    *(v0 + 104) = &unk_100031B18;
    *(v0 + 112) = v75;
    [v73 operation:v72 selectAssertionResponse:isa source:0 completionHandler:v0 + 80];
    v18 = v0 + 16;

    return _swift_continuation_await(v18);
  }

  v76 = *(v0 + 632);
  v77 = *(v0 + 384);
  v78 = *(v0 + 392);
  v80 = *(v0 + 360);
  v79 = *(v0 + 368);

  [v79 operation:v80 updateWebAuthenticationPanel:7];
  sub_100018E68(&qword_100035B68, &type metadata accessor for WBSPasskeyStore.PasskeyStoreError);
  swift_allocError();
  (*(v78 + 104))(v81, v82, v77);
  swift_willThrow();
LABEL_18:
  v33 = *(v0 + 608);
  v34 = *(v0 + 600);
  v35 = *(v0 + 592);
  v36 = *(v0 + 584);
  v37 = *(v0 + 560);
  v38 = *(v0 + 552);
  v39 = *(v0 + 528);
  v40 = *(v0 + 504);
  v42 = *(v0 + 472);
  v41 = *(v0 + 480);
  v83 = *(v0 + 464);
  v84 = *(v0 + 440);
  v85 = *(v0 + 416);
  v87 = *(v0 + 408);
  v89 = *(v0 + 400);
  v91 = *(v0 + 376);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10001D9E4()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[87];
  v28 = v0[60];
  v9 = v0[56];
  v8 = v0[57];
  sub_10000B954(v0[96], v0[97]);

  sub_10000B954(v4, v3);
  sub_10000B954(v2, v1);
  sub_10000B954(v6, v5);
  (*(v8 + 8))(v28, v9);
  v29 = v0[100];
  v10 = v0[76];
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[73];
  v14 = v0[70];
  v15 = v0[69];
  v16 = v0[66];
  v17 = v0[63];
  v19 = v0[59];
  v18 = v0[60];
  v22 = v0[58];
  v23 = v0[55];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[50];
  v27 = v0[47];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10001DB9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for WBSKeychainPasskey();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10001DD94, 0, 0);
}

uint64_t sub_10001DD94()
{
  if (qword_100035800 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_100036070;
  type metadata accessor for WBSPasskeyStore();
  sub_100018E68(&qword_100035A80, &type metadata accessor for WBSPasskeyStore);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001DE84, v2, v1);
}

uint64_t sub_10001DE84()
{
  v1 = *(v0 + 152);
  *(v0 + 160) = WBSPasskeyStore.allPasskeys()();

  return _swift_task_switch(sub_10001DEF0, 0, 0);
}

void sub_10001DEF0()
{
  v1 = v0[20];
  v73 = *(v1 + 16);
  if (v73)
  {
    v2 = 0;
    v3 = v0[15];
    v70 = (v3 + 32);
    while (v2 < *(v1 + 16))
    {
      v5 = v0[2];
      v4 = v0[3];
      v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v7 = *(v3 + 72);
      (*(v3 + 16))(v0[18], v0[20] + v6 + v7 * v2, v0[14]);
      WBSKeychainPasskey.relyingPartyIdentifier.getter();
      v8._countAndFlagsBits = v5;
      v8._object = v4;
      LOBYTE(v4) = String.hasSuffix(_:)(v8);

      v9 = v0[18];
      if (v4)
      {
        v10 = *v70;
        (*v70)(v0[17], v0[18], v0[14]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016A24(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_100016A24(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[17];
        v14 = v0[14];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v10(_swiftEmptyArrayStorage + v6 + v12 * v7, v13, v14);
      }

      else
      {
        (*(v3 + 8))(v0[18], v0[14]);
      }

      if (v73 == ++v2)
      {
        v15 = v0[20];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v16 = _swiftEmptyArrayStorage[2];
    if (!v16)
    {
LABEL_19:

      v48 = v0[17];
      v47 = v0[18];
      v49 = v0[16];
      v51 = v0[12];
      v50 = v0[13];
      v52 = v0[9];
      v53 = v0[6];

      v54 = v0[1];

      v54(_swiftEmptyArrayStorage);
      return;
    }

    v17 = v0[15];
    v18 = v0[11];
    v19 = v0[8];
    v20 = v0[5];
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = 0;
    v64 = _swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v63 = enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:);
    v62 = (v19 + 104);
    v22 = (v18 + 8);
    v61 = enum case for WBSKeychainPasskey.Metadata.DataKeys.userHandle(_:);
    v59 = v16;
    v60 = (v20 + 104);
    v56 = (v19 + 8);
    v57 = (v20 + 8);
    v65 = v17;
    v55 = (v17 + 8);
    v58 = (v18 + 8);
    while (v21 < _swiftEmptyArrayStorage[2])
    {
      v23 = v0[13];
      v24 = v0[9];
      v25 = v0[10];
      v26 = v0[7];
      v74 = v21;
      (*(v65 + 16))(v0[16], &v64[*(v65 + 72) * v21], v0[14]);
      WBSKeychainPasskey.metadata.getter();
      (*v62)(v24, v63, v26);
      WBSKeychainPasskey.Metadata.subscript.getter();
      v28 = v27;
      v29 = *v22;
      (*v22)(v23, v25);
      if (!v28)
      {
        goto LABEL_24;
      }

      v30 = v0[16];
      v31 = v0[12];
      v71 = v0[10];
      v32 = v0[6];
      v33 = v0[4];
      WBSKeychainPasskey.relyingPartyIdentifier.getter();
      v69 = WBSKeychainPasskey.credentialID.getter();
      v68 = v34;
      WBSKeychainPasskey.metadata.getter();
      (*v60)(v32, v61, v33);
      v35 = WBSKeychainPasskey.Metadata.subscript.getter();
      v37 = v36;
      v29(v31, v71);
      if (v37 >> 60 == 15)
      {
        goto LABEL_25;
      }

      v72 = v0[16];
      v67 = v0[14];
      v38 = v0[9];
      v39 = v0[7];
      (*v57)(v0[6], v0[4]);
      (*v56)(v38, v39);
      v66 = objc_allocWithZone(WBSWebBrowserPasskey);
      v40 = String._bridgeToObjectiveC()();

      v41 = String._bridgeToObjectiveC()();

      isa = Data._bridgeToObjectiveC()().super.isa;
      v43 = Data._bridgeToObjectiveC()().super.isa;
      v44 = String._bridgeToObjectiveC()();
      [v66 initWithName:v40 relyingParty:v41 credentialID:isa userHandle:v43 customTitle:0 providerName:v44];

      v45 = v35;
      v21 = v74 + 1;
      sub_10000B9A8(v45, v37);

      sub_10000B954(v69, v68);
      (*v55)(v72, v67);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v58;
      if (v59 == v74 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_10001E4F4(unint64_t a1)
{
  v40 = type metadata accessor for ASCTAPAuthenticatorTransport();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000D1D4(&qword_100035A38, "zT");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for ASWKCTAPAuthenticatorTransport();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    v43 = a1 & 0xC000000000000001;
    v17 = (v10 + 48);
    v37 = (v2 + 8);
    v38 = (v10 + 32);
    v18 = &_swiftEmptyArrayStorage;
    v36 = (v10 + 8);
    *&v13 = 138543362;
    v35 = v13;
    v41 = v15;
    v42 = a1;
    do
    {
      if (v43)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(a1 + 8 * v16 + 32);
      }

      v23 = v22;
      ASWKCTAPAuthenticatorTransport.init(rawValue:)();
      if ((*v17)(v8, 1, v9) == 1)
      {
        sub_10001FAE8(v8, &qword_100035A38, "zT");
        if (qword_1000357F0 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_10000BC18(v24, qword_100036040);
        v25 = v23;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = v35;
          *(v19 + 4) = v25;
          *v20 = v25;
          v21 = v25;
          _os_log_impl(&_mh_execute_header, v26, v27, "Unexpected WebKit transport: %{public}@", v19, 0xCu);
          sub_10001FAE8(v20, &qword_100035A40, "zT");
          a1 = v42;

          v15 = v41;
        }

        else
        {
        }
      }

      else
      {
        (*v38)(v44, v8, v9);
        v28 = v39;
        ASWKCTAPAuthenticatorTransport.asRepresentation.getter();
        v29 = ASCTAPAuthenticatorTransport.rawValue.getter();
        v31 = v30;
        (*v37)(v28, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100013F5C(0, *(v18 + 2) + 1, 1, v18);
        }

        v33 = *(v18 + 2);
        v32 = *(v18 + 3);
        if (v33 >= v32 >> 1)
        {
          v18 = sub_100013F5C((v32 > 1), v33 + 1, 1, v18);
        }

        (*v36)(v44, v9);
        *(v18 + 2) = v33 + 1;
        v34 = &v18[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        v15 = v41;
        a1 = v42;
      }

      ++v16;
    }

    while (v15 != v16);
    return v18;
  }

  __break(1u);
  return result;
}

void *sub_10001E990(uint64_t a1)
{
  v34 = type metadata accessor for ASWKCTAPAuthenticatorTransport();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000D1D4(&qword_100035A30, "zT");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ASCTAPAuthenticatorTransport();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &_swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v16 = (v11 + 48);
  v36 = (v11 + 8);
  v37 = (v11 + 32);
  v31 = (v2 + 8);
  v35 = &_swiftEmptyArrayStorage;
  v17 = (a1 + 40);
  *&v13 = 136446210;
  v30 = v13;
  v38 = (v11 + 48);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    v23 = *(v17 - 1);
    v22 = *v17;
    swift_bridgeObjectRetain_n();
    ASCTAPAuthenticatorTransport.init(rawValue:)();
    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10001FAE8(v8, &qword_100035A30, "zT");
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000BC18(v24, qword_100036040);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v18 = swift_slowAlloc();
        v19 = v9;
        v20 = swift_slowAlloc();
        v39 = v20;
        *v18 = v30;
        v21 = sub_100014068(v23, v22, &v39);

        *(v18 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected AS transport: %{public}s", v18, 0xCu);
        sub_10001F5C4(v20);
        v9 = v19;
        v14 = v32;

        v16 = v38;
      }

      else
      {
      }
    }

    else
    {

      (*v37)(v14, v8, v9);
      if (ASCTAPAuthenticatorTransport.isSecurityKeyTransport.getter())
      {
        v27 = v33;
        ASCTAPAuthenticatorTransport.wkRepresentation.getter();
        ASWKCTAPAuthenticatorTransport.rawValue.getter();
        (*v31)(v27, v34);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*v36)(v14, v9);
        v35 = v40;
        v16 = v38;
      }

      else
      {
        (*v36)(v14, v9);
      }
    }

    v17 += 2;
    --v15;
  }

  while (v15);
  return v35;
}

uint64_t sub_10001EE10()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EE58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FCA8;

  return sub_10000FF68(v2, v3, v4);
}

uint64_t sub_10001EF0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001FCA8;

  return sub_1000135D4(v2, v3, v5);
}

uint64_t sub_10001EFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001FCA8;

  return sub_1000136BC(a1, v4, v5, v7);
}

uint64_t sub_10001F098()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F0D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001FCA8;

  return sub_100013B94(a1, v5);
}

uint64_t sub_10001F188(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000137A4;

  return sub_100013B94(a1, v5);
}

uint64_t sub_10001F240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001F288()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F2E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001FCA8;

  return sub_10000FAB8(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10001F3B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000137A4;

  return sub_1000136BC(a1, v4, v5, v7);
}

unint64_t sub_10001F484()
{
  result = qword_100035B20;
  if (!qword_100035B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B20);
  }

  return result;
}

uint64_t sub_10001F4E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001F560(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001F5C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10001F610()
{
  result = qword_100035B78;
  if (!qword_100035B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B78);
  }

  return result;
}

void *sub_10001F664(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001F6A8()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001F708()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001FCA8;

  return sub_10000E96C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10001F7E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10001F824()
{
  result = qword_100035BC8;
  if (!qword_100035BC8)
  {
    sub_10001F88C(255, &qword_100035BC0, CBOR_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BC8);
  }

  return result;
}

uint64_t sub_10001F88C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001F8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D1D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F93C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D1D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001F9A4()
{
  result = qword_100035C30;
  if (!qword_100035C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C30);
  }

  return result;
}

uint64_t sub_10001F9F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001FA40()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10000B954(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D1D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for WebAuthenticationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WebAuthenticationError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001FC3C()
{
  result = qword_100035CD8;
  if (!qword_100035CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CD8);
  }

  return result;
}

void sub_10002016C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  sub_10000A610();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Assertion failed: %{public}@", v5, 0xCu);
}

void sub_1000202F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  sub_10000A610();
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Could not find assertion for identifier: %{public}@", v5, 0xCu);
}

void sub_100020394()
{
  sub_10000A610();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find passkey %{public}@ for %{public}@.", v2, 0x16u);
}

void sub_10002044C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 141558275;
  v4 = 1752392040;
  v5 = 2113;
  v6 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Login choice corresponding to selected credential for %{private, mask.hash}@ not found, should not happen", &v3, 0x16u);
}

Swift::String __swiftcall Data.hexString()()
{
  v0 = Data.hexString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

uint64_t WBSKeychainPasskey.Metadata.subscript.getter()
{
  return WBSKeychainPasskey.Metadata.subscript.getter();
}

{
  return WBSKeychainPasskey.Metadata.subscript.getter();
}

Swift::String __swiftcall Error.loggerDescription()()
{
  v0 = Error.loggerDescription()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}