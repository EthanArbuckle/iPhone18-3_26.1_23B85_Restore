uint64_t sub_1BD2C215C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1BD2C296C;
  }

  else
  {
    v2 = sub_1BD2C2270;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C2270()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  if ((*(v0 + 416))(v2, 1, v1) == 1)
  {
    sub_1BD0DE53C(v2, &qword_1EBD39980);
    sub_1BE04D094();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C34();
    v5 = os_log_type_enabled(v3, v4);
    v32 = *(v0 + 464);
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    v28 = *(v0 + 312);
    v8 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = *(v0 + 392);
    v33 = *(v0 + 288);
    v30 = *(v0 + 344);
    v31 = *(v0 + 248);
    v9 = *(v0 + 224);
    v29 = *(v0 + 216);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);
    if (v5)
    {
      v27 = *(v0 + 408);
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: Error taking airdrop assertion, skipping.", v13, 2u);
      v14 = v13;
      v6 = v27;
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    swift_unknownObjectRelease();
    v32(v30, v28);
    (*(v10 + 8))(v11, v12);
    (*(v9 + 8))(v31, v29);
    (*(v8 + 8))(v34, v33);
    (*(v7 + 8))(v6, v35);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 456);
    v18 = *(v0 + 304);
    (*(v0 + 432))(*(v0 + 232), v2, v1);
    ObjectType = swift_getObjectType();
    v20 = (*(v17 + 32))(v18, ObjectType, v17);
    v21 = sub_1BE04DF34();
    v23 = v22;
    *(v0 + 488) = v22;
    v24 = swift_task_alloc();
    *(v0 + 496) = v24;
    *v24 = v0;
    v24[1] = sub_1BD2C2640;
    v25 = *(v0 + 248);
    v26 = *(v0 + 232);

    return sub_1BD2C2D4C(v26, v25, v21, v23, v20 & 1);
  }
}

uint64_t sub_1BD2C2640()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1BD2C2B50;
  }

  else
  {
    v2 = sub_1BD2C2770;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C2770()
{
  v1 = v0[50];
  v15 = v0[49];
  v16 = v0[51];
  v2 = v0[37];
  v13 = v0[36];
  v14 = v0[38];
  v12 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  swift_unknownObjectRelease();
  v9 = *(v3 + 8);
  v9(v4, v5);
  (*(v6 + 8))(v7, v8);
  v9(v12, v5);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD2C296C()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[50];
  v6 = v0[51];
  v7 = v0[49];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  (*(v1 + 8))(v0[31], v0[27]);
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD2C2B50()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v1, v3);
  (*(v5 + 8))(v4, v6);
  v8 = v0[50];
  v9 = v0[51];
  v10 = v0[49];
  v11 = v0[37];
  v12 = v0[38];
  v13 = v0[36];
  v7(v0[31], v0[27]);
  (*(v11 + 8))(v12, v13);
  (*(v8 + 8))(v9, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD2C2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = v5;
  *(v6 + 728) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = sub_1BE04DC74();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AA8);
  *(v6 + 160) = swift_task_alloc();
  v8 = sub_1BE04DCC4();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AB0);
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1BE04DCE4();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();
  v10 = sub_1BE04E0B4();
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 - 8);
  *(v6 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v11 = sub_1BE04DCA4();
  *(v6 + 272) = v11;
  *(v6 + 280) = *(v11 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v12 = sub_1BE04DCF4();
  *(v6 + 304) = v12;
  *(v6 + 312) = *(v12 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AB8);
  *(v6 + 352) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AC0);
  *(v6 + 360) = v13;
  *(v6 + 368) = *(v13 - 8);
  *(v6 + 376) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AC8);
  *(v6 + 384) = v14;
  *(v6 + 392) = *(v14 - 8);
  *(v6 + 400) = swift_task_alloc();
  v15 = sub_1BE04D214();
  *(v6 + 408) = v15;
  *(v6 + 416) = *(v15 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  v16 = sub_1BE04DC24();
  *(v6 + 456) = v16;
  *(v6 + 464) = *(v16 - 8);
  *(v6 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  *(v6 + 480) = swift_task_alloc();
  v17 = sub_1BE04C4C4();
  *(v6 + 488) = v17;
  *(v6 + 496) = *(v17 - 8);
  *(v6 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AD0);
  *(v6 + 512) = swift_task_alloc();
  v18 = sub_1BE04DC44();
  *(v6 + 520) = v18;
  v19 = *(v18 - 8);
  *(v6 + 528) = v19;
  *(v6 + 536) = *(v19 + 64);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  *(v6 + 560) = swift_task_alloc();
  v20 = sub_1BE04AA64();
  *(v6 + 568) = v20;
  v21 = *(v20 - 8);
  *(v6 + 576) = v21;
  *(v6 + 584) = *(v21 + 64);
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C349C, 0, 0);
}

uint64_t sub_1BD2C349C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadataFileURL()(v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 560);
    v5 = &unk_1EBD3CF70;
LABEL_8:
    sub_1BD0DE53C(v4, v5);

    v31 = *(v0 + 8);

    return v31();
  }

  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(*(v0 + 576) + 32);
  v9(*(v0 + 600), *(v0 + 560), *(v0 + 568));
  static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadata()(v8);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v10 = *(v0 + 512);
    (*(*(v0 + 576) + 8))(*(v0 + 600), *(v0 + 568));
    v5 = &unk_1EBD40AD0;
    v4 = v10;
    goto LABEL_8;
  }

  v11 = *(v0 + 128);
  v12 = *(*(v0 + 528) + 32);
  v12(*(v0 + 552), *(v0 + 512), *(v0 + 520));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 608) = Strong;
  v14 = *(v11 + 40);
  *(v0 + 616) = v14;
  if (!Strong)
  {
    return sub_1BE053994();
  }

  v15 = Strong;
  v66 = v12;
  v16 = *(v0 + 496);
  v67 = v9;
  v68 = *(v0 + 488);
  v17 = *(v0 + 480);
  v18 = *(v0 + 728);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  *(v0 + 624) = ObjectType;
  (*(v14 + 16))(v21, v20, v19, v18, ObjectType, v14);
  v23 = (*(v16 + 48))(v17, 1, v68);
  v24 = *(v0 + 600);
  if (v23 == 1)
  {
    v25 = *(v0 + 576);
    v26 = *(v0 + 568);
    v27 = *(v0 + 552);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    v30 = *(v0 + 480);
    swift_unknownObjectRelease();
    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    v5 = &unk_1EBD476F0;
    v4 = v30;
    goto LABEL_8;
  }

  v62 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 576);
  v35 = *(v0 + 568);
  v60 = v35;
  v36 = *(v0 + 552);
  v64 = *(v0 + 544);
  v65 = *(v0 + 584);
  v37 = *(v0 + 528);
  v63 = *(v0 + 520);
  (*(*(v0 + 496) + 32))(*(v0 + 504), *(v0 + 480), *(v0 + 488));
  v61 = swift_allocObject();
  swift_weakInit();
  (*(v34 + 16))(v33, v62, v35);
  v38 = *(v37 + 16);
  v38(v64, v36, v63);
  v39 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v40 = (v65 + *(v37 + 80) + v39) & ~*(v37 + 80);
  v41 = swift_allocObject();
  *(v0 + 632) = v41;
  *(v41 + 2) = v61;
  *(v41 + 3) = v15;
  *(v41 + 4) = v14;
  v67(&v41[v39], v33, v60);
  v66(&v41[v40], v64, v63);
  v38(v64, v36, v63);
  swift_unknownObjectRetain();
  sub_1BE048964();
  sub_1BE04DC14();
  sub_1BE04D094();
  v42 = sub_1BE04D204();
  v43 = sub_1BE052C54();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1BD026000, v42, v43, "NearbyPeerPayment: starting AirDrop AskRequest", v44, 2u);
    MEMORY[0x1BFB45F20](v44, -1, -1);
  }

  v46 = *(v0 + 464);
  v45 = *(v0 + 472);
  v47 = *(v0 + 448);
  v48 = *(v0 + 456);
  v49 = *(v0 + 408);
  v50 = *(v0 + 416);

  v51 = *(v50 + 8);
  *(v0 + 640) = v51;
  v51(v47, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40AD8);
  v52 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v53 = swift_allocObject();
  *(v0 + 648) = v53;
  *(v53 + 16) = xmmword_1BE0B69E0;
  (*(v46 + 16))(v53 + v52, v45, v48);
  v54 = sub_1BE04C424();
  v56 = v55;
  *(v0 + 656) = v54;
  *(v0 + 664) = v55;
  v57 = swift_task_alloc();
  *(v0 + 672) = v57;
  *v57 = v0;
  v57[1] = sub_1BD2C3C6C;
  v58 = *(v0 + 400);
  v59 = *(v0 + 104);

  return MEMORY[0x1EEE37FA8](v58, v53, v59, 0, 0, 0, v54, v56);
}

uint64_t sub_1BD2C3C6C()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  sub_1BD1245AC(*(v2 + 656), *(v2 + 664));

  if (v0)
  {
    v3 = sub_1BD2C59EC;
  }

  else
  {
    v3 = sub_1BD2C3DD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD2C3DD0()
{
  if (*(v0 + 728) == 1)
  {
    sub_1BE04DED4();
    *(v0 + 688) = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
    swift_beginAccess();
    v1 = sub_1BD0DE4F4(&qword_1EBD40AE8, &qword_1EBD40AC0);
    v2 = swift_task_alloc();
    *(v0 + 696) = v2;
    *v2 = v0;
    v2[1] = sub_1BD2C4218;
    v3 = *(v0 + 352);
    v4 = *(v0 + 360);

    return MEMORY[0x1EEE6D8C8](v3, v4, v1);
  }

  else
  {
    v5 = *(v0 + 576);
    v22 = *(v0 + 568);
    v23 = *(v0 + 600);
    v6 = *(v0 + 528);
    v20 = *(v0 + 520);
    v21 = *(v0 + 552);
    v7 = *(v0 + 496);
    v18 = *(v0 + 488);
    v19 = *(v0 + 504);
    v8 = *(v0 + 464);
    v16 = *(v0 + 456);
    v17 = *(v0 + 472);
    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = *(v0 + 384);
    v12 = sub_1BE04B844();
    sub_1BD2C7E30(&qword_1EBD40AE0, MEMORY[0x1E69B7F28]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E69B7F08], v12);
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v17, v16);
    (*(v7 + 8))(v19, v18);
    (*(v6 + 8))(v21, v20);
    (*(v5 + 8))(v23, v22);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1BD2C4218()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_1BD2C4BBC;
  }

  else
  {
    v2 = sub_1BD2C432C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C432C()
{
  v90 = v0;
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
LABEL_19:
    v71 = swift_task_alloc();
    v0[89] = v71;
    *v71 = v0;
    v71[1] = sub_1BD2C4E30;
    v72 = v0[48];
    v73 = v0[40];

    return MEMORY[0x1EEE38068](v73, v72);
  }

  v5 = v0[42];
  v4 = v0[43];
  (*(v3 + 32))(v4, v1, v2);
  sub_1BE04D094();
  v6 = *(v3 + 16);
  v6(v5, v4, v2);
  v7 = sub_1BE04D204();
  v85 = sub_1BE052C54();
  v8 = os_log_type_enabled(v7, v85);
  v9 = v0[80];
  v10 = v0[55];
  v11 = v0[51];
  v12 = v0[42];
  v13 = v0[39];
  v87 = v0[38];
  if (v8)
  {
    v82 = v0[80];
    v14 = v0[37];
    v79 = v0[55];
    log = v7;
    v15 = v0[34];
    v16 = v0[35];
    v83 = v6;
    v17 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v89[0] = v78;
    *v17 = 136315138;
    sub_1BE04DCB4();
    sub_1BD2C7E30(&qword_1EBD40AF0, MEMORY[0x1E69CDBC0]);
    v18 = sub_1BE053B24();
    v76 = v11;
    v20 = v19;
    (*(v16 + 8))(v14, v15);
    v21 = *(v13 + 8);
    v21(v12, v87);
    v22 = v21;
    v23 = sub_1BD123690(v18, v20, v89);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BD026000, log, v85, "NearbyPeerPayment: Received airdrop transfer update: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x1BFB45F20](v78, -1, -1);
    v24 = v17;
    v6 = v83;
    MEMORY[0x1BFB45F20](v24, -1, -1);

    v82(v79, v76);
  }

  else
  {

    v25 = *(v13 + 8);
    v25(v12, v87);
    v22 = v25;
    v9(v10, v11);
  }

  v26 = v0[33];
  v27 = v0[29];
  v28 = v0[30];
  sub_1BD0DE19C(v0[16] + v0[86], v26, &qword_1EBD40A80);
  LODWORD(v27) = (*(v28 + 48))(v26, 1, v27);
  sub_1BD0DE53C(v26, &qword_1EBD40A80);
  if (v27 == 1)
  {
    v29 = v0[43];
    v30 = v0[41];
    v31 = v0[38];
    sub_1BE04D094();
    v6(v30, v29, v31);
    v32 = sub_1BE04D204();
    v86 = sub_1BE052C54();
    v33 = os_log_type_enabled(v32, v86);
    v34 = v0[80];
    v35 = v0[54];
    v36 = v0[51];
    v37 = v0[41];
    v38 = v0[38];
    if (v33)
    {
      v84 = v0[80];
      v77 = v0[38];
      v40 = v0[30];
      v39 = v0[31];
      v41 = v0[29];
      v81 = v0[51];
      v42 = swift_slowAlloc();
      v88 = v22;
      v89[0] = swift_slowAlloc();
      v43 = v89[0];
      *v42 = 136315138;
      sub_1BE04DC84();
      sub_1BD2C7E30(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
      v44 = sub_1BE053B24();
      v80 = v35;
      v46 = v45;
      (*(v40 + 8))(v39, v41);
      v88(v37, v77);
      v47 = sub_1BD123690(v44, v46, v89);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1BD026000, v32, v86, "NearbyPeerPayment: capturing transfer id: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v48 = v43;
      v22 = v88;
      MEMORY[0x1BFB45F20](v48, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);

      v84(v80, v81);
    }

    else
    {

      v22(v37, v38);
      v34(v35, v36);
    }

    v49 = v0[86];
    v50 = v0[32];
    v51 = v0[29];
    v52 = v0[30];
    v53 = v0[16];
    sub_1BE04DC84();
    (*(v52 + 56))(v50, 0, 1, v51);
    swift_beginAccess();
    sub_1BD2C7C4C(v50, v53 + v49, &qword_1EBD40A80);
    swift_endAccess();
  }

  v54 = v0[88];
  v55 = v0[78];
  v56 = v0[77];
  v57 = v0[37];
  v58 = v0[34];
  v59 = v0[35];
  sub_1BE04DCB4();
  (*(v56 + 40))(v57, v55, v56);
  (*(v59 + 8))(v57, v58);
  sub_1BE052984();
  v22(v0[43], v0[38]);
  if (v54)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
    sub_1BE04D094();
    v60 = v54;
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = v54;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_1BD026000, v61, v62, "NearbyPeerPayment: airdrop transfer update error: %@", v63, 0xCu);
      sub_1BD0DE53C(v64, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v64, -1, -1);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    else
    {
    }

    (v0[80])(v0[53], v0[51]);
    goto LABEL_19;
  }

  v67 = sub_1BD0DE4F4(&qword_1EBD40AE8, &qword_1EBD40AC0);
  v68 = swift_task_alloc();
  v0[87] = v68;
  *v68 = v0;
  v68[1] = sub_1BD2C4218;
  v69 = v0[44];
  v70 = v0[45];

  return MEMORY[0x1EEE6D8C8](v69, v70, v67);
}

uint64_t sub_1BD2C4BBC()
{
  *(v0 + 88) = *(v0 + 704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C4C50, 0, 0);
}

uint64_t sub_1BD2C4C50()
{
  v1 = *(v0 + 704);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_1BE04D094();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: airdrop transfer update error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0 + 640))(*(v0 + 424), *(v0 + 408));
  v9 = swift_task_alloc();
  *(v0 + 712) = v9;
  *v9 = v0;
  v9[1] = sub_1BD2C4E30;
  v10 = *(v0 + 384);
  v11 = *(v0 + 320);

  return MEMORY[0x1EEE38068](v11, v10);
}

uint64_t sub_1BD2C4E30()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_1BD2C5C80;
  }

  else
  {
    v2 = sub_1BD2C4F44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD2C4F44()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  sub_1BE04DCB4();
  (*(v2 + 8))(v1, v3);
  sub_1BE04DC94();
  v10 = *(v5 + 8);
  v10(v4, v6);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = v0[72];
    v127 = v0[71];
    v132 = v0[75];
    v12 = v0[66];
    v112 = v0[65];
    v117 = v0[69];
    v13 = v0[62];
    v102 = v0[61];
    v107 = v0[63];
    v14 = v0[58];
    v97 = v0[59];
    v15 = v0[57];
    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[48];
    v122 = v0[25];

    swift_unknownObjectRelease();
    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v97, v15);
    (*(v13 + 8))(v107, v102);
    (*(v12 + 8))(v117, v112);
    (*(v11 + 8))(v132, v127);
    sub_1BD0DE53C(v122, &qword_1EBD40AB0);
  }

  else
  {
    v19 = v0[21];
    v20 = v0[22];
    v21 = v0[20];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    sub_1BE04DCD4();
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      v22 = v0[72];
      v128 = v0[71];
      v133 = v0[75];
      v23 = v0[66];
      v118 = v0[65];
      v123 = v0[69];
      v24 = v0[62];
      v103 = v0[61];
      v108 = v0[63];
      v25 = v0[58];
      v98 = v0[59];
      v93 = v0[57];
      v26 = v0[49];
      v86 = v0[50];
      v27 = v0[48];
      v28 = v0[27];
      v29 = v0[28];
      v30 = v0[26];
      v113 = v0[20];

      swift_unknownObjectRelease();
      (*(v28 + 8))(v29, v30);
      (*(v26 + 8))(v86, v27);
      (*(v25 + 8))(v98, v93);
      (*(v24 + 8))(v108, v103);
      (*(v23 + 8))(v123, v118);
      (*(v22 + 8))(v133, v128);
      sub_1BD0DE53C(v113, &qword_1EBD40AA8);
    }

    else
    {
      v31 = v0[23];
      v32 = v0[24];
      v33 = v0[21];
      v34 = v0[22];
      (*(v34 + 32))(v32, v0[20], v33);
      (*(v34 + 16))(v31, v32, v33);
      v35 = (*(v34 + 88))(v31, v33);
      if (v35 == *MEMORY[0x1E69CDBD0])
      {
        v67 = v0[77];
        v69 = v0[78];
        v124 = v0[71];
        v129 = v0[75];
        v114 = v0[69];
        v119 = v0[72];
        v104 = v0[66];
        v109 = v0[65];
        v99 = v0[63];
        v90 = v0[62];
        v94 = v0[61];
        v83 = v0[57];
        v87 = v0[59];
        v77 = v0[50];
        v80 = v0[58];
        v73 = v0[49];
        v75 = v0[48];
        v36 = v0[37];
        v62 = v0[35];
        v63 = v0[34];
        v37 = v0[28];
        v134 = v0[27];
        v61 = v0[26];
        v38 = v0[23];
        v71 = v0[24];
        v64 = v0[22];
        v65 = v0[21];
        v40 = v0[18];
        v39 = v0[19];
        v41 = v0[17];
        (*(v64 + 96))(v38);
        (*(v40 + 32))(v39, v38, v41);
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC0) + 48);
        (*(v134 + 16))(v36, v37, v61);
        (*(v40 + 16))(v36 + v42, v39, v41);
        (*(v62 + 104))(v36, *MEMORY[0x1E69CDBA0], v63);
        (*(v67 + 40))(v36, v69);
        swift_unknownObjectRelease();

        v10(v36, v63);
        (*(v40 + 8))(v39, v41);
        (*(v64 + 8))(v71, v65);
        (*(v134 + 8))(v37, v61);
        (*(v73 + 8))(v77, v75);
        (*(v80 + 8))(v87, v83);
        (*(v90 + 8))(v99, v94);
        (*(v104 + 8))(v114, v109);
        (*(v119 + 8))(v129, v124);
      }

      else if (v35 == *MEMORY[0x1E69CDBD8])
      {
        v68 = v0[77];
        v74 = v0[78];
        v130 = v0[71];
        v135 = v0[75];
        v120 = v0[69];
        v125 = v0[72];
        v110 = v0[66];
        v115 = v0[65];
        v105 = v0[63];
        v95 = v0[62];
        v100 = v0[61];
        v88 = v0[57];
        v91 = v0[59];
        v81 = v0[50];
        v84 = v0[58];
        v76 = v0[49];
        v78 = v0[48];
        v43 = v0[37];
        v44 = v0[35];
        v66 = v0[34];
        v45 = v0[27];
        v46 = v0[28];
        v47 = v0[26];
        v48 = v0[22];
        v70 = v0[21];
        v72 = v0[24];
        v49 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AB8) + 48));
        (*(v45 + 16))(v43, v46, v47);
        *v49 = 0;
        v49[1] = 0;
        (*(v44 + 104))(v43, *MEMORY[0x1E69CDBA8], v66);
        (*(v68 + 40))(v43, v74);
        swift_unknownObjectRelease();

        v10(v43, v66);
        (*(v48 + 8))(v72, v70);
        (*(v45 + 8))(v46, v47);
        (*(v76 + 8))(v81, v78);
        (*(v84 + 8))(v91, v88);
        (*(v95 + 8))(v105, v100);
        (*(v110 + 8))(v120, v115);
        (*(v125 + 8))(v135, v130);
      }

      else
      {
        v131 = v0[71];
        v136 = v0[75];
        v121 = v0[69];
        v126 = v0[72];
        v50 = v0[66];
        v116 = v0[65];
        v51 = v0[62];
        v101 = v0[61];
        v106 = v0[63];
        v52 = v0[58];
        v92 = v0[57];
        v96 = v0[59];
        v53 = v0[49];
        v85 = v0[48];
        v89 = v0[50];
        v54 = v0[27];
        v79 = v0[26];
        v82 = v0[28];
        v55 = v0[24];
        v111 = v0[23];
        v57 = v0[21];
        v56 = v0[22];

        swift_unknownObjectRelease();
        v58 = *(v56 + 8);
        v58(v55, v57);
        (*(v54 + 8))(v82, v79);
        (*(v53 + 8))(v89, v85);
        (*(v52 + 8))(v96, v92);
        (*(v51 + 8))(v106, v101);
        (*(v50 + 8))(v121, v116);
        (*(v126 + 8))(v136, v131);
        v58(v111, v57);
      }
    }
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_1BD2C59EC()
{
  v1 = v0[72];
  v13 = v0[71];
  v14 = v0[75];
  v2 = v0[66];
  v11 = v0[65];
  v12 = v0[69];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[61];
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[57];

  swift_unknownObjectRelease();
  (*(v6 + 8))(v7, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD2C5C80()
{
  v1 = v0[72];
  v16 = v0[71];
  v17 = v0[75];
  v2 = v0[66];
  v14 = v0[65];
  v15 = v0[69];
  v3 = v0[62];
  v12 = v0[61];
  v13 = v0[63];
  v4 = v0[58];
  v11 = v0[59];
  v5 = v0[57];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[48];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v15, v14);
  (*(v1 + 8))(v17, v16);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD2C5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_1BE04DC04();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = sub_1BE04DC44();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = sub_1BE04AA64();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v12 = sub_1BE04DEE4();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v13 = sub_1BE04D214();
  v8[29] = v13;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2C61BC, 0, 0);
}

uint64_t sub_1BD2C61BC()
{
  v41 = v0;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v10 = v0[6];
    v11 = sub_1BE04DC64();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = v0[1];
LABEL_13:

    return v12();
  }

  v2 = v0[7];
  v1 = v0[8];

  sub_1BE04D094();
  sub_1BD030394(v2, v1);
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();
  sub_1BD030220(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136315138;
    if (v5 >> 60 == 15)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = sub_1BE04AA94();
      v9 = v17;
    }

    v18 = v0[34];
    v19 = v0[29];
    v20 = v0[30];
    v21 = sub_1BD123690(v8, v9, &v40);

    *(v6 + 4) = v21;
    _os_log_impl(&dword_1BD026000, v3, v4, "NearbyPeerPayment: loadHandler called with receiverMetadata: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);

    v16 = *(v20 + 8);
    v16(v18, v19);
  }

  else
  {
    v13 = v0[34];
    v14 = v0[29];
    v15 = v0[30];

    v16 = *(v15 + 8);
    v16(v13, v14);
  }

  v0[35] = v16;
  v22 = v0[8];
  if (v22 >> 60 == 15)
  {
    sub_1BE04D094();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "NearbyPeerPayment: transfer failed with missing receiverMetadata", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    v26 = v0[33];
    v27 = v0[29];

    v16(v26, v27);
    v28 = sub_1BE04B884();
    sub_1BD2C7E30(&unk_1EBD399E0, MEMORY[0x1E69B7F50]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E69B7F40], v28);
    swift_willThrow();

    v12 = v0[1];
    goto LABEL_13;
  }

  v39 = v0[11];
  v31 = v0[7];
  ObjectType = swift_getObjectType();
  v33 = *(v39 + 56);
  sub_1BD041A38(v31, v22);
  v38 = (v33 + *v33);
  v34 = swift_task_alloc();
  v0[36] = v34;
  *v34 = v0;
  v34[1] = sub_1BD2C675C;
  v35 = v0[11];
  v37 = v0[7];
  v36 = v0[8];

  return v38(v37, v36, ObjectType, v35);
}

uint64_t sub_1BD2C675C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v5 = sub_1BD2C6F78;
  }

  else
  {
    v5 = sub_1BD2C6874;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD2C6874()
{
  v1 = *(v0 + 312);
  sub_1BE052984();
  if (v1)
  {
    sub_1BD1245AC(*(v0 + 296), *(v0 + 304));
    *(v0 + 40) = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v10 = *(v0 + 112);

      (*(v9 + 32))(v7, v6, v10);
      sub_1BE04D094();
      v11 = *(v9 + 16);
      v11(v8, v7, v10);
      v12 = sub_1BE04D204();
      v50 = sub_1BE052C34();
      v13 = os_log_type_enabled(v12, v50);
      v15 = *(v0 + 120);
      v14 = *(v0 + 128);
      v16 = *(v0 + 112);
      if (v13)
      {
        v52 = v11;
        v17 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v17 = 138412290;
        sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
        swift_allocError();
        v52(v18, v14, v16);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = *(v15 + 8);
        v20(v14, v16);
        *(v17 + 4) = v19;
        *v47 = v19;
        _os_log_impl(&dword_1BD026000, v12, v50, "NearbyPeerPayment: loadHandler failed with codable error: %@", v17, 0xCu);
        sub_1BD0DE53C(v47, &unk_1EBD3E590);
        MEMORY[0x1BFB45F20](v47, -1, -1);
        v21 = v17;
        v11 = v52;
        MEMORY[0x1BFB45F20](v21, -1, -1);
      }

      else
      {

        v20 = *(v15 + 8);
        v20(v14, v16);
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 112);
      v35 = *(v0 + 56);
      v34 = *(v0 + 64);
      (*(v0 + 280))(*(v0 + 256), *(v0 + 232));
      sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
      swift_allocError();
      v11(v36, v32, v33);
      swift_willThrow();
      sub_1BD030220(v35, v34);
      v20(v32, v33);

      v37 = *(v0 + 8);
      goto LABEL_13;
    }

    v2 = (v0 + 248);

    sub_1BE04D094();
    v22 = v1;
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();

    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1BD026000, v23, v24, "NearbyPeerPayment: loadHandler failed with unexpected error: %@", v28, 0xCu);
      sub_1BD0DE53C(v29, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v29, -1, -1);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      sub_1BD030220(v27, v26);
    }

    else
    {
      sub_1BD030220(*(v0 + 56), *(v0 + 64));
    }

    v46 = (v0 + 280);
    v41 = (v0 + 232);
    v49 = 1;
  }

  else
  {
    sub_1BE04AAE4();
    v2 = (v0 + 224);
    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 96), *(v0 + 176));
    sub_1BE04DEF4();
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v41 = (v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);
    v45 = *(v0 + 104);
    v53 = *(v0 + 64);
    v48 = *(v0 + 152);
    v51 = *(v0 + 56);
    (*(v42 + 16))(*(v0 + 216), *(v0 + 224), *(v0 + 200));
    (*(v44 + 16))(v43, v45, v48);
    sub_1BE04DC54();
    sub_1BD1245AC(v3, v4);
    sub_1BD030220(v51, v53);
    v49 = 0;
    v46 = (v42 + 8);
  }

  (*v46)(*v2, *v41);
  v38 = *(v0 + 48);
  v39 = sub_1BE04DC64();
  (*(*(v39 - 8) + 56))(v38, v49, 1, v39);

  v37 = *(v0 + 8);
LABEL_13:

  return v37();
}

uint64_t sub_1BD2C6F78()
{
  v1 = *(v0 + 312);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);

    (*(v6 + 32))(v4, v3, v7);
    sub_1BE04D094();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    if (v11)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
      swift_allocError();
      v8(v15, v12, v14);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = *(v13 + 8);
      v17(v12, v14);
      *(v37 + 4) = v16;
      *v38 = v16;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: loadHandler failed with codable error: %@", v37, 0xCu);
      sub_1BD0DE53C(v38, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v38, -1, -1);
      MEMORY[0x1BFB45F20](v37, -1, -1);
    }

    else
    {

      v17 = *(v13 + 8);
      v17(v12, v14);
    }

    v28 = *(v0 + 136);
    v29 = *(v0 + 112);
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);
    (*(v0 + 280))(*(v0 + 256), *(v0 + 232));
    sub_1BD2C7E30(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
    swift_allocError();
    v8(v32, v28, v29);
    swift_willThrow();
    sub_1BD030220(v31, v30);
    v17(v28, v29);

    v33 = *(v0 + 8);
  }

  else
  {

    sub_1BE04D094();
    v18 = v1;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BD026000, v19, v20, "NearbyPeerPayment: loadHandler failed with unexpected error: %@", v24, 0xCu);
      sub_1BD0DE53C(v25, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      sub_1BD030220(v23, v22);
    }

    else
    {
      sub_1BD030220(*(v0 + 56), *(v0 + 64));
    }

    (*(v0 + 280))(*(v0 + 248), *(v0 + 232));
    v34 = *(v0 + 48);
    v35 = sub_1BE04DC64();
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t NearbyPeerPaymentDeviceDiscoverySession.deinit()
{

  sub_1BD0D4534(v0 + 32);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID, &qword_1EBD40A80);
  return v0;
}

uint64_t NearbyPeerPaymentDeviceDiscoverySession.__deallocating_deinit()
{

  sub_1BD0D4534(v0 + 32);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID, &qword_1EBD40A80);

  return swift_deallocClassInstance();
}

void sub_1BD2C7670()
{
  sub_1BD2C7A80(319, &qword_1EBD36A28, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NearbyPeerPaymentDeviceDiscoverySessionDelegate.responseMetadataReceived(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD125004;

  return v11(a1, a2, a3, a4);
}

void sub_1BD2C792C()
{
  sub_1BD2C7A80(319, &qword_1EBD47800, MEMORY[0x1E69CDDE8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD2C7A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD2C7AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1BE04DC44() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v3[2];
  v15 = v3[3];
  v16 = v3[4];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1BD126968;

  return sub_1BD2C5F38(a1, a2, a3, v14, v15, v16, v3 + v10, v3 + v13);
}

uint64_t sub_1BD2C7C4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD2C7CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD2B802C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD2C7D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD2BF2C0(a1, v4, v5, v6);
}

uint64_t sub_1BD2C7E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_59Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD2C7EB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD2BA9C4(a1, v4, v5, v6);
}

uint64_t sub_1BD2C7F6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD126968;

  return sub_1BD2BFF34(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t ExtractedUIFlowItem.preflight(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = sub_1BE04D214();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1BE053834();

  strcpy(v34, "ExtractedNode<");
  HIBYTE(v34[1]) = -18;
  v10 = *&v2[OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 8);
  v31 = ObjectType;
  v13 = v12(ObjectType, v10);
  MEMORY[0x1BFB3F610](v13);

  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v14 = v34[1];
  v33 = v34[0];
  sub_1BE04D0E4();
  sub_1BE048C84();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C24();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = a1;
    v20 = a2;
    v21 = v19;
    v34[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1BD123690(v33, v14, v34);
    _os_log_impl(&dword_1BD026000, v15, v16, "%{public}s starting preflight", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a2 = v20;
    a1 = v29;
    MEMORY[0x1BFB45F20](v22, -1, -1);
    v23 = v18;
    v3 = v30;
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v6 + 8))(v9, v32);
  v24 = swift_allocObject();
  v24[2] = v33;
  v24[3] = v14;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = v3;
  v25 = *(v10 + 40);
  sub_1BE048964();
  v26 = v3;
  v25(sub_1BD2C8660, v24, v31, v10);
}

uint64_t sub_1BD2C835C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v33 = a7;
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 1u)
  {
    if (a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        a1 = a2;
        a2 = a3;
      }

      goto LABEL_10;
    }

    v26 = a1;
    a1 = a2;
    a2 = a3;
    if ((v26 & 1) == 0)
    {
LABEL_10:
      v31 = a8;
      sub_1BE04D0E4();
      sub_1BE048C84();
      sub_1BE048C84();
      v27 = sub_1BE04D204();
      v28 = sub_1BE052C54();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34 = v30;
        *v29 = 136446466;
        *(v29 + 4) = sub_1BD123690(v32, a6, &v34);
        *(v29 + 12) = 2082;
        *(v29 + 14) = sub_1BD123690(a1, a2, &v34);
        _os_log_impl(&dword_1BD026000, v27, v28, "%{public}s should not be shown because '%{public}s'.", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v30, -1, -1);
        MEMORY[0x1BFB45F20](v29, -1, -1);
      }

      (*(v16 + 8))(v19, v15);
      return v33(0);
    }
  }

  v20 = *(a9 + OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8);
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  v23 = v33;
  v22[2] = v32;
  v22[3] = a6;
  v22[4] = v23;
  v22[5] = a8;
  v24 = *(v20 + 48);
  sub_1BE048C84();
  sub_1BE048964();
  v24(sub_1BD2C8E48, v22, ObjectType, v20);
}

uint64_t sub_1BD2C8690(char a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  sub_1BE048C84();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v10;
    v18 = a2;
    v19 = v17;
    v20 = swift_slowAlloc();
    v27 = a5;
    v28 = v20;
    v21 = a4;
    v22 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BD123690(v18, a3, &v28);
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1 & 1;
    _os_log_impl(&dword_1BD026000, v15, v16, "%{public}s finished preflight with shouldBeShown: %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a4 = v21;
    MEMORY[0x1BFB45F20](v23, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);

    (*(v11 + 8))(v14, v26);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  return a4(a1 & 1);
}

unint64_t ExtractedUIFlowItem.viewController(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 56))(ObjectType, v10);
  if (v12 >= 3)
  {
    v21 = (v2 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
    v22 = *(v2 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
    *v21 = a1;
    v21[1] = a2;
    v23 = v12;
    sub_1BD0D4744(v22);
    sub_1BE048964();
    return v23;
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1BE053834();

    strcpy(v25, "ExtractedNode<");
    HIBYTE(v25[1]) = -18;
    v13 = (*(v10 + 8))(ObjectType, v10);
    MEMORY[0x1BFB3F610](v13);

    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v15 = v25[0];
    v14 = v25[1];
    sub_1BE04D0E4();
    sub_1BE048C84();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136446210;
      v20 = sub_1BD123690(v15, v14, v25);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1BD026000, v16, v17, "%{public}s failed to return view controller", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }
}

id ExtractedUIFlowItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExtractedUIFlowItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD2C8D90()
{
  v1 = (v0 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
  v2 = *(v0 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
  if (v2)
  {
    v3 = sub_1BE048964();
    v2(v3);
    sub_1BD0D4744(v2);
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  *v1 = 0;
  v1[1] = 0;

  return sub_1BD0D4744(v4);
}

id sub_1BD2C8F18()
{
  v1 = sub_1BE04BAC4();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v30 = v0;
  v28 = sub_1BD1872DC(v0, KeyPath);
  v29 = v5;
  v7 = v6;
  sub_1BE053D04();
  sub_1BE052524();
  v8 = sub_1BE053D64();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v7 + 48) + v10);
      if (v12 != 1 && v12 != 2)
      {
        break;
      }

      v13 = sub_1BE053B84();

      if (v13)
      {
        goto LABEL_8;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v7;
    sub_1BD2A9690(0, v10, isUniquelyReferenced_nonNull_native);
    v7 = v35;
  }

LABEL_8:
  v15 = v30;
  sub_1BD12F704(v28 & 1, v29, v7, v15, KeyPath);

  v16 = *&v15[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_context];
  v17 = *&v15[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_credential];
  v18 = v15[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_allowPartnerAppFlow];
  v19 = type metadata accessor for ProvisioningCarHeroViewController();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_provisioningContext] = v16;
  *&v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential] = v17;
  v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_allowPartnerAppFlow] = v18;
  *&v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_delegate + 8] = &off_1F3B9BBB0;
  swift_unknownObjectUnownedInit();
  sub_1BE052434();
  sub_1BE048964();
  v21 = v17;
  v22 = sub_1BE04BB74();

  *&v20[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter] = v22;
  v23 = v31;
  sub_1BE04BC34();
  v24 = sub_1BE04B9A4();
  (*(v32 + 8))(v23, v33);
  v34.receiver = v20;
  v34.super_class = v19;
  result = objc_msgSendSuper2(&v34, sel_initWithContext_, v24);
  if (result)
  {
    v26 = result;
    [result setExplanationViewControllerDelegate_];
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2C92A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2C92E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

double static FlightWidgetProgressContent.createContent(viewModel:context:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04AF64();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16);
  if (v11)
  {
    v12 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon);
    v13 = sub_1BE051544();
  }

  else
  {
    sub_1BE048C84();
    v13 = sub_1BE051574();
  }

  v14 = v13;
  LOBYTE(v38[0]) = 0;
  sub_1BE048964();
  v15 = sub_1BE048964();
  FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)(v15, v38, v43);
  LOBYTE(v38[0]) = 1;
  v16 = sub_1BE048964();
  FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)(v16, v38, v45);
  v17 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state);
  v37 = v10;
  if (v17 > 6)
  {
    goto LABEL_11;
  }

  if (((1 << v17) & 0x49) != 0)
  {
    sub_1BD0DDE0C(v43, v38);
    sub_1BD0DDE0C(v45, v38);
    v18 = -1.0;
    goto LABEL_12;
  }

  if (((1 << v17) & 0x30) == 0)
  {
    if (v17 == 1)
    {
      sub_1BD0DDE0C(v43, v38);
      sub_1BD0DDE0C(v45, v38);
      v18 = 0.0;
      goto LABEL_12;
    }

LABEL_11:
    sub_1BD0DDE0C(v43, v38);
    sub_1BD0DDE0C(v45, v38);
    sub_1BE04AEF4();
    sub_1BE04ADC4();
    v20 = v19;
    (*(v36 + 8))(v9, v6);
    sub_1BE04ADC4();
    v18 = fmax(fmin(v20 / v21, 1.0), 0.0);
    goto LABEL_12;
  }

  sub_1BD0DDE0C(v43, v38);
  sub_1BD0DDE0C(v45, v38);
  v18 = 1.0;
LABEL_12:
  v22 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_tintColor);
  sub_1BE048964();
  v23 = sub_1BD3A7408();
  v25 = v24;

  sub_1BD0DDE68(v43);
  sub_1BD0DDE68(v45);
  *&v42[39] = v43[2];
  *&v42[55] = v43[3];
  *&v42[71] = v43[4];
  *&v42[87] = v44;
  *&v42[7] = v43[0];
  *&v42[23] = v43[1];
  *(&v38[8] + 8) = v45[2];
  *(&v38[9] + 8) = v45[3];
  *(&v38[10] + 8) = v45[4];
  *(&v38[11] + 8) = v45[5];
  *(&v38[6] + 8) = v45[0];
  *(&v38[7] + 8) = v45[1];
  *(&v38[2] + 1) = *&v42[32];
  *(&v38[1] + 1) = *&v42[16];
  *(v38 + 1) = *v42;
  *&v38[6] = *(&v44 + 1);
  *(&v38[5] + 1) = *&v42[80];
  *(&v38[4] + 1) = *&v42[64];
  LOBYTE(v38[0]) = v37;
  *(&v38[3] + 1) = *&v42[48];
  *(&v38[12] + 1) = v18;
  *&v39 = v14;
  BYTE8(v39) = v11 ^ 1;
  *&v40 = v22;
  *(&v40 + 1) = v23;
  v41 = v25;
  PKEdgeInsetsMake(v38, v26);
  v27 = v39;
  *(a3 + 192) = v38[12];
  *(a3 + 208) = v27;
  *(a3 + 224) = v40;
  *(a3 + 240) = v41;
  v28 = v38[9];
  *(a3 + 128) = v38[8];
  *(a3 + 144) = v28;
  v29 = v38[11];
  *(a3 + 160) = v38[10];
  *(a3 + 176) = v29;
  v30 = v38[5];
  *(a3 + 64) = v38[4];
  *(a3 + 80) = v30;
  v31 = v38[7];
  *(a3 + 96) = v38[6];
  *(a3 + 112) = v31;
  v32 = v38[1];
  *a3 = v38[0];
  *(a3 + 16) = v32;
  result = *&v38[2];
  v34 = v38[3];
  *(a3 + 32) = v38[2];
  *(a3 + 48) = v34;
  return result;
}

uint64_t FlightWidgetProgressFlightStepContent.FlightStepType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v32) = *a2;
  v5 = v32;
  v30 = sub_1BD2C9950(&v32, a1);
  v31 = v5;
  if (v5)
  {
    v6 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode + 8);
    v32 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode);
    v33 = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE053554();
    v28 = v8;
    v29 = v7;
    v9 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone;
    v10 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode + 8);
    v32 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode);
    v33 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE053554();
    v28 = v13;
    v29 = v12;
    v9 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
    v10 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  }

  sub_1BD3A9168(a1 + *v10, a1 + *v9);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BE052434();
  v20 = v19;
  v21 = sub_1BE052434();
  v23 = v22;
  v24 = sub_1BE052434();
  v26 = v25;

  *a3 = v31;
  *(a3 + 8) = v29;
  *(a3 + 16) = v28;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v30;
  *(a3 + 48) = v18;
  *(a3 + 56) = v20;
  *(a3 + 64) = v21;
  *(a3 + 72) = v23;
  *(a3 + 80) = v24;
  *(a3 + 88) = v26;
  return result;
}

uint64_t sub_1BD2C9950(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    if ([v4 state] == 6)
    {
      v5 = sub_1BE0513B4();

      return v5;
    }

    v7 = &selRef_arrival;
    if (!v3)
    {
      v7 = &selRef_departure;
    }

    v8 = [v4 *v7];
    v9 = [v8 status];
    if (v9 > 1)
    {
      if (v9 == 3)
      {
        v10 = sub_1BE051434();
        goto LABEL_15;
      }
    }

    else if (v9 == 1)
    {
      v10 = sub_1BE051414();
LABEL_15:
      v11 = v10;

      return v11;
    }

    v10 = sub_1BE0513E4();
    goto LABEL_15;
  }

  return sub_1BE0513E4();
}

unint64_t sub_1BD2C9A54()
{
  result = qword_1EBD40B90;
  if (!qword_1EBD40B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40B90);
  }

  return result;
}

unint64_t sub_1BD2C9AAC()
{
  result = qword_1EBD40B98;
  if (!qword_1EBD40B98)
  {
    type metadata accessor for FlightWidgetProgressView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40B98);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1BD2C9B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD2C9B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1BD2C9C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1BD2C9C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD2C9D04()
{
  result = qword_1EBD40BA0;
  if (!qword_1EBD40BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40BA0);
  }

  return result;
}

unint64_t sub_1BD2C9D5C()
{
  result = qword_1EBD40BA8;
  if (!qword_1EBD40BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40BA8);
  }

  return result;
}

uint64_t sub_1BD2C9E1C()
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
  __swift_allocate_value_buffer(v9, qword_1EBDAAEE0);
  __swift_project_value_buffer(v9, qword_1EBDAAEE0);
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

uint64_t sub_1BD2CA030(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2CA248, 0, 0);
}

id sub_1BD2CA248()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:AppleCardApplyIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[17] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v13 = v12;
  v0[18] = v12;
  if (v12)
  {
    v14 = [v12 passesOfStyles_];
    if (v14)
    {
      v15 = v14;
      sub_1BD102A4C();
      v16 = sub_1BE052744();

      v39 = v13;
      if (v16 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1BFB40900](v18, v16);
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = [v19 secureElementPass];
          if (v22)
          {
            v23 = v22;
            v24 = [v22 isAppleCardPass];

            if (v24)
            {

              sub_1BE04A3A4();
              sub_1BE052434();
              sub_1BE04A394();
              v25 = sub_1BE052434();
              MEMORY[0x1BFB37400](v25);
              v13 = v39;
              goto LABEL_24;
            }
          }

          else
          {
          }

          ++v18;
          if (v21 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:

      v13 = v39;
    }
  }

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v26 = sub_1BE052434();
  MEMORY[0x1BFB37400](v26);
  v27 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v27);

  MEMORY[0x1BFB3F610](47, 0xE100000000000000);
  result = PKFeatureIdentifierToString();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE052434();
    v32 = v31;

    MEMORY[0x1BFB3F610](v30, v32);

    MEMORY[0x1BFB37410](47, 0xE100000000000000);
LABEL_24:
    v34 = v0[4];
    v33 = v0[5];
    v35 = v0[3];
    sub_1BE04A364();
    if ((*(v33 + 48))(v35, 1, v34) == 1)
    {
      sub_1BD226BBC(v0[3]);
      sub_1BE0484F4();
      sub_1BD1351C0();
      swift_allocError();
      sub_1BE0484E4();
      swift_willThrow();

      (*(v0[8] + 8))(v0[9], v0[7]);
      sub_1BD2CAAB8();

      v36 = v0[1];

      return v36();
    }

    else
    {
      (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
      v37 = swift_task_alloc();
      v0[19] = v37;
      *v37 = v0;
      v37[1] = sub_1BD2CA7C0;
      v38 = v0[6];

      return sub_1BD0D7A54(v38);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CA7C0(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD2CA8C0, 0, 0);
}

uint64_t sub_1BD2CA8C0()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    sub_1BE048774();

    (*(v6 + 8))(v5, v7);
    (*(v2 + 8))(v3, v4);
  }

  else
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  sub_1BD2CAAB8();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD2CAAB8()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:AppleCardApplyIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD2CADA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD2CAE54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD2CA030(a1);
}

uint64_t sub_1BD2CAEEC(uint64_t a1)
{
  v2 = sub_1BD15CFFC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD2CAF64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v70 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v57[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC8);
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v57[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BD0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v69 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BD8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v68 = &v57[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57[-v26];
  *v27 = sub_1BE04F7C4();
  *(v27 + 1) = 0;
  v27[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8);
  sub_1BE04E2B4();
  swift_getKeyPath();
  v90[0] = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  v28 = *(a1 + 16);
  if (v28 >> 62)
  {
    v29 = sub_1BE053704();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29 < 1)
  {
    v30 = 1;
  }

  else
  {
    *v13 = sub_1BE04F784();
    *(v13 + 1) = 0;
    v13[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C20);
    type metadata accessor for WalletSettingsModel(0);
    sub_1BE048964();
    sub_1BE051A94();
    sub_1BD2D4A4C(v13, v20);
    v30 = 0;
  }

  v31 = *(v66 + 56);
  v32 = v20;
  v60 = v20;
  v31(v20, v30, 1, v10);
  v66 = sub_1BE04F7B4();
  LOBYTE(v90[0]) = 1;
  sub_1BE048964();
  v33 = v62;
  sub_1BE048964();
  sub_1BD2D4244(a1, v33, v96);
  *&v73[7] = v96[0];
  *&v73[23] = v96[1];
  *&v73[39] = v96[2];
  *&v73[55] = v96[3];
  v65 = LOBYTE(v90[0]);
  v63 = sub_1BE04F784();
  LOBYTE(v90[0]) = 1;
  v34 = sub_1BE048964();
  sub_1BD2D4564(v34, v97);
  *(v72 + 7) = v97[0];
  *(&v72[1] + 7) = v97[1];
  *(&v72[2] + 7) = v97[2];
  *(&v72[3] + 7) = v98;
  v64 = LOBYTE(v90[0]);
  v35 = v67;
  sub_1BD2CBD30(a1, v67);
  v59 = sub_1BE04F784();
  LOBYTE(v90[0]) = 1;
  v36 = sub_1BE048964();
  sub_1BD2D47D0(v36, v99);
  *(v71 + 7) = v99[0];
  *(&v71[1] + 7) = v99[1];
  *(&v71[2] + 7) = v99[2];
  *(&v71[3] + 7) = v100;
  v58 = LOBYTE(v90[0]);
  v37 = v68;
  sub_1BD0DE19C(v27, v68, &qword_1EBD40BD8);
  v38 = v69;
  sub_1BD0DE19C(v32, v69, &qword_1EBD40BD0);
  sub_1BD0DE19C(v35, v70, &qword_1EBD40BC0);
  v62 = v27;
  v39 = v61;
  sub_1BD0DE19C(v37, v61, &qword_1EBD40BD8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C00);
  sub_1BD0DE19C(v38, v39 + v40[12], &qword_1EBD40BD0);
  v41 = v39 + v40[16];
  v74[0] = v66;
  v74[1] = 0;
  v75[0] = v65;
  *&v75[1] = *v73;
  *&v75[17] = *&v73[16];
  *&v75[33] = *&v73[32];
  *&v75[49] = *&v73[48];
  *&v75[64] = *&v73[63];
  v42 = *&v73[63];
  v43 = *v75;
  *v41 = v66;
  *(v41 + 16) = v43;
  v44 = *&v75[16];
  v45 = *&v75[32];
  v46 = *&v75[48];
  *(v41 + 80) = v42;
  *(v41 + 48) = v45;
  *(v41 + 64) = v46;
  *(v41 + 32) = v44;
  v47 = (v39 + v40[20]);
  v76 = v63;
  LOBYTE(v77[0]) = v64;
  v77[3] = *(&v72[2] + 15);
  *(&v77[2] + 1) = v72[2];
  *(&v77[1] + 1) = v72[1];
  *(v77 + 1) = v72[0];
  v48 = v77[3];
  v49 = v77[1];
  v47[3] = v77[2];
  v47[4] = v48;
  v50 = v77[0];
  *v47 = v76;
  v47[1] = v50;
  v47[2] = v49;
  v51 = v70;
  sub_1BD0DE19C(v70, v39 + v40[24], &qword_1EBD40BC0);
  v52 = (v39 + v40[28]);
  v53 = v59;
  v78[0] = v59;
  v78[1] = 0;
  LOBYTE(v37) = v58;
  LOBYTE(v79[0]) = v58;
  *(v79 + 1) = v71[0];
  *(&v79[1] + 1) = v71[1];
  *(&v79[2] + 1) = v71[2];
  v79[3] = *(&v71[2] + 15);
  v54 = v79[0];
  *v52 = v59;
  v52[1] = v54;
  v55 = v79[2];
  v52[2] = v79[1];
  v52[3] = v55;
  v52[4] = v79[3];
  sub_1BD0DE19C(v74, v90, &qword_1EBD40C08);
  sub_1BD0DE19C(&v76, v90, &qword_1EBD40C10);
  sub_1BD0DE19C(v78, v90, &qword_1EBD40C18);
  sub_1BD0DE53C(v67, &qword_1EBD40BC0);
  sub_1BD0DE53C(v60, &qword_1EBD40BD0);
  sub_1BD0DE53C(v62, &qword_1EBD40BD8);
  v80[0] = v53;
  v80[1] = 0;
  v81 = v37;
  v82 = v71[0];
  v83 = v71[1];
  *v84 = v71[2];
  *&v84[15] = *(&v71[2] + 15);
  sub_1BD0DE53C(v80, &qword_1EBD40C18);
  sub_1BD0DE53C(v51, &qword_1EBD40BC0);
  v85[0] = v63;
  v85[1] = 0;
  v86 = v64;
  v87 = v72[0];
  v88 = v72[1];
  *v89 = v72[2];
  *&v89[15] = *(&v72[2] + 15);
  sub_1BD0DE53C(v85, &qword_1EBD40C10);
  v90[0] = v66;
  v90[1] = 0;
  v91 = v65;
  v93 = *&v73[16];
  v94 = *&v73[32];
  v95[0] = *&v73[48];
  *(v95 + 15) = *&v73[63];
  v92 = *v73;
  sub_1BD0DE53C(v90, &qword_1EBD40C08);
  sub_1BD0DE53C(v69, &qword_1EBD40BD0);
  return sub_1BD0DE53C(v68, &qword_1EBD40BD8);
}

id sub_1BD2CB89C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v51 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v51 - v21;
  v22 = *(v2 + 104);
  v58 = *MEMORY[0x1E69B80F0];
  v57 = v22;
  v22(v8, v20);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v52 = *(v2 + 8);
    v52(v8, v1);
    v61 = v25;
    v62 = v27;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v61 = v28;
    v62 = v29;
    v32 = v31 & 1;
    v63 = v31 & 1;
    v64 = v33;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v28, v30, v32);

    v34 = v59;
    v57(v59, v58, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v35 = result;
      v36 = sub_1BE04B6F4();
      v38 = v37;

      v52(v34, v1);
      v61 = v36;
      v62 = v38;
      v39 = sub_1BE0506C4();
      v41 = v40;
      v61 = v39;
      v62 = v40;
      v43 = v42 & 1;
      v63 = v42 & 1;
      v64 = v44;
      sub_1BE052434();
      v45 = v53;
      sub_1BE050DE4();

      sub_1BD0DDF10(v39, v41, v43);

      v46 = v60;
      v47 = v54;
      sub_1BD0DE19C(v60, v54, &qword_1EBD452C0);
      v48 = v55;
      sub_1BD0DE19C(v45, v55, &qword_1EBD452C0);
      v49 = v56;
      sub_1BD0DE19C(v47, v56, &qword_1EBD452C0);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
      sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD452C0);
      sub_1BD0DE53C(v45, &qword_1EBD452C0);
      sub_1BD0DE53C(v46, &qword_1EBD452C0);
      sub_1BD0DE53C(v48, &qword_1EBD452C0);
      return sub_1BD0DE53C(v47, &qword_1EBD452C0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2CBD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (a1 == 1)
  {
    swift_getKeyPath();
    sub_1BE04B594();

    v4 = *(a1 + 64);
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04B594();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    *a2 = v4;
    *(a2 + 8) = a1;
    sub_1BE051694();
    *(a2 + 16) = a1;
    *(a2 + 24) = v10;
    sub_1BE051694();
    *(a2 + 32) = a1;
    *(a2 + 40) = v10;
    v5 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
    v6 = *(v5 + 32);
    *(a2 + v6) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30);
    swift_storeEnumTagMultiPayload();
    v7 = *(v5 + 36);
    *(a2 + v7) = PKPassKitUIBundle();
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {

    v9 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

id sub_1BD2CC034()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v0;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v5, v1);
    v16 = v8;
    v17 = v10;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v17 = v11;
    v18 = v12 & 1;
    v19 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BB0);
    sub_1BD0DE4F4(&qword_1EBD40BB8, &qword_1EBD40BB0);
    return sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2CC23C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E18);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69B80F0], v10, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v11 + 8))(v15, v10);
    v32 = v18;
    v33 = v20;
    sub_1BE051A84();
    swift_getKeyPath();
    sub_1BE051AA4();

    v21 = (*(v2 + 8))(v5, v1);
    v28 = v30;
    v29 = v31;
    MEMORY[0x1EEE9AC00](v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E28);
    sub_1BD2D5CD8();
    sub_1BD2D5DC4();
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD40E68, &qword_1EBD40E18);
    v23 = v26;
    sub_1BE050DE4();

    return (*(v25 + 8))(v9, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CC62C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  sub_1BE048C84();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E50);
  sub_1BD0DE4F4(&qword_1EBD40E78, &qword_1EBD40E70);
  sub_1BD2D5FE4();
  sub_1BD2D5E48();
  return sub_1BE0519C4();
}

uint64_t sub_1BD2CC7DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E60);
  v31 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v30 - v12;
  v14 = *a1;
  if ([*a1 passActivationState] != 1)
  {
    v15 = [v14 paymentPass];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 devicePrimaryPaymentApplication];
      if (v17)
      {
        v18 = v17;
        [v17 state];

        if (!PKPaymentApplicationStateIsSuspended())
        {
          v21 = [v14 localizedDescription];
          v22 = sub_1BE052434();
          v30 = v23;

          v32 = v22;
          v33 = v30;
          sub_1BD0DDEBC();
          *v8 = sub_1BE0506C4();
          *(v8 + 1) = v24;
          v8[16] = v25 & 1;
          *(v8 + 3) = v26;
          *(v8 + 4) = v14;
          v8[40] = 1;
          sub_1BE052434();
          v27 = v14;
          v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20);
          v29 = sub_1BD2D5CD8();
          v32 = MEMORY[0x1E6981148];
          v33 = v28;
          v34 = MEMORY[0x1E6981138];
          v35 = v29;
          swift_getOpaqueTypeConformance2();
          sub_1BE050DE4();

          (*(v5 + 8))(v8, v4);
          sub_1BD05B420(v13, a2);
          return (*(v31 + 56))(a2, 0, 1, v9);
        }
      }
    }
  }

  v19 = *(v31 + 56);

  return v19(a2, 1, 1, v9);
}

uint64_t sub_1BD2CCB38@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA0);
  MEMORY[0x1EEE9AC00](v24, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA8);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v21 = &v20 - v8;
  sub_1BD2CCF4C(v4);
  v33[0] = *(v1 + 1);
  v31 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v9 = v1[1];
  v22 = *v1;
  v23 = v9;
  v31 = *(v1 + 2);
  v32 = v1[6];
  v10 = swift_allocObject();
  v11 = *(v1 + 1);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 2);
  *(v10 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v33, &v28, &qword_1EBD54350);
  sub_1BD0DE19C(&v31, &v28, &qword_1EBD4E9E0);
  v18 = sub_1BD2D57F4();
  v19 = sub_1BD2D58AC();
  v12 = v24;
  sub_1BE050F64();

  sub_1BD0DE53C(v4, &qword_1EBD40DA0);
  v28 = v31;
  v29 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v13 = swift_allocObject();
  v14 = *(v1 + 1);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 2);
  *(v13 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v33, &v28, &qword_1EBD54350);
  sub_1BD0DE19C(&v31, &v28, &qword_1EBD4E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  *&v28 = v12;
  *(&v28 + 1) = &type metadata for SettingsPaymentDefaultsView.EmailPicker.AddEmailSheet;
  v29 = v18;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  v15 = v25;
  v16 = v21;
  sub_1BE051064();

  return (*(v26 + 8))(v16, v15);
}

int *sub_1BD2CCF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CB8);
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v4);
  v6 = &v26 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80F0], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v31 = v15;
    v32 = v17;
    v29 = *(v2 + 2);
    v30 = v2[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
    v18 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CD0);
    sub_1BD2D52F8(&qword_1EBD40CD8);
    sub_1BD0DE4F4(&qword_1EBD40CE0, &qword_1EBD40CD0);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8);
    v20 = v26;
    v21 = v27;
    sub_1BE050DE4();

    (*(v3 + 8))(v6, v20);
    v22 = *v2;
    swift_getKeyPath();
    *&v28 = v22;
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    LOBYTE(v22) = v28;
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA0);
    v25 = (v21 + result[9]);
    *v25 = KeyPath;
    v25[1] = sub_1BD10DF54;
    v25[2] = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD2CD410(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if ((a2[1] & 1) == 0)
  {
    v4 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v5 = *(v12 + 16);

    if ((v4 & 0x8000000000000000) == 0 && v4 < v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v4 >= *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = *(v12 + 8 * v4 + 32);

        v7 = *a3;
        swift_getKeyPath();
        sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
        sub_1BE04B594();

        v8 = *(v7 + 40);
        v9 = *(v7 + 64);
        v10 = v6;
        v11 = v8;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD40C070(v6, v11, v9);
      }
    }
  }
}

id sub_1BD2CD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = &v75 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0);
  MEMORY[0x1EEE9AC00](v78, v8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v90 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF8);
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = &v75 - v18;
  v19 = sub_1BE04BD74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v88 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v75 - v38;
  v95 = *(a1 + 32);
  v96 = *(a1 + 48);
  v91 = *(a1 + 32);
  v92 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v40 = 1;
  v87 = v39;
  if (BYTE8(v94) != 1)
  {
    goto LABEL_4;
  }

  v77 = v24;
  v76 = v94;
  (*(v20 + 104))(v23, *MEMORY[0x1E69B80F0], v19);
  result = PKPassKitBundle();
  if (result)
  {
    v42 = result;
    v43 = sub_1BE04B6F4();
    v45 = v44;

    (*(v20 + 8))(v23, v19);
    *&v91 = v43;
    *(&v91 + 1) = v45;
    sub_1BD0DDEBC();
    *v28 = sub_1BE0506C4();
    *(v28 + 1) = v46;
    v28[16] = v47 & 1;
    v48 = v76;
    *(v28 + 3) = v49;
    *(v28 + 4) = v48;
    *(v28 + 20) = 257;
    v50 = *(v25 + 32);
    v51 = v77;
    v50(v32, v28, v77);
    v39 = v87;
    v50(v87, v32, v51);
    v24 = v51;
    v40 = 0;
LABEL_4:
    (*(v25 + 56))(v39, v40, 1, v24);
    v77 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v52 = v91;
    v53 = *(v91 + 16);
    *&v94 = 0;
    *(&v94 + 1) = v53;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
    sub_1BD2D5394();
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    v55 = sub_1BD2D52F8(&qword_1EBD40CD8);
    *&v91 = MEMORY[0x1E6981148];
    *(&v91 + 1) = v54;
    v92 = MEMORY[0x1E6981138];
    v93 = v55;
    swift_getOpaqueTypeConformance2();
    v56 = v89;
    sub_1BE0519C4();
    v57 = v90;
    sub_1BE051984();
    LOBYTE(v52) = sub_1BE050204();
    v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
    *v58 = v52;
    *(v58 + 8) = 0u;
    *(v58 + 24) = 0u;
    *(v58 + 40) = 1;
    *(v57 + *(v78 + 36)) = 1;
    v94 = *(a1 + 16);
    v59 = swift_allocObject();
    v60 = *(a1 + 16);
    *(v59 + 16) = *a1;
    *(v59 + 32) = v60;
    *(v59 + 48) = *(a1 + 32);
    *(v59 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v94, &v91, &qword_1EBD54350);
    sub_1BD0DE19C(&v95, &v91, &qword_1EBD4E9E0);
    v61 = v83;
    sub_1BE051704();
    *(v61 + *(v79 + 36)) = 1;
    v62 = v88;
    sub_1BD0DE19C(v39, v88, &qword_1EBD40D00);
    v64 = v80;
    v63 = v81;
    v65 = *(v81 + 16);
    v66 = v56;
    v67 = v82;
    v65(v80, v66, v82);
    v68 = v57;
    v69 = v84;
    sub_1BD0DE19C(v68, v84, &qword_1EBD40CF0);
    v70 = v86;
    sub_1BD0DE19C(v61, v86, &qword_1EBD40CE8);
    v71 = v62;
    v72 = v85;
    sub_1BD0DE19C(v71, v85, &qword_1EBD40D00);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D20);
    v65((v72 + v73[12]), v64, v67);
    sub_1BD0DE19C(v69, v72 + v73[16], &qword_1EBD40CF0);
    sub_1BD0DE19C(v70, v72 + v73[20], &qword_1EBD40CE8);
    sub_1BD0DE53C(v61, &qword_1EBD40CE8);
    sub_1BD0DE53C(v90, &qword_1EBD40CF0);
    v74 = *(v63 + 8);
    v74(v89, v67);
    sub_1BD0DE53C(v87, &qword_1EBD40D00);
    sub_1BD0DE53C(v70, &qword_1EBD40CE8);
    sub_1BD0DE53C(v69, &qword_1EBD40CF0);
    v74(v64, v67);
    return sub_1BD0DE53C(v88, &qword_1EBD40D00);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2CE000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D40);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v34 - v15;
  *v16 = sub_1BE04F504();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D48);
  sub_1BD2CE378(a1, &v16[*(v17 + 44)]);
  v18 = (*a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E69B8048], v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = v20;
      *(v22 + 40) = v19;
      sub_1BE048C84();
      v23 = sub_1BE04B714();
      v25 = v24;

      (*(v5 + 8))(v8, v4);
      v34[0] = v23;
      v34[1] = v25;
      sub_1BD0DDEBC();
      v26 = sub_1BE0506C4();
      v28 = v27;
      v19 = v29;
      v31 = v30 & 1;
      sub_1BD0D7F18(v26, v27, v30 & 1);
      sub_1BE048C84();
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v31 = 0;
      v19 = 0;
    }
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v31 = 0;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD40D40);
  sub_1BD0DE19C(v12, a2, &qword_1EBD40D40);
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D50) + 48));
  sub_1BD1969AC(v26, v28, v31, v19);
  sub_1BD1969F0(v26, v28, v31, v19);
  *v32 = v26;
  v32[1] = v28;
  v32[2] = v31;
  v32[3] = v19;
  sub_1BD0DE53C(v16, &qword_1EBD40D40);
  sub_1BD1969F0(v26, v28, v31, v19);
  return sub_1BD0DE53C(v12, &qword_1EBD40D40);
}

id sub_1BD2CE378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v103 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v3);
  v106 = v4;
  v107 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v81 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D60);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v9);
  v111 = &v81 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D68);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v11);
  v96 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D70);
  v101 = *(v13 - 8);
  v102 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v100 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v110 = &v81 - v18;
  v19 = sub_1BE04BD74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  OpaqueTypeConformance2 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v81 - v26;
  v28 = *(v20 + 104);
  v86 = *MEMORY[0x1E69B8048];
  v87 = v20 + 104;
  v85 = v28;
  v28(&v81 - v26, v25);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    v34 = *(v20 + 8);
    v84 = v19;
    v83 = v20 + 8;
    v82 = v34;
    v34(v27, v19);
    v112 = v31;
    v113 = v33;
    v90 = sub_1BD0DDEBC();
    v93 = sub_1BE0506C4();
    v92 = v35;
    v91 = v36;
    v94 = v37;
    sub_1BE04F624();
    v39 = *(a1 + 24);
    v119 = *(a1 + 16);
    v38 = v119;
    v120 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    sub_1BE051824();
    LOBYTE(v112) = v38;
    v113 = v39;
    v89 = v40;
    sub_1BE0516A4();
    LOBYTE(v112) = v119;
    v41 = v107;
    sub_1BD2D547C(a1, v107);
    v42 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v43 = swift_allocObject();
    sub_1BD2D54E0(v41, v43 + v42);
    v44 = sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
    v45 = v109;
    sub_1BE051064();

    (*(v108 + 8))(v8, v45);
    v46 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v112)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
LABEL_6:
      v112 = v47;
      v113 = v48;
      v54 = sub_1BE0506C4();
      v107 = v56;
      v108 = v55;
      v58 = v57;
      v59 = *(v46 + 40);
      v119 = *(v46 + 32);
      v120 = v59;
      sub_1BE0516C4();
      v105 = v112;
      v90 = v113;
      LODWORD(v106) = v114;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v89 = &v81;
      v119 = v112;
      MEMORY[0x1EEE9AC00](v60, v61);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
      v112 = v45;
      v113 = MEMORY[0x1E69E6370];
      v114 = v44;
      v115 = MEMORY[0x1E69E6388];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v109 = sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
      v62 = v97;
      v63 = v58;
      v64 = v96;
      v65 = v54;
      v66 = v108;
      v67 = v111;
      sub_1BE050F04();

      sub_1BD0DDF10(v65, v66, v63 & 1);

      (*(v95 + 8))(v67, v62);
      v68 = *(v46 + *(v103 + 36));
      sub_1BE0515F4();
      v112 = v62;
      v113 = v87;
      v114 = MEMORY[0x1E6981148];
      v115 = &type metadata for HideMyEmailAccountConfigurationError;
      v116 = OpaqueTypeConformance2;
      v117 = v109;
      v118 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      v69 = v110;
      v70 = v99;
      sub_1BE050844();

      (*(v98 + 8))(v64, v70);
      v72 = v101;
      v71 = v102;
      v73 = *(v101 + 16);
      v74 = v100;
      v73(v100, v69, v102);
      v75 = v104;
      v76 = v93;
      v77 = v92;
      *v104 = v93;
      v75[1] = v77;
      v78 = v91 & 1;
      *(v75 + 16) = v91 & 1;
      v75[3] = v94;
      v75[4] = 0;
      *(v75 + 40) = 1;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D90);
      v73(v75 + *(v79 + 64), v74, v71);
      sub_1BD0D7F18(v76, v77, v78);
      v80 = *(v72 + 8);
      sub_1BE048C84();
      v80(v110, v71);
      v80(v74, v71);
      sub_1BD0DDF10(v76, v77, v78);
    }

    v49 = v44;
    v50 = OpaqueTypeConformance2;
    v51 = v84;
    v85(OpaqueTypeConformance2, v86, v84);
    result = PKPassKitBundle();
    if (result)
    {
      v52 = result;
      v47 = sub_1BE04B6F4();
      v48 = v53;

      v82(v50, v51);
      v44 = v49;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD2CEF0C(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v4 = *a2;
  if (([*(*a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) isAccountConfigured] & 1) == 0 && v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  v5 = a3[1];
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v6 = *(v5 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v7 = v6;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04D8C4();
  [v7 setUseHideMyEmail_];
}

uint64_t sub_1BD2CF0F8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v33 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v32 - v20;
  sub_1BD2D547C(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_1BD2D54E0(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_1BE051704();
  sub_1BD2D547C(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_1BD2D54E0(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  sub_1BE051704();
  v25 = *(v8 + 16);
  v26 = v33;
  v25(v33, v21, v7);
  v27 = v34;
  v25(v34, v17, v7);
  v28 = v35;
  v25(v35, v26, v7);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
  v25(&v28[*(v29 + 48)], v27, v7);
  v30 = *(v8 + 8);
  v30(v17, v7);
  v30(v21, v7);
  v30(v27, v7);
  return (v30)(v26, v7);
}

uint64_t sub_1BD2CF47C(uint64_t a1)
{
  v17 = sub_1BE04E784();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = v15;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE052434();
  sub_1BE04AA54();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  }

  (*(v11 + 32))(v14, v9, v10);
  type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  sub_1BD70A4A8(v5);
  sub_1BE04E734();
  (*(v2 + 8))(v5, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD2CF77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD2CF848@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8048], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CF9B4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F784();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D30);
  sub_1BD0DE4F4(&qword_1EBD40D38, &qword_1EBD40D30);
  return sub_1BE04E2B4();
}

uint64_t sub_1BD2CFA88@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C98);
  MEMORY[0x1EEE9AC00](v24, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CA0);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v21 = &v20 - v8;
  sub_1BD2CFE9C(v4);
  v33[0] = *(v1 + 1);
  v31 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v9 = v1[1];
  v22 = *v1;
  v23 = v9;
  v31 = *(v1 + 2);
  v32 = v1[6];
  v10 = swift_allocObject();
  v11 = *(v1 + 1);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 2);
  *(v10 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v33, &v28, &qword_1EBD54350);
  sub_1BD0DE19C(&v31, &v28, &qword_1EBD4E9E0);
  v18 = sub_1BD2D5018();
  v19 = sub_1BD2D5100();
  v12 = v24;
  sub_1BE050F64();

  sub_1BD0DE53C(v4, &qword_1EBD40C98);
  v28 = v31;
  v29 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v13 = swift_allocObject();
  v14 = *(v1 + 1);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 2);
  *(v13 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v33, &v28, &qword_1EBD54350);
  sub_1BD0DE19C(&v31, &v28, &qword_1EBD4E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  *&v28 = v12;
  *(&v28 + 1) = &type metadata for SettingsPaymentDefaultsView.PhonePicker.AddPhoneSheet;
  v29 = v18;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  v15 = v25;
  v16 = v21;
  sub_1BE051064();

  return (*(v26 + 8))(v16, v15);
}

id sub_1BD2CFE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69B80F0], v8, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v9 + 8))(v13, v8);
    v24 = v16;
    v25 = v18;
    v22 = *(v2 + 32);
    v23 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
    v19 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CD0);
    sub_1BD2D52F8(&qword_1EBD40CD8);
    sub_1BD0DE4F4(&qword_1EBD40CE0, &qword_1EBD40CD0);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8);
    sub_1BE050DE4();

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2D0234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  v15 = *(a1 + 1);
  v13 = v7;
  v14 = a1[6];
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 2);
  *(v8 + 64) = a1[6];
  swift_getKeyPath();
  v12[3] = v6;
  swift_retain_n();
  sub_1BE048964();
  sub_1BD0DE19C(&v15, v12, &qword_1EBD54350);
  sub_1BD0DE19C(&v13, v12, &qword_1EBD4E9E0);
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v10 = *(v6 + 96);
  *a3 = v6;
  a3[1] = a2;
  a3[2] = v8;
  a3[3] = v10;

  return v10;
}

void sub_1BD2D0394(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if ((a2[1] & 1) == 0)
  {
    v4 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v5 = *(v12 + 16);

    if ((v4 & 0x8000000000000000) == 0 && v4 < v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v4 >= *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = *(v12 + 8 * v4 + 32);

        v7 = *a3;
        swift_getKeyPath();
        sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
        sub_1BE04B594();

        v8 = *(v7 + 40);
        v9 = *(v7 + 80);
        v10 = v6;
        v11 = v8;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD40C574(v6, v11, v9);
      }
    }
  }
}

id sub_1BD2D0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = &v75 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0);
  MEMORY[0x1EEE9AC00](v78, v8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v90 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF8);
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = &v75 - v18;
  v19 = sub_1BE04BD74();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v88 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v75 - v38;
  v95 = *(a1 + 32);
  v96 = *(a1 + 48);
  v91 = *(a1 + 32);
  v92 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v40 = 1;
  v87 = v39;
  if (BYTE8(v94) != 1)
  {
    goto LABEL_4;
  }

  v77 = v24;
  v76 = v94;
  (*(v20 + 104))(v23, *MEMORY[0x1E69B80F0], v19);
  result = PKPassKitBundle();
  if (result)
  {
    v42 = result;
    v43 = sub_1BE04B6F4();
    v45 = v44;

    (*(v20 + 8))(v23, v19);
    *&v91 = v43;
    *(&v91 + 1) = v45;
    sub_1BD0DDEBC();
    *v28 = sub_1BE0506C4();
    *(v28 + 1) = v46;
    v28[16] = v47 & 1;
    v48 = v76;
    *(v28 + 3) = v49;
    *(v28 + 4) = v48;
    *(v28 + 20) = 257;
    v50 = *(v25 + 32);
    v51 = v77;
    v50(v32, v28, v77);
    v39 = v87;
    v50(v87, v32, v51);
    v24 = v51;
    v40 = 0;
LABEL_4:
    (*(v25 + 56))(v39, v40, 1, v24);
    v77 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v52 = v91;
    v53 = *(v91 + 16);
    *&v94 = 0;
    *(&v94 + 1) = v53;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
    sub_1BD2D5394();
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    v55 = sub_1BD2D52F8(&qword_1EBD40CD8);
    *&v91 = MEMORY[0x1E6981148];
    *(&v91 + 1) = v54;
    v92 = MEMORY[0x1E6981138];
    v93 = v55;
    swift_getOpaqueTypeConformance2();
    v56 = v89;
    sub_1BE0519C4();
    v57 = v90;
    sub_1BE051984();
    LOBYTE(v52) = sub_1BE050204();
    v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
    *v58 = v52;
    *(v58 + 8) = 0u;
    *(v58 + 24) = 0u;
    *(v58 + 40) = 1;
    *(v57 + *(v78 + 36)) = 1;
    v94 = *(a1 + 16);
    v59 = swift_allocObject();
    v60 = *(a1 + 16);
    *(v59 + 16) = *a1;
    *(v59 + 32) = v60;
    *(v59 + 48) = *(a1 + 32);
    *(v59 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v94, &v91, &qword_1EBD54350);
    sub_1BD0DE19C(&v95, &v91, &qword_1EBD4E9E0);
    v61 = v83;
    sub_1BE051704();
    *(v61 + *(v79 + 36)) = 1;
    v62 = v88;
    sub_1BD0DE19C(v39, v88, &qword_1EBD40D00);
    v64 = v80;
    v63 = v81;
    v65 = *(v81 + 16);
    v66 = v56;
    v67 = v82;
    v65(v80, v66, v82);
    v68 = v57;
    v69 = v84;
    sub_1BD0DE19C(v68, v84, &qword_1EBD40CF0);
    v70 = v86;
    sub_1BD0DE19C(v61, v86, &qword_1EBD40CE8);
    v71 = v62;
    v72 = v85;
    sub_1BD0DE19C(v71, v85, &qword_1EBD40D00);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D20);
    v65((v72 + v73[12]), v64, v67);
    sub_1BD0DE19C(v69, v72 + v73[16], &qword_1EBD40CF0);
    sub_1BD0DE19C(v70, v72 + v73[20], &qword_1EBD40CE8);
    sub_1BD0DE53C(v61, &qword_1EBD40CE8);
    sub_1BD0DE53C(v90, &qword_1EBD40CF0);
    v74 = *(v63 + 8);
    v74(v89, v67);
    sub_1BD0DE53C(v87, &qword_1EBD40D00);
    sub_1BD0DE53C(v70, &qword_1EBD40CE8);
    sub_1BD0DE53C(v69, &qword_1EBD40CF0);
    v74(v64, v67);
    return sub_1BD0DE53C(v88, &qword_1EBD40D00);
  }

  __break(1u);
  return result;
}

void sub_1BD2D0F14(unint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a2 + 16))
  {
    v7 = *(a2 + 8 * v4 + 32);
    a3();
    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    *a4 = v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = v12 & 1;
    *(a4 + 24) = v14;
    *(a4 + 32) = v4;
    *(a4 + 40) = 256;
    return;
  }

  __break(1u);
}

uint64_t sub_1BD2D0FD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350);
}

id sub_1BD2D10C4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *a1, v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    v18[0] = v12;
    v18[1] = v14;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16 & 1;
    *(a2 + 24) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2D1268@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DC0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DC8);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - v9;
  sub_1BD2D15D0(v5);
  v28 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v12;
  v13 = *(v1 + 48);
  v11[3] = *(v1 + 32);
  v11[4] = v13;
  sub_1BD2D4B24(v1, &v25);
  v19 = sub_1BD2D5A00();
  v20 = sub_1BD2D5AE8();
  sub_1BE050F64();

  sub_1BD0DE53C(v5, &qword_1EBD40DC0);
  v25 = *(v1 + 40);
  v26 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v15;
  v16 = *(v1 + 48);
  v14[3] = *(v1 + 32);
  v14[4] = v16;
  sub_1BD2D4B24(v1, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  *&v25 = v2;
  *(&v25 + 1) = &type metadata for SettingsPaymentDefaultsView.ShippingAddressPicker.AddAddressSheet;
  v26 = v19;
  v27 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8);
  v17 = v22;
  sub_1BE051064();

  return (*(v23 + 8))(v10, v17);
}

id sub_1BD2D15D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69B80F0], v8, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v9 + 8))(v13, v8);
    v24 = v16;
    v25 = v18;
    v22 = *(v2 + 40);
    v23 = *(v2 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
    v19 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DF0);
    sub_1BD2D52F8(&qword_1EBD40CD8);
    sub_1BD0DE4F4(&qword_1EBD40DF8, &qword_1EBD40DF0);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD40DD8, &qword_1EBD40DE0);
    sub_1BE050DE4();

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2D1970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v8 = *(a1 + 48);
  v6[3] = *(a1 + 32);
  v6[4] = v8;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = sub_1BD2D5B44;
  a2[3] = v6;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BD2D4B24(a1, &v10);
}

uint64_t sub_1BD2D1A04(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v4 = *(v3 + 40);
  sub_1BE048C84();
  sub_1BD2242A4(a1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  return sub_1BE0516B4();
}

void sub_1BD2D1B4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v4 = *a2;
    v5 = a3[4];
    swift_getKeyPath();
    v6 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
    sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
    v7 = v5 + v6;
    sub_1BE04B594();

    swift_beginAccess();
    v8 = *(v5 + 40);
    if (v8 >> 62)
    {
      v9 = sub_1BE053704();
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 >= v9)
    {
      return;
    }

    swift_getKeyPath();
    sub_1BE04B594();

    v7 = *(v5 + 40);
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(v7 + 8 * v4 + 32);
      goto LABEL_8;
    }

LABEL_12:
    sub_1BE048C84();
    v10 = MEMORY[0x1BFB40900](v4, v7);

LABEL_8:
    v11 = *a3;
    swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    v12 = *(v11 + 48);
    v13 = *(v11 + 40);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40CA78(v10, 0, v13, v12);
  }
}

uint64_t sub_1BD2D1DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8);
  MEMORY[0x1EEE9AC00](v78, v3);
  v84 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v74 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0);
  MEMORY[0x1EEE9AC00](v77, v9);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v79 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E00);
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v87 = &v74 - v19;
  v20 = sub_1BE04BD74();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v74 - v32;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00);
  MEMORY[0x1EEE9AC00](v76, v34);
  v86 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v89 = &v74 - v38;
  v90 = *(a1 + 40);
  v91 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
  sub_1BE0516A4();
  v85 = v8;
  if (v93 == 1)
  {
    v74 = v92;
    v39 = *MEMORY[0x1E69B80F0];
    v40 = *(v21 + 104);
    v75 = v20;
    v40(v24, v39, v20);
    v41 = PKPassKitBundle();
    if (!v41)
    {
      goto LABEL_10;
    }

    v42 = v41;
    v43 = sub_1BE04B6F4();
    v45 = v44;

    (*(v21 + 8))(v24, v75);
    *&v90 = v43;
    *(&v90 + 1) = v45;
    sub_1BD0DDEBC();
    *v29 = sub_1BE0506C4();
    *(v29 + 1) = v46;
    v29[16] = v47 & 1;
    v48 = v74;
    *(v29 + 3) = v49;
    *(v29 + 4) = v48;
    *(v29 + 20) = 257;
    v50 = *(v26 + 32);
    v50(v33, v29, v25);
    v29 = v89;
    v50(v89, v33, v25);
    v51 = 0;
    v8 = v85;
  }

  else
  {
    v51 = 1;
    v29 = v89;
  }

  (*(v26 + 56))(v29, v51, 1, v25);
  v52 = *(a1 + 32);
  swift_getKeyPath();
  *&v90 = v52;
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  v33 = *(v52 + 40);
  if (v33 >> 62)
  {
    v41 = sub_1BE053704();
    if ((v41 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v53 = v29;
      goto LABEL_7;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = v29;
  v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  *&v90 = 0;
  *(&v90 + 1) = v41;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v33;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
  sub_1BD2D5394();
  sub_1BD2D5B78();
  v54 = v87;
  sub_1BE0519C4();
  v55 = v79;
  sub_1BE051984();
  v56 = sub_1BE050204();
  v57 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36);
  *v57 = v56;
  *(v57 + 8) = 0u;
  *(v57 + 24) = 0u;
  *(v57 + 40) = 1;
  *(v55 + *(v77 + 36)) = 1;
  v58 = swift_allocObject();
  v59 = *(a1 + 16);
  v58[1] = *a1;
  v58[2] = v59;
  v60 = *(a1 + 48);
  v58[3] = *(a1 + 32);
  v58[4] = v60;
  sub_1BD2D4B24(a1, &v90);
  sub_1BE051704();
  v8[*(v78 + 36)] = 1;
  v61 = v86;
  sub_1BD0DE19C(v53, v86, &qword_1EBD40D00);
  v62 = v80;
  v63 = *(v80 + 16);
  v64 = v88;
  v65 = v54;
  v66 = v81;
  v63(v88, v65, v81);
  v67 = v82;
  sub_1BD0DE19C(v55, v82, &qword_1EBD40CF0);
  v68 = v84;
  sub_1BD0DE19C(v8, v84, &qword_1EBD40CE8);
  v69 = v61;
  v70 = v83;
  sub_1BD0DE19C(v69, v83, &qword_1EBD40D00);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E10);
  v63((v70 + v71[12]), v64, v66);
  sub_1BD0DE19C(v67, v70 + v71[16], &qword_1EBD40CF0);
  sub_1BD0DE19C(v68, v70 + v71[20], &qword_1EBD40CE8);
  sub_1BD0DE53C(v85, &qword_1EBD40CE8);
  sub_1BD0DE53C(v55, &qword_1EBD40CF0);
  v72 = *(v62 + 8);
  v72(v87, v66);
  sub_1BD0DE53C(v89, &qword_1EBD40D00);
  sub_1BD0DE53C(v68, &qword_1EBD40CE8);
  sub_1BD0DE53C(v67, &qword_1EBD40CF0);
  v72(v88, v66);
  return sub_1BD0DE53C(v86, &qword_1EBD40D00);
}

void sub_1BD2D26F0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0);
  v8 = MEMORY[0x1EEE9AC00](*(v6 - 8), v7);
  v10 = &v27 - v9;
  v11 = *a1;
  v28 = v12;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(a2 + 8 * v11 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v13 = MEMORY[0x1BFB40900](v11, a2, v8);
LABEL_5:
  v14 = v13;
  v15 = [v13 pkSingleLineFormattedContactAddress];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;

    v29 = v17;
    v30 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    LOBYTE(v19) = v23;
    v25 = v24;

    *v10 = v20;
    *(v10 + 1) = v22;
    v10[16] = v19 & 1;
    *(v10 + 3) = v25;
    *(v10 + 4) = v11;
    *(v10 + 20) = 256;
    (*(v28 + 32))(a3, v10, v6);
    (*(v28 + 56))(a3, 0, 1, v6);
  }

  else
  {

    v26 = *(v28 + 56);

    v26(a3, 1, 1, v6);
  }
}

uint64_t sub_1BD2D2918(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2[1] = *(a1 + 8);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350);
}

id sub_1BD2D29DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2D2B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a1;
  v48 = a3;
  v44 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  v17 = *MEMORY[0x1E69B80F0];
  v18 = *(v8 + 104);
  v18(&v42 - v15, v17, v7, v14);
  v46 = a4;
  v45 = a4;
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v42 = v22;
    v43 = v21;

    v23 = *(v8 + 8);
    v23(v16, v7);
    (v18)(v11, v17, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v23(v11, v7);
      v28 = swift_allocObject();
      v29 = v48;
      v30 = v44;
      *(v28 + 2) = v47;
      *(v28 + 3) = v30;
      v31 = v46;
      *(v28 + 4) = v29;
      *(v28 + 5) = v31;
      *a5 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
      swift_storeEnumTagMultiPayload();
      v32 = type metadata accessor for AddContactSheet();
      *(a5 + v32[5]) = v31;
      *(a5 + v32[6]) = 0;
      v33 = (a5 + v32[7]);
      v34 = v42;
      *v33 = v43;
      v33[1] = v34;
      v35 = (a5 + v32[8]);
      *v35 = v25;
      v35[1] = v27;
      v36 = (a5 + v32[9]);
      *v36 = sub_1BD2D6220;
      v36[1] = v28;
      v37 = a5 + v32[10];
      v49 = 0;
      v50 = 0xE000000000000000;
      v38 = v45;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE051694();
      v39 = v52;
      *v37 = v51;
      *(v37 + 2) = v39;
      v40 = a5 + v32[11];
      LOBYTE(v49) = 0;
      result = sub_1BE051694();
      v41 = *(&v51 + 1);
      *v40 = v51;
      *(v40 + 1) = v41;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD2D2EB8(void *a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    v6 = a1;
    sub_1BE04B594();

    v7 = *(a2 + 64);
    v8 = *(a2 + 40);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40D1B4(v6, v8, v7);

    a3(v6);
  }
}

id sub_1BD2D2FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a1;
  v48 = a3;
  v44 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v42 - v15;
  v17 = *MEMORY[0x1E69B80F0];
  v18 = *(v8 + 104);
  v18(&v42 - v15, v17, v7, v14);
  v46 = a4;
  v45 = a4;
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v42 = v22;
    v43 = v21;

    v23 = *(v8 + 8);
    v23(v16, v7);
    (v18)(v11, v17, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v23(v11, v7);
      v28 = swift_allocObject();
      v29 = v48;
      v30 = v44;
      *(v28 + 2) = v47;
      *(v28 + 3) = v30;
      v31 = v46;
      *(v28 + 4) = v29;
      *(v28 + 5) = v31;
      *a5 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
      swift_storeEnumTagMultiPayload();
      v32 = type metadata accessor for AddContactSheet();
      *(a5 + v32[5]) = v31;
      *(a5 + v32[6]) = 1;
      v33 = (a5 + v32[7]);
      v34 = v42;
      *v33 = v43;
      v33[1] = v34;
      v35 = (a5 + v32[8]);
      *v35 = v25;
      v35[1] = v27;
      v36 = (a5 + v32[9]);
      *v36 = sub_1BD2D61CC;
      v36[1] = v28;
      v37 = a5 + v32[10];
      v49 = 0;
      v50 = 0xE000000000000000;
      v38 = v45;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE051694();
      v39 = v52;
      *v37 = v51;
      *(v37 + 2) = v39;
      v40 = a5 + v32[11];
      LOBYTE(v49) = 0;
      result = sub_1BE051694();
      v41 = *(&v51 + 1);
      *v40 = v51;
      *(v40 + 1) = v41;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD2D3330(void *a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    v6 = a1;
    sub_1BE04B594();

    v7 = *(a2 + 40);
    v8 = *(a2 + 80);
    v9 = v7;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40D604(v6, v9, v8);

    a3(v6);
  }
}

void sub_1BD2D3474(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x1E69B80F0], v12, v15);
  v18 = PKPassKitBundle();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE04B6F4();
    v22 = v21;

    (*(v13 + 8))(v17, v12);
    swift_getKeyPath();
    v45 = a1;
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    v23 = a1[12];
    v24 = swift_allocObject();
    *(v24 + 2) = a1;
    *(v24 + 3) = a2;
    v25 = v44;
    *(v24 + 4) = v43;
    *(v24 + 5) = v25;
    *a5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for AddPostalAddressSheet();
    v27 = v26[7];
    v28 = (a5 + v26[5]);
    *v28 = v20;
    v28[1] = v22;
    v29 = (a5 + v26[6]);
    *v29 = 0;
    v29[1] = 0;
    *(a5 + v27) = 1;
    *(a5 + v26[8]) = 0;
    v30 = (a5 + v26[10]);
    *v30 = sub_1BD2D622C;
    v30[1] = v24;
    v31 = objc_opt_self();
    v32 = v23;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v33 = [v31 currentLocale];
    sub_1BE04B064();

    type metadata accessor for AddressEditingModel();
    swift_allocObject();
    sub_1BD840B14(v11);
    if (v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v45 = v23;
      v34 = v32;
      swift_retain_n();
      v35 = v34;
      sub_1BE04D8C4();
      sub_1BD20AA3C();

      swift_getKeyPath();
      swift_getKeyPath();
      v36 = sub_1BE04D8A4();
      v38 = *v37;
      *v37 = v23;

      v36(&v45, 0);
    }

    v39 = (a5 + v26[9]);
    sub_1BD2D4ADC(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
    v40 = sub_1BE04E954();
    v42 = v41;

    *v39 = v40;
    v39[1] = v42;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2D38F0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a1)
  {
    swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    v7 = a1;
    sub_1BE04B594();

    v8 = *(a2 + 48);
    v9 = *(a2 + 40);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40CA78(v7, 1, v9, v8);

    a4(v7);
  }
}

id sub_1BD2D3A74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_1BD2D3B2C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40252C(v1);
}

id sub_1BD2D3B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_1BD2D3C14(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40566C(v1);
}

uint64_t sub_1BD2D3C44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE04B594();

  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_1BE048C84();
}

uint64_t sub_1BD2D3D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)())
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  a7();
}

uint64_t sub_1BD2D3EC8(uint64_t a1)
{
  v2 = sub_1BE04E784();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F2F4();
}

uint64_t sub_1BD2D3FE0(uint64_t a1)
{
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_1BE048964();
  v7 = [v6 currentLocale];
  sub_1BE04B064();

  type metadata accessor for AddressEditingModel();
  swift_allocObject();
  sub_1BD840B14(v5);
  swift_getKeyPath();
  v16[0] = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v8 = *(a1 + 96);
  v9 = v8;

  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16[0] = v8;
    v10 = v9;
    swift_retain_n();
    v11 = v10;
    sub_1BE04D8C4();
    sub_1BD20AA3C();

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_1BE04D8A4();
    v14 = *v13;
    *v13 = v8;

    v12(v16, 0);
  }

  return a1;
}

double sub_1BD2D4244@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1BE051694();
  v19 = v26;
  v20 = v27;
  *&v22 = 0;
  BYTE8(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051694();
  v18 = v26;
  v6 = v28;
  v36 = v27;
  swift_getKeyPath();
  v26 = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();

  v7 = *(a1 + 48);
  sub_1BE048964();

  swift_getKeyPath();
  v26 = v7;
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation);
  sub_1BE048964();
  sub_1BE04B594();

  v8 = *(v7 + 32);
  v9 = v8;

  if (v8)
  {
    v17 = a2;
    swift_getKeyPath();
    v26 = v7;
    sub_1BE04B594();

    swift_beginAccess();
    v10 = *(v7 + 40);
    sub_1BE048C84();
    v11 = sub_1BD2242A4(v9, v10);
    v13 = v12;

    if (v13)
    {
      a2 = v17;
      v11 = v18;
    }

    else
    {

      v6 = 0;
      v36 = 0;
      a2 = v17;
    }
  }

  else
  {
    v11 = v18;
  }

  *&v22 = a1;
  BYTE8(v22) = v19;
  *(&v22 + 9) = v37[0];
  HIDWORD(v22) = *(v37 + 3);
  *&v23 = v27;
  *(&v23 + 1) = a2;
  *&v24 = v7;
  *(&v24 + 1) = v11;
  LOBYTE(v25) = v36;
  *(&v25 + 1) = *v35;
  DWORD1(v25) = *&v35[3];
  *(&v25 + 1) = v6;
  v26 = a1;
  LOBYTE(v27) = v19;
  *(&v27 + 1) = v37[0];
  HIDWORD(v27) = *(v37 + 3);
  v28 = v20;
  v29 = a2;
  v30 = v7;
  v31 = v11;
  v32 = v36;
  *v33 = *v35;
  *&v33[3] = *&v35[3];
  v34 = v6;
  sub_1BD2D4B24(&v22, v21);
  sub_1BD2D4B5C(&v26);
  v14 = v23;
  *a3 = v22;
  a3[1] = v14;
  result = *&v24;
  v16 = v25;
  a3[2] = v24;
  a3[3] = v16;
  return result;
}

uint64_t sub_1BD2D4564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051694();
  v4 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051694();
  v5 = v14;
  v6 = v15;
  v7 = v16;
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();

  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  sub_1BE048964();
  sub_1BE048964();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v11 = sub_1BD2267E8(a1, a1);
    v13 = v12;

    if (v13)
    {
      v4 = v15;
      v6 = v15;
      v5 = v14;
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v4 = v15;
      v5 = v11;
    }
  }

  *a2 = a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1BD2D47D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051694();
  v4 = v14;
  v5 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28);
  sub_1BE051694();
  v6 = v15;
  v7 = v16;
  swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();

  v8 = *(a1 + 80);
  v9 = *(a1 + 40);
  sub_1BE048964();
  sub_1BE048964();
  swift_retain_n();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v11 = sub_1BD2267E8(a1, a1);
    v13 = v12;

    if ((v13 & 1) == 0)
    {

      v7 = 0;
      v4 = v14;
      v5 = v15;
      v6 = 0;
      goto LABEL_6;
    }

    v4 = v14;
    v5 = v15;
    v6 = v15;
  }

  v11 = v14;
LABEL_6:
  *a2 = a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v11;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1BD2D4A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2D4ADC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD2D4BC4()
{
  type metadata accessor for EmailAddresses();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v2 <= 0x3F)
      {
        sub_1BD2D4E2C(319, &qword_1EBD40C58, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BD2D4CC0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD2D4CC0()
{
  if (!qword_1EBD40C60)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35DA8);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40C60);
    }
  }
}

void sub_1BD2D4D90()
{
  sub_1BD2D4E2C(319, &qword_1EBD40C80, type metadata accessor for WalletSettingsModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD2D4E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD2D4E90()
{
  result = qword_1EBD40C88;
  if (!qword_1EBD40C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C90);
    sub_1BD0DE4F4(&qword_1EBD40BB8, &qword_1EBD40BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40C88);
  }

  return result;
}

unint64_t sub_1BD2D5018()
{
  result = qword_1EBD40CA8;
  if (!qword_1EBD40CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C98);
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CA8);
  }

  return result;
}

unint64_t sub_1BD2D5100()
{
  result = qword_1EBD40CC0;
  if (!qword_1EBD40CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CC0);
  }

  return result;
}

void sub_1BD2D515C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = *(v5 + 16);
  if (v0)
  {
    v1 = 0;
    while (v1 < *(v5 + 16))
    {
      v2 = *(v5 + 8 * v1 + 32);
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      v3 = v2;
      v4 = sub_1BE053074();

      if ((v4 & 1) == 0 && v0 != ++v1)
      {
        continue;
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0);
    sub_1BE0516B4();
  }
}

uint64_t sub_1BD2D52F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2D5394()
{
  result = qword_1EBD40D10;
  if (!qword_1EBD40D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D08);
    sub_1BD2D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40D10);
  }

  return result;
}

unint64_t sub_1BD2D5420()
{
  result = qword_1EBD40D18;
  if (!qword_1EBD40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40D18);
  }

  return result;
}

uint64_t sub_1BD2D547C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2D54E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD2D5544(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD2CEF0C(a1, a2, v6);
}

uint64_t objectdestroy_118Tm()
{
  v1 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E784();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD2D5748(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD2D57F4()
{
  result = qword_1EBD40DB0;
  if (!qword_1EBD40DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA0);
    sub_1BD2D5018();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DB0);
  }

  return result;
}

unint64_t sub_1BD2D58AC()
{
  result = qword_1EBD40DB8;
  if (!qword_1EBD40DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DB8);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

unint64_t sub_1BD2D5A00()
{
  result = qword_1EBD40DD0;
  if (!qword_1EBD40DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0);
    sub_1BD0DE4F4(&qword_1EBD40DD8, &qword_1EBD40DE0);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DD0);
  }

  return result;
}

unint64_t sub_1BD2D5AE8()
{
  result = qword_1EBD40DE8;
  if (!qword_1EBD40DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DE8);
  }

  return result;
}

unint64_t sub_1BD2D5B78()
{
  result = qword_1EBD40E08;
  if (!qword_1EBD40E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28);
    sub_1BD2D52F8(&qword_1EBD40CD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E08);
  }

  return result;
}

uint64_t objectdestroy_157Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1BD2D5CD8()
{
  result = qword_1EBD40E30;
  if (!qword_1EBD40E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20);
    sub_1BD2D5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E30);
  }

  return result;
}

unint64_t sub_1BD2D5D5C()
{
  result = qword_1EBD40E38;
  if (!qword_1EBD40E38)
  {
    sub_1BD0E5E8C(255, &qword_1EBD456C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E38);
  }

  return result;
}

unint64_t sub_1BD2D5DC4()
{
  result = qword_1EBD40E40;
  if (!qword_1EBD40E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E28);
    sub_1BD2D5E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E40);
  }

  return result;
}

unint64_t sub_1BD2D5E48()
{
  result = qword_1EBD40E48;
  if (!qword_1EBD40E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E50);
    sub_1BD2D5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E48);
  }

  return result;
}

unint64_t sub_1BD2D5ECC()
{
  result = qword_1EBD40E58;
  if (!qword_1EBD40E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20);
    sub_1BD2D5CD8();
    swift_getOpaqueTypeConformance2();
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E58);
  }

  return result;
}

unint64_t sub_1BD2D5FE4()
{
  result = qword_1EBD40E80;
  if (!qword_1EBD40E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E80);
  }

  return result;
}

unint64_t sub_1BD2D6090()
{
  result = qword_1EBD40EA0;
  if (!qword_1EBD40EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EA8);
    sub_1BD0DE4F4(&qword_1EBD40E68, &qword_1EBD40E18);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40EA0);
  }

  return result;
}

uint64_t objectdestroy_202Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for AccountBalanceInterestView()
{
  result = qword_1EBD40ED0;
  if (!qword_1EBD40ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2D62C0()
{
  sub_1BD2D63D4();
  if (v0 <= 0x3F)
  {
    sub_1BD2D6468();
    if (v1 <= 0x3F)
    {
      sub_1BD2D64FC(319, &qword_1EBD40EF8, type metadata accessor for AccountBalance, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD2D64FC(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2D63D4()
{
  if (!qword_1EBD40EE0)
  {
    type metadata accessor for AccountModel();
    sub_1BD2D9A6C(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40EE0);
    }
  }
}

void sub_1BD2D6468()
{
  if (!qword_1EBD40EE8)
  {
    type metadata accessor for AccountDailyCash();
    sub_1BD2D9A6C(&qword_1EBD40EF0, type metadata accessor for AccountDailyCash);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40EE8);
    }
  }
}

void sub_1BD2D64FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD2D657C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F00);
  MEMORY[0x1EEE9AC00](v28[0], v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F08);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F10);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v28 - v12;
  v14 = sub_1BE04EB24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccountBalanceInterestView();
  sub_1BD70A2A0(v18);
  v19 = sub_1BE04EB14();
  (*(v15 + 8))(v18, v14);
  v20 = sub_1BE04F7C4();
  if (v19)
  {
    *v13 = v20;
    *(v13 + 1) = 0;
    v13[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F40);
    sub_1BD2D690C(v2, &v13[*(v21 + 44)]);
    KeyPath = swift_getKeyPath();
    v23 = &v13[*(v10 + 36)];
    *v23 = KeyPath;
    v23[1] = 0x3FE0000000000000;
    v24 = &qword_1EBD40F10;
    sub_1BD0DE19C(v13, v9, &qword_1EBD40F10);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00);
    sub_1BE04F9A4();
    v25 = v13;
  }

  else
  {
    *v5 = v20;
    *(v5 + 1) = 0;
    v5[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F18);
    sub_1BD2D8244(v2, &v5[*(v26 + 44)]);
    v24 = &qword_1EBD40F00;
    sub_1BD0DE19C(v5, v9, &qword_1EBD40F00);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00);
    sub_1BE04F9A4();
    v25 = v5;
  }

  return sub_1BD0DE53C(v25, v24);
}

id sub_1BD2D690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a1;
  v170 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F48);
  MEMORY[0x1EEE9AC00](v165, v2);
  v167 = v148 - v3;
  v160 = sub_1BE04BD74();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v4);
  v158 = v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F50);
  MEMORY[0x1EEE9AC00](v166, v6);
  v151 = v148 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F58);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v169 = v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v168 = v148 - v13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F60);
  MEMORY[0x1EEE9AC00](v157, v14);
  v152 = (v148 - v15);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F68);
  MEMORY[0x1EEE9AC00](v153, v16);
  v155 = v148 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v154, v18);
  v150 = v148 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v156 = v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v171 = v148 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F70);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v164 = v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v174 = v148 - v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v161, v32);
  v163 = v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v148 - v36;
  sub_1BD2D7AE0();
  v175 = v38;
  v176 = v39;
  v172 = sub_1BD0DDEBC();
  v40 = sub_1BE0506C4();
  v42 = v41;
  v44 = v43;
  sub_1BE0502A4();
  v45 = sub_1BE0505F4();
  v47 = v46;
  v49 = v48;

  sub_1BD0DDF10(v40, v42, v44 & 1);

  sub_1BE051494();
  v50 = sub_1BE050564();
  v52 = v51;
  LOBYTE(v40) = v53;
  v55 = v54;

  v56 = v49 & 1;
  v57 = v173;
  sub_1BD0DDF10(v45, v47, v56);

  v175 = v50;
  v176 = v52;
  v177 = v40 & 1;
  v178 = v55;
  sub_1BE052434();
  v162 = v37;
  sub_1BE050DE4();

  sub_1BD0DDF10(v50, v52, v40 & 1);

  v58 = *(type metadata accessor for AccountBalanceInterestView() + 24);
  v59 = v171;
  sub_1BD0DE19C(v57 + v58, v171, &qword_1EBD40EC8);
  v60 = type metadata accessor for AccountBalance(0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v63 = v61 + 48;
  v64 = v62(v59, 1, v60);
  sub_1BD0DE53C(v59, &qword_1EBD40EC8);
  if (v64 == 1)
  {
    v65 = sub_1BE04F504();
    v66 = v152;
    *v152 = v65;
    *(v66 + 8) = 0;
    *(v66 + 16) = 1;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F78);
    sub_1BD2D93B8((v66 + *(v67 + 44)));
    sub_1BD0DE19C(v66, v155, &qword_1EBD40F60);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D99B8(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &unk_1BE0C4010, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v66, &qword_1EBD40F60);
    goto LABEL_5;
  }

  v148[1] = v63;
  v149 = v62;
  v152 = v60;
  v171 = v58;
  sub_1BD2D7DA8();
  v175 = v68;
  v176 = v69;
  v70 = sub_1BE0506C4();
  v72 = v71;
  v74 = v73;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
  if (result)
  {
    sub_1BE050484();
    v76 = sub_1BE0505F4();
    v78 = v77;
    v80 = v79;

    sub_1BD0DDF10(v70, v72, v74 & 1);

    sub_1BE050364();
    v81 = sub_1BE050544();
    v83 = v82;
    v85 = v84;
    sub_1BD0DDF10(v76, v78, v80 & 1);

    sub_1BE051224();
    v86 = sub_1BE050564();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    sub_1BD0DDF10(v81, v83, v85 & 1);

    KeyPath = swift_getKeyPath();
    v175 = v86;
    v176 = v88;
    v177 = v90 & 1;
    v178 = v92;
    v179 = *&KeyPath;
    v180 = 1;
    v181 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    v94 = v150;
    sub_1BE050DE4();

    sub_1BD0DDF10(v86, v88, v90 & 1);

    sub_1BD0DE19C(v94, v155, &qword_1EBD3C0E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D99B8(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &unk_1BE0C4010, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v94, &qword_1EBD3C0E8);
    v57 = v173;
    v58 = v171;
    v60 = v152;
    v62 = v149;
LABEL_5:
    v95 = v156;
    sub_1BD0DE19C(v57 + v58, v156, &qword_1EBD40EC8);
    v96 = v62(v95, 1, v60);
    sub_1BD0DE53C(v95, &qword_1EBD40EC8);
    if (v96 == 1)
    {
      v175 = sub_1BD2D8038();
      v176 = v97;
      v98 = sub_1BE0506C4();
      v100 = v99;
      v102 = v101;
      sub_1BE050454();
      v103 = sub_1BE0505F4();
      v105 = v104;
      v107 = v106;
      v109 = v108;

      sub_1BD0DDF10(v98, v100, v102 & 1);

      v175 = v103;
      v176 = v105;
      v177 = v107 & 1;
      v178 = v109;
      sub_1BE052434();
      v110 = v163;
      sub_1BE050DE4();

      sub_1BD0DDF10(v103, v105, v107 & 1);

      sub_1BD0DE19C(v110, v167, &qword_1EBD452C0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2D99B8(&qword_1EBD40F88, &qword_1EBD40F50, &unk_1BE0C9B50, sub_1BD2D9AB4);
      sub_1BD1103C8();
      v111 = v168;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v110, &qword_1EBD452C0);
LABEL_21:
      v141 = v162;
      sub_1BD0DE19C(v162, v110, &qword_1EBD452C0);
      v142 = v174;
      v143 = v164;
      sub_1BD0DE19C(v174, v164, &qword_1EBD40F70);
      v144 = v169;
      sub_1BD0DE19C(v111, v169, &qword_1EBD40F58);
      v145 = v170;
      sub_1BD0DE19C(v110, v170, &qword_1EBD452C0);
      v146 = v111;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FA0);
      sub_1BD0DE19C(v143, v145 + *(v147 + 48), &qword_1EBD40F70);
      sub_1BD0DE19C(v144, v145 + *(v147 + 64), &qword_1EBD40F58);
      sub_1BD0DE53C(v146, &qword_1EBD40F58);
      sub_1BD0DE53C(v142, &qword_1EBD40F70);
      sub_1BD0DE53C(v141, &qword_1EBD452C0);
      sub_1BD0DE53C(v144, &qword_1EBD40F58);
      sub_1BD0DE53C(v143, &qword_1EBD40F70);
      return sub_1BD0DE53C(v110, &qword_1EBD452C0);
    }

    (*(v159 + 104))(v158, *MEMORY[0x1E69B80E0], v160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v113 = v175;
    if (v175)
    {
      v114 = [v175 minimalFormattedStringValue];

      if (v114)
      {
        v113 = sub_1BE052434();
        v116 = v115;

LABEL_12:
        *(v112 + 56) = MEMORY[0x1E69E6158];
        *(v112 + 64) = sub_1BD110550();
        if (v116)
        {
          v117 = v113;
        }

        else
        {
          v117 = 0;
        }

        v118 = 0xE000000000000000;
        if (v116)
        {
          v118 = v116;
        }

        *(v112 + 32) = v117;
        *(v112 + 40) = v118;
        v119 = v158;
        v120 = sub_1BE04B714();
        v122 = v121;

        (*(v159 + 8))(v119, v160);
        v175 = v120;
        v176 = v122;
        v123 = sub_1BE0506C4();
        v125 = v124;
        LOBYTE(v122) = v126;
        sub_1BE050454();
        v127 = sub_1BE0505F4();
        v129 = v128;
        v131 = v130;

        sub_1BD0DDF10(v123, v125, v122 & 1);

        sub_1BE051494();
        v132 = sub_1BE050564();
        v134 = v133;
        v136 = v135;
        v138 = v137;

        sub_1BD0DDF10(v127, v129, v131 & 1);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        if (v175)
        {

          v139 = 1.0;
        }

        else
        {
          v139 = 0.0;
        }

        v175 = v132;
        v176 = v134;
        v177 = v136 & 1;
        v178 = v138;
        v179 = v139;
        sub_1BE052434();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F98);
        sub_1BD2D9AB4();
        v140 = v151;
        sub_1BE050DE4();

        sub_1BD0DDF10(v132, v134, v136 & 1);

        sub_1BD0DE19C(v140, v167, &qword_1EBD40F50);
        swift_storeEnumTagMultiPayload();
        sub_1BD2D99B8(&qword_1EBD40F88, &qword_1EBD40F50, &unk_1BE0C9B50, sub_1BD2D9AB4);
        sub_1BD1103C8();
        v111 = v168;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v140, &qword_1EBD40F50);
        v110 = v163;
        goto LABEL_21;
      }

      v113 = 0;
    }

    v116 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1BD2D7AE0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AccountBalance(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccountBalanceInterestView();
  sub_1BD0DE19C(v0 + *(v15 + 24), v9, &qword_1EBD40EC8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD40EC8);
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80E0], v1);
    v16 = PKPassKitBundle();
    if (v16)
    {
      v17 = v16;
      sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1BD0E5DC0(v9, v14);
    v18 = sub_1BE04AE64();
    v19 = PKMediumDateString();

    if (v19)
    {
      sub_1BE052434();

      sub_1BD0E5E24(v14);
      return;
    }
  }

  __break(1u);
}

void sub_1BD2D7DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = type metadata accessor for AccountBalance(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = v17;
  if (v17)
  {
    v11 = [v17 currencyCode];

    if (v11)
    {
      v12 = type metadata accessor for AccountBalanceInterestView();
      sub_1BD0DE19C(v0 + *(v12 + 24), v4, &qword_1EBD40EC8);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_1BD0DE53C(v4, &qword_1EBD40EC8);
      }

      else
      {
        sub_1BD0E5DC0(v4, v9);
        v13 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
        v14 = PKCurrencyAmountMake();

        if (v14)
        {
          v15 = [v14 formattedStringValue];

          if (v15)
          {
            sub_1BE052434();

            sub_1BD0E5E24(v9);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD2D8038()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v5 = v14;
  if (!v14)
  {
    return 0;
  }

  v6 = [v14 formattedAPY];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1BE052434();
  v9 = v8;

  (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B69E0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1BD110550();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = sub_1BE04B714();

  (*(v1 + 8))(v4, v0);
  return v11;
}

id sub_1BD2D8244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v124 = sub_1BE04BD74();
  v116 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v3);
  v115 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F50);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v121 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v120 = &v108 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F60);
  MEMORY[0x1EEE9AC00](v114, v11);
  v13 = &v108 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FD0);
  MEMORY[0x1EEE9AC00](v113, v14);
  v16 = &v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v112 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v108 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FD8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v119 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v108 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FE0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v118 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v108 - v36;
  *v37 = sub_1BE04F504();
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FE8) + 44);
  v117 = v37;
  v39 = &v37[v38];
  v40 = a1;
  sub_1BD2D8E34(a1, v39);
  v41 = type metadata accessor for AccountBalanceInterestView();
  sub_1BD0DE19C(a1 + *(v41 + 24), v23, &qword_1EBD40EC8);
  v42 = type metadata accessor for AccountBalance(0);
  LODWORD(a1) = (*(*(v42 - 8) + 48))(v23, 1, v42);
  sub_1BD0DE53C(v23, &qword_1EBD40EC8);
  v123 = v30;
  if (a1 == 1)
  {
    *v13 = sub_1BE04F504();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F78);
    sub_1BD2D93B8(&v13[*(v43 + 44)]);
    sub_1BD0DE19C(v13, v16, &qword_1EBD40F60);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v13, &qword_1EBD40F60);
  }

  else
  {
    v109 = v16;
    v110 = v17;
    v111 = v40;
    sub_1BD2D7DA8();
    v125 = v44;
    v126 = v45;
    sub_1BD0DDEBC();
    v46 = sub_1BE0506C4();
    v48 = v47;
    v50 = v49;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_1BE050484();
    v52 = sub_1BE0505F4();
    v54 = v53;
    v56 = v55;

    sub_1BD0DDF10(v46, v48, v50 & 1);

    sub_1BE050364();
    v57 = sub_1BE050544();
    v59 = v58;
    v61 = v60;
    sub_1BD0DDF10(v52, v54, v56 & 1);

    sub_1BE051224();
    v62 = sub_1BE050564();
    v64 = v63;
    v66 = v65;
    v68 = v67;

    sub_1BD0DDF10(v57, v59, v61 & 1);

    v125 = v62;
    v126 = v64;
    v127 = v66 & 1;
    v128 = v68;
    sub_1BE052434();
    v69 = v112;
    sub_1BE050DE4();

    sub_1BD0DDF10(v62, v64, v66 & 1);

    sub_1BD0DE19C(v69, v109, &qword_1EBD452C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v69, &qword_1EBD452C0);
  }

  v70 = MEMORY[0x1E69E6158];
  v72 = v115;
  v71 = v116;
  (*(v116 + 104))(v115, *MEMORY[0x1E69B80E0], v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v74 = v125;
  if (!v125)
  {
    goto LABEL_9;
  }

  v75 = [v125 minimalFormattedStringValue];

  if (!v75)
  {
    v74 = 0;
LABEL_9:
    v77 = 0;
    goto LABEL_10;
  }

  v74 = sub_1BE052434();
  v77 = v76;

LABEL_10:
  *(v73 + 56) = v70;
  *(v73 + 64) = sub_1BD110550();
  if (v77)
  {
    v78 = v74;
  }

  else
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v77)
  {
    v79 = v77;
  }

  *(v73 + 32) = v78;
  *(v73 + 40) = v79;
  v80 = sub_1BE04B714();
  v82 = v81;

  (*(v71 + 8))(v72, v124);
  v125 = v80;
  v126 = v82;
  sub_1BD0DDEBC();
  v83 = sub_1BE0506C4();
  v85 = v84;
  LOBYTE(v80) = v86;
  sub_1BE050454();
  v87 = sub_1BE0505F4();
  v89 = v88;
  v91 = v90;

  sub_1BD0DDF10(v83, v85, v80 & 1);

  sub_1BE051494();
  v92 = sub_1BE050564();
  v94 = v93;
  v96 = v95;
  v98 = v97;

  sub_1BD0DDF10(v87, v89, v91 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v125)
  {

    v99 = 1.0;
  }

  else
  {
    v99 = 0.0;
  }

  v125 = v92;
  v126 = v94;
  v127 = v96 & 1;
  v128 = v98;
  v129 = v99;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F98);
  sub_1BD2D9AB4();
  v100 = v120;
  sub_1BE050DE4();

  sub_1BD0DDF10(v92, v94, v96 & 1);

  v102 = v117;
  v101 = v118;
  sub_1BD0DE19C(v117, v118, &qword_1EBD40FE0);
  v103 = v123;
  v104 = v119;
  sub_1BD0DE19C(v123, v119, &qword_1EBD40FD8);
  v105 = v121;
  sub_1BD0DE19C(v100, v121, &qword_1EBD40F50);
  v106 = v122;
  sub_1BD0DE19C(v101, v122, &qword_1EBD40FE0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FF0);
  sub_1BD0DE19C(v104, v106 + *(v107 + 48), &qword_1EBD40FD8);
  sub_1BD0DE19C(v105, v106 + *(v107 + 64), &qword_1EBD40F50);
  sub_1BD0DE53C(v100, &qword_1EBD40F50);
  sub_1BD0DE53C(v103, &qword_1EBD40FD8);
  sub_1BD0DE53C(v102, &qword_1EBD40FE0);
  sub_1BD0DE53C(v105, &qword_1EBD40F50);
  sub_1BD0DE53C(v104, &qword_1EBD40FD8);
  return sub_1BD0DE53C(v101, &qword_1EBD40FE0);
}

uint64_t sub_1BD2D8E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v67 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v73 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v65 - v16;
  sub_1BD2D7AE0();
  v74 = v18;
  v75 = v19;
  v65 = sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v24 = v23;
  sub_1BE0502A4();
  v25 = sub_1BE0505F4();
  v27 = v26;
  v29 = v28;

  sub_1BD0DDF10(v20, v22, v24 & 1);

  sub_1BE051494();
  v30 = sub_1BE050564();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;

  sub_1BD0DDF10(v25, v27, v29 & 1);

  v74 = v30;
  v75 = v32;
  v36 = v20 & 1;
  v76 = v20 & 1;
  v77 = v35;
  sub_1BE052434();
  v37 = v17;
  sub_1BE050DE4();
  v38 = v66;

  sub_1BD0DDF10(v30, v32, v36);

  v39 = type metadata accessor for AccountBalanceInterestView();
  v40 = v67;
  sub_1BD0DE19C(v38 + *(v39 + 24), v67, &qword_1EBD40EC8);
  v41 = type metadata accessor for AccountBalance(0);
  v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
  sub_1BD0DE53C(v40, &qword_1EBD40EC8);
  v43 = 1;
  if (v42 == 1)
  {
    v74 = sub_1BD2D8038();
    v75 = v44;
    v45 = sub_1BE0506C4();
    v47 = v46;
    v49 = v48;
    sub_1BE0502A4();
    v50 = sub_1BE0505F4();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    sub_1BD0DDF10(v45, v47, v49 & 1);

    v74 = v50;
    v75 = v52;
    v76 = v54 & 1;
    v77 = v56;
    sub_1BE052434();
    v57 = v72;
    sub_1BE050DE4();

    sub_1BD0DDF10(v50, v52, v54 & 1);

    sub_1BD0DE204(v57, v73, &qword_1EBD452C0);
    v43 = 0;
  }

  v58 = v73;
  (*(v68 + 56))(v73, v43, 1, v69);
  v59 = v72;
  sub_1BD0DE19C(v37, v72, &qword_1EBD452C0);
  v60 = v70;
  sub_1BD0DE19C(v58, v70, &unk_1EBD5BB60);
  v61 = v71;
  sub_1BD0DE19C(v59, v71, &qword_1EBD452C0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FF8);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_1BD0DE19C(v60, v61 + *(v62 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v58, &unk_1EBD5BB60);
  sub_1BD0DE53C(v37, &qword_1EBD452C0);
  sub_1BD0DE53C(v60, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v59, &qword_1EBD452C0);
}

uint64_t sub_1BD2D93B8@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FA8);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FB0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FB8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD396CC8(v48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v49 == 1)
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v40 = v49;
    v39 = v51;
    v38 = v53;
    v37 = v54;
    v47 = 1;
    v46 = v50;
    v45 = v52;
    sub_1BE04E4F4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v21 = v44;
    v22 = &v13[*(v6 + 36)];
    *v22 = 0;
    v22[8] = v21;
    v23 = v47;
    v24 = v46;
    v41 = v2;
    v25 = v45;
    sub_1BD0DE19C(v13, v9, &qword_1EBD40FB0);
    *v5 = 0;
    v5[8] = v23;
    *(v5 + 2) = v40;
    v5[24] = v24;
    *(v5 + 4) = v39;
    v5[40] = v25;
    v26 = v37;
    *(v5 + 6) = v38;
    *(v5 + 7) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FC8);
    sub_1BD0DE19C(v9, &v5[*(v27 + 48)], &qword_1EBD40FB0);
    sub_1BD0DE53C(v13, &qword_1EBD40FB0);
    sub_1BD0DE53C(v9, &qword_1EBD40FB0);
    sub_1BD0DE204(v5, v20, &qword_1EBD40FA8);
    (*(v43 + 56))(v20, 0, 1, v41);
  }

  else
  {
    (*(v43 + 56))(v20, 1, 1, v2);
  }

  v28 = v48[0];
  v29 = v48[1];
  v30 = v48[2];
  v31 = v48[3];
  v32 = v48[4];
  v33 = v48[5];
  v34 = v42;
  sub_1BD0DE19C(v20, v42, &qword_1EBD40FB8);
  *a1 = v28;
  a1[1] = v29;
  a1[2] = v30;
  a1[3] = v31;
  a1[4] = v32;
  a1[5] = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FC0);
  sub_1BD0DE19C(v34, a1 + *(v35 + 48), &qword_1EBD40FB8);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE53C(v20, &qword_1EBD40FB8);
  sub_1BD0DE53C(v34, &qword_1EBD40FB8);
}

unint64_t sub_1BD2D98D4()
{
  result = qword_1EBD40F20;
  if (!qword_1EBD40F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40F10);
    sub_1BD0DE4F4(&qword_1EBD40F28, &qword_1EBD40F30);
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40F20);
  }

  return result;
}

uint64_t sub_1BD2D99B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD2D9A6C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD2D9A6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD2D9AB4()
{
  result = qword_1EBD40F90;
  if (!qword_1EBD40F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40F90);
  }

  return result;
}

unint64_t sub_1BD2D9B38()
{
  result = qword_1EBD41000;
  if (!qword_1EBD41000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41008);
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41000);
  }

  return result;
}

uint64_t type metadata accessor for PKDashboardRewardsBalanceView()
{
  result = qword_1EBD41010;
  if (!qword_1EBD41010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2D9C64()
{
  sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD2D9D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for PKDashboardRewardsBalanceView();
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BE04FF64();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41020);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41028);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v54 - v17;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41030);
  sub_1BD2DA210(v2, &v13[*(v19 + 44)]);
  sub_1BE04FF44();
  v20 = sub_1BD0DE4F4(&qword_1EBD41038, &qword_1EBD41020);
  sub_1BE050D14();
  (*(v6 + 8))(v9, v54);
  sub_1BD0DE53C(v13, &qword_1EBD41020);
  sub_1BE052434();
  v60 = v10;
  v61 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v55;
  sub_1BE050DE4();

  (*(v15 + 8))(v18, v14);
  LOBYTE(v13) = sub_1BE050234();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41040) + 36);
  *v30 = v13;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  LOBYTE(v13) = sub_1BE050204();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41048) + 36);
  *v39 = v13;
  *(v39 + 8) = v32;
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  *(v39 + 32) = v38;
  *(v39 + 40) = 0;
  LOBYTE(v13) = sub_1BE050224();
  sub_1BE04E1F4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41050) + 36);
  *v48 = v13;
  *(v48 + 8) = v41;
  *(v48 + 16) = v43;
  *(v48 + 24) = v45;
  *(v48 + 32) = v47;
  *(v48 + 40) = 0;
  v49 = v57;
  sub_1BD2DB374(v56, v57);
  v50 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v51 = swift_allocObject();
  sub_1BD2DB3D8(v49, v51 + v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41058);
  v53 = (v21 + *(result + 36));
  *v53 = sub_1BD2DB43C;
  v53[1] = v51;
  v53[2] = 0;
  v53[3] = 0;
  return result;
}

uint64_t sub_1BD2DA210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41060);
  MEMORY[0x1EEE9AC00](v155, v3);
  v158 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v156 = (&v130 - v7);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41068);
  MEMORY[0x1EEE9AC00](v148, v8);
  v147 = &v130 - v9;
  v146 = sub_1BE04F454();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v10);
  v143 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v144 = &v130 - v14;
  v141 = sub_1BE04AE24();
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v15);
  v134 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1BE04AE44();
  v132 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v17);
  v130 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1BE04AE54();
  v137 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v19);
  v133 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1BE04BD74();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v21);
  v131 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41070);
  MEMORY[0x1EEE9AC00](v142, v23);
  v151 = &v130 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41078);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v154 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v159 = &v130 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v153 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v130 - v36;
  v149 = a1;
  v38 = *a1;
  v39 = a1[1];
  v161 = v38;
  v162 = v39;
  v40 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v150 = v40;
  v41 = sub_1BE0506C4();
  v43 = v42;
  v45 = v44;
  sub_1BE050324();
  sub_1BE0503A4();
  sub_1BE0503F4();

  v46 = sub_1BE0505F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_1BD0DDF10(v41, v43, v45 & 1);

  v161 = v46;
  v162 = v48;
  v163 = v50 & 1;
  v164 = v52;
  sub_1BE052434();
  v152 = v37;
  sub_1BE050DE4();
  v53 = v149;

  sub_1BD0DDF10(v46, v48, v50 & 1);

  v54 = v53 + *(type metadata accessor for PKDashboardRewardsBalanceView() + 28);
  v55 = *v54;
  v56 = *(v54 + 1);
  LOBYTE(v161) = v55;
  v162 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v160 == 1)
  {
    v57 = v136;
    v58 = v131;
    v59 = v138;
    (*(v136 + 104))(v131, *MEMORY[0x1E69B8088], v138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1BE0B69E0;
    v61 = v130;
    sub_1BE04AE34();
    v62 = v134;
    sub_1BE04AE14();
    v63 = v133;
    sub_1BE04A144();
    (*(v139 + 8))(v62, v141);
    (*(v132 + 8))(v61, v135);
    *(v60 + 56) = MEMORY[0x1E69E6158];
    *(v60 + 64) = sub_1BD110550();
    sub_1BD2DB570(&qword_1EBD410A8, MEMORY[0x1E69693E8]);
    v64 = v140;
    sub_1BE04AF44();
    (*(v137 + 8))(v63, v64);
    v65 = sub_1BE04B714();
    v67 = v66;

    (*(v57 + 8))(v58, v59);
    v161 = v65;
    v162 = v67;
    v68 = sub_1BE0506C4();
    v70 = v69;
    LOBYTE(v67) = v71;
    sub_1BE050324();
    v72 = sub_1BE0505F4();
    v74 = v73;
    LOBYTE(v63) = v75;

    sub_1BD0DDF10(v68, v70, v67 & 1);

    sub_1BE051494();
    v76 = sub_1BE050564();
    v78 = v77;
    LOBYTE(v70) = v79;
    v81 = v80;

    sub_1BD0DDF10(v72, v74, v63 & 1);

    v161 = v76;
    v162 = v78;
    v163 = v70 & 1;
    v164 = v81;
    sub_1BE052434();
    v82 = v151;
    sub_1BE050DE4();

    sub_1BD0DDF10(v76, v78, v70 & 1);
  }

  else
  {
    v83 = v151;
    v84 = v53[3];
    if (!v84)
    {
      v106 = 1;
      v105 = v159;
      goto LABEL_6;
    }

    v161 = v53[2];
    v162 = v84;
    sub_1BE048C84();
    v85 = sub_1BE0506C4();
    v87 = v86;
    v89 = v88;
    sub_1BE050324();
    v90 = sub_1BE0505F4();
    v92 = v91;
    v94 = v93;

    sub_1BD0DDF10(v85, v87, v89 & 1);

    sub_1BE051494();
    v95 = sub_1BE050564();
    v97 = v96;
    LOBYTE(v87) = v98;
    v100 = v99;

    sub_1BD0DDF10(v90, v92, v94 & 1);

    v161 = v95;
    v162 = v97;
    v163 = v87 & 1;
    v164 = v100;
    sub_1BE052434();
    v82 = v83;
    sub_1BE050DE4();

    sub_1BD0DDF10(v95, v97, v87 & 1);
  }

  v101 = v144;
  sub_1BE04F444();
  v102 = v145;
  v103 = v146;
  (*(v145 + 16))(v143, v101, v146);
  sub_1BD2DB570(&unk_1EBD367A0, MEMORY[0x1E697F260]);
  v104 = sub_1BE04E644();
  (*(v102 + 8))(v101, v103);
  *(v82 + *(v142 + 36)) = v104;
  sub_1BD0DE19C(v82, v147, &qword_1EBD41070);
  swift_storeEnumTagMultiPayload();
  sub_1BD2DB4B8();
  v105 = v159;
  sub_1BE04F9A4();
  sub_1BD0DE53C(v82, &qword_1EBD41070);
  v106 = 0;
LABEL_6:
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41080);
  (*(*(v107 - 8) + 56))(v105, v106, 1, v107);
  v108 = sub_1BE051574();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088);
  v110 = v156;
  v111 = (v156 + *(v109 + 36));
  v112 = v105;
  v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0) + 28);
  v114 = *MEMORY[0x1E69816E0];
  v115 = sub_1BE0515D4();
  (*(*(v115 - 8) + 104))(v111 + v113, v114, v115);
  *v111 = swift_getKeyPath();
  *v110 = v108;
  v116 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v118 = (v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41090) + 36));
  *v118 = KeyPath;
  v118[1] = v116;
  v119 = sub_1BE051494();
  v120 = swift_getKeyPath();
  v121 = (v110 + *(v155 + 36));
  *v121 = v120;
  v121[1] = v119;
  v123 = v152;
  v122 = v153;
  sub_1BD0DE19C(v152, v153, &qword_1EBD452C0);
  v124 = v154;
  sub_1BD0DE19C(v112, v154, &qword_1EBD41078);
  v125 = v158;
  sub_1BD0DE19C(v110, v158, &qword_1EBD41060);
  v126 = v157;
  sub_1BD0DE19C(v122, v157, &qword_1EBD452C0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41098);
  v128 = v126 + v127[12];
  *v128 = 0;
  *(v128 + 8) = 1;
  sub_1BD0DE19C(v124, v126 + v127[16], &qword_1EBD41078);
  sub_1BD0DE19C(v125, v126 + v127[20], &qword_1EBD41060);
  sub_1BD0DE53C(v110, &qword_1EBD41060);
  sub_1BD0DE53C(v159, &qword_1EBD41078);
  sub_1BD0DE53C(v123, &qword_1EBD452C0);
  sub_1BD0DE53C(v125, &qword_1EBD41060);
  sub_1BD0DE53C(v124, &qword_1EBD41078);
  return sub_1BD0DE53C(v122, &qword_1EBD452C0);
}

uint64_t sub_1BD2DB0E8(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21[-v9];
  sub_1BE04AEF4();
  v11 = type metadata accessor for PKDashboardRewardsBalanceView();
  sub_1BE04AE94();
  v12 = sub_1BE04AE74();
  v13 = *(v3 + 8);
  v13(v6, v2);
  result = (v13)(v10, v2);
  if (v12)
  {
    v15 = (a1 + *(v11 + 28));
    v16 = *v15;
    v17 = *(v15 + 1);
    v21[16] = v16;
    v22 = v17;
    v21[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v18 = sub_1BE0516B4();
    MEMORY[0x1BFB3EDF0](v18, 0.5, 1.0, 0.0);
    sub_1BE051D24();

    MEMORY[0x1EEE9AC00](v19, v20);
    *&v21[-16] = a1;
    sub_1BE04E7D4();
  }

  return result;
}

uint64_t sub_1BD2DB2F8()
{
  type metadata accessor for PKDashboardRewardsBalanceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD2DB374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2DB3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2DB43C()
{
  v1 = *(type metadata accessor for PKDashboardRewardsBalanceView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD2DB0E8(v2);
}

unint64_t sub_1BD2DB4B8()
{
  result = qword_1EBD410A0;
  if (!qword_1EBD410A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41070);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410A0);
  }

  return result;
}

uint64_t sub_1BD2DB570(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD2DB5B8()
{
  result = qword_1EBD410B0;
  if (!qword_1EBD410B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41058);
    sub_1BD2DB6A0(&qword_1EBD410B8, &qword_1EBD41050, &unk_1BE0C9E48, sub_1BD2DB670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410B0);
  }

  return result;
}

uint64_t sub_1BD2DB6A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2DB754()
{
  result = qword_1EBD410D0;
  if (!qword_1EBD410D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD410D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41020);
    sub_1BD0DE4F4(&qword_1EBD41038, &qword_1EBD41020);
    swift_getOpaqueTypeConformance2();
    sub_1BD2DB570(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410D0);
  }

  return result;
}

id sub_1BD2DB880()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD22F42C();
  v7 = [v0 amount];
  v8 = [objc_opt_self() zero];
  v9 = sub_1BE053074();

  if ((v9 & 1) == 0)
  {
    v13 = [v1 amount];
    v14 = sub_1BE052404();
    v15 = PKFormattedCurrencyStringFromNumber();

    if (!v15)
    {
      return 0;
    }

    v12 = sub_1BE052434();

    return v12;
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
    return v12;
  }

  __break(1u);
  return result;
}

id sub_1BD2DBAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_presentationConfiguration] = 1;
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_identifier];
  *v8 = 0xD000000000000023;
  v8[1] = 0x80000001BE0C9F50;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_credential] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_primaryPass] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD2DBC7C(void (*a1)(unint64_t, unint64_t, void, uint64_t, double), uint64_t a2)
{
  v5 = sub_1BE04B8D4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - v11;
  v13 = sub_1BE04B944();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04BAC4();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented))
  {
    a1(0xD000000000000011, 0x80000001BE121DD0, 0, 1, v20);
    return;
  }

  v56 = a2;
  if (![*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_primaryPass) isCarKeyPass])
  {
    v29 = 0x2072616320746F6ELL;
    v30 = 0xEB0000000079656BLL;
LABEL_9:
    (a1)(v29, v30, 0, 1);
    return;
  }

  v23 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_credential);
  if (!v23)
  {
    v29 = 0x6564657263206F6ELL;
    v30 = 0xED00006C6169746ELL;
    goto LABEL_9;
  }

  v55 = a1;
  v53 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_context);
  v25 = v23;
  v54 = v24;
  sub_1BE04BC34();
  LOBYTE(v24) = sub_1BE04BAB4();
  v26 = *(v18 + 8);
  v26(v22, v17);
  if (v24)
  {
    v27 = 0x6764697262206E69;
    v28 = 0xE900000000000065;
LABEL_22:
    v55(v27, v28, 0, 1);

    return;
  }

  sub_1BE04BC34();
  v31 = sub_1BE04BA54();
  v26(v22, v17);
  if (v31)
  {
    v32 = "eck returned false for keyId: ";
    v27 = 0xD000000000000012;
LABEL_21:
    v28 = v32 | 0x8000000000000000;
    goto LABEL_22;
  }

  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v57 + 8))(v16, v13);
  v34 = v58;
  v33 = v59;
  (*(v58 + 104))(v8, *MEMORY[0x1E69B7F78], v59);
  v35 = sub_1BE04B8C4();
  v36 = *(v34 + 8);
  v36(v8, v33);
  v36(v12, v33);
  if ((v35 & 1) == 0)
  {
    v32 = "hupPromptPresented";
    v27 = 0xD000000000000018;
    goto LABEL_21;
  }

  v37 = [v25 identifier];
  if (!v37)
  {
LABEL_26:
    v27 = 0xD000000000000026;
    v28 = 0x80000001BE121D40;
    goto LABEL_22;
  }

  v38 = v37;
  v39 = v25;
  v40 = sub_1BE052434();
  v42 = v41;
  v43 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    v25 = v39;
    goto LABEL_26;
  }

  v44 = v40;
  v45 = [objc_allocWithZone(MEMORY[0x1E6993988]) initWithKeyIdentifier_];

  v46 = OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt;
  v47 = v53;
  v48 = *(v53 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt);
  *(v53 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt) = v45;

  v49 = *(v47 + v46);
  if (v49 && ([v49 setDelegate_], (v50 = *(v47 + v46)) != 0))
  {
    v51 = [v50 wantsToPresentHeadUnitPairing];
  }

  else
  {
    v51 = 0;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD00000000000003ELL, 0x80000001BE121D70);
  MEMORY[0x1BFB3F610](v44, v42);

  v55(v51, v60, v61, 2);
}

uint64_t sub_1BD2DC214()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2DC250(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2DC2A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt);
  if (!v1)
  {
    return 2;
  }

  [v1 presentHeadUnitPairingPrompt];
  result = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented) = 1;
  return result;
}

uint64_t sub_1BD2DC3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a1;
  v212 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41190);
  MEMORY[0x1EEE9AC00](v147, v3);
  v142 = &v142 - v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41198);
  MEMORY[0x1EEE9AC00](v144, v5);
  v146 = &v142 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411A0);
  MEMORY[0x1EEE9AC00](v159, v7);
  v148 = &v142 - v8;
  v145 = type metadata accessor for SelectedPaymentOfferActionView();
  MEMORY[0x1EEE9AC00](v145, v9);
  v143 = (&v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  MEMORY[0x1EEE9AC00](v155, v11);
  v149 = (&v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411A8);
  MEMORY[0x1EEE9AC00](v162, v13);
  v164 = &v142 - v14;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411B0);
  MEMORY[0x1EEE9AC00](v156, v15);
  v158 = &v142 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411B8);
  MEMORY[0x1EEE9AC00](v152, v17);
  v153 = &v142 - v18;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411C0);
  MEMORY[0x1EEE9AC00](v157, v19);
  v154 = &v142 - v20;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411C8);
  MEMORY[0x1EEE9AC00](v163, v21);
  v160 = &v142 - v22;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411D0);
  MEMORY[0x1EEE9AC00](v211, v23);
  v165 = &v142 - v24;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411D8);
  MEMORY[0x1EEE9AC00](v151, v25);
  v150 = &v142 - v26;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411E0);
  MEMORY[0x1EEE9AC00](v172, v27);
  v161 = &v142 - v28;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411E8);
  MEMORY[0x1EEE9AC00](v169, v29);
  v171 = &v142 - v30;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411F0);
  MEMORY[0x1EEE9AC00](v186, v31);
  v173 = &v142 - v32;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411F8);
  MEMORY[0x1EEE9AC00](v170, v33);
  v168 = &v142 - v34;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41200);
  v167 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v35);
  v166 = &v142 - v36;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41208);
  MEMORY[0x1EEE9AC00](v174, v37);
  v175 = &v142 - v38;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41210);
  MEMORY[0x1EEE9AC00](v180, v39);
  v177 = &v142 - v40;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41218);
  MEMORY[0x1EEE9AC00](v182, v41);
  v184 = &v142 - v42;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41220);
  MEMORY[0x1EEE9AC00](v178, v43);
  v179 = &v142 - v44;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41228);
  MEMORY[0x1EEE9AC00](v183, v45);
  v181 = &v142 - v46;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41230);
  MEMORY[0x1EEE9AC00](v205, v47);
  v185 = &v142 - v48;
  v192 = type metadata accessor for ShippingMethodSheet();
  MEMORY[0x1EEE9AC00](v192, v49);
  v187 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41238);
  MEMORY[0x1EEE9AC00](v189, v51);
  v191 = &v142 - v52;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41240);
  MEMORY[0x1EEE9AC00](v201, v53);
  v193 = &v142 - v54;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41248);
  MEMORY[0x1EEE9AC00](v190, v55);
  v188 = &v142 - v56;
  v196 = type metadata accessor for PaymentPassMethodSheet(0);
  MEMORY[0x1EEE9AC00](v196, v57);
  v194 = (&v142 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41250);
  MEMORY[0x1EEE9AC00](v208, v59);
  v210 = &v142 - v60;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41258);
  MEMORY[0x1EEE9AC00](v202, v61);
  v204 = &v142 - v62;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41260);
  MEMORY[0x1EEE9AC00](v197, v63);
  v199 = &v142 - v64;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41268);
  MEMORY[0x1EEE9AC00](v195, v65);
  v67 = (&v142 - v66);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41270);
  MEMORY[0x1EEE9AC00](v198, v68);
  v70 = &v142 - v69;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41278);
  MEMORY[0x1EEE9AC00](v203, v71);
  v200 = &v142 - v72;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41280);
  MEMORY[0x1EEE9AC00](v209, v73);
  v206 = &v142 - v74;
  v75 = type metadata accessor for PaymentSheet();
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75 - 8, v78);
  v79 = sub_1BE04C614();
  v80 = *(v79 - 8);
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v84 = &v142 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v80 + 16))(v84, v207, v79, v82);
  v85 = (*(v80 + 88))(v84, v79);
  if (v85 != *MEMORY[0x1E69BC8D0])
  {
    if (v85 == *MEMORY[0x1E69BC8A8])
    {
      v94 = v194;
      sub_1BD2E5BDC(v194);
      sub_1BD2EE220(v94, v67, type metadata accessor for PaymentPassMethodSheet);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF258();
      sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v70, v199, &qword_1EBD41270);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v95 = v200;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v70, &qword_1EBD41270);
      sub_1BD0DE19C(v95, v204, &qword_1EBD41278);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v96 = v206;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v95, &qword_1EBD41278);
      sub_1BD0DE19C(v96, v210, &qword_1EBD41280);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v96, &qword_1EBD41280);
      v97 = type metadata accessor for PaymentPassMethodSheet;
      return sub_1BD2EE430(v94, v97);
    }

    if (v85 == *MEMORY[0x1E69BC8B8])
    {
      v98 = v188;
      sub_1BD2E6FEC(v188);
      v99 = &qword_1EBD41248;
      sub_1BD0DE19C(v98, v191, &qword_1EBD41248);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF368();
      sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet);
      v100 = v193;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v100, v199, &qword_1EBD41240);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v101 = v200;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v100, &qword_1EBD41240);
      sub_1BD0DE19C(v101, v204, &qword_1EBD41278);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v102 = v206;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v101, &qword_1EBD41278);
      goto LABEL_10;
    }

    if (v85 == *MEMORY[0x1E69BC8C0])
    {
      v104 = v187;
      sub_1BD2E7CBC(v187);
      sub_1BD2EE220(v104, v191, type metadata accessor for ShippingMethodSheet);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF368();
      sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet);
      v105 = v193;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v105, v199, &qword_1EBD41240);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v106 = v200;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v105, &qword_1EBD41240);
      sub_1BD0DE19C(v106, v204, &qword_1EBD41278);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v107 = v206;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v106, &qword_1EBD41278);
      sub_1BD0DE19C(v107, v210, &qword_1EBD41280);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v107, &qword_1EBD41280);
      return sub_1BD2EE430(v104, type metadata accessor for ShippingMethodSheet);
    }

    if (v85 == *MEMORY[0x1E69BC8C8])
    {
      sub_1BD2E81A4(v214);
      memcpy(v179, v214, 0x140uLL);
      swift_storeEnumTagMultiPayload();
      sub_1BD2EAD80(v214, v213);
      sub_1BD2DF590();
      sub_1BD2DF5E4();
      v108 = v181;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v108, v184, &qword_1EBD41228);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF504();
      sub_1BD2DF708();
      v109 = v185;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v108, &qword_1EBD41228);
      sub_1BD0DE19C(v109, v204, &qword_1EBD41230);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v110 = v206;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v109, &qword_1EBD41230);
      v111 = &qword_1EBD41280;
      sub_1BD0DE19C(v110, v210, &qword_1EBD41280);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD2EADDC(v214);
      v91 = v110;
    }

    else
    {
      if (v85 != *MEMORY[0x1E69BC890])
      {
        if (v85 == *MEMORY[0x1E69BC8A0])
        {
          v98 = v168;
          sub_1BD2E8C7C(v168);
          v99 = &qword_1EBD411F8;
          sub_1BD0DE19C(v98, v171, &qword_1EBD411F8);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8);
        }

        else
        {
          if (v85 != *MEMORY[0x1E69BC888])
          {
            if (v85 == *MEMORY[0x1E69BC898])
            {
              v126 = v150;
              sub_1BD2E9318(v150);
              sub_1BD0DE19C(v126, v153, &qword_1EBD411D8);
              swift_storeEnumTagMultiPayload();
              sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8);
              sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
              v127 = v154;
              sub_1BE04F9A4();
              sub_1BD0DE19C(v127, v158, &qword_1EBD411C0);
              swift_storeEnumTagMultiPayload();
              sub_1BD2DEE2C();
              sub_1BD2DEF14();
              v128 = v160;
              sub_1BE04F9A4();
              sub_1BD0DE53C(v127, &qword_1EBD411C0);
              sub_1BD0DE19C(v128, v164, &qword_1EBD411C8);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
              sub_1BD2DEDA0();
              sub_1BD0FEEBC();
              v129 = v165;
              sub_1BE04F9A4();
              sub_1BD0DE53C(v128, &qword_1EBD411C8);
              sub_1BD0DE19C(v129, v210, &qword_1EBD411D0);
              swift_storeEnumTagMultiPayload();
              sub_1BD2DF084();
              sub_1BD2DF7E8();
              sub_1BE04F9A4();
              sub_1BD0DE53C(v129, &qword_1EBD411D0);
              return sub_1BD0DE53C(v126, &qword_1EBD411D8);
            }

            if (v85 != *MEMORY[0x1E69BC8E8])
            {
              if (v85 == *MEMORY[0x1E69BC8E0])
              {
                v94 = v149;
                sub_1BD2E97D0(v149);
                sub_1BD2EE220(v94, v153, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                swift_storeEnumTagMultiPayload();
                sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8);
                sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                v131 = v154;
                sub_1BE04F9A4();
                sub_1BD0DE19C(v131, v158, &qword_1EBD411C0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DEE2C();
                sub_1BD2DEF14();
                v132 = v160;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v131, &qword_1EBD411C0);
                sub_1BD0DE19C(v132, v164, &qword_1EBD411C8);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
                sub_1BD2DEDA0();
                sub_1BD0FEEBC();
                v133 = v165;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v132, &qword_1EBD411C8);
                sub_1BD0DE19C(v133, v210, &qword_1EBD411D0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DF084();
                sub_1BD2DF7E8();
                sub_1BE04F9A4();
                sub_1BD0DE53C(v133, &qword_1EBD411D0);
                v97 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView;
              }

              else
              {
                if (v85 != *MEMORY[0x1E69BC8D8])
                {
                  if (v85 == *MEMORY[0x1E69BC8B0])
                  {
                    v137 = v142;
                    sub_1BD2EAA3C(v142);
                    sub_1BD0DE19C(v137, v146, &qword_1EBD41190);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView);
                    sub_1BD2DEFD0();
                    v138 = v148;
                    sub_1BE04F9A4();
                    sub_1BD0DE19C(v138, v158, &qword_1EBD411A0);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DEE2C();
                    sub_1BD2DEF14();
                    v139 = v160;
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v138, &qword_1EBD411A0);
                    sub_1BD0DE19C(v139, v164, &qword_1EBD411C8);
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
                    sub_1BD2DEDA0();
                    sub_1BD0FEEBC();
                    v140 = v165;
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v139, &qword_1EBD411C8);
                    sub_1BD0DE19C(v140, v210, &qword_1EBD411D0);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DF084();
                    sub_1BD2DF7E8();
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v140, &qword_1EBD411D0);
                    return sub_1BD0DE53C(v137, &qword_1EBD41190);
                  }

                  else
                  {
                    v213[0] = 1;
                    sub_1BE04F9A4();
                    *v164 = v214[0];
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
                    sub_1BD2DEDA0();
                    sub_1BD0FEEBC();
                    v141 = v165;
                    sub_1BE04F9A4();
                    sub_1BD0DE19C(v141, v210, &qword_1EBD411D0);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DF084();
                    sub_1BD2DF7E8();
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v141, &qword_1EBD411D0);
                    return (*(v80 + 8))(v84, v79);
                  }
                }

                v94 = v143;
                sub_1BD2EA190(v143);
                sub_1BD2EE220(v94, v146, type metadata accessor for SelectedPaymentOfferActionView);
                swift_storeEnumTagMultiPayload();
                sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView);
                sub_1BD2DEFD0();
                v134 = v148;
                sub_1BE04F9A4();
                sub_1BD0DE19C(v134, v158, &qword_1EBD411A0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DEE2C();
                sub_1BD2DEF14();
                v135 = v160;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v134, &qword_1EBD411A0);
                sub_1BD0DE19C(v135, v164, &qword_1EBD411C8);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
                sub_1BD2DEDA0();
                sub_1BD0FEEBC();
                v136 = v165;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v135, &qword_1EBD411C8);
                sub_1BD0DE19C(v136, v210, &qword_1EBD411D0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DF084();
                sub_1BD2DF7E8();
                sub_1BE04F9A4();
                sub_1BD0DE53C(v136, &qword_1EBD411D0);
                v97 = type metadata accessor for SelectedPaymentOfferActionView;
              }

              return sub_1BD2EE430(v94, v97);
            }

            v213[0] = 0;
            sub_1BE04F9A4();
            *v164 = v214[0];
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
            sub_1BD2DEDA0();
            sub_1BD0FEEBC();
            v130 = v165;
            sub_1BE04F9A4();
            v99 = &qword_1EBD411D0;
            sub_1BD0DE19C(v130, v210, &qword_1EBD411D0);
            swift_storeEnumTagMultiPayload();
            sub_1BD2DF084();
            sub_1BD2DF7E8();
            sub_1BE04F9A4();
            v103 = v130;
            return sub_1BD0DE53C(v103, v99);
          }

          v98 = v161;
          sub_1BD2E8FD4(v161);
          v99 = &qword_1EBD411E0;
          sub_1BD0DE19C(v98, v171, &qword_1EBD411E0);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8);
        }

        sub_1BD0DE4F4(&qword_1EBD41348, &qword_1EBD411E0);
        v124 = v173;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v124, v184, &qword_1EBD411F0);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF504();
        sub_1BD2DF708();
        v125 = v185;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v124, &qword_1EBD411F0);
        sub_1BD0DE19C(v125, v204, &qword_1EBD41230);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF110();
        sub_1BD2DF478();
        v102 = v206;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v125, &qword_1EBD41230);
LABEL_10:
        sub_1BD0DE19C(v102, v210, &qword_1EBD41280);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF084();
        sub_1BD2DF7E8();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v102, &qword_1EBD41280);
        v103 = v98;
        return sub_1BD0DE53C(v103, v99);
      }

      if (sub_1BD2DF874())
      {
        v112 = v194;
        sub_1BD2E5BDC(v194);
        sub_1BD2EE220(v112, v175, type metadata accessor for PaymentPassMethodSheet);
        swift_storeEnumTagMultiPayload();
        sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
        v113 = type metadata accessor for PaymentSetupNavigationController(255);
        v114 = sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController);
        v214[0] = v113;
        v214[1] = v114;
        swift_getOpaqueTypeConformance2();
        v115 = v177;
        sub_1BE04F9A4();
        sub_1BD2EE430(v112, type metadata accessor for PaymentPassMethodSheet);
      }

      else
      {
        v116 = v166;
        sub_1BD2E89CC();
        v117 = v167;
        v118 = v176;
        (*(v167 + 16))(v175, v116, v176);
        swift_storeEnumTagMultiPayload();
        sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
        v119 = type metadata accessor for PaymentSetupNavigationController(255);
        v120 = sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController);
        v214[0] = v119;
        v214[1] = v120;
        swift_getOpaqueTypeConformance2();
        v115 = v177;
        sub_1BE04F9A4();
        (*(v117 + 8))(v116, v118);
      }

      v111 = &qword_1EBD41210;
      sub_1BD0DE19C(v115, v179, &qword_1EBD41210);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF590();
      sub_1BD2DF5E4();
      v121 = v181;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v121, v184, &qword_1EBD41228);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF504();
      sub_1BD2DF708();
      v122 = v185;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v121, &qword_1EBD41228);
      sub_1BD0DE19C(v122, v204, &qword_1EBD41230);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v123 = v206;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v122, &qword_1EBD41230);
      sub_1BD0DE19C(v123, v210, &qword_1EBD41280);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v123, &qword_1EBD41280);
      v91 = v115;
    }

    v92 = v111;
    return sub_1BD0DE53C(v91, v92);
  }

  v86 = *(*(v2 + 8) + qword_1EBDAB300);
  if (v86)
  {
    sub_1BD2EE220(v2, &v142 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
    v87 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v88 = swift_allocObject();
    sub_1BD2EE3C8(&v142 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0), v88 + v87, type metadata accessor for PaymentSheet);
    *v67 = v86;
    v67[1] = sub_1BD2EE588;
    v67[2] = v88;
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF258();
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
    swift_retain_n();
    sub_1BE048964();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v70, v199, &qword_1EBD41270);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF19C();
    sub_1BD2DF2AC();
    v89 = v200;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v70, &qword_1EBD41270);
    sub_1BD0DE19C(v89, v204, &qword_1EBD41278);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF110();
    sub_1BD2DF478();
    v90 = v206;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v89, &qword_1EBD41278);
    sub_1BD0DE19C(v90, v210, &qword_1EBD41280);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF084();
    sub_1BD2DF7E8();
    sub_1BE04F9A4();

    v91 = v90;
    v92 = &qword_1EBD41280;
    return sub_1BD0DE53C(v91, v92);
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

unint64_t sub_1BD2DEDA0()
{
  result = qword_1EBD41288;
  if (!qword_1EBD41288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411C8);
    sub_1BD2DEE2C();
    sub_1BD2DEF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41288);
  }

  return result;
}

unint64_t sub_1BD2DEE2C()
{
  result = qword_1EBD41290;
  if (!qword_1EBD41290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411C0);
    sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8);
    sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41290);
  }

  return result;
}

unint64_t sub_1BD2DEF14()
{
  result = qword_1EBD412A8;
  if (!qword_1EBD412A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411A0);
    sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView);
    sub_1BD2DEFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412A8);
  }

  return result;
}

unint64_t sub_1BD2DEFD0()
{
  result = qword_1EBD412B8;
  if (!qword_1EBD412B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41190);
    sub_1BD2EE53C(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412B8);
  }

  return result;
}

unint64_t sub_1BD2DF084()
{
  result = qword_1EBD412C8;
  if (!qword_1EBD412C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41280);
    sub_1BD2DF110();
    sub_1BD2DF478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412C8);
  }

  return result;
}

unint64_t sub_1BD2DF110()
{
  result = qword_1EBD412D0;
  if (!qword_1EBD412D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41278);
    sub_1BD2DF19C();
    sub_1BD2DF2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412D0);
  }

  return result;
}

unint64_t sub_1BD2DF19C()
{
  result = qword_1EBD412D8;
  if (!qword_1EBD412D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41270);
    sub_1BD2DF258();
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412D8);
  }

  return result;
}

unint64_t sub_1BD2DF258()
{
  result = qword_1EBD412E0;
  if (!qword_1EBD412E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412E0);
  }

  return result;
}

unint64_t sub_1BD2DF2AC()
{
  result = qword_1EBD412F0;
  if (!qword_1EBD412F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41240);
    sub_1BD2DF368();
    sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412F0);
  }

  return result;
}

unint64_t sub_1BD2DF368()
{
  result = qword_1EBD412F8;
  if (!qword_1EBD412F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41248);
    sub_1BD2EE53C(&qword_1EBD41300, type metadata accessor for PaymentSummarySheet);
    sub_1BD2DF424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412F8);
  }

  return result;
}

unint64_t sub_1BD2DF424()
{
  result = qword_1EBD41308;
  if (!qword_1EBD41308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41308);
  }

  return result;
}

unint64_t sub_1BD2DF478()
{
  result = qword_1EBD41318;
  if (!qword_1EBD41318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41230);
    sub_1BD2DF504();
    sub_1BD2DF708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41318);
  }

  return result;
}

unint64_t sub_1BD2DF504()
{
  result = qword_1EBD41320;
  if (!qword_1EBD41320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41228);
    sub_1BD2DF590();
    sub_1BD2DF5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41320);
  }

  return result;
}

unint64_t sub_1BD2DF590()
{
  result = qword_1EBD41328;
  if (!qword_1EBD41328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41328);
  }

  return result;
}

unint64_t sub_1BD2DF5E4()
{
  result = qword_1EBD41330;
  if (!qword_1EBD41330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41210);
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet);
    type metadata accessor for PaymentSetupNavigationController(255);
    sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41330);
  }

  return result;
}

unint64_t sub_1BD2DF708()
{
  result = qword_1EBD41338;
  if (!qword_1EBD41338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411F0);
    sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8);
    sub_1BD0DE4F4(&qword_1EBD41348, &qword_1EBD411E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41338);
  }

  return result;
}

unint64_t sub_1BD2DF7E8()
{
  result = qword_1EBD41350;
  if (!qword_1EBD41350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411D0);
    sub_1BD2DEDA0();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41350);
  }

  return result;
}

uint64_t sub_1BD2DF874()
{
  v0 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v14 = sub_1BD259180();
  v12[0] = 0;
  v8 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v12);
  v9 = 0;
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD2EE220(&v7[*(v4 + 20)], v3, _s14MerchantOriginOMa);
    sub_1BD2EE430(v7, _s8MerchantVMa);
    if (swift_getEnumCaseMultiPayload())
    {
      v9 = PKPaymentSheetExpressProvisioningWebFlow();
    }

    else
    {
      v9 = 1;
    }

    sub_1BD2EE430(v3, _s14MerchantOriginOMa);
  }

  return v9;
}

double sub_1BD2DFA44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v13 - v6;
  sub_1BD2DFBD0(a1, v13 - v6);
  v8 = type metadata accessor for PaymentSheet();
  v16 = *(a1 + *(v8 + 84));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
  sub_1BE0516C4();
  v9 = v15;
  sub_1BD6FC4DC(v14, *(&v14 + 1), v15);

  sub_1BD0DE53C(v7, &qword_1EBD3F310);
  v16 = *(a1 + *(v8 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  *v13 = v14;
  v10 = v15;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D8) + 36);
  result = v13[0];
  *v11 = *v13;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  return result;
}

id sub_1BD2DFBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v600 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41388);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v615 = &v510 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v613 = &v510 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41390);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v614 = &v510 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v621 = &v510 - v14;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41398);
  v598 = *(v599 - 8);
  MEMORY[0x1EEE9AC00](v599, v15);
  v572 = &v510 - v16;
  v17 = type metadata accessor for DeferredPaymentRequestSummaryRows(0);
  v568 = *(v17 - 8);
  v569 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v571 = &v510 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v596 = &v510 - v22;
  v597 = type metadata accessor for DeferredPaymentRequest();
  v595 = *(v597 - 8);
  MEMORY[0x1EEE9AC00](v597, v23);
  v570 = (&v510 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413A0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v612 = &v510 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v625 = &v510 - v30;
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413A8);
  MEMORY[0x1EEE9AC00](v591, v31);
  v540 = &v510 - v32;
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413B0);
  MEMORY[0x1EEE9AC00](v589, v33);
  v590 = &v510 - v34;
  v35 = sub_1BE04BD74();
  v561 = *(v35 - 8);
  v562 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v560 = &v510 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v605 = &v510 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413B8);
  MEMORY[0x1EEE9AC00](v588, v41);
  v579 = &v510 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v580 = &v510 - v45;
  v583 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v583, v46);
  v582 = &v510 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v616 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v616, v48);
  v594 = &v510 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v581 = &v510 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v567 = &v510 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v606 = &v510 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413C0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v611 = &v510 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v620 = &v510 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413C8);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v610 = &v510 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v627 = &v510 - v70;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413D0);
  MEMORY[0x1EEE9AC00](v523, v71);
  v524 = &v510 - v72;
  v529 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  MEMORY[0x1EEE9AC00](v529, v73);
  v525 = &v510 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413D8);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v609 = &v510 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v622 = &v510 - v80;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413E0);
  MEMORY[0x1EEE9AC00](v530, v81);
  v533 = &v510 - v82;
  v532 = type metadata accessor for PaymentPassUnavailableItem();
  MEMORY[0x1EEE9AC00](v532, v83);
  v518 = &v510 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v520 = &v510 - v87;
  v88 = type metadata accessor for UnavailablePass(0);
  v527 = *(v88 - 8);
  v528 = v88;
  MEMORY[0x1EEE9AC00](v88, v89);
  v517 = &v510 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v92);
  v519 = &v510 - v93;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413E8);
  MEMORY[0x1EEE9AC00](v566, v94);
  v531 = &v510 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v96 - 8, v97);
  v522 = &v510 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99, v100);
  v516 = &v510 - v101;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413F0);
  MEMORY[0x1EEE9AC00](v564, v102);
  v565 = &v510 - v103;
  v104 = type metadata accessor for AdditionalInfoView();
  v538 = *(v104 - 8);
  v539 = v104;
  MEMORY[0x1EEE9AC00](v104, v105);
  v537 = &v510 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v549 = *(v107 - 8);
  v550 = v107;
  MEMORY[0x1EEE9AC00](v107, v108);
  v536 = &v510 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880);
  MEMORY[0x1EEE9AC00](v110 - 8, v111);
  v548 = &v510 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113, v114);
  v551 = &v510 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413F8);
  MEMORY[0x1EEE9AC00](v116 - 8, v117);
  v552 = &v510 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119, v120);
  v553 = &v510 - v121;
  v526 = type metadata accessor for PaymentSheet();
  v618 = *(v526 - 8);
  MEMORY[0x1EEE9AC00](v526, v122);
  v619 = v123;
  v617 = &v510 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41400);
  MEMORY[0x1EEE9AC00](v587, v124);
  v575 = &v510 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126, v127);
  v576 = &v510 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41408);
  v556 = *(v129 - 8);
  v557 = v129;
  MEMORY[0x1EEE9AC00](v129, v130);
  v555 = &v510 - v131;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41410);
  MEMORY[0x1EEE9AC00](v554, v132);
  v577 = &v510 - v133;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41418);
  MEMORY[0x1EEE9AC00](v563, v134);
  v558 = &v510 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v137);
  v559 = &v510 - v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v139 - 8, v140);
  v535 = &v510 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v142, v143);
  v574 = &v510 - v144;
  *(&v604 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41420);
  *&v604 = *(*(&v604 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v604 + 1), v145);
  v578 = &v510 - v146;
  v603 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v603, v147);
  v534 = &v510 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v149, v150);
  v521 = &v510 - v151;
  MEMORY[0x1EEE9AC00](v152, v153);
  v515 = &v510 - v154;
  MEMORY[0x1EEE9AC00](v155, v156);
  v573 = &v510 - v157;
  MEMORY[0x1EEE9AC00](v158, v159);
  v602 = &v510 - v160;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41428);
  MEMORY[0x1EEE9AC00](v161 - 8, v162);
  v608 = &v510 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v164, v165);
  v626 = &v510 - v166;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41430);
  v601 = *(v167 - 1);
  MEMORY[0x1EEE9AC00](v167, v168);
  v170 = &v510 - v169;
  v593 = type metadata accessor for AvailablePass(0);
  v592 = *(v593 - 8);
  MEMORY[0x1EEE9AC00](v593, v171);
  v547 = &v510 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v173, v174);
  v584 = &v510 - v175;
  MEMORY[0x1EEE9AC00](v176, v177);
  v586 = &v510 - v178;
  v546 = v179;
  MEMORY[0x1EEE9AC00](v180, v181);
  v542 = &v510 - v182;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v183 - 8, v184);
  v545 = &v510 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v186, v187);
  v585 = &v510 - v188;
  MEMORY[0x1EEE9AC00](v189, v190);
  v543 = &v510 - v191;
  MEMORY[0x1EEE9AC00](v192, v193);
  v541 = &v510 - v194;
  MEMORY[0x1EEE9AC00](v195, v196);
  v198 = &v510 - v197;
  v199 = type metadata accessor for PeerPaymentModel();
  v200 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v201);
  v203 = &v510 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41438);
  MEMORY[0x1EEE9AC00](v204 - 8, v205);
  v607 = &v510 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v207, v208);
  v624 = &v510 - v209;
  v628 = a1;
  v210 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v623 = v210;
  v211 = v199;
  sub_1BE04D8B4();

  v212 = *(v200 + 48);
  v213 = v212(v198, 1, v211);
  v544 = v211;
  if (v213 == 1)
  {
    sub_1BD0DE53C(v198, &qword_1EBD45480);
LABEL_9:
    v233 = 1;
    v231 = v616;
    v232 = v602;
    goto LABEL_15;
  }

  sub_1BD2EE3C8(v198, v203, type metadata accessor for PeerPaymentModel);
  if (v203[v211[13]] != 1)
  {
    sub_1BD2EE430(v203, type metadata accessor for PeerPaymentModel);
    goto LABEL_9;
  }

  v214 = &v203[v211[5]];
  v513 = v200 + 48;
  v215 = v542;
  sub_1BD2EE220(v214, v542, type metadata accessor for AvailablePass);
  v514 = v212;
  v216 = v541;
  sub_1BD2EE220(v203, v541, type metadata accessor for PeerPaymentModel);
  (*(v200 + 56))(v216, 0, 1, v211);
  sub_1BE04C8E4();
  v217 = sub_1BD2E46D8();
  v511 = v167[16];
  v512 = v218;
  v170[v511] = 0;
  v219 = v167[17];
  *&v170[v219] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v220 = sub_1BE051C54();
  v221 = 40.0;
  if (v220)
  {
    v221 = 36.0;
  }

  *&v170[v167[18]] = v221;
  v222 = v167[19];
  v170[v222] = (sub_1BE051C54() & 1) == 0;
  sub_1BD2EE220(v215, v170, type metadata accessor for AvailablePass);
  *&v170[v167[9]] = 0;
  sub_1BD0DE19C(v216, &v170[v167[10]], &qword_1EBD45480);
  v223 = &v170[v167[11]];
  *(v223 + 3) = 0u;
  *(v223 + 4) = 0u;
  *(v223 + 1) = 0u;
  *(v223 + 2) = 0u;
  *v223 = 0u;
  sub_1BD2E4300(v203, &v170[v167[12]]);
  sub_1BD2EE430(v215, type metadata accessor for AvailablePass);
  sub_1BD2EE430(v203, type metadata accessor for PeerPaymentModel);
  v224 = &v170[v167[13]];
  v225 = v630;
  *v224 = v629;
  *(v224 + 1) = v225;
  *(v224 + 4) = v631;
  v226 = &v170[v167[14]];
  v227 = v512;
  *v226 = v217;
  v226[1] = v227;
  v228 = &v170[v167[15]];
  *v228 = 0;
  *(v228 + 1) = 0;
  v229 = v216;
  v212 = v514;
  v230 = v543;
  sub_1BD0DE204(v229, v543, &qword_1EBD45480);
  if (v212(v230, 1, v211) == 1)
  {
    sub_1BD0DE53C(v230, &qword_1EBD45480);
    v231 = v616;
    v232 = v602;
  }

  else
  {
    v234 = (v230 + v211[6]);
    v235 = v234[3];
    v676 = v234[2];
    v677 = v235;
    v236 = v234[5];
    v678 = v234[4];
    v679 = v236;
    v237 = v234[1];
    v674 = *v234;
    v675 = v237;
    sub_1BD0DE19C(&v674, &v660, &unk_1EBD521D0);
    sub_1BD2EE430(v230, type metadata accessor for PeerPaymentModel);
    v231 = v616;
    v232 = v602;
    if (v674 != 1)
    {
      v238 = *(&v675 + 1);
      v239 = v679;
      sub_1BD0DE53C(&v674, &unk_1EBD521D0);
      if (v238 || (v239 & 1) != 0)
      {
        v170[v511] = 1;
      }
    }
  }

  sub_1BD0DE204(v170, v624, &qword_1EBD41430);
  v233 = 0;
LABEL_15:
  v240 = 1;
  (*(v601 + 56))(v624, v233, 1, v167);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v241 = v603;
  v242 = v232[v603[6]];
  sub_1BD2EE430(v232, type metadata accessor for Passes);
  v243 = v628;
  if (v242 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v244 = v573;
    sub_1BE04D8B4();

    v245 = v574;
    sub_1BD0DE19C(v244, v574, &qword_1EBD520A0);
    sub_1BD2EE430(v244, type metadata accessor for Passes);
    if ((*(v592 + 48))(v245, 1, v593) == 1)
    {
      sub_1BD0DE53C(v245, &qword_1EBD520A0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v246 = *&v232[v241[7]];
      sub_1BE048C84();
      sub_1BD2EE430(v232, type metadata accessor for Passes);
      v247 = *(v246 + 16);

      v243 = v628;
      if (v247)
      {
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480);
        v249 = v578;
        (*(*(v248 - 8) + 56))(v578, 1, 1, v248);
LABEL_62:
        sub_1BD0DE204(v249, v626, &qword_1EBD41420);
        v240 = 0;
        goto LABEL_63;
      }

      v262 = sub_1BD2DF874();
      v263 = v618;
      v249 = v578;
      if ((v262 & 1) == 0 || (sub_1BD2DF874() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v264 = v515, sub_1BE04D8B4(), , , v265 = v516, sub_1BD49404C(v516), sub_1BD2EE430(v264, type metadata accessor for Passes), v266 = (*(v527 + 48))(v265, 1, v528), sub_1BD0DE53C(v265, &qword_1EBD3C3F8), v266 == 1))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v267 = v521;
        sub_1BE04D8B4();

        v268 = v522;
        sub_1BD4941F8(v522);
        sub_1BD2EE430(v267, type metadata accessor for Passes);
        if ((*(v527 + 48))(v268, 1, v528) != 1)
        {
          v340 = v519;
          sub_1BD2EE3C8(v268, v519, type metadata accessor for UnavailablePass);
          v341 = v517;
          sub_1BD2EE220(v340, v517, type metadata accessor for UnavailablePass);
          if (PKOslo2024UIUpdatesEnabled())
          {
            v603 = 0;
            v342 = 0;
          }

          else
          {
            v603 = sub_1BD2E4D24();
            v342 = v343;
          }

          v278 = v531;
          if (PKOslo2024UIUpdatesEnabled() && (v344 = sub_1BD2E4D24()) != 0 && (sub_1BD0D4744(v344), PKOslo2024UIUpdatesEnabled()) && (sub_1BD2ECB4C() & 1) == 0)
          {
            v345 = sub_1BD2ED1A0;
          }

          else
          {
            v345 = 0;
          }

          v346 = v341;
          v347 = v518;
          sub_1BD2EE3C8(v346, v518, type metadata accessor for UnavailablePass);
          v348 = v532;
          v349 = (v347 + *(v532 + 20));
          *v349 = v603;
          v349[1] = v342;
          v350 = (v347 + *(v348 + 24));
          *v350 = v345;
          v350[1] = 0;
          v351 = v520;
          sub_1BD2EE3C8(v347, v520, type metadata accessor for PaymentPassUnavailableItem);
          sub_1BD2EE220(v351, v533, type metadata accessor for PaymentPassUnavailableItem);
          swift_storeEnumTagMultiPayload();
          sub_1BD2EE53C(&qword_1EBD41488, type metadata accessor for PaymentPassUnavailableItem);
          sub_1BD2EDCDC();
          sub_1BE04F9A4();
          sub_1BD2EE430(v351, type metadata accessor for PaymentPassUnavailableItem);
          sub_1BD2EE430(v340, type metadata accessor for UnavailablePass);
          v249 = v578;
          goto LABEL_61;
        }

        sub_1BD0DE53C(v268, &qword_1EBD3C3F8);
      }

      v269 = v243 + *(v526 + 76);
      v270 = *v269;
      v271 = *(v269 + 8);
      LOBYTE(v674) = v270;
      *(&v674 + 1) = v271;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      v272 = v660;
      v273 = sub_1BD2DF874();
      v274 = v617;
      sub_1BD2EE220(v243, v617, type metadata accessor for PaymentSheet);
      v275 = (*(v263 + 80) + 16) & ~*(v263 + 80);
      v276 = swift_allocObject();
      sub_1BD2EE3C8(v274, v276 + v275, type metadata accessor for PaymentSheet);
      v277 = v533;
      *v533 = v272;
      v277[1] = v273 & 1;
      *(v277 + 1) = sub_1BD2EDC80;
      *(v277 + 2) = v276;
      swift_storeEnumTagMultiPayload();
      sub_1BD2EE53C(&qword_1EBD41488, type metadata accessor for PaymentPassUnavailableItem);
      sub_1BD2EDCDC();
      v278 = v531;
      sub_1BE04F9A4();
LABEL_61:
      sub_1BD0DE19C(v278, v565, &qword_1EBD413E8);
      swift_storeEnumTagMultiPayload();
      sub_1BD2EDD30();
      sub_1BD2EE014();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v278, &qword_1EBD413E8);
      v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480);
      (*(*(v352 - 8) + 56))(v249, 0, 1, v352);
      goto LABEL_62;
    }

    v514 = v212;
    v250 = v586;
    sub_1BD2EE3C8(v245, v586, type metadata accessor for AvailablePass);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v631 = v676;
    v632 = v677;
    v633 = v678;
    v629 = v674;
    v630 = v675;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v251 = *&v232[v241[5]];
    v252 = v251;
    sub_1BD2EE430(v232, type metadata accessor for Passes);
    sub_1BD2EE220(v250, v584, type metadata accessor for AvailablePass);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BE04C8E4();
    v253 = v628;
    v254 = sub_1BD2E4D24();
    v256 = v255;
    if (v254 && PKOslo2024UIUpdatesEnabled())
    {
      v257 = sub_1BD2ECB4C();
      sub_1BD0D4744(v254);
      if ((v257 & 1) == 0)
      {
        v254 = 0;
        v256 = 0;
        v260 = sub_1BD2E4D24();
        if (!v260)
        {
          goto LABEL_34;
        }

LABEL_24:
        sub_1BD0D4744(v260);
        if (PKOslo2024UIUpdatesEnabled() && (sub_1BD2ECB4C() & 1) == 0)
        {
          v261 = sub_1BD2ED1A0;
LABEL_35:
          v279 = v587;
          v280 = v575;
          v602 = *(v587 + 64);
          v575[v602] = 0;
          v281 = v279[17];
          *(v280 + v281) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
          swift_storeEnumTagMultiPayload();
          v603 = v252;
          sub_1BD0DE19C(&v629, &v674, &qword_1EBD395E0);
          v282 = sub_1BE051C54();
          v283 = 40.0;
          if (v282)
          {
            v283 = 36.0;
          }

          *(v280 + v279[18]) = v283;
          v284 = v279[19];
          v285 = 1;
          *(v280 + v284) = (sub_1BE051C54() & 1) == 0;
          sub_1BD2EE220(v584, v280, type metadata accessor for AvailablePass);
          *(v280 + v279[9]) = v251;
          sub_1BD0DE19C(v585, v280 + v279[10], &qword_1EBD45480);
          v286 = (v280 + v279[11]);
          v287 = v632;
          v286[2] = v631;
          v286[3] = v287;
          v286[4] = v633;
          v288 = v630;
          *v286 = v629;
          v286[1] = v288;
          swift_getKeyPath();
          swift_getKeyPath();
          v289 = v551;
          sub_1BE04D8B4();

          v290 = v548;
          sub_1BD0DE19C(v289, v548, &qword_1EBD4C880);
          v291 = (*(v549 + 48))(v290, 1, v550);
          v292 = v552;
          if (v291 != 1)
          {
            v293 = v536;
            sub_1BD2EE3C8(v290, v536, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v294 = v537;
            sub_1BD2EE220(v293, v537, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            sub_1BD2EE3C8(v294, v292, type metadata accessor for AdditionalInfoView);
            (*(v538 + 56))(v292, 0, 1, v539);
            sub_1BD2EE430(v293, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v285 = 0;
          }

          sub_1BD0DE53C(v289, &qword_1EBD4C880);
          sub_1BD2EE430(v584, type metadata accessor for AvailablePass);
          v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F0);
          (*(*(v295 - 8) + 56))(v292, v285, 1, v295);
          v296 = v587;
          v297 = *(v587 + 48);
          v298 = v292;
          v299 = v553;
          sub_1BD0DE204(v298, v553, &qword_1EBD413F8);
          v300 = &v575[v297];
          v301 = v575;
          sub_1BD0DE204(v299, v300, &qword_1EBD413F8);
          v302 = v301 + v296[13];
          v303 = v653;
          *v302 = v652;
          *(v302 + 16) = v303;
          *(v302 + 32) = v654;
          v304 = (v301 + v296[14]);
          *v304 = v254;
          v304[1] = v256;
          v305 = (v301 + v296[15]);
          *v305 = v261;
          v305[1] = 0;
          v306 = v545;
          sub_1BD0DE204(v585, v545, &qword_1EBD45480);
          v307 = v544;
          if (v514(v306, 1, v544) == 1)
          {
            sub_1BD0DE53C(v306, &qword_1EBD45480);
          }

          else
          {
            v308 = (v306 + v307[6]);
            v309 = v308[3];
            v676 = v308[2];
            v677 = v309;
            v310 = v308[5];
            v678 = v308[4];
            v679 = v310;
            v311 = v308[1];
            v674 = *v308;
            v675 = v311;
            sub_1BD0DE19C(&v674, &v660, &unk_1EBD521D0);
            sub_1BD2EE430(v306, type metadata accessor for PeerPaymentModel);
            if (v674 != 1)
            {
              v312 = *(&v675 + 1);
              v313 = v679;
              sub_1BD0DE53C(&v674, &unk_1EBD521D0);
              if (v312 || (v313 & 1) != 0)
              {
                *(v301 + v602) = 1;
              }
            }
          }

          sub_1BD0DE204(v301, v576, &qword_1EBD41400);
          v314 = v586 + *(v593 + 52);
          v316 = *(v314 + 8);
          v318 = *(v314 + 16);
          v317 = *(v314 + 24);
          v319 = *(v314 + 32);
          *&v674 = *v314;
          v315 = v674;
          *(&v674 + 1) = v316;
          *&v675 = v318;
          *(&v675 + 1) = v317;
          LOBYTE(v676) = v319;
          v320 = v547;
          sub_1BD2EE220(v586, v547, type metadata accessor for AvailablePass);
          v321 = (*(v592 + 80) + 16) & ~*(v592 + 80);
          v322 = swift_allocObject();
          sub_1BD2EE3C8(v320, v322 + v321, type metadata accessor for AvailablePass);
          sub_1BD2EE178(v315, v316, v318, v317);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414A8);
          sub_1BD0DE4F4(&qword_1EBD414B0, &qword_1EBD41400);
          sub_1BD2EDF3C();
          v323 = v555;
          v324 = v576;
          sub_1BE051074();

          v325 = v318;
          v326 = v317;
          sub_1BD2EE1C0(v315, v316, v325, v317);
          sub_1BD0DE53C(v324, &qword_1EBD41400);
          v327 = sub_1BE051D94();
          swift_getKeyPath();
          swift_getKeyPath();
          v328 = v577;
          v329 = (v577 + *(v554 + 36));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414D0);
          sub_1BE04D8B4();

          *v329 = v327;
          (*(v556 + 32))(v328, v323, v557);
          v602 = sub_1BE051D94();
          v330 = 0;
          v331 = 0;
          if (v315)
          {
            v243 = v628;
            if (v326)
            {
              v332 = [v326 primaryTitle];
              if (v332)
              {
                v333 = v332;
                v330 = sub_1BE052434();
                v331 = v334;
              }

              else
              {
                v330 = 0;
                v331 = 0;
              }
            }
          }

          else
          {
            v243 = v628;
          }

          v335 = v577;
          v336 = v558;
          sub_1BD0DE19C(v577, v558, &qword_1EBD41410);
          v337 = (v336 + *(v563 + 36));
          *v337 = v602;
          v337[1] = v330;
          v337[2] = v331;
          sub_1BD0DE53C(v335, &qword_1EBD41410);
          v338 = v559;
          sub_1BD0DE204(v336, v559, &qword_1EBD41418);
          sub_1BD0DE19C(v338, v565, &qword_1EBD41418);
          swift_storeEnumTagMultiPayload();
          sub_1BD2EDD30();
          sub_1BD2EE014();
          v249 = v578;
          v231 = v616;
          sub_1BE04F9A4();
          sub_1BD0DE53C(&v629, &qword_1EBD395E0);

          sub_1BD0DE53C(v338, &qword_1EBD41418);
          v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480);
          (*(*(v339 - 8) + 56))(v249, 0, 1, v339);
          sub_1BD2EE430(v586, type metadata accessor for AvailablePass);
          goto LABEL_62;
        }

LABEL_34:
        v261 = 0;
        goto LABEL_35;
      }

      v258 = v617;
      sub_1BD2EE220(v253, v617, type metadata accessor for PaymentSheet);
      v259 = (*(v618 + 80) + 16) & ~*(v618 + 80);
      v256 = swift_allocObject();
      sub_1BD2EE3C8(v258, v256 + v259, type metadata accessor for PaymentSheet);
      v254 = sub_1BD2EE214;
    }

    v260 = sub_1BD2E4D24();
    if (!v260)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

LABEL_63:
  (*(v604 + 56))(v626, v240, 1, *(&v604 + 1));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v674 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v353 = v674;
    if (v674)
    {
      if ([v674 type] == 1)
      {
        objc_opt_self();
        v354 = swift_dynamicCastObjCClass();
        if (v354)
        {
          v355 = v354;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          v356 = v674;
          if (v674)
          {
            v357 = [v355 selectedInstallmentOffer];
            if (v357)
            {
              v358 = v357;
              *(&v604 + 1) = v357;
              v359 = [v356 selectedOfferDetails];
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1BE04D8B4();

              v360 = v674;
              v361 = v617;
              sub_1BD2EE220(v243, v617, type metadata accessor for PaymentSheet);
              v362 = (*(v618 + 80) + 16) & ~*(v618 + 80);
              v363 = swift_allocObject();
              v364 = v363 + v362;
              v231 = v616;
              sub_1BD2EE3C8(v361, v364, type metadata accessor for PaymentSheet);
              v688[0] = v358;
              v688[1] = v359;
              v688[2] = v360;
              v688[3] = sub_1BD2EDC1C;
              v688[4] = v363;
              v689 = 0;
              v365 = v525;
              sub_1BD62DDD0(v688, v525);
              sub_1BD2EE220(v365, v524, type metadata accessor for PaymentOfferInstallmentSummaryView);
              swift_storeEnumTagMultiPayload();
              sub_1BD2EE53C(&qword_1EBD41478, type metadata accessor for PaymentOfferInstallmentSummaryView);
              sub_1BE04F9A4();

              v366 = v365;
LABEL_80:
              sub_1BD2EE430(v366, type metadata accessor for PaymentOfferInstallmentSummaryView);
              v380 = 0;
              goto LABEL_84;
            }

            v353 = v356;
          }
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v674)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v674 == 20)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v367 = v674;
      if (v674)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v368 = v534;
        sub_1BE04D8B4();

        v369 = v535;
        sub_1BD0DE19C(v368, v535, &qword_1EBD520A0);
        sub_1BD2EE430(v368, type metadata accessor for Passes);
        v370 = (*(v592 + 48))(v369, 1, v593);
        if (v370 == 1)
        {

          sub_1BD0DE53C(v369, &qword_1EBD520A0);
        }

        else
        {
          sub_1BD49C81C(v370);
          sub_1BD2EE430(v369, type metadata accessor for AvailablePass);
          v371 = sub_1BE052404();

          v372 = [v367 eligiblePaymentOfferCriteriaForPassUniqueID:v371 type:1];

          if (v372)
          {
            objc_opt_self();
            v373 = swift_dynamicCastObjCClass();
            if (v373)
            {
              v374 = v373;
              v375 = *(v529 + 32);
              v376 = *MEMORY[0x1E69BC950];
              v377 = sub_1BE04C744();
              v378 = v525;
              (*(*(v377 - 8) + 104))(v525 + v375, v376, v377);
              *v378 = v374;
              *(v378 + 8) = 0u;
              *(v378 + 24) = 0u;
              *(v378 + 40) = 1;
              *(v378 + 48) = 0;
              *(v378 + 56) = 0;
              sub_1BD2EE220(v378, v524, type metadata accessor for PaymentOfferInstallmentSummaryView);
              swift_storeEnumTagMultiPayload();
              sub_1BD2EE53C(&qword_1EBD41478, type metadata accessor for PaymentOfferInstallmentSummaryView);
              v379 = v372;
              sub_1BE04F9A4();

              v366 = v378;
              goto LABEL_80;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v380 = 1;
LABEL_84:
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41440);
  v382 = 1;
  (*(*(v381 - 8) + 56))(v622, v380, 1, v381);
  if (sub_1BD2E5488())
  {
    v383 = sub_1BD2E4D24();
    sub_1BD256A50(v383, v384, v627);
    sub_1BD0D4744(v383);
    v382 = 0;
  }

  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41448);
  (*(*(v385 - 8) + 56))(v627, v382, 1, v385);
  swift_getKeyPath();
  swift_getKeyPath();
  v386 = v606;
  sub_1BE04D8B4();

  v387 = (v386 + v231[9]);
  v388 = v387[1];
  v648 = *v387;
  v649 = v388;
  v389 = v387[3];
  v650 = v387[2];
  v651 = v389;
  sub_1BD0DE19C(&v648, &v674, &qword_1EBD41378);
  sub_1BD2EE430(v386, _s14PaymentSummaryVMa);
  v390 = *(&v648 + 1);
  v606 = *(&v649 + 1);
  v391 = v649;
  v604 = v650;
  v392 = *(&v651 + 1);
  v393 = v651;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v390)
  {
    v394 = v581;
    sub_1BE04D8B4();

    v395 = v582;
    sub_1BD2EE220(v394, v582, _s11TotalAmountVMa);
    sub_1BD2EE430(v394, _s14PaymentSummaryVMa);
    v396 = *(v395 + *(v583 + 48));
    sub_1BD2EE430(v395, _s11TotalAmountVMa);
    swift_getKeyPath();
    swift_getKeyPath();
    v397 = v392;
    v398 = v393;
    sub_1BE048C84();
    sub_1BE04D8B4();

    v603 = v397;
    v602 = v398;
    if (v396)
    {
      v400 = v560;
      v399 = v561;
      v401 = v562;
      (*(v561 + 104))(v560, *MEMORY[0x1E69B8068], v562);
      sub_1BE048C84();
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v403 = result;
      v404 = sub_1BE04B6F4();
      v406 = v405;

      (*(v399 + 8))(v400, v401);
      v407 = 0;
      v408 = 0;
      v392 = 0;
      v409 = 0;
      v391 = 0;
      v410 = 0;
      v411 = 0;
      v412 = *(&v604 + 1);
    }

    else
    {
      v439 = v617;
      sub_1BD2EE220(v628, v617, type metadata accessor for PaymentSheet);
      v440 = (*(v618 + 80) + 16) & ~*(v618 + 80);
      v408 = swift_allocObject();
      sub_1BD2EE3C8(v439, v408 + v440, type metadata accessor for PaymentSheet);
      v441 = v398;
      v412 = *(&v604 + 1);
      sub_1BE048C84();
      v442 = v397;
      v443 = v441;
      v444 = sub_1BE048C84();
      v404 = 0;
      v406 = 0;
      v411 = 0x4030000000000000;
      v407 = sub_1BD2EDC10;
      v409 = v441;
      v410 = v444;
    }

    v445 = v588;
    v446 = v579;
    v447 = &v579[*(v588 + 36)];
    *v447 = v392;
    *(v447 + 1) = v409;
    *(v447 + 2) = v391;
    *(v447 + 3) = v410;
    *(v447 + 4) = 0;
    *(v447 + 5) = v411;
    *(v447 + 6) = 0;
    v448 = (v446 + v445[12]);
    *(v446 + v445[13]) = 0;
    v449 = v446 + v445[14];
    LOBYTE(v660) = 0;
    sub_1BE051694();
    v450 = *(&v674 + 1);
    *v449 = v674;
    *(v449 + 8) = v450;
    sub_1BD2EE3C8(v605, v446, _s8MerchantVMa);
    v451 = (v446 + v445[10]);
    *v451 = v604;
    v451[1] = v412;
    *v448 = v404;
    v448[1] = v406;
    v452 = (v446 + v445[11]);
    *v452 = v407;
    v452[1] = v408;
    v453 = v580;
    sub_1BD0DE204(v446, v580, &qword_1EBD413B8);
    sub_1BD0DE19C(v453, v590, &qword_1EBD413B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41468, &qword_1EBD413B8);
    sub_1BD0DE4F4(&qword_1EBD41470, &qword_1EBD413A8);
    v436 = v620;
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v648, &qword_1EBD41378);

    sub_1BD0DE53C(v453, &qword_1EBD413B8);
    v437 = 0;
    v438 = v625;
    v231 = v616;
  }

  else
  {
    v413 = v567;
    sub_1BE04D8B4();

    v414 = (v413 + v231[10]);
    v415 = *v414;
    v416 = v414[1];
    v418 = v414[2];
    v417 = v414[3];
    v419 = v414[5];
    v420 = v414[6];
    v421 = *v414;
    v605 = v414[4];
    sub_1BD2ED8B0(v421, v416, v418, v417, v605, v419, v420);
    sub_1BD2EE430(v413, _s14PaymentSummaryVMa);
    if (v416)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v606 = v419;
      v603 = v418;
      v422 = v420;
      v602 = v417;
      sub_1BE048C84();
      v423 = v540;
      sub_1BE04D8B4();

      *(&v604 + 1) = v415;
      v424 = v617;
      sub_1BD2EE220(v628, v617, type metadata accessor for PaymentSheet);
      v425 = (*(v618 + 80) + 16) & ~*(v618 + 80);
      v426 = swift_allocObject();
      sub_1BD2EE3C8(v424, v426 + v425, type metadata accessor for PaymentSheet);
      *&v604 = v416;
      v427 = v591;
      v428 = v423 + *(v591 + 36);
      *v428 = 0x4030000000000000;
      *(v428 + 8) = v420;
      *(v428 + 16) = v418;
      *(v428 + 24) = v417;
      *(v428 + 32) = 0;
      v429 = (v423 + v427[12]);
      *(v423 + v427[13]) = 0;
      v430 = v423 + v427[14];
      LOBYTE(v660) = 0;
      v431 = v606;
      sub_1BE048C84();
      sub_1BE051694();
      v432 = *(&v674 + 1);
      *v430 = v674;
      *(v430 + 8) = v432;
      v433 = (v423 + v427[10]);
      v434 = v605;
      *v433 = v605;
      v433[1] = v431;
      *v429 = 0;
      v429[1] = 0;
      v435 = (v423 + v427[11]);
      *v435 = sub_1BD2EDC04;
      v435[1] = v426;
      sub_1BD0DE19C(v423, v590, &qword_1EBD413A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD41468, &qword_1EBD413B8);
      sub_1BD0DE4F4(&qword_1EBD41470, &qword_1EBD413A8);
      v436 = v620;
      sub_1BE04F9A4();
      sub_1BD2ED910(*(&v604 + 1), v604, v603, v602, v434, v606, v420);
      v231 = v616;
      sub_1BD0DE53C(v423, &qword_1EBD413A8);
      v437 = 0;
      v438 = v625;
    }

    else
    {
      v437 = 1;
      v438 = v625;
      v436 = v620;
    }
  }

  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41450);
  (*(*(v454 - 8) + 56))(v436, v437, 1, v454);
  swift_getKeyPath();
  swift_getKeyPath();
  v455 = v594;
  v456 = v623;
  sub_1BE04D8B4();

  v457 = v596;
  sub_1BD0DE19C(v455 + v231[11], v596, &qword_1EBD41380);
  sub_1BD2EE430(v455, _s14PaymentSummaryVMa);
  v458 = v597;
  if ((*(v595 + 48))(v457, 1, v597) == 1)
  {
    sub_1BD0DE53C(v457, &qword_1EBD41380);
    v459 = 1;
    v460 = v628;
    v461 = v456;
    v462 = v599;
  }

  else
  {
    v463 = v570;
    sub_1BD2EE3C8(v457, v570, type metadata accessor for DeferredPaymentRequest);
    v464 = *(v463 + v458[9]);
    v465 = v569;
    v466 = v571;
    sub_1BD0DE19C(v463 + v458[7], &v571[v569[7]], &unk_1EBD39970);
    sub_1BD0DE19C(v463 + v458[8], v466 + v465[8], &unk_1EBD3D260);
    v467 = v463[2];
    v468 = v463[3];
    *v466 = xmmword_1BE0C9FB0;
    *(v466 + 16) = v464;
    v469 = (v466 + v465[9]);
    *v469 = v467;
    v469[1] = v468;
    *(v466 + v465[10]) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v470 = v464;
    sub_1BE048C84();
    v471 = v572;
    sub_1BE04D8B4();

    v461 = v456;
    v462 = v599;
    v472 = *(v599 + 36);
    sub_1BD2EE220(v466, &v471[v472], type metadata accessor for DeferredPaymentRequestSummaryRows);
    (*(v568 + 56))(&v471[v472], 0, 1, v465);
    v473 = v463[5];
    v616 = v463[4];
    v474 = v617;
    sub_1BD2EE220(v628, v617, type metadata accessor for PaymentSheet);
    v475 = (*(v618 + 80) + 16) & ~*(v618 + 80);
    v476 = swift_allocObject();
    sub_1BD2EE3C8(v474, v476 + v475, type metadata accessor for PaymentSheet);
    v477 = &v471[v462[12]];
    v471[v462[13]] = 0;
    v478 = &v471[v462[14]];
    LOBYTE(v660) = 0;
    sub_1BE048C84();
    sub_1BE051694();
    sub_1BD2EE430(v466, type metadata accessor for DeferredPaymentRequestSummaryRows);
    sub_1BD2EE430(v463, type metadata accessor for DeferredPaymentRequest);
    v479 = *(&v674 + 1);
    *v478 = v674;
    *(v478 + 1) = v479;
    v480 = &v471[v462[10]];
    *v480 = v616;
    v480[1] = v473;
    *v477 = 0;
    *(v477 + 1) = 0;
    v438 = v625;
    v481 = &v471[v462[11]];
    *v481 = sub_1BD2EDBF8;
    v481[1] = v476;
    v482 = v471;
    v460 = v628;
    sub_1BD0DE204(v482, v438, &qword_1EBD41398);
    v459 = 0;
  }

  (*(v598 + 56))(v438, v459, 1, v462);
  v483 = *(v461 + qword_1EBDAB300);
  if (v483)
  {
    v484 = *(v461 + qword_1EBDAB308);
    v485 = v617;
    sub_1BD2EE220(v460, v617, type metadata accessor for PaymentSheet);
    v486 = v618;
    v487 = (*(v618 + 80) + 16) & ~*(v618 + 80);
    v488 = swift_allocObject();
    sub_1BD2EE3C8(v485, v488 + v487, type metadata accessor for PaymentSheet);
    sub_1BE048964();
    sub_1BD1C7824(v484, v483, sub_1BD2EDBEC, v488, &v652);
    v602 = *(&v652 + 1);
    v603 = v652;
    v623 = *(&v653 + 1);
    v601 = v653;
    v616 = v654;
    v606 = v655;
    v599 = v656;
    v605 = v657;
    *(&v604 + 1) = v658;
    *&v604 = v659;
  }

  else
  {
    v603 = 0;
    v602 = 0;
    v601 = 0;
    v623 = 0;
    v616 = 0;
    v606 = 0;
    v599 = 0;
    v605 = 0;
    v604 = 0uLL;
    v485 = v617;
    v486 = v618;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v684 = v670;
  v685 = v671;
  v686 = v672;
  v687 = v673;
  v680 = v666;
  v681 = v667;
  v682 = v668;
  v683 = v669;
  v676 = v662;
  v677 = v663;
  v678 = v664;
  v679 = v665;
  v674 = v660;
  v675 = v661;
  v618 = type metadata accessor for PaymentSheet;
  sub_1BD2EE220(v460, v485, type metadata accessor for PaymentSheet);
  v489 = (*(v486 + 80) + 16) & ~*(v486 + 80);
  v490 = swift_allocObject();
  sub_1BD2EE3C8(v485, v490 + v489, type metadata accessor for PaymentSheet);
  sub_1BD35DD80(&v674, sub_1BD2EDB70, v490, v621);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v670 = v639;
  v671 = v640;
  v672 = v641;
  v673 = v642;
  v666 = v635;
  v667 = v636;
  v668 = v637;
  v669 = v638;
  v662 = v631;
  v663 = v632;
  v664 = v633;
  v665 = v634;
  v660 = v629;
  v661 = v630;
  sub_1BD2EE220(v628, v485, v618);
  v491 = swift_allocObject();
  sub_1BD2EE3C8(v485, v491 + v489, type metadata accessor for PaymentSheet);
  v492 = v613;
  sub_1BD89BF6C(&v660, sub_1BD2EDB7C, v491, v613);
  v493 = v607;
  sub_1BD0DE19C(v624, v607, &qword_1EBD41438);
  v494 = v608;
  sub_1BD0DE19C(v626, v608, &qword_1EBD41428);
  v495 = v609;
  sub_1BD0DE19C(v622, v609, &qword_1EBD413D8);
  v496 = v610;
  sub_1BD0DE19C(v627, v610, &qword_1EBD413C8);
  v497 = v611;
  sub_1BD0DE19C(v620, v611, &qword_1EBD413C0);
  v498 = v612;
  sub_1BD0DE19C(v625, v612, &qword_1EBD413A0);
  v499 = v614;
  sub_1BD0DE19C(v621, v614, &qword_1EBD41390);
  sub_1BD0DE19C(v492, v615, &qword_1EBD41388);
  v500 = v600;
  sub_1BD0DE19C(v493, v600, &qword_1EBD41438);
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41458);
  sub_1BD0DE19C(v494, v500 + v501[12], &qword_1EBD41428);
  sub_1BD0DE19C(v495, v500 + v501[16], &qword_1EBD413D8);
  sub_1BD0DE19C(v496, v500 + v501[20], &qword_1EBD413C8);
  sub_1BD0DE19C(v497, v500 + v501[24], &qword_1EBD413C0);
  sub_1BD0DE19C(v498, v500 + v501[28], &qword_1EBD413A0);
  v502 = (v500 + v501[32]);
  v503 = v603;
  *&v643 = v603;
  v504 = v602;
  *(&v643 + 1) = v602;
  v505 = v601;
  *&v644 = v601;
  *(&v644 + 1) = v623;
  *&v645 = v616;
  *(&v645 + 1) = v606;
  v506 = v599;
  *&v646 = v599;
  *(&v646 + 1) = v605;
  *&v647 = *(&v604 + 1);
  *(&v647 + 1) = v604;
  v507 = v646;
  v502[2] = v645;
  v502[3] = v507;
  v502[4] = v647;
  v508 = v644;
  *v502 = v643;
  v502[1] = v508;
  sub_1BD0DE19C(v499, v500 + v501[36], &qword_1EBD41390);
  v509 = v615;
  sub_1BD0DE19C(v615, v500 + v501[40], &qword_1EBD41388);
  sub_1BD0DE19C(&v643, &v629, &qword_1EBD41460);
  sub_1BD0DE53C(v613, &qword_1EBD41388);
  sub_1BD0DE53C(v621, &qword_1EBD41390);
  sub_1BD0DE53C(v625, &qword_1EBD413A0);
  sub_1BD0DE53C(v620, &qword_1EBD413C0);
  sub_1BD0DE53C(v627, &qword_1EBD413C8);
  sub_1BD0DE53C(v622, &qword_1EBD413D8);
  sub_1BD0DE53C(v626, &qword_1EBD41428);
  sub_1BD0DE53C(v624, &qword_1EBD41438);
  sub_1BD0DE53C(v509, &qword_1EBD41388);
  sub_1BD0DE53C(v614, &qword_1EBD41390);
  *&v629 = v503;
  *(&v629 + 1) = v504;
  *&v630 = v505;
  *(&v630 + 1) = v623;
  *&v631 = v616;
  *(&v631 + 1) = v606;
  *&v632 = v506;
  *(&v632 + 1) = v605;
  *&v633 = *(&v604 + 1);
  *(&v633 + 1) = v604;
  sub_1BD0DE53C(&v629, &qword_1EBD41460);
  sub_1BD0DE53C(v612, &qword_1EBD413A0);
  sub_1BD0DE53C(v611, &qword_1EBD413C0);
  sub_1BD0DE53C(v610, &qword_1EBD413C8);
  sub_1BD0DE53C(v609, &qword_1EBD413D8);
  sub_1BD0DE53C(v608, &qword_1EBD41428);
  return sub_1BD0DE53C(v607, &qword_1EBD41438);
}