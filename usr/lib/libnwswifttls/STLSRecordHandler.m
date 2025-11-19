@interface STLSRecordHandler
- (BOOL)alertSentOrReceived;
- (BOOL)getEPSKOffered;
- (BOOL)getNegotiatedEPSK;
- (BOOL)getPAKEOffered;
- (BOOL)isHandshakeComplete;
- (_TtC10nwswifttls17STLSRecordHandler)init;
- (id)getNegotiatedGroup;
- (id)getOutput;
- (id)init:(id)a3 alpn:(id)a4 pakeContext:(id)a5 pakeClientIdentity:(id)a6 pakeServerIdentity:(id)a7 pakePasswordVerifier:(id)a8 logStr:(id)a9;
- (id)init:(id)a3 alpn:(id)a4 sessionState:(id)a5 ticketRequest:(id)a6 pakeContext:(id)a7 pakeClientIdentity:(id)a8 pakeServerIdentity:(id)a9 pakeClientPasswordVerifier:(id)a10 logStr:(id)a11;
- (id)init:(id)a3 serverKey:(__SecKey *)a4 alpn:(id)a5 EPSKs:(id)a6 epskSelectionBlock:(id)a7 rawEPSKsEnabled:(BOOL)a8 enableEarlyData:(BOOL)a9 logStr:(id)a10;
- (id)init:(id)a3 serverName:(id)a4 alpn:(id)a5 sessionState:(id)a6 ticketRequest:(id)a7 keyExchangeGroup:(unsigned __int16)a8 enableEarlyData:(BOOL)a9 logStr:(id)a10;
- (id)init:(id)a3 serverName:(id)a4 alpn:(id)a5 sessionState:(id)a6 ticketRequest:(id)a7 keyExchangeGroup:(unsigned __int16)a8 externalPreSharedKey:(id)a9 rawEPSKsEnabled:(BOOL)a10 enableEarlyData:(BOOL)a11 logStr:(id)a12;
- (int)getErrorCode;
- (int64_t)getAvailableApplicationDataLength;
- (int64_t)getNegotiatedCiphersuite;
- (int64_t)getNegotiatedPAKE;
- (unsigned)getBytesToReadCount;
- (unsigned)getOutgoingBytesCount;
- (void)sendCloseNotify;
- (void)startHandshake;
@end

@implementation STLSRecordHandler

- (id)init:(id)a3 serverName:(id)a4 alpn:(id)a5 sessionState:(id)a6 ticketRequest:(id)a7 keyExchangeGroup:(unsigned __int16)a8 externalPreSharedKey:(id)a9 rawEPSKsEnabled:(BOOL)a10 enableEarlyData:(BOOL)a11 logStr:(id)a12
{
  v32 = a8;
  ObjectType = swift_getObjectType();
  if (a7)
  {
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = 0;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(v33);
  v35[4] = v33[4];
  v35[5] = v33[5];
  v36[0] = v34[0];
  *(v36 + 9) = *(v34 + 9);
  v35[0] = v33[0];
  v35[1] = v33[1];
  v35[2] = v33[2];
  v35[3] = v33[3];
  objc_allocWithZone(ObjectType);
  v19 = a12;
  v30 = a3;
  v29 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v23 = a5;
  v24 = v22;
  v25 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(a3, a4, v23, a6, v31, v32, a9, a10, a11, v35, v19);

  swift_getObjectType();
  v26 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v27 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v25;
}

- (id)init:(id)a3 serverName:(id)a4 alpn:(id)a5 sessionState:(id)a6 ticketRequest:(id)a7 keyExchangeGroup:(unsigned __int16)a8 enableEarlyData:(BOOL)a9 logStr:(id)a10
{
  v29 = a8;
  ObjectType = swift_getObjectType();
  if (a7)
  {
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v27 = 0;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(v30);
  v32[4] = v30[4];
  v32[5] = v30[5];
  v33[0] = v31[0];
  *(v33 + 9) = *(v31 + 9);
  v32[0] = v30[0];
  v32[1] = v30[1];
  v32[2] = v30[2];
  v32[3] = v30[3];
  objc_allocWithZone(ObjectType);
  v16 = a10;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a6;
  v22 = v20;
  v23 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(a3, a4, a5, v21, v27, v29, 0, 0, a9, v32, v16);

  swift_getObjectType();
  v24 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v23;
}

- (id)init:(id)a3 alpn:(id)a4 sessionState:(id)a5 ticketRequest:(id)a6 pakeContext:(id)a7 pakeClientIdentity:(id)a8 pakeServerIdentity:(id)a9 pakeClientPasswordVerifier:(id)a10 logStr:(id)a11
{
  if (a6)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  v18 = a4;
  v19 = a5;
  return STLSRecordHandler.init(_:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:logStr:)(a3, a4, a5, v16, a7, a8, a9, a10, a11);
}

- (id)init:(id)a3 alpn:(id)a4 pakeContext:(id)a5 pakeClientIdentity:(id)a6 pakeServerIdentity:(id)a7 pakePasswordVerifier:(id)a8 logStr:(id)a9
{
  v15 = a3;
  v16 = a4;
  return STLSRecordHandler.init(_:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:logStr:)(a3, a4, a5, a6, a7, a8, a9);
}

- (id)init:(id)a3 serverKey:(__SecKey *)a4 alpn:(id)a5 EPSKs:(id)a6 epskSelectionBlock:(id)a7 rawEPSKsEnabled:(BOOL)a8 enableEarlyData:(BOOL)a9 logStr:(id)a10
{
  v32 = a8;
  ObjectType = swift_getObjectType();
  v17 = _Block_copy(a7);
  v18 = v17;
  if (!a6)
  {
    v31 = 0;
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSExternalPreSharedKey, off_1E7B2E030);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v18 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ();
LABEL_6:
  v20 = objc_allocWithZone(ObjectType);
  v21 = a10;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a5;
  v26 = v24;
  v27 = specialized STLSRecordHandler.init(_:serverKey:alpn:EPSKs:epskSelectionBlock:rawEPSKsEnabled:pakeServerConfiguration:enableEarlyData:logStr:)(a3, a4, v25, v31, v18, v19, v32, 0, 0, v21);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v18);
  swift_getObjectType();
  v28 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v29 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}

- (void)startHandshake
{
  v2 = self;
  STLSRecordHandler.startHandshake()();
}

- (BOOL)alertSentOrReceived
{
  v2 = self;
  v3 = STLSRecordHandler.alertSentOrReceived()();

  return v3;
}

- (void)sendCloseNotify
{
  v2 = self;
  STLSRecordHandler.sendCloseNotify()();
}

- (unsigned)getBytesToReadCount
{
  v2 = self;
  v3 = STLSRecordHandler.getBytesToReadCount()();

  return v3;
}

- (BOOL)isHandshakeComplete
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TLSRecordHandler();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(self + v12, v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v6, v11, type metadata accessor for TLSRecordHandler);
    v13 = TLSRecordHandler.handshakeComplete.getter();
    outlined destroy of TLSRecordHandler(v11, type metadata accessor for TLSRecordHandler);
  }

  return v13;
}

- (int64_t)getAvailableApplicationDataLength
{
  v2 = self;
  v3 = STLSRecordHandler.getAvailableApplicationDataLength()();

  return v3;
}

- (id)getOutput
{
  v2 = self;
  v3 = STLSRecordHandler.getOutput()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of ByteBuffer?(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (unsigned)getOutgoingBytesCount
{
  v2 = self;
  v3 = STLSRecordHandler.getOutgoingBytesCount()();

  return v3;
}

- (int64_t)getNegotiatedCiphersuite
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TLSRecordHandler();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(self + v12, v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v6, v11, type metadata accessor for TLSRecordHandler);
    v14 = TLSRecordHandler.getNegotiatedCiphersuite.getter();
    outlined destroy of TLSRecordHandler(v11, type metadata accessor for TLSRecordHandler);
    return v14;
  }
}

- (int64_t)getNegotiatedPAKE
{
  v2 = self;
  v3 = STLSRecordHandler.getNegotiatedPAKE()();

  return v3;
}

- (BOOL)getNegotiatedEPSK
{
  v3 = type metadata accessor for TLSRecordHandler();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  if ((*(v4 + 48))(self + v8, 1, v3))
  {
    v9 = 0;
  }

  else
  {
    outlined init with copy of TLSRecordHandler(self + v8, v7, type metadata accessor for TLSRecordHandler);
    v9 = TLSRecordHandler.getNegotiatedEPSK.getter();
    outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
  }

  return v9 & 1;
}

- (BOOL)getEPSKOffered
{
  v2 = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.epskOffered.getter, ServerHandshakeStateMachine.epskOffered.getter);

  return v3 & 1;
}

- (BOOL)getPAKEOffered
{
  v2 = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.pakeOffered.getter, ServerHandshakeStateMachine.pakeOffered.getter);

  return v3 & 1;
}

- (int)getErrorCode
{
  v2 = self;
  v3 = STLSRecordHandler.getErrorCode()();

  return v3;
}

- (id)getNegotiatedGroup
{
  v2 = self;
  v3 = STLSRecordHandler.getNegotiatedGroup()();

  v4 = MEMORY[0x1B274D5C0](v3._countAndFlagsBits, v3._object);

  return v4;
}

- (_TtC10nwswifttls17STLSRecordHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end