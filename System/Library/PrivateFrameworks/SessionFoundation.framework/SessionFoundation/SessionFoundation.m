uint64_t sub_22CED5598()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id BSServiceConnection.init<A>(endpointedDefinedBy:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22CED58A4();
  v8 = BSServiceConnectionEndpoint.init<A>(definition:instance:)(a1, 0, 0, a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [swift_getObjCClassFromMetadata() connectionWithEndpoint_];

    if (v10)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F19A0, &qword_22CEDECC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22CEDECB0;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_22CEDE158();

    v18 = 0xD000000000000025;
    v19 = 0x800000022CEDF050;
    (*(a5 + 24))(v17, a4, a5);
    v12 = v17[2];
    v13 = v17[3];

    MEMORY[0x2318C2A60](v12, v13);

    v14 = v18;
    v15 = v19;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_22CEDE1D8();

    return 0;
  }

  return v10;
}

id BSServiceConnectionEndpoint.init<A>(definition:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(&v13, a4, a5);

  v8 = sub_22CEDDF48();

  (*(a5 + 32))(a4, a5);
  v9 = sub_22CEDDF48();

  if (a3)
  {
    v10 = sub_22CEDDF48();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() endpointForMachName:v8 service:v9 instance:v10];

  return v11;
}

unint64_t sub_22CED58A4()
{
  result = qword_280AEE318;
  if (!qword_280AEE318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AEE318);
  }

  return result;
}

void sub_22CED58F0()
{
  qword_280AEE278 = 0xD000000000000015;
  unk_280AEE280 = 0x800000022CEDF080;
  qword_280AEE288 = 0xD000000000000019;
  unk_280AEE290 = 0x800000022CEDF0A0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_22CED59E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22CED5A60();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22CED5A60()
{
  result = qword_280AEE260;
  if (!qword_280AEE260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AEE260);
  }

  return result;
}

uint64_t KeepAliveTransaction.init(reason:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22CEDDEC8();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  (MEMORY[0x28223BE20])();
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22CEDDEE8();
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  (MEMORY[0x28223BE20])();
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CEDDE18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  *(v3 + 2) = 0;
  *(v3 + 4) = a1;
  *(v3 + 5) = a2;

  sub_22CEDDE08();
  v20 = OBJC_IVAR____TtC17SessionFoundation20KeepAliveTransaction_logger;
  (*(v13 + 32))(&v3[OBJC_IVAR____TtC17SessionFoundation20KeepAliveTransaction_logger], v19, v12);
  (*(v13 + 16))(v17, &v3[v20], v12);

  v21 = sub_22CEDDDF8();
  v22 = sub_22CEDE068();

  v23 = os_log_type_enabled(v21, v22);
  v48 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v41 = a2;
    v25 = v6;
    v26 = a1;
    v27 = v24;
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136446210;
    v29 = v26;
    v6 = v25;
    a2 = v41;
    *(v27 + 4) = sub_22CED6130(v29, v41, &aBlock);
    _os_log_impl(&dword_22CED4000, v21, v22, "Acquiring keep-alive with reason: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2318C30F0](v28, -1, -1);
    MEMORY[0x2318C30F0](v27, -1, -1);
  }

  (*(v13 + 8))(v17, v12);
  sub_22CED6364(0, &qword_280AEDE70, 0x277D85CA0);
  if (qword_280AEDEC0 != -1)
  {
    swift_once();
  }

  v41 = qword_280AEDED0;
  *(v3 + 3) = sub_22CEDE0C8();
  swift_getObjectType();
  v30 = swift_allocObject();
  v31 = v48;
  v30[2] = v3;
  v30[3] = v31;
  v30[4] = a2;
  v30[5] = v6;
  v32 = v6;
  v53 = sub_22CEDC070;
  v54 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22CED925C;
  v52 = &block_descriptor;
  v33 = _Block_copy(&aBlock);

  v34 = v42;
  sub_22CEDDED8();
  v35 = v44;
  sub_22CED63BC();
  sub_22CEDE0D8();
  _Block_release(v33);
  (*(v46 + 8))(v35, v47);
  (*(v43 + 8))(v34, v45);

  v36 = *(v3 + 3);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22CEDE0F8();
  swift_unknownObjectRelease();
  v37 = swift_allocObject();
  v37[2] = v3;
  v37[3] = v31;
  v37[4] = a2;
  v37[5] = v32;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_22CED6584;
  *(v38 + 24) = v37;
  v53 = sub_22CED655C;
  v54 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22CED6534;
  v52 = &block_descriptor_9;
  v39 = _Block_copy(&aBlock);

  dispatch_sync(v41, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t KeepAliveTransaction.__allocating_init(reason:)(uint64_t a1, NSObject *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  KeepAliveTransaction.init(reason:)(a1, a2);
  return v7;
}

uint64_t sub_22CED6130(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22CED6258(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22CED61FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_22CED61FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22CED6258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22CED73F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22CEDE178();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22CED6364(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22CED63BC()
{
  sub_22CEDDEC8();
  sub_22CED6494(&qword_280AEDEB8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1980, &qword_22CEDEBD0);
  sub_22CED64DC(&unk_280AEDEA8, &qword_27D9F1980, &qword_22CEDEBD0);
  return sub_22CEDE128();
}

uint64_t sub_22CED6494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CED64DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22CED655C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_22CED6590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_27D9F1978)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_22CEDDF58();
    v7 = os_transaction_create();

    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    swift_unknownObjectRelease();
    if (qword_27D9F1748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = off_27D9F1750;
    if (*(off_27D9F1750 + 2) && (v10 = sub_22CED6994(a2, a3), (v11 & 1) != 0))
    {
      v12 = *(v9[7] + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    swift_endAccess();
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = off_27D9F1750;
      off_27D9F1750 = 0x8000000000000000;
      sub_22CED6830(v12 + 1, a2, a3, isUniquelyReferenced_nonNull_native);
      off_27D9F1750 = v22;
      swift_endAccess();
      v14 = sub_22CEDDDF8();
      v15 = sub_22CEDE068();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;

        v18 = sub_22CEDDF38();
        v20 = v19;

        v21 = sub_22CED6130(v18, v20, &v23);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_22CED4000, v14, v15, "Keep-alive reasons: %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x2318C30F0](v17, -1, -1);
        MEMORY[0x2318C30F0](v16, -1, -1);
      }
    }
  }
}

unint64_t sub_22CED6830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22CED6994(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CEDC3D4(v16, a4 & 1);
      v20 = *v5;
      result = sub_22CED6994(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22CEDE1C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22CEDC674();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_22CED6994(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22CEDE1E8();
  sub_22CEDDF68();
  v6 = sub_22CEDE208();

  return sub_22CED6A0C(a1, a2, v6);
}

unint64_t sub_22CED6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22CEDE1B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CED6B34()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v0[2] = 0;
  swift_unknownObjectRelease();
  v4 = v0[3];
  swift_getObjectType();
  sub_22CEDE0E8();

  v5 = sub_22CEDDDF8();
  v6 = sub_22CEDE068();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22CED6130(v1[4], v1[5], v15);
    _os_log_impl(&dword_22CED4000, v5, v6, "Releasing keep-alive with reason: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318C30F0](v8, -1, -1);
    MEMORY[0x2318C30F0](v7, -1, -1);
  }

  if (qword_280AEDEC0 != -1)
  {
    swift_once();
  }

  v9 = qword_280AEDED0;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22CED6E08;
  *(v11 + 24) = v10;
  v15[4] = sub_22CED7150;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_22CED6534;
  v15[3] = &block_descriptor_19;
  v12 = _Block_copy(v15);

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CED6DCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22CED6E10(uint64_t a1)
{
  if (qword_27D9F1748 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  swift_beginAccess();
  v4 = off_27D9F1750;
  if (*(off_27D9F1750 + 2) && (v5 = sub_22CED6994(v3, v2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 <= 0)
    {
      if (v7 != 1)
      {

        v10 = sub_22CEDDDF8();
        v11 = sub_22CEDE058();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v23[0] = v13;
          *v12 = 136446210;
          *(v12 + 4) = sub_22CED6130(v3, v2, v23);
          _os_log_impl(&dword_22CED4000, v10, v11, "Unbalanced acquire/release for keep-alive with reason: %{public}s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x2318C30F0](v13, -1, -1);
          MEMORY[0x2318C30F0](v12, -1, -1);
        }
      }

      swift_beginAccess();

      sub_22CED7154(0, 1, v3, v2);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = off_27D9F1750;
      off_27D9F1750 = 0x8000000000000000;
      sub_22CED6830(v8, v3, v2, isUniquelyReferenced_nonNull_native);
      off_27D9F1750 = v22;
    }

    swift_endAccess();
    v14 = sub_22CEDDDF8();
    v15 = sub_22CEDE068();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;

      v18 = sub_22CEDDF38();
      v20 = v19;

      v21 = sub_22CED6130(v18, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22CED4000, v14, v15, "Keep-alive reasons: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x2318C30F0](v17, -1, -1);
      MEMORY[0x2318C30F0](v16, -1, -1);
    }
  }
}

uint64_t sub_22CED7154(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_22CED6994(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CEDC674();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_22CED7240(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_22CED6830(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_22CED7240(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22CEDE138() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22CEDE1E8();

      sub_22CEDDF68();
      v13 = sub_22CEDE208();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CED73F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22CED743C(a1, a2);
  sub_22CED75E4(&unk_284025998);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22CED743C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22CED756C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22CEDE178();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22CEDDF88();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22CED756C(v10, 0);
        result = sub_22CEDE148();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22CED756C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1990, &qword_22CEDEC98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22CED75E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22CEDC19C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t KeepAliveTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 3);
  swift_unknownObjectRelease();
  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC17SessionFoundation20KeepAliveTransaction_logger;
  v5 = sub_22CEDDE18();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_22CED7810()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v5 = sub_22CEDE108();
  *v3 = v0;
  v3[1] = sub_22CED94C0;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822007B8](v6, 0, 0, 0x7461446863746566, 0xEB00000000292861, sub_22CED7E58, v7, v5);
}

uint64_t BufferedAsyncSequence.makeAsyncIterator()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  type metadata accessor for BufferedAsyncSequence.Iterator();
  v4 = swift_allocObject();

  sub_22CED7940(v5);
  return v4;
}

uint64_t *sub_22CED7940(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  v1[2] = v4;
  v1[4] = 0;
  v6 = *(v3 + 80);
  sub_22CEDE108();
  v1[5] = sub_22CEDDFA8();
  swift_getFunctionTypeMetadata1();
  v1[6] = sub_22CEDDF28();
  *(v1 + 56) = 0;
  v1[3] = a1;
  return v1;
}

uint64_t dispatch thunk of BufferedAsyncSequence.Iterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22CEDA788;

  return v8(a1);
}

uint64_t sub_22CED7B50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_22CED7B98, 0, 0);
}

uint64_t sub_22CED7B98()
{
  v1 = v0[4];
  if (!*(v1 + 32))
  {
    v0[2] = *(v1 + 24);
    v2 = v0[5];
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    v5 = *(v2 + 80);
    *(v4 + 16) = v5;
    *(v4 + 24) = v3;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    sub_22CEDDE88();

    swift_getWitnessTable();
    v8 = sub_22CEDDE98();

    v9 = *(v1 + 32);
    *(v1 + 32) = v8;
  }

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_22CED9DF4;
  v11 = v0[3];
  v12 = v0[4];

  return sub_22CED7E10(v11);
}

uint64_t sub_22CED7D9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CED7DD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CED7E10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22CED7810, 0, 0);
}

uint64_t sub_22CED7E60(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  sub_22CEDE108();
  v4 = sub_22CEDE028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_22CED807C(sub_22CEDA8A4, v10);
}

uint64_t sub_22CED7FD4()
{
  v1 = *(v0 + 16);
  sub_22CEDE108();
  v2 = sub_22CEDE028();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_22CED807C(void (*a1)(_BYTE *), uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  v7 = sub_22CEDE108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  (*(*(v6 - 8) + 56))(&v14[-v10], 1, 1, v6);
  v15 = 0;
  v12 = *(v3[2] + 16);
  os_unfair_lock_lock(v12);
  sub_22CED81EC(v3, v11, &v15, a1, a2);
  os_unfair_lock_unlock(v12);
  if (v15 == 1)
  {
    a1(v11);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22CED81EC(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v19 = a3;
  v9 = *(*a1 + 80);
  v10 = sub_22CEDE108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  swift_beginAccess();
  v22 = a1[5];
  sub_22CEDE008();
  swift_getWitnessTable();
  if (sub_22CEDE048())
  {
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = a4;
    v15[4] = a5;
    v20 = sub_22CEDA87C;
    v21 = v15;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_22CEDE008();

    sub_22CEDDFC8();
    result = swift_endAccess();
    v17 = 0;
  }

  else
  {
    swift_beginAccess();
    sub_22CEDDFD8();
    swift_endAccess();
    result = (*(v11 + 40))(a2, v14, v10);
    v17 = 1;
  }

  *v19 = v17;
  return result;
}

uint64_t sub_22CED841C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CED8468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22CEDDDE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CED8538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22CEDDDE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t type metadata accessor for TaskRequest()
{
  result = qword_280AEDE60;
  if (!qword_280AEDE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for KeepAliveTransaction()
{
  result = qword_27D9F1728;
  if (!qword_27D9F1728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCTarget.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_22CEDE108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v30 - v17;
  v19 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v3, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v21;
      if ([*v21 remoteTarget])
      {
        sub_22CEDE118();
        swift_unknownObjectRelease();
        sub_22CED8B30(v31, &v32);
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D9F18E0, &qword_22CEDEA40);
      v27 = swift_dynamicCast();
      v28 = *(v6 - 8);
      v30[0] = *(v28 + 56);
      (v30[0])(v18, v27 ^ 1u, 1, v6);
      (*(v8 + 16))(v15, v18, v7);
      if ((*(v28 + 48))(v15, 1, v6) == 1)
      {
        (*(v8 + 8))(v15, v7);
        [v24 activate];
        if ([v24 remoteTarget])
        {
          sub_22CEDE118();

          swift_unknownObjectRelease();
          sub_22CED8B30(v31, &v32);
        }

        else
        {

          v32 = 0u;
          v33 = 0u;
        }

        v29 = swift_dynamicCast();
        (v30[0])(v12, v29 ^ 1u, 1, v6);
        (*(v8 + 40))(v18, v12, v7);
      }

      else
      {

        (*(v8 + 8))(v15, v7);
      }

      return (*(v8 + 32))(a2, v18, v7);
    }

    else
    {
      return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
    }
  }

  else
  {
    v25 = *(v6 - 8);
    (*(v25 + 32))(a2, v21, v6);
    return (*(v25 + 56))(a2, 0, 1, v6);
  }
}

_OWORD *sub_22CED8B30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static KeepAliveTransaction.asyncTask(reason:queue:delay:wrapping:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v46 = a4;
  v47 = a5;
  v48 = a3;
  v52 = a1;
  v8 = sub_22CEDDEC8();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CEDDEE8();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22CEDDEB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22CEDDF18();
  v44 = *(v21 - 8);
  v45 = v21;
  v22 = *(v44 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v43 - v26;
  v28 = type metadata accessor for KeepAliveTransaction();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  result = KeepAliveTransaction.init(reason:)(v52, a2);
  if (a6 <= 0.0)
  {
    v40 = swift_allocObject();
    v41 = v47;
    v40[2] = v46;
    v40[3] = v41;
    v40[4] = v31;
    v58 = sub_22CED9200;
    v59 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_22CED925C;
    v57 = &block_descriptor_25;
    v42 = _Block_copy(&aBlock);

    sub_22CEDDED8();
    v53 = MEMORY[0x277D84F90];
    sub_22CED6494(&qword_280AEDEB8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1980, &qword_22CEDEBD0);
    sub_22CED64DC(&unk_280AEDEA8, &qword_27D9F1980, &qword_22CEDEBD0);
    sub_22CEDE128();
    MEMORY[0x2318C2B90](0, v15, v11, v42);
    _Block_release(v42);

    (*(v51 + 8))(v11, v8);
    (*(v49 + 8))(v15, v50);
  }

  v52 = v11;
  v33 = a6 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a6 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v33 < 9.22337204e18)
  {
    v34 = v33;
    sub_22CEDDEF8();
    *v20 = v34;
    (*(v17 + 104))(v20, *MEMORY[0x277D85178], v16);
    v43 = v27;
    sub_22CEDDF08();
    (*(v17 + 8))(v20, v16);
    v44 = *(v44 + 8);
    (v44)(v25, v45);
    v35 = swift_allocObject();
    v36 = v47;
    v35[2] = v46;
    v35[3] = v36;
    v35[4] = v31;
    v58 = sub_22CEDC2D8;
    v59 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_22CED925C;
    v57 = &block_descriptor_31;
    v37 = _Block_copy(&aBlock);

    sub_22CEDDED8();
    v53 = MEMORY[0x277D84F90];
    sub_22CED6494(&qword_280AEDEB8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1980, &qword_22CEDEBD0);
    sub_22CED64DC(&unk_280AEDEA8, &qword_27D9F1980, &qword_22CEDEBD0);
    v38 = v52;
    sub_22CEDE128();
    v39 = v43;
    MEMORY[0x2318C2B70](v43, v15, v38, v37);
    _Block_release(v37);

    (*(v51 + 8))(v38, v8);
    (*(v49 + 8))(v15, v50);
    (v44)(v39, v45);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22CED9218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22CED9264(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];

  v4(a1, v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CED9314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for XPCTarget();
  return XPCTarget.wrappedValue.getter(v5, a3);
}

uint64_t sub_22CED936C()
{
  MEMORY[0x2318C30F0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22CED93C0(uint64_t a1, int a2)
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

uint64_t sub_22CED93E0(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27D9F1718)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D9F1718);
    }
  }
}

uint64_t sub_22CED9460(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22CED7940(a1);
  return v2;
}

uint64_t sub_22CED94A0(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_22CED94C0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CED95B4(uint64_t a1)
{
  v2 = sub_22CEDE108();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2);
  sub_22CEDE028();
  return sub_22CEDE018();
}

void sub_22CED96A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v15 = 0;
  v5 = *(v1[2] + 16);
  v6 = v4;
  os_unfair_lock_lock(v5);
  sub_22CED9838(v2, a1, &v15);
  os_unfair_lock_unlock(v5);
  v7 = v15;
  if (v15)
  {
    v8 = *(v6 + 80);
    sub_22CEDE108();
    swift_getFunctionTypeMetadata1();
    if (sub_22CEDDFE8())
    {
      v9 = 0;
      v10 = (v7 + 40);
      while (1)
      {
        v11 = sub_22CEDDFB8();
        sub_22CEDDF98();
        if ((v11 & 1) == 0)
        {
          break;
        }

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }

        v14 = *(v10 - 1);
        v13 = *v10;

        v14(a1);

        ++v9;
        v10 += 2;
        if (v12 == sub_22CEDDFE8())
        {
          goto LABEL_7;
        }
      }

      sub_22CEDE168();
      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

uint64_t sub_22CED9838(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a1 + 80);
  v7 = sub_22CEDE108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v14 - v11;
  if ((*(a1 + 56) & 1) == 0)
  {
    swift_beginAccess();
    v14[7] = *(a1 + 48);
    swift_getFunctionTypeMetadata1();
    sub_22CEDE008();
    swift_getWitnessTable();
    if (sub_22CEDE048())
    {
      (*(v8 + 16))(v12, a2, v7);
      swift_beginAccess();
      sub_22CEDE008();
      sub_22CEDDFC8();
    }

    else
    {
      swift_beginAccess();
      v13 = *a3;
      *a3 = *(a1 + 48);

      swift_beginAccess();
      sub_22CEDDFF8();
    }

    return swift_endAccess();
  }

  return result;
}

void sub_22CED9A34()
{
  v1 = v0;
  v17 = *(*v0 + 80);
  v2 = sub_22CEDE108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  v18 = 0;
  v7 = *(v1[2] + 16);
  os_unfair_lock_lock(v7);
  sub_22CED9C8C(v1, &v18);
  os_unfair_lock_unlock(v7);
  v8 = v18;
  if (v18)
  {
    swift_getFunctionTypeMetadata1();
    if (sub_22CEDDFE8())
    {
      v9 = 0;
      v16[1] = v17 - 8;
      v10 = (v3 + 8);
      for (i = (v8 + 40); ; i += 2)
      {
        v12 = sub_22CEDDFB8();
        sub_22CEDDF98();
        if ((v12 & 1) == 0)
        {
          break;
        }

        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_13;
        }

        v15 = *(i - 1);
        v14 = *i;
        (*(*(v17 - 8) + 56))(v6, 1, 1);

        v15(v6);

        (*v10)(v6, v2);
        ++v9;
        if (v13 == sub_22CEDDFE8())
        {

          return;
        }
      }

      sub_22CEDE168();
      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_22CED9C8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *(a1 + 56) = 1;
  swift_beginAccess();
  v5 = *(v4 + 80);
  sub_22CEDE108();
  sub_22CEDE008();
  sub_22CEDDFF8();
  swift_endAccess();
  swift_beginAccess();
  v8 = a1[6];
  swift_getFunctionTypeMetadata1();
  sub_22CEDE008();
  swift_getWitnessTable();
  result = sub_22CEDE048();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v7 = *a2;
    *a2 = a1[6];

    swift_beginAccess();
    sub_22CEDDFF8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22CED9DF4()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CED9EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22CEDE108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
    sub_22CED96A0(v8);

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22CEDA024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22CEDE108();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(a3 - 8);
    (*(v11 + 16))(v9, a1, a3);
    (*(v11 + 56))(v9, 0, 1, a3);
    sub_22CED96A0(v9);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void *BufferedAsyncSequence.Iterator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t BufferedAsyncSequence.Iterator.__deallocating_deinit()
{
  BufferedAsyncSequence.Iterator.deinit();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_22CEDA228(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22CEDA2C4;

  return sub_22CED7B50(a1);
}

uint64_t sub_22CEDA2C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CEDA3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = *(a5 + 80);
  v15 = type metadata accessor for BufferedAsyncSequence.Iterator();
  *v13 = v6;
  v13[1] = sub_22CEDA49C;

  return MEMORY[0x282200320](a1, a2, a3, v15, a6);
}

uint64_t sub_22CEDA49C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CEDA598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = BufferedAsyncSequence.makeAsyncIterator()(a1);
  v5 = *v2;

  *a2 = v4;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_22CEDA6C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22CEDA708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CEDA788()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CEDA87C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_22CEDA8A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_22CEDE108();
  v4 = *(*(sub_22CEDE028() - 8) + 80);

  return sub_22CED95B4(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22CEDA98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_22CEDE108();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1);
  v11 = type metadata accessor for XPCTarget();
  return XPCTarget.wrappedValue.setter(v9, v11);
}

uint64_t XPCTarget.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 24);
  v10 = sub_22CEDE108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  v16 = *(v9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v4 + 8))(v25, a2);
    v20 = *(v11 + 8);
    v20(a1, v10);
    v20(v15, v10);
  }

  else
  {
    v24 = *(v16 + 32);
    v24(v19, v15, v9);
    v21 = v25;
    (*(v4 + 32))(v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v7;
      [v22 invalidate];

      (*(v11 + 8))(a1, v10);
    }

    else
    {
      (*(v11 + 8))(a1, v10);
      (*(v4 + 8))(v7, a2);
    }

    v24(v21, v19, v9);
  }

  return swift_storeEnumTagMultiPayload();
}

void (*XPCTarget.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = sub_22CEDE108();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  XPCTarget.wrappedValue.getter(a2, v12);
  return sub_22CEDAEAC;
}

void sub_22CEDAEAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    XPCTarget.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    XPCTarget.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t XPCTarget.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v7;
  }

  else
  {
    result = (*(v4 + 8))(v7, a1);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t XPCTarget.Connection.isActive.getter()
{
  if (!*v0)
  {
    v5 = 0u;
    v6 = 0u;
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  if ([*v0 remoteTarget])
  {
    sub_22CEDE118();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_8;
  }

  v1 = 1;
LABEL_9:
  sub_22CEDB104(&v5);
  return v1;
}

uint64_t sub_22CEDB104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D9F18E0, &qword_22CEDEA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CEDB18C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_22CEDB2A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

uint64_t sub_22CEDB45C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22CEDB498(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22CEDB4F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t TaskRequest.WakeType.hashValue.getter()
{
  v1 = *v0;
  sub_22CEDE1E8();
  MEMORY[0x2318C2CE0](v1);
  return sub_22CEDE208();
}

uint64_t sub_22CEDB5F8()
{
  v1 = *v0;
  sub_22CEDE1E8();
  MEMORY[0x2318C2CE0](v1);
  return sub_22CEDE208();
}

uint64_t sub_22CEDB66C()
{
  v1 = *v0;
  sub_22CEDE1E8();
  MEMORY[0x2318C2CE0](v1);
  return sub_22CEDE208();
}

uint64_t TaskRequest.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22CEDDDE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TaskRequest.date.setter(uint64_t a1)
{
  v3 = sub_22CEDDDE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TaskRequest.wakeType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TaskRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TaskRequest.wakeType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TaskRequest();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t TaskRequest.explanation.getter()
{
  v1 = (v0 + *(type metadata accessor for TaskRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TaskRequest.explanation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TaskRequest() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TaskRequest.keepAlive.setter(char a1)
{
  result = type metadata accessor for TaskRequest();
  *(v1 + *(result + 28)) = a1;
  return result;
}

int *TaskRequest.init(date:wakeType:keepAlive:explanation:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = sub_22CEDDDE8();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for TaskRequest();
  *(a6 + result[5]) = v11;
  *(a6 + result[7]) = a3;
  v14 = (a6 + result[6]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

unint64_t sub_22CEDBA60()
{
  result = qword_27D9F1968;
  if (!qword_27D9F1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F1968);
  }

  return result;
}

uint64_t sub_22CEDBAB4()
{
  result = sub_22CEDDDE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRequest.WakeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskRequest.WakeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22CEDBCB4()
{
  v8 = sub_22CEDE098();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_22CEDE078() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_22CEDDEE8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_22CED6364(0, &qword_280AEDE78, 0x277D85C78);
  sub_22CEDDED8();
  v9 = MEMORY[0x277D84F90];
  sub_22CED6494(&unk_280AEDE80, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1998, &unk_22CEDECA0);
  sub_22CED64DC(qword_280AEDE90, &qword_27D9F1998, &unk_22CEDECA0);
  sub_22CEDE128();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_22CEDE0B8();
  qword_280AEDED0 = result;
  return result;
}

uint64_t sub_22CEDBF28(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;

    v6 = sub_22CEDDDF8();
    v7 = sub_22CEDE068();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22CED6130(a2, a3, &v11);
      _os_log_impl(&dword_22CED4000, v6, v7, "Dropping transaction for SIGTERM: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2318C30F0](v9, -1, -1);
      MEMORY[0x2318C30F0](v8, -1, -1);
    }

    byte_27D9F1978 = 1;
    v10 = *(v5 + 16);
    *(v5 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static KeepAliveTransaction.with<A>(reason:_:)(uint64_t a1, NSObject *a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for KeepAliveTransaction();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = KeepAliveTransaction.init(reason:)(a1, a2);
  a3(v9);
  sub_22CED6B34();
}

char *KeepAliveTransaction.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 3);
  swift_unknownObjectRelease();
  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC17SessionFoundation20KeepAliveTransaction_logger;
  v5 = sub_22CEDDE18();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

char *sub_22CEDC19C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1990, &qword_22CEDEC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22CEDC2F8()
{
  result = sub_22CEDDE18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22CEDC3D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1988, &qword_22CEDEC90);
  v38 = a2;
  result = sub_22CEDE198();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22CEDE1E8();
      sub_22CEDDF68();
      result = sub_22CEDE208();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_22CEDC674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F1988, &qword_22CEDEC90);
  v2 = *v0;
  v3 = sub_22CEDE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SessionFoundation::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

uint64_t static XPCInterfaceDomain.activitykit.getter@<X0>(void *a1@<X8>)
{
  if (qword_280AEE270 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_280AEE280;
  v2 = qword_280AEE288;
  v3 = unk_280AEE290;
  *a1 = qword_280AEE278;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

Swift::Void __swiftcall BSServiceConnectionListenerConfiguring.setDomain(_:)(SessionFoundation::XPCInterfaceDomain a1)
{
  v3 = *a1.domain._countAndFlagsBits;
  v2 = *(a1.domain._countAndFlagsBits + 8);
  v4 = sub_22CEDDF48();
  [v1 setDomain_];
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22CEDC938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22CEDC980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationName(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NotificationName(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t Publisher.catchAndConsume(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  (*(v9 + 32))(a4, v12, a3);
  v13 = (a4 + *(type metadata accessor for CatchAndConsume() + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t CatchAndConsume.init(upstream:errorHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for CatchAndConsume();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t CatchAndConsume.errorHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t CatchAndConsume.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a1;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v26 = *(v11 + 16);
  v27 = v13;
  v28 = v12;
  v29 = v14;
  v15 = type metadata accessor for CatchAndConsume.Inner();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  (*(v7 + 16))(v10, v25, a3);
  v20 = (v4 + *(a2 + 36));
  v21 = *v20;
  v22 = v20[1];

  sub_22CEDCF38(v10, v21, v22, a3, v19);
  swift_getWitnessTable();
  sub_22CEDDEA8();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_22CEDCF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for CatchAndConsume.Inner();
  v9 = (a5 + *(v8 + 52));
  *v9 = a2;
  v9[1] = a3;
  v10 = a5 + *(v8 + 56);
  return sub_22CEDDE28();
}

void sub_22CEDCFF0(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0x646E416863746143;
  a1[1] = 0xEF656D75736E6F43;
}

uint64_t sub_22CEDD044(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_22CEDDE78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24[-v12];
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v24[-v16];
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    v18 = v2 + *(a2 + 52);
    v20 = *v18;
    v19 = *(v18 + 8);
    v20(v17);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  v24[15] = 1;
  v21 = *(a2 + 24);
  v22 = *(a2 + 40);
  return sub_22CEDDE48();
}

uint64_t sub_22CEDD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_22CEDDE38();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_22CEDD35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22CEDD6D8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22CEDD3E4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_22CEDD520(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_22CEDD6D8()
{
  result = qword_27D9F19A8[0];
  if (!qword_27D9F19A8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D9F19A8);
  }

  return result;
}

unint64_t sub_22CEDD730(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22CEDD6D8();
    if (v4 <= 0x3F)
    {
      result = sub_22CEDDE38();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22CEDD7D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22CEDDE38();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 16) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_22CEDDA74(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_22CEDDE38() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_52:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v14)
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v24 = *(v10 + 56);

      v24((v23 + v12 + 16) & ~v12, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = (a2 - 1);
    }
  }
}

uint64_t sub_22CEDDDC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}