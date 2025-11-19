uint64_t partial apply for closure #1 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(v1[4], v1[5], a1);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #1 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(v1[4], v1[5], a1);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(a1, a2, v7);
}

uint64_t outlined init with take of PhoneNumberInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2652BCEC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2652BCF1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v3(v4);
}

uint64_t sub_2652BCF80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_2652BCFDC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v3(v4);
}

uint64_t sub_2652BD040@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2652BD09C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);

  return v4(v2, v3);
}

uint64_t type metadata completion function for KDSRegistrationDaemon()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for MLS.ClientIdentifier();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistrationDaemon.start()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);

  return v2();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.save(registrationStateMachine:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.loadRegistrationStateMachines()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.updatePushHandlerIfNeeded()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x150);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x158);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v8(a1);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t sub_2652BDE30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2652BDE68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_28Tm_0()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)partial apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(a1, a2, a3, a4, v10);
}

uint64_t objectdestroy_6Tm()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];

  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)partial apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v19 = *(v6 + 32);
  v15 = *(v6 + 48);
  v16 = *(v6 + 56);
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1, a2, a3, a4, a5, a6, v13, v14);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext, MEMORY[0x277D4CA90]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined init with take of KDSRegistration.IsRegisteredContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in KDSRegistrationStateMachine.rerun()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in KDSRegistrationStateMachine.rerun()(a1, v4, v5, v6);
}

uint64_t objectdestroy_192Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2652BE39C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in KDSRegistrationDaemon.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in closure #1 in KDSRegistrationDaemon.start()(a1, v4, v5, v7, v6);
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void *thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out Data?, @error @owned Error)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = a1;
  result = a2(&v4, &v5);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t IncomingEventModel.init(clientIdentifier:groupID:incomingEventData:eventIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t IncomingEventModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t IncomingEventModel.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t IncomingEventModel.incomingEventData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t IncomingEventModel.eventIdentifier.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

sqlite3_stmt *IncomingEventModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("INSERT OR REPLACE INTO Incoming_Event_Table (client_id, group_id, incoming_event_data, event_identifier) VALUES (?, ?, ?, ?);");
  if (!v4)
  {
LABEL_187:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_151;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v85 = *v1;
      DWORD2(v85) = v7;
      WORD6(v85) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v85;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_155:
      v72 = v5;
      swift_once();
      v5 = v72;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v85 + 6) = 0;
    *&v85 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v85;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_157:
    v73 = v5;
    swift_once();
    v5 = v73;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_161;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_159;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_157;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_155;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v70 = ppStmt[0];
    v71 = v12;
    swift_once();
    v5 = v70;
    LODWORD(v12) = v71;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_151;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_167;
      }
    }

    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (!v22)
  {
    *&v85 = *(v1 + 16);
    DWORD2(v85) = v21;
    WORD6(v85) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v85;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_162:
    v76 = v5;
    swift_once();
    v5 = v76;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_164;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v85 + 6) = 0;
      *&v85 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v85;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_164:
      v77 = v5;
      swift_once();
      v5 = v77;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_159:
    v74 = v5;
    v75 = v12;
    swift_once();
    v5 = v74;
    LODWORD(v12) = v75;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_151;
  }

  v36 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_107;
    }

    v41 = v1;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    LODWORD(v1) = *(v1 + 40);
    v35 = __DataStorage._bytes.getter();
    v9 = v35;
    if (v35)
    {
      LODWORD(v1) = v37;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v35))
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v9 += v42 - v35;
    }

    v28 = __OFSUB__(v43, v42);
    v44 = v43 - v42;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v37;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v35;
      }

      if (v9)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v41;
          goto LABEL_111;
        }

        goto LABEL_175;
      }
    }

    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v38)
  {
    v46 = v36;
    v47 = v36 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
      __break(1u);
      goto LABEL_172;
    }

    v49 = v1;
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_101:
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = MEMORY[0x2667557A0]();
      if (v50 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v50;
      }

      if (v9)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_107:
          *(&v85 + 6) = 0;
          *&v85 = 0;
          v27 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_108:
            v40 = &v85;
            LODWORD(v12) = 0;
            goto LABEL_113;
          }

LABEL_172:
          v81 = v27;
          swift_once();
          v27 = v81;
          goto LABEL_108;
        }

        v1 = v49;
        if (v12 > 0x7FFFFFFF)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }
      }

      else
      {
        LODWORD(v12) = 0;
        v1 = v49;
      }

LABEL_111:
      v27 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_112:
        v40 = v9;
        goto LABEL_113;
      }

LABEL_170:
      v78 = v27;
      v79 = v12;
      swift_once();
      v27 = v78;
      LODWORD(v12) = v79;
      goto LABEL_112;
    }

    LODWORD(v1) = v37;
    v35 = __DataStorage._offset.getter();
    if (!__OFSUB__(v46, v35))
    {
      v9 += v46 - v35;
      goto LABEL_101;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  *&v85 = *(v1 + 32);
  DWORD2(v85) = v37;
  WORD6(v85) = WORD2(v37);
  v27 = ppStmt[0];
  v39 = BYTE6(v37);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v80 = ppStmt[0];
    swift_once();
    v27 = v80;
  }

  v40 = &v85;
  LODWORD(v12) = v39;
LABEL_113:
  v35 = sqlite3_bind_blob(v27, 3, v40, v12, v10);
  if (v35)
  {
    goto LABEL_151;
  }

  v51 = *(v1 + 48);
  v52 = *(v1 + 56);
  v53 = v52 >> 62;
  if ((v52 >> 62) <= 1)
  {
    if (!v53)
    {
      *&v85 = *(v1 + 48);
      DWORD2(v85) = v52;
      WORD6(v85) = WORD2(v52);
      v35 = ppStmt[0];
      LODWORD(v1) = BYTE6(v52);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v83 = ppStmt[0];
        swift_once();
        v35 = v83;
      }

      v54 = &v85;
      goto LABEL_149;
    }

    goto LABEL_133;
  }

  if (v53 != 2)
  {
    goto LABEL_143;
  }

  v55 = *(v51 + 16);
  v56 = *(v51 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v57 = __DataStorage._offset.getter();
    if (__OFSUB__(v55, v57))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v9 += v55 - v57;
  }

  v28 = __OFSUB__(v56, v55);
  v58 = v56 - v55;
  if (v28)
  {
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v35;
  }

  if (v9)
  {
    v1 = v59;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_183;
  }

  v51 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_133:
  v60 = v51;
  v61 = v51 >> 32;
  v62 = v61 - v60;
  if (v61 < v60)
  {
    __break(1u);
    goto LABEL_181;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v63 = __DataStorage._offset.getter();
    if (!__OFSUB__(v60, v63))
    {
      v9 += v60 - v63;
      goto LABEL_137;
    }

    goto LABEL_186;
  }

LABEL_137:
  result = MEMORY[0x2667557A0]();
  if (result >= v62)
  {
    v1 = v62;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_147;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_143:
    *(&v85 + 6) = 0;
    *&v85 = 0;
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_144:
      v54 = &v85;
      v65 = 0;
      goto LABEL_150;
    }

LABEL_181:
    v84 = v35;
    swift_once();
    v35 = v84;
    goto LABEL_144;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_147:
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_148:
      v54 = v9;
LABEL_149:
      v65 = v1;
LABEL_150:
      if (!sqlite3_bind_blob(v35, 4, v54, v65, v10))
      {
        result = ppStmt[0];
        goto LABEL_152;
      }

LABEL_151:
      *&v85 = 0x726F7272456C7173;
      *(&v85 + 1) = 0xE90000000000003ALL;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v66);

      v67 = v85;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v68 = 0;
      *(v68 + 8) = v67;
      result = swift_willThrow();
LABEL_152:
      v69 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_179:
    v82 = v35;
    swift_once();
    v35 = v82;
    goto LABEL_148;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *IncomingEventModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Incoming_Event_Table SET\n    incoming_event_data = ?\nWHERE\n    client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_187:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_151;
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v85 = *(v1 + 32);
      DWORD2(v85) = v7;
      WORD6(v85) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v85;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_155:
      v72 = v5;
      swift_once();
      v5 = v72;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v85 + 6) = 0;
    *&v85 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v85;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_157:
    v73 = v5;
    swift_once();
    v5 = v73;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_161;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_159;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_157;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_155;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v70 = ppStmt[0];
    v71 = v12;
    swift_once();
    v5 = v70;
    LODWORD(v12) = v71;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_151;
  }

  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_167;
      }
    }

    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (!v22)
  {
    *&v85 = *v1;
    DWORD2(v85) = v21;
    WORD6(v85) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v85;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_162:
    v76 = v5;
    swift_once();
    v5 = v76;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_164;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v85 + 6) = 0;
      *&v85 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v85;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_164:
      v77 = v5;
      swift_once();
      v5 = v77;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_159:
    v74 = v5;
    v75 = v12;
    swift_once();
    v5 = v74;
    LODWORD(v12) = v75;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_151;
  }

  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_107;
    }

    v41 = v1;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    LODWORD(v1) = *(v1 + 24);
    v35 = __DataStorage._bytes.getter();
    v9 = v35;
    if (v35)
    {
      LODWORD(v1) = v37;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v35))
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v9 += v42 - v35;
    }

    v28 = __OFSUB__(v43, v42);
    v44 = v43 - v42;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v37;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v35;
      }

      if (v9)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v41;
          goto LABEL_111;
        }

        goto LABEL_175;
      }
    }

    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v38)
  {
    v46 = v36;
    v47 = v36 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
      __break(1u);
      goto LABEL_172;
    }

    v49 = v1;
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_101:
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = MEMORY[0x2667557A0]();
      if (v50 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v50;
      }

      if (v9)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_107:
          *(&v85 + 6) = 0;
          *&v85 = 0;
          v27 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_108:
            v40 = &v85;
            LODWORD(v12) = 0;
            goto LABEL_113;
          }

LABEL_172:
          v81 = v27;
          swift_once();
          v27 = v81;
          goto LABEL_108;
        }

        v1 = v49;
        if (v12 > 0x7FFFFFFF)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }
      }

      else
      {
        LODWORD(v12) = 0;
        v1 = v49;
      }

LABEL_111:
      v27 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_112:
        v40 = v9;
        goto LABEL_113;
      }

LABEL_170:
      v78 = v27;
      v79 = v12;
      swift_once();
      v27 = v78;
      LODWORD(v12) = v79;
      goto LABEL_112;
    }

    LODWORD(v1) = v37;
    v35 = __DataStorage._offset.getter();
    if (!__OFSUB__(v46, v35))
    {
      v9 += v46 - v35;
      goto LABEL_101;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  *&v85 = *(v1 + 16);
  DWORD2(v85) = v37;
  WORD6(v85) = WORD2(v37);
  v27 = ppStmt[0];
  v39 = BYTE6(v37);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v80 = ppStmt[0];
    swift_once();
    v27 = v80;
  }

  v40 = &v85;
  LODWORD(v12) = v39;
LABEL_113:
  v35 = sqlite3_bind_blob(v27, 3, v40, v12, v10);
  if (v35)
  {
    goto LABEL_151;
  }

  v51 = *(v1 + 48);
  v52 = *(v1 + 56);
  v53 = v52 >> 62;
  if ((v52 >> 62) <= 1)
  {
    if (!v53)
    {
      *&v85 = *(v1 + 48);
      DWORD2(v85) = v52;
      WORD6(v85) = WORD2(v52);
      v35 = ppStmt[0];
      LODWORD(v1) = BYTE6(v52);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v83 = ppStmt[0];
        swift_once();
        v35 = v83;
      }

      v54 = &v85;
      goto LABEL_149;
    }

    goto LABEL_133;
  }

  if (v53 != 2)
  {
    goto LABEL_143;
  }

  v55 = *(v51 + 16);
  v56 = *(v51 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v57 = __DataStorage._offset.getter();
    if (__OFSUB__(v55, v57))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v9 += v55 - v57;
  }

  v28 = __OFSUB__(v56, v55);
  v58 = v56 - v55;
  if (v28)
  {
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v35;
  }

  if (v9)
  {
    v1 = v59;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_183;
  }

  v51 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_133:
  v60 = v51;
  v61 = v51 >> 32;
  v62 = v61 - v60;
  if (v61 < v60)
  {
    __break(1u);
    goto LABEL_181;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v63 = __DataStorage._offset.getter();
    if (!__OFSUB__(v60, v63))
    {
      v9 += v60 - v63;
      goto LABEL_137;
    }

    goto LABEL_186;
  }

LABEL_137:
  result = MEMORY[0x2667557A0]();
  if (result >= v62)
  {
    v1 = v62;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_147;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_143:
    *(&v85 + 6) = 0;
    *&v85 = 0;
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_144:
      v54 = &v85;
      v65 = 0;
      goto LABEL_150;
    }

LABEL_181:
    v84 = v35;
    swift_once();
    v35 = v84;
    goto LABEL_144;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_147:
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_148:
      v54 = v9;
LABEL_149:
      v65 = v1;
LABEL_150:
      if (!sqlite3_bind_blob(v35, 4, v54, v65, v10))
      {
        result = ppStmt[0];
        goto LABEL_152;
      }

LABEL_151:
      *&v85 = 0x726F7272456C7173;
      *(&v85 + 1) = 0xE90000000000003ALL;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v66);

      v67 = v85;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v68 = 0;
      *(v68 + 8) = v67;
      result = swift_willThrow();
LABEL_152:
      v69 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_179:
    v82 = v35;
    swift_once();
    v35 = v82;
    goto LABEL_148;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *IncomingEventModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("DELETE FROM Incoming_Event_Table WHERE client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_143:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_115;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v67 = *v1;
      DWORD2(v67) = v7;
      WORD6(v67) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v67;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_119:
      v58 = v5;
      swift_once();
      v5 = v58;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v67;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_121:
    v59 = v5;
    swift_once();
    v5 = v59;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_125;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_123;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_121;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_119;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v56 = ppStmt[0];
    v57 = v12;
    swift_once();
    v5 = v56;
    LODWORD(v12) = v57;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (!v22)
  {
    *&v67 = *(v1 + 16);
    DWORD2(v67) = v21;
    WORD6(v67) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v67;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_126:
    v62 = v5;
    swift_once();
    v5 = v62;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_128;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v67;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_128:
      v63 = v5;
      swift_once();
      v5 = v63;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_123:
    v60 = v5;
    v61 = v12;
    swift_once();
    v5 = v60;
    LODWORD(v12) = v61;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 48);
  v37 = *(v1 + 56);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v67 = *(v1 + 48);
      DWORD2(v67) = v37;
      WORD6(v67) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v27 = v65;
      }

      v39 = &v67;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_138;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_136;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v67;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_136:
    v66 = v27;
    swift_once();
    v27 = v66;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_142;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_134:
    v64 = v27;
    swift_once();
    v27 = v64;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (!sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    result = ppStmt[0];
    goto LABEL_116;
  }

LABEL_115:
  *&v67 = 0x726F7272456C7173;
  *(&v67 + 1) = 0xE90000000000003ALL;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v51);

  v52 = v67;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = v52;
  result = swift_willThrow();
LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static IncomingEventModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 1) == 5)
  {
    goto LABEL_12;
  }

  v4 = sqlite3_column_blob(a1, 1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 1);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 2) == 5 || (v10 = sqlite3_column_blob(a1, 2)) == 0)
  {
    v22 = v7;
    v23 = v9;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = sqlite3_column_bytes(a1, 2);
  v13 = specialized Data.init(bytes:count:)(v11, v12);
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v16 = sqlite3_column_blob(a1, 3)) == 0)
  {
    outlined consume of Data._Representation(v7, v9);
    v22 = v13;
    v23 = v15;
    goto LABEL_11;
  }

  v17 = v16;
  v18 = sqlite3_column_bytes(a1, 3);
  v19 = specialized Data.init(bytes:count:)(v17, v18);
  v21 = v20;
  if (sqlite3_column_type(a1, 4) == 5 || (v30 = v21, (v26 = sqlite3_column_blob(a1, 4)) == 0))
  {
    outlined consume of Data._Representation(v7, v9);
    outlined consume of Data._Representation(v13, v15);
    v22 = v19;
    v23 = v21;
LABEL_11:
    outlined consume of Data._Representation(v22, v23);
LABEL_12:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 3;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  v27 = v26;
  v28 = sqlite3_column_bytes(a1, 4);
  result = specialized Data.init(bytes:count:)(v27, v28);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v19;
  a2[5] = v30;
  a2[6] = result;
  a2[7] = v29;
  return result;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance IncomingEventModel())@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v1 = static IncomingEventModel.converter;
  v0 = qword_281EF81C0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

uint64_t *IncomingEventQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static IncomingEventQuery.converter;
}

uint64_t static IncomingEventQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static IncomingEventQuery.converter;

  return v0;
}

uint64_t static IncomingEventQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static IncomingEventQuery.converter = a1;
  qword_280016860 = a2;
}

uint64_t (*static IncomingEventQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static IncomingEventQuery.converter : IncomingEventQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static IncomingEventQuery.converter;
  v2 = qword_280016860;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static IncomingEventQuery.converter : IncomingEventQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static IncomingEventQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error);
  qword_280016860 = v3;
}

sqlite3_stmt *IncomingEventQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Incoming_Event_Table WHERE client_id = ? ORDER BY id ASC;");
  if (!v6)
  {
LABEL_50:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v28 = a2;
      WORD4(v28) = a3;
      BYTE10(v28) = BYTE2(a3);
      BYTE11(v28) = BYTE3(a3);
      BYTE12(v28) = BYTE4(a3);
      BYTE13(v28) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v28;
        goto LABEL_39;
      }

LABEL_43:
      v26 = v9;
      swift_once();
      v9 = v26;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_47;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_45:
    v27 = v7;
    swift_once();
    v7 = v27;
LABEL_33:
    if (!sqlite3_bind_blob(v7, 1, &v28, 0, SQLITE_TRANSIENT))
    {
      goto LABEL_34;
    }

LABEL_40:
    *&v28 = 0x726F7272456C7173;
    *(&v28 + 1) = 0xE90000000000003ALL;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v21);

    v22 = v28;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = v22;
    result = swift_willThrow();
    goto LABEL_41;
  }

  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_25:
  v9 = MEMORY[0x2667557A0]();
  if (v9 >= (a2 >> 32) - a2)
  {
    a2 = (a2 >> 32) - a2;
  }

  else
  {
    a2 = v9;
  }

  if (v14)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (a2 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_32:
      *(&v28 + 6) = 0;
      *&v28 = 0;
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(a2) = 0;
  }

LABEL_36:
  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v25 = ppStmt[0];
    swift_once();
    v9 = v25;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v14;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
  {
    goto LABEL_40;
  }

LABEL_34:
  result = ppStmt[0];
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance IncomingEventQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static IncomingEventQuery.converter;
  v0 = qword_280016860;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance IncomingClientWithEventQuery())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static IncomingClientWithEventQuery.converter[0];
  v0 = qword_281EF81D0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegyrzo_TRTA_0;
}

sqlite3_stmt *specialized static IncomingEventModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Incoming_Event_Table (\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    incoming_event_data BLOB NOT NULL,\n    event_identifier BLOB NOT NULL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static IncomingEventModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Incoming_Event_Table_Event_ID_Index ON Incoming_Event_Table(event_identifier, group_id, client_id, id);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized IncomingClientWithEventQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT DISTINCT client_id FROM Incoming_Event_Table;");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static IncomingEventModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Incoming_Event_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for IncomingEventModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for IncomingEventModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652C17A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *_ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegnrzo_AbFsAG_pIegyozo_TRTA_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = a1;
  result = v3(&v6, &v7);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegnrzo_TRTA_0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
  }

  return result;
}

uint64_t _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegyrzo_TRTA_0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t RegisterKeyPackageRequest.telURI.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RegisterKeyPackageRequest.keyPackage.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t RegisterKeyPackageRequest.pnaToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RegisterKeyPackageRequest.pnaType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RegisterKeyPackageRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data?(v1, *(v0 + 72));
  return v1;
}

uint64_t RegisterKeyPackageRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void *RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1)
{
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v37 - 8);
  v34 = *(v2 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v30 - v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[9];
  v32 = v1[8];
  v33 = v10;
  v31 = v12;
  v13 = type metadata accessor for RegisterKeyPackageRequestMessage();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v15 = &v14[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v15 = v4;
  *(v15 + 1) = v5;
  v16 = &v14[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v16 = v6;
  v16[1] = v7;
  v17 = &v14[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v17 = v9;
  *(v17 + 1) = v8;
  v18 = &v14[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v18 = v33;
  *(v18 + 1) = v11;

  outlined copy of Data._Representation(v6, v7);
  v39.receiver = v14;
  v39.super_class = v13;
  v19 = objc_msgSendSuper2(&v39, sel_init);
  if (os_variant_has_internal_content())
  {
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0x88);
    v22 = v31;
    v21 = v32;
    outlined copy of Data?(v32, v31);
    v20(v21, v22);
  }

  v23 = v35;
  v24 = v37;
  (*(v2 + 16))(v35, v36, v37);
  v25 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = swift_allocObject();
  (*(v2 + 32))(v26 + v25, v23, v24);
  aBlock[4] = partial apply for closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_5;
  v27 = _Block_copy(aBlock);
  v28 = v19;

  [v28 setCompletionBlock_];
  _Block_release(v27);

  return v28;
}

id RegisterKeyPackageRequestMessage.__allocating_init(telURI:keyPackage:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v18 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v21 = a7;
  *(v21 + 1) = a8;
  v23.receiver = v17;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogCategory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D4C900], v9);
  secureMessagingLogger(category:)();
  (*(v10 + 8))(v13, v9);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v58 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v57[0] = v15;
    v57[1] = a5;
    v24 = v23;
    v62[0] = v23;
    *v22 = 136315138;
    v61[0] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v62);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_26524C000, v19, v20, "resultDictionary: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = v24;
    v15 = v57[0];
    MEMORY[0x2667577B0](v28, -1, -1);
    v29 = v22;
    v14 = v58;
    MEMORY[0x2667577B0](v29, -1, -1);
  }

  switch(a3)
  {
    case 2:
      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v37 = swift_allocError();
      *v39 = 1;
LABEL_15:
      v62[0] = v37;
      goto LABEL_16;
    case 1:
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26524C000, v34, v35, "Server told us not to retry.", v36, 2u);
        MEMORY[0x2667577B0](v36, -1, -1);
      }

      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v37 = swift_allocError();
      *v38 = 0;
      goto LABEL_15;
    case 0:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26524C000, v30, v31, "Got success.", v32, 2u);
        MEMORY[0x2667577B0](v32, -1, -1);
      }

      break;
  }

  if (!a2)
  {
    if (!a4)
    {
      v63 = &type metadata for RegisterKeyPackageResponse;
      v64 = &protocol witness table for RegisterKeyPackageResponse;
      v56 = swift_allocObject();
      v62[0] = v56;
      *(v56 + 16) = 0;
      *(v56 + 24) = 1;
      *(v56 + 32) = 0u;
      *(v56 + 48) = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v15 + 8))(v18, v14);
    }

    v59 = 0x737574617473;
    v60 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v42 & 1) != 0))
    {
      v43 = v18;
      outlined init with copy of Any(*(a4 + 56) + 32 * v41, v61);
      outlined destroy of AnyHashable(v62);
      if (swift_dynamicCast())
      {
        v44 = 0;
        v45 = v59;
LABEL_26:
        v59 = 0x746E69682D7478;
        v60 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        if (*(a4 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v47 & 1) != 0))
        {
          v48 = a4;
          outlined init with copy of Any(*(a4 + 56) + 32 * v46, v61);
          outlined destroy of AnyHashable(v62);
          if (swift_dynamicCast())
          {
            v50 = v59;
            v49 = v60;
LABEL_32:
            v59 = 0x6567617373656DLL;
            v60 = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            if (*(v48 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v52 & 1) != 0))
            {
              outlined init with copy of Any(*(v48 + 56) + 32 * v51, v61);
              outlined destroy of AnyHashable(v62);
              if (swift_dynamicCast())
              {
                v53 = v59;
                v54 = v60;
LABEL_38:
                v63 = &type metadata for RegisterKeyPackageResponse;
                v64 = &protocol witness table for RegisterKeyPackageResponse;
                v55 = swift_allocObject();
                v62[0] = v55;
                *(v55 + 16) = v45;
                *(v55 + 24) = v44;
                *(v55 + 32) = v50;
                *(v55 + 40) = v49;
                *(v55 + 48) = v53;
                *(v55 + 56) = v54;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
                CheckedContinuation.resume(returning:)();
                (*(v15 + 8))(v43, v14);
              }
            }

            else
            {
              outlined destroy of AnyHashable(v62);
            }

            v53 = 0;
            v54 = 0;
            goto LABEL_38;
          }
        }

        else
        {
          v48 = a4;
          outlined destroy of AnyHashable(v62);
        }

        v50 = 0;
        v49 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v43 = v18;
      outlined destroy of AnyHashable(v62);
    }

    v45 = 0;
    v44 = 1;
    goto LABEL_26;
  }

  v62[0] = a2;
  v33 = a2;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  return (*(v15 + 8))(v18, v14);
}

void __swiftcall RegisterKeyPackageResponse.init()(SecureMessagingAgentCore::RegisterKeyPackageResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
}

uint64_t RegisterKeyPackageRequest.init(telURI:keyPackage:pnaToken:pnaType:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t RegisterKeyPackageResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t RegisterKeyPackageResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RegisterKeyPackageResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RegisterKeyPackageResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RegisterKeyPackageResponse.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RegisterKeyPackageResponse.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall RegisterKeyPackageResponse.init(status:splunkHint:message:)(SecureMessagingAgentCore::RegisterKeyPackageResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
}

uint64_t RegisterKeyPackageRequestMessage.telURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI + 8);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.keyPackage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage + 8));
  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pnaToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken + 8);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pnaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType + 8);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t RegisterKeyPackageRequestMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

id RegisterKeyPackageRequestMessage.init(telURI:keyPackage:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v9 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for RegisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_2652C2968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double RegisterKeyPackageRequestMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 2;
  v2 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_265343880;
  *(v0 + 32) = 6910581;
  *(v0 + 40) = 0xE300000000000000;
  *(v0 + 88) = v2;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0x616B63615079656BLL;
  *(v0 + 72) = 0xEA00000000006567;
  return result;
}

unint64_t RegisterKeyPackageRequestMessage.messageBody.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265342D80;
  v2 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI + 8);
  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v3;

  AnyHashable.init<A>(_:)();
  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage);
  v6 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage + 8);
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  outlined copy of Data._Representation(v5, v6);
  AnyHashable.init<A>(_:)();
  v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken);
  v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken + 8);
  *(inited + 240) = v2;
  *(inited + 216) = v8;
  *(inited + 224) = v7;

  AnyHashable.init<A>(_:)();
  v10 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType);
  v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType + 8);
  *(inited + 312) = v2;
  *(inited + 288) = v10;
  *(inited + 296) = v9;

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  return v11;
}

id RegisterKeyPackageRequestMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegisterKeyPackageRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2652C3020@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2652C307C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for RegisterKeyPackageRequest(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RegisterKeyPackageRequest(uint64_t result, int a2, int a3)
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

uint64_t sub_2652C3298()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t GroupMemberModel.init(clientIdentifier:groupID:uri:member:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t GroupMemberModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupMemberModel.groupID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GroupMemberModel.uri.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GroupMemberModel.member.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

const char *GroupMemberModel.insertStatement(_:)(uint64_t a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if (!*(v1 + 40) || (v2 = *(v1 + 56), v2 >> 60 == 15) || (*(v1 + 68) & 1) != 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    result = swift_willThrow();
LABEL_5:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  LODWORD(v9) = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v8, v2);
  result = strdup("INSERT OR REPLACE INTO Member_Table (client_id, group_id, uri, member, state) VALUES (?, ?, ?, ?, ?);");
  if (!result)
  {
    goto LABEL_105;
  }

  v10 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
  if (v10)
  {
LABEL_8:
    *&v59 = 0x726F7272456C7173;
    *(&v59 + 1) = 0xE90000000000003ALL;
LABEL_9:
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v11);

    v12 = v59;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = v12;
    swift_willThrow();
    result = outlined consume of Data?(v8, v2);
    goto LABEL_5;
  }

  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v16)
    {
      *&v59 = *v1;
      DWORD2(v59) = v15;
      WORD6(v59) = WORD2(v15);
      v10 = ppStmt[0];
      LODWORD(v17) = BYTE6(v15);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_13:
        v18 = SQLITE_TRANSIENT;
        v19 = v17;
        goto LABEL_24;
      }

LABEL_91:
      v52 = v10;
      swift_once();
      v10 = v52;
      goto LABEL_13;
    }

    v58 = v9;
    v23 = v14;
    v24 = v14 >> 32;
    v9 = v24 - v23;
    if (v24 >= v23)
    {
      v25 = __DataStorage._bytes.getter();
      v55 = v8;
      if (!v25)
      {
        v8 = 0;
LABEL_39:
        v10 = MEMORY[0x2667557A0]();
        if (v10 >= v9)
        {
          v17 = v9;
        }

        else
        {
          v17 = v10;
        }

        if (v8)
        {
          LODWORD(v9) = v58;
          if (v17 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_91;
          }

          if (v17 <= 0x7FFFFFFF)
          {
            goto LABEL_47;
          }

          __break(1u);
        }

        LODWORD(v17) = 0;
        LODWORD(v9) = v58;
LABEL_47:
        v34 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          swift_once();
        }

        v21 = v34;
        v18 = SQLITE_TRANSIENT;
        v31 = v8;
        v32 = v17;
        v33 = SQLITE_TRANSIENT;
LABEL_50:
        v8 = v55;
        if (sqlite3_bind_blob(v21, 1, v31, v32, v33))
        {
          goto LABEL_8;
        }

        goto LABEL_51;
      }

      v26 = v25;
      v27 = __DataStorage._offset.getter();
      if (!__OFSUB__(v23, v27))
      {
        v8 = v23 - v27 + v26;
        goto LABEL_39;
      }

LABEL_99:
      __break(1u);
    }

    __break(1u);
    goto LABEL_93;
  }

  if (v16 == 2)
  {
    v56 = v1;
    v57 = v9;
    v9 = *(v14 + 16);
    v20 = *(v14 + 24);
    v1 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v21 = __DataStorage._bytes.getter();
    v55 = v8;
    if (v21)
    {
      a1 = v21;
      v1 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v21))
      {
        __break(1u);
        goto LABEL_99;
      }

      v22 = (v9 - v21 + a1);
    }

    else
    {
      v22 = 0;
    }

    v28 = __OFSUB__(v20, v9);
    v29 = v20 - v9;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = MEMORY[0x2667557A0]();
      if (v21 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v21;
      }

      if (v22)
      {
        a1 = v30;
      }

      else
      {
        a1 = 0;
      }

      LODWORD(v9) = v57;
      if (a1 >= 0xFFFFFFFF80000000)
      {
        v1 = v56;
        if (a1 <= 0x7FFFFFFF)
        {
          v21 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_37:
            v18 = SQLITE_TRANSIENT;
            v31 = v22;
            v32 = a1;
            v33 = SQLITE_TRANSIENT;
            goto LABEL_50;
          }

LABEL_97:
          v54 = v21;
          swift_once();
          v21 = v54;
          goto LABEL_37;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }
    }

    __break(1u);
    goto LABEL_96;
  }

  *(&v59 + 6) = 0;
  *&v59 = 0;
  v10 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_93:
    v53 = v10;
    swift_once();
    v10 = v53;
  }

  v18 = SQLITE_TRANSIENT;
  v19 = 0;
LABEL_24:
  if (sqlite3_bind_blob(v10, 1, &v59, v19, v18))
  {
    goto LABEL_8;
  }

LABEL_51:
  v35 = ppStmt[0];
  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v51 = *(v1 + 16);
    swift_once();
  }

  v38 = String.utf8CString.getter();
  v39 = sqlite3_bind_text(v35, 2, (v38 + 32), -1, v18);

  if (v39 || (v40 = ppStmt[0], v41 = String.utf8CString.getter(), LODWORD(v40) = sqlite3_bind_text(v40, 3, (v41 + 32), -1, v18), result = , v40))
  {
    *&v59 = 0x726F7272456C7173;
    *(&v59 + 1) = 0xE90000000000003ALL;
    goto LABEL_9;
  }

  v42 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v42 != 2)
    {
LABEL_83:
      *(&v59 + 6) = 0;
      *&v59 = 0;
      v44 = ppStmt[0];
      v45 = &v59;
      LODWORD(v43) = 0;
      goto LABEL_87;
    }

    v47 = *(v8 + 16);
    v46 = *(v8 + 24);
    result = __DataStorage._bytes.getter();
    v48 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v47, result))
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v48 += v47 - result;
    }

    v28 = __OFSUB__(v46, v47);
    v49 = v46 - v47;
    if (v28)
    {
      goto LABEL_101;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v49)
    {
      v50 = v49;
    }

    else
    {
      v50 = result;
    }

    if (v48)
    {
      v43 = v50;
    }

    else
    {
      v43 = 0;
    }

    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_102;
    }

    if (v43 <= 0x7FFFFFFF)
    {
      goto LABEL_86;
    }

    __break(1u);
  }

  else if (!v42)
  {
    *&v59 = v8;
    WORD4(v59) = v2;
    BYTE10(v59) = BYTE2(v2);
    BYTE11(v59) = BYTE3(v2);
    BYTE12(v59) = BYTE4(v2);
    BYTE13(v59) = BYTE5(v2);
    LODWORD(v43) = BYTE6(v2);
    v44 = ppStmt[0];
    v45 = &v59;
LABEL_87:
    if (!sqlite3_bind_blob(v44, 4, v45, v43, v18) && !sqlite3_bind_int(ppStmt[0], 5, v9))
    {
      outlined consume of Data?(v8, v2);
      result = ppStmt[0];
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v8 >> 32 < v8)
  {
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v48 = __DataStorage._bytes.getter();
  if (!v48)
  {
    goto LABEL_77;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v8, result))
  {
    goto LABEL_104;
  }

  v48 += v8 - result;
LABEL_77:
  result = MEMORY[0x2667557A0]();
  if (result >= (v8 >> 32) - v8)
  {
    v43 = (v8 >> 32) - v8;
  }

  else
  {
    v43 = result;
  }

  if (!v48)
  {
    LODWORD(v43) = 0;
    goto LABEL_86;
  }

  if (v43 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v43 <= 0x7FFFFFFF)
  {
LABEL_86:
    v44 = ppStmt[0];
    v45 = v48;
    goto LABEL_87;
  }

LABEL_106:
  __break(1u);
  return result;
}

uint64_t GroupMemberModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if (!*(v1 + 40) || (v2 = *(v1 + 56), v2 >> 60 == 15) || (*(v1 + 68) & 1) != 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    result = swift_willThrow();
LABEL_5:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v8, v2);
  result = strdup("UPDATE Member_Table SET\n    member = ?, state = ?\nWHERE\n    client_id = ? AND group_id = ? AND uri = ?;");
  if (result)
  {
    v10 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v10)
    {
LABEL_8:
      *&v71 = 0x726F7272456C7173;
      *(&v71 + 1) = 0xE90000000000003ALL;
LABEL_9:
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v11);

      v12 = v71;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v13 = 0;
      *(v13 + 8) = v12;
      swift_willThrow();
      result = outlined consume of Data?(v8, v2);
      goto LABEL_5;
    }

    v14 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (!v14)
      {
        *&v71 = v8;
        WORD4(v71) = v2;
        BYTE10(v71) = BYTE2(v2);
        BYTE11(v71) = BYTE3(v2);
        BYTE12(v71) = BYTE4(v2);
        BYTE13(v71) = BYTE5(v2);
        v10 = ppStmt[0];
        LODWORD(v15) = BYTE6(v2);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_13:
          v16 = SQLITE_TRANSIENT;
          v17 = v15;
          goto LABEL_24;
        }

LABEL_99:
        v58 = v10;
        swift_once();
        v10 = v58;
        goto LABEL_13;
      }

      LODWORD(v68) = v9;
      v9 = v7;
      if (v8 >> 32 >= v8)
      {
        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          v25 = 0;
LABEL_39:
          v10 = MEMORY[0x2667557A0]();
          if (v10 >= (v8 >> 32) - v8)
          {
            v15 = (v8 >> 32) - v8;
          }

          else
          {
            v15 = v10;
          }

          if (v25)
          {
            if (v15 < 0xFFFFFFFF80000000)
            {
              __break(1u);
              goto LABEL_99;
            }

            if (v15 <= 0x7FFFFFFF)
            {
              goto LABEL_47;
            }

            __break(1u);
          }

          LODWORD(v15) = 0;
LABEL_47:
          v29 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v30 = v29;
          v16 = SQLITE_TRANSIENT;
          v28 = sqlite3_bind_blob(v30, 1, v25, v15, SQLITE_TRANSIENT);
LABEL_50:
          v9 = v68;
          if (v28)
          {
            goto LABEL_8;
          }

          goto LABEL_51;
        }

        v21 = v23;
        v24 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v24))
        {
          v25 = v21 + v8 - v24;
          goto LABEL_39;
        }

LABEL_107:
        __break(1u);
LABEL_108:
        swift_once();
LABEL_81:
        v51 = (String.utf8CString.getter() + 32);
        v52 = sqlite3_bind_text(v21, 4, v51, -1, v68);

        if (!v52)
        {
          v53 = ppStmt[0];
          v54 = String.utf8CString.getter();
          LODWORD(v53) = sqlite3_bind_text(v53, 5, (v54 + 32), -1, v68);

          if (!v53)
          {
            outlined consume of Data?(v8, v2);
            result = ppStmt[0];
            goto LABEL_5;
          }
        }

        *&v71 = 0x726F7272456C7173;
        *(&v71 + 1) = 0xE90000000000003ALL;
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_101;
    }

    if (v14 != 2)
    {
      *(&v71 + 6) = 0;
      *&v71 = 0;
      v10 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_23:
        v16 = SQLITE_TRANSIENT;
        v17 = 0;
LABEL_24:
        if (sqlite3_bind_blob(v10, 1, &v71, v17, v16))
        {
          goto LABEL_8;
        }

LABEL_51:
        result = sqlite3_bind_int(ppStmt[0], 2, v9);
        if (result)
        {
          goto LABEL_8;
        }

        v68 = v16;
        v32 = *v1;
        v33 = *(v1 + 8);
        v34 = v33 >> 62;
        if ((v33 >> 62) <= 1)
        {
          if (!v34)
          {
            *&v71 = *v1;
            DWORD2(v71) = v33;
            WORD6(v71) = WORD2(v33);
            result = ppStmt[0];
            v35 = BYTE6(v33);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v61 = ppStmt[0];
              swift_once();
              result = v61;
            }

            v36 = &v71;
            v37 = v35;
            v31 = v68;
LABEL_79:
            if (sqlite3_bind_blob(result, 3, v36, v37, v31))
            {
              goto LABEL_8;
            }

LABEL_80:
            v21 = ppStmt[0];
            v49 = *(v1 + 16);
            v50 = *(v1 + 24);
            if (one-time initialization token for SQLITE_TRANSIENT == -1)
            {
              goto LABEL_81;
            }

            goto LABEL_108;
          }

          v41 = v32;
          v42 = v32 >> 32;
          v43 = v42 - v41;
          if (v42 >= v41)
          {
            v44 = __DataStorage._bytes.getter();
            if (!v44)
            {
              v46 = 0;
              goto LABEL_85;
            }

            v45 = v44;
            result = __DataStorage._offset.getter();
            if (!__OFSUB__(v41, result))
            {
              v46 = (v41 - result + v45);
LABEL_85:
              result = MEMORY[0x2667557A0]();
              if (result >= v43)
              {
                v55 = v43;
              }

              else
              {
                v55 = result;
              }

              if (!v46)
              {
                goto LABEL_91;
              }

              v56 = v68;
              if (v55 < 0xFFFFFFFF80000000)
              {
                __break(1u);
LABEL_91:
                LODWORD(v55) = 0;
                v56 = v68;
                goto LABEL_93;
              }

              if (v55 <= 0x7FFFFFFF)
              {
LABEL_93:
                v57 = ppStmt[0];
                if (one-time initialization token for SQLITE_TRANSIENT != -1)
                {
                  v66 = ppStmt[0];
                  swift_once();
                  v57 = v66;
                  v56 = v68;
                }

                if (sqlite3_bind_blob(v57, 3, v46, v55, v56))
                {
                  goto LABEL_8;
                }

                goto LABEL_80;
              }

              goto LABEL_117;
            }

LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          __break(1u);
          goto LABEL_110;
        }

        if (v34 != 2)
        {
          *(&v71 + 6) = 0;
          *&v71 = 0;
          result = ppStmt[0];
          v31 = v68;
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_66:
            v36 = &v71;
            v37 = 0;
            goto LABEL_79;
          }

LABEL_110:
          v62 = result;
          v63 = v31;
          swift_once();
          v31 = v63;
          result = v62;
          goto LABEL_66;
        }

        v70 = v1;
        v38 = *(v32 + 16);
        v67 = *(v32 + 24);
        v1 = v33 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._bytes.getter();
        if (result)
        {
          v39 = result;
          v1 = v33 & 0x3FFFFFFFFFFFFFFFLL;
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v38, result))
          {
            __break(1u);
            goto LABEL_116;
          }

          v40 = (v38 - result + v39);
        }

        else
        {
          v40 = 0;
        }

        v47 = v67 - v38;
        if (__OFSUB__(v67, v38))
        {
          __break(1u);
        }

        else
        {
          v1 = v33 & 0x3FFFFFFFFFFFFFFFLL;
          result = MEMORY[0x2667557A0]();
          if (result >= v47)
          {
            v48 = v67 - v38;
          }

          else
          {
            v48 = result;
          }

          v36 = v40;
          if (v40)
          {
            v47 = v48;
          }

          else
          {
            v47 = 0;
          }

          if (v47 >= 0xFFFFFFFF80000000)
          {
            v31 = v68;
            v1 = v70;
            if (v47 <= 0x7FFFFFFF)
            {
              result = ppStmt[0];
              if (one-time initialization token for SQLITE_TRANSIENT == -1)
              {
LABEL_78:
                v37 = v47;
                goto LABEL_79;
              }

LABEL_114:
              v64 = result;
              v65 = v36;
              swift_once();
              v36 = v65;
              result = v64;
              v31 = v68;
              goto LABEL_78;
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }
        }

        __break(1u);
        goto LABEL_113;
      }

LABEL_101:
      v59 = v10;
      swift_once();
      v10 = v59;
      goto LABEL_23;
    }

    v69 = v1;
    v18 = *(v8 + 16);
    v19 = *(v8 + 24);
    v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = __DataStorage._bytes.getter();
    LODWORD(v68) = v9;
    if (v20)
    {
      v21 = v20;
      v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v20))
      {
        __break(1u);
        goto LABEL_107;
      }

      v22 = v21 + v18 - v20;
    }

    else
    {
      v22 = 0;
    }

    v26 = v19 - v18;
    if (__OFSUB__(v19, v18))
    {
      __break(1u);
    }

    else
    {
      v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = MEMORY[0x2667557A0]();
      if (v20 >= v26)
      {
        v27 = (v19 - v18);
      }

      else
      {
        v27 = v20;
      }

      if (v22)
      {
        v26 = v27;
      }

      else
      {
        v26 = 0;
      }

      if (v26 >= 0xFFFFFFFF80000000)
      {
        v1 = v69;
        if (v26 <= 0x7FFFFFFF)
        {
          v20 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_37:
            v16 = SQLITE_TRANSIENT;
            v28 = sqlite3_bind_blob(v20, 1, v22, v26, SQLITE_TRANSIENT);
            goto LABEL_50;
          }

LABEL_105:
          v60 = v20;
          swift_once();
          v20 = v60;
          goto LABEL_37;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_118:
  __break(1u);
  return result;
}

const char *GroupMemberModel.deleteStatement(_:)(uint64_t a1)
{
  v3 = v1;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.PersistedMember.MemberState();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt[0] = 0;
  if (*(v1 + 40) && (*(v1 + 68) & 1) == 0)
  {
    v17 = *(v1 + 32);
    v78 = v2;
    v79 = v17;
    v18 = *(v1 + 64);
    v19 = v6[13];
    v75 = *MEMORY[0x277D4CD30];
    v76 = v6 + 13;
    v74 = v19;
    v19(v9);
    MLS.PersistedMember.MemberState.rawValue.getter();
    v73 = v6[1];
    v73(v9, v5);
    v77 = v18;
    v20 = String.utf8CString.getter();
    v21 = strdup((v20 + 32));

    if (!v21)
    {
      goto LABEL_117;
    }

    v11 = sqlite3_prepare_v2(a1, v21, -1, ppStmt, 0);
    if (v11)
    {
      goto LABEL_87;
    }

    v22 = *v3;
    a1 = v3[1];
    v23 = a1 >> 62;
    if ((a1 >> 62) <= 1)
    {
      if (!v23)
      {
        *&v81 = *v3;
        DWORD2(v81) = a1;
        WORD6(v81) = WORD2(a1);
        v11 = ppStmt[0];
        LODWORD(a1) = BYTE6(a1);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_15:
          v24 = SQLITE_TRANSIENT;
          v25 = &v81;
LABEL_85:
          v45 = a1;
LABEL_86:
          LODWORD(v11) = sqlite3_bind_blob(v11, 1, v25, v45, v24);
          if (v11)
          {
            goto LABEL_87;
          }

          a1 = ppStmt[0];
          v56 = v3[2];
          v55 = v3[3];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_91;
          }

          goto LABEL_102;
        }

LABEL_106:
        v67 = v11;
        swift_once();
        v11 = v67;
        goto LABEL_15;
      }

      v39 = v22;
      v40 = v22 >> 32;
      v72 = (v40 - v39);
      if (v40 >= v39)
      {
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (__OFSUB__(v39, v43))
          {
            goto LABEL_115;
          }

          v44 = (v39 - v43 + v42);
        }

        else
        {
          v44 = 0;
        }

        v11 = MEMORY[0x2667557A0]();
        if (v11 >= v72)
        {
          a1 = v72;
        }

        else
        {
          a1 = v11;
        }

        if (v44)
        {
          if (a1 < 0xFFFFFFFF80000000)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          if (a1 <= 0x7FFFFFFF)
          {
LABEL_82:
            v11 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v70 = ppStmt[0];
              swift_once();
              v11 = v70;
            }

            v24 = SQLITE_TRANSIENT;
            v25 = v44;
            goto LABEL_85;
          }

          __break(1u);
        }

        LODWORD(a1) = 0;
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_108;
    }

    if (v23 != 2)
    {
      *(&v81 + 6) = 0;
      *&v81 = 0;
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_62:
        v24 = SQLITE_TRANSIENT;
        v25 = &v81;
        v45 = 0;
        goto LABEL_86;
      }

LABEL_108:
      v68 = v11;
      swift_once();
      v11 = v68;
      goto LABEL_62;
    }

    v34 = *(v22 + 16);
    v72 = *(v22 + 24);
    v11 = __DataStorage._bytes.getter();
    v35 = v11;
    if (v11)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v11))
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
      }

      v35 = (v35 + v34 - v11);
    }

    v36 = __OFSUB__(v72, v34);
    v37 = v72 - v34;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v11;
      }

      if (v35)
      {
        a1 = v38;
      }

      else
      {
        a1 = 0;
      }

      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 <= 0x7FFFFFFF)
        {
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_56:
            v24 = SQLITE_TRANSIENT;
            v25 = v35;
            goto LABEL_85;
          }

LABEL_112:
          v69 = v11;
          swift_once();
          v11 = v69;
          goto LABEL_56;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  result = strdup("DELETE FROM Member_Table WHERE client_id = ? AND group_id = ?;");
  if (result)
  {
    v11 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v11)
    {
      goto LABEL_87;
    }

    v12 = *v1;
    v9 = *(v1 + 8);
    v13 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v13)
      {
        *&v81 = *v1;
        DWORD2(v81) = v9;
        WORD6(v81) = WORD2(v9);
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          v65 = ppStmt[0];
          swift_once();
          v11 = v65;
        }

        v14 = SQLITE_TRANSIENT;
        v15 = &v81;
        v16 = BYTE6(v9);
        goto LABEL_68;
      }

      v30 = v12;
      v31 = v12 >> 32;
      v32 = v31 - v30;
      if (v31 < v30)
      {
        __break(1u);
        goto LABEL_98;
      }

      v5 = __DataStorage._bytes.getter();
      if (!v5)
      {
        goto LABEL_34;
      }

      v11 = __DataStorage._offset.getter();
      if (!__OFSUB__(v30, v11))
      {
        v5 += v30 - v11;
LABEL_34:
        v33 = MEMORY[0x2667557A0]();
        if (v33 >= v32)
        {
          v9 = v32;
        }

        else
        {
          v9 = v33;
        }

        if (!v5)
        {
          LODWORD(v9) = 0;
          goto LABEL_65;
        }

        if (v9 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_40:
          *(&v81 + 6) = 0;
          *&v81 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_41:
            v14 = SQLITE_TRANSIENT;
            v15 = &v81;
            v16 = 0;
            goto LABEL_68;
          }

LABEL_98:
          v66 = v11;
          swift_once();
          v11 = v66;
          goto LABEL_41;
        }

        if (v9 <= 0x7FFFFFFF)
        {
LABEL_65:
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v62 = ppStmt[0];
            swift_once();
            v11 = v62;
          }

          v14 = SQLITE_TRANSIENT;
          v15 = v5;
          v16 = v9;
LABEL_68:
          LODWORD(v11) = sqlite3_bind_blob(v11, 1, v15, v16, v14);
          if (!v11)
          {
            v46 = ppStmt[0];
            v47 = v3[2];
            v48 = v3[3];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v63 = v3[2];
              v64 = v3[3];
              swift_once();
            }

            v49 = String.utf8CString.getter();
            v50 = sqlite3_bind_text(v46, 2, (v49 + 32), -1, v14);

            if (v50)
            {
LABEL_72:
              *&v81 = 0x726F7272456C7173;
              *(&v81 + 1) = 0xE90000000000003ALL;
              v80 = v50;
LABEL_88:
              v51 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x266756A70](v51);

              v52 = v81;
              lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
              swift_allocError();
              *v53 = 0;
              *(v53 + 8) = v52;
              result = swift_willThrow();
LABEL_89:
              v54 = *MEMORY[0x277D85DE8];
              return result;
            }

            goto LABEL_96;
          }

          goto LABEL_87;
        }

        __break(1u);
        goto LABEL_114;
      }

      goto LABEL_104;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v26 = *(v12 + 16);
    v27 = *(v12 + 24);
    v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    v5 = __DataStorage._bytes.getter();
    if (v5)
    {
      v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v26, v11))
      {
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v5 += v26 - v11;
    }

    if (__OFSUB__(v27, v26))
    {
      __break(1u);
    }

    else
    {
      v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v28 = MEMORY[0x2667557A0]();
      if (v28 >= v27 - v26)
      {
        v29 = v27 - v26;
      }

      else
      {
        v29 = v28;
      }

      if (v5)
      {
        v9 = v29;
      }

      else
      {
        v9 = 0;
      }

      if (v9 >= 0xFFFFFFFF80000000)
      {
        if (v9 <= 0x7FFFFFFF)
        {
          goto LABEL_65;
        }

        goto LABEL_101;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
LABEL_91:
    v57 = String.utf8CString.getter();
    v58 = sqlite3_bind_text(a1, 2, (v57 + 32), -1, v24);

    if (v58)
    {
      *&v81 = 0x726F7272456C7173;
      *(&v81 + 1) = 0xE90000000000003ALL;
      v80 = v58;
      goto LABEL_88;
    }

    v59 = ppStmt[0];
    v60 = String.utf8CString.getter();
    v50 = sqlite3_bind_text(v59, 3, (v60 + 32), -1, v24);

    if (v50)
    {
      goto LABEL_72;
    }

    v74(v9, v75, v5);
    v61 = MLS.PersistedMember.MemberState.rawValue.getter();
    v73(v9, v5);
    if (v77 == v61 || (LODWORD(v11) = sqlite3_bind_int(ppStmt[0], 4, v77), !v11))
    {
LABEL_96:
      result = ppStmt[0];
      goto LABEL_89;
    }

LABEL_87:
    *&v81 = 0x726F7272456C7173;
    *(&v81 + 1) = 0xE90000000000003ALL;
    v80 = v11;
    goto LABEL_88;
  }

  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t closure #1 in variable initialization expression of static GroupMemberModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_14;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_13:
    outlined consume of Data._Representation(v7, v9);
LABEL_14:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v24 = v13, (v16 = sqlite3_column_blob(a1, 3)) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v17 = v16;
  v18 = sqlite3_column_bytes(a1, 3);
  v23 = specialized Data.init(bytes:count:)(v17, v18);
  v20 = v19;
  if (sqlite3_column_type(a1, 4) == 5)
  {
    outlined consume of Data._Representation(v23, v20);
    goto LABEL_11;
  }

  result = sqlite3_column_int(a1, 4);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v24;
  *(a2 + 40) = v15;
  *(a2 + 48) = v23;
  *(a2 + 56) = v20;
  *(a2 + 64) = result;
  *(a2 + 68) = 0;
  return result;
}

uint64_t (*static GroupMemberModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static GroupMemberModel.converter;

  return v0;
}

uint64_t static GroupMemberModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static GroupMemberModel.converter = a1;
  qword_281EF8248 = a2;
}

uint64_t key path getter for static GroupMemberModel.converter : GroupMemberModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static GroupMemberModel.converter;
  v2 = qword_281EF8248;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupMemberModel.converter : GroupMemberModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static GroupMemberModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)partial apply;
  qword_281EF8248 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance GroupMemberModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static GroupMemberModel.converter;
  v0 = qword_281EF8248;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
}

uint64_t *GroupMemberQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static GroupMemberQuery.converter;
}

uint64_t (*static GroupMemberQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static GroupMemberQuery.converter : GroupMemberQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static GroupMemberQuery.converter;
  v2 = qword_280016878;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupMemberQuery.converter : GroupMemberQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupMemberQuery.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)partial apply;
  qword_280016878 = v3;
}

sqlite3_stmt *GroupMemberQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Member_Table WHERE client_id = ? AND group_id = ? AND (state = 0 OR state = 2) ;");
  if (!v6)
  {
LABEL_56:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
LABEL_40:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_54;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v7;
      }

      if (v13)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v8)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_51;
    }

    v13 = __DataStorage._bytes.getter();
    if (!v13)
    {
LABEL_25:
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v7;
      }

      if (v13)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v31 + 6) = 0;
          *&v31 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v9 = SQLITE_TRANSIENT;
            v10 = &v31;
            v19 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v30 = v7;
          swift_once();
          v7 = v30;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v28 = ppStmt[0];
        swift_once();
        v7 = v28;
      }

      v9 = SQLITE_TRANSIENT;
      v10 = v13;
      goto LABEL_38;
    }

    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v18))
    {
      v13 += a2 - v18;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v31 = a2;
  WORD4(v31) = a3;
  BYTE10(v31) = BYTE2(a3);
  BYTE11(v31) = BYTE3(a3);
  BYTE12(v31) = BYTE4(a3);
  BYTE13(v31) = BYTE5(a3);
  v7 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v29 = v7;
    swift_once();
    v7 = v29;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v31;
LABEL_38:
  v19 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v7, 1, v10, v19, v9))
  {
    goto LABEL_40;
  }

  v25 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_bind_text(v25, 2, (v26 + 32), -1, v9);

  if (!v27)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v31 = 0x726F7272456C7173;
  *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v20);

  v21 = v31;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = v21;
  result = swift_willThrow();
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance GroupMemberQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static GroupMemberQuery.converter;
  v0 = qword_280016878;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
}

sqlite3_stmt *protocol witness for SqlQuery.queryStatement(_:) in conformance GroupMemberQuery(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return GroupMemberQuery.queryStatement(_:)(a1, *v1, v1[1]);
}

uint64_t *PendingGroupMemberQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static PendingGroupMemberQuery.converter;
}

uint64_t (*static PendingGroupMemberQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static PendingGroupMemberQuery.converter : PendingGroupMemberQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static PendingGroupMemberQuery.converter;
  v2 = qword_280016888;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static PendingGroupMemberQuery.converter : PendingGroupMemberQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PendingGroupMemberQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error);
  qword_280016888 = v3;
}

sqlite3_stmt *PendingGroupMemberQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Member_Table WHERE client_id = ? AND group_id = ? AND (state = 0 OR state = 1);");
  if (!v6)
  {
LABEL_56:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
LABEL_40:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_54;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v7;
      }

      if (v13)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v8)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_51;
    }

    v13 = __DataStorage._bytes.getter();
    if (!v13)
    {
LABEL_25:
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v7;
      }

      if (v13)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v31 + 6) = 0;
          *&v31 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v9 = SQLITE_TRANSIENT;
            v10 = &v31;
            v19 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v30 = v7;
          swift_once();
          v7 = v30;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v28 = ppStmt[0];
        swift_once();
        v7 = v28;
      }

      v9 = SQLITE_TRANSIENT;
      v10 = v13;
      goto LABEL_38;
    }

    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v18))
    {
      v13 += a2 - v18;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v31 = a2;
  WORD4(v31) = a3;
  BYTE10(v31) = BYTE2(a3);
  BYTE11(v31) = BYTE3(a3);
  BYTE12(v31) = BYTE4(a3);
  BYTE13(v31) = BYTE5(a3);
  v7 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v29 = v7;
    swift_once();
    v7 = v29;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v31;
LABEL_38:
  v19 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v7, 1, v10, v19, v9))
  {
    goto LABEL_40;
  }

  v25 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_bind_text(v25, 2, (v26 + 32), -1, v9);

  if (!v27)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v31 = 0x726F7272456C7173;
  *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v20);

  v21 = v31;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = v21;
  result = swift_willThrow();
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance PendingGroupMemberQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static PendingGroupMemberQuery.converter;
  v0 = qword_280016888;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error);
}

sqlite3_stmt *protocol witness for SqlQuery.queryStatement(_:) in conformance PendingGroupMemberQuery(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return PendingGroupMemberQuery.queryStatement(_:)(a1, *v1, v1[1]);
}

sqlite3_stmt *specialized static GroupMemberModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Member_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    uri TEXT NOT NULL,\n    member BLOB NOT NULL,\n    state INTEGER,\n    PRIMARY KEY (uri, group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static GroupMemberModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Member_Table_State_Index ON Member_Table(uri, group_id, client_id, state);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static GroupMemberModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Member_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupMemberModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupMemberModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2652C67E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v11 = a1;
  v5(v9, &v11);
  if (!v3)
  {
    v8 = *v10;
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v8;
    *(a2 + 61) = *&v10[13];
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v9, *a1);
  if (!v3)
  {
    v8 = *v10;
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v8;
    *(a2 + 61) = *&v10[13];
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = *v9;
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 61) = *&v9[13];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t CommunicatorBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CommunicatorBroadcaster.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](CommunicatorBroadcaster.send(event:forGroup:), v6, v5);
}

uint64_t CommunicatorBroadcaster.send(event:forGroup:)()
{
  v1 = type metadata accessor for MLS.SendResult();
  v2 = type metadata accessor for MLS.SendError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = *(MEMORY[0x277D4D290] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v6 = MEMORY[0x277D4CC50];
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult, MEMORY[0x277D4CC50]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult, v6);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError, MEMORY[0x277D4D250]);
  *v5 = v0;
  v5[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v8, v1, v2, partial apply for closure #1 in CommunicatorBroadcaster.send(event:forGroup:), v3, partial apply for closure #2 in CommunicatorBroadcaster.send(event:forGroup:), v7, v1);
}

uint64_t closure #1 in CommunicatorBroadcaster.send(event:forGroup:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for MLS.Group();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0]);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in CommunicatorBroadcaster.send(event:forGroup:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in CommunicatorBroadcaster.send(event:forGroup:)(a1);
}

uint64_t closure #2 in CommunicatorBroadcaster.send(event:forGroup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v7);
  outlined copy of Data._Representation(v8, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v15[4] = a2;
  v15[5] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);

  [v10 sendWithEvent:isa forGroup:v12 completion:v13];
  _Block_release(v13);

  outlined consume of Data._Representation(v8, v9);
  return outlined consume of Data._Representation(v6, v7);
}

uint64_t CommunicatorBroadcaster.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CommunicatorBroadcaster.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance CommunicatorBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CommunicatorBroadcaster.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>);
  }

  return result;
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t XPCServer.xpcDaemons.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_xpcDaemons;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t XPCServer.xpcDaemons.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_xpcDaemons;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id XPCServer.init(xpcDaemons:deliveryDaemon:registrationDaemon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = type metadata accessor for LogCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_listener;
  v12 = static XPCUtils.SecureMessagingAgentXPCName.getter();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v16 = MEMORY[0x266756A10](v12, v14);

  v17 = [v15 initWithMachServiceName_];

  *&v3[v11] = v17;
  (*(v7 + 104))(v10, *MEMORY[0x277D4C928], v6);
  secureMessagingLogger(category:)();
  (*(v7 + 8))(v10, v6);
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_xpcDaemons] = a1;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_deliveryDaemon] = a2;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_registrationDaemon] = v21;
  v18 = type metadata accessor for XPCServer(0);
  v22.receiver = v3;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, sel_init);
}

void closure #1 in XPCServer.listener(_:shouldAcceptNewConnection:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v4) + 0x88);
      v7 = *(a2 + 16);

      v8 = v6(v9);
      specialized Set._Variant.remove(_:)(v5);

      v8(v9, 0);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

Swift::Void __swiftcall XPCServer.setupXPCListener()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "XPCServer -- setting up XPC listener", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_listener);
  [v5 setDelegate_];
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26524C000, v6, v7, "Listener start", v8, 2u);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  [v5 resume];
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26524C000, oslog, v9, "Listener done", v10, 2u);
    MEMORY[0x2667577B0](v10, -1, -1);
  }
}

id XPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCServer.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

Swift::Void __swiftcall XPCDaemon.setupXPCConnection()()
{
  v1 = *(v0 + 56);
  v2 = MEMORY[0x266756730]();
  [v1 setExportedInterface_];

  [v1 setExportedObject_];

  [v1 resume];
}

uint64_t XPCDaemon.deliveryInterface(completion:)(void (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = v2[7];
  v19 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v42);
LABEL_4:
    v22 = v2[5];
    v23 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v22);
    (*(v23 + 8))(v22, v23);
    a1();
    return swift_unknownObjectRelease();
  }

  memset(v42, 0, sizeof(v42));
  outlined destroy of Any?(v42);
  v25 = type metadata accessor for JSONEncoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  (*(v39 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0]);
  v28 = v41;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;
  (*(v40 + 8))(v11, v28);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v42[0] = v35;
    *v34 = 136315138;
    v36 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26524C000, v32, v33, "Client missing required entitlement { %s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v34, -1, -1);
  }

  (a1)(0, v29, v31);
  return outlined consume of Data?(v29, v31);
}

uint64_t XPCDaemon.registrationInterface(completion:)(void (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = v2[7];
  v19 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v42);
LABEL_4:
    v22 = v2[5];
    v23 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v22);
    (*(v23 + 16))(v22, v23);
    a1();
    return swift_unknownObjectRelease();
  }

  memset(v42, 0, sizeof(v42));
  outlined destroy of Any?(v42);
  v25 = type metadata accessor for JSONEncoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  (*(v39 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0]);
  v28 = v41;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;
  (*(v40 + 8))(v11, v28);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v42[0] = v35;
    *v34 = 136315138;
    v36 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26524C000, v32, v33, "Client missing required entitlement { %s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v34, -1, -1);
  }

  (a1)(0, v29, v31);
  return outlined consume of Data?(v29, v31);
}

uint64_t @objc XPCDaemon.deliveryInterface(completion:)(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t XPCDaemon.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t XPCDaemon.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

Swift::Int XPCDaemon.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 144))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCDaemon()
{
  Hasher.init(_seed:)();
  (*(**v0 + 144))(v2);
  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x266756F40](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v85;
    outlined copy of Data._Representation(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v85 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
LABEL_144:
    v80 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v91 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v88 = v16;
  v87 = v6;
  v83 = (a2 >> 32) - a2;
  v84 = a2 >> 32;
  v89 = v6 + 56;
  v90 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v91) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        outlined consume of Data._Representation(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        outlined copy of Data._Representation(v79, *(&v79 + 1));
        result = 0;
        goto LABEL_144;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_148;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_147;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v88)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_146;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_149;
      }

      outlined copy of Data._Representation(v19, v18);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = v41;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_151;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      MEMORY[0x2667557A0]();
      v12 = v90;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v82 = *(a2 + 24);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v69 = __DataStorage._offset.getter();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_165;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v82, v68);
        v70 = v82 - v68;
        if (v27)
        {
          goto LABEL_161;
        }

        result = MEMORY[0x2667557A0]();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_177;
        }

        v9 = v89;
        v12 = v90;
        if (!v50)
        {
          goto LABEL_176;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v89;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_172;
          }

          goto LABEL_138;
        }

        if (v84 < a2)
        {
          goto LABEL_160;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_167;
          }

          v50 += a2 - v54;
        }

        result = MEMORY[0x2667557A0]();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_181;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v84 < a2)
      {
        goto LABEL_153;
      }

      outlined copy of Data._Representation(v19, v18);
      v31 = __DataStorage._bytes.getter();
      if (!v31)
      {
        goto LABEL_175;
      }

      v32 = v31;
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_157;
      }

      v34 = (a2 - v33 + v32);
      v35 = MEMORY[0x2667557A0]();
      if (!v34)
      {
        goto LABEL_173;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    outlined copy of Data._Representation(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v57 = __DataStorage._offset.getter();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_162;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = MEMORY[0x2667557A0]();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_171;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    outlined consume of Data._Representation(v19, v18);
    v9 = v89;
    v12 = v90;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    outlined copy of Data._Representation(v19, v18);
    v37 = __DataStorage._bytes.getter();
    if (v37)
    {
      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_150;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x2667557A0]();
    v12 = v90;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v84 < a2)
        {
          goto LABEL_156;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_166;
          }

          v50 += a2 - v51;
        }

        result = MEMORY[0x2667557A0]();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_179;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_178;
        }

        goto LABEL_135;
      }

      v9 = v89;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_170;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      outlined consume of Data._Representation(v19, v18);
      v6 = v87;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v81 = *(a2 + 24);
    v50 = __DataStorage._bytes.getter();
    if (v50)
    {
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_164;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v81, v65);
    v67 = v81 - v65;
    if (v27)
    {
      goto LABEL_159;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_183;
    }

    v9 = v89;
    v12 = v90;
    if (!v50)
    {
      goto LABEL_182;
    }

LABEL_135:
    if (v40 == v50)
    {
      outlined consume of Data._Representation(v19, v18);
      outlined consume of Data._Representation(a2, a3);
      v6 = v87;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v93 = a3;
    v94 = BYTE2(a3);
    v95 = BYTE3(a3);
    v96 = BYTE4(a3);
    v97 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    outlined copy of Data._Representation(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_163;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_155;
    }

    v49 = MEMORY[0x2667557A0]();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_174;
    }

    goto LABEL_100;
  }

  if (v84 < a2)
  {
    goto LABEL_152;
  }

  outlined copy of Data._Representation(v19, v18);
  v60 = __DataStorage._bytes.getter();
  if (v60)
  {
    v61 = v60;
    v62 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_158;
    }

    v34 = (a2 - v62 + v61);
    v35 = MEMORY[0x2667557A0]();
    if (!v34)
    {
      goto LABEL_169;
    }

LABEL_109:
    if (v35 >= v83)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    outlined consume of Data._Representation(v19, v18);
    v9 = v89;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  MEMORY[0x2667557A0]();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  result = MEMORY[0x2667557A0]();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v21[9] = v8;
      type metadata accessor for XPCDaemon(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(v7, result + 1);
    v21[0] = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
      v18 = v21[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  (*(*a2 + 144))(v21);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (([*(*(*(v6 + 48) + 8 * v13) + 56) isEqual_] & 1) == 0)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 144))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for XPCDaemon(0);
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 144))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x266756F40](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      (*(*v18 + 144))(v29);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x266756F40](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v93 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_143;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  result = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v81;
    *(*v81 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      v75 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v85 = v17;
  v80 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v82 = v18;
  v78 = (v7 >> 32) - v7;
  v79 = v7 >> 32;
  v83 = v14;
  v84 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v85) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v82)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v79 < v7)
        {
          goto LABEL_152;
        }

        outlined copy of Data._Representation(v21, v20);
        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = MEMORY[0x2667557A0]();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v78)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = outlined consume of Data._Representation(v21, v20);
LABEL_141:
        v14 = v83;
        v12 = v84;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      outlined copy of Data._Representation(v21, v20);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = MEMORY[0x2667557A0]();
      v10 = v80;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    outlined copy of Data._Representation(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    MEMORY[0x2667557A0]();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v77 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v77, v66);
      v68 = v77 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = MEMORY[0x2667557A0]();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_160;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = MEMORY[0x2667557A0]();
      v44 = (v7 >> 32) - v7;
      if (v47 < v78)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    outlined copy of Data._Representation(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    MEMORY[0x2667557A0]();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v76, v62);
      v64 = v76 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = MEMORY[0x2667557A0]();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_155;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = MEMORY[0x2667557A0]();
      v44 = (v7 >> 32) - v7;
      if (v43 < v78)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = outlined consume of Data._Representation(v21, v20);
      v10 = v80;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v87 = a2;
    v88 = BYTE2(a2);
    v89 = BYTE3(a2);
    v90 = BYTE4(a2);
    v91 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    outlined copy of Data._Representation(v21, v20);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = MEMORY[0x2667557A0]();
    v10 = v80;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v79 < v7)
  {
    goto LABEL_153;
  }

  outlined copy of Data._Representation(v21, v20);
  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = MEMORY[0x2667557A0]();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  MEMORY[0x2667557A0]();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  MEMORY[0x2667557A0]();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  outlined consume of Data._Representation(v21, v20);
LABEL_185:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v5 + 144))(v16);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for XPCDaemon(0);
    do
    {
      result = [*(*(*(v8 + 48) + 8 * a2) + 56) isEqual_];
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = outlined copy of Data._Representation(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x266756F40](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 144);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 144))(v18);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (([*(*(*(v3 + 48) + 8 * v12) + 56) isEqual_] & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v18[0];
  }

  v17 = *(*(v16 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v17;
  *v1 = v18[0];
  return result;
}