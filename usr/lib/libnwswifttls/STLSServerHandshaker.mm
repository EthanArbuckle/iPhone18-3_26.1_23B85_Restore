@interface STLSServerHandshaker
- (BOOL)getEarlyDataAccepted;
- (_TtC10nwswifttls20STLSServerHandshaker)init;
- (id)continueHandshake:(id)a3;
- (id)getEncryptionSecretWithWrite:(BOOL)a3;
- (id)getNegotiatedGroup;
- (id)getPeerQUICTransportParameters;
- (id)init:(id)a3 quicTransportParameters:(id)a4 alpn:(id)a5 pakeContext:(id)a6 pakeClientIdentity:(id)a7 pakeServerIdentity:(id)a8 pakePasswordVerifier:(id)a9;
- (id)init:(id)a3 serverKey:(__SecKey *)a4 quicTransportParameters:(id)a5 alpn:(id)a6;
- (id)init:(id)a3 serverKey:(__SecKey *)a4 quicTransportParameters:(id)a5 alpn:(id)a6 EPSKs:(id)a7 rawEPSKsEnabled:(BOOL)a8 epskSelectionBlock:(id)a9 enableEarlyData:(BOOL)a10;
- (int)getErrorCode;
- (int64_t)getEncryptionLevelWithWrite:(BOOL)a3;
@end

@implementation STLSServerHandshaker

- (id)init:(id)a3 serverKey:(__SecKey *)a4 quicTransportParameters:(id)a5 alpn:(id)a6 EPSKs:(id)a7 rawEPSKsEnabled:(BOOL)a8 epskSelectionBlock:(id)a9 enableEarlyData:(BOOL)a10
{
  v28 = a8;
  ObjectType = swift_getObjectType();
  v17 = _Block_copy(a9);
  if (a7)
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSExternalPreSharedKey, off_1E7B2E030);
    a7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(a3, a4, a5, a6, a7, v17, v18, v28, 0, a10);
  swift_getObjectType();
  v25 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v26 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v24;
}

- (id)init:(id)a3 serverKey:(__SecKey *)a4 quicTransportParameters:(id)a5 alpn:(id)a6
{
  v11 = objc_allocWithZone(swift_getObjectType());
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(a3, a4, a5, a6, 0, 0, 0, 0, 0, 0);
  swift_getObjectType();
  v17 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

- (id)init:(id)a3 quicTransportParameters:(id)a4 alpn:(id)a5 pakeContext:(id)a6 pakeClientIdentity:(id)a7 pakeServerIdentity:(id)a8 pakePasswordVerifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  return STLSServerHandshaker.init(_:quicTransportParameters:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:)(a3, a4, a5, a6, a7, a8, a9);
}

- (id)continueHandshake:(id)a3
{
  v5 = a3;
  v6 = self;
  v10.value.super.isa = a3;
  v7 = STLSServerHandshaker.continueHandshake(_:)(v10);

  return v7;
}

- (int)getErrorCode
{
  v2 = self;
  v3 = STLSServerHandshaker.getErrorCode()();

  return v3;
}

- (int64_t)getEncryptionLevelWithWrite:(BOOL)a3
{
  v4 = self;
  v5 = STLSServerHandshaker.getEncryptionLevel(write:)(a3);

  return v5;
}

- (id)getEncryptionSecretWithWrite:(BOOL)a3
{
  v4 = self;
  v5 = STLSServerHandshaker.getEncryptionSecret(write:)(a3);

  return v5;
}

- (id)getPeerQUICTransportParameters
{
  v2 = self;
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
    v10 = self;
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