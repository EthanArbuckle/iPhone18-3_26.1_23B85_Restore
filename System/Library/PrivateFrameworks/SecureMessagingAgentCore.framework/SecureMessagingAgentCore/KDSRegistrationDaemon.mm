@interface KDSRegistrationDaemon
- (_TtC24SecureMessagingAgentCore21KDSRegistrationDaemon)init;
- (void)isRegisteredWithSimUniqueID:(id)d context:(id)context completion:(id)completion;
- (void)setupXPCConnectionWithClient:(id)client uniqueClientIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier simUniqueID:(id)d simLabelID:(id)iD uriSupportedState:(id)state testPhoneNumber:(id)number completion:(id)self0;
- (void)signWithParticipantKeyWithSimUniqueID:(id)d input:(id)input completion:(id)completion;
- (void)updateWithSimUniqueID:(id)d simLabelID:(id)iD supportedState:(id)state uniqueClientIdentifier:(id)identifier completion:(id)completion;
@end

@implementation KDSRegistrationDaemon

- (void)setupXPCConnectionWithClient:(id)client uniqueClientIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier simUniqueID:(id)d simLabelID:(id)iD uriSupportedState:(id)state testPhoneNumber:(id)number completion:(id)self0
{
  v45 = _Block_copy(completion);
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  dCopy = d;
  iDCopy = iD;
  stateCopy = state;
  selfCopy = self;
  swift_unknownObjectRetain();
  numberCopy = number;
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v24;
  v49 = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v26;
  v44 = v25;

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v28;
  v42 = v27;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (numberCopy)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  *(swift_allocObject() + 16) = v45;
  type metadata accessor for KDSRegistration.ClientCreationError();
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = v34;
  v38[4] = v49;
  v38[5] = v48;
  v38[6] = v42;
  v38[7] = v41;
  v38[8] = v29;
  v38[9] = v31;
  v39 = swift_allocObject();
  v39[2] = v44;
  v39[3] = v43;
  v39[4] = selfCopy;
  v39[5] = v35;
  v39[6] = v37;
  v39[7] = client;
  v40 = swift_allocObject();
  *(v40 + 16) = &closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)partial apply;
  *(v40 + 24) = v39;
  v47 = selfCopy;
  swift_unknownObjectRetain();
  outlined copy of Data._Representation(v32, v34);
  outlined copy of Data._Representation(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError, MEMORY[0x277D4CA88]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();

  outlined consume of Data._Representation(v32, v34);
  outlined consume of Data._Representation(v49, v48);

  swift_unknownObjectRelease();
}

- (void)updateWithSimUniqueID:(id)d simLabelID:(id)iD supportedState:(id)state uniqueClientIdentifier:(id)identifier completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v12;
  v29 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  stateCopy = state;
  identifierCopy = identifier;
  selfCopy = self;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(swift_allocObject() + 16) = v10;
  type metadata accessor for KDSRegistration.UpdateSupportedStateError();
  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v21;
  v25[4] = v22;
  v25[5] = v24;
  v25[6] = v29;
  v25[7] = v28;
  v25[8] = v13;
  v25[9] = v15;
  v26 = swift_allocObject();
  *(v26 + 16) = selfCopy;
  v27 = swift_allocObject();
  *(v27 + 16) = &closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)partial apply;
  *(v27 + 24) = v26;
  v30 = selfCopy;
  outlined copy of Data._Representation(v19, v21);
  outlined copy of Data._Representation(v22, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  type metadata accessor for KDSRegistration.SupportedStateUpdateProcessedContext();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError, MEMORY[0x277D4CBA0]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext, MEMORY[0x277D4CC10]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();

  outlined consume of Data._Representation(v22, v24);
  outlined consume of Data._Representation(v19, v21);
}

- (void)isRegisteredWithSimUniqueID:(id)d context:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  contextCopy = context;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v7;
  type metadata accessor for KDSRegistration.IsRegisteredError();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = v8;
  v16[5] = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = selfCopy;
  v18 = swift_allocObject();
  *(v18 + 16) = &closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)partial apply;
  *(v18 + 24) = v17;
  v19 = selfCopy;
  outlined copy of Data._Representation(v13, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR);
  type metadata accessor for KDSRegistration.IsRegisteredResult();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError, MEMORY[0x277D4CA10]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult, MEMORY[0x277D4CA70]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();

  outlined consume of Data._Representation(v13, v15);
}

- (void)signWithParticipantKeyWithSimUniqueID:(id)d input:(id)input completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  inputCopy = input;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v7;
  type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = v8;
  v16[5] = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = selfCopy;
  v18 = swift_allocObject();
  *(v18 + 16) = &closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)partial apply;
  *(v18 + 24) = v17;
  v19 = selfCopy;
  outlined copy of Data._Representation(v13, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR);
  type metadata accessor for KDSRegistration.SigningOutput();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput, MEMORY[0x277D4C978]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();

  outlined consume of Data._Representation(v13, v15);
}

- (_TtC24SecureMessagingAgentCore21KDSRegistrationDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end