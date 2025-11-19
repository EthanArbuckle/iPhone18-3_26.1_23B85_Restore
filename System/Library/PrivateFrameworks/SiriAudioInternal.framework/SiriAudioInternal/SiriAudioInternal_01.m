uint64_t sub_26622F610()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);

  v8 = *(v0 + 88);
  *(v0 + 112) = *(v0 + 72);
  *(v0 + 128) = v8;
  *(v0 + 144) = *(v0 + 104);
  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v3(v5, v6);
  v9 = *(v0 + 112);
  v10 = *(v0 + 128);
  *(v7 + 32) = *(v0 + 144);
  *v7 = v9;
  *(v7 + 16) = v10;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26622F714()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);

  sub_266266F28();
  sub_266266948();
  sub_266266928();
  v3(v5, v6);

  v7 = *(v0 + 8);
  v8 = *(v0 + 240);

  return v7();
}

uint64_t sub_26622F800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26622F848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26622F918(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069850, &qword_2662681A8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26622BBE4(a1, v4, v5);
}

_OWORD *sub_26622F9B8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_26622F9D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26622FA6C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069880, &qword_2662681D8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26622CA4C(a1, a2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26622FB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069888, &qword_2662681E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26622FB80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26622FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_26622FBD8, 0, 0);
}

uint64_t sub_26622FBD8()
{
  v16 = v0[16];
  sub_2662666F8();
  sub_2662666E8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
  v5 = *(v16 + 16);
  v15 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_26622FD68;
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  return (v15)(v13, v12, v10, v0 + 7, v11, v8);
}

uint64_t sub_26622FD68()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v3 = *(v5 + 8);

  return v3();
}

uint64_t *FirstPartyMusicSubscriber.__allocating_init(subscriptionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_266230880(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *FirstPartyMusicSubscriber.init(subscriptionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_266230810(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t FirstPartyMusicSubscriber.filter(suggestion:environment:)()
{
  v1[5] = v0;
  v2 = sub_266266988();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_266266488();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_266266598();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = sub_2662663F8();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662301D0, 0, 0);
}

uint64_t sub_2662301D0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_2662664F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698A0, &qword_266268278);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266268250;
  v10 = v9 + v8;
  v11 = *(v3 + 104);
  v11(v10, *MEMORY[0x277D55780], v4);
  v11(v10 + v7, *MEMORY[0x277D55778], v4);
  sub_2662663E8();
  LOBYTE(v7) = sub_26621CAFC(v2, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 8))(v2, v4);
  if (v7)
  {
    goto LABEL_3;
  }

  v42 = v0[17];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698A8, &unk_266268280);
  v15 = *(v13 + 72);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266268260;
  v18 = v17 + v16;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x277D556F8], v14);
  v19(v18 + v15, *MEMORY[0x277D55708], v14);
  v19(v18 + 2 * v15, *MEMORY[0x277D556F0], v14);
  v19(v18 + 3 * v15, *MEMORY[0x277D55700], v14);
  v20 = v12;
  sub_2662663D8();
  LOBYTE(v12) = sub_26621CB44(v12, v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v13 + 8))(v20, v14);
  if (v12)
  {
LABEL_3:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    v24 = __swift_project_value_buffer(v23, static Logger.default);
    swift_beginAccess();
    (*(v22 + 16))(v21, v24, v23);
    v25 = sub_266266968();
    v26 = sub_266266D58();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];
    if (v27)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266219000, v25, v26, "Filtering out suggestion because Apple Music subscription type/status is either unknown or notSubscribed", v34, 2u);
      MEMORY[0x266780880](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v28, v30);
    v35 = 0;
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v35 = 1;
  }

  v36 = v0[17];
  v37 = v0[14];
  v38 = v0[11];
  v39 = v0[8];

  v40 = v0[1];

  return v40(v35);
}

uint64_t FirstPartyMusicSubscriber.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_266230684()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266230714;

  return FirstPartyMusicSubscriber.filter(suggestion:environment:)();
}

uint64_t sub_266230714(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t *sub_266230810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_266230880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FirstPartyMusicSubscriber();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, a3);
  return v11;
}

id INSearchForMediaAppIntentHandler.__allocating_init(featureFlagProvider:appIntentInvoker:)(uint64_t *a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_266220C24(a1, v5 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_featureFlagProvider);
  sub_266220C24(a2, v5 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id INSearchForMediaAppIntentHandler.init(featureFlagProvider:appIntentInvoker:)(uint64_t *a1, uint64_t *a2)
{
  sub_266220C24(a1, v2 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_featureFlagProvider);
  sub_266220C24(a2, v2 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for INSearchForMediaAppIntentHandler();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t INSearchForMediaAppIntentHandler.resolveMediaItems(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266230714;

  return sub_266232FC8(a1);
}

uint64_t sub_266230D18(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266230DEC;

  return sub_266232FC8(v6);
}

uint64_t sub_266230DEC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  v5 = sub_266266B98();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t INSearchForMediaAppIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_266266988();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662310AC, 0, 0);
}

uint64_t sub_2662310AC()
{
  v130 = v0;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = __swift_project_value_buffer(v2, static Logger.default);
  *(v0 + 232) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_266266968();
  v7 = sub_266266D58();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266219000, v6, v7, "INSearchForMediaAppIntentHandler#handle ...", v8, 2u);
    MEMORY[0x266780880](v8, -1, -1);
  }

  v9 = *(v0 + 224);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);

  v13 = *(v11 + 8);
  *(v0 + 256) = v13;
  v13(v9, v10);
  v14 = [v12 mediaSearch];
  *(v0 + 264) = v14;
  if (!v14)
  {
    v5(*(v0 + 176), v4, *(v0 + 144));
    v55 = sub_266266968();
    v56 = sub_266266D68();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_266219000, v55, v56, "INSearchForMediaAppIntentHandler#handle mediaSearch is nil", v57, 2u);
      MEMORY[0x266780880](v57, -1, -1);
    }

    v58 = *(v0 + 176);
    v59 = *(v0 + 144);
    v60 = *(v0 + 152);

    v13(v58, v59);
    v61 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v62 = sub_266266A48();
    v15 = [v61 initWithActivityType_];

    v63 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v15];
    goto LABEL_26;
  }

  v15 = v14;
  v16 = sub_2662334BC(*(v0 + 128));
  *(v0 + 272) = v17;
  v128 = v17;
  if (!v17)
  {
    v5(*(v0 + 184), v4, *(v0 + 144));
    v64 = sub_266266968();
    v65 = sub_266266D68();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_266219000, v64, v65, "INSearchForMediaAppIntentHandler#handle failed to get search criteria from any source.", v66, 2u);
      MEMORY[0x266780880](v66, -1, -1);
    }

    v67 = *(v0 + 184);
    v68 = *(v0 + 144);
    v69 = *(v0 + 152);

    v13(v67, v68);
    v70 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v71 = sub_266266A48();
    v72 = [v70 initWithActivityType_];

    v63 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v72];
LABEL_26:

    v74 = *(v0 + 216);
    v73 = *(v0 + 224);
    v76 = *(v0 + 200);
    v75 = *(v0 + 208);
    v78 = *(v0 + 184);
    v77 = *(v0 + 192);
    v80 = *(v0 + 168);
    v79 = *(v0 + 176);
    v81 = *(v0 + 160);

    v82 = *(v0 + 8);

    return v82(v63);
  }

  v18 = v16;
  v19 = [*(v0 + 128) mediaItems];
  v124 = v18;
  if (!v19)
  {
LABEL_36:
    v127 = v13;
    v5(*(v0 + 200), v4, *(v0 + 144));
    v89 = sub_266266968();
    v90 = sub_266266D58();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_266219000, v89, v90, "INSearchForMediaAppIntentHandler#handle using SearchForMusicIntent", v91, 2u);
      MEMORY[0x266780880](v91, -1, -1);
    }

    v93 = *(v0 + 192);
    v92 = *(v0 + 200);
    v95 = *(v0 + 144);
    v94 = *(v0 + 152);

    v127(v92, v95);
    v96 = [v15 reference];
    *(v0 + 304) = v96;
    v97 = 0x7972617262696CLL;
    if (v96 != 2)
    {
      v97 = 0;
    }

    v126 = v97;
    if (v96 == 2)
    {
      v98 = 0xE700000000000000;
    }

    else
    {
      v98 = 0;
    }

    v123 = [v15 mediaType];
    v5(v93, v4, v95);

    v99 = v128;

    v100 = sub_266266968();
    v101 = sub_266266D58();

    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 192);
    v104 = *(v0 + 144);
    v105 = *(v0 + 152);
    if (v102)
    {
      v106 = swift_slowAlloc();
      v122 = v104;
      v107 = swift_slowAlloc();
      v129 = v107;
      *v106 = 136315650;
      v108 = v124;
      *(v106 + 4) = sub_26621EAF0(v124, v128, &v129);
      *(v106 + 12) = 2080;
      *(v0 + 88) = v126;
      *(v0 + 96) = v98;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v109 = sub_266266A68();
      v121 = v103;
      v111 = sub_26621EAF0(v109, v110, &v129);

      *(v106 + 14) = v111;
      *(v106 + 22) = 2080;
      *(v0 + 112) = v123;
      type metadata accessor for INMediaItemType(0);
      v112 = sub_266266A68();
      v114 = sub_26621EAF0(v112, v113, &v129);

      *(v106 + 24) = v114;
      v99 = v128;
      _os_log_impl(&dword_266219000, v100, v101, "INSearchForMediaAppIntentHandler#handle invoking SearchMusicAppIntent with criteria: %s, searchSource: %s, and mediaType: %s", v106, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v107, -1, -1);
      MEMORY[0x266780880](v106, -1, -1);

      v127(v121, v122);
      v115 = v123;
    }

    else
    {

      v127(v103, v104);
      v115 = v123;
      v108 = v124;
    }

    v116 = (*(v0 + 136) + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
    v117 = v116[3];
    v118 = v116[4];
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v119 = *(MEMORY[0x277D55680] + 4);
    v120 = swift_task_alloc();
    *(v0 + 312) = v120;
    *v120 = v0;
    v120[1] = sub_266231E80;
    v29 = v108;
    v22 = v99;
    v23 = v126;
    v24 = v98;
    v25 = v115;
    v26 = 0;
    v27 = v117;
    v28 = v118;

    return MEMORY[0x2821B6D18](v29, v22, v23, v24, v25, v26, v27, v28);
  }

  v20 = v19;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v21 = sub_266266BB8();

  if (!(v21 >> 62))
  {
    v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v29 = sub_266267078();
  if (!v29)
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_10:
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v21 + 32);
      goto LABEL_13;
    }

    __break(1u);
    return MEMORY[0x2821B6D18](v29, v22, v23, v24, v25, v26, v27, v28);
  }

  v30 = MEMORY[0x266780220](0, v21);
LABEL_13:
  v31 = v30;
  *(v0 + 280) = v30;

  v32 = sub_266266D88();
  v33 = [v31 type];
  v34 = *(v32 + 16);
  v35 = 32;
  do
  {
    if (!v34)
    {

      goto LABEL_36;
    }

    v36 = *(v32 + v35);
    v35 += 8;
    --v34;
  }

  while (v36 != v33);
  v37 = *(v0 + 216);
  v38 = *(v0 + 144);

  v5(v37, v4, v38);
  v39 = sub_266266968();
  v40 = sub_266266D58();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266219000, v39, v40, "INSearchForMediaAppIntentHandler#handle using SearchForPodcastsAppIntent", v41, 2u);
    MEMORY[0x266780880](v41, -1, -1);
  }

  v43 = *(v0 + 208);
  v42 = *(v0 + 216);
  v45 = *(v0 + 144);
  v44 = *(v0 + 152);

  v13(v42, v45);
  v5(v43, v4, v45);

  v46 = sub_266266968();
  v47 = sub_266266D58();

  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 208);
  v51 = *(v0 + 144);
  v50 = *(v0 + 152);
  if (v48)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v129 = v53;
    *v52 = 136315138;
    v125 = v49;
    v54 = v124;
    *(v52 + 4) = sub_26621EAF0(v124, v128, &v129);
    _os_log_impl(&dword_266219000, v46, v47, "INSearchForMediaAppIntentHandler#handle invoking SearchForPodcastsAppIntent with criteria: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266780880](v53, -1, -1);
    MEMORY[0x266780880](v52, -1, -1);

    v13(v125, v51);
  }

  else
  {

    v13(v49, v51);
    v54 = v124;
  }

  v84 = (*(v0 + 136) + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v85 = v84[3];
  v86 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v87 = *(MEMORY[0x277D55688] + 4);
  v88 = swift_task_alloc();
  *(v0 + 288) = v88;
  *v88 = v0;
  v88[1] = sub_266231C48;

  return MEMORY[0x2821B6D20](v54, v128, v85, v86);
}

uint64_t sub_266231C48()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_2662320DC;
  }

  else
  {
    v4 = sub_266231D78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266231D78()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];

  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];

  v13 = v0[1];

  return v13(v3);
}

uint64_t sub_266231E80()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 272);
  *(v2 + 304);

  if (v0)
  {
    v6 = sub_26623239C;
  }

  else
  {
    v6 = sub_266231FDC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266231FDC()
{
  v1 = v0[33];
  v2 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];

  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];

  v12 = v0[1];

  return v12(v2);
}

uint64_t sub_2662320DC()
{
  v42 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 168), *(v0 + 232), *(v0 + 144));
  v3 = v1;
  v4 = sub_266266968();
  v5 = sub_266266D68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v40 = *(v0 + 256);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = sub_266267108();
    v17 = sub_26621EAF0(v15, v16, &v41);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_266219000, v4, v5, "INSearchForMediaAppIntentHandler#handle threw an error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266780880](v11, -1, -1);
    MEMORY[0x266780880](v10, -1, -1);

    v40(v7, v8);
  }

  else
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);

    v18(v19, v20);
  }

  v22 = *(v0 + 296);
  v23 = *(v0 + 280);
  v24 = *(v0 + 264);
  v25 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v26 = sub_266266A48();
  v27 = [v25 initWithActivityType_];

  v28 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v27];
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  v34 = *(v0 + 184);
  v33 = *(v0 + 192);
  v36 = *(v0 + 168);
  v35 = *(v0 + 176);
  v37 = *(v0 + 160);

  v38 = *(v0 + 8);

  return v38(v28);
}

uint64_t sub_26623239C()
{
  v41 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 160), *(v0 + 232), *(v0 + 144));
  v3 = v1;
  v4 = sub_266266968();
  v5 = sub_266266D68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 320);
    v39 = *(v0 + 256);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = sub_266267108();
    v17 = sub_26621EAF0(v15, v16, &v40);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_266219000, v4, v5, "INSearchForMediaAppIntentHandler#handle threw an error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266780880](v11, -1, -1);
    MEMORY[0x266780880](v10, -1, -1);

    v39(v7, v9);
  }

  else
  {
    v18 = *(v0 + 256);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 320);
  v23 = *(v0 + 264);
  v24 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v25 = sub_266266A48();
  v26 = [v24 initWithActivityType_];

  v27 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v26];
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 160);

  v37 = *(v0 + 8);

  return v37(v27);
}

uint64_t sub_2662327DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2662328A0;

  return INSearchForMediaAppIntentHandler.handle(intent:)(v6);
}

uint64_t sub_2662328A0(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

id INSearchForMediaAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSearchForMediaAppIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSearchForMediaAppIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266232B0C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_266228640;

  return v7();
}

uint64_t sub_266232BF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_266228320;

  return v8();
}

uint64_t sub_266232CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_266233C78(a3, v25 - v11);
  v13 = sub_266266C58();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26622858C(v12, &unk_280069630, &qword_266268A00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_266266C48();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_266266C08();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_266266A88() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_26622858C(a3, &unk_280069630, &qword_266268A00);

    return v23;
  }

LABEL_8:
  sub_26622858C(a3, &unk_280069630, &qword_266268A00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_266232FC8(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_266266988();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266233094, 0, 0);
}

uint64_t sub_266233094()
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266266968();
  v7 = sub_266266D58();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266219000, v6, v7, "INSearchForMediaAppIntentHandler#resolveMediaItems ...", v8, 2u);
    MEMORY[0x266780880](v8, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];

  v13 = *(v11 + 8);
  v13(v9, v10);
  v14 = [v12 privateSearchForMediaIntentData];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 audioSearchResults];

  if (!v16)
  {
    goto LABEL_15;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v17 = sub_266266BB8();

  if (v17 >> 62)
  {
    result = sub_266267078();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_14:

LABEL_15:
    v5(v0[13], v4, v0[11]);
    v26 = sub_266266968();
    v27 = sub_266266D68();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INSearchForMediaAppIntentHandler#resolveMediaItems missing search results", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];

    v13(v29, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v25 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_18;
  }

LABEL_9:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x266780220](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;
  v21 = v0[10];

  v22 = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
  v23 = MEMORY[0x277D557E8];
  v0[5] = v22;
  v0[6] = v23;
  v0[2] = v21;
  v24 = v21;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v25 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];

LABEL_18:
  v33 = v0[13];
  v32 = v0[14];

  v34 = v0[1];

  return v34(v25);
}

uint64_t sub_2662334BC(void *a1)
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698C8, &qword_2662683E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_266265C28();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 privateSearchForMediaIntentData];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 pegasusMetaData];

  if (!v20)
  {
    goto LABEL_15;
  }

  v44 = a1;
  v21 = sub_266265B78();
  v23 = v22;

  sub_266233FCC(v21, v23);
  sub_266265C08();
  sub_266234020(v21, v23);
  v24 = v45;
  if ((*(v45 + 48))(v13, 1, v14) == 1)
  {
    sub_266234020(v21, v23);
    sub_26622858C(v13, &qword_2800698C8, &qword_2662683E8);
LABEL_14:
    a1 = v44;
LABEL_15:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v7, v36, v2);
    v37 = sub_266266968();
    v38 = sub_266266D68();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266219000, v37, v38, "INSearchForMediaAppIntentHandler#searchCriteria fallback to mediaSearch terms", v39, 2u);
      MEMORY[0x266780880](v39, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v40 = [a1 mediaSearch];
    if (!v40)
    {
      return 0;
    }

    v41 = v40;
    v35 = sub_266266D08();

    return v35;
  }

  v43 = v9;
  (*(v24 + 32))(v17, v13, v14);
  v25 = sub_266265C18();
  v26 = v24;
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    (*(v26 + 8))(v17, v14);
    sub_266234020(v21, v23);
    goto LABEL_14;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v31 = v43;
  (*(v3 + 16))(v43, v30, v2);
  v32 = sub_266266968();
  v33 = sub_266266D58();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_266219000, v32, v33, "INSearchForMediaAppIntentHandler#searchCriteria found AudioIntentDetails searchBoxString", v34, 2u);
    MEMORY[0x266780880](v34, -1, -1);
  }

  (*(v3 + 8))(v31, v2);
  v35 = sub_266265C18();
  sub_266234020(v21, v23);
  (*(v45 + 8))(v17, v14);
  return v35;
}

uint64_t sub_266233A34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266228640;

  return sub_2662327DC(v2, v3, v4);
}

uint64_t sub_266233AE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_266228640;

  return sub_266232B0C(v2, v3, v5);
}

uint64_t sub_266233BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_266228640;

  return sub_266232BF4(a1, v4, v5, v7);
}

uint64_t sub_266233C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266233CE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266233D20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266228640;

  return sub_2662258E8(a1, v5);
}

uint64_t sub_266233DD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266228320;

  return sub_2662258E8(a1, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266233ED8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266228320;

  return sub_266230D18(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266233FCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266234020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266234088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069960, &qword_266268400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2662683F0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v1 = sub_2662667B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266267DB0;
  if (qword_2800694F8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_2800698E0);
  v31 = *(v2 + 16);
  v32 = v6;
  v31(v5 + v4);
  *(inited + 40) = v5;
  *(inited + 48) = 2;
  if (qword_280069520 != -1)
  {
    swift_once();
  }

  v7 = qword_28006A510;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266267DB0;
  (v31)(v8 + v4, v32, v1);

  sub_266235AA0(v8);
  *(inited + 56) = v7;
  *(inited + 64) = 3;
  v9 = qword_28006A510;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_266267DB0;
  v11 = qword_280069500;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_2800698F8);
  (v31)(v10 + v4, v12, v1);
  sub_266235AA0(v10);
  *(inited + 72) = v9;
  *(inited + 80) = 5;
  v13 = qword_28006A510;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266267DB0;
  (v31)(v14 + v4, v32, v1);

  sub_266235AA0(v14);
  *(inited + 88) = v13;
  *(inited + 96) = 4;
  v15 = qword_28006A510;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_266267DB0;
  (v31)(v16 + v4, v32, v1);

  sub_266235AA0(v16);
  *(inited + 104) = v15;
  *(inited + 112) = 6;
  v17 = qword_28006A510;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_266267DB0;
  (v31)(v18 + v4, v32, v1);

  sub_266235AA0(v18);
  *(inited + 120) = v17;
  *(inited + 128) = 7;
  v19 = qword_28006A510;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_266267DB0;
  (v31)(v20 + v4, v32, v1);

  sub_266235AA0(v20);
  *(inited + 136) = v19;
  *(inited + 144) = 8;
  v21 = qword_28006A510;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_266267DB0;
  (v31)(v22 + v4, v32, v1);

  sub_266235AA0(v22);
  *(inited + 152) = v21;
  *(inited + 160) = 9;
  v23 = qword_28006A510;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_266267DB0;
  (v31)(v24 + v4, v32, v1);

  sub_266235AA0(v24);
  *(inited + 168) = v23;
  *(inited + 176) = 10;
  v25 = qword_28006A510;
  *(inited + 184) = qword_28006A510;
  *(inited + 192) = 13;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_266267DB0;
  (v31)(v26 + v4, v32, v1);
  swift_bridgeObjectRetain_n();
  sub_266235AA0(v26);
  *(inited + 200) = v25;
  *(inited + 208) = 12;
  v27 = qword_28006A510;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_266267DB0;
  (v31)(v28 + v4, v32, v1);

  sub_266235AA0(v28);
  *(inited + 216) = v27;
  v29 = sub_26622D5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069970, qword_266268410);
  result = swift_arrayDestroy();
  off_2800698D0 = v29;
  return result;
}

uint64_t sub_266234700()
{
  v37 = sub_266266818();
  *&v35 = *(v37 - 8);
  v0 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2662667F8();
  v32 = *(v33 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069960, &qword_266268400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266268260;
  *(inited + 32) = 3;
  v38 = inited + 32;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v7 = sub_2662667B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = *(v8 + 72);
  v36 = 2 * v11;
  v42 = v9;
  v12 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266268250;
  v14 = v13 + v10;
  if (qword_280069508 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_280069910);
  v16 = *(v8 + 16);
  v31 = v15;
  v16(v14);
  if (qword_280069518 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v7, qword_280069940);
  v16(v14 + v11);
  *(inited + 40) = v13;
  *(inited + 48) = 4;
  v39 = v12;
  v40 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266267DB0;
  v30[1] = sub_266266898();
  if (qword_2800694F0 != -1)
  {
    swift_once();
  }

  v18 = v33;
  v19 = __swift_project_value_buffer(v33, qword_28006A4F8);
  v20 = v32;
  (*(v32 + 16))(v4, v19, v18);
  v21 = v34;
  sub_2662667D8();
  (*(v20 + 8))(v4, v18);
  sub_266266868();
  (*(v35 + 8))(v21, v37);
  *(inited + 56) = v17;
  *(inited + 64) = 8;
  v22 = v40;
  v37 = 3 * v40;
  v23 = swift_allocObject();
  v35 = xmmword_2662680F0;
  *(v23 + 16) = xmmword_2662680F0;
  v24 = v31;
  (v16)(v23 + v10, v31, v7);
  (v16)(v23 + v10 + v22, v41, v7);
  if (qword_2800694F8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v7, qword_2800698E0);
  v26 = v36;
  (v16)(v23 + v10 + v36, v25, v7);
  *(inited + 72) = v23;
  *(inited + 80) = 9;
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  (v16)(v27 + v10, v24, v7);
  (v16)(v27 + v10 + v40, v41, v7);
  (v16)(v27 + v10 + v26, v25, v7);
  *(inited + 88) = v27;
  v28 = sub_26622D5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069970, qword_266268410);
  result = swift_arrayDestroy();
  off_2800698D8 = v28;
  return result;
}

uint64_t sub_266234C90()
{
  v0 = sub_2662667C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2662667F8();
  __swift_allocate_value_buffer(v5, qword_28006A4F8);
  __swift_project_value_buffer(v5, qword_28006A4F8);
  (*(v1 + 104))(v4, *MEMORY[0x277D60CE0], v0);
  return sub_2662667E8();
}

uint64_t sub_266234DD4()
{
  v0 = sub_2662667B8();
  __swift_allocate_value_buffer(v0, qword_2800698E0);
  __swift_project_value_buffer(v0, qword_2800698E0);
  sub_266266898();
  v1 = sub_266266798();
  v4[3] = v1;
  v4[4] = sub_266235F0C(&qword_280069978, MEMORY[0x277D60B68]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  sub_266266878();
  sub_266266888();
}

uint64_t sub_266234F04()
{
  v0 = sub_2662667B8();
  __swift_allocate_value_buffer(v0, qword_2800698F8);
  __swift_project_value_buffer(v0, qword_2800698F8);
  sub_266266898();
  v1 = sub_266266798();
  v4[3] = v1;
  v4[4] = sub_266235F0C(&qword_280069978, MEMORY[0x277D60B68]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  sub_266266878();
  sub_266266888();
}

uint64_t sub_26623508C(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_2662667B8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_266266898();
  a3();
  sub_266266888();
}

uint64_t sub_266235110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v0 = sub_2662667B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2662680F0;
  v5 = v4 + v3;
  if (qword_280069508 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280069910);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_280069510 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_280069928);
  v7(v5 + v2, v8, v0);
  if (qword_280069518 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_280069940);
  result = (v7)(v5 + 2 * v2, v9, v0);
  qword_28006A510 = v4;
  return result;
}

unint64_t sub_2662352F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_266266FE8();

  return sub_266235434(a1, v5);
}

unint64_t sub_266235334(char a1)
{
  v3 = *(v1 + 40);
  sub_266267158();
  sub_26624E0FC(a1);
  sub_266266AB8();

  v4 = sub_266267178();

  return sub_2662354FC(a1, v4);
}

unint64_t sub_2662353BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266267158();
  sub_266266AB8();
  v6 = sub_266267178();

  return sub_2662359E8(a1, a2, v6);
}

unint64_t sub_266235434(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_266235F54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667801C0](v9, a1);
      sub_266235FB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2662354FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7974696E69666661;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E69666661736964;
          v7 = 0xEB00000000797469;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2036427888;
          break;
        case 3:
          v8 = 0x646F504179616C70;
          v7 = 0xEC00000074736163;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000266268C20;
          break;
        case 5:
          v8 = 0x6973754D79616C70;
          v7 = 0xE900000000000063;
          break;
        case 6:
          v8 = 0x5979425879616C70;
          break;
        case 7:
          v8 = 0x6974724179616C70;
          v7 = 0xEA00000000007473;
          break;
        case 8:
          v7 = 0xE90000000000006FLL;
          v8 = 0x6964615279616C70;
          break;
        case 9:
          v7 = 0xEC0000007473696CLL;
          v8 = 0x79616C5079616C70;
          break;
        case 0xA:
          v8 = 0x4E65685479616C70;
          v7 = 0xEB00000000737765;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6572616873;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xD:
          v8 = 0x676E6F5374616877;
          v7 = 0xEE00736968547349;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7974696E69666661;
      switch(a1)
      {
        case 1:
          v9 = 0xEB00000000797469;
          if (v8 == 0x6E69666661736964)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2036427888)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xEC00000074736163;
          if (v8 != 0x646F504179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0x8000000266268C20;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE900000000000063;
          if (v8 != 0x6973754D79616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          if (v8 != 0x5979425879616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xEA00000000007473;
          if (v8 != 0x6974724179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE90000000000006FLL;
          if (v8 != 0x6964615279616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xEC0000007473696CLL;
          if (v8 != 0x79616C5079616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E65685479616C70;
          v9 = 0xEB00000000737765;
          goto LABEL_41;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6572616873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x656C6666756873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xEE00736968547349;
          if (v8 != 0x676E6F5374616877)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_2662670D8();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2662359E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2662670D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_266235AA0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_266261828(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2662667B8();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_266235BCC(int a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_2662667A8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = v4[13];
  v10(v20 - v8, *MEMORY[0x277D60B98], v3);
  sub_266235F0C(&qword_280069958, MEMORY[0x277D60BA8]);
  v20[1] = a2;
  sub_266266B78();
  sub_266266B78();
  if (v25 == v23 && v26 == v24)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2662670D8();
  }

  v12 = v4[1];
  v12(v9, v3);

  if (v11)
  {
    if (qword_2800694E0 != -1)
    {
      swift_once();
    }

    v13 = off_2800698D0;
    if (!*(off_2800698D0 + 2))
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = v21;
    v10(v21, *MEMORY[0x277D60B78], v3);
    sub_266266B78();
    sub_266266B78();
    if (v25 == v23 && v26 == v24)
    {
      v12(v14, v3);
    }

    else
    {
      v15 = sub_2662670D8();
      v12(v14, v3);

      if ((v15 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }
    }

    if (qword_2800694E8 != -1)
    {
      swift_once();
    }

    v13 = off_2800698D8;
    if (!*(off_2800698D8 + 2))
    {
      return MEMORY[0x277D84F90];
    }
  }

  v16 = sub_266235334(v22);
  if (v17)
  {
    v18 = *(v13[7] + 8 * v16);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266235F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266236018(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2662360E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignalDefinition()
{
  result = qword_280069988;
  if (!qword_280069988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2662361E4()
{
  sub_2662362E0(319, &qword_280069998, MEMORY[0x277D60C78], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2662362E0(319, &qword_2800699A0, MEMORY[0x277D61068], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_266236344();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2662362E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_266236344()
{
  if (!qword_2800699A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699B0, &qword_266268458);
    v0 = sub_266266FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2800699A8);
    }
  }
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

unint64_t sub_2662363F0()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_266266BB8();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000012 && 0x8000000266269310 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_2662670D8() & 1) == 0);
  }

  return v3;
}

unint64_t sub_2662364E4()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_266266BB8();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000019 && 0x80000002662692F0 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_2662670D8() & 1) == 0);
  }

  return v3;
}

uint64_t sub_2662365D8(uint64_t a1)
{
  v3 = [v1 mediaItems];
  if (!v3)
  {
LABEL_10:
    v8 = [v1 mediaContainer];
    if (!v8)
    {
      return 0;
    }

LABEL_11:
    v9 = [v8 type];
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    do
    {
      v12 = v10-- != 0;
      v13 = v12;
      if (!v12)
      {
        break;
      }

      v14 = *v11++;
    }

    while (v14 != v9);

    return v13;
  }

  v4 = v3;
  sub_266220B70();
  v5 = sub_266266BB8();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_266267078();
  if (!result)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x266780220](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t Logger.default.unsafeMutableAddressor()
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v0 = sub_266266988();

  return __swift_project_value_buffer(v0, static Logger.default);
}

uint64_t sub_266236770()
{
  v0 = sub_266266988();
  __swift_allocate_value_buffer(v0, static Logger.default);
  __swift_project_value_buffer(v0, static Logger.default);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v1 = logObject;
  return sub_266266998();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify())()
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v0 = sub_266266988();
  __swift_project_value_buffer(v0, static Logger.default);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_266236A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v10 = MEMORY[0x277D55740];
      goto LABEL_15;
    }

    if (a1 == 3)
    {
      v10 = MEMORY[0x277D55748];
      goto LABEL_15;
    }
  }

  else
  {
    if (!a1)
    {
      v10 = MEMORY[0x277D55750];
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v10 = MEMORY[0x277D55738];
LABEL_15:
      v25 = *v10;
      v26 = sub_2662664E8();
      v27 = *(*(v26 - 8) + 104);

      return v27(a2, v25, v26);
    }
  }

  if (qword_280069528 != -1)
  {
    v28 = v7;
    swift_once();
    v7 = v28;
  }

  v11 = v7;
  v12 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  v13 = v12;
  v14 = v11;
  (*(v5 + 16))(v9, v13, v11);
  v15 = sub_266266968();
  v16 = sub_266266D68();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[1] = a1;
    v30 = v18;
    *v17 = 136315138;
    type metadata accessor for INPlaybackQueueLocation(0);
    v19 = sub_266266A68();
    v21 = sub_26621EAF0(v19, v20, &v30);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_266219000, v15, v16, "Unknown INPlaybackQueueLocation: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266780880](v18, -1, -1);
    MEMORY[0x266780880](v17, -1, -1);
  }

  (*(v5 + 8))(v9, v14);
  v22 = *MEMORY[0x277D55730];
  v23 = sub_2662664E8();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266236D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266236DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_266236E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699B8, &qword_2662684D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266268460;
  strcpy((inited + 32), "songIsDisliked");
  *(inited + 47) = -18;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699C0, &qword_2662684E0);
  *(inited + 72) = v3;
  v4 = sub_266237104(&qword_2800699C8);
  *(inited + 80) = v4;
  v5 = MEMORY[0x277D839B8];
  v6 = sub_266237104(&qword_2800699D0);
  *(inited + 48) = v2;
  *(inited + 88) = v6;
  *(inited + 96) = 0x694C7349676E6F73;
  *(inited + 104) = 0xEB0000000064656BLL;
  v7 = v0[1];
  *(inited + 136) = v3;
  *(inited + 144) = v4;
  *(inited + 112) = v7;
  *(inited + 152) = v6;
  strcpy((inited + 160), "mediaItemType");
  *(inited + 174) = -4864;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699D8, &qword_2662684E8);
  *(inited + 200) = v8;
  v9 = sub_266237170(&qword_2800699E0);
  *(inited + 208) = v9;
  v10 = sub_266237170(&qword_2800699E8);
  *(inited + 216) = v10;
  v11 = v0[16];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1);
  }

  *(inited + 176) = v12;
  *(inited + 184) = v11 & 1;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x8000000266269330;
  v13 = v0[17];
  *(inited + 264) = v3;
  *(inited + 272) = v4;
  *(inited + 240) = v13;
  *(inited + 280) = v6;
  *(inited + 288) = 0x6E654C6575657571;
  *(inited + 328) = v8;
  *(inited + 336) = v9;
  v14 = *(v0 + 3);
  *(inited + 296) = 0xEB00000000687467;
  *(inited + 304) = v14;
  *(inited + 312) = v0[32];
  *(inited + 344) = v10;
  *(inited + 352) = 0xD000000000000016;
  *(inited + 360) = 0x8000000266269350;
  v15 = v0[33];
  *(inited + 392) = MEMORY[0x277D839B0];
  *(inited + 400) = MEMORY[0x277D839D0];
  *(inited + 408) = v5;
  *(inited + 368) = v15;
  v16 = sub_26622EF54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069860, &qword_2662684F0);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_266237104(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699C0, &qword_2662684E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266237170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699D8, &qword_2662684E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id INAddMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INAddMediaIntentHandler.init()()
{
  v50 = sub_266266548();
  v56 = *(v50 - 8);
  v0 = *(v56 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_266266478();
  v55 = *(v52 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2662662D8();
  v54 = *(v51 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2662660B8();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultMediaLibrary];
  v72[3] = sub_266266578();
  v72[4] = MEMORY[0x277D55768];
  __swift_allocate_boxed_opaque_existential_1(v72);
  sub_266266568();
  v13 = sub_2662666A8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_266266698();
  *(&v70 + 1) = v13;
  v71 = MEMORY[0x277D557B8];
  *&v69 = v16;
  v17 = [objc_opt_self() systemMusicPlayer];
  v47 = v11;
  sub_2662660A8();
  v18 = v7;
  v46 = v7;
  sub_2662662C8();
  sub_266266468();
  sub_266265CB8();
  v19 = sub_266266118();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_266266108();
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v23 = sub_2662668C8();
  v24 = sub_2662668B8();
  v67 = v23;
  v68 = MEMORY[0x277D5FDD8];
  v66[0] = v24;
  v25 = sub_266265D58();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_266265D48();
  v64 = v25;
  v65 = MEMORY[0x277D55570];
  v63[0] = v28;
  v29 = v49;
  sub_266266538();
  v48 = v8;
  v67 = v8;
  v68 = MEMORY[0x277D55668];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(v53 + 16))(boxed_opaque_existential_1, v11, v8);
  v31 = v51;
  v64 = v51;
  v65 = MEMORY[0x277D55698];
  v32 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(v54 + 16))(v32, v18, v31);
  v33 = v52;
  v62[3] = v52;
  v62[4] = MEMORY[0x277D556E8];
  v34 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(v55 + 16))(v34, v4, v33);
  v61[3] = &type metadata for PodcastLibraryProvider;
  v61[4] = &protocol witness table for PodcastLibraryProvider;
  v60[3] = v19;
  v60[4] = MEMORY[0x277D55670];
  v60[0] = v22;
  v35 = v50;
  v59[3] = v50;
  v59[4] = MEMORY[0x277D55760];
  v36 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(v56 + 16))(v36, v29, v35);
  v37 = type metadata accessor for INAddMediaIntentHandler();
  v38 = objc_allocWithZone(v37);
  sub_266220C24(v66, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library]);
  sub_266220C24(v63, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying]);
  sub_266220C24(v62, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription]);
  sub_266220C24(v72, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_aceServiceInvoker]);
  sub_266220C24(v60, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_appIntentInvoker]);
  sub_266220C24(v61, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_provider]);
  sub_266220C24(v61, v58);
  v39 = swift_allocObject();
  sub_26621BED0(v58, v39 + 16);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069A20, &qword_266268538);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  *&v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_instanceReference] = sub_266265DF8();
  sub_266228524(&v69, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider], &qword_280069A38, qword_266268540);
  sub_266220C24(v59, &v38[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_onscreenEntityProvider]);
  v57.receiver = v38;
  v57.super_class = v37;
  v43 = objc_msgSendSuper2(&v57, sel_init);

  (*(v56 + 8))(v29, v35);
  sub_26622858C(&v69, &qword_280069A38, qword_266268540);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  (*(v55 + 8))(v4, v52);
  (*(v54 + 8))(v46, v51);
  (*(v53 + 8))(v47, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t sub_26623796C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2662489AC;
  *(v9 + 24) = v6;
  v10 = *(v8 + 8);

  v10(sub_266248D7C, v9, v7, v8);
}

uint64_t sub_266237A5C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v10, v11, v6);
    v12 = a2;
    v13 = sub_266266968();
    v14 = sub_266266D68();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v27 = sub_266267108();
      v28 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v19 = sub_266266A68();
      v21 = sub_26621EAF0(v19, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_266219000, v13, v14, "INAddMediaIntentHandler#init Unexpected error initializing podcasts controller: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266780880](v17, -1, -1);
      v22 = v16;
      a3 = v26;
      MEMORY[0x266780880](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v23 = 0;
  }

  else
  {
    v23 = a1;
  }

  return a3(v23);
}

uint64_t INAddMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveMediaItems";
  *(v17 + 24) = 38;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266241F94;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266242090;
  *(v19 + 24) = v17;

  sub_266237F90(sub_266242138, v19, v21);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_266237F90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280069528;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v13, v6);
  v14 = a3;
  v15 = sub_266266968();
  v16 = sub_266266D58();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_266219000, v15, v16, "INAddMediaIntentHandler#resolveMediaItems for intent: %@", v17, 0xCu);
    sub_26622858C(v18, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v18, -1, -1);
    MEMORY[0x266780880](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  INAddMediaIntentHandler.mediaItem(for:with:)(v14, sub_266248D84, v11);
}

void sub_266238230(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

uint64_t INAddMediaIntentHandler.mediaItem(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v56 = a2;
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v50 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  v54 = v7[2];
  v54(v16, v17, v6);
  v18 = a1;
  v19 = sub_266266968();
  v20 = sub_266266D58();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&dword_266219000, v19, v20, "INAddMediaIntentHandler#mediaItem searching resolving media item for intent: %@", v22, 0xCu);
    sub_26622858C(v23, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v23, -1, -1);
    v25 = v22;
    v4 = v52;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v26 = v7[1];
  v57 = v7 + 1;
  v26(v16, v6);
  v27 = [v18 backingStore];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
  }

  v29 = [v28 mediaDestination];

  v30 = [v18 mediaSearch];
  v31 = v54;
  if (v30 && (v32 = v30, v33 = [v30 reference], v32, v33 == 1))
  {
    v31(v53, v17, v6);
    v34 = sub_266266968();
    v35 = sub_266266D58();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52 = v4;
      v37 = v36;
      *v36 = 0;
      _os_log_impl(&dword_266219000, v34, v35, "INAddMediaIntentHandler#mediaItem referring to currently playing...", v36, 2u);
      v38 = v37;
      v4 = v52;
      MEMORY[0x266780880](v38, -1, -1);
    }

    v26(v53, v6);
    v39 = v51;
    v31(v51, v17, v6);
    v40 = sub_266266968();
    v41 = sub_266266D58();
    if (!os_log_type_enabled(v40, v41))
    {
      v43 = sub_266245380;
      v58 = v39;
      goto LABEL_18;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_266219000, v40, v41, "INAddMediaIntentHandler#mediaItem trying to resolve from audioSearchResults first...", v42, 2u);
    v43 = sub_266245380;
    v58 = v39;
  }

  else
  {
    v31(v58, v17, v6);
    v40 = sub_266266968();
    v44 = sub_266266D58();
    if (!os_log_type_enabled(v40, v44))
    {
      v43 = sub_266242178;
      goto LABEL_18;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_266219000, v40, v44, "INAddMediaIntentHandler#mediaItem from search result...", v42, 2u);
    v43 = sub_266242178;
  }

  MEMORY[0x266780880](v42, -1, -1);
LABEL_18:

  v26(v58, v6);
  v45 = swift_allocObject();
  v45[2] = v4;
  v45[3] = v18;
  v46 = v55;
  v45[4] = v56;
  v45[5] = v46;
  v47 = v18;
  v48 = v4;

  sub_266245108(v47, v29, v43, v45);
}

uint64_t sub_266238870(void *a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v46[-v18];
  if (a2)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v19, v20, v12);
    v21 = sub_266266968();
    v22 = sub_266266D58();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266219000, v21, v22, "INAddMediaIntentHandler#mediaItem from now playing", v23, 2u);
      MEMORY[0x266780880](v23, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a5;
    v24[5] = a6;
    v25 = a3;
    v26 = a4;

    sub_26623DC74(v26, sub_266248A7C, v24);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v51 = a5;
    v52 = a3;
    v28 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v17, v28, v12);
    v29 = a1;
    v30 = sub_266266968();
    v31 = sub_266266D58();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = a4;
      v33 = v32;
      v48 = swift_slowAlloc();
      v53 = v48;
      *v33 = 136315138;
      v34 = v29;
      v35 = [v34 description];
      v36 = sub_266266A58();
      v47 = v31;
      v37 = v36;
      v49 = a1;
      v38 = a6;
      v40 = v39;

      v41 = sub_26621EAF0(v37, v40, &v53);
      a6 = v38;
      a1 = v49;

      *(v33 + 4) = v41;
      _os_log_impl(&dword_266219000, v30, v47, "INAddMediaIntentHandler#mediaItem resolved item from audioSearch results item %s", v33, 0xCu);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266780880](v42, -1, -1);
      v43 = v33;
      a4 = v50;
      MEMORY[0x266780880](v43, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    v44 = swift_allocObject();
    *(v44 + 16) = v51;
    *(v44 + 24) = a6;
    MEMORY[0x28223BE20](v44);
    *&v46[-32] = a1;
    v46[-24] = 0;
    v45 = v52;
    *&v46[-16] = a4;
    *&v46[-8] = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AD8, &unk_266268608);
    sub_266265E08();
  }
}

uint64_t sub_266238D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AD8, &unk_266268608);
  sub_266265E08();
}

uint64_t INAddMediaIntentHandler.resolveMediaDestination(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveMediaDestination";
  *(v17 + 24) = 44;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266245390;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();

  sub_26624545C(v20[0], v20[1], sub_2662453BC, v17);

  return (*(v6 + 8))(v11, v5);
}

void sub_26623909C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v32 = a4;
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2662669D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v17 = a1;
    v18 = [v17 name];
    if (v18)
    {
      v19 = v18;
      v20 = sub_266266A58();
      v22 = v21;

      sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *v16 = v20;
      v16[1] = v22;
      (*(v13 + 104))(v16, *MEMORY[0x277D85358], v12);
      v24 = sub_2662669B8();
      (*(v13 + 8))(v16, v12);
      v25 = [ObjCClassFromMetadata successWithResolvedMediaDestination_];

      (v32)(v25);
      goto LABEL_10;
    }
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v26, v7);

  v27 = sub_266266968();
  v28 = sub_266266D68();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_26621EAF0(a2, a3, &v33);
    _os_log_impl(&dword_266219000, v27, v28, "INAddMediaIntentHandler#resolveMediaDestination didn't find playlist in library: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266780880](v30, -1, -1);
    MEMORY[0x266780880](v29, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v25 = [objc_opt_self() unsupportedForReason_];
  v32();
LABEL_10:
}

uint64_t sub_266239490(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t INAddMediaIntentHandler.handle(intent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerHandle";
  *(v17 + 24) = 27;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266248E20;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();

  sub_266246088(v20[0], v20[1], sub_266248E0C, v17);

  return (*(v6 + 8))(v11, v5);
}

void sub_2662397B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5)
  {
    v10 = [v5 subscriptionController];
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v13[4] = sub_266248950;
    v13[5] = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_266239EB8;
    v13[3] = &block_descriptor_0;
    v12 = _Block_copy(v13);

    [v10 subscribeToStoreId:a2 siriContext:a3 completion:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_2662398D4(uint64_t a1, void (*a2)(id))
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  if (a1 == 3)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v12, v27, v4);
    v28 = sub_266266968();
    v29 = sub_266266D68();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266219000, v28, v29, "INAddMediaIntentHandler#handle not authorized to subscribe", v30, 2u);
      MEMORY[0x266780880](v30, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v4, static Logger.default);
      swift_beginAccess();
      (*(v5 + 16))(v17, v18, v4);
      v19 = sub_266266968();
      v20 = sub_266266D58();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266219000, v19, v20, "INAddMediaIntentHandler#handle successfully subscribed to the podcast", v21, 2u);
        MEMORY[0x266780880](v21, -1, -1);
      }

      (*(v5 + 8))(v17, v4);
      v22 = 3;
      goto LABEL_25;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v31, v4);
    v32 = sub_266266968();
    v33 = sub_266266D68();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266219000, v32, v33, "INAddMediaIntentHandler#handle failed to subscribe to the podcast", v34, 2u);
      MEMORY[0x266780880](v34, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
LABEL_24:
    v22 = 5;
    goto LABEL_25;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v15, v23, v4);
  v24 = sub_266266968();
  v25 = sub_266266D68();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#handle already subscribed to the podcast", v26, 2u);
    MEMORY[0x266780880](v26, -1, -1);
  }

  (*(v5 + 8))(v15, v4);
  v22 = *MEMORY[0x277CD4410];
LABEL_25:
  v35 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v36 = sub_266266A48();
  v37 = [v35 initWithActivityType_];

  v38 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v22 userActivity:v37];
  a2(v38);
}

uint64_t sub_266239EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_266239F0C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v70 = a7;
  v71 = a6;
  v68 = a5;
  v69 = a4;
  v64 = a3;
  v62 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_266265F08();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v14);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266266988();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v25 = sub_2662665E8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(a1, 1, v25) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v24, v28, v17);
    v29 = sub_266266968();
    v30 = sub_266266D58();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266219000, v29, v30, "INAddMediaIntentHandler#handle successfully added item into library", v31, 2u);
      MEMORY[0x266780880](v31, -1, -1);
    }

    (*(v18 + 8))(v24, v17);
    sub_266228524(v69 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v72, &qword_280069A38, qword_266268540);
    if (v73)
    {
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v32 = v65;
      sub_266265F18();
      sub_266265ED8();
      (*(v66 + 8))(v32, v67);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    else
    {
      sub_26622858C(v72, &qword_280069A38, qword_266268540);
    }

    v43 = 3;
  }

  else
  {
    v60 = v26;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v22, v33, v17);
    sub_266228524(a1, v13, &unk_280069D10, &qword_266268600);

    v34 = sub_266266968();
    v35 = v13;
    v36 = v17;
    v37 = v22;
    v38 = sub_266266D68();

    v61 = v38;
    if (os_log_type_enabled(v34, v38))
    {
      v57 = v18;
      v58 = v36;
      v59 = v34;
      v39 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72[0] = v56;
      *v39 = 136315138;
      v40 = v63;
      sub_266228524(v35, v63, &unk_280069D10, &qword_266268600);
      if (v27(v40, 1, v25) == 1)
      {
        sub_26622858C(v35, &unk_280069D10, &qword_266268600);
        sub_26622858C(v40, &unk_280069D10, &qword_266268600);
        v41 = v64;

        v42 = v62;
      }

      else
      {
        v44 = sub_2662665D8();
        v41 = v45;
        sub_26622858C(v35, &unk_280069D10, &qword_266268600);
        (*(v60 + 8))(v40, v25);
        v42 = v44;
      }

      v46 = v57;
      v47 = sub_26621EAF0(v42, v41, v72);

      *(v39 + 4) = v47;
      v48 = v59;
      _os_log_impl(&dword_266219000, v59, v61, "INAddMediaIntentHandler#handle failed to added item into library, %s", v39, 0xCu);
      v49 = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266780880](v49, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);

      (*(v46 + 8))(v37, v58);
    }

    else
    {

      sub_26622858C(v35, &unk_280069D10, &qword_266268600);
      (*(v18 + 8))(v37, v36);
    }

    sub_266228524(v69 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v72, &qword_280069A38, qword_266268540);
    if (v73)
    {
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v50 = v65;
      sub_266265F18();
      sub_266265ED8();
      (*(v66 + 8))(v50, v67);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    else
    {
      sub_26622858C(v72, &qword_280069A38, qword_266268540);
    }

    v43 = 5;
  }

  v51 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v52 = sub_266266A48();
  v53 = [v51 initWithActivityType_];

  v54 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v43 userActivity:v53];
  v71(v54);
}

void sub_26623A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id), uint64_t a11)
{
  v79 = a8;
  v72 = a7;
  v68 = a6;
  v71 = a5;
  v69 = a4;
  v77 = a1;
  v78 = a2;
  v80 = a10;
  v81 = a11;
  v76 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = sub_266265F08();
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18);
  v73 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_266266988();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  v29 = sub_2662665E8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(a3, 1, v29) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v21, static Logger.default);
    swift_beginAccess();
    (*(v22 + 16))(v28, v32, v21);
    v33 = sub_266266968();
    v34 = sub_266266D58();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_266219000, v33, v34, "INAddMediaIntentHandler#handle successfully added item into playlist", v35, 2u);
      MEMORY[0x266780880](v35, -1, -1);
    }

    (*(v22 + 8))(v28, v21);
    sub_266228524(v79 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v82, &qword_280069A38, qword_266268540);
    if (v83)
    {
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v36 = v73;
      sub_266265F18();
      sub_266265ED8();
      (*(v74 + 8))(v36, v75);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }

    else
    {
      sub_26622858C(v82, &qword_280069A38, qword_266268540);
    }

    v50 = 3;
  }

  else
  {
    v65 = v30;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v21, static Logger.default);
    swift_beginAccess();
    (*(v22 + 16))(v26, v37, v21);
    sub_266228524(a3, v17, &unk_280069D10, &qword_266268600);
    v38 = v26;
    v39 = v71;

    v40 = v21;
    v41 = sub_266266968();
    v42 = sub_266266D68();
    v67 = v17;
    v43 = v42;

    v66 = v43;
    if (os_log_type_enabled(v41, v43))
    {
      v62 = v22;
      v63 = v40;
      v64 = v38;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82[0] = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_26621EAF0(v69, v39, v82);
      *(v44 + 12) = 2080;
      v46 = v67;
      v47 = v70;
      sub_266228524(v67, v70, &unk_280069D10, &qword_266268600);
      if (v31(v47, 1, v29) == 1)
      {
        sub_26622858C(v46, &unk_280069D10, &qword_266268600);
        sub_26622858C(v47, &unk_280069D10, &qword_266268600);
        v48 = v72;

        v49 = v68;
      }

      else
      {
        v51 = sub_2662665D8();
        v48 = v52;
        sub_26622858C(v46, &unk_280069D10, &qword_266268600);
        (*(v65 + 8))(v47, v29);
        v49 = v51;
      }

      v53 = v64;
      v54 = v62;
      v55 = sub_26621EAF0(v49, v48, v82);

      *(v44 + 14) = v55;
      _os_log_impl(&dword_266219000, v41, v66, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v45, -1, -1);
      MEMORY[0x266780880](v44, -1, -1);

      (*(v54 + 8))(v53, v63);
    }

    else
    {

      sub_26622858C(v67, &unk_280069D10, &qword_266268600);
      (*(v22 + 8))(v38, v40);
    }

    sub_266228524(v79 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v82, &qword_280069A38, qword_266268540);
    if (v83)
    {
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v56 = v73;
      sub_266265F18();
      sub_266265ED8();
      (*(v74 + 8))(v56, v75);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }

    else
    {
      sub_26622858C(v82, &qword_280069A38, qword_266268540);
    }

    v50 = 5;
  }

  v57 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v58 = sub_266266A48();
  v59 = [v57 initWithActivityType_];

  v60 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v50 userActivity:v59];
  v80(v60);
}

void sub_26623AFDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v59 = a3;
  v60 = a5;
  v57 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = sub_266266988();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = sub_2662665E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(a1, 1, v22) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v21, v25, v15);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INAddMediaIntentHandler#handle successfully added item into playlist", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v16 + 8))(v21, v15);
    v29 = 3;
  }

  else
  {
    v54 = a4;
    v55 = v24;
    v53 = v23;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    v30 = v61;
    (*(v16 + 16))();
    sub_266228524(a1, v14, &unk_280069D10, &qword_266268600);
    v31 = v59;

    v32 = v60;

    v33 = v15;
    v34 = sub_266266968();
    v35 = sub_266266D68();

    v56 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v51 = v16;
      v52 = v33;
      v36 = v31;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_26621EAF0(v57, v36, &v64);
      *(v37 + 12) = 2080;
      v39 = v58;
      sub_266228524(v14, v58, &unk_280069D10, &qword_266268600);
      if (v55(v39, 1, v22) == 1)
      {
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        sub_26622858C(v39, &unk_280069D10, &qword_266268600);

        v40 = v54;
      }

      else
      {
        v41 = sub_2662665D8();
        v32 = v42;
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        (*(v53 + 8))(v39, v22);
        v40 = v41;
      }

      v43 = v34;
      v44 = v51;
      v45 = sub_26621EAF0(v40, v32, &v64);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_266219000, v43, v56, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v37, -1, -1);

      (*(v44 + 8))(v61, v52);
    }

    else
    {

      sub_26622858C(v14, &unk_280069D10, &qword_266268600);
      (*(v16 + 8))(v30, v33);
    }

    v29 = 5;
  }

  v46 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v47 = sub_266266A48();
  v48 = [v46 initWithActivityType_];

  v49 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v29 userActivity:v48];
  v63(v49);
}

void sub_26623B61C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v59 = a3;
  v60 = a5;
  v57 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = sub_266266988();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = sub_2662665E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(a1, 1, v22) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v21, v25, v15);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INAddMediaIntentHandler#handle successfully added item into playlist", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v16 + 8))(v21, v15);
    v29 = 3;
  }

  else
  {
    v54 = a4;
    v55 = v24;
    v53 = v23;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    v30 = v61;
    (*(v16 + 16))();
    sub_266228524(a1, v14, &unk_280069D10, &qword_266268600);
    v31 = v59;

    v32 = v60;

    v33 = v15;
    v34 = sub_266266968();
    v35 = sub_266266D68();

    v56 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v51 = v16;
      v52 = v33;
      v36 = v31;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_26621EAF0(v57, v36, &v64);
      *(v37 + 12) = 2080;
      v39 = v58;
      sub_266228524(v14, v58, &unk_280069D10, &qword_266268600);
      if (v55(v39, 1, v22) == 1)
      {
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        sub_26622858C(v39, &unk_280069D10, &qword_266268600);

        v40 = v54;
      }

      else
      {
        v41 = sub_2662665D8();
        v32 = v42;
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        (*(v53 + 8))(v39, v22);
        v40 = v41;
      }

      v43 = v34;
      v44 = v51;
      v45 = sub_26621EAF0(v40, v32, &v64);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_266219000, v43, v56, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v37, -1, -1);

      (*(v44 + 8))(v61, v52);
    }

    else
    {

      sub_26622858C(v14, &unk_280069D10, &qword_266268600);
      (*(v16 + 8))(v30, v33);
    }

    v29 = 5;
  }

  v46 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v47 = sub_266266A48();
  v48 = [v46 initWithActivityType_];

  v49 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v29 userActivity:v48];
  v63(v49);
}

void sub_26623BC5C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v59 = a3;
  v60 = a5;
  v57 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = sub_266266988();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = sub_2662665E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(a1, 1, v22) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v21, v25, v15);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INAddMediaIntentHandler#handle successfully added item into playlist", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v16 + 8))(v21, v15);
    v29 = 3;
  }

  else
  {
    v54 = a4;
    v55 = v24;
    v53 = v23;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    v30 = v61;
    (*(v16 + 16))();
    sub_266228524(a1, v14, &unk_280069D10, &qword_266268600);
    v31 = v59;

    v32 = v60;

    v33 = v15;
    v34 = sub_266266968();
    v35 = sub_266266D68();

    v56 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v51 = v16;
      v52 = v33;
      v36 = v31;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_26621EAF0(v57, v36, &v64);
      *(v37 + 12) = 2080;
      v39 = v58;
      sub_266228524(v14, v58, &unk_280069D10, &qword_266268600);
      if (v55(v39, 1, v22) == 1)
      {
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        sub_26622858C(v39, &unk_280069D10, &qword_266268600);

        v40 = v54;
      }

      else
      {
        v41 = sub_2662665D8();
        v32 = v42;
        sub_26622858C(v14, &unk_280069D10, &qword_266268600);
        (*(v53 + 8))(v39, v22);
        v40 = v41;
      }

      v43 = v34;
      v44 = v51;
      v45 = sub_26621EAF0(v40, v32, &v64);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_266219000, v43, v56, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v37, -1, -1);

      (*(v44 + 8))(v61, v52);
    }

    else
    {

      sub_26622858C(v14, &unk_280069D10, &qword_266268600);
      (*(v16 + 8))(v30, v33);
    }

    v29 = 5;
  }

  v46 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v47 = sub_266266A48();
  v48 = [v46 initWithActivityType_];

  v49 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v29 userActivity:v48];
  v63(v49);
}

uint64_t sub_26623C2D0(void (*a1)(uint64_t *), uint64_t a2, void *a3, char a4, void *a5, char *a6)
{
  v144 = a6;
  v147 = a5;
  v140 = sub_2662669D8();
  v137 = *(v140 - 8);
  v10 = *(v137 + 64);
  v11 = MEMORY[0x28223BE20](v140);
  v136 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = &v129 - v13;
  v146 = sub_266265F28();
  v142 = *(v146 - 8);
  v14 = v142[8];
  v15 = MEMORY[0x28223BE20](v146);
  v135 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v129 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v129 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v129 - v23;
  v141 = sub_266265F08();
  v145 = *(v141 - 8);
  v25 = *(v145 + 64);
  v26 = MEMORY[0x28223BE20](v141);
  v134 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v129 - v28;
  v30 = sub_266266988();
  v150 = *(v30 - 8);
  v151 = v30;
  v31 = *(v150 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v143 = &v129 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v139 = &v129 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v129 - v39;
  v41 = swift_allocObject();
  v148 = a2;
  v149 = a1;
  *(v41 + 16) = a1;
  *(v41 + 24) = a2;
  v42 = v41;

  if (a4)
  {
    v43 = a3;

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v44 = v151;
    v45 = __swift_project_value_buffer(v151, static Logger.default);
    swift_beginAccess();
    v46 = v150;
    (*(v150 + 16))(v40, v45, v44);
    v47 = v43;
    v48 = sub_266266968();
    v49 = sub_266266D68();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      *(v50 + 4) = v47;
      *v51 = v43;
      v52 = v47;
      _os_log_impl(&dword_266219000, v48, v49, "INAddMediaIntentHandlerresolveMediaItem received failure result: %{public}@", v50, 0xCu);
      sub_26622858C(v51, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);
    }

    (*(v46 + 8))(v40, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_266267E70;
    *(v53 + 32) = v47;
    v156 = v53;
    v54 = v47;
    v55 = &v156;
LABEL_13:
    v149(v55);
  }

  v56 = a3;
  if ([a3 type] == 6)
  {

    v57 = v147;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v58 = v151;
    v59 = __swift_project_value_buffer(v151, static Logger.default);
    swift_beginAccess();
    v60 = v150;
    (*(v150 + 16))(v34, v59, v58);
    v61 = v56;
    v62 = sub_266266968();
    v63 = sub_266266D78();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138543362;
      *(v64 + 4) = v61;
      *v65 = v56;
      v66 = v61;
      _os_log_impl(&dword_266219000, v62, v63, "INAddMediaIntentHandlerresolveMediaItem successfully resolved podcast show: %{public}@", v64, 0xCu);
      sub_26622858C(v65, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v65, -1, -1);
      MEMORY[0x266780880](v64, -1, -1);
    }

    (*(v60 + 8))(v34, v58);
    v154 = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    v155 = MEMORY[0x277D557C0];
    v152 = v57;
    v67 = v57;
    sub_266266CE8();
    __swift_destroy_boxed_opaque_existential_1Tm(&v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_266267E70;
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    *(v68 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
    v152 = v68;
    v55 = &v152;
    goto LABEL_13;
  }

  v133 = v42;
  v132 = a3;
  v70 = [a3 identifier];
  v71 = v147;
  if (!v70)
  {
    goto LABEL_35;
  }

  v72 = v70;
  sub_266266A58();

  v73 = sub_266265F68();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  if (!sub_266265F78())
  {
    goto LABEL_35;
  }

  sub_266265F18();
  sub_266265EE8();
  v76 = *(v145 + 8);
  v145 += 8;
  v131 = v76;
  v76(v29, v141);
  v77 = *MEMORY[0x277D555D0];
  v130 = v142[13];
  v130(v22, v77, v146);
  v78 = sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0]);
  sub_266266B78();
  v129 = v78;
  sub_266266B78();
  if (v152 == v156 && v153 == v157)
  {
    v79 = v19;
    v80 = 1;
  }

  else
  {
    v79 = v19;
    v80 = sub_2662670D8();
  }

  v81 = v142[1];
  v82 = v22;
  v83 = v146;
  v81(v82, v146);
  v81(v24, v83);

  if ((v80 & 1) == 0)
  {
    v84 = v134;
    sub_266265F18();
    v85 = v79;
    sub_266265EE8();
    v131(v84, v141);
    v86 = v135;
    v130(v135, *MEMORY[0x277D555D8], v83);
    sub_266266B78();
    sub_266266B78();
    if (v152 == v156 && v153 == v157)
    {
      v87 = v146;
      v81(v86, v146);
      v81(v85, v87);
    }

    else
    {
      v88 = sub_2662670D8();
      v89 = v146;
      v81(v86, v146);
      v81(v85, v89);

      if ((v88 & 1) == 0)
      {

        v71 = v147;
        goto LABEL_35;
      }
    }
  }

  v71 = v147;
  v90 = [v147 mediaDestination];
  if (!v90)
  {

LABEL_35:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v111 = v151;
    v112 = __swift_project_value_buffer(v151, static Logger.default);
    swift_beginAccess();
    v113 = v150;
    v114 = v143;
    (*(v150 + 16))(v143, v112, v111);
    v115 = v132;
    v116 = v132;
    v117 = sub_266266968();
    v118 = sub_266266D78();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138543362;
      *(v119 + 4) = v116;
      *v120 = v115;
      v121 = v116;
      _os_log_impl(&dword_266219000, v117, v118, "INAddMediaIntentHandler#resolveMediaItem for music item: %{public}@...", v119, 0xCu);
      sub_26622858C(v120, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v120, -1, -1);
      MEMORY[0x266780880](v119, -1, -1);
    }

    (*(v113 + 8))(v114, v111);
    v122 = v144;
    v123 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription + 32];
    __swift_project_boxed_opaque_existential_1(&v144[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription], *&v144[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription + 24]);
    v124 = swift_allocObject();
    v125 = v133;
    v124[2] = sub_2662489AC;
    v124[3] = v125;
    v124[4] = v122;
    v124[5] = v71;
    v124[6] = v116;
    v126 = v116;
    v127 = v71;
    v128 = v122;
    sub_266266508();
  }

  v91 = v136;
  v92 = v90;
  sub_2662669C8();

  v93 = v137;
  v94 = v138;
  v95 = v91;
  v96 = v140;
  (*(v137 + 32))(v138, v95, v140);
  v97 = *(v93 + 88);
  v98 = (v93 + 8);
  if (v97(v94, v96) != *MEMORY[0x277D85358])
  {

    (*v98)(v94, v96);
    goto LABEL_35;
  }

  (*v98)(v94, v96);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v99 = v151;
  v100 = __swift_project_value_buffer(v151, static Logger.default);
  swift_beginAccess();
  v101 = v150;
  (*(v150 + 16))(v139, v100, v99);
  v102 = v132;
  v103 = v132;
  v104 = sub_266266968();
  v105 = sub_266266D78();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 138543362;
    *(v106 + 4) = v103;
    *v107 = v102;
    v108 = v103;
    _os_log_impl(&dword_266219000, v104, v105, "INAddMediaIntentHandler#resolveMediaItem successfully resolved music item: %{public}@ without checking subscription or iCloudLibrarySync status", v106, 0xCu);
    sub_26622858C(v107, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v107, -1, -1);
    MEMORY[0x266780880](v106, -1, -1);
  }

  (*(v101 + 8))(v139, v99);
  v154 = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  v155 = MEMORY[0x277D557C0];
  v152 = v71;
  v109 = v71;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(&v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_266267E70;
  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  *(v110 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
  v152 = v110;
  v149(&v152);
}

uint64_t sub_26623D2B0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v46 = a6;
  v47 = a2;
  v42 = a4;
  v43 = a5;
  v48 = a3;
  v6 = sub_266266988();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2662665F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266266598();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  sub_2662663E8();
  (*(v16 + 104))(v20, *MEMORY[0x277D55770], v15);
  sub_266248B4C(&qword_280069AF0, MEMORY[0x277D55788]);
  sub_266266B78();
  sub_266266B78();
  v23 = *(v16 + 8);
  v23(v20, v15);
  v23(v22, v15);
  if (v49 == v50)
  {
    v24 = *(v42 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32);
    __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v42 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
    v25 = v43;
    v49 = v43;
    (*(v11 + 104))(v14, *MEMORY[0x277D557A8], v10);
    sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    sub_266266648();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    if (v27)
    {
      sub_266266A78();
    }

    v36 = swift_allocObject();
    v37 = v48;
    v36[2] = v47;
    v36[3] = v37;
    v38 = v46;
    v36[4] = v46;
    v36[5] = v25;

    v39 = v38;
    v40 = v25;
    sub_266266168();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v28 = v45;
    v29 = __swift_project_value_buffer(v45, static Logger.default);
    swift_beginAccess();
    v30 = v44;
    (*(v44 + 16))(v9, v29, v28);
    v31 = sub_266266968();
    v32 = sub_266266D68();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INAddMediaIntentHandler#resolveMediaItem the user is not a subscriber", v33, 2u);
      MEMORY[0x266780880](v33, -1, -1);
    }

    (*(v30 + 8))(v9, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_266267E70;
    *(v34 + 32) = [objc_opt_self() unsupportedForReason_];
    v47(v34);
  }
}

uint64_t sub_26623D820(char a1, void (*a2)(void), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_266266988();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v36 - v16;
  if (a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v17, v18, v10);
    v19 = a4;
    v20 = sub_266266968();
    v21 = sub_266266D78();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[1] = a3;
      v23 = a2;
      v24 = v22;
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      *(v24 + 4) = v19;
      *v25 = v19;
      v26 = v19;
      _os_log_impl(&dword_266219000, v20, v21, "INAddMediaIntentHandler#resolveMediaItem successfully resolved music item: %{public}@", v24, 0xCu);
      sub_26622858C(v25, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v25, -1, -1);
      v27 = v24;
      a2 = v23;
      MEMORY[0x266780880](v27, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v37[3] = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    v37[4] = MEMORY[0x277D557C0];
    v37[0] = a5;
    v28 = a5;
    sub_266266CE8();
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v30 = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v15, v31, v10);
    v32 = sub_266266968();
    v33 = sub_266266D68();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266219000, v32, v33, "INAddMediaIntentHandler#resolveMediaItem iCloud library sync required", v34, 2u);
      MEMORY[0x266780880](v34, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    v30 = [objc_opt_self() unsupportedForReason_];
  }

  *(v29 + 32) = v30;
  a2(v29);
}

uint64_t sub_26623DC74(void *a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveNowPlayingItem";
  *(v17 + 24) = 42;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266248454;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266248458;
  *(v19 + 24) = v17;

  sub_26623DF1C(sub_26624845C, v19, v21[1], v21[0]);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26623DF1C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = qword_280069528;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_266266968();
  v17 = sub_266266D58();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266219000, v16, v17, "INAddMediaIntentHandler#resolveNowPlayingItem resolving...", v18, 2u);
    MEMORY[0x266780880](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v19 = *&a3[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 32];
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&a3[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
  v20 = swift_allocObject();
  v20[2] = sub_2662484A0;
  v20[3] = v13;
  v20[4] = a3;
  v20[5] = a4;
  v21 = a3;
  v22 = a4;
  sub_2662663A8();
}

void sub_26623E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9, char *a10, void *a11)
{
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v19 = *&a10[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 32];
    __swift_project_boxed_opaque_existential_1(&a10[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&a10[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
    v20 = swift_allocObject();
    v20[2] = a8;
    v20[3] = a9;
    v20[4] = a10;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a11;

    v21 = a10;
    v22 = a11;
    sub_2662663C8();
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v18, v23, v14);
    v24 = sub_266266968();
    v25 = sub_266266D68();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#resolveNowPlayingItem could not resolve currently playing app from device", v26, 2u);
      MEMORY[0x266780880](v26, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    v27 = [objc_opt_self() unsupportedForReason_];
    a8();
  }
}

void sub_26623E43C(int a1, void (*a2)(void), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v42 = a4;
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v44 = a2;
  v45 = a3;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  v17 = v9[2];
  v17(v15, v16, v8);
  v18 = sub_266266968();
  v19 = sub_266266D48();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v13;
    v21 = a1;
    v22 = v20;
    *v20 = 67240192;
    *(v20 + 4) = v21;
    _os_log_impl(&dword_266219000, v18, v19, "INAddMediaIntentHandler#resolveNowPlayingItem playback state: %{public}u", v20, 8u);
    v23 = v22;
    a1 = v21;
    v13 = v39;
    MEMORY[0x266780880](v23, -1, -1);
  }

  v24 = v9[1];
  v24(v15, v8);
  if (a1 && a1 != 3)
  {
    v31 = v42;
    v32 = *&v42[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 32];
    __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&v42[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
    v33 = swift_allocObject();
    v34 = v43;
    v33[2] = v44;
    v35 = v40;
    v36 = v41;
    v33[3] = v45;
    v33[4] = v35;
    v33[5] = v36;
    v33[6] = v31;
    v33[7] = v34;

    v37 = v31;
    v38 = v34;
    sub_2662663B8();
  }

  else
  {
    v17(v13, v16, v8);
    v25 = sub_266266968();
    v26 = sub_266266D68();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a1;
      v29 = v27;
      *v27 = 67240192;
      *(v27 + 4) = v28;
      _os_log_impl(&dword_266219000, v25, v26, "INAddMediaIntentHandler#resolveNowPlayingItem nothing playing - state: %{public}u", v27, 8u);
      MEMORY[0x266780880](v29, -1, -1);
    }

    v24(v13, v8);
    v30 = [objc_opt_self() unsupportedForReason_];
    v44();
  }
}

void sub_26623E7C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  v201 = a7;
  v202 = a6;
  v214 = a4;
  v215 = a5;
  v219 = a2;
  v220 = a3;
  v218 = a1;
  v207 = sub_266265F28();
  v206 = *(v207 - 8);
  v7 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v205 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_266265F58();
  v204 = *(v210 - 8);
  v9 = *(v204 + 64);
  MEMORY[0x28223BE20](v210);
  v203 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_2662665F8();
  v198 = *(v199 - 8);
  v11 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v197 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266266988();
  v14 = *(v13 - 8);
  v221 = v13;
  v222 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v209 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v208 = &v176 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v195 = &v176 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v216 = &v176 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v176 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v176 - v28;
  v30 = sub_266266038();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v196 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v213 = &v176 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v176 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v212 = &v176 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v176 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v211 = &v176 - v46;
  v194 = v47;
  MEMORY[0x28223BE20](v45);
  v49 = &v176 - v48;
  sub_266228524(v218, v29, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26622858C(v29, &unk_280069700, qword_266268010);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v50 = v221;
    v51 = __swift_project_value_buffer(v221, static Logger.default);
    swift_beginAccess();
    v52 = v222;
    (*(v222 + 16))(v25, v51, v50);
    v53 = sub_266266968();
    v54 = sub_266266D68();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_266219000, v53, v54, "INAddMediaIntentHandler#resolveNowPlayingItem nowPlaying item error", v55, 2u);
      v56 = v55;
      v52 = v222;
      MEMORY[0x266780880](v56, -1, -1);
    }

    (*(v52 + 8))(v25, v50);
    v57 = [objc_opt_self() unsupportedForReason_];
    v219();

    return;
  }

  v58 = v31[4];
  v184 = v31 + 4;
  v183 = v58;
  v58(v49, v29, v30);
  v182 = sub_266265FF8();
  v190 = v59;
  v181 = sub_266265FC8();
  v191 = v60;
  v61 = sub_266266008();
  v63 = v62;
  v64 = sub_266265FD8();
  v65 = v49;
  if ((v66 & 1) == 0)
  {
    v67 = v222;
    v68 = v39;
    if ((v63 & 1) != 0 || v64 != v61)
    {
      goto LABEL_13;
    }

LABEL_12:
    v69 = 0;
    v186 = 1;
    goto LABEL_14;
  }

  v67 = v222;
  v68 = v39;
  if (v63)
  {
    goto LABEL_12;
  }

LABEL_13:
  v69 = sub_266265FD8();
  v186 = v70;
LABEL_14:
  v71 = v44;
  v72 = v216;
  v73 = v211;
  if (qword_280069528 != -1)
  {
    v175 = v69;
    swift_once();
    v69 = v175;
  }

  v185 = v69;
  v74 = v221;
  v75 = __swift_project_value_buffer(v221, static Logger.default);
  swift_beginAccess();
  v76 = *(v67 + 16);
  v187 = v75;
  v218 = v67 + 16;
  v200 = v76;
  v76(v72, v75, v74);
  v77 = v31[2];
  v77(v73, v65, v30);
  v77(v71, v65, v30);
  v188 = v71;
  v78 = v212;
  v77(v212, v65, v30);
  v77(v68, v65, v30);
  v189 = v68;
  v79 = v213;
  v180 = v31 + 2;
  v179 = v77;
  v77(v213, v65, v30);
  v80 = sub_266266968();
  v81 = sub_266266D78();
  v82 = os_log_type_enabled(v80, v81);
  v192 = v31;
  v193 = v65;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v217 = v30;
    v84 = v83;
    v178 = swift_slowAlloc();
    v225 = v178;
    *v84 = 136447234;
    v177 = v81;
    v223 = sub_266265FF8();
    v224 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v176 = v80;
    v86 = sub_266266A68();
    v88 = v87;
    v89 = v31[1];
    v89(v73, v217);
    v90 = sub_26621EAF0(v86, v88, &v225);

    *(v84 + 4) = v90;
    *(v84 + 12) = 2082;
    v91 = v188;
    v223 = sub_266265FC8();
    v224 = v92;
    v93 = sub_266266A68();
    v95 = v94;
    v89(v91, v217);
    v96 = sub_26621EAF0(v93, v95, &v225);

    *(v84 + 14) = v96;
    *(v84 + 22) = 2082;
    v223 = sub_266265FE8();
    v224 = v97;
    v98 = sub_266266A68();
    v100 = v99;
    v89(v78, v217);
    v101 = sub_26621EAF0(v98, v100, &v225);

    *(v84 + 24) = v101;
    *(v84 + 32) = 2082;
    v102 = v189;
    v223 = sub_266266008();
    LOBYTE(v224) = v103 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AB8, &qword_2662685F8);
    v104 = sub_266266A68();
    v106 = v105;
    v89(v102, v217);
    v107 = sub_26621EAF0(v104, v106, &v225);
    v108 = v222;

    *(v84 + 34) = v107;
    *(v84 + 42) = 2082;
    v223 = sub_266266018();
    LOBYTE(v224) = v109 & 1;
    v110 = sub_266266A68();
    v112 = v111;
    v89(v79, v217);
    v65 = v193;
    v113 = sub_26621EAF0(v110, v112, &v225);

    *(v84 + 44) = v113;
    v114 = v176;
    _os_log_impl(&dword_266219000, v176, v177, "INAddMediaIntentHandler#resolveNowPlayingItem now playing: title:%{public}s trackArtist:%{public}s album:%{public}s songId:%{public}s albumId:%{public}s", v84, 0x34u);
    v115 = v178;
    swift_arrayDestroy();
    MEMORY[0x266780880](v115, -1, -1);
    v116 = v84;
    v30 = v217;
    MEMORY[0x266780880](v116, -1, -1);

    v117 = *(v108 + 8);
    v118 = v216;
  }

  else
  {

    v119 = v31[1];
    v119(v79, v30);
    v119(v189, v30);
    v119(v78, v30);
    v119(v188, v30);
    v119(v73, v30);
    v117 = *(v67 + 8);
    v118 = v72;
  }

  v120 = v221;
  v117(v118, v221);
  v122 = v214;
  v121 = v215;
  if (sub_266266278() == v122 && v123 == v121)
  {

LABEL_23:

    v125 = v208;
    v126 = v187;
    v200(v208, v187, v120);
    v127 = sub_266266968();
    v128 = sub_266266D58();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_266219000, v127, v128, "INAddMediaIntentHandler#resolveNowPlayingItem choosing podcast type", v129, 2u);
      MEMORY[0x266780880](v129, -1, -1);
    }

    v117(v125, v120);
    v130 = sub_266266018();
    if ((v131 & 1) == 0)
    {
      v136 = v130;
      v222 = sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      v223 = v136;
      sub_2662670C8();
      sub_266265FC8();
      v137 = v204;
      v138 = v203;
      (*(v204 + 104))(v203, *MEMORY[0x277D55600], v210);
      v139 = v206;
      v140 = v205;
      v141 = v207;
      (*(v206 + 104))(v205, *MEMORY[0x277D555C8], v207);
      v142 = sub_266266C98();

      (*(v139 + 8))(v140, v141);
      (*(v137 + 8))(v138, v210);
      (v219)(v142, 0);

      (v192[1])(v193, v30);
      return;
    }

    v200(v209, v126, v120);
    v132 = sub_266266968();
    v133 = sub_266266D68();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_266219000, v132, v133, "INAddMediaIntentHandler#resolveNowPlayingItem Unexpected nil album identifier.", v134, 2u);
      MEMORY[0x266780880](v134, -1, -1);
    }

    v117(v209, v120);
    v135 = [objc_opt_self() unsupportedForReason_];
    v219();

    goto LABEL_32;
  }

  v124 = sub_2662670D8();

  if (v124)
  {
    goto LABEL_23;
  }

  if (v186)
  {
LABEL_31:

    sub_266240540(v201, v65, v219, v220);
LABEL_32:
    (v192[1])(v65, v30);
    return;
  }

  if (sub_266266268() == v122 && v143 == v121)
  {
  }

  else
  {
    v144 = sub_2662670D8();

    if ((v144 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v145 = v195;
  v200(v195, v187, v120);
  v146 = sub_266266968();
  v147 = sub_266266D58();
  v148 = os_log_type_enabled(v146, v147);
  v217 = v30;
  if (v148)
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v223 = v150;
    *v149 = 136315138;
    v151 = v185;
    v225 = v185;
    v152 = sub_2662670C8();
    v154 = sub_26621EAF0(v152, v153, &v223);

    *(v149 + 4) = v154;
    _os_log_impl(&dword_266219000, v146, v147, "INAddMediaIntentHandler#resolveNowPlayingItem has persistentId, resolving to song using persistentId %s", v149, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v150);
    MEMORY[0x266780880](v150, -1, -1);
    MEMORY[0x266780880](v149, -1, -1);

    v117(v145, v120);
  }

  else
  {

    v117(v145, v120);
    v151 = v185;
  }

  v155 = *&v202[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
  v218 = *&v202[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
  v221 = v155;
  v222 = __swift_project_boxed_opaque_existential_1(&v202[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v155);
  v223 = v151;
  v215 = sub_2662670C8();
  v216 = v156;
  v223 = v201;
  v157 = v198;
  v158 = v197;
  v159 = v199;
  (*(v198 + 104))(v197, *MEMORY[0x277D557A8], v199);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v161 = v160;
  (*(v157 + 8))(v158, v159);
  if (v161)
  {
    sub_266266A78();
  }

  v162 = v196;
  v163 = v217;
  v179(v196, v193, v217);
  v164 = v192;
  v165 = (*(v192 + 80) + 88) & ~*(v192 + 80);
  v166 = swift_allocObject();
  v167 = v201;
  v168 = v185;
  *(v166 + 2) = v201;
  *(v166 + 3) = v168;
  v169 = v220;
  *(v166 + 4) = v219;
  *(v166 + 5) = v169;
  v170 = v190;
  *(v166 + 6) = v182;
  *(v166 + 7) = v170;
  v171 = v191;
  *(v166 + 8) = v181;
  *(v166 + 9) = v171;
  v172 = v202;
  *(v166 + 10) = v202;
  v183(&v166[v165], v162, v163);

  v173 = v167;

  v174 = v172;
  sub_266266178();

  swift_bridgeObjectRelease_n();

  (v164[1])(v193, v163);
}

void sub_26623FBDC(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v91 = a8;
  v92 = a3;
  v88 = a6;
  v89 = a7;
  v94 = a5;
  v95 = a4;
  v90 = sub_266265F58();
  v87 = *(v90 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_266265F28();
  v84 = *(v86 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266266988();
  v93 = *(v17 - 8);
  v18 = *(v93 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v82 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  v27 = sub_2662669D8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v82 - v33;
  if (a1)
  {
    v35 = [a2 mediaDestination];
    if (v35 && (v36 = v35, sub_2662669C8(), v36, (*(v28 + 32))(v34, v32, v27), LODWORD(v36) = (*(v28 + 88))(v34, v27), v37 = *MEMORY[0x277D85350], (*(v28 + 8))(v34, v27), v36 == v37))
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v38 = v17;
      v39 = __swift_project_value_buffer(v17, static Logger.default);
      swift_beginAccess();
      v40 = v93;
      (*(v93 + 16))(v26, v39, v38);
      v41 = sub_266266968();
      v42 = sub_266266D58();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 136446210;
        v96 = v92;
        v97 = v44;
        v45 = sub_2662670C8();
        v47 = sub_26621EAF0(v45, v46, &v97);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_266219000, v41, v42, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s asked to add to library and exists in library, returning error dialog.", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x266780880](v44, -1, -1);
        MEMORY[0x266780880](v43, -1, -1);
      }

      (*(v40 + 8))(v26, v38);
      v48 = [objc_opt_self() unsupportedForReason_];
      v95();
    }

    else
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v62 = v17;
      v63 = __swift_project_value_buffer(v17, static Logger.default);
      swift_beginAccess();
      v64 = v93;
      (*(v93 + 16))(v24, v63, v62);
      v65 = sub_266266968();
      v66 = sub_266266D58();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v92;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v96 = v68;
        v97 = v70;
        *v69 = 136446210;
        v71 = sub_2662670C8();
        v73 = sub_26621EAF0(v71, v72, &v97);
        v82 = v62;
        v74 = v73;

        *(v69 + 4) = v74;
        _os_log_impl(&dword_266219000, v65, v66, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s exists in library and target is not library.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266780880](v70, -1, -1);
        MEMORY[0x266780880](v69, -1, -1);

        (*(v64 + 8))(v24, v82);
      }

      else
      {

        (*(v64 + 8))(v24, v62);
      }

      sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      v97 = v68;
      sub_2662670C8();
      v76 = v83;
      v75 = v84;
      v77 = v86;
      (*(v84 + 104))(v83, *MEMORY[0x277D555D0], v86);
      v78 = v87;
      v79 = v85;
      v80 = v90;
      (*(v87 + 104))(v85, *MEMORY[0x277D55600], v90);
      v81 = sub_266266C98();

      (*(v78 + 8))(v79, v80);
      (*(v75 + 8))(v76, v77);
      (v95)(v81, 0);
    }
  }

  else
  {
    v91 = a2;
    v49 = a11;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v50 = v17;
    v51 = __swift_project_value_buffer(v17, static Logger.default);
    swift_beginAccess();
    v52 = v93;
    (*(v93 + 16))(v21, v51, v50);
    v53 = sub_266266968();
    v54 = sub_266266D58();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136446210;
      v96 = v92;
      v97 = v56;
      v57 = sub_2662670C8();
      v59 = sub_26621EAF0(v57, v58, &v97);
      v92 = a11;
      v60 = v50;
      v61 = v59;

      *(v55 + 4) = v61;
      _os_log_impl(&dword_266219000, v53, v54, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s doesn't exist in the library and target is library or playlist. This can happen if the persistentID is present due to cached content", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266780880](v56, -1, -1);
      MEMORY[0x266780880](v55, -1, -1);

      v49 = v92;
      (*(v52 + 8))(v21, v60);
    }

    else
    {

      (*(v52 + 8))(v21, v50);
    }

    sub_266240540(v91, v49, v95, v94);
  }
}

void sub_266240540(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v104 = a3;
  v105 = a4;
  v5 = sub_2662665F8();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v83 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v92 = sub_266265FF8();
  v101 = v24;
  v97 = sub_266265FC8();
  v103 = v25;
  v86 = sub_266265FE8();
  v102 = v26;
  v99 = sub_266266008();
  v98 = v27;
  v88 = sub_266266018();
  v87 = v28;
  v100 = a1;
  v29 = [a1 mediaSearch];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 mediaType];
  }

  else
  {
    v31 = 0;
  }

  v90 = v21;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  v33 = v9[2];
  v33(v23, v32, v8);
  v34 = sub_266266968();
  v35 = sub_266266D58();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v31;
    _os_log_impl(&dword_266219000, v34, v35, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId choosing music type for search type: %{public}ld", v36, 0xCu);
    MEMORY[0x266780880](v36, -1, -1);
  }

  v37 = v9[1];
  v37(v23, v8);
  if (v31 > 0x12)
  {
    goto LABEL_23;
  }

  if (((1 << v31) & 0x40023) != 0)
  {

    if (v98)
    {

      v38 = v91;
      v33(v91, v32, v8);
      v39 = sub_266266968();
      v40 = sub_266266D68();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_266219000, v39, v40, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId Unexpected nil song identifier for song request", v41, 2u);
        MEMORY[0x266780880](v41, -1, -1);
      }

LABEL_13:

      v37(v38, v8);
      v42 = [objc_opt_self() unsupportedForReason_];
LABEL_26:
      v58 = v42;
      v104();

      return;
    }

    v43 = v90;
    v33(v90, v32, v8);
    v44 = sub_266266968();
    v45 = sub_266266D58();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266219000, v44, v45, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId building song item from now playing...", v46, 2u);
      MEMORY[0x266780880](v46, -1, -1);
    }

    v37(v43, v8);
    v47 = *(v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32);
    __swift_project_boxed_opaque_existential_1((v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
    v106 = v99;
    sub_2662670C8();
    v106 = v100;
    v49 = v94;
    v48 = v95;
    v50 = v96;
    (*(v95 + 104))(v94, *MEMORY[0x277D557A8], v96);
    sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    sub_266266648();
    v52 = v51;
    (*(v48 + 8))(v49, v50);
    if (v52)
    {
      sub_266266A78();
    }

    v59 = swift_allocObject();
    v60 = v99;
    v61 = v100;
    v59[2] = v100;
    v59[3] = v60;
    v62 = v105;
    v59[4] = v104;
    v59[5] = v62;
    v63 = v101;
    v59[6] = v92;
    v59[7] = v63;
    v64 = v103;
    v59[8] = v97;
    v59[9] = v64;

    v65 = v61;

    goto LABEL_28;
  }

  if (v31 != 2)
  {
LABEL_23:

    v33(v89, v32, v8);
    v55 = sub_266266968();
    v56 = sub_266266D68();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134349056;
      *(v57 + 4) = v31;
      _os_log_impl(&dword_266219000, v55, v56, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId unexpected media type to add: %{public}ld", v57, 0xCu);
      MEMORY[0x266780880](v57, -1, -1);
    }

    v37(v89, v8);
    v42 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_26;
  }

  if (v87)
  {

    v38 = v85;
    v33(v85, v32, v8);
    v39 = sub_266266968();
    v53 = sub_266266D68();
    if (os_log_type_enabled(v39, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_266219000, v39, v53, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId Unexpected nil album identifier for album request", v54, 2u);
      MEMORY[0x266780880](v54, -1, -1);
    }

    goto LABEL_13;
  }

  v66 = v84;
  v33(v84, v32, v8);
  v67 = sub_266266968();
  v68 = sub_266266D58();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_266219000, v67, v68, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId building album item from now playing...", v69, 2u);
    MEMORY[0x266780880](v69, -1, -1);
  }

  v37(v66, v8);
  v70 = *(v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32);
  __swift_project_boxed_opaque_existential_1((v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v93 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
  v106 = v88;
  sub_2662670C8();
  v106 = v100;
  v72 = v94;
  v71 = v95;
  v73 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277D557A8], v96);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v75 = v74;
  (*(v71 + 8))(v72, v73);
  if (v75)
  {
    sub_266266A78();
  }

  v76 = swift_allocObject();
  v77 = v100;
  v78 = v88;
  v76[2] = v100;
  v76[3] = v78;
  v79 = v105;
  v76[4] = v104;
  v76[5] = v79;
  v80 = v102;
  v76[6] = v86;
  v76[7] = v80;
  v81 = v103;
  v76[8] = v97;
  v76[9] = v81;

  v82 = v77;

LABEL_28:
  sub_266266178();

  swift_bridgeObjectRelease_n();
}

void sub_266241024(char a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v56 = a5;
  v57 = a4;
  v55 = a3;
  v54 = sub_266265F28();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_266265F58();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v50);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_266266988();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v18);
  v47 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2662669D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - v27;
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v29 = [a2 mediaDestination];
  if (!v29)
  {
    goto LABEL_9;
  }

  v30 = v29;
  sub_2662669C8();

  (*(v22 + 32))(v28, v26, v21);
  LODWORD(v30) = (*(v22 + 88))(v28, v21);
  v31 = *MEMORY[0x277D85350];
  (*(v22 + 8))(v28, v21);
  if (v30 == v31)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v32 = v49;
    v33 = __swift_project_value_buffer(v49, static Logger.default);
    swift_beginAccess();
    v35 = v47;
    v34 = v48;
    (*(v48 + 16))(v47, v33, v32);
    v36 = sub_266266968();
    v37 = sub_266266D58();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136446210;
      v58 = v55;
      v59[0] = v39;
      v40 = sub_2662670C8();
      v42 = sub_26621EAF0(v40, v41, v59);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_266219000, v36, v37, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s asked to add to library and exists in library, returning error dialog.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266780880](v39, -1, -1);
      MEMORY[0x266780880](v38, -1, -1);
    }

    (*(v34 + 8))(v35, v32);
    v43 = [objc_opt_self() unsupportedForReason_];
    v44 = 1;
  }

  else
  {
LABEL_9:
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v59[1] = v55;
    sub_2662670C8();
    v45 = v50;
    (*(v14 + 104))(v17, *MEMORY[0x277D55600], v50);
    v46 = v54;
    (*(v10 + 104))(v13, *MEMORY[0x277D555C8], v54);
    v43 = sub_266266C98();

    (*(v10 + 8))(v13, v46);
    (*(v14 + 8))(v17, v45);
    v44 = 0;
  }

  v57(v43, v44);
}

void sub_2662415E4(char a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a7;
  v72 = a8;
  v70 = a6;
  v75 = a5;
  v76 = a4;
  v73 = a3;
  v11 = sub_266265F28();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_266265F58();
  v66 = *(v68 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_266266988();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v64 - v21;
  v23 = sub_2662669D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v64 - v29;
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = [a2 mediaDestination];
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = v31;
  sub_2662669C8();

  (*(v24 + 32))(v30, v28, v23);
  LODWORD(v32) = (*(v24 + 88))(v30, v23);
  v33 = *MEMORY[0x277D85350];
  (*(v24 + 8))(v30, v23);
  if (v32 == v33)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v16, static Logger.default);
    swift_beginAccess();
    v35 = v74;
    v36 = v22;
    (*(v74 + 16))(v22, v34, v16);
    v37 = sub_266266968();
    v38 = sub_266266D58();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 136446210;
      v77 = v73;
      v78 = v40;
      v41 = sub_2662670C8();
      v43 = sub_26621EAF0(v41, v42, &v78);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_266219000, v37, v38, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s asked to add to library and exists in library, returning error dialog.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266780880](v40, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);
    }

    (*(v35 + 8))(v36, v16);
    v44 = [objc_opt_self() unsupportedForReason_];
    v45 = 1;
  }

  else
  {
LABEL_9:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v16, static Logger.default);
    swift_beginAccess();
    v47 = v74;
    (*(v74 + 16))(v20, v46, v16);
    v48 = sub_266266968();
    v49 = sub_266266D58();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 136446210;
      v64[0] = v16;
      v52 = v73;
      v77 = v73;
      v78 = v51;
      v53 = sub_2662670C8();
      v55 = sub_26621EAF0(v53, v54, &v78);
      v64[1] = a9;
      v56 = v11;
      v57 = v47;
      v58 = v55;

      *(v50 + 4) = v58;
      _os_log_impl(&dword_266219000, v48, v49, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s does not exists in library.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);

      (*(v57 + 8))(v20, v64[0]);
      v11 = v56;
    }

    else
    {

      (*(v47 + 8))(v20, v16);
      v52 = v73;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v78 = v52;
    sub_2662670C8();
    v60 = v65;
    v59 = v66;
    v61 = v68;
    (*(v66 + 104))(v65, *MEMORY[0x277D55600], v68);
    v62 = v69;
    v63 = v67;
    (*(v69 + 104))(v67, *MEMORY[0x277D555C8], v11);
    v44 = sub_266266C98();

    (*(v62 + 8))(v63, v11);
    (*(v59 + 8))(v60, v61);
    v45 = 0;
  }

  v76(v44, v45);
}

id INAddMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INAddMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_266241E70()
{
  v0 = [objc_opt_self() playlistsQuery];

  return v0;
}

id sub_266241EB0()
{
  v0 = [objc_opt_self() songsQuery];

  return v0;
}

id sub_266241EF0()
{
  v0 = [objc_opt_self() albumsQuery];

  return v0;
}

uint64_t sub_266241F54()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266241F94(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_266241FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_266266F28();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  sub_266266928();
  return a6(&v8);
}

uint64_t sub_266242090(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_266241FC0(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_266242138(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_2662421AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  sub_266266F28();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  sub_266266928();
  return a6(&v9);
}

void sub_266242284(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v370 = a2;
  v7 = sub_266265F58();
  v361 = *(v7 - 8);
  v8 = *(v361 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v335 = &v324 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v360 = &v324 - v11;
  v12 = sub_266265F28();
  v374 = *(v12 - 8);
  v375 = v12;
  v13 = v374[8];
  v14 = MEMORY[0x28223BE20](v12);
  v341 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v342 = &v324 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v345 = &v324 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v356 = &v324 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v358 = &v324 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v366 = &v324 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v338 = &v324 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v339 = &v324 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v354 = &v324 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v355 = &v324 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v353 = &v324 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v365 = &v324 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v347 = &v324 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v348 = &v324 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v364 = &v324 - v43;
  MEMORY[0x28223BE20](v42);
  v368 = &v324 - v44;
  v373 = sub_266265F08();
  v371 = *(v373 - 8);
  v45 = *(v371 + 64);
  v46 = MEMORY[0x28223BE20](v373);
  v340 = &v324 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v334 = &v324 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v351 = &v324 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v344 = &v324 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v357 = &v324 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v337 = &v324 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v343 = &v324 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v352 = &v324 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v346 = &v324 - v63;
  MEMORY[0x28223BE20](v62);
  v363 = &v324 - v64;
  v65 = sub_266266988();
  v66 = *(v65 - 8);
  v67 = v66[8];
  v68 = MEMORY[0x28223BE20](v65);
  v378 = &v324 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v333 = &v324 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v359 = &v324 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v336 = &v324 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v350 = &v324 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v349 = &v324 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v362 = &v324 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v367 = &v324 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v369 = &v324 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v372 = &v324 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v377 = &v324 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v92 = &v324 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v95 = (&v324 - v94);
  v96 = MEMORY[0x28223BE20](v93);
  v98 = &v324 - v97;
  MEMORY[0x28223BE20](v96);
  v100 = &v324 - v99;
  v376 = a1;
  v101 = [a1 privateAddMediaIntentData];
  if (!v101)
  {
    goto LABEL_168;
  }

  v379 = v66;
  v102 = v101;
  v103 = [v101 audioSearchResults];

  v66 = v379;
  if (!v103)
  {
    goto LABEL_168;
  }

  v332 = a3;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v104 = sub_266266BB8();

  if (!(v104 >> 62))
  {
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_167;
  }

  if (!sub_266267078())
  {
LABEL_167:

    a3 = v332;
LABEL_168:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v320 = __swift_project_value_buffer(v65, static Logger.default);
    swift_beginAccess();
    (v66[2])(v100, v320, v65);
    v321 = sub_266266968();
    v322 = sub_266266D68();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      *v323 = 0;
      _os_log_impl(&dword_266219000, v321, v322, "INAddMediaIntentHandler#resolveSearchItem empty media item in privateAddMediaIntent data", v323, 2u);
      MEMORY[0x266780880](v323, -1, -1);
    }

    (v66[1])(v100, v65);
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v259 = [swift_getObjCClassFromMetadata() unsupported];
    v382 = v259;
    LOBYTE(v383) = 1;
    a3(&v382);
    goto LABEL_173;
  }

LABEL_5:
  if ((v104 & 0xC000000000000001) != 0)
  {
    v105 = MEMORY[0x266780220](0, v104);
  }

  else
  {
    if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_176;
    }

    v105 = *(v104 + 32);
  }

  v106 = v105;

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v107 = __swift_project_value_buffer(v65, static Logger.default);
  swift_beginAccess();
  v108 = v66[2];
  v329 = v107;
  v331 = v66 + 2;
  v330 = v108;
  v108(v98, v107, v65);
  v109 = v106;
  v110 = sub_266266968();
  v111 = sub_266266D58();

  v112 = os_log_type_enabled(v110, v111);
  v326 = v7;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v328 = v65;
    v327 = a4;
    v115 = v114;
    v382 = v114;
    *v113 = 136446210;
    v116 = sub_266266CD8();
    v118 = sub_26621EAF0(v116, v117, &v382);

    *(v113 + 4) = v118;
    _os_log_impl(&dword_266219000, v110, v111, "INAddMediaIntentHandler#resolveSearchItem resolving from item: %{public}s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v119 = v115;
    a4 = v327;
    v65 = v328;
    MEMORY[0x266780880](v119, -1, -1);
    v120 = v113;
    v66 = v379;
    MEMORY[0x266780880](v120, -1, -1);
  }

  v121 = v66[1];
  v121(v98, v65);
  v98 = [v109 type];
  if (!sub_26621CAD0(v98, &unk_2877D9958))
  {
    v104 = v109;
    v100 = [v376 backingStore];
    objc_opt_self();
    v146 = swift_dynamicCastObjCClass();
    if (!v146)
    {

      v66 = v332;
LABEL_32:
      v148 = v378;
LABEL_50:
      v330(v148, v329, v65);
      v180 = sub_266266968();
      v181 = sub_266266D68();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 134349056;
        *(v182 + 4) = v98;
        _os_log_impl(&dword_266219000, v180, v181, "INAddMediaIntentHandler#resolveSearchItem is of unsupported media type=%{public}ld", v182, 0xCu);
        MEMORY[0x266780880](v182, -1, -1);
      }

      v121(v148, v65);
      v183 = [objc_opt_self() unsupportedForReason_];
      v382 = v183;
      LOBYTE(v383) = 1;
      (v66)(&v382);

      return;
    }

    v377 = v146;
    v147 = [v146 privateAddMediaIntentData];
    v66 = v332;
    v148 = v378;
    if (!v147)
    {

      goto LABEL_50;
    }

    v95 = v121;
    v149 = v147;
    v150 = [v147 audioSearchResults];

    if (!v150)
    {

      v121 = v95;
      goto LABEL_50;
    }

    v328 = v65;
    sub_266228130(0, &qword_280069AF8, 0x277CD4360);
    v92 = sub_266266BB8();

    if (!(v92 >> 62))
    {
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        if ((v92 & 0xC000000000000001) != 0)
        {
          v151 = MEMORY[0x266780220](0, v92);
        }

        else
        {
          if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v151 = *(v92 + 32);
        }

        v152 = v151;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_266267E70;
        *(v153 + 32) = v152;
        v154 = v152;
        v155 = sub_266266B98();

        [v377 setMediaItems_];

        v65 = v328;
        v121 = v95;
        goto LABEL_32;
      }

      goto LABEL_177;
    }

LABEL_176:
    if (sub_266267078())
    {
      goto LABEL_24;
    }

LABEL_177:
    v121 = v95;

    v65 = v328;
    goto LABEL_32;
  }

  v378 = v109;
  v122 = [v109 identifier];
  if (!v122)
  {
    v330(v92, v329, v65);
    v156 = sub_266266968();
    v157 = sub_266266D68();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_266219000, v156, v157, "INAddMediaIntentHandler#resolveSearchItem could not find item identifier", v158, 2u);
      MEMORY[0x266780880](v158, -1, -1);
    }

    v121(v92, v65);
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v159 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_36;
  }

  v325 = v121;
  v123 = v122;
  v124 = sub_266266A58();
  v126 = v125;

  v330(v95, v329, v65);

  v127 = sub_266266968();
  v128 = sub_266266D58();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = a4;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v382 = v131;
    *v130 = 136446210;
    *(v130 + 4) = sub_26621EAF0(v124, v126, &v382);
    _os_log_impl(&dword_266219000, v127, v128, "INAddMediaIntentHandler#media item identifier: %{public}s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    MEMORY[0x266780880](v131, -1, -1);
    v132 = v130;
    a4 = v129;
    MEMORY[0x266780880](v132, -1, -1);
  }

  v133 = v325;
  v325(v95, v65);
  v134 = sub_266265F68();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();

  v137 = sub_266265F78();
  if (!v137)
  {

    v160 = v372;
    v330(v372, v329, v65);
    v161 = sub_266266968();
    v162 = sub_266266D68();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_266219000, v161, v162, "INAddMediaIntentHandler#resolveSearchItem could not parse remote item identifier", v163, 2u);
      MEMORY[0x266780880](v163, -1, -1);
    }

    v133(v160, v65);
    v159 = [objc_opt_self() unsupportedForReason_];
LABEL_36:
    v164 = v159;
    v382 = v164;
    LOBYTE(v383) = 1;
    v332(&v382);

LABEL_105:
    return;
  }

  v376 = v137;
  v330(v377, v329, v65);
  v138 = v378;

  v139 = sub_266266968();
  v140 = sub_266266D78();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = a4;
    v143 = swift_slowAlloc();
    v382 = v143;
    *v141 = 134349314;
    *(v141 + 4) = [v138 type];

    *(v141 + 12) = 2082;
    v144 = sub_26621EAF0(v124, v126, &v382);

    *(v141 + 14) = v144;
    _os_log_impl(&dword_266219000, v139, v140, "INAddMediaIntentHandler#resolveSearchItem for item with type: %{public}ld identifier: %{public}s", v141, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v143);
    v145 = v143;
    a4 = v142;
    v133 = v325;
    MEMORY[0x266780880](v145, -1, -1);
    MEMORY[0x266780880](v141, -1, -1);
  }

  else
  {
  }

  v133(v377, v65);
  v165 = [v138 type];
  v378 = v138;
  if (v165 == 6)
  {
    v166 = v369;
    v330(v369, v329, v65);
    v167 = sub_266266968();
    v168 = sub_266266D78();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_266219000, v167, v168, "INAddMediaIntentHandler#resolveSearchItem empty media item in privateAddMediaIntent data", v169, 2u);
      MEMORY[0x266780880](v169, -1, -1);
    }

    v133(v166, v65);
    sub_266265F38();
    v170 = v378;
    v171 = [v378 title];
    if (v171)
    {
      v172 = v171;
      sub_266266A58();
      v174 = v173;

      v170 = v378;
    }

    else
    {
      v174 = 0;
    }

    v184 = v332;
    v185 = [v170 artist];
    if (v185)
    {
      v186 = v185;
      sub_266266A58();
      v188 = v187;
    }

    else
    {
      v188 = 0;
    }

    v194 = sub_266266A48();

    if (v174)
    {
      v195 = sub_266266A48();
    }

    else
    {
      v195 = 0;
    }

    if (v188)
    {
      v196 = sub_266266A48();
    }

    else
    {
      v196 = 0;
    }

    v197 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v194 title:v195 type:6 artwork:0 artist:v196];

    v382 = v197;
    LOBYTE(v383) = 0;
    v184(&v382);

    goto LABEL_104;
  }

  if (!v370)
  {
    v189 = v367;
    v330(v367, v329, v65);
    v190 = sub_266266968();
    v191 = sub_266266D68();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_266219000, v190, v191, "INAddMediaIntentHandler#resolveSearchItem Unexpected empty destination", v192, 2u);
      MEMORY[0x266780880](v192, -1, -1);
    }

    v133(v189, v65);
    v193 = [objc_opt_self() unsupportedForReason_];
    v382 = v193;
    LOBYTE(v383) = 1;
    v332(&v382);

    return;
  }

  v328 = v65;
  v327 = a4;
  v175 = &off_279BCA000;
  v377 = v370;
  if ([v377 mediaDestinationType] == 2)
  {
    v176 = v363;
    sub_266265F18();
    sub_266265EE8();
    v372 = *(v371 + 8);
    (v372)(v176, v373);
    v177 = v374[13];
    v178 = v364;
    v177(v364, *MEMORY[0x277D555C0], v375);
    sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0]);
    sub_266266B78();
    sub_266266B78();
    if (v382 == v380 && v383 == v381)
    {
      v179 = 1;
    }

    else
    {
      v179 = sub_2662670D8();
    }

    v198 = v374[1];
    v199 = v178;
    v200 = v375;
    v198(v199, v375);
    v198(v368, v200);

    if (v179)
    {
      goto LABEL_73;
    }

    v201 = v346;
    sub_266265F18();
    v202 = v348;
    sub_266265EE8();
    (v372)(v201, v373);
    v203 = v347;
    v204 = v375;
    v177(v347, *MEMORY[0x277D555D0], v375);
    sub_266266B78();
    sub_266266B78();
    if (v382 == v380 && v383 == v381)
    {
      v198(v203, v204);
      v198(v202, v204);

LABEL_73:
      v206 = v362;
      v207 = v328;
      v330(v362, v329, v328);
      v208 = sub_266266968();
      v209 = sub_266266D78();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *v210 = 0;
        _os_log_impl(&dword_266219000, v208, v209, "INAddMediaIntentHandler#resolveSearchItem adding local item with ulid to playlist.", v210, 2u);
        MEMORY[0x266780880](v210, -1, -1);
      }

      v325(v206, v207);
      sub_266265F38();
      v211 = v378;
      v212 = [v378 title];
      if (v212)
      {
        v213 = v212;
        sub_266266A58();
        v215 = v214;

        v211 = v378;
      }

      else
      {
        v215 = 0;
      }

      v220 = [v211 artist];
      v221 = v332;
      if (v220)
      {
        v222 = v220;
        sub_266266A58();
        v224 = v223;
      }

      else
      {
        v224 = 0;
      }

      v225 = sub_266266A48();

      if (v215)
      {
        v226 = sub_266266A48();
      }

      else
      {
        v226 = 0;
      }

      if (v224)
      {
        v227 = sub_266266A48();
      }

      else
      {
        v227 = 0;
      }

      v228 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v225 title:v226 type:1 artwork:0 artist:v227];

      v382 = v228;
      LOBYTE(v383) = 0;
      v221(&v382);

      goto LABEL_103;
    }

    v205 = sub_2662670D8();
    v198(v203, v204);
    v198(v202, v204);

    v175 = &off_279BCA000;
    if (v205)
    {
      goto LABEL_73;
    }
  }

  if ([v377 v175[236]] == 1)
  {
    v216 = v352;
    sub_266265F18();
    sub_266265EE8();
    v372 = *(v371 + 8);
    (v372)(v216, v373);
    v217 = v374[13];
    v218 = v353;
    v217(v353, *MEMORY[0x277D555D0], v375);
    sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0]);
    sub_266266B78();
    sub_266266B78();
    if (v382 == v380 && v383 == v381)
    {
      v219 = 1;
    }

    else
    {
      v219 = sub_2662670D8();
    }

    v229 = v374[1];
    v230 = v218;
    v231 = v375;
    v229(v230, v375);
    v229(v365, v231);

    if (v219)
    {
      goto LABEL_99;
    }

    v232 = v343;
    sub_266265F18();
    sub_266265EE8();
    (v372)(v232, v373);
    v233 = v375;
    v217(v354, *MEMORY[0x277D555C0], v375);
    sub_266266B78();
    sub_266266B78();
    if (v382 == v380 && v383 == v381)
    {
      v229(v354, v233);
      v229(v355, v233);

LABEL_97:

LABEL_99:
      v236 = v349;
      v237 = v328;
      v330(v349, v329, v328);
      v238 = sub_266266968();
      v239 = sub_266266D68();
      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        *v240 = 0;
        _os_log_impl(&dword_266219000, v238, v239, "INAddMediaIntentHandler#resolveSearchItem content source is .store or .ulid, the item is already in library.", v240, 2u);
        MEMORY[0x266780880](v240, -1, -1);
      }

      v325(v236, v237);
      v241 = [objc_opt_self() unsupportedForReason_];
      v382 = v241;
      LOBYTE(v383) = 1;
      v332(&v382);
LABEL_102:

LABEL_103:
LABEL_104:

      goto LABEL_105;
    }

    v234 = v233;
    v235 = sub_2662670D8();
    v229(v354, v234);
    v229(v355, v234);

    if (v235)
    {
      goto LABEL_99;
    }

    v242 = v337;
    sub_266265F18();
    v243 = v339;
    sub_266265EE8();
    (v372)(v242, v373);
    v244 = v338;
    v245 = v375;
    v217(v338, *MEMORY[0x277D555D8], v375);
    sub_266266B78();
    sub_266266B78();
    if (v382 == v380 && v383 == v381)
    {
      v229(v244, v245);
      v229(v243, v245);

      goto LABEL_97;
    }

    v246 = sub_2662670D8();
    v229(v244, v245);
    v229(v243, v245);

    if (v246)
    {
      goto LABEL_99;
    }
  }

  v247 = v357;
  sub_266265F18();
  sub_266265EE8();
  v248 = *(v371 + 8);
  v371 += 8;
  v372 = v248;
  (v248)(v247, v373);
  v249 = v374[13];
  v250 = v358;
  v249(v358, *MEMORY[0x277D555C8], v375);
  sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0]);
  sub_266266B78();
  sub_266266B78();
  if (v382 == v380 && v383 == v381)
  {
    v251 = 1;
  }

  else
  {
    v251 = sub_2662670D8();
  }

  v252 = v375;
  v253 = v374[1];
  v253(v250, v375);
  v253(v366, v252);

  v254 = v332;
  if (v251)
  {
    goto LABEL_120;
  }

  v255 = v344;
  sub_266265F18();
  sub_266265EE8();
  (v372)(v255, v373);
  v256 = v345;
  v249(v345, *MEMORY[0x277D555D8], v252);
  sub_266266B78();
  sub_266266B78();
  if (v382 == v380 && v383 == v381)
  {
    v253(v256, v252);
    v253(v356, v252);
  }

  else
  {
    v257 = sub_2662670D8();
    v253(v256, v252);
    v253(v356, v252);

    v254 = v332;
    if (v257)
    {
      goto LABEL_120;
    }

    v293 = v340;
    sub_266265F18();
    v294 = v342;
    sub_266265EE8();
    (v372)(v293, v373);
    v295 = v341;
    v249(v341, *MEMORY[0x277D555D0], v252);
    sub_266266B78();
    sub_266266B78();
    if (v382 != v380 || v383 != v381)
    {
      v314 = sub_2662670D8();
      v253(v295, v252);
      v253(v294, v252);

      v254 = v332;
      if ((v314 & 1) == 0)
      {
        v315 = v333;
        v330(v333, v329, v328);
        v316 = sub_266266968();
        v317 = sub_266266D68();
        if (os_log_type_enabled(v316, v317))
        {
          v318 = swift_slowAlloc();
          *v318 = 0;
          _os_log_impl(&dword_266219000, v316, v317, "INAddMediaIntentHandler#resolveSearchItem unexpected content source is not from store.", v318, 2u);
          MEMORY[0x266780880](v318, -1, -1);
        }

        v325(v315, v328);
        v241 = [objc_opt_self() unsupportedForReason_];
        v382 = v241;
        LOBYTE(v383) = 1;
        v254(&v382);
        goto LABEL_102;
      }

      goto LABEL_120;
    }

    v253(v295, v252);
    v253(v294, v252);
  }

  v254 = v332;
LABEL_120:
  v258 = v350;
  v330(v350, v329, v328);
  v259 = v378;
  v260 = sub_266266968();
  v261 = sub_266266D58();

  if (os_log_type_enabled(v260, v261))
  {
    v262 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    *v262 = 138543362;
    *(v262 + 4) = v259;
    *v263 = v259;
    v264 = v259;
    _os_log_impl(&dword_266219000, v260, v261, "INAddMediaIntentHandler#resolveSearchItem Constructing media item to add from item: %{public}@", v262, 0xCu);
    sub_26622858C(v263, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v263, -1, -1);
    MEMORY[0x266780880](v262, -1, -1);
  }

  v265 = v258;
  v266 = v325;
  v325(v265, v328);
  v267 = v351;
  sub_266265F18();
  v268 = v360;
  sub_266265EF8();
  (v372)(v267, v373);
  v269 = v361;
  v270 = (*(v361 + 88))(v268, v326);
  v271 = v359;
  if (v270 == *MEMORY[0x277D55608])
  {
    sub_266265F38();
    v272 = [v259 title];
    if (v272)
    {
      v273 = v272;
      sub_266266A58();
      v275 = v274;
    }

    else
    {
      v275 = 0;
    }

    v285 = [v259 artist];
    if (v285)
    {
      v286 = v285;
      sub_266266A58();
      v288 = v287;
    }

    else
    {
      v288 = 0;
    }

    v289 = sub_266266A48();

    if (v275)
    {
      v290 = sub_266266A48();
    }

    else
    {
      v290 = 0;
    }

    if (v288)
    {
      v291 = sub_266266A48();
    }

    else
    {
      v291 = 0;
    }

    v292 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v289 title:v290 type:2 artwork:0 artist:v291];
LABEL_159:
    v313 = v292;

    v382 = v313;
    LOBYTE(v383) = 0;
    v254(&v382);

LABEL_173:

    return;
  }

  if (v270 == *MEMORY[0x277D55600])
  {
    sub_266265F38();
    v276 = [v259 title];
    if (v276)
    {
      v277 = v276;
      sub_266266A58();
      v279 = v278;
    }

    else
    {
      v279 = 0;
    }

    v309 = [v259 artist];
    if (v309)
    {
      v310 = v309;
      sub_266266A58();
      v312 = v311;
    }

    else
    {
      v312 = 0;
    }

    v289 = sub_266266A48();

    if (v279)
    {
      v290 = sub_266266A48();
    }

    else
    {
      v290 = 0;
    }

    if (v312)
    {
      v291 = sub_266266A48();
    }

    else
    {
      v291 = 0;
    }

    v292 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v289 title:v290 type:1 artwork:0 artist:v291];
    goto LABEL_159;
  }

  if (v270 == *MEMORY[0x277D55610])
  {
    v280 = v336;
    v330(v336, v329, v328);
    v281 = sub_266266968();
    v282 = sub_266266D48();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      *v283 = 0;
      _os_log_impl(&dword_266219000, v281, v282, "INAddMediaIntentHandler#resolveSearchItem the item is already in library with library scheme result", v283, 2u);
      MEMORY[0x266780880](v283, -1, -1);
    }

    v266(v280, v328);
    v284 = [objc_opt_self() unsupportedForReason_];
    v382 = v284;
    LOBYTE(v383) = 1;
    v254(&v382);

    goto LABEL_173;
  }

  v296 = v328;
  v330(v359, v329, v328);

  v297 = sub_266266968();
  v298 = sub_266266D48();

  if (os_log_type_enabled(v297, v298))
  {
    v299 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    v382 = v379;
    *v299 = 136315138;
    v300 = v334;
    LODWORD(v378) = v298;
    sub_266265F18();
    v301 = v335;
    sub_266265EF8();
    (v372)(v300, v373);
    v302 = sub_266265F48();
    v304 = v303;
    v305 = v326;
    (*(v361 + 8))(v301, v326);
    v306 = sub_26621EAF0(v302, v304, &v382);

    *(v299 + 4) = v306;
    _os_log_impl(&dword_266219000, v297, v378, "INAddMediaIntentHandler#resolveSearchItem unsupported scheme: %s", v299, 0xCu);
    v307 = v379;
    __swift_destroy_boxed_opaque_existential_1Tm(v379);
    MEMORY[0x266780880](v307, -1, -1);
    v308 = v299;
    v269 = v361;
    MEMORY[0x266780880](v308, -1, -1);

    v325(v359, v328);
  }

  else
  {

    v266(v271, v296);
    v305 = v326;
  }

  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  v319 = [swift_getObjCClassFromMetadata() unsupported];
  v382 = v319;
  LOBYTE(v383) = 1;
  v254(&v382);

  (*(v269 + 8))(v360, v305);
}

uint64_t sub_266245108(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v6 = sub_266266958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = qword_280069538;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = logObject;
  sub_266266938();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "addMediaIntentHandlerResolveSearchItem";
  *(v18 + 24) = 38;
  *(v18 + 32) = 2;
  (*(v7 + 32))(v18 + v16, v10, v6);
  v19 = (v18 + v17);
  *v19 = sub_266248E14;
  v19[1] = v13;

  sub_266266F38();
  sub_266266928();

  sub_266242284(v21, v22, sub_266248E18, v18);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_266245390(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2662453C0(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_266241FC0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5);
}

void sub_26624545C(void *a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v92 = a2;
  v107 = a1;
  v6 = sub_2662665F8();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2662669D8();
  v108 = *(v106 - 8);
  v9 = *(v108 + 64);
  v10 = MEMORY[0x28223BE20](v106);
  v99 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v101 = &v91 - v13;
  MEMORY[0x28223BE20](v12);
  v109 = &v91 - v14;
  v15 = sub_266266988();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v96 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v91 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v91 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v91 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v91 - v29;
  v31 = swift_allocObject();
  v103 = a3;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2662489A8;
  *(v32 + 24) = v31;
  v104 = v32;
  v33 = qword_280069528;
  v102 = a4;

  v105 = v31;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v15, static Logger.default);
  swift_beginAccess();
  v35 = v16[2];
  v35(v30, v34, v15);
  v36 = sub_266266968();
  v37 = sub_266266D58();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_266219000, v36, v37, "INAddMediaIntentHandler#resolveMediaDestination", v38, 2u);
    MEMORY[0x266780880](v38, -1, -1);
  }

  v39 = v16[1];
  v39(v30, v15);
  v40 = [v107 mediaDestination];
  if (!v40)
  {

    v59 = v100;
    v35(v100, v34, v15);
    v60 = sub_266266968();
    v61 = sub_266266D78();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v106;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_266219000, v60, v61, "INAddMediaIntentHandler#resolveMediaDestination missing destination, defaulting to library", v64, 2u);
      MEMORY[0x266780880](v64, -1, -1);
    }

    v39(v59, v15);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v66 = v108;
    v67 = v99;
    (*(v108 + 104))(v99, *MEMORY[0x277D85350], v63);
    v68 = sub_2662669B8();
    (*(v66 + 8))(v67, v63);
    v69 = [ObjCClassFromMetadata successWithResolvedMediaDestination_];

    v110 = v69;
    v103(&v110);
    goto LABEL_27;
  }

  v100 = (v16 + 1);
  v41 = v40;
  sub_2662669C8();

  v35(v28, v34, v15);
  v42 = sub_266266968();
  v43 = sub_266266D58();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v106;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_266219000, v42, v43, "INAddMediaIntentHandler#resolveMediaDestination resolving present destination...", v46, 2u);
    MEMORY[0x266780880](v46, -1, -1);
  }

  v39(v28, v15);
  v47 = v108;
  v48 = v101;
  (*(v108 + 16))(v101, v109, v45);
  v49 = (*(v47 + 88))(v48, v45);
  if (v49 != *MEMORY[0x277D85358])
  {
    v70 = v49;
    v71 = *MEMORY[0x277D85350];

    if (v70 != v71)
    {
      v35(v98, v34, v15);
      v78 = sub_266266968();
      v79 = sub_266266D78();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_266219000, v78, v79, "INAddMediaIntentHandler#resolveMediaDestination defaulting to library, unsupported destination", v80, 2u);
        MEMORY[0x266780880](v80, -1, -1);
      }

      v39(v98, v15);
      sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
      v81 = swift_getObjCClassFromMetadata();
      v82 = v99;
      (*(v47 + 104))(v99, v71, v45);
      v83 = sub_2662669B8();
      v84 = *(v47 + 8);
      v84(v82, v45);
      v85 = [v81 successWithResolvedMediaDestination_];

      v110 = v85;
      v103(&v110);
      v84(v109, v45);

      v84(v101, v45);
      goto LABEL_29;
    }

    v35(v97, v34, v15);
    v72 = sub_266266968();
    v73 = sub_266266D78();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_266219000, v72, v73, "INAddMediaIntentHandler#resolveMediaDestination success with library", v74, 2u);
      MEMORY[0x266780880](v74, -1, -1);
    }

    v39(v97, v15);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    v75 = swift_getObjCClassFromMetadata();
    v76 = v109;
    v77 = sub_2662669B8();
    v69 = [v75 successWithResolvedMediaDestination_];

    v110 = v69;
    v103(&v110);
    (*(v47 + 8))(v76, v45);
LABEL_27:

    return;
  }

  (*(v47 + 96))(v48, v45);
  v51 = *v48;
  v50 = *(v48 + 1);
  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {

    v35(v96, v34, v15);
    v86 = sub_266266968();
    v87 = sub_266266D78();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_266219000, v86, v87, "INAddMediaIntentHandler#resolveMediaDestination asking for playlist title", v88, 2u);
      MEMORY[0x266780880](v88, -1, -1);
    }

    v39(v96, v15);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    v69 = [swift_getObjCClassFromMetadata() needsValue];
    v110 = v69;
    v103(&v110);
    (*(v47 + 8))(v109, v45);
    goto LABEL_27;
  }

  v53 = *(v92 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32);
  v103 = __swift_project_boxed_opaque_existential_1((v92 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v92 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
  v110 = v107;
  v54 = v93;
  v55 = v94;
  v56 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D557A8], v95);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v58 = v57;
  (*(v55 + 8))(v54, v56);
  if (v58)
  {
    sub_266266A78();
  }

  v89 = swift_allocObject();
  v89[2] = v51;
  v89[3] = v50;
  v90 = v104;
  v89[4] = sub_2662489AC;
  v89[5] = v90;

  sub_2662661C8();

  swift_bridgeObjectRelease_n();

  (*(v108 + 8))(v109, v45);
LABEL_29:
}

void sub_266246088(void *a1, char *a2, void (*a3)(uint64_t **), uint64_t a4)
{
  v269 = a2;
  v283 = a1;
  v264 = sub_266265F28();
  v263 = *(v264 - 8);
  v6 = *(v263 + 64);
  MEMORY[0x28223BE20](v264);
  v262 = &v245 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2662665F8();
  v268 = *(v8 - 8);
  v9 = *(v268 + 64);
  MEMORY[0x28223BE20](v8);
  v267 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266265F08();
  v270 = *(v11 - 8);
  v271 = v11;
  v12 = *(v270 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v259 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v254 = &v245 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v255 = &v245 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v261 = &v245 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v258 = &v245 - v22;
  MEMORY[0x28223BE20](v21);
  v265 = &v245 - v23;
  v277 = sub_2662669D8();
  v279 = *(v277 - 8);
  v24 = *(v279 + 64);
  v25 = MEMORY[0x28223BE20](v277);
  v266 = (&v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v276 = (&v245 - v28);
  MEMORY[0x28223BE20](v27);
  v278 = &v245 - v29;
  v30 = sub_266266988();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v275 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v253 = &v245 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v256 = &v245 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v257 = &v245 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v260 = &v245 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v273 = &v245 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v272 = &v245 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v274 = &v245 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v245 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v245 - v52;
  v54 = swift_allocObject();
  v281 = a3;
  *(v54 + 16) = a3;
  *(v54 + 24) = a4;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_266248E10;
  *(v55 + 24) = v54;
  v56 = qword_280069528;
  v280 = a4;

  v282 = v54;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v30, static Logger.default);
  swift_beginAccess();
  v284 = v31[2];
  v285 = v57;
  v284(v53, v57, v30);
  v58 = sub_266266968();
  v59 = sub_266266D58();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = v31;
    v61 = v8;
    v62 = v55;
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_266219000, v58, v59, "INAddMediaIntentHandler#handle", v63, 2u);
    v64 = v63;
    v55 = v62;
    v8 = v61;
    v31 = v60;
    MEMORY[0x266780880](v64, -1, -1);
  }

  v67 = v31[1];
  v65 = (v31 + 1);
  v66 = v67;
  v67(v53, v30);
  v68 = v283;
  v69 = [v283 mediaItems];
  if (!v69)
  {
    goto LABEL_69;
  }

  v70 = v69;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v71 = sub_266266BB8();

  if (!(v71 >> 62))
  {
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_68:

    goto LABEL_69;
  }

  if (!sub_266267078())
  {
    goto LABEL_68;
  }

LABEL_8:
  v252 = v66;
  v251 = v55;
  if ((v71 & 0xC000000000000001) != 0)
  {
    v72 = MEMORY[0x266780220](0, v71);
  }

  else
  {
    if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v72 = *(v71 + 32);
  }

  v73 = v72;

  v74 = [v68 mediaDestination];
  if (!v74)
  {

    v66 = v252;
LABEL_69:

    v284(v51, v285, v30);
    v236 = v68;
    v237 = sub_266266968();
    v238 = sub_266266D68();

    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v239 = 138543362;
      *(v239 + 4) = v236;
      *v240 = v236;
      v241 = v236;
      _os_log_impl(&dword_266219000, v237, v238, "INAddMediaIntentHandler#handle missing expected mediaItem or destination in intent: %{public}@", v239, 0xCu);
      sub_26622858C(v240, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v240, -1, -1);
      MEMORY[0x266780880](v239, -1, -1);
    }

    v66(v51, v30);
    v242 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v243 = sub_266266A48();
    v244 = [v242 initWithActivityType_];

    v116 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v244];
    v286 = v116;
    v281(&v286);
    goto LABEL_72;
  }

  v75 = v278;
  v76 = v74;
  sub_2662669C8();

  v77 = [v73 identifier];
  if (!v77)
  {
    goto LABEL_16;
  }

  v78 = v77;
  sub_266266A58();

  v79 = sub_266265F68();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v82 = v276;
  v83 = sub_266265F78();
  if (!v83)
  {
LABEL_16:

    v104 = v275;
    v284(v275, v285, v30);
    v105 = v73;
    v106 = sub_266266968();
    v107 = sub_266266D68();

    v108 = os_log_type_enabled(v106, v107);
    v109 = v277;
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138543362;
      *(v110 + 4) = v105;
      *v111 = v105;
      v112 = v105;
      _os_log_impl(&dword_266219000, v106, v107, "INAddMediaIntentHandler#handle item missing identifier: %{public}@, or create PlaybackItem failed.", v110, 0xCu);
      sub_26622858C(v111, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v111, -1, -1);
      MEMORY[0x266780880](v110, -1, -1);
    }

    v252(v104, v30);
    v113 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v114 = sub_266266A48();
    v115 = [v113 initWithActivityType_];

    v116 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v115];
    v286 = v116;
    v281(&v286);

    (*(v279 + 8))(v75, v109);
    goto LABEL_72;
  }

  v275 = v65;
  v249 = v83;
  v84 = v274;
  v284(v274, v285, v30);
  v85 = *(v279 + 16);
  v248 = v279 + 16;
  v247 = v85;
  v85(v82, v75, v277);
  v86 = v73;
  v87 = sub_266266968();
  v88 = sub_266266D78();

  v89 = os_log_type_enabled(v87, v88);
  v250 = v86;
  if (v89)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v245 = v91;
    v246 = swift_slowAlloc();
    v286 = v246;
    *v90 = 138543618;
    *(v90 + 4) = v86;
    *v91 = v86;
    *(v90 + 12) = 2080;
    v92 = v86;
    v93 = sub_2662669A8();
    v95 = v94;
    v96 = v82;
    v97 = v277;
    v276 = *(v279 + 8);
    (v276)(v96, v277);
    v98 = sub_26621EAF0(v93, v95, &v286);
    v86 = v250;

    *(v90 + 14) = v98;
    _os_log_impl(&dword_266219000, v87, v88, "INAddMediaIntentHandler#handle item: %{public}@ and destination: %s", v90, 0x16u);
    v99 = v245;
    sub_26622858C(v245, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v99, -1, -1);
    v100 = v246;
    __swift_destroy_boxed_opaque_existential_1Tm(v246);
    MEMORY[0x266780880](v100, -1, -1);
    MEMORY[0x266780880](v90, -1, -1);

    v101 = v252;
    v252(v274, v30);
    v102 = v97;
    v103 = v279;
  }

  else
  {

    v103 = v279;
    v102 = v277;
    v276 = *(v279 + 8);
    (v276)(v82, v277);
    v101 = v252;
    v252(v84, v30);
  }

  if ([v86 type] != 6)
  {
    v284(v273, v285, v30);
    v129 = sub_266266968();
    v130 = sub_266266D58();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_266219000, v129, v130, "INAddMediaIntentHandler#handle adding for music...", v131, 2u);
      MEMORY[0x266780880](v131, -1, -1);
    }

    v101(v273, v30);
    v132 = v266;
    v247(v266, v278, v102);
    v133 = (*(v103 + 88))(v132, v102);
    if (v133 == *MEMORY[0x277D85358])
    {
      v272 = 0x8000000266269550;
      v274 = v8;
      (*(v103 + 96))(v132, v102);
      v134 = v132[1];
      v260 = *v132;
      v273 = v134;
      v135 = v261;
      sub_266265F18();
      v136 = v262;
      sub_266265EE8();
      v137 = v271;
      v138 = *(v270 + 8);
      v138(v135, v271);
      v139 = (*(v263 + 88))(v136, v264);
      if (v139 == *MEMORY[0x277D555D0])
      {
        v140 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
        v284 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
        v285 = __swift_project_boxed_opaque_existential_1(&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v140);
        v141 = v259;
        sub_266265F18();
        sub_266265ED8();
        v138(v141, v137);
        v286 = v68;
        v142 = v268;
        v143 = v267;
        v144 = v274;
        (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v274);
        sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
        sub_266266648();
        v146 = v145;
        (*(v142 + 8))(v143, v144);
        if (v146)
        {
          sub_266266A78();
        }

        v201 = v273;
        v202 = v260;
        v203 = swift_allocObject();
        v203[2] = v202;
        v203[3] = v201;
        v203[4] = 0xD00000000000002ALL;
        v203[5] = v272;
        v203[6] = sub_266248D84;
        v203[7] = v251;

        sub_2662661B8();
        goto LABEL_53;
      }

      if (v139 != *MEMORY[0x277D555D8])
      {
        v193 = v274;
        if (v139 == *MEMORY[0x277D555C8])
        {
          v194 = v68;
          v195 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
          v284 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
          v285 = __swift_project_boxed_opaque_existential_1(&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v195);
          v196 = v255;
          sub_266265F18();
          sub_266265ED8();
          v138(v196, v137);
          v286 = v194;
          v197 = v268;
          v198 = v267;
          (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v193);
          sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
          sub_266266648();
          v200 = v199;
          (*(v197 + 8))(v198, v193);
          if (v200)
          {
            sub_266266A78();
          }

          v226 = v272;
          v227 = v273;
          v228 = swift_allocObject();
          v228[2] = v260;
          v228[3] = v227;
          v228[4] = 0xD00000000000002ALL;
          v228[5] = v226;
          v229 = v269;
          v230 = v249;
          v228[6] = v269;
          v228[7] = v230;
          v231 = v251;
          v228[8] = sub_266248D84;
          v228[9] = v231;

          v232 = v229;

          sub_2662661A8();

          goto LABEL_54;
        }

        if (v139 != *MEMORY[0x277D555C0])
        {

          v218 = v253;
          v284(v253, v285, v30);
          v219 = sub_266266968();
          v220 = sub_266266D58();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            *v221 = 0;
            _os_log_impl(&dword_266219000, v219, v220, "INAddMediaIntentHandler#handle unexpected content origin for add intent", v221, 2u);
            MEMORY[0x266780880](v221, -1, -1);
          }

          v252(v218, v30);
          v222 = objc_allocWithZone(MEMORY[0x277CCAE58]);
          v223 = sub_266266A48();
          v224 = [v222 initWithActivityType_];

          v225 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v224];
          v286 = v225;
          v281(&v286);

          (v276)(v278, v102);

          (*(v263 + 8))(v262, v264);
          goto LABEL_55;
        }

        v209 = v68;
        v210 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
        v284 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
        v285 = __swift_project_boxed_opaque_existential_1(&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v210);
        v211 = v254;
        sub_266265F18();
        sub_266265ED8();
        v138(v211, v137);
        v286 = v209;
        v212 = v268;
        v213 = v267;
        (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v193);
        sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
        sub_266266648();
        v215 = v214;
        (*(v212 + 8))(v213, v193);
        if (v215)
        {
          sub_266266A78();
        }

        v233 = v273;
        v234 = v260;
        v235 = swift_allocObject();
        v235[2] = v234;
        v235[3] = v233;
        v235[4] = 0xD00000000000002ALL;
        v235[5] = v272;
        v235[6] = sub_266248D84;
        v235[7] = v251;

        sub_266266198();
LABEL_53:

LABEL_54:

        swift_bridgeObjectRelease_n();

        (v276)(v278, v277);
LABEL_55:

        return;
      }

      v161 = v265;
      sub_266265F18();
      v162 = sub_266265EC8();
      v164 = v163;
      v138(v161, v137);
      v165 = v256;
      v284(v256, v285, v30);

      v166 = sub_266266968();
      v167 = sub_266266D78();

      v168 = os_log_type_enabled(v166, v167);
      v169 = v274;
      v281 = v162;
      if (v168)
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v286 = v171;
        *v170 = 136315138;
        *(v170 + 4) = sub_26621EAF0(v162, v164, &v286);
        _os_log_impl(&dword_266219000, v166, v167, "INAddMediaIntentHandler#handle trying to add item with siriSyncID: %s", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v171);
        MEMORY[0x266780880](v171, -1, -1);
        MEMORY[0x266780880](v170, -1, -1);
      }

      v252(v165, v30);
      v172 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
      __swift_project_boxed_opaque_existential_1(&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24]);
      v286 = v283;
      v173 = v268;
      v174 = v267;
      (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v169);
      sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
      sub_266266648();
      v176 = v175;
      (*(v173 + 8))(v174, v169);
      if (v176)
      {
        sub_266266A78();
      }

      v216 = v273;
      v217 = swift_allocObject();
      v217[2] = v260;
      v217[3] = v216;
      v217[4] = 0xD00000000000002ALL;
      v217[5] = v272;
      v217[6] = sub_266248D84;
      v217[7] = v251;

      sub_266266188();

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (v133 != *MEMORY[0x277D85350])
      {

        v177 = v257;
        v284(v257, v285, v30);
        v178 = sub_266266968();
        v179 = sub_266266D58();
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          *v180 = 0;
          _os_log_impl(&dword_266219000, v178, v179, "INAddMediaIntentHandler#handle unexpected destination for add intent", v180, 2u);
          MEMORY[0x266780880](v180, -1, -1);
        }

        v101(v177, v30);
        v181 = objc_allocWithZone(MEMORY[0x277CCAE58]);
        v182 = sub_266266A48();
        v183 = [v181 initWithActivityType_];

        v184 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v183];
        v286 = v184;
        v281(&v286);

        v185 = v276;
        (v276)(v278, v102);

        v185(v266, v102);
        goto LABEL_55;
      }

      v147 = v68;
      v148 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
      v284 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
      v285 = __swift_project_boxed_opaque_existential_1(&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v148);
      v149 = v258;
      sub_266265F18();
      sub_266265ED8();
      (*(v270 + 8))(v149, v271);
      v286 = v147;
      v150 = v268;
      v151 = v267;
      (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v8);
      sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
      sub_266266648();
      v153 = v152;
      (*(v150 + 8))(v151, v8);
      if (v153)
      {
        sub_266266A78();
      }

      v204 = swift_allocObject();
      v204[2] = 0xD00000000000002ALL;
      v204[3] = 0x8000000266269550;
      v205 = v269;
      v206 = v249;
      v204[4] = v269;
      v204[5] = v206;
      v207 = v251;
      v204[6] = sub_266248D84;
      v204[7] = v207;

      v208 = v205;

      sub_266266158();

      swift_bridgeObjectRelease_n();
    }

    (v276)(v278, v277);

    return;
  }

  v284(v272, v285, v30);
  v117 = sub_266266968();
  v118 = sub_266266D58();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_266219000, v117, v118, "INAddMediaIntentHandler#handle subscribing to podcast...", v119, 2u);
    MEMORY[0x266780880](v119, -1, -1);
  }

  v101(v272, v30);
  v120 = v265;
  sub_266265F18();
  sub_266265ED8();
  (*(v270 + 8))(v120, v271);
  v121 = objc_allocWithZone(sub_266265C48());
  v122 = sub_266265C38();
  if (!v122)
  {

    v154 = v260;
    v284(v260, v285, v30);
    v155 = sub_266266968();
    v156 = sub_266266D68();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&dword_266219000, v155, v156, "Failed to get store id", v157, 2u);
      MEMORY[0x266780880](v157, -1, -1);
    }

    v252(v154, v30);
    v158 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v159 = sub_266266A48();
    v160 = [v158 initWithActivityType_];

    v116 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v160];
    v286 = v116;
    v281(&v286);

    (v276)(v278, v102);
LABEL_72:

    return;
  }

  v123 = v122;
  v286 = v68;
  v124 = v268;
  v125 = v267;
  (*(v268 + 104))(v267, *MEMORY[0x277D557A8], v8);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  (*(v124 + 8))(v125, v8);
  v126 = [v250 privateMediaItemValueData];
  if (v126)
  {
    v127 = v126;
    v128 = [v126 sharedUserIdFromPlayableMusicAccount];

    if (v128)
    {
      sub_266266A58();
    }
  }

  v186 = objc_allocWithZone(sub_266265C68());
  v187 = sub_266265C58();
  v188 = *&v269[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_instanceReference];
  v189 = swift_allocObject();
  v189[2] = v123;
  v189[3] = v187;
  v190 = v251;
  v189[4] = sub_266248D84;
  v189[5] = v190;
  v191 = v123;
  v192 = v187;
  sub_266265DE8();

  (v276)(v278, v102);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26624845C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t sub_2662484A0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_266248514()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266248574()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662485DC()
{
  v1 = sub_266266038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266248748()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_79Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266248830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662488C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266248970()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662489AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2662489E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266248AEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266248B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266248BEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_266266958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_266248CC4(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662421AC(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_266248E28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_266266BB8();

        v14[0] = v4;
        v14[1] = v5;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_266248E28(sub_266249070, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_266249018(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2662670D8() & 1;
  }
}

uint64_t sub_266249070(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2662670D8() & 1;
  }
}

uint64_t sub_2662490C8()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  sub_266265D38();
  sub_266265D28();
  v1 = sub_266265E98();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_266265E78();
  *(v0 + 16) = result;
  off_280069B00 = v0;
  return result;
}

uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 1);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  if (qword_280069530 != -1)
  {
LABEL_20:
    swift_once();
  }

  v45 = v13;
  v49 = off_280069B00;
  v16 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  v47 = v7[2];
  v47(v15, v17, v6);
  v18 = sub_266266968();
  v19 = sub_266266D78();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v17;
    v21 = a1;
    v22 = v7;
    v23 = v20;
    *v20 = 0;
    _os_log_impl(&dword_266219000, v18, v19, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v20, 2u);
    v24 = v23;
    v7 = v22;
    a1 = v21;
    v17 = v51;
    MEMORY[0x266780880](v24, -1, -1);
  }

  v25 = v7[1];
  v50 = v7 + 1;
  v51 = v6;
  v48 = v25;
  v25(v15, v6);
  v26 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0();
  v13 = v26;
  v7 = *(v26 + 16);
  if (v7)
  {
    v27 = 0;
    v6 = (v26 + 40);
    while (1)
    {
      if (v27 >= *(v13 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v15 = *(v6 - 1);
      a1 = *v6;

      if (sub_266266B48())
      {
        break;
      }

      v27 = (v27 + 1);
      v6 += 2;
      if (v7 == v27)
      {
        goto LABEL_11;
      }
    }

    v35 = v45;
    v36 = v51;
    v47(v45, v17, v51);

    v37 = sub_266266968();
    v38 = sub_266266D78();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315138;
      v41 = sub_26621EAF0(v15, a1, &v52);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_266219000, v37, v38, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266780880](v40, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);
    }

    else
    {
    }

    v48(v35, v36);
    v34 = 1;
  }

  else
  {
LABEL_11:

    v28 = v46;
    v29 = v51;
    v47(v46, v17, v51);

    v30 = sub_266266968();
    v31 = sub_266266D78();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_26621EAF0(a2, a3, &v52);
      _os_log_impl(&dword_266219000, v30, v31, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266780880](v33, -1, -1);
      MEMORY[0x266780880](v32, -1, -1);
    }

    v48(v28, v29);
    v34 = 0;
  }

  v42 = v49[2];

  sub_266265E88();

  return v34;
}

uint64_t static InternalSignalsManager.getSignal(with:from:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_266266988();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  if (qword_280069530 != -1)
  {
LABEL_19:
    swift_once();
  }

  v52 = v11;
  v56 = off_280069B00;
  v14 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v54 = v5[2];
  v54(v13, v15, v4);
  v16 = sub_266266968();
  v17 = sub_266266D78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v58 = v15;
    v19 = a3;
    v20 = v5;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_266219000, v16, v17, "InternalSignalsManager#getSignal (lock aquired)", v18, 2u);
    v22 = v21;
    v5 = v20;
    a3 = v19;
    v15 = v58;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = v5[1];
  v57 = v5 + 1;
  v58 = v4;
  v55 = v23;
  v23(v13, v4);
  v24 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0();
  v11 = v24;
  v5 = *(v24 + 16);
  if (v5)
  {
    v25 = 0;
    v4 = (v24 + 40);
    while (1)
    {
      if (v25 >= *(v11 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v4 - 1);
      a3 = *v4;

      if (sub_266266B48())
      {
        break;
      }

      v25 = (v25 + 1);
      v4 += 2;
      if (v5 == v25)
      {
        goto LABEL_11;
      }
    }

    v33 = v52;
    v34 = v58;
    v54(v52, v15, v58);
    v35 = v33;

    v36 = sub_266266968();
    v37 = sub_266266D78();

    v38 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_26621EAF0(v13, a3, &v59);
      _os_log_impl(&dword_266219000, v38, v37, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266780880](v40, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);
    }

    else
    {
    }

    v55(v35, v34);
    v41 = v56[2];

    sub_266265E88();

    v42 = sub_266266AC8();
    v43 = sub_26624B1DC(v42, v13, a3);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = MEMORY[0x26677FC60](v43, v45, v47, v49);

    return v50;
  }

  else
  {
LABEL_11:

    v26 = v53;
    v27 = v58;
    v54(v53, v15, v58);
    v28 = sub_266266968();
    v29 = sub_266266D78();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266219000, v28, v29, "InternalSignalsManager#getSignal could not find signal. (unlock)", v30, 2u);
      MEMORY[0x266780880](v30, -1, -1);
    }

    v55(v26, v27);
    v31 = v56[2];

    sub_266265E88();

    return 0;
  }
}

uint64_t static InternalSignalsManager.add(_:to:)(uint64_t a1, unint64_t a2, void *a3)
{
  v42 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v39 = v6[2];
  v40 = v12;
  v39(v11, v12, v5);

  v13 = a3;
  v14 = sub_266266968();
  v15 = sub_266266D78();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v5;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_26621EAF0(v42, v17, &v43);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v21 = v13;
    _os_log_impl(&dword_266219000, v14, v15, "InternalSignalsManager#add signal: %s, to intent: %@...", v18, 0x16u);
    sub_266220BBC(v19);
    MEMORY[0x266780880](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266780880](v20, -1, -1);
    v22 = v18;
    a2 = v17;
    v5 = v38;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = v6[1];
  v23(v11, v5);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    if (qword_280069530 != -1)
    {
      swift_once();
    }

    return sub_26624A108(v42, a2, v25);
  }

  else
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      if (qword_280069530 != -1)
      {
        swift_once();
      }

      return sub_26624B28C(v42, a2, v28);
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        if (qword_280069530 != -1)
        {
          swift_once();
        }

        return sub_26624B7EC(v42, a2, v30);
      }

      else
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          if (qword_280069530 != -1)
          {
            swift_once();
          }

          return sub_26624BD4C(v42, a2, v32);
        }

        else
        {
          v33 = v41;
          v39(v41, v40, v5);
          v34 = sub_266266968();
          v35 = sub_266266D68();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_266219000, v34, v35, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v36, 2u);
            MEMORY[0x266780880](v36, -1, -1);
          }

          return (v23)(v33, v5);
        }
      }
    }
  }
}

uint64_t sub_26624A108(uint64_t a1, unint64_t a2, void *a3)
{
  v55 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v54 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v54[0] = v10;
  v16 = off_280069B00;
  v17 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v19 = v6[2];
  v57 = v6 + 2;
  v58 = v18;
  v56 = v19;
  v19(v15, v18, v5);
  v20 = sub_266266968();
  v21 = sub_266266D78();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v16;
    v23 = v5;
    v24 = a1;
    v25 = a2;
    v26 = v13;
    v27 = v6;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_266219000, v20, v21, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v28, 2u);
    v29 = v28;
    v6 = v27;
    v13 = v26;
    a2 = v25;
    a1 = v24;
    v5 = v23;
    v16 = v22;
    MEMORY[0x266780880](v29, -1, -1);
  }

  v32 = v6[1];
  v30 = v6 + 1;
  v31 = v32;
  v32(v15, v5);
  v33 = [v55 backingStore];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    v55 = v30;
    v36 = [v34 privatePlayMediaIntentData];
    if (!v36)
    {
      v37 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
      [v35 setPrivatePlayMediaIntentData_];
      v36 = v37;
    }

    v38 = [v35 privatePlayMediaIntentData];
    if (v38)
    {
      v39 = v38;
      v40 = sub_266266A48();
      [v39 addInternalSignal_];
    }

    v56(v13, v58, v5);

    v41 = sub_266266968();
    v42 = sub_266266D78();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = a2;
      v46 = v44;
      v59 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_26621EAF0(a1, v45, &v59);
      _os_log_impl(&dword_266219000, v41, v42, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266780880](v46, -1, -1);
      MEMORY[0x266780880](v43, -1, -1);
    }

    v31(v13, v5);
    v47 = v16[2];

    sub_266265E88();
  }

  else
  {

    v49 = v54[0];
    v56(v54[0], v58, v5);
    v50 = sub_266266968();
    v51 = sub_266266D68();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_266219000, v50, v51, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v52, 2u);
      MEMORY[0x266780880](v52, -1, -1);
    }

    v31(v49, v5);
    v53 = *(v54[1] + 16);
    return sub_266265E88();
  }
}

uint64_t static InternalSignalsManager.remove(_:from:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v35 = v6[2];
  v36 = v13;
  v35(v12, v13, v5);

  v14 = sub_266266968();
  v15 = sub_266266D78();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v6;
    v18 = a1;
    v19 = v17;
    v38 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_26621EAF0(v18, a2, &v38);
    _os_log_impl(&dword_266219000, v14, v15, "InternalSignalsManager#remove %s...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    a1 = v18;
    v6 = v34;
    MEMORY[0x266780880](v20, -1, -1);
    MEMORY[0x266780880](v16, -1, -1);
  }

  v21 = v6[1];
  v21(v12, v5);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    if (qword_280069530 != -1)
    {
      swift_once();
    }

    return sub_26624C2AC(a1, a2, v23);
  }

  else
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      if (qword_280069530 != -1)
      {
        swift_once();
      }

      return sub_26624C8E0(a1, a2, v26);
    }

    else
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        if (qword_280069530 != -1)
        {
          swift_once();
        }

        return sub_26624CF14(a1, a2, v28);
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v29;
          if (qword_280069530 != -1)
          {
            swift_once();
          }

          return sub_26624D548(a1, a2, v30);
        }

        else
        {
          v35(v10, v36, v5);
          v31 = sub_266266968();
          v32 = sub_266266D68();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_266219000, v31, v32, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v33, 2u);
            MEMORY[0x266780880](v33, -1, -1);
          }

          return (v21)(v10, v5);
        }
      }
    }
  }
}

uint64_t sub_26624AAC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26624ABBC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t InternalSignalsManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InternalSignalsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 privatePlayMediaIntentData];
    if (!v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v1 = [v2 privateAddMediaIntentData];
      if (!v1)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v1 = [v3 privateUpdateMediaAffinityIntentData];
        if (!v1)
        {
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          return MEMORY[0x277D84F90];
        }

        v1 = [v4 privateSearchForMediaIntentData];
        if (!v1)
        {
          return MEMORY[0x277D84F90];
        }
      }
    }
  }

  v5 = v1;
  v6 = [v1 internalSignals];

  if (v6)
  {
    v7 = sub_266266BB8();

    return v7;
  }

  return MEMORY[0x277D84F90];
}