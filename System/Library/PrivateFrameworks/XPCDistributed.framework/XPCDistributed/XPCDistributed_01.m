uint64_t closure #1 in XPCSystem.Transport.handleReceivedPacket(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1, &v10[*(v8 + 28)]);
  *v10 = a2;
  v10[8] = 1;
  v11 = a3[11];
  v12 = a3[12];
  __swift_project_boxed_opaque_existential_1(a3 + 8, v11);
  (*(v12 + 16))(v10, v11, v12);
  return outlined destroy of XPCSystem.Transport.Packet(v10);
}

uint64_t specialized RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v24 - v14;
  v16 = *(v2 + 16);
  outlined init with copy of XPCPeerRequirement?(a2, &v24 - v14, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v2;
  *(v18 + 24) = v19;
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v15, v18 + v17, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  aBlock[4] = partial apply for specialized closure #1 in RequestManager.reply(to:with:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_57;
  v20 = _Block_copy(aBlock);
  v21 = v16;

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v22 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v10, v6, v20);
  _Block_release(v20);

  (*(v28 + 8))(v6, v22);
  (*(v26 + 8))(v10, v27);
}

Swift::Void __swiftcall XPCSystem.Transport.handleCancellation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - v4);
  LOBYTE(v4) = 0;
  atomic_compare_exchange_strong_explicit((v0 + 32), &v4, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v4)
  {
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, sessionLog);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[5], v1[6], &v15);
      _os_log_impl(&dword_275171000, v7, v8, "%s is cancelled because remote end is gone.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x277C6C430](v10, -1, -1);
      MEMORY[0x277C6C430](v9, -1, -1);
    }
  }

  v11 = v1[13];
  *v5 = 0xD000000000000015;
  v5[1] = 0x80000002751B8EF0;
  swift_storeEnumTagMultiPayload();
  specialized RequestManager.replyAll(with:)(v5);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = v1[3];
    v1[3] = 0;
    swift_unknownObjectWeakAssign();
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

uint64_t specialized RequestManager.replyAll(with:)(uint64_t a1)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = (&v44 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v44 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 16);
  *v14 = v15;
  v16 = v11[13];
  v52 = *MEMORY[0x277D85200];
  v50 = v16;
  v51 = v11 + 13;
  v16(v14);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = v11[1];
  v53 = v11 + 1;
  v54 = v10;
  v49 = v18;
  result = v18(v14, v10);
  if (v15)
  {
    v47 = v2;
    swift_beginAccess();
    v44 = v1;
    v20 = *(v1 + 24);
    v23 = *(v20 + 64);
    v22 = v20 + 64;
    v21 = v23;
    v24 = 1 << *(*(v1 + 24) + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v56 = *(v1 + 24);

    v28 = 0;
    v45 = v14;
    v29 = 0;
    if (v26)
    {
LABEL_7:
      while (1)
      {
        v30 = *(*(v56 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v26)))));
        v31 = v57;
        outlined init with copy of XPCPeerRequirement?(v55, v57, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        v33 = *(v30 + *(*v30 + 120));
        *v14 = v33;
        v34 = v54;
        v50(v14, v52, v54);

        v35 = v33;
        LOBYTE(v33) = _dispatchPreconditionTest(_:)();
        result = v49(v14, v34);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v26 &= v26 - 1;
        v36 = *(*v30 + 112);
        swift_beginAccess();
        v37 = v48;
        outlined init with copy of XPCPeerRequirement?(v30 + v36, v48, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v38 = *v37;
          v39 = v37[1];
          v40 = v57;
          v38(v57);

          v41 = v40;
          v14 = v45;
          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v41, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
          v42 = v46;
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v42, v30 + v36);
          swift_endAccess();

          v29 = v28;
          if (!v26)
          {
            goto LABEL_10;
          }
        }

        else
        {

          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v57, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
          result = outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v37, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
          v29 = v28;
          if (!v26)
          {
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
LABEL_10:
      while (1)
      {
        v28 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          v43 = *(v44 + 24);
          *(v44 + 24) = MEMORY[0x277D84F98];
        }

        v26 = *(v22 + 8 * v28);
        ++v29;
        if (v26)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XPCSystem.Transport.Request.isCancelled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t XPCSystem.Transport.Request.__allocating_init(isCancelled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCSystem.Transport.sendRequest(id:payload:), 0, 0);
}

uint64_t XPCSystem.Transport.sendRequest(id:payload:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v1 + 104);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = XPCSystem.Transport.sendRequest(id:payload:);
  v7 = v0[2];
  v8 = v0[3];

  return specialized RequestManager.withRequest(id:perform:)(v7, v8, partial apply for closure #1 in XPCSystem.Transport.sendRequest(id:payload:), v5);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for DispatchQoS();
  v20 = *(v9 - 8);
  v21 = v9;
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a3, &v15[*(v13 + 28)]);
  *v15 = a2;
  v15[8] = 0;
  v17 = a4[11];
  v16 = a4[12];
  __swift_project_boxed_opaque_existential_1(a4 + 8, v17);
  (*(v16 + 16))(v15, v17, v16);
  return outlined destroy of XPCSystem.Transport.Packet(v15);
}

uint64_t closure #1 in closure #1 in XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v10 - v5);
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  MEMORY[0x277C6B720](0xD000000000000025, 0x80000002751B90F0);
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v7 = v12;
  *v6 = v11;
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  specialized RequestManager.Request.reply(with:)(v6);
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v6, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
}

uint64_t specialized RequestManager.Request.reply(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v2 + *(*v2 + 120));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = *(*v2 + 112);
    swift_beginAccess();
    outlined init with copy of XPCPeerRequirement?(v2 + v19, v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v10;
      v21 = v10[1];
      v20(a1);

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v8, v2 + v19);
      return swift_endAccess();
    }

    else
    {
      return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized RequestManager.withRequest(id:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestManager.withRequest(id:perform:), 0, 0);
}

uint64_t specialized RequestManager.withRequest(id:perform:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  *(v0 + 16) = v2;
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = specialized closure #1 in RequestManager.withRequest(id:perform:);
  *(v3 + 24) = 0;
  v4 = *(v1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0CyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAM0G5ErrorOG_GMd, &_s14XPCDistributed14RequestManagerC0B0CyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAM0G5ErrorOG_GMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v0 + 96) = v8;
  v8[2] = v2;
  v9 = *(*v8 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v18 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(*v8 + 120)) = v4;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v0 + 16;
  *(v10 + 32) = v8;
  *(v10 + 40) = v3;
  *(v10 + 48) = v18;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v1;
  *(v11 + 24) = v8;
  v12 = *(MEMORY[0x277D85A10] + 4);
  v13 = v4;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = specialized RequestManager.withRequest(id:perform:);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);

  return MEMORY[0x282200830](v15, &_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TATu, v10, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5TA, v11, 0, 0, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](specialized RequestManager.withRequest(id:perform:), 0, 0);
  }
}

{
  v1 = v0[8];
  outlined init with copy of XPCPeerRequirement?(v0[10], v0[9], &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    swift_willThrowTypedImpl();

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[3];
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v0[10], &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);

    outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v7, v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);

    v9 = v0[1];

    return v9();
  }
}

void *_s14XPCDistributed9XPCSystemC9TransportC16sendNotification11withPayloadyAE6PacketV0G0V_tAE0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1, &v7[*(v8 + 28)]);
  *v7 = 0;
  v7[8] = 2;
  v9 = v1[11];
  v10 = v1[12];
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 8, v9);
  v12 = (*(v10 + 16))(v7, v9, v10);
  if (v2)
  {
    v14 = v12;
    v15 = v13;
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    MEMORY[0x277C6B720](0xD000000000000027, 0x80000002751B8F10);
    v17[0] = v14;
    v17[1] = v15;
    _print_unlocked<A, B>(_:_:)();

    v11 = v18;
    lazy protocol witness table accessor for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError();
    swift_willThrowTypedImpl();
  }

  outlined destroy of XPCSystem.Transport.Packet(v7);
  return v11;
}

uint64_t XPCSystem.Transport.deinit()
{
  outlined destroy of weak XPCSystem.InboundSessionProtocol?(v0 + 16);
  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v2 = *(v0 + 104);

  return v0;
}

uint64_t XPCSystem.Transport.__deallocating_deinit()
{
  outlined destroy of weak XPCSystem.InboundSessionProtocol?(v0 + 16);
  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v2 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t XPCSystem.Transport.Packet.Header.write(to:)()
{
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  XPCDictionary.subscript.setter();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return XPCDictionary.subscript.setter();
}

uint64_t XPCSystem.Transport.Packet.Payload.dictionary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCSystem.Transport.Packet.Payload.init<A>(encoding:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for XPCDictionary();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
  if (v3)
  {

    (*(*(a2 - 8) + 8))(a1, a2);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1, a2);

    return (*(v8 + 32))(a3, v11, v7);
  }
}

uint64_t XPCSystem.Transport.Packet.Payload.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = XPCDictionary.keys.getter();
  v17[0] = 0x64616F6C796170;
  v17[1] = 0xE700000000000000;
  v16 = v17;
  v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v15, v9);

  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  if (v10)
  {
    (*(v12 + 32))(v8, a1, v11);
    outlined init with take of XPCSystem.Transport.Packet.Payload(v8, a2, type metadata accessor for XPCSystem.Transport.Packet.Payload);
    v13 = 0;
  }

  else
  {
    (*(v12 + 8))(a1, v11);
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t XPCSystem.Transport.Packet.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for XPCSystem.Transport.Packet(0) + 20);

  return outlined init with copy of XPCSystem.Transport.Packet.Payload(v3, a1);
}

uint64_t XPCSystem.Transport.Packet.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for XPCSystem.Transport.Packet(0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for XPCDictionary();
  (*(*(v8 - 8) + 32))(a1, v6, v8);
  v9 = *v1;
  v10 = *(v1 + 8);
  return XPCSystem.Transport.Packet.Header.write(to:)();
}

uint64_t XPCSystem.Transport.Packet.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCDictionary();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v34);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + 16);
  v19(v14, a1, v10);
  v20 = specialized XPCSystem.Transport.Packet.Header.init(from:)(v14);
  if (v21 == -1)
  {
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v22 = v21;
    v30 = v20;
    v19(v14, a1, v10);
    XPCSystem.Transport.Packet.Payload.init(from:)(v14, v6);
    (*(v11 + 8))(a1, v10);
    if ((*(v32 + 48))(v6, 1, v33) != 1)
    {
      v26 = v31;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v6, v31, type metadata accessor for XPCSystem.Transport.Packet.Payload);
      *v18 = v30;
      v18[8] = v22;
      v27 = v34;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v26, &v18[*(v34 + 20)], type metadata accessor for XPCSystem.Transport.Packet.Payload);
      v28 = v35;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v18, v35, type metadata accessor for XPCSystem.Transport.Packet);
      v25 = v27;
      v24 = v28;
      v23 = 0;
      return (*(v15 + 56))(v24, v23, 1, v25);
    }

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v6, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMR);
  }

  v23 = 1;
  v25 = v34;
  v24 = v35;
  return (*(v15 + 56))(v24, v23, 1, v25);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance XPCSystem.Transport.Packet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(v2 + *(a1 + 20), v8);
  v9 = type metadata accessor for XPCDictionary();
  (*(*(v9 - 8) + 32))(a2, v8, v9);
  v10 = *v2;
  v11 = *(v2 + 8);
  return XPCSystem.Transport.Packet.Header.write(to:)();
}

uint64_t specialized RequestManager.Request._setReplyHandler(to:)(void (*a1)(char *), void (*a2)(char *))
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + *(*v3 + 120));
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v15, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    goto LABEL_10;
  }

  v23 = *(*v3 + 112);
  swift_beginAccess();
  outlined init with copy of XPCPeerRequirement?(v3 + v23, v15, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v15, v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
      v28(v8);

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v13, v3 + v23);
      swift_endAccess();
      return 0;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *v13 = v28;
    v13[1] = a2;
    v25 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v13, v3 + v23);
    swift_endAccess();
    return v25;
  }

LABEL_10:
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v29 = 0xD000000000000017;
  v30 = 0x80000002751B8C50;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  MEMORY[0x277C6B720](0xD00000000000002BLL, 0x80000002751B90C0);
  outlined init with copy of XPCPeerRequirement?(v3 + v23, v13, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v13, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x277C6B720](v31, v32);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RequestManager.Request._cancel(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - v9);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + *(*v2 + 120));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    goto LABEL_10;
  }

  v11 = *(*v2 + 112);
  swift_beginAccess();
  outlined init with copy of XPCPeerRequirement?(v2 + v11, v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v10;
      v20 = v10[1];
      v19(a1);

LABEL_7:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v8, v2 + v11);
      return swift_endAccess();
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of XPCPeerRequirement?(a1, v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
    goto LABEL_7;
  }

LABEL_10:
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v22 = 0xD000000000000017;
  v23 = 0x80000002751B8C50;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x277C6B720](0xD00000000000001CLL, 0x80000002751B9070);
  outlined init with copy of XPCPeerRequirement?(v2 + v11, v8, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v8, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x277C6B720](v24, v25);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v23 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a3);
  swift_endAccess();

  swift_beginAccess();
  v21 = *(a4 + 16);
  v20 = *(a4 + 24);

  v21(a1);

  swift_storeEnumTagMultiPayload();
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v14, v17, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v17, v19, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  outlined init with copy of XPCPeerRequirement?(v19, v11, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  CheckedContinuation.resume(returning:)();
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v19, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  aBlock[4] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5TA;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v11, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  specialized RequestManager.Request._cancel(with:)(v3);
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v3, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
}

uint64_t specialized closure #1 in RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  outlined init with copy of XPCPeerRequirement?(a3, v9, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);

  specialized RequestManager.Request.reply(with:)(v9);

  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v9, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a2;
  v7[2] = *a3;
  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TY0_()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  *v6 = v0;
  v6[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TQ1_;
  v8 = *(v0 + 24);

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000025, 0x80000002751B9090, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA, v2, v7);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TQ1_()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = *a3;
  v8 = *(a2 + 16);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v9 == 1)
  {
    a6(a4);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v22 = a6;
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = *a2;
  swift_beginAccess();

  v16 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v15, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v23;
  swift_endAccess();
  (*(v11 + 16))(v14, v21, v10);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v15;
  *(v19 + 32) = a4;
  (*(v11 + 32))(v19 + v18, v14, v10);

  result = specialized RequestManager.Request._setReplyHandler(to:)(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA, v19);
  *v22 = result & 1;
  return result;
}

uint64_t specialized XPCSystem.Transport.init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v25 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v29[3] = a5;
  v29[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of Decoder(v29, a4 + 64);
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v24[1] = type metadata accessor for OS_dispatch_queue_serial();
  strcpy(v28, "XPCTransport-");
  HIWORD(v28[1]) = -4864;

  MEMORY[0x277C6B720](a1, a2);

  static DispatchQoS.unspecified.getter();
  v28[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A], &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, *MEMORY[0x277D85268], v27);
  v20 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 56) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMd, &_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_AC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a4 + 104) = v21;
  v22 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(a4 + 112) = 0;
  return a4;
}

uint64_t specialized XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  return specialized XPCSystem.Transport.init(debugName:rawTransport:)(a1, a2, v14, v15, a5, a6);
}

uint64_t outlined init with copy of XPCSystem.Transport.Packet.Payload(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for XPCSystem.Transport.Packet(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError;
  if (!lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError);
  }

  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet(uint64_t a1)
{
  v2 = type metadata accessor for XPCSystem.Transport.Packet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized XPCSystem.Transport.Packet.Header.init(from:)(uint64_t a1)
{
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  XPCDictionary.subscript.getter();
  if (v9 == 1)
  {
    v2 = type metadata accessor for XPCDictionary();
    (*(*(v2 - 8) + 8))(a1, v2);
    return 0;
  }

  if (v8)
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    XPCDictionary.subscript.getter();
    v3 = type metadata accessor for XPCDictionary();
    (*(*(v3 - 8) + 8))(a1, v3);
    if (v7)
    {
      return 0;
    }

    result = v6;
    if (v8 != 1 && v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v5 = type metadata accessor for XPCDictionary();
    (*(*(v5 - 8) + 8))(a1, v5);
    return 0;
  }

  return result;
}

uint64_t outlined init with take of XPCSystem.Transport.Packet.Payload(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Transport.TransportError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Transport.TransportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for XPCSystem.Transport.TransportError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for XPCSystem.Transport.TransportError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Transport.Packet()
{
  result = type metadata accessor for XPCSystem.Transport.Packet.Payload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Transport.Packet.Payload()
{
  result = type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC03RawC8ProtocolP4send6packetyAE6PacketV_tAE0dC5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Transport.Packet.Header(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Transport.Packet.Header(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for XPCSystem.Transport.Packet.Header(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for XPCSystem.Transport.Packet.Header(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR) - 8) + 80);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[2];

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTg5(a1, v6, v4, v5);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError;
  if (!lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError);
  }

  return result;
}

uint64_t outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for specialized closure #1 in RequestManager.reply(to:with:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return specialized closure #1 in RequestManager.reply(to:with:)(v2, v3, v4);
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationReplyHandler.onReturn<A>(value:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a3;
  v35 = a2;
  v32 = a1;
  v6 = type metadata accessor for XPCDictionary();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v29[1] = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v29 - v26;
  (*(v16 + 16))(v19, v32, a5);
  XPCSystem.Session.RemoteInvocationResponse.init(result:)(v19, a5, v27);
  (*(v21 + 16))(v25, v27, v20);

  swift_getWitnessTable();
  XPCSystem.Transport.Packet.Payload.init<A>(encoding:userInfo:)(v25, v20, v15);
  v35(v15);
  outlined destroy of XPCSystem.Transport.Packet.Payload(v15);
  return (*(v21 + 8))(v27, v20);
}

uint64_t XPCSystem.Session.RemoteInvocationReplyHandler.reply<A, B>(with:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[1] = a7;
  v37[2] = a8;
  v37[0] = a4;
  v40 = a2;
  v41 = a3;
  v11 = type metadata accessor for XPCDictionary();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a6 - 8);
  v20 = *(v42 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a5 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Result();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v37 - v30;
  (*(v32 + 16))(v37 - v30, a1, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v40;
    (*(v42 + 32))(v23, v31, a6);
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    MEMORY[0x277C6B720](0x742065746F6D6552, 0xED00002077657268);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](0xD000000000000034, 0x80000002751B92A0);
    v34 = v43;
    v35 = v44;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v43 = v34;
    v44 = v35;
    v45 = 256;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();

    (*(v38 + 32))(v19, v14, v39);
    v33(v19);

    outlined destroy of XPCSystem.Transport.Packet.Payload(v19);
    return (*(v42 + 8))(v23, a6);
  }

  else
  {
    (*(v24 + 32))(v27, v31, a5);
    XPCSystem.Session.RemoteInvocationReplyHandler.onReturn<A>(value:)(v27, v40, v41, v37[0], a5);
    return (*(v24 + 8))(v27, a5);
  }
}

uint64_t XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v99 = a2;
  v96 = a1;
  v100 = *v3;
  v101 = a3;
  v4 = type metadata accessor for DispatchPredicate();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v86 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v85 - v9;
  v10 = type metadata accessor for RemoteCallTarget();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v10);
  v89 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCDictionary();
  v97 = *(v13 - 8);
  v98 = v13;
  v14 = *(v97 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v85 - v19;
  MEMORY[0x28223BE20](v18);
  v95 = &v85 - v20;
  v21 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v92 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v94 = &v85 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMd, &_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMR);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v30 = *(*(v29 - 8) + 72);
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2751B4420;
  v33 = v32 + v31;
  v34 = (v32 + v31 + *(v29 + 48));
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for CodingUserInfoKey();
  v36 = __swift_project_value_buffer(v35, static CodingUserInfoKey.sessionKey);
  (*(*(v35 - 8) + 16))(v33, v36, v35);
  v34[3] = v100;
  *v34 = v3;
  v37 = (v33 + v30 + *(v29 + 48));

  static CodingUserInfoKey.actorSystemKey.getter();
  v38 = v3[2];
  v37[3] = type metadata accessor for XPCSystem();
  *v37 = v38;

  v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v3 + 104) != 1)
  {

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *&v118 = 0xD00000000000001FLL;
    *(&v118 + 1) = 0x80000002751B9120;
    LOWORD(v119) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();

    (*(v97 + 32))(v25, v17, v98);
    v99(v25);

    return outlined destroy of XPCSystem.Transport.Packet.Payload(v25);
  }

  v40 = v101;

  v100 = v3;
  if (XPCSystem.Session.remoteSatisfiesActorSystemRequirement()())
  {
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest();
    XPCDictionary.decode<A>(as:forKey:withUserInfo:)();
    v41 = 0;

    v121[2] = v115;
    v121[3] = v116;
    v122[0] = v117[0];
    *(v122 + 9) = *(v117 + 9);
    v120 = v112;
    v121[0] = v113;
    v121[1] = v114;
    v118 = v110;
    v119 = v111;
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, sessionLog);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v118, &v110);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v118, &v104);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v118, v103);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v102 = v95;
      *v47 = 134218498;
      v48 = v110;
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v110);
      *(v47 + 4) = v48;
      *(v47 + 12) = 2080;
      v49 = XPCSystem.SharedActorKey.debugDescription.getter(*(&v104 + 1), v105, SBYTE8(v105));
      v96 = 0;
      v51 = v50;
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v104);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v102);

      *(v47 + 14) = v52;
      *(v47 + 22) = 2080;
      v53 = v103[4];
      v54 = v103[5];

      v55 = v89;
      v56 = MEMORY[0x277C6B300](v53, v54);
      v57 = MEMORY[0x277C6B2E0](v56);
      v59 = v58;
      (*(v90 + 8))(v55, v91);
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v103);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v102);
      v41 = v96;

      *(v47 + 24) = v60;
      _os_log_impl(&dword_275171000, v45, v46, "Received request %llu targeting %s for invocation %s", v47, 0x20u);
      v61 = v95;
      swift_arrayDestroy();
      v40 = v101;
      MEMORY[0x277C6C430](v61, -1, -1);
      MEMORY[0x277C6C430](v47, -1, -1);
    }

    else
    {
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v110);

      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v103);
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v104);
    }

    v62 = v100;
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v121, &v110);
    if (BYTE8(v115))
    {
      v106 = v112;
      v107 = v113;
      v108 = v114;
      v109 = v115;
      v104 = v110;
      v105 = v111;
      v63 = *(&v111 + 1);
      v64 = swift_allocObject();
      v65 = v64;
      if (v63)
      {
        v66 = v107;
        *(v64 + 48) = v106;
        *(v64 + 64) = v66;
        *(v64 + 80) = v108;
        *(v64 + 96) = v109;
        v67 = v105;
        *(v64 + 16) = v104;
        *(v64 + 32) = v67;
        v68 = type metadata accessor for TaskPriority();
        v69 = v85;
        (*(*(v68 - 8) + 56))(v85, 1, 1, v68);
        outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v118, &v110);
        v70 = swift_allocObject();
        v71 = v114;
        *(v70 + 120) = v115;
        v72 = v117[0];
        *(v70 + 136) = v116;
        *(v70 + 152) = v72;
        *(v70 + 161) = *(v117 + 9);
        v73 = v110;
        *(v70 + 56) = v111;
        v74 = v113;
        *(v70 + 72) = v112;
        *(v70 + 88) = v74;
        *(v70 + 104) = v71;
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        *(v70 + 32) = v62;
        *(v70 + 40) = v73;
        *(v70 + 184) = v99;
        *(v70 + 192) = v40;
        *(v70 + 200) = v39;
        *(v70 + 208) = v65;

        v75 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v69, &async function pointer to partial apply for closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), v70);
        v76 = v118;
        v77 = *(v62[4] + 56);
        v78 = v86;
        v79 = v87;
        *v86 = v77;
        v80 = v88;
        (*(v79 + 104))(v78, *MEMORY[0x277D85200], v88);
        v81 = v77;
        LOBYTE(v77) = _dispatchPreconditionTest(_:)();
        (*(v79 + 8))(v78, v80);
        if (v77)
        {
          swift_beginAccess();

          v82 = v62[19];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v104 = v62[19];
          v62[19] = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v76, isUniquelyReferenced_nonNull_native);
          v62[19] = v104;
          swift_endAccess();

          outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v118);
        }

        __break(1u);
LABEL_23:

        (*(v97 + 8))(v76, v98);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    else
    {
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(&v110);
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0;
      swift_allocObject();
    }

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(&v104, &_s14XPCDistributed9XPCSystemC17InvocationDecoderVSgMd, &_s14XPCDistributed9XPCSystemC17InvocationDecoderVSgMR);
    swift_deallocUninitializedObject();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *&v110 = 0xD00000000000001FLL;
    *(&v110 + 1) = 0x80000002751B91E0;
    LOWORD(v111) = 257;
    v76 = v93;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    if (!v41)
    {

      v84 = v92;
      (*(v97 + 32))(v92, v76, v98);
      v99(v84);

      outlined destroy of XPCSystem.Transport.Packet.Payload(v84);
      return outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v118);
    }

    goto LABEL_23;
  }

  v43._countAndFlagsBits = 0xD000000000000047;
  v43._object = 0x80000002751B9170;
  XPCSystem.Session.cancel(because:)(v43);
}

uint64_t closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v18;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = type metadata accessor for XPCPeerRequirement();
  v8[26] = v9;
  v10 = *(v9 - 8);
  v8[27] = v10;
  v11 = *(v10 + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = type metadata accessor for XPCDictionary();
  v8[29] = v12;
  v13 = *(v12 - 8);
  v8[30] = v13;
  v14 = *(v13 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v15 = *(*(type metadata accessor for XPCSystem.Transport.Packet.Payload(0) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

uint64_t closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 112);
  *(v0 + 280) = v2;
  if (v2)
  {
    *(v0 + 288) = *(v1 + 136);
    *(v0 + 296) = *(v1 + 128);
    v3 = *(MEMORY[0x277CBCEA0] + 4);

    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

    return MEMORY[0x28210E9A8](v4);
  }

  v5 = *(v0 + 168);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v1 + 104) != 1)
  {
    goto LABEL_15;
  }

  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  KeyPath = swift_getKeyPath();

  v12 = *(*v9 + 136);
  outlined copy of XPCSystem.SharedActorKey(v6, v7, v8);
  v12(KeyPath);

  v13 = *(v0 + 136);
  *(v0 + 312) = v13;
  if (v13)
  {
    v14 = *(v0 + 144);
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = v15;
    v59 = v14;
    v17 = *(*(v0 + 160) + 32);
    v18 = v17[11];
    v19 = v17[12];
    __swift_project_boxed_opaque_existential_1(v17 + 8, v18);
    v20 = *(v19 + 32);

    swift_unknownObjectRetain();
    v20(v18, v19);

    if (*(v0 + 68))
    {
      __break(1u);
      return MEMORY[0x28210E9A8](v4);
    }

    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v58 = *(v0 + 208);
    v23 = *(v0 + 60);
    v24 = *(v0 + 52);
    v25 = *(v0 + 44);
    v26 = *(v0 + 36);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(ObjectType, v16);
    v28 = audit_token_t.satisfies(requirement:)();
    (*(v22 + 8))(v21, v58);
    swift_unknownObjectRelease();
    v14 = v59;
    if (v28)
    {
LABEL_10:
      if (one-time initialization token for $currentSession != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 192);
      v30 = *(v0 + 200) + 16;
      v31 = swift_task_alloc();
      *(v0 + 320) = v31;
      v32 = *(v0 + 160);
      v33 = *(v0 + 176);
      *(v0 + 152) = *(v0 + 160);
      *(v31 + 16) = v13;
      *(v31 + 24) = v14;
      *(v31 + 32) = v32;
      *(v31 + 48) = v30;
      *(v31 + 56) = v33;
      *(v31 + 72) = v29;
      v34 = *(MEMORY[0x277D85A70] + 4);

      v35 = swift_task_alloc();
      *(v0 + 328) = v35;
      *v35 = v0;
      v35[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

      return MEMORY[0x282200908]();
    }

    v51 = *(v0 + 248);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 72) = 0xD000000000000025;
    *(v0 + 80) = 0x80000002751B9230;
    *(v0 + 88) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v39 = *(v0 + 264);
    v53 = *(v0 + 240);
    v52 = *(v0 + 248);
    v54 = *(v0 + 232);
    v56 = *(v0 + 176);
    v55 = *(v0 + 184);

    (*(v53 + 32))(v39, v52, v54);
    v56(v39);
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_15:
    v36 = *(v0 + 256);
    _StringGuts.grow(_:)(34);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x277C6B720](0xD000000000000020, 0x80000002751B9200);
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    *(v0 + 112) = v8;
    _print_unlocked<A, B>(_:_:)();
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v38;
    *(v0 + 24) = v37;
    *(v0 + 32) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v39 = *(v0 + 272);
    v40 = *(v0 + 256);
    v41 = *(v0 + 232);
    v42 = *(v0 + 240);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);

    (*(v42 + 32))(v39, v40, v41);
    v44(v39);
  }

  outlined destroy of XPCSystem.Transport.Packet.Payload(v39);
  v46 = *(v0 + 264);
  v45 = *(v0 + 272);
  v48 = *(v0 + 248);
  v47 = *(v0 + 256);
  v49 = *(v0 + 224);

  v50 = *(v0 + 8);

  return v50();
}

{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);

  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v4 + 104) != 1)
  {
    goto LABEL_11;
  }

  v9 = *(v4 + 48);
  v10 = swift_task_alloc();
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  KeyPath = swift_getKeyPath();

  v12 = *(*v9 + 136);
  outlined copy of XPCSystem.SharedActorKey(v6, v7, v8);
  v12(KeyPath);

  v13 = *(v0 + 136);
  *(v0 + 312) = v13;
  if (v13)
  {
    v14 = *(v0 + 144);
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    v59 = v14;
    v17 = *(*(v0 + 160) + 32);
    v18 = v17[11];
    v19 = v17[12];
    __swift_project_boxed_opaque_existential_1(v17 + 8, v18);
    v20 = *(v19 + 32);

    swift_unknownObjectRetain();
    v20(v18, v19);

    if (*(v0 + 68))
    {
      __break(1u);
      return MEMORY[0x282200908]();
    }

    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v58 = *(v0 + 208);
    v23 = *(v0 + 60);
    v24 = *(v0 + 52);
    v25 = *(v0 + 44);
    v26 = *(v0 + 36);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(ObjectType, v16);
    v28 = audit_token_t.satisfies(requirement:)();
    (*(v22 + 8))(v21, v58);
    swift_unknownObjectRelease();
    v14 = v59;
    if (v28)
    {
LABEL_6:
      if (one-time initialization token for $currentSession != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 192);
      v30 = *(v0 + 200) + 16;
      v31 = swift_task_alloc();
      *(v0 + 320) = v31;
      v32 = *(v0 + 160);
      v33 = *(v0 + 176);
      *(v0 + 152) = *(v0 + 160);
      *(v31 + 16) = v13;
      *(v31 + 24) = v14;
      *(v31 + 32) = v32;
      *(v31 + 48) = v30;
      *(v31 + 56) = v33;
      *(v31 + 72) = v29;
      v34 = *(MEMORY[0x277D85A70] + 4);

      v35 = swift_task_alloc();
      *(v0 + 328) = v35;
      *v35 = v0;
      v35[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

      return MEMORY[0x282200908]();
    }

    v52 = *(v0 + 248);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 72) = 0xD000000000000025;
    *(v0 + 80) = 0x80000002751B9230;
    *(v0 + 88) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v39 = *(v0 + 264);
    v54 = *(v0 + 240);
    v53 = *(v0 + 248);
    v55 = *(v0 + 232);
    v57 = *(v0 + 176);
    v56 = *(v0 + 184);

    (*(v54 + 32))(v39, v53, v55);
    v57(v39);
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_11:
    v36 = *(v0 + 256);
    _StringGuts.grow(_:)(34);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x277C6B720](0xD000000000000020, 0x80000002751B9200);
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    *(v0 + 112) = v8;
    _print_unlocked<A, B>(_:_:)();
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v38;
    *(v0 + 24) = v37;
    *(v0 + 32) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v39 = *(v0 + 272);
    v40 = *(v0 + 256);
    v41 = *(v0 + 232);
    v42 = *(v0 + 240);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);

    (*(v42 + 32))(v39, v40, v41);
    v44(v39);
  }

  outlined destroy of XPCSystem.Transport.Packet.Payload(v39);
  v46 = *(v0 + 264);
  v45 = *(v0 + 272);
  v48 = *(v0 + 248);
  v47 = *(v0 + 256);
  v49 = *(v0 + 224);

  v50 = *(v0 + 8);

  return v50();
}

{
  v1 = v0[39];
  swift_unknownObjectRelease();
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[28];

  v7 = v0[1];

  return v7();
}

void closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 320);
    v6 = *(v2 + 160);

    MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v18;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  v8[28] = a2;
  v8[29] = a3;
  v9 = type metadata accessor for XPCDictionary();
  v8[36] = v9;
  v10 = *(v9 - 8);
  v8[37] = v10;
  v11 = *(v10 + 64) + 15;
  v8[38] = swift_task_alloc();
  v12 = *(*(type metadata accessor for XPCSystem.Transport.Packet.Payload(0) - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v13 = type metadata accessor for RemoteCallTarget();
  v8[40] = v13;
  v14 = *(v13 - 8);
  v8[41] = v14;
  v15 = *(v14 + 64) + 15;
  v8[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

uint64_t closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v8 = *(*(v0 + 240) + 16);
  *(v0 + 344) = v8;
  *(v0 + 208) = v8;
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);

  MEMORY[0x277C6B300](v9, v10);
  *(v0 + 88) = &unk_2883F52A0;
  *(v0 + 96) = &protocol witness table for XPCSystem.Session.RemoteInvocationReplyHandler;
  *(v0 + 64) = v5;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  swift_beginAccess();
  LOBYTE(v10) = *(v4 + 80) != 0;
  ObjectType = swift_getObjectType();
  outlined init with take of XPCSystem.ResultHandler.ReplyHandler((v0 + 64), v0 + 16);
  *(v0 + 56) = v10;
  swift_beginAccess();
  v12 = *(MEMORY[0x277D85320] + 4);

  v13 = swift_task_alloc();
  *(v0 + 352) = v13;
  v14 = type metadata accessor for XPCSystem();
  v15 = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem and conformance XPCSystem, type metadata accessor for XPCSystem);
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  v16 = *(v0 + 336);
  v17 = *(v0 + 256);
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);

  return MEMORY[0x2821FF478](v18, v16, v17, v0 + 16, v14, ObjectType, v15, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v10 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  }

  else
  {
    v6 = v2[42];
    v5 = v2[43];
    v7 = v2[40];
    v8 = v2[41];
    swift_endAccess();
    outlined destroy of XPCSystem.ResultHandler((v2 + 2));
    (*(v8 + 8))(v6, v7);

    v4 = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(*(v0[30] + 24));
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v21 = *(v0 + 224);
  swift_endAccess();
  outlined destroy of XPCSystem.ResultHandler(v0 + 16);
  (*(v5 + 8))(v3, v4);

  _StringGuts.grow(_:)(67);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  MEMORY[0x277C6B720](0xD000000000000032, 0x80000002751B9260);
  *(v0 + 192) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](0x7265206874697720, 0xEC00000020726F72);
  *(v0 + 216) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](46, 0xE100000000000000);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 152) = v7;
  *(v0 + 160) = v8;
  *(v0 + 168) = 257;
  XPCDictionary.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
  v9 = *(v0 + 360);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);

  (*(v13 + 32))(v10, v11, v12);
  v15(v10);

  outlined destroy of XPCSystem.Transport.Packet.Payload(v10);
  v16 = *(v0 + 336);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t XPCSystem.Session.handleReceivedNotification(_:)()
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification();
  XPCDictionary.decode<A>(as:forKey:withUserInfo:)();

  return XPCSystem.Session.cancelPendingInvocationExecutionTask(withID:)(v1);
}

uint64_t XPCSystem.Session.handleActorShared(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      break;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit((v2 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(result, a2, v4, 0, 2u);
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall XPCSystem.Session.handleTransportCancellation()()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3[0] = 0;
  v1(v3);
}

uint64_t protocol witness for XPCSystem.InboundSessionProtocol.handleActorShared(_:) in conformance XPCSystem.Session(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      break;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit((v2 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(result, a2, v4, 0, 2u);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for XPCSystem.InboundSessionProtocol.handleTransportCancellation() in conformance XPCSystem.Session()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4[0] = 0;
  return v1(v4);
}

uint64_t static XPCSystem.currentRemoteInvocationOrigin()@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for $currentSession != -1)
  {
    swift_once();
  }

  result = TaskLocal.get()();
  *a1 = v3;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>);
  }

  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet.Payload(uint64_t a1)
{
  v2 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest);
  }

  return result;
}

uint64_t partial apply for closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[23];
  v8 = v1[24];
  v9 = v1[25];
  v10 = v1[26];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for XPCSystem.Session(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, type metadata accessor for XPCSystem.Session);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static XPCSystem.RemoteInvocationCancellationError.resultPropagationFailed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 3;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t static XPCSystem.RemoteInvocationCancellationError.executionFailed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

Swift::Int XPCSystem.RemoteInvocationCancellationError.Reason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.RemoteInvocationCancellationError.message.getter()
{
  v1 = 0xD000000000000020;
  v2 = 0xE000000000000000;
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = " invocation was cancelled";
  v6 = "nvocation after it was executed";
  v7 = 0xD00000000000002BLL;
  if (*v0 != 2)
  {
    v7 = 0xD00000000000004FLL;
    v6 = " result of invocation (error: ";
  }

  if (*v0)
  {
    v1 = 0xD000000000000039;
    v5 = "invocation was not executed";
  }

  if (*v0 <= 1u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v7;
  }

  if (*v0 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x277C6B720](v8, v9 | 0x8000000000000000);

  MEMORY[0x277C6B720](8238, 0xE200000000000000);
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6B720](v4, v2);

  return 0;
}

_BYTE *XPCSystem.RemoteInvocationCancellationError.init(reason:message:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static XPCSystem.RemoteInvocationCancellationError.underlyingSessionCancelled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

void static XPCSystem.RemoteInvocationCancellationError.callingTaskCancelled()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t XPCSystem.SetupError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCSystem.SetupError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t XPCSystem.SetupError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v4, "SetupError{");
  MEMORY[0x277C6B720](v1, v2);
  MEMORY[0x277C6B720](32034, 0xE200000000000000);
  return v4[0];
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SetupError()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v4, "SetupError{");
  MEMORY[0x277C6B720](v1, v2);
  MEMORY[0x277C6B720](32034, 0xE200000000000000);
  return v4[0];
}

uint64_t XPCSystem.RemoteInvocationCancellationError.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return XPCSystem.RemoteInvocationCancellationError.message.getter();
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason;
  if (!lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError;
  if (!lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.RemoteInvocationCancellationError()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return XPCSystem.RemoteInvocationCancellationError.message.getter();
}

uint64_t getEnumTagSinglePayload for XPCSystem.RemoteInvocationCancellationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for XPCSystem.RemoteInvocationCancellationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t Either.mapB<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    (*(v7 + 8))(v10, v6);
    v19 = *(a2 + 16);
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v16, *(a2 + 16));
  }

  type metadata accessor for Either();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _s14XPCDistributed6EitherOAAs5ErrorR_rlE4getAxyq_YKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, a1, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v15);
  }

  (*(v7 + 32))(v10, v15, v6);
  (*(v7 + 16))(a2, v10, v6);
  swift_willThrowTypedImpl();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Either<>.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060387 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int Either<>.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](a1);
  return Hasher._finalize()();
}

uint64_t Either<>.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1702060387;
  }

  if (a1 == 1)
  {
    return 97;
  }

  return 98;
}

uint64_t Either<>.Case.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Either<>.Case.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 98;
  }

  else
  {
    return 97;
  }
}

uint64_t Either<>.Case.encode(to:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v15 = type metadata accessor for Either<>.Case.BCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v38 = v15;
  v16 = type metadata accessor for KeyedEncodingContainer();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = *(v35 + 64);
  MEMORY[0x28223BE20](v16);
  v34 = &v30 - v18;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  type metadata accessor for Either<>.Case.ACodingKeys();
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for KeyedEncodingContainer();
  v31 = *(v33 - 8);
  v19 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - v20;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  type metadata accessor for Either<>.Case.CodingKeys();
  swift_getWitnessTable();
  v21 = type metadata accessor for KeyedEncodingContainer();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v39)
  {
    LOBYTE(v40) = 1;
    v27 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v35 + 8))(v27, v36);
  }

  else
  {
    LOBYTE(v40) = 0;
    v28 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v28, v33);
  }

  return (*(v22 + 8))(v25, v21);
}

uint64_t Either<>.Case.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  v62 = a6;
  v63 = a7;
  v49 = type metadata accessor for Either<>.Case.BCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v45 = *(v46 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v40 - v15;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  v62 = a6;
  v63 = a7;
  v16 = type metadata accessor for Either<>.Case.ACodingKeys();
  v48 = swift_getWitnessTable();
  v44 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v44 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v55 = &v40 - v18;
  v56 = a2;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v51 = a3;
  *&v52 = a4;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  *(&v52 + 1) = a5;
  v53 = a6;
  v62 = a6;
  v63 = a7;
  v54 = a7;
  type metadata accessor for Either<>.Case.CodingKeys();
  swift_getWitnessTable();
  v19 = type metadata accessor for KeyedDecodingContainer();
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v25 = v55;
    v41 = v16;
    v26 = v56;
    v42 = 0;
    v64 = a1;
    *&v60 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v58 = ArraySlice.init<A>(_:)();
    *(&v58 + 1) = v27;
    *&v59 = v28;
    *(&v59 + 1) = v29;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v30 = v60;
    if (v60 == 2 || (v40 = v58, v60 = v58, v61 = v59, (Collection.isEmpty.getter() & 1) == 0))
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *&v60 = v26;
      *(&v60 + 1) = v51;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      *v36 = type metadata accessor for Either<>.Case();
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v57 + 8))(v22, v19);
    }

    else
    {
      if (v30)
      {
        LOBYTE(v60) = 1;
        v31 = v47;
        v32 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v57;
        if (!v32)
        {
          (*(v45 + 8))(v31, v46);
LABEL_14:
          (*(v33 + 8))(v22, v19);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          return v30 & 1;
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        v39 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v57;
        if (!v39)
        {
          (*(v43 + 8))(v25, v44);
          goto LABEL_14;
        }
      }

      (*(v33 + 8))(v22, v19);
    }

    swift_unknownObjectRelease();
    a1 = v64;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Either<A, B><>.CodingKeys(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return static Either<>.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Either<A, B><>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return Either<>.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Either<A, B><>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  return Either<>.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Either<A, B><>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  Either<>.CodingKeys.hash(into:)(v11, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Either<A, B><>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return Either<>.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.ACodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.ACodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Either<A, B><>.Case.ACodingKeys@<X0>(void *a1@<X2>, uint64_t (*a2)(void, void, void, void, void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);

  *a3 = v4 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Either<A, B><>.Case.ACodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.BCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.BCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Either<A, B><>.Case.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return Either<>.Case.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Either<A, B><>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Either<A, B><>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Either<A, B><>.Case.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hashValue.getter(*v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance Either<A, B><>.Case@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Either<>.Case.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t Either<>.encode(to:)(void *a1, uint64_t a2)
{
  v39 = *(*(a2 + 24) - 8);
  v4 = *(v39 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(*(v7 + 16) - 8);
  v8 = *(v38 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v46 = v16;
  v53 = v17;
  v54 = v18;
  v49 = v18;
  v43 = v19;
  v44 = v20;
  v55 = v19;
  v56 = v16;
  v57 = v20;
  v58 = v21;
  v47 = v21;
  type metadata accessor for Either<>.CodingKeys();
  swift_getWitnessTable();
  v22 = type metadata accessor for KeyedEncodingContainer();
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v50 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v12 + 16))(v15, v42, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v39;
    v28 = v41;
    v29 = v49;
    (*(v39 + 32))(v41, v15, v49);
    v59 = 256;
    v53 = v45;
    v54 = v29;
    v55 = v43;
    v56 = v46;
    v57 = v44;
    v58 = v47;
    type metadata accessor for Either<>.Case();
    swift_getWitnessTable();
    v30 = v52;
    v31 = v50;
    v32 = v48;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v32)
    {
      LOBYTE(v53) = 2;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v27 + 8))(v28, v29);
  }

  else
  {
    v33 = v38;
    v34 = v40;
    v35 = v45;
    (*(v38 + 32))(v40, v15, v45);
    v59 = 0;
    v53 = v35;
    v54 = v49;
    v55 = v43;
    v56 = v46;
    v57 = v44;
    v58 = v47;
    type metadata accessor for Either<>.Case();
    swift_getWitnessTable();
    v30 = v52;
    v31 = v50;
    v36 = v48;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v36)
    {
      LOBYTE(v53) = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v33 + 8))(v34, v35);
  }

  return (*(v51 + 8))(v31, v30);
}

uint64_t Either<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a2;
  v42 = a8;
  v56 = a3;
  v57 = a4;
  v51 = a4;
  v52 = a6;
  v46 = a5;
  v58 = a5;
  v59 = a6;
  v48 = a7;
  v60 = a7;
  type metadata accessor for Either<>.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v47 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v38 - v12;
  v49 = a2;
  v50 = a3;
  v14 = type metadata accessor for Either();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v13;
  v25 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v35 = a1;
  }

  else
  {
    v40 = v18;
    v41 = v21;
    WitnessTable = v23;
    v39 = v14;
    v26 = v44;
    v54 = a1;
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v46;
    v59 = v52;
    v60 = v48;
    type metadata accessor for Either<>.Case();
    LOBYTE(v55) = 0;
    swift_getWitnessTable();
    v27 = v47;
    v28 = v45;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v26;
    if (v61)
    {
      LOBYTE(v55) = 2;
      v30 = v40;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v31 = v43;
      v32 = WitnessTable;
      (*(v29 + 8))(v28, v27);
      v33 = v39;
      swift_storeEnumTagMultiPayload();
      v34 = v42;
    }

    else
    {
      LOBYTE(v55) = 1;
      v30 = v41;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v34 = v42;
      v31 = v43;
      v32 = WitnessTable;
      (*(v29 + 8))(v28, v27);
      v33 = v39;
      swift_storeEnumTagMultiPayload();
    }

    v37 = *(v31 + 32);
    v37(v32, v30, v33);
    v37(v34, v32, v33);
    v35 = v54;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance <> Either<A, B>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  v6 = *(a3 - 32);
  v5 = *(a3 - 24);
  return Either<>.encode(to:)(a1, a2);
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v46 = a1;
  v47 = a2;
  v44 = *(a4 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v13;
  v14 = type metadata accessor for Either();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v23 = *(v42 + 64);
  v24 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v26 = &v38 - v25;
  v27 = *(v24 + 48);
  v28 = *(v15 + 16);
  v28(&v38 - v25, v46, v14);
  v28(&v26[v27], v47, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28(v21, v26, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v43;
      v35 = v38;
      (*(v43 + 32))(v38, &v26[v27], a3);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v34 + 8);
      v36(v35, a3);
      v36(v21, a3);
      goto LABEL_9;
    }

    (*(v43 + 8))(v21, a3);
    goto LABEL_7;
  }

  v28(v19, v26, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v44 + 8))(v19, v45);
LABEL_7:
    v32 = 0;
    v15 = v42;
    v14 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v30 = v44;
  v29 = v45;
  v31 = v39;
  (*(v44 + 32))(v39, &v26[v27], v45);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v30 + 8);
  v33(v31, v29);
  v33(v19, v29);
LABEL_9:
  (*(v15 + 8))(v26, v14);
  return v32 & 1;
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v21, v5);
    MEMORY[0x277C6BCC0](1);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v10, v5);
  }

  else
  {
    (*(v13 + 32))(v17, v21, v12);
    MEMORY[0x277C6BCC0](0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v13 + 8))(v17, v12);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Either<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t Either.mapA<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a2 + 24) - 8) + 32))(a3, v15, *(a2 + 24));
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = *(a2 + 24);
  }

  type metadata accessor for Either();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Result();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  (*(*(v8 - 8) + 32))(a4, a1);
  type metadata accessor for Either();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s14XPCDistributed6EitherOAAs5ErrorR_rlE8flatMapAyACyqd__q_Gqd__xq_YKXElF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a4;
  v27 = a2;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(a5, v23, v6);
  }

  else
  {
    (*(v15 + 32))(v19, v23, v14);
    v28(v19, v11);
    (*(v15 + 8))(v19, v14);
  }

  type metadata accessor for Either();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.flatMapA<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v39 = a2;
  v40 = a1;
  v10 = type metadata accessor for Optional();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v41 = *(a4 - 8);
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v16);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v6, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a3 + 24) - 8) + 32))(a5, v27, *(a3 + 24));
    v29 = type metadata accessor for Either();
  }

  else
  {
    (*(v20 + 32))(v24, v27, v19);
    v40(v24);
    (*(v20 + 8))(v24, v19);
    v30 = v41;
    if ((*(v41 + 48))(v14, 1, a4) == 1)
    {
      (*(v37 + 8))(v14, v38);
      v31 = *(a3 + 24);
      v32 = type metadata accessor for Either();
      return (*(*(v32 - 8) + 56))(a5, 1, 1, v32);
    }

    v34 = *(v30 + 32);
    v34(v18, v14, a4);
    v34(a5, v18, a4);
    v35 = *(a3 + 24);
    v29 = type metadata accessor for Either();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
}

uint64_t Either.flatMapB<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v39 = a2;
  v40 = a1;
  v10 = type metadata accessor for Optional();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v41 = *(a4 - 8);
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v16);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v6, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v20 + 32))(v24, v27, v19);
    v40(v24);
    (*(v20 + 8))(v24, v19);
    v29 = v41;
    if ((*(v41 + 48))(v14, 1, a4) == 1)
    {
      (*(v37 + 8))(v14, v38);
      v30 = *(a3 + 16);
      v31 = type metadata accessor for Either();
      return (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
    }

    v34 = *(v29 + 32);
    v34(v18, v14, a4);
    v34(a5, v18, a4);
    v35 = *(a3 + 16);
    v33 = type metadata accessor for Either();
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 32))(a5, v27, *(a3 + 16));
    v33 = type metadata accessor for Either();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v33 - 8) + 56))(a5, 0, 1, v33);
}

uint64_t base witness table accessor for Equatable in <> Either<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for Either(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Either(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for Either(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTagSinglePayload for Either<>.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Either<>.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *RequestManager.__allocating_init(queue:)(void *a1)
{
  swift_allocObject();
  v2 = specialized RequestManager.init(queue:)(a1);

  return v2;
}

uint64_t RequestManager.replyAll(with:)(uint64_t a1)
{
  v40 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v39 = type metadata accessor for Optional();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = v37 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[2];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v15)
  {
    swift_beginAccess();
    v17 = v1[3];
    v18 = *(v2 + 96);
    v37[2] = *(v2 + 80);
    v37[3] = v18;
    v19 = type metadata accessor for RequestManager.Request();
    v37[4] = v1;
    v37[5] = v19;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v41 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v23 = -1 << *(v17 + 32);
      v21 = ~v23;
      v20 = v17 + 64;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v17 + 64);
      v41 = v17;
    }

    v26 = 0;
    v37[1] = v21;
    v27 = (v21 + 64) >> 6;
    v38 = v3;
    v28 = (v4 + 8);
    v29 = v41;
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v30 = v26;
      v31 = v22;
      v32 = v26;
      if (!v22)
      {
        break;
      }

LABEL_13:
      v33 = (v31 - 1) & v31;
      v34 = *(*(v29 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));

      if (!v34)
      {
LABEL_19:
        outlined consume of [A : RequestManager<A, B>.Request].Iterator._Variant<A, B>();
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.removeAll(keepingCapacity:)(0);
        return swift_endAccess();
      }

      while (1)
      {
        v35 = v38;
        v36 = *(v38 - 8);
        (*(v36 + 16))(v7, v40, v38);
        (*(v36 + 56))(v7, 0, 1, v35);
        RequestManager.Request.reply(with:)(v7);

        result = (*v28)(v7, v39);
        v26 = v32;
        v22 = v33;
        v29 = v41;
        if ((v41 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaDictionary.Iterator.next()())
        {
          swift_unknownObjectRelease();
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          v32 = v26;
          v33 = v22;
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v27)
      {
        goto LABEL_19;
      }

      v31 = *(v20 + 8 * v32);
      ++v30;
      if (v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RequestManager.Request.reply(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 96);
  v8 = type metadata accessor for RequestManager.Request.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v27[-v14];
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v2 + *(v4 + 120));
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = *(*v2 + 112);
    swift_beginAccess();
    (*(v9 + 16))(v15, v2 + v24, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v15;
      v26 = *(v15 + 1);
      v25(a1);

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v9 + 40))(v2 + v24, v13, v8);
      return swift_endAccess();
    }

    else
    {
      return (*(v9 + 8))(v15, v8);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RequestManager.withRequest(id:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x2822009F8](RequestManager.withRequest(id:perform:), 0, 0);
}

uint64_t RequestManager.withRequest(id:perform:)()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v2[2] = v1[10];
  v2[3] = v1[11];
  v2[4] = v1[12];
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = type metadata accessor for Optional();
  *v3 = v0;
  v3[1] = RequestManager.withRequest(id:perform:);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  v10 = MEMORY[0x277D84A98];

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lF(v9, v7, partial apply for closure #1 in RequestManager.withRequest(id:perform:), v2, v8, v5, v4, v10);
}

{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t RequestManager.Request.__allocating_init(id:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  RequestManager.Request.init(id:queue:)(a1, a2);
  return v7;
}

uint64_t *RequestManager.Request.init(id:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1, *(*v2 + 80));
  v5 = *(*v2 + 112);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  type metadata accessor for RequestManager.Request.State();
  swift_storeEnumTagMultiPayload();
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t RequestManager.Request._setReplyHandler(to:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for Optional();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = v4[10];
  v11 = v4[12];
  v12 = type metadata accessor for RequestManager.Request.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + v4[15]);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    (*(v13 + 8))(v19, v12);
    goto LABEL_10;
  }

  v24 = *(*v3 + 112);
  swift_beginAccess();
  v20 = *(v13 + 16);
  v20(v19, &v24[v3], v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = v34;
      v29 = v19;
      v30 = v35;
      (*(v34 + 32))(v9, v29, v35);
      v36(v9);

      (*(v28 + 8))(v9, v30);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v13 + 40))(&v24[v3], v17, v12);
      swift_endAccess();
      return 0;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v32 = v37;
    *v17 = v36;
    *(v17 + 1) = v32;
    v31 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(&v24[v3], v17, v12);
    swift_endAccess();
    return v31;
  }

LABEL_10:
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v38 = 0xD000000000000017;
  v39 = 0x80000002751B8C50;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  MEMORY[0x277C6B720](0xD00000000000002BLL, 0x80000002751B90C0);
  v20(v17, &v24[v3], v12);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v13 + 8))(v17, v12);
  MEMORY[0x277C6B720](v40, v41);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RequestManager.Request._cancel(with:)(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for RequestManager.Request.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + *(v3 + 120));
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    (*(v8 + 8))(v14, v7);
    goto LABEL_10;
  }

  v22 = *(*v2 + 112);
  swift_beginAccess();
  v19 = *(v8 + 16);
  (v19)(v14, v2 + v22, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v14 + 1);
      (*v14)(v28);

LABEL_7:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v8 + 40))(v2 + v22, v12, v7);
      return swift_endAccess();
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = type metadata accessor for Optional();
    (*(*(v25 - 8) + 16))(v12, v28, v25);
    goto LABEL_7;
  }

LABEL_10:
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v29 = 0xD000000000000017;
  v30 = 0x80000002751B8C50;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x277C6B720](0xD00000000000001CLL, 0x80000002751B9070);
  (v19)(v12, v2 + v22, v7);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v8 + 8))(v12, v7);
  MEMORY[0x277C6B720](v31, v32);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RequestManager.Request.cancel(with:)(uint64_t a1)
{
  v3 = *v1;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[11];
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v23 - v15;
  v23 = *(v1 + v3[15]);
  (*(v13 + 16))(&v23 - v15, a1, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v3[10];
  *(v18 + 3) = v12;
  *(v18 + 4) = v3[12];
  *(v18 + 5) = v1;
  (*(v13 + 32))(&v18[v17], v16, v12);
  aBlock[4] = partial apply for closure #1 in RequestManager.Request.cancel(with:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);
  v20 = v23;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v21 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v11, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v21);
  (*(v25 + 8))(v11, v26);
}

uint64_t closure #1 in RequestManager.Request.cancel(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a2, v3);
  (*(v9 + 56))(v8, 0, 1, v3);
  RequestManager.Request._cancel(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *RequestManager.Request.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(*v0 + 80));
  v2 = *(*v0 + 112);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = type metadata accessor for RequestManager.Request.State();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t RequestManager.Request.__deallocating_deinit()
{
  RequestManager.Request.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *RequestManager.init(queue:)(void *a1)
{
  v2 = specialized RequestManager.init(queue:)(a1);

  return v2;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v8;
  v9[10] = v25;
  v9[7] = a8;
  v9[8] = v24;
  v9[5] = a6;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a5;
  v9[2] = a1;
  v12 = *v8;
  v9[11] = *v8;
  v13 = *(a8 - 8);
  v9[12] = v13;
  v14 = *(v13 + 64) + 15;
  v9[13] = swift_task_alloc();
  v15 = type metadata accessor for Result();
  v9[14] = v15;
  v16 = *(v15 - 8);
  v9[15] = v16;
  v17 = *(v16 + 64) + 15;
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();
  v18 = *(v12 + 80);
  v9[18] = v18;
  v19 = *(v18 - 8);
  v9[19] = v19;
  v20 = *(v19 + 64) + 15;
  v9[20] = swift_task_alloc();
  v21 = swift_allocObject();
  v9[21] = v21;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;

  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY0_()
{
  v1 = *(v0 + 160);
  v26 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  v12 = type metadata accessor for RequestManager.Request();
  v25 = *(v0 + 32);
  (*(v3 + 16))(v1, v9, v2);
  v13 = *(v5 + 16);
  v14 = *(v12 + 48);
  v15 = *(v12 + 52);
  v16 = swift_allocObject();
  *(v0 + 176) = v16;
  RequestManager.Request.init(id:queue:)(v1, v13);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *(v17 + 16) = v8;
  *(v17 + 24) = v7;
  *(v17 + 32) = v6;
  *(v17 + 40) = v5;
  *(v17 + 48) = v9;
  *(v17 + 56) = v16;
  *(v17 + 64) = v26;
  *(v17 + 72) = v25;
  v18 = swift_task_alloc();
  *(v0 + 192) = v18;
  v18[2] = v8;
  v18[3] = v7;
  v18[4] = v6;
  v18[5] = v5;
  v18[6] = v16;
  v19 = *(MEMORY[0x277D85A10] + 4);
  v20 = v13;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTQ1_;
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);

  return MEMORY[0x282200830](v22, &_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TATu, v17, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_TA, v18, 0, 0, v23);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY2_()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[2];
  (*(v4 + 16))(v0[16], v2, v3);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v3, v5, v6);
  (*(v4 + 8))(v2, v3);
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[13];
  if (v1)
  {
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[7];

    (*(v13 + 32))(v14, v12, v15);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TY0_()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  *(v4 + 72) = v7;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for Result();
  *v9 = v0;
  v9[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TQ1_;
  v11 = *(v0 + 16);

  return MEMORY[0x2822007B8](v11, 0, 0, 0xD000000000000025, 0x80000002751B9090, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_TA, v4, v10);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TQ1_()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = *(a2 + 16);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v9 == 1)
  {
    a6(a4);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v40 = a3;
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v38 = a4;
  v39 = a9;
  v29 = a2;
  v11 = *a1;
  type metadata accessor for Result();
  v42 = type metadata accessor for CheckedContinuation();
  v32 = *(v42 - 8);
  v33 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v42);
  v41 = &v29 - v13;
  v14 = v11[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v19 = *(v15 + 16);
  v19(&v29 - v17, a2, v14);
  v43 = v40;
  swift_beginAccess();
  v31 = v11[11];
  v30 = v11[12];
  type metadata accessor for RequestManager.Request();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  v19(v18, v29, v14);
  v20 = v32;
  (*(v32 + 16))(v41, v34, v42);
  v21 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v20 + 80) + v22 + 8) & ~*(v20 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 2) = v14;
  *(v24 + 3) = v25;
  v26 = v36;
  *(v24 + 4) = v35;
  *(v24 + 5) = v26;
  v27 = v37;
  *(v24 + 6) = v30;
  *(v24 + 7) = v27;
  *(v24 + 8) = a1;
  (*(v15 + 32))(&v24[v21], v18, v14);
  *&v24[v22] = v38;
  (*(v20 + 32))(&v24[v23], v41, v42);

  result = RequestManager.Request._setReplyHandler(to:)(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_TA, v24);
  *v39 = result & 1;
  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v26 = a1;
  v27 = a5;
  v23[1] = a3;
  v10 = *a2;
  v11 = type metadata accessor for Result();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  v23[0] = a4 + 16;
  swift_beginAccess();
  v19 = v10[10];
  v20 = v10[11];
  v21 = v10[12];
  type metadata accessor for RequestManager.Request();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();

  v28 = v19;
  v29 = v20;
  v30 = a6;
  v31 = v24;
  v32 = v21;
  v33 = v25;
  v34 = v23[0];
  v35 = v26;
  _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_qd__yqd_0_YKXEfU_TA, v24, v18);
  (*(v12 + 16))(v16, v18, v11);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  return (*(v12 + 8))(v18, v11);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_qd__yqd_0_YKXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27[0] = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v27 - v20;
  swift_beginAccess();
  v23 = *a1;
  v22 = *(a1 + 8);

  v24 = v27[5];
  v23(a2, v19);
  if (!v24)
  {
  }

  v25 = *(v12 + 32);
  v25(v21, v19, a6);
  v25(v16, v21, a6);
  (*(v12 + 16))(a9, v16, a6);
  swift_willThrowTyped(a9, a6, v27[0]);
  return (*(v12 + 8))(v16, a6);
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = type metadata accessor for DispatchQoS();
  v15 = *(v24[0] - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a2;
  aBlock[4] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_TA;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  static DispatchQoS.unspecified.getter();
  v24[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v18, v14, v21);
  _Block_release(v21);

  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24[0]);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_(uint64_t a1)
{
  v1 = *(*a1 + 88);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  (*(*(v1 - 8) + 56))(&v8 - v5, 1, 1, v1);
  RequestManager.Request._cancel(with:)(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a3;
  v38 = a2;
  v7 = *v5;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v45 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v7;
  v14 = *(v7 + 88);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v35 - v18;
  v36 = &v35 - v18;
  v20 = *(v7 + 80);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v17);
  v24 = &v35 - v23;
  v39 = v5[2];
  (*(v21 + 16))(&v35 - v23, a1, v20);
  (*(v15 + 16))(v19, v38, v14);
  v25 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v26 = (v22 + *(v15 + 80) + v25) & ~*(v15 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 2) = v20;
  *(v27 + 3) = v14;
  *(v27 + 4) = *(v28 + 96);
  *(v27 + 5) = v5;
  (*(v21 + 32))(&v27[v25], v24, v20);
  (*(v15 + 32))(&v27[v26], v36, v14);
  aBlock[4] = v42;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v43;
  v29 = _Block_copy(aBlock);
  v30 = v39;

  v31 = v41;
  static DispatchQoS.unspecified.getter();
  v49 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v33 = v44;
  v32 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v31, v33, v29);
  _Block_release(v29);

  (*(v48 + 8))(v33, v32);
  (*(v46 + 8))(v31, v47);
}

uint64_t closure #1 in RequestManager.reply(to:with:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v21 = a4;
  v7 = *a1;
  v8 = *(*a1 + 88);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  swift_beginAccess();
  v14 = a1[3];
  v15 = *(v7 + 80);
  v16 = *(v7 + 96);
  v17 = type metadata accessor for RequestManager.Request();
  MEMORY[0x277C6B6A0](&v22, a2, v14, v15, v17, v16);
  if (!v22)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v18 = *(v8 - 8);
  (*(v18 + 16))(v13, a3, v8);
  (*(v18 + 56))(v13, 0, 1, v8);
  v21(v13);

  return (*(v10 + 8))(v13, v9);
}

uint64_t RequestManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RequestManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (MEMORY[0x277C6B780](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x277C6B790](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void *specialized RequestManager.init(queue:)(void *a1)
{
  v3 = *v1;
  v1[2] = a1;
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v7 = type metadata accessor for RequestManager.Request();
  v8 = a1;
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v10 = specialized Dictionary.init(dictionaryLiteral:)(v9, v4, v7, v6);

  v1[3] = v10;
  return v1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in RequestManager.withRequest(id:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TA(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_(a1, v6, v7, v8, v9, v10, v11, v14);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t type metadata completion function for RequestManager.Request(void *a1)
{
  v2 = a1[10];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = a1[11];
    v6 = a1[12];
    result = type metadata accessor for RequestManager.Request.State();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata completion function for RequestManager.Request.State(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestManager.Request.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 16;
  if (v4 > 0x10)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_30;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((~(-1 << v8) + a2 - v6) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 < 2)
    {
LABEL_30:
      v13 = *(a1 + v5);
      if (v6 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_19:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v12) + 1;
}

void storeEnumTagSinglePayload for RequestManager.Request.State(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_TA()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_(v0[5]);
}

void _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_TA(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_TA(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  v6 = (*(*(v1[2] - 8) + 80) + 72) & ~*(*(v1[2] - 8) + 80);
  v7 = (*(*(v1[2] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Result();
  v8 = *(type metadata accessor for CheckedContinuation() - 8);
  v9 = v1[8];
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_(a1, v9, v1 + v6, v10, v11, v3, v4, v5);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = v6;
  v7[10] = a6;
  v7[7] = a3;
  v7[8] = a4;
  v7[5] = a1;
  v7[6] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = v0[9];
  v2 = v0[6];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 0, v0 + 2);
  v0[11] = v3;
  v4 = v0[7];
  v0[4] = v3;

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v7 = v0[8];
  v8 = v0[5];

  return (v10)(v8, v0 + 4);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = *(v0 + 88);
  v2._object = 0x80000002751B9420;
  v2._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v8;
  v9[12] = a8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  type metadata accessor for Result();
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_;
  v8 = *(v0 + 88);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v9, v10, &_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFAiOYaXEfU_TATu, v4, v7, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_, 0, 0);
  }

  else
  {
    v5 = *(v2 + 104);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFAiOYaXEfU_TA(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_(a1, a2, v9, v10, v6, v7, v8);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a3;
  v7[9] = a4;
  v7[6] = a1;
  v7[7] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = v0[10];
  v2 = v0[7];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 2, v0 + 2);
  v0[12] = v3;
  v4 = v0[8];
  v0[5] = v3;

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v7 = v0[9];
  v8 = v0[6];

  return (v10)(v8, v0 + 4, v0 + 5);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = v0[12];
  v2 = v0[4];
  v3._object = 0x80000002751B9420;
  v3._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v3);
  if (v2 != *(v1 + 24))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = v3;
  v4[7] = a3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKFTY0_()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  **(v0 + 32) = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v2, v1, 0, (v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = v5;
  v6[9] = a5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[5];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 6, v0 + 2);
  v5 = v0[6];
  v4 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v3;
  v12 = v6;

  v8 = v5(&v12);

  _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v8, v0 + 2);
  v9 = v0[4];

  *v9 = v3;
  v10 = v0[1];

  return v10();
}

uint64_t TestHook.ActorReference.actor.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t TestHook.ActorReference.__allocating_init<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = *(a4 + 16);
  dispatch thunk of Identifiable.id.getter();
  *(v6 + 16) = v9;
  *(v6 + 32) = v10;
  *(v6 + 48) = *v11;
  *(v6 + 58) = *&v11[10];
  *(v6 + 80) = a1;
  *(v6 + 88) = a4;
  return v6;
}

uint64_t TestHook.ActorReference.init<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  dispatch thunk of Identifiable.id.getter();
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *(v4 + 48) = *v11;
  *(v4 + 58) = *&v11[10];
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return v4;
}

uint64_t TestHook.ActorReference.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TestHook.ActorReference.init(from:)(a1);
  return v2;
}

uint64_t TestHook.ActorReference.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Decoder(a1, v23);
  XPCSystem.ActorID.init(from:)(v23, v24);
  if (v2)
  {
    swift_deallocPartialClassInstance();
    goto LABEL_6;
  }

  v22 = v5;
  v11 = v24[1];
  *(v1 + 1) = v24[0];
  *(v1 + 2) = v11;
  *(v1 + 3) = v25[0];
  *(v1 + 58) = *(v25 + 10);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = dispatch thunk of Decoder.userInfo.getter();
  static CodingUserInfoKey.actorSystemKey.getter();
  if (*(v13 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if (v15)
    {
      outlined init with copy of Any(*(v13 + 56) + 32 * v14, v23);

      (*(v7 + 8))(v10, v6);
      outlined init with take of Any(v23, v24);
      type metadata accessor for XPCSystem();
      swift_dynamicCast();
      v16 = v26;
      v17 = v22;
      v18 = *(v22 + 80);
      outlined init with copy of XPCSystem.ActorID((v3 + 2), v24);
      *&v23[0] = v16;
      v19 = *(*(v17 + 88) + 8);
      v20 = dispatch thunk of static DistributedActor.resolve(id:using:)();
      outlined destroy of XPCSystem.ActorID(v24);

      v3[10] = v20;
      v3[11] = v19;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TestHook.ActorReference.resolve()()
{
  v1 = *v0;
  v5 = *(v0 + 5);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
  v2 = *(v1 + 80);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TestHook.ActorReference.deinit()
{
  outlined destroy of XPCSystem.ActorID(v0 + 16);
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TestHook.ActorReference.__deallocating_deinit()
{
  outlined destroy of XPCSystem.ActorID(v0 + 16);
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance TestHook.ActorReference<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TestHook.ActorReference.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t XPCSystem.RawActorID.Remote.init(session:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = outlined init with take of Hashable & Sendable(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

__n128 XPCSystem.ActorID.init(rawActorID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t static TestHook.sharedActorKey(for:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  outlined copy of XPCSystem.SharedActorKey(v1, *(a1 + 48), *(a1 + 56));
  return v1;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t XPCSystem.SharedActorKey.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      _StringGuts.grow(_:)(16);

      strcpy(v7, "preset_forKey_");
      HIBYTE(v7[1]) = -18;
      MEMORY[0x277C6B720](a1, a2);
    }

    else
    {
      strcpy(v7, "dynamic_");
      BYTE1(v7[1]) = 0;
      WORD1(v7[1]) = 0;
      HIDWORD(v7[1]) = -402653184;
      v5 = String.init<A>(describing:)();
      MEMORY[0x277C6B720](v5);
    }
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    MEMORY[0x277C6B720](0x5F746573657270, 0xE700000000000000);
    _print_unlocked<A, B>(_:_:)();
  }

  return v7[0];
}

uint64_t XPCSystem.ActorID.encode(to:)(void *a1)
{
  outlined init with copy of XPCSystem.RawActorID(v1, &v21);
  if (v23)
  {
    outlined destroy of XPCSystem.RawActorID(&v21);
  }

  else
  {
    v3 = v21;
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = dispatch thunk of Encoder.userInfo.getter();
    if (one-time initialization token for sessionKey != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for CodingUserInfoKey();
    v7 = __swift_project_value_buffer(v6, static CodingUserInfoKey.sessionKey);
    if (*(v5 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v8, &v21);

      outlined init with take of Any(&v21, v20);
      outlined init with copy of Any(v20, &v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC22InboundSessionProtocol_pMd, &_s14XPCDistributed9XPCSystemC22InboundSessionProtocol_pMR);
      if ((swift_dynamicCast() & 1) != 0 && v18)
      {
        ObjectType = swift_getObjectType();
        v11 = (*(v19 + 32))(v3, *(&v3 + 1), ObjectType);
        v13 = v12;
        v15 = v14;
        v16 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
        dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        swift_unknownObjectRelease();
        outlined consume of XPCSystem.SharedActorKey(v11, v13, v15);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      }
    }

    else
    {
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.ActorID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = __swift_project_value_buffer(v7, static CodingUserInfoKey.sessionKey);
  if (!*(v6 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v10 & 1) == 0))
  {

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v9, &v17);

  outlined init with take of Any(&v17, v22);
  outlined init with copy of Any(v22, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pMd, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  if (!*(&v18 + 1))
  {
LABEL_13:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(&v17, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMd, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMR);
    goto LABEL_14;
  }

  outlined init with take of Hashable & Sendable(&v17, v21);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v12 = v22;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v13 = v17;
    v14 = v18;
    outlined init with take of Hashable & Sendable(v21, &v17);
    *&v19[8] = v13;
    v19[24] = v14;
    v15 = v18;
    *a2 = v17;
    *(a2 + 16) = v15;
    *(a2 + 32) = *v19;
    *(a2 + 41) = *&v19[9];
    *(a2 + 57) = 1;
    v12 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t XPCSystem.RawActorID.debugDescription.getter()
{
  outlined init with copy of XPCSystem.RawActorID(v0, &v15);
  if (v18)
  {
    v13[1] = v16;
    *v14 = *v17;
    v13[0] = v15;
    *&v14[9] = *&v17[9];
    v11 = 0x3A65746F6D6572;
    v12 = 0xE700000000000000;
    v9 = 0;
    v10 = 0xE000000000000000;
    v1 = *(&v16 + 1);
    v2 = *v17;
    __swift_project_boxed_opaque_existential_1(v13, *(&v16 + 1));
    (*(*(v2 + 8) + 24))(&v6, v1);
    v8 = v6;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](14906, 0xE200000000000000);
    v6 = *&v14[8];
    v7 = v14[24];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](v9, v10);

    v3 = v11;
    outlined destroy of XPCSystem.RawActorID.Remote(v13);
  }

  else
  {
    v4 = *(&v15 + 1);
    *(&v13[0] + 1) = 0xE600000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](14906, 0xE200000000000000);
    v11 = v4;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](0, 0xE000000000000000);

    return 0x3A6C61636F6CLL;
  }

  return v3;
}

Swift::Int XPCSystem.RawActorID.Local.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  MEMORY[0x277C6BCE0](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.RawActorID.Local()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  MEMORY[0x277C6BCE0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.RawActorID.Local()
{
  v1 = v0[1];
  MEMORY[0x277C6BCE0](*v0);
  return MEMORY[0x277C6BCE0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.RawActorID.Local()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  MEMORY[0x277C6BCE0](v2);
  return Hasher._finalize()();
}

uint64_t XPCSystem.RawActorID.Remote.hash(into:)()
{
  v1 = v0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v2 + 8) + 24))(&v8, v3);
  MEMORY[0x277C6BCE0](v8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (!*(v1 + 56))
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 56) == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v6);
    return String.hash(into:)();
  }

  MEMORY[0x277C6BCC0](2);
  return MEMORY[0x277C6BCE0](v4);
}

uint64_t XPCSystem.SharedActorKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      return MEMORY[0x277C6BCE0](a2);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);

  return String.hash(into:)();
}

BOOL XPCSystem.RawActorID.Remote.belongsTo(actorSystem:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);

  return v5 == a1;
}

Swift::Int XPCSystem.RawActorID.Remote.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(*(v3 + 8) + 24))(&v8, v2);
  MEMORY[0x277C6BCE0](v8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v4);
      return Hasher._finalize()();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x277C6BCC0](v6);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.RawActorID.Remote()
{
  v1 = v0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v2 + 8) + 24))(&v8, v3);
  MEMORY[0x277C6BCE0](v8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (!*(v1 + 56))
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 56) == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v6);
    return String.hash(into:)();
  }

  MEMORY[0x277C6BCC0](2);
  return MEMORY[0x277C6BCE0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.RawActorID.Remote()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(*(v3 + 8) + 24))(&v8, v2);
  MEMORY[0x277C6BCE0](v8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v4);
      return Hasher._finalize()();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x277C6BCC0](v6);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t XPCSystem.RawActorID.hash(into:)()
{
  outlined init with copy of XPCSystem.RawActorID(v0, v11);
  if ((v13 & 1) == 0)
  {
    v5 = v11[0];
    MEMORY[0x277C6BCC0](0);
    MEMORY[0x277C6BCE0](v5);
    return MEMORY[0x277C6BCE0](*(&v5 + 1));
  }

  v8 = v11[0];
  v9 = v11[1];
  *v10 = *v12;
  *&v10[9] = *&v12[9];
  MEMORY[0x277C6BCC0](1);
  v2 = *(&v9 + 1);
  v1 = *v10;
  __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
  (*(*(v1 + 8) + 24))(&v7, v2);
  MEMORY[0x277C6BCE0](v7);
  v3 = *&v10[8];
  if (v10[24])
  {
    if (v10[24] != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v3);
      return outlined destroy of XPCSystem.RawActorID.Remote(&v8);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6BCC0](v4);
  String.hash(into:)();
  return outlined destroy of XPCSystem.RawActorID.Remote(&v8);
}

Swift::Int XPCSystem.ActorID.hashValue.getter()
{
  Hasher.init(_seed:)();
  XPCSystem.RawActorID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.ActorID()
{
  Hasher.init(_seed:)();
  XPCSystem.RawActorID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t XPCSystem.SharedActorKey.init(from:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  outlined copy of XPCSystem.SharedActorKey(v2, *(a1 + 48), *(a1 + 56));
  outlined destroy of XPCSystem.RawActorID.Remote(a1);
  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.SharedActorKey.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x63696D616E7964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646574726F707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.SharedActorKey.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized XPCSystem.SharedActorKey.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.DynamicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.DynamicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.ExportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.ExportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.SharedActorKey.DynamicCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.SharedActorKey.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v32 = a3;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v33)
  {
    if (v33 == 1)
    {
      LOBYTE(v35) = 1;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v28;
      KeyedEncodingContainer.encode(_:forKey:)();
      v23 = v27;
    }

    else
    {
      LOBYTE(v35) = 2;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();
      v11 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v34;
      lazy protocol witness table accessor for type ID64 and conformance ID64();
      v22 = v31;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v23 = v30;
    }

    (*(v23 + 8))(v11, v22);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    LOBYTE(v35) = 0;
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v34;
    v36 = v32;
    lazy protocol witness table accessor for type SwiftType and conformance SwiftType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v15, v12);
    return (*(v17 + 8))(v20, v16);
  }
}

Swift::Int XPCSystem.SharedActorKey.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](a1);
      return Hasher._finalize()();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);
  String.hash(into:)();
  return Hasher._finalize()();
}

char *XPCSystem.SharedActorKey.init(from:)(uint64_t *a1)
{
  result = specialized XPCSystem.SharedActorKey.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.SharedActorKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v1);
      return Hasher._finalize()();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6BCC0](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.SharedActorKey()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      return MEMORY[0x277C6BCE0](v1);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277C6BCC0](v3);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.SharedActorKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v1);
      return Hasher._finalize()();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6BCC0](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

char *protocol witness for Decodable.init(from:) in conformance XPCSystem.SharedActorKey@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized XPCSystem.SharedActorKey.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t XPCSystem.RawActorID.Local.debugDescription.getter()
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t XPCSystem.RawActorID.Remote.debugDescription.getter()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v2 + 8) + 24))(&v6, v3);
  v8 = v6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  v4 = *(v1 + 56);
  v6 = *(v1 + 40);
  v7 = v4;
  _print_unlocked<A, B>(_:_:)();
  return v9;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.RawActorID.Local()
{
  v1 = v0[1];
  v3 = *v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double DistributedActor<>.session.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  dispatch thunk of Identifiable.id.getter();
  if (v8)
  {
    v5[0] = v6[2];
    v5[1] = v6[3];
    v6[0] = *v7;
    *(v6 + 9) = *&v7[9];
    outlined init with copy of Decoder(v5, a2);
    outlined destroy of XPCSystem.RawActorID.Remote(v5);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t static TestHook.isLocal(_:)(uint64_t a1)
{
  outlined init with copy of XPCSystem.RawActorID(a1, v3);
  v1 = v4;
  if (v4 == 1)
  {
    outlined destroy of XPCSystem.RawActorID(v3);
  }

  return v1 ^ 1u;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  if (!a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v8);
    String.hash(into:)();
    goto LABEL_7;
  }

  MEMORY[0x277C6BCC0](2);
  MEMORY[0x277C6BCE0](a1);
LABEL_7:
  v9 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  MEMORY[0x277C6BCE0](a2);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 16);
      if (v16)
      {
        if (v16 != 1)
        {
          if (a3 == 2 && v14 == a1)
          {
            return v7;
          }

          goto LABEL_4;
        }

        if (a3 != 1)
        {
          goto LABEL_4;
        }
      }

      else if (a3)
      {
        goto LABEL_4;
      }

      v17 = v14 == a1 && v15 == a2;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized static XPCSystem.RawActorID.Remote.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 24))(&v18, v5);
  v6 = v18;
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 24))(&v17, v8);
  if (v6 != v17)
  {
LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      if (v9 != v11 || v10 != v12)
      {
        goto LABEL_20;
      }

LABEL_19:
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_9;
  }

  if (*(a1 + 56) == 1)
  {
    if (v13 == 1)
    {
      if (v9 != v11 || v10 != v12)
      {
LABEL_20:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return v14 & 1;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v14 = v13 == 2 && v9 == v11;
  return v14 & 1;
}

uint64_t specialized static XPCSystem.RawActorID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of XPCSystem.RawActorID(a1, v9);
  outlined init with copy of XPCSystem.RawActorID(a2, v10);
  if ((v9[57] & 1) == 0)
  {
    outlined init with copy of XPCSystem.RawActorID(v9, v8);
    if ((v12 & 1) == 0)
    {
      v3 = v8[0] == *&v10[0] && v8[1] == *(&v10[0] + 1);
      goto LABEL_11;
    }

LABEL_13:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v9, &_s14XPCDistributed9XPCSystemC10RawActorIDO_AEtMd, &_s14XPCDistributed9XPCSystemC10RawActorIDO_AEtMR);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of XPCSystem.RawActorID(v9, v8);
  if (v12 != 1)
  {
    outlined destroy of XPCSystem.RawActorID.Remote(v8);
    goto LABEL_13;
  }

  v6[0] = v10[0];
  v6[1] = v10[1];
  v7[0] = *v11;
  *(v7 + 9) = *&v11[9];
  v3 = specialized static XPCSystem.RawActorID.Remote.== infix(_:_:)(v8, v6);
  outlined destroy of XPCSystem.RawActorID.Remote(v6);
  outlined destroy of XPCSystem.RawActorID.Remote(v8);
LABEL_11:
  outlined destroy of XPCSystem.RawActorID(v9);
  return v3 & 1;
}

uint64_t specialized static XPCSystem.SharedActorKey.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return a6 == 2 && a1 == a4;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

uint64_t specialized XPCSystem.SharedActorKey.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646574726F707865 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002751B9640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *specialized XPCSystem.SharedActorKey.init(from:)(uint64_t *a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v50 = *(v48 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v44 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();
  v18 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v7;
    v45 = 0;
    v46 = v12;
    v20 = v51;
    v53 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = *(v21 + 16);
    v23 = v11;
    if (!v22 || ((v24 = *(v21 + 32), v22 == 1) ? (v25 = v24 == 3) : (v25 = 1), v25))
    {
      v10 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = &type metadata for XPCSystem.SharedActorKey;
      v29 = v53;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v10 - 1) + 104))(v27, *MEMORY[0x277D84160], v10);
      swift_willThrow();
      (*(v46 + 8))(v29, v23);
    }

    else if (*(v21 + 32))
    {
      if (v24 == 1)
      {
        LOBYTE(v54) = 1;
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();
        v31 = v6;
        v32 = v23;
        v33 = v53;
        v34 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v10 = v34;
        v35 = v46;
        if (v34)
        {
          (*(v46 + 8))(v33, v32);
        }

        else
        {
          v42 = KeyedDecodingContainer.decode(_:forKey:)();
          v45 = 0;
          v10 = v42;
          (*(v49 + 8))(v31, v20);
          (*(v35 + 8))(v33, v32);
        }
      }

      else
      {
        LOBYTE(v54) = 2;
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();
        v39 = v53;
        v40 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v46;
        if (!v40)
        {
          lazy protocol witness table accessor for type ID64 and conformance ID64();
          v43 = v48;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(0, v43);
          (*(v41 + 8))(v53, v23);
          swift_unknownObjectRelease();
          v10 = v54;
          goto LABEL_10;
        }

        v10 = (v46 + 8);
        (*(v46 + 8))(v39, v23);
      }
    }

    else
    {
      LOBYTE(v54) = 0;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();
      v36 = v10;
      v10 = v23;
      v37 = v53;
      v38 = v45;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v38)
      {
        lazy protocol witness table accessor for type SwiftType and conformance SwiftType();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v47 + 8))(v36, v19);
        (*(v46 + 8))(v37, v10);
        swift_unknownObjectRelease();
        v10 = v54;
        goto LABEL_10;
      }

      (*(v46 + 8))(v37, v10);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return v10;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.ActorID and conformance XPCSystem.ActorID()
{
  result = lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.ActorID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.ActorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for XPCSystem.RawActorID(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID.Local(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID.Local(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID.Remote(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID.Remote(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.SharedActorKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.SharedActorKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void ID64.init()()
{
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    swift_once();
  }

  v0 = static ID64.default;
  do
  {
    if (v0 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v1 = v0;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v1, v0 + 1, memory_order_relaxed, memory_order_relaxed);
    v2 = v1 == v0;
    v0 = v1;
  }

  while (!v2);
}

unint64_t ID64.Generator.next()()
{
  v1 = *v0;
  while (1)
  {
    result = v1 + 1;
    if (v1 == -1)
    {
      break;
    }

    v3 = v1;
    atomic_compare_exchange_strong_explicit(v0, &v3, result, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCDictionary.subscript.setter()
{
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return XPCDictionary.subscript.setter();
}

{
  return MEMORY[0x282200160]();
}

uint64_t XPCDictionary.subscript.getter()
{
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  XPCDictionary.subscript.getter();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  return MEMORY[0x282200130]();
}

{
  return MEMORY[0x282200158]();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ID64.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ID64.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ID64.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ID64.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

Swift::Int ID64.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  return Hasher._finalize()();
}

uint64_t ID64.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ID64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v11;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ID64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ID64()
{
  v2 = *v0;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return String.init<A>(_:radix:uppercase:)();
}

uint64_t key path getter for XPCDictionary.subscript(_:) : XPCDictionary@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  result = XPCDictionary.subscript.getter();
  v6 = v7;
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  return result;
}

uint64_t key path setter for XPCDictionary.subscript(_:) : XPCDictionary(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  *(a1 + 8);
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();

  return XPCDictionary.subscript.setter();
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  XPCDictionary.subscript.getter();
  v9 = v8[2];
  v10 = *(v8 + 24);
  if (v10)
  {
    v9 = 0;
  }

  *v8 = v9;
  *(v8 + 8) = v10;
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v2 = 0;
  }

  v5 = v1[5];
  v4 = v1[6];
  v6 = v1[4];
  v1[2] = v2;
  *(v1 + 24) = v3;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();

  XPCDictionary.subscript.setter();

  free(v1);
}

uint64_t XPCSystem.Transport.XPCRawTransport.__allocating_init(session:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t XPCSystem.Transport.XPCRawTransport.init(session:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF(uint64_t a1, void *a2)
{
  v5 = v3;
  v6 = v2;
  v8 = *(v2 + 16);
  *(v2 + 16) = a1;

  v9 = *(v2 + 24);
  v10 = *(a1 + 56);

  dispatch thunk of XPCSession.setTargetQueue(_:)();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v6;
  dispatch thunk of XPCSession.setIncomingMessageHandler(_:)();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v6;
  dispatch thunk of XPCSession.setCancellationHandler(_:)();

  swift_unownedRelease();
  dispatch thunk of XPCSession.activate()();
  if (v5)
  {
    _StringGuts.grow(_:)(41);
    MEMORY[0x277C6B720](0xD000000000000026, 0x80000002751B9660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](41, 0xE100000000000000);
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_willThrowTypedImpl();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF3XPC13XPCDictionaryVSgANYbcfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  XPCSystem.Transport.Packet.init(rawValue:)(v10, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of XPCSystem.Transport.Packet?(v14);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  outlined init with take of XPCSystem.Transport.Packet(v14, v19);
  swift_unownedRetainStrong();
  v20 = *(a2 + 16);

  if (v20)
  {
    XPCSystem.Transport.handleReceivedPacket(_:)(v19);

    outlined destroy of XPCSystem.Transport.Packet(v19);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKFy3XPC07XPCRichH0VYbcfU0_(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v3 = *(a2 + 16);

  if (v3)
  {
    XPCSystem.Transport.handleCancellation()();

    swift_unownedRetainStrong();
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C4send6packetyAE6PacketV_tAE03RawC5ErrorOYKF(uint64_t *a1)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 24);
  v14 = type metadata accessor for XPCSystem.Transport.Packet(0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1 + *(v14 + 20), v7);
  (*(v9 + 32))(v12, v7, v8);
  v15 = *a1;
  v16 = *(a1 + 8);
  XPCSystem.Transport.Packet.Header.write(to:)();
  dispatch thunk of XPCSession.send(message:)();
  (*(v9 + 8))(v12, v8);
  if (v2)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    MEMORY[0x277C6B720](0x6973736553435058, 0xEC000000203A6E6FLL);
    v18[3] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v13 = v18[0];
    lazy protocol witness table accessor for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError();
    swift_willThrowTypedImpl();
  }

  return v13;
}

uint64_t XPCSystem.Transport.XPCRawTransport.auditToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = XPCSession.auditToken.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = audit_token_t.isValid.getter();
  if (result)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  if (result)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (result)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  if (result)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = (result & 1) == 0;
  return result;
}

uint64_t XPCSystem.Transport.XPCRawTransport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t XPCSystem.Transport.XPCRawTransport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0CAE03RawC8ProtocolAaeHP8activate7linkingyAE_tAC10SetupErrorVYKFTW(uint64_t a1, void *a2)
{
  v5 = *v2;
  _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF(a1, v7);
  if (v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }
}

uint64_t protocol witness for XPCSystem.Transport.RawTransportProtocol.auditToken.getter in conformance XPCSystem.Transport.XPCRawTransport@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);
  v4 = XPCSession.auditToken.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = audit_token_t.isValid.getter();
  if (result)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  if (result)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (result)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  if (result)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = (result & 1) == 0;
  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of XPCSystem.Transport.Packet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for generalLog(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sessionLog.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Ack.CodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Ack.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Ack.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Ack.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Ack(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t XPCSystem.TransportReceiver.peerHandlingTasks.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t XPCSystem.TransportReceiver.peerHandlingTasks.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t XPCSystem.TransportReceiver.__allocating_init(actorSystem:peerHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = 0;
  v7 = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 64) = v7;
  return result;
}

uint64_t XPCSystem.TransportReceiver.init(actorSystem:peerHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 56) = 0;
  *(v3 + 64) = v4;
  return v3;
}

uint64_t XPCSystem.TransportReceiver.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v5);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKF(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-1] - v7;
  v9 = *(v3 + 24);

  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v10 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v9, a1, 6, v24);
  if (v2)
  {
    v20 = v24[0];
    v21 = v24[1];
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_allocError();
    *v22 = v20;
    v22[1] = v21;
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v11 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v3;
    v13[5] = v11;
    swift_retain_n();

    v14 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tt2g5(0, 0, v8, &_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TATu, v13);
    swift_beginAccess();
    v15 = *(v3 + 64);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 64) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      *(v3 + 64) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v15[v18 + 4] = v14;
    *(v3 + 64) = v15;
    swift_endAccess();
    _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v14, v24);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY0_()
{
  v1 = v0[5];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v0[3] = v0[6];

  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TQ1_;

  return (v7)(v0 + 2, v0 + 3);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TQ1_()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY2_, 0, 0);
}