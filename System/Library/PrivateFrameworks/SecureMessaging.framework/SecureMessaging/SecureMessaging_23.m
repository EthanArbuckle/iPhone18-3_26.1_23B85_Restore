uint64_t sub_26516FDC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 280))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error);
  a2[1] = result;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.RetryAfterGroupVersionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.RetryAfterGroupVersionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.RetryAfterGroupVersionBehavior(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.fetchMembers(uris:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v11(a1, a2, a3);
}

uint64_t type metadata completion function for MLS.EventSender()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 320);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 328);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 336);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 344);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 352);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 368);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 392);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t sub_2651718C8()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1)
{
  v14 = *(v1 + 16);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(a1, v4, v5, v6);
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi1_(uint64_t result)
{
  *(result + 176) &= 0x1FuLL;
  *(result + 268) = 0x80000000;
  return result;
}

uint64_t sub_265171C00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error)(a1, a2, a3, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error)(a1, a2, a3, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error)(a1, a2, v7);
}

uint64_t outlined copy of MLS.FetchMemberResult<MLS.AllMember>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 126 >= 2 && a4 - 254 >= 2)
  {
    return outlined copy of MLS.AllMember();
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(a1, a2, a3, a4, v10);
}

void outlined copy of MLS.FetchGroupRecoveryInfoResult(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15 && (a2 & 0xF000000000000000) != 0xB000000000000000)
  {
    a5();

    a6(a3, a4);
  }
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v8, (v1 + 7), (v1 + 20), v4, v5, v6, v7);
}

uint64_t objectdestroy_180Tm()
{
  v1 = *(v0 + 48);

  outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  v2 = *(v0 + 168);

  outlined consume of Data._Representation(*(v0 + 200), *(v0 + 208));
  outlined consume of Data._Representation(*(v0 + 216), *(v0 + 224));
  outlined consume of Data._Representation(*(v0 + 232), *(v0 + 240));
  v3 = *(v0 + 256);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 248), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v8, (v1 + 7), (v1 + 20));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v4, v5, v6);
}

uint64_t sub_2651723D0()
{
  v1 = *(v0 + 48);

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  v2 = *(v0 + 248);

  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  outlined consume of Data._Representation(*(v0 + 312), *(v0 + 320));
  v3 = *(v0 + 336);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 328), v3);
  }

  if (*(v0 + 344))
  {
    v4 = *(v0 + 352);
  }

  outlined consume of MLS.RetryAfterGroupVersionBehavior(*(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432));

  return MEMORY[0x2821FE8E8](v0, 433, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v11 = *(v1 + 24);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 344);
  v8 = *(v1 + 352);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v5, v1 + 56, v1 + 240, v7, v8, v1 + 360);
}

uint64_t sub_2651725B4()
{
  v1 = *(v0 + 48);

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  v2 = *(v0 + 248);

  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  outlined consume of Data._Representation(*(v0 + 312), *(v0 + 320));
  v3 = *(v0 + 336);
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 328), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 344, 7);
}

uint64_t partial apply for closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(v6, (v0 + 7), (v0 + 30));
}

uint64_t outlined copy of MLS.SendResult(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return outlined copy of Data?(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t MLS.AllMember.uri.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v2;
  v4 = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

__n128 MLS.AllMember.init(allMember:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.MemberError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t static MLS.MemberError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.MemberError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.MemberError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.MemberError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.MemberError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.MemberError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.MemberError@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MLS.MemberError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.MemberError(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return MLS.MemberError.encode(to:)(a1);
}

uint64_t MLS.AllMember.allMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.AllMember.dataRepresentation.getter()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v10 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v8;
}

double MLS.AllMember.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(a1, a2);

  if (!v3)
  {
    result = *&v11;
    *a3 = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
  }

  return result;
}

uint64_t MLS.AllMember.description.getter()
{
  if (*(v0 + 24) < 0)
  {
    v2 = *(v0 + 16);
    MEMORY[0x2667545A0](778857569, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  else
  {
    MEMORY[0x2667545A0](*v0, *(v0 + 8));
    MEMORY[0x2667545A0](778662517, 0xE400000000000000);

    return 778857569;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.AllMember.CodingKeys()
{
  if (*v0)
  {
    return 0x65626D654D736372;
  }

  else
  {
    return 0x65626D654D697275;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65626D654D697275 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65626D654D736372 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.RcsMemberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65626D654D736372 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.RcsMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.RcsMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.UriMemberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65626D654D697275 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.UriMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.UriMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AllMember.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v22 - v12;
  v14 = v1[1];
  v27 = *v1;
  v28 = v14;
  v22 = v1[2];
  v15 = *(v1 + 24);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v15 < 0)
  {
    LOBYTE(v30) = 1;
    lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();
    v19 = v23;
    v20 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v27;
    v31 = v28;
    v32 = v22;
    v33 = v15 & 1;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
    v21 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v30) = 0;
    lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();
    v17 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v27;
    v31 = v28;
    lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v17);
  }
}

void MLS.AllMember.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24);
  if (v3 < 0)
  {
    v5 = v0[2];
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (v3)
    {
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(1u);
    v4 = v5;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v4 = 0;
  }

  MEMORY[0x266754DE0](v4);
}

Swift::Int MLS.AllMember.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v5 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v5);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v4 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v5 = v3;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t MLS.AllMember.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();
  v19 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v42 = v13;
    v20 = v41;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v47 = v21;
    v48 = v21 + 32;
    v49 = 0;
    v50 = v22;
    v23 = specialized Collection<>.popFirst()();
    v24 = v12;
    if (v23 == 2 || v49 != v50 >> 1)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v28 = &type metadata for MLS.AllMember;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v42 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v43) = 1;
        lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v42;
        lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
        v32 = v39;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v40 + 8))(v7, v32);
        (*(v25 + 8))(v16, v24);
        swift_unknownObjectRelease();
        v33 = v43;
        v34 = v44;
        v35 = v45;
        v36 = v46 | 0x80;
      }

      else
      {
        LOBYTE(v43) = 0;
        lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v31 = v42;
        lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v38 + 8))(v11, v8);
        (*(v31 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 0;
        v33 = v43;
        v34 = v44;
      }

      *v20 = v33;
      *(v20 + 8) = v34;
      *(v20 + 16) = v35;
      *(v20 + 24) = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t protocol witness for MLS.Member.uri.getter in conformance MLS.AllMember@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v2;
  v4 = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t protocol witness for MLS.Member.allMember.getter in conformance MLS.AllMember@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

__n128 protocol witness for MLS.Member.init(allMember:) in conformance MLS.AllMember@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.AllMember()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v5 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v5);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v4 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v5 = v3;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.AllMember()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24);
  if (v3 < 0)
  {
    v5 = v0[2];
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (v3)
    {
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(1u);
    v4 = v5;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v4 = 0;
  }

  MEMORY[0x266754DE0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.AllMember()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v5 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v5);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v4 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v5 = v3;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t MLS.URIMember.uri.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *MLS.URIMember.init(uri:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t MLS.URIMember.allMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t MLS.URIMember.init(allMember:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 24) < 0)
  {
    v3 = *(result + 16);
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember();
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

uint64_t static MLS.URIMember.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.URIMember.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.URIMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.URIMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.URIMember.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = v8;
  v12[1] = v9;
  lazy protocol witness table accessor for type URI and conformance URI();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.URIMember.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int MLS.URIMember.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.URIMember.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type URI and conformance URI();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for MLS.Member.allMember.getter in conformance MLS.URIMember@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t protocol witness for MLS.Member.init(allMember:) in conformance MLS.URIMember@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 24) < 0)
  {
    v3 = *(result + 16);
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember();
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

uint64_t specialized static MLS.AllMember.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember();
        outlined copy of MLS.AllMember();
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        return v12 & 1;
      }

      outlined copy of MLS.AllMember();
      outlined copy of MLS.AllMember();
      outlined consume of MLS.AllMember();
      outlined consume of MLS.AllMember();
      return 1;
    }

    goto LABEL_9;
  }

  if ((v9 & 0x80000000) == 0)
  {
LABEL_9:
    v14 = *a2;
    v15 = a2[1];
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    return 0;
  }

  v16 = *a1;
  if (v3 != v7 || v2 != v6)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember();
    outlined copy of MLS.AllMember();
    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      return (v9 & 1) != 0;
    }

    return (v9 & 1) == 0 && v4 == v8;
  }

  outlined copy of MLS.AllMember();
  outlined copy of MLS.AllMember();
  outlined consume of MLS.AllMember();
  outlined consume of MLS.AllMember();
  if ((v5 & 1) == 0)
  {
    return (v9 & 1) == 0 && v4 == v8;
  }

  return (v9 & 1) != 0;
}

uint64_t specialized MLS.MemberError.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10[14] = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember()
{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.MemberError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[2] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[3] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  result = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.AllMember(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.AllMember(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.AllMember(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t MLS.RCSClient._getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMd, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMR) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v3[3] = v7;
  v8 = *(MEMORY[0x277D6AEC8] + 4);
  v11 = (*MEMORY[0x277D6AEC8] + MEMORY[0x277D6AEC8]);
  v9 = swift_task_alloc();
  v3[4] = v9;
  *v9 = v3;
  v9[1] = MLS.RCSClient._getCredentialSigningRequest(telURI:);

  return v11(v7, a2, a3);
}

uint64_t MLS.RCSClient._getCredentialSigningRequest(telURI:)()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = MLS.RCSClient._getCredentialSigningRequest(telURI:);
  }

  else
  {
    v3 = MLS.RCSClient._getCredentialSigningRequest(telURI:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for MLS.RCSClient.CredentialSigningRequest();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMd, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMR);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
  }

  else
  {
    *(v5 + 24) = v2;
    *(v5 + 32) = &protocol witness table for MLS.RCSClient.CredentialSigningRequest;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v7 = v0[3];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol._getCredentialSigningRequest(telURI:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.RCSClient._getCredentialSigningRequest(telURI:)(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol.loadCredential(credential:telURI:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D6AEC0] + 4);
  v12 = (*MEMORY[0x277D6AEC0] + MEMORY[0x277D6AEC0]);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol.signNonceWithParticipantKey(_:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D6AED0] + 4);
  v10 = (*MEMORY[0x277D6AED0] + MEMORY[0x277D6AED0]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t MLS.Client.Client._createGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(MEMORY[0x277D6AC18] + 4);
  v9 = (*MEMORY[0x277D6AC18] + MEMORY[0x277D6AC18]);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = MLS.Client.Client._createGroup(groupID:);

  return v9(a2, a3);
}

uint64_t MLS.Client.Client._createGroup(groupID:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](MLS.Client.Client._createGroup(groupID:), 0, 0);
  }
}

uint64_t MLS.Client.Client._joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(MEMORY[0x277D6AC50] + 4);
  v9 = (*MEMORY[0x277D6AC50] + MEMORY[0x277D6AC50]);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = MLS.Client.Client._createGroup(groupID:);

  return v9(a2, a3);
}

uint64_t MLS.Client.Client._resync(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
}

uint64_t MLS.Client.Client._resync(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Client.Client.ResyncOutput();
  v1[4] = &protocol witness table for MLS.Client.Client.ResyncOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AC48] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return MEMORY[0x2821D00F0](boxed_opaque_existential_1, v5);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x266755550);
  }

  return result;
}

uint64_t MLS.Client.Client._loadGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(MEMORY[0x277D6AC58] + 4);
  v9 = (*MEMORY[0x277D6AC58] + MEMORY[0x277D6AC58]);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = MLS.Client.Client._loadGroup(groupID:);

  return v9(a2, a3);
}

uint64_t MLS.Client.Client._loadGroup(groupID:)(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.Client.Client._loadGroup(groupID:), 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.loadCredential(credential:) in conformance MLS.Client.Client(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AC30] + 4);
  v8 = (*MEMORY[0x277D6AC30] + MEMORY[0x277D6AC30]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.listKeyPackages() in conformance MLS.Client.Client()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AC38] + 4);
  v6 = (*MEMORY[0x277D6AC38] + MEMORY[0x277D6AC38]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.generateKeyPackage() in conformance MLS.Client.Client(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AC40] + 4);
  v8 = (*MEMORY[0x277D6AC40] + MEMORY[0x277D6AC40]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.changeClientUUID(newClientUUID:) in conformance MLS.Client.Client(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AC10] + 4);
  v8 = (*MEMORY[0x277D6AC10] + MEMORY[0x277D6AC10]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._createGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = *(MEMORY[0x277D6AC18] + 4);
  v11 = (*MEMORY[0x277D6AC18] + MEMORY[0x277D6AC18]);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = MLS.Client.Client._createGroup(groupID:);

  return v11(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = *(MEMORY[0x277D6AC50] + 4);
  v11 = (*MEMORY[0x277D6AC50] + MEMORY[0x277D6AC50]);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client;

  return v11(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client, 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for MLS.Group.Group();
  v2[4] = &protocol witness table for MLS.Group.Group;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._resync(_:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = *(MEMORY[0x277D6AC58] + 4);
  v11 = (*MEMORY[0x277D6AC58] + MEMORY[0x277D6AC58]);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client;

  return v11(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client, 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = type metadata accessor for MLS.Group.Group();
    v3 = &protocol witness table for MLS.Group.Group;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[2];
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = v0[2];
  *v5 = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t MLS.Group.Group._priorGroupMembership(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._priorGroupMembership(_:), 0, 0);
}

uint64_t MLS.Group.Group._priorGroupMembership(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.PriorGroupMembershipOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.PriorGroupMembershipOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AAE8] + 4);
  v8 = (*MEMORY[0x277D6AAE8] + MEMORY[0x277D6AAE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._createNewEra(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._createNewEra(_:), 0, 0);
}

uint64_t MLS.Group.Group._createNewEra(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.CreateNewEraOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.CreateNewEraOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB30] + 4);
  v8 = (*MEMORY[0x277D6AB30] + MEMORY[0x277D6AB30]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._performResurrection(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._performResurrection(_:), 0, 0);
}

uint64_t MLS.Group.Group._performResurrection(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ResurrectionOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ResurrectionOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB78] + 4);
  v8 = (*MEMORY[0x277D6AB78] + MEMORY[0x277D6AB78]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._addMembers(packages:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._addMembers(packages:), 0, 0);
}

uint64_t MLS.Group.Group._addMembers(packages:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB00] + 4);
  v8 = (*MEMORY[0x277D6AB00] + MEMORY[0x277D6AB00]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._removeMembers(signingIdentities:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._removeMembers(signingIdentities:), 0, 0);
}

uint64_t MLS.Group.Group._removeMembers(signingIdentities:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB38] + 4);
  v8 = (*MEMORY[0x277D6AB38] + MEMORY[0x277D6AB38]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5, 0);
}

uint64_t MLS.Group.Group._performDowngradeToUnencrypted()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](MLS.Group.Group._performDowngradeToUnencrypted(), 0, 0);
}

uint64_t MLS.Group.Group._performDowngradeToUnencrypted()()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DowngradeOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DowngradeOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6ABB8] + 4);
  v7 = (*MEMORY[0x277D6ABB8] + MEMORY[0x277D6ABB8]);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = MLS.Group.Group._performDowngradeToUnencrypted();
  v5 = v0[3];

  return v7(boxed_opaque_existential_1);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Group.Group._performDowngradeToUnencrypted(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t MLS.Group.Group._selfUpdate()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Group.Group._selfUpdate(), 0, 0);
}

uint64_t MLS.Group.Group._selfUpdate()()
{
  v1 = v0[4];
  v2 = v0[2];
  updated = type metadata accessor for MLS.Group.Group.SelfUpdateInput();
  (*(*(updated - 8) + 56))(v1, 1, 1, updated);
  v2[3] = type metadata accessor for MLS.Group.CommitOutput();
  v2[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v5 = *(MEMORY[0x277D6AB18] + 4);
  v10 = (*MEMORY[0x277D6AB18] + MEMORY[0x277D6AB18]);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = MLS.Group.Group._selfUpdate();
  v8 = v0[3];
  v7 = v0[4];

  return v10(boxed_opaque_existential_1, v7);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  outlined destroy of NSObject?(v3, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Group.Group._selfUpdate(), 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

{
  v1 = *(v0 + 32);
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

uint64_t MLS.Group.Group._replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._replaceExpiredCredential(_:), 0, 0);
}

uint64_t MLS.Group.Group._replaceExpiredCredential(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ReplaceExpiredCredentialOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB88] + 4);
  v8 = (*MEMORY[0x277D6AB88] + MEMORY[0x277D6AB88]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._changeRCSGroupName(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._changeRCSGroupName(_:), 0, 0);
}

uint64_t MLS.Group.Group._changeRCSGroupName(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ChangeRCSGroupNameOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ChangeRCSGroupNameOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB68] + 4);
  v8 = (*MEMORY[0x277D6AB68] + MEMORY[0x277D6AB68]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._decryptName(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptName(_:), 0, 0);
}

uint64_t MLS.Group.Group._decryptName(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DecryptNameOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DecryptNameOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB20] + 4);
  v8 = (*MEMORY[0x277D6AB20] + MEMORY[0x277D6AB20]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._decryptNameKeys(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptNameKeys(_:), 0, 0);
}

uint64_t MLS.Group.Group._decryptNameKeys(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DecryptNameKeysOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DecryptNameKeysOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AB48] + 4);
  v8 = (*MEMORY[0x277D6AB48] + MEMORY[0x277D6AB48]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = MLS.Client.Client._resync(_:);
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

uint64_t MLS.Group.Group._commit()(uint64_t a1)
{
  v3 = *(MEMORY[0x277D6ABE0] + 4);
  v6 = (*MEMORY[0x277D6ABE0] + MEMORY[0x277D6ABE0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6ABF8] + 4);
  v6 = (*MEMORY[0x277D6ABF8] + MEMORY[0x277D6ABF8]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.members.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AC00] + 4);
  v6 = (*MEMORY[0x277D6AC00] + MEMORY[0x277D6AC00]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochID.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6ABF0] + 4);
  v6 = (*MEMORY[0x277D6ABF0] + MEMORY[0x277D6ABF0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AB10] + 4);
  v6 = (*MEMORY[0x277D6AB10] + MEMORY[0x277D6AB10]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group(unint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 | ((HIDWORD(a1) & 1) << 32));
  }
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AAF0] + 4);
  v6 = (*MEMORY[0x277D6AAF0] + MEMORY[0x277D6AAF0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.credential.getter in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AB08] + 4);
  v8 = (*MEMORY[0x277D6AB08] + MEMORY[0x277D6AB08]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AB70] + 4);
  v6 = (*MEMORY[0x277D6AB70] + MEMORY[0x277D6AB70]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.ratchetTree.getter in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6AB28] + 4);
  v6 = (*MEMORY[0x277D6AB28] + MEMORY[0x277D6AB28]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.delete() in conformance MLS.Group.Group()
{
  v2 = *v0;
  v3 = *(MEMORY[0x277D6ABE8] + 4);
  v6 = (*MEMORY[0x277D6ABE8] + MEMORY[0x277D6ABE8]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.generateGroupInfo() in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AAF8] + 4);
  v8 = (*MEMORY[0x277D6AAF8] + MEMORY[0x277D6AAF8]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.proposeRemoveSelf() in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AB50] + 4);
  v8 = (*MEMORY[0x277D6AB50] + MEMORY[0x277D6AB50]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptWrappedApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D6ABD0] + 4);
  v10 = (*MEMORY[0x277D6ABD0] + MEMORY[0x277D6ABD0]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptApplicationMessageWithAAD(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D6ABC8] + 4);
  v10 = (*MEMORY[0x277D6ABC8] + MEMORY[0x277D6ABC8]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D6AB90] + 4);
  v12 = (*MEMORY[0x277D6AB90] + MEMORY[0x277D6AB90]);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.signPublicApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D6ABA8] + 4);
  v10 = (*MEMORY[0x277D6ABA8] + MEMORY[0x277D6ABA8]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingMessage(message:readdedWelcome:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D6AB80] + 4);
  v12 = (*MEMORY[0x277D6AB80] + MEMORY[0x277D6AB80]);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingApplicationMessage(message:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D6ABD8] + 4);
  v10 = (*MEMORY[0x277D6ABD8] + MEMORY[0x277D6ABD8]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingCommitList(message:) in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6AB98] + 4);
  v8 = (*MEMORY[0x277D6AB98] + MEMORY[0x277D6AB98]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingProposalList(message:) in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6ABA0] + 4);
  v8 = (*MEMORY[0x277D6ABA0] + MEMORY[0x277D6ABA0]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.PriorGroupMembershipOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.PriorGroupMembershipOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6AAE8] + 4);
  v8 = (*MEMORY[0x277D6AAE8] + MEMORY[0x277D6AAE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group;
  v5 = v0[3];
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v5);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._createNewEra(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._createNewEra(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performResurrection(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._performResurrection(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._addMembers(packages:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._addMembers(packages:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._removeMembers(signingIdentities:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._removeMembers(signingIdentities:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DowngradeOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DowngradeOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = *(MEMORY[0x277D6ABB8] + 4);
  v7 = (*MEMORY[0x277D6ABB8] + MEMORY[0x277D6ABB8]);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group;
  v5 = v0[3];

  return v7(boxed_opaque_existential_1);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[3] = v4;
  v2[4] = v5;

  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group()
{
  v1 = v0[2];
  v2 = v0[3];
  updated = type metadata accessor for MLS.Group.Group.SelfUpdateInput();
  (*(*(updated - 8) + 56))(v2, 1, 1, updated);
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v5 = *(MEMORY[0x277D6AB18] + 4);
  v10 = (*MEMORY[0x277D6AB18] + MEMORY[0x277D6AB18]);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group;
  v7 = v0[3];
  v8 = v0[4];

  return v10(boxed_opaque_existential_1, v7);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[6] = v0;

  outlined destroy of NSObject?(v3, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

{
  v1 = *(v0 + 24);
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._replaceExpiredCredential(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._replaceExpiredCredential(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._changeRCSGroupName(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._changeRCSGroupName(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._decryptName(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptName(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._decryptNameKeys(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptNameKeys(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._commit() in conformance MLS.Group.Group(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D6ABE0] + 4);
  v8 = (*MEMORY[0x277D6ABE0] + MEMORY[0x277D6ABE0]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t MLS.Client.Client.ResyncOutput._group.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = MLS.Client.Client.ResyncOutput.group.getter();
  result = type metadata accessor for MLS.Group.Group();
  a1[3] = result;
  a1[4] = &protocol witness table for MLS.Group.Group;
  *a1 = v2;
  return result;
}

uint64_t protocol witness for MLS.SwiftMLSResyncOutputProtocol._group.getter in conformance MLS.Client.Client.ResyncOutput@<X0>(uint64_t *a1@<X8>)
{
  v2 = MLS.Client.Client.ResyncOutput.group.getter();
  result = type metadata accessor for MLS.Group.Group();
  a1[3] = result;
  a1[4] = &protocol witness table for MLS.Group.Group;
  *a1 = v2;
  return result;
}

uint64_t MLS.Group.Group.CreateNewEraOutput._commitOutput.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for MLS.Group.CommitOutput();
  a2[4] = &protocol witness table for MLS.Group.CommitOutput;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t protocol witness for MLS.SwiftMLSCreateNewEraOutputProtocol._commitOutput.getter in conformance MLS.Group.Group.CreateNewEraOutput@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for MLS.Group.CommitOutput();
  a2[4] = &protocol witness table for MLS.Group.CommitOutput;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol._getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol.signNonceWithParticipantKey(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.loadCredential(credential:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.listKeyPackages()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.generateKeyPackage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.changeClientUUID(newClientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._createGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._resync(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._loadGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.groupID.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.members.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.epochID.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter(unint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.hasEndMLS.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.credential.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.ratchetTree.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.delete()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.generateGroupInfo()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.proposeRemoveSelf()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptWrappedApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptApplicationMessageWithAAD(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 112);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.signPublicApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 120);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingMessage(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 128);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingApplicationMessage(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 136);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingCommitList(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingProposalList(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 160);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._createNewEra(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 168);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._performResurrection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 176);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._addMembers(packages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 184);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._removeMembers(signingIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 192);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._selfUpdate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 216);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._changeRCSGroupName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 224);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._decryptName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 232);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._decryptNameKeys(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 240);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 248);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t XPCUtils.XPCNotifyListener.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t XPCUtils.XPCNotifyListener.notifyToken.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t XPCUtils.XPCNotifyListener.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void XPCUtils.XPCNotifyListener.setup(postIdentifier:notifyBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v34 = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.cString(using:)();
  (*(v15 + 8))(v18, v14);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v9, *MEMORY[0x277D85260], v29);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  out_token = 0;
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = v22;
  v37 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v38 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v36 = &block_descriptor_3;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  if (v19)
  {
    v25 = (v19 + 32);
  }

  else
  {
    v25 = 0;
  }

  notify_register_dispatch(v25, &out_token, v24, v23);

  _Block_release(v23);

  (*(*v32 + 96))(out_token);
  v26 = *MEMORY[0x277D85DE8];
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t sub_26517D9D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t XPCUtils.XPCNotifyListener.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    notify_cancel(v1);
  }

  return v0;
}

uint64_t XPCUtils.XPCNotifyListener.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    notify_cancel(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t static XPCUtils.XPCNotifyPoster.post(postIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a1;
  v12[1] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.cString(using:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = (v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  notify_post(v10);
}

uint64_t sub_26517DC50@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

unint64_t MLS.ClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

uint64_t MLS.ClientCreationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SelfKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SelfKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SelfKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t MLS.SelfKeyPackageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SelfKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SelfKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupCreationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupDeletionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupDeletionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupDeletionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupDeletionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupOperationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupOperationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupOperationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupOperationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.GroupFetchError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupFetchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupFetchError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupFetchError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupFetchError(uint64_t a1)
{
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();

  return MEMORY[0x28211F4B8](a1, Error);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupFetchError(uint64_t a1)
{
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();

  return MEMORY[0x28211F4A8](a1, Error);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t MLS.GroupUpdateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupUpdateError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupMembersError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupMembersError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupMembersError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupMembersError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupMembersError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupMembersError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.GroupOperationError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 11;
  switch(result)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v2 = 1;
      goto LABEL_24;
    case 2:
      v2 = 2;
      goto LABEL_24;
    case 3:
      v2 = 3;
      goto LABEL_24;
    case 4:
      v2 = 4;
      goto LABEL_24;
    case 5:
      v2 = 5;
      goto LABEL_24;
    case 6:
      v2 = 6;
      goto LABEL_24;
    case 7:
      v2 = 7;
      goto LABEL_24;
    case 8:
      v2 = 8;
      goto LABEL_24;
    case 9:
      v2 = 9;
      goto LABEL_24;
    case 10:
      v2 = 10;
LABEL_24:
      v3 = v2;
      goto LABEL_25;
    case 11:
LABEL_25:
      *a2 = v3;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    case 20:
      *a2 = 20;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    case 27:
      *a2 = 27;
      break;
    case 28:
      *a2 = 28;
      break;
    default:
      *a2 = 29;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

uint64_t MLS.EncryptionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.SigningError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 16;
  if (result < 0x10)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

uint64_t MLS.SigningError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SigningError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SigningError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.IncomingMessageError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 9;
  switch(result)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 3:
      v2 = 3;
      goto LABEL_23;
    case 4:
      v2 = 4;
      goto LABEL_23;
    case 5:
      v2 = 5;
      goto LABEL_23;
    case 6:
      v2 = 6;
      goto LABEL_23;
    case 7:
      v2 = 7;
      goto LABEL_23;
    case 8:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 9:
LABEL_24:
      *a2 = v3;
      break;
    case 10:
      *a2 = 10;
      break;
    case 11:
      *a2 = 11;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    case 20:
      *a2 = 20;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    default:
      *a2 = 27;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.IncomingMessageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

uint64_t MLS.IncomingMessageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.IncomingMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.IncomingMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.GroupCreationError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 2;
  switch(result)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v2 = 1;
LABEL_3:
      v3 = v2;
      goto LABEL_4;
    case 2:
LABEL_4:
      *a2 = v3;
      break;
    case 3:
      *a2 = 3;
      break;
    case 4:
      *a2 = 4;
      break;
    case 5:
      *a2 = 5;
      break;
    case 6:
      *a2 = 6;
      break;
    case 7:
      *a2 = 7;
      break;
    case 8:
      *a2 = 8;
      break;
    case 9:
      *a2 = 9;
      break;
    case 10:
      *a2 = 10;
      break;
    case 11:
      *a2 = 11;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    default:
      *a2 = 20;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.DowngradeError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

uint64_t MLS.DowngradeError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.DowngradeError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.DowngradeError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t MLS.KeyPackageUpdateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyPackageUpdateError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

unint64_t MLS.KeyRollError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t MLS.KeyRollError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

_BYTE *MLS.KeyRollError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyRollError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyRollError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyRollError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyRollError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyRollError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyRollError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SendError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

uint64_t MLS.SendError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SendError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SendError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.ReceiveError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ReceiveError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

uint64_t MLS.ReceiveError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ReceiveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ReceiveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.ResendApplicationMessageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ResendApplicationMessageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

uint64_t MLS.ResendApplicationMessageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ResendApplicationMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ResendApplicationMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoError.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoError.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t MLS.FetchGroupRecoveryInfoError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

uint64_t MLS.FetchGroupRecoveryInfoError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  GroupRecoveryInfoError = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();

  return MEMORY[0x28211F4B8](a1, GroupRecoveryInfoError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  GroupRecoveryInfoError = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();

  return MEMORY[0x28211F4A8](a1, GroupRecoveryInfoError);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberError.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Member);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberError.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Member);
}

uint64_t MLS.FetchMemberError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

uint64_t MLS.FetchMemberError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.FetchMemberError(uint64_t a1)
{
  MemberError = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();

  return MEMORY[0x28211F4B8](a1, MemberError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.FetchMemberError(uint64_t a1)
{
  MemberError = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();

  return MEMORY[0x28211F4A8](a1, MemberError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ClientCreationError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageRetrievalError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyPackageRetrievalError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SelfKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SelfKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupDeletionError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupDeletionError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO19GroupOperationErrorV0F4TypeOAC0d4LoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupOperationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO19GroupOperationErrorVAC0d4LoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupOperationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15GroupFetchErrorV0F4TypeOAC0d4LoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15GroupFetchErrorVAC0d4LoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupUpdateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupUpdateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupMembersError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupMembersError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15EncryptionErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptionError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15EncryptionErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptionError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO12SigningErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SigningError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO12SigningErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SigningError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO20IncomingMessageErrorV0F4TypeOAC09GroupLoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO20IncomingMessageErrorVAC09GroupLoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO14DowngradeErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.DowngradeError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO14DowngradeErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.DowngradeError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageUpdateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageUpdateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyRollError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyRollError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SendError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SendError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ReceiveError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ReceiveError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ResendApplicationMessageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ResendApplicationMessageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchGroupRecoveryInfoError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchMemberError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchMemberError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageRetrievalError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageRetrievalError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageRetrievalError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageRetrievalError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingMessageError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingMessageError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupCreationError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageUpdateError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageUpdateError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(a7 - 8);
  v8[10] = v9;
  v8[11] = *(v9 + 64);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

uint64_t AsyncStream<A>.awaitElement(timeout:throwing:_:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v18 = v0[5];
  (*(v3 + 16))(v2, v0[9], v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[13] = v9;
  v19 = *(v4 + 16);
  *(v9 + 16) = v19;
  (*(v3 + 32))(v9 + v7, v2, v4);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v6);
  v11 = v18;
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return timeout<A>(after:throwing:work:)(v15, v16, v13, v14, &async function pointer to partial apply for closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), v9, v19);
}

{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
  }

  else
  {
    v5 = v3[12];
    v4 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(a6 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for AsyncStream.Iterator();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

uint64_t closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[3];
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v0[14] = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_willThrow();
    v5 = v4;
    v6 = v0[6];
LABEL_6:
    v21 = v0[13];
    v23 = v0[9];
    v22 = v0[10];

    v24 = v0[1];
LABEL_9:

    return v24();
  }

  v7 = v0[4];
  v8 = *(v3 + 32);
  v8(v0[9], v1, v2);
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = v0[14];
  v10 = v0[9];
  v12 = v0[4];
  v11 = v0[5];

  v13 = v12(v10);
  if (v9)
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];
    v20 = v0[5];
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[4]);
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    goto LABEL_6;
  }

  v25 = v13;
  v26 = v0[5];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[4]);
  if (v25)
  {
LABEL_8:
    v27 = v0[10];
    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[2];
    (*(v0[12] + 8))(v0[13], v0[11]);
    v8(v30, v28, v29);

    v24 = v0[1];
    goto LABEL_9;
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[14] = 0;
  v32 = *(MEMORY[0x277D85798] + 4);
  v33 = swift_task_alloc();
  v0[15] = v33;
  *v33 = v0;
  v33[1] = closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v34 = v0[13];
  v35 = v0[10];
  v36 = v0[11];

  return MEMORY[0x2822003E8](v35, 0, 0, v36);
}