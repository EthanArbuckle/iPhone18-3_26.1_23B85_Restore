uint64_t sub_1BD11B0B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[1] = a3;
  v7 = sub_1BE051F54();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v26 - v18;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v27 = sub_1BE052D54();
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(v19, a1, v15);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v16 + 32))(v22 + v21, v19, v15);
  aBlock[4] = v28;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v24 = v27;
  MEMORY[0x1BFB3FDF0](0, v14, v10, v23);
  _Block_release(v23);

  (*(v32 + 8))(v10, v7);
  return (*(v30 + 8))(v14, v31);
}

uint64_t sub_1BD11B474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1BE04B784();
    v6[3] = v4;
    v6[4] = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a2, v4);
    sub_1BD114CC8(v6);
  }

  return result;
}

uint64_t sub_1BD11B55C(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399A0);
  v3[46] = swift_task_alloc();
  v4 = sub_1BE04DC04();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399A8);
  v3[50] = swift_task_alloc();
  v5 = sub_1BE04B884();
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v6 = sub_1BE04D214();
  v3[54] = v6;
  v3[55] = *(v6 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v7 = sub_1BE04B674();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD11B7B0, 0, 0);
}

uint64_t sub_1BD11B7B0()
{
  v38 = v0;
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  sub_1BE04C524();
  (*(v2 + 104))(v1, *MEMORY[0x1E69B7E60], v3);
  v4 = MEMORY[0x1E69B82E8];
  sub_1BD113E88(&qword_1EBD399B0, MEMORY[0x1E69B82E8]);
  sub_1BD113E88(&qword_1EBD399B8, v4);
  sub_1BE04B664();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 288);
  *(v0 + 488) = v5;
  if (v5)
  {
    swift_weakInit();
    sub_1BE0528A4();
    v6 = v5;
    *(v0 + 496) = sub_1BE052894();
    v7 = sub_1BE052844();
    v9 = v8;
    v10 = sub_1BD11BCBC;
  }

  else
  {
    sub_1BE04D094();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment: failed to initialize receiver metadata", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v0 + 456);
    v15 = *(v0 + 432);
    v16 = *(v0 + 440);

    (*(v16 + 8))(v14, v15);
    v17 = sub_1BE04B7C4();
    sub_1BD113E88(&unk_1EBD399C0, MEMORY[0x1E69B7EE0]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69B7ED0], v17);
    swift_willThrow();
    *(v0 + 544) = v18;
    *(v0 + 296) = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
    if (swift_dynamicCast())
    {

      sub_1BD043990((v0 + 16), v0 + 96);
      swift_weakInit();
      sub_1BE0528A4();
      *(v0 + 560) = sub_1BE052894();
      v7 = sub_1BE052844();
      v9 = v21;
      v10 = sub_1BD11C104;
    }

    else
    {

      sub_1BE04D094();
      v22 = v18;
      v23 = sub_1BE04D204();
      v24 = sub_1BE052C34();

      v25 = os_log_type_enabled(v23, v24);
      v27 = *(v0 + 440);
      v26 = *(v0 + 448);
      v28 = *(v0 + 432);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37 = v30;
        *v29 = 136315138;
        *(v0 + 312) = v18;
        v31 = v18;
        v32 = sub_1BE0524A4();
        v34 = sub_1BD123690(v32, v33, &v37);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1BD026000, v23, v24, "NearbyPeerPayment: failed with undefined error: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1BFB45F20](v30, -1, -1);
        MEMORY[0x1BFB45F20](v29, -1, -1);
      }

      (*(v27 + 8))(v26, v28);
      swift_weakInit();
      sub_1BE0528A4();
      *(v0 + 568) = sub_1BE052894();
      v7 = sub_1BE052844();
      v9 = v35;
      v10 = sub_1BD11C4E4;
    }
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1BD11BCBC()
{
  v8 = v0;

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1BE04C504();
    sub_1BD115AE0(v1, v2);
    v3 = sub_1BE04C514();
    sub_1BD115DD4(v3, v4);
    memset(v6, 0, sizeof(v6));
    v7 = xmmword_1BE0B8E20;
    sub_1BD114CC8(v6);
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11BDA0, 0, 0);
}

uint64_t sub_1BD11BDA0()
{
  v1 = v0[45];
  sub_1BE04C184();
  swift_getKeyPath();
  v0[42] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  v0[63] = v2;
  v8 = (*MEMORY[0x1E69B8278] + MEMORY[0x1E69B8278]);
  v3 = v2;
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  v4[1] = sub_1BD11BEF4;
  v5 = v0[43];
  v6 = v0[44];

  return v8(v3, v5, v6, 0);
}

uint64_t sub_1BD11BEF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v7 = sub_1BD11C6D4;
  }

  else
  {

    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v7 = sub_1BD11C034;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BD11C034()
{
  v1 = v0[61];

  v2 = v0[1];
  v3 = v0[67];
  v4 = v0[66];

  return v2(v3, v4);
}

uint64_t sub_1BD11C104()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BD0EE8CC(v0 + 96, v0 + 136);
    sub_1BD114CC8(v0 + 136);
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11C1B4, 0, 0);
}

uint64_t sub_1BD11C1B4()
{
  v1 = *(v0 + 416);
  sub_1BD0EE8CC(v0 + 96, v0 + 176);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if ((v2 & 1) == 0)
  {
    v15 = *(v0 + 400);
    v3(v15, 1, 1, *(v0 + 408));
    v16 = &unk_1EBD399A8;
    goto LABEL_5;
  }

  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v10 = *(v0 + 368);
  v3(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
  sub_1BE04B864();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v14 = *(v0 + 408);
  if (v11 == 1)
  {
    v15 = *(v0 + 368);
    (*(v13 + 8))(*(v0 + 424), *(v0 + 408));
    v16 = &unk_1EBD399A0;
LABEL_5:
    sub_1BD0DE53C(v15, v16);
    v17 = *(v0 + 408);
    v18 = *(v0 + 416);
    sub_1BD113E88(&unk_1EBD399E0, MEMORY[0x1E69B7F50]);
    swift_allocError();
    (*(v18 + 104))(v19, *MEMORY[0x1E69B7F40], v17);
    swift_willThrow();
    goto LABEL_7;
  }

  v21 = *(v0 + 384);
  v20 = *(v0 + 392);
  v22 = *(v0 + 376);
  (*(v21 + 32))(v20, *(v0 + 368), v22);
  sub_1BD113E88(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
  swift_allocError();
  (*(v21 + 16))(v23, v20, v22);
  swift_willThrow();
  (*(v21 + 8))(v20, v22);
  (*(v13 + 8))(v12, v14);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1BD11C4E4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1BE04B7C4();
    v0[10] = v1;
    v0[11] = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7ED0], v1);
    sub_1BD114CC8((v0 + 7));
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11C610, 0, 0);
}

uint64_t sub_1BD11C610()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD11C6D4()
{
  v24 = v0;
  v1 = *(v0 + 488);

  v2 = *(v0 + 520);
  *(v0 + 544) = v2;
  *(v0 + 296) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
  if (swift_dynamicCast())
  {

    sub_1BD043990((v0 + 16), v0 + 96);
    swift_weakInit();
    sub_1BE0528A4();
    *(v0 + 560) = sub_1BE052894();
    v4 = sub_1BE052844();
    v6 = v5;
    v7 = sub_1BD11C104;
  }

  else
  {

    sub_1BE04D094();
    v8 = v2;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v14 = *(v0 + 432);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      *(v0 + 312) = v2;
      v17 = v2;
      v18 = sub_1BE0524A4();
      v20 = sub_1BD123690(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: failed with undefined error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    swift_weakInit();
    sub_1BE0528A4();
    *(v0 + 568) = sub_1BE052894();
    v4 = sub_1BE052844();
    v6 = v21;
    v7 = sub_1BD11C4E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD11C988()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BE04C484();
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t sub_1BD11CAC8(uint64_t (**a1)())
{
  v77 = a1;
  v85 = sub_1BE051F54();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v2);
  v83 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BE051FA4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v4);
  v80 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051F44();
  v76 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v75 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v71 = (&v67 - v11);
  v74 = sub_1BE051FC4();
  v73 = *(v74 - 8);
  v13 = MEMORY[0x1EEE9AC00](v74, v12);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v72 = &v67 - v16;
  v17 = sub_1BE052DC4();
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BE04D214();
  v20 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  aBlock = v1;
  v25 = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v87 = v1;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BE052E04();
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v26 = v87;
  aBlock = v87;
  v79 = v24;
  v78 = v25;
  sub_1BE04B594();

  v27 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v26 + v27, v97);
  sub_1BE04D094();
  sub_1BD113234(v97, &aBlock);
  v28 = sub_1BE04D204();
  v29 = sub_1BE052C54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67 = v6;
    v32 = v17;
    v33 = v31;
    *&v94 = v31;
    *v30 = 136315138;
    v34 = NearbyPeerPaymentSenderState.description.getter();
    v36 = v35;
    sub_1BD11326C(&aBlock);
    v37 = sub_1BD123690(v34, v36, &v94);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_1BD026000, v28, v29, "NearbyPeerPayment: starting timer for state: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v38 = v33;
    v17 = v32;
    v6 = v67;
    MEMORY[0x1BFB45F20](v38, -1, -1);
    MEMORY[0x1BFB45F20](v30, -1, -1);
  }

  else
  {

    sub_1BD11326C(&aBlock);
  }

  (*(v20 + 8))(v23, v86);
  sub_1BD0E5E8C(0, &unk_1EBD39A90);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v39 = sub_1BE052D54();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
  sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0);
  v40 = v68;
  sub_1BE053664();
  v86 = sub_1BE052DD4();

  (*(v69 + 8))(v40, v17);
  ObjectType = swift_getObjectType();
  v42 = v70;
  sub_1BE051FB4();
  v43 = v71;
  *v71 = v77;
  v44 = v76;
  (*(v76 + 104))(v43, *MEMORY[0x1E69E7F48], v6);
  v45 = v72;
  MEMORY[0x1BFB3F070](v42, v43);
  v46 = *(v44 + 8);
  v46(v43, v6);
  v47 = *(v73 + 8);
  v48 = v74;
  v47(v42, v74);
  v49 = ObjectType;
  v69 = ObjectType;
  sub_1BD85BB68(v43);
  v50 = v75;
  sub_1BD85BBDC(v75);
  MEMORY[0x1BFB3FF60](v45, v43, v50, v49);
  v46(v50, v6);
  v46(v43, v6);
  v47(v45, v48);
  v51 = swift_allocObject();
  swift_weakInit();
  sub_1BD113234(v97, &v94);
  v52 = swift_allocObject();
  v53 = v95;
  *(v52 + 24) = v94;
  *(v52 + 16) = v51;
  *(v52 + 40) = v53;
  *(v52 + 56) = v96;
  v92 = sub_1BD126078;
  v93 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v77 = &v90;
  v90 = sub_1BD126964;
  v91 = &block_descriptor_209;
  v54 = _Block_copy(&aBlock);
  sub_1BE048964();
  v55 = v80;
  sub_1BD85BC54();
  v56 = v83;
  sub_1BD56AC68();
  sub_1BE052DE4();
  _Block_release(v54);
  v84 = *(v84 + 8);
  v57 = v85;
  (v84)(v56, v85);
  v81 = *(v81 + 8);
  v58 = v82;
  (v81)(v55, v82);

  sub_1BD113234(v97, &v94);
  v59 = swift_allocObject();
  v60 = v95;
  *(v59 + 16) = v94;
  *(v59 + 32) = v60;
  *(v59 + 48) = v96;
  v92 = sub_1BD1260C8;
  v93 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1BD126964;
  v91 = &block_descriptor_215;
  v61 = _Block_copy(&aBlock);
  sub_1BD56AC64();
  sub_1BD56AC68();
  v62 = v86;
  sub_1BE052DF4();
  _Block_release(v61);
  (v84)(v56, v57);
  (v81)(v55, v58);

  sub_1BE052E14();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v64);
  v65 = v87;
  *(&v67 - 2) = v87;
  *(&v67 - 1) = v62;
  aBlock = v65;
  sub_1BE04B584();

  swift_unknownObjectRelease();
  return sub_1BD11326C(v97);
}

uint64_t sub_1BD11D690(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1BE04D094();
    sub_1BD113234(a2, v21);
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      v14 = NearbyPeerPaymentSenderState.description.getter();
      v16 = v15;
      sub_1BD11326C(v21);
      v17 = sub_1BD123690(v14, v16, v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1BD026000, v10, v11, "NearbyPeerPayment: firing timer for state: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    else
    {

      sub_1BD11326C(v21);
    }

    (*(v4 + 8))(v7, v3);
    swift_getKeyPath();
    v21[0] = v9;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();

    if (*(v9 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      swift_unknownObjectRelease();
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v19);
    v20[-2] = v9;
    v20[-1] = 0;
    v21[0] = v9;
    sub_1BE04B584();

    sub_1BD11DB9C();
  }

  return result;
}

uint64_t sub_1BD11D9C4(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE04D094();
  sub_1BD113234(a1, v17);
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = NearbyPeerPaymentSenderState.description.getter();
    v13 = v12;
    sub_1BD11326C(v17);
    v14 = sub_1BD123690(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "NearbyPeerPayment: cancelling timer for state: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {

    sub_1BD11326C(v17);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD11DBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t sub_1BD11DE90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_getKeyPath();
  v6 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v2, v10);
  switch(v11)
  {
    case 4:
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v5 = xmmword_1BE0B8E40;
      goto LABEL_8;
    case 3:
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v5 = xmmword_1BE0B8E30;
LABEL_8:
      v9 = v5;
      sub_1BD114CC8(&v6);

    case 0:
      v3 = sub_1BE04B7C4();
      *&v9 = v3;
      *(&v9 + 1) = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
      v4 = __swift_allocate_boxed_opaque_existential_1(&v6);
      (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69B7EA8], v3);
      sub_1BD114CC8(&v6);
      sub_1BD117C74();
  }

  return sub_1BD11326C(v10);
}

uint64_t sub_1BD11E07C()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "NearbyPeerPayment: stopped monitoring due to early tap failure", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1BD11E1B0()
{
  v1 = v0;
  v54 = sub_1BE04C4C4();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v2);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v10, v11, "NearbyPeerPayment: payment succceeded, updating sent transaction", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  aBlock[0] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v14 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  swift_beginAccess();
  v15 = v56;
  v16 = *(v56 + 16);
  v57 = v56 + 16;
  v52 = v14;
  v17 = v4;
  v18 = v4;
  v19 = v54;
  v16(v18, v1 + v14, v54);
  v53 = v16;
  v20 = sub_1BE04C454();
  v50 = v21;
  v51 = v20;
  v56 = *(v15 + 8);
  (v56)(v17, v19);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();

  v16(v17, v1 + v14, v19);
  v22 = sub_1BE04C4A4();
  v48 = v23;
  v49 = v22;
  (v56)(v17, v19);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();

  v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  v55 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE048C84();
  v47[1] = v13;
  sub_1BE04B594();

  v53(v17, v1 + v52, v19);
  v25 = sub_1BE04C3F4();
  (v56)(v17, v19);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  if (v24)
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE048C84();
    sub_1BE04B594();

    v27 = (v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
    v28 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
    if (v28 >> 60 == 15)
    {
    }

    else
    {
      v29 = *v27;
      v30 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
      sub_1BD041A38(v29, v28);
      v31 = sub_1BE052404();

      v32 = sub_1BE04AAB4();
      v33 = [v30 initWithDisplayName:v31 imageData:v32];

      sub_1BD030220(v29, v28);
      *(v26 + 16) = v33;
    }
  }

  v34 = [objc_opt_self() sharedInstance];
  if (v34)
  {
    v35 = v34;
    v37 = v50;
    v36 = v51;
    v57 = sub_1BE052404();
    v38 = v48;
    v39 = v49;
    if (v48)
    {
      sub_1BE048C84();
      v40 = sub_1BE052404();
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v26 + 16);
    v42 = swift_allocObject();
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v39;
    v42[5] = v38;
    v42[6] = v26;
    v42[7] = v25;
    v42[8] = v55;
    v42[9] = v24;
    aBlock[4] = sub_1BD125FE8;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_190;
    v43 = _Block_copy(aBlock);
    v44 = v41;
    sub_1BE048964();
    v45 = v25;

    v46 = v57;
    [v35 insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:v57 memo:v40 counterpartAppearanceData:v44 completion:v43];
    _Block_release(v43);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD11E80C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v49 = a8;
  v45 = a4;
  v47 = a1;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048C84();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();

  v46 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v48 = a2;
  if (v21)
  {
    v41 = v19;
    v22 = v15;
    v44 = a7;
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v23 = 136315906;
    v43 = a3;
    *(v23 + 4) = sub_1BD123690(a2, a3, &v50);
    *(v23 + 12) = 2080;
    if (a5)
    {
      v24 = v45;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (a5)
    {
      v26 = a5;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    sub_1BE048C84();
    v27 = sub_1BD123690(v24, v26, &v50);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    swift_beginAccess();
    v28 = *(a6 + 16);
    if (v28)
    {
      v29 = [v28 description];
      v30 = sub_1BE052434();
      v25 = v31;
    }

    else
    {
      v30 = 0;
    }

    v32 = sub_1BD123690(v30, v25, &v50);

    *(v23 + 24) = v32;
    *(v23 + 32) = 2080;
    if (v47)
    {
      v33 = 5457241;
    }

    else
    {
      v33 = 20302;
    }

    if (v47)
    {
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE200000000000000;
    }

    v35 = sub_1BD123690(v33, v34, &v50);

    *(v23 + 34) = v35;
    v36 = v41;
    _os_log_impl(&dword_1BD026000, v41, v46, "NearbyPeerPayment: finished updating sent transaction %s with memo: %s, counterparAppearanceData: %s success: %s", v23, 0x2Au);
    v37 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v37, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);

    (*(v22 + 8))(v18, v14);
    a7 = v44;
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v38 = objc_opt_self();
  if ([v38 useMock])
  {
    v39 = a9;
    v40 = sub_1BE052404();
    if (a9)
    {
      v39 = sub_1BE052404();
    }

    [v38 processNearbyPeerPaymentTransactionSuccessWithIdentifier:v40 peerPaymentType:1 amount:a7 counterpartDisplayName:v39];
  }
}

uint64_t NearbyPeerPaymentDiscoveryMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID, &qword_1EBD39980);

  sub_1BD030220(*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData), *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NearbyPeerPaymentDiscoveryMonitor.__deallocating_deinit()
{
  NearbyPeerPaymentDiscoveryMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD11EDB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v4, a1);
}

uint64_t sub_1BD11EE7C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v2;
}

id sub_1BD11EF60()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);

  return v2;
}

uint64_t sub_1BD11F018()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD11F0E0()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD11F1C4(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BD11632C(v2);
  return sub_1BD11F238;
}

uint64_t sub_1BD11F23C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1BD11F340@<X0>(uint64_t *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v8 = *a1;
  swift_beginAccess();
  v9 = a2(0);
  return (*(*(v9 - 8) + 16))(a3, v7 + v8, v9);
}

uint64_t sub_1BD11F468(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD11F50C;

  return sub_1BD11B55C(a1, a2);
}

uint64_t sub_1BD11F50C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1BD11F644@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1BD11F76C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1BD11F888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  return a5(v10);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v10 = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v15[-2] = v2;
    v15[-1] = a1;
    v15[1] = v2;
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return (v11)(a1, v4);
}

void (*MockNearbyPeerPaymentDiscoveryMonitor.id.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD11FD24;
}

uint64_t sub_1BD11FD80(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE04C4C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return (*(v5 + 8))(v8, v4);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.metadata.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  v2 = sub_1BE04C4C4();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_1BD120008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

void (*MockNearbyPeerPaymentDiscoveryMonitor.metadata.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD1201F8;
}

id MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

id sub_1BD1202D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1BD0E5E8C(0, &qword_1EBD39A30);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }
}

void sub_1BD120538(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD1206F0;
}

uint64_t sub_1BD1206FC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_getKeyPath();
  v11[0] = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v5 = (v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate);
  result = swift_beginAccess();
  if (*v5)
  {
    v7 = v5[1];
    ObjectType = swift_getObjectType();
    v11[3] = v4;
    v11[4] = &protocol witness table for MockNearbyPeerPaymentDiscoveryMonitor;
    v11[0] = v2;
    swift_getKeyPath();
    v10[0] = v2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    sub_1BE04B594();

    v9 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v2 + v9, v10);
    (*(v7 + 8))(v11, a1, v10, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1BD11326C(v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.delegate.getter()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v5 + v3, a1);
}

uint64_t sub_1BD120A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v4, a2);
}

uint64_t sub_1BD120B88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v3, v12);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v13;
  sub_1BD113234(a1, &v10);
  if (*(&v8 + 1) <= 2)
  {
    if (*(&v8 + 1))
    {
      if (*(&v8 + 1) == 1)
      {
        if (v11 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (*(&v8 + 1) == 2 && v11 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1BD11326C(&v7);
    sub_1BD113234(a1, &v7);
    sub_1BD113234(v1 + v3, v12);
    swift_beginAccess();
    sub_1BD1263C8(&v7, v1 + v3);
    swift_endAccess();
    sub_1BD1206FC(v12);
    sub_1BD11326C(v12);
    sub_1BD11326C(&v7);
    return sub_1BD11326C(a1);
  }

  if (*(&v8 + 1) > 4)
  {
    if (*(&v8 + 1) != 5)
    {
      if (*(&v8 + 1) == 6 && v11 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v11 != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (*(&v8 + 1) == 3)
  {
    if (v11 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v11 == 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1BD0DE53C(&v7, &qword_1EBD398E0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v5);
  *&v7 = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return sub_1BD11326C(a1);
}

uint64_t sub_1BD120DF8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(_BYTE *))
{
  sub_1BD113234(a2, v10);
  v7 = *a3;
  swift_beginAccess();
  sub_1BD113234(a1 + v7, v9);
  swift_beginAccess();
  sub_1BD1263C8(v10, a1 + v7);
  swift_endAccess();
  a4(v9);
  sub_1BD11326C(v9);
  return sub_1BD11326C(v10);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.receiverName.getter()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD120F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

uint64_t sub_1BD121088(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BD121204@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD1212D0()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.delegate.setter()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD121480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*MockNearbyPeerPaymentDiscoveryMonitor.delegate.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD121638;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.isDebug.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1BD121700@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.isDebug.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
  }

  return result;
}

void (*MockNearbyPeerPaymentDiscoveryMonitor.isDebug.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  return sub_1BD121A60;
}

void sub_1BD121A6C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v1);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  MockNearbyPeerPaymentDiscoveryMonitor.init()();
  return v0;
}

void MockNearbyPeerPaymentDiscoveryMonitor.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_1BE04C4C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04AFE4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AFD4();
  (*(v16 + 32))(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id, v19, v15);
  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v20 = sub_1BE053054();
  v21 = sub_1BE052404();
  v22 = PKCurrencyAmountMake();

  if (v22)
  {
    v23 = [objc_allocWithZone(PKPeerPaymentIdentityManager) init];
    v24 = [v23 appearanceData];

    v25 = sub_1BE04AF64();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    sub_1BE04C464();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v26 = *(v11 + 32);
      v26(v14, v9, v10);
      v26((v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata), v14, v10);
      v27 = [objc_allocWithZone(MEMORY[0x1E69B8660]) init];
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v27;
      v28 = v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0;
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName) = xmmword_1BE0B8E50;
      v29 = (v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate);
      *v29 = 0;
      v29[1] = 0;
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug) = 1;
      sub_1BE04B5C4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MockNearbyPeerPaymentDiscoveryMonitor.advanceToNextState()()
{
  swift_getKeyPath();
  *&v6[0] = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v0 + v1, v7);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        memset(v6, 0, 24);
        v3 = xmmword_1BE0B8DF0;
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_11;
        }

        memset(v6, 0, 24);
        v3 = xmmword_1BE0B8E20;
      }
    }

    else
    {
      memset(v6, 0, 24);
      v3 = xmmword_1BE0B8E00;
    }

    *(&v6[1] + 8) = v3;
    goto LABEL_14;
  }

  if ((v8 - 3) >= 3)
  {
    if (v8 == 6)
    {
      v4 = sub_1BE04B7C4();
      *(&v6[1] + 1) = v4;
      *&v6[2] = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
      (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7ED0], v4);
LABEL_14:
      v2 = v6;
      goto LABEL_15;
    }

LABEL_11:
    memset(v6, 0, 40);
    sub_1BD120B88(v6);
    sub_1BD11326C(v7);
    return;
  }

  memset(v7, 0, sizeof(v7));
  v8 = xmmword_1BE0B8E10;
  v2 = v7;
LABEL_15:
  sub_1BD120B88(v2);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.updateMetadata(for:)()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BE04C484();
  swift_endAccess();
  swift_getKeyPath();
  sub_1BE04B5A4();
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state);

  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state);

  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD122518@<X0>(uint64_t *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v8 = *a1;
  swift_beginAccess();
  v9 = a2(0);
  return (*(*(v9 - 8) + 16))(a3, v7 + v8, v9);
}

uint64_t sub_1BD12261C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v4, a1);
}

uint64_t sub_1BD1226E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v2;
}

id sub_1BD1227C8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

uint64_t sub_1BD122894()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD12295C()
{
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD122A40(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = MockNearbyPeerPaymentDiscoveryMonitor.delegate.modify(v2);
  return sub_1BD1269E4;
}

void sub_1BD122AB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1BD122AFC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1BD122C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1BD0DE19C(a3, v26 - v11, &unk_1EBD3E580);
  v13 = sub_1BE0528D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_1BE048964();
  if (v15 == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD3E580);
  }

  else
  {
    sub_1BE0528C4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BE052844();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BE0524D4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1BE048964();
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1BD0DE53C(a3, &unk_1EBD3E580);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BD122F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1BD0DE19C(a3, v26 - v11, &unk_1EBD3E580);
  v13 = sub_1BE0528D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_1BE048964();
  if (v15 == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD3E580);
  }

  else
  {
    sub_1BE0528C4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BE052844();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BE0524D4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1BD0DE53C(a3, &unk_1EBD3E580);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BD123214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1BD0DE19C(a3, v26 - v11, &unk_1EBD3E580);
  v13 = sub_1BE0528D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_1BE048964();
  if (v15 == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD3E580);
  }

  else
  {
    sub_1BE0528C4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BE052844();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BE0524D4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1BE048964();
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1BD0DE53C(a3, &unk_1EBD3E580);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BD12350C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1BD123690(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1BE048C84();
  v6 = sub_1BD12375C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1BD038CD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BD12375C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BD123868(a5, a6);
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
    result = sub_1BE0538B4();
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

uint64_t sub_1BD123868(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BD1238B4(a1, a2);
  sub_1BD1239E4(&unk_1F3B8C7D8);
  return v3;
}

uint64_t sub_1BD1238B4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BD1E7848(v5, 0);
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

  result = sub_1BE0538B4();
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
        v10 = sub_1BE0525A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BD1E7848(v10, 0);
        result = sub_1BE053814();
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

uint64_t sub_1BD1239E4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BD123AD0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BD123AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1BD123BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  if (*(a4 + 48))
  {
    result = sub_1BE053994();
    __break(1u);
  }

  else
  {
    v12 = sub_1BE0528D4();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a4;
    v13[5] = a1;
    v13[6] = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    v13[7] = a2;
    v13[8] = a3;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    *(a4 + 48) = sub_1BDA543A4(0, 0, v11, &unk_1BE0B95A8, v13);
  }

  return result;
}

uint64_t sub_1BD123D6C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BD123E60;

  return v5(v2 + 32);
}

uint64_t sub_1BD123E60()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9PassKitUI33NearbyPeerPaymentDiscoveryMonitorC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v18 - v11;
  swift_getKeyPath();
  v18[3] = a1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();

  v13 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, a1 + v13, v4);
  swift_getKeyPath();
  v18[0] = a2;
  sub_1BE04B594();

  v15 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v14(v9, a2 + v15, v4);
  LOBYTE(v15) = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v12, v4);
  return v15 & 1;
}

uint64_t sub_1BD124200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD124270(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BD126968;

  return sub_1BD2BF964(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t objectdestroy_68Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1BD12452C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1BD1245AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BD1246F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI28NearbyPeerPaymentSenderStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD1247C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD12481C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

double sub_1BD124874(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1BD1249BC()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BE04C4C4();
    if (v1 <= 0x3F)
    {
      sub_1BD12513C();
      if (v2 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of NearbyPeerPaymentDiscoveryMonitor.responseMetadataReceived(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 864) + **(*v2 + 864));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BD125004;

  return v8(a1, a2);
}

uint64_t sub_1BD125004(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1BD12513C()
{
  if (!qword_1EBD36A28)
  {
    sub_1BE04AFE4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36A28);
    }
  }
}

uint64_t sub_1BD12519C()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04C4C4();
    if (v2 <= 0x3F)
    {
      result = sub_1BE04B5D4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyPeerPaymentDiscoveryMonitor.SessionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyPeerPaymentDiscoveryMonitor.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD12544C()
{
  result = qword_1EBD39A80;
  if (!qword_1EBD39A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39A80);
  }

  return result;
}

uint64_t sub_1BD1254A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD39980);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD39980);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD39980);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD39980);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &unk_1EBD39AD0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD39980);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD1257C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_1BD030394(a1, a2);
      sub_1BD030394(a3, a4);
      v9 = sub_1BD3D8CB4(a1, a2, a3, a4);
      sub_1BD030220(a3, a4);
      sub_1BD030220(a1, a2);
      v8 = v9 ^ 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_1BD030394(a1, a2);
    sub_1BD030394(a3, a4);
    sub_1BD030220(a1, a2);
    sub_1BD030220(a3, a4);
    v8 = 1;
    return v8 & 1;
  }

  sub_1BD030394(a1, a2);
  sub_1BD030394(a3, a4);
  sub_1BD030220(a1, a2);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1BD1258D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = sub_1BE04DD64();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052D44();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04AFE4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AFD4();
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id, v18, v14);
  v19 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39A88);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v2 + v19) = v20;
  v21 = v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState) = 0;
  (*(v15 + 56))(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 0;
  v41 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  sub_1BE051F74();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
  v22 = v45;
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420);
  sub_1BE053664();
  (*(v43 + 104))(v42, *MEMORY[0x1E69E8090], v44);
  *(v2 + v41) = sub_1BE052D74();
  v23 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_dismissalAssertion;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 acquireAssertion];

  *(v3 + v23) = v25;
  v26 = (v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  *v26 = 0;
  v26[1] = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData) = xmmword_1BE0B8E60;
  v27 = (v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate);
  *v27 = 0;
  v27[1] = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug) = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer) = 0;
  sub_1BE04B5C4();
  v28 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  v29 = sub_1BE04C4C4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v3 + v28, v22, v29);
  v31 = v46;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v46;
  type metadata accessor for NearbyPeerPaymentDeviceDiscoverySession(0);
  v32 = swift_allocObject();
  *(v32 + 3) = 0;
  *(v32 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 6) = 0;
  v33 = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
  v34 = sub_1BE04E0B4();
  (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
  sub_1BE04DDC4();
  v35 = qword_1EBD36B98;
  v36 = v31;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = v49;
  v38 = __swift_project_value_buffer(v49, qword_1EBD40A58);
  (*(v48 + 16))(v47, v38, v37);
  v39 = sub_1BE04DD74();
  (*(v30 + 8))(v22, v29);
  *(v32 + 2) = v39;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession) = v32;
  return v3;
}

uint64_t sub_1BD125F30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD123D6C(a1, v4);
}

uint64_t sub_1BD126024(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_57Tm()
{
  if (*(v0 + 40) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD1260E8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD12614C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD2BD598(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BD126298()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v2;
  v4 = v2;
}

uint64_t sub_1BD1262D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD123D6C(a1, v4);
}

uint64_t sub_1BD126420()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1BD030394(v1, v2);
  return sub_1BD030220(v4, v5);
}

uint64_t sub_1BD126498(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
  sub_1BE048C84();
}

uint64_t sub_1BD12651C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD1266F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BD0F985C;

  return sub_1BD2BF964(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

void *sub_1BD126870@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1BD126AFC(void (*a1)(void), uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = sub_1BE04BAC4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_serviceProviderProducts);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_30:
    v7 = sub_1BE053704();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1BFB40900](v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v12 = [v10 items];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          sub_1BD0E5E8C(0, &qword_1EBD39B80);
          v14 = sub_1BE052744();

          if (v14 >> 62)
          {
            if (!sub_1BE053704())
            {
LABEL_5:

              goto LABEL_6;
            }
          }

          else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_5;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB40900](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v15 = *(v14 + 32);
          }

          v16 = v15;

          v17 = [objc_allocWithZone(PKPaymentSetupServiceProviderProductWithItem) initWithServiceProviderProduct:v11 item:v16];

          if (v17)
          {
            break;
          }

LABEL_6:
          ++v9;
          if (v8 == v7)
          {
            goto LABEL_32;
          }
        }

        MEMORY[0x1BFB3F7A0]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v38 = aBlock[0];
        if (v8 == v7)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v18 = v35;
  v19 = sub_1BE04BBD4();
  v20 = v32;
  sub_1BE04BC34();
  v21 = sub_1BE04B9A4();
  (*(v33 + 8))(v20, v34);
  v22 = *(v18 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v23 = *(v18 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_showOtherProviders);
  v24 = objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductItemsViewController);
  sub_1BD0E5E8C(0, qword_1EBD39B88);
  v25 = sub_1BE052724();

  v26 = [v24 initWithProvisioningController:v19 context:v21 product:v22 serviceProviderProductWithItems:v25 showOtherProviders:v23];

  v27 = *(v18 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController);
  *(v18 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController) = v26;
  v28 = v26;

  if (v28)
  {
    [v28 setFlowDelegate_];
    sub_1BE052434();
    v29 = sub_1BE04BB74();

    [v28 setReporter_];

    aBlock[4] = v36;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_5;
    v30 = _Block_copy(aBlock);
    sub_1BE048964();

    [v28 preflightWithCompletion_];
    _Block_release(v30);
  }

  else
  {
    v36(0);
  }
}

uint64_t sub_1BD126FB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD126FF4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD127044()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD127074(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B92D58, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD1273C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context);
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v3 = type metadata accessor for PaymentSetupOtherProvidersFlowItem();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_identifier];
  *v5 = 0xD000000000000016;
  *(v5 + 1) = 0x80000001BE1199A0;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_context] = v1;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product] = v2;
  v11.receiver = v4;
  v11.super_class = v3;
  sub_1BE048964();
  v6 = v2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3B92D58, v7, &off_1F3BAD0E8, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD127524()
{
  _s8MerchantVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD0FA9D0();
        if (v3 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD127650(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  if (v10 <= 0x30)
  {
    v11 = 48;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v13)
  {
    v18 = 7;
  }

  else
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v11 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v16 + 1;
  if (v15 >= a2)
  {
    goto LABEL_38;
  }

  v20 = ((((((v18 + v17 + (v19 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_38:
    if ((v14 & 0x80000000) != 0)
    {
      v30 = (*(*(*(a3 + 16) - 8) + 48))((a1 + v19) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = *(a1 + 1);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    v28 = *a1;
  }

  else
  {
    v28 = 0;
  }

  return v15 + (v28 | v27) + 1;
}

void sub_1BD127880(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  v12 = (v10 + v11) & ~v11;
  if (!*(v9 + 84))
  {
    ++v10;
  }

  v13 = v10 + v12;
  if (v13 <= 0x30)
  {
    v14 = 48;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  if (v16)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v14 + ((v11 & 0xF8 ^ 0x1F8u) & (v11 + 16)) + 1;
  if (v16)
  {
    v21 = *(v15 + 64);
  }

  else
  {
    v21 = *(v15 + 64) + 1;
  }

  v22 = ((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v23 = a3 - v19 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v8 = v24;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a2 - v19;
    }

    else
    {
      v25 = 1;
    }

    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v19 + a2;
      bzero(a1, v22);
      *a1 = v26;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v22) = v25;
      }

      else
      {
        *(a1 + v22) = v25;
      }
    }

    else if (v8)
    {
      *(a1 + v22) = v25;
    }

    return;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v8 == 2)
  {
    *(a1 + v22) = 0;
    goto LABEL_44;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v18 & 0x80000000) != 0)
  {
    a1 = ((a1 + v20 + v17) & ~v17);
    if (v18 >= a2)
    {
      v31 = *(v15 + 56);

      v31(a1, a2 + 1);
    }

    else
    {
      if (v21 <= 3)
      {
        v27 = ~(-1 << (8 * v21));
      }

      else
      {
        v27 = -1;
      }

      if (v21)
      {
        v28 = v27 & (~v18 + a2);
        if (v21 <= 3)
        {
          v29 = v21;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v21);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_71:
            *a1 = v28;
            return;
          }

LABEL_61:
          *a1 = v28;
          return;
        }

LABEL_75:
        if (v29 == 3)
        {
          *a1 = v28;
          *(a1 + 2) = BYTE2(v28);
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(a1 + 1) = a2 - 1;
      return;
    }

    if (v20 <= 3)
    {
      v30 = ~(-1 << (8 * v20));
    }

    else
    {
      v30 = 0x7FFFFFFF;
    }

    if (v20)
    {
      v28 = v30 & a2;
      if (v20 <= 3)
      {
        v29 = v20;
      }

      else
      {
        v29 = 4;
      }

      bzero(a1, v20);
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_61;
      }

      goto LABEL_75;
    }
  }
}

void sub_1BD127BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BD127C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for MerchantOriginIconImage();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  v44 = *(a1 + 16);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v7 = sub_1BD1291DC();
  v8 = sub_1BD129234();
  WitnessTable = swift_getWitnessTable();
  v50 = v4;
  v51 = v5;
  v52 = MEMORY[0x1E6981E70];
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = MEMORY[0x1E6981E60];
  v57 = WitnessTable;
  v10 = sub_1BE04C6F4();
  v42 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v42 - v16;
  v18 = swift_getWitnessTable();
  v19 = sub_1BE051754();
  v43 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v42 - v25;
  v27 = sub_1BE04F9B4();
  v28 = a1;
  v45 = v27;
  v29 = *(v27 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v47 = &v42 - v33;
  v34 = *(v2 + *(v31 + 44));
  if (v34)
  {
    v42 = &v42;
    v35 = *(MEMORY[0x1EEE9AC00](v31, v32) + 24);
    *(&v42 - 4) = v44;
    *(&v42 - 3) = v35;
    *(&v42 - 2) = v2;
    sub_1BD0D44B8(v34);
    sub_1BE048964();
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308(v23);
    v44 = v29;
    v36 = v18;
    v37 = *(v43 + 8);
    v37(v23, v19);
    sub_1BD147308(v26);
    sub_1BD13A700(v23, v19);
    sub_1BD0D4744(v34);
    v37(v23, v19);
    v37(v26, v19);
    v18 = v36;
    v29 = v44;
  }

  else
  {
    sub_1BD128464(v31, v14);
    sub_1BD147308(v14);
    v38 = *(v42 + 8);
    v38(v14, v10);
    sub_1BD147308(v17);
    swift_getWitnessTable();
    sub_1BD13A7F8(v14, v19, v10);
    v38(v14, v10);
    v38(v17, v10);
  }

  v48 = swift_getWitnessTable();
  v49 = v18;
  v39 = v45;
  swift_getWitnessTable();
  v40 = v47;
  sub_1BD147308(v47);
  return (*(v29 + 8))(v40, v39);
}

uint64_t sub_1BD1281FC()
{
  v0 = type metadata accessor for MerchantOriginIconImage();
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v2 = sub_1BE051854();
  v3 = sub_1BD1291DC();
  v4 = sub_1BD129234();
  WitnessTable = swift_getWitnessTable();
  v18[0] = v0;
  v18[1] = v1;
  v18[2] = MEMORY[0x1E6981E70];
  v18[3] = v2;
  v18[4] = v3;
  v18[5] = v4;
  v18[6] = MEMORY[0x1E6981E60];
  v18[7] = WitnessTable;
  v6 = sub_1BE04C6F4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v18 - v13;
  v15 = type metadata accessor for RecurringPaymentItem();
  sub_1BD128464(v15, v11);
  swift_getWitnessTable();
  sub_1BD147308(v11);
  v16 = *(v7 + 8);
  v16(v11, v6);
  sub_1BD147308(v14);
  return (v16)(v14, v6);
}

uint64_t sub_1BD128464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = sub_1BE04C624();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v3);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE04C894();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantOriginIconImage();
  v31[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10);
  v31[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  v10 = *(a1 + 16);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v11 = sub_1BE051854();
  v12 = sub_1BD1291DC();
  v31[2] = v12;
  v13 = sub_1BD129234();
  v31[1] = v13;
  WitnessTable = swift_getWitnessTable();
  v48 = v8;
  v49 = v9;
  v50 = MEMORY[0x1E6981E70];
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v54 = MEMORY[0x1E6981E60];
  v55 = WitnessTable;
  v15 = sub_1BE04C6F4();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - v22;
  v24 = *(a1 + 24);
  v45 = v10;
  v46 = v24;
  v47 = v33;
  v42 = v10;
  v43 = v24;
  v25 = *(v33 + *(a1 + 44));
  v26 = *(v5 + 104);
  v44 = v33;
  v27 = v33;
  if (v25)
  {
    v28 = MEMORY[0x1E69BCA00];
  }

  else
  {
    v28 = MEMORY[0x1E69BC9E8];
  }

  v26(v32, *v28, v34);
  v39 = v10;
  v40 = v24;
  v41 = v27;
  (*(v36 + 104))(v35, *MEMORY[0x1E69BC910], v37);
  sub_1BE04C6C4();
  swift_getWitnessTable();
  sub_1BD147308(v20);
  v29 = *(v16 + 8);
  v29(v20, v15);
  sub_1BD147308(v23);
  return (v29)(v23, v15);
}

uint64_t sub_1BD128944@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for RecurringPaymentItem() + 52));
  v5 = *(_s8MerchantVMa(0) + 20);
  v6 = type metadata accessor for MerchantOriginIconImage();
  sub_1BD129504(a1 + v5, &a2[*(v6 + 20)]);
  v8 = *a1;
  v7 = a1[1];
  *a2 = v4;
  v9 = &a2[*(v6 + 24)];
  *v9 = v8;
  v9[1] = v7;

  return sub_1BE048C84();
}

int *sub_1BD1289D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v18 - v12;
  if (*(a1 + *(type metadata accessor for RecurringPaymentItem() + 48) + 8))
  {
    goto LABEL_4;
  }

  v18[0] = a2;
  v18[1] = 0;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    sub_1BE04B6F4();

    (*(v5 + 8))(v8, v4);
    a2 = v18[0];
LABEL_4:
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE051224();
    sub_1BE04C644();
    KeyPath = swift_getKeyPath();
    (*(v10 + 32))(a2, v13, v9);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C10);
    v17 = a2 + result[9];
    *v17 = KeyPath;
    *(v17 + 8) = 2;
    *(v17 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD128C68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v2 = sub_1BE051854();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  type metadata accessor for RecurringPaymentItem();
  sub_1BD128E68();
  swift_getWitnessTable();
  sub_1BD147308(v7);
  v11 = *(v3 + 8);
  v11(v7, v2);
  sub_1BD147308(v10);
  v11(v10, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1BD128E68()
{
  sub_1BE04F7C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  return sub_1BE051844();
}

uint64_t sub_1BD128F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[0] = a3;
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for RecurringPaymentItem();
  v15 = (a1 + *(v14 + 40));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    sub_1BE048C84();
    v18 = sub_1BE0502A4();
    v19 = sub_1BE051234();
    v30 = xmmword_1BE0B9680;
    *&v31 = v17;
    *(&v31 + 1) = v16;
    v20 = MEMORY[0x1E6981568];
    v21 = MEMORY[0x1E69815C0];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    v30 = 0u;
    v31 = 0u;
    v34 = 0;
    v35 = 0;
  }

  v32 = v18;
  v33 = v19;
  v36 = v21;
  v37 = v20;
  v22 = *(v14 + 36);
  v29[2] = a2;
  WitnessTable = swift_getWitnessTable();
  sub_1BD147308(a1 + v22);
  sub_1BD129354(&v30, v28);
  v29[0] = v28;
  (*(v6 + 16))(v10, v13, v5);
  v29[1] = v10;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18);
  v27[1] = v5;
  v26[1] = sub_1BD1293C4();
  v26[2] = WitnessTable;
  sub_1BD13A4C4(v29, 2uLL, v27);
  v24 = *(v6 + 8);
  v24(v13, v5);
  sub_1BD12949C(&v30);
  v24(v10, v5);
  return sub_1BD12949C(v28);
}

unint64_t sub_1BD1291DC()
{
  result = qword_1EBD39C20;
  if (!qword_1EBD39C20)
  {
    type metadata accessor for MerchantOriginIconImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C20);
  }

  return result;
}

unint64_t sub_1BD129234()
{
  result = qword_1EBD39C28;
  if (!qword_1EBD39C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10);
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C28);
  }

  return result;
}

uint64_t sub_1BD129354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1293C4()
{
  result = qword_1EBD39C40;
  if (!qword_1EBD39C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18);
    sub_1BD129448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C40);
  }

  return result;
}

unint64_t sub_1BD129448()
{
  result = qword_1EBD39C48;
  if (!qword_1EBD39C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C48);
  }

  return result;
}

uint64_t sub_1BD12949C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD129504(uint64_t a1, uint64_t a2)
{
  v4 = _s14MerchantOriginOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PaymentPassBillingAddressSection()
{
  result = qword_1EBD39C50;
  if (!qword_1EBD39C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1295DC()
{
  type metadata accessor for Passes(319);
  if (v0 <= 0x3F)
  {
    sub_1BD12967C();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD12967C()
{
  if (!qword_1EBD392F8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD392F8);
    }
  }
}

id sub_1BD1296E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C60);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = (v1 + *(type metadata accessor for PaymentPassBillingAddressSection() + 20));
  v13 = v12[3];
  v39 = v12[2];
  v40 = v13;
  v41 = v12[4];
  v14 = v12[1];
  v37 = *v12;
  v38 = v14;
  if (v40)
  {
    v26 = a1;
    v15 = v12[1];
    v33[0] = *v12;
    v33[1] = v15;
    v33[2] = v12[2];
    v34 = v40;
    v35 = *(v12 + 56);
    v36 = *(v12 + 9);
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
    v32[2] = v39;
    v32[3] = v40;
    v32[4] = v41;
    v32[0] = v37;
    v32[1] = v38;
    sub_1BD12B1D0(v32, &v28);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      (*(v4 + 8))(v7, v3);
      v28 = v18;
      v29 = v20;
      sub_1BD0DDEBC();
      v28 = sub_1BE0506C4();
      v29 = v21;
      v30 = v22 & 1;
      v31 = v23;
      MEMORY[0x1EEE9AC00](v28, v21);
      *(&v26 - 2) = v33;
      *(&v26 - 1) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C68);
      sub_1BD12B234();
      sub_1BE051A24();
      sub_1BD0DE53C(&v37, &qword_1EBD395E0);
      v24 = v26;
      (*(v27 + 32))(v26, v11, v8);
      return (*(v27 + 56))(v24, 0, 1, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25 = *(v27 + 56);

    return v25(a1, 1, 1, v8);
  }

  return result;
}

uint64_t sub_1BD129A98@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CB0);
  MEMORY[0x1EEE9AC00](v43, v5);
  v7 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CD8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CA0);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for PaymentPassBillingAddressSection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C80);
  MEMORY[0x1EEE9AC00](v41, v19);
  v21 = &v39 - v20;
  if (*(a1 + 4))
  {
    sub_1BD12A044(a1, v7);
    v22 = &v7[*(v43 + 36)];
    __asm { FMOV            V0.2D, #16.0 }

    *v22 = _Q0;
    *(v22 + 1) = _Q0;
    v22[32] = 0;
    v28 = &qword_1EBD39CB0;
    sub_1BD0DE19C(v7, v10, &qword_1EBD39CB0);
    swift_storeEnumTagMultiPayload();
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &unk_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &unk_1BE0B9808, sub_1BD12B4B0);
    sub_1BE04F9A4();
    v29 = v7;
  }

  else
  {
    sub_1BD12B6EC(a2, &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassBillingAddressSection);
    v30 = (*(v16 + 80) + 96) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v32 = a1[3];
    v31[3] = a1[2];
    v31[4] = v32;
    v31[5] = a1[4];
    v33 = a1[1];
    v31[1] = *a1;
    v31[2] = v33;
    v34 = sub_1BD12B598(&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    MEMORY[0x1EEE9AC00](v34, v35);
    *(&v39 - 2) = a1;
    sub_1BD12B1D0(a1, v45);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CE0);
    sub_1BD0DE4F4(&qword_1EBD39CE8, &qword_1EBD39CE0);
    sub_1BE051704();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD39C98, &qword_1EBD39CA0);
    sub_1BE050DE4();

    (*(v40 + 8))(v14, v11);
    v36 = &v21[*(v41 + 36)];
    __asm { FMOV            V0.2D, #16.0 }

    *v36 = _Q0;
    *(v36 + 1) = _Q0;
    v36[32] = 0;
    v28 = &qword_1EBD39C80;
    sub_1BD0DE19C(v21, v10, &qword_1EBD39C80);
    swift_storeEnumTagMultiPayload();
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &unk_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &unk_1BE0B9808, sub_1BD12B4B0);
    sub_1BE04F9A4();
    v29 = v21;
  }

  return sub_1BD0DE53C(v29, v28);
}

uint64_t sub_1BD12A044@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CD0);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v54 = &v48 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0);
  v9 = MEMORY[0x1EEE9AC00](v53, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for PaymentPassBillingAddressSection();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15, v19);
  v20 = type metadata accessor for BillingAddressPicker(0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v52 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v48 - v25;
  sub_1BD0DE19C(v2, &v48 - v25, &qword_1EBD520A0);
  sub_1BD12B6EC(v2, &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassBillingAddressSection);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v51 = swift_allocObject();
  sub_1BD12B598(&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v27);
  v28 = *(v16 + 40);
  v29 = (v2 + *(v16 + 36));
  v30 = v29[1];
  v49 = *v29;
  v31 = v2 + v28;
  v32 = *(v2 + v28);
  v33 = *(v31 + 8);
  v50 = v32;
  v34 = v20[10];
  *&v26[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  sub_1BD0DE19C(v14, v11, &qword_1EBD39CF0);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v14, &qword_1EBD39CF0);
  v36 = &v26[v20[5]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v26[v20[6]];
  v38 = a1[3];
  *(v37 + 2) = a1[2];
  *(v37 + 3) = v38;
  *(v37 + 4) = a1[4];
  v39 = a1[1];
  *v37 = *a1;
  *(v37 + 1) = v39;
  v40 = &v26[v20[7]];
  v41 = v51;
  v42 = v52;
  *v40 = sub_1BD12B668;
  v40[1] = v41;
  v43 = &v26[v20[8]];
  *v43 = v49;
  *(v43 + 1) = v30;
  v44 = &v26[v20[9]];
  *v44 = v50;
  *(v44 + 1) = v33;
  sub_1BD12B6EC(v26, v42, type metadata accessor for BillingAddressPicker);
  v58 = a1;
  sub_1BD12B1D0(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D00);
  sub_1BD12B75C();
  sub_1BD12B9D4(&qword_1EBD39D28, type metadata accessor for BillingAddressPicker);
  v45 = v54;
  sub_1BE04E8B4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD39CC8, &qword_1EBD39CD0);
  v46 = v55;
  sub_1BE050DE4();

  (*(v56 + 8))(v45, v46);
  return sub_1BD12B8C0(v26);
}

void sub_1BD12A58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassBillingAddressSection();
  v5 = 0;
  v6 = *(a2 + *(v4 + 36));
  if (*(a1 + 16) <= 1u)
  {
    v8 = *a1;
    v7 = *a1;
    v5 = v8;
  }

  v9 = v5;
  v6(a2);
}

uint64_t sub_1BD12A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D30);
  return sub_1BD12A688(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD12A688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D38);
  MEMORY[0x1EEE9AC00](v50, v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D40);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D48);
  MEMORY[0x1EEE9AC00](v51, v10);
  v12 = &v45 - v11;
  v47 = sub_1BE04C894();
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE04C764();
  v54 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D50);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v53 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v52 = &v45 - v25;
  v27 = *a1;
  v26 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v55 = 0uLL;
      v56 = 2;
      v57 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
      sub_1BD12B7E8();
      sub_1BD12B86C();
      sub_1BE04F9A4();
      v32 = *(&v58 + 1);
      v31 = v58;
      v33 = v59;
      v34 = v60;
      (*(v13 + 104))(v16, *MEMORY[0x1E69BC9F0], v47);
      sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12B91C, sub_1BD12B91C);
      sub_1BE04C754();
      v39 = v54;
      v40 = v5;
      v35 = v49;
      (*(v54 + 16))(v40, v19, v49);
      swift_storeEnumTagMultiPayload();
      sub_1BD12B920();
      sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960]);
      v38 = v52;
      sub_1BE04F9A4();
      goto LABEL_13;
    }

    *&v55 = *a1;
    *(&v55 + 1) = v26;
    v56 = 257;
    sub_1BD04E4D8(v27, v26, 1);
    sub_1BD12B86C();
    v28 = v27;
    v29 = v26;
    v45 = v6;
    sub_1BE04F9A4();
    if (HIBYTE(v59))
    {
      v30 = 256;
    }

    else
    {
      v30 = 0;
    }

    v55 = v58;
    v56 = v30 | v59;
    v57 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
    v46 = v5;
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v27, v26, 1);
    v32 = *(&v58 + 1);
    v31 = v58;
    v33 = v59;
    v34 = v60;
    (*(v13 + 104))(v16, *MEMORY[0x1E69BC9F8], v47);
    sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12B91C, sub_1BD12B91C);
    sub_1BE04C754();
    v35 = v49;
    (*(v54 + 16))(v9, v19, v49);
  }

  else
  {
    v55 = v27;
    v56 = 0;
    sub_1BD04E4D8(v27, v26, 0);
    sub_1BD12B86C();
    v36 = v27;
    v45 = v6;
    sub_1BE04F9A4();
    if (HIBYTE(v59))
    {
      v37 = 256;
    }

    else
    {
      v37 = 0;
    }

    v55 = v58;
    v56 = v37 | v59;
    v57 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
    v46 = v5;
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v27, v26, 0);
    v32 = *(&v58 + 1);
    v31 = v58;
    v33 = v59;
    v34 = v60;
    (*(v13 + 104))(v16, *MEMORY[0x1E69BCA00], v47);
    sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12B91C, sub_1BD12B91C);
    sub_1BE04C754();
    v35 = v49;
    (*(v54 + 16))(v9, v19, v49);
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960]);
  sub_1BE04F9A4();
  sub_1BD0DE19C(v12, v46, &qword_1EBD39D48);
  swift_storeEnumTagMultiPayload();
  sub_1BD12B920();
  v38 = v52;
  sub_1BE04F9A4();
  v39 = v54;
  sub_1BD0DE53C(v12, &qword_1EBD39D48);
LABEL_13:
  (*(v39 + 8))(v19, v35);
  v41 = v53;
  sub_1BD0DE19C(v38, v53, &qword_1EBD39D50);
  v42 = v48;
  *v48 = v31;
  v42[1] = v32;
  *(v42 + 8) = v33;
  *(v42 + 18) = v34;
  v42[3] = 0;
  *(v42 + 32) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D68);
  sub_1BD0DE19C(v41, v42 + *(v43 + 64), &qword_1EBD39D50);
  sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12B91C, sub_1BD12B91C);
  sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12BA34, sub_1BD12BA34);
  sub_1BD0DE53C(v38, &qword_1EBD39D50);
  sub_1BD0DE53C(v41, &qword_1EBD39D50);
  return sub_1BD12BA1C(v31, v32, v33, v34, sub_1BD12BA34, sub_1BD12BA34);
}

double sub_1BD12AFA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v4 = v3;
      sub_1BD12B86C();
      v5 = v4;
      sub_1BE04F9A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
      sub_1BD12B7E8();
      sub_1BE04F9A4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
      sub_1BD12B7E8();
      sub_1BD12B86C();
      sub_1BE04F9A4();
    }
  }

  else
  {
    v6 = *(a1 + 8);
    sub_1BD04E4D8(v3, v6, 0);
    sub_1BD12B86C();
    v7 = v3;
    sub_1BE04F9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18);
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v3, v6, 0);
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 18) = v11;
  return result;
}

unint64_t sub_1BD12B234()
{
  result = qword_1EBD39C70;
  if (!qword_1EBD39C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C68);
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &unk_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &unk_1BE0B9808, sub_1BD12B4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C70);
  }

  return result;
}

uint64_t sub_1BD12B318(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD12B3C8()
{
  result = qword_1EBD39C88;
  if (!qword_1EBD39C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C90);
    sub_1BD0DE4F4(&qword_1EBD39C98, &qword_1EBD39CA0);
    sub_1BD12B9D4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C88);
  }

  return result;
}

unint64_t sub_1BD12B4B0()
{
  result = qword_1EBD39CB8;
  if (!qword_1EBD39CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39CC0);
    sub_1BD0DE4F4(&qword_1EBD39CC8, &qword_1EBD39CD0);
    sub_1BD12B9D4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39CB8);
  }

  return result;
}

uint64_t sub_1BD12B598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassBillingAddressSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD12B5FC()
{
  v1 = *(type metadata accessor for PaymentPassBillingAddressSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80));

  sub_1BD12A58C(v0 + 16, v2);
}

uint64_t sub_1BD12B6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD12B75C()
{
  result = qword_1EBD39D08;
  if (!qword_1EBD39D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D00);
    sub_1BD12B7E8();
    sub_1BD12B86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D08);
  }

  return result;
}

unint64_t sub_1BD12B7E8()
{
  result = qword_1EBD39D10;
  if (!qword_1EBD39D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D18);
    sub_1BD12B86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D10);
  }

  return result;
}

unint64_t sub_1BD12B86C()
{
  result = qword_1EBD39D20;
  if (!qword_1EBD39D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D20);
  }

  return result;
}

uint64_t sub_1BD12B8C0(uint64_t a1)
{
  v2 = type metadata accessor for BillingAddressPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD12B920()
{
  result = qword_1EBD39D58;
  if (!qword_1EBD39D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D48);
    sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D58);
  }

  return result;
}

uint64_t sub_1BD12B9D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD12BA1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(void))
{
  if (a4)
  {
    return a6();
  }

  else
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }
}

unint64_t sub_1BD12BA38()
{
  result = qword_1EBD39D70;
  if (!qword_1EBD39D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D78);
    sub_1BD12BABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D70);
  }

  return result;
}

unint64_t sub_1BD12BABC()
{
  result = qword_1EBD39D80;
  if (!qword_1EBD39D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C60);
    sub_1BD12B234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D80);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferSelectedInstallmentDetailView()
{
  result = qword_1EBD39D88;
  if (!qword_1EBD39D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD12BBC8()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD38840);
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD496B0);
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98);
        if (v3 <= 0x3F)
        {
          sub_1BD12BDCC();
          if (v4 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v5 <= 0x3F)
            {
              sub_1BD12BE34(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1BD12BE34(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1BD12BE34(319, &qword_1EBD39340, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD12BDCC()
{
  if (!qword_1EBD39DA0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD39DA8);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39DA0);
    }
  }
}

void sub_1BD12BE34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BD12BEB4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_1BE04FF64();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BE04FE84();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DB8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v41 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DC0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v12);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DC8);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v42 = v41 - v18;
  v53 = v1;
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DD0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DD8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE8);
  v22 = sub_1BD12DCD8();
  v56 = v21;
  *&v57 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28);
  v25 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
  v56 = v24;
  *&v57 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v56 = v19;
  *&v57 = v20;
  *(&v57 + 1) = OpaqueTypeConformance2;
  v58 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EC04();
  v27 = (v41[2] + *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView() + 56));
  v29 = *v27;
  v28 = v27[1];
  v54 = v29;
  v55 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516C4();
  v30 = v57;
  v31 = &v11[*(v8 + 36)];
  *v31 = v56;
  *(v31 + 8) = v30;
  sub_1BE04FE74();
  v32 = sub_1BD12DE48();
  v33 = sub_1BD12E820(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v34 = v44;
  sub_1BE0507D4();
  (*(v46 + 8))(v7, v34);
  sub_1BD04E694(v11);
  v35 = v49;
  sub_1BE04FF54();
  v56 = v8;
  *&v57 = v34;
  *(&v57 + 1) = v32;
  v58 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v38 = v42;
  v37 = v43;
  sub_1BE050D14();
  (*(v50 + 8))(v35, v51);
  (*(v45 + 8))(v14, v37);
  sub_1BE052434();
  v56 = v37;
  *&v57 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_1BE050DE4();

  return (*(v48 + 8))(v38, v39);
}

uint64_t sub_1BD12C488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v3 = sub_1BE04F434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DD8);
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v13);
  v15 = &v30 - v14;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E58);
  sub_1BD0DE4F4(&qword_1EBD39E60, &qword_1EBD39E58);
  sub_1BE0504E4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E00) + 36)];
  v17 = v43;
  *(v16 + 4) = v42;
  *(v16 + 5) = v17;
  *(v16 + 6) = v44;
  v18 = v39;
  *v16 = v38;
  *(v16 + 1) = v18;
  v19 = v41;
  *(v16 + 2) = v40;
  *(v16 + 3) = v19;
  v20 = sub_1BE051274();
  v21 = sub_1BE0501D4();
  v22 = sub_1BE051CD4();
  v23 = &v11[*(v8 + 36)];
  *v23 = v20;
  v23[8] = v21;
  *(v23 + 2) = v22;
  *(v23 + 3) = v24;
  (*(v4 + 104))(v7, *MEMORY[0x1E697C438], v3);
  v25 = sub_1BD12DCD8();
  sub_1BE050E84();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v11, &qword_1EBD39DE8);
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0);
  v36 = v8;
  v37 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28);
  v27 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
  v36 = v26;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_1BE051024();
  return (*(v12 + 8))(v15, v28);
}

uint64_t sub_1BD12C8E8(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68);
  sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD12CAD4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD12DF18(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD12E5D0(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

void sub_1BD12CC28()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = *v12;
  *(inited + 56) = *v12;
  v15 = sub_1BE052434();
  v16 = MEMORY[0x1E69BA440];
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  v18 = *v16;
  *(inited + 80) = *v16;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v19;
  v20 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v21 = v10;
  v22 = v14;
  v23 = v18;
  v24 = v20;
  *(inited + 112) = sub_1BD12E074();
  *(inited + 120) = v25;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD12E820(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v26 = sub_1BE052224();

  [v0 subjects:v8 sendEvent:v26];
}

uint64_t sub_1BD12CF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

id sub_1BD12CF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD12D0C0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E90);
  v63 = *(v3 - 8);
  v64 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v60 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v57 - v11);
  v13 = type metadata accessor for PassHeaderView();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v59 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v57 - v23;
  v25 = [*a1 paymentPass];
  if (v25)
  {
    v26 = v25;
    *v12 = v25;
    v27 = type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
    v28 = v26;
    v29 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (v29)
    {
      v30 = v29;
      v31 = sub_1BE052434();
      v33 = v32;
    }

    else
    {

      v31 = 0;
      v33 = 0;
    }

    sub_1BD0DE19C(v12, v17, &unk_1EBD43B90);
    v35 = &v17[v13[5]];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = &v17[v13[6]];
    *v36 = v31;
    v36[1] = v33;
    v37 = &v17[v13[7]];
    *v37 = 0;
    *(v37 + 1) = 0;
    sub_1BD0DE53C(v12, &unk_1EBD43B90);
    *&v17[v13[8]] = 0x4059000000000000;
    v34 = v24;
    sub_1BD12E5D0(v17, v24, type metadata accessor for PassHeaderView);
    (*(v14 + 56))(v24, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v24, 1, 1, v13);
    v34 = v24;
  }

  v38 = [a1[5] programName];
  if (v38)
  {
    v39 = v38;
    sub_1BE052434();

    v40 = sub_1BE0524C4();
    v42 = v41;

    v65 = v40;
    v66 = v42;
    sub_1BD0DDEBC();
    v38 = sub_1BE0506C4();
    v46 = v45 & 1;
  }

  else
  {
    v43 = 0;
    v46 = 0;
    v44 = 0;
  }

  v65 = v38;
  v66 = v43;
  v67 = v46;
  v68 = v44;
  MEMORY[0x1EEE9AC00](v38, v43);
  *(&v57 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39EA0);
  sub_1BD12E194();
  sub_1BD12E210();
  v47 = v60;
  sub_1BE051A24();
  v48 = v59;
  sub_1BD0DE19C(v34, v59, &qword_1EBD395D0);
  v50 = v63;
  v49 = v64;
  v51 = *(v63 + 16);
  v52 = v61;
  v51(v61, v47, v64);
  v58 = v34;
  v53 = v62;
  sub_1BD0DE19C(v48, v62, &qword_1EBD395D0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39ED0);
  v51((v53 + *(v54 + 48)), v52, v49);
  v55 = *(v50 + 8);
  v55(v47, v49);
  sub_1BD0DE53C(v58, &qword_1EBD395D0);
  v55(v52, v49);
  return sub_1BD0DE53C(v48, &qword_1EBD395D0);
}

double sub_1BD12D68C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = a1[6];
  v8 = a1[7];
  v30 = v7;
  v31 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88);
  sub_1BE0516A4();
  v9 = [v29 selectedInstallmentOffer];

  if (!v9)
  {
    v10 = 0;
LABEL_8:
    v17 = 0;
    v21 = 0;
    v12 = 0;
    v22 = 0;
    v15 = 0;
    v16 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v30 = v7;
  v31 = v8;
  sub_1BE0516A4();
  v10 = [v29 installmentAssessment];

  if (!v10)
  {

    v9 = 0;
    goto LABEL_8;
  }

  v11 = a1[1];
  v27 = a1[2];
  v12 = a1[3];
  v31 = *(a1 + *(v4 + 56) + 8);
  v26 = v9;
  v25 = v10;
  v24 = v11;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516A4();
  swift_getKeyPath();
  v30 = v29;
  sub_1BD12E820(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v13 = v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading];

  sub_1BD12DF18(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v15 = swift_allocObject();
  sub_1BD12E5D0(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  LOBYTE(v30) = 1;
  v16 = sub_1BE0511D4();

  v17 = v24;
  v18 = v30;
  LOBYTE(v30) = 0;
  v19 = 256;
  if (!v13)
  {
    v19 = 0;
  }

  v20 = v19 | v18;
  v21 = v27;
  v22 = sub_1BD12E378;
LABEL_9:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *(a2 + 32) = v12;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  return result;
}

void sub_1BD12D9B4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = (a1 + *(MEMORY[0x1EEE9AC00](v2 - 8, v5) + 64));
  v8 = *v6;
  v7 = v6[1];
  v13[2] = v8;
  v13[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0);
  sub_1BE0516A4();
  v9 = v13[1];
  v10 = *(a1 + 96);
  sub_1BD12DF18(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD12E5D0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  sub_1BD8C1B80(v10, 1, sub_1BD12E560, v12);
}

void *sub_1BD12DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v16 - v10);
  sub_1BD0DE19C(a1, v16 - v10, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v11;
    if (*v11)
    {

      return (*(a2 + 80))(0);
    }
  }

  else
  {
    sub_1BD12E5D0(v11, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v13 = *(v7 + 1);
    (*(a2 + 80))(v13);
    if (v13)
    {
      v14 = [v13 installmentSelectedPaymentOffer];
      if (v14)
      {
        v15 = *(a2 + 56);
        v16[2] = *(a2 + 48);
        v16[3] = v15;
        v16[1] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88);
        sub_1BE0516B4();
      }
    }

    return sub_1BD12E638(v7);
  }

  return result;
}

unint64_t sub_1BD12DCD8()
{
  result = qword_1EBD39DF0;
  if (!qword_1EBD39DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE8);
    sub_1BD12DD90();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39DF0);
  }

  return result;
}

unint64_t sub_1BD12DD90()
{
  result = qword_1EBD39DF8;
  if (!qword_1EBD39DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E00);
    sub_1BD0DE4F4(&qword_1EBD39E08, &qword_1EBD39E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39DF8);
  }

  return result;
}

unint64_t sub_1BD12DE48()
{
  result = qword_1EBD39E38;
  if (!qword_1EBD39E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DB8);
    sub_1BD0DE4F4(&qword_1EBD39E40, &qword_1EBD39E48);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39E38);
  }

  return result;
}

uint64_t sub_1BD12DF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD12DF7C()
{
  v1 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD12CC28();
  return (*(v2 + 64))();
}

unint64_t sub_1BD12DFE4()
{
  result = qword_1EBD39E80;
  if (!qword_1EBD39E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39E80);
  }

  return result;
}

uint64_t sub_1BD12E074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88);
  sub_1BE0516A4();
  v0 = [v4 installmentAssessment];

  if (v0)
  {
    v1 = [v0 offers];

    if (v1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD39018);
      v2 = sub_1BE052744();

      if (v2 >> 62)
      {
        sub_1BE053704();
      }
    }
  }

  return sub_1BE053B24();
}

unint64_t sub_1BD12E194()
{
  result = qword_1EBD512E0;
  if (!qword_1EBD512E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512E0);
  }

  return result;
}

unint64_t sub_1BD12E210()
{
  result = qword_1EBD39EA8;
  if (!qword_1EBD39EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EA0);
    sub_1BD12E294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EA8);
  }

  return result;
}

unint64_t sub_1BD12E294()
{
  result = qword_1EBD39EB0;
  if (!qword_1EBD39EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EB8);
    sub_1BD0DE4F4(&qword_1EBD39EC0, &qword_1EBD39EC8);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EB0);
  }

  return result;
}

void sub_1BD12E378()
{
  v1 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD12D9B4(v2);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E354();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_1BD12E560(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD12DB14(a1, v4);
}

uint64_t sub_1BD12E5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD12E638(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD12E694()
{
  result = qword_1EBD39EE0;
  if (!qword_1EBD39EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DB8);
    sub_1BE04FE84();
    sub_1BD12DE48();
    sub_1BD12E820(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD12E820(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EE0);
  }

  return result;
}

uint64_t sub_1BD12E820(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD12E92C()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = v0;
  sub_1BD12FA50(1, v7, KeyPath, &OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate, sub_1BD12F81C, &qword_1EBD443C0, &qword_1EBD443C8);

  v8 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v2 + 8))(v5, v1);
  v10 = [objc_allocWithZone(PKPaymentReaderModeDetailsViewController) initWithProvisioningController:v8 context:v9 product:*&v7[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product] delegate:v7];

  if (v10)
  {
    sub_1BE052434();
    v11 = v10;
    v12 = sub_1BE04BB74();

    [v11 setReporter_];
  }

  return v10;
}

uint64_t sub_1BD12EB18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD12EB54(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD12EBA4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v4 = [a1 fieldsModel];
  if (v4)
  {
    v5 = v4;
    v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_context);
    v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product);
    v8 = [a1 termsAccepted];
    CardFlowItem = type metadata accessor for ProvisioningReaderModeReadCardFlowItem();
    v10 = objc_allocWithZone(CardFlowItem);
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v11 = &v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_identifier];
    *v11 = 0xD00000000000001ALL;
    v11[1] = 0x80000001BE119B40;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator] = 0;
    v12 = &v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult];
    *v12 = 0;
    v12[8] = -1;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context] = v6;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_product] = v7;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_fieldsModel] = v5;
    v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_termsAccepted] = v8;
    v24.receiver = v10;
    v24.super_class = CardFlowItem;
    sub_1BE048964();
    v13 = v7;
    v14 = v5;
    v15 = objc_msgSendSuper2(&v24, sel_init);
    v16 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v2, &off_1F3B92EF8, v15, &off_1F3BC1840, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
LABEL_6:
    v23 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v19 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      v21 = swift_getObjectType();
      v25[0] = v23;
      v26 = 1;
      v22 = v23;
      sub_1BD865A00(v2, &off_1F3B92EF8, v25, v21, v20);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v25);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD12EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), sub_1BD12FFE4))
  {
    v4 = qword_1EBD3D980;
    v5 = off_1EBD3D988;
    v7[3] = &type metadata for ProvisioningScreenDebugConfigurationValue;
    v7[0] = a2;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD6B04F0(v7, v4, v5);
    swift_endAccess();
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD12EFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B7020;
  *(v7 + 32) = a2;
  *(v6 + 16) = v7;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = a3;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
  *(swift_initStackObject() + 16) = inited;
  sub_1BE048964();
  sub_1BE048964();
  while (1)
  {
    sub_1BD6B0020(v6, &v11);
    if (!v11)
    {
      v9 = 0;
      goto LABEL_7;
    }

    if (*(v11 + 16) == a1)
    {
      break;
    }
  }

  v9 = v11;
LABEL_7:

  return v9;
}

uint64_t sub_1BD12F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a4))
  {
    v5 = qword_1EBD53DE0;
    v6 = off_1EBD53DE8;
    v12[3] = &type metadata for ProvisioningManualEntryOption;
    v7 = swift_allocObject();
    v12[0] = v7;
    v8 = *(a2 + 8);
    v14 = *(a2 + 16);
    v15 = v8;
    v13 = *(a2 + 24);
    v9 = *(a2 + 16);
    *(v7 + 16) = *a2;
    *(v7 + 32) = v9;
    *(v7 + 48) = *(a2 + 32);
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD12FBD4(&v15, v11);
    sub_1BD12FBD4(&v14, v11);
    sub_1BD12FBD4(&v13, v11);
    sub_1BD6B04F0(v12, v5, v6);
    swift_endAccess();
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD12F27C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a4))
  {
    v9 = *a5;
    v10 = *a6;
    v13 = MEMORY[0x1E69E6370];
    v12[0] = a2 & 1;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD6B04F0(v12, v9, v10);
    swift_endAccess();
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD12F378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1BD12EFF4(a1, *(a5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a6))
  {
    v9 = qword_1EBD48AC8;
    v10 = off_1EBD48AD0;
    v14 = a4;
    v15 = &type metadata for ProvisioningPrivacyDisclosures;
    v12[0] = a2 & 1;
    v13 = a3;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD6B04F0(v12, v9, v10);
    swift_endAccess();
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD12F494(uint64_t a1, void *a2, uint64_t a3)
{
  if (sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), sub_1BD12FFE4))
  {
    v4 = qword_1EBD46AB0;
    v5 = off_1EBD46AB8;
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA0);
    v8[0] = a2;
    swift_beginAccess();
    v6 = a2;
    sub_1BE048C84();
    sub_1BD6B04F0(v8, v4, v5);
    swift_endAccess();
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD12F89C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_1BD12F378(v14, a1 & 1, a2, a3, v13, a7);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v15 = qword_1EBD48AC8;
  v16 = off_1EBD48AD0;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v15, v16);

  sub_1BE053994();
  __break(1u);
}

void sub_1BD12FA50(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_1BD12F27C(v14, a1 & 1, v13, a5, a6, a7);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v15 = *a6;
  v16 = *a7;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v15, v16);

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD12FBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD12FC64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      sub_1BD12F130(v10, a1, v9, a5);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v11 = qword_1EBD53DE0;
  v12 = off_1EBD53DE8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v11, v12);

  sub_1BE053994();
  __break(1u);
}

void sub_1BD12FE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v10 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    if (swift_dynamicCastClass())
    {
      v11 = v10;
      a5();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v12 = *a6;
  v13 = *a7;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v12, v13);

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD12FF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD12FFE8(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD130044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_1BD1300C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_1BE04EDC4();
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA8);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v44 - v11;
  v45 = v8;
  v46 = v5;
  if (a2)
  {
    v57 = a1;
    v58 = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v15 = a2;
    LODWORD(a2) = v16;
    v18 = v17;
  }

  else
  {
    v15 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v14 = 0xE600000000000000;
    v12 = 0x58582E585824;
  }

  sub_1BE0502C4();
  v49 = a2;
  v47 = v12;
  v48 = v14;
  v50 = v18;
  v19 = sub_1BE0505F4();
  v21 = v20;
  v23 = v22;

  sub_1BE050384();
  v24 = sub_1BE050544();
  v26 = v25;
  v28 = v27;
  sub_1BD0DDF10(v19, v21, v23 & 1);

  sub_1BE051234();
  v29 = sub_1BE050564();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_1BD0DDF10(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v57 = v29;
  v58 = v31;
  v59 = v33 & 1;
  v44[1] = v35;
  v60 = v35;
  v61 = KeyPath;
  v62 = 1;
  if (v15)
  {
    v56 = 0;
    sub_1BD1305EC(&qword_1EBD39FB0, MEMORY[0x1E697EA58]);
    v37 = v45;
    v38 = v46;
    sub_1BE053DE4();
  }

  else
  {
    v37 = v45;
    sub_1BE04EDB4();
    v38 = v46;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
  v40 = sub_1BD0EF0FC();
  v41 = v52;
  sub_1BE0510A4();
  (*(v51 + 8))(v37, v38);
  sub_1BD0DDF10(v29, v31, v33 & 1);

  sub_1BE052434();
  v57 = v39;
  v58 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v54;
  sub_1BE050DE4();

  sub_1BD0DDF10(v47, v48, v49 & 1);

  return (*(v53 + 8))(v41, v42);
}

unint64_t sub_1BD1304F4()
{
  result = qword_1EBD39FB8;
  if (!qword_1EBD39FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    swift_getOpaqueTypeConformance2();
    sub_1BD1305EC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FB8);
  }

  return result;
}

uint64_t sub_1BD1305EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD13063C()
{
  type metadata accessor for AvailablePass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD131B20(319, &qword_1EBD392F0, sub_1BD131A80, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD131B20(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD12967C();
        if (v3 <= 0x3F)
        {
          sub_1BE0534B4();
          if (v4 <= 0x3F)
          {
            sub_1BD131ACC(319, &qword_1EBD39FC8, &qword_1EBD39FD0);
            if (v5 <= 0x3F)
            {
              sub_1BD131ACC(319, &qword_1EBD39020, &qword_1EBD579E0);
              if (v6 <= 0x3F)
              {
                sub_1BD131B20(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD130834(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_1BE04CF34() - 8);
  v90 = *(v4 + 80);
  v5 = ((v90 + 40) & ~v90) + *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v91 = v5;
  v93 = *(sub_1BE04DA84() - 8);
  v6 = v93;
  v7 = *(v93 + 84);
  v87 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = v7 - 1;
  v81 = sub_1BE04AF64();
  v9 = *(v81 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 1;
  v86 = v13;
  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v11 <= 0x7FFFFFFD)
  {
    v14 = 2147483645;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 - 1;
  v83 = v15;
  v84 = v11;
  if (v13 <= v15)
  {
    v13 = v15;
  }

  v85 = v13;
  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v89 = v13;
  v88 = v13 - 1;
  if (v13 - 1 >= v13)
  {
    --v13;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v13 = v18;
  }

  v96 = v13;
  v19 = *(sub_1BE04F774() - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = *(v93 + 80);
  v22 = *(v93 + 64);
  v23 = *(v9 + 80);
  if (v10)
  {
    v24 = *(v9 + 64);
  }

  else
  {
    v24 = *(v9 + 64) + 1;
  }

  v82 = v16;
  v25 = *(v16 + 80);
  v26 = *(v16 + 64);
  v94 = v17;
  if (v17)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v21 | 7;
  v29 = v91 + (v21 | 7) + 2;
  v30 = v21 + 16;
  v31 = ((((((v22 + ((v21 + 16) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v32 = v23 | 7;
  v33 = v31 + (v23 | 7);
  v34 = v23 + 10;
  v35 = ((v23 + 10) & ~v23) + v24 + 7;
  v36 = v23 + 8;
  v37 = v23 + 113;
  v38 = (v24 + ((v24 + v23 + ((v23 + 113) & ~v23)) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + ((v23 + 8 + ((((v35 + ((v33 + (v29 & ~(v21 | 7))) & ~(v23 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v23 | 7)) + 119) & 0xFFFFFFFFFFFFFFF8;
  v40 = v21 | v90 | v23;
  v41 = v40 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v42 = v40 + 8;
  v43 = v39 + 8;
  v44 = (((((v42 & v41) + v39 + 8 + 103) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = v25 + 80;
  if (v96 < a2)
  {
    v46 = *(v19 + 80) & 0xF8 | 7;
    v47 = ((v20 + ((v46 + ((((((v27 + v26 + ((v45 + ((v42 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) & v41) + v44) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v46) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v47 <= 3)
    {
      v48 = ((a2 - v96 + 255) >> 8) + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = *&a1[v47];
        if (*&a1[v47])
        {
          goto LABEL_51;
        }
      }

      else
      {
        v51 = *&a1[v47];
        if (v51)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v50)
    {
      v51 = a1[v47];
      if (a1[v47])
      {
LABEL_51:
        v52 = v47 > 3;
        if (v47 <= 3)
        {
          v53 = (v51 - 1) << (8 * v47);
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v66 = *a1;
        }

        else
        {
          v66 = *a1;
        }

        return v96 + (v66 | v53) + 1;
      }
    }
  }

  v54 = ~v28;
  v55 = ~v21;
  v56 = ~v32;
  v57 = ~v23;
  if (v96 != v89)
  {
    v61 = ((v42 + (&a1[v43 + 7] & 0xFFFFFFFFFFFFFFF8)) & v41);
    if (v88 == v96)
    {
      if ((v85 & 0x80000000) == 0)
      {
        v62 = *v61;
LABEL_73:
        if (v62 >= 0xFFFFFFFF)
        {
          LODWORD(v62) = -1;
        }

        v64 = v62 + 1;
        goto LABEL_126;
      }

      v70 = (v29 + ((v61 + v42) & v41)) & v54;
      if (v8 == v89)
      {
        if ((v87 & 0x80000000) != 0)
        {
          v69 = (*(v6 + 48))((v30 + v70) & v55);
        }

        else
        {
          v71 = *(((v29 + ((v61 + v42) & v41)) & v54) + 8);
          if (v71 >= 0xFFFFFFFF)
          {
            LODWORD(v71) = -1;
          }

          v69 = v71 + 1;
        }

        goto LABEL_107;
      }

      v74 = ((v33 + v70) & v56);
      if (v86 == v89)
      {
        if ((v84 & 0x80000000) == 0)
        {
          v75 = *v74;
          if (*v74 >= 0xFFFFFFFF)
          {
            LODWORD(v75) = -1;
          }

          v76 = v75 + 1;
LABEL_123:
          if (v76 >= 2)
          {
            v64 = v76 - 1;
          }

          else
          {
            v64 = 0;
          }

LABEL_126:
          if (v64 >= 2)
          {
            return (v64 - 1);
          }

          else
          {
            return 0;
          }
        }

        v80 = v74 + v34;
      }

      else
      {
        v77 = (v36 + ((((v74 + v35) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v56;
        if (v84 <= 0x7FFFFFFD)
        {
          v78 = *(v77 + 16);
          if (v78 >= 0xFFFFFFFF)
          {
            LODWORD(v78) = -1;
          }

          v76 = v78 - 1;
          if (v76 < 0)
          {
            v76 = -1;
          }

          v79 = v76 + 1;
          goto LABEL_121;
        }

        v80 = v37 + v77;
      }

      v79 = (*(v9 + 48))(v80 & v57, v10, v81);
      v76 = v79 - 1;
LABEL_121:
      if (v79 < 2)
      {
        v76 = 0;
      }

      goto LABEL_123;
    }

    if (v94 >= 2)
    {
      v60 = (*(v82 + 48))((v61 + v45 + v44) & ~v25);
LABEL_88:
      if (v60 >= 2)
      {
        return v60 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v58 = &a1[v91 + 2 + v28] & v54;
  if (v8 == v89)
  {
    if ((v87 & 0x80000000) != 0)
    {
      v60 = (*(v6 + 48))((v30 + v58) & v55);
    }

    else
    {
      v59 = *((&a1[v91 + 2 + v28] & v54) + 8);
      if (v59 >= 0xFFFFFFFF)
      {
        LODWORD(v59) = -1;
      }

      v60 = v59 + 1;
    }

    goto LABEL_88;
  }

  v63 = ((v58 + v32 + v31) & v56);
  if (v86 == v89)
  {
    if ((v84 & 0x80000000) == 0)
    {
      v62 = *v63;
      goto LABEL_73;
    }

    v73 = v63 + v34;
LABEL_106:
    v69 = (*(v9 + 48))(v73 & v57, v10, v81);
LABEL_107:
    v64 = v69 - 1;
LABEL_108:
    if (v69 < 2)
    {
      v64 = 0;
    }

    goto LABEL_126;
  }

  v67 = (v36 + ((((v63 + v35) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v56;
  if (v83 == v89)
  {
    if (v84 <= 0x7FFFFFFD)
    {
      v68 = *(v67 + 16);
      if (v68 >= 0xFFFFFFFF)
      {
        LODWORD(v68) = -1;
      }

      v64 = v68 - 1;
      if (v64 < 0)
      {
        v64 = -1;
      }

      v69 = v64 + 1;
      goto LABEL_108;
    }

    v73 = v37 + v67;
    goto LABEL_106;
  }

  v72 = *(v38 + v67 + 104);
  if (v72 >= 0xFFFFFFFF)
  {
    LODWORD(v72) = -1;
  }

  return (v72 + 1);
}

void sub_1BD130FEC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v105 = v7;
  v88 = sub_1BE04DA84();
  v8 = *(v88 - 8);
  v110 = v8;
  v9 = *(v8 + 84);
  v96 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v99 = v9;
  v10 = v9 - 1;
  v86 = sub_1BE04AF64();
  v11 = *(v86 - 8);
  v109 = v11;
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v97 = v14;
  v15 = v14 - 1;
  v98 = v15;
  if (v10 > v15)
  {
    v15 = v10;
  }

  if (v13 <= 0x7FFFFFFD)
  {
    v16 = 2147483645;
  }

  else
  {
    v16 = v13;
  }

  v90 = v16;
  v91 = v13;
  v17 = v16 - 1;
  if (v15 <= v17)
  {
    v15 = v17;
  }

  v92 = v15;
  v93 = v17;
  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v103 = v10;
  v104 = v15;
  v102 = v15 - 1;
  if (v15 - 1 >= v15)
  {
    --v15;
  }

  v89 = *(a4 + 16);
  v18 = *(v89 - 8);
  v111 = v18;
  v19 = *(v18 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  v100 = v20;
  if (v15 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v15;
  }

  v112 = 0;
  v22 = *(sub_1BE04F774() - 8);
  if (*(v22 + 64) <= 8uLL)
  {
    v23 = 8;
  }

  else
  {
    v23 = *(v22 + 64);
  }

  if (v12)
  {
    v24 = *(v11 + 64);
  }

  else
  {
    v24 = *(v11 + 64) + 1;
  }

  v25 = *(v8 + 80);
  v26 = v25 | 7;
  v27 = v105 + (v25 | 7) + 2;
  v28 = *(v11 + 80);
  v29 = v28 | 7;
  v101 = ((((((*(v8 + 64) + ((v25 + 16) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = v101 + (v28 | 7);
  v94 = ((v28 + 10) & ~v28) + v24 + 7;
  v95 = v28 + 8;
  v31 = (v28 + 8 + ((((v94 + ((v30 + (v27 & ~(v25 | 7))) & ~(v28 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v28 | 7);
  v87 = ((v24 + v28 + ((v28 + 113) & ~v28)) & ~v28) + v24;
  v32 = (v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + v32 + 119) & 0xFFFFFFFFFFFFFFF8;
  v34 = v25 | v6 | v28;
  v35 = v34 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v36 = v34 + 8;
  v37 = (v34 + 8 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) & v35;
  v38 = (v34 + 8) & v35;
  v39 = v33 + 8;
  v40 = ((((v38 + v33 + 8 + 103) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = *(v18 + 80);
  v42 = (v41 + 80 + v37 + v40) & ~v41;
  if (v19)
  {
    v43 = *(v18 + 64);
  }

  else
  {
    v43 = *(v18 + 64) + 1;
  }

  v44 = *(v22 + 80) & 0xF8 | 7;
  v45 = ((v23 + ((v44 + ((((((v43 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v44) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v21 < a3)
  {
    if (v45 <= 3)
    {
      v46 = ((a3 - v21 + 255) >> 8) + 1;
    }

    else
    {
      v46 = 2;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v112 = v48;
  }

  if (v21 < a2)
  {
    v49 = ~v21 + a2;
    bzero(a1, v45);
    if (v45 <= 3)
    {
      v50 = (v49 >> 8) + 1;
    }

    else
    {
      v50 = 1;
    }

    if (v45 > 3)
    {
      *a1 = v49;
    }

    else
    {
      *a1 = v49;
    }

    if (v112 > 1)
    {
      if (v112 == 2)
      {
        *(a1 + v45) = v50;
      }

      else
      {
        *(a1 + v45) = v50;
      }
    }

    else if (v112)
    {
      *(a1 + v45) = v50;
    }

    return;
  }

  v51 = ((v28 + 10) & ~v28) + v24;
  if (v112 > 1)
  {
    if (v112 != 2)
    {
      *(a1 + v45) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    *(a1 + v45) = 0;
  }

  else if (v112)
  {
    *(a1 + v45) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_66;
  }

  if (!a2)
  {
    return;
  }

LABEL_66:
  v52 = ~v26;
  v53 = ~v29;
  v54 = ~v28;
  if (v21 == v104)
  {
    v55 = ((a1 + v105 + v26 + 2) & v52);
    if (v103 == v104)
    {
      v56 = a2 - v99;
      if (a2 < v99)
      {
        v57 = a2 + 1;
        v58 = v96;
        if ((v96 & 0x80000000) == 0)
        {
          if ((v57 & 0x80000000) == 0)
          {
            *(v55 + 1) = a2;
            return;
          }

          v76 = -2147483647;
          goto LABEL_124;
        }

LABEL_157:
        v70 = *(v110 + 56);
        v71 = &v55[v25 + 16] & ~v25;
        v72 = v88;
        goto LABEL_158;
      }

      if (!v101)
      {
        return;
      }

LABEL_98:
      v67 = v55;
      v68 = v101;
LABEL_122:
      bzero(v67, v68);
      *v55 = v56;
      return;
    }

    v55 = (&v55[v29 + v101] & v53);
    if (v98 == v104)
    {
      v60 = a2 - v97;
      if (a2 < v97)
      {
        v61 = v91;
        if ((v91 & 0x80000000) == 0)
        {
          if (((a2 + 1) & 0x80000000) != 0)
          {
            goto LABEL_86;
          }

          goto LABEL_78;
        }

        v77 = v28 + 10;
        goto LABEL_135;
      }

      if (v51 <= 3)
      {
        v73 = ~(-1 << (8 * v51));
      }

      else
      {
        v73 = -1;
      }

      if (!v51)
      {
        return;
      }

LABEL_112:
      v64 = v73 & v60;
      v24 += (v28 + 10) & ~v28;
LABEL_143:
      if (v24 <= 3)
      {
        v65 = v24;
      }

      else
      {
        v65 = 4;
      }

      v66 = v55;
      goto LABEL_147;
    }

    v55 = ((v95 + (((&v55[v94] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v53);
    if (v93 != v104)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v74 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v74 = a2 - 1;
      }

      *&v55[v32 + 104] = v74;
      return;
    }

    v56 = a2 - v90;
    if (a2 < v90)
    {
      v61 = v91;
      if (v91 > 0x7FFFFFFD)
      {
        v77 = v28 + 113;
LABEL_135:
        v55 = (&v55[v77] & v54);
        v80 = a2 - v61;
        if (a2 < v61)
        {
          v70 = *(v109 + 56);
          v57 = a2 + 2;
LABEL_137:
          v71 = v55;
          v58 = v12;
          v72 = v86;
LABEL_158:

          v70(v71, v57, v58, v72);
          return;
        }

        if (v24 <= 3)
        {
          v81 = ~(-1 << (8 * v24));
        }

        else
        {
          v81 = -1;
        }

        if (!v24)
        {
          return;
        }

LABEL_142:
        v64 = v81 & v80;
        goto LABEL_143;
      }

      if (a2 < 0x7FFFFFFD)
      {
        *(v55 + 2) = a2 + 2;
        return;
      }

      v83 = 0uLL;
      *(v55 + 8) = 0u;
      v84 = a2 - 2147483645;
      v55[56] = 0;
LABEL_165:
      *(v55 + 40) = v83;
      *(v55 + 24) = v83;
      *(v55 + 2) = v84;
      return;
    }

    v75 = (v87 + 7) & 0xFFFFFFF8;
    v68 = (v75 + 8);
    if (v75 == -8)
    {
      return;
    }

LABEL_121:
    v67 = v55;
    goto LABEL_122;
  }

  v55 = ((v36 + ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) & v35);
  if (v102 != v21)
  {
    v55 = (&v55[v41 + 80 + v40] & ~v41);
    if (v100 >= a2)
    {
      if (v19 < 2)
      {
        return;
      }

      v70 = *(v111 + 56);
      v57 = a2 + 1;
      v71 = v55;
      v58 = v19;
      v72 = v89;
      goto LABEL_158;
    }

    if (v43 <= 3)
    {
      v63 = ~(-1 << (8 * v43));
    }

    else
    {
      v63 = -1;
    }

    if (!v43)
    {
      return;
    }

    v64 = v63 & (~v100 + a2);
    if (v43 <= 3)
    {
      v65 = v43;
    }

    else
    {
      v65 = 4;
    }

    v66 = v55;
    v24 = v43;
LABEL_147:
    bzero(v66, v24);
    if (v65 > 2)
    {
      if (v65 == 3)
      {
        *v55 = v64;
        v55[2] = BYTE2(v64);
      }

      else
      {
        *v55 = v64;
      }
    }

    else if (v65 == 1)
    {
      *v55 = v64;
    }

    else
    {
      *v55 = v64;
    }

    return;
  }

  if (a2 < v104)
  {
    v59 = a2 + 1;
    if ((v92 & 0x80000000) == 0)
    {
      if ((v59 & 0x80000000) != 0)
      {
LABEL_86:
        v62 = -2147483647;
        goto LABEL_87;
      }

LABEL_78:
      *v55 = a2;
      return;
    }

    v55 = ((v27 + (&v55[v36] & v35)) & v52);
    if (v103 == v104)
    {
      v57 = a2 + 2;
      if (v57 <= v99)
      {
        v58 = v96;
        if ((v96 & 0x80000000) == 0)
        {
          if ((v57 & 0x80000000) == 0)
          {
            *(v55 + 1) = v59;
            return;
          }

          v76 = -2147483646;
LABEL_124:
          *v55 = a2 + v76;
          *(v55 + 1) = 0;
          return;
        }

        goto LABEL_157;
      }

      if (!v101)
      {
        return;
      }

      v56 = v59 - v99;
      goto LABEL_98;
    }

    v55 = (&v55[v30] & v53);
    if (v98 == v104)
    {
      v78 = a2 + 2;
      v79 = v91;
      if (a2 + 2 > v97)
      {
        if (v51 <= 3)
        {
          v73 = ~(-1 << (8 * v51));
        }

        else
        {
          v73 = -1;
        }

        if (!v51)
        {
          return;
        }

        v60 = v59 - v97;
        goto LABEL_112;
      }

      if ((v91 & 0x80000000) == 0)
      {
        if ((v78 & 0x80000000) == 0)
        {
          *v55 = v59;
          return;
        }

        v62 = -2147483646;
LABEL_87:
        *v55 = a2 + v62;
        return;
      }

      v85 = v28 + 10;
    }

    else
    {
      v55 = ((v95 + (((&v55[v94] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v53);
      v78 = a2 + 2;
      v79 = v91;
      if (a2 + 2 > v90)
      {
        v82 = (v87 + 7) & 0xFFFFFFF8;
        v68 = (v82 + 8);
        if (v82 == -8)
        {
          return;
        }

        v56 = v59 - v90;
        goto LABEL_121;
      }

      if (v91 <= 0x7FFFFFFD)
      {
        if (a2 <= 0x7FFFFFFB)
        {
          *(v55 + 2) = a2 + 3;
          return;
        }

        v83 = 0uLL;
        *(v55 + 8) = 0u;
        v55[56] = 0;
        v84 = a2 - 2147483644;
        goto LABEL_165;
      }

      v85 = v28 + 113;
    }

    v55 = (&v55[v85] & v54);
    if (v78 <= v79)
    {
      v70 = *(v109 + 56);
      v57 = a2 + 3;
      goto LABEL_137;
    }

    if (v24 <= 3)
    {
      v81 = ~(-1 << (8 * v24));
    }

    else
    {
      v81 = -1;
    }

    if (!v24)
    {
      return;
    }

    v80 = v59 - v91;
    goto LABEL_142;
  }

  v69 = (((v38 + ((((v87 + 7) & 0xFFFFFFF8) + v31 + 119) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
  if (v69 != -8)
  {
    bzero(v55, (v69 + 8));
    *v55 = a2 - v104;
  }
}

unint64_t sub_1BD131A80()
{
  result = qword_1EBD43BA0;
  if (!qword_1EBD43BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43BA0);
  }

  return result;
}

void sub_1BD131ACC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD131B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BD131BC8(uint64_t a1)
{
  v2 = type metadata accessor for PassImage(255);
  v3 = type metadata accessor for PassDetails();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0);
  v5 = *(a1 + 16);
  v6 = sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage);
  v7 = sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails);
  v8 = sub_1BD1103C8();
  v9 = *(a1 + 24);
  v23[2] = v2;
  v23[3] = v3;
  v23[4] = v4;
  v23[5] = v5;
  v23[6] = v6;
  v23[7] = v7;
  v23[8] = v8;
  v23[9] = v9;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v10 = sub_1BE04EBD4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v23 - v17;
  sub_1BD131E64(a1, v15);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v23[0] = WitnessTable;
  v23[1] = v20;
  swift_getWitnessTable();
  sub_1BD147308(v15);
  v21 = *(v11 + 8);
  v21(v15, v10);
  sub_1BD147308(v18);
  return (v21)(v18, v10);
}

uint64_t sub_1BD131E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = sub_1BE04C624();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v4);
  v48 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C894();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v54 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PassImage(255);
  v45 = v9;
  v10 = type metadata accessor for PassDetails();
  v43 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0);
  v41 = v11;
  v12 = *(a1 + 16);
  v13 = sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage);
  v40 = v13;
  v14 = sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails);
  v39 = v14;
  v38 = sub_1BD1103C8();
  v15 = *(a1 + 24);
  v69 = v9;
  v70 = v10;
  v71 = v11;
  v72 = v12;
  v73 = v13;
  v74 = v14;
  v75 = v38;
  v76 = v15;
  v47 = sub_1BE04C6F4();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v16);
  v44 = &v37 - v17;
  sub_1BE0500D4();
  v18 = sub_1BE04EBD4();
  v52 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v49 = &v37 - v23;
  v64 = v12;
  v65 = v15;
  v66 = v2;
  v61 = v12;
  v62 = v15;
  v63 = v2;
  v58 = v12;
  v59 = v15;
  v60 = v2;
  sub_1BD132BA0(a1, v54);
  v55 = v12;
  v56 = v15;
  LODWORD(v10) = *(v2 + *(a1 + 64));
  v24 = *(v46 + 104);
  v25 = MEMORY[0x1E69BC910];
  v57 = v2;
  if (!v10)
  {
    v25 = MEMORY[0x1E69BC908];
  }

  v24(v48, *v25, v50);
  v26 = *(a1 + 60);
  v27 = *(v2 + *(a1 + 56));
  v28 = *(v2 + v26);
  sub_1BD0D44B8(v27);
  sub_1BD0D44B8(v28);
  v29 = v44;
  sub_1BE04C694();
  sub_1BE052434();
  v30 = v47;
  WitnessTable = swift_getWitnessTable();
  v32 = v42;
  sub_1BE050DE4();

  (*(v51 + 8))(v29, v30);
  v33 = sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v67 = WitnessTable;
  v68 = v33;
  swift_getWitnessTable();
  v34 = v49;
  sub_1BD147308(v32);
  v35 = *(v52 + 8);
  v35(v32, v18);
  sub_1BD147308(v34);
  return (v35)(v34, v18);
}

double sub_1BD13241C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassImage(0);
  sub_1BD133398(a1, a2 + v4[6], type metadata accessor for WrappedPass);
  v5 = *(a1 + *(type metadata accessor for PaymentPassMainItem() + 72));
  PKPassFrontFaceContentSize();
  result = v5 * (v7 / v6);
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *a2 = sub_1BD70C870;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + v4[7]) = 1;
  *(a2 + v4[8]) = 1911;
  return result;
}

uint64_t sub_1BD1324EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD133398(a1, a2, type metadata accessor for AvailablePass);
  v4 = type metadata accessor for PaymentPassMainItem();
  v5 = *(a1 + v4[9]);
  v6 = (a1 + v4[11]);
  v7 = v6[4];
  v24 = v6[3];
  v25 = v7;
  v8 = v6[2];
  v22 = v6[1];
  v23 = v8;
  v21 = *v6;
  v9 = v4[13];
  v10 = type metadata accessor for PassDetails();
  sub_1BD0DE19C(a1 + v9, a2 + v10[7], &qword_1EBD51EC0);
  *(a2 + v10[5]) = v5;
  v11 = (a2 + v10[6]);
  v12 = v24;
  v11[2] = v23;
  v11[3] = v12;
  v11[4] = v25;
  v13 = v22;
  *v11 = v21;
  v11[1] = v13;
  v14 = v10[8];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v10[9];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (a2 + v10[10]);
  v17 = v5;
  sub_1BD0DE19C(&v21, &v20, &qword_1EBD395E0);
  result = sub_1BE051234();
  v19 = MEMORY[0x1E6981568];
  v16[3] = MEMORY[0x1E69815C0];
  v16[4] = v19;
  *v16 = result;
  return result;
}

uint64_t sub_1BD13266C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PaymentPassMainItem();
  v7 = sub_1BD132904(v6);
  if (v8)
  {
    v33 = v7;
    v34 = v8;
    sub_1BD0DDEBC();
    v9 = sub_1BE0506C4();
    v11 = v10;
    v13 = v12;
    sub_1BE0502C4();
    v14 = sub_1BE0505F4();
    v16 = v15;
    v30 = a1;
    v31 = v2;
    v18 = v17;

    sub_1BD0DDF10(v9, v11, v13 & 1);

    sub_1BE051234();
    v19 = sub_1BE050564();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    sub_1BD0DDF10(v14, v16, v18 & 1);

    v33 = v19;
    v34 = v21;
    v35 = v23 & 1;
    v36 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v19, v21, v23 & 1);

    v26 = v30;
    sub_1BD133260(v5, v30);
    return (*(v32 + 56))(v26, 0, 1, v31);
  }

  else
  {
    v28 = *(v32 + 56);

    return v28(a1, 1, 1, v2);
  }
}

uint64_t sub_1BD132904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PeerPaymentModel();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(v1 + *(a1 + 40), v6, &qword_1EBD45480);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD45480);
    return 0;
  }

  sub_1BD1332D0(v6, v11, type metadata accessor for PeerPaymentModel);
  if (v11[v7[13]] != 1 || (*(v1 + *(type metadata accessor for AvailablePass(0) + 20)) & 1) != 0 || ((v12 = &v11[v7[6]], v14 = *v12, v13 = *(v12 + 1), v14 != 1) ? (v15 = v13 == 0) : (v15 = 1), v15 || (v11[v7[16]] & 1) != 0))
  {
    sub_1BD133338(v11, type metadata accessor for PeerPaymentModel);
    return 0;
  }

  v17 = v13;
  v18 = [v17 totalAmount];
  v19 = [v17 totalAmountCurrency];
  v20 = PKFormattedCurrencyStringFromNumber();

  if (v20)
  {
    v21 = sub_1BE052434();
  }

  else
  {

    v21 = 0;
  }

  sub_1BD133338(v11, type metadata accessor for PeerPaymentModel);
  return v21;
}

uint64_t sub_1BD132BA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for BalanceInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04C894();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 104);
  if (*(v2 + a1[14]))
  {
    v20 = *MEMORY[0x1E69BCA00];
    v35 = v15 + 104;
    v34 = v19;
    v19(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v14);
    sub_1BD0DE19C(v2 + a1[13], &v36, &qword_1EBD51EC0);
    if (v37)
    {
      v31 = a1;
      v33 = v18;
      v32 = v2;
      sub_1BD0EF554(&v36, &v38);
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      if ((sub_1BE04C704() & 1) != 0 && (PKOslo2024UIUpdatesEnabled() & 1) == 0)
      {
        v18 = v33;
        (*(v15 + 8))(v33, v14);
        v34(v18, *MEMORY[0x1E69BC9F8], v14);
        __swift_destroy_boxed_opaque_existential_0(&v38);
        return (*(v15 + 32))(a2, v18, v14);
      }

      __swift_destroy_boxed_opaque_existential_0(&v38);
      v2 = v32;
      v18 = v33;
      a1 = v31;
    }

    else
    {
      sub_1BD0DE53C(&v36, &qword_1EBD51EC0);
    }

    v23 = type metadata accessor for AvailablePass(0);
    sub_1BD0DE19C(v2 + *(v23 + 28), v8, &qword_1EBD39FF0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1BD0DE53C(v8, &qword_1EBD39FF0);
    }

    else
    {
      sub_1BD1332D0(v8, v13, type metadata accessor for BalanceInfo);
      v24 = v13[8];
      sub_1BD133338(v13, type metadata accessor for BalanceInfo);
      if (v24 == 1)
      {
        goto LABEL_18;
      }
    }

    v25 = (v2 + a1[11]);
    v26 = v25[1];
    v38 = *v25;
    v39 = v26;
    v27 = v25[3];
    v40 = v25[2];
    v41 = v27;
    v42 = v25[4];
    if (!v27 || !v39)
    {
      return (*(v15 + 32))(a2, v18, v14);
    }

    if (v39 != 1)
    {
      (*(v15 + 8))(v18, v14);
      v29 = MEMORY[0x1E69BC9F0];
      goto LABEL_21;
    }

    v28 = v38;
    sub_1BD0DE19C(&v38, &v36, &qword_1EBD395E0);
    sub_1BD12B91C(v28, *(&v28 + 1), 1);

    sub_1BD0DE53C(&v38, &qword_1EBD395E0);
LABEL_18:
    (*(v15 + 8))(v18, v14);
    v29 = MEMORY[0x1E69BC9F8];
LABEL_21:
    v34(v18, *v29, v14);
    return (*(v15 + 32))(a2, v18, v14);
  }

  v21 = *MEMORY[0x1E69BC9E8];

  return (v19)(a2, v21, v14);
}

uint64_t sub_1BD1330A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  v10 = *(type metadata accessor for PaymentPassMainItem() + 48);
  v12[1] = a3;
  swift_getWitnessTable();
  sub_1BD147308(a1 + v10);
  sub_1BD147308(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD1331E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD133260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1332D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD133338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD133398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD133404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD135270;

  return sub_1BD99D51C(a1);
}

uint64_t sub_1BD1334AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD133554;

  return sub_1BD99D51C(a1);
}

uint64_t sub_1BD133554(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1BD13365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD13526C;

  return (sub_1BD5426E8)(a2, a3, 50, 1, &unk_1BE0B9F78, 0);
}

uint64_t sub_1BD133734(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, &unk_1BE0B9F70, 0);
}

uint64_t sub_1BD1337F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BD133940()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAAE10);
  __swift_project_value_buffer(v9, qword_1EBDAAE10);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD133B54(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_1BE04D214();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  sub_1BE0528A4();
  v2[48] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[49] = v7;
  v2[50] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD133D24, v7, v6);
}

uint64_t sub_1BD133D24()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:AddMoneyIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[41];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[51] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v12 = v0[12];
  v0[52] = v12;
  v13 = v12;
  sub_1BD030458((v0 + 10));
  v14 = swift_task_alloc();
  v0[53] = v14;
  *v14 = v0;
  v14[1] = sub_1BD133F30;

  return sub_1BD99D51C(v13);
}

uint64_t sub_1BD133F30(char a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = *(v4 + 392);
    v6 = *(v4 + 400);
    v7 = sub_1BD1343B0;
  }

  else
  {

    *(v4 + 465) = a1 & 1;
    v5 = *(v4 + 392);
    v6 = *(v4 + 400);
    v7 = sub_1BD134064;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD134064()
{
  if (*(v0 + 465) == 1)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 coordinator];
    *(v0 + 440) = v2;

    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 448) = v3;
      *v3 = v0;
      v3[1] = sub_1BD134478;

      return sub_1BD0D7278();
    }

    sub_1BE04D074();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "AddMoneyIntent: PKAppIntentCoordinator was nil", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);

    (*(v16 + 8))(v14, v15);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {

    sub_1BE04D074();
    v5 = sub_1BE04D204();
    v6 = sub_1BE052C34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v5, v6, "AddMoneyIntent: Pass does not support adding money", v7, 2u);
      MEMORY[0x1BFB45F20](v7, -1, -1);
    }

    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);

    (*(v9 + 8))(v8, v10);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
  }

  swift_willThrow();
  sub_1BD134BBC();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BD1343B0()
{
  v1 = *(v0 + 416);

  sub_1BD134BBC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD134478(char a1)
{
  v2 = *v1;
  *(*v1 + 466) = a1;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD1345A0, v4, v3);
}

uint64_t sub_1BD1345A0()
{
  if (*(v0 + 466) == 1)
  {
    v1 = *(v0 + 440);
    sub_1BE048874();
    sub_1BE048C84();
    sub_1BD030458(v0 + 144);
    v2 = sub_1BE052404();
    *(v0 + 456) = v2;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 464;
    *(v0 + 24) = sub_1BD1347F0;
    v3 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BD68F38C;
    *(v0 + 232) = &block_descriptor_6;
    *(v0 + 240) = v3;
    [v1 presentAddMoneyForPassWithUniqueID:v2 completion:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD134BBC();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1BD1347F0()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD1348F8, v2, v1);
}

uint64_t sub_1BD1348F8()
{
  v20 = v0;
  v1 = *(v0 + 456);

  v2 = *(v0 + 464);

  sub_1BE04D074();
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 320);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    if (v2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x64656C696166;
    }

    v18 = v6;
    v12 = v2;
    if (v2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v19);
    v2 = v12;

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v3, v4, "AddMoneyIntent: Present add money flow %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v8 + 8))(v18, v7);
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  if (v2)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD134BBC();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1BD134BBC()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:AddMoneyIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD134EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD134F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A038);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A040);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A048);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD1350F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD133B54(a1, v4);
}

uint64_t sub_1BD135198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD036998();
  *a1 = result;
  return result;
}

unint64_t sub_1BD1351C0()
{
  result = qword_1EBD56120;
  if (!qword_1EBD56120)
  {
    sub_1BE0484F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56120);
  }

  return result;
}

unint64_t sub_1BD135218()
{
  result = qword_1EBD3A030;
  if (!qword_1EBD3A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A030);
  }

  return result;
}

uint64_t PassLocationWeatherManager.fetchWeatherDisplayInformation(forPass:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v22 - v16;
  v18 = [a1 eventLocation];
  v19 = [v18 CLLocation];

  sub_1BE04AF54();
  sub_1BD1354CC(a1, v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &unk_1EBD39970);
    a2(0);

    return (*(v10 + 8))(v17, v9);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(v14, v19, a2, v23);

    v21 = *(v10 + 8);
    v21(v14, v9);
    return (v21)(v17, v9);
  }
}

uint64_t sub_1BD1354CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v83 = sub_1BE04B2F4();
  v5 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v6);
  v82 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v87 = &v68 - v17;
  v86 = sub_1BE04A2B4();
  v18 = *(v86 - 8);
  v20 = MEMORY[0x1EEE9AC00](v86, v19);
  v85 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v71 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v74 = &v68 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v68 - v33;
  v78 = v9;
  v36 = *(v9 + 56);
  v35 = (v9 + 56);
  v77 = v36;
  v36(&v68 - v33, 1, 1, v8);
  v37 = [a1 relevantDates];
  v38 = v37;
  v39 = v37;
  if (!v37)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3A0A8);
    sub_1BE052744();
    v89 = v18;
    v39 = sub_1BE052724();

    sub_1BE052744();
    v38 = sub_1BE052724();
    v18 = v89;
  }

  v75 = v39;
  v76 = v38;
  sub_1BD0E5E8C(0, &qword_1EBD3A0A8);
  v40 = sub_1BE052744();
  v41 = v40;
  if (v40 >> 62)
  {
    goto LABEL_33;
  }

  v89 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v89)
  {
    while (1)
    {
      v68 = v35;
      v69 = v34;
      v84 = v8;
      v70 = a3;
      v88 = v41 & 0xC000000000000001;
      v8 = (v18 + 32);
      v35 = (v18 + 8);
      v80 = (v5 + 8);
      v81 = v41 & 0xFFFFFFFFFFFFFF8;
      v79 = (v78 + 8);
      v42 = v37;
      v37 = 0;
      a3 = v87;
      while (1)
      {
        if (v88)
        {
          v46 = MEMORY[0x1BFB40900](v37, v41);
        }

        else
        {
          if (v37 >= *(v81 + 16))
          {
            goto LABEL_32;
          }

          v46 = *(v41 + 8 * v37 + 32);
        }

        v47 = v46;
        v34 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v48 = [v46 interval];
        if (v48)
        {
          v43 = v85;
          v44 = v48;
          sub_1BE04A274();

          v45 = v43;
          v5 = v86;
          (*v8)(v24, v45, v86);
          v18 = sub_1BE04A2A4();

          (*v35)(v24, v5);
          if (v18)
          {
            v34 = v69;
            sub_1BD0DE53C(v69, &unk_1EBD39970);

            v52 = v78;
            v8 = v84;
            (*(v78 + 16))(v34, v90, v84);
            v77(v34, 0, 1, v8);
            a3 = v70;
            goto LABEL_21;
          }
        }

        else
        {
          v49 = [v47 earliestDate];
          sub_1BE04AEE4();

          if (sub_1BE04AE84())
          {

LABEL_20:

            v34 = v69;
            sub_1BD0DE53C(v69, &unk_1EBD39970);
            v52 = v78;
            v8 = v84;
            (*(v78 + 32))(v34, a3, v84);
            v77(v34, 0, 1, v8);
            a3 = v70;
            goto LABEL_21;
          }

          v50 = v82;
          sub_1BE04B2A4();
          v18 = sub_1BE04B264();

          v51 = v50;
          a3 = v87;
          (*v80)(v51, v83);
          if (v18)
          {
            goto LABEL_20;
          }

          (*v79)(a3, v84);
        }

        v37 = v37 + 1;
        if (v34 == v89)
        {

          a3 = v70;
          v8 = v84;
          v52 = v78;
          v34 = v69;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      if (!sub_1BE053704())
      {
        break;
      }

      v89 = sub_1BE053704();
      if (!v89)
      {
        v66 = v37;

        v52 = v78;
LABEL_21:
        v53 = v74;
        sub_1BD0DE19C(v34, v74, &unk_1EBD39970);
        if ((*(v52 + 48))(v53, 1, v8) == 1)
        {
          sub_1BD0DE53C(v53, &unk_1EBD39970);
          v54 = objc_opt_self();
          v55 = v75;
          v56 = [v54 findDateFromDates:v75 option:3];

          v57 = v72;
          sub_1BE04AEE4();

          v58 = v76;
          v59 = [v54 findDateFromDates:v76 option:0];

          v60 = v73;
          sub_1BE04AEE4();

          v61 = sub_1BE04AE84();
          sub_1BD0DE53C(v34, &unk_1EBD39970);
          if (v61)
          {
            v62 = v57;
          }

          else
          {
            v62 = v60;
          }

          if (v61)
          {
            v63 = v60;
          }

          else
          {
            v63 = v57;
          }

          (*(v52 + 8))(v62, v8);
          v64 = v71;
          (*(v52 + 32))(v71, v63, v8);
          v77(v64, 0, 1, v8);
          sub_1BD0DE204(v64, v34, &unk_1EBD39970);
        }

        else
        {

          sub_1BD0DE53C(v53, &unk_1EBD39970);
        }

        return sub_1BD0DE204(v34, a3, &unk_1EBD39970);
      }
    }
  }

  v67 = v37;
  sub_1BD0DE53C(v34, &unk_1EBD39970);

  return v77(a3, 1, 1, v8);
}

uint64_t PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(char *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v171 = a4;
  v169 = a3;
  v155 = a2;
  v164 = a1;
  v4 = sub_1BE04B2D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1BE04B2F4();
  v9 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v10);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v163 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v162 = &v140 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v156 = &v140 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v160 = &v140 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v179 = &v140 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v172 = &v140 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v140 - v33;
  v170 = sub_1BE04AF64();
  v35 = *(v170 - 8);
  v37 = MEMORY[0x1EEE9AC00](v170, v36);
  v154 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v148 = &v140 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v153 = &v140 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v165 = &v140 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v166 = &v140 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v151 = &v140 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v57 = &v140 - v56;
  v147 = v58;
  MEMORY[0x1EEE9AC00](v55, v59);
  v61 = &v140 - v60;
  sub_1BE04AF54();
  v158 = objc_opt_self();
  v62 = [v158 currentCalendar];
  sub_1BE04B1F4();

  v63 = *(v5 + 104);
  v168 = *MEMORY[0x1E6969A48];
  v174 = v5 + 104;
  v175 = v63;
  v63(v8);
  sub_1BE04B224();
  v64 = *(v5 + 8);
  v161 = v8;
  v167 = v4;
  v176 = v64;
  v173 = v5 + 8;
  v64(v8, v4);
  v65 = *(v9 + 8);
  v177 = v12;
  v178 = v9 + 8;
  v66 = v170;
  v65(v12, v180);
  v67 = *(v35 + 48);
  v159 = v35 + 48;
  if (v67(v34, 1, v66) == 1)
  {
    sub_1BD0DE53C(v34, &unk_1EBD39970);
    v169(0);
    return (*(v35 + 8))(v61, v66);
  }

  v152 = v67;
  v69 = *(v35 + 32);
  v146 = v35 + 32;
  v143 = v69;
  v69(v57, v34, v66);
  v144 = v57;
  v70 = v164;
  v71 = sub_1BE04AF04();
  v72 = v177;
  sub_1BE04B2A4();
  v73 = v161;
  v74 = v167;
  v175(v161, v168, v167);
  v145 = v61;
  v75 = v74;
  v141 = sub_1BE04B294();
  v176(v73, v74);
  v150 = v65;
  v65(v72, v180);
  v76 = v66;
  v157 = v35;
  v77 = *(v35 + 56);
  v77(v172, 1, 1, v66);
  v77(v179, 1, 1, v66);
  v78 = v158;
  v79 = [v158 currentCalendar];
  sub_1BE04B1F4();

  v142 = v71;
  if (v71 == 1)
  {
    v80 = v78;
    v175(v73, *MEMORY[0x1E6969A68], v75);
    v81 = v160;
    v82 = v177;
    sub_1BE04B224();
    v176(v73, v75);
    v150(v82, v180);
    v83 = v179;
    sub_1BD0DE53C(v179, &unk_1EBD39970);
    sub_1BD0DE204(v81, v83, &unk_1EBD39970);
    v84 = v156;
    sub_1BD0DE19C(v83, v156, &unk_1EBD39970);
    v85 = v152;
    v86 = v152(v84, 1, v76);
    v87 = v166;
    if (v86 == 1)
    {
      sub_1BD0DE53C(v84, &unk_1EBD39970);
      v88 = v172;
    }

    else
    {
      v97 = v151;
      v143(v151, v84, v76);
      v98 = [v80 currentCalendar];
      v99 = v177;
      sub_1BE04B1F4();

      v100 = v167;
      v175(v73, v168, v167);
      sub_1BE04B224();
      v176(v73, v100);
      v150(v99, v180);
      (*(v157 + 8))(v97, v76);
      v88 = v172;
      sub_1BD0DE53C(v172, &unk_1EBD39970);
      v85 = v152;
      sub_1BD0DE204(v81, v88, &unk_1EBD39970);
    }

    v92 = v179;
    v95 = v165;
    v96 = v162;
    v94 = v87;
  }

  else
  {
    v175(v73, v168, v75);
    v89 = v75;
    v90 = v160;
    v91 = v177;
    sub_1BE04B224();
    v176(v73, v89);
    v150(v91, v180);
    v92 = v179;
    sub_1BD0DE53C(v179, &unk_1EBD39970);
    v93 = v172;
    sub_1BD0DE53C(v172, &unk_1EBD39970);
    sub_1BD0DE204(v90, v92, &unk_1EBD39970);
    (*(v157 + 16))(v93, v70, v76);
    v77(v93, 0, 1, v76);
    v88 = v93;
    v94 = v166;
    v95 = v165;
    v96 = v162;
    v85 = v152;
  }

  sub_1BD0DE19C(v88, v96, &unk_1EBD39970);
  v101 = v85(v96, 1, v76);
  v102 = v169;
  v103 = v163;
  if (v101 == 1)
  {
    sub_1BD0DE53C(v96, &unk_1EBD39970);
    v104 = v157;
  }

  else
  {
    v105 = v96;
    v106 = v143;
    v143(v94, v105, v76);
    sub_1BD0DE19C(v92, v103, &unk_1EBD39970);
    v107 = v85(v103, 1, v76);
    v108 = v103;
    v104 = v157;
    if (v107 == 1)
    {
      (*(v157 + 8))(v94, v76);
      sub_1BD0DE53C(v108, &unk_1EBD39970);
    }

    else
    {
      v106(v95, v108, v76);
      v109 = v95;
      v110 = v171;
      if (v155)
      {
        LODWORD(v178) = v141 == 1;
        LODWORD(v177) = v142 == 1;
        v111 = swift_allocObject();
        v180 = v111;
        *(v111 + 16) = v102;
        *(v111 + 24) = v110;
        v112 = v104;
        v113 = *(v104 + 16);
        v113(v153, v94, v76);
        v114 = v106;
        v115 = v148;
        v113(v148, v109, v76);
        v113(v154, v164, v76);
        v116 = *(v112 + 80);
        v117 = (v116 + 32) & ~v116;
        v118 = (v147 + v116 + v117) & ~v116;
        v119 = (v147 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
        v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
        v121 = (v116 + v120 + 8) & ~v116;
        v122 = v121 + v147;
        v123 = swift_allocObject();
        v124 = v180;
        *(v123 + 16) = sub_1BD138B78;
        *(v123 + 24) = v124;
        v125 = v123 + v117;
        v126 = v170;
        v114(v125, v153, v170);
        v114(v123 + v118, v115, v126);
        v127 = v155;
        *(v123 + v119) = v155;
        v128 = v149;
        *(v123 + v120) = v149;
        v129 = v126;
        v114(v123 + v121, v154, v126);
        v130 = (v123 + v122);
        *v130 = v177;
        v130[1] = v178;
        v131 = objc_allocWithZone(MEMORY[0x1E695FBC8]);
        v132 = v127;
        sub_1BE048964();
        sub_1BE048964();
        v133 = v128;
        v134 = [v131 init];
        v135 = swift_allocObject();
        *(v135 + 16) = sub_1BD138B80;
        *(v135 + 24) = v123;
        aBlock[4] = sub_1BD138B84;
        aBlock[5] = v135;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD1389F0;
        aBlock[3] = &block_descriptor_7;
        v136 = _Block_copy(aBlock);
        sub_1BE048964();

        [v134 reverseGeocodeLocation:v132 completionHandler:v136];
        _Block_release(v136);

        v137 = *(v157 + 8);
        v137(v165, v129);
        v137(v166, v129);
        sub_1BD0DE53C(v179, &unk_1EBD39970);
        sub_1BD0DE53C(v172, &unk_1EBD39970);
        v137(v144, v129);
        return (v137)(v145, v129);
      }

      v138 = *(v104 + 8);
      v138(v109, v76);
      v138(v94, v76);
      v102 = v169;
    }
  }

  v102(0);
  sub_1BD0DE53C(v92, &unk_1EBD39970);
  sub_1BD0DE53C(v88, &unk_1EBD39970);
  v139 = *(v104 + 8);
  v139(v144, v76);
  return (v139)(v145, v76);
}