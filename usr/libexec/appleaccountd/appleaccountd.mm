int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = type metadata accessor for AppleAccountDaemon();
  swift_allocObject();
  v5 = sub_10014B7C8();
  qword_1003D7DA8 = v4;
  unk_1003D7DB0 = &off_1003AAC98;
  qword_1003D7D90 = v5;
  objc_autoreleasePoolPop(v3);
  v6 = objc_autoreleasePoolPush();
  sub_10014EAFC();
  objc_autoreleasePoolPop(v6);
  v7 = [objc_opt_self() currentRunLoop];
  [v7 run];

  return 0;
}

uint64_t variable initialization expression of InheritanceSecurityController._accountStore()
{
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);

  return Dependency.init(dependencyId:config:)();
}

uint64_t variable initialization expression of InheritanceSecurityController._urlBagProvider()
{
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);

  return Dependency.init(dependencyId:config:)();
}

uint64_t sub_100002780(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8218, type metadata accessor for AgeMigrationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000027EC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8218, type metadata accessor for AgeMigrationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002858(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000028C4(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83B0, type metadata accessor for AACustodianError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002930(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83B0, type metadata accessor for AACustodianError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000029A0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002A24(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002A78(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002AD0@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100002B04(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8340, type metadata accessor for AAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002B70(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8340, type metadata accessor for AAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002BDC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100002C48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002C64(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83D8, type metadata accessor for AACustodianRecoveryError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002CD0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D83D8, type metadata accessor for AACustodianRecoveryError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002D3C(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_100002DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002E38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100002E7C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8290, type metadata accessor for EscrowRecordError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002EE8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8290, type metadata accessor for EscrowRecordError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002F54(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002FC0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8258, type metadata accessor for CustodianSystemState);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000302C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8258, type metadata accessor for CustodianSystemState);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003098(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003104(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8008, type metadata accessor for InheritanceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003170(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8008, type metadata accessor for InheritanceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000031DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003270(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8308, type metadata accessor for AASignInError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000032DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8308, type metadata accessor for AASignInError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003348(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

BOOL sub_1000033F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000344C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003524(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8378, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003590(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8378, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000035FC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003668(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000036E0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003760@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000037A4(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82D0, type metadata accessor for AgeAttestationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003810(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82D0, type metadata accessor for AgeAttestationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000387C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000038F8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003964(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000039D0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003AEC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003BC4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003D08(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003D74(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003DE0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003EFC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003F68(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003FD4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000040F0(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000415C(uint64_t a1)
{
  v2 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000041C8(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000042E8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004354(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000043C0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000044DC(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004548(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000045B4(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000046D0(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000473C(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000047A8(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000048B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100007A4C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004904(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004970(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000049DC(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100004AF8(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004B64(uint64_t a1)
{
  v2 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004BD0(void *a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004CDC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004D3C()
{
  sub_1000059E8(&qword_1003D8248, type metadata accessor for AgeMigrationError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100004DC0()
{
  sub_1000059E8(&qword_1003D8140, type metadata accessor for AACustodianError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100004E44()
{
  v2 = *v0;
  sub_1000059E8(&qword_1003D8440, type metadata accessor for Status);
  sub_1000059E8(&qword_1003D8448, type metadata accessor for Status);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004F04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004F30()
{
  sub_1000059E8(&qword_1003D8420, type metadata accessor for AAAnalyticsEvent);
  sub_1000059E8(&qword_1003D8428, type metadata accessor for AAAnalyticsEvent);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004FEC()
{
  sub_1000059E8(&qword_1003D8370, type metadata accessor for AAError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005070()
{
  sub_1000059E8(&qword_1003DA8D0, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000050F4()
{
  sub_1000059E8(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005178()
{
  sub_1000059E8(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo);
  sub_1000059E8(&qword_1003D8438, type metadata accessor for AAFollowUpUserInfo);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005234()
{
  sub_1000059E8(&qword_1003D84E0, type metadata accessor for AAFollowUpIdentifier);
  sub_1000059E8(&qword_1003D84E8, type metadata accessor for AAFollowUpIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000052F0()
{
  sub_1000059E8(&qword_1003D82C0, type metadata accessor for EscrowRecordError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005374()
{
  sub_1000059E8(&qword_1003DF010, type metadata accessor for CustodianSystemState);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000053F8()
{
  sub_1000059E8(&qword_1003D8040, type metadata accessor for InheritanceError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_10000547C()
{
  sub_1000059E8(&qword_1003D8338, type metadata accessor for AASignInError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100005548()
{
  sub_1000059E8(&qword_1003D8410, type metadata accessor for FileAttributeKey);
  sub_1000059E8(&qword_1003D8418, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005604()
{
  sub_1000059E8(&qword_1003D8300, type metadata accessor for AgeAttestationError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100005688()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000056C4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100005718()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000578C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100005814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10000585C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000586C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000588C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000058D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000058F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000059E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005BB0()
{
  result = qword_1003D8030;
  if (!qword_1003D8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8030);
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_100007AC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100007FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100008054()
{
  sub_10000839C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000080B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000080F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000813C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008174()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000081CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_100316334(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000082A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000839C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000083E8()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v11)
    {
      return 1;
    }
  }

  else
  {
    sub_100008D3C(v14, &qword_1003D87C8, qword_100344800);
  }

  if (qword_1003D7F60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB00);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v1;
    *v9 = v1;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client is missing user notifications entitlement: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  return 0;
}

void sub_100008600(void *a1, void (*a2)(void), NSObject *a3)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  if (sub_1000083E8())
  {
    v12 = [a1 title];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v13;

    v14 = [a1 message];
    v35 = a3;
    v15 = v14;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v16;

    v29 = 0x800000010032C620;
    v17 = [a1 action];
    if (v17)
    {
      v18 = 0xD000000000000018;
    }

    else
    {
      v18 = 0xD00000000000002BLL;
    }

    if (v17)
    {
      v19 = "ccountd.accountNotification";
    }

    else
    {
      v19 = "defaultActionURL";
    }

    v20 = v19 | 0x8000000000000000;
    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    v30 = a2;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010032C670;
    *(inited + 48) = 0xD00000000000002BLL;
    *(inited + 56) = v29;
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x800000010032C690;
    *(inited + 80) = v18;
    *(inited + 88) = v20;
    v22 = sub_100308864(inited);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    swift_arrayDestroy();
    v37[0] = v34;
    v37[1] = v33;
    v37[2] = v32;
    v37[3] = v31;
    v37[4] = v22;
    v38 = 3;
    (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC13appleaccountd36AccountUserNotificationDaemonService__notificationManager, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v23 = *sub_1000080F8(v36, v36[3]);
    sub_1002D2E28(v37, v30, v35);

    sub_10000839C(v36);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v35 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v35, v25, "Client is missing user notifications entitlement, rejecting request to trigger user notification.", v26, 2u);
    }

    v27 = v35;
  }
}

uint64_t sub_100008AB4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd36AccountUserNotificationDaemonService__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountUserNotificationDaemonService()
{
  result = qword_1003D86F0;
  if (!qword_1003D86F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008BB8()
{
  sub_100008C58();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100008C58()
{
  if (!qword_1003DC940)
  {
    sub_100008CBC(&unk_1003D9890, &unk_1003405D0);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DC940);
    }
  }
}

uint64_t sub_100008CBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100008D04(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008D3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008D9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008DDC()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v12 == 1)
    {
      return result;
    }
  }

  else
  {
    sub_10000DC50(v11);
  }

  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client is missing attestation entitlement", v8, 2u);
  }

  type metadata accessor for AgeMigrationError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10000DB94();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_100008FCC()
{
  v1[7] = v0;
  v2 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009098, 0, 0);
}

uint64_t sub_100009098()
{
  v1 = v0[7];
  sub_100008DDC();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  (*(v3 + 16))(v2, v0[7] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  sub_1000080F8(v0 + 2, v0[5]);
  v5 = type metadata accessor for AgeMigrationAccountManager();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100009280;

  return (sub_100241DD0)(v5, &off_1003B0AD0);
}

uint64_t sub_100009280()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100009404;
  }

  else
  {
    v3 = sub_100009394;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009394()
{
  v1 = v0[10];
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100009404()
{
  sub_10000839C(v0 + 2);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000095E8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100009690;

  return sub_100008FCC();
}

uint64_t sub_100009690()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v4)
    {
      v7 = *(v2 + 24);
      v8 = _convertErrorToNSError(_:)();

      (v7)[2](v7, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v9 = *(v2 + 24);
    v9[2](v9, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_100009830(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v3 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  v2[57] = v3;
  v4 = *(v3 - 8);
  v2[58] = v4;
  v5 = *(v4 + 64) + 15;
  v2[59] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[60] = v6;
  v7 = *(v6 - 8);
  v2[61] = v7;
  v8 = *(v7 + 64) + 15;
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100009964, 0, 0);
}

uint64_t sub_100009964()
{
  v12 = v0;
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[63] = sub_100008D04(v1, qword_1003FAB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s attempt to display misconfigured age prompt", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = v0[56];
  sub_100008DDC();
  v7 = swift_task_alloc();
  v0[64] = v7;
  *v7 = v0;
  v7[1] = sub_100009B78;
  v8 = v0[55];
  v9 = v0[56];

  return sub_10000B7C0(v8);
}

uint64_t sub_100009B78(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = *(v4 + 496);
    v8 = *(v4 + 472);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 612) = a1 & 1;

    return _swift_task_switch(sub_100009CE0, 0, 0);
  }
}

uint64_t sub_100009CE0()
{
  v27 = v0;
  if (*(v0 + 612) == 1)
  {
    v1 = *(v0 + 504);
    v2 = *(v0 + 440);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 440);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v8 = [v5 bundleID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10021145C(v9, v11, &v26);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "User have seen this alert before for bundleID %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    v13 = *(v0 + 496);
    v14 = *(v0 + 472);

    v15 = *(v0 + 8);

    return v15(1);
  }

  else
  {
    v18 = *(v0 + 488);
    v17 = *(v0 + 496);
    v19 = *(v0 + 480);
    v20 = *(v0 + 448);
    v21 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
    v22 = *(v18 + 16);
    *(v0 + 528) = v22;
    *(v0 + 536) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v17, v20 + v21, v19);
    Dependency.wrappedValue.getter();
    v23 = *(v18 + 8);
    *(v0 + 544) = v23;
    *(v0 + 552) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v17, v19);
    v24 = *(*sub_1000080F8((v0 + 272), *(v0 + 296)) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 392;
    *(v0 + 24) = sub_100009FF8;
    v25 = swift_continuation_init();
    *(v0 + 200) = sub_100005814(&qword_1003D89F0, &unk_10033E700);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10015BF9C;
    *(v0 + 168) = &unk_1003A4560;
    *(v0 + 176) = v25;
    [v24 aa_primaryAppleAccountWithCompletion:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009FF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    v3 = sub_10000A9AC;
  }

  else
  {
    v3 = sub_10000A108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A108()
{
  v78 = v0;
  v1 = v0[49];
  v0[71] = v1;
  if (v1)
  {
    v2 = v0[69];
    v3 = v0[68];
    v4 = v0[67];
    v5 = v0[66];
    v6 = v0[62];
    v7 = v0[60];
    v8 = v0[56];
    sub_10000839C(v0 + 34);
    v9 = (v8 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService);
    v10 = sub_1000080F8(v9, v9[3]);
    v5(v6, *v10 + OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__accountStore, v7);
    Dependency.wrappedValue.getter();
    v3(v6, v7);
    v11 = [*(*sub_1000080F8(v0 + 39 v0[42]) + 16)];
    sub_10000839C(v0 + 39);
    if (v11)
    {
      v12 = [v11 aa_altDSID];

      if (v12)
      {
        v13 = v0[55];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v0[72] = v16;
        v17 = [v13 altDSID];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            v23 = v0[63];

            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 0;
              v27 = "User not eligible for upgrade due to nonprimary account";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        v42 = v0[65];
        v43 = *sub_1000080F8(v9, v9[3]);
        v44 = sub_100321E88();
        if (v42)
        {

          goto LABEL_33;
        }

        if ((v44 & 1) == 0)
        {
LABEL_33:
          v68 = v0[63];

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            v27 = "Account is not eligible for migration";
            goto LABEL_35;
          }

LABEL_36:

          v69 = v0[62];
          v70 = v0[59];

          v71 = v0[1];

          return v71(4);
        }

        v45 = *(v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_ageRangeSettingsProvider);
        v46 = [v45 ageRangeCache];
        if (v46 && (v47 = v46, v48 = [v46 ageRangeSettings], v47, v48))
        {
          v49 = [v48 u18Limit];

          v51 = v49 - 1;
          if (__OFSUB__(v49, 1))
          {
            __break(1u);
          }

          else
          {
            v52 = v0[63];
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v77 = v56;
              *v55 = 136315138;
              *(v55 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v77);
              _os_log_impl(&_mh_execute_header, v53, v54, "%s attempt to display age misconfiguration prompt.", v55, 0xCu);
              sub_10000839C(v56);
            }

            v57 = v0[71];
            v59 = v0[58];
            v58 = v0[59];
            v60 = v0[57];
            (*(v59 + 16))(v58, v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v60);
            Dependency.wrappedValue.getter();
            (*(v59 + 8))(v58, v60);
            v50 = [v57 aa_firstName];
            if (v50)
            {
              v61 = v50;
              v62 = v0[72];

              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              v0[74] = v65;
              v66 = swift_task_alloc();
              v0[75] = v66;
              *v66 = v0;
              v66[1] = sub_10000ADA0;
              v67 = v0[55];

              return sub_10024211C(v67, v63, v65, v51);
            }
          }

          __break(1u);
        }

        else
        {
          v72 = v0[63];
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v73, v74, "Age Provider is not cached... refreshing it now.", v75, 2u);
          }

          v0[10] = v0;
          v0[15] = (v0 + 54);
          v0[11] = sub_10000AA34;
          v76 = swift_continuation_init();
          v0[33] = sub_100005814(&qword_1003D8A08, &qword_10033E738);
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_10000B070;
          v0[29] = &unk_1003A4588;
          v0[30] = v76;
          [v45 refreshAgeRangeWithCompletion:v0 + 26];
          v50 = v0 + 10;
        }

        return _swift_continuation_await(v50);
      }
    }

    v28 = v0[63];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Not supported for non-primary apple account", v31, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    v0[53] = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v0[52];
    swift_willThrow();
  }

  else
  {
    v33 = v0[63];
    sub_10000839C(v0 + 34);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not supported for not having an apple account", v36, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    v0[51] = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v0[50];
    swift_willThrow();
  }

  v38 = v0[62];
  v39 = v0[59];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10000A9AC()
{
  v1 = v0[70];
  swift_willThrow();
  sub_10000839C(v0 + 34);
  v2 = v0[70];
  v3 = v0[62];
  v4 = v0[59];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000AA34()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 584) = v3;
  if (v3)
  {
    v4 = *(v1 + 576);

    v5 = sub_10000AFE8;
  }

  else
  {
    v5 = sub_10000AB4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10000AB4C()
{
  v22 = v0;
  v1 = v0[54];
  v2 = [v1 u18Limit];

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v0[63];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032C970, &v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s attempt to display age misconfiguration prompt.", v7, 0xCu);
    sub_10000839C(v8);
  }

  v9 = v0[71];
  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[57];
  (*(v11 + 16))(v10, v0[56] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  v13 = [v9 aa_firstName];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = v0[72];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v0[74] = v18;
  v19 = swift_task_alloc();
  v0[75] = v19;
  *v19 = v0;
  v19[1] = sub_10000ADA0;
  v20 = v0[55];

  sub_10024211C(v20, v16, v18, v3);
}

uint64_t sub_10000ADA0(int a1)
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v5 = *v1;
  *(*v1 + 608) = a1;

  return _swift_task_switch(sub_10000AEC0, 0, 0);
}

uint64_t sub_10000AEC0()
{
  v1 = *(v0 + 504);
  sub_10000839C((v0 + 352));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 608);
    v5 = *(v0 + 568);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "user selected: %d", v6, 8u);
  }

  else
  {
    v7 = *(v0 + 568);

    v2 = v7;
  }

  v8 = *(v0 + 608);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);

  v11 = *(v0 + 8);

  return v11(v8);
}

uint64_t sub_10000AFE8()
{
  v1 = v0[73];
  v2 = v0[71];
  swift_willThrow();

  v3 = v0[73];
  v4 = v0[62];
  v5 = v0[59];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000B070(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000080F8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000B2D4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000B398;

  return sub_100009830(v5);
}

uint64_t sub_10000B398(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v1)
  {
    if (v6)
    {
      v10 = *(v4 + 32);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, 0, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v4 + 32);
    v12[2](v12, a1, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_10000B6F0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000EF58;

  return sub_10000DCB8();
}

uint64_t sub_10000B7C0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10000B88C, 0, 0);
}

uint64_t sub_10000B88C()
{
  v1 = v0;
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  (*(v1[30] + 16))(v1[31], v1[28] + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore, v1[29]);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v5 = *(*sub_1000080F8(v1 + 18, v1[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10000BA14;
  v6 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003A4538;
  v0[14] = v6;
  [v5 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BA14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10000BF78;
  }

  else
  {
    v3 = sub_10000BB24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000BB24()
{
  v35 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    sub_10000839C((v0 + 144));
    v2 = [v1 aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    if (v2)
    {
      v3 = v2;
      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v4 + 16))
      {
        v5 = [*(v0 + 216) bundleID];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if (*(v4 + 16))
        {
          v9 = sub_1003084DC(v6, v8);
          v11 = v10;

          if (v11)
          {
            v12 = *(*(v4 + 56) + 8 * v9);

LABEL_16:

            if (qword_1003D7F90 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            sub_100008D04(v22, qword_1003FAB90);

            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v34[0] = swift_slowAlloc();
              *v25 = 136315394;
              if (v12)
              {
                v26 = 7562585;
              }

              else
              {
                v26 = 28494;
              }

              if (v12)
              {
                v27 = 0xE300000000000000;
              }

              else
              {
                v27 = 0xE200000000000000;
              }

              v28 = sub_10021145C(v26, v27, v34);

              *(v25 + 4) = v28;
              *(v25 + 12) = 2080;
              *(v0 + 208) = v12;
              sub_100005814(&qword_1003D89F8, &qword_10033E728);
              v29 = String.init<A>(describing:)();
              v31 = sub_10021145C(v29, v30, v34);

              *(v25 + 14) = v31;
              _os_log_impl(&_mh_execute_header, v23, v24, "User has seen alert in general. Did user see this for this bundle? %s, details %s", v25, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v21 = 1;
            goto LABEL_28;
          }
        }

        else
        {
        }

        v12 = 0;
        goto LABEL_16;
      }
    }

    v21 = 0;
LABEL_28:
    v32 = *(v0 + 248);

    v19 = *(v0 + 8);
    v20 = v21;
    goto LABEL_29;
  }

  sub_10000839C((v0 + 144));
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAB90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Missing apple account", v16, 2u);
  }

  type metadata accessor for AgeMigrationError(0);
  *(v0 + 200) = -5004;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10000DB94();
  _BridgedStoredNSError.init(_:userInfo:)();
  v17 = *(v0 + 192);
  swift_willThrow();
  v18 = *(v0 + 248);

  v19 = *(v0 + 8);
  v20 = 0;
LABEL_29:

  return v19(v20);
}

uint64_t sub_10000BF78()
{
  v1 = v0[32];
  swift_willThrow();
  sub_10000839C(v0 + 18);
  v2 = v0[31];
  v3 = v0[32];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10000C180(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000C244;

  return sub_10000B7C0(v5);
}

uint64_t sub_10000C244(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v1)
  {
    if (v6)
    {
      v10 = *(v4 + 32);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, 0, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v4 + 32);
    v12[2](v12, a1 & 1, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_10000C410(uint64_t a1, int a2)
{
  *(v3 + 544) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v3 + 440) = v4;
  v5 = *(v4 - 8);
  *(v3 + 448) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_10000C4E0, 0, 0);
}

uint64_t sub_10000C4E0()
{
  v1 = v0[54];
  sub_100008DDC();
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v6 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v0[58] = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v7 = *(v3 + 16);
  v0[59] = v7;
  v0[60] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v4 + v6, v5);
  Dependency.wrappedValue.getter();
  v8 = *(v3 + 8);
  v0[61] = v8;
  v0[62] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v5);
  v9 = *(*sub_1000080F8(v0 + 34, v0[37]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 48;
  v0[3] = sub_10000C6E0;
  v10 = swift_continuation_init();
  v0[33] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10015BF9C;
  v0[29] = &unk_1003A4510;
  v0[30] = v10;
  [v9 aa_primaryAppleAccountWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C6E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_10000CF60;
  }

  else
  {
    v3 = sub_10000C7F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C7F0()
{
  v58 = v0;
  v1 = *(v0 + 384);
  *(v0 + 512) = v1;
  if (!v1)
  {
    sub_10000839C((v0 + 272));
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAB90);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing apple account", v23, 2u);
    }

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 400) = -5004;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = *(v0 + 392);
    swift_willThrow();
    v25 = *(v0 + 456);

    v19 = *(v0 + 8);
    goto LABEL_17;
  }

  v2 = *(v0 + 424);
  sub_10000839C((v0 + 272));
  v3 = [v2 bundleID];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v1 aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:v3];

  if (v4)
  {
    v5 = *(v0 + 424);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v5 bundleID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (*(v6 + 16))
    {
      v11 = sub_1003084DC(v8, v10);
      v13 = v12;

      if (v13)
      {
        sub_10000DB1C(*(v6 + 56) + 32 * v11, v0 + 352);

        sub_10000DC50(v0 + 352);
        if (qword_1003D7F90 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100008D04(v14, qword_1003FAB90);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "User has seen this for this bundle, nothing to cache", v17, 2u);
        }

        v18 = *(v0 + 456);

        v19 = *(v0 + 8);
LABEL_17:

        return v19();
      }
    }

    else
    {
    }

    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    sub_10000DC50(v0 + 352);
  }

  v27 = *(v0 + 544);
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x800000010032C8E0;
  *(inited + 48) = v27;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 80) = 0xD000000000000021;
  *(inited + 88) = 0x800000010032C910;
  *(inited + 120) = type metadata accessor for Date();
  sub_10000DBEC((inited + 96));
  Date.init()();
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  swift_arrayDestroy();
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 424);
  v30 = type metadata accessor for Logger();
  *(v0 + 520) = sub_100008D04(v30, qword_1003FAB90);
  v31 = v29;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 424);
    v35 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v35 = 136315394;
    v36 = [v34 bundleID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10021145C(v37, v39, v57);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = Dictionary.description.getter();
    v43 = sub_10021145C(v41, v42, v57);

    *(v35 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "Saving user action for bundle %s with actionDateToSave %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  v56 = v1;
  v44 = [*(v0 + 424) bundleID];
  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
  }

  v54 = *(v0 + 488);
  v55 = *(v0 + 496);
  v45 = *(v0 + 472);
  v46 = *(v0 + 480);
  v48 = *(v0 + 456);
  v47 = *(v0 + 464);
  v50 = *(v0 + 432);
  v49 = *(v0 + 440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:v44 actionDetails:isa];

  v45(v48, v50 + v47, v49);
  Dependency.wrappedValue.getter();
  v54(v48, v49);
  v52 = *sub_1000080F8((v0 + 312), *(v0 + 336));
  v53 = swift_task_alloc();
  *(v0 + 528) = v53;
  *v53 = v0;
  v53[1] = sub_10000CFDC;

  return sub_10015B998(v56);
}

uint64_t sub_10000CF60()
{
  v1 = v0[63];
  swift_willThrow();
  sub_10000839C(v0 + 34);
  v2 = v0[63];
  v3 = v0[57];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000CFDC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v7 = sub_10000D270;
  }

  else
  {
    *(v4 + 548) = a1 & 1;
    v7 = sub_10000D108;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000D108()
{
  v1 = *(v0 + 548);
  sub_10000839C((v0 + 312));
  if (v1)
  {
    v2 = *(v0 + 456);

    v3 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 520);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save account property for user acknowledgment of misconfigured age prompt", v7, 2u);
    }

    v8 = *(v0 + 512);

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 416) = -5005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = *(v0 + 408);
    swift_willThrow();

    v10 = *(v0 + 456);

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_10000D270()
{
  sub_10000839C((v0 + 312));
  v1 = *(v0 + 536);
  v2 = *(v0 + 456);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000D478(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000D544;

  return sub_10000C410(v7, a2);
}

uint64_t sub_10000D544()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v4)
    {
      v8 = *(v2 + 32);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v10 = *(v2 + 32);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_10000D704()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__ageMigrationAccountManager;
  v2 = sub_100005814(&qword_1003D8A00, &qword_10033E730);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__akAccountManager;
  v4 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService));

  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AgeMigrationDaemonService()
{
  result = qword_1003D8878;
  if (!qword_1003D8878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D8C0()
{
  sub_10000DAB8(319, &unk_1003D8888, &qword_1003DF6C0, &unk_10033E6D0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DA14();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000DA14()
{
  if (!qword_1003DB710)
  {
    sub_10000DA6C();
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB710);
    }
  }
}

unint64_t sub_10000DA6C()
{
  result = qword_1003DF5C0;
  if (!qword_1003DF5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF5C0);
  }

  return result;
}

void sub_10000DAB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100008CBC(a3, a4);
    v5 = type metadata accessor for Dependency();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000DB94()
{
  result = qword_1003D8248;
  if (!qword_1003D8248)
  {
    type metadata accessor for AgeMigrationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8248);
  }

  return result;
}

uint64_t *sub_10000DBEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DC50(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003D87C8, qword_100344800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DCB8()
{
  v1[31] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10000DD84, 0, 0);
}

uint64_t sub_10000DD84()
{
  v1 = v0[31];
  sub_100008DDC();
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v0[35] = OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService__accountStore;
  v7 = *(v3 + 16);
  v0[36] = v7;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v4 + v6, v5);
  Dependency.wrappedValue.getter();
  v8 = *(v3 + 8);
  v0[38] = v8;
  v0[39] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v5);
  v9 = *(*sub_1000080F8(v0 + 18, v0[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_10000DF84;
  v10 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003A4718;
  v0[14] = v10;
  [v9 aa_primaryAppleAccountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000DF84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_10000E3E4;
  }

  else
  {
    v3 = sub_10000E094;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E094()
{
  v1 = v0[28];
  v0[41] = v1;
  if (v1)
  {
    v3 = v0[38];
    v2 = v0[39];
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[34];
    v7 = v0[35];
    v9 = v0[31];
    v8 = v0[32];
    sub_10000839C(v0 + 18);
    [v1 aa_clearUserAcknowledgeMigrationAlertForAllBundles];
    v5(v6, v9 + v7, v8);
    Dependency.wrappedValue.getter();
    v3(v6, v8);
    v10 = *sub_1000080F8(v0 + 23, v0[26]);
    v11 = swift_task_alloc();
    v0[42] = v11;
    *v11 = v0;
    v11[1] = sub_10000E2B8;

    return sub_10015B998(v1);
  }

  else
  {
    sub_10000839C(v0 + 18);
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAB90);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "missing apple account", v16, 2u);
    }

    v17 = v0[34];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10000E2B8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_10000E60C;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v7 = sub_10000E460;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000E3E4()
{
  v1 = v0[40];
  swift_willThrow();
  sub_10000839C(v0 + 18);
  v2 = v0[40];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000E460()
{
  v1 = *(v0 + 352);
  sub_10000839C((v0 + 184));
  if (v1)
  {

    v2 = *(v0 + 272);

    v3 = *(v0 + 8);
  }

  else
  {
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAB90);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save account when clearing user acknowledge migration prompt", v7, 2u);
    }

    v8 = *(v0 + 328);

    type metadata accessor for AgeMigrationError(0);
    *(v0 + 240) = -5005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10000DB94();
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = *(v0 + 232);
    swift_willThrow();

    v10 = *(v0 + 272);

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_10000E60C()
{
  sub_10000839C((v0 + 184));
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000E680(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:v6];

  if (v7)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB90);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_10021145C(a2, a3, v20);
      *(v12 + 12) = 2080;
      v13 = Dictionary.description.getter();
      v15 = sub_10021145C(v13, v14, v20);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "User has seen alert in general. Did user see this for this bundle %s with detail %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v8 + 16) && (v16 = sub_1003084DC(0xD000000000000023, 0x800000010032C8E0), (v17 & 1) != 0))
    {
      sub_10000DB1C(*(v8 + 56) + 32 * v16, v20);

      if (swift_dynamicCast())
      {
        return v19;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_10000E908()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E950()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EF88;

  return sub_10000D478(v2, v3, v5, v4);
}

uint64_t sub_10000EA14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EF88;

  return sub_100164750(v2, v3, v5);
}

uint64_t sub_10000EAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_10015C884(a1, v4, v5, v7);
}

uint64_t sub_10000EBA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10000C180(v2, v3, v4);
}

uint64_t sub_10000EC58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10000B6F0(v2, v3, v4);
}

uint64_t sub_10000ED0C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ED54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082A8;

  return sub_10000B2D4(v2, v3, v4);
}

uint64_t sub_10000EE08()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EE48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000EF88;

  return sub_1000095E8(v2, v3);
}

uint64_t sub_10000EEF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10000EF8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(), uint64_t a5)
{
  v11 = [*(*sub_1000080F8((v5 + 16) *(v5 + 40)) + 16)];
  if (v11)
  {
    v16 = v11;
    sub_10000F188(a1, v11, a2, a3, a4, a5);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not logged in to AppleAccount, unable to perform cleanup", v15, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a4();
  }
}

void sub_10000F188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a5;
  v54 = a6;
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v55 = a1;
  v8 = type metadata accessor for CustodianRecord();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = __chkstk_darwin(v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = kAAAnalyticsEventCustodianSetupCleanupRevokeCustodianFromServer;
  v14 = *(*sub_1000080F8(v7 + 2, v7[5]) + 16);
  v15 = v13;
  v16 = [v14 aa_primaryAppleAccount];
  if (v16 && (v17 = v16, v18 = [v16 aa_altDSID], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_100012004();
  v22 = v57;

  v50 = sub_100245D38(v15, v19, v21, v56, v22);
  v23 = [objc_allocWithZone(AKCustodianContext) init];
  v24 = [v49 aa_altDSID];
  [v23 setAltDSID:v24];

  v25 = v55;
  v26 = v55 + *(v8 + 20);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v23 setCustodianUUID:isa];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAA88);
  sub_100012050(v25, v12);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v58 = v32;
    *v31 = 136315138;
    v33 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    sub_1000120B4(v12);
    v37 = sub_10021145C(v34, v36, &v58);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Revoke from IdMS %s", v31, 0xCu);
    sub_10000839C(v32);

    v25 = v55;
  }

  else
  {

    sub_1000120B4(v12);
  }

  sub_1000080F8(v7 + 12, v7[15]);
  v38 = v52;
  sub_100012050(v25, v52);
  v39 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v40 = (v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v50;
  *(v42 + 16) = v50;
  *(v42 + 24) = v7;
  sub_100012378(v38, v42 + v39);
  v44 = (v42 + v40);
  v45 = v57;
  *v44 = v56;
  v44[1] = v45;
  v46 = (v42 + v41);
  v47 = v54;
  *v46 = v53;
  v46[1] = v47;
  v48 = v43;

  sub_10011A0A4(v23, sub_1000123DC, v42);
}

uint64_t sub_10000F618()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianCleanupController()
{
  result = qword_1003D8A40;
  if (!qword_1003D8A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F734()
{
  sub_10000F7D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000F7D4()
{
  if (!qword_1003D8A50[0])
  {
    sub_100008CBC(&qword_1003D9AE0, &qword_10033E8A0);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, qword_1003D8A50);
    }
  }
}

void sub_10000F838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  if (a2)
  {
    if (a1)
    {
      v19 = _convertErrorToNSError(_:)();
    }

    else
    {
      v19 = 0;
    }

    [a2 updateTaskResultWithError:v19];
  }

  (*(v15 + 16))(v18, a3 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v21, v27, "idMS revoke successful", v28, 2u);
    }

    goto LABEL_15;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA88);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = _convertErrorToNSError(_:)();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error revoking with idMS: %@", v23, 0xCu);
    sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

LABEL_15:

    goto LABEL_17;
  }

LABEL_17:
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAA88);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Continuing to Remove CRK on OT", v32, 2u);
  }

  sub_10000FC68(a4, a5, a6, v34, v35);
}

void sub_10000FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v60 = a5;
  v54 = type metadata accessor for CustodianRecord();
  v56 = *(v54 - 8);
  v10 = *(v56 + 64);
  v11 = __chkstk_darwin(v54);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = [*(*sub_1000080F8((v5 + 16) *(v5 + 40)) + 16)];
  if (v14 && (v15 = v14, v16 = [v14 aa_altDSID], v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100012004();
  v20 = kAAAnalyticsEventCustodianSetupCleanupDeleteRecoveryKeyByCustodianIDFromSecurity;

  v21 = v20;

  v55 = v17;
  v58 = a2;
  v52 = sub_100245D38(v21, v17, v19, a2, a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v53 = v19;
  v61 = a3;
  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAA88);
  sub_100012050(a1, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v51 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v62 = v27;
    *v26 = 136315138;
    v28 = v54;
    v29 = *(v54 + 20);
    type metadata accessor for UUID();
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1000120B4(v13);
    v33 = sub_10021145C(v30, v32, &v62);

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Removing CRK for custodianID: %s", v26, 0xCu);
    sub_10000839C(v27);

    a1 = v51;
  }

  else
  {

    sub_1000120B4(v13);
    v28 = v54;
  }

  v34 = sub_1000080F8((v6 + 136), *(v6 + 160));
  v54 = *(v28 + 20);
  v35 = a1;
  v36 = v57;
  sub_100012050(a1, v57);
  v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v52;
  *(v40 + 16) = v52;
  *(v40 + 24) = v6;
  sub_100012378(v36, v40 + v37);
  v42 = (v40 + v38);
  v43 = v53;
  *v42 = v55;
  v42[1] = v43;
  v44 = (v40 + v39);
  v45 = v59;
  v47 = v60;
  v46 = v61;
  *v44 = v58;
  v44[1] = v46;
  v48 = (v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v48 = v45;
  v48[1] = v47;
  v49 = *v34;
  v50 = v41;

  sub_1000172AC(v35 + v54, sub_100012700, v40);
}

void sub_1000100C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v125 = a7;
  v114 = a5;
  v115 = a6;
  v130 = a3;
  v14 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v121 = &v109 - v16;
  v17 = type metadata accessor for UUID();
  v124 = *(v17 - 8);
  v18 = *(v124 + 64);
  v19 = __chkstk_darwin(v17);
  v120 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v122 = &v109 - v22;
  v119 = v23;
  __chkstk_darwin(v21);
  v129 = &v109 - v24;
  v128 = type metadata accessor for CustodianRecord();
  v116 = *(v128 - 8);
  v25 = *(v116 + 64);
  v26 = __chkstk_darwin(v128);
  v118 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v123 = &v109 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v109 - v31;
  v117 = v33;
  __chkstk_darwin(v30);
  v35 = &v109 - v34;
  v36 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v109 - v39;
  v127 = a4;
  if (a2)
  {
    if (a1)
    {
      v41 = _convertErrorToNSError(_:)();
    }

    else
    {
      v41 = 0;
    }

    [a2 updateTaskResultWithError:v41];

    a4 = v127;
  }

  (*(v37 + 16))(v40, v130 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v36);
  Dependency.wrappedValue.getter();
  (*(v37 + 8))(v40, v36);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  v126 = a8;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAA88);
    sub_100012050(a4, v32);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v43, v44))
    {

      sub_1000120B4(v32);
      v55 = v17;
      v68 = v123;
      v67 = v124;
      v69 = v121;
      v70 = v122;
      v56 = v128;
      goto LABEL_19;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v131[0] = v47;
    *v45 = 136315394;
    v48 = *(v128 + 20);
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1000120B4(v32);
    v52 = sub_10021145C(v49, v51, v131);
    v53 = v128;

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    swift_errorRetain();
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    *v46 = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Error removing CRK for custodianID: %s %@", v45, 0x16u);
    sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);
    a4 = v127;

    sub_10000839C(v47);

    v55 = v17;

    v56 = v53;
  }

  else
  {
    v56 = v128;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAA88);
    sub_100012050(a4, v35);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    v55 = v17;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v131[0] = v61;
      *v60 = 136315138;
      v62 = *(v56 + 20);
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      sub_1000120B4(v35);
      v66 = sub_10021145C(v63, v65, v131);
      v56 = v128;

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Success removing CRK for custodianID: %s", v60, 0xCu);
      sub_10000839C(v61);
    }

    else
    {

      sub_1000120B4(v35);
    }

    a4 = v127;
  }

  v68 = v123;
  v67 = v124;
  v69 = v121;
  v70 = v122;
LABEL_19:
  sub_100012D04(a4 + *(v56 + 64), v69, &qword_1003D8B60, &unk_10033F210);
  v71 = (*(v67 + 48))(v69, 1, v55);
  v72 = v129;
  if (v71 == 1)
  {
    sub_100008D3C(v69, &qword_1003D8B60, &unk_10033F210);
    sub_1000114D0(a4 + *(v56 + 20), v125, v126, a9, a10);
  }

  else
  {
    v121 = a9;
    v122 = a10;
    v112 = *(v67 + 32);
    v113 = v67 + 32;
    v112(v129, v69, v55);
    sub_100012004();
    v73 = kAAAnalyticsEventCustodianSetupCleanupDeleteRecoveryKeyByOctagonIDFromSecurity;
    v74 = v126;

    v75 = v73;
    v76 = v115;

    v115 = sub_100245D38(v75, v114, v76, v125, v74);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100008D04(v77, qword_1003FAA88);
    v111 = *(v67 + 16);
    v111(v70, v72, v55);
    sub_100012050(a4, v68);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = v70;
      v81 = swift_slowAlloc();
      v131[0] = swift_slowAlloc();
      *v81 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = *(v124 + 8);
      v110 = (v124 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v114 = v85;
      v85(v80, v55);
      v86 = sub_10021145C(v82, v84, v131);
      a4 = v127;

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      v87 = v123;
      v88 = &v123[*(v128 + 20)];
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      sub_1000120B4(v87);
      v92 = sub_10021145C(v89, v91, v131);
      v67 = v124;

      *(v81 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v78, v79, "Removing CRK for otPeerID:%s for custodian:%s", v81, 0x16u);
      swift_arrayDestroy();
      v72 = v129;
    }

    else
    {

      sub_1000120B4(v68);
      v93 = *(v67 + 8);
      v110 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v114 = v93;
      v93(v70, v55);
    }

    v94 = v130;
    v128 = sub_1000080F8((v130 + 136), *(v130 + 160));
    v95 = v120;
    v111(v120, v72, v55);
    v96 = v118;
    sub_100012050(a4, v118);
    v97 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v98 = (v119 + *(v116 + 80) + v97) & ~*(v116 + 80);
    v99 = (v117 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    v101 = v115;
    *(v100 + 16) = v115;
    *(v100 + 24) = v94;
    v112(v100 + v97, v95, v55);
    sub_100012378(v96, v100 + v98);
    v102 = (v100 + v99);
    v103 = v126;
    *v102 = v125;
    v102[1] = v103;
    v104 = (v100 + ((v99 + 23) & 0xFFFFFFFFFFFFFFF8));
    v105 = v122;
    *v104 = v121;
    v104[1] = v105;
    v106 = *v128;
    v107 = v101;

    v108 = v129;
    sub_1000172AC(v129, sub_100012A2C, v100);

    v114(v108, v55);
  }
}

void sub_100010CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v83 = a7;
  v84 = a8;
  v82 = a6;
  v80 = a9;
  v79 = type metadata accessor for CustodianRecord();
  v13 = *(*(v79 - 8) + 64);
  v14 = __chkstk_darwin(v79);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v74 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v76 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v78 = &v74 - v23;
  v24 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v29 = &v74 - v28;
  if (a2)
  {
    v81 = a4;
    v75 = v17;
    v30 = v19;
    v31 = v18;
    v32 = a5;
    v33 = v27;
    if (a1)
    {
      v34 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v34 = 0;
    }

    [a2 updateTaskResultWithError:v34];

    v27 = v33;
    a5 = v32;
    v18 = v31;
    v19 = v30;
    v17 = v75;
    a4 = v81;
  }

  v35 = *(v25 + 16);
  v81 = v27;
  v35(v29, v27 + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v24);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v29, v24);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAA88);
    v59 = v76;
    (*(v19 + 16))(v76, a4, v18);
    v78 = a5;
    v60 = v77;
    sub_100012050(a5, v77);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v63 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v59;
      v67 = v66;
      (*(v19 + 8))(v65, v18);
      v68 = sub_10021145C(v64, v67, &v85);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      v47 = v79;
      v69 = v60 + *(v79 + 20);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_1000120B4(v60);
      v73 = sub_10021145C(v70, v72, &v85);

      *(v63 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "Success removing CRK for otPeerID:%s for custodian:%s", v63, 0x16u);
      swift_arrayDestroy();

      a5 = v78;
      goto LABEL_18;
    }

    sub_1000120B4(v60);
    (*(v19 + 8))(v59, v18);
    a5 = v78;
LABEL_17:
    v47 = v79;
    goto LABEL_18;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAA88);
  v37 = v78;
  (*(v19 + 16))(v78, a4, v18);
  sub_100012050(a5, v17);
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v38, v39))
  {

    sub_1000120B4(v17);
    (*(v19 + 8))(v37, v18);
    goto LABEL_17;
  }

  v40 = v18;
  v41 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v85 = v77;
  *v41 = 136315650;
  sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
  LODWORD(v75) = v39;
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v37;
  v45 = v44;
  (*(v19 + 8))(v43, v40);
  v46 = sub_10021145C(v42, v45, &v85);

  *(v41 + 4) = v46;
  *(v41 + 12) = 2080;
  v47 = v79;
  v48 = &v17[*(v79 + 20)];
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  v50 = v17;
  v52 = v51;
  sub_1000120B4(v50);
  v53 = sub_10021145C(v49, v52, &v85);
  v54 = a5;
  v55 = v53;

  *(v41 + 14) = v55;
  a5 = v54;
  *(v41 + 22) = 2112;
  swift_errorRetain();
  v56 = _swift_stdlib_bridgeErrorToNSError();
  *(v41 + 24) = v56;
  v57 = v76;
  *v76 = v56;
  _os_log_impl(&_mh_execute_header, v38, v75, "Error removing CRK for otPeerID:%s for custodian:%s %@", v41, 0x20u);
  sub_100008D3C(v57, &unk_1003D9140, &qword_10033E640);

  swift_arrayDestroy();

LABEL_18:
  sub_1000114D0(a5 + *(v47 + 20), v82, v83, v84, v80);
}

void sub_1000114D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v56 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = kAAAnalyticsEventCustodianSetupCleanupDeleteCustodianshipRecordFromCloud;
  v16 = *(v5 + 40);
  v52 = v5;
  v17 = *(*sub_1000080F8((v5 + 16), v16) + 16);
  v18 = v15;
  v19 = [v17 aa_primaryAppleAccount];
  if (v19 && (v20 = v19, v21 = [v19 aa_altDSID], v20, v21))
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_100012004();

  v50 = sub_100245D38(v18, v22, v24, a2, a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);
  v26 = *(v9 + 16);
  v26(v14, v56, v8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v26;
    v31 = v30;
    v57 = v30;
    *v29 = 136315138;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v9 + 8))(v14, v8);
    v35 = sub_10021145C(v32, v34, &v57);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Deleting Custodianship records for %s", v29, 0xCu);
    sub_10000839C(v31);
    v26 = v49;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v36 = sub_1000080F8((v52 + 56), *(v52 + 80));
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v53;
  v39 = v56;
  v26(v53, v56, v8);
  v40 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v41 = (v51 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v50;
  *(v42 + 16) = v50;
  *(v42 + 24) = v37;
  (*(v9 + 32))(v42 + v40, v38, v8);
  v44 = (v42 + v41);
  v45 = v55;
  *v44 = v54;
  v44[1] = v45;
  v46 = *v36;
  v47 = v43;

  sub_10002F408(v39, sub_100012C60, v42);
}

uint64_t sub_10001194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v53 = a4;
  v8 = type metadata accessor for UUID();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = __chkstk_darwin(v8);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v52 - v16);
  v18 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  if (a2)
  {
    sub_1000D2578(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v19 + 16))(v22, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianCleanupController__analyticsReporter, v18);
    Dependency.wrappedValue.getter();

    (*(v19 + 8))(v22, v18);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v17, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v17;
    v26 = v54;
    v25 = v55;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = v52;
    (*(v26 + 16))(v52, v53, v25);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v31 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v28;
      v37 = v36;
      (*(v26 + 8))(v35, v25);
      v38 = sub_10021145C(v34, v37, &v58);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      v39 = _convertErrorToNSError(_:)();
      *(v31 + 14) = v39;
      *v32 = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error deleting custodianship records for %s %@", v31, 0x16u);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v33);
    }

    else
    {

      (*(v26 + 8))(v28, v25);
    }

    swift_errorRetain();
    v57(v24);
  }

  else
  {
    v41 = v54;
    v40 = v55;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAA88);
    (*(v41 + 16))(v13, v53, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58 = v46;
      *v45 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v41 + 8))(v13, v40);
      v50 = sub_10021145C(v47, v49, &v58);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Deleted Custodianship records for %s", v45, 0xCu);
      sub_10000839C(v46);
    }

    else
    {

      (*(v41 + 8))(v13, v40);
    }

    v57(0);
    return sub_100008D3C(v17, &unk_1003D9220, &unk_10033E8C0);
  }
}

unint64_t sub_100012004()
{
  result = qword_1003D8B40;
  if (!qword_1003D8B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D8B40);
  }

  return result;
}

uint64_t sub_100012050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000120B4(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012110()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3, v7);
  v9(v0 + v3 + v1[5], v7);
  v10 = *(v0 + v3 + v1[6] + 8);

  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = *(v0 + v3 + v1[8] + 8);

  v13 = (v0 + v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v15 = *(v6 + v1[13] + 8);

  v16 = *(v6 + v1[14] + 8);

  v17 = v1[16];
  if (!(*(v8 + 48))(v6 + v17, 1, v7))
  {
    v9(v6 + v17, v7);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v18 + 8);

  v21 = *(v0 + v19 + 8);

  return _swift_deallocObject(v0, v19 + 16, v2 | 7);
}

uint64_t sub_100012324(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100012378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000123DC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);

  sub_10000F838(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_100012490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000124D8()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3, v7);
  v9(v0 + v3 + v1[5], v7);
  v10 = *(v0 + v3 + v1[6] + 8);

  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = *(v0 + v3 + v1[8] + 8);

  v13 = (v0 + v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v15 = *(v6 + v1[13] + 8);

  v16 = *(v6 + v1[14] + 8);

  v17 = v1[16];
  if (!(*(v8 + 48))(v6 + v17, 1, v7))
  {
    v9(v6 + v17, v7);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v18 + 8);

  v22 = *(v0 + v19 + 8);

  v23 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

void sub_100012700(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1000100C0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000127C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CustodianRecord();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v25 = *(*(v6 - 1) + 64);

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = v0 + v8;
  v10(v0 + v8, v1);
  v10(v0 + v8 + v6[5], v1);
  v12 = *(v0 + v8 + v6[6] + 8);

  v13 = *(v0 + v8 + v6[7] + 8);

  v14 = *(v0 + v8 + v6[8] + 8);

  v15 = (v0 + v8 + v6[10]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100012324(*v15, v16);
  }

  sub_100012324(*(v11 + v6[11]), *(v11 + v6[11] + 8));
  v17 = *(v11 + v6[13] + 8);

  v18 = *(v11 + v6[14] + 8);

  v19 = v6[16];
  if (!(*(v2 + 48))(v11 + v19, 1, v1))
  {
    v10(v11 + v19, v1);
  }

  v20 = (v25 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v20 + 8);

  v23 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16, v3 | v7 | 7);
}

void sub_100012A2C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CustodianRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100010CC8(a1, *(v1 + 16), *(v1 + 24), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100012B44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012B7C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100012C60(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10001194C(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_100012D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_100012D6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    if (qword_1003D7EC8 != -1)
    {
      swift_once();
    }

    v7 = objc_allocWithZone(NSUbiquitousKeyValueStore);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithStoreIdentifier:v8 type:a2];

    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_100012E4C()
{
  v1 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask);
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;

    v6 = sub_1000135AC(0, 0, v4, &unk_10033EA08, v8);
    v9 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100012F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100012FB0, 0, 0);
}

uint64_t sub_100012FB0()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100013084;
  v3 = v0[2];
  v4 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000017, 0x800000010032CB90, sub_100015EB4, v4, &type metadata for Bool);
}

uint64_t sub_100013084()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000131B8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000131D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock[-1] - v7;
  v9 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &aBlock[-1] - v12;
  (*(v10 + 16))(&aBlock[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore__cloudKitStorageManager, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v16 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100015F50;
  *(v17 + 24) = v15;
  aBlock[4] = sub_100016014;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003A49B0;
  v18 = _Block_copy(aBlock);

  [v16 accountInfoWithCompletionHandler:v18];
  _Block_release(v18);

  return sub_10000839C(v22);
}

uint64_t sub_10001351C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000135AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100012D04(a3, v24 - v10, &qword_1003DABF0, &qword_10033F8A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008D3C(v11, &qword_1003DABF0, &qword_10033F8A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100013858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_10001387C, 0, 0);
}

uint64_t sub_10001387C()
{
  v1 = v0[9];
  v2 = sub_100012E4C();
  v0[10] = v2;
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  *v4 = v0;
  v4[1] = sub_100013950;

  return Task.value.getter(v0 + 13, v2, &type metadata for Bool, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100013950()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100013C38;
  }

  else
  {
    v4 = sub_100013A80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013A80()
{
  v1 = *(v0 + 72);
  if (*(v0 + 104) == 1)
  {
    v2 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS;
    v3 = 2;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS;
    v3 = 0;
  }

  v4 = sub_100012D6C(v2, v3);
  sub_100012D04(*(v0 + 48), v0 + 16, &qword_1003D87C8, qword_100344800);
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = sub_1000080F8((v0 + 16), *(v0 + 40));
    v7 = *(v5 - 8);
    v8 = *(v7 + 64) + 15;
    v9 = swift_task_alloc();
    (*(v7 + 16))(v9, v6, v5);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);

    sub_10000839C((v0 + 16));
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = String._bridgeToObjectiveC()();
  [v4 setObject:v10 forKey:v13];

  swift_unknownObjectRelease();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100013C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100013C74, 0, 0);
}

uint64_t sub_100013C74()
{
  v1 = v0[5];
  v2 = sub_100012E4C();
  v0[6] = v2;
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  *v4 = v0;
  v4[1] = sub_100013D48;

  return Task.value.getter(v0 + 9, v2, &type metadata for Bool, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100013D48()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100013F68;
  }

  else
  {
    v4 = sub_100013E78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013E78()
{
  v1 = *(v0 + 40);
  if (*(v0 + 72) == 1)
  {
    v2 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS;
    v3 = 2;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS;
    v3 = 0;
  }

  v4 = sub_100012D6C(v2, v3);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 objectForKey:v7];

  v9 = *(v0 + 16);
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v9 = 0u;
    v9[1] = 0u;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100013F80()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore__cloudKitStorageManager;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100014080()
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100014134()
{
  v0 = type metadata accessor for SHA256Digest();
  v32 = *(v0 - 8);
  v1 = *(v32 + 64);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v33 = [objc_allocWithZone(AADeviceInfo) init];
  v12 = [v33 udid];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = sub_100170228(v14, v16);
  v19 = v18;
  SHA256.init()();
  sub_10001607C(&unk_1003DA8A0, &type metadata accessor for SHA256);
  v31 = v11;
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v17, v19);
  sub_10018F16C(v17, v19);
  sub_100012324(v17, v19);
  dispatch thunk of HashFunction.finalize()();
  v30 = *(v5 + 8);
  v30(v9, v4);
  v37 = v0;
  v38 = sub_10001607C(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
  v20 = sub_10000DBEC(v36);
  v21 = v32;
  (*(v32 + 16))(v20, v3, v0);
  sub_1000080F8(v36, v37);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v21 + 8))(v3, v0);
  v22 = v34;
  v23 = v35;
  sub_10000839C(v36);
  sub_100012324(v17, v19);
  v30(v31, v4);
  sub_100015D6C(v22, v23);
  sub_100015710(16, v22, v23, v36);
  v24 = v36[0];
  v25 = v36[1];
  Data.base64EncodedString(options:)(0);
  sub_1000159FC(2);

  v26 = static String._fromSubstring(_:)();
  v28 = v27;
  sub_100012324(v22, v23);
  sub_100012324(v24, v25);

  qword_1003D8B68 = v26;
  unk_1003D8B70 = v28;
  return result;
}

uint64_t sub_100014544(char a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 161) = a2;
  *(v4 + 160) = a1;
  v5 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100014618, 0, 0);
}

uint64_t sub_100014618()
{
  if (*(v0 + 160) == 11)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = sub_100015A98(*(v0 + 161) & 1, *(v0 + 88), 0x79426E446E726F74, 0xEF7361655268744FLL, 0);
  v8 = v7;
  *(v0 + 128) = v7;
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v9 = sub_1000080F8((v0 + 16), *(v0 + 40));
  if (isa)
  {
    v10 = sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  }

  else
  {
    v10 = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
  }

  *(v0 + 136) = isa;
  *(v0 + 56) = isa;
  *(v0 + 80) = v10;
  v11 = *v9;
  v12 = isa;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1000147CC;

  return sub_100013858(v0 + 56, v6, v8);
}

uint64_t sub_1000147CC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v5 = sub_100014994;
  }

  else
  {
    sub_100008D3C(v2 + 56, &qword_1003D87C8, qword_100344800);
    v5 = sub_10001491C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001491C()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_10000839C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100014994()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_100008D3C((v0 + 7), &qword_1003D87C8, qword_100344800);
  sub_10000839C(v0 + 2);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_100014A24(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 160) = a1;
  v4 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100014AF4, 0, 0);
}

uint64_t sub_100014AF4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = sub_100015A98(*(v0 + 160) & 1, *(v0 + 96), 0x79426E446E726F74, 0xEF7361655268744FLL, 0);
  v7 = v6;
  *(v0 + 136) = v6;
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v8 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100014C44;

  return sub_100013C50(v0 + 56, v5, v7);
}

uint64_t sub_100014C44()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100014E68;
  }

  else
  {
    v4 = sub_100014D74;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100014D74()
{
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = [*(v0 + 88) integerValue];

    v3 = sub_1000C0C88(v2);
  }

  else
  {
    v3 = 11;
  }

  v4 = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_100014E68()
{
  v1 = v0[16];
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_100014ED8(char a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 178) = a2;
  *(v4 + 177) = a1;
  v5 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100014FAC, 0, 0);
}

uint64_t sub_100014FAC()
{
  *(v0 + 176) = *(v0 + 177);
  v1 = *(*(v0 + 96) + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder);
  sub_100005814(&qword_1003D8D48, &qword_10033E9E8);
  sub_100015638();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  sub_100015D6C(v2, v3);
  v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100012324(v2, v4);
  *(v0 + 128) = v2;
  *(v0 + 136) = v4;
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = sub_100015A98(*(v0 + 178) & 1, *(v0 + 88), 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v12 = v11;
  *(v0 + 144) = v11;
  (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  v13 = sub_1000080F8((v0 + 16), *(v0 + 40));
  if (v5.super.isa)
  {
    v14 = sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  }

  else
  {
    v14 = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
  }

  *(v0 + 152) = v5;
  *(v0 + 56) = v5;
  *(v0 + 80) = v14;
  v15 = *v13;
  v16 = v5.super.isa;
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = sub_1000151E4;

  return sub_100013858(v0 + 56, v10, v12);
}

uint64_t sub_1000151E4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  v4 = *(v2 + 144);

  if (v0)
  {
    v5 = sub_1000153B0;
  }

  else
  {
    sub_100008D3C(v2 + 56, &qword_1003D87C8, qword_100344800);
    v5 = sub_100015320;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100015320()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_10000839C(v0 + 2);

  sub_100015D58(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000153B0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_100008D3C((v0 + 7), &qword_1003D87C8, qword_100344800);
  sub_10000839C(v0 + 2);
  sub_100015D58(v2, v3);

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_100015458()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store;
  v2 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder);

  v4 = *(v0 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100015548(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015580()
{
  sub_10000DAB8(319, &unk_1003D8CB0, &unk_1003D98F0, &qword_10033E9C0);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100015638()
{
  result = qword_1003D8D50;
  if (!qword_1003D8D50)
  {
    sub_100008CBC(&qword_1003D8D48, &qword_10033E9E8);
    sub_1000156BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8D50);
  }

  return result;
}

unint64_t sub_1000156BC()
{
  result = qword_1003D8D58;
  if (!qword_1003D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8D58);
  }

  return result;
}

uint64_t sub_100015710@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100015948(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1000158E4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100012324(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100015858(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000158E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100015948(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000159FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_100015A98(char a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {
    if (qword_1003D7DB8 != -1)
    {
      swift_once();
    }

    v7 = qword_1003D8B68;
    v8 = unk_1003D8B70;

    v9._countAndFlagsBits = v7;
    v9._object = v8;
    String.append(_:)(v9);

    v11 = 35;
    v10 = 0xE100000000000000;
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = 99;
  if ((a1 & 1) == 0)
  {
    v12 = 111;
  }

  v35 = v12;
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10033E8D0;
  *(v14 + 32) = UUID.uuid.getter();
  *(v14 + 34) = UUID.uuid.getter() >> 16;
  *(v14 + 35) = UUID.uuid.getter() >> 24;
  *(v14 + 36) = UUID.uuid.getter() >> 32;
  *(v14 + 38) = UUID.uuid.getter() >> 48;
  *(v14 + 39) = UUID.uuid.getter() >> 56;
  UUID.uuid.getter();
  *(v14 + 40) = v15;
  UUID.uuid.getter();
  *(v14 + 41) = v16;
  UUID.uuid.getter();
  *(v14 + 42) = v17;
  UUID.uuid.getter();
  *(v14 + 43) = v18;
  UUID.uuid.getter();
  *(v14 + 44) = v19;
  UUID.uuid.getter();
  *(v14 + 45) = v20;
  UUID.uuid.getter();
  *(v14 + 46) = v21;
  UUID.uuid.getter();
  *(v14 + 47) = v22;
  v23 = sub_10018F97C(v14);
  v25 = v24;

  Data.base64EncodedString(options:)(0);
  sub_1000159FC(2);

  v26 = static String._fromSubstring(_:)();
  v28 = v27;
  sub_100012324(v23, v25);

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  String.append(_:)(v31);
  v32._countAndFlagsBits = v11;
  v32._object = v10;
  String.append(_:)(v32);

  return v35;
}

uint64_t sub_100015D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012324(a1, a2);
  }

  return a1;
}

uint64_t sub_100015D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100015DC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000082A8;

  return sub_100012F90(a1, v4, v5, v6);
}

uint64_t sub_100015EBC()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015F50(uint64_t a1, char a2)
{
  v4 = *(*(sub_100005814(&qword_1003D8D60, &unk_10033EA10) - 8) + 80);

  return sub_10001351C(a1, a2 & 1);
}

uint64_t sub_100015FDC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001601C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016034(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10001607C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000160C4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v67 = a2;
  v68 = a3;
  v63 = a1;
  v5 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&isa - v7);
  v9 = type metadata accessor for UUID();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v60 = v11;
  v62 = &isa - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &isa - v15;
  v66 = type metadata accessor for Date();
  v61 = *(v66 - 8);
  v17 = *(v61 + 64);
  v18 = __chkstk_darwin(v66);
  v58 = &isa - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v69 = &isa - v19;
  v20 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &isa - v23;
  v25 = *(v21 + 16);
  v59 = v4;
  v25(&isa - v23, &v4[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v20);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v24, v20);
  v26 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v26)
  {
    v57 = v26;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Creating recovery keys.", v30, 2u);
    }

    v31 = v69;
    Date.init()();
    (*(v13 + 16))(v16, &v59[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], v12);
    Dependency.wrappedValue.getter();
    (*(v13 + 8))(v16, v12);
    v59 = aBlock[0];
    v32 = v63;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v33 = v61;
    v34 = v58;
    v35 = v31;
    v36 = v66;
    (*(v61 + 16))(v58, v35, v66);
    v37 = v64;
    v38 = v62;
    v39 = v32;
    v40 = v65;
    (*(v64 + 16))(v62, v39, v65);
    v41 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v42 = (v17 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v33 + 32))(v44 + v41, v34, v36);
    (*(v37 + 32))(v44 + v42, v38, v40);
    v45 = (v44 + v43);
    v46 = v68;
    *v45 = v67;
    v45[1] = v46;
    aBlock[4] = sub_10001CD80;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A4C40;
    v47 = _Block_copy(aBlock);

    v48 = v59;
    v50 = isa;
    v49 = v57;
    [v59 createRecoveryKeyWithContext:v57 forUUID:isa completion:v47];
    _Block_release(v47);

    return (*(v33 + 8))(v69, v36);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAA40);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Not logged in to AppleAccount, unable to fetch", v55, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v8 = aBlock[0];
    swift_storeEnumTagMultiPayload();
    v67(v8);
    return sub_100008D3C(v8, &qword_1003D8EF8, &qword_10033EB18);
  }
}

uint64_t sub_10001684C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v109 = a6;
  v111 = a5;
  v107 = a2;
  v105 = a1;
  v108 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v8 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = (&v96 - v9);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v100 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v96 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = &v96 - v18;
  __chkstk_darwin(v17);
  v20 = &v96 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v96 - v27;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAA88);
  (*(v22 + 16))(v28, a3, v21);
  v101 = v11[2];
  v102 = a4;
  v101(v20, a4, v10);
  v106 = v30;
  v31 = Logger.logObject.getter();
  v32 = v10;
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v31, v33);
  v104 = v11;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v99 = v11 + 2;
    v36 = v35;
    v98 = swift_slowAlloc();
    v114[0] = v98;
    *v36 = 134218242;
    Date.init()();
    v97 = v32;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v22 + 8);
    v39(v26, v21);
    v39(v28, v21);
    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v40 = UUID.uuidString.getter();
    v42 = v41;
    v43 = v11[1];
    v44 = v20;
    v45 = v97;
    v43(v44, v97);
    v46 = sub_10021145C(v40, v42, v114);

    *(v36 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v31, v33, "⏰ %f secs to createRecoveryKey %s", v36, 0x16u);
    sub_10000839C(v98);
  }

  else
  {

    v43 = v11[1];
    v43(v20, v32);
    (*(v22 + 8))(v28, v21);
    v45 = v32;
  }

  v47 = v112;
  v48 = v107;
  if (v107)
  {
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = _convertErrorToNSError(_:)();
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error building recovery key: %@", v51, 0xCu);
      sub_100008D3C(v52, &unk_1003D9140, &qword_10033E640);
    }

    v54 = v110;
    *v110 = v48;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v111(v54);

LABEL_10:
    v55 = v54;
    return sub_100008D3C(v55, &qword_1003D8EF8, &qword_10033EB18);
  }

  if (!v105)
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "No recovery keys returned.", v82, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v113 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v110;
    *v110 = v114[0];
    swift_storeEnumTagMultiPayload();
    v111(v54);
    goto LABEL_10;
  }

  v56 = v105;
  v57 = v102;
  v58 = v103;
  v59 = v101;
  v101(v103, v102, v45);
  v59(v47, v57, v45);
  v60 = v56;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v63 = &unk_1003D3000;
  if (os_log_type_enabled(v61, v62))
  {
    v64 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v114[0] = v107;
    *v64 = 136315650;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v106) = v62;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v43(v58, v45);
    v68 = sub_10021145C(v65, v67, v114);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    v69 = [v60 custodianUUID];
    v70 = v100;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v43(v70, v45);
    v74 = sub_10021145C(v71, v73, v114);

    *(v64 + 14) = v74;
    *(v64 + 22) = 2080;
    v75 = [v60 custodianUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v112;
    LOBYTE(v75) = static UUID.== infix(_:_:)();
    v77 = v70;
    v63 = &unk_1003D3000;
    v43(v77, v45);
    if (v75)
    {
      v78 = 8756450;
    }

    else
    {
      v78 = 9215458;
    }

    v43(v76, v45);
    v79 = sub_10021145C(v78, 0xA300000000000000, v114);

    *(v64 + 24) = v79;
    _os_log_impl(&_mh_execute_header, v61, v106, "Recovery keys created successfully. UUID Sent:%s Received:%s Matches:%s ", v64, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v43(v47, v45);
    v43(v58, v45);
  }

  v83 = [v60 wrappingKey];
  v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v87 = [v60 wrappedRKC];
  v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = [v60 v63[277]];
  v92 = type metadata accessor for RecoveryKeys(0);
  v93 = v110;
  v94 = v110 + *(v92 + 24);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *v93 = v84;
  v93[1] = v86;
  v93[2] = v88;
  v93[3] = v90;
  swift_storeEnumTagMultiPayload();
  v111(v93);

  v55 = v93;
  return sub_100008D3C(v55, &qword_1003D8EF8, &qword_10033EB18);
}

void sub_1000172AC(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v57 = a1;
  v59 = type metadata accessor for UUID();
  v55 = *(v59 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v59);
  v56 = v6;
  v58 = &isa - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &isa - v10;
  v60 = type metadata accessor for Date();
  v54 = *(v60 - 8);
  v12 = *(v54 + 64);
  v13 = __chkstk_darwin(v60);
  v53 = &isa - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &isa - v14;
  v16 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &isa - v19;
  (*(v17 + 16))(&isa - v19, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v21 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v21)
  {
    v52 = v21;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Deleting recovery keys.", v25, 2u);
    }

    v26 = v15;
    v51 = v15;
    Date.init()();
    (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v50 = aBlock[0];
    v27 = v57;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = v53;
    v28 = v54;
    v30 = v60;
    (*(v54 + 16))(v53, v26, v60);
    v31 = v55;
    v32 = v58;
    v33 = v59;
    (*(v55 + 16))(v58, v27, v59);
    v34 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v35 = (v12 + *(v31 + 80) + v34) & ~*(v31 + 80);
    v36 = (v56 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    (*(v28 + 32))(v37 + v34, v29, v30);
    (*(v31 + 32))(v37 + v35, v32, v33);
    v38 = (v37 + v36);
    v39 = v62;
    *v38 = v61;
    v38[1] = v39;
    aBlock[4] = sub_10001C7C4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4BF0;
    v40 = _Block_copy(aBlock);

    v42 = isa;
    v41 = v50;
    v43 = v52;
    [v50 deleteRecoveryKeyWithContext:v52 forUUID:isa completion:v40];
    _Block_release(v40);

    (*(v28 + 8))(v51, v30);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAA40);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Not logged in to AppleAccount, unable to fetch", v47, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock[0];
    v61(aBlock[0]);
  }
}

uint64_t sub_1000179B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v77 = a5;
  v78 = a4;
  v76 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v66 - v13;
  __chkstk_darwin(v12);
  v15 = &v66 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAA88);
  (*(v17 + 16))(v23, a2, v16);
  v26 = v8[2];
  v73 = a3;
  v71 = v26;
  v26(v15, a3, v7);
  v72 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v75 = v8;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = v7;
    v31 = v30;
    v69 = swift_slowAlloc();
    v79 = v69;
    *v31 = 134218242;
    Date.init()();
    v68 = v28;
    Date.timeIntervalSince(_:)();
    v33 = v32;
    v34 = *(v17 + 8);
    v34(v21, v16);
    v34(v23, v16);
    *(v31 + 4) = v33;
    *(v31 + 12) = 2080;
    v35 = UUID.uuidString.getter();
    v37 = v36;
    v38 = v8[1];
    v39 = v67;
    v38(v15, v67);
    v40 = sub_10021145C(v35, v37, &v79);

    *(v31 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v27, v68, "⏰ %f secs to deleteRecoveryKey %s", v31, 0x16u);
    sub_10000839C(v69);
  }

  else
  {

    v38 = v8[1];
    v38(v15, v7);
    (*(v17 + 8))(v23, v16);
    v39 = v7;
  }

  v41 = v76;
  v42 = v74;
  if (v76)
  {
    v71(v74, v73, v39);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v38;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v79 = v48;
      *v45 = 138412546;
      v49 = _convertErrorToNSError(_:)();
      *(v45 + 4) = v49;
      *v47 = v49;
      *(v45 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v42;
      v53 = v52;
      v46(v51, v39);
      v54 = sub_10021145C(v50, v53, &v79);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error deleting recovery key: %@ for %s", v45, 0x16u);
      sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v48);
    }

    else
    {

      v38(v42, v39);
    }

    swift_errorRetain();
    v78(v41);
  }

  else
  {
    v55 = v38;
    v56 = v70;
    v71(v70, v73, v39);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v79 = v60;
      *v59 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v55(v56, v39);
      v64 = sub_10021145C(v61, v63, &v79);

      *(v59 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "Recovery keys deleted successfully for %s", v59, 0xCu);
      sub_10000839C(v60);
    }

    else
    {

      v55(v56, v39);
    }

    return (v78)(0);
  }
}

void sub_100018104(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v85 = a1;
  v83 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v79 = *(v83 - 1);
  v6 = *(v79 + 64);
  __chkstk_darwin(v83);
  v77 = &v68 - v7;
  v8 = type metadata accessor for Date();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v11;
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  isa = type metadata accessor for UUID();
  v15 = *(isa - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(isa);
  v78 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v18;
  __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v21 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  v26 = *(v22 + 16);
  v80 = v4;
  v26(&v68 - v24, v4 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v21);
  Dependency.wrappedValue.getter();
  (*(v22 + 8))(v25, v21);
  v27 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v27)
  {
    v70 = v27;
    v71 = v12;
    v72 = v8;
    v73 = a2;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = v15;
    v30 = isa;
    v69 = *(v15 + 16);
    v69(v20, v85, isa);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v74 = v14;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v30;
      v39 = v38;
      v40 = v20;
      v41 = v37;
      (*(v15 + 8))(v40, v37);
      v42 = sub_10021145C(v36, v39, aBlock);

      *(v34 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Check Custodian Recovery key exists for otPeerID: %s", v34, 0xCu);
      sub_10000839C(v35);
      v14 = v74;
    }

    else
    {

      (*(v15 + 8))(v20, v30);
      v41 = v30;
    }

    Date.init()();
    v48 = v79;
    v49 = v77;
    v50 = v83;
    (*(v79 + 16))(v77, v80 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v83);
    Dependency.wrappedValue.getter();
    (*(v48 + 8))(v49, v50);
    v51 = v85;
    v83 = aBlock[0];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v52 = v75;
    v53 = v71;
    v54 = v14;
    v55 = v72;
    (*(v75 + 16))(v71, v54, v72);
    v56 = v78;
    v69(v78, v51, v41);
    v57 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v58 = v41;
    v59 = (v82 + *(v15 + 80) + v57) & ~*(v15 + 80);
    v60 = (v76 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    (*(v52 + 32))(v61 + v57, v53, v55);
    (*(v29 + 32))(v61 + v59, v56, v58);
    v62 = (v61 + v60);
    v63 = v84;
    *v62 = v73;
    v62[1] = v63;
    aBlock[4] = sub_10001C6B0;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003A4BA0;
    v64 = _Block_copy(aBlock);

    v65 = v83;
    v66 = isa;
    v67 = v70;
    [v83 checkCustodianRecoveryKey:isa withContext:v70 completion:v64];
    _Block_release(v64);

    (*(v52 + 8))(v74, v55);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAA40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Not logged in to AppleAccount, unable to fetch. Check presence of Custodian Recovery key in Octagon is aborted.", v46, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

uint64_t sub_100018974(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v81 = a6;
  v82 = a5;
  v79 = a2;
  v80 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v72 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v76 = &v69[-v14];
  __chkstk_darwin(v13);
  v16 = &v69[-v15];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v69[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v69[-v23];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAA88);
  (*(v18 + 16))(v24, a3, v17);
  v27 = v9[2];
  v75 = a4;
  v73 = v27;
  v27(v16, a4, v8);
  v74 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v77 = v9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v78 = v8;
    v32 = v31;
    v71 = swift_slowAlloc();
    v83 = v71;
    *v32 = 134218242;
    Date.init()();
    v70 = v29;
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v35 = *(v18 + 8);
    v35(v22, v17);
    v35(v24, v17);
    *(v32 + 4) = v34;
    *(v32 + 12) = 2080;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v9[1];
    v39(v16, v78);
    v40 = sub_10021145C(v36, v38, &v83);

    *(v32 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v28, v70, "⏰ %f secs to checkCustodianRecoveryKey %s", v32, 0x16u);
    sub_10000839C(v71);

    v8 = v78;
  }

  else
  {

    v39 = v9[1];
    v39(v16, v8);
    (*(v18 + 8))(v24, v17);
  }

  v41 = v79;
  v42 = v76;
  if (v79)
  {
    v73(v76, v75, v8);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v78 = v39;
      v46 = v42;
      v47 = v45;
      v48 = swift_slowAlloc();
      v49 = v8;
      v50 = swift_slowAlloc();
      v83 = v50;
      *v47 = 138412546;
      v51 = _convertErrorToNSError(_:)();
      *(v47 + 4) = v51;
      *v48 = v51;
      *(v47 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v78(v46, v49);
      v55 = sub_10021145C(v52, v54, &v83);

      *(v47 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error checking Custodian Recovery key: %@ for %s", v47, 0x16u);
      sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v50);
    }

    else
    {

      v39(v42, v8);
    }

    v67 = v80;
    swift_errorRetain();
    v82(v67 & 1, v41);
  }

  else
  {
    v56 = v72;
    v73(v72, v75, v8);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v8;
      v61 = swift_slowAlloc();
      v83 = v61;
      *v59 = 67109378;
      v62 = v80;
      *(v59 + 4) = v80 & 1;
      *(v59 + 8) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v39(v56, v60);
      v66 = sub_10021145C(v63, v65, &v83);

      *(v59 + 10) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "Custodian recovery key present: %{BOOL}d for otPeerID: %s ", v59, 0x12u);
      sub_10000839C(v61);
    }

    else
    {

      v39(v56, v8);
      v62 = v80;
    }

    return (v82)(v62 & 1, 0);
  }
}

uint64_t sub_100019130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100018104(a3, sub_10001AD50, v11);
}

uint64_t sub_100019280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003D8D60, &unk_10033EA10);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100019304(uint64_t a1, void *a2, char *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7)
{
  sub_10001B660(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100019348(uint64_t a1, void *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v5 = v4;
  v107 = a3;
  v109 = a1;
  v110 = a2;
  v104 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v100 = *(v104 - 1);
  v7 = *(v100 + 64);
  __chkstk_darwin(v104);
  v99 = &v86 - v8;
  v9 = type metadata accessor for Date();
  v105 = *(v9 - 8);
  v10 = *(v105 + 64);
  v11 = __chkstk_darwin(v9);
  v103 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v12;
  __chkstk_darwin(v11);
  v111 = &v86 - v13;
  v94 = type metadata accessor for RecoveryKeys(0);
  v97 = *(v94 - 1);
  v14 = *(v97 + 64);
  v15 = __chkstk_darwin(v94);
  v108 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v16;
  __chkstk_darwin(v15);
  v18 = &v86 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v96 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v23;
  __chkstk_darwin(v22);
  v25 = &v86 - v24;
  v26 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v86 - v29;
  v31 = *(v27 + 16);
  v102 = v5;
  v31(&v86 - v29, v5 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider, v26);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v30, v26);
  v32 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v32)
  {
    v92 = v32;
    v93 = a4;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v106 = v9;
    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = *(v20 + 16);
    v35 = v19;
    v91 = v20 + 16;
    v90 = v34;
    v34(v25, v109, v19);
    sub_10001C1A8(v110, v18);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v36, v37);
    v89 = v20;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v39 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v20 + 8))(v25, v35);
      v43 = sub_10021145C(v40, v42, aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = v94;
      v45 = &v18[v94[6]];
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_10001C20C(v18);
      v49 = sub_10021145C(v46, v48, aBlock);

      *(v39 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Preflighting Custodian Recovery for custodianID: %s otPeerID: %s", v39, 0x16u);
      swift_arrayDestroy();

      v50 = v35;
    }

    else
    {

      sub_10001C20C(v18);
      (*(v20 + 8))(v25, v19);
      v50 = v19;
      v44 = v94;
    }

    v88 = v50;
    v56 = v110;
    v57 = v110[2];
    v58 = v110[3];
    v59 = *v110;
    v60 = v110[1];
    v61 = v44[6];
    v62 = objc_allocWithZone(CDPCustodianRecoveryInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v64 = Data._bridgeToObjectiveC()().super.isa;
    v65 = UUID._bridgeToObjectiveC()().super.isa;
    v94 = [v62 initWithWrappedRKC:isa wrappingKey:v64 custodianUUID:v65];

    v66 = v111;
    Date.init()();
    v67 = v99;
    v68 = v100;
    v69 = v104;
    (*(v100 + 16))(v99, v102 + OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController, v104);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v67, v69);
    v104 = aBlock[0];
    v71 = v105;
    v70 = v106;
    v72 = v103;
    (*(v105 + 16))(v103, v66, v106);
    v73 = v96;
    v90(v96, v109, v50);
    sub_10001C1A8(v56, v108);
    v74 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v75 = v89;
    v76 = (v101 + *(v89 + 80) + v74) & ~*(v89 + 80);
    v77 = (v95 + *(v97 + 80) + v76) & ~*(v97 + 80);
    v78 = (v98 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v71 + 32))(v79 + v74, v72, v70);
    (*(v75 + 32))(v79 + v76, v73, v88);
    sub_10001C26C(v108, v79 + v77);
    v80 = (v79 + v78);
    v81 = v93;
    *v80 = v107;
    v80[1] = v81;
    aBlock[4] = sub_10001CD7C;
    aBlock[5] = v79;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4B50;
    v82 = _Block_copy(aBlock);

    v83 = v104;
    v84 = v94;
    v85 = v92;
    [v104 validateRecoveryKey:v94 withContext:v92 completion:v82];
    _Block_release(v82);

    (*(v71 + 8))(v111, v106);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100008D04(v51, qword_1003FAA40);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Not logged in to AppleAccount, unable to fetch. Preflight Custodian Recovery aborted.", v54, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v55 = aBlock[0];
    v107(aBlock[0]);
  }
}

uint64_t sub_100019DD0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(char *, uint64_t)), uint64_t a6)
{
  v94 = a6;
  v95 = a5;
  v91 = a4;
  v96 = a1;
  v86 = type metadata accessor for RecoveryKeys(0);
  v8 = *(*(v86 - 8) + 64);
  v9 = __chkstk_darwin(v86);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v81 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v92 = &v81 - v18;
  __chkstk_darwin(v17);
  v20 = &v81 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v81 - v27;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAA88);
  (*(v22 + 16))(v28, a2, v21);
  v31 = v13[2];
  v90 = a3;
  v88 = v31;
  v31(v20, a3, v12);
  v89 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v93 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v83 = v33;
    v36 = v35;
    v82 = swift_slowAlloc();
    v97[0] = v82;
    *v36 = 134218242;
    Date.init()();
    v81 = v32;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v22 + 8);
    v39(v26, v21);
    v39(v28, v21);
    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v13[1];
    v43(v20, v12);
    v44 = sub_10021145C(v40, v42, v97);

    *(v36 + 14) = v44;
    v45 = v81;
    _os_log_impl(&_mh_execute_header, v81, v83, "⏰ %f secs to preflightCustodianRecovery %s", v36, 0x16u);
    sub_10000839C(v82);
  }

  else
  {

    v43 = v13[1];
    v43(v20, v12);
    (*(v22 + 8))(v28, v21);
  }

  v46 = v12;
  v47 = v92;
  if (v96)
  {
    v88(v92, v90, v12);
    v48 = v87;
    sub_10001C1A8(v91, v87);
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v90 = v52;
      v91 = swift_slowAlloc();
      v97[0] = v91;
      *v51 = 138412802;
      v53 = _convertErrorToNSError(_:)();
      *(v51 + 4) = v53;
      *v52 = v53;
      *(v51 + 12) = 2080;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v54 = v43;
      v55 = v46;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v54(v47, v55);
      v59 = sub_10021145C(v56, v58, v97);

      *(v51 + 14) = v59;
      *(v51 + 22) = 2080;
      v60 = v48 + *(v86 + 24);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_10001C20C(v48);
      v64 = sub_10021145C(v61, v63, v97);

      *(v51 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error preflighting custodian recovery: %@ for custodianID: %s otPeerID: %s", v51, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v48);
      v43(v47, v46);
    }

    v79 = v96;
    swift_errorRetain();
    v95(v79);
  }

  else
  {
    v96 = v43;
    v65 = v84;
    v88(v84, v90, v12);
    v66 = v85;
    sub_10001C1A8(v91, v85);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v97[0] = v92;
      *v69 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v96(v65, v46);
      v73 = sub_10021145C(v70, v72, v97);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v74 = v66 + *(v86 + 24);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      sub_10001C20C(v66);
      v78 = sub_10021145C(v75, v77, v97);

      *(v69 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v67, v68, "Preflight Custodian Recovery successful for custodianID: %s otPeerID: %s", v69, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v66);
      v96(v65, v46);
    }

    return (v95)(0);
  }
}

uint64_t sub_10001A6F8()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController;
  v2 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider;
  v4 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10001A81C()
{
  sub_10001A8F4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001A998();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001A8F4()
{
  if (!qword_1003D8DC0)
  {
    sub_10001A94C();
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D8DC0);
    }
  }
}

unint64_t sub_10001A94C()
{
  result = qword_1003DF680;
  if (!qword_1003DF680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF680);
  }

  return result;
}

void sub_10001A998()
{
  if (!qword_1003D8DC8)
  {
    sub_100008CBC(&qword_1003D9870, &qword_10033F000);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D8DC8);
    }
  }
}

uint64_t sub_10001A9FC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10001AA20, 0, 0);
}

uint64_t sub_10001AA20()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_10001AB14;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[3].u64[1], 0, 0, 0xD00000000000001FLL, 0x800000010032CC50, sub_10001ACB4, v1, &type metadata for Bool);
}

uint64_t sub_10001AB14()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10001AC4C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10001AC30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001AC4C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

uint64_t sub_10001ACBC()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001AD50(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&qword_1003D8D60, &unk_10033EA10) - 8) + 80);

  return sub_100019280(a1, a2);
}

uint64_t sub_10001ADDC(uint64_t a1, char *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(void *), void *a8)
{
  v90 = a8;
  v85 = a1;
  v75 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v14 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = (&v72 - v15);
  v88 = type metadata accessor for UUID();
  v86 = *(v88 - 8);
  v16 = *(v86 + 64);
  __chkstk_darwin(v88);
  v83 = v17;
  v84 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v79 = *(v18 - 8);
  isa = v18;
  v19 = *(v79 + 64);
  __chkstk_darwin(v18);
  v78 = &v72 - v20;
  v89 = type metadata accessor for Date();
  v87 = *(v89 - 8);
  v21 = *(v87 + 64);
  v22 = __chkstk_darwin(v89);
  v81 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v23;
  __chkstk_darwin(v22);
  v91 = &v72 - v24;
  v25 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v30 = swift_allocObject();
  *(v30 + 2) = a3;
  *(v30 + 3) = a4;
  v74 = a5;
  *(v30 + 4) = a5;
  *(v30 + 5) = a6;
  v73 = a7;
  *(v30 + 6) = a7;
  v31 = v90;
  *(v30 + 7) = v90;
  v32 = *(v26 + 16);
  v82 = a2;
  v32(v29, &a2[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v25);
  v33 = a3;

  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v29, v25);
  v34 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v34)
  {
    v90 = v34;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v76 = v30;
    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Creating recovery keys.", v38, 2u);
    }

    v39 = v91;
    Date.init()();
    v40 = v78;
    v41 = v79;
    v42 = isa;
    (*(v79 + 16))(v78, &v82[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], isa);
    Dependency.wrappedValue.getter();
    (*(v41 + 8))(v40, v42);
    v82 = aBlock[0];
    v43 = v85;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v44 = v87;
    v45 = v81;
    v46 = v89;
    (*(v87 + 16))(v81, v39, v89);
    v47 = v86;
    v48 = v84;
    v49 = v43;
    v50 = v88;
    (*(v86 + 16))(v84, v49, v88);
    v51 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v52 = (v77 + *(v47 + 80) + v51) & ~*(v47 + 80);
    v53 = (v83 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v45;
    v56 = v46;
    (*(v44 + 32))(v54 + v51, v55, v46);
    (*(v47 + 32))(v54 + v52, v48, v50);
    v57 = (v54 + v53);
    v58 = v76;
    *v57 = sub_10001C33C;
    v57[1] = v58;
    aBlock[4] = sub_10001C350;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A4B00;
    v59 = _Block_copy(aBlock);

    v60 = v82;
    v61 = v90;
    v62 = isa;
    [v82 createRecoveryKeyWithContext:v90 forUUID:isa completion:v59];
    _Block_release(v59);

    (*(v44 + 8))(v91, v56);
  }

  else
  {
    v63 = a3;
    v64 = v74;
    v65 = v73;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100008D04(v66, qword_1003FAA40);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Not logged in to AppleAccount, unable to fetch", v69, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v70 = v76;
    *v76 = aBlock[0];
    swift_storeEnumTagMultiPayload();
    sub_10011E5C8(v70, v63, a4, v64, a6, v65, v31);
    sub_100008D3C(v70, &qword_1003D8EF8, &qword_10033EB18);
  }
}

void sub_10001B660(uint64_t a1, void *a2, char *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7)
{
  v108 = a7;
  v113 = a2;
  v115 = a1;
  v104 = sub_100005814(&qword_1003D8EE8, &qword_10033EB00);
  v102 = *(v104 - 8);
  v11 = *(v102 + 64);
  __chkstk_darwin(v104);
  v101 = &v91 - v12;
  v13 = type metadata accessor for Date();
  v106 = *(v13 - 8);
  v14 = *(v106 + 64);
  v15 = __chkstk_darwin(v13);
  v105 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v16;
  __chkstk_darwin(v15);
  v116 = &v91 - v17;
  v97 = type metadata accessor for RecoveryKeys(0);
  v99 = *(v97 - 1);
  v18 = *(v99 + 64);
  v19 = __chkstk_darwin(v97);
  v114 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v20;
  __chkstk_darwin(v19);
  v96 = &v91 - v21;
  v22 = type metadata accessor for UUID();
  v111 = *(v22 - 8);
  v112 = v22;
  v23 = *(v111 + 64);
  v24 = __chkstk_darwin(v22);
  v110 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v25;
  __chkstk_darwin(v24);
  v27 = &v91 - v26;
  v28 = sub_100005814(&qword_1003D8EF0, &unk_10033EB08);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v91 - v31;
  v33 = swift_allocObject();
  v34 = a4;
  *(v33 + 2) = a4;
  *(v33 + 3) = a5;
  v35 = v108;
  *(v33 + 4) = a6;
  *(v33 + 5) = v35;
  v36 = *(v29 + 16);
  v108 = a3;
  v109 = v33;
  v36(v32, &a3[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__cdpContextProvider], v28);

  Dependency.wrappedValue.getter();
  (*(v29 + 8))(v32, v28);
  v37 = [objc_opt_self() contextForPrimaryAccount];
  sub_10000839C(aBlock);
  if (v37)
  {
    v95 = v37;
    v107 = v13;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v40 = v111;
    v39 = v112;
    v41 = v111 + 16;
    v94 = *(v111 + 16);
    v94(v27, v115, v112);
    v42 = v96;
    sub_10001C1A8(v113, v96);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock[0] = v92;
      *v45 = 136315394;
      sub_100012490(&qword_1003D9150, &type metadata accessor for UUID);
      v93 = v41;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v40 + 8))(v27, v39);
      v49 = sub_10021145C(v46, v48, aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = v97;
      v51 = v42 + v97[6];
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_10001C20C(v42);
      v55 = sub_10021145C(v52, v54, aBlock);

      *(v45 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Preflighting Custodian Recovery for custodianID: %s otPeerID: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001C20C(v42);
      (*(v40 + 8))(v27, v39);
      v50 = v97;
    }

    v61 = v113;
    v62 = v113[2];
    v63 = v113[3];
    v64 = *v113;
    v65 = v113[1];
    v66 = v50[6];
    v67 = objc_allocWithZone(CDPCustodianRecoveryInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v69 = Data._bridgeToObjectiveC()().super.isa;
    v70 = UUID._bridgeToObjectiveC()().super.isa;
    v97 = [v67 initWithWrappedRKC:isa wrappingKey:v69 custodianUUID:v70];

    v71 = v116;
    Date.init()();
    v72 = v102;
    v73 = v101;
    v74 = v104;
    (*(v102 + 16))(v101, &v108[OBJC_IVAR____TtC13appleaccountd24DaemonSecurityController__recoveryKeyController], v104);
    Dependency.wrappedValue.getter();
    (*(v72 + 8))(v73, v74);
    v108 = aBlock[0];
    v75 = v105;
    v76 = v106;
    v77 = v107;
    (*(v106 + 16))(v105, v71, v107);
    v78 = v112;
    v94(v110, v115, v112);
    sub_10001C1A8(v61, v114);
    v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v80 = v111;
    v81 = (v103 + *(v111 + 80) + v79) & ~*(v111 + 80);
    v82 = (v98 + *(v99 + 80) + v81) & ~*(v99 + 80);
    v83 = (v100 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    (*(v76 + 32))(v84 + v79, v75, v77);
    (*(v80 + 32))(v84 + v81, v110, v78);
    sub_10001C26C(v114, v84 + v82);
    v85 = (v84 + v83);
    v86 = v109;
    *v85 = sub_10001C19C;
    v85[1] = v86;
    aBlock[4] = sub_10001C2D0;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A4A88;
    v87 = _Block_copy(aBlock);

    v88 = v108;
    v89 = v97;
    v90 = v95;
    [v108 validateRecoveryKey:v97 withContext:v95 completion:v87];
    _Block_release(v87);

    (*(v76 + 8))(v116, v107);
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
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Not logged in to AppleAccount, unable to fetch. Preflight Custodian Recovery aborted.", v59, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100012490(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v60 = aBlock[0];
    sub_100093CE0(aBlock[0], v34, a5, a6);
  }
}

uint64_t sub_10001C15C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryKeys(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C20C(uint64_t a1)
{
  v2 = type metadata accessor for RecoveryKeys(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryKeys(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C2EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C354()
{
  v19 = type metadata accessor for Date();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = (type metadata accessor for RecoveryKeys(0) - 8);
  v11 = *(*v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v2 | v7 | v11;
  v14 = (*(*v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v19);
  v15 = *(v6 + 8);
  v15(v0 + v8, v5);
  v16 = v0 + v12;
  sub_100012324(*v16, *(v16 + 8));
  sub_100012324(*(v16 + 16), *(v16 + 24));
  v15(v16 + v10[8], v5);
  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v13 | 7);
}

uint64_t sub_10001C548(void (*a1)(char *, uint64_t))
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for RecoveryKeys(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100019DD0(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_10001C6B0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_100018974(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_10001C7C4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000179B4(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_10001C8C8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10001CA28(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10001684C(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_10001CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001CC1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001CCC8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001CD84(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10001CE30(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      swift_errorRetain();
      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001CF50(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a3 + 56) + 8 * v13);
      v17[0] = *v14;
      v17[1] = v15;
      v17[2] = v16;

      swift_errorRetain();
      v18(v17);
      if (v3)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001D098(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10001D12C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_10001D1DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D250()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v80 = a6;
  v81 = a5;
  v73 = a3;
  v76 = a2;
  v77 = a1;
  v71 = type metadata accessor for CustodianshipRecords(0);
  v7 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = &v69 - v11;
  v12 = type metadata accessor for CustodianHealthRecord();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for CustodianRecoveryInfoRecord();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  __chkstk_darwin(v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v69 - v26;
  v28 = type metadata accessor for CustodianRecord();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v33 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = (&v69 - v34);
  if (*(a4 + 16))
  {
    type metadata accessor for AAError(0);
    v82 = -4408;
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v36;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_100039268(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v83;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = _convertErrorToNSError(_:)();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to fetch all custodianship records: %@", v42, 0xCu);
      sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);
    }

    v45 = v78;
    *v78 = v39;
    swift_storeEnumTagMultiPayload();
    v46 = v39;
    v81(v45);

    v47 = v45;
    return sub_100008D3C(v47, &unk_1003D91C0, &unk_10033FA50);
  }

  v69 = v12;
  v49 = v75;
  v48 = v76;
  sub_100012D04(v77, v27, &unk_1003DF000, &unk_10033EC50);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v50 = &unk_1003DF000;
    v51 = &unk_10033EC50;
    v52 = v27;
LABEL_13:
    sub_100008D3C(v52, v50, v51);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100008D04(v54, qword_1003FAA88);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to fetch all custodianship records.", v57, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v82 = -7003;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v58 = v78;
    *v78 = v83;
    swift_storeEnumTagMultiPayload();
    v81(v58);
    v47 = v58;
    return sub_100008D3C(v47, &unk_1003D91C0, &unk_10033FA50);
  }

  sub_100039200(v27, v32, type metadata accessor for CustodianRecord);
  sub_100012D04(v48, v19, &unk_1003D91B0, qword_1003444F0);
  if ((*(v74 + 48))(v19, 1, v20) == 1)
  {
    sub_1000385BC(v32, type metadata accessor for CustodianRecord);
    v50 = &unk_1003D91B0;
    v51 = qword_1003444F0;
    v52 = v19;
    goto LABEL_13;
  }

  v53 = v23;
  sub_100039200(v19, v23, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100012D04(v73, v49, &qword_1003D91A8, &unk_10033EC40);
  if ((*(v72 + 48))(v49, 1, v69) == 1)
  {
    sub_1000385BC(v23, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1000385BC(v32, type metadata accessor for CustodianRecord);
    v50 = &qword_1003D91A8;
    v51 = &unk_10033EC40;
    v52 = v49;
    goto LABEL_13;
  }

  v60 = v15;
  sub_100039200(v49, v15, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100008D04(v61, qword_1003FAA88);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v70;
  v66 = v71;
  if (v64)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Custodianship records fetched successfully.", v67, 2u);
  }

  sub_100038554(v32, v65, type metadata accessor for CustodianRecord);
  sub_100038554(v53, v65 + *(v66 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(v60, v65 + *(v66 + 24), type metadata accessor for CustodianHealthRecord);
  v68 = v78;
  sub_100038554(v65, v78, type metadata accessor for CustodianshipRecords);
  swift_storeEnumTagMultiPayload();
  v81(v68);
  sub_100008D3C(v68, &unk_1003D91C0, &unk_10033FA50);
  sub_1000385BC(v65, type metadata accessor for CustodianshipRecords);
  sub_1000385BC(v60, type metadata accessor for CustodianHealthRecord);
  sub_1000385BC(v53, type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_1000385BC(v32, type metadata accessor for CustodianRecord);
}

uint64_t sub_10001DDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v67);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v17 = *(v12 + 16);
  v68 = a1;
  v17(v15, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v12 + 8))(v15, v11);
    v25 = sub_10021145C(v22, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching custodianship owner records with ID: %s", v20, 0xCu);
    sub_10000839C(v21);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v26 = dispatch_group_create();
  sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = type metadata accessor for CustodianRecord();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v31 = swift_allocBox();
  v33 = v32;
  v34 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v78 = swift_allocBox();
  v36 = v35;
  v37 = type metadata accessor for CustodianHealthRecord();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  dispatch_group_enter(v26);
  v41 = swift_allocObject();
  v79 = v27;
  v41[2] = v27;
  v41[3] = v38;
  v41[4] = v26;

  v42 = v26;
  v43 = v68;
  sub_100022FF4(v68, sub_100039A70, v41);

  dispatch_group_enter(v42);
  v44 = swift_allocObject();
  v77 = v31;
  v44[2] = v31;
  v44[3] = v39;
  v44[4] = v42;
  v45 = v42;

  sub_100020600(v43, sub_100039A7C, v44);

  dispatch_group_enter(v45);
  v46 = swift_allocObject();
  v47 = v78;
  v46[2] = v78;
  v46[3] = v40;
  v46[4] = v45;
  v64 = v45;
  v48 = v47;

  sub_10002BCD0(v43, sub_100039AD0, v46);

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v49 = v66;
  v50 = v65;
  v51 = v67;
  (*(v66 + 104))(v65, enum case for DispatchQoS.QoSClass.default(_:), v67);
  v52 = static OS_dispatch_queue.global(qos:)();
  (*(v49 + 8))(v50, v51);
  v53 = swift_allocObject();
  v53[2] = v38;
  v53[3] = v39;
  v54 = v69;
  v55 = v70;
  v53[4] = v40;
  v53[5] = v54;
  v56 = v79;
  v53[6] = v55;
  v53[7] = v56;
  v53[8] = v77;
  v53[9] = v48;
  aBlock[4] = sub_100039B44;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A5388;
  v57 = _Block_copy(aBlock);

  v58 = v71;
  static DispatchQoS.unspecified.getter();
  v80 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v59 = v73;
  v60 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v61 = v64;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v57);

  (*(v75 + 8))(v59, v60);
  (*(v72 + 8))(v58, v74);
}

void sub_10001E6D8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - v13);
  v15 = swift_projectBox();
  sub_100012D04(a1, v14, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch custodian record: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    v23 = *(a3 + 16);
    *(a3 + 16) = v16;
  }

  else
  {
    sub_100039200(v14, v10, type metadata accessor for CustodianRecord);
    v24 = type metadata accessor for CustodianRecord();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    swift_beginAccess();
    sub_100039B58(v10, v15, &unk_1003DF000, &unk_10033EC50);
  }

  dispatch_group_leave(a4);
}

void sub_10001E9DC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - v13);
  v15 = swift_projectBox();
  sub_100012D04(a1, v14, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch custodianship record: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    v23 = *(a3 + 16);
    *(a3 + 16) = v16;
  }

  else
  {
    sub_100039200(v14, v10, type metadata accessor for CustodianRecoveryInfoRecord);
    v24 = type metadata accessor for CustodianRecoveryInfoRecord();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    swift_beginAccess();
    sub_100039B58(v10, v15, &unk_1003D91B0, qword_1003444F0);
  }

  dispatch_group_leave(a4);
}

void sub_10001ECE0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - v13);
  v15 = swift_projectBox();
  sub_100012D04(a1, v14, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch health record: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    v23 = *(a3 + 16);
    *(a3 + 16) = v16;
  }

  else
  {
    sub_100039200(v14, v10, type metadata accessor for CustodianHealthRecord);
    v24 = type metadata accessor for CustodianHealthRecord();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    swift_beginAccess();
    sub_100039B58(v10, v15, &qword_1003D91A8, &unk_10033EC40);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_10001EFE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, char *, void *), uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v8 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = swift_projectBox();
  v21 = swift_projectBox();
  v22 = swift_projectBox();
  v30 = &_swiftEmptyDictionarySingleton;
  swift_beginAccess();
  v23 = *(a1 + 16);
  if (v23)
  {
    swift_errorRetain();
    sub_1001BE004(v23, 0xD000000000000013, 0x800000010032CF40);
  }

  swift_beginAccess();
  v24 = *(a2 + 16);
  if (v24)
  {
    swift_errorRetain();
    sub_1001BE004(v24, 0xD000000000000016, 0x800000010032CF20);
  }

  swift_beginAccess();
  v25 = *(a3 + 16);
  if (v25)
  {
    v26 = *(a3 + 16);
    swift_errorRetain();
    sub_1001BE004(v25, 0xD00000000000001FLL, 0x800000010032CF00);
  }

  swift_beginAccess();
  sub_100012D04(v20, v19, &unk_1003DF000, &unk_10033EC50);
  swift_beginAccess();
  sub_100012D04(v21, v15, &unk_1003D91B0, qword_1003444F0);
  swift_beginAccess();
  sub_100012D04(v22, v11, &qword_1003D91A8, &unk_10033EC40);
  v29(v19, v15, v11, v30);

  sub_100008D3C(v11, &qword_1003D91A8, &unk_10033EC40);
  sub_100008D3C(v15, &unk_1003D91B0, qword_1003444F0);
  return sub_100008D3C(v19, &unk_1003DF000, &unk_10033EC50);
}

uint64_t sub_10001F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_100005814(&unk_1003D9210, &qword_10033ECA8);
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for CustodianRecoveryRecords(0);
  v7[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = type metadata accessor for CustodianHealthRecord();
  v7[10] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = *(*(type metadata accessor for CustodianshipInfoRecord() - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v7[14] = v16;
  v17 = *(v16 - 8);
  v7[15] = v17;
  v18 = *(v17 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4F4, 0, 0);
}

uint64_t sub_10001F4F4()
{
  v25 = v0;
  v1 = *(v0[15] + 16);
  v1(v0[17], v0[2], v0[14]);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_100008D04(v5, qword_1003FAA88);
  v1(v2, v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_10021145C(v13, v15, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching recovery records with ID: %s", v12, 0xCu);
    sub_10000839C(v23);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[19] = v16;
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_10001F784;
  v19 = v0[13];
  v20 = v0[2];
  v21 = v0[3];

  return sub_1000268EC(v19, v20);
}

uint64_t sub_10001F784()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000200BC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_10001F900;
    v5 = v3[12];
    v6 = v3[2];
    v7 = v3[3];

    return sub_100021548(v5, v6, 0, 0);
  }
}

uint64_t sub_10001F900()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10001FBA0;
  }

  else
  {
    v3 = sub_10001FA14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001FA14()
{
  v1 = v0[2];
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3 = 0;
  if (*(v1 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v4 = RecoveryRecordsRequest;
    v5 = kAAAnalyticsEventFetchCustodianHealthRecord;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v6 = *(v4 + 36);
    v7 = (v1 + *(v4 + 32));
    v8 = *v7;
    v9 = v7[1];
    v10 = v1 + v6;
    v11 = *(v1 + v6);
    v12 = *(v10 + 8);

    v13 = v5;

    v3 = sub_100245D38(v13, v8, v9, v11, v12);
  }

  v0[24] = v3;
  v14 = v0[17];
  v15 = v0[3];
  v16 = *(v15 + 56);
  ObjectType = swift_getObjectType();
  v18 = swift_task_alloc();
  v0[25] = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_10001FCDC;
  v21 = v0[10];
  v20 = v0[11];

  return sub_1002470C4(v20, v3, &unk_10033ECB8, v18, ObjectType);
}

uint64_t sub_10001FBA0()
{
  sub_1000385BC(*(v0 + 104), type metadata accessor for CustodianshipInfoRecord);
  v1 = *(v0 + 184);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 120) + 8;
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v2);

  sub_100008D3C(v2, &unk_1003D9210, &qword_10033ECA8);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10001FCDC()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1000201DC;
  }

  else
  {
    v4 = sub_10001FE0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001FE0C()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  sub_100038554(v0[13], v4, type metadata accessor for CustodianshipInfoRecord);
  sub_100038554(v2, v4 + *(v5 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(v3, v4 + *(v5 + 24), type metadata accessor for CustodianHealthRecord);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Custodianship records fetched successfully.", v8, 2u);
  }

  v9 = v0[24];
  v29 = v0[17];
  v30 = v0[19];
  v27 = v0[15];
  v28 = v0[14];
  v10 = v0[12];
  v26 = v0[13];
  v11 = v0[11];
  v12 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v16 = v0[5];

  sub_100038554(v12, v13, type metadata accessor for CustodianRecoveryRecords);
  swift_storeEnumTagMultiPayload();
  v15(v13);

  sub_100008D3C(v13, &unk_1003D9210, &qword_10033ECA8);
  sub_1000385BC(v12, type metadata accessor for CustodianRecoveryRecords);
  sub_1000385BC(v11, type metadata accessor for CustodianHealthRecord);
  sub_1000385BC(v10, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000385BC(v26, type metadata accessor for CustodianshipInfoRecord);
  v30(v29, v28);
  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];
  v22 = v0[9];
  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000200BC()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 120) + 8;
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v2);

  sub_100008D3C(v2, &unk_1003D9210, &qword_10033ECA8);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000201DC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_1000385BC(v1, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000385BC(v2, type metadata accessor for CustodianshipInfoRecord);
  v3 = *(v0 + 216);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 120) + 8;
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));
  *v4 = v3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v7(v4);

  sub_100008D3C(v4, &unk_1003D9210, &qword_10033ECA8);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100020340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100020364, 0, 0);
}

uint64_t sub_100020364()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for CustodianHealthRecord();
  *v3 = v0;
  v3[1] = sub_100020460;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000021, 0x800000010032CD80, sub_100038978, v1, v4);
}

uint64_t sub_100020460()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002059C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10002059C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_100020600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v53 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v56 = &v46 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v46 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v50 = v17;
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA88);
  v49 = *(v14 + 16);
  v49(v19, a1, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = a1;
    v24 = v23;
    v46 = swift_slowAlloc();
    v60[0] = v46;
    *v24 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v8;
    v26 = v7;
    v28 = v27;
    (*(v14 + 8))(v19, v13);
    v29 = sub_10021145C(v25, v28, v60);
    v7 = v26;
    v8 = v48;

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetching recovery info with ID: %s", v24, 0xCu);
    sub_10000839C(v46);

    a1 = v47;
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  v30 = v51;
  v49(v51, a1, v13);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v14 + 32))(v33 + v31, v30, v13);
  v34 = (v33 + v32);
  v35 = v55;
  *v34 = v53;
  v34[1] = v35;
  v36 = sub_1000080F8((v54 + 16), *(v54 + 40));
  type metadata accessor for LocalCache();

  v37 = v52;
  sub_100307F40();
  v38 = v57;
  URL.appendingPathComponent(_:isDirectory:)();
  v39 = *(v8 + 8);
  v39(v37, v7);
  v40 = *v36;
  v42 = v58;
  v41 = v59;
  v43 = v56;
  (*(v58 + 16))(v56, v40 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v42 + 8))(v43, v41);
  v44 = *sub_1000080F8(v60, v60[3]);
  sub_100032500(v38, sub_10003973C, v33, &unk_1003A52A8, sub_1000398C8, &unk_1003A52C0);

  v39(v38, v7);
  return sub_10000839C(v60);
}

uint64_t sub_100020BA8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v76 = a5;
  v77 = a4;
  v74 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v8 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = &v69[-v9];
  v10 = type metadata accessor for UUID();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v69[-v15];
  v17 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v69[-v19];
  v21 = type metadata accessor for CustodianRecoveryInfoRecord();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v69[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v24);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = _convertErrorToNSError(_:)();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error fetching recovery info records: %@", v32, 0xCu);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);
    }

    v35 = v75;
    *v75 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v77(v35);
    v36 = v35;
    return sub_100008D3C(v36, &unk_1003DB610, &unk_10033FA90);
  }

  v37 = &v69[-v28];
  __chkstk_darwin(v27);
  v71 = a3;
  *&v69[-16] = a3;
  sub_100213EF4(sub_1000399E8, a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100008D3C(v20, &unk_1003D91B0, qword_1003444F0);
    v38 = v72;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA88);
    v40 = v73;
    (*(v38 + 16))(v16, v71, v73);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v79[0] = v44;
      *v43 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v38;
      v48 = v47;
      (*(v46 + 8))(v16, v40);
      v49 = sub_10021145C(v45, v48, v79);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "No recovery info with id %s found.", v43, 0xCu);
      sub_10000839C(v44);
    }

    else
    {

      (*(v38 + 8))(v16, v40);
    }

    type metadata accessor for AACustodianError(0);
    v78 = -7062;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v64 = v79[0];
    v65 = v75;
    *v75 = v79[0];
    swift_storeEnumTagMultiPayload();
    v66 = v64;
    v77(v65);

    v36 = v65;
    return sub_100008D3C(v36, &unk_1003DB610, &unk_10033FA90);
  }

  sub_100039200(v20, v37, type metadata accessor for CustodianRecoveryInfoRecord);
  v50 = v72;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100008D04(v51, qword_1003FAA88);
  v52 = v73;
  (*(v50 + 16))(v14, v71, v73);
  sub_100038554(v37, v26, type metadata accessor for CustodianRecoveryInfoRecord);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79[0] = v71;
    *v55 = 136315394;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v70 = v54;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v14, v52);
    v59 = sub_10021145C(v56, v58, v79);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    sub_1000385BC(v26, type metadata accessor for CustodianRecoveryInfoRecord);
    v63 = sub_10021145C(v60, v62, v79);

    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v53, v70, "Found recovery info for id %s: %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v26, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v50 + 8))(v14, v52);
  }

  v68 = v75;
  sub_100038554(v37, v75, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v77(v68);
  sub_100008D3C(v68, &unk_1003DB610, &unk_10033FA90);
  return sub_1000385BC(v37, type metadata accessor for CustodianRecoveryInfoRecord);
}

uint64_t sub_100021548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000215EC, 0, 0);
}

uint64_t sub_1000215EC()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianRecoveryInfoRecord from local disk", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100021748;
  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  return sub_10002291C(v6, v7, v8);
}

uint64_t sub_100021748()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100021968;
  }

  else
  {
    v3 = sub_10002185C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002185C()
{
  v1 = v0[25];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecoveryInfoRecord found on the local disk, no need to fetch from cloud", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[18];

  sub_100039200(v5, v6, type metadata accessor for CustodianRecoveryInfoRecord);
  v8 = v0[23];
  v7 = v0[24];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100021968()
{
  v0[5] = v0[27];
  swift_errorRetain();
  v0[28] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[29] = v1;
  if (swift_dynamicCast())
  {
    v2 = v0[6];
    v0[7] = v2;
    v0[30] = v2;
    v0[31] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7062)
    {
      v3 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      if (*(v3 + *(RecoveryRecordsRequest + 20)))
      {
        v5 = RecoveryRecordsRequest;
        v6 = v0[25];
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "CustodianRecoveryInfoRecord not found on the local disk, fetching the record from cloud", v9, 2u);
        }

        v10 = v0[22];
        v11 = v0[19];

        v0[32] = *(v10 + 56);
        v12 = kAAAnalyticsEventCustodianRecoveryExperimentalRecoveryInfoNotFoundFetchFromCloud;
        v13 = (v11 + *(v5 + 32));
        v14 = *v13;
        v0[33] = *v13;
        v15 = v13[1];
        v0[34] = v15;
        v16 = (v11 + *(v5 + 36));
        v17 = *v16;
        v0[35] = *v16;
        v18 = v16[1];
        v0[36] = v18;
        v0[37] = sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

        v19 = v12;

        v20 = sub_100245D38(v19, v14, v15, v17, v18);
        v0[38] = v20;
        if (v20)
        {
          v21 = v20;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v22 = v21;
          v23 = NSString.init(stringLiteral:)();
          [v22 setObject:0 forKeyedSubscript:v23];
        }

        sub_100257274(v19);
        v38 = *sub_1000080F8((v0[22] + 16), *(v0[22] + 40));
        v39 = swift_task_alloc();
        v0[39] = v39;
        *v39 = v0;
        v39[1] = sub_100021EC8;

        return sub_10030D2B0();
      }
    }
  }

  v24 = v0[27];
  v25 = v0[25];
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[27];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error occured fetching CustodianRecoveryInfoRecord from local disk %@", v29, 0xCu);
    sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
  }

  v32 = v0[27];

  swift_willThrow();
  v33 = v0[27];
  v35 = v0[23];
  v34 = v0[24];

  v36 = v0[1];

  return v36();
}