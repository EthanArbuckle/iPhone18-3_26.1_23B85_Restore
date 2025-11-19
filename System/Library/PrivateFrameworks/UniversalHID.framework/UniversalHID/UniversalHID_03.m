uint64_t sub_2707325D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27073262C()
{
  result = qword_280829858;
  if (!qword_280829858)
  {
    sub_2707A8480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829858);
  }

  return result;
}

unint64_t sub_270732684()
{
  result = qword_280829860;
  if (!qword_280829860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28082A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829860);
  }

  return result;
}

void HIDVirtualServicePool.sendReport<A>(_:from:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v41 = v3;
  v42 = v4;
  v6 = v5;
  v38 = v8;
  v39 = v7;
  v43 = sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  v46 = v9;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v44 = v13;
  v45 = v12;
  MEMORY[0x28223BE20](v12, v14);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9_6();
  v15 = *(v6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17, v18);
  v19 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EventReportSenderID();
  v21 = OUTLINED_FUNCTION_4_9(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  v27 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  sub_2707230C4(v38, v27);
  (*(v15 + 16))(v19, v39, v6);
  v28 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v29 = (v25 + *(v15 + 80) + v28) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v32 = v41;
  v31 = v42;
  *(v30 + 2) = v6;
  *(v30 + 3) = v32;
  *(v30 + 4) = v31;
  *(v30 + 5) = v2;
  sub_270723128(v27, &v30[v28]);
  (*(v15 + 32))(&v30[v29], v19, v6);
  v48[4] = sub_2707330C8;
  v48[5] = v30;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v48[2] = v33;
  v48[3] = &block_descriptor_6;
  v34 = _Block_copy(v48);

  sub_2707A8490();
  v47 = MEMORY[0x277D84F90];
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_270732684();
  sub_2707A8A90();
  v35 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v35);
  _Block_release(v34);
  v36 = OUTLINED_FUNCTION_58();
  v37(v36);
  (*(v44 + 8))(v1, v45);

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_270732A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v51 = a6;
  v10 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - v20;
  v22 = sub_2707378EC(a2);
  if (v22)
  {
    v23 = v22;
    v24 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gestures;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v26 = *(a5 + 24);

    v27 = v26(a4, a5);
    sub_270735918(v27, v25, &v52);

    if (v53)
    {
      sub_27070F8A8(&v52, v55);
      v28 = v56;
      v29 = v57;
      v30 = __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_27073319C(v50, v30, a2, v23, v28, a4, v29);

      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    sub_2707350C8(&v52, &qword_280829868);
    sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v17);
    v34 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v17, 1, v34) == 1)
    {

      v33 = v17;
      return sub_2707350C8(v33, &unk_28082A120);
    }

    v45 = sub_2707A8420();
    v46 = sub_2707A8830();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 16777472;
      v51 = v45;
      v48 = v26(a4, a5);
      v45 = v51;
      v47[4] = v48;
      _os_log_impl(&dword_270703000, v45, v46, "unexpected report ID: 0x%hhx", v47, 5u);
      MEMORY[0x2743A9010](v47, -1, -1);
    }

    return (*(*(v34 - 8) + 8))(v17, v34);
  }

  else
  {
    sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v21);
    v32 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v21, 1, v32) == 1)
    {
      v33 = v21;
      return sub_2707350C8(v33, &unk_28082A120);
    }

    sub_2707230C4(a2, v13);
    v35 = sub_2707A8420();
    v36 = sub_2707A8830();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v52 = v51;
      *v37 = 136315138;
      LODWORD(v50) = v36;
      sub_2707A83C0();
      v38 = sub_270748CAC(8);
      v39 = MEMORY[0x2743A7BA0](v38);
      v41 = v40;

      v55[0] = v39;
      v55[1] = v41;
      MEMORY[0x2743A7BE0](58, 0xE100000000000000);
      v54 = *&v13[*(v10 + 20)];
      sub_270735074();
      v42 = sub_2707A8680();
      MEMORY[0x2743A7BE0](v42);

      sub_27072318C(v13);
      v43 = sub_27073D0F4();

      *(v37 + 4) = v43;
      _os_log_impl(&dword_270703000, v35, v50, "%s: no virtual service; dropping events", v37, 0xCu);
      v44 = v51;
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x2743A9010](v44, -1, -1);
      MEMORY[0x2743A9010](v37, -1, -1);
    }

    else
    {

      sub_27072318C(v13);
    }

    return (*(*(v32 - 8) + 8))(v21, v32);
  }
}

uint64_t sub_270732F84()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + *(v6 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v4 | v8;

  sub_2707A8410();
  OUTLINED_FUNCTION_6_8();
  (*(v12 + 8))(v0 + v5);
  (*(v7 + 8))(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2707330C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v10 = v0[5];
  v11 = v0 + ((v9 + *(v8 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_270732A50(v10, v0 + v9, v11, v1, v2, v3);
}

uint64_t sub_27073319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v43 = a1;
  v40 = a5;
  v41 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_2707A8930();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  v44 = a6;
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v33 - v21;
  v23 = sub_2707A84C0();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = (&v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v7;
  v29 = *(v7 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  *v28 = v29;
  (*(v24 + 104))(v28, *MEMORY[0x277D85200], v23, v26);
  v30 = v29;
  LOBYTE(v29) = sub_2707A84D0();
  result = (*(v24 + 8))(v28, v23);
  if (v29)
  {
    (*(v14 + 16))(v18, v43, v44);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
      v32 = v34;
      (*(v34 + 32))(v22, v13, AssociatedTypeWitness);
      sub_270733518(v22, v37, v38, v39, v40, v41);
      return (*(v32 + 8))(v22, AssociatedTypeWitness);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v13, 1, 1, AssociatedTypeWitness);
      return (*(v35 + 8))(v13, v36);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270733518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a3;
  v67 = a1;
  v68 = a2;
  v58 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v58, v10);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v62 = &v57 - v14;
  v63 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v66 = AssociatedTypeWitness;
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v19 = &v57 - v18;
  v20 = *(a5 - 8);
  v22 = MEMORY[0x28223BE20](v17, v21);
  v61 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v57 - v25;
  v27 = sub_2707A84C0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = (&v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v6;
  v32 = *(v6 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_2707A84D0();
  result = (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v35 = *(a4 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service);
  if (!v35)
  {
    v38 = v62;
    sub_270734E94(v64 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v62);
    v39 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
    {
      return sub_2707350C8(v38, &unk_28082A120);
    }

    v46 = v60;
    sub_2707230C4(v59, v60);
    v47 = sub_2707A8420();
    v48 = sub_2707A8830();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72 = v50;
      *v49 = 136315138;
      sub_2707A83C0();
      v51 = sub_270748CAC(8);
      v52 = MEMORY[0x2743A7BA0](v51);
      v54 = v53;

      v70 = v52;
      v71 = v54;
      MEMORY[0x2743A7BE0](58, 0xE100000000000000);
      v69 = *(v46 + *(v58 + 20));
      sub_270735074();
      v55 = sub_2707A8680();
      MEMORY[0x2743A7BE0](v55);

      sub_27072318C(v46);
      v56 = sub_27073D0F4();

      *(v49 + 4) = v56;
      _os_log_impl(&dword_270703000, v47, v48, "%s: no active virtual service; dropping events", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x2743A9010](v50, -1, -1);
      MEMORY[0x2743A9010](v49, -1, -1);
    }

    else
    {

      sub_27072318C(v46);
    }

    return (*(*(v39 - 8) + 8))(v38, v39);
  }

  v36 = *(v20 + 16);
  v36(v26, v68, a5);
  type metadata accessor for ScrollGesture();

  if (swift_dynamicCast())
  {

    v37 = v67;
    if (*(v35 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_shouldDispatchScrollEvents) != 1)
    {
    }
  }

  else
  {
    v37 = v67;
  }

  (*(v65 + 16))(v19, v37, v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v41 = v70;
  v40 = v71;
  v36(v61, v68, a5);
  type metadata accessor for KeyboardGesture(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_270708D74(v41, v40);
LABEL_19:
    v45 = (*(v63 + 32))(v37, a5);
    goto LABEL_20;
  }

  v42 = v70;
  v43 = *(a4 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_client);
  if (!v43)
  {

    goto LABEL_18;
  }

  v44 = v43;
  v45 = sub_270733C18(v41, v40, v44, v42, v35);
  sub_270708D74(v41, v40);

LABEL_20:
  if (*(v45 + 16))
  {
    sub_27077A3AC(v45, sub_270733F24, 0);
  }
}

uint64_t sub_270733C18(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v19 = 0;
  v10 = *(a5 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_queue);
  v11 = swift_allocObject();
  *(v11 + 16) = &v19;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_270735154;
  *(v12 + 24) = v11;
  aBlock[4] = sub_27073516C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270733FAC;
  aBlock[3] = &block_descriptor_24;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v16 = KeyboardGesture.dispatch(keyboardReport:localCapsLockState:)(a1, a2, v19);
    if (v19 != (v15 & 1))
    {
      HIDVirtualService.setClientCapsLockEnaged(_:client:)(v15 & 1, v17);
    }

    return v16;
  }

  return result;
}

uint64_t sub_270733F24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 352))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_270733F7C(BOOL *a1)
{
  result = BKSHIDServicesIsCapsLockLightOn();
  *a1 = result != 0;
  return result;
}

Swift::Void __swiftcall HIDVirtualServicePool.resetGestureState()()
{
  OUTLINED_FUNCTION_11_0();
  sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_30_1();
  v4 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9_6();
  v14[4] = sub_270734368;
  v15 = v0;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v14[2] = v9;
  v14[3] = &block_descriptor_9;
  v10 = _Block_copy(v14);

  sub_2707A8490();
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_270732684();
  OUTLINED_FUNCTION_5_9();
  sub_2707A8A90();
  v11 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v11);
  _Block_release(v10);
  v12 = OUTLINED_FUNCTION_58();
  v13(v12);
  (*(v6 + 8))(v1, v4);

  OUTLINED_FUNCTION_12_0();
}

void sub_2707341E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, &v10 - v4);
  v6 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2707350C8(v5, &unk_28082A120);
  }

  else
  {
    v7 = sub_2707A8420();
    v8 = sub_2707A8840();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_270703000, v7, v8, "Reset gestures for each service", v9, 2u);
      MEMORY[0x2743A9010](v9, -1, -1);
    }

    (*(*(v6 - 8) + 8))(v5, v6);
  }

  sub_270737974();
}

void sub_270734370()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v34 = v4;
  v5 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_30_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v10 - 8, v11);
  OUTLINED_FUNCTION_9_6();
  if (!v3)
  {
LABEL_22:
    OUTLINED_FUNCTION_12_0();
    return;
  }

  sub_270734E94(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v1);
  v12 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {

    sub_2707350C8(v1, &unk_28082A120);
  }

  else
  {
    sub_2707230C4(v34, v9);

    v13 = sub_2707A8420();
    v14 = sub_2707A8840();
    if (os_log_type_enabled(v13, v14))
    {
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v36 = v33;
      *v31 = 136446210;
      v32 = v14;
      sub_2707A83C0();
      v15 = sub_270748CAC(8);
      v16 = MEMORY[0x2743A7BA0](v15);
      v18 = v17;

      *&v39[0] = v16;
      *(&v39[0] + 1) = v18;
      MEMORY[0x2743A7BE0](58, 0xE100000000000000);
      *&v35[0] = *(v9 + *(v5 + 20));
      sub_270735074();
      v19 = sub_2707A8680();
      MEMORY[0x2743A7BE0](v19);

      sub_27072318C(v9);
      v20 = sub_27073D0F4();

      *(v31 + 4) = v20;
      _os_log_impl(&dword_270703000, v13, v32, "%{public}s: Reset Gestures", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x2743A9010](v33, -1, -1);
      MEMORY[0x2743A9010](v31, -1, -1);
    }

    else
    {

      sub_27072318C(v9);
    }

    (*(*(v12 - 8) + 8))(v1, v12);
  }

  v21 = *(v3 + 16);
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_16:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = v28 | (v27 << 6);
      v30 = *(*(v21 + 48) + v29);
      sub_27070F5BC(*(v21 + 56) + 40 * v29, v35);
      LOBYTE(v36) = v30;
      sub_27070F8A8(v35, &v36 + 8);
LABEL_17:
      v39[1] = v37;
      v39[2] = v38;
      v39[0] = v36;
      if (!v38)
      {
        break;
      }

      sub_27070F8A8((v39 + 8), &v36);
      __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      sub_270734F04();
      __swift_destroy_boxed_opaque_existential_1(&v36);
      if (!v24)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_22;
  }

LABEL_12:
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v24 = 0;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      goto LABEL_17;
    }

    v24 = *(v21 + 64 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void HIDVirtualServicePool.resetGestureState(for:)()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_30_1();
  v25 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for EventReportSenderID();
  v11 = OUTLINED_FUNCTION_4_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v24[1] = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  sub_2707230C4(v3, v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  sub_270723128(v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v27[4] = sub_270734E30;
  v27[5] = v18;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v27[2] = v19;
  v27[3] = &block_descriptor_15;
  v20 = _Block_copy(v27);

  sub_2707A8490();
  v26 = MEMORY[0x277D84F90];
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_270732684();
  OUTLINED_FUNCTION_5_9();
  sub_2707A8A90();
  v21 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v21);
  _Block_release(v20);
  v22 = OUTLINED_FUNCTION_58();
  v23(v22);
  (*(v7 + 8))(v1, v25);

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_270734A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  if (sub_2707378EC(a2))
  {

    sub_270734370();
  }

  else
  {
    sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v11);
    v13 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
    {
      return sub_2707350C8(v11, &unk_28082A120);
    }

    else
    {
      sub_2707230C4(a2, v7);
      v14 = sub_2707A8420();
      v15 = sub_2707A8830();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29 = v25;
        *v16 = 136446210;
        sub_2707A83C0();
        v17 = sub_270748CAC(8);
        v18 = MEMORY[0x2743A7BA0](v17);
        v20 = v19;

        v27 = v18;
        v28 = v20;
        MEMORY[0x2743A7BE0](58, 0xE100000000000000);
        v26 = *&v7[*(v4 + 20)];
        sub_270735074();
        v21 = sub_2707A8680();
        MEMORY[0x2743A7BE0](v21);

        sub_27072318C(v7);
        v22 = sub_27073D0F4();

        *(v16 + 4) = v22;
        _os_log_impl(&dword_270703000, v14, v15, "%{public}s: Failed to reset gestures", v16, 0xCu);
        v23 = v25;
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x2743A9010](v23, -1, -1);
        MEMORY[0x2743A9010](v16, -1, -1);
      }

      else
      {

        sub_27072318C(v7);
      }

      return (*(*(v13 - 8) + 8))(v11, v13);
    }
  }
}

uint64_t sub_270734D70()
{
  v1 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  sub_2707A8410();
  OUTLINED_FUNCTION_6_8();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_270734E30()
{
  v1 = *(type metadata accessor for EventReportSenderID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_270734A1C(v2, v3);
}

uint64_t sub_270734E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270734F04()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v2);
  v4 = &v7 - v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  HIDVirtualServicePool.sendReport<A>(_:from:)();
  return (*(v1 + 8))(v4, AssociatedTypeWitness);
}

unint64_t sub_270735074()
{
  result = qword_28082A1D0;
  if (!qword_28082A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A1D0);
  }

  return result;
}

uint64_t sub_2707350C8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_6_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_27073511C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_270735194()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_2707A84B0();
}

uint64_t HIDReportDescriptor.reportBitCount(for:)(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v4 = swift_allocObject();
  sub_2707373D4();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = sub_2707A8520();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2707A8520();
  v58[0] = v5;
  sub_270706C38(v2, v3);
  swift_beginAccess();
  while (2)
  {
    v6 = v2;
    v7 = v3 >> 62;
    switch(v3 >> 62)
    {
      case 1uLL:
        v8 = v6 >> 32;
        v9 = v6;
        goto LABEL_7;
      case 2uLL:
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
LABEL_7:
        if (v9 != v8)
        {
          goto LABEL_8;
        }

        goto LABEL_54;
      case 3uLL:
        goto LABEL_54;
      default:
        if ((v3 & 0xFF000000000000) != 0)
        {
LABEL_8:
          v10 = OUTLINED_FUNCTION_4_10();
          sub_270706C38(v10, v11);
          v12 = OUTLINED_FUNCTION_4_10();
          v14 = sub_270735CE4(v12, v13);
          v16 = v14;
          v17 = v15;
          v18 = 0;
          switch(v15 >> 62)
          {
            case 1uLL:
              if (__OFSUB__(HIDWORD(v14), v14))
              {
                goto LABEL_65;
              }

              v18 = HIDWORD(v14) - v14;
LABEL_13:
              if ((v18 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                JUMPOUT(0x270735800);
              }

LABEL_14:
              if (v7)
              {
                if (v7 == 2)
                {
                  v22 = *(v6 + 16);
                  v21 = *(v6 + 24);
                }

                else
                {
                  v22 = v6;
                  v21 = v6 >> 32;
                }

                if (v21 < v22)
                {
                  goto LABEL_58;
                }

                if (v7 == 2)
                {
                  v23 = *(v6 + 16);
                  v24 = *(v6 + 24);
                }

                else
                {
                  v24 = v6 >> 32;
                  v23 = v6;
                }
              }

              else
              {
                v22 = 0;
                v23 = 0;
                v21 = BYTE6(v3);
                v24 = BYTE6(v3);
              }

              if (v24 < v21 || v21 < v23)
              {
                goto LABEL_59;
              }

              if (__OFSUB__(v21, v22))
              {
                goto LABEL_60;
              }

              if (v21 - v22 >= v18)
              {
                v26 = v22 + v18;
                if (__OFADD__(v22, v18))
                {
                  goto LABEL_62;
                }

                v27 = 0;
                v28 = 0;
                switch(v7)
                {
                  case 1:
                    v27 = v6 >> 32;
                    v28 = v6;
                    break;
                  case 2:
                    v28 = *(v6 + 16);
                    v27 = *(v6 + 24);
                    break;
                  case 3:
                    break;
                  default:
                    v28 = 0;
                    v27 = BYTE6(v3);
                    break;
                }

                if (v27 < v26 || v26 < v28)
                {
                  goto LABEL_63;
                }

                v30 = 0;
                switch(v7)
                {
                  case 1:
                    v30 = v6 >> 32;
                    break;
                  case 2:
                    v30 = *(v6 + 24);
                    break;
                  case 3:
                    break;
                  default:
                    v30 = BYTE6(v3);
                    break;
                }

                if (v30 < v26)
                {
                  goto LABEL_61;
                }
              }

              v2 = sub_2707A82D0();
              v3 = v31;
              v32 = OUTLINED_FUNCTION_4_10();
              sub_270708D74(v32, v33);
              v56 = &unk_28807A7C0;
              v57 = &off_28807A7E0;
              *&v55 = v16;
              *(&v55 + 1) = v17;
              sub_27070F8A8(&v55, v52 + 1);
              v34 = v53;
              v35 = v54;
              __swift_project_boxed_opaque_existential_1((v52 + 1), v53);
              v36 = (*(v35 + 32))(v52, v34, v35);
              switch(LOBYTE(v52[0]))
              {
                case 1:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                case 0x15:
                case 0x16:
                case 0x17:
                case 0x18:
                case 0x19:
                case 0x1A:
                case 0x1B:
                  goto LABEL_44;
                case 0xC:
                  MEMORY[0x28223BE20](v36, v37);
                  OUTLINED_FUNCTION_1_13();
                  v39 = sub_270737430;
                  goto LABEL_52;
                case 0xD:
                  __swift_project_boxed_opaque_existential_1((v52 + 1), v53);
                  v40 = OUTLINED_FUNCTION_46();
                  v42 = sub_270736080(v40, v41);
                  if ((v42 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_66;
                  }

                  if (v42 > 0xFF)
                  {
                    goto LABEL_67;
                  }

                  *(v51 + 16) = v42;
                  sub_2707367A0(v50, v51, v4);
LABEL_44:
                  __swift_destroy_boxed_opaque_existential_1(v52 + 1);
                  break;
                case 0xE:
                  MEMORY[0x28223BE20](v36, v37);
                  OUTLINED_FUNCTION_1_13();
                  v39 = sub_270737428;
LABEL_52:
                  sub_270736E78(v39, v38, v50, v51, v4);
                  goto LABEL_44;
                case 0xF:
                  sub_2707369DC(v50, v51, v4, v58);
                  goto LABEL_44;
                case 0x10:
                  sub_270736C30(v50, v51, v4, v58);
                  goto LABEL_44;
                default:
                  sub_270736544(v50, v51, v4);
                  goto LABEL_44;
              }

              break;
            case 2uLL:
              v20 = *(v14 + 16);
              v19 = *(v14 + 24);
              v18 = v19 - v20;
              if (!__OFSUB__(v19, v20))
              {
                goto LABEL_13;
              }

              goto LABEL_64;
            case 3uLL:
              goto LABEL_14;
            default:
              v18 = BYTE6(v15);
              goto LABEL_14;
          }

          continue;
        }

LABEL_54:
        v43 = OUTLINED_FUNCTION_4_10();
        sub_270708D74(v43, v44);
        swift_beginAccess();
        v45 = sub_2707358C0(a1, *(v4 + 16));
        v47 = v46;
        swift_endAccess();
        if (v47)
        {
          v45 = 0;
        }

        return v45;
    }
  }
}

uint64_t sub_2707358C0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_270721EA0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_270735918@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_270721EA0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_27070F5BC(v7, a3);
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

double sub_270735984@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_270721FD8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2707374F8(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2707359E8(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2707220FC(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

BOOL sub_270735A38(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

BOOL sub_270735A9C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v2 = 8 * a1;
      v3 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a1 + 16);
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_9;
      }

      v2 = 8 * v4;
      v3 = *(a1 + 24);
LABEL_6:
      if ((v3 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x270735B28);
      }

      return v2 == 8 * v3;
    case 3uLL:
      return v2 == 8 * v3;
    default:
      v2 = 0;
      v3 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t HIDReportDescriptor.Iterator.data.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t HIDReportDescriptor.Iterator.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double HIDReportDescriptor.Iterator.next()@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(v3 >> 62)
  {
    case 1uLL:
      v23 = v2;
      v24 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v23 = *(v2 + 16);
      v24 = *(v2 + 24);
LABEL_6:
      if (v23 == v24)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((v3 & 0xFF000000000000) != 0)
      {
LABEL_3:
        v5 = OUTLINED_FUNCTION_0_15();
        sub_270706C38(v5, v6);
        v7 = OUTLINED_FUNCTION_0_15();
        v9 = sub_270735CE4(v7, v8);
        v11 = v10;
        v12 = *v1;
        v13 = *(v1 + 8);
        sub_270706C38(*v1, v13);
        v14 = OUTLINED_FUNCTION_0_15();
        sub_270706C38(v14, v15);
        v16 = OUTLINED_FUNCTION_0_15();
        v17 = MEMORY[0x2743A78F0](v16);
        v18 = OUTLINED_FUNCTION_0_15();
        sub_270708D74(v18, v19);
        sub_270735E7C(v17, v12, v13, v25);
        v20 = v25[0];
        v21 = v25[1];
        sub_270708D74(*v1, *(v1 + 8));
        *v1 = v20;
        *(v1 + 8) = v21;
        *(a1 + 24) = &unk_28807A7C0;
        *(a1 + 32) = &off_28807A7E0;
        *a1 = v9;
        *(a1 + 8) = v11;
      }

      else
      {
LABEL_7:
        *(a1 + 32) = 0;
        result = 0.0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }

      return result;
  }
}

uint64_t sub_270735CE4(uint64_t a1, unint64_t a2)
{
  if (sub_270735A38(a1, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = sub_270743110(a1, a2);
  if (v4 != 2)
  {
    goto LABEL_5;
  }

  v5 = sub_2707A82E0();
  HIDReportDescriptor.ItemTag.init(rawValue:)(v5 >> 2);
  if (v9 == 28)
  {
LABEL_20:
    __break(1u);
    JUMPOUT(0x270735E5CLL);
  }

  if (v9 < 0x1Bu)
  {
LABEL_5:
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (MEMORY[0x2743A78F0](a1, a2) < 2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = sub_2707A82E0() + 4;
LABEL_10:
  v7 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1;
      break;
    case 2uLL:
      v7 = *(a1 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v7, v6))
  {
    goto LABEL_17;
  }

  if (v7 + v6 < v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2707A82D0();
  sub_270708D74(a1, a2);
  return OUTLINED_FUNCTION_0_15();
}

uint64_t sub_270735E7C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    JUMPOUT(0x270736004);
  }

  v5 = a3 >> 62;
  v9 = 0;
  v10 = BYTE6(a3);
  v11 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      v11 = a2;
      v9 = a2 >> 32;
      break;
    case 2uLL:
      v11 = *(a2 + 16);
      v9 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = 0;
      v9 = BYTE6(a3);
      break;
  }

  v12 = sub_27073729C(v11, v9, a2, a3);
  if (!a1 || v12 >= a1)
  {
    v13 = sub_270737224(v11, a1, a2, a3);
    v14 = 0;
    switch(v5)
    {
      case 1:
        v14 = a2 >> 32;
        break;
      case 2:
        v14 = *(a2 + 24);
        break;
      case 3:
        break;
      default:
        v14 = v10;
        break;
    }

    if (v14 < v13)
    {
      __break(1u);
    }
  }

  v15 = sub_2707A82D0();
  v17 = v16;
  result = sub_270708D74(a2, a3);
  *a4 = v15;
  a4[1] = v17;
  return result;
}

uint64_t HIDReportDescriptor.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_270706C38(v2, v3);
}

uint64_t sub_270736044@<X0>(uint64_t *a1@<X8>)
{
  HIDReportDescriptor.makeIterator()(a1);
  v2 = *v1;
  v3 = v1[1];

  return sub_270708D74(v2, v3);
}

uint64_t sub_270736080(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = v4();
  v7 = v5;
  switch(v6 >> 62)
  {
    case 1uLL:
      sub_270708D74(v5, v6);
      v8 = v7;
      break;
    case 2uLL:
      v8 = *(v5 + 16);
      sub_270708D74(v5, v6);
      break;
    default:
      sub_270708D74(v5, v6);
      v8 = 0;
      break;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = (*(a2 + 16))(a1, a2);
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v12 = (v4)(a1, a2);
  if (v11 < v9)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_2707A82D0();
  v18 = v17;
  sub_270708D74(v14, v15);
  v19 = OUTLINED_FUNCTION_28();
  v21 = sub_270736474(v19, v20);
  if ((v21 & 0x100) == 0)
  {
    v22 = (v21 << 8) >> 15;
    v23 = v18 >> 62;
    v24 = 0;
    switch(v18 >> 62)
    {
      case 1uLL:
        v25 = OUTLINED_FUNCTION_28();
        sub_270706C38(v25, v26);
        v24 = v16 >> 32;
        break;
      case 2uLL:
        v24 = *(v16 + 24);
        v27 = OUTLINED_FUNCTION_28();
        sub_270706C38(v27, v28);
        break;
      case 3uLL:
        goto LABEL_14;
      default:
        v24 = BYTE6(v18);
        break;
    }

    while (1)
    {
LABEL_14:
      v29 = v16;
      switch(v23)
      {
        case 0:
        case 3:
          if (!v24)
          {
            goto LABEL_38;
          }

          goto LABEL_19;
        case 1:
          goto LABEL_18;
        case 2:
          v29 = *(v16 + 16);
LABEL_18:
          if (v24 == v29)
          {
LABEL_38:
            v39 = OUTLINED_FUNCTION_28();
            sub_270708D74(v39, v40);
            goto LABEL_39;
          }

LABEL_19:
          if (__OFSUB__(v24--, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          switch(v23)
          {
            case 1:
              if (v24 < v16 || v24 >= v16 >> 32)
              {
                goto LABEL_43;
              }

              v37 = sub_2707A81F0();
              if (!v37)
              {
                goto LABEL_51;
              }

              v33 = v37;
              v38 = sub_2707A8210();
              v35 = v24 - v38;
              if (!__OFSUB__(v24, v38))
              {
                goto LABEL_36;
              }

              goto LABEL_45;
            case 2:
              if (v24 < *(v16 + 16))
              {
                goto LABEL_41;
              }

              if (v24 >= *(v16 + 24))
              {
                goto LABEL_44;
              }

              v32 = sub_2707A81F0();
              if (!v32)
              {
                goto LABEL_52;
              }

              v33 = v32;
              v34 = sub_2707A8210();
              v35 = v24 - v34;
              if (__OFSUB__(v24, v34))
              {
                goto LABEL_46;
              }

LABEL_36:
              v31 = *(v33 + v35);
LABEL_37:
              v22 = v31 | (v22 << 8);
              break;
            case 3:
              goto LABEL_50;
            default:
              if (v24 >= BYTE6(v18))
              {
                goto LABEL_42;
              }

              v44 = v16;
              v45 = v18;
              v46 = BYTE2(v18);
              v47 = BYTE3(v18);
              v48 = BYTE4(v18);
              v49 = BYTE5(v18);
              v31 = *(&v44 + v24);
              goto LABEL_37;
          }

          break;
        default:
          JUMPOUT(0);
      }
    }
  }

  v22 = 0;
LABEL_39:
  v41 = OUTLINED_FUNCTION_28();
  sub_270708D74(v41, v42);
  return v22;
}

uint64_t sub_270736474(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  v7 = a1 >> 32;
  switch(v3)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 == v9)
      {
        v6 = 0;
        v4 = 1;
        return v6 | (v4 << 8);
      }

      if (v3 == 2)
      {
        v7 = *(a1 + 24);
      }

      goto LABEL_10;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
        v7 = BYTE6(a2);
LABEL_10:
        if (__OFSUB__(v7, 1))
        {
          __break(1u);
          JUMPOUT(0x270736534);
        }

        v6 = sub_2707A82E0();
        v4 = 0;
      }

      else
      {
        v6 = 0;
      }

      return v6 | (v4 << 8);
  }
}

uint64_t sub_270736544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v8 = sub_270721EA0(v6);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829880);
  if (sub_2707A8C40())
  {
    v12 = sub_270721EA0(v6);
    if ((v11 & 1) != (v13 & 1))
    {
      goto LABEL_20;
    }

    v10 = v12;
  }

  *(a1 + 16) = v7;
  if ((v11 & 1) == 0)
  {
    sub_2707239B8(v10, v6, 0, 0, v7);
  }

  v14 = (v7[7] + 16 * v10);
  v16 = *v14;
  v15 = v14[1];
  v17 = v16 * v15;
  if ((v16 * v15) >> 64 != (v16 * v15) >> 63)
  {
    goto LABEL_17;
  }

  swift_endAccess();
  swift_beginAccess();
  v18 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  v20 = sub_270721EA0(v18);
  if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829888);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_12;
  }

  v24 = sub_270721EA0(v18);
  if ((v23 & 1) == (v25 & 1))
  {
    v22 = v24;
LABEL_12:
    *(a3 + 16) = v19;
    if ((v23 & 1) == 0)
    {
      sub_270723980(v22, v18, 0, v19);
    }

    v26 = *(v19 + 56);
    v27 = *(v26 + 8 * v22);
    v28 = __OFADD__(v27, v17);
    v29 = v27 + v17;
    if (!v28)
    {
      *(v26 + 8 * v22) = v29;
      return swift_endAccess();
    }

    goto LABEL_19;
  }

LABEL_20:
  result = sub_2707A8EF0();
  __break(1u);
  return result;
}

uint64_t sub_2707367A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v8 = sub_270721EA0(v6);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829880);
  if (sub_2707A8C40())
  {
    v12 = sub_270721EA0(v6);
    if ((v11 & 1) != (v13 & 1))
    {
      goto LABEL_18;
    }

    v10 = v12;
  }

  *(a1 + 16) = v7;
  if ((v11 & 1) == 0)
  {
    sub_2707239B8(v10, v6, 0, 0, v7);
  }

  swift_endAccess();
  swift_beginAccess();
  v14 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  v16 = sub_270721EA0(v14);
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829888);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = sub_270721EA0(v14);
  if ((v19 & 1) == (v21 & 1))
  {
    v18 = v20;
LABEL_11:
    *(a3 + 16) = v15;
    if ((v19 & 1) == 0)
    {
      sub_270723980(v18, v14, 0, v15);
    }

    v22 = *(v15 + 56);
    v23 = *(v22 + 8 * v18);
    v24 = __OFADD__(v23, 8);
    v25 = v23 + 8;
    if (!v24)
    {
      *(v22 + 8 * v18) = v25;
      return swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_18:
  result = sub_2707A8EF0();
  __break(1u);
  return result;
}

uint64_t sub_2707369DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v10 = sub_270721EA0(v8);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829880);
  if (sub_2707A8C40())
  {
    v14 = sub_270721EA0(v8);
    if ((v13 & 1) != (v15 & 1))
    {
      goto LABEL_18;
    }

    v12 = v14;
  }

  *(a1 + 16) = v9;
  if ((v13 & 1) == 0)
  {
    sub_2707239B8(v12, v8, 0, 0, v9);
  }

  v16 = sub_270737180((v9[7] + 16 * v12), a4);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  v19 = sub_270721EA0(v17);
  if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v19;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829888);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = sub_270721EA0(v17);
  if ((v22 & 1) == (v24 & 1))
  {
    v21 = v23;
LABEL_11:
    *(a3 + 16) = v18;
    if ((v22 & 1) == 0)
    {
      sub_270723980(v21, v17, 0, v18);
    }

    v25 = *(v18 + 56);
    v26 = *(v25 + 8 * v21);
    v27 = __OFADD__(v26, v16);
    v28 = v26 + v16;
    if (!v27)
    {
      *(v25 + 8 * v21) = v28;
      return swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_18:
  result = sub_2707A8EF0();
  __break(1u);
  return result;
}

uint64_t sub_270736C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v10 = sub_270721EA0(v8);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829880);
  if (sub_2707A8C40())
  {
    v14 = sub_270721EA0(v8);
    if ((v13 & 1) != (v15 & 1))
    {
      goto LABEL_19;
    }

    v12 = v14;
  }

  *(a1 + 16) = v9;
  if ((v13 & 1) == 0)
  {
    sub_2707239B8(v12, v8, 0, 0, v9);
  }

  v16 = *(*a4 + 16);
  if (v16)
  {
    v17 = *(*a4 + 16 + 16 * v16);
  }

  else
  {
    v17 = 0uLL;
  }

  *(v9[7] + 16 * v12) = v17;
  swift_endAccess();
  swift_beginAccess();
  v18 = *(a2 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  v20 = sub_270721EA0(v18);
  if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829888);
  if (sub_2707A8C40())
  {
    v24 = sub_270721EA0(v18);
    if ((v23 & 1) == (v25 & 1))
    {
      v22 = v24;
      goto LABEL_14;
    }

LABEL_19:
    result = sub_2707A8EF0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(a3 + 16) = v19;
  if ((v23 & 1) == 0)
  {
    sub_270723980(v22, v18, 0, v19);
  }

  return swift_endAccess();
}

uint64_t sub_270736E78(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  v10 = sub_270721EA0(v8);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829880);
  if (sub_2707A8C40())
  {
    v14 = sub_270721EA0(v8);
    if ((v13 & 1) != (v15 & 1))
    {
      goto LABEL_18;
    }

    v12 = v14;
  }

  *(a3 + 16) = v9;
  if ((v13 & 1) == 0)
  {
    sub_2707239B8(v12, v8, 0, 0, v9);
  }

  v16 = a1(v9[7] + 16 * v12);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a4 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  v19 = sub_270721EA0(v17);
  if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v19;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829888);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = sub_270721EA0(v17);
  if ((v22 & 1) == (v24 & 1))
  {
    v21 = v23;
LABEL_11:
    *(a5 + 16) = v18;
    if ((v22 & 1) == 0)
    {
      sub_270723980(v21, v17, 0, v18);
    }

    v25 = *(v18 + 56);
    v26 = *(v25 + 8 * v21);
    v27 = __OFADD__(v26, v16);
    v28 = v26 + v16;
    if (!v27)
    {
      *(v25 + 8 * v21) = v28;
      return swift_endAccess();
    }

    goto LABEL_17;
  }

LABEL_18:
  result = sub_2707A8EF0();
  __break(1u);
  return result;
}

uint64_t sub_2707370D8(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  *(a1 + 8) = sub_270736080(v3, v4);
  return 0;
}

uint64_t sub_27073712C(uint64_t *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  *a1 = sub_270736080(v3, v4);
  return 0;
}

uint64_t sub_270737180(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2707371D8();
  v5 = *(*a2 + 16);
  sub_27076B0B4(v5);
  v6 = *a2;
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  return 0;
}

void sub_2707371D8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_270713F5C(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t sub_270737224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
LABEL_12:
    __break(1u);
    JUMPOUT(0x27073728CLL);
  }

  return result;
}

uint64_t sub_27073729C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < a1 || v5 > a1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v10)
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x27073736CLL);
  }

  return result;
}

uint64_t sub_27073739C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2707373D4()
{
  result = qword_280829870;
  if (!qword_280829870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829870);
  }

  return result;
}

unint64_t sub_27073743C()
{
  result = qword_280829878;
  if (!qword_280829878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829878);
  }

  return result;
}

uint64_t _s5StateVwet(uint64_t a1, int a2)
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

uint64_t _s5StateVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_2707374F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_270737588(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v30 = MEMORY[0x277D84F90];
    v29 = *(a1 + 16);
    sub_27071A63C();
    v1 = v30;
    v5 = sub_27073FB94();
    v6 = v29;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_32;
        }

        ++v7;
        v10 = v5 & 0x3F;
        v11 = 0xE600000000000000;
        v12 = 0x65746F6D6552;
        switch(*(*(a1 + 48) + v5))
        {
          case 1:
            v11 = 0xE900000000000072;
            v12 = 0x657A697469676944;
            break;
          case 2:
            v11 = 0xE700000000000000;
            v12 = 0x646170656D6147;
            break;
          case 3:
            v11 = 0xE800000000000000;
            v12 = 0x6472616F6279654BLL;
            break;
          case 4:
            v11 = 0xE500000000000000;
            v12 = 0x6573756F4DLL;
            break;
          case 5:
            v11 = 0xE800000000000000;
            v12 = 0x6461706B63617254;
            break;
          case 6:
            v12 = 0xD000000000000014;
            v11 = 0x80000002707B47D0;
            break;
          default:
            break;
        }

        v13 = *(v30 + 16);
        if (v13 >= *(v30 + 24) >> 1)
        {
          v27 = v3;
          v28 = v7;
          v26 = v4;
          sub_27071A63C();
          v10 = v5 & 0x3F;
          v4 = v26;
          v3 = v27;
          v7 = v28;
          v8 = a1 + 56;
          v6 = v29;
        }

        *(v30 + 16) = v13 + 1;
        v14 = v30 + 16 * v13;
        *(v14 + 32) = v12;
        *(v14 + 40) = v11;
        if (v4)
        {
          goto LABEL_36;
        }

        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_33;
        }

        v16 = *(v8 + 8 * v9);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_34;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_35;
        }

        v17 = v16 & (-2 << v10);
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v9 << 6;
          v19 = v9 + 1;
          v20 = (a1 + 64 + 8 * v9);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              v23 = v7;
              sub_27073FBD4(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v29;
              v7 = v23;
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_26;
            }
          }

          v24 = v7;
          sub_27073FBD4(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v29;
          v7 = v24;
        }

LABEL_26:
        if (v7 == v6)
        {
          return v1;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    JUMPOUT(0x2707378D0);
  }

  return v1;
}

uint64_t sub_2707378EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_270721F0C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

void sub_270737974()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = type metadata accessor for EventReportSenderID();
  v3 = OUTLINED_FUNCTION_4_9(v2);
  v42 = v4;
  MEMORY[0x28223BE20](v3, v5);
  OUTLINED_FUNCTION_30_1();
  v45 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808298F8);
  v9 = OUTLINED_FUNCTION_11_5(v8);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_8_9();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v43 = v19;

  v25 = 0;
  v41 = v13;
  v44 = v17;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_10:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v43;
      v31 = v45;
      sub_2707230C4(*(v43 + 48) + *(v42 + 72) * v29, v45);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
      v34 = *(v33 + 48);
      v35 = v31;
      v13 = v41;
      sub_270723128(v35, v41);
      *(v13 + v34) = v32;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v33);

      v27 = v44;
LABEL_11:
      sub_27073F3AC(v13, v27, &qword_2808298F8);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
      if (__swift_getEnumTagSinglePayload(v27, 1, v36) == 1)
      {
        break;
      }

      v37 = v13;
      v38 = v45;
      sub_270723128(v27, v45);

      sub_270734370();

      v39 = v38;
      v13 = v37;
      sub_27072318C(v39);
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_12_0();
  }

  else
  {
LABEL_5:
    v27 = v44;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v40);
        v23 = 0;
        goto LABEL_11;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_270737C9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
    sub_2707A8F60();
    MEMORY[0x2743A8500](v12);
    result = sub_2707A8FC0();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t HIDVirtualServicePool.__allocating_init(logger:queue:workloop:)()
{
  OUTLINED_FUNCTION_21_4();
  v0 = swift_allocObject();
  HIDVirtualServicePool.init(logger:queue:workloop:)();
  return v0;
}

uint64_t HIDVirtualServicePool.init(logger:queue:workloop:)()
{
  OUTLINED_FUNCTION_21_4();
  v4 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  type metadata accessor for EventReportSenderID();
  type metadata accessor for HIDVirtualServicePool.VirtualService(0);
  OUTLINED_FUNCTION_7_8();
  sub_27073F578(v5, v6);
  *(v1 + v4) = sub_2707A8520();
  v7 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808298A0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x277D84FA0];
  *(v1 + v7) = v8;
  v9 = (v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  *v9 = nullsub_1;
  v9[1] = 0;
  sub_27073F3AC(v3, v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, &unk_28082A120);
  *(v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue) = v2;
  *(v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_workloop) = v0;
  return v1;
}

uint64_t sub_270737F9C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + *a1);
  swift_beginAccess();
  v10[3] = a2(0);
  v10[4] = a3;
  v10[0] = v8;

  sub_27077A258(v10, a4);
  return swift_endAccess();
}

uint64_t sub_270738034(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  *(v5 + *a2) = a1;

  sub_270737F9C(a2, a3, a4, a5);
}

void sub_2707380BC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v63 = v2;
  v4 = v3;
  v66 = v5;
  v67 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v8 = OUTLINED_FUNCTION_11_5(v7);
  MEMORY[0x28223BE20](v8, v9);
  v64 = &v60 - v10;
  v65 = sub_2707A8860();
  OUTLINED_FUNCTION_0_1();
  v62 = v11;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_30_1();
  v61 = v15 - v14;
  sub_2707A8850();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_30_1();
  v18 = sub_2707A84B0();
  v19 = OUTLINED_FUNCTION_11_5(v18);
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_30_1();
  v21 = (v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_properties);
  *v21 = 0;
  v21[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_client) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service) = 0;
  v22 = (v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_terminationWasRequestedHandler);
  *v22 = nullsub_1;
  v22[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasDigitizerUsage) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasKeyboardUsage) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasPointingUsage) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasGamepadUsage) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasTouchSensitiveButtonUsage) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_keyboardEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_pointingEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gamepadEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_touchSensitiveButtonEnabled) = 0;
  sub_2707230C4(v6, v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_id);
  sub_27073F304(v4, v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, &unk_28082A120);
  v60 = sub_27073FB54(0, &qword_280829910);
  sub_2707A84A0();
  *v68 = MEMORY[0x277D84F90];
  sub_27073F578(&qword_280829918, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829920);
  OUTLINED_FUNCTION_1_14();
  sub_27071A810(v23, &qword_280829920);
  sub_2707A8A90();
  (*(v62 + 104))(v61, *MEMORY[0x277D85268], v65);
  v65 = v63;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_queue) = sub_2707A8890();
  v68[0] = 0;
  v61 = type metadata accessor for DigitizerGesture();
  swift_allocObject();
  v24 = DigitizerGesture.init(platform:useRemoteAcceleration:dispatchPointerEvents:)(v68, 1, 1);
  v60 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerGesture;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerGesture) = v24;
  v63 = type metadata accessor for ScrollGesture();
  v25 = ScrollGesture.__allocating_init(useRemoteAcceleration:dispatchScrollEvents:)(1, 0);
  v62 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_scrollGesture;
  *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_scrollGesture) = v25;
  v26 = v67;
  v27 = v64;
  sub_27073F304(v67, v64, &unk_28082A120);
  v28 = type metadata accessor for PointerGesture();
  swift_allocObject();
  v29 = PointerGesture.init(logger:useRemoteAcceleration:)(v27, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AC1C0;
  *(inited + 32) = 19;
  sub_27073F304(v26, v27, &unk_28082A120);
  v31 = type metadata accessor for AbsolutePointerGesture();
  swift_allocObject();
  v32 = AbsolutePointerGesture.init(logger:pointerGesture:)(v27, v29);
  *(inited + 64) = v31;
  *(inited + 72) = &protocol witness table for AbsolutePointerGesture;
  *(inited + 40) = v32;
  *(inited + 80) = 4;
  v33 = type metadata accessor for AppleVendorTopCaseGesture(0);
  OUTLINED_FUNCTION_14_3();
  swift_allocObject();

  v34 = _s12UniversalHID25AppleVendorTopCaseGestureCACycfc_0();
  *(inited + 112) = v33;
  *(inited + 120) = sub_27073F5C0();
  *(inited + 88) = v34;
  *(inited + 128) = 3;
  v35 = type metadata accessor for AppleVendorKeyboardGesture(0);
  OUTLINED_FUNCTION_14_3();
  swift_allocObject();
  v36 = _s12UniversalHID26AppleVendorKeyboardGestureCACycfc_0();
  *(inited + 160) = v35;
  *(inited + 168) = sub_27073F710();
  *(inited + 136) = v36;
  *(inited + 176) = 2;
  v37 = type metadata accessor for ConsumerGesture(0);
  OUTLINED_FUNCTION_14_3();
  swift_allocObject();
  v38 = _s12UniversalHID15ConsumerGestureCACycfc_0();
  *(inited + 208) = v37;
  *(inited + 216) = sub_27073F860();
  *(inited + 184) = v38;
  *(inited + 224) = 9;
  v39 = *(v1 + v60);
  *(inited + 256) = v61;
  *(inited + 264) = &protocol witness table for DigitizerGesture;
  *(inited + 232) = v39;
  *(inited + 272) = 18;
  v40 = type metadata accessor for GameControllerGesture();
  v41 = OUTLINED_FUNCTION_25_3();
  *(inited + 304) = v40;
  *(inited + 312) = &protocol witness table for GameControllerGesture;
  *(inited + 280) = v41;
  *(inited + 320) = 20;
  v42 = type metadata accessor for GenericGestureGesture();
  v43 = OUTLINED_FUNCTION_25_3();
  *(inited + 352) = v42;
  *(inited + 360) = &protocol witness table for GenericGestureGesture;
  *(inited + 328) = v43;
  *(inited + 368) = 1;
  v44 = type metadata accessor for KeyboardGesture(0);
  v45 = v67;
  sub_27073F304(v67, v27, &unk_28082A120);

  v46 = KeyboardGesture.__allocating_init(logger:)(v27);
  *(inited + 400) = v44;
  *(inited + 408) = sub_27073FA04();
  *(inited + 376) = v46;
  *(inited + 416) = 5;
  *(inited + 448) = v28;
  *(inited + 456) = &protocol witness table for PointerGesture;
  *(inited + 424) = v29;
  *(inited + 464) = 7;
  v47 = *(v1 + v62);
  *(inited + 496) = v63;
  *(inited + 504) = &protocol witness table for ScrollGesture;
  *(inited + 472) = v47;
  *(inited + 512) = 11;
  v48 = type metadata accessor for DockSwipeGesture();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(inited + 544) = v48;
  *(inited + 552) = &protocol witness table for DockSwipeGesture;
  *(inited + 520) = v49;
  *(inited + 560) = 13;
  type metadata accessor for NavigationSwipeGesture();
  v50 = OUTLINED_FUNCTION_10_5();
  *(v50 + 16) = 0;
  *(inited + 592) = v48;
  *(inited + 600) = &protocol witness table for NavigationSwipeGesture;
  *(inited + 568) = v50;
  *(inited + 608) = 21;
  v51 = type metadata accessor for TouchSensitiveButtonGesture();
  v52 = OUTLINED_FUNCTION_25_3();
  *(inited + 640) = v51;
  *(inited + 648) = &protocol witness table for TouchSensitiveButtonGesture;
  *(inited + 616) = v52;
  *(inited + 656) = 17;
  type metadata accessor for TranslationGesture();
  v53 = OUTLINED_FUNCTION_10_5();
  *(v53 + 16) = 0;
  *(inited + 688) = v51;
  *(inited + 696) = &protocol witness table for TranslationGesture;
  *(inited + 664) = v53;
  *(inited + 704) = 12;
  type metadata accessor for FluidTouchGesture();
  v54 = OUTLINED_FUNCTION_10_5();
  *(v54 + 16) = 0;
  *(inited + 736) = v51;
  *(inited + 744) = &protocol witness table for FluidTouchGesture;
  *(inited + 712) = v54;
  *(inited + 752) = 15;
  type metadata accessor for ScaleGesture();
  v55 = OUTLINED_FUNCTION_10_5();
  *(v55 + 16) = 0;
  *(inited + 784) = v51;
  *(inited + 792) = &protocol witness table for ScaleGesture;
  *(inited + 760) = v55;
  *(inited + 800) = 16;
  type metadata accessor for RotationGesture();
  v56 = OUTLINED_FUNCTION_10_5();
  *(v56 + 16) = 0;
  *(inited + 832) = v51;
  *(inited + 840) = &protocol witness table for RotationGesture;
  *(inited + 808) = v56;
  *(inited + 848) = 14;
  v57 = type metadata accessor for ZoomToggleGesture();
  v58 = OUTLINED_FUNCTION_25_3();
  *(inited + 880) = v57;
  *(inited + 888) = &protocol witness table for ZoomToggleGesture;
  *(inited + 856) = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A1B0);
  sub_2707373D4();
  v59 = sub_2707A8520();

  sub_27073F354(v45, &unk_28082A120);
  sub_27072318C(v66);
  *(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gestures) = v59;
  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_270738928()
{
  sub_27072318C(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_id);
  sub_27073F354(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, &unk_28082A120);

  return v0;
}

uint64_t sub_270738A14()
{
  v1 = v0;
  v2 = sub_2707A8480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2707A84B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  result = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v28[-v15];
  v17 = *(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service);
  if (v17)
  {
    v32 = v8;
    v34 = v3;
    *(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service) = 0;
    sub_27073F304(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, v16, &unk_28082A120);
    v18 = sub_2707A8440();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
    v33 = v7;
    if (EnumTagSinglePayload == 1)
    {
      sub_27073F354(v16, &unk_28082A120);
    }

    else
    {

      v20 = sub_2707A8420();
      v21 = sub_2707A8840();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v22 = 136446466;
        v30 = v20;
        EventReportSenderID.description.getter();
        v23 = sub_27073D0F4();
        v29 = v21;
        v24 = v23;

        *(v22 + 4) = v24;
        *(v22 + 12) = 2082;

        HIDVirtualService.description.getter();

        v25 = sub_27073D0F4();

        *(v22 + 14) = v25;
        v20 = v30;
        _os_log_impl(&dword_270703000, v30, v29, "%{public}s: Canceling Service: %{public}s", v22, 0x16u);
        v26 = v31;
        swift_arrayDestroy();
        MEMORY[0x2743A9010](v26, -1, -1);
        MEMORY[0x2743A9010](v22, -1, -1);
      }

      (*(*(v18 - 8) + 8))(v16, v18);
    }

    aBlock[4] = j___s12UniversalHID17HIDVirtualServiceC6cancelyyF;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2707325D0;
    aBlock[3] = &block_descriptor_24_0;
    v27 = _Block_copy(aBlock);

    sub_2707A8490();
    v35 = MEMORY[0x277D84F90];
    sub_27073F578(&qword_280829858, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
    sub_27071A810(&qword_280829860, &unk_28082A2F0);
    sub_2707A8A90();
    MEMORY[0x2743A7E10](0, v11, v6, v27);
    _Block_release(v27);

    (*(v34 + 8))(v6, v2);
    (*(v32 + 8))(v11, v33);
  }

  return result;
}

void sub_270738F38(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v9 = OUTLINED_FUNCTION_11_5(v8);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_8_9();
  v82 = v11 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v78 - v15;
  v85 = HIDServiceProperties.subscript.getter();
  v17 = v85 & 1;
  v18 = HIDServiceProperties.primaryUsagePair.getter();
  v81 = v18 != 262157;
  v19 = a2;
  v20 = HIDServiceProperties.subscript.getter();
  v21 = *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerGesture);
  v22 = *(v21 + 17);
  v84 = v20;
  if (v22 != v17 || (v23 = v20, (((v18 == 262157) ^ *(v21 + 18)) & 1) == 0))
  {
    LOBYTE(v83[0]) = 0;
    type metadata accessor for DigitizerGesture();
    swift_allocObject();
    DigitizerGesture.init(platform:useRemoteAcceleration:dispatchPointerEvents:)(v83, v17, v81);
    OUTLINED_FUNCTION_13_5();
    sub_270738034(v24, v25, v26, v27, 9);
    sub_27073F304(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, v16, &unk_28082A120);
    v28 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v16, 1, v28) == 1)
    {
      sub_27073F354(v16, &unk_28082A120);
    }

    else
    {
      v80 = v3;

      v29 = sub_2707A8420();
      v30 = sub_2707A8840();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v78 = a1;
        v32 = v31;
        v33 = swift_slowAlloc();
        v79 = v19;
        v34 = v33;
        v83[0] = v33;
        *v32 = 136446722;
        EventReportSenderID.description.getter();
        v35 = sub_27073D0F4();

        *(v32 + 4) = v35;
        *(v32 + 12) = 1026;
        *(v32 + 14) = v85 & 1;
        *(v32 + 18) = 1026;
        *(v32 + 20) = v81;
        _os_log_impl(&dword_270703000, v29, v30, "%{public}s: Updated Digitizer Gesture: RA '%{BOOL,public}d', PE '%{BOOL,public}d'", v32, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v19 = v79;
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
      }

      OUTLINED_FUNCTION_5_0();
      (*(v36 + 8))(v16, v28);
      v4 = v80;
    }

    v23 = v84;
  }

  v37 = v85 & 1;
  v38 = *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_scrollGesture);
  if (*(v38 + 17) != (v85 & 1) || *(v38 + 18) != (v23 & 1))
  {
    type metadata accessor for ScrollGesture();
    ScrollGesture.__allocating_init(useRemoteAcceleration:dispatchScrollEvents:)(v37, v23 & 1);
    OUTLINED_FUNCTION_12_3();
    sub_270738034(v39, v40, v41, v42, 7);
    v43 = v82;
    sub_27073F304(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, v82, &unk_28082A120);
    v44 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      sub_27073F354(v43, &unk_28082A120);
    }

    else
    {
      v80 = v4;

      v45 = sub_2707A8420();
      v46 = sub_2707A8840();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v79 = v19;
        v49 = v48;
        v83[0] = v48;
        *v47 = 136446722;
        EventReportSenderID.description.getter();
        v50 = sub_27073D0F4();

        *(v47 + 4) = v50;
        *(v47 + 12) = 1026;
        *(v47 + 14) = v85 & 1;
        *(v47 + 18) = 1026;
        *(v47 + 20) = v84 & 1;
        _os_log_impl(&dword_270703000, v45, v46, "%{public}s: Updated Scroll Gesture: RA '%{BOOL,public}d', SE '%{BOOL,public}d'", v47, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
        v43 = v82;
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
      }

      v4 = v80;
      OUTLINED_FUNCTION_5_0();
      (*(v51 + 8))(v43, v44);
    }
  }

  sub_27078282C();
  sub_270782714();
  HIDServiceProperties.init(serviceID:properties:)();
  if (!v4)
  {
    v54 = v52;
    v55 = v53;
    v56 = (v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_properties);
    swift_beginAccess();
    v57 = v56[1];
    if (v57 && *v56 == v54)
    {
      sub_27073FB54(0, &qword_280829960);
      v58 = v55;
      v59 = v57;
      v60 = sub_2707A8910();

      if (v60)
      {

LABEL_39:
        return;
      }

      v57 = v56[1];
    }

    else
    {
      v61 = v55;
    }

    *v56 = v54;
    v56[1] = v55;

    v62 = HIDServiceProperties.subscript.getter(0xD000000000000010, 0x80000002707B4710, v54, v55);
    if (v62)
    {
      v70 = v62;
      sub_270782A48(v62, v63, v64, v65, v66, v67, v68, v69, v78, v79);
      v72 = v71;
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    v73 = sub_2707263D4(0x5000Du, v72) || sub_2707263D4(0x4000Du, v72);
    v74 = sub_2707263D4(0x60001u, v72);
    v75 = sub_2707263D4(0x20001u, v72);
    v76 = sub_2707263D4(0x50001u, v72);
    v77 = sub_2707263D4(0x66FF00u, v72);

    if (v73 != *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasDigitizerUsage))
    {
      *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasDigitizerUsage) = v73;
    }

    if (v74 != *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasKeyboardUsage))
    {
      *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasKeyboardUsage) = v74;
    }

    if (v75 != *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasPointingUsage))
    {
      *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasPointingUsage) = v75;
    }

    if (v76 != *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasGamepadUsage))
    {
      *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasGamepadUsage) = v76;
    }

    if (v77 != *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasTouchSensitiveButtonUsage))
    {
      *(v5 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasTouchSensitiveButtonUsage) = v77;
    }

    sub_2707396E8();
    sub_2707397FC();
    sub_2707398EC();
    goto LABEL_39;
  }
}

uint64_t sub_2707396E8()
{
  v1 = v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_properties;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    v2 = HIDServiceProperties.subscript.getter();
    v4 = v3;
    swift_endAccess();
    if (v2 >= 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v2;
    }

    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    swift_endAccess();
    v6 = 2;
  }

  v7 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gestures;
  swift_beginAccess();
  v8 = sub_27077A8B8(*(v0 + v7));
  if (!v8)
  {
    return swift_endAccess();
  }

  v9 = v8;
  swift_endAccess();
  v10 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMode;
  swift_beginAccess();
  *(v9 + v10) = v6;
}

uint64_t sub_2707397FC()
{
  if (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerEnabled) == 1 && (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasDigitizerUsage) & 1) != 0 || *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_pointingEnabled) == 1 && (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasPointingUsage) & 1) != 0 || *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_keyboardEnabled) == 1 && (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasKeyboardUsage) & 1) != 0 || *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gamepadEnabled) == 1 && (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasGamepadUsage) & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_touchSensitiveButtonEnabled) != 1)
    {
      if (!*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service))
      {
        return result;
      }

      return sub_270738A14();
    }

    v1 = *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasTouchSensitiveButtonUsage);
  }

  if (*(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service))
  {
    if (v1)
    {
      return result;
    }

    return sub_270738A14();
  }

  if (v1)
  {
    return sub_270739CA8();
  }

  return result;
}

uint64_t sub_2707398EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  result = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = v28 - v5;
  v7 = *(v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_client);
  if (v7)
  {
    v8 = v0 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_properties;
    result = swift_beginAccess();
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = v7;
      v11 = v9;
      v12 = HIDServiceProperties.subscript.getter();
      sub_2707943B4(v12, v13 & 1);
      v14 = HIDServiceProperties.subscript.getter();
      sub_2707943B4(v14, v15 & 1);
      v16 = HIDServiceProperties.subscript.getter();
      sub_2707943B4(v16, v17 & 1);
      v18 = HIDServiceProperties.subscript.getter();
      sub_2707943B4(v18, v19 & 1);
      sub_27073F304(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, v6, &unk_28082A120);
      v20 = sub_2707A8440();
      if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
      {

        return sub_27073F354(v6, &unk_28082A120);
      }

      else
      {
        v21 = v10;

        v22 = sub_2707A8420();
        v23 = sub_2707A8840();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v28[2] = v25;
          *v24 = 136446466;
          EventReportSenderID.description.getter();
          v26 = sub_27073D0F4();

          *(v24 + 4) = v26;
          *(v24 + 12) = 2082;
          v28[1] = [v21 serviceID];
          sub_270735074();
          sub_2707A8680();
          v27 = sub_27073D0F4();

          *(v24 + 14) = v27;
          _os_log_impl(&dword_270703000, v22, v23, "%{public}s: Updated Client: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743A9010](v25, -1, -1);
          MEMORY[0x2743A9010](v24, -1, -1);
        }

        else
        {
        }

        return (*(*(v20 - 8) + 8))(v6, v20);
      }
    }
  }

  return result;
}

uint64_t sub_270739CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = v30 - v9;
  if ((*(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasDigitizerUsage) & 1) != 0 || (*(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasPointingUsage) & 1) != 0 || (*(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasKeyboardUsage) & 1) != 0 || (*(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasGamepadUsage) & 1) != 0 || *(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_hasTouchSensitiveButtonUsage) == 1)
  {
    v11 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service;
    if (!*(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service))
    {
      v12 = v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_properties;
      result = swift_beginAccess();
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger;
        sub_27073F304(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_logger, v10, &unk_28082A120);
        v15 = *(v1 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_queue);
        swift_beginAccess();
        type metadata accessor for HIDVirtualService(0);
        swift_allocObject();
        v16 = v13;
        v17 = v15;

        sub_27077B984();
        v19 = v18;
        *(v1 + v11) = v18;

        v20 = swift_allocObject();
        swift_weakInit();
        v21 = (v19 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_terminationWasRequestedHandler);
        *v21 = sub_27073E85C;
        v21[1] = v20;

        HIDVirtualService.activate()();
        sub_27073F304(v1 + v14, v6, &unk_28082A120);
        v22 = sub_2707A8440();
        if (__swift_getEnumTagSinglePayload(v6, 1, v22) == 1)
        {

          return sub_27073F354(v6, &unk_28082A120);
        }

        else
        {
          v23 = v16;

          v24 = sub_2707A8420();
          v25 = sub_2707A8840();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v30[1] = v27;
            *v26 = 136446466;
            EventReportSenderID.description.getter();
            v28 = sub_27073D0F4();

            *(v26 + 4) = v28;
            *(v26 + 12) = 2082;

            HIDVirtualService.description.getter();

            v29 = sub_27073D0F4();

            *(v26 + 14) = v29;
            _os_log_impl(&dword_270703000, v24, v25, "%{public}s: Activated Service: %{public}s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2743A9010](v27, -1, -1);
            MEMORY[0x2743A9010](v26, -1, -1);
          }

          return (*(*(v22 - 8) + 8))(v6, v22);
        }
      }
    }
  }

  return result;
}

uint64_t sub_27073A0F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_terminationWasRequestedHandler);

    v1(v2);
  }

  return result;
}

uint64_t HIDVirtualServicePool.enabledDeviceTypes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void HIDVirtualServicePool.enabledDeviceTypes.setter()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v4 = OUTLINED_FUNCTION_11_5(v3);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  v18 = v2;
  os_unfair_lock_lock((v8 + 24));
  sub_27073A938((v8 + 16), &v20);
  os_unfair_lock_unlock((v8 + 24));
  if (v20 == 1)
  {
    sub_27073F304(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v7, &unk_28082A120);
    v9 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
    {

      sub_27073F354(v7, &unk_28082A120);
    }

    else
    {

      v10 = sub_2707A8420();
      v11 = sub_2707A8840();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v12 = 136446210;
        v13 = sub_270737588(v2);

        v19 = v13;

        sub_27073E174(&v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
        sub_27071A810(&qword_280829638, &qword_280829630);
        sub_2707A8550();

        v14 = sub_27073D0F4();

        *(v12 + 4) = v14;
        _os_log_impl(&dword_270703000, v10, v11, "Enabled Device Types: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
        OUTLINED_FUNCTION_15_6();
        MEMORY[0x2743A9010]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_5_0();
      (*(v15 + 8))(v7, v9);
    }

    sub_27073A5B0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27073A538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = sub_270737C9C(a2, *a1);
  if (result)
  {
    v7 = 0;
  }

  else
  {

    *a1 = a2;

    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_27073A5B0()
{
  v1 = sub_2707A8480();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2707A84B0();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  aBlock[4] = sub_27073FBE0;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2707325D0;
  aBlock[3] = &block_descriptor_43;
  v10 = _Block_copy(aBlock);

  sub_2707A8490();
  v14 = MEMORY[0x277D84F90];
  sub_27073F578(&qword_280829858, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_27071A810(&qword_280829860, &unk_28082A2F0);
  sub_2707A8A90();
  MEMORY[0x2743A7E10](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void (*HIDVirtualServicePool.enabledDeviceTypes.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_27073A8E0;
}

void sub_27073A8E0(uint64_t a1, char a2)
{
  if (a2)
  {

    HIDVirtualServicePool.enabledDeviceTypes.setter();
  }

  else
  {
    HIDVirtualServicePool.enabledDeviceTypes.setter();
  }
}

uint64_t sub_27073A954@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_27073E81C;
  a2[1] = v6;
}

uint64_t sub_27073A9E0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  swift_beginAccess();
  *v6 = sub_27073E814;
  v6[1] = v5;
}

uint64_t HIDVirtualServicePool.terminationWasRequestedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HIDVirtualServicePool.terminationWasRequestedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_27073AB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (sub_27077AB9C(0, v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_27077AB9C(1u, v2);
  }

  return v3 & 1;
}

BOOL sub_27073AC10()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  LOBYTE(v1) = sub_27073F1F8(&unk_288076878, v2);

  return (v1 & 1) == 0;
}

uint64_t sub_27073AC78(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool__enabledDeviceTypes);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = sub_27077AB9C(a1, v4);

  return v5 & 1;
}

void sub_27073ACE4()
{
  OUTLINED_FUNCTION_11_0();
  v90 = v1;
  v91 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v7 = OUTLINED_FUNCTION_11_5(v6);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_8_9();
  v81 = v9 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v80 = &v76 - v13;
  v88 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_0_1();
  v84 = v14;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v83 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0);
  OUTLINED_FUNCTION_0_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v76 - v27;
  v29 = sub_27073D0D0(v3);
  v30 = MEMORY[0x277D84F90];
  v82 = v21;
  if (v29)
  {
    v31 = v29;
    v95 = MEMORY[0x277D84F90];
    sub_27071A988(0, v29 & ~(v29 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
      return;
    }

    v93 = v5;
    v32 = 0;
    v30 = v95;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x2743A80A0](v32, v3);
      }

      else
      {
        v33 = *(v3 + 8 * v32 + 32);
      }

      v34 = *(v22 + 48);
      sub_2707230C4(v33 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_id, v28);
      *&v28[v34] = v33;
      v95 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_27071A988(v35 > 1, v36 + 1, 1);
        v30 = v95;
      }

      ++v32;
      *(v30 + 16) = v36 + 1;
      sub_27073F3AC(v28, v30 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v36, &qword_2808296C0);
    }

    while (v31 != v32);
    v21 = v82;
    v5 = v93;
  }

  v37 = sub_27078273C(v30);
  v38 = v5[2];
  if (v38)
  {
    v89 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger;
    v79 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_workloop;
    v77 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
    swift_beginAccess();
    v39 = 0;
    v87 = sub_2707A8410();
    v40 = *(v87 - 8);
    v41 = v5 + 5;
    v42 = *(v40 + 16);
    v85 = v40 + 16;
    v86 = v42;
    v43 = v88;
    do
    {
      v93 = v39;
      v45 = *(v41 - 1);
      v44 = *v41;
      v86(v21, v90, v87);
      *&v21[*(v43 + 20)] = v45;
      v46 = v44;
      v47 = sub_270721F0C(v21);
      v48 = v21;
      if (v49)
      {
        v50 = v47;
        swift_isUniquelyReferenced_nonNull_native();
        v94 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829740);
        sub_2707A8C40();
        v51 = v94;
        sub_27072318C(*(v94 + 48) + *(v84 + 72) * v50);
        v52 = *(*(v51 + 56) + 8 * v50);
        type metadata accessor for HIDVirtualServicePool.VirtualService(0);
        OUTLINED_FUNCTION_7_8();
        sub_27073F578(&qword_2808296E8, v53);
        v92 = v51;
        sub_2707A8C60();
      }

      else
      {
        v92 = v37;
        sub_2707230C4(v21, v83);
        v54 = v91;
        sub_27073F304(v91 + v89, v80, &unk_28082A120);
        v55 = *(v54 + v79);
        type metadata accessor for HIDVirtualServicePool.VirtualService(0);
        v52 = swift_allocObject();
        v56 = v55;
        sub_2707380BC();
      }

      v21 = v48;
      v57 = v46;
      v58 = v46;
      v59 = v93;
      sub_270738F38(v45, v58);
      if (v59)
      {
        sub_27072318C(v48);

        v60 = v81;
        sub_27073F304(v91 + v89, v81, &unk_28082A120);
        v61 = sub_2707A8440();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v61);
        if (EnumTagSinglePayload == 1)
        {

          sub_27073F354(v60, &unk_28082A120);
        }

        else
        {
          MEMORY[0x28223BE20](EnumTagSinglePayload, v63);
          *(&v76 - 2) = v90;
          v74 = v59;
          sub_270790A50(sub_27073F3FC, (&v76 - 4), v60, v59);

          v21 = v82;
          OUTLINED_FUNCTION_5_0();
          (*(v75 + 8))(v60, v61);
        }

        v39 = 0;
        v37 = v92;
      }

      else
      {
        v64 = swift_allocObject();
        v65 = v91;
        swift_weakInit();
        v93 = 0;
        v66 = v57;
        v67 = v83;
        sub_2707230C4(v48, v83);
        v68 = (*(v84 + 80) + 24) & ~*(v84 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v64;
        v70 = v69 + v68;
        v21 = v82;
        sub_270723128(v67, v70);
        v71 = (v52 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_terminationWasRequestedHandler);
        *v71 = sub_27073F4C8;
        v71[1] = v69;

        sub_2707230C4(v52 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_id, v67);
        v72 = v77;
        v73 = *(v65 + v77);

        swift_isUniquelyReferenced_nonNull_native();
        v94 = v73;
        sub_2707234F0();

        v39 = v93;

        sub_27072318C(v67);
        sub_27072318C(v21);
        *(v65 + v72) = v94;

        v37 = v92;
      }

      v41 += 2;
      --v38;
      v43 = v88;
    }

    while (v38);
  }

  sub_27073B870(v37);
  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27073B42C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v28 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_27073F304(result + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v10, &unk_28082A120);
    v13 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
    {
      sub_27073F354(v10, &unk_28082A120);
    }

    else
    {
      sub_2707230C4(a2, v6);
      v14 = sub_2707A8420();
      v15 = sub_2707A8840();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v29 = v16;
        v31 = swift_slowAlloc();
        v33 = v31;
        *v16 = 136446210;
        v30 = v15;
        sub_2707A83C0();
        v17 = sub_270748CAC(8);
        v18 = MEMORY[0x2743A7BA0](v17);
        v20 = v19;

        v34 = v18;
        v35 = v20;
        MEMORY[0x2743A7BE0](58, 0xE100000000000000);
        v32 = *&v6[*(v3 + 20)];
        sub_270735074();
        v21 = sub_2707A8680();
        MEMORY[0x2743A7BE0](v21);

        sub_27072318C(v6);
        v22 = sub_27073D0F4();

        v23 = v29;
        *(v29 + 1) = v22;
        v24 = v23;
        _os_log_impl(&dword_270703000, v14, v30, "%{public}s: Termination Requested", v23, 0xCu);
        v25 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x2743A9010](v25, -1, -1);
        MEMORY[0x2743A9010](v24, -1, -1);
      }

      else
      {

        sub_27072318C(v6);
      }

      (*(*(v13 - 8) + 8))(v10, v13);
    }

    v26 = (v12 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
    swift_beginAccess();
    v27 = *v26;

    v27(a2);
  }

  return result;
}

uint64_t sub_27073B798()
{
  sub_2707A8B00();

  sub_2707A83C0();
  v0 = sub_270748CAC(8);
  v1 = MEMORY[0x2743A7BA0](v0);
  v3 = v2;

  MEMORY[0x2743A7BE0](v1, v3);

  MEMORY[0x2743A7BE0](0xD000000000000023, 0x80000002707B4690);
  return 0x20656369766544;
}

void *sub_27073B870(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2707143E8(*(a1 + 16), 0);
  v4 = sub_270770510(&v6, v3 + 4, v2, a1);
  sub_27073F570();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t HIDVirtualServicePool.updateInputDevices(inputDevices:for:useRemoteAcceleration:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_27071A9A8(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = sub_2707A8760();
      [v5 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_27071A9A8((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  HIDVirtualServicePool.updateInputDevices(inputDevices:for:)();
}

void HIDVirtualServicePool.updateInputDevices(inputDevices:for:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v31[0] = v4;
  sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  v34 = v5;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v32 = v9;
  v33 = v8;
  MEMORY[0x28223BE20](v8, v10);
  OUTLINED_FUNCTION_30_1();
  v13 = v12 - v11;
  v14 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  v31[1] = *(v1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  (*(v16 + 16))(v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v14);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  (*(v16 + 32))(v22 + v21, v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v22 + ((v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31[0];
  v36[4] = sub_27073E2AC;
  v36[5] = v22;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v36[2] = v23;
  v36[3] = &block_descriptor_0;
  v24 = _Block_copy(v36);

  sub_2707A8490();
  v35 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_11();
  sub_27073F578(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  OUTLINED_FUNCTION_1_14();
  sub_27071A810(v27, &unk_28082A2F0);
  sub_2707A8A90();
  v28 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v28);
  _Block_release(v24);
  v29 = OUTLINED_FUNCTION_23_3();
  v30(v29);
  (*(v32 + 8))(v13, v33);

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27073BD64(uint64_t a1, unint64_t a2)
{
  sub_27073BE3C(a2);
  sub_27073ACE4();
  v3 = v2;

  result = sub_270797DDC(v3);
  if (!result)
  {
LABEL_8:

    return sub_27073BEF0();
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A80A0](i, v3);
      }

      else
      {
      }

      sub_270738A14();
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_27073BE3C(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7[2] = a1;
  v7[3] = &v8;

  v5 = sub_27073D65C(sub_27073F2E4, v7, v4);

  *(v1 + v3) = v5;

  return v8;
}

uint64_t sub_27073BEF0()
{
  v1 = sub_27073AB98();
  v2 = sub_27073AC78(3u);
  v3 = sub_27073AC10();
  v4 = sub_27073AC78(2u);
  v5 = sub_27073AC78(6u);
  v6 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v21 = v1 & 1;
  v12 = v2 & 1;
  v13 = v3;
  v14 = v4 & 1;
  v15 = v5 & 1;

  for (i = 0; v10; result = )
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = *(*(v7 + 56) + ((v18 << 9) | (8 * v19)));
    *(v20 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_digitizerEnabled) = v21;

    sub_2707397FC();
    *(v20 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_keyboardEnabled) = v12;
    sub_2707397FC();
    *(v20 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_pointingEnabled) = v13;
    sub_2707397FC();
    *(v20 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gamepadEnabled) = v14;
    sub_2707397FC();
    *(v20 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_touchSensitiveButtonEnabled) = v15;
    sub_2707397FC();
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v18);
    ++i;
    if (v10)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_27073C0A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a4;
  v24[1] = a3;
  v6 = sub_2707A8410();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v24 - v17;
  v19 = *a2;
  sub_2707230C4(a1, v24 - v17);
  *&v18[*(v11 + 48)] = v19;
  sub_27073F304(v18, v15, &qword_280829900);

  (*(v7 + 16))(v10, v15, v6);
  sub_27072318C(v15);
  sub_27073F578(&qword_280829718, MEMORY[0x277CC95F0]);
  v20 = sub_2707A85B0();
  (*(v7 + 8))(v10, v6);
  if (v20)
  {
    v21 = sub_27073F304(v18, v15, &qword_280829900);
    v22 = v24[0];
    MEMORY[0x2743A7C80](v21);
    sub_27076B6F4(*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2707A8740();
    sub_27073F354(v18, &qword_280829900);
    sub_27072318C(v15);
  }

  else
  {
    sub_27073F354(v18, &qword_280829900);
  }

  return (v20 & 1) == 0;
}

void HIDVirtualServicePool.removeInputDevices(for:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  v32 = v3;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v30 = v7;
  v31 = v6;
  MEMORY[0x28223BE20](v6, v8);
  OUTLINED_FUNCTION_30_1();
  v11 = v10 - v9;
  v12 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17, v18);
  v29[1] = *(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  (*(v14 + 16))(v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v12);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  (*(v14 + 32))(v20 + v19, v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v34[4] = sub_27073E404;
  v34[5] = v20;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v34[2] = v21;
  v34[3] = &block_descriptor_6_0;
  v22 = _Block_copy(v34);

  sub_2707A8490();
  v33 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_11();
  sub_27073F578(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  OUTLINED_FUNCTION_1_14();
  sub_27071A810(v25, &unk_28082A2F0);
  OUTLINED_FUNCTION_16_4();
  sub_2707A8A90();
  v26 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v26);
  _Block_release(v22);
  v27 = OUTLINED_FUNCTION_23_3();
  v28(v27);
  (*(v30 + 8))(v11, v31);

  OUTLINED_FUNCTION_12_0();
}

char *sub_27073C630(uint64_t a1, unint64_t a2)
{
  v4 = sub_2707A8410();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - v11;
  sub_27073F304(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, &v31 - v11, &unk_28082A120);
  v13 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_27073F354(v12, &unk_28082A120);
  }

  else
  {
    v35 = a1;
    (*(v5 + 16))(v8, a2, v4);
    v14 = sub_2707A8420();
    v15 = sub_2707A8840();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v16;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v16 = 136446210;
      sub_2707A83C0();
      v17 = sub_270748CAC(8);
      MEMORY[0x2743A7BA0](v17);
      v34 = a2;

      (*(v5 + 8))(v8, v4);
      v18 = sub_27073D0F4();
      a2 = v34;

      v19 = v32;
      *(v32 + 1) = v18;
      v20 = v19;
      _os_log_impl(&dword_270703000, v14, v15, "Device %{public}s: Remove Input Devices", v19, 0xCu);
      v21 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x2743A9010](v21, -1, -1);
      MEMORY[0x2743A9010](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v22 = sub_27073BE3C(a2);
  v23 = sub_27073D0D0(v22);
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = v23;
  v36 = MEMORY[0x277D84F90];
  result = sub_27071A9C8(0, v23 & ~(v23 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v36;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A80A0](v26, v22);
      }

      else
      {
      }

      sub_270738A14();

      v36 = v27;
      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_27071A9C8((v28 > 1), v29 + 1, 1);
        v27 = v36;
      }

      ++v26;
      *(v27 + 16) = v30;
    }

    while (v24 != v26);

LABEL_17:

    return sub_27073BEF0();
  }

  __break(1u);
  return result;
}

void HIDVirtualServicePool.addServiceClient(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_30_1();
  v25 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_30_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_14_3();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v4;
  v26[4] = sub_27073E46C;
  v26[5] = v17;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v26[2] = v18;
  v26[3] = &block_descriptor_12;
  v19 = _Block_copy(v26);

  v20 = v4;
  sub_2707A8490();
  OUTLINED_FUNCTION_4_11();
  sub_27073F578(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  OUTLINED_FUNCTION_1_14();
  sub_27071A810(v23, &unk_28082A2F0);
  OUTLINED_FUNCTION_16_4();
  sub_2707A8A90();
  v24 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v24);
  _Block_release(v19);
  (*(v7 + 8))(v1, v5);
  (*(v11 + 8))(v16, v25);

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27073CC5C(uint64_t a1, void *a2)
{
  v42 = a2;
  v3 = type metadata accessor for EventReportSenderID();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808298F8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - v12;
  v14 = OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_virtualServices;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v9;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;
  v46 = v15;

  v23 = 0;
  v43 = v16;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_9:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v24 << 6);
      v27 = v46;
      v28 = v44;
      sub_2707230C4(*(v46 + 48) + *(v45 + 72) * v26, v44);
      v29 = *(*(v27 + 56) + 8 * v26);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
      v31 = *(v30 + 48);
      v32 = v28;
      v16 = v43;
      sub_270723128(v32, v43);
      *(v16 + v31) = v29;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v30);

LABEL_10:
      sub_27073F3AC(v16, v13, &qword_2808298F8);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
      if (__swift_getEnumTagSinglePayload(v13, 1, v33) == 1)
      {
      }

      v34 = *&v13[*(v33 + 48)];
      v35 = *(v34 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_service);
      if (v35)
      {
        swift_beginAccess();
        v36 = *(v35 + 48);
        if (v36 == [v42 serviceID])
        {
          break;
        }
      }

      result = sub_27072318C(v13);
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v38 = *(v34 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_client);
    v39 = v42;
    *(v34 + OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_client) = v42;

    v40 = v39;

    return sub_27072318C(v13);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829900);
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v37);
        v20 = 0;
        goto LABEL_10;
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        v23 = v24;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t HIDVirtualServicePool.deinit()
{
  sub_27073F354(v0 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, &unk_28082A120);

  return v0;
}

uint64_t sub_27073D074(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_27073D0D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2707A8CA0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_27073D0F4()
{
  OUTLINED_FUNCTION_21_4();

  v3 = sub_27073D1B0(v8, 0, 0, 1, v2, v1);
  v4 = v8[0];
  if (v3)
  {
    v5 = v3;

    ObjectType = swift_getObjectType();
    v8[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v8[0] = v2;
    v8[1] = v1;
  }

  v6 = *v0;
  if (*v0)
  {
    sub_2707374F8(v8, *v0);
    *v0 = v6 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4;
}

unint64_t sub_27073D1B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_27073D2B0(a5, a6);
    *a1 = v9;
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
    result = sub_2707A8B40();
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

uint64_t sub_27073D2B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_27073D2FC(a1, a2);
  sub_27073D414(&unk_2880767F0);
  return v3;
}

uint64_t sub_27073D2FC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2707A8670())
  {
    result = sub_27073D4F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2707A8AF0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2707A8B40();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_27073D414(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_27073D568(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_27073D4F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_27073D568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829968);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t *sub_27073D65C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_27073D9F8(v12, v8, a3, v6);
      MEMORY[0x2743A9010](v12, -1, -1);
      return v5;
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2707961C0(0, v8, v9);
  v10 = sub_27073D7E0(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return v5;
}

uint64_t sub_27073D7E0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for EventReportSenderID();
  v31 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8, v6);
  v29 = 0;
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v33 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v34 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v33;
    v22 = v30;
    sub_2707230C4(v33[6] + *(v31 + 72) * v20, v30);
    v36 = *(v21[7] + 8 * v20);

    v23 = v35;
    v24 = v32(v22, &v36);

    result = sub_27072318C(v22);
    v35 = v23;
    if (v23)
    {
      return result;
    }

    v15 = v34;
    if (v24)
    {
      *(v28 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_27073DE18(v28, v27, v29, v33);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_27073DE18(v28, v27, v29, v33);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v34 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_27073D9F8(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_27073D7E0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_27073DA88()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v41 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_0_1();
  v40 = v8;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_8_9();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v39 = &v38 - v16;
  if (!v3)
  {
    goto LABEL_27;
  }

  if (v1[2] == v3)
  {

LABEL_27:
    OUTLINED_FUNCTION_12_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296F8);
  v17 = sub_2707A8CE0();
  v18 = v17;
  if (v5 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v7;
  }

  v20 = 0;
  v21 = v17 + 64;
  v38 = v1;
  v22 = v39;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v42 = (v19 - 1) & v19;
LABEL_16:
    v26 = v23 | (v20 << 6);
    v27 = v1[6];
    v43 = *(v40 + 72);
    sub_2707230C4(v27 + v43 * v26, v22);
    memcpy(v45, (v1[7] + 80 * v26), 0x50uLL);
    sub_270723128(v22, v13);
    sub_2707A8F60();
    sub_27072305C(v45, &v44);
    sub_2707A8410();
    sub_27073F578(&qword_280829710, MEMORY[0x277CC95F0]);
    sub_2707A8540();
    MEMORY[0x2743A8540](*(v13 + *(v41 + 20)));
    v28 = sub_2707A8FC0();
    v29 = -1 << *(v18 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v1 = v38;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v21 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v1 = v38;
LABEL_25:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    sub_270723128(v13, *(v18 + 48) + v32 * v43);
    memcpy((*(v18 + 56) + 80 * v32), v45, 0x50uLL);
    ++*(v18 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_30;
    }

    v19 = v42;
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= v5)
    {
      goto LABEL_27;
    }

    v25 = v7[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v42 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_27073DE18(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventReportSenderID();
  v40 = *(v8 - 8);
  v41 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v39 = &v37 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829908);
  result = sub_2707A8CE0();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v19 = result + 64;
  v38 = a4;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v42 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v39;
    v43 = *(v40 + 72);
    sub_2707230C4(v24 + v43 * v23, v39);
    v26 = v25;
    v27 = *(a4[7] + 8 * v23);
    sub_270723128(v26, v12);
    sub_2707A8F60();
    sub_2707A8410();
    sub_27073F578(&qword_280829710, MEMORY[0x277CC95F0]);

    sub_2707A8540();
    MEMORY[0x2743A8540](*&v12[*(v41 + 20)]);
    result = sub_2707A8FC0();
    v28 = -1 << *(v16 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a4 = v38;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v19 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a4 = v38;
LABEL_25:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_270723128(v12, *(v16 + 48) + v31 * v43);
    *(*(v16 + 56) + 8 * v31) = v27;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    v17 = v42;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v42 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_27073E174(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_270756E64();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_27073E864(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_27073E1E0()
{
  v1 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_27073E2AC()
{
  v1 = sub_2707A8410();
  OUTLINED_FUNCTION_4_9(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_27073BD64(v3, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27073E34C()
{
  v1 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_27073E430()
{

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27073E474@<X0>(uint64_t *a1@<X8>)
{
  result = HIDVirtualServicePool.enabledDeviceTypes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27073E4D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27073E50C()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27073E600()
{
  if (!qword_2808298B8)
  {
    sub_2707A8440();
    v0 = sub_2707A8930();
    if (!v1)
    {
      atomic_store(v0, &qword_2808298B8);
    }
  }
}

void sub_27073E660()
{
  type metadata accessor for EventReportSenderID();
  if (v0 <= 0x3F)
  {
    sub_27073E600();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27073E7E0()
{

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_27073E824()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27073E864(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2707A8E60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2707A8730();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27073EA20(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_27073E958(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27073E958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2707A8EA0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_27073EA20(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2707A8EA0();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2707A8EA0()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2707A8EA0() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_270713F34(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_270713F34(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_27073F054((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_27073EF28(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_27073EF28(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_270756D20(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_27073F054((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_27073F054(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_27071A454(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2707A8EA0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_27071A454(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2707A8EA0() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_27073F1F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 56;
    do
    {
      if (*(a2 + 16))
      {
        v7 = *(v5 + v4);
        sub_2707A8F60();
        MEMORY[0x2743A8500](v7);
        v8 = sub_2707A8FC0();
        v9 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v6 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v8 = v10 + 1;
          if (*(*(a2 + 48) + v10) == v7)
          {
            return 0;
          }
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 1;
}

uint64_t sub_27073F304(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_24_2(a1, a2, a3);
  OUTLINED_FUNCTION_6_9();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_27073F354(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_6_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_27073F3AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_24_2(a1, a2, a3);
  OUTLINED_FUNCTION_6_9();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_27073F404()
{
  v1 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  sub_2707A8410();
  OUTLINED_FUNCTION_6_9();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_27073F4F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_11_5(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t sub_27073F578(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27073F5C0()
{
  result = qword_28082A130;
  if (!qword_28082A130)
  {
    type metadata accessor for AppleVendorTopCaseGesture(255);
    sub_270727564();
    sub_27073F668();
    sub_27073F6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A130);
  }

  return result;
}

unint64_t sub_27073F668()
{
  result = qword_28082A140;
  if (!qword_28082A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A140);
  }

  return result;
}

unint64_t sub_27073F6BC()
{
  result = qword_280829938;
  if (!qword_280829938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829938);
  }

  return result;
}

unint64_t sub_27073F710()
{
  result = qword_28082A150;
  if (!qword_28082A150)
  {
    type metadata accessor for AppleVendorKeyboardGesture(255);
    sub_2707318C8();
    sub_27073F7B8();
    sub_27073F80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A150);
  }

  return result;
}

unint64_t sub_27073F7B8()
{
  result = qword_28082A160;
  if (!qword_28082A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A160);
  }

  return result;
}

unint64_t sub_27073F80C()
{
  result = qword_280829940;
  if (!qword_280829940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829940);
  }

  return result;
}

unint64_t sub_27073F860()
{
  result = qword_28082A170;
  if (!qword_28082A170)
  {
    type metadata accessor for ConsumerGesture(255);
    sub_27073F908();
    sub_27073F95C();
    sub_27073F9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A170);
  }

  return result;
}

unint64_t sub_27073F908()
{
  result = qword_280829948;
  if (!qword_280829948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829948);
  }

  return result;
}

unint64_t sub_27073F95C()
{
  result = qword_28082A180;
  if (!qword_28082A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A180);
  }

  return result;
}

unint64_t sub_27073F9B0()
{
  result = qword_280829950;
  if (!qword_280829950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829950);
  }

  return result;
}

unint64_t sub_27073FA04()
{
  result = qword_28082A190;
  if (!qword_28082A190)
  {
    type metadata accessor for KeyboardGesture(255);
    sub_27072C7CC();
    sub_27073FAAC();
    sub_27073FB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A190);
  }

  return result;
}

unint64_t sub_27073FAAC()
{
  result = qword_28082A1A0;
  if (!qword_28082A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A1A0);
  }

  return result;
}

unint64_t sub_27073FB00()
{
  result = qword_280829958;
  if (!qword_280829958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829958);
  }

  return result;
}

uint64_t sub_27073FB54(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27073FBD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return swift_allocObject();
}

uint64_t ReportID.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_2707A86D0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t Input.init(_:_:_:_:_:_:_:_:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, _BYTE *a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = 2;
  if (!*a2)
  {
    v9 = 0;
  }

  v10 = v9 | *a1;
  v11 = 4;
  if (!*a3)
  {
    v11 = 0;
  }

  v12 = 8;
  if (!*a4)
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 16;
  if (!*a5)
  {
    v14 = 0;
  }

  v15 = 32;
  if (!*a6)
  {
    v15 = 0;
  }

  v16 = v14 | v15;
  v17 = 64;
  if (!*a7)
  {
    v17 = 0;
  }

  v20 = 0;
  result = sub_270740DC4(&v20, v13 | v16 | v17);
  *a8 = result;
  a8[1] = v19;
  return result;
}

uint64_t static HIDReportDescriptor.Builder.buildBlock(_:)(uint64_t a1)
{
  v20 = xmmword_2707A9D20;
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_27070F5BC(i, v19);
      sub_27070F5BC(v19, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829978);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829980);
      if (swift_dynamicCast())
      {
        sub_27070F8A8(v15, v18);
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        v3 = OUTLINED_FUNCTION_65();
        v4(v3);
        sub_2707A8370();
        v5 = OUTLINED_FUNCTION_65();
        sub_270708D74(v5, v6);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v7 = v18;
      }

      else
      {
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_270741D34(v15);
        sub_27070F5BC(v19, v18);
        if (!swift_dynamicCast())
        {
          result = sub_2707A8C70();
          __break(1u);
          return result;
        }

        v8 = OUTLINED_FUNCTION_65();
        sub_270706C38(v8, v9);
        OUTLINED_FUNCTION_65();
        sub_2707A8370();
        v10 = OUTLINED_FUNCTION_65();
        sub_270708D74(v10, v11);
        v12 = OUTLINED_FUNCTION_65();
        sub_270708D74(v12, v13);
        v7 = v19;
      }

      __swift_destroy_boxed_opaque_existential_1(v7);
      if (!--v1)
      {
        return v20;
      }
    }
  }

  return 0;
}

uint64_t ApplicationCollection.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270741638(a1, a2, &unk_288073960, 1, &unk_288073988);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDReportDescriptor.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t LogicalCollection.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270741638(a1, a2, &unk_2880739B0, 2, &unk_2880739D8);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2707401C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_12_4();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_14_4();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v20 = OUTLINED_FUNCTION_16_5(v12, v13, v14, v15, v16, v17, v18, v19, v35);
  v37 = a1;
  v21(v20, a1, a2);
  v22 = a2;
  OUTLINED_FUNCTION_5_10();
  if (sub_2707A89F0() & 1) == 0 || (OUTLINED_FUNCTION_18_4(), OUTLINED_FUNCTION_13_6(), OUTLINED_FUNCTION_7_9(), OUTLINED_FUNCTION_2_9(), sub_2707A8580(), v23 = OUTLINED_FUNCTION_1_15(), result = v24(v23), (a1))
  {
    OUTLINED_FUNCTION_0_16();
    if (sub_2707A89E0() > 63)
    {
      v40 = -1;
      v22 = a2;
      OUTLINED_FUNCTION_5_10();
      a1 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_16();
      v26 = sub_2707A89E0();
      if (a1)
      {
        if (v26 <= 64)
        {
          OUTLINED_FUNCTION_18_4();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_2_9();
          sub_2707A8560();
          v27 = OUTLINED_FUNCTION_1_15();
          v28(v27);
          if ((a1 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v26 < 65)
      {
LABEL_11:
        OUTLINED_FUNCTION_0_16();
        sub_2707A89D0();
        goto LABEL_12;
      }

      sub_2707417C8();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_17_3();
      v29 = OUTLINED_FUNCTION_1_15();
      v30(v29);
      if (a1)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_0_16();
    sub_2707A89D0();
    v31 = OUTLINED_FUNCTION_20_4();
    (a1)(v31);
    v39 = a3;
    v32 = sub_27074110C(&v39, v22);
    v34 = v33;
    result = (a1)(v37, a2);
    *a4 = v32;
    a4[1] = v34;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2707404CC(unsigned __int8 a1)
{
  v10 = 13;
  v2 = sub_270740DC4(&v10, a1);
  v4 = v3;
  v9 = 13;
  v5 = sub_270740DC4(&v9, a1);
  sub_270708D74(v5, v6);
  v7 = sub_2707A82E0();
  sub_270708D74(v2, v4);
  return qword_2707ADCB8[v7 & 3];
}

uint64_t HIDReportDescriptorItemProtocol.bSize.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4();
  v7 = v6;
  v8 = (v4)(a1, a2);
  sub_270708D74(v8, v9);
  v10 = sub_2707A82E0();
  sub_270708D74(v5, v7);
  return qword_2707ADCB8[v10 & 3];
}

UniversalHID::HIDReportDescriptor::ItemTag_optional sub_2707406BC@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_2707A82E0();
  result.value = HIDReportDescriptor.ItemTag.init(rawValue:)(v2 >> 2).value;
  if (v4 == 28)
  {
    __break(1u);
    JUMPOUT(0x270740750);
  }

  *a1 = byte_2707ADCD8[v4];
  return result;
}

UniversalHID::HIDReportDescriptor::ItemTag_optional sub_270740760@<W0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  result.value = sub_270740890(a1, &v4).value;
  *a2 = byte_2707ADCD8[v4];
  return result;
}

void *HIDReportDescriptorItemProtocol.bType.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 32))(&v4);
  *a2 = byte_2707ADCD8[v4];
  return result;
}

UniversalHID::HIDReportDescriptor::ItemTag_optional sub_2707407F8@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_2707A82E0();
  result.value = HIDReportDescriptor.ItemTag.init(rawValue:)(v2 >> 2).value;
  if (v4 == 28)
  {
    __break(1u);
    JUMPOUT(0x270740880);
  }

  *a1 = v4;
  return result;
}

UniversalHID::HIDReportDescriptor::ItemTag_optional sub_270740890@<W0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v12 = 13;
  v4 = sub_270740DC4(&v12, a1);
  v6 = v5;
  v11 = 13;
  v7 = sub_270740DC4(&v11, a1);
  sub_270708D74(v7, v8);
  v9 = sub_2707A82E0();
  sub_270708D74(v4, v6);
  result.value = HIDReportDescriptor.ItemTag.init(rawValue:)(v9 >> 2).value;
  if (v13 == 28)
  {
    __break(1u);
    JUMPOUT(0x27074098CLL);
  }

  *a2 = v13;
  return result;
}

UniversalHID::HIDReportDescriptor::ItemTag_optional HIDReportDescriptorItemProtocol.bTag.getter@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 40);
  v7 = v6();
  v9 = v8;
  v10 = (v6)(a1, a2);
  sub_270708D74(v10, v11);
  v12 = sub_2707A82E0();
  sub_270708D74(v7, v9);
  result.value = HIDReportDescriptor.ItemTag.init(rawValue:)(v12 >> 2).value;
  if (v14 == 28)
  {
    __break(1u);
    JUMPOUT(0x270740AA8);
  }

  *a3 = v14;
  return result;
}

uint64_t HIDReportDescriptor.init(bytes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27070E504(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_270740B04@<X0>(_BYTE *a1@<X8>)
{
  result = HIDReportDescriptor.ItemType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270740D90@<X0>(_BYTE *a1@<X8>)
{
  result = HIDReportDescriptor.ItemTag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270740DC4(char *a1, uint64_t a2)
{
  if (a2 != a2)
  {
    __break(1u);
    JUMPOUT(0x27074109CLL);
  }

  v3 = byte_2707ADD10[*a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829968);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  *(v4 + 32) = v3;
  v5 = sub_27070E504(v4);
  if (a2 >> 7 == a2 >> 8)
  {
    v7 = 0;
    switch(v6 >> 62)
    {
      case 1uLL:
        v7 = v5 >> 32;
        break;
      case 2uLL:
        v7 = *(v5 + 24);
        break;
      case 3uLL:
        break;
      default:
        v7 = BYTE6(v6);
        break;
    }

    v11 = OUTLINED_FUNCTION_4_12(v7);
    sub_270766E38(v11, v12, a2);
  }

  else
  {
    v8 = v6 >> 62;
    if (a2 >> 15 == a2 >> 16)
    {
      v9 = 0;
      switch(v8)
      {
        case 1:
          v9 = v5 >> 32;
          break;
        case 2:
          v9 = *(v5 + 24);
          break;
        case 3:
          break;
        default:
          v9 = BYTE6(v6);
          break;
      }

      v13 = OUTLINED_FUNCTION_4_12(v9);
      sub_270766E38(v13, v14, a2);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v17, v18, v19);
    }

    else
    {
      v10 = 0;
      switch(v8)
      {
        case 1:
          v10 = v5 >> 32;
          break;
        case 2:
          v10 = *(v5 + 24);
          break;
        case 3:
          break;
        default:
          v10 = BYTE6(v6);
          break;
      }

      v15 = OUTLINED_FUNCTION_4_12(v10);
      sub_270766E38(v15, v16, a2);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v20, v21, v22);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v23, v24, v25);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v26, v27, v28);
    }
  }

  sub_2707A82E0();
  sub_2707A82F0();
  v29 = OUTLINED_FUNCTION_46();
  sub_270706C38(v29, v30);
  v31 = OUTLINED_FUNCTION_46();
  sub_270708D74(v31, v32);
  return OUTLINED_FUNCTION_46();
}

uint64_t sub_27074110C(char *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    __break(1u);
    JUMPOUT(0x2707413DCLL);
  }

  v3 = byte_2707ADD10[*a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829968);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  *(v4 + 32) = v3;
  v5 = sub_27070E504(v4);
  if (a2 > 0xFF)
  {
    v8 = 0;
    if (a2 >> 16)
    {
      switch(v6 >> 62)
      {
        case 1uLL:
          v8 = v5 >> 32;
          break;
        case 2uLL:
          v8 = *(v5 + 24);
          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(v6);
          break;
      }

      v13 = OUTLINED_FUNCTION_4_12(v8);
      sub_270766E38(v13, v14, a2);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v18, v19, v20);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v21, v22, SBYTE2(a2));
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v23, v24, v25);
    }

    else
    {
      switch(v6 >> 62)
      {
        case 1uLL:
          v8 = v5 >> 32;
          break;
        case 2uLL:
          v8 = *(v5 + 24);
          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(v6);
          break;
      }

      v11 = OUTLINED_FUNCTION_4_12(v8);
      sub_270766E38(v11, v12, a2);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_8_10();
      sub_270766E38(v15, v16, v17);
    }
  }

  else
  {
    v7 = 0;
    switch(v6 >> 62)
    {
      case 1uLL:
        v7 = v5 >> 32;
        break;
      case 2uLL:
        v7 = *(v5 + 24);
        break;
      case 3uLL:
        break;
      default:
        v7 = BYTE6(v6);
        break;
    }

    v9 = OUTLINED_FUNCTION_4_12(v7);
    sub_270766E38(v9, v10, a2);
  }

  sub_2707A82E0();
  sub_2707A82F0();
  v26 = OUTLINED_FUNCTION_46();
  sub_270706C38(v26, v27);
  v28 = OUTLINED_FUNCTION_46();
  sub_270708D74(v28, v29);
  return OUTLINED_FUNCTION_46();
}

uint64_t sub_2707414C8@<X0>(_BYTE *a1@<X8>)
{
  result = Input.Bit0.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270741554@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, uint64_t *a9@<X8>, _BYTE *a10, char a11)
{
  v12 = 2;
  if (!*a2)
  {
    v12 = 0;
  }

  v13 = v12 | *a1;
  v14 = 4;
  if (!*a3)
  {
    v14 = 0;
  }

  v15 = 8;
  if (!*a4)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 16;
  if (!*a5)
  {
    v17 = 0;
  }

  v18 = 32;
  if (!*a6)
  {
    v18 = 0;
  }

  v19 = v17 | v18;
  v20 = 64;
  if (!*a7)
  {
    v20 = 0;
  }

  v21 = v16 | v19 | v20;
  v22 = 128;
  if (!*a8)
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  v24 = 256;
  if (!*a10)
  {
    v24 = 0;
  }

  v27 = a11;
  result = sub_27074110C(&v27, v23 | v24);
  *a9 = result;
  a9[1] = v26;
  return result;
}

uint64_t sub_270741638(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v19 = sub_27070E504(a3);
  v20 = v8;
  OUTLINED_FUNCTION_8_10();
  sub_270766E38(v9, v10, a4);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v19, v20);
  v11 = sub_270708D74(v19, v20);
  v12 = a1(v11);
  v14 = v13;
  sub_2707A8370();
  sub_270708D74(v12, v14);
  v15 = sub_27070E504(a5);
  v17 = v16;
  sub_2707A8370();
  sub_270708D74(v15, v17);
  return v19;
}

uint64_t PhysicalCollection.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270741638(a1, a2, &unk_2880768A0, 0, &unk_2880768C8);
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_2707417C8()
{
  result = qword_280829970;
  if (!qword_280829970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829970);
  }

  return result;
}

uint64_t sub_27074182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t *a4@<X8>)
{
  HIDWORD(v38) = a3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_12_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_14_4();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v23 = OUTLINED_FUNCTION_16_5(v15, v16, v17, v18, v19, v20, v21, v22, v38);
  v40 = a1;
  v24(v23, a1, a2);
  v25 = a2;
  OUTLINED_FUNCTION_5_10();
  if (sub_2707A89F0())
  {
    OUTLINED_FUNCTION_0_16();
    if (sub_2707A89E0() > 64)
    {
      v42 = 0x8000000000000000;
      v25 = a2;
      OUTLINED_FUNCTION_5_10();
      if (sub_2707A89F0())
      {
        OUTLINED_FUNCTION_0_16();
        if (sub_2707A89E0() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v25 = a2;
      OUTLINED_FUNCTION_5_10();
      a1 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_16();
      v26 = sub_2707A89E0();
      if (a1)
      {
        if (v26 > 64)
        {
LABEL_8:
          sub_270710EEC();
          OUTLINED_FUNCTION_6_10();
          OUTLINED_FUNCTION_2_9();
          sub_2707A8570();
          v27 = OUTLINED_FUNCTION_1_15();
          result = v28(v27);
          if ((a1 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        OUTLINED_FUNCTION_18_4();
        OUTLINED_FUNCTION_13_6();
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_2_9();
        sub_2707A8570();
        v30 = OUTLINED_FUNCTION_1_15();
        result = v31(v30);
        if (a1)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_0_16();
        sub_2707A89D0();
        goto LABEL_14;
      }

      if (v26 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_0_16();
  if (sub_2707A89E0() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = a2;
    OUTLINED_FUNCTION_5_10();
    v32 = sub_2707A89F0();
    OUTLINED_FUNCTION_0_16();
    v33 = sub_2707A89E0();
    if ((v32 & 1) == 0)
    {
      break;
    }

    if (v33 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_270710EEC();
    OUTLINED_FUNCTION_6_10();
    v25 = OUTLINED_FUNCTION_17_3();
    (*(v10 + 8))(v4, a2);
    if (v25)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_16();
      if (sub_2707A89E0() == 64)
      {
        v25 = a2;
        OUTLINED_FUNCTION_5_10();
        if ((sub_2707A89F0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v33 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_16();
  sub_2707A89D0();
LABEL_24:
  OUTLINED_FUNCTION_0_16();
  sub_2707A89D0();
  v34 = OUTLINED_FUNCTION_20_4();
  (a1)(v34);
  LOBYTE(v42) = v39;
  v35 = sub_270740DC4(&v42, v25);
  v37 = v36;
  result = (a1)(v40, a2);
  *a4 = v35;
  a4[1] = v37;
  return result;
}

uint64_t ReportCount.init(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 14;
    result = sub_270740DC4(&v4, result);
    *a2 = result;
    a2[1] = v3;
  }

  return result;
}

uint64_t Push.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27070E504(&unk_2880768F0);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Pop.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27070E504(&unk_288076918);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ReportSize.data.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t sub_270741D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270741DD4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(char *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2;
  result = a3(&v7, a1);
  *a4 = result;
  a4[1] = v6;
  return result;
}

unint64_t sub_270741E1C()
{
  result = qword_280829990;
  if (!qword_280829990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829990);
  }

  return result;
}

unint64_t sub_270741E74()
{
  result = qword_280829998;
  if (!qword_280829998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829998);
  }

  return result;
}

unint64_t sub_270741ECC()
{
  result = qword_2808299A0;
  if (!qword_2808299A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299A0);
  }

  return result;
}

unint64_t sub_270741F24()
{
  result = qword_2808299A8;
  if (!qword_2808299A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299A8);
  }

  return result;
}

unint64_t sub_270741F7C()
{
  result = qword_2808299B0;
  if (!qword_2808299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299B0);
  }

  return result;
}

unint64_t sub_270741FD4()
{
  result = qword_2808299B8;
  if (!qword_2808299B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299B8);
  }

  return result;
}

unint64_t sub_27074202C()
{
  result = qword_2808299C0;
  if (!qword_2808299C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299C0);
  }

  return result;
}

unint64_t sub_270742084()
{
  result = qword_2808299C8;
  if (!qword_2808299C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299C8);
  }

  return result;
}

unint64_t sub_2707420DC()
{
  result = qword_2808299D0;
  if (!qword_2808299D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299D0);
  }

  return result;
}

unint64_t sub_270742134()
{
  result = qword_2808299D8;
  if (!qword_2808299D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299D8);
  }

  return result;
}

unint64_t sub_27074218C()
{
  result = qword_2808299E0;
  if (!qword_2808299E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299E0);
  }

  return result;
}

unint64_t sub_2707421E4()
{
  result = qword_2808299E8;
  if (!qword_2808299E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299E8);
  }

  return result;
}

unint64_t sub_27074223C()
{
  result = qword_2808299F0;
  if (!qword_2808299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299F0);
  }

  return result;
}

unint64_t sub_270742294()
{
  result = qword_2808299F8;
  if (!qword_2808299F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808299F8);
  }

  return result;
}

unint64_t sub_2707422EC()
{
  result = qword_280829A00;
  if (!qword_280829A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A00);
  }

  return result;
}

unint64_t sub_270742344()
{
  result = qword_280829A08;
  if (!qword_280829A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A08);
  }

  return result;
}

unint64_t sub_27074239C()
{
  result = qword_280829A10;
  if (!qword_280829A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A10);
  }

  return result;
}

unint64_t sub_2707423F4()
{
  result = qword_280829A18;
  if (!qword_280829A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A18);
  }

  return result;
}

unint64_t sub_27074244C()
{
  result = qword_280829A20;
  if (!qword_280829A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A20);
  }

  return result;
}

unint64_t sub_2707424A4()
{
  result = qword_280829A28;
  if (!qword_280829A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A28);
  }

  return result;
}

unint64_t sub_2707424FC()
{
  result = qword_280829A30;
  if (!qword_280829A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A30);
  }

  return result;
}

unint64_t sub_270742554()
{
  result = qword_280829A38;
  if (!qword_280829A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A38);
  }

  return result;
}

unint64_t sub_2707425AC()
{
  result = qword_280829A40;
  if (!qword_280829A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A40);
  }

  return result;
}

unint64_t sub_270742604()
{
  result = qword_280829A48;
  if (!qword_280829A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A48);
  }

  return result;
}

unint64_t sub_27074265C()
{
  result = qword_280829A50;
  if (!qword_280829A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A50);
  }

  return result;
}

unint64_t sub_2707426B4()
{
  result = qword_280829A58;
  if (!qword_280829A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A58);
  }

  return result;
}

unint64_t sub_27074270C()
{
  result = qword_280829A60;
  if (!qword_280829A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A60);
  }

  return result;
}

unint64_t sub_270742764()
{
  result = qword_280829A68;
  if (!qword_280829A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A68);
  }

  return result;
}

unint64_t sub_2707427BC()
{
  result = qword_280829A70;
  if (!qword_280829A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollGesture.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDReportDescriptor.ItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270742970);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDReportDescriptor.ItemTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDReportDescriptor.ItemTag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270742AF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270742CD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270742DA0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDReportDescriptor.Builder(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for HIDReportDescriptor.Builder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x270742F9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return sub_2707A8960();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_2707A8E80();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_2707A8EB0();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_2707A8570();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_2707432D8()
{
  result = sub_2707432FC();
  qword_280829A78 = result;
  unk_280829A80 = v1;
  return result;
}

uint64_t sub_2707432FC()
{
  v1 = sub_27070E504(&unk_288076340);
  v17 = v1;
  v19 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v3 = v17;
  v4 = v19;
  sub_270706C38(v17, v19);
  sub_270708D74(v17, v19);
  v6 = sub_27070E504(&unk_288076368);
  v18 = v6;
  v20 = v5;
  v7 = 0;
  switch(v5 >> 62)
  {
    case 1uLL:
      v7 = v6 >> 32;
      break;
    case 2uLL:
      v7 = *(v6 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = BYTE6(v5);
      break;
  }

  sub_270766E38(v7, v7, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v18, v20);
  sub_270708D74(v18, v20);
  v8 = sub_27074353C();
  v10 = v9;
  sub_2707A8370();
  sub_270708D74(v8, v10);
  v11 = sub_27070E504(&unk_288076390);
  v13 = v12;
  sub_2707A8370();
  sub_270708D74(v11, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 56) = &type metadata for Usage;
  *(inited + 64) = &protocol witness table for Usage;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 96) = &type metadata for PhysicalCollection;
  *(inited + 104) = &protocol witness table for PhysicalCollection;
  *(inited + 72) = v18;
  *(inited + 80) = v20;
  v15 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v15;
}

uint64_t sub_27074353C()
{
  v1 = sub_27070E504(&unk_288076098);
  v119 = v1;
  v120 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v119, v120);
  v117 = v120;
  v118 = v119;
  sub_270708D74(v119, v120);
  v4 = sub_27070E504(&unk_2880760C0);
  v119 = v4;
  v120 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 48);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v119, v120);
  v115 = v120;
  v116 = v119;
  sub_270708D74(v119, v120);
  v7 = sub_27070E504(&unk_2880760E8);
  v119 = v7;
  v120 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 49);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v119, v120);
  v113 = v120;
  v114 = v119;
  sub_270708D74(v119, v120);
  v10 = sub_27070E504(&unk_288076110);
  v119 = v10;
  v120 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v119, v120);
  v111 = v120;
  v112 = v119;
  sub_270708D74(v119, v120);
  LOBYTE(v119) = 7;
  v110 = sub_270740DC4(&v119, 0xFFFFLL);
  v109 = v12;
  v14 = sub_27070E504(&unk_288076138);
  v119 = v14;
  v120 = v13;
  v15 = 0;
  switch(v13 >> 62)
  {
    case 1uLL:
      v15 = v14 >> 32;
      break;
    case 2uLL:
      v15 = *(v14 + 24);
      break;
    case 3uLL:
      break;
    default:
      v15 = BYTE6(v13);
      break;
  }

  sub_270766E38(v15, v15, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v16 = v119;
  v17 = v120;
  sub_270706C38(v119, v120);
  v107 = v17;
  v108 = v16;
  sub_270708D74(v16, v17);
  v19 = sub_27070E504(&unk_288076160);
  v119 = v19;
  v120 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v21 = v119;
  v22 = v120;
  sub_270706C38(v119, v120);
  v105 = v22;
  v106 = v21;
  sub_270708D74(v21, v22);
  v24 = sub_27070E504(&unk_288076188);
  v119 = v24;
  v120 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v27 = v119;
  v26 = v120;
  sub_270706C38(v119, v120);
  v103 = v27;
  v104 = v26;
  sub_270708D74(v27, v26);
  v29 = sub_27070E504(&unk_2880761B0);
  v119 = v29;
  v120 = v28;
  v30 = 0;
  switch(v28 >> 62)
  {
    case 1uLL:
      v30 = v29 >> 32;
      break;
    case 2uLL:
      v30 = *(v29 + 24);
      break;
    case 3uLL:
      break;
    default:
      v30 = BYTE6(v28);
      break;
  }

  sub_270766E38(v30, v30, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v31 = v119;
  v32 = v120;
  sub_270706C38(v119, v120);
  v101 = v32;
  v102 = v31;
  sub_270708D74(v31, v32);
  v34 = sub_27070E504(&unk_2880761D8);
  v119 = v34;
  v120 = v33;
  v35 = 0;
  switch(v33 >> 62)
  {
    case 1uLL:
      v35 = v34 >> 32;
      break;
    case 2uLL:
      v35 = *(v34 + 24);
      break;
    case 3uLL:
      break;
    default:
      v35 = BYTE6(v33);
      break;
  }

  sub_270766E38(v35, v35, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v37 = v119;
  v36 = v120;
  sub_270706C38(v119, v120);
  v99 = v37;
  v100 = v36;
  sub_270708D74(v37, v36);
  v39 = sub_27070E504(&unk_288076200);
  v119 = v39;
  v120 = v38;
  v40 = 0;
  switch(v38 >> 62)
  {
    case 1uLL:
      v40 = v39 >> 32;
      break;
    case 2uLL:
      v40 = *(v39 + 24);
      break;
    case 3uLL:
      break;
    default:
      v40 = BYTE6(v38);
      break;
  }

  sub_270766E38(v40, v40, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v41 = v119;
  v42 = v120;
  sub_270706C38(v119, v120);
  v97 = v42;
  v98 = v41;
  sub_270708D74(v41, v42);
  v44 = sub_27070E504(&unk_288076228);
  v119 = v44;
  v120 = v43;
  v45 = 0;
  switch(v43 >> 62)
  {
    case 1uLL:
      v45 = v44 >> 32;
      break;
    case 2uLL:
      v45 = *(v44 + 24);
      break;
    case 3uLL:
      break;
    default:
      v45 = BYTE6(v43);
      break;
  }

  sub_270766E38(v45, v45, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v46 = v119;
  v47 = v120;
  sub_270706C38(v119, v120);
  v95 = v47;
  v96 = v46;
  sub_270708D74(v46, v47);
  v49 = sub_27070E504(&unk_288076250);
  v119 = v49;
  v120 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v52 = v119;
  v51 = v120;
  sub_270706C38(v119, v120);
  v94 = v51;
  sub_270708D74(v52, v51);
  v54 = sub_27070E504(&unk_288076278);
  v119 = v54;
  v120 = v53;
  v55 = 0;
  switch(v53 >> 62)
  {
    case 1uLL:
      v55 = v54 >> 32;
      break;
    case 2uLL:
      v55 = *(v54 + 24);
      break;
    case 3uLL:
      break;
    default:
      v55 = BYTE6(v53);
      break;
  }

  sub_270766E38(v55, v55, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v56 = v119;
  v57 = v120;
  sub_270706C38(v119, v120);
  v93 = v56;
  sub_270708D74(v56, v57);
  LOBYTE(v119) = 5;
  v58 = sub_27074110C(&v119, 0xFF00uLL);
  v91 = v59;
  v92 = v58;
  LOBYTE(v119) = 17;
  v60 = sub_27074110C(&v119, 0x102uLL);
  v89 = v61;
  v90 = v60;
  v63 = sub_27070E504(&unk_2880762A0);
  v119 = v63;
  v120 = v62;
  v64 = 0;
  switch(v62 >> 62)
  {
    case 1uLL:
      v64 = v63 >> 32;
      break;
    case 2uLL:
      v64 = *(v63 + 24);
      break;
    case 3uLL:
      break;
    default:
      v64 = BYTE6(v62);
      break;
  }

  sub_270766E38(v64, v64, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v66 = v119;
  v65 = v120;
  sub_270706C38(v119, v120);
  sub_270708D74(v66, v65);
  LOBYTE(v119) = 7;
  v67 = sub_270740DC4(&v119, 255);
  v87 = v68;
  v88 = v67;
  v70 = sub_27070E504(&unk_2880762C8);
  v119 = v70;
  v120 = v69;
  v71 = 0;
  switch(v69 >> 62)
  {
    case 1uLL:
      v71 = v70 >> 32;
      break;
    case 2uLL:
      v71 = *(v70 + 24);
      break;
    case 3uLL:
      break;
    default:
      v71 = BYTE6(v69);
      break;
  }

  sub_270766E38(v71, v71, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v72 = v119;
  v73 = v120;
  sub_270706C38(v119, v120);
  sub_270708D74(v72, v73);
  v75 = sub_27070E504(&unk_2880762F0);
  v119 = v75;
  v120 = v74;
  v76 = 0;
  switch(v74 >> 62)
  {
    case 1uLL:
      v76 = v75 >> 32;
      break;
    case 2uLL:
      v76 = *(v75 + 24);
      break;
    case 3uLL:
      break;
    default:
      v76 = BYTE6(v74);
      break;
  }

  sub_270766E38(v76, v76, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v77 = v119;
  v78 = v120;
  sub_270706C38(v119, v120);
  sub_270708D74(v77, v78);
  v80 = sub_27070E504(&unk_288076318);
  v119 = v80;
  v120 = v79;
  v81 = 0;
  switch(v79 >> 62)
  {
    case 1uLL:
      v81 = v80 >> 32;
      break;
    case 2uLL:
      v81 = *(v80 + 24);
      break;
    case 3uLL:
      break;
    default:
      v81 = BYTE6(v79);
      break;
  }

  sub_270766E38(v81, v81, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v83 = v119;
  v82 = v120;
  sub_270706C38(v119, v120);
  sub_270708D74(v83, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  v84 = swift_allocObject();
  *(v84 + 72) = v118;
  *(v84 + 80) = v117;
  *(v84 + 112) = v116;
  *(v84 + 120) = v115;
  *(v84 + 152) = v114;
  *(v84 + 160) = v113;
  *(v84 + 192) = v112;
  *(v84 + 200) = v111;
  *(v84 + 232) = v110;
  *(v84 + 240) = v109;
  *(v84 + 272) = v108;
  *(v84 + 280) = v107;
  *(v84 + 56) = &type metadata for ReportID;
  *(v84 + 64) = &protocol witness table for ReportID;
  *(v84 + 32) = 19;
  *(v84 + 16) = xmmword_2707ADD40;
  *(v84 + 312) = v106;
  *(v84 + 320) = v105;
  *(v84 + 352) = v103;
  *(v84 + 96) = &type metadata for UsagePage;
  *(v84 + 104) = &protocol witness table for UsagePage;
  *(v84 + 360) = v104;
  *(v84 + 136) = &type metadata for Usage;
  *(v84 + 144) = &protocol witness table for Usage;
  *(v84 + 176) = &type metadata for Usage;
  *(v84 + 184) = &protocol witness table for Usage;
  *(v84 + 392) = v102;
  *(v84 + 400) = v101;
  *(v84 + 432) = v99;
  *(v84 + 216) = &type metadata for LogicalMinimum;
  *(v84 + 224) = &protocol witness table for LogicalMinimum;
  *(v84 + 440) = v100;
  *(v84 + 256) = &type metadata for LogicalMaximum;
  *(v84 + 264) = &protocol witness table for LogicalMaximum;
  *(v84 + 472) = v98;
  *(v84 + 480) = v97;
  *(v84 + 296) = &type metadata for ReportSize;
  *(v84 + 304) = &protocol witness table for ReportSize;
  *(v84 + 512) = v96;
  *(v84 + 520) = v95;
  *(v84 + 552) = v52;
  *(v84 + 336) = &type metadata for ReportCount;
  *(v84 + 344) = &protocol witness table for ReportCount;
  *(v84 + 560) = v94;
  *(v84 + 376) = &type metadata for Input;
  *(v84 + 384) = &protocol witness table for Input;
  *(v84 + 416) = &type metadata for ReportSize;
  *(v84 + 424) = &protocol witness table for ReportSize;
  *(v84 + 456) = &type metadata for ReportCount;
  *(v84 + 464) = &protocol witness table for ReportCount;
  *(v84 + 496) = &type metadata for Input;
  *(v84 + 504) = &protocol witness table for Input;
  *(v84 + 536) = &type metadata for ReportSize;
  *(v84 + 544) = &protocol witness table for ReportSize;
  *(v84 + 576) = &type metadata for ReportCount;
  *(v84 + 584) = &protocol witness table for ReportCount;
  *(v84 + 616) = &type metadata for Input;
  *(v84 + 624) = &protocol witness table for Input;
  *(v84 + 592) = v93;
  *(v84 + 600) = v57;
  *(v84 + 656) = &type metadata for UsagePage;
  *(v84 + 664) = &protocol witness table for UsagePage;
  *(v84 + 632) = v92;
  *(v84 + 640) = v91;
  *(v84 + 696) = &type metadata for Usage;
  *(v84 + 704) = &protocol witness table for Usage;
  *(v84 + 672) = v90;
  *(v84 + 680) = v89;
  *(v84 + 736) = &type metadata for LogicalMinimum;
  *(v84 + 744) = &protocol witness table for LogicalMinimum;
  *(v84 + 712) = v66;
  *(v84 + 720) = v65;
  *(v84 + 776) = &type metadata for LogicalMaximum;
  *(v84 + 784) = &protocol witness table for LogicalMaximum;
  *(v84 + 752) = v88;
  *(v84 + 760) = v87;
  *(v84 + 816) = &type metadata for ReportSize;
  *(v84 + 824) = &protocol witness table for ReportSize;
  *(v84 + 792) = v72;
  *(v84 + 800) = v73;
  *(v84 + 856) = &type metadata for ReportCount;
  *(v84 + 864) = &protocol witness table for ReportCount;
  *(v84 + 832) = v77;
  *(v84 + 840) = v78;
  *(v84 + 896) = &type metadata for Input;
  *(v84 + 904) = &protocol witness table for Input;
  *(v84 + 872) = v83;
  *(v84 + 880) = v82;
  v85 = static HIDReportDescriptor.Builder.buildBlock(_:)(v84);
  swift_setDeallocating();
  sub_27078DA0C();
  return v85;
}

uint64_t static AbsolutePointerReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829450 != -1)
  {
    swift_once();
  }

  v2 = qword_280829A78;
  v3 = qword_280829A80;
  *a1 = qword_280829A78;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t AbsolutePointerReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270744430@<X0>(uint64_t *a1@<X8>)
{
  result = AbsolutePointerReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AbsolutePointerReport.x.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

void sub_270744570()
{
  HIDFixed.init(doubleValue:)();

  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t AbsolutePointerReport.y.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27074464C@<X0>(_BYTE *a1@<X8>)
{
  result = AbsolutePointerReport.buttonMask.getter();
  *a1 = result;
  return result;
}

void (*AbsolutePointerReport.buttonMask.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_2707446D4;
}

unint64_t sub_270744710@<X0>(_BYTE *a1@<X8>)
{
  result = AbsolutePointerReport.modifierMask.getter();
  *a1 = result;
  return result;
}

void (*AbsolutePointerReport.modifierMask.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270744798;
}

double AbsolutePointerReport.point.getter()
{
  v0 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  return v0;
}

uint64_t AbsolutePointerReport.modifiers.getter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();

  return KeyboardModifierMask.keyboardUsages()(v0);
}

uint64_t sub_270744854@<X0>(uint64_t *a1@<X8>)
{
  result = AbsolutePointerReport.modifiers.getter();
  *a1 = result;
  return result;
}

void AbsolutePointerReport.modifiers.setter(uint64_t a1)
{
  KeyboardModifierMask.init(usages:)(a1);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t AbsolutePointerReport.modifiers.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v2 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  *v1 = KeyboardModifierMask.keyboardUsages()(v2);
  return OUTLINED_FUNCTION_20();
}

void sub_270744924(uint64_t *a1, char a2)
{
  if (a2)
  {

    KeyboardModifierMask.init(usages:)(v2);
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  }

  else
  {
    KeyboardModifierMask.init(usages:)(*a1);
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  }
}

uint64_t sub_2707449CC@<X0>(uint64_t a1@<X8>)
{
  result = AbsolutePointerReport.remoteTimestamp.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t AbsolutePointerReport.remoteTimestamp.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_20();
}

void (*sub_270744AD8(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  *(a1 + 8) = 0;
  return sub_270744A90;
}

void OUTLINED_FUNCTION_1_16()
{

  _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
}

UniversalHID::HIDPoint __swiftcall HIDPoint.init()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  result.z = v2;
  result.y = v1;
  result.x = v0;
  return result;
}

BOOL static HIDPoint.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

uint64_t sub_270744D30(__n128 a1, double a2)
{
  v6 = a1.n128_f64[1];
  if (a1.n128_f64[0] == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a1.n128_f64[0];
  }

  MEMORY[0x2743A8540](*&v2);
  v3 = v6;
  if (v6 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2743A8540](*&v3);
  v4 = a2;
  if (a2 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x2743A8540](*&v4);
}

uint64_t HIDPoint.hashValue.getter(double a1, double a2, double a3)
{
  sub_2707A8F60();
  v3.n128_f64[0] = a1;
  v3.n128_f64[1] = a2;
  sub_270744D30(v3, a3);
  return sub_2707A8FC0();
}

uint64_t sub_270744E18()
{
  sub_2707A8F60();
  HIDPoint.simd.getter();
  sub_270744D30(v0, v1);
  return sub_2707A8FC0();
}

float64x2_t static HIDPoint./= infix(_:_:)(float64x2_t *a1, double a2)
{
  v2 = a1[1].f64[0] / a2;
  result = vdivq_f64(*a1, vdupq_lane_s64(*&a2, 0));
  *a1 = result;
  a1[1].f64[0] = v2;
  return result;
}

float64_t static HIDPoint./= infix(_:_:)(float64x2_t *a1, uint64_t a2)
{
  result = a1[1].f64[0] / a2;
  *a1 = vdivq_f64(*a1, vdupq_lane_s64(COERCE__INT64(a2), 0));
  a1[1].f64[0] = result;
  return result;
}

double static HIDPoint.* infix(_:_:)(double a1, double a2, double a3, double a4)
{
  return a1 * a4;
}

{
  return a1 * a4;
}

uint64_t HIDPoint.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829A88);
  sub_270744FD0();
  return sub_2707A8ED0();
}

unint64_t sub_270744FD0()
{
  result = qword_280829A90;
  if (!qword_280829A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A90);
  }

  return result;
}

unint64_t sub_270745038()
{
  result = qword_280829A98;
  if (!qword_280829A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_0_18(__n128 *result, __n128 a2, double a3, double a4)
{
  *result = a2;
  result[1].n128_f64[0] = a4;
  return result;
}

uint64_t sub_270745164()
{
  result = sub_270745188();
  qword_280829AA0 = result;
  *algn_280829AA8 = v1;
  return result;
}

uint64_t sub_270745188()
{
  v1 = sub_27070E504(&unk_288074568);
  v80 = v1;
  v81 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 12);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v80, v81);
  v78 = v81;
  v79 = v80;
  sub_270708D74(v80, v81);
  v4 = sub_27070E504(&unk_288074590);
  v80 = v4;
  v81 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v80, v81);
  v76 = v81;
  v77 = v80;
  sub_270708D74(v80, v81);
  LOBYTE(v80) = 19;
  v6 = sub_27074110C(&v80, 0x514uLL);
  v74 = v7;
  v75 = v6;
  v9 = sub_27070E504(&unk_2880745B8);
  v80 = v9;
  v81 = v8;
  v10 = 0;
  switch(v8 >> 62)
  {
    case 1uLL:
      v10 = v9 >> 32;
      break;
    case 2uLL:
      v10 = *(v9 + 24);
      break;
    case 3uLL:
      break;
    default:
      v10 = BYTE6(v8);
      break;
  }

  sub_270766E38(v10, v10, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  v11 = v80;
  v12 = v81;
  sub_270706C38(v80, v81);
  v72 = v12;
  v73 = v11;
  sub_270708D74(v11, v12);
  v14 = sub_27070E504(&unk_2880745E0);
  v80 = v14;
  v81 = v13;
  v15 = 0;
  switch(v13 >> 62)
  {
    case 1uLL:
      v15 = v14 >> 32;
      break;
    case 2uLL:
      v15 = *(v14 + 24);
      break;
    case 3uLL:
      break;
    default:
      v15 = BYTE6(v13);
      break;
  }

  sub_270766E38(v15, v15, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v16 = v80;
  v17 = v81;
  sub_270706C38(v80, v81);
  v70 = v17;
  v71 = v16;
  sub_270708D74(v16, v17);
  v19 = sub_27070E504(&unk_288074608);
  v80 = v19;
  v81 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v21 = v80;
  v22 = v81;
  sub_270706C38(v80, v81);
  v68 = v22;
  v69 = v21;
  sub_270708D74(v21, v22);
  LOBYTE(v80) = 7;
  v23 = sub_270740DC4(&v80, 1300);
  v66 = v24;
  v67 = v23;
  v26 = sub_27070E504(&unk_288074630);
  v80 = v26;
  v81 = v25;
  v27 = 0;
  switch(v25 >> 62)
  {
    case 1uLL:
      v27 = v26 >> 32;
      break;
    case 2uLL:
      v27 = *(v26 + 24);
      break;
    case 3uLL:
      break;
    default:
      v27 = BYTE6(v25);
      break;
  }

  sub_270766E38(v27, v27, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v28 = v80;
  v29 = v81;
  sub_270706C38(v80, v81);
  v65 = v28;
  sub_270708D74(v28, v29);
  LOBYTE(v80) = 5;
  v30 = sub_27074110C(&v80, 0xFF00uLL);
  v63 = v31;
  v64 = v30;
  LOBYTE(v80) = 17;
  v32 = sub_27074110C(&v80, 0x102uLL);
  v61 = v33;
  v62 = v32;
  v35 = sub_27070E504(&unk_288074658);
  v80 = v35;
  v81 = v34;
  v36 = 0;
  switch(v34 >> 62)
  {
    case 1uLL:
      v36 = v35 >> 32;
      break;
    case 2uLL:
      v36 = *(v35 + 24);
      break;
    case 3uLL:
      break;
    default:
      v36 = BYTE6(v34);
      break;
  }

  sub_270766E38(v36, v36, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v37 = v80;
  v38 = v81;
  sub_270706C38(v80, v81);
  sub_270708D74(v37, v38);
  LOBYTE(v80) = 7;
  v39 = sub_270740DC4(&v80, 255);
  v59 = v40;
  v60 = v39;
  v42 = sub_27070E504(&unk_288074680);
  v80 = v42;
  v81 = v41;
  v43 = 0;
  switch(v41 >> 62)
  {
    case 1uLL:
      v43 = v42 >> 32;
      break;
    case 2uLL:
      v43 = *(v42 + 24);
      break;
    case 3uLL:
      break;
    default:
      v43 = BYTE6(v41);
      break;
  }

  sub_270766E38(v43, v43, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v80;
  v45 = v81;
  sub_270706C38(v80, v81);
  sub_270708D74(v44, v45);
  v47 = sub_27070E504(&unk_2880746A8);
  v80 = v47;
  v81 = v46;
  v48 = 0;
  switch(v46 >> 62)
  {
    case 1uLL:
      v48 = v47 >> 32;
      break;
    case 2uLL:
      v48 = *(v47 + 24);
      break;
    case 3uLL:
      break;
    default:
      v48 = BYTE6(v46);
      break;
  }

  sub_270766E38(v48, v48, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v49 = v80;
  v50 = v81;
  sub_270706C38(v80, v81);
  sub_270708D74(v49, v50);
  v52 = sub_27070E504(&unk_2880746D0);
  v80 = v52;
  v81 = v51;
  v53 = 0;
  switch(v51 >> 62)
  {
    case 1uLL:
      v53 = v52 >> 32;
      break;
    case 2uLL:
      v53 = *(v52 + 24);
      break;
    case 3uLL:
      break;
    default:
      v53 = BYTE6(v51);
      break;
  }

  sub_270766E38(v53, v53, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v55 = v80;
  v54 = v81;
  sub_270706C38(v80, v81);
  sub_270708D74(v55, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 32) = 2;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 16) = xmmword_2707AB1C0;
  *(inited + 72) = v79;
  *(inited + 80) = v78;
  *(inited + 136) = &type metadata for UsageMinimum;
  *(inited + 144) = &protocol witness table for UsageMinimum;
  *(inited + 96) = &type metadata for UsagePage;
  *(inited + 104) = &protocol witness table for UsagePage;
  *(inited + 112) = v77;
  *(inited + 120) = v76;
  *(inited + 176) = &type metadata for UsageMaximum;
  *(inited + 184) = &protocol witness table for UsageMaximum;
  *(inited + 152) = v75;
  *(inited + 160) = v74;
  *(inited + 216) = &type metadata for ReportCount;
  *(inited + 224) = &protocol witness table for ReportCount;
  *(inited + 192) = v73;
  *(inited + 200) = v72;
  *(inited + 256) = &type metadata for ReportSize;
  *(inited + 264) = &protocol witness table for ReportSize;
  *(inited + 232) = v71;
  *(inited + 240) = v70;
  *(inited + 296) = &type metadata for LogicalMinimum;
  *(inited + 304) = &protocol witness table for LogicalMinimum;
  *(inited + 272) = v69;
  *(inited + 280) = v68;
  *(inited + 336) = &type metadata for LogicalMaximum;
  *(inited + 344) = &protocol witness table for LogicalMaximum;
  *(inited + 312) = v67;
  *(inited + 320) = v66;
  *(inited + 376) = &type metadata for Input;
  *(inited + 384) = &protocol witness table for Input;
  *(inited + 352) = v65;
  *(inited + 360) = v29;
  *(inited + 416) = &type metadata for UsagePage;
  *(inited + 424) = &protocol witness table for UsagePage;
  *(inited + 392) = v64;
  *(inited + 400) = v63;
  *(inited + 456) = &type metadata for Usage;
  *(inited + 464) = &protocol witness table for Usage;
  *(inited + 432) = v62;
  *(inited + 440) = v61;
  *(inited + 496) = &type metadata for LogicalMinimum;
  *(inited + 504) = &protocol witness table for LogicalMinimum;
  *(inited + 472) = v37;
  *(inited + 480) = v38;
  *(inited + 536) = &type metadata for LogicalMaximum;
  *(inited + 544) = &protocol witness table for LogicalMaximum;
  *(inited + 512) = v60;
  *(inited + 520) = v59;
  *(inited + 576) = &type metadata for ReportSize;
  *(inited + 584) = &protocol witness table for ReportSize;
  *(inited + 552) = v44;
  *(inited + 560) = v45;
  *(inited + 616) = &type metadata for ReportCount;
  *(inited + 624) = &protocol witness table for ReportCount;
  *(inited + 592) = v49;
  *(inited + 600) = v50;
  *(inited + 656) = &type metadata for Input;
  *(inited + 664) = &protocol witness table for Input;
  *(inited + 632) = v55;
  *(inited + 640) = v54;
  v57 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v57;
}