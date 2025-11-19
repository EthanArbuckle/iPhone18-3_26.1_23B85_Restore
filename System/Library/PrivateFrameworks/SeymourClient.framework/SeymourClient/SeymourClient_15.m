void sub_1B4F44454(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x80000001B4F85970;
  v6._object = 0x80000001B4F85A70;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(a1 + 32);
  os_unfair_lock_lock(*(v8 + 16));
  if (*(a1 + 48))
  {
    *(a1 + 48) = 0;
    v9 = *(a1 + 16);
    TransportDispatchService.unregisterAll()();
    v10 = *(a1 + 24);
    [v10 setInterruptionHandler_];
    [v10 setInvalidationHandler_];
    [v10 invalidate];
  }

  os_unfair_lock_unlock(*(v8 + 16));
  os_unfair_lock_unlock(*(v7 + 16));
  os_unfair_lock_lock(*(v7 + 16));
  sub_1B4F446F4(a1, v2);
  v11 = *(v7 + 16);

  os_unfair_lock_unlock(v11);
}

void sub_1B4F445D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._countAndFlagsBits = 0xD00000000000001DLL;
    v6._object = 0x80000001B4F85970;
    v7._object = 0x80000001B4F85A30;
    v7._countAndFlagsBits = 0xD000000000000016;
    Logger.trace(file:function:)(v6, v7);
    v8 = *&v4[OBJC_IVAR____TtC13SeymourClient9XPCServer_lock];
    os_unfair_lock_lock(*(v8 + 16));
    sub_1B4F446F4(a2, v4);
    os_unfair_lock_unlock(*(v8 + 16));
  }
}

uint64_t sub_1B4F446F4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x80000001B4F85970;
  v6._object = 0x80000001B4F85A50;
  v6._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(a1 + 24);
  v39 = [v7 processIdentifier];
  v8 = *(a1 + 64);
  v42 = *(a1 + 56);
  v9 = *(a1 + 80);
  v40 = *(a1 + 72);
  v10 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();
  v41 = v9;

  v43 = v8;

  sub_1B4E91BEC(a1);
  swift_endAccess();

  v11 = *(a1 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(a1 + 48) == 2)
  {
    *(a1 + 48) = 1;
    [v7 suspend];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = *(a2 + v10);
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *(a2 + v10);
    }

    v14 = *(a2 + v10);

    v15 = sub_1B4F688F4();
  }

  else
  {
    v15 = *(v12 + 16);
  }

  swift_retain_n();
  v16 = sub_1B4F67C34();
  v17 = sub_1B4F685E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v18 = 136447234;
    v19 = [v7 serviceName];
    v37 = v15;
    if (v19)
    {
      v20 = v19;
      sub_1B4F67F74();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7690, qword_1B4F6C9F0);
    v23 = sub_1B4F687C4();
    v25 = v24;

    v26 = sub_1B4DC4F88(v23, v25, &v49);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v37;
    *(v18 + 22) = 2082;
    v27 = sub_1B4F687C4();
    v29 = sub_1B4DC4F88(v27, v28, &v49);

    *(v18 + 24) = v29;
    *(v18 + 32) = 1024;
    LODWORD(v26) = [v7 processIdentifier];

    *(v18 + 34) = v26;

    *(v18 + 38) = 2082;
    v22 = v40;
    v21 = v41;
    v44 = v40;
    v45 = v41;
    v30 = sub_1B4F687C4();
    v32 = sub_1B4DC4F88(v30, v31, &v49);

    *(v18 + 40) = v32;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "Removed XPC Client (%{public}s) connection [%ld total] from %{public}s [%d/%{public}s]", v18, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v38, -1, -1);
    MEMORY[0x1B8C831D0](v18, -1, -1);
  }

  else
  {

    v22 = v40;
    v21 = v41;
  }

  if (*(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub))
  {
    v33 = *(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub + 8);
    v34 = *(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub);
    ObjectType = swift_getObjectType();
    LODWORD(v44) = v39;
    v45 = v42;
    v46 = v43;
    v47 = v22;
    v48 = v21;
    (*(v33 + 8))(&v44, &type metadata for XPCServerClientDisconnected, &protocol witness table for XPCServerClientDisconnected, ObjectType, v33);
  }

  else
  {
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
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCServer.sendRequest(_:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

{
  return MEMORY[0x1EEE6DFA0](sub_1B4F45DE8, 0, 0);
}

uint64_t XPCServer.sendRequest<A>(_:payload:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

{
  return MEMORY[0x1EEE6DFA0](sub_1B4F45DE8, 0, 0);
}

void XPCServer.sendRequest<A>(_:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  sub_1B4F67614();
}

void XPCServer.sendRequest<A, B>(_:payload:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  sub_1B4F67614();
}

uint64_t sub_1B4F452B4()
{
  v1 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

void XPCServer.broadcastEvent<A>(_:payload:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(v5 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();
  v10 = *(v5 + v9);
  v11 = *(v8 + 16);

  os_unfair_lock_unlock(v11);
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_1B4F688E4();
    type metadata accessor for XPCClient();
    sub_1B4DD54E4(&qword_1EB8F7608, type metadata accessor for XPCClient);
    sub_1B4F68544();
    v10 = v28[4];
    v12 = v28[5];
    v13 = v28[6];
    v14 = v28[7];
    v15 = v28[8];
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
  }

  v19 = (v13 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
LABEL_18:
      sub_1B4E632A0();
      return;
    }

    while (1)
    {
      LOBYTE(v28[0]) = v7;
      XPCClient.broadcastEvent<A>(_:payload:)(v28, a2, a3, a4, a5);

      v14 = v22;
      v15 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B4F68914())
      {
        type metadata accessor for XPCClient();
        swift_dynamicCast();
        v22 = v14;
        v23 = v15;
        if (v28[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_18;
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B4F45BE8()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t SessionActivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionActivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionActivated()
{
  result = qword_1EDB70CB8;
  if (!qword_1EDB70CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnalyticsEventDomain.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F45FD8()
{
  result = qword_1EB8F76A0;
  if (!qword_1EB8F76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F76A0);
  }

  return result;
}

uint64_t sub_1B4F460A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a4;
  v70 = a2;
  v10 = sub_1B4F649A4();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v58 - v16;
  v67 = sub_1B4F64964();
  v71 = *(v67 - 8);
  v17 = v71[8];
  MEMORY[0x1EEE9AC00](v67, v18);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v68 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v61 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v58 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v58 - v37;
  v39 = *(a6 + 24);
  v40 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = a1;
  v39(a3, AssociatedTypeWitness, a6);
  v42 = a3;
  v43 = a6;
  v39(v42, AssociatedTypeWitness, a6);
  v69 = v34;
  v44 = v34;
  v45 = v67;
  sub_1B4F4657C(v44, v30);
  v46 = v71[6];
  if (v46(v30, 1, v45) == 1)
  {
    v47 = v30;
  }

  else
  {
    v59 = v71[4];
    v59(v68, v30, v45);
    v47 = v61;
    sub_1B4F4657C(v38, v61);
    if (v46(v47, 1, v45) != 1)
    {
      v54 = v60;
      v59(v60, v47, v45);
      v55 = v68;
      v51 = sub_1B4F64904();
      v56 = v71[1];
      v56(v54, v45);
      v56(v55, v45);
      goto LABEL_7;
    }

    (v71[1])(v68, v45);
  }

  sub_1B4E5ECFC(v47);
  v48 = *(v43 + 8);
  v49 = v62;
  v48(AssociatedTypeWitness, v43);
  v50 = v63;
  v48(AssociatedTypeWitness, v43);
  v51 = MEMORY[0x1B8C7E230](v49, v50);
  v52 = v66;
  v53 = *(v65 + 8);
  v53(v50, v66);
  v53(v49, v52);
LABEL_7:
  sub_1B4E5ECFC(v69);
  sub_1B4E5ECFC(v38);
  return v51 & 1;
}

uint64_t sub_1B4F4657C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F465EC()
{
  v1 = v0;
  v2 = sub_1B4F66EE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F66ED4();
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._countAndFlagsBits = 0xD00000000000002DLL;
  v9._object = 0x80000001B4F85A90;
  v10._object = 0x80000001B4F85AC0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v9, v10);
  v11 = *(v0 + 16);
  v12 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v18 = 116;
  v14 = *(v12 + 32);
  v15 = sub_1B4F66354();
  v14(&v18, v7, v2, v15, MEMORY[0x1E69CCC18], MEMORY[0x1E69CCC20], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v12);
  return (*(v3 + 8))(v7, v2);
}

void *ServiceSubscriptionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F47168(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F4691C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4F46974();
  }

  return result;
}

uint64_t sub_1B4F46974()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v25, v11);
  v13 = &v24 - v12;
  sub_1B4F465EC();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B4F47330;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B4F47338;
  *(v16 + 24) = v15;
  (*(v1 + 16))(v5, v8, v0);
  v17 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v18 = swift_allocObject();
  (*(v1 + 32))(v18 + v17, v5, v0);
  v19 = (v18 + ((v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_1B4F47354;
  v19[1] = v16;
  sub_1B4F675F4();
  (*(v1 + 8))(v8, v0);
  v20 = v25;
  v21 = sub_1B4F67654();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_1B4DDE050, v22);

  return (*(v9 + 8))(v13, v20);
}

uint64_t sub_1B4F46CA8@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + 40);
    v5 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, &type metadata for ServiceSubscriptionUpdated, &protocol witness table for ServiceSubscriptionUpdated, ObjectType, v5);
    result = swift_unknownObjectRelease();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t ServiceSubscriptionClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ServiceSubscriptionClient.fetchServiceSubscription(with:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x80000001B4F85A90;
  v6._object = 0x80000001B4F85AC0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 116;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66EE4();
  v12 = sub_1B4F66354();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CCC18], MEMORY[0x1E69CCC20], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v8);
}

uint64_t sub_1B4F46EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F66354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_1B4F675F4();
}

void sub_1B4F47024(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1B4DDC730(v6, 0);
}

void *sub_1B4F470B8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  if (v5)
  {
    v3 = sub_1B4F65094();
    sub_1B4F4749C();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69CB1E0], v3);
    return swift_willThrow();
  }

  return result;
}

void *sub_1B4F47168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = 12;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v9, sub_1B4F474F4, v7, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F47258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC87C8(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4F4735C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4E1DFD8(a1, a2, v2 + v6, v8, v9);
}

void sub_1B4F47418(void (*a1)(void **), uint64_t a2)
{
  v5 = *(sub_1B4F66354() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B4F47024(a1, a2, v6, v7, v8);
}

unint64_t sub_1B4F4749C()
{
  result = qword_1EB8F76A8;
  if (!qword_1EB8F76A8)
  {
    sub_1B4F65094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F76A8);
  }

  return result;
}

id AchievementProgressEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AchievementProgressEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementProgressEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL SessionOrigin.isLocal.getter()
{
  v1 = type metadata accessor for SessionOrigin();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_1B4F678C4();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  else
  {
    sub_1B4F47944(v5);
  }

  return EnumCaseMultiPayload != 1;
}

uint64_t type metadata accessor for SessionOrigin()
{
  result = qword_1EDB6F0E0;
  if (!qword_1EDB6F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F478E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionOrigin();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F47944(uint64_t a1)
{
  v2 = type metadata accessor for SessionOrigin();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SessionOrigin.token.getter()
{
  v1 = v0;
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionOrigin();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v1, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  (*(v3 + 32))(v7, v12, v2);
  v13 = sub_1B4F676B4();
  v15 = v14;
  type metadata accessor for SessionToken();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  v16[4] = v17;
  (*(v3 + 8))(v7, v2);
  return v16;
}

uint64_t SessionOrigin.sessionIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionOrigin();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v12, v2);
    v13 = sub_1B4F676B4();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = *v12;
    v13 = *(*v12 + 16);
    v15 = *(v14 + 24);
  }

  return v13;
}

uint64_t SessionOrigin.hash(into:)()
{
  v1 = v0;
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionOrigin();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4F478E0(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x1B8C82740](1);
    sub_1B4F482F0(&qword_1EB8F7720, MEMORY[0x1E69CD270]);
    sub_1B4F67F24();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = *v12;
    MEMORY[0x1B8C82740](0);
    v15 = v14[4];
    os_unfair_lock_lock((v15 + 20));
    if (*(v15 + 16))
    {
      v16 = 0x6576697463616E69;
    }

    else
    {
      v16 = 0x657669746361;
    }

    if (*(v15 + 16))
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    os_unfair_lock_unlock((v15 + 20));
    v18 = v14[3];
    v20 = v14[2];
    v21 = v18;

    MEMORY[0x1B8C818C0](v16, v17);

    v19 = MEMORY[0x1B8C81930](v20, v21);

    MEMORY[0x1B8C82740](v19);
  }
}

uint64_t SessionOrigin.hashValue.getter()
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F47F74()
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F47FB8()
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient13SessionOriginO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionOrigin();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v30 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7730, &qword_1B4F7D088);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v30 - v22;
  v25 = *(v24 + 56);
  sub_1B4F478E0(a1, &v30 - v22);
  sub_1B4F478E0(a2, &v23[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4F478E0(v23, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v9, &v23[v25], v4);
      v26 = MEMORY[0x1B8C81120](v14, v9);
      v27 = *(v5 + 8);
      v27(v9, v4);
      v27(v14, v4);
LABEL_9:
      sub_1B4F47944(v23);
      return v26 & 1;
    }

    (*(v5 + 8))(v14, v4);
  }

  else
  {
    sub_1B4F478E0(v23, v18);
    v28 = *v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = _s13SeymourClient12SessionTokenC2eeoiySbAC_ACtFZ_0(v28, *&v23[v25]);

      goto LABEL_9;
    }
  }

  sub_1B4F48430(v23);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1B4F482F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B4F48338()
{
  sub_1B4F483E4(319, &qword_1EDB6F210, type metadata accessor for SessionToken);
  if (v0 <= 0x3F)
  {
    sub_1B4F483E4(319, &qword_1EDB713F0, MEMORY[0x1E69CD270]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B4F483E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B4F48430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7730, &qword_1B4F7D088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Error.errorCodeString.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7738, &qword_1B4F7D0A0);
  if (swift_dynamicCast())
  {
    sub_1B4DC933C(v14, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 8))(v8, v9);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      *&v14[0] = sub_1B4F68DE4();
      v12 = sub_1B4F68D04();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1B4F48870(v14);
    v16[0] = sub_1B4F68DE4();
    return sub_1B4F68D04();
  }
}

uint64_t sub_1B4F48870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7740, &qword_1B4F7D0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Error.errorDomainString.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7738, &qword_1B4F7D0A0);
  if (swift_dynamicCast())
  {
    sub_1B4DC933C(v14, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 16))(v8, v9);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = sub_1B4F68DF4();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1B4F48870(v14);
    return sub_1B4F68DF4();
  }
}

uint64_t UserBodyMassMetricUpdated.userBodyMassMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66084();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserBodyMassMetricUpdated.init(userBodyMassMetric:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UserBodyMassMetricUpdated()
{
  result = qword_1EB8F7748;
  if (!qword_1EB8F7748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F48BE4()
{
  result = sub_1B4F66084();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t OpenLinkAction.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6974656B72616DLL;
  v2 = 0x65735569746C756DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x726F777472617473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4F48CE0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E6974656B72616DLL;
  v4 = *a1;
  v5 = 0x65735569746C756DLL;
  v6 = 0xE900000000000072;
  if (v4 == 2)
  {
    v7 = 0xE900000000000072;
  }

  else
  {
    v5 = 0xD000000000000014;
    v7 = 0x80000001B4F7F990;
  }

  v8 = 0x726F777472617473;
  v9 = 0xEC00000074756F6BLL;
  if (!*a1)
  {
    v8 = 0x6E6974656B72616DLL;
    v9 = 0xE900000000000067;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x65735569746C756DLL;
  if (*a2 != 2)
  {
    v12 = 0xD000000000000014;
    v6 = 0x80000001B4F7F990;
  }

  if (*a2)
  {
    v3 = 0x726F777472617473;
    v2 = 0xEC00000074756F6BLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4F68D54();
  }

  return v15 & 1;
}

uint64_t sub_1B4F48E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13SeymourClient14OpenLinkActionO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1B4F48E58(unint64_t *a1@<X8>)
{
  v2 = 0x6E6974656B72616DLL;
  v3 = 0xE900000000000072;
  v4 = 0x65735569746C756DLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B4F7F990;
  }

  v5 = 0xEC00000074756F6BLL;
  if (*v1)
  {
    v2 = 0x726F777472617473;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1B4F48F98()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F4906C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4F4912C()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient14OpenLinkActionO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1B4F68C34();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B4F4924C()
{
  result = qword_1EB8F7758;
  if (!qword_1EB8F7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7758);
  }

  return result;
}

unint64_t sub_1B4F492B0()
{
  result = qword_1EB8F7760;
  if (!qword_1EB8F7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7760);
  }

  return result;
}

uint64_t PlaybackIntentUpdated.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65894();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackIntentUpdated.init(playbackIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for PlaybackIntentUpdated()
{
  result = qword_1EB8F7768;
  if (!qword_1EB8F7768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F4945C()
{
  result = sub_1B4F65894();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AssetClientProtocol.fetchImageData(remoteURL:priority:pixelWidth:pixelHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B4F679D4();
  v15 = v14;
  v16 = sub_1B4F679E4();
  v19 = 1;
  (*(a7 + 248))(a1, a2, a3, a4, a5, v13, v15, v16, v17, 1, v19, a6, a7);
}

void *AssetClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F504C8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F499B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 40);
    v17 = *(result + 48);
    ObjectType = swift_getObjectType();
    v19 = a4(0);
    (*(*(v19 - 8) + 16))(v14, a1, v19);
    (*(v17 + 8))(v14, v10, a5, ObjectType, v17);
    sub_1B4F51630(v14, a6);
  }

  return result;
}

uint64_t AssetClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AssetClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AssetClient.deleteAllAssets()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86100;
  v4._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 15;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AssetClient.insertDemoAssetBundle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F66534();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4F67C54();
  __swift_project_value_buffer(v12, qword_1EDB714B8);
  (*(v7 + 16))(v11, a1, v6);
  v13 = sub_1B4F67C34();
  v14 = sub_1B4F685E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v30 = v17;
    *v16 = 136446210;
    sub_1B4F51130(&qword_1EB8F7778, MEMORY[0x1E69CC410]);
    v19 = sub_1B4F68D04();
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_1B4DC4F88(v19, v21, &v30);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1B4DC2000, v13, v14, "insertDemoAssetBundle request: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B8C831D0](v18, -1, -1);
    v23 = v16;
    a1 = v29;
    MEMORY[0x1B8C831D0](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v31 = 41;
  return (*(v25 + 16))(&v31, a1, v6, MEMORY[0x1E69CC400], MEMORY[0x1E69CC408], ObjectType, v25);
}

uint64_t sub_1B4F49F74(const char *a1, __int16 a2)
{
  v5 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7 = sub_1B4F67C34();
  v8 = sub_1B4F685E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B4DC2000, v7, v8, a1, v9, 2u);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = a2;
  return (*(v11 + 8))(&v14, ObjectType, v11);
}

uint64_t AssetClient.pauseAssetBundleOnCurrentDevice(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x80000001B4F86120;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 21;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t AssetClient.pauseAssetBundleOnActivePairedDevice(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x80000001B4F86160;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 22;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t sub_1B4F4A2FC(uint64_t a1, unint64_t a2, const char *a3, __int16 a4)
{
  v7 = v4;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4F67C54();
  __swift_project_value_buffer(v10, qword_1EDB714B8);

  v11 = sub_1B4F67C34();
  v12 = sub_1B4F685E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B4DC4F88(a1, a2, v19);
    _os_log_impl(&dword_1B4DC2000, v11, v12, a3, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B8C831D0](v14, -1, -1);
    MEMORY[0x1B8C831D0](v13, -1, -1);
  }

  v15 = *(v7 + 16);
  v16 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v20 = a4;
  v19[0] = a1;
  v19[1] = a2;
  return (*(v16 + 16))(&v20, v19, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v16);
}

uint64_t AssetClient.cancelAssetRequest(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F861A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 14;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t AssetClient.failAssetEntry(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F64824();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4F67C54();
  __swift_project_value_buffer(v12, qword_1EDB714B8);
  (*(v7 + 16))(v11, a1, v6);
  v13 = sub_1B4F67C34();
  v14 = sub_1B4F685E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v30 = v17;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    v19 = sub_1B4F647E4();
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_1B4DC4F88(v19, v21, &v30);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1B4DC2000, v13, v14, "Client - failAssetEntry for %{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B8C831D0](v18, -1, -1);
    v23 = v16;
    a1 = v29;
    MEMORY[0x1B8C831D0](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v31 = 16;
  return (*(v25 + 16))(&v31, a1, v6, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v25);
}

uint64_t AssetClient.loadIncompleteAssetBundles()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861C0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 20;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AssetClient.prefetchAssetBundles()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861E0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 23;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AssetClient.queryCompletedAssetBundlesOnCurrentDevice()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F86200;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 29;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryCompletedAssetBundleCountOnCurrentDevice()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v4._object = 0x80000001B4F86230;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 42;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t AssetClient.queryCompletedAssetBundlesOnActivePairedDevice()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD000000000000030;
  v4._object = 0x80000001B4F86260;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 30;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryAssetBundles(workoutIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001B4F862A0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 32;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F506EC();
  v16 = sub_1B4F50770();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t AssetClient.queryAllAssetEntries()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862D0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 25;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
  v10 = sub_1B4F50824();
  v11 = sub_1B4F508A8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryAllAssetRequests()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862F0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 27;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
  v10 = sub_1B4F5095C();
  v11 = sub_1B4F509E0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryAllAssetResumableLoads()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86310;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 28;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
  v10 = sub_1B4F50A94();
  v11 = sub_1B4F50B18();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryAllAssetBundles()()
{
  v1 = v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86330;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 24;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t AssetClient.queryAllAssetLoadFailures()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 26;
  v4 = *(v2 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
  v6 = sub_1B4F50BCC();
  v7 = sub_1B4F50C50();
  return v4(&v9, v5, v6, v7, ObjectType, v2);
}

uint64_t AssetClient.queryLocalURL(remoteURL:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F860E0;
  v6._object = 0x80000001B4F86350;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 31;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64824();
  return v10(&v13, a1, v11, v11, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v8);
}

uint64_t AssetClient.queryPreferredStreamingURL(workout:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F86370;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 40;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65804();
  v12 = sub_1B4F64824();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CB410], MEMORY[0x1E69CB418], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v8);
}

uint64_t AssetClient.evaluateStandardImageURLs(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F863A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 34;
  v17[0] = a1;
  v17[1] = a2;
  v12 = *(v10 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v14 = sub_1B4F50D04();
  v15 = sub_1B4F50D88();
  return v12(&v18, v17, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v14, v15, ObjectType, v10);
}

uint64_t AssetClient.evaluateStandardImageMatches(for:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F863C0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 33;
  v9 = *(v7 + 32);
  v10 = sub_1B4F67384();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
  v12 = sub_1B4E2F2A0(&qword_1EB8F7830, &qword_1EB8F7828, &qword_1B4F7D2E0);
  v13 = sub_1B4F50E3C();
  return v9(&v16, a1, v10, v11, MEMORY[0x1E69CCFE0], MEMORY[0x1E69CCFE8], v12, v13, ObjectType, v7);
}

uint64_t AssetClient.filterAssetBundlesOnCurrentDevice(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001B4F863F0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 43;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65E44();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v13 = sub_1B4F506EC();
  v14 = sub_1B4F50770();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB958], MEMORY[0x1E69CB960], v13, v14, ObjectType, v8);
}

uint64_t AssetClient.queryStandardImageBestMatches(for:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F86420;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 35;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67494();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v13 = sub_1B4F50D04();
  v14 = sub_1B4F50D88();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v13, v14, ObjectType, v8);
}

uint64_t AssetClient.fetchLocalURL(type:remoteURL:priority:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v58 = a6;
  v49 = a5;
  v51 = a4;
  v52 = a3;
  v48 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v59, v9);
  v54 = v10;
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = &v47 - v13;
  v14 = sub_1B4F64824();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F65CB4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B4F64F14();
  v53 = *(v25 - 8);
  v26 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v30 = sub_1B4F67C54();
  __swift_project_value_buffer(v30, qword_1EDB714B8);
  v31._object = 0x80000001B4F860E0;
  v32._countAndFlagsBits = 0xD000000000000038;
  v32._object = 0x80000001B4F86450;
  v31._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v31, v32);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  sub_1B4F50EF0(a1, v24);
  (*(v15 + 16))(v19, v48, v14);
  v56 = v14;
  if ((v49 & 1) != 0 && !v51)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  sub_1B4F64F04();
  v33 = v57;
  v34 = *(v57 + 16);
  v35 = *(v57 + 24);
  ObjectType = swift_getObjectType();
  v60 = 17;
  v37 = *(v35 + 32);
  v38 = sub_1B4F651C4();
  v39 = v50;
  v37(&v60, v29, v25, v38, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v35);
  v40 = v55;
  v41 = v59;
  (*(v7 + 16))(v55, v39, v59);
  v42 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v43 = (v54 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v7 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  *v45 = sub_1B4F50F54;
  v45[1] = v33;

  sub_1B4F675F4();
  (*(v7 + 8))(v39, v41);
  return (*(v53 + 8))(v29, v25);
}

uint64_t sub_1B4F4C158(uint64_t a1)
{
  v2 = sub_1B4F651C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1B4F64824();
  return sub_1B4F67604();
}

uint64_t AssetClient.fetchImageData(remoteURL:priority:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v40 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v50, v7);
  v45 = v8;
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v40 - v11;
  v12 = sub_1B4F64824();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F65CB4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v21 = sub_1B4F64F14();
  v44 = *(v21 - 8);
  v22 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v17, v40, v12);
  if ((v41 & 1) != 0 && !v42)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  sub_1B4F64F04();
  v26 = v48;
  v27 = *(v48 + 16);
  v28 = *(v48 + 24);
  ObjectType = swift_getObjectType();
  v51 = 17;
  v30 = *(v28 + 32);
  v31 = sub_1B4F651C4();
  v32 = v47;
  v30(&v51, v25, v21, v31, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v28);
  v33 = v46;
  v34 = v50;
  (*(v5 + 16))(v46, v32, v50);
  v35 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v36 = (v45 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v5 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  *v38 = sub_1B4F50F84;
  v38[1] = v26;

  sub_1B4F675F4();
  (*(v5 + 8))(v32, v34);
  return (*(v44 + 8))(v25, v21);
}

uint64_t sub_1B4F4C6E8(uint64_t a1)
{
  v2 = sub_1B4F651C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1B4F67604();
}

uint64_t AssetClient.fetchImageData(remoteURL:priority:pixelWidth:pixelHeight:cropCode:fileType:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v134 = a3;
  v135 = a8;
  v141 = a6;
  v139 = a4;
  v140 = a5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v125 = *(v126 - 8);
  v18 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126, v19);
  v120 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v123 = &v109 - v23;
  v114 = sub_1B4F65CB4();
  v24 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114, v25);
  v115 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1B4F64F14();
  v119 = *(v121 - 8);
  v27 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121, v28);
  v117 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v127 = *(v128 - 8);
  v30 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128, v31);
  v124 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v133 = &v109 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v40 = &v109 - v39;
  v142 = sub_1B4F64824();
  v138 = *(v142 - 8);
  v41 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v142, v42);
  v116 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v113 = &v109 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v112 = &v109 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v136 = &v109 - v51;
  v129 = a1;
  v147 = a1;
  v148 = a2;
  sub_1B4DCAC7C();
  v52 = sub_1B4F68874();
  if (!v53)
  {
    goto LABEL_4;
  }

  v111 = a2;
  v131 = a9;
  v132 = v13;
  v130 = a10;
  v147 = v52;
  v148 = v53;
  v145 = 8222587;
  v146 = 0xE300000000000000;
  LODWORD(v143) = v139;
  v143 = sub_1B4F68D04();
  v144 = v54;
  v55 = sub_1B4F68864();
  v137 = a7;
  v57 = v56;

  v147 = v55;
  v148 = v57;
  v145 = 8218747;
  v146 = 0xE300000000000000;
  LODWORD(v143) = v140;
  v143 = sub_1B4F68D04();
  v144 = v58;
  v59 = sub_1B4F68864();
  v61 = v60;

  v147 = v59;
  v148 = v61;
  v145 = 8217467;
  v146 = 0xE300000000000000;
  v143 = v141;
  v144 = v137;
  v62 = sub_1B4F68864();
  v64 = v63;

  v147 = v62;
  v148 = v64;
  v145 = 8218235;
  v146 = 0xE300000000000000;
  v143 = v135;
  v144 = v130;
  sub_1B4F68864();

  sub_1B4F64814();

  v65 = v138;
  v66 = v142;
  if ((*(v138 + 48))(v40, 1, v142))
  {
    sub_1B4E97050(v40);
LABEL_4:
    v67 = sub_1B4F64A54();
    sub_1B4F51130(&qword_1EB8F7840, MEMORY[0x1E69CAF10]);
    v68 = swift_allocError();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69CAF00], v67);
    *(swift_allocObject() + 16) = v68;
    return sub_1B4F67604();
  }

  v135 = a11;
  v71 = *(v65 + 32);
  v72 = v112;
  v71(v112, v40, v66);
  v73 = v136;
  v112 = (v65 + 32);
  v110 = v71;
  v71(v136, v72, v66);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  swift_storeEnumTagMultiPayload();
  v74 = *(v65 + 16);
  v114 = v65 + 16;
  v109 = v74;
  v74(v113, v73, v66);
  LODWORD(v130) = a12;
  if ((a12 & 1) != 0 && !v135)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  v75 = v117;
  sub_1B4F64F04();
  v76 = *(v132 + 16);
  v77 = *(v132 + 24);
  ObjectType = swift_getObjectType();
  LOWORD(v147) = 17;
  v79 = *(v77 + 32);
  v80 = sub_1B4F651C4();
  v81 = v123;
  v82 = v121;
  v79(&v147, v75, v121, v80, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v77);
  v83 = v125;
  v84 = v120;
  v85 = v126;
  (*(v125 + 16))(v120, v81, v126);
  v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v87 = (v118 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (*(v83 + 32))(v88 + v86, v84, v85);
  v89 = (v88 + v87);
  v90 = v132;
  *v89 = sub_1B4F51698;
  v89[1] = v90;

  v91 = v133;
  sub_1B4F675F4();
  (*(v83 + 8))(v81, v85);
  (*(v119 + 8))(v75, v82);
  v92 = v116;
  v93 = v142;
  v109(v116, v136, v142);
  v94 = v138;
  v95 = (*(v138 + 80) + 81) & ~*(v138 + 80);
  v96 = swift_allocObject();
  v97 = v111;
  *(v96 + 16) = v129;
  *(v96 + 24) = v97;
  v98 = v140;
  *(v96 + 32) = v139;
  *(v96 + 36) = v98;
  v99 = v137;
  *(v96 + 40) = v141;
  *(v96 + 48) = v99;
  v101 = v134;
  v100 = v135;
  *(v96 + 56) = v132;
  *(v96 + 64) = v101;
  *(v96 + 72) = v100;
  *(v96 + 80) = v130 & 1;
  v110(v96 + v95, v92, v93);
  v102 = v127;
  v103 = v124;
  v104 = v128;
  (*(v127 + 16))(v124, v91, v128);
  v105 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v106 = (v122 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  (*(v102 + 32))(v107 + v105, v103, v104);
  v108 = (v107 + v106);
  *v108 = sub_1B4F50FB4;
  v108[1] = v96;

  sub_1B4F675F4();
  (*(v102 + 8))(v133, v104);
  return (*(v94 + 8))(v136, v142);
}

uint64_t sub_1B4F4D41C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v92 = a6;
  v93 = a7;
  v90 = a4;
  v91 = a5;
  v89 = a3;
  v88 = a2;
  v16 = sub_1B4F64824();
  v98 = *(v16 - 8);
  v99 = v16;
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v94 = v19;
  v96 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F8, &qword_1B4F6CDA8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v97 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v80 - v27;
  v29 = sub_1B4F67494();
  v100 = *(v29 - 8);
  v30 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v102 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v33 = sub_1B4F68DF4();
  v35 = v34;
  v36 = *MEMORY[0x1E696A978];
  if (v33 == sub_1B4F67F74() && v35 == v37)
  {
  }

  else
  {
    v39 = sub_1B4F68D54();

    if ((v39 & 1) == 0)
    {
      *(swift_allocObject() + 16) = a1;
      v40 = a1;
      return sub_1B4F67604();
    }
  }

  v85 = v21;
  v83 = a13;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v101 = v29;
  v86 = v20;
  v87 = a9;
  v84 = a12;
  v82 = a11;
  v81 = a10;
  v42 = sub_1B4F67C54();
  __swift_project_value_buffer(v42, qword_1EDB714B8);
  v43 = a1;
  v44 = a1;
  v45 = sub_1B4F67C34();
  v46 = sub_1B4F685C4();

  v47 = os_log_type_enabled(v45, v46);
  v80 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v105 = v49;
    *v48 = 136446210;
    swift_getErrorValue();
    v50 = MEMORY[0x1B8C826C0](v103, v104);
    v52 = a8;
    v53 = sub_1B4DC4F88(v50, v51, &v105);

    *(v48 + 4) = v53;
    a8 = v52;
    _os_log_impl(&dword_1B4DC2000, v45, v46, "Fallback - querying completed closest match due to error: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1B8C831D0](v49, -1, -1);
    MEMORY[0x1B8C831D0](v48, -1, -1);
  }

  v54 = v102;
  sub_1B4F67484();
  v55._object = 0x80000001B4F860E0;
  v56._countAndFlagsBits = 0xD000000000000023;
  v56._object = 0x80000001B4F86420;
  v55._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v55, v56);
  v57 = a8;
  v58 = *(a8 + 16);
  v59 = *(a8 + 24);
  ObjectType = swift_getObjectType();
  LOWORD(v105) = 35;
  v61 = *(v59 + 32);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v63 = sub_1B4F50D04();
  v64 = sub_1B4F50D88();
  v61(&v105, v54, v101, v62, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v63, v64, ObjectType, v59);
  v66 = v98;
  v65 = v99;
  v67 = v96;
  (*(v98 + 16))(v96, v83, v99);
  v68 = (*(v66 + 80) + 49) & ~*(v66 + 80);
  v69 = swift_allocObject();
  v70 = v80;
  *(v69 + 16) = v80;
  *(v69 + 24) = v57;
  v71 = v82;
  *(v69 + 32) = v81;
  *(v69 + 40) = v71;
  *(v69 + 48) = v84 & 1;
  (*(v66 + 32))(v69 + v68, v67, v65);
  v72 = v85;
  v73 = v97;
  v74 = v86;
  (*(v85 + 16))(v97, v28, v86);
  v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v76 = (v95 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  (*(v72 + 32))(v77 + v75, v73, v74);
  v78 = (v77 + v76);
  *v78 = sub_1B4F511C8;
  v78[1] = v69;
  v79 = v70;

  sub_1B4F675F4();
  (*(v72 + 8))(v28, v74);
  return (*(v100 + 8))(v102, v101);
}

uint64_t sub_1B4F4DB40@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, void *a8@<X8>)
{
  v120 = a7;
  v102 = a6;
  v103 = a5;
  v106 = a2;
  v107 = a4;
  v114 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v115 = *(v10 - 8);
  v116 = v10;
  v11 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v112 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v109 = &v95 - v16;
  v17 = sub_1B4F65CB4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v122 = sub_1B4F64F14();
  v111 = *(v122 - 8);
  v20 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v122, v21);
  v121 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v118 = *(v23 - 8);
  v119 = v23;
  v24 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v117 = &v95 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v35 = &v95 - v34;
  v36 = sub_1B4F64824();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v105 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v104 = &v95 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v95 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v95 - v48;
  v50 = *a1;
  v52 = v51;
  sub_1B4E24544(v50, v35);
  if ((*(v52 + 48))(v35, 1, v36) == 1)
  {
    sub_1B4E97050(v35);
    if (qword_1EDB714B0 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB714B8);
    v54 = sub_1B4F67C34();
    v55 = sub_1B4F685C4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1B4DC2000, v54, v55, "Fallback - no close match found", v56, 2u);
      MEMORY[0x1B8C831D0](v56, -1, -1);
    }

    v57 = swift_allocObject();
    v58 = v106;
    *(v57 + 16) = v106;
    v59 = v58;
    return sub_1B4F67604();
  }

  else
  {
    v106 = a8;
    v61 = *(v52 + 32);
    v99 = v52 + 32;
    v98 = v61;
    v61(v49, v35, v36);
    sub_1B4F648B4();
    sub_1B4F67FA4();
    swift_storeEnumTagMultiPayload();
    v100 = v52;
    v62 = *(v52 + 16);
    v97 = v52 + 16;
    v96 = v62;
    v62(v45, v49, v36);
    v101 = v27;
    v108 = v49;
    if ((v102 & 1) != 0 && !v103)
    {
      sub_1B4F684D4();
    }

    else
    {
      sub_1B4F684C4();
    }

    v63 = v121;
    sub_1B4F64F04();
    v64 = v114;
    v65 = *(v114 + 16);
    v66 = *(v114 + 24);
    ObjectType = swift_getObjectType();
    v123[0] = 17;
    v68 = *(v66 + 32);
    v69 = sub_1B4F651C4();
    v70 = v109;
    v68(v123, v63, v122, v69, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v66);
    v72 = v115;
    v71 = v116;
    v73 = v112;
    (*(v115 + 16))(v112, v70, v116);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = (v110 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    (*(v72 + 32))(v76 + v74, v73, v71);
    v77 = (v76 + v75);
    *v77 = sub_1B4F51698;
    v77[1] = v64;

    v78 = v117;
    sub_1B4F675F4();
    (*(v72 + 8))(v70, v71);
    (*(v111 + 8))(v121, v122);
    v79 = v104;
    v80 = v96;
    v96(v104, v120, v36);
    v81 = v105;
    v80(v105, v108, v36);
    v82 = v100;
    v83 = *(v100 + 80);
    v84 = (v83 + 16) & ~v83;
    v85 = (v37 + v83 + v84) & ~v83;
    v86 = swift_allocObject();
    v87 = v98;
    v98(v86 + v84, v79, v36);
    v87(v86 + v85, v81, v36);
    v89 = v118;
    v88 = v119;
    v90 = v101;
    (*(v118 + 16))(v101, v78, v119);
    v91 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v92 = (v113 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    (*(v89 + 32))(v93 + v91, v90, v88);
    v94 = (v93 + v92);
    *v94 = sub_1B4F5127C;
    v94[1] = v86;
    sub_1B4F675F4();
    (*(v89 + 8))(v78, v88);
    return (*(v82 + 8))(v108, v36);
  }
}

void sub_1B4F4E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64824();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  if ((*(a1 + 16) & 1) == 0)
  {
    if (qword_1EDB714B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4F67C54();
    __swift_project_value_buffer(v16, qword_1EDB714B8);
    v17 = v7[2];
    v17(v15, a2, v6);
    v17(v11, a3, v6);
    v18 = sub_1B4F67C34();
    v19 = sub_1B4F685E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 141558786;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2080;
      v21 = sub_1B4F647E4();
      v23 = v22;
      v24 = v7[1];
      v24(v15, v6);
      v25 = sub_1B4DC4F88(v21, v23, &v33);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2160;
      *(v20 + 24) = 1752392040;
      *(v20 + 32) = 2080;
      v26 = sub_1B4F647E4();
      v28 = v27;
      v24(v11, v6);
      v29 = sub_1B4DC4F88(v26, v28, &v33);

      *(v20 + 34) = v29;
      _os_log_impl(&dword_1B4DC2000, v18, v19, "Fallback - close match for %{mask.hash}s found: %{mask.hash}s", v20, 0x2Au);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v30, -1, -1);
      MEMORY[0x1B8C831D0](v20, -1, -1);
    }

    else
    {

      v31 = v7[1];
      v31(v11, v6);
      v31(v15, v6);
    }
  }
}

uint64_t sub_1B4F4E77C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1B4F64824();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F651B4();
  v9 = sub_1B4F64834();
  if (v1)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v12 = v9;
  v13 = v10;
  result = (*(v4 + 8))(v8, v3);
  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t AssetClient.fetchPersistableKeys(for:workoutIdentifier:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v30 = a3;
  v31 = a2;
  v28 = a1;
  v27 = sub_1B4F64824();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4F64964();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v29 = sub_1B4F66704();
  v32 = *(v29 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F67FA4();

  sub_1B4F67FA4();
  sub_1B4F64954();
  (*(v4 + 16))(v8, v28, v27);
  sub_1B4F666F4();
  v16 = *(v33 + 16);
  v17 = *(v33 + 24);
  ObjectType = swift_getObjectType();
  v35 = 18;
  v19 = *(v17 + 32);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7848, &qword_1B4F7D2E8);
  v21 = sub_1B4E2F2A0(&qword_1EB8F7850, &qword_1EB8F7848, &qword_1B4F7D2E8);
  v22 = sub_1B4F5107C();
  v25 = ObjectType;
  v23 = v29;
  v19(&v35, v15, v29, v20, MEMORY[0x1E69CC630], MEMORY[0x1E69CC638], v21, v22, v25, v17);
  return (*(v32 + 8))(v15, v23);
}

uint64_t sub_1B4F4EB70()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86100;
  v4._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 15;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F4ECA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x80000001B4F86120;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = 21;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t sub_1B4F4EDC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x80000001B4F86160;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = 22;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t sub_1B4F4EEDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F861A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = 14;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t sub_1B4F4F060()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861C0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 20;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F4F14C()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861E0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 23;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F4F284()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F86200;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 29;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4F3B4()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v4._object = 0x80000001B4F86230;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 42;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t sub_1B4F4F4B8()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD000000000000030;
  v4._object = 0x80000001B4F86260;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 30;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4F5E8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001B4F862A0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 32;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F506EC();
  v16 = sub_1B4F50770();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t sub_1B4F4F75C()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862D0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 25;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
  v10 = sub_1B4F50824();
  v11 = sub_1B4F508A8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4F890()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862F0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 27;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
  v10 = sub_1B4F5095C();
  v11 = sub_1B4F509E0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4F9C0()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86310;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 28;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
  v10 = sub_1B4F50A94();
  v11 = sub_1B4F50B18();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4FAF0()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86330;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 24;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v10 = sub_1B4F506EC();
  v11 = sub_1B4F50770();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F4FC48(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001B4F863F0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 43;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65E44();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v13 = sub_1B4F506EC();
  v14 = sub_1B4F50770();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB958], MEMORY[0x1E69CB960], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F4FDA4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F86420;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 35;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67494();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v13 = sub_1B4F50D04();
  v14 = sub_1B4F50D88();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F4FF00(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F863A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v18 = 34;
  v17[0] = a1;
  v17[1] = a2;
  v12 = *(v10 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v14 = sub_1B4F50D04();
  v15 = sub_1B4F50D88();
  return v12(&v18, v17, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v14, v15, ObjectType, v10);
}

uint64_t sub_1B4F50050(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F863C0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 33;
  v9 = *(v7 + 32);
  v10 = sub_1B4F67384();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
  v12 = sub_1B4E2F2A0(&qword_1EB8F7830, &qword_1EB8F7828, &qword_1B4F7D2E0);
  v13 = sub_1B4F50E3C();
  return v9(&v16, a1, v10, v11, MEMORY[0x1E69CCFE0], MEMORY[0x1E69CCFE8], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F501CC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F86370;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 40;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65804();
  v12 = sub_1B4F64824();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CB410], MEMORY[0x1E69CB418], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v8);
}

uint64_t sub_1B4F5030C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F860E0;
  v6._object = 0x80000001B4F86350;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 31;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64824();
  return v10(&v13, a1, v11, v11, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v8);
}

void *sub_1B4F504C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 2;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66124();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F51690, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CBE78], MEMORY[0x1E69CBE80]);

  v13 = a1;
  v12 = 3;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F64B34();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F51694, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CB000], MEMORY[0x1E69CB008]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F5066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5498(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F506EC()
{
  result = qword_1EDB6DB58;
  if (!qword_1EDB6DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB58);
  }

  return result;
}

unint64_t sub_1B4F50770()
{
  result = qword_1EDB6DB50;
  if (!qword_1EDB6DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
    sub_1B4F51130(&qword_1EDB700F0, MEMORY[0x1E69CB020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB50);
  }

  return result;
}

unint64_t sub_1B4F50824()
{
  result = qword_1EB8F7790;
  if (!qword_1EB8F7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7790);
  }

  return result;
}

unint64_t sub_1B4F508A8()
{
  result = qword_1EB8F7798;
  if (!qword_1EB8F7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
    sub_1B4F51130(&qword_1EB8F77A0, MEMORY[0x1E69CAEF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7798);
  }

  return result;
}

unint64_t sub_1B4F5095C()
{
  result = qword_1EB8F77B0;
  if (!qword_1EB8F77B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77B0);
  }

  return result;
}

unint64_t sub_1B4F509E0()
{
  result = qword_1EB8F77B8;
  if (!qword_1EB8F77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
    sub_1B4F51130(&qword_1EB8F77C0, MEMORY[0x1E69CB128]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77B8);
  }

  return result;
}

unint64_t sub_1B4F50A94()
{
  result = qword_1EB8F77D0;
  if (!qword_1EB8F77D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77D0);
  }

  return result;
}

unint64_t sub_1B4F50B18()
{
  result = qword_1EB8F77D8;
  if (!qword_1EB8F77D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
    sub_1B4F51130(&qword_1EB8F77E0, MEMORY[0x1E69CBC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77D8);
  }

  return result;
}

unint64_t sub_1B4F50BCC()
{
  result = qword_1EB8F77F0;
  if (!qword_1EB8F77F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77F0);
  }

  return result;
}

unint64_t sub_1B4F50C50()
{
  result = qword_1EB8F77F8;
  if (!qword_1EB8F77F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
    sub_1B4F51130(&qword_1EB8F7800, MEMORY[0x1E69CB700]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77F8);
  }

  return result;
}

unint64_t sub_1B4F50D04()
{
  result = qword_1EB8F7810;
  if (!qword_1EB8F7810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7810);
  }

  return result;
}

unint64_t sub_1B4F50D88()
{
  result = qword_1EB8F7818;
  if (!qword_1EB8F7818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
    sub_1B4F51130(&qword_1EB8F7820, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7818);
  }

  return result;
}

unint64_t sub_1B4F50E3C()
{
  result = qword_1EB8F7838;
  if (!qword_1EB8F7838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
    sub_1B4F51130(&qword_1EB8F7820, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7838);
  }

  return result;
}

uint64_t sub_1B4F50EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65CB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4F5107C()
{
  result = qword_1EB8F7858;
  if (!qword_1EB8F7858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7848, &qword_1B4F7D2E8);
    sub_1B4F51130(&qword_1EB8F7860, MEMORY[0x1E69CB288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7858);
  }

  return result;
}

uint64_t sub_1B4F51130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4F511C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1B4F64824() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = (v2 + ((*(v5 + 80) + 49) & ~*(v5 + 80)));

  return sub_1B4F4DB40(a1, v6, v7, v8, v9, v10, v11, a2);
}

void sub_1B4F5127C(uint64_t a1)
{
  v3 = *(sub_1B4F64824() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_1B4F4E468(a1, v1 + v5, v6);
}

uint64_t sub_1B4F51340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_46Tm()
{
  v1 = sub_1B4F651C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4F514FC()
{
  v1 = *(sub_1B4F651C4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B4F651B4();
}

uint64_t sub_1B4F51630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RestrictionError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F5172C()
{
  result = qword_1EB8F7868;
  if (!qword_1EB8F7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void ActivityTracing.endTrace<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v7 = sub_1B4F68F14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v17 - v12);
  (*(v8 + 16))(&v17 - v12, a1, v7, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = *(a4 + 8);
    v16 = *v13;
    v15(v14, a2, a4);
  }

  else
  {
    (*(a4 + 8))(0, a2, a4);
    (*(v8 + 8))(v13, v7);
  }
}

uint64_t ActivityTracer.Trace.init(completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ActivityTracer.Trace.endTrace(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1B4F51A8C()
{
  v0 = sub_1B4F67C54();
  __swift_allocate_value_buffer(v0, qword_1EDB70E18);
  __swift_project_value_buffer(v0, qword_1EDB70E18);
  return sub_1B4F67C44();
}

uint64_t sub_1B4F51B3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4F51B84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B4F51BD0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  os_unfair_lock_lock((v10 + 44));
  if ((*(v10 + 40) & 1) == 0)
  {
    v11 = *(v10 + 16);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    *(v10 + 16) = v11;
    *(v10 + 24) = state;
    *(v10 + 40) = 1;
  }

  os_unfair_lock_unlock((v10 + 44));
  v12 = *(a4 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v12 + 24));
  sub_1B4DDE6FC((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  if (qword_1EDB70E10 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4F67C54();
  __swift_project_value_buffer(v13, qword_1EDB70E18);

  v14 = sub_1B4F67C34();
  v15 = sub_1B4F685E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = swift_slowAlloc();
    state.opaque[0] = v18;
    *v16 = 136446466;
    *(v16 + 4) = sub_1B4DC4F88(a5, a6, &state);
    *(v16 + 12) = 2082;
    v19 = sub_1B4F689D4();
    v21 = sub_1B4DC4F88(v19, v20, &state);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1B4DC2000, v14, v15, "[%{public}s] %{public}s begin", v16, 0x16u);
    swift_arrayDestroy();
    v22 = v18;
    a1 = v17;
    MEMORY[0x1B8C831D0](v22, -1, -1);
    MEMORY[0x1B8C831D0](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F04();
  v23 = state.opaque[0];
  v24 = state.opaque[1];
  v27 = state.opaque[0];
  v28 = state.opaque[1];
  a1(&v27);
  sub_1B4DDC730(v23, v24);
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t StorefrontLanguageUpdated.languageCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RemoteDisplayConnection.applyingTimestampOffset(_:)()
{
  sub_1B4F668F4();

  return sub_1B4F66904();
}

uint64_t sub_1B4F51F34()
{
  sub_1B4F668F4();

  return sub_1B4F66904();
}

uint64_t FetchedGatedResource.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FetchedGatedResource.init(logger:)(a1);
  return v5;
}

char *FetchedGatedResource.init(logger:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B4F67C54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 16);
  v12(&v2[qword_1EDB73008], a1, v5, v9);
  v17[0] = 0;
  v17[1] = 0;
  v13 = *(v4 + 80);
  v14 = type metadata accessor for FetchedGatedResource.State();
  *&v2[qword_1EDB73010] = sub_1B4E41C7C(v17, v14);
  type metadata accessor for GatedResource();
  (v12)(v11, a1, v5);
  v15 = GatedResource.__allocating_init(logger:)(v11);
  (*(v6 + 8))(a1, v5);
  *&v2[qword_1EDB73018] = v15;
  return v2;
}

uint64_t FetchedGatedResource.deinit()
{
  FetchedGatedResource.deactivate()();
  v1 = qword_1EDB73008;
  v2 = sub_1B4F67C54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EDB73010);

  v4 = *(v0 + qword_1EDB73018);

  return v0;
}

Swift::Void __swiftcall FetchedGatedResource.deactivate()()
{
  v1 = *(v0 + qword_1EDB73010);
  v2 = *(*v0 + 80);
  type metadata accessor for FetchedGatedResource.State();
  sub_1B4E40088(sub_1B4F52F6C, v0, v1);
}

uint64_t FetchedGatedResource.__deallocating_deinit()
{
  FetchedGatedResource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1B4F522B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + qword_1EDB73010);
  v5[3] = a1;
  v4 = *(v2 + 80);
  type metadata accessor for FetchedGatedResource.State();
  sub_1B4E40088(sub_1B4F532A4, v5, v3);
}

uint64_t sub_1B4F52340(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_1B4F68324();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v2;

  sub_1B4E4E620(0, 0, v9, &unk_1B4F7D5E0, v11);
}

uint64_t sub_1B4F52464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v9 = sub_1B4F68F14();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = *(v8 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[8] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v6[9] = v16;
  *v16 = v6;
  v16[1] = sub_1B4F52650;

  return v18(v14);
}

uint64_t sub_1B4F52650()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B4F52860;
  }

  else
  {
    v3 = sub_1B4F52764;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F52764()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  (*(v2 + 16))(v3, v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1B4F522B4(v3);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);
  v8 = v0[8];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4F52860()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1B4F522B4(v2);

  (*(v3 + 8))(v2, v4);
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

void FetchedGatedResource.activate(fetching:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_1EDB73010);
  v4 = *v2;
  v6[3] = a1;
  v6[4] = a2;
  v5 = *(v4 + 80);
  type metadata accessor for FetchedGatedResource.State();
  sub_1B4E40088(sub_1B4F52F88, v6, v3);
}

uint64_t sub_1B4F529C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (*result)
  {
    if (*result != 2)
    {
      return result;
    }

    v8 = *(a2 + qword_1EDB73018);
    GatedResource.reset()();
  }

  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x80000001B4F864D0;
  v10._object = 0x80000001B4F86500;
  v10._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v9, v10);
  *v7 = a3;
  v7[1] = a4;
  v11 = *(a2 + qword_1EDB73018);

  result = GatedResource.queueCount.getter();
  if ((v12 & 1) == 0 && result >= 1)
  {

    *v7 = xmmword_1B4F7D500;
    return sub_1B4F52340(a3, a4);
  }

  return result;
}

unint64_t sub_1B4F52AB8(unint64_t *a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v5 = sub_1B4F68F14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v18 - v9);
  result = *a1;
  if (*a1 >= 2)
  {
    if (*a1 == 2)
    {
      return result;
    }

    v12 = a1[1];
    sub_1B4F531C8(result);
  }

  v13._countAndFlagsBits = 0x6176697463616564;
  v13._object = 0xEC00000029286574;
  v14._object = 0x80000001B4F864D0;
  v14._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v14, v13);
  *a1 = xmmword_1B4F7D510;
  v15 = *(a2 + qword_1EDB73018);
  sub_1B4E4219C();
  v16 = swift_allocError();
  *v17 = 1;
  *v10 = v16;
  swift_storeEnumTagMultiPayload();
  GatedResource.release(with:)();
  return (*(v6 + 8))(v10, v5);
}

uint64_t FetchedGatedResource.fetch()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F52CEC, 0, 0);
}

uint64_t sub_1B4F52CEC()
{
  v1 = v0[3];
  v2 = *(v1 + qword_1EDB73010);
  v3 = *(v0[4] + 80);
  type metadata accessor for FetchedGatedResource.State();
  sub_1B4E40088(sub_1B4F52FA8, v1, v2);
  v4 = *(v1 + qword_1EDB73018);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B4F2A758;
  v6 = v0[2];

  return GatedResource.fetch()(v6);
}

unint64_t *sub_1B4F52DE8(unint64_t *result)
{
  v1 = *result;
  if (*result >= 3)
  {
    v2 = result[1];
    *result = xmmword_1B4F7D500;
    sub_1B4F52340(v1, v2);
    return sub_1B4F531C8(v1);
  }

  return result;
}

uint64_t sub_1B4F52E70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return FetchedGatedResource.fetch()(a1);
}

uint64_t sub_1B4F52FC4()
{
  result = sub_1B4F67C54();
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

uint64_t sub_1B4F530A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13SeymourClient20FetchedGatedResourceC5StateOyx_G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B4F530FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4F53158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B4F531A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1B4F531C8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1B4F531DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4DE13F0;

  return sub_1B4F52464(a1, v4, v5, v6, v7, v8);
}

void sub_1B4F532A4(_OWORD *a1)
{
  if (*a1 == 1)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    *a1 = xmmword_1B4F7D510;
    v4 = *(v3 + qword_1EDB73018);
    GatedResource.release(with:)();
  }
}

SeymourClient::AssetDevice_optional __swiftcall AssetDevice.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SeymourClient_AssetDevice_activePaired;
  }

  else
  {
    v1.value = SeymourClient_AssetDevice_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4F5332C()
{
  result = qword_1EB8F7870;
  if (!qword_1EB8F7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7870);
  }

  return result;
}

void *sub_1B4F53380@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1B4F533A4()
{
  result = qword_1EB8F7878;
  if (!qword_1EB8F7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7880, &qword_1B4F7D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7878);
  }

  return result;
}

uint64_t WatchConnectionRejection.applyingTimestampOffset(_:)()
{
  sub_1B4F66AA4();

  return sub_1B4F66AB4();
}

uint64_t sub_1B4F534C0()
{
  sub_1B4F66AA4();

  return sub_1B4F66AB4();
}

uint64_t MindfulSessionAccumulator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v6;
  return v3;
}

uint64_t MindfulSessionAccumulator.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B4DDB5C4(v0 + OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state);
  return v0;
}

void MindfulSessionAccumulator.startAccumulating(startDate:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1B4F536AC(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1B4F536AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25[-v11];
  v13 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v13, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  sub_1B4DDB5C4(v12);
  if (v16 == 1)
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B4F67C54();
    __swift_project_value_buffer(v17, qword_1EDB6DFB0);
    v18._countAndFlagsBits = 0xD00000000000002DLL;
    v18._object = 0x80000001B4F86520;
    v19._object = 0x80000001B4F865E0;
    v19._countAndFlagsBits = 0xD00000000000001DLL;
    Logger.trace(file:function:)(v18, v19);
    v20 = sub_1B4F64964();
    (*(*(v20 - 8) + 16))(v8, a2, v20);
    (*(v15 + 56))(v8, 0, 1, v14);
    swift_beginAccess();
    sub_1B4F54904(v8, a1 + v13);
    swift_endAccess();
  }

  else
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B4F67C54();
    __swift_project_value_buffer(v21, qword_1EDB6DFB0);
    v22 = sub_1B4F67C34();
    v23 = sub_1B4F685C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B4DC2000, v22, v23, "Repeat calls to start accumulating, ignoring", v24, 2u);
      MEMORY[0x1B8C831D0](v24, -1, -1);
    }
  }
}

void MindfulSessionAccumulator.stopAccumulating(endDate:heartRate:)(char *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  sub_1B4F53A44(v3, a1, a2, a3 & 1);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_1B4F53A44(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v75 = a4;
  v77 = a3;
  v72 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v71 = v63 - v9;
  v79 = sub_1B4F66894();
  v78 = *(v79 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79, v11);
  v74 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v73 = v63 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = v63 - v18;
  v19 = type metadata accessor for MindfulSessionAccumulator.State(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v76 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v63 - v25;
  v27 = sub_1B4F64964();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v63 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v63 - v39;
  v41 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v41, v26);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v68 = *(v42 - 8);
  v69 = v42;
  if ((*(v68 + 48))(v26, 1) == 1)
  {
    sub_1B4DDB5C4(v26);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v43 = sub_1B4F67C54();
    __swift_project_value_buffer(v43, qword_1EDB6DFB0);
    v44 = sub_1B4F67C34();
    v45 = sub_1B4F685C4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B4DC2000, v44, v45, "Stop accumulating called in incorrect state", v46, 2u);
      MEMORY[0x1B8C831D0](v46, -1, -1);
    }
  }

  else
  {
    v65 = v41;
    v66 = a1;
    v67 = v4;
    (*(v28 + 32))(v40, v26, v27);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v47 = sub_1B4F67C54();
    __swift_project_value_buffer(v47, qword_1EDB6DFB0);
    v48._countAndFlagsBits = 0xD00000000000002DLL;
    v48._object = 0x80000001B4F86520;
    v49._object = 0x80000001B4F865B0;
    v49._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v48, v49);
    v63[1] = sub_1B4F67FA4();
    v50 = *(v28 + 16);
    v64 = v40;
    v51 = v28;
    v52 = v27;
    v50(v36, v40, v27);
    v50(v32, v72, v27);
    v53 = sub_1B4F65BC4();
    (*(*(v53 - 8) + 56))(v71, 1, 1, v53);
    v54 = v70;
    sub_1B4F66884();
    v55 = v78;
    v56 = v74;
    v57 = v79;
    (*(v78 + 16))(v74, v54, v79);
    v58 = v66;
    swift_beginAccess();
    v59 = v73;
    sub_1B4E7CB20(v73, v56);
    v60 = *(v55 + 8);
    v60(v59, v57);
    swift_endAccess();
    v60(v54, v57);
    (*(v51 + 8))(v64, v52);
    v61 = v76;
    (*(v68 + 56))(v76, 1, 1, v69);
    v62 = v65;
    swift_beginAccess();
    sub_1B4F54904(v61, v58 + v62);
    swift_endAccess();
  }
}

uint64_t MindfulSessionAccumulator.finalize(heartRate:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B4F64964();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4F67C54();
  __swift_project_value_buffer(v12, qword_1EDB6DFB0);
  v13._countAndFlagsBits = 0xD00000000000002DLL;
  v13._object = 0x80000001B4F86520;
  v14._object = 0x80000001B4F86550;
  v14._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v13, v14);
  sub_1B4F64954();
  v15 = *(v2 + 24);
  os_unfair_lock_lock(*(v15 + 16));
  sub_1B4F5423C(v3, v11, a1, a2 & 1, &v19);
  os_unfair_lock_unlock(*(v15 + 16));
  v16 = v19;
  (*(v7 + 8))(v11, v6);
  return v16;
}

uint64_t sub_1B4F5423C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v67 = a4;
  v68 = a3;
  v63 = a2;
  v74 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v64 = v59 - v9;
  v10 = sub_1B4F66894();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = v59 - v20;
  v72 = sub_1B4F64964();
  v21 = *(v72 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v72, v23);
  v62 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v59 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v59 - v31;
  v33 = type metadata accessor for MindfulSessionAccumulator.State(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v73 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v59 - v39;
  v41 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v41, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v71 = v42;
  if (v44(v40, 1) != 1)
  {
    v60 = v21;
    v61 = v32;
    v45 = v72;
    (*(v21 + 32))(v32, v40, v72);
    v59[1] = sub_1B4F67FA4();
    v59[0] = v46;
    v47 = v21;
    v48 = v14;
    v49 = *(v47 + 16);
    v49(v28, v32, v45);
    v49(v62, v63, v45);
    v50 = sub_1B4F65BC4();
    (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
    v51 = v66;
    sub_1B4F66884();
    v53 = v69;
    v52 = v70;
    (*(v69 + 16))(v48, v51, v70);
    swift_beginAccess();
    v54 = v65;
    sub_1B4E7CB20(v65, v48);
    v55 = *(v53 + 8);
    v55(v54, v52);
    swift_endAccess();
    v55(v51, v52);
    (*(v60 + 8))(v61, v72);
  }

  v56 = v73;
  (*(v43 + 56))(v73, 1, 1, v71);
  swift_beginAccess();
  sub_1B4F54904(v56, a1 + v41);
  swift_endAccess();
  result = swift_beginAccess();
  v58 = *(a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E7CD0];
  *v74 = v58;
  return result;
}

uint64_t sub_1B4F548A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F54904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CountdownStarted.countdown.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67AF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CountdownStarted.init(countdown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CountdownStarted()
{
  result = qword_1EB8F7890;
  if (!qword_1EB8F7890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F54AC0()
{
  result = sub_1B4F67AF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *SearchClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F561E8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F54C80(uint64_t a1)
{
  v2 = type metadata accessor for RecentSearchTermsUpdated();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 40);
    v9 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v11 = sub_1B4F66BB4();
    (*(*(v11 - 8) + 16))(v6, a1, v11);
    (*(v9 + 8))(v6, v2, &protocol witness table for RecentSearchTermsUpdated, ObjectType, v9);
    swift_unknownObjectRelease();
    return sub_1B4F567D8(v6);
  }

  return result;
}

uint64_t SearchClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4F54E10()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._object = 0x80000001B4F86600;
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F86630;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 364;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78A0, &qword_1B4F7D800);
  v10 = sub_1B4F56374();
  v11 = sub_1B4F563F0();
  *v8 = v0;
  v8[1] = sub_1B4F54F9C;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t sub_1B4F54F9C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B4EEDF24;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t SearchClient.fetchSearchResults(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F550D4, 0, 0);
}

uint64_t sub_1B4F550D4()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F86600;
  v4._object = 0x80000001B4F86660;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 359;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F652F4();
  v10 = sub_1B4F658D4();
  *v8 = v0;
  v8[1] = sub_1B4E409B8;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CB370];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t SearchClient.fetchSearchSuggestions(term:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55298, 0, 0);
}

uint64_t sub_1B4F55298()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF68);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F86600;
  v6._object = 0x80000001B4F86680;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 80) = 363;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = sub_1B4F66DE4();
  *v10 = v0;
  v10[1] = sub_1B4F5544C;
  v12 = *(v0 + 32);
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69CD450];

  return TransportClient.sendRequest<A, B>(_:payload:)(v12, (v0 + 80), v0 + 16, ObjectType, v13, v11, v7, v14);
}

uint64_t sub_1B4F5544C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F55580, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SearchClient.insertRecentSearchTerm(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F555B8, 0, 0);
}

uint64_t sub_1B4F555B8()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F86600;
  v4._object = 0x80000001B4F866A0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 360;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F65DE4();
  *v8 = v0;
  v8[1] = sub_1B4EEDDF0;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CB7E8];
  v12 = MEMORY[0x1E69CB7F0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t SearchClient.deleteRecentSearchTerms(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55748, 0, 0);
}

uint64_t sub_1B4F55748()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F866C0;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 361;
  *(v0 + 16) = v2;
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78C0, &qword_1B4F7D828);
  v11 = sub_1B4F564A4();
  v12 = sub_1B4F56528();
  *v9 = v0;
  v9[1] = sub_1B4E409B8;

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 56), v0 + 16, ObjectType, v10, v6, v11, v12);
}

uint64_t SearchClient.deleteAllRecentSearchTerms(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F558FC, 0, 0);
}

uint64_t sub_1B4F558FC()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F866E0;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v5);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 365;
  *(v0 + 16) = v2;
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78E0, &qword_1B4F7D838);
  v11 = sub_1B4F56624();
  v12 = sub_1B4F566A8();
  *v9 = v0;
  v9[1] = sub_1B4EED954;

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 56), v0 + 16, ObjectType, v10, v6, v11, v12);
}

uint64_t SearchClient.queryRecentSearchTerms(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55AAC, 0, 0);
}

uint64_t sub_1B4F55AAC()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F86710;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v14 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 362;
  *(v0 + 24) = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78E0, &qword_1B4F7D838);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78C0, &qword_1B4F7D828);
  v10 = sub_1B4F56624();
  sub_1B4F566A8();
  sub_1B4F564A4();
  sub_1B4F56528();
  *v7 = v0;
  v7[1] = sub_1B4F55C84;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v8, v9, v14, v10);
}

uint64_t sub_1B4F55C84()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1B4EF25D8;
  }

  else
  {
    v3 = sub_1B4EEFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F55D98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return SearchClient.fetchSearchLandingShelfTileDescriptors()();
}

uint64_t sub_1B4F55E28(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SearchClient.fetchSearchResults(request:)(a1, a2);
}

uint64_t sub_1B4F55ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return SearchClient.fetchSearchSuggestions(term:)(a1, a2, a3);
}

uint64_t sub_1B4F55F88(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return SearchClient.insertRecentSearchTerm(_:)(a1);
}

uint64_t sub_1B4F56020(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return SearchClient.deleteRecentSearchTerms(_:)(a1);
}

uint64_t sub_1B4F560B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return SearchClient.deleteAllRecentSearchTerms(for:)(a1);
}

uint64_t sub_1B4F56150(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDED70;

  return SearchClient.queryRecentSearchTerms(for:)(a1);
}

void *sub_1B4F561E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 52;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66BB4();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v10, sub_1B4F56834, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CCAF0], MEMORY[0x1E69CCAF8]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F562F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6DC4(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F56374()
{
  result = qword_1EB8F78A8;
  if (!qword_1EB8F78A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78A0, &qword_1B4F7D800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78A8);
  }

  return result;
}

unint64_t sub_1B4F563F0()
{
  result = qword_1EB8F78B0;
  if (!qword_1EB8F78B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78A0, &qword_1B4F7D800);
    sub_1B4F565DC(&qword_1EB8F78B8, MEMORY[0x1E69CC018]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78B0);
  }

  return result;
}

unint64_t sub_1B4F564A4()
{
  result = qword_1EB8F78C8;
  if (!qword_1EB8F78C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78C0, &qword_1B4F7D828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78C8);
  }

  return result;
}

unint64_t sub_1B4F56528()
{
  result = qword_1EB8F78D0;
  if (!qword_1EB8F78D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78C0, &qword_1B4F7D828);
    sub_1B4F565DC(&qword_1EB8F78D8, MEMORY[0x1E69CB800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78D0);
  }

  return result;
}

uint64_t sub_1B4F565DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4F56624()
{
  result = qword_1EB8F78E8;
  if (!qword_1EB8F78E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78E0, &qword_1B4F7D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78E8);
  }

  return result;
}

unint64_t sub_1B4F566A8()
{
  result = qword_1EB8F78F0;
  if (!qword_1EB8F78F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78E0, &qword_1B4F7D838);
    sub_1B4F5672C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78F0);
  }

  return result;
}

unint64_t sub_1B4F5672C()
{
  result = qword_1EB8F78F8;
  if (!qword_1EB8F78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78F8);
  }

  return result;
}

uint64_t sub_1B4F567D8(uint64_t a1)
{
  v2 = type metadata accessor for RecentSearchTermsUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *AnalyticsEventMonitor.__allocating_init(eventHub:reporter:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_1B4DC9368(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

void *sub_1B4F5689C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result[8];
    v4 = result[9];
    __swift_project_boxed_opaque_existential_1(result + 5, v3);
    (*(v4 + 8))(a1, v3, v4);
  }

  return result;
}

void *AnalyticsEventMonitor.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  return v0;
}

void *ArchivedSessionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F59140(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F56B14(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5._object = 0x80000001B4F867A0;
    v6._countAndFlagsBits = 0xD000000000000032;
    v6._object = 0x80000001B4F86AC0;
    v5._countAndFlagsBits = 0xD000000000000029;
    Logger.trace(file:function:)(v5, v6);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v11 = v1;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for ArchivedSessionsUpdated, &protocol witness table for ArchivedSessionsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F56C5C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5._object = 0x80000001B4F867A0;
    v6._countAndFlagsBits = 0xD00000000000003FLL;
    v6._object = 0x80000001B4F86A80;
    v5._countAndFlagsBits = 0xD000000000000029;
    Logger.trace(file:function:)(v5, v6);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v11 = v1;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for SampleContentArchivedSessionsUpdated, &protocol witness table for SampleContentArchivedSessionsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t ArchivedSessionClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArchivedSessionClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ArchivedSessionClient.insertArchivedSession(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867D0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 2;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65954();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v8);
}

uint64_t ArchivedSessionClient.insertSampleContentArchivedSession(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 366;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67144();
  return v10(&v13, a1, v11, MEMORY[0x1E69CCE78], MEMORY[0x1E69CCE80], ObjectType, v8);
}

uint64_t ArchivedSessionClient.countSampleContentArchivedSessions(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._countAndFlagsBits = 0xD000000000000036;
  v8._object = 0x80000001B4F86820;
  v7._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 367;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 32))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v10);
}

uint64_t ArchivedSessionClient.deleteAllArchivedSessions()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86860;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 0;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t ArchivedSessionClient.queryAllArchivedSessions()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86880;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 3;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v10 = sub_1B4F59364();
  v11 = sub_1B4F593E8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t ArchivedSessionClient.queryArchivedSession(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F868A0;
  v8._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 4;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65954();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v10);
}

uint64_t ArchivedSessionClient.queryArchivedSessions(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F868D0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 11;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66F84();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v13 = sub_1B4F59364();
  v14 = sub_1B4F593E8();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], v13, v14, ObjectType, v8);
}

uint64_t ArchivedSessionClient.requireArchivedSessions()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F868F0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 8;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t ArchivedSessionClient.deleteArchivedSession(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86910;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 1;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t ArchivedSessionClient.queryAllResumableSessions()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86940;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 6;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v10 = sub_1B4F5949C();
  v11 = sub_1B4F59520();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t ArchivedSessionClient.queryResumableSession(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86960;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 5;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65E04();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB830], MEMORY[0x1E69CB838], ObjectType, v10);
}

uint64_t ArchivedSessionClient.queryResumableSessions(workoutIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F867A0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F86990;
  v5._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 7;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F5949C();
  v16 = sub_1B4F59520();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t ArchivedSessionClient.queryAllCompletedWorkoutIdentifiers()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F869C0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 9;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DC5928();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t ArchivedSessionClient.countArchivedSessions(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F869F0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 10;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t ArchivedSessionClient.queryAllSampleContentArchivedSessionIdentifiers()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F867A0;
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x80000001B4F86A10;
  v3._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 368;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DC5928();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F57FA8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867D0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 2;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65954();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v8);
}

uint64_t sub_1B4F580CC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F869F0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 10;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t sub_1B4F58204(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 366;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67144();
  return v10(&v13, a1, v11, MEMORY[0x1E69CCE78], MEMORY[0x1E69CCE80], ObjectType, v8);
}

uint64_t sub_1B4F58328(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._countAndFlagsBits = 0xD000000000000036;
  v8._object = 0x80000001B4F86820;
  v7._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = 367;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 32))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v10);
}

uint64_t sub_1B4F58458()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86860;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 0;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F58540(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86910;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v14 = 1;
  v13[0] = a1;
  v13[1] = a2;
  return (*(v10 + 16))(&v14, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v10);
}

uint64_t sub_1B4F58658()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86880;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 3;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v10 = sub_1B4F59364();
  v11 = sub_1B4F593E8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F58788(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F868A0;
  v8._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 4;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65954();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v10);
}

uint64_t sub_1B4F588C0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F868D0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 11;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66F84();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v13 = sub_1B4F59364();
  v14 = sub_1B4F593E8();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F58A1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86960;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 5;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65E04();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB830], MEMORY[0x1E69CB838], ObjectType, v10);
}

uint64_t sub_1B4F58B50(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F867A0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F86990;
  v5._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 7;
  v18 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  v15 = sub_1B4F5949C();
  v16 = sub_1B4F59520();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v8);
}

uint64_t sub_1B4F58CC4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86940;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 6;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v10 = sub_1B4F5949C();
  v11 = sub_1B4F59520();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F58DF4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F869C0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 9;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DC5928();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F58F24()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F867A0;
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x80000001B4F86A10;
  v3._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 368;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DC5928();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F59054()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F868F0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 8;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

void *sub_1B4F59140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 0;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4DC5928();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4F597A8, v7, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  v14 = a1;
  v13 = 1;
  v11 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4F597AC, v11, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5758(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F59364()
{
  result = qword_1EDB6DB28;
  if (!qword_1EDB6DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7900, &qword_1B4F7D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB28);
  }

  return result;
}

unint64_t sub_1B4F593E8()
{
  result = qword_1EDB6DB20;
  if (!qword_1EDB6DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7900, &qword_1B4F7D950);
    sub_1B4F595D4(&qword_1EDB700B0, MEMORY[0x1E69CB538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB20);
  }

  return result;
}

unint64_t sub_1B4F5949C()
{
  result = qword_1EB8F7910;
  if (!qword_1EB8F7910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7908, &unk_1B4F7D958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7910);
  }

  return result;
}

unint64_t sub_1B4F59520()
{
  result = qword_1EB8F7918;
  if (!qword_1EB8F7918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7908, &unk_1B4F7D958);
    sub_1B4F595D4(&qword_1EB8F7920, MEMORY[0x1E69CB850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7918);
  }

  return result;
}

uint64_t sub_1B4F595D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t Platform.appBundle(for:)(char a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    v2 = 0x6C7070612E6D6F63;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

void HealthKitWorkout.init(workout:)(void *a1)
{
  v2 = sub_1B4F64964();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61C8, &unk_1B4F787F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_1B4F649A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 duration];
  v17 = [a1 UUID];
  sub_1B4F64994();

  sub_1B4F64974();
  (*(v11 + 8))(v16, v10);
  _HKWorkoutIsIndoor(a1);
  v18 = a1;
  HealthKitSessionReference.init(workout:)(v18, v9);
  v19 = [v18 startDate];
  sub_1B4F64934();

  [v18 workoutActivityType];
  sub_1B4F65D44();
}

uint64_t sub_1B4F59A98(uint64_t a1)
{
  v2 = sub_1B4F5A06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59AD4(uint64_t a1)
{
  v2 = sub_1B4F5A06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4F59B10()
{
  if (*v0)
  {
    result = 1668184435;
  }

  else
  {
    result = 0x636E797361;
  }

  *v0;
  return result;
}

uint64_t sub_1B4F59B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E797361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4F68D54() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();

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

uint64_t sub_1B4F59C24(uint64_t a1)
{
  v2 = sub_1B4F59FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59C60(uint64_t a1)
{
  v2 = sub_1B4F59FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4F59C9C(uint64_t a1)
{
  v2 = sub_1B4F5A018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59CD8(uint64_t a1)
{
  v2 = sub_1B4F5A018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventDispatchStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7928, &qword_1B4F7D9E0);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7930, &qword_1B4F7D9E8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7938, &qword_1B4F7D9F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F59FC4();
  sub_1B4F68F54();
  v20 = (v13 + 8);
  if (v18)
  {
    v29 = 1;
    sub_1B4F5A018();
    v21 = v25;
    sub_1B4F68CB4();
    (*(v26 + 8))(v21, v27);
  }

  else
  {
    v28 = 0;
    sub_1B4F5A06C();
    sub_1B4F68CB4();
    (*(v23 + 8))(v11, v24);
  }

  return (*v20)(v17, v12);
}

unint64_t sub_1B4F59FC4()
{
  result = qword_1EB8F7940;
  if (!qword_1EB8F7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7940);
  }

  return result;
}

unint64_t sub_1B4F5A018()
{
  result = qword_1EB8F7948;
  if (!qword_1EB8F7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7948);
  }

  return result;
}

unint64_t sub_1B4F5A06C()
{
  result = qword_1EB8F7950;
  if (!qword_1EB8F7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7950);
  }

  return result;
}

uint64_t EventDispatchStrategy.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7958, &qword_1B4F7D9F8);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7960, &qword_1B4F7DA00);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7968, &unk_1B4F7DA08);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F59FC4();
  v19 = v39;
  sub_1B4F68F44();
  if (v19)
  {
    v20 = a1;
  }

  else
  {
    v33 = v8;
    v39 = a1;
    v21 = v36;
    v22 = v37;
    v23 = sub_1B4F68CA4();
    v24 = (2 * *(v23 + 16)) | 1;
    v40 = v23;
    v41 = v23 + 32;
    v42 = 0;
    v43 = v24;
    v25 = sub_1B4E2DC70();
    if (v25 == 2 || v42 != v43 >> 1)
    {
      v27 = sub_1B4F68A04();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0) + 48);
      *v29 = &type metadata for EventDispatchStrategy;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v38 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v25;
      if (v25)
      {
        v45 = 1;
        sub_1B4F5A018();
        sub_1B4F68C54();
        v26 = v38;
        (*(v35 + 8))(v7, v21);
      }

      else
      {
        v45 = 0;
        sub_1B4F5A06C();
        sub_1B4F68C54();
        v26 = v38;
        (*(v34 + 8))(v12, v33);
      }

      (*(v26 + 8))(v17, v13);
      swift_unknownObjectRelease();
      *v22 = v44 & 1;
    }

    v20 = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t EventDispatchStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F5A624()
{
  result = qword_1EB8F7970;
  if (!qword_1EB8F7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7970);
  }

  return result;
}

unint64_t sub_1B4F5A6AC()
{
  result = qword_1EB8F7978;
  if (!qword_1EB8F7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7978);
  }

  return result;
}

unint64_t sub_1B4F5A704()
{
  result = qword_1EB8F7980;
  if (!qword_1EB8F7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7980);
  }

  return result;
}

unint64_t sub_1B4F5A75C()
{
  result = qword_1EB8F7988;
  if (!qword_1EB8F7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7988);
  }

  return result;
}

unint64_t sub_1B4F5A7B4()
{
  result = qword_1EB8F7990;
  if (!qword_1EB8F7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7990);
  }

  return result;
}

unint64_t sub_1B4F5A80C()
{
  result = qword_1EB8F7998;
  if (!qword_1EB8F7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7998);
  }

  return result;
}

unint64_t sub_1B4F5A864()
{
  result = qword_1EB8F79A0;
  if (!qword_1EB8F79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79A0);
  }

  return result;
}

unint64_t sub_1B4F5A8BC()
{
  result = qword_1EB8F79A8;
  if (!qword_1EB8F79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79A8);
  }

  return result;
}

uint64_t MeditationUpdated.meditation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MeditationUpdated.init(meditation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MeditationUpdated()
{
  result = qword_1EB8F79B0;
  if (!qword_1EB8F79B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5AA78()
{
  result = sub_1B4F64AA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MediaPlayerSyncUpdated.syncUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F664E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MediaPlayerSyncUpdated()
{
  result = qword_1EB8F79C0;
  if (!qword_1EB8F79C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5ABEC()
{
  result = sub_1B4F664E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *HealthDataClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F5C308(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F5ADD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB6DFB0);
    v3._countAndFlagsBits = 0xD000000000000024;
    v3._object = 0x80000001B4F86B00;
    v4._object = 0x80000001B4F86D00;
    v4._countAndFlagsBits = 0xD000000000000020;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for HealthKitWorkoutsUpdated, &protocol witness table for HealthKitWorkoutsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F5AEE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB6DFB0);
    v3._object = 0x80000001B4F86B00;
    v4._countAndFlagsBits = 0xD000000000000027;
    v4._object = 0x80000001B4F86CD0;
    v3._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for HealthKitMindfulSessionsUpdated, &protocol witness table for HealthKitMindfulSessionsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F5AFF8(uint64_t a1)
{
  v2 = type metadata accessor for MindfulMinutesMetricUpdated();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB6DFB0);
    v10._object = 0x80000001B4F86B00;
    v11._countAndFlagsBits = 0xD000000000000037;
    v11._object = 0x80000001B4F86C90;
    v10._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v10, v11);
    v12 = *(v8 + 40);
    v13 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v15 = sub_1B4F66454();
    (*(*(v15 - 8) + 16))(v6, a1, v15);
    (*(v13 + 8))(v6, v2, &protocol witness table for MindfulMinutesMetricUpdated, ObjectType, v13);
    sub_1B4F5C89C(v6);
  }

  return result;
}

uint64_t HealthDataClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HealthDataClient.queryAllHealthKitWorkouts()()
{
  v1 = v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DFB0);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F86B00;
  v4._object = 0x80000001B4F86B30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 139;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v10 = sub_1B4F5C57C();
  v11 = sub_1B4F5C600();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t HealthDataClient.queryHealthKitWorkoutsUsingThreshold(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x80000001B4F86B50;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 140;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66B44();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v13 = sub_1B4F5C57C();
  v14 = sub_1B4F5C600();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CCA50], MEMORY[0x1E69CCA58], v13, v14, ObjectType, v8);
}

uint64_t HealthDataClient.queryHealthKitWorkout(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  v7._object = 0x80000001B4F86B00;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001B4F86B80;
  v7._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 143;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65D74();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v10);
}

uint64_t HealthDataClient.insertHealthKitWorkout(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BB0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 142;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65D74();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v8);
}

uint64_t HealthDataClient.insertHealthKitMindfulSession(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BD0;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 144;
  v10 = *(v8 + 16);
  v11 = sub_1B4F66894();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC6F8], MEMORY[0x1E69CC700], ObjectType, v8);
}

uint64_t HealthDataClient.insertHealthKitStandaloneMindfulSessionJob(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  v6._object = 0x80000001B4F86C00;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 146;
  v10 = *(v8 + 16);
  v11 = sub_1B4F674F4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD1B0], MEMORY[0x1E69CD1B8], ObjectType, v8);
}

uint64_t HealthDataClient.queryHealthKitMindfulSessionsUsingThreshold(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F86C30;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 145;
  v10 = *(v8 + 32);
  v11 = sub_1B4F673A4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
  v13 = sub_1B4F5C6B4();
  v14 = sub_1B4F5C738();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CD020], MEMORY[0x1E69CD028], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F5BA74()
{
  v1 = *v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DFB0);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F86B00;
  v4._object = 0x80000001B4F86B30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 139;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v10 = sub_1B4F5C57C();
  v11 = sub_1B4F5C600();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4F5BBA4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x80000001B4F86B50;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 140;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66B44();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v13 = sub_1B4F5C57C();
  v14 = sub_1B4F5C600();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CCA50], MEMORY[0x1E69CCA58], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4F5BD00(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BB0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 142;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65D74();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v8);
}

uint64_t sub_1B4F5BE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  v7._object = 0x80000001B4F86B00;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001B4F86B80;
  v7._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 143;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F65D74();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v10);
}

uint64_t sub_1B4F5BF5C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BD0;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 144;
  v10 = *(v8 + 16);
  v11 = sub_1B4F66894();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC6F8], MEMORY[0x1E69CC700], ObjectType, v8);
}

uint64_t sub_1B4F5C080(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  v6._object = 0x80000001B4F86C00;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 146;
  v10 = *(v8 + 16);
  v11 = sub_1B4F674F4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD1B0], MEMORY[0x1E69CD1B8], ObjectType, v8);
}

uint64_t sub_1B4F5C1A8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F86C30;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 145;
  v10 = *(v8 + 32);
  v11 = sub_1B4F673A4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
  v13 = sub_1B4F5C6B4();
  v14 = sub_1B4F5C738();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CD020], MEMORY[0x1E69CD028], v13, v14, ObjectType, v8);
}

void *sub_1B4F5C308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 46;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v12, sub_1B4F5C8F8, v7, ObjectType, &protocol witness table for XPCClient);

  v13 = a1;
  v12 = 47;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v12, sub_1B4F5C8FC, v8, ObjectType, &protocol witness table for XPCClient);

  v13 = a1;
  v12 = 48;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F66454();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F5C900, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CC1E8], MEMORY[0x1E69CC1F0]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F5C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6370(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F5C57C()
{
  result = qword_1EB8F79D8;
  if (!qword_1EB8F79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79D8);
  }

  return result;
}

unint64_t sub_1B4F5C600()
{
  result = qword_1EB8F79E0;
  if (!qword_1EB8F79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
    sub_1B4F5C7EC(&qword_1EB8F79E8, MEMORY[0x1E69CB780]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79E0);
  }

  return result;
}

unint64_t sub_1B4F5C6B4()
{
  result = qword_1EB8F79F8;
  if (!qword_1EB8F79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79F8);
  }

  return result;
}

unint64_t sub_1B4F5C738()
{
  result = qword_1EB8F7A00;
  if (!qword_1EB8F7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
    sub_1B4F5C7EC(&qword_1EB8F7A08, MEMORY[0x1E69CC710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7A00);
  }

  return result;
}

uint64_t sub_1B4F5C7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4F5C89C(uint64_t a1)
{
  v2 = type metadata accessor for MindfulMinutesMetricUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GymKitConnection.applyingTimestampOffset(_:)()
{
  sub_1B4F65CE4();

  return sub_1B4F65CF4();
}

uint64_t sub_1B4F5C958()
{
  sub_1B4F65CE4();

  return sub_1B4F65CF4();
}

uint64_t DaemonSessionUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DaemonSessionUpdate.init(update:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for DaemonSessionUpdate()
{
  result = qword_1EDB6ED88;
  if (!qword_1EDB6ED88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5CB04()
{
  result = sub_1B4F65504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void TransportDispatchService.dispatchRequest(_:data:completion:)(Swift::Int a1, uint64_t a2, unint64_t a3, void (*a4)(void, unint64_t, void *), uint64_t a5)
{
  v45 = a3;
  v46 = a5;
  v44 = a2;
  v8 = sub_1B4F67D54();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F67D74();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TransportRequest.init(rawValue:)(a1);
  v19 = aBlock[0];
  if (LOWORD(aBlock[0]) == 369)
  {
    v20 = sub_1B4F658F4();
    sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69CB4F8], v20);
    a4(0, 0xF000000000000000, v21);
  }

  else
  {
    v40 = a4;
    v41 = v14;
    v23 = v5[3];
    os_unfair_lock_lock(*(v23 + 16));
    swift_beginAccess();
    v24 = v5[6];
    v25 = *(v24 + 16);
    v42 = v13;
    if (v25)
    {
      v39 = v8;
      v26 = sub_1B4DCE3F0(v19);
      if (v27)
      {
        v28 = (*(v24 + 56) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v8 = v39;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    swift_endAccess();
    os_unfair_lock_unlock(*(v23 + 16));
    if (v29)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      v32 = sub_1B4F63088;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v39 = v5[2];
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    *(v33 + 32) = v5;
    *(v33 + 40) = v19;
    v35 = v45;
    v34 = v46;
    *(v33 + 48) = v40;
    *(v33 + 56) = v34;
    v36 = v44;
    *(v33 + 64) = v44;
    *(v33 + 72) = v35;
    aBlock[4] = sub_1B4F63084;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_20;
    v37 = _Block_copy(aBlock);
    sub_1B4DEA370(v32);

    sub_1B4DD3000(v36, v35);
    sub_1B4F67D64();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v18, v12, v37);
    _Block_release(v37);
    sub_1B4DD2C78(v32);
    (*(v43 + 8))(v12, v8);
    (*(v41 + 8))(v18, v42);
  }
}

void sub_1B4F5D068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1B4F647B4();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1B4F64884();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void TransportDispatchService.dispatchEvent(_:data:)(Swift::Int a1, NSObject *a2, unint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v7 = sub_1B4F67D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F67D74();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TransportEvent.init(rawValue:)(a1);
  v19 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 57)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1B4F67C54();
    __swift_project_value_buffer(v20, qword_1EDB72490);
    v48 = sub_1B4F67C34();
    v21 = sub_1B4F685C4();
    if (os_log_type_enabled(v48, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = a1;
      _os_log_impl(&dword_1B4DC2000, v48, v21, "Invalid eventIdentifier: %{public}ld", v22, 0xCu);
      MEMORY[0x1B8C831D0](v22, -1, -1);
    }

    v23 = v48;

    return;
  }

  v46 = v14;
  v47 = v8;
  v24 = v4[3];
  os_unfair_lock_lock(*(v24 + 16));
  swift_beginAccess();
  v25 = v4[7];
  if (*(v25 + 16))
  {
    v26 = a3;
    v27 = sub_1B4DC51CC(v19);
    if (v28)
    {
      v29 = (*(v25 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];

      goto LABEL_14;
    }
  }

  else
  {
    v26 = a3;
  }

  v31 = 0;
  v30 = 0;
LABEL_14:
  swift_endAccess();
  os_unfair_lock_unlock(*(v24 + 16));
  if (v31)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v33 = v4[2];
    v34 = swift_allocObject();
    v34[2] = sub_1B4F63090;
    v34[3] = v32;
    v35 = v48;
    v34[4] = v48;
    v34[5] = v26;
    aBlock[4] = sub_1B4F630C8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_12_0;
    v36 = _Block_copy(aBlock);
    swift_retain_n();
    sub_1B4DD3000(v35, v26);
    sub_1B4F67D64();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v18, v12, v36);
    _Block_release(v36);

    (*(v47 + 8))(v12, v7);
    (*(v46 + 8))(v18, v13);
  }

  else
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v37 = sub_1B4F67C54();
    __swift_project_value_buffer(v37, qword_1EDB72490);

    v38 = sub_1B4F67C34();
    v39 = sub_1B4F685C4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_1B4DC4F88(v4[4], v4[5], aBlock);
      *(v40 + 12) = 2082;
      LOBYTE(v49) = v19;
      v42 = sub_1B4DC5160();
      v43 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v42);
      v45 = sub_1B4DC4F88(v43, v44, aBlock);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_1B4DC2000, v38, v39, "No dispatch handler on %{public}s found for event: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v41, -1, -1);
      MEMORY[0x1B8C831D0](v40, -1, -1);
    }
  }
}

void *TransportDispatchService.__allocating_init(queue:label:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  v6[6] = MEMORY[0x1E69E7CC8];
  v6[7] = v7;
  v6[2] = a1;
  v6[4] = a2;
  v6[5] = a3;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = a1;
  v10 = swift_slowAlloc();
  *(v8 + 16) = v10;
  *v10 = 0;

  v6[3] = v8;
  return v6;
}

uint64_t TransportDispatchService.register(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3)
{
  return sub_1B4F5D7B8(a1, a2, a3, &unk_1F2CE4698, sub_1B4E96400);
}

{
  return sub_1B4F5D7B8(a1, a2, a3, &unk_1F2CE46C0, sub_1B4E96408);
}

uint64_t sub_1B4F5D7B8(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B4F5F760(&v10, a5, v8);
}

uint64_t TransportDispatchService.register<A>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE46E8, sub_1B4F630D4);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4710, sub_1B4F630EC);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4738, sub_1B4F63104);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4760, sub_1B4F6311C);
}

uint64_t sub_1B4F5D8C4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a1;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a2;
  v14[6] = a3;

  sub_1B4F5F760(&v16, a8, v14);
}

uint64_t TransportDispatchService.register<A, B>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1B4F5D9F4(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F2CE4788, sub_1B4F6316C);
}

{
  return sub_1B4F5D9F4(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F2CE47B0, sub_1B4F63184);
}

uint64_t sub_1B4F5D9F4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = *a1;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a9;
  v18[8] = a2;
  v18[9] = a3;

  sub_1B4F5F760(&v20, a11, v18);
}

uint64_t TransportDispatchService.register(event:handler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1B4F62074(&v7, sub_1B4F631DC, v5);
}

uint64_t TransportDispatchService.register<A>(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a1;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;

  sub_1B4F62074(&v13, sub_1B4F6320C, v11);
}

uint64_t sub_1B4F5DFE0()
{
  v1 = sub_1B4F658F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v94 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92[-v8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v92[-v12];
  v14 = sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
  v15 = *(sub_1B4F68E04() + 16);

  if (!v15)
  {
    v16 = sub_1B4F68DD4();
    if (!v16)
    {
      (*(v2 + 16))(v13, v0, v1);
      v81 = sub_1B4F68D24();
      if (v81)
      {
        v82 = v81;
        (*(v2 + 8))(v13, v1);
      }

      else
      {
        v82 = swift_allocError();
        (*(v2 + 32))(v91, v13, v1);
      }

      return v82;
    }
  }

  v96 = v2;
  v17 = sub_1B4F68E04();
  v99 = v14;
  v101 = v0;
  v18 = sub_1B4F68DD4();
  v19 = *MEMORY[0x1E696AA08];
  v100 = v1;
  v97 = v9;
  v103 = v19;
  if (v18)
  {
    v20 = sub_1B4F67F74();
    v22 = v21;
    swift_getErrorValue();
    v23 = Error.sanitized()(v106, v107);
    swift_getErrorValue();
    v24 = v104;
    v25 = v105;
    *(&v116[0] + 1) = v105;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v115);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v24, v25);

    sub_1B4E2C940(&v115, &v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v110 = v17;
    v0 = &v110;
    sub_1B4E5E93C(&v112, v20, v22, isUniquelyReferenced_nonNull_native);

    v17 = v110;
  }

  v28 = (v17 + 64);
  v29 = 1 << *(v17 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v17 + 64);
  v32 = (v29 + 63) >> 6;
  v95 = *MEMORY[0x1E696A250];

  v98 = 0;
  v33 = 0;
  v102 = v17;
  if (!v31)
  {
LABEL_10:
    if (v32 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v32;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        v31 = 0;
        v113 = 0u;
        v114 = 0u;
        v33 = v36;
        v112 = 0u;
        goto LABEL_19;
      }

      v31 = *&v28[8 * v34];
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    swift_allocError();
    (*(v32 + 32))(v83, v28, v31);
    goto LABEL_71;
  }

  while (1)
  {
    v34 = v33;
LABEL_18:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v34 << 6);
    v39 = (*(v17 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_1B4DC4F2C(*(v17 + 56) + 32 * v38, &v110);
    *&v112 = v41;
    *(&v112 + 1) = v40;
    sub_1B4E2C940(&v110, &v113);

LABEL_19:
    v115 = v112;
    v116[0] = v113;
    v116[1] = v114;
    v42 = *(&v112 + 1);
    if (!*(&v112 + 1))
    {
      break;
    }

    v18 = v115;
    sub_1B4E2C940(v116, &v110);
    v43 = sub_1B4F67F74();
    v0 = v44;
    if (v18 == v43 && v44 == v42)
    {

LABEL_24:

      goto LABEL_25;
    }

    v45 = sub_1B4F68D54();

    if (v45)
    {
      goto LABEL_24;
    }

    sub_1B4DC4F2C(&v110, &v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
    v0 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1B4DC4F2C(&v110, &v112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B4DC4F2C(&v110, &v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1B4DC4F2C(&v110, v109);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
          if (!swift_dynamicCast())
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v112);
          v0 = v101;
          if (sub_1B4F5ECB4(&v110))
          {
            goto LABEL_24;
          }
        }
      }
    }

    v46 = sub_1B4F68DF4();
    v48 = v47;
    if (v46 == sub_1B4F67F74() && v48 == v49)
    {

LABEL_35:
      *(&v113 + 1) = MEMORY[0x1E69E6158];
      *&v112 = 0x657070697274733CLL;
      *(&v112 + 1) = 0xEA00000000003E64;
      sub_1B4E2C940(&v112, v109);
      v50 = v102;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v50;
      v52 = sub_1B4DF4344(v18, v42);
      v53 = v50[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        result = sub_1B4F68DB4();
        __break(1u);
        return result;
      }

      if (v50[3] >= v55)
      {
        if (v98)
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          LODWORD(v102) = v51;
          sub_1B4E29614();
          if ((v102 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        LODWORD(v102) = v51;
        sub_1B4E27F34(v55, v98);
        v56 = sub_1B4DF4344(v18, v42);
        if ((v102 & 1) != (v57 & 1))
        {
          goto LABEL_79;
        }

        v52 = v56;
        if ((v102 & 1) == 0)
        {
LABEL_54:
          v0 = v108;
          v108[(v52 >> 6) + 8] |= 1 << v52;
          v68 = (v0[6] + 16 * v52);
          *v68 = v18;
          v68[1] = v42;
          sub_1B4E2C940(v109, (v0[7] + 32 * v52));
          v69 = v0[2];
          v64 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v64)
          {
            goto LABEL_76;
          }

          v102 = v0;
          v0[2] = v70;
          goto LABEL_56;
        }
      }

      v102 = v108;
      v0 = (v108[7] + 32 * v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v0);
      sub_1B4E2C940(v109, v0);
LABEL_56:
      v98 = 1;
      goto LABEL_25;
    }

    v93 = sub_1B4F68D54();

    if (v93)
    {
      goto LABEL_35;
    }

    *&v109[0] = 0;
    *(&v109[0] + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    sub_1B4F68D34();
    *(&v113 + 1) = MEMORY[0x1E69E6158];
    v112 = v109[0];
    sub_1B4E2C940(&v112, v109);
    v58 = v102;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v58;
    v60 = sub_1B4DF4344(v18, v42);
    v62 = v58[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_77;
    }

    if (v58[3] >= v65)
    {
      if ((v59 & 1) == 0)
      {
        v102 = v60;
        v71 = v61;
        sub_1B4E29614();
        v60 = v102;
        if (v71)
        {
LABEL_52:
          v67 = v60;

          v102 = v108;
          v0 = (v108[7] + 32 * v67);
          __swift_destroy_boxed_opaque_existential_1Tm(v0);
          sub_1B4E2C940(v109, v0);
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      LODWORD(v102) = v61;
      sub_1B4E27F34(v65, v59);
      v60 = sub_1B4DF4344(v18, v42);
      v66 = v61 & 1;
      LOBYTE(v61) = v102;
      if ((v102 & 1) != v66)
      {
        goto LABEL_79;
      }
    }

    if (v61)
    {
      goto LABEL_52;
    }

LABEL_58:
    v0 = v108;
    v108[(v60 >> 6) + 8] |= 1 << v60;
    v72 = (v0[6] + 16 * v60);
    *v72 = v18;
    v72[1] = v42;
    sub_1B4E2C940(v109, (v0[7] + 32 * v60));
    v73 = v0[2];
    v64 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v64)
    {
      goto LABEL_78;
    }

    v102 = v0;
    v0[2] = v74;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    if (!v31)
    {
      goto LABEL_10;
    }
  }

  v31 = v100;
  v75 = v101;
  if ((v98 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v76 = sub_1B4F67C54();
  __swift_project_value_buffer(v76, qword_1EDB72490);
  v32 = v96;
  v77 = *(v96 + 16);
  v78 = v97;
  v77(v97, v75, v31);
  v0 = sub_1B4F67C34();
  LOBYTE(v33) = sub_1B4F685C4();
  if (!os_log_type_enabled(v0, v33))
  {

    (*(v32 + 8))(v78, v31);
    goto LABEL_72;
  }

  v18 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v80 = v78;
  v103 = v79;
  *v18 = 138412290;
  v28 = v94;
  v77(v94, v80, v31);
  if (!sub_1B4F68D24())
  {
    goto LABEL_70;
  }

  (*(v32 + 8))(v28, v31);
LABEL_71:
  v84 = _swift_stdlib_bridgeErrorToNSError();
  (*(v32 + 8))(v97, v31);
  *(v18 + 1) = v84;
  v85 = v103;
  *v103 = v84;
  _os_log_impl(&dword_1B4DC2000, v0, v33, "Found Errors from Core Data, original error before sanitization: %@", v18, 0xCu);
  sub_1B4DD2BC4(v85, &unk_1EB8F6DF0, &qword_1B4F79210);
  MEMORY[0x1B8C831D0](v85, -1, -1);
  MEMORY[0x1B8C831D0](v18, -1, -1);

LABEL_72:
  sub_1B4F68DF4();
  v86 = sub_1B4F68DE4();
  v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v88 = sub_1B4F67F64();

  v89 = sub_1B4F67EE4();

  v82 = [v87 initWithDomain:v88 code:v86 userInfo:v89];

  return v82;
}

uint64_t sub_1B4F5ECB4(uint64_t a1)
{
  sub_1B4DC4F2C(a1, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = 0;
    v5 = v33 + 64;
    v4 = *(v33 + 64);
    v32 = v33;
    v6 = 1 << *(v33 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v4;
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = v3;
LABEL_14:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v10 << 6);
      sub_1B4DF47F4(*(v32 + 48) + 40 * v14, &v42);
      sub_1B4DC4F2C(*(v32 + 56) + 32 * v14, &v46);
      v33 = v42;
      v34 = v43;
      *&v35 = v44;
      sub_1B4E2C940(&v46, (&v35 + 8));
      v12 = v10;
LABEL_15:
      v40[0] = v35;
      v40[1] = v36;
      v41 = v37;
      v38 = v33;
      v39 = v34;
      if (!*(&v34 + 1))
      {

        return 1;
      }

      sub_1B4E2C940((v40 + 8), &v42);
      v47 = MEMORY[0x1E69E69B8];
      v15 = swift_allocObject();
      *&v46 = v15;
      v16 = v39;
      *(v15 + 16) = v38;
      *(v15 + 32) = v16;
      *(v15 + 48) = *&v40[0];
      sub_1B4DC4F2C(&v46, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        if ((sub_1B4F5ECB4(&v46) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_1B4DC4F2C(&v46, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
      if (!swift_dynamicCast() || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v46, &v33), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020), (swift_dynamicCast() & 1) != 0) || (v3 = v12, sub_1B4DC4F2C(&v46, &v33), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88), (swift_dynamicCast() & 1) != 0))
      {
LABEL_38:

        __swift_destroy_boxed_opaque_existential_1Tm(&v46);
LABEL_40:
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      sub_1B4DC4F2C(&v42, &v46);
      if (swift_dynamicCast() && (__swift_destroy_boxed_opaque_existential_1Tm(&v33), (sub_1B4F5ECB4(&v42) & 1) == 0) || (sub_1B4DC4F2C(&v42, &v33), !swift_dynamicCast()) || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v42, &v33), (swift_dynamicCast() & 1) != 0))
      {

        goto LABEL_40;
      }

      sub_1B4E2C940(&v42, &v33);
      result = swift_dynamicCast();
      if (result)
      {

        return 0;
      }
    }

    if (v9 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        v8 = 0;
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * v10);
      ++v3;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B4DC4F2C(a1, &v42);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v35 = 0;
      v33 = 0u;
      v34 = 0u;
      sub_1B4DD2BC4(&v33, &unk_1EB8F6E20, &unk_1B4F7E040);
      return 1;
    }

    sub_1B4DC933C(&v33, &v38);
    v17 = *(&v39 + 1);
    v18 = __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v19 = *(*(v17 - 8) + 64);
    v20 = MEMORY[0x1EEE9AC00](v18, v18);
    (*(v22 + 16))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    *(&v34 + 1) = swift_getAssociatedTypeWitness();
    *&v35 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v33);
    sub_1B4F680C4();
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24 = sub_1B4F687D4();
      v25 = *(v24 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x1EEE9AC00](v24, v27);
      v29 = &v32 - v28;
      sub_1B4F68834();
      v30 = *(AssociatedTypeWitness - 8);
      if ((*(v30 + 48))(v29, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      *(&v43 + 1) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v30 + 32))(boxed_opaque_existential_1, v29, AssociatedTypeWitness);
      sub_1B4E2C940(&v42, &v46);
      sub_1B4DC4F2C(&v46, v45);
      if (swift_dynamicCast() && (__swift_destroy_boxed_opaque_existential_1Tm(&v42), (sub_1B4F5ECB4(&v46) & 1) == 0) || (sub_1B4DC4F2C(&v46, &v42), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80), !swift_dynamicCast()) || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v46, &v42), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020), (swift_dynamicCast() & 1) != 0))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v46);
LABEL_42:
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        return 0;
      }

      sub_1B4E2C940(&v46, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
      if (swift_dynamicCast())
      {
        goto LABEL_42;
      }
    }

    (*(v25 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    return 1;
  }

  return result;
}

void *TransportDispatchService.init(queue:label:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC8];
  v3[6] = MEMORY[0x1E69E7CC8];
  v3[7] = v5;
  v3[2] = a1;
  v3[4] = a2;
  v3[5] = a3;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = a1;
  v8 = swift_slowAlloc();
  *(v6 + 16) = v8;
  *v8 = 0;
  v3[3] = v6;

  return v3;
}

uint64_t sub_1B4F5F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A10, &unk_1B4F7DFD0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v20 - v12;
  a5(v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1B4DD2BC4(v13, &unk_1EB8F7A10, &unk_1B4F7DFD0);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  v18 = sub_1B4F67654();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B4F63E74;
  *(v19 + 24) = v17;

  v18(sub_1B4DDDFD0, v19);

  return (*(v15 + 8))(v13, v14);
}

void sub_1B4F5F760(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);

  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B4DC4F88(v3[4], v3[5], v18);
    *(v11 + 12) = 2082;
    v13 = sub_1B4F63370();
    v14 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v13);
    v16 = sub_1B4DC4F88(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "Registering request handler (%{public}s): %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v12, -1, -1);
    MEMORY[0x1B8C831D0](v11, -1, -1);
  }

  v17 = v3[3];
  os_unfair_lock_lock(*(v17 + 16));
  sub_1B4F61D18(v4, v7, a2, a3);
  os_unfair_lock_unlock(*(v17 + 16));
}

uint64_t sub_1B4F5F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v18 - v13;
  v15 = sub_1B4F68324();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a3;
  v16[7] = a4;

  sub_1B4E4E620(0, 0, v14, &unk_1B4F7DFF8, v16);
}

uint64_t sub_1B4F5FA7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[18] = v9;
  *v9 = v7;
  v9[1] = sub_1B4F5FB68;

  return v11();
}

uint64_t sub_1B4F5FB68()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1B4F5FD04;
  }

  else
  {
    v3 = sub_1B4F5FC7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F5FC7C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  *(v0 + 72) = 0u;
  v1(v0 + 72);
  sub_1B4DD2C24(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B4F5FD04()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v4 = v1;
  v3(v0 + 16);

  sub_1B4DD2C24(v0 + 16);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4F5FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1B4F67674();
  v15 = sub_1B4F687D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v25 - v20;
  a5(v19);
  v22 = *(v14 - 8);
  if ((*(v22 + 48))(v21, 1, v14) != 1)
  {
    v23 = swift_allocObject();
    v23[2] = a7;
    v23[3] = a8;
    v23[4] = a9;
    v23[5] = a3;
    v23[6] = a4;

    sub_1B4F67644();

    v16 = v22;
    v15 = v14;
  }

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_1B4F5FF58(uint64_t a1, void (*a2)(_BYTE *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F68F14();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  (*(v9 + 16))(&v12[-v8 - 8], a1, v7);
  sub_1B4F65BE4();
  a2(v12);
  return sub_1B4DD2C24(v12);
}

uint64_t sub_1B4F6008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v23 - v18;
  v20 = sub_1B4F68324();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v21[7] = a5;
  v21[8] = a6;
  v21[9] = a3;
  v21[10] = a4;

  sub_1B4E4E620(0, 0, v19, &unk_1B4F7DFE8, v21);
}

uint64_t sub_1B4F601DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v19;
  v8[20] = v20;
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  v10 = sub_1B4F687D4();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[24] = v13;
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v8[25] = v15;
  *v15 = v8;
  v15[1] = sub_1B4F6035C;

  return v17(v13);
}

uint64_t sub_1B4F6035C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1B4F605FC;
  }

  else
  {
    v3 = sub_1B4F60470;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F60470()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  (*(*(v0 + 176) + 16))(v1, *(v0 + 192), *(v0 + 168));
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 184);
  if (v4 == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
  }

  else
  {
    v6 = *(v0 + 160);
    v17 = *(v0 + 144);
    *(v0 + 96) = v17;
    *(v0 + 112) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v17);
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  *(v0 + 120) = 0;
  v11(v0 + 72);
  (*(v10 + 8))(v8, v9);
  sub_1B4DD2C24(v0 + 72);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B4F605FC()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v4 = v1;
  v3(v0 + 16);

  sub_1B4DD2C24(v0 + 16);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B4F606A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v31 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A10, &unk_1B4F7DFD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v30 - v15;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(a1, a2);
  sub_1B4F66DF4();
  v23 = a4;
  v31(v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    (*(v17 + 8))(v22, a7);
    return sub_1B4DD2BC4(v16, &unk_1EB8F7A10, &unk_1B4F7DFD0);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = v23;

    v28 = sub_1B4F67654();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B4F63BE4;
    *(v29 + 24) = v27;

    v28(sub_1B4DDE050, v29);

    (*(v17 + 8))(v22, a7);
    return (*(v25 + 8))(v16, v24);
  }
}

uint64_t sub_1B4F609BC(uint64_t a1, void (*a2)(_BYTE *))
{
  sub_1B4DE3B04(*a1, *(a1 + 8));
  sub_1B4F65BF4();
  a2(v4);
  return sub_1B4DD2C24(v4);
}

uint64_t sub_1B4F60A28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v25 - v19;
  v21 = sub_1B4F68324();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a9;
  v22[7] = a1;
  v22[8] = a2;
  v22[9] = a5;
  v23 = v26;
  v22[10] = a6;
  v22[11] = v23;
  v22[12] = a4;
  sub_1B4DD3000(a1, a2);

  sub_1B4E4E620(0, 0, v20, &unk_1B4F7DFC8, v22);
}

uint64_t sub_1B4F60B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v14;
  v8[23] = v15;
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = *(v14 - 8);
  v8[24] = v9;
  v10 = *(v9 + 64) + 15;
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F60C64, 0, 0);
}

uint64_t sub_1B4F60C64()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  sub_1B4DD3000(v0[16], v0[17]);
  sub_1B4F66DF4();
  v9 = (v0[18] + *v0[18]);
  v4 = *(v0[18] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1B4F60E1C;
  v6 = v0[25];
  v7 = v0[19];

  return v9(v6);
}

uint64_t sub_1B4F60E1C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1B4F60FF0;
  }

  else
  {
    v3 = sub_1B4F60F30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F60F30()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  *(v0 + 72) = 0u;
  v5(v0 + 72);
  sub_1B4DD2C24(v0 + 72);
  (*(v2 + 8))(v1, v4);
  v6 = *(v0 + 200);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B4F60FF0()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 176));
  v1 = *(v0 + 216);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v4 = v1;
  v3(v0 + 16);

  sub_1B4DD2C24(v0 + 16);
  v5 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B4F610AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *))
{
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v41 = a3;
  v16 = sub_1B4F67674();
  v17 = sub_1B4F687D4();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v34 - v20;
  v22 = *(a7 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(a1, a2);
  sub_1B4F66DF4();
  v28 = v37;
  v35 = a9;
  v36 = v22;
  v29 = v41;
  v39(v27);
  v30 = *(v16 - 8);
  if ((*(v30 + 48))(v21, 1, v16) == 1)
  {
    (*(v36 + 8))(v27, a7);
    return (*(v28 + 8))(v21, v17);
  }

  else
  {
    v39 = a12;
    v32 = swift_allocObject();
    v32[2] = a7;
    v32[3] = a8;
    v32[4] = v35;
    v32[5] = a10;
    v33 = v39;
    v32[6] = a11;
    v32[7] = v33;
    v32[8] = v29;
    v32[9] = v40;

    sub_1B4F67644();

    (*(v36 + 8))(v27, a7);
    return (*(v30 + 8))(v21, v16);
  }
}

uint64_t sub_1B4F613BC(uint64_t a1, void (*a2)(_BYTE *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F68F14();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  (*(v9 + 16))(&v12[-v8 - 8], a1, v7);
  sub_1B4F65BE4();
  a2(v12);
  return sub_1B4DD2C24(v12);
}

uint64_t sub_1B4F614EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v27 = a5;
  v28 = a3;
  v26 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v26 - v20;
  v22 = sub_1B4F68324();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a7;
  *(v23 + 40) = a8;
  *(v23 + 48) = v26;
  *(v23 + 64) = a10;
  *(v23 + 72) = a11;
  *(v23 + 80) = a1;
  *(v23 + 88) = a2;
  v24 = v28;
  *(v23 + 96) = v27;
  *(v23 + 104) = a6;
  *(v23 + 112) = v24;
  *(v23 + 120) = a4;
  sub_1B4DD3000(a1, a2);

  sub_1B4E4E620(0, 0, v21, &unk_1B4F7DFB0, v23);
}

uint64_t sub_1B4F61668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v20;
  v8[26] = v21;
  v8[23] = v18;
  v8[24] = v19;
  v8[21] = v16;
  v8[22] = v17;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_1B4F687D4();
  v8[27] = v9;
  v10 = *(v9 - 8);
  v8[28] = v10;
  v11 = *(v10 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v12 = *(v17 - 8);
  v8[31] = v12;
  v13 = *(v12 + 64) + 15;
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F617A8, 0, 0);
}

uint64_t sub_1B4F617A8()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[22];
  sub_1B4DD3000(v0[16], v0[17]);
  sub_1B4F66DF4();
  v10 = (v0[18] + *v0[18]);
  v4 = *(v0[18] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1B4F6197C;
  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[19];

  return v10(v7, v6);
}

uint64_t sub_1B4F6197C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1B4F61C48;
  }

  else
  {
    v3 = sub_1B4F61A90;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F61A90()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  (*(*(v0 + 224) + 16))(v1, *(v0 + 240), *(v0 + 216));
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 232);
  if (v4 == 1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
  }

  else
  {
    v6 = *(v0 + 184);
    *(v0 + 96) = v6;
    *(v0 + 104) = *(v0 + 200);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v6);
  }

  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 160);
  *(v0 + 120) = 0;
  v15(v0 + 72);
  (*(v12 + 8))(v10, v11);
  (*(v9 + 8))(v8, v14);
  sub_1B4DD2C24(v0 + 72);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1B4F61C48()
{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 176));
  v1 = *(v0 + 272);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v4 = v1;
  v3(v0 + 16);

  sub_1B4DD2C24(v0 + 16);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B4F61D18(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[6] + 16) && (sub_1B4DCE3F0(a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB72490);

    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685C4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B4DC4F88(a1[4], a1[5], v22);
      *(v12 + 12) = 2082;
      LOWORD(v23) = a2;
      v13 = sub_1B4F63370();
      v14 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v13);
      v16 = sub_1B4DC4F88(v14, v15, v22);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "Overwriting existing handler (%{public}s): %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v21, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_beginAccess();

  v18 = a1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = a1[6];
  a1[6] = 0x8000000000000000;
  sub_1B4E5EA8C(sub_1B4F63DD8, v17, a2, isUniquelyReferenced_nonNull_native);
  a1[6] = v23;
  return swift_endAccess();
}

uint64_t sub_1B4F61FA0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_1B4F63DE0, v8);
}

void sub_1B4F62074(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);

  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B4DC4F88(v3[4], v3[5], v18);
    *(v11 + 12) = 2082;
    v13 = sub_1B4DC5160();
    v14 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v13);
    v16 = sub_1B4DC4F88(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "Registering event handler (%{public}s): %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v12, -1, -1);
    MEMORY[0x1B8C831D0](v11, -1, -1);
  }

  v17 = v3[3];
  os_unfair_lock_lock(*(v17 + 16));
  sub_1B4F624D8(v4, v7, a2, a3);
  os_unfair_lock_unlock(*(v17 + 16));
}

void sub_1B4F62264(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(v10, v13);
  sub_1B4F66DF4();
  if (v5)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4F67C54();
    __swift_project_value_buffer(v14, qword_1EDB72490);
    v15 = v5;
    v16 = sub_1B4F67C34();
    v17 = sub_1B4F685C4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = MEMORY[0x1B8C826C0](v23[1], v23[2]);
      v22 = sub_1B4DC4F88(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B4DC2000, v16, v17, "Error deserializing event payload: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B8C831D0](v19, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    a3(v12);
    (*(v8 + 8))(v12, a5);
  }
}

uint64_t sub_1B4F624D8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[7] + 16) && (sub_1B4DC51CC(a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB72490);

    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685C4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B4DC4F88(a1[4], a1[5], v22);
      *(v12 + 12) = 2082;
      LOBYTE(v23) = a2;
      v13 = sub_1B4DC5160();
      v14 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v13);
      v16 = sub_1B4DC4F88(v14, v15, v22);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "Overwriting existing handler (%s): %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v21, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_beginAccess();

  v18 = a1[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = a1[7];
  a1[7] = 0x8000000000000000;
  sub_1B4E5EBC4(sub_1B4F63E08, v17, a2, isUniquelyReferenced_nonNull_native);
  a1[7] = v23;
  return swift_endAccess();
}

uint64_t sub_1B4F62760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_1B4F63E38;
  v10[1] = v8;

  a5(v11, v10);
}

void sub_1B4F62804(void (*a1)(uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a2, uint64_t a3, __int16 a4, void (*a5)(void, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_1B4F658F4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;
    sub_1B4DEA370(a1);

    a1(a7, a8, sub_1B4F63E60, v21);

    sub_1B4DD2C78(a1);
  }

  else
  {
    v34[1] = a6;
    v35 = v18;
    v36 = a5;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B4F67C54();
    __swift_project_value_buffer(v22, qword_1EDB72490);

    v23 = sub_1B4F67C34();
    v24 = sub_1B4F685C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1B4DC4F88(*(a3 + 32), *(a3 + 40), &v38);
      *(v25 + 12) = 2082;
      v37 = a4;
      v27 = sub_1B4F63370();
      v28 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v27);
      v30 = sub_1B4DC4F88(v28, v29, &v38);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B4DC2000, v23, v24, "No dispatch handler on %{public}s found for request: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v26, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);
    }

    v32 = v35;
    v31 = v36;
    (*(v35 + 104))(v20, *MEMORY[0x1E69CB500], v15);
    v33 = sub_1B4F5DFE0();
    (*(v32 + 8))(v20, v15);
    v31(0, 0xF000000000000000, v33);
  }
}

void sub_1B4F62B50(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  sub_1B4DD2A4C(a1, v13);
  if (v14)
  {
    v3 = *&v13[0];
    swift_getErrorValue();
    v4 = Error.sanitized()(v11, v12);
    a2(0, 0xF000000000000000, v4);
  }

  else
  {
    v10[0] = v13[0];
    v10[1] = v13[1];
    v10[2] = v13[2];
    sub_1B4DD2AA8(v10, v8);
    v5 = v9;
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v5 = sub_1B4F66E04();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {
      sub_1B4DD2BC4(v8, &unk_1EB8F7A20, qword_1B4F7E000);
      v7 = 0xF000000000000000;
    }

    a2(v5, v7, 0);
    sub_1B4DD2B5C(v5, v7);
    sub_1B4DD2BC4(v10, &unk_1EB8F7A20, qword_1B4F7E000);
  }
}

uint64_t TransportDispatchService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_1B4F63090(uint64_t a1, uint64_t a2)
{
  v6[1] = a2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  return v3(v6);
}

uint64_t sub_1B4F631DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B4F6320C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1B4F62264(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 16));
}

double sub_1B4F63230@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B4DF4344(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B4E28BB4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B4DC933C((*(v12 + 56) + 40 * v9), a3);
    sub_1B4E8C314(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B4F632DC(__int16 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B4DCE3F0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B4E2905C();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1B4E8C4D0(v10, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_1B4F63370()
{
  result = qword_1EDB70C58[0];
  if (!qword_1EDB70C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB70C58);
  }

  return result;
}

uint64_t sub_1B4F633C4(char a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B4DC51CC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B4E291C0();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1B4E8C66C(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1B4F63484(Swift::Int a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v42 = a2;
  v43 = a3;
  v8 = sub_1B4F67D54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B4F67D74();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v44, v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  TransportRequest.init(rawValue:)(a1);
  v20 = aBlock[0];
  if (LOWORD(aBlock[0]) == 369)
  {
    v21 = sub_1B4F658F4();
    sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508]);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69CB4F8], v21);
    _Block_copy(a5);
    v24 = sub_1B4F647B4();
    (a5)[2](a5, 0, v24);
  }

  else
  {
    v41 = v9;
    v26 = a4[3];
    v27 = *(v26 + 16);
    _Block_copy(a5);
    os_unfair_lock_lock(v27);
    swift_beginAccess();
    v28 = a4[6];
    if (*(v28 + 16) && (v29 = sub_1B4DCE3F0(v20), (v30 & 1) != 0))
    {
      v31 = *(v28 + 56) + 16 * v29;
      v33 = *v31;
      v32 = *(v31 + 8);
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    swift_endAccess();
    os_unfair_lock_unlock(*(v26 + 16));
    v40 = v14;
    if (v33)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v32;
      v33 = sub_1B4F63E68;
    }

    else
    {
      v34 = 0;
    }

    v39[1] = a4[2];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = a4;
    *(v35 + 40) = v20;
    *(v35 + 48) = sub_1B4F63984;
    *(v35 + 56) = v19;
    v37 = v42;
    v36 = v43;
    *(v35 + 64) = v42;
    *(v35 + 72) = v36;
    aBlock[4] = sub_1B4F63E6C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_54;
    v38 = _Block_copy(aBlock);
    sub_1B4DEA370(v33);

    sub_1B4DD3000(v37, v36);
    sub_1B4F67D64();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v18, v13, v38);
    _Block_release(v38);
    sub_1B4DD2C78(v33);
    (*(v41 + 8))(v13, v8);
    (*(v40 + 8))(v18, v44);
  }
}

uint64_t sub_1B4F639A4(uint64_t a1)
{
  v17 = v1[5];
  v18 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v15 = v1[3];
  v16 = v1[2];
  v7 = v1[11];
  v14 = v1[10];
  v8 = v1[12];
  v9 = v1[13];
  v11 = v1[14];
  v10 = v1[15];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B4DE13F0;

  return sub_1B4F61668(a1, v16, v15, v14, v7, v8, v9, v11);
}

uint64_t sub_1B4F63AB8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_1B4F613BC(a1, *(v1 + 64));
}

uint64_t sub_1B4F63AEC(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v15 = v1[2];
  v14 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B4DE0D94;

  return sub_1B4F60B98(a1, v15, v14, v6, v7, v8, v9, v10);
}

uint64_t sub_1B4F63C00(uint64_t a1)
{
  v4 = v1[5];
  v14 = v1[4];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B4DE0D94;

  return sub_1B4F601DC(a1, v5, v6, v8, v9, v10, v11, v14);
}

uint64_t sub_1B4F63CF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1B4F5FF58(a1, *(v1 + 40));
}

uint64_t sub_1B4F63D04(uint64_t a1)
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
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F5FA7C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B4F63DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B4F63E08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1B4F63E38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *ConfigurationClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *ConfigurationClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t ConfigurationClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConfigurationClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ConfigurationClient.fetchRemoteConfiguration()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DB0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 114;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t ConfigurationClient.queryConfiguration()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 113;
  v8 = *(v6 + 24);
  v9 = sub_1B4F652B4();
  return v8(&v11, v9, MEMORY[0x1E69CB308], MEMORY[0x1E69CB310], ObjectType, v6);
}

uint64_t ConfigurationClient.resetConfiguration()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DF0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 115;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F64334()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 113;
  v8 = *(v6 + 24);
  v9 = sub_1B4F652B4();
  return v8(&v11, v9, MEMORY[0x1E69CB308], MEMORY[0x1E69CB310], ObjectType, v6);
}

uint64_t sub_1B4F64448()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DF0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 115;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}