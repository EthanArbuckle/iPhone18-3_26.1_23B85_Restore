@interface STLSServerHandshaker
- (BOOL)getEarlyDataAccepted;
- (_TtC10nwswifttls20STLSServerHandshaker)init;
- (id)continueHandshake:(id)handshake;
- (id)getEncryptionSecretWithWrite:(BOOL)write;
- (id)getNegotiatedGroup;
- (id)getPeerQUICTransportParameters;
- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier;
- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn;
- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn EPSKs:(id)ks rawEPSKsEnabled:(BOOL)enabled epskSelectionBlock:(id)block enableEarlyData:(BOOL)self0;
- (int)getErrorCode;
- (int64_t)getEncryptionLevelWithWrite:(BOOL)write;
@end

@implementation STLSServerHandshaker

- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn EPSKs:(id)ks rawEPSKsEnabled:(BOOL)enabled epskSelectionBlock:(id)block enableEarlyData:(BOOL)self0
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v17 = _Block_copy(block);
  if (ks)
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSExternalPreSharedKey, off_1E7B2E030);
    ks = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v17 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_allocWithZone(ObjectType);
  initCopy = init;
  keyCopy = key;
  parametersCopy = parameters;
  alpnCopy = alpn;
  v24 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(init, key, parameters, alpn, ks, v17, v18, enabledCopy, 0, data);
  swift_getObjectType();
  v25 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v26 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v24;
}

- (id)init:(id)init serverKey:(__SecKey *)key quicTransportParameters:(id)parameters alpn:(id)alpn
{
  v11 = objc_allocWithZone(swift_getObjectType());
  initCopy = init;
  keyCopy = key;
  parametersCopy = parameters;
  alpnCopy = alpn;
  v16 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(init, key, parameters, alpn, 0, 0, 0, 0, 0, 0);
  swift_getObjectType();
  v17 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

- (id)init:(id)init quicTransportParameters:(id)parameters alpn:(id)alpn pakeContext:(id)context pakeClientIdentity:(id)identity pakeServerIdentity:(id)serverIdentity pakePasswordVerifier:(id)verifier
{
  initCopy = init;
  parametersCopy = parameters;
  alpnCopy = alpn;
  return STLSServerHandshaker.init(_:quicTransportParameters:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:)(init, parameters, alpn, context, identity, serverIdentity, verifier);
}

- (id)continueHandshake:(id)handshake
{
  handshakeCopy = handshake;
  selfCopy = self;
  v10.value.super.isa = handshake;
  v7 = STLSServerHandshaker.continueHandshake(_:)(v10);

  return v7;
}

- (int)getErrorCode
{
  selfCopy = self;
  v3 = STLSServerHandshaker.getErrorCode()();

  return v3;
}

- (int64_t)getEncryptionLevelWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSServerHandshaker.getEncryptionLevel(write:)(write);

  return v5;
}

- (id)getEncryptionSecretWithWrite:(BOOL)write
{
  selfCopy = self;
  v5 = STLSServerHandshaker.getEncryptionSecret(write:)(write);

  return v5;
}

- (id)getPeerQUICTransportParameters
{
  selfCopy = self;
  v3 = STLSServerHandshaker.getPeerQUICTransportParameters()();

  return v3;
}

- (id)getNegotiatedGroup
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(self + v7, v6, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v8 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v8 - 8) + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    v11 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v13 = v12;
    outlined destroy of ServerHandshakeStateMachine(v6, type metadata accessor for ServerHandshakeStateMachine);

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = MEMORY[0x1B274D5C0](v14, v15);

    return v16;
  }

  return result;
}

- (BOOL)getEarlyDataAccepted
{
  v3 = type metadata accessor for ServerHandshakeStateMachine(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v4 + 48))(self + v8, 1, v3))
  {
    v9 = 0;
  }

  else
  {
    outlined init with copy of ServerHandshakeStateMachine(self + v8, v7, type metadata accessor for ServerHandshakeStateMachine);
    v9 = ServerHandshakeStateMachine.earlyDataAccepted.getter();
    outlined destroy of ServerHandshakeStateMachine(v7, type metadata accessor for ServerHandshakeStateMachine);
  }

  return v9 & 1;
}

- (_TtC10nwswifttls20STLSServerHandshaker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end