@interface STLSRecordHandler
- (BOOL)alertSentOrReceived;
- (BOOL)getEPSKOffered;
- (BOOL)getNegotiatedEPSK;
- (BOOL)getPAKEOffered;
- (BOOL)isHandshakeComplete;
- (_TtC10nwswifttls17STLSRecordHandler)init;
- (id)getNegotiatedGroup;
- (id)getOutput;
- (id)init:(id)init alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier logStr:(id)str;
- (id)init:(id)init alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakeClientPasswordVerifier:(id)self0 logStr:(id)self1;
- (id)init:(id)init serverKey:(__SecKey *)key alpn:(id)alpn EPSKs:(id)ks epskSelectionBlock:(id)block rawEPSKsEnabled:(BOOL)enabled enableEarlyData:(BOOL)data logStr:(id)self0;
- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)data logStr:(id)self0;
- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)key rawEPSKsEnabled:(BOOL)self0 enableEarlyData:(BOOL)self1 logStr:(id)self2;
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

- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group externalPreSharedKey:(id)key rawEPSKsEnabled:(BOOL)self0 enableEarlyData:(BOOL)self1 logStr:(id)self2
{
  groupCopy = group;
  ObjectType = swift_getObjectType();
  if (request)
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
  strCopy = str;
  initCopy = init;
  nameCopy = name;
  alpnCopy = alpn;
  stateCopy = state;
  keyCopy = key;
  alpnCopy2 = alpn;
  v24 = keyCopy;
  v25 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(init, name, alpnCopy2, state, v31, groupCopy, key, enabled, data, v35, strCopy);

  swift_getObjectType();
  v26 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v27 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v25;
}

- (id)init:(id)init serverName:(id)name alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request keyExchangeGroup:(unsigned __int16)group enableEarlyData:(BOOL)data logStr:(id)self0
{
  groupCopy = group;
  ObjectType = swift_getObjectType();
  if (request)
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
  strCopy = str;
  initCopy = init;
  nameCopy = name;
  alpnCopy = alpn;
  stateCopy = state;
  stateCopy2 = state;
  v22 = stateCopy;
  v23 = specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(init, name, alpn, stateCopy2, v27, groupCopy, 0, 0, data, v32, strCopy);

  swift_getObjectType();
  v24 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v23;
}

- (id)init:(id)init alpn:(id)alpn sessionState:(id)state ticketRequest:(id)request pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakeClientPasswordVerifier:(id)self0 logStr:(id)self1
{
  if (request)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  initCopy = init;
  alpnCopy = alpn;
  stateCopy = state;
  return STLSRecordHandler.init(_:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:logStr:)(init, alpn, state, v16, context, identity, serverIdentity, verifier, str);
}

- (id)init:(id)init alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier logStr:(id)str
{
  initCopy = init;
  alpnCopy = alpn;
  return STLSRecordHandler.init(_:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:logStr:)(init, alpn, context, identity, serverIdentity, verifier, str);
}

- (id)init:(id)init serverKey:(__SecKey *)key alpn:(id)alpn EPSKs:(id)ks epskSelectionBlock:(id)block rawEPSKsEnabled:(BOOL)enabled enableEarlyData:(BOOL)data logStr:(id)self0
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v17 = _Block_copy(block);
  v18 = v17;
  if (!ks)
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
  strCopy = str;
  initCopy = init;
  keyCopy = key;
  alpnCopy = alpn;
  alpnCopy2 = alpn;
  v26 = alpnCopy;
  v27 = specialized STLSRecordHandler.init(_:serverKey:alpn:EPSKs:epskSelectionBlock:rawEPSKsEnabled:pakeServerConfiguration:enableEarlyData:logStr:)(init, key, alpnCopy2, v31, v18, v19, enabledCopy, 0, 0, strCopy);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v18);
  swift_getObjectType();
  v28 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v29 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}

- (void)startHandshake
{
  selfCopy = self;
  STLSRecordHandler.startHandshake()();
}

- (BOOL)alertSentOrReceived
{
  selfCopy = self;
  v3 = STLSRecordHandler.alertSentOrReceived()();

  return v3;
}

- (void)sendCloseNotify
{
  selfCopy = self;
  STLSRecordHandler.sendCloseNotify()();
}

- (unsigned)getBytesToReadCount
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = STLSRecordHandler.getAvailableApplicationDataLength()();

  return v3;
}

- (id)getOutput
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.epskOffered.getter, ServerHandshakeStateMachine.epskOffered.getter);

  return v3 & 1;
}

- (BOOL)getPAKEOffered
{
  selfCopy = self;
  v3 = STLSRecordHandler.getEPSKOffered()(HandshakeStateMachine.pakeOffered.getter, ServerHandshakeStateMachine.pakeOffered.getter);

  return v3 & 1;
}

- (int)getErrorCode
{
  selfCopy = self;
  v3 = STLSRecordHandler.getErrorCode()();

  return v3;
}

- (id)getNegotiatedGroup
{
  selfCopy = self;
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