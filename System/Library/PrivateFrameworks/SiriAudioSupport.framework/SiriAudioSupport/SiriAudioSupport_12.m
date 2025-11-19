uint64_t sub_2663C4540(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, void *a10, uint64_t a11, void *a12, char a13)
{
  v16 = a3[8];
  v17 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v16);
  sub_26637C7BC(a3, v29);
  v18 = swift_allocObject();
  v19 = v29[0];
  *(v18 + 40) = v29[1];
  v20 = v29[3];
  *(v18 + 56) = v29[2];
  *(v18 + 72) = v20;
  *(v18 + 88) = v29[4];
  *(v18 + 16) = a8;
  *(v18 + 24) = v19;
  *(v18 + 104) = a9;
  *(v18 + 112) = a10;
  *(v18 + 120) = a11;
  *(v18 + 128) = a12;
  *(v18 + 136) = a13;
  *(v18 + 144) = a1;
  *(v18 + 152) = a2;
  v21 = *(v17 + 24);
  v22 = a8;
  v23 = a10;

  v24 = a12;

  v21(a4, a5, sub_2663C520C, v18, v16, v17);
}

uint64_t sub_2663C467C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v15 = sub_2664E02A8();
  }

  else
  {
    v15 = 0;
  }

  [a3 setHomeKitUserIdentifier_];

  v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  swift_beginAccess();
  v17 = *(a7 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a10;
  *(v18 + 24) = a11;
  v19 = *v16;

  sub_2664AF830(a3, a6, v17, a9 & 1, sub_2663C5250, v18);
}

uint64_t sub_2663C4790(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  v30 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v14, v6);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v11;
    v18 = v17;
    v28 = swift_slowAlloc();
    v32 = v28;
    v33 = v12;
    *v18 = 136446210;
    v34 = v31;
    v35 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    v19 = sub_2664E0318();
    v29 = v12;
    v21 = sub_2662A320C(v19, v20, &v32);
    v27 = v6;
    v22 = a2;
    v23 = v21;

    *(v18 + 4) = v23;
    a2 = v22;
    _os_log_impl(&dword_26629C000, v15, v16, v30, v18, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v24, -1, -1);
    v25 = v18;
    v11 = v31;
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v7 + 8))(v10, v27);
    v12 = v29;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v33 = v12;
  v34 = v11;
  v35 = v13;
  return a2(&v33);
}

uint64_t sub_2663C4A4C(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, char a7)
{
  v31[1] = a5;
  v32 = a4;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  if ((a1 & 1) != 0 || (v20 = [a2 outputDeviceUIDs], v21 = sub_2664E04A8(), v20, v22 = *(v21 + 16), , !v22))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v28, v12);
    v24 = sub_2664DFE18();
    v29 = sub_2664E06E8();
    if (!os_log_type_enabled(v24, v29))
    {
      v27 = 1;
      goto LABEL_14;
    }

    v26 = swift_slowAlloc();
    *v26 = 67240192;
    *(v26 + 4) = a7 & 1;
    _os_log_impl(&dword_26629C000, v24, v29, "PlaybackStarter#send Sending to destination with immediatelyStartPlayback:%{BOOL,public}d", v26, 8u);
    v27 = 1;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v23, v12);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06E8();
    if (!os_log_type_enabled(v24, v25))
    {
      v27 = 0;
      a7 = 1;
      v19 = v17;
      goto LABEL_14;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "PlaybackStarter#send remote WHA destination with immediatelyStartPlayback:true", v26, 2u);
    v27 = 0;
    a7 = 1;
    v19 = v17;
  }

  MEMORY[0x266784AD0](v26, -1, -1);
LABEL_14:

  (*(v13 + 8))(v19, v12);
  [a3 setShouldImmediatelyStartPlayback_];
  return v32(a6, v27);
}

uint64_t sub_2663C4DB0(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a1;
    v27 = v15;
    *v14 = 136446210;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v17 = sub_2664E0318();
    v19 = sub_2662A320C(v17, v18, &v27);
    v24 = v4;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_26629C000, v11, v12, "PlaybackStarter#resolveDestination Resolved playback destination as: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v25 + 8))(v8, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_2663C50C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2663C51C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2663C528C()
{
  v23 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v39 = v2;
  v40 = &protocol witness table for MultiUserConnectionProvider;
  *&v38 = v1;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();
  swift_retain_n();
  v22 = sub_266360778(v0, &v38, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v35 = qword_280F905C8;
  *(&v35 + 5) = *(&qword_280F905C8 + 5);
  v36 = &type metadata for FeatureFlagProvider;
  v37 = &protocol witness table for FeatureFlagProvider;
  v34 = &protocol witness table for SharedContextProvider;
  v33 = type metadata accessor for SharedContextProvider();
  v31 = &protocol witness table for SubscriptionProvider;
  *&v32 = swift_initStaticObject();
  v30 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v27 = type metadata accessor for SiriKitTaskLoggingProvider();
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = v7;
  v25[3] = &type metadata for WatchOSSupportProvider;
  v25[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v9[2] = v22;
  v9[17] = v23;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v38, (v9 + 20));
  sub_2662A8618(&v35, (v9 + 30));
  sub_2662A8618(&v32, (v9 + 35));
  sub_2662A8618(&v29, (v9 + 7));
  sub_2662A8618(&v26, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v39 = v8;
  v40 = &off_2877F3740;
  *&v38 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v36 = v2;
  v37 = &protocol witness table for MultiUserConnectionProvider;
  *&v35 = v1;
  v11 = swift_allocObject();

  v12 = sub_266360778(v10, &v35, v11);

  v36 = v3;
  v37 = &protocol witness table for AccountProvider;
  *&v35 = v12;
  v33 = &type metadata for PlaybackStarter;
  v34 = &off_2877EE098;
  v13 = swift_allocObject();
  *&v32 = v13;
  sub_2663FB4EC();
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v29, v15);

  v13[10] = v3;
  v13[11] = &protocol witness table for AccountProvider;
  v13[7] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v18 = swift_allocObject();
  v19 = sub_266360778(v17, &v29, v18);

  v30 = &type metadata for PlaybackQueueLocationProvider;
  v31 = &off_2877E8100;
  v20 = swift_allocObject();
  *&v29 = v20;
  v20[5] = v3;
  v20[6] = &protocol witness table for AccountProvider;
  v20[2] = v19;
  sub_266401880();
  return (*(v24 + 128))(&v38, &v35, &v32, &v29);
}

void sub_2663C5760(void *a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v33 = a5;
  v31 = a4;
  v32 = a3;
  v35 = a1;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *(a2 + 16);
  v39 = *a2;
  v40 = v14;
  v41[0] = *(a2 + 32);
  *(v41 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v16 = v7[2];
  v16(v13, v15, v6);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "RemotePlaybackHandler#preLoadQueue Remote playback", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = v7[1];
  v20(v13, v6);
  v16(v11, v15, v6);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "RemotePlaybackHandler#preLoadQueue Playing Remote Queue", v23, 2u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v20(v11, v6);
  v24 = v35;
  if (sub_2664C8564(v35))
  {
    v37[0] = v39;
    v37[1] = v40;
    *v38 = v41[0];
    *&v38[15] = *(v41 + 15);
    v25 = swift_allocObject();
    v26 = v34;
    *(v25 + 16) = v34;
    v27 = v40;
    *(v25 + 24) = v39;
    *(v25 + 40) = v27;
    *(v25 + 56) = v41[0];
    *(v25 + 71) = *(v41 + 15);
    v28 = v32;
    *(v25 + 80) = v32;
    *(v25 + 88) = v24;
    v29 = v33;
    *(v25 + 96) = v31;
    *(v25 + 104) = v29;

    sub_2662D2A64(&v39, v36);
    v30 = v28;

    sub_2664C604C((v26 + 56), v24, v37, 2, sub_2663CB98C, v25);
  }

  else
  {
    sub_2663C8428(0, v34, v31, v33, v24, &v39, v32);
  }
}

id sub_2663C5B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    v35 = *(a1 + 48);
    v17 = PlaybackItem.Scheme.rawValue.getter();
    v19 = sub_2662A320C(v17, v18, &v36);
    v33 = v6;
    v20 = a1;
    v21 = v3;
    v22 = a2;
    v23 = v19;

    *(v15 + 4) = v23;
    a2 = v22;
    v3 = v21;
    a1 = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "RemotePlaybackHandler#getPlaybackQueueForAddToUpNext [SetPlaybackQueueLocation] Scheme didn't match known scheme: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v34 + 8))(v10, v33);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v24 = (*(*v3 + 192))(a1);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = [objc_opt_self() emptyIdentifierSet];
    v24 = 0;
  }

  v26 = v24;
  sub_26645F924(a2);
  v27 = objc_allocWithZone(MEMORY[0x277D27888]);
  v28 = sub_2664E0488();

  v29 = [v27 initWithContextID:0 storeItemIDs:v28 collectionIdentifierSet:v25];

  v30 = [v29 createRemotePlaybackQueue];
  return v30;
}

void *sub_2663C5E98(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v69 = a1;
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v13;
  v28 = type metadata accessor for MediaPlaybackProvider();
  v80[3] = v28;
  v80[4] = &off_2877F3740;
  v80[0] = v27;
  v79[3] = &type metadata for PlaybackStarter;
  v79[4] = &off_2877EE098;
  v29 = swift_allocObject();
  v79[0] = v29;
  v30 = v19[3];
  v29[3] = v19[2];
  v29[4] = v30;
  v29[5] = v19[4];
  v31 = v19[1];
  v29[1] = *v19;
  v29[2] = v31;
  v8[21] = &type metadata for PlaybackQueueLocationProvider;
  v8[22] = &off_2877E8100;
  v32 = swift_allocObject();
  v8[18] = v32;
  v33 = v25[3];
  v32[3] = v25[2];
  v32[4] = v33;
  v32[5] = v25[4];
  v34 = v25[1];
  v32[1] = *v25;
  v32[2] = v34;
  sub_2662A5550(v80, (v8 + 2));
  sub_2662A5550(a2, (v8 + 7));
  sub_2662A5550(v79, (v8 + 13));
  sub_2662A5550(v80, v77);
  sub_2662A5550(a2, v76);
  sub_2662A5550(v79, v74);
  v35 = v78;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = v75;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v39;
  v73[3] = v28;
  v73[4] = &off_2877F3740;
  v73[0] = v47;
  v71 = &type metadata for PlaybackStarter;
  v72 = &off_2877EE098;
  v48 = swift_allocObject();
  v70[0] = v48;
  v49 = v45[3];
  v48[3] = v45[2];
  v48[4] = v49;
  v48[5] = v45[4];
  v50 = v45[1];
  v48[1] = *v45;
  v48[2] = v50;
  type metadata accessor for LocalPlaybackHelper();
  v51 = swift_allocObject();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v73, v28);
  v53 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (&v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = v71;
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v59 = *(v57[-1].Description + 8);
  MEMORY[0x28223BE20](v58);
  v61 = (&v68 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = *v55;
  v51[5] = v28;
  v51[6] = &off_2877F3740;
  v51[2] = v63;
  v51[15] = &type metadata for PlaybackStarter;
  v51[16] = &off_2877EE098;
  v64 = swift_allocObject();
  v51[12] = v64;
  v65 = v61[3];
  v64[3] = v61[2];
  v64[4] = v65;
  v64[5] = v61[4];
  v66 = v61[1];
  v64[1] = *v61;
  v64[2] = v66;
  sub_2662A8618(v76, (v51 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  v8[12] = v51;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return v8;
}

uint64_t sub_2663C6558(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v27 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v7, v12, v3);
  sub_2663CB97C(v9, v8, v10, v11);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  sub_2662D2F30(v9, v8, v10, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v8;
    v25 = v14;
    v16 = v15;
    v24 = swift_slowAlloc();
    v29 = v24;
    v30 = v9;
    *v16 = 136315138;
    v31 = v28;
    v32 = v10;
    v33 = v11;
    sub_2663CB97C(v9, v28, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073360, &qword_2664EA5F8);
    v17 = sub_2664E0318();
    v23 = v3;
    v19 = sub_2662A320C(v17, v18, &v29);
    v26 = v9;
    v20 = v19;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26629C000, v13, v25, "RemotePlaybackHandler#warm [Remote] PlaybackResult returned from handlePlaybackQueueLocation: %s", v16, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v21, -1, -1);
    v8 = v28;
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v4 + 8))(v7, v23);
    v9 = v26;
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v30 = v9;
  v31 = v8;
  v32 = v10;
  v33 = v11;
  return v27(&v30);
}

void sub_2663C6848(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *(a1 + 16);
  if (v14 && (*(a1 + 36) & 1) == 0 && (v15 = *(a1 + 24)) != 0)
  {
    v16 = *(a1 + 32);
    v17 = qword_280F914E8;
    v18 = v14;
    v19 = v15;
    if (v17 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v20, v6);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a3;
      v24 = v19;
      v25 = v18;
      v26 = v16;
      v27 = a2;
      v28 = v23;
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "RemotePlaybackHandler#handlePlaybackQueueLocation setting queue location with x scheme", v23, 2u);
      v29 = v28;
      a2 = v27;
      v16 = v26;
      v18 = v25;
      v19 = v24;
      a3 = v40;
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v30 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
    sub_266386350(MEMORY[0x277D84F90]);
    v31 = sub_2664E01A8();

    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    v44 = sub_2663CB974;
    v45 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v42 = sub_2663A0C48;
    v43 = &block_descriptor_27;
    v33 = _Block_copy(&aBlock);

    [v30 insertPlaybackQueueWithResult:v18 atPosition:v16 onDestination:v19 withOptions:v31 completion:v33];
    _Block_release(v33);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v34, v6);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&aBlock = v38;
      *v37 = 134218498;
      *(v37 + 4) = 5;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 7;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &aBlock);
      _os_log_impl(&dword_26629C000, v35, v36, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    aBlock = xmmword_2664EA550;
    v42 = 0x80000002664F73E0;
    LOBYTE(v43) = 1;
    a2(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v42, v43);
  }
}

uint64_t sub_2663C6D54(id a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v71 = a3;
  v5 = sub_2664DFE38();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = sub_2664DFD68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  if (a1)
  {
    v22 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v22 = 0;
  }

  sub_2664DFD98();

  v23 = sub_2664DFD48();
  v25 = v24;

  v26 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  if (v26)
  {
    v72 = v21;
    v69 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v28 = v73;
    v64 = *(v73 + 16);
    v65 = v27;
    v64(v11, v27, v5);
    (*(v15 + 16))(v19, v72, v14);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    v31 = os_log_type_enabled(v29, v30);
    v67 = v15;
    v68 = v14;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v63 = v5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136315138;
      v35 = sub_2664DFD48();
      v62 = v11;
      v37 = v36;
      v66 = *(v15 + 8);
      v66(v19, v14);
      v38 = sub_2662A320C(v35, v37, &v74);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26629C000, v29, v30, "RemotePlaybackHandler#handlePlaybackQueueLocation error onion: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v39 = v34;
      v40 = v73;
      MEMORY[0x266784AD0](v39, -1, -1);
      v41 = v33;
      v5 = v63;
      MEMORY[0x266784AD0](v41, -1, -1);

      v42 = *(v40 + 8);
      v42(v62, v5);
    }

    else
    {

      v66 = *(v15 + 8);
      v66(v19, v14);
      v42 = *(v28 + 8);
      v42(v11, v5);
    }

    v51 = sub_2664DFD48();
    v53 = v52;
    v54 = v70;
    v64(v70, v65, v5);

    v55 = sub_2664DFE18();
    v56 = v5;
    v57 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v58 = 134218498;
      *(v58 + 4) = 5;
      *(v58 + 12) = 2048;
      *(v58 + 14) = 7;
      *(v58 + 22) = 2080;
      v60 = sub_2662A320C(v51, v53, &v74);

      *(v58 + 24) = v60;
      _os_log_impl(&dword_26629C000, v55, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v61 = v70;
    }

    else
    {

      v61 = v54;
    }

    v42(v61, v56);
    v74 = 1287;
    v75 = v51;
    v76 = v53;
    v77 = 1;
    v69(&v74);
    sub_2662D2F30(v74, v75, v76, v77);
    return (v66)(v72, v68);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v73 + 16))(v13, v43, v5);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v21;
      v47 = v5;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "RemotePlaybackHandler#handlePlaybackQueueLocation performed queue insertion using x scheme", v48, 2u);
      v49 = v48;
      v5 = v47;
      v21 = v46;
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    (*(v73 + 8))(v13, v5);
    v74 = 0;
    v75 = 0;
    v77 = 0;
    v76 = 0;
    a2(&v74);
    return (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_2663C745C(char *a1, uint64_t a2)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 9);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v40 = *(a1 + 9);
    }

    v12 = sub_2664E0A68();
    v47 = a1;
    v48 = a2;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = a1;
    v48 = a2;
    if (v12)
    {
LABEL_3:
      if (v12 >= 1)
      {
        v13 = 0;
        v55 = v11 & 0xC000000000000001;
        v51 = (v6 + 8);
        v52 = (v6 + 16);
        a1 = MEMORY[0x277D84F90];
        *&v8 = 136315138;
        v49 = v8;
        v53 = v11;
        v54 = v12;
        v50 = v5;
        while (1)
        {
          if (v55)
          {
            v28 = MEMORY[0x266783B70](v13, v11);
          }

          else
          {
            v28 = *(v11 + 8 * v13 + 32);
          }

          v29 = *(v28 + 49);
          if (v29 <= 3 && *(v28 + 49) > 1u && v29 != 2)
          {
            break;
          }

          v30 = sub_2664E0D88();

          if (v30)
          {
            goto LABEL_46;
          }

          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v31 = __swift_project_value_buffer(v5, qword_280F914F0);
          swift_beginAccess();
          (*v52)(v10, v31, v5);

          v32 = v10;
          v33 = sub_2664DFE18();
          v34 = sub_2664E06D8();

          if (!os_log_type_enabled(v33, v34))
          {

            (*v51)(v32, v5);
            v10 = v32;
            v11 = v53;
            goto LABEL_33;
          }

          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v56 = v15;
          *v14 = v49;
          v16 = *(v28 + 49);
          v17 = 0x62696C656C6F6877;
          if (v16 != 6)
          {
            v17 = 0x6E776F6E6B6E75;
          }

          v18 = 0xEC00000079726172;
          if (v16 != 6)
          {
            v18 = 0xE700000000000000;
          }

          v19 = 0x6867696C746F7073;
          if (v16 == 4)
          {
            v19 = 1684630645;
          }

          v20 = 0xE900000000000074;
          if (v16 == 4)
          {
            v20 = 0xE400000000000000;
          }

          if (*(v28 + 49) <= 5u)
          {
            v17 = v19;
            v18 = v20;
          }

          v21 = 0x72657669746C756DLL;
          if (v16 != 2)
          {
            v21 = 0x65726F7473;
          }

          v22 = 0xEA00000000006573;
          if (v16 != 2)
          {
            v22 = 0xE500000000000000;
          }

          v23 = 0x636E797369726973;
          if (!*(v28 + 49))
          {
            v23 = 0x656369766564;
          }

          v24 = 0xE600000000000000;
          if (*(v28 + 49))
          {
            v24 = 0xE800000000000000;
          }

          if (*(v28 + 49) <= 1u)
          {
            v21 = v23;
            v22 = v24;
          }

          if (*(v28 + 49) <= 3u)
          {
            v25 = v21;
          }

          else
          {
            v25 = v17;
          }

          if (*(v28 + 49) <= 3u)
          {
            v26 = v22;
          }

          else
          {
            v26 = v18;
          }

          v27 = sub_2662A320C(v25, v26, &v56);

          *(v14 + 4) = v27;
          _os_log_impl(&dword_26629C000, v33, v34, "RemotePlaybackHandler#handlePlaybackQueueLocation [SetPlaybackQueueLocation] Unknown origin: %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
          MEMORY[0x266784AD0](v15, -1, -1);
          MEMORY[0x266784AD0](v14, -1, -1);

          v5 = v50;
          v10 = v32;
          (*v51)(v32, v50);
          v11 = v53;
LABEL_32:
          v12 = v54;
LABEL_33:
          if (v12 == ++v13)
          {
            goto LABEL_55;
          }
        }

LABEL_46:
        v36 = *(v28 + 56);
        v35 = *(v28 + 64);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
        }

        v38 = *(a1 + 2);
        v37 = *(a1 + 3);
        if (v38 >= v37 >> 1)
        {
          a1 = sub_2663846F4((v37 > 1), v38 + 1, 1, a1);
        }

        *(a1 + 2) = v38 + 1;
        v39 = &a1[16 * v38];
        *(v39 + 4) = v36;
        *(v39 + 5) = v35;
        goto LABEL_32;
      }

      __break(1u);
LABEL_63:
      a1 = sub_2663846F4(0, 1, 1, a1);
      goto LABEL_58;
    }
  }

  a1 = MEMORY[0x277D84F90];
LABEL_55:
  if (*(a1 + 2))
  {
    v2 = v47;
    v11 = v48;
    goto LABEL_61;
  }

  v2 = v47;
  a2 = *(v47 + 7);
  v6 = *(v47 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  v43 = *(a1 + 2);
  v42 = *(a1 + 3);
  if (v43 >= v42 >> 1)
  {
    a1 = sub_2663846F4((v42 > 1), v43 + 1, 1, a1);
  }

  *(a1 + 2) = v43 + 1;
  v44 = &a1[16 * v43];
  *(v44 + 4) = a2;
  *(v44 + 5) = v6;
LABEL_61:
  v45 = (*(*v11 + 200))(v2, a1);

  return v45;
}

uint64_t sub_2663C7AD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v86 = a7;
  v87 = a6;
  v85 = a4;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v73[-v19];
  MEMORY[0x28223BE20](v18);
  v23 = &v73[-v22];
  v24 = *(a1 + 16);
  if (v24 && (*(a1 + 36) & 1) == 0 && (v25 = *(a1 + 24)) != 0)
  {
    v76 = v21;
    v26 = qword_280F914E8;
    v81 = v24;
    v80 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v75 = v20;
    v27 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v28 = v12[2];
    v84 = v27;
    v83 = v12 + 2;
    v82 = v28;
    v28(v23, v27, v11);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "RemotePlaybackHandler#preLoadQueueForRemote setting queue location with x scheme", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v77 = v12[1];
    v77(v23, v11);
    v32 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
    v74 = *(a3 + 50);
    *&v33 = *(a3 + 8);
    v79 = v33;
    v34 = *(a3 + 16);
    v35 = *(a5 + 104);
    *&v33 = *(a5 + 96);
    v78 = v33;
    v94[3] = &type metadata for PlaybackAttributes;
    v94[4] = &off_2877E7D78;
    v36 = swift_allocObject();
    v94[0] = v36;
    v37 = *(a3 + 16);
    *(v36 + 16) = *a3;
    *(v36 + 32) = v37;
    *(v36 + 48) = *(a3 + 32);
    *(v36 + 63) = *(a3 + 47);
    sub_26637C7BC(v32, &v89);
    sub_2662A5550(v94, v88);
    v38 = swift_allocObject();
    v39 = v92;
    *(v38 + 48) = v91;
    *(v38 + 64) = v39;
    v40 = v90;
    *(v38 + 16) = v89;
    *(v38 + 32) = v40;
    *&v39 = v79;
    *(&v39 + 1) = v34;
    *&v41 = v78;
    *(&v41 + 1) = v35;
    v42 = v93;
    *(v38 + 96) = v39;
    *(v38 + 112) = v41;
    *(v38 + 80) = v42;
    v43 = v86;
    *(v38 + 128) = v87;
    *(v38 + 136) = v43;
    sub_2662A8618(v88, v38 + 144);
    v44 = v81;
    v45 = v85;
    *(v38 + 184) = v81;
    *(v38 + 192) = v45;
    *(v38 + 200) = 0;
    v46 = v80;
    v47 = v44;
    v48 = v46;
    sub_2662D2A64(a3, &v89);

    v49 = v45;

    [v48 mutableCopy];
    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2663CB9A0();
    if (swift_dynamicCast())
    {
      v50 = v88[0];
      [v88[0] setSingleGroup_];
      v51 = v47;
      v52 = v48;

      v53 = v50;
      sub_2664ADBE8(v52, v49, v52, v51, sub_26637C818, v38, v53, v74);
    }

    else
    {
      v60 = v47;
      v85 = v48;
      v61 = v75;
      v82(v75, v84, v11);
      v62 = sub_2664DFE18();
      v63 = sub_2664E06D8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_26629C000, v62, v63, "Guaranteed cast to mutable RemoteControlDestination failed", v64, 2u);
        MEMORY[0x266784AD0](v64, -1, -1);
      }

      v65 = v61;
      v66 = v77;
      v77(v65, v11);
      v67 = v76;
      v82(v76, v84, v11);
      v68 = sub_2664DFE18();
      v69 = sub_2664E06B8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v89 = v71;
        *v70 = 134218498;
        *(v70 + 4) = 15;
        *(v70 + 12) = 2048;
        *(v70 + 14) = 22;
        *(v70 + 22) = 2080;
        *(v70 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v89);
        _os_log_impl(&dword_26629C000, v68, v69, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v70, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x266784AD0](v71, -1, -1);
        MEMORY[0x266784AD0](v70, -1, -1);

        v77(v67, v11);
      }

      else
      {

        v66(v67, v11);
      }

      v89 = xmmword_2664E8D90;
      *&v90 = 0x80000002664F5AE0;
      BYTE8(v90) = 1;
      v87(&v89);

      v72 = v85;
      sub_2662D2F30(v89, *(&v89 + 1), v90, SBYTE8(v90));
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v94);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (v12[2])(v16, v54, v11);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v89 = v58;
      *v57 = 134218498;
      *(v57 + 4) = 5;
      *(v57 + 12) = 2048;
      *(v57 + 14) = 38;
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &v89);
      _os_log_impl(&dword_26629C000, v55, v56, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    (v12[1])(v16, v11);
    v89 = xmmword_2664EA560;
    *&v90 = 0x80000002664F73E0;
    BYTE8(v90) = 1;
    v87(&v89);
    return sub_2662D2F30(v89, *(&v89 + 1), v90, SBYTE8(v90));
  }
}

void sub_2663C8428(int a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v140 = a7;
  v139 = a6;
  v143 = a5;
  v147 = a4;
  v146 = a3;
  LODWORD(v149) = a1;
  v148 = sub_2664DFE38();
  v8 = *(v148 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v148);
  v144 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v135 = &v132 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v136 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v133 = &v132 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v132 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v141 = &v132 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - v27;
  v29 = sub_2664DFE08();
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 40);
  v142 = a2;
  v35 = *__swift_project_boxed_opaque_existential_1((a2 + 16), v34);
  if (qword_280F91508 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v145 = v8;
    v36 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    v138 = v149 & 0x1010101;
    sub_26648D3D0(v138, v35, &v150);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v30 + 8))(v33, v29);
    v37 = v150;
    if (v150 == 1)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v38 = v148;
      v39 = __swift_project_value_buffer(v148, qword_280F914F0);
      swift_beginAccess();
      v40 = v8;
      v41 = *(v8 + 16);
      v41(v28, v39, v38);
      v42 = sub_2664DFE18();
      v43 = sub_2664E06D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26629C000, v42, v43, "RemotePlaybackHandler#preLoadQueueForRemote Network needed for Streaming!", v44, 2u);
        MEMORY[0x266784AD0](v44, -1, -1);
      }

      v45 = 0xEC0000006B726F77;

      v46 = *(v40 + 8);
      v46(v28, v38);
      v47 = v141;
      v41(v141, v39, v38);
      v48 = v47;
      v49 = sub_2664DFE18();
      v50 = sub_2664E06B8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v150 = v52;
        *v51 = 134218498;
        *(v51 + 4) = 5;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 26;
        *(v51 + 22) = 2080;
        *(v51 + 24) = sub_2662A320C(0x74654E736465654ELL, 0xEC0000006B726F77, &v150);
        _os_log_impl(&dword_26629C000, v49, v50, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v51, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x266784AD0](v52, -1, -1);
        MEMORY[0x266784AD0](v51, -1, -1);
      }

      v46(v48, v38);
      v53 = xmmword_2664EA580;
LABEL_10:
      v150 = v53;
      v151 = v45;
      v152 = 1;
      v146(&v150);
      sub_2662D2F30(v150, *(&v150 + 1), v151, v152);
      return;
    }

    if (v150 == 4)
    {
      v29 = &unk_280F91000;
      v35 = v148;
      v54 = v143;
      v55 = v8;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v56 = __swift_project_value_buffer(v35, qword_280F914F0);
      swift_beginAccess();
      v141 = *(v8 + 16);
      (v141)(v24, v56, v35);
      v57 = sub_2664DFE18();
      v58 = sub_2664E06C8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26629C000, v57, v58, "RemotePlaybackHandler#preLoadQueueForRemote Setting localAllowed to true", v59, 2u);
        v60 = v24;
        v24 = v54;
LABEL_21:
        v134 = v37;
        MEMORY[0x266784AD0](v59, -1, -1);
        goto LABEL_31;
      }

      v134 = 4;
      v60 = v24;
      v24 = v54;
    }

    else
    {
      v35 = v148;
      v24 = v143;
      v55 = v8;
      if (v150 != 3)
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v64 = __swift_project_value_buffer(v35, qword_280F914F0);
        swift_beginAccess();
        v65 = *(v8 + 16);
        v65(v136, v64, v35);
        v66 = sub_2664DFE18();
        v67 = sub_2664E06D8();
        v68 = os_log_type_enabled(v66, v67);
        v69 = v134;
        if (v68)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_26629C000, v66, v67, "RemotePlaybackHandler#preLoadQueueForRemote Companion not supported for store item", v70, 2u);
          MEMORY[0x266784AD0](v70, -1, -1);
        }

        v71 = *(v55 + 8);
        v71(v136, v35);
        v45 = 0x80000002664F7430;
        v65(v69, v64, v35);
        v72 = sub_2664DFE18();
        v73 = sub_2664E06B8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v150 = v75;
          *v74 = 134218498;
          *(v74 + 4) = 5;
          *(v74 + 12) = 2048;
          *(v74 + 14) = 20;
          *(v74 + 22) = 2080;
          *(v74 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F7430, &v150);
          _os_log_impl(&dword_26629C000, v72, v73, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v74, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x266784AD0](v75, -1, -1);
          MEMORY[0x266784AD0](v74, -1, -1);
        }

        v71(v69, v35);
        v53 = xmmword_2664EA570;
        goto LABEL_10;
      }

      v29 = &unk_280F91000;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v61 = __swift_project_value_buffer(v35, qword_280F914F0);
      swift_beginAccess();
      v62 = *(v8 + 16);
      v60 = v133;
      v141 = v62;
      (v62)(v133, v61, v35);
      v57 = sub_2664DFE18();
      v63 = sub_2664E06C8();
      if (os_log_type_enabled(v57, v63))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26629C000, v57, v63, "RemotePlaybackHandler#preLoadQueueForRemote Setting localAllowed to false", v59, 2u);
        goto LABEL_21;
      }

      v134 = 3;
    }

LABEL_31:

    v78 = *(v55 + 8);
    v77 = (v55 + 8);
    v76 = v78;
    (v78)(v60, v35);
    v8 = v24[9];
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v131 = v24[9];
      }

      v79 = sub_2664E0A68();
    }

    else
    {
      v79 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v136 = v76;
    if (!v79)
    {
      break;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v35, qword_280F914F0);
    swift_beginAccess();
    v30 = v135;
    (v141)(v135, v80, v35);
    v81 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v81, v28))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_26629C000, v81, v28, "RemotePlaybackHandler#preLoadQueueForRemote Sub items aren't empty, grabbing store IDs", v82, 2u);
      v83 = v82;
      v76 = v136;
      MEMORY[0x266784AD0](v83, -1, -1);
    }

    (v76)(v30, v35);
    if (v8 >> 62)
    {
      v84 = sub_2664E0A68();
    }

    else
    {
      v84 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = v77;
    if (!v84)
    {
      v33 = MEMORY[0x277D84F90];
LABEL_61:
      v24 = v143;
      v93 = (*(*v142 + 192))(v143);
      v35 = v148;
      v89 = v139;
      v90 = v134;
      v76 = v136;
      goto LABEL_62;
    }

    v94 = 0;
    v149 = (v8 & 0xC000000000000001);
    v95 = v8 & 0xFFFFFFFFFFFFFF8;
    v33 = MEMORY[0x277D84F90];
    while (v149)
    {
      v24 = MEMORY[0x266783B70](v94, v8);
      v35 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_76;
      }

LABEL_51:
      v28 = v8;
      v96 = v24[7];
      v29 = v24[8];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2663846F4(0, *(v33 + 2) + 1, 1, v33);
      }

      v30 = *(v33 + 2);
      v97 = *(v33 + 3);
      v24 = (v30 + 1);
      if (v30 >= v97 >> 1)
      {
        v33 = sub_2663846F4((v97 > 1), v30 + 1, 1, v33);
      }

      *(v33 + 2) = v24;
      v98 = &v33[16 * v30];
      *(v98 + 4) = v96;
      *(v98 + 5) = v29;
      ++v94;
      v8 = v28;
      if (v35 == v84)
      {
        goto LABEL_61;
      }
    }

    if (v94 >= *(v95 + 16))
    {
      goto LABEL_77;
    }

    v24 = *(v8 + 8 * v94 + 32);

    v35 = v94 + 1;
    if (!__OFADD__(v94, 1))
    {
      goto LABEL_51;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v85 = __swift_project_value_buffer(v35, qword_280F914F0);
  swift_beginAccess();
  (v141)(v137, v85, v35);
  v86 = sub_2664DFE18();
  v87 = sub_2664E06C8();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v139;
  v90 = v134;
  if (v88)
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_26629C000, v86, v87, "RemotePlaybackHandler#preLoadQueueForRemote Sub items are empty, playing the collection instead", v91, 2u);
    MEMORY[0x266784AD0](v91, -1, -1);
  }

  (v76)(v137, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v33 = swift_allocObject();
  *(v33 + 1) = xmmword_2664E36F0;
  v92 = v24[8];
  *(v33 + 4) = v24[7];
  *(v33 + 5) = v92;

  v93 = 0;
LABEL_62:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v99 = __swift_project_value_buffer(v35, qword_280F914F0);
  swift_beginAccess();
  (v141)(v144, v99, v35);
  v100 = sub_2664DFE18();
  v101 = sub_2664E06C8();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_26629C000, v100, v101, "RemotePlaybackHandler#preLoadQueueForRemote Setting remote queue", v102, 2u);
    v103 = v102;
    v76 = v136;
    MEMORY[0x266784AD0](v103, -1, -1);
  }

  (v76)(v144, v35);
  sub_26645F924(v33);

  v104 = objc_allocWithZone(MEMORY[0x277D27888]);
  v105 = sub_2664E0488();

  v106 = [v104 initWithContextID:0 storeItemIDs:v105 collectionIdentifierSet:v93];

  [v106 setShuffleType_];
  v107 = *(v89 + 1);
  v108 = v106;
  [v108 setShouldOverrideManuallyCuratedQueue_];
  if (v24[11])
  {
    v109 = v24[10];
    v110 = sub_2664E02A8();
  }

  else
  {
    v110 = 0;
  }

  [v108 setSiriRecommendationID_];

  swift_beginAccess();
  if (v24[3])
  {
    v111 = v24[2];
    v112 = v24[3];

    v113 = sub_2664E02A8();
  }

  else
  {
    v113 = 0;
  }

  v149 = v93;
  [v108 setSiriAssetInfo_];

  v114 = sub_2664E01A8();
  [v108 setSiriWHAMetricsInfo_];

  v115 = [objc_opt_self() systemMediaApplicationDestination];
  if (*(v89 + 40) && !*(*(v89 + 24) + 16))
  {
    LODWORD(v148) = v90 == 4;
    v124 = swift_allocObject();
    v125 = *(v89 + 16);
    *(v124 + 24) = *v89;
    *(v124 + 16) = v142;
    *(v124 + 40) = v125;
    *(v124 + 56) = *(v89 + 32);
    *(v124 + 71) = *(v89 + 47);
    v126 = v140;
    *(v124 + 80) = v108;
    *(v124 + 88) = v126;
    v127 = v146;
    *(v124 + 96) = v24;
    *(v124 + 104) = v127;
    *(v124 + 112) = v147;
    v157 = sub_2663CBA00;
    v158 = v124;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_2663A0C48;
    v156 = &block_descriptor_44;
    v128 = _Block_copy(&aBlock);
    v129 = v108;

    sub_2662D2A64(v89, &v150);
    v130 = v126;

    [v115 resolveWithQueue:v129 routeIdentifiers:0 localPlaybackPermitted:v148 audioRoutingInfo:v138 completion:v128];

    _Block_release(v128);
  }

  else
  {
    LODWORD(v148) = v90 == 4;
    v116 = sub_2664E0488();
    v117 = swift_allocObject();
    *(v117 + 16) = v142;
    *(v117 + 24) = v108;
    v118 = *(v89 + 16);
    *(v117 + 32) = *v89;
    *(v117 + 48) = v118;
    *(v117 + 64) = *(v89 + 32);
    *(v117 + 79) = *(v89 + 47);
    v119 = v140;
    *(v117 + 88) = v140;
    *(v117 + 96) = v24;
    v120 = v147;
    *(v117 + 104) = v146;
    *(v117 + 112) = v120;
    v157 = sub_2663CB9EC;
    v158 = v117;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_2663A0C48;
    v156 = &block_descriptor_38;
    v121 = _Block_copy(&aBlock);
    v122 = v108;

    sub_2662D2A64(v89, &v150);
    v123 = v119;

    [v115 resolveWithQueue:v122 hashedRouteIdentifiers:v116 localPlaybackPermitted:v148 audioRoutingInfo:v138 completion:v121];

    _Block_release(v121);
  }
}

uint64_t sub_2663C98DC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v96 = a8;
  v95 = a7;
  v91 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v85 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v82[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v82[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v82[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v82[-v24];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v90 = a4;
  v26 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v27 = v14[2];
  v94 = v26;
  v93 = v14 + 2;
  v92 = v27;
  v27(v25, v26, v13);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v14;
    v31 = a1;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "RemotePlaybackHandler#preLoadQueueForRemote [SE Route Logic] Attempting to play queue via continuation", v32, 2u);
    v33 = v32;
    a1 = v31;
    v14 = v30;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v36 = v14[1];
  v34 = v14 + 1;
  v35 = v36;
  v36(v25, v13);
  v37 = v13;
  v38 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v39 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
  v83 = *(a3 + 50);
  *&v40 = *(a3 + 8);
  v89 = v40;
  v41 = *(a3 + 16);
  v42 = *(a6 + 104);
  *&v40 = *(a6 + 96);
  v88 = v40;
  v103[3] = &type metadata for PlaybackAttributes;
  v103[4] = &off_2877E7D78;
  v43 = swift_allocObject();
  v103[0] = v43;
  v44 = *(a3 + 16);
  *(v43 + 16) = *a3;
  *(v43 + 32) = v44;
  *(v43 + 48) = *(a3 + 32);
  *(v43 + 63) = *(a3 + 47);
  sub_26637C7BC(v39, &v98);
  sub_2662A5550(v103, v97);
  v45 = swift_allocObject();
  v46 = v101;
  *(v45 + 48) = v100;
  *(v45 + 64) = v46;
  v47 = v99;
  *(v45 + 16) = v98;
  *(v45 + 32) = v47;
  *&v46 = v89;
  *(&v46 + 1) = v41;
  *&v48 = v88;
  *(&v48 + 1) = v42;
  v49 = v102;
  *(v45 + 96) = v46;
  *(v45 + 112) = v48;
  *(v45 + 80) = v49;
  v50 = v96;
  *(v45 + 128) = v95;
  *(v45 + 136) = v50;
  sub_2662A8618(v97, v45 + 144);
  v51 = v90;
  v52 = v91;
  *(v45 + 184) = v90;
  *(v45 + 192) = v52;
  *(v45 + 200) = 0;
  if (!v38)
  {
    v92(v87, v94, v37);
    sub_2662D2A64(a3, &v98);

    v60 = v51;
    v61 = v52;

    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    v64 = v37;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v65, 2u);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    v35(v87, v64);
    v66 = v85;
    v92(v85, v94, v64);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06B8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v98 = v70;
      *v69 = 134218498;
      *(v69 + 4) = 15;
      *(v69 + 12) = 2048;
      *(v69 + 14) = 13;
      *(v69 + 22) = 2080;
      *(v69 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v98);
      _os_log_impl(&dword_26629C000, v67, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    v35(v66, v64);
    v98 = xmmword_2664E8DA0;
    *&v99 = 0xE900000000000074;
    BYTE8(v99) = 1;
    v95(&v98);
    goto LABEL_19;
  }

  *&v89 = v34;
  v53 = v37;
  sub_2662D2A64(a3, &v98);

  v54 = v51;
  v55 = v52;

  [v38 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = v84;
    v92(v84, v94, v37);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v72, v73, "Guaranteed cast to mutable RemoteControlDestination failed", v74, 2u);
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    v35(v71, v53);
    v75 = v86;
    v92(v86, v94, v53);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v98 = v79;
      *v78 = 134218498;
      *(v78 + 4) = 15;
      *(v78 + 12) = 2048;
      *(v78 + 14) = 22;
      *(v78 + 22) = 2080;
      *(v78 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v98);
      _os_log_impl(&dword_26629C000, v76, v77, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v78, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x266784AD0](v79, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);

      v80 = v86;
    }

    else
    {

      v80 = v75;
    }

    v35(v80, v53);
    v98 = xmmword_2664E8D90;
    *&v99 = 0x80000002664F5AE0;
    BYTE8(v99) = 1;
    v95(&v98);

LABEL_19:

    sub_2662D2F30(v98, *(&v98 + 1), v99, SBYTE8(v99));
    return __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  v56 = v97[0];
  [v97[0] setSingleGroup_];
  v57 = v54;
  v58 = v38;

  v59 = v56;
  sub_2664ADBE8(v58, v55, v58, v57, sub_26637F70C, v45, v59, v83);

  return __swift_destroy_boxed_opaque_existential_1Tm(v103);
}

uint64_t sub_2663CA2B4(void *a1, void (*a2)(void, void), void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v90 = a8;
  v94 = a7;
  v89 = a5;
  v88 = a3;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v83 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v79[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v79[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v79[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v79[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v26 = v13[2];
  v93 = v25;
  v92 = v26;
  v26(v24, v25, v12);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v91 = a2;
    v30 = v12;
    v31 = a1;
    v32 = v13;
    v33 = v29;
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "RemotePlaybackHandler#preLoadQueueForRemote Attempting to play remote queue via continuation", v29, 2u);
    v34 = v33;
    v13 = v32;
    a1 = v31;
    v12 = v30;
    a2 = v91;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = v13[1];
  v84 = v13 + 1;
  v91 = v35;
  v35(v24, v12);
  v36 = __swift_project_boxed_opaque_existential_1(a2 + 13, *(a2 + 16));
  v80 = *(a4 + 50);
  *&v37 = *(a4 + 8);
  v87 = v37;
  v38 = *(a4 + 16);
  v39 = *(a6 + 104);
  *&v37 = *(a6 + 96);
  v86 = v37;
  v101[3] = &type metadata for PlaybackAttributes;
  v101[4] = &off_2877E7D78;
  v40 = swift_allocObject();
  v101[0] = v40;
  v41 = *(a4 + 16);
  *(v40 + 16) = *a4;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(a4 + 32);
  *(v40 + 63) = *(a4 + 47);
  sub_26637C7BC(v36, &v96);
  sub_2662A5550(v101, v95);
  v42 = swift_allocObject();
  v43 = v99;
  *(v42 + 48) = v98;
  *(v42 + 64) = v43;
  v44 = v97;
  *(v42 + 16) = v96;
  *(v42 + 32) = v44;
  *&v43 = v87;
  *(&v43 + 1) = v38;
  *&v45 = v86;
  *(&v45 + 1) = v39;
  v46 = v100;
  *(v42 + 96) = v43;
  *(v42 + 112) = v45;
  *(v42 + 80) = v46;
  v47 = v90;
  *(v42 + 128) = v94;
  *(v42 + 136) = v47;
  sub_2662A8618(v95, v42 + 144);
  v48 = v88;
  v49 = v89;
  *(v42 + 184) = v88;
  *(v42 + 192) = v49;
  *(v42 + 200) = 0;
  if (!a1)
  {
    v92(v85, v93, v12);
    sub_2662D2A64(a4, &v96);

    v57 = v48;
    v58 = v49;

    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v91(v85, v12);
    v62 = v83;
    v92(v83, v93, v12);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06B8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v96 = v66;
      *v65 = 134218498;
      *(v65 + 4) = 15;
      *(v65 + 12) = 2048;
      *(v65 + 14) = 13;
      *(v65 + 22) = 2080;
      *(v65 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v96);
      _os_log_impl(&dword_26629C000, v63, v64, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v65, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    v91(v62, v12);
    v96 = xmmword_2664E8DA0;
    *&v97 = 0xE900000000000074;
    BYTE8(v97) = 1;
    v94(&v96);
    goto LABEL_19;
  }

  sub_2662D2A64(a4, &v96);

  v50 = v48;
  v51 = v49;
  v52 = a1;

  [v52 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = v81;
    v92(v81, v93, v12);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "Guaranteed cast to mutable RemoteControlDestination failed", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v91(v67, v12);
    v71 = v82;
    v92(v82, v93, v12);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06B8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v96 = v76;
      *v75 = 134218498;
      *(v75 + 4) = 15;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 22;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v96);
      _os_log_impl(&dword_26629C000, v72, v73, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);

      v77 = v74;
    }

    else
    {

      v77 = v71;
    }

    v91(v77, v12);
    v96 = xmmword_2664E8D90;
    *&v97 = 0x80000002664F5AE0;
    BYTE8(v97) = 1;
    v94(&v96);

LABEL_19:

    sub_2662D2F30(v96, *(&v96 + 1), v97, SBYTE8(v97));
    return __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  v53 = v95[0];
  [v95[0] setSingleGroup_];
  v54 = v50;
  v55 = v52;

  v56 = v53;
  sub_2664ADBE8(v55, v51, v55, v54, sub_26637F70C, v42, v56, v80);

  return __swift_destroy_boxed_opaque_existential_1Tm(v101);
}

uint64_t sub_2663CAC94(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v16[15] = *(a1 + 48);
    v12 = PlaybackItem.Scheme.rawValue.getter();
    v14 = sub_2662A320C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_26629C000, v8, v9, "RemotePlaybackHandler#collectionID No collection matched for collection %s. Returning nil", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_2663CAF00(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, _OWORD *, void *, uint64_t (*)(uint64_t *)))
{
  v10 = *v8;
  v11 = *(a2 + 48);
  v12 = *(a2 + 49);
  v13 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v13;
  v18[2] = *(a2 + 32);
  if (v11)
  {
    v19 = v11;
    v20 = v12;

    sub_2663CB528(a1, v18, a3, v10, a4, a5);
  }

  else
  {
    v19 = 0;
    v20 = v12;
    return a8(a1, v18, a3, a4);
  }
}

uint64_t sub_2663CAFC4(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v51 = a2;
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v48 = sub_2664DFE08();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  v46 = a1[3];
  v44 = v17;
  v45 = a1[5];
  v18 = __swift_project_boxed_opaque_existential_1((v5 + 104), *(v5 + 128));
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v19, v12);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v18;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "PlaybackStarter#play Sending early completion to mark start playback request", v23, 2u);
    v24 = v23;
    v18 = v22;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v25 = qword_280F91D48;
  v26 = v11;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  v43 = "playbackQueueLocation";
  v27 = v47;
  v28 = v11;
  v29 = v48;
  (*(v7 + 16))(v47, v28, v48);
  sub_26637C7BC(v18, v53);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v30, v27, v29);
  v35 = (v34 + v31);
  v36 = v53[3];
  v35[2] = v53[2];
  v35[3] = v36;
  v35[4] = v53[4];
  v37 = v53[1];
  *v35 = v53[0];
  v35[1] = v37;
  v38 = v45;
  *(v34 + v32) = v46;
  v39 = (v34 + v33);
  *v39 = v44;
  v39[1] = v38;
  v40 = v49;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v41 = v40;

  sub_2663F4978(0xD00000000000001FLL, v43 | 0x8000000000000000, v41, v50, v52, v51, sub_2663CB454, v34);

  return (*(v7 + 8))(v26, v29);
}

uint64_t sub_2663CB454(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2664DFE08() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 87) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v8);
  v11 = *(v2 + v9);
  v12 = *(v2 + v9 + 8);
  v13 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663C1394(a1, a2, v2 + v6, v2 + v7, v10, v11, v12, v13);
}

uint64_t sub_2663CB528(char *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  v41 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v42 = a5;
  v43 = a6;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = *(a2 + 16);
  v47 = *a2;
  v48 = v17;
  *v49 = *(a2 + 32);
  *&v49[15] = *(a2 + 47);
  v18 = qword_280F914E8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v19, v11);
  sub_2662D2A64(&v47, &v44);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  sub_2662D2B88(&v47);
  if (os_log_type_enabled(v20, v21))
  {
    v39 = a4;
    v40 = a1;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v44 = v23;
    *v22 = 136315138;
    v24 = 0xE300000000000000;
    v25 = 7827310;
    v26 = 0xE500000000000000;
    v27 = 0x726574616CLL;
    v28 = 0xE700000000000000;
    v29 = 0x6E776F6E6B6E75;
    if (v49[16] != 3)
    {
      v29 = 0x726F707075736E75;
      v28 = 0xEB00000000646574;
    }

    if (v49[16] != 2)
    {
      v27 = v29;
      v26 = v28;
    }

    if (v49[16])
    {
      v25 = 1954047342;
      v24 = 0xE400000000000000;
    }

    if (v49[16] <= 1u)
    {
      v30 = v25;
    }

    else
    {
      v30 = v27;
    }

    if (v49[16] <= 1u)
    {
      v31 = v24;
    }

    else
    {
      v31 = v26;
    }

    v32 = sub_2662A320C(v30, v31, &v44);

    *(v22 + 4) = v32;
    _os_log_impl(&dword_26629C000, v20, v21, "RemotePlaybackHandler#handlePlaybackQueueLocation Attempting to set queue location for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    (*(v12 + 8))(v15, v11);
    a1 = v40;
    a4 = v39;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  if (sub_2664C8564(a1))
  {
    v44 = v47;
    v45 = v48;
    *v46 = *v49;
    *&v46[15] = *&v49[15];
    v33 = swift_allocObject();
    *(v33 + 16) = sub_2662F0CB0;
    *(v33 + 24) = v16;

    sub_2664C604C(a4 + 7, a1, &v44, 2, sub_2663CB96C, v33);
  }

  else
  {
    v34 = __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    v44 = v47;
    v45 = v48;
    *v46 = *v49;
    *&v46[15] = *&v49[15];
    v35 = sub_2663C745C(a1, a4);
    v36 = v43;

    sub_2662F0024(a1, &v44, v35, v41, v34, v42, v36);
  }
}

uint64_t sub_2663CB97C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

unint64_t sub_2663CB9A0()
{
  result = qword_280072C48;
  if (!qword_280072C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072C48);
  }

  return result;
}

SiriAudioSupport::NoticeEntity_optional __swiftcall NoticeEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NoticeEntity.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6575516F54646461;
    v7 = 0x657469726F766166;
    if (v1 != 2)
    {
      v7 = 0x69726F7661666E75;
    }

    if (*v0)
    {
      v6 = 0x506F546465646461;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7473614C79616C70;
    v3 = 0x6574664179616C70;
    if (v1 != 7)
    {
      v3 = 0x4C74736567677573;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x417972617262696CLL;
    if (v1 != 4)
    {
      v4 = 0x7478654E79616C70;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2663CBC18()
{
  result = qword_280073368;
  if (!qword_280073368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073368);
  }

  return result;
}

uint64_t sub_2663CBC6C()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664655F4();
  return sub_2664E0EB8();
}

uint64_t sub_2663CBCBC()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664655F4();
  return sub_2664E0EB8();
}

uint64_t sub_2663CBD0C@<X0>(uint64_t *a1@<X8>)
{
  result = NoticeEntity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2663CBD38()
{
  result = qword_280073370;
  if (!qword_280073370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073370);
  }

  return result;
}

unint64_t sub_2663CBD90()
{
  result = qword_280073378;
  if (!qword_280073378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073378);
  }

  return result;
}

unint64_t sub_2663CBDE8()
{
  result = qword_280073380;
  if (!qword_280073380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073380);
  }

  return result;
}

unint64_t sub_2663CBE40()
{
  result = qword_280073388;
  if (!qword_280073388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073388);
  }

  return result;
}

unint64_t sub_2663CBEC4()
{
  result = qword_280073390;
  if (!qword_280073390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073398, &qword_2664EA700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073390);
  }

  return result;
}

unint64_t sub_2663CBF38()
{
  result = qword_2800733A0;
  if (!qword_2800733A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733A0);
  }

  return result;
}

unint64_t sub_2663CBF90()
{
  result = qword_2800733A8;
  if (!qword_2800733A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733A8);
  }

  return result;
}

uint64_t sub_2663CBFE4(uint64_t a1)
{
  v2 = sub_2663CC1C0();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2663CC024()
{
  result = qword_2800733B0;
  if (!qword_2800733B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733B0);
  }

  return result;
}

uint64_t sub_2663CC078(uint64_t a1)
{
  v2 = sub_2663CC1C0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2663CC0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663CBD90();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2663CC100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2663CC1C0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2663CC164(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663CBD90();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_2663CC1C0()
{
  result = qword_2800733B8;
  if (!qword_2800733B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733B8);
  }

  return result;
}

uint64_t STCAuditProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2663CC260()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0088();
  v12[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230]);
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000026, 0x80000002664F7490, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F90B10 = v10;
  return result;
}

uint64_t STCAuditProvider.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2663CC454()
{
  v9 = MEMORY[0x277D84F90];
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90B10;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2663CCF20;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2662AA56C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_9;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2663CC5F0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  *a1 = v4;
}

uint64_t sub_2663CC648()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "STCAuditProvider#clearEvents...", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v11 = qword_280F90B10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2663CCF28;
  *(v12 + 24) = v1;
  aBlock[4] = sub_2663CD054;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2663CC92C@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = sub_2664DEA08();
  v58 = *(v1 - 8);
  v2 = *(v58 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2663CC454();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v19 = 136315138;
    v20 = MEMORY[0x2667834D0](v15, v1);
    v57 = v10;
    v22 = sub_2662A320C(v20, v21, &v59);
    v56 = v14;
    v23 = v11;
    v24 = v22;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_26629C000, v17, v18, "STCAuditProvider#auditEvents: %s", v19, 0xCu);
    v25 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v23 + 8))(v56, v57);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v26 = v15;
  v27 = *(v15 + 16);
  if (v27)
  {
    v28 = *(v58 + 16);
    v29 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v49 = v26;
    v30 = v26 + v29;
    v56 = *(v58 + 72);
    v31 = (v58 + 88);
    LODWORD(v55) = *MEMORY[0x277D5BC00];
    v32 = *MEMORY[0x277D5BC10];
    v33 = (v58 + 8);
    v58 += 16;
    v51 = (v58 + 16);
    v52 = v28;
    v54 = *MEMORY[0x277D5BB30];
    LODWORD(v57) = 5;
    do
    {
      v28(v9, v30, v1);
      v28(v7, v9, v1);
      v35 = *v31;
      v36 = (*v31)(v7, v1);
      if (v36 == v55 || v36 == v32 || v36 == v54)
      {
        v39 = v7;
        v40 = v53;
        (*v51)(v53, v9, v1);
        v41 = v35(v40, v1);
        if (v41 != v32)
        {
          (*v33)(v53, v1);
        }

        if (v57 > 2u)
        {
          if (v41 == v32)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }

          if (v41 == v32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 4;
          }

          if (v57 != 4)
          {
            v43 = v41 != v32;
          }

          v45 = v57 == 3;
        }

        else
        {
          if (v41 == v32)
          {
            v42 = 0;
          }

          else
          {
            v42 = 3;
          }

          if (v41 == v32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 4;
          }

          if (v41 == v32)
          {
            v44 = 2;
          }

          else
          {
            v44 = 3;
          }

          if (v57 != 1)
          {
            v43 = v44;
          }

          v45 = v57 == 0;
        }

        if (v45)
        {
          v46 = v42;
        }

        else
        {
          v46 = v43;
        }

        LODWORD(v57) = v46;
        v7 = v39;
        v28 = v52;
      }

      else
      {
        v34 = *v33;
        (*v33)(v9, v1);
        v34(v7, v1);
      }

      v30 += v56;
      --v27;
    }

    while (v27);

    v48 = v57;
  }

  else
  {

    v48 = 5;
  }

  *v50 = v48;
  return result;
}

uint64_t STCAuditProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t STCAuditProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2663CCF28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t sub_2663CD060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v7 = sub_2664E0EB8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2664E0D88() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_2663CD158(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2664E0E68();
  sub_2664E0E98();
  v5 = sub_2664E0EB8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_2663CD224(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2664E0E68();
  MEMORY[0x266783E90](a1);
  v5 = sub_2664E0EB8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_2663CD2F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_2664E0E58();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2663CD398()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000017, 0x80000002664EA940, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_28007CCD0 = v10;
  return result;
}

uint64_t sub_2663CD530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  v1 = *MEMORY[0x277CC2138];
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CC20E0];
  *(inited + 48) = sub_2664E02C8();
  *(inited + 56) = v4;
  v5 = sub_26639EB98(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_28007CCD8 = v5;
  return result;
}

uint64_t sub_2663CD5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, void (*a11)(uint64_t, unint64_t))
{
  LODWORD(v195) = a8;
  v188 = a3;
  v189 = a5;
  v187 = a1;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v178[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v178[-v21];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  LODWORD(v191) = a10;
  v181 = a9;
  v23 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v16 + 16);
  v185 = v23;
  v184 = v16 + 16;
  v183 = v24;
  v24(v22, v23, v15);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  v27 = os_log_type_enabled(v25, v26);
  v193 = v15;
  v194 = a6;
  v192 = v16;
  v186 = v20;
  v182 = a7;
  v190 = a4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v198 = v180;
    *v28 = 136447490;
    v201[0] = v187;
    v201[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v179 = v26;
    v29 = a7;
    v30 = sub_2664E0318();
    v32 = sub_2662A320C(v30, v31, &v198);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v201[0] = v188;
    v201[1] = a4;

    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v198);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2082;
    v201[0] = v189;
    v201[1] = a6;

    v36 = sub_2664E0318();
    v38 = sub_2662A320C(v36, v37, &v198);

    *(v28 + 24) = v38;
    *(v28 + 32) = 2082;
    v201[0] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v39 = sub_2664E0318();
    v41 = sub_2662A320C(v39, v40, &v198);

    *(v28 + 34) = v41;
    *(v28 + 42) = 2082;
    v42 = v195;
    LOBYTE(v201[0]) = v195;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v43 = sub_2664E0318();
    v45 = sub_2662A320C(v43, v44, &v198);

    *(v28 + 44) = v45;
    *(v28 + 52) = 2082;
    v46 = v181;
    v201[0] = v181;
    LOBYTE(v29) = v191;
    LOBYTE(v201[1]) = v191 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733C0, &unk_2664F04F0);
    v47 = sub_2664E0318();
    v49 = sub_2662A320C(v47, v48, &v198);

    *(v28 + 54) = v49;
    _os_log_impl(&dword_26629C000, v25, v179, "SpotlightSearchProvider#query Building spotlight query from params: mediaName: %{public}s, artistName:  %{public}s, albumName:  %{public}s, genreNames:  %{public}s, localOnly: %{public}s, mediaType: %{public}s", v28, 0x3Eu);
    v50 = v180;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v192 + 8))(v22, v193);
    v51 = v29;
    v52 = v46;
  }

  else
  {

    (*(v16 + 8))(v22, v15);
    v42 = v195;
    v51 = v191;
    v52 = v181;
  }

  v53 = sub_2663D1794(v52, v51 & 1);
  v201[0] = 0xD000000000000018;
  v201[1] = 0x80000002664F7530;
  v198 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  v195 = sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
  v55 = sub_2664E0288();
  v57 = v56;

  MEMORY[0x2667833B0](v55, v57);

  v58 = v201[0];
  v59 = v201[1];
  v60 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  v63 = v62 + 1;
  if (v62 >= v61 >> 1)
  {
    v60 = sub_2663846F4((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v63;
  v64 = &v60[16 * v62];
  *(v64 + 4) = v58;
  *(v64 + 5) = v59;
  if (v42 != 2 && (v42 & 1) != 0)
  {
    v65 = *(v60 + 3);
    if ((v62 + 2) > (v65 >> 1))
    {
      v60 = sub_2663846F4((v65 > 1), v62 + 2, 1, v60);
    }

    *(v60 + 2) = v62 + 2;
    v66 = &v60[16 * v63];
    *(v66 + 4) = 0xD000000000000010;
    *(v66 + 5) = 0x80000002664F7590;
  }

  v67 = MEMORY[0x277D84F90];
  v191 = v54;
  if (!a2)
  {
    v83 = MEMORY[0x277D84F90];
    v91 = v194;
LABEL_21:
    v200 = v67;
    v93 = v190;
    if (!v190)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v201[0] = v187;
  v201[1] = a2;
  sub_2662D2EBC();
  v201[0] = sub_2664E09A8();
  v201[1] = v68;
  v198 = 92;
  v199 = 0xE100000000000000;
  v196 = 23644;
  v197 = 0xE200000000000000;
  v69 = sub_2664E0998();
  v71 = v70;

  v201[0] = v69;
  v201[1] = v71;
  v198 = 34;
  v199 = 0xE100000000000000;
  v196 = 8796;
  v197 = 0xE200000000000000;
  v72 = sub_2664E0998();
  v74 = v73;

  v201[0] = v72;
  v201[1] = v74;
  v198 = 39;
  v199 = 0xE100000000000000;
  v196 = 10076;
  v197 = 0xE200000000000000;
  v75 = sub_2664E0998();
  v77 = v76;

  v201[0] = v75;
  v201[1] = v77;
  v198 = 42;
  v199 = 0xE100000000000000;
  v196 = 10844;
  v197 = 0xE200000000000000;
  v78 = sub_2664E0998();
  v80 = v79;

  strcpy(v201, "kMDItemTitle=");
  HIBYTE(v201[1]) = -18;
  MEMORY[0x2667833B0](v78, v80);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v81 = v201[0];
  v82 = v201[1];
  v83 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
  v85 = *(v83 + 2);
  v84 = *(v83 + 3);
  if (v85 >= v84 >> 1)
  {
    v83 = sub_2663846F4((v84 > 1), v85 + 1, 1, v83);
  }

  *(v83 + 2) = v85 + 1;
  v86 = &v83[16 * v85];
  *(v86 + 4) = v81;
  *(v86 + 5) = v82;
  v201[0] = 0xD000000000000017;
  v201[1] = 0x80000002664F7570;
  MEMORY[0x2667833B0](v78, v80);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v87 = v201[0];
  v88 = v201[1];
  v90 = *(v83 + 2);
  v89 = *(v83 + 3);
  if (v90 >= v89 >> 1)
  {
    v83 = sub_2663846F4((v89 > 1), v90 + 1, 1, v83);
  }

  v91 = v194;
  *(v83 + 2) = v90 + 1;
  v92 = &v83[16 * v90];
  *(v92 + 4) = v87;
  *(v92 + 5) = v88;
  if (v91)
  {

    v67 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  if (v190)
  {

    v200 = MEMORY[0x277D84F90];
    v93 = v190;
LABEL_25:
    v201[0] = v188;
    v201[1] = v93;
    sub_2662D2EBC();
    v201[0] = sub_2664E09A8();
    v201[1] = v94;
    v198 = 92;
    v199 = 0xE100000000000000;
    v196 = 23644;
    v197 = 0xE200000000000000;
    v95 = sub_2664E0998();
    v97 = v96;

    v201[0] = v95;
    v201[1] = v97;
    v198 = 34;
    v199 = 0xE100000000000000;
    v196 = 8796;
    v197 = 0xE200000000000000;
    v98 = sub_2664E0998();
    v100 = v99;

    v201[0] = v98;
    v201[1] = v100;
    v198 = 39;
    v199 = 0xE100000000000000;
    v196 = 10076;
    v197 = 0xE200000000000000;
    v101 = sub_2664E0998();
    v103 = v102;

    v201[0] = v101;
    v201[1] = v103;
    v198 = 42;
    v199 = 0xE100000000000000;
    v196 = 10844;
    v197 = 0xE200000000000000;
    v104 = sub_2664E0998();
    v106 = v105;

    v201[0] = 0x416D657449444D6BLL;
    v201[1] = 0xEF223D7473697472;
    MEMORY[0x2667833B0](v104, v106);

    MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
    v107 = v201[0];
    v108 = v201[1];
    v109 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
    v111 = *(v109 + 2);
    v110 = *(v109 + 3);
    if (v111 >= v110 >> 1)
    {
      v109 = sub_2663846F4((v110 > 1), v111 + 1, 1, v109);
    }

    *(v109 + 2) = v111 + 1;
    v112 = &v109[16 * v111];
    *(v112 + 4) = v107;
    *(v112 + 5) = v108;
    v200 = v109;
    v91 = v194;
    goto LABEL_28;
  }

  strcpy(v201, "kMDItemAlbum=");
  HIBYTE(v201[1]) = -18;
  MEMORY[0x2667833B0](v78, v80);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v168 = v201[0];
  v169 = v201[1];
  v171 = *(v83 + 2);
  v170 = *(v83 + 3);
  if (v171 >= v170 >> 1)
  {
    v83 = sub_2663846F4((v170 > 1), v171 + 1, 1, v83);
  }

  *(v83 + 2) = v171 + 1;
  v172 = &v83[16 * v171];
  *(v172 + 4) = v168;
  *(v172 + 5) = v169;
  v201[0] = 0x416D657449444D6BLL;
  v201[1] = 0xEF223D7473697472;
  MEMORY[0x2667833B0](v78, v80);

  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v173 = v201[0];
  v174 = v201[1];
  v176 = *(v83 + 2);
  v175 = *(v83 + 3);
  if (v176 >= v175 >> 1)
  {
    v83 = sub_2663846F4((v175 > 1), v176 + 1, 1, v83);
  }

  *(v83 + 2) = v176 + 1;
  v177 = &v83[16 * v176];
  *(v177 + 4) = v173;
  *(v177 + 5) = v174;
  v200 = MEMORY[0x277D84F90];
LABEL_28:
  v113 = v182;
  if (v182)
  {

    sub_2663D1704(v113, &v200);
  }

  if (v91)
  {
    v201[0] = v189;
    v201[1] = v91;
    sub_2662D2EBC();
    v201[0] = sub_2664E09A8();
    v201[1] = v114;
    v198 = 92;
    v199 = 0xE100000000000000;
    v196 = 23644;
    v197 = 0xE200000000000000;
    v115 = sub_2664E0998();
    v117 = v116;

    v201[0] = v115;
    v201[1] = v117;
    v198 = 34;
    v199 = 0xE100000000000000;
    v196 = 8796;
    v197 = 0xE200000000000000;
    v118 = sub_2664E0998();
    v120 = v119;

    v201[0] = v118;
    v201[1] = v120;
    v198 = 39;
    v199 = 0xE100000000000000;
    v196 = 10076;
    v197 = 0xE200000000000000;
    v121 = sub_2664E0998();
    v123 = v122;

    v201[0] = v121;
    v201[1] = v123;
    v198 = 42;
    v199 = 0xE100000000000000;
    v196 = 10844;
    v197 = 0xE200000000000000;
    v124 = sub_2664E0998();
    v126 = v125;

    strcpy(v201, "kMDItemAlbum=");
    HIBYTE(v201[1]) = -18;
    MEMORY[0x2667833B0](v124, v126);

    MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
    v127 = v201[0];
    v128 = v201[1];
    v129 = v200;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_2663846F4(0, *(v129 + 2) + 1, 1, v129);
    }

    v131 = *(v129 + 2);
    v130 = *(v129 + 3);
    if (v131 >= v130 >> 1)
    {
      v129 = sub_2663846F4((v130 > 1), v131 + 1, 1, v129);
    }

    *(v129 + 2) = v131 + 1;
    v132 = &v129[16 * v131];
    *(v132 + 4) = v127;
    *(v132 + 5) = v128;
    v200 = v129;
  }

  if (*(v60 + 2))
  {
    v201[0] = 40;
    v201[1] = 0xE100000000000000;
    v198 = v60;
    v133 = sub_2664E0288();
    v135 = v134;

    MEMORY[0x2667833B0](v133, v135);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v136 = v201[0];
    v137 = v201[1];
    v138 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
    v140 = *(v138 + 2);
    v139 = *(v138 + 3);
    v141 = v193;
    if (v140 >= v139 >> 1)
    {
      v138 = sub_2663846F4((v139 > 1), v140 + 1, 1, v138);
    }

    *(v138 + 2) = v140 + 1;
    v142 = &v138[16 * v140];
    *(v142 + 4) = v136;
    *(v142 + 5) = v137;
  }

  else
  {

    v138 = MEMORY[0x277D84F90];
    v141 = v193;
  }

  if (*(v83 + 2))
  {
    v201[0] = 40;
    v201[1] = 0xE100000000000000;
    v198 = v83;
    v143 = sub_2664E0288();
    v145 = v144;

    MEMORY[0x2667833B0](v143, v145);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v146 = v201[0];
    v147 = v201[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_2663846F4(0, *(v138 + 2) + 1, 1, v138);
    }

    v149 = *(v138 + 2);
    v148 = *(v138 + 3);
    if (v149 >= v148 >> 1)
    {
      v138 = sub_2663846F4((v148 > 1), v149 + 1, 1, v138);
    }

    *(v138 + 2) = v149 + 1;
    v150 = &v138[16 * v149];
    *(v150 + 4) = v146;
    *(v150 + 5) = v147;
  }

  else
  {
  }

  v195 = a11;
  if (*(v200 + 16))
  {
    v201[0] = 40;
    v201[1] = 0xE100000000000000;
    v198 = v200;

    v151 = sub_2664E0288();
    v153 = v152;

    MEMORY[0x2667833B0](v151, v153);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v154 = v201[0];
    v155 = v201[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_2663846F4(0, *(v138 + 2) + 1, 1, v138);
    }

    v157 = *(v138 + 2);
    v156 = *(v138 + 3);
    if (v157 >= v156 >> 1)
    {
      v138 = sub_2663846F4((v156 > 1), v157 + 1, 1, v138);
    }

    *(v138 + 2) = v157 + 1;
    v158 = &v138[16 * v157];
    *(v158 + 4) = v154;
    *(v158 + 5) = v155;
  }

  v201[0] = v138;
  v159 = sub_2664E0288();
  v161 = v160;

  v162 = v186;
  v183(v186, v185, v141);

  v163 = sub_2664DFE18();
  v164 = sub_2664E06C8();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v201[0] = v166;
    *v165 = 136446210;
    *(v165 + 4) = sub_2662A320C(v159, v161, v201);
    _os_log_impl(&dword_26629C000, v163, v164, "SpotlightSearchProvider#query Spotlight query string: %{public}s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v166);
    MEMORY[0x266784AD0](v166, -1, -1);
    MEMORY[0x266784AD0](v165, -1, -1);
  }

  (*(v192 + 8))(v162, v141);
  v195(v159, v161);
}

uint64_t sub_2663CE964(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2663094CC();
  v3 = sub_2664E04A8();

  v2(v3);
}

void sub_2663CE9D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2663CEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v27 = *v7;
  v28 = a1;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = qword_280F91508;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "spotlightSearchProviderMatches";
  *(v22 + 24) = 30;
  *(v22 + 32) = 2;
  (*(v11 + 32))(v22 + v20, v14, v10);
  v23 = (v22 + v21);
  *v23 = sub_2662C0D0C;
  v23[1] = v17;

  sub_2664E0848();
  sub_2664DFDC8();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2662C0D38;
  *(v24 + 24) = v22;

  sub_2663CED48(sub_2662C0DE0, v24, v30, v29, v28, v31, v27);

  return (*(v11 + 8))(v16, v10);
}

void sub_2663CED48(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v69 = a7;
  v82 = a5;
  v83 = a6;
  v11 = sub_2664E0038();
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2664E00B8();
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2664E0018();
  v73 = *(v74 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_2664E00E8();
  v76 = *(v84 - 8);
  v18 = *(v76 + 64);
  v19 = MEMORY[0x28223BE20](v84);
  v71 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v68 - v21;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v70 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  v29 = swift_allocObject();
  v68 = a1;
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v30 = objc_allocWithZone(MEMORY[0x277CC34A0]);

  v31 = [v30 init];
  v32 = sub_2664E0488();
  [v31 setFetchAttributes_];

  [v31 setMaxCount_];
  if (a4)
  {
    v33 = sub_2664E0488();
  }

  else
  {
    v33 = 0;
  }

  [v31 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2664E36F0;
  v35 = *MEMORY[0x277CCA1A0];
  *(v34 + 32) = sub_2664E02C8();
  *(v34 + 40) = v36;
  v37 = sub_2664E0488();

  [v31 setProtectionClasses_];

  v38 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v39 = v31;
  v40 = sub_2664E02A8();
  v41 = [v38 initWithQueryString:v40 context:v39];

  if (v41)
  {
    v83 = v11;
    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x277D84F90];
    v91 = sub_2663D1448;
    v92 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_2663CE964;
    v90 = &block_descriptor_29;
    v43 = _Block_copy(&aBlock);

    [v41 setFoundItemsHandler_];
    _Block_release(v43);
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = sub_2662C0CAC;
    v45 = v69;
    v44[4] = v29;
    v44[5] = v45;
    v91 = sub_2663D1450;
    v92 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_2663CE9D8;
    v90 = &block_descriptor_24_0;
    v46 = _Block_copy(&aBlock);
    v82 = v42;

    [v41 setCompletionHandler_];
    _Block_release(v46);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v22, qword_280F914F0);
    swift_beginAccess();
    v48 = v70;
    (*(v23 + 16))(v70, v47, v22);
    v49 = v39;
    v50 = sub_2664DFE18();
    v51 = sub_2664E06E8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67240192;
      *(v52 + 4) = [v49 qos];

      _os_log_impl(&dword_26629C000, v50, v51, "SpotlightSearchProvider#matches spotlight query(start) with qos:%{public}u", v52, 8u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    else
    {

      v50 = v49;
    }

    v69 = v49;

    (*(v23 + 8))(v48, v22);
    [v41 start];
    if (qword_280071BD0 != -1)
    {
      swift_once();
    }

    v70 = qword_28007CCD0;
    v57 = v71;
    sub_2664E00C8();
    v58 = v72;
    *v72 = 250;
    v59 = v73;
    v60 = v74;
    (*(v73 + 104))(v58, *MEMORY[0x277D85178], v74);
    v61 = v75;
    MEMORY[0x266783140](v57, v58);
    (*(v59 + 8))(v58, v60);
    v76 = *(v76 + 8);
    (v76)(v57, v84);
    v62 = swift_allocObject();
    *(v62 + 16) = v41;
    v91 = sub_2663D145C;
    v92 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_2662A3F90;
    v90 = &block_descriptor_30;
    v63 = _Block_copy(&aBlock);
    v64 = v41;
    v65 = v77;
    sub_2664E0068();
    v85 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
    v66 = v79;
    v67 = v83;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v61, v65, v66, v63);
    _Block_release(v63);

    (*(v81 + 8))(v66, v67);
    (*(v78 + 8))(v65, v80);
    (v76)(v61, v84);
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v22, qword_280F914F0);
    swift_beginAccess();
    (*(v23 + 16))(v28, v53, v22);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "SpotlightSearchProvider#matches Unexpected empty query", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    (*(v23 + 8))(v28, v22);
    v86[0] = MEMORY[0x277D84F90];
    v68(v86);
  }
}

uint64_t sub_2663CF888(unint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_2662F9DA4(v7);
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v8, v2);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    if (a1 >> 62)
    {
      v12 = sub_2664E0A68();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    _os_log_impl(&dword_26629C000, v9, v10, "SpotlightSearchProvider#matches Spotlight found %{public}ld more items", v11, 0xCu);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2663CFAC0(NSObject *a1, NSObject *a2, void (*a3)(void *), uint64_t a4)
{
  v174 = a4;
  v175 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v199 = &v174 - v8;
  v188 = type metadata accessor for SearchItem();
  v185 = *(v188 - 8);
  v9 = *(v185 + 64);
  v10 = MEMORY[0x28223BE20](v188);
  v180 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v174 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v183 = &v174 - v15;
  MEMORY[0x28223BE20](v14);
  v182 = (&v174 - v16);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  isa = v18[8].isa;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v201 = (&v174 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v214 = (&v174 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v181 = (&v174 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v174 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = (&v174 - v32);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v34 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v35 = v18;
    v36 = v18[2].isa;
    v211 = v34;
    v210 = v18 + 2;
    v209 = v36;
    v36(v33, v34, v17);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06B8();
    v39 = os_log_type_enabled(v37, v38);
    v204 = v22;
    if (v39)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "SpotlightSearchProvider#matches spotlight query(end)", v40, 2u);
      v41 = v40;
      v22 = v204;
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v18 = v35 + 1;
    v42 = v17;
    v212 = v35[1].isa;
    v212(v33, v17);
    v205 = v35 + 1;
    if (a1)
    {
      v209(v31, v211, v17);
      v43 = a1;
      v33 = v31;
      v44 = v17;
      v45 = sub_2664DFE18();
      v46 = sub_2664E06D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v217 = v48;
        *v47 = 136446210;
        swift_getErrorValue();
        v49 = sub_2664E0DE8();
        v51 = sub_2662A320C(v49, v50, &v217);

        *(v47 + 4) = v51;
        v33 = v205;
        _os_log_impl(&dword_26629C000, v45, v46, "SpotlightSearchProvider#matches error for search: %{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x266784AD0](v48, -1, -1);
        v52 = v47;
        v18 = v33;
        MEMORY[0x266784AD0](v52, -1, -1);
      }

      else
      {
      }

      v212(v31, v44);
      v22 = v204;
      v42 = v44;
    }

    swift_beginAccess();
    v53 = a2[2].isa;
    if (v53 >> 62)
    {
      a2 = a2[2].isa;
      v54 = sub_2664E0A68();
      v53 = a2;
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v214;
    if (!v54)
    {
      break;
    }

    v206 = v53 & 0xC000000000000001;
    v187 = v53 & 0xFFFFFFFFFFFFFF8;
    v186 = (v53 + 32);
    v177 = *MEMORY[0x277CC20E0];
    v189 = v53;

    v17 = 0;
    v203 = 0;
    v208 = MEMORY[0x277D84F90];
    *&v55 = 138412290;
    v179 = v55;
    *&v55 = 136316162;
    v176 = v55;
    *&v55 = 136446210;
    v178 = v55;
    v202 = v54;
    v190 = v42;
    while (1)
    {
      if (v206)
      {
        v61 = MEMORY[0x266783B70](v17, v189);
      }

      else
      {
        if (v17 >= *(v187 + 16))
        {
          goto LABEL_102;
        }

        v61 = *&v186[8 * v17];
      }

      a2 = v61;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        goto LABEL_101;
      }

      v216 = v17;
      v17 = [v61 attributeSet];
      v63 = [v17 uniqueIdentifier];
      if (!v63)
      {
        v71 = v54;
        v72 = v42;
        v209(v201, v211, v42);
        a1 = a2;
        a2 = sub_2664DFE18();
        v73 = sub_2664E06D8();

        if (os_log_type_enabled(a2, v73))
        {
          v56 = v18;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = v179;
          *(v57 + 4) = a1;
          *v58 = a1;
          v33 = a1;
          _os_log_impl(&dword_26629C000, a2, v73, "SpotlightSearchProvider#matches Spotlight result missing identifier: %@", v57, 0xCu);
          sub_2662E4324(v58);
          v59 = v58;
          v22 = v204;
          MEMORY[0x266784AD0](v59, -1, -1);
          v60 = v57;
          v18 = v56;
          MEMORY[0x266784AD0](v60, -1, -1);
          a1 = v17;
        }

        else
        {
          v33 = a2;
          a2 = v17;
        }

        v42 = v72;
        v212(v201, v72);
        v17 = v216;
        v54 = v71;
        v31 = v214;
        goto LABEL_15;
      }

      v215 = a2;
      v64 = v63;
      v207 = sub_2664E02C8();
      v213 = v65;

      v66 = [v17 mediaTypes];
      if (v66)
      {
        v67 = v66;
        v68 = sub_2664E04A8();

        v217 = 1735290739;
        v218 = 0xE400000000000000;
        MEMORY[0x28223BE20](v69);
        *(&v174 - 2) = &v217;
        a1 = v203;
        LOBYTE(v67) = sub_2662AA720(sub_2662AA7CC, (&v174 - 4), v68);
        v203 = a1;

        if (v67)
        {
          v70 = 0;
LABEL_46:
          v86 = v199;
          v87 = v183;
          v88 = [v17 artist];
          if (v88)
          {
            v89 = v88;
            v200 = sub_2664E02C8();
            v198 = v90;
          }

          else
          {
            v200 = 0;
            v198 = 0;
          }

          v91 = [v17 album];
          if (v91)
          {
            v92 = v91;
            v197 = sub_2664E02C8();
            v196 = v93;
          }

          else
          {
            v197 = 0;
            v196 = 0;
          }

          v94 = [v17 title];
          if (v94)
          {
            v95 = v94;
            v195 = sub_2664E02C8();
            v194 = v96;
          }

          else
          {
            v195 = 0;
            v194 = 0;
          }

          v97 = [v215 bundleID];
          if (v97)
          {
            v98 = v97;
            v193 = sub_2664E02C8();
            v192 = v99;
          }

          else
          {
            v193 = 0;
            v192 = 0;
          }

          v100 = [v17 audioTrackNumber];
          if (v100)
          {
            v217 = 0;
            LOBYTE(v218) = 1;
            v101 = v100;
            sub_2664E0658();

            v191 = v217;
            v102 = v218;
          }

          else
          {
            v191 = 0;
            v102 = 1;
          }

          v103 = [v17 playCount];
          if (v103)
          {
            v217 = 0;
            LOBYTE(v218) = 1;
            v104 = v103;
            sub_2664E0658();

            v105 = v217;
            v106 = v218;
          }

          else
          {
            v105 = 0;
            v106 = 1;
          }

          v107 = [v17 lastUsedDate];
          if (v107)
          {
            v108 = v107;
            sub_2664DE3F8();

            v109 = 0;
          }

          else
          {
            v109 = 1;
          }

          v110 = sub_2664DE438();
          (*(*(v110 - 8) + 56))(v86, v109, 1, v110);
          v111 = [v17 isLocal];
          if (v111)
          {
            v112 = v111;
            v113 = [v111 BOOLValue];
          }

          else
          {
            v113 = 0;
          }

          v114 = [v17 genre];
          if (v114)
          {
            v115 = v114;
            v116 = sub_2664E02C8();
            v118 = v117;
          }

          else
          {
            v116 = 0;
            v118 = 0;
          }

          v119 = v182;
          v120 = v213;
          *v182 = v207;
          *(v119 + 8) = v120;
          v121 = v198;
          *(v119 + 16) = v200;
          *(v119 + 24) = v121;
          v122 = v196;
          *(v119 + 32) = v197;
          *(v119 + 40) = v122;
          v123 = v194;
          *(v119 + 48) = v195;
          *(v119 + 56) = v123;
          v124 = v192;
          *(v119 + 64) = v193;
          *(v119 + 72) = v124;
          *(v119 + 80) = v70;
          *(v119 + 88) = v191;
          *(v119 + 96) = v102;
          *(v119 + 104) = v105;
          *(v119 + 112) = v106;
          v125 = v188;
          sub_26639F090(v199, v119 + *(v188 + 48));
          *(v119 + *(v125 + 52)) = v113;
          v126 = (v119 + *(v125 + 56));
          *v126 = v116;
          v126[1] = v118;
          sub_2663810DC(v119, v87);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v208 = sub_266384F78(0, v208[2] + 1, 1, v208);
          }

          v127 = v205;
          v128 = v184;
          v42 = v190;
          v130 = v208[2];
          v129 = v208[3];
          if (v130 >= v129 >> 1)
          {
            v208 = sub_266384F78(v129 > 1, v130 + 1, 1, v208);
          }

          v131 = v208;
          v208[2] = v130 + 1;
          sub_266381078(v87, v131 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v130);
          v132 = v181;
          v209(v181, v211, v42);
          sub_2663810DC(v119, v128);
          v33 = v132;
          a2 = sub_2664DFE18();
          a1 = sub_2664E06B8();
          if (os_log_type_enabled(a2, a1))
          {
            v33 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v217 = v133;
            LODWORD(v33->isa) = v178;
            sub_2663810DC(v128, v180);
            v134 = sub_2664E0318();
            v135 = v128;
            v136 = v134;
            v137 = v119;
            v139 = v138;
            sub_266381140(v135);
            v140 = sub_2662A320C(v136, v139, &v217);

            *(&v33->isa + 4) = v140;
            _os_log_impl(&dword_26629C000, a2, a1, "SpotlightSearchProvider#matches SpotlightSearchProvider added item %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v133);
            v141 = v133;
            v42 = v190;
            MEMORY[0x266784AD0](v141, -1, -1);
            MEMORY[0x266784AD0](v33, -1, -1);

            v18 = v127;
            v212(v132, v42);
            v142 = v137;
          }

          else
          {

            sub_266381140(v128);
            v18 = v127;
            v212(v132, v42);
            v142 = v119;
          }

          sub_266381140(v142);
          v22 = v204;
          v31 = v214;
          v54 = v202;
          v17 = v216;
          goto LABEL_15;
        }

        v31 = v214;
      }

      v74 = [v17 contentTypeTree];
      if (v74)
      {
        break;
      }

LABEL_82:
      v209(v31, v211, v42);
      v143 = v42;
      v144 = v17;

      v33 = v31;
      a2 = sub_2664DFE18();
      a1 = sub_2664E06D8();

      if (os_log_type_enabled(a2, a1))
      {
        v33 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v219 = v200;
        LODWORD(v33->isa) = v176;
        v146 = [v144 title];
        if (v146)
        {
          v147 = v146;
          v148 = sub_2664E02C8();
          v150 = v149;
        }

        else
        {
          v148 = 0;
          v150 = 0;
        }

        v217 = v148;
        v218 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v151 = sub_2664E0318();
        v153 = sub_2662A320C(v151, v152, &v219);

        *(&v33->isa + 4) = v153;
        WORD2(v33[1].isa) = 2080;
        v154 = sub_2662A320C(v207, v213, &v219);

        *(&v33[1].isa + 6) = v154;
        HIWORD(v33[2].isa) = 2080;
        v155 = [v144 mediaTypes];
        if (v155)
        {
          v156 = v155;
          v157 = sub_2664E04A8();
        }

        else
        {
          v157 = 0;
        }

        v217 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
        v158 = sub_2664E0318();
        v160 = sub_2662A320C(v158, v159, &v219);

        v33[3].isa = v160;
        LOWORD(v33[4].isa) = 2112;
        v161 = v177;
        *(&v33[4].isa + 2) = v177;
        *v145 = v161;
        WORD1(v33[5].isa) = 2080;
        v162 = v161;
        v163 = [v144 contentTypeTree];
        if (v163)
        {
          v164 = v163;
          v165 = sub_2664E04A8();
        }

        else
        {
          v165 = 0;
        }

        v17 = v216;
        v217 = v165;
        v166 = sub_2664E0318();
        v168 = sub_2662A320C(v166, v167, &v219);

        *(&v33[5].isa + 4) = v168;
        _os_log_impl(&dword_26629C000, a2, a1, "SpotlightSearchProvider#matches Spotlight result: %s, identifier: %s has missing or non-song/playlist mediaTypes: %s %@ contentTypeTree: %s", v33, 0x34u);
        sub_2662E4324(v145);
        MEMORY[0x266784AD0](v145, -1, -1);
        a1 = v200;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](a1, -1, -1);
        MEMORY[0x266784AD0](v33, -1, -1);

        v42 = v190;
        v18 = v205;
        v212(v31, v190);
        v22 = v204;
      }

      else
      {

        v212(v31, v143);
        v17 = v216;
        v42 = v143;
      }

LABEL_15:
      if (v17 == v54)
      {

        v169 = v208;
        goto LABEL_96;
      }
    }

    v33 = v74;
    a2 = sub_2664E04A8();

    v198 = a2[2].isa;
    if (!v198)
    {
LABEL_81:

      v22 = v204;
      goto LABEL_82;
    }

    v22 = 0;
    v200 = &a2[4];
    while (v22 < a2[2].isa)
    {
      v75 = v42;
      v76 = (v200 + 16 * v22);
      v77 = *v76;
      a1 = v76[1];
      v33 = qword_280071BD8;

      if (v33 != -1)
      {
        swift_once();
      }

      v78 = qword_28007CCD8;
      if (*(qword_28007CCD8 + 16))
      {
        v79 = *(qword_28007CCD8 + 40);
        sub_2664E0E68();
        sub_2664E0368();
        v80 = sub_2664E0EB8();
        v33 = (v78 + 56);
        v81 = -1 << *(v78 + 32);
        v82 = v80 & ~v81;
        if ((*(v78 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
        {
          v83 = ~v81;
          while (1)
          {
            v84 = (*(v78 + 48) + 16 * v82);
            v85 = *v84 == v77 && v84[1] == a1;
            if (v85 || (sub_2664E0D88() & 1) != 0)
            {
              break;
            }

            v82 = (v82 + 1) & v83;
            if (((*(&v33->isa + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v70 = 1;
          goto LABEL_46;
        }
      }

LABEL_31:
      v22 = (v22 + 1);

      v42 = v75;
      v18 = v205;
      v31 = v214;
      v54 = v202;
      if (v22 == v198)
      {
        goto LABEL_81;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  v169 = MEMORY[0x277D84F90];
LABEL_96:
  v209(v22, v211, v42);

  v170 = sub_2664DFE18();
  v171 = sub_2664E06E8();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 134349056;
    *(v172 + 4) = v169[2];

    _os_log_impl(&dword_26629C000, v170, v171, "SpotlightSearchProvider#matches SpotlightSearchProvider found %{public}ld", v172, 0xCu);
    MEMORY[0x266784AD0](v172, -1, -1);

    v212(v22, v42);
  }

  else
  {

    v212(v22, v42);
  }

  v175(v169);
}

uint64_t sub_2663D1110(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "SpotlightSearchProvider#matches ensuring query is cancelled...", v14, 2u);
    v16 = v15;
    a1 = v22;
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = v3[1];
  v17(v9, v2);
  [a1 cancel];
  v11(v7, v10, v2);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "SpotlightSearchProvider#matches cancelled query", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  return (v17)(v7, v2);
}

void (*sub_2663D13C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266783B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2663D1440;
  }

  __break(1u);
  return result;
}

uint64_t sub_2663D1464(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v14[0] = *a1;
  sub_2662D2EBC();
  sub_2664E09A8();
  sub_2664E0998();

  sub_2664E0998();

  sub_2664E0998();

  v4 = sub_2664E0998();
  v6 = v5;

  strcpy(v14, "kMDItemGenre=");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x2667833B0](v4, v6);

  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v7 = v14[0];
  v8 = v14[1];
  v9 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2663846F4(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2663846F4((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 16 * v12;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  return result;
}

uint64_t sub_2663D1704(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_2663D1464(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_2663D1794(unint64_t a1, char a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 == 5)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v28, v4);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "SpotlightSearchProvider#contentType only searching for playlists (from media type)", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2664E34E0;
    v33 = *MEMORY[0x277CC2138];
    *(v32 + 32) = sub_2664E02C8();
    *(v32 + 40) = v34;
    v35 = *MEMORY[0x277CC20E0];
    v36 = sub_2664E02C8();
    result = v32;
    *(v32 + 48) = v36;
    *(v32 + 56) = v37;
  }

  else
  {
    v38 = vdupq_n_s64(a1);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2877E2E18, v38), vceqq_s64(unk_2877E2E28, v38)))) & 1) == 0 && qword_2877E2E38 != a1)
    {
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2664EA920;
      v13 = *MEMORY[0x277CC2138];
      *(v12 + 32) = sub_2664E02C8();
      *(v12 + 40) = v14;
      v15 = *MEMORY[0x277CC2018];
      *(v12 + 48) = sub_2664E02C8();
      *(v12 + 56) = v16;
      v17 = *MEMORY[0x277CC20F8];
      *(v12 + 64) = sub_2664E02C8();
      *(v12 + 72) = v18;
      v19 = *MEMORY[0x277CC2010];
      *(v12 + 80) = sub_2664E02C8();
      *(v12 + 88) = v20;
      *(v12 + 96) = sub_2664E02C8();
      *(v12 + 104) = v21;
      v22 = *MEMORY[0x277CC20E0];
      *(v12 + 112) = sub_2664E02C8();
      *(v12 + 120) = v23;
      v24 = *MEMORY[0x277CC2020];
      v25 = sub_2664E02C8();
      result = v12;
      *(v12 + 128) = v25;
      *(v12 + 136) = v27;
      *(v12 + 144) = 0xD00000000000001ALL;
      *(v12 + 152) = 0x80000002664F29E0;
      return result;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v39, v4);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "SpotlightSearchProvider#contentType only searching for podcasts (from media type)", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return &unk_2877E4178;
  }

  return result;
}

uint64_t sub_2663D1BFC()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664F77C0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800733C8 = v10;
  return result;
}

uint64_t sub_2663D1D94()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664F76E0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800733D0 = v10;
  return result;
}

uint64_t PlaybackService.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733D8, &qword_2664EA9C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EA990;
  *(v0 + 32) = type metadata accessor for PodcastPlaybackHandler();
  *(v0 + 40) = &off_2877E6360;
  *(v0 + 48) = type metadata accessor for PodcastCollectionPlaybackHandler();
  *(v0 + 56) = &off_2877E6360;
  *(v0 + 64) = type metadata accessor for PodcastStationPlaybackHandler();
  *(v0 + 72) = &off_2877E6360;
  *(v0 + 80) = type metadata accessor for RemoteRadioPlaybackHandler();
  *(v0 + 88) = &off_2877F2848;
  *(v0 + 96) = type metadata accessor for RemotePlaylistPlaybackHandler();
  *(v0 + 104) = &off_2877E81A0;
  *(v0 + 112) = type metadata accessor for RemoteAlbumPlaybackHandler();
  *(v0 + 120) = &off_2877EF730;
  *(v0 + 128) = type metadata accessor for RemoteSongPlaybackHandler();
  *(v0 + 136) = &off_2877F3540;
  *(v0 + 144) = type metadata accessor for LocalSongPlaybackHandler();
  *(v0 + 152) = &off_2877F09F0;
  *(v0 + 160) = type metadata accessor for LocalPlaylistPlaybackHandler();
  *(v0 + 168) = &off_2877E8DB8;
  *(v0 + 176) = type metadata accessor for LocalAlbumPlaybackhandler();
  *(v0 + 184) = &off_2877EF688;
  *(v0 + 192) = type metadata accessor for LocalGenreCollectionPlaybackHandler();
  *(v0 + 200) = &off_2877EC998;
  *(v0 + 208) = type metadata accessor for LocalArtistCollectionPlaybackHandler();
  *(v0 + 216) = &off_2877E9D00;
  *(v0 + 224) = type metadata accessor for SpotlightHandler();
  *(v0 + 232) = &off_2877EF950;
  *(v0 + 240) = type metadata accessor for WholeLibraryHandler();
  *(v0 + 248) = &off_2877EF950;
  *(v0 + 256) = &type metadata for CreateStationPlaybackHandler;
  *(v0 + 264) = &off_2877EED78;
  *(v0 + 272) = type metadata accessor for PodcastLibraryPlaybackHandler();
  *(v0 + 280) = &off_2877E6360;
  *(v0 + 288) = type metadata accessor for PodcastUuidPlaybackHandler();
  *(v0 + 296) = &off_2877E6360;
  type metadata accessor for PlaybackService();
  v1 = swift_allocObject();
  sub_2663D2160(v0, sub_2663D20E4, 0);
  return v1;
}

uint64_t sub_2663D20E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v5(a1, a2);
}

void *sub_2663D2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073408, &unk_2664EAA50);
  v7 = swift_allocObject();
  v7[2] = sub_26638648C(MEMORY[0x277D84F90]);
  v7[4] = 0xD000000000000020;
  v7[5] = 0x80000002664F77E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  v10[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v10[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v10[0] = v8;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v7[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000020, 0x80000002664F77E0, 1, v10);
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_2663D2298(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *))
{
  v61 = v4;
  v60 = *v4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = *(a2 + 16);
  v69[0] = *a2;
  v69[1] = v16;
  v70[0] = *(a2 + 32);
  *(v70 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v10 + 16);
  v56 = v17;
  v55 = v18;
  v18(v15, v17, v9);

  v19 = v10;
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();

  v22 = os_log_type_enabled(v20, v21);
  v62 = v19;
  if (v22)
  {
    v57 = a3;
    v58 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v64 = v24;
    *v23 = 136315650;
    v68 = *(a1 + 48);
    v25 = PlaybackItem.Scheme.rawValue.getter();
    v27 = sub_2662A320C(v25, v26, &v64);

    v28 = 0xE600000000000000;
    v29 = *(a1 + 49);
    v30 = 0x656369766564;
    *(v23 + 4) = v27;
    v31 = 0xEC00000079726172;
    v32 = 0x62696C656C6F6877;
    *(v23 + 12) = 2080;
    if (v29 != 6)
    {
      v32 = 0x6E776F6E6B6E75;
      v31 = 0xE700000000000000;
    }

    v33 = 0xE400000000000000;
    v34 = 1684630645;
    if (v29 != 4)
    {
      v34 = 0x6867696C746F7073;
      v33 = 0xE900000000000074;
    }

    if (v29 <= 5)
    {
      v32 = v34;
      v31 = v33;
    }

    v35 = 0xEA00000000006573;
    v36 = 0x72657669746C756DLL;
    if (v29 != 2)
    {
      v36 = 0x65726F7473;
      v35 = 0xE500000000000000;
    }

    if (v29)
    {
      v30 = 0x636E797369726973;
      v28 = 0xE800000000000000;
    }

    if (v29 > 1)
    {
      v30 = v36;
      v28 = v35;
    }

    if (v29 <= 3)
    {
      v37 = v30;
    }

    else
    {
      v37 = v32;
    }

    if (v29 <= 3)
    {
      v38 = v28;
    }

    else
    {
      v38 = v31;
    }

    v39 = sub_2662A320C(v37, v38, &v64);

    *(v23 + 14) = v39;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_2662A320C(*(a1 + 56), *(a1 + 64), &v64);
    _os_log_impl(&dword_26629C000, v20, v21, "PlaybackService#warm Request to warm playback for item with scheme:%s contentOrigin:%s identifier:%s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);

    v40 = *(v62 + 8);
    v40(v15, v9);
    a4 = v58;
    a3 = v57;
  }

  else
  {

    v40 = *(v19 + 8);
    v40(v15, v9);
  }

  swift_beginAccess();
  v41 = qword_280073F90;
  if (!qword_280073F90)
  {
    goto LABEL_29;
  }

  v42 = qword_280073F88;
  v43 = qword_280073F80;

  if (!sub_266457DC4(v43, &unk_2877E4AD8))
  {

LABEL_29:

    sub_2662D2A64(v69, &v64);
    return sub_2663D2CA0(a1, v61, a3, a4, a1, v69, v60);
  }

  v61 = v42;
  v44 = v59;
  v55(v59, v56, v9);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06D8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v58 = a4;
    v48 = v47;
    v49 = swift_slowAlloc();
    v64 = v49;
    *v48 = 136446210;
    v63 = v43;
    v50 = sub_2664E0318();
    v57 = a3;
    v52 = sub_2662A320C(v50, v51, &v64);
    a3 = v57;

    *(v48 + 4) = v52;
    _os_log_impl(&dword_26629C000, v45, v46, "PlaybackService#warm, terminating flow due to PFSQ terminal error: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    v53 = v59;
  }

  else
  {

    v53 = v44;
  }

  v40(v53, v9);
  v64 = v43;
  v65 = v61;
  v66 = v41;
  v67 = 1;
  a3(&v64);
  return sub_2662D2F30(v64, v65, v66, v67);
}

uint64_t sub_2663D2950(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), void (*a5)(__int128 *))
{
  v6 = v5;
  v35 = a5;
  v36 = a4;
  v10 = *v5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v39[0] = *a2;
  v39[1] = v16;
  v40[0] = *(a2 + 32);
  *(v40 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v17, v11);

  v18 = v12;
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();

  v34 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136446210;
    v37 = *a1;
    v38[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733E0, &qword_2664EA9C8);
    v23 = sub_2664E0318();
    v32 = v11;
    v25 = sub_2662A320C(v23, v24, v38);
    v31 = v15;
    v26 = v25;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_26629C000, v19, v34, "PlaybackService#play Request to play item: %{public}s", v21, 0xCu);
    v27 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    (*(v18 + 8))(v31, v32);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v28 = v35;

  sub_2662D2A64(v39, v38);

  return sub_2663D2CF8(a1, v6, v36, v28, a1, v39, a3, v10);
}

uint64_t sub_2663D2CA0(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2663D5624(a1, a2, a3, a4, a5, a6, a7);
  sub_2662D2B88(a6);
}

uint64_t sub_2663D2CF8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2663D7700(a1, a2, a3, a4, a5, a6, a7, a8);

  sub_2662D2B88(a6);
}

uint64_t sub_2663D2D5C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, char a5)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662A7224(a1, &v20, &qword_2800733E8, &qword_2664EAA28);
  if (*(&v21 + 1))
  {
    sub_2662A8618(&v20, v24);
    *&v20 = a2;
    sub_2662A5550(v24, &v20 + 8);
    v23 = a5;

    a3(&v20);
    sub_2662A9238(&v20, &qword_2800733F0, &qword_2664EAA30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_2662A9238(&v20, &qword_2800733E8, &qword_2664EAA28);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v15, v9);

    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v20 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_2662A320C(*(a2 + 32), *(a2 + 40), &v20);
      _os_log_impl(&dword_26629C000, v16, v17, "PlaybackService#resolve No handler for uri: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    a3(&v20);
    return sub_2662A9238(&v20, &qword_2800733F0, &qword_2664EAA30);
  }
}

uint64_t sub_2663D304C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2663D41E4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_2662D2B88(a9);
}

uint64_t sub_2663D30B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_2663D61FC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  sub_2662D2B88(a9);
}

uint64_t sub_2663D3124(void (*a1)(void), uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a5;
  v60 = a7;
  v61 = a2;
  v62 = a6;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = v15;
  v18 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v56 = *(v11 + 16);
  v56(v17, v18, v10);
  v19 = sub_2664DFE18();
  v20 = v11;
  v21 = sub_2664E06B8();
  if (os_log_type_enabled(v19, v21))
  {
    v54 = v18;
    v58 = v20;
    v55 = a1;
    v22 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v65[0] = v24;
    *v23 = 136315394;
    LOBYTE(v63) = a3;
    v25 = PlaybackItem.Scheme.rawValue.getter();
    v27 = sub_2662A320C(v25, v26, v65);

    *(v23 + 4) = v27;
    v28 = 0xE600000000000000;
    v29 = 0x656369766564;
    *(v23 + 12) = 2080;
    v30 = 0xEC00000079726172;
    v31 = 0x62696C656C6F6877;
    if (v22 != 6)
    {
      v31 = 0x6E776F6E6B6E75;
      v30 = 0xE700000000000000;
    }

    v32 = 0xE400000000000000;
    v33 = 1684630645;
    if (v22 != 4)
    {
      v33 = 0x6867696C746F7073;
      v32 = 0xE900000000000074;
    }

    if (v22 <= 5u)
    {
      v31 = v33;
      v30 = v32;
    }

    v34 = 0xEA00000000006573;
    v35 = 0x72657669746C756DLL;
    if (v22 != 2)
    {
      v35 = 0x65726F7473;
      v34 = 0xE500000000000000;
    }

    if (v22)
    {
      v29 = 0x636E797369726973;
      v28 = 0xE800000000000000;
    }

    if (v22 > 1u)
    {
      v29 = v35;
      v28 = v34;
    }

    if (v22 <= 3u)
    {
      v36 = v29;
    }

    else
    {
      v36 = v31;
    }

    if (v22 <= 3u)
    {
      v37 = v28;
    }

    else
    {
      v37 = v30;
    }

    v38 = sub_2662A320C(v36, v37, v65);

    *(v23 + 14) = v38;
    _os_log_impl(&dword_26629C000, v19, v21, "PlaybackService#playbackHandler Cache MISS for handler with scheme: %s and contentOrigin: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);

    v39 = v58;
    v40 = *(v58 + 8);
    v40(v17, v10);
    a1 = v55;
    v18 = v54;
  }

  else
  {

    v40 = *(v20 + 8);
    v40(v17, v10);
    v39 = v20;
  }

  v41 = v60;
  v42 = *(v59 + 40);
  (*(v59 + 32))(&v63, v62, v60);
  if (v64)
  {
    sub_2662A8618(&v63, v65);
    sub_2662A5550(v65, &v63);
    a1(&v63);
    sub_2662A9238(&v63, &qword_2800733E8, &qword_2664EAA28);
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  else
  {
    sub_2662A9238(&v63, &qword_2800733E8, &qword_2664EAA28);
    v44 = v57;
    v56(v57, v18, v10);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06D8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58 = v39;
      v49 = v48;
      *&v63 = v48;
      *v47 = 136315138;
      *&v65[0] = v62;
      *(&v65[0] + 1) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
      v50 = sub_2664E0318();
      v52 = a1;
      v53 = sub_2662A320C(v50, v51, &v63);

      *(v47 + 4) = v53;
      a1 = v52;
      _os_log_impl(&dword_26629C000, v45, v46, "PlaybackService#playback HandlerReceived nil hydrating handler for type: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v40(v44, v10);
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    a1(v65);
    return sub_2662A9238(v65, &qword_2800733E8, &qword_2664EAA28);
  }
}

void *PlaybackService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t PlaybackService.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_2663D37C4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v10);
}

uint64_t sub_2663D38A0(uint64_t a1, void (*a2)(__int128 *), void (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v60 = a3;
  v59 = a2;
  v61 = sub_2664DFE08();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v10 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  sub_2662A7224(a1, &v62, &qword_2800733F0, &qword_2664EAA30);
  if (v62)
  {
    v71[0] = v62;
    v71[1] = v63;
    v72 = v64[0];
    v73 = v64[1];
    sub_2662A7224(v71, &v68, &qword_280073400, &qword_2664EAA48);

    v67 = v70;
    v57 = PlaybackItem.Scheme.rawValue.getter();
    v56 = v21;
    sub_2662A7224(v71, &v65, &qword_280073400, &qword_2664EAA48);
    v22 = *(v65 + 49);

    if (v22 > 3)
    {
      if (v22 > 5)
      {
        if (v22 == 6)
        {
          v54 = 0xEC00000079726172;
          v23 = 0x62696C656C6F6877;
        }

        else
        {
          v54 = 0xE700000000000000;
          v23 = 0x6E776F6E6B6E75;
        }
      }

      else if (v22 == 4)
      {
        v54 = 0xE400000000000000;
        v23 = 1684630645;
      }

      else
      {
        v54 = 0xE900000000000074;
        v23 = 0x6867696C746F7073;
      }
    }

    else if (v22 > 1)
    {
      if (v22 == 2)
      {
        v54 = 0xEA00000000006573;
        v23 = 0x72657669746C756DLL;
      }

      else
      {
        v54 = 0xE500000000000000;
        v23 = 0x65726F7473;
      }
    }

    else if (v22)
    {
      v54 = 0xE800000000000000;
      v23 = 0x636E797369726973;
    }

    else
    {
      v54 = 0xE600000000000000;
      v23 = 0x656369766564;
    }

    v53 = v23;
    v35 = v61;
    v55 = a5;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v36 = qword_280F91D48;
    sub_2664DFDE8();
    (*(v7 + 16))(v10, v12, v35);
    v37 = v35;
    v38 = (*(v7 + 80) + 33) & ~*(v7 + 80);
    v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = "playbackServiceWarm";
    *(v40 + 24) = 19;
    *(v40 + 32) = 2;
    (*(v7 + 32))(v40 + v38, v10, v37);
    v41 = (v40 + v39);
    v42 = v60;
    *v41 = v59;
    v41[1] = v42;

    sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2664E34E0;
    v44 = MEMORY[0x277D837D0];
    *(v43 + 56) = MEMORY[0x277D837D0];
    v45 = sub_2662C4094();
    v46 = v56;
    *(v43 + 32) = v57;
    *(v43 + 40) = v46;
    *(v43 + 96) = v44;
    *(v43 + 104) = v45;
    v47 = v53;
    *(v43 + 64) = v45;
    *(v43 + 72) = v47;
    *(v43 + 80) = v54;
    sub_2664DFDC8();

    v48 = swift_allocObject();
    *(v48 + 16) = sub_2663D7BEC;
    *(v48 + 24) = v40;
    v49 = v72;
    __swift_project_boxed_opaque_existential_1(v71 + 1, v72);
    v50 = *(v55 + 16);
    v62 = *v55;
    v63 = v50;
    v64[0] = *(v55 + 32);
    *(v64 + 15) = *(v55 + 47);
    v51 = qword_280071BE0;

    if (v51 != -1)
    {
      swift_once();
    }

    (*(*(&v49 + 1) + 32))(v58, &v62, qword_2800733C8, sub_2663D7BF0, v48, v49, *(&v49 + 1));

    (*(v7 + 8))(v12, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    return sub_2662A9238(v71, &qword_280073400, &qword_2664EAA48);
  }

  else
  {
    sub_2662A9238(&v62, &qword_2800733F0, &qword_2664EAA30);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v25 = v14[2];
    v25(v20, v24, v13);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "PlaybackService#warm  Error resolving items and handler during warmup", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v29 = v14[1];
    v29(v20, v13);
    v25(v18, v24, v13);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v62 = v33;
      *v32 = 134218498;
      *(v32 + 4) = 14;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 11;
      *(v32 + 22) = 2080;
      *(v32 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F7700, &v62);
      _os_log_impl(&dword_26629C000, v30, v31, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v29(v18, v13);
    v62 = xmmword_2664EA9A0;
    *&v63 = 0x80000002664F7700;
    BYTE8(v63) = 1;
    v59(&v62);
    return sub_2662D2F30(v62, *(&v62 + 1), v63, SBYTE8(v63));
  }
}

uint64_t sub_2663D41E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v153 = a4;
  *&v163 = a2;
  v164 = a1;
  v155 = sub_2664DFE38();
  v161 = *(v155 - 8);
  v15 = *(v161 + 8);
  v16 = MEMORY[0x28223BE20](v155);
  v18 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v135 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v132 - v22;
  MEMORY[0x28223BE20](v21);
  v160 = &v132 - v23;
  v24 = swift_allocObject();
  v137 = a6;
  *(v24 + 16) = a6;
  *(v24 + 24) = a7;
  *(v24 + 32) = a8;
  v25 = *(a9 + 16);
  *(v24 + 40) = *a9;
  *(v24 + 56) = v25;
  *(v24 + 72) = *(a9 + 32);
  *(v24 + 87) = *(a9 + 47);
  *(v24 + 96) = a10;
  v26 = v153;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = sub_2663D7ADC;
  *(v27 + 32) = v24;
  v138 = v27;
  v139 = a9;
  v136 = a5;
  *(v27 + 40) = a5;
  v28 = v161;
  v164 = *v164;
  v162 = *v163;
  v133 = a3;
  v29 = *(a3 + 16);
  v159 = *(v29 + 16);
  v152 = v24;
  v140 = a7;
  v141 = a8;
  if (v159)
  {
    v157 = v29 + 32;

    sub_2662D2A64(a9, v171);
    v150 = 0x80000002664F1840;
    v151 = 0x80000002664F1860;
    v148 = 0x80000002664F17E0;
    v149 = 0x80000002664F1820;
    v146 = 0x80000002664F17A0;
    v147 = 0x80000002664F17C0;
    v144 = 0x80000002664F1760;
    v145 = 0x80000002664F1780;
    v142 = 0x80000002664F1710;
    v143 = 0x80000002664F1740;
    v156 = (v28 + 16);
    v158 = (v28 + 8);

    v30 = 0;
    *&v31 = 136315650;
    v154 = v31;
    v32 = v155;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_139;
      }

      v33 = *(v157 + 16 * v30++);
      v34 = *(&v33 + 1);
      v35 = *(*(&v33 + 1) + 8);
      v163 = v33;
      v36 = v33;
      v35(v171, v33, *(&v33 + 1));
      v37 = 0xEB000000006F6964;
      v38 = 0x6172706D61732D78;
      switch(LOBYTE(v171[0]))
      {
        case 1:
          v38 = 0x6C70706D61732D78;
          v37 = 0xEE007473696C7961;
          break;
        case 2:
          v38 = 0xD000000000000016;
          v37 = v142;
          break;
        case 3:
          v38 = 0x656D706D61732D78;
          v37 = 0xED00006D65746964;
          break;
        case 4:
          v38 = 0xD000000000000014;
          v37 = v143;
          break;
        case 5:
          v38 = 0xD000000000000017;
          v37 = v144;
          break;
        case 6:
          v38 = 0xD000000000000018;
          v37 = v145;
          break;
        case 7:
          v38 = 0xD00000000000001FLL;
          v37 = v146;
          break;
        case 8:
          v38 = 0xD000000000000017;
          v37 = v147;
          break;
        case 9:
          v38 = 0xD000000000000016;
          v37 = v148;
          break;
        case 0xA:
          v38 = 0x2D616964656D2D78;
          v37 = 0xEF7972617262696CLL;
          break;
        case 0xB:
          v38 = 0x6574616572632D78;
          v37 = 0xEF6E6F6974617473;
          break;
        case 0xC:
          v38 = 0xD000000000000011;
          v37 = v149;
          break;
        case 0xD:
          v38 = 0xD00000000000001ALL;
          v37 = v150;
          break;
        case 0xE:
          v38 = 0xD00000000000001ALL;
          v37 = v151;
          break;
        case 0xF:
          v37 = 0xE700000000000000;
          v38 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v39 = 0x6172706D61732D78;
      v40 = 0xEB000000006F6964;
      switch(v164)
      {
        case 1uLL:
          v39 = 0x6C70706D61732D78;
          v40 = 0xEE007473696C7961;
          break;
        case 2uLL:
          v39 = 0xD000000000000016;
          v40 = v142;
          break;
        case 3uLL:
          v39 = 0x656D706D61732D78;
          v40 = 0xED00006D65746964;
          break;
        case 4uLL:
          v39 = 0xD000000000000014;
          v40 = v143;
          break;
        case 5uLL:
          v39 = 0xD000000000000017;
          v40 = v144;
          break;
        case 6uLL:
          v39 = 0xD000000000000018;
          v40 = v145;
          break;
        case 7uLL:
          v39 = 0xD00000000000001FLL;
          v40 = v146;
          break;
        case 8uLL:
          v39 = 0xD000000000000017;
          v40 = v147;
          break;
        case 9uLL:
          v39 = 0xD000000000000016;
          v40 = v148;
          break;
        case 0xAuLL:
          v39 = 0x2D616964656D2D78;
          v40 = 0xEF7972617262696CLL;
          break;
        case 0xBuLL:
          v39 = 0x6574616572632D78;
          v40 = 0xEF6E6F6974617473;
          break;
        case 0xCuLL:
          v39 = 0xD000000000000011;
          v40 = v149;
          break;
        case 0xDuLL:
          v39 = 0xD00000000000001ALL;
          v40 = v150;
          break;
        case 0xEuLL:
          v39 = 0xD00000000000001ALL;
          v40 = v151;
          break;
        case 0xFuLL:
          v40 = 0xE700000000000000;
          v39 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v41 = v29;
      if (v38 == v39 && v37 == v40)
      {
      }

      else
      {
        v42 = sub_2664E0D88();

        if ((v42 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v43 = (*(v34 + 16))(v36, v34);
      v44 = sub_266457B0C(v162, v43);

      if (v44)
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v100 = __swift_project_value_buffer(v32, qword_280F914F0);
        swift_beginAccess();
        v101 = v135;
        (*v156)(v135, v100, v32);
        v102 = v32;
        v103 = sub_2664DFE18();
        v104 = sub_2664E06B8();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *&v169[0] = v106;
          *v105 = 136446978;
          if (qword_280071B10 != -1)
          {
            swift_once();
          }

          *(v105 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v169);
          *(v105 + 12) = 2080;
          LOBYTE(v165) = v164;
          v107 = PlaybackItem.Scheme.rawValue.getter();
          v109 = sub_2662A320C(v107, v108, v169);

          *(v105 + 14) = v109;
          *(v105 + 22) = 2080;
          v110 = 0xE600000000000000;
          v111 = 0xE700000000000000;
          v112 = 0x62696C656C6F6877;
          if (v162 == 6)
          {
            v111 = 0xEC00000079726172;
          }

          else
          {
            v112 = 0x6E776F6E6B6E75;
          }

          v113 = 0xE400000000000000;
          v114 = 0x6867696C746F7073;
          if (v162 == 4)
          {
            v114 = 1684630645;
          }

          else
          {
            v113 = 0xE900000000000074;
          }

          if (v162 <= 5)
          {
            v112 = v114;
            v111 = v113;
          }

          v115 = 0xE500000000000000;
          v116 = 0x72657669746C756DLL;
          if (v162 == 2)
          {
            v115 = 0xEA00000000006573;
          }

          else
          {
            v116 = 0x65726F7473;
          }

          v117 = 0x636E797369726973;
          if (v162)
          {
            v110 = 0xE800000000000000;
          }

          else
          {
            v117 = 0x656369766564;
          }

          if (v162 > 1)
          {
            v110 = v115;
          }

          else
          {
            v116 = v117;
          }

          if (v162 <= 3)
          {
            v118 = v116;
          }

          else
          {
            v118 = v112;
          }

          if (v162 <= 3)
          {
            v119 = v110;
          }

          else
          {
            v119 = v111;
          }

          v120 = sub_2662A320C(v118, v119, v169);

          *(v105 + 24) = v120;
          *(v105 + 32) = 2080;
          v165 = v163;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
          v121 = sub_2664E0318();
          v123 = sub_2662A320C(v121, v122, v169);

          *(v105 + 34) = v123;
          _os_log_impl(&dword_26629C000, v103, v104, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s found matching handler: %s", v105, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v106, -1, -1);
          MEMORY[0x266784AD0](v105, -1, -1);

          (*v158)(v135, v155);
        }

        else
        {

          (*v158)(v101, v102);
        }

        v125 = v133;
        v126 = *(v133 + 24);
        v127 = v164;
        LOBYTE(v165) = v164;
        v128 = v162;
        BYTE1(v165) = v162;
        v129 = swift_allocObject();
        *(v129 + 16) = v127;
        *(v129 + 17) = v128;
        *(v129 + 24) = v125;
        *(v129 + 32) = v163;
        v130 = *(*v126 + 160);

        v130(&v165, sub_2663D7BF4, v129, 0, 1, sub_2663D7BE8, v138);
      }

LABEL_43:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v32, qword_280F914F0);
      swift_beginAccess();
      (*v156)(v18, v45, v32);
      v46 = sub_2664DFE18();
      v47 = sub_2664E06C8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v165 = v49;
        *v48 = v154;
        LOBYTE(v171[0]) = v164;
        v50 = PlaybackItem.Scheme.rawValue.getter();
        v52 = sub_2662A320C(v50, v51, &v165);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        if (v162 > 3)
        {
          v55 = 0x62696C656C6F6877;
          if (v162 != 6)
          {
            v55 = 0x6E776F6E6B6E75;
          }

          v56 = 0xEC00000079726172;
          if (v162 != 6)
          {
            v56 = 0xE700000000000000;
          }

          v57 = 0x6867696C746F7073;
          if (v162 == 4)
          {
            v57 = 1684630645;
          }

          v58 = 0xE900000000000074;
          if (v162 == 4)
          {
            v58 = 0xE400000000000000;
          }

          if (v162 <= 5)
          {
            v54 = v57;
          }

          else
          {
            v54 = v55;
          }

          if (v162 <= 5)
          {
            v53 = v58;
          }

          else
          {
            v53 = v56;
          }
        }

        else if (v162 > 1)
        {
          if (v162 == 2)
          {
            v54 = 0x72657669746C756DLL;
          }

          else
          {
            v54 = 0x65726F7473;
          }

          if (v162 == 2)
          {
            v53 = 0xEA00000000006573;
          }

          else
          {
            v53 = 0xE500000000000000;
          }
        }

        else if (v162)
        {
          v53 = 0xE800000000000000;
          v54 = 0x636E797369726973;
        }

        else
        {
          v53 = 0xE600000000000000;
          v54 = 0x656369766564;
        }

        v59 = sub_2662A320C(v54, v53, &v165);

        *(v48 + 14) = v59;
        *(v48 + 22) = 2080;
        v171[0] = v163;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
        v60 = sub_2664E0318();
        v62 = sub_2662A320C(v60, v61, &v165);

        *(v48 + 24) = v62;
        _os_log_impl(&dword_26629C000, v46, v47, "PlaybackService#playbackHandler For scheme: %s and contentOrigin: %s handler did not match: %s", v48, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v49, -1, -1);
        MEMORY[0x266784AD0](v48, -1, -1);

        v32 = v155;
        (*v158)(v18, v155);
      }

      else
      {

        (*v158)(v18, v32);
      }

      v28 = v160;
      v29 = v41;
      v26 = v161;
      if (v159 == v30)
      {
        goto LABEL_73;
      }
    }
  }

  sub_2662D2A64(a9, v171);

  v32 = v155;
  v26 = v28;
  v28 = v160;
LABEL_73:
  if (qword_280F914E8 != -1)
  {
LABEL_139:
    swift_once();
  }

  v63 = v32;
  v64 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  *&v163 = *(v26 + 2);
  (v163)(v28, v64, v63);
  v65 = sub_2664DFE18();
  v66 = sub_2664E06B8();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v153;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v171[0] = v70;
    *v69 = 136446722;
    if (qword_280071B10 != -1)
    {
      swift_once();
    }

    *(v69 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v171);
    *(v69 + 12) = 2080;
    LOBYTE(v165) = v164;
    v71 = PlaybackItem.Scheme.rawValue.getter();
    v73 = sub_2662A320C(v71, v72, v171);

    v74 = 0xE600000000000000;
    v75 = v162;
    *(v69 + 14) = v73;
    v76 = 0x62696C656C6F6877;
    v77 = 0xEC00000079726172;
    *(v69 + 22) = 2080;
    if (v75 != 6)
    {
      v76 = 0x6E776F6E6B6E75;
      v77 = 0xE700000000000000;
    }

    v78 = 0xE400000000000000;
    v79 = 1684630645;
    if (v75 != 4)
    {
      v79 = 0x6867696C746F7073;
      v78 = 0xE900000000000074;
    }

    if (v75 <= 5)
    {
      v76 = v79;
      v77 = v78;
    }

    v80 = 0x72657669746C756DLL;
    v81 = 0xEA00000000006573;
    if (v75 != 2)
    {
      v80 = 0x65726F7473;
      v81 = 0xE500000000000000;
    }

    v82 = 0x636E797369726973;
    if (v75)
    {
      v74 = 0xE800000000000000;
    }

    else
    {
      v82 = 0x656369766564;
    }

    if (v75 > 1)
    {
      v74 = v81;
    }

    else
    {
      v80 = v82;
    }

    if (v75 <= 3)
    {
      v83 = v80;
    }

    else
    {
      v83 = v76;
    }

    if (v75 <= 3)
    {
      v84 = v74;
    }

    else
    {
      v84 = v77;
    }

    v85 = sub_2662A320C(v83, v84, v171);

    *(v69 + 24) = v85;
    _os_log_impl(&dword_26629C000, v65, v66, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s no matching handler found", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v70, -1, -1);
    MEMORY[0x266784AD0](v69, -1, -1);

    v86 = *(v161 + 1);
    v86(v160, v155);
    v68 = v153;
  }

  else
  {

    v86 = *(v26 + 1);
    v86(v28, v63);
  }

  v170 = 0;
  memset(v169, 0, sizeof(v169));
  sub_2662A7224(v169, &v165, &qword_2800733E8, &qword_2664EAA28);
  if (v166)
  {
    sub_2662A8618(&v165, v168);
    *&v165 = v68;
    sub_2662A5550(v168, &v165 + 8);
    v167 = v136;
    v87 = v140;

    v88 = v141;

    v89 = v139;
    sub_2662D2A64(v139, v171);

    sub_2663D38A0(&v165, v137, v87, v88, v89);
    sub_2662A9238(&v165, &qword_2800733F0, &qword_2664EAA30);
    __swift_destroy_boxed_opaque_existential_1Tm(v168);
    sub_2662D2B88(v89);
  }

  else
  {

    sub_2662D2A64(v139, v171);
    sub_2662A9238(&v165, &qword_2800733E8, &qword_2664EAA28);
    v90 = v134;
    v91 = v64;
    v92 = v155;
    (v163)(v134, v91, v155);

    v93 = sub_2664DFE18();
    v94 = sub_2664E06D8();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = v92;
      v97 = swift_slowAlloc();
      *&v171[0] = v97;
      *v95 = 136446210;
      *(v95 + 4) = sub_2662A320C(*(v68 + 4), *(v68 + 5), v171);
      _os_log_impl(&dword_26629C000, v93, v94, "PlaybackService#resolve No handler for uri: %{public}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x266784AD0](v97, -1, -1);
      MEMORY[0x266784AD0](v95, -1, -1);

      v98 = v90;
      v99 = v96;
    }

    else
    {

      v98 = v90;
      v99 = v92;
    }

    v86(v98, v99);
    v172 = 0;
    memset(v171, 0, sizeof(v171));
    v124 = v139;
    sub_2663D38A0(v171, v137, v140, v141, v139);
    sub_2662A9238(v171, &qword_2800733F0, &qword_2664EAA30);
    sub_2662D2B88(v124);
  }

  sub_2662A9238(v169, &qword_2800733E8, &qword_2664EAA28);
}

uint64_t sub_2663D5624(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a1 + 48);
  LODWORD(v17) = *(a1 + 49);

  sub_2662D2A64(a6, v49);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v18, v12);
  v19 = v12;
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();
  v43 = v16;
  v22 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v41 = a3;
    v40 = v17;
    v17 = v23;
    v24 = swift_slowAlloc();
    v42 = a6;
    v38 = v24;
    v49[0] = v24;
    *v17 = 136315138;
    v25 = v44;
    v48 = v44;
    v39 = v19;
    v26 = PlaybackItem.Scheme.rawValue.getter();
    v28 = a1;
    v29 = a5;
    v30 = a4;
    v31 = sub_2662A320C(v26, v27, v49);
    v32 = v25;

    *(v17 + 4) = v31;
    a4 = v30;
    a5 = v29;
    a1 = v28;
    _os_log_impl(&dword_26629C000, v20, v22, "PlaybackService#resolve Looking for scheme: %s", v17, 0xCu);
    v33 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v34 = v33;
    a6 = v42;
    MEMORY[0x266784AD0](v34, -1, -1);
    v35 = v17;
    LOBYTE(v17) = v40;
    a3 = v41;
    MEMORY[0x266784AD0](v35, -1, -1);

    (*(v13 + 8))(v43, v39);
  }

  else
  {

    (*(v13 + 8))(v43, v19);
    v32 = v44;
  }

  v48 = v32;
  v47 = v17;

  sub_2662D2A64(a6, v49);

  sub_2663D304C(&v48, &v47, v46, a1, v32, a3, a4, a5, a6, v45);

  return sub_2662D2B88(a6);
}

uint64_t sub_2663D5958(uint64_t a1, void (*a2)(__int128 *), void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v66 = a2;
  v67 = a3;
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  sub_2662A7224(a1, &v68, &qword_2800733F0, &qword_2664EAA30);
  if (v68)
  {
    v72[0] = v68;
    v72[1] = v69;
    v73 = *v70;
    v74 = v70[16];
    v71 = *(a4 + 48);
    v62 = PlaybackItem.Scheme.rawValue.getter();
    v61 = v22;
    v23 = *(a4 + 49);
    if (v23 > 3)
    {
      v24 = v8;
      if (*(a4 + 49) > 5u)
      {
        v25 = v9;
        if (v23 == 6)
        {
          v60 = 0xEC00000079726172;
          v26 = 0x62696C656C6F6877;
        }

        else
        {
          v60 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v25 = v9;
        if (v23 == 4)
        {
          v60 = 0xE400000000000000;
          v26 = 1684630645;
        }

        else
        {
          v60 = 0xE900000000000074;
          v26 = 0x6867696C746F7073;
        }
      }
    }

    else
    {
      v24 = v8;
      if (*(a4 + 49) > 1u)
      {
        v25 = v9;
        if (v23 == 2)
        {
          v60 = 0xEA00000000006573;
          v26 = 0x72657669746C756DLL;
        }

        else
        {
          v60 = 0xE500000000000000;
          v26 = 0x65726F7473;
        }
      }

      else
      {
        v25 = v9;
        if (*(a4 + 49))
        {
          v60 = 0xE800000000000000;
          v26 = 0x636E797369726973;
        }

        else
        {
          v60 = 0xE600000000000000;
          v26 = 0x656369766564;
        }
      }
    }

    v59 = v26;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v38 = qword_280F91D48;
    sub_2664DFDE8();
    v39 = v63;
    (*(v25 + 16))(v63, v13, v24);
    v40 = (*(v25 + 80) + 33) & ~*(v25 + 80);
    v41 = (v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = "playbackServicePlay";
    *(v42 + 24) = 19;
    *(v42 + 32) = 2;
    v43 = *(v25 + 32);
    v63 = v24;
    v43(v42 + v40, v39, v24);
    v44 = (v42 + v41);
    v45 = v67;
    *v44 = v66;
    v44[1] = v45;

    sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2664E34E0;
    v47 = MEMORY[0x277D837D0];
    *(v46 + 56) = MEMORY[0x277D837D0];
    v48 = sub_2662C4094();
    v49 = v61;
    *(v46 + 32) = v62;
    *(v46 + 40) = v49;
    *(v46 + 96) = v47;
    *(v46 + 104) = v48;
    v50 = v59;
    *(v46 + 64) = v48;
    *(v46 + 72) = v50;
    *(v46 + 80) = v60;
    sub_2664DFDC8();

    v51 = swift_allocObject();
    *(v51 + 16) = sub_2663D7A88;
    *(v51 + 24) = v42;
    v52 = v73;
    __swift_project_boxed_opaque_existential_1(v72 + 1, v73);
    v53 = *&v72[0];
    v54 = *(v64 + 16);
    v68 = *v64;
    v69 = v54;
    *v70 = *(v64 + 32);
    *&v70[15] = *(v64 + 47);
    v55 = qword_280071BE8;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = qword_2800733D0;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_2663D7A8C;
    *(v57 + 24) = v51;
    (*(*(&v52 + 1) + 40))(v53, &v68, v65, v56, sub_2663D7A90, v57, v52, *(&v52 + 1));

    (*(v25 + 8))(v13, v63);
    return sub_2662A9238(v72, &qword_280073400, &qword_2664EAA48);
  }

  else
  {
    sub_2662A9238(&v68, &qword_2800733F0, &qword_2664EAA30);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v28 = v15[2];
    v28(v21, v27, v14);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "PlaybackService#playError resolving items and handler during play", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = v15[1];
    v32(v21, v14);
    v28(v19, v27, v14);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06B8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v68 = v36;
      *v35 = 134218498;
      *(v35 + 4) = 14;
      *(v35 + 12) = 2048;
      *(v35 + 14) = 9;
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F7620, &v68);
      _os_log_impl(&dword_26629C000, v33, v34, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v32(v19, v14);
    v68 = xmmword_2664EA9B0;
    *&v69 = 0x80000002664F7620;
    BYTE8(v69) = 1;
    v66(&v68);
    return sub_2662D2F30(v68, *(&v68 + 1), v69, SBYTE8(v69));
  }
}

uint64_t sub_2663D61FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v155 = a7;
  v151 = a3;
  *&v165 = a2;
  v166 = a1;
  v15 = a9;
  v164 = a11;
  v16 = sub_2664DFE38();
  v154 = *(v16 - 8);
  v17 = v154[8];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v134 = &v134 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v135 = (&v134 - v24);
  MEMORY[0x28223BE20](v23);
  v163 = (&v134 - v25);
  v26 = swift_allocObject();
  v137 = a6;
  *(v26 + 16) = a6;
  v27 = v155;
  *(v26 + 24) = v155;
  *(v26 + 32) = a8;
  v152 = a8;
  v28 = *(a9 + 16);
  *(v26 + 40) = *a9;
  *(v26 + 56) = v28;
  *(v26 + 72) = *(a9 + 32);
  *(v26 + 87) = *(a9 + 47);
  v29 = v164;
  *(v26 + 96) = a10;
  *(v26 + 104) = v29;
  v30 = swift_allocObject();
  v153 = a4;
  *(v30 + 16) = a4;
  *(v30 + 24) = sub_2663D7A60;
  *(v30 + 32) = v26;
  v138 = v30;
  v139 = v26;
  v136 = a5;
  *(v30 + 40) = a5;
  v31 = v154;
  v166 = *v166;
  LODWORD(v164) = *v165;
  v32 = *(v151 + 16);
  v33 = *(v32 + 16);
  v157 = v16;
  v161 = v33;
  v162 = a9;
  v140 = a10;
  if (!v33)
  {

    sub_2662D2A64(a9, v173);

    v27 = v163;
LABEL_86:
    if (qword_280F914E8 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_152;
  }

  v160 = v32;
  v158 = v32 + 32;

  sub_2662D2A64(a9, v173);
  v149 = 0x80000002664F1840;
  v150 = 0x80000002664F1860;
  v147 = 0x80000002664F17E0;
  v148 = 0x80000002664F1820;
  v145 = 0x80000002664F17A0;
  v146 = 0x80000002664F17C0;
  v143 = 0x80000002664F1760;
  v144 = 0x80000002664F1780;
  v141 = 0x80000002664F1710;
  v142 = 0x80000002664F1740;
  v34 = (v31 + 2);
  v159 = (v31 + 1);

  v35 = 0;
  *&v36 = 136315650;
  v156 = v36;
  while (2)
  {
    if (v35 >= *(v160 + 16))
    {
      __break(1u);
LABEL_152:
      swift_once();
LABEL_87:
      v66 = __swift_project_value_buffer(v16, qword_280F914F0);
      swift_beginAccess();
      v67 = v154;
      v68 = v154[2];
      *&v165 = v66;
      v68(v27, v66, v16);
      v69 = sub_2664DFE18();
      v70 = v16;
      v71 = sub_2664E06B8();
      v72 = os_log_type_enabled(v69, v71);
      v73 = v155;
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v173[0] = v75;
        *v74 = 136446722;
        if (qword_280071B10 != -1)
        {
          swift_once();
        }

        *(v74 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v173);
        *(v74 + 12) = 2080;
        LOBYTE(v167) = v166;
        v76 = PlaybackItem.Scheme.rawValue.getter();
        v78 = sub_2662A320C(v76, v77, v173);

        v79 = 0xE600000000000000;
        v80 = v164;
        *(v74 + 14) = v78;
        v81 = 0x62696C656C6F6877;
        v82 = 0xEC00000079726172;
        *(v74 + 22) = 2080;
        if (v80 != 6)
        {
          v81 = 0x6E776F6E6B6E75;
          v82 = 0xE700000000000000;
        }

        v83 = 0xE400000000000000;
        v84 = 1684630645;
        if (v80 != 4)
        {
          v84 = 0x6867696C746F7073;
          v83 = 0xE900000000000074;
        }

        if (v80 <= 5)
        {
          v81 = v84;
          v82 = v83;
        }

        v85 = 0x72657669746C756DLL;
        v86 = 0xEA00000000006573;
        if (v80 != 2)
        {
          v85 = 0x65726F7473;
          v86 = 0xE500000000000000;
        }

        v87 = 0x636E797369726973;
        if (v80)
        {
          v79 = 0xE800000000000000;
        }

        else
        {
          v87 = 0x656369766564;
        }

        if (v80 > 1)
        {
          v79 = v86;
        }

        else
        {
          v85 = v87;
        }

        if (v80 <= 3)
        {
          v88 = v85;
        }

        else
        {
          v88 = v81;
        }

        if (v80 <= 3)
        {
          v89 = v79;
        }

        else
        {
          v89 = v82;
        }

        v90 = sub_2662A320C(v88, v89, v173);

        *(v74 + 24) = v90;
        _os_log_impl(&dword_26629C000, v69, v71, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s no matching handler found", v74, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v75, -1, -1);
        MEMORY[0x266784AD0](v74, -1, -1);

        v91 = v154[1];
        v70 = v157;
        v91(v163, v157);
        v73 = v155;
        v15 = v162;
      }

      else
      {

        v91 = v67[1];
        v91(v27, v70);
      }

      v172 = 0;
      memset(v171, 0, sizeof(v171));
      sub_2662A7224(v171, &v167, &qword_2800733E8, &qword_2664EAA28);
      v92 = v152;
      if (v168)
      {
        sub_2662A8618(&v167, v170);
        *&v167 = v153;
        sub_2662A5550(v170, &v167 + 8);
        v169 = v136;

        sub_2662D2A64(v15, v173);
        v93 = v140;

        sub_2663D5958(&v167, v137, v73, v92, v15, v93);
        sub_2662A9238(&v167, &qword_2800733F0, &qword_2664EAA30);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);

        sub_2662D2B88(v15);
      }

      else
      {

        sub_2662D2A64(v15, v173);

        sub_2662A9238(&v167, &qword_2800733E8, &qword_2664EAA28);
        v94 = v135;
        v68(v135, v165, v70);
        v95 = v153;

        v96 = sub_2664DFE18();
        v97 = sub_2664E06D8();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v173[0] = v99;
          *v98 = 136446210;
          *(v98 + 4) = sub_2662A320C(*(v95 + 32), *(v95 + 40), v173);
          _os_log_impl(&dword_26629C000, v96, v97, "PlaybackService#resolve No handler for uri: %{public}s", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          MEMORY[0x266784AD0](v99, -1, -1);
          v100 = v98;
          v15 = v162;
          MEMORY[0x266784AD0](v100, -1, -1);

          v101 = v135;
        }

        else
        {

          v101 = v94;
        }

        v91(v101, v70);
        v174 = 0;
        memset(v173, 0, sizeof(v173));
        sub_2663D5958(v173, v137, v155, v92, v15, v140);
        sub_2662A9238(v173, &qword_2800733F0, &qword_2664EAA30);

        sub_2662D2B88(v15);
      }

      sub_2662A9238(v171, &qword_2800733E8, &qword_2664EAA28);
    }

    v37 = *(v158 + 16 * v35++);
    v38 = *(&v37 + 1);
    v39 = *(*(&v37 + 1) + 8);
    v165 = v37;
    v40 = v37;
    v39(v173, v37, *(&v37 + 1));
    v41 = 0xEB000000006F6964;
    v42 = 0x6172706D61732D78;
    switch(LOBYTE(v173[0]))
    {
      case 1:
        v42 = 0x6C70706D61732D78;
        v41 = 0xEE007473696C7961;
        break;
      case 2:
        v42 = 0xD000000000000016;
        v41 = v141;
        break;
      case 3:
        v42 = 0x656D706D61732D78;
        v41 = 0xED00006D65746964;
        break;
      case 4:
        v42 = 0xD000000000000014;
        v41 = v142;
        break;
      case 5:
        v42 = 0xD000000000000017;
        v41 = v143;
        break;
      case 6:
        v42 = 0xD000000000000018;
        v41 = v144;
        break;
      case 7:
        v42 = 0xD00000000000001FLL;
        v41 = v145;
        break;
      case 8:
        v42 = 0xD000000000000017;
        v41 = v146;
        break;
      case 9:
        v42 = 0xD000000000000016;
        v41 = v147;
        break;
      case 0xA:
        v42 = 0x2D616964656D2D78;
        v41 = 0xEF7972617262696CLL;
        break;
      case 0xB:
        v42 = 0x6574616572632D78;
        v41 = 0xEF6E6F6974617473;
        break;
      case 0xC:
        v42 = 0xD000000000000011;
        v41 = v148;
        break;
      case 0xD:
        v42 = 0xD00000000000001ALL;
        v41 = v149;
        break;
      case 0xE:
        v42 = 0xD00000000000001ALL;
        v41 = v150;
        break;
      case 0xF:
        v41 = 0xE700000000000000;
        v42 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v43 = 0x6172706D61732D78;
    v44 = 0xEB000000006F6964;
    switch(v166)
    {
      case 1uLL:
        v44 = 0xEE007473696C7961;
        if (v42 == 0x6C70706D61732D78)
        {
          goto LABEL_51;
        }

        goto LABEL_54;
      case 2uLL:
        v44 = v141;
        if (v42 != 0xD000000000000016)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 3uLL:
        v44 = 0xED00006D65746964;
        if (v42 != 0x656D706D61732D78)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 4uLL:
        v44 = v142;
        if (v42 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 5uLL:
        v44 = v143;
        if (v42 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 6uLL:
        v44 = v144;
        if (v42 != 0xD000000000000018)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 7uLL:
        v44 = v145;
        if (v42 != 0xD00000000000001FLL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 8uLL:
        v44 = v146;
        if (v42 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 9uLL:
        v44 = v147;
        if (v42 != 0xD000000000000016)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xAuLL:
        v43 = 0x2D616964656D2D78;
        v44 = 0xEF7972617262696CLL;
        goto LABEL_50;
      case 0xBuLL:
        v44 = 0xEF6E6F6974617473;
        if (v42 != 0x6574616572632D78)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xCuLL:
        v44 = v148;
        if (v42 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xDuLL:
        v44 = v149;
        if (v42 != 0xD00000000000001ALL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xEuLL:
        v44 = v150;
        if (v42 != 0xD00000000000001ALL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xFuLL:
        v44 = 0xE700000000000000;
        if (v42 != 0x6E776F6E6B6E75)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v42 != v43)
        {
          goto LABEL_54;
        }

LABEL_51:
        if (v41 != v44)
        {
LABEL_54:
          v45 = sub_2664E0D88();

          if (v45)
          {
            goto LABEL_55;
          }

LABEL_56:
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v48 = __swift_project_value_buffer(v16, qword_280F914F0);
          swift_beginAccess();
          (*v34)(v20, v48, v16);
          v49 = sub_2664DFE18();
          v50 = sub_2664E06C8();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *&v167 = v52;
            *v51 = v156;
            LOBYTE(v173[0]) = v166;
            v53 = PlaybackItem.Scheme.rawValue.getter();
            v55 = sub_2662A320C(v53, v54, &v167);

            *(v51 + 4) = v55;
            *(v51 + 12) = 2080;
            if (v164 > 3)
            {
              v58 = 0x62696C656C6F6877;
              if (v164 != 6)
              {
                v58 = 0x6E776F6E6B6E75;
              }

              v59 = 0xEC00000079726172;
              if (v164 != 6)
              {
                v59 = 0xE700000000000000;
              }

              v60 = 0x6867696C746F7073;
              if (v164 == 4)
              {
                v60 = 1684630645;
              }

              v61 = 0xE900000000000074;
              if (v164 == 4)
              {
                v61 = 0xE400000000000000;
              }

              if (v164 <= 5)
              {
                v57 = v60;
              }

              else
              {
                v57 = v58;
              }

              if (v164 <= 5)
              {
                v56 = v61;
              }

              else
              {
                v56 = v59;
              }
            }

            else if (v164 > 1)
            {
              if (v164 == 2)
              {
                v57 = 0x72657669746C756DLL;
              }

              else
              {
                v57 = 0x65726F7473;
              }

              if (v164 == 2)
              {
                v56 = 0xEA00000000006573;
              }

              else
              {
                v56 = 0xE500000000000000;
              }
            }

            else if (v164)
            {
              v56 = 0xE800000000000000;
              v57 = 0x636E797369726973;
            }

            else
            {
              v56 = 0xE600000000000000;
              v57 = 0x656369766564;
            }

            v62 = sub_2662A320C(v57, v56, &v167);

            *(v51 + 14) = v62;
            *(v51 + 22) = 2080;
            v173[0] = v165;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
            v63 = sub_2664E0318();
            v65 = sub_2662A320C(v63, v64, &v167);

            *(v51 + 24) = v65;
            _os_log_impl(&dword_26629C000, v49, v50, "PlaybackService#playbackHandler For scheme: %s and contentOrigin: %s handler did not match: %s", v51, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v52, -1, -1);
            MEMORY[0x266784AD0](v51, -1, -1);

            v16 = v157;
            (*v159)(v20, v157);
          }

          else
          {

            (*v159)(v20, v16);
          }

          v15 = v162;
          v27 = v163;
          if (v161 == v35)
          {
            goto LABEL_86;
          }

          continue;
        }

LABEL_55:
        v46 = (*(v38 + 16))(v40, v38);
        v47 = sub_266457B0C(v164, v46);

        if (!v47)
        {
          goto LABEL_56;
        }

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v102 = __swift_project_value_buffer(v16, qword_280F914F0);
        swift_beginAccess();
        v103 = v134;
        (*v34)(v134, v102, v16);
        v104 = sub_2664DFE18();
        v105 = sub_2664E06B8();
        v106 = os_log_type_enabled(v104, v105);
        v107 = v138;
        if (v106)
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v171[0] = v109;
          *v108 = 136446978;
          if (qword_280071B10 != -1)
          {
            swift_once();
          }

          *(v108 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v171);
          *(v108 + 12) = 2080;
          LOBYTE(v167) = v166;
          v110 = PlaybackItem.Scheme.rawValue.getter();
          v112 = sub_2662A320C(v110, v111, v171);

          *(v108 + 14) = v112;
          *(v108 + 22) = 2080;
          v113 = 0xE600000000000000;
          v114 = 0xE700000000000000;
          v115 = 0x62696C656C6F6877;
          if (v164 == 6)
          {
            v114 = 0xEC00000079726172;
          }

          else
          {
            v115 = 0x6E776F6E6B6E75;
          }

          v116 = 0xE400000000000000;
          v117 = 0x6867696C746F7073;
          if (v164 == 4)
          {
            v117 = 1684630645;
          }

          else
          {
            v116 = 0xE900000000000074;
          }

          if (v164 <= 5)
          {
            v115 = v117;
            v114 = v116;
          }

          v118 = 0xE500000000000000;
          v119 = 0x72657669746C756DLL;
          if (v164 == 2)
          {
            v118 = 0xEA00000000006573;
          }

          else
          {
            v119 = 0x65726F7473;
          }

          v120 = 0x636E797369726973;
          if (v164)
          {
            v113 = 0xE800000000000000;
          }

          else
          {
            v120 = 0x656369766564;
          }

          if (v164 > 1)
          {
            v113 = v118;
          }

          else
          {
            v119 = v120;
          }

          if (v164 <= 3)
          {
            v121 = v119;
          }

          else
          {
            v121 = v115;
          }

          if (v164 <= 3)
          {
            v122 = v113;
          }

          else
          {
            v122 = v114;
          }

          v123 = sub_2662A320C(v121, v122, v171);

          *(v108 + 24) = v123;
          *(v108 + 32) = 2080;
          v167 = v165;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
          v124 = sub_2664E0318();
          v126 = sub_2662A320C(v124, v125, v171);

          *(v108 + 34) = v126;
          _os_log_impl(&dword_26629C000, v104, v105, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s found matching handler: %s", v108, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v109, -1, -1);
          MEMORY[0x266784AD0](v108, -1, -1);

          (*v159)(v134, v157);
        }

        else
        {

          (*v159)(v103, v16);
        }

        v127 = v151;
        v128 = *(v151 + 24);
        v129 = v166;
        LOBYTE(v167) = v166;
        v130 = v164;
        BYTE1(v167) = v164;
        v131 = swift_allocObject();
        *(v131 + 16) = v129;
        *(v131 + 17) = v130;
        *(v131 + 24) = v127;
        *(v131 + 32) = v165;
        v132 = *(*v128 + 160);

        v132(&v167, sub_2663D7A84, v131, 0, 1, sub_2663D7A74, v107);
    }
  }
}

uint64_t sub_2663D7700(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a3;
  v52 = a8;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 48);
  v49 = *(a1 + 49);
  v50 = v19;

  sub_2662D2A64(a6, v55);
  v20 = qword_280F914E8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v21, v14);
  v48 = v14;
  v22 = v18;
  v23 = sub_2664DFE18();
  v24 = sub_2664E06B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = a2;
    v26 = v25;
    v43 = v25;
    v27 = swift_slowAlloc();
    v47 = a7;
    v44 = v27;
    v55[0] = v27;
    *v26 = 136315138;
    LODWORD(v26) = v50;
    v54 = v50;
    v45 = v22;
    v28 = PlaybackItem.Scheme.rawValue.getter();
    v30 = a1;
    v31 = a5;
    v32 = a4;
    v33 = a6;
    v34 = sub_2662A320C(v28, v29, v55);
    v35 = v26;

    v36 = v43;
    *(v43 + 4) = v34;
    a6 = v33;
    a4 = v32;
    a5 = v31;
    a1 = v30;
    v37 = v24;
    v38 = v36;
    _os_log_impl(&dword_26629C000, v23, v37, "PlaybackService#resolve Looking for scheme: %s", v36, 0xCu);
    v39 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v40 = v39;
    a7 = v47;
    MEMORY[0x266784AD0](v40, -1, -1);
    a2 = v46;
    MEMORY[0x266784AD0](v38, -1, -1);

    (*(v15 + 8))(v45, v48);
  }

  else
  {

    (*(v15 + 8))(v22, v48);
    v35 = v50;
  }

  v54 = v35;
  v53 = v49;

  sub_2662D2A64(a6, v55);

  sub_2663D30B0(&v54, &v53, a2, a1, v35, v51, a4, a5, a6, a7, v52);

  sub_2662D2B88(a6);
}

uint64_t sub_2663D7A90(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return v2(&v7);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2663D7B40(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663D37C4(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2663D7C08()
{
  v0 = sub_2664DF398();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF388();
  v5 = sub_2663D80F4(604800.0);
  result = (*(v1 + 8))(v4, v0);
  qword_280F90D48 = *&v5;
  return result;
}

void sub_2663D7CF0(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_2662A3E98(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_2664508BC(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_2662A3E98(v8, v7);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2664E0DD8();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_266453E30();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v8;
  v24[1] = v7;
  *(v23[7] + 8 * v11) = v9;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v23[2] = v26;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v27 = 1;
      while (v27 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v28 = *a3;

        v29 = sub_2662A3E98(v8, v7);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          sub_2664508BC(v33, 1);
          v34 = *a3;
          v29 = sub_2662A3E98(v8, v7);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v8;
        v37[1] = v7;
        *(v36[7] + 8 * v29) = v9;
        v38 = v36[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v27;
        v36[2] = v39;
        v6 += 3;
        if (v4 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

double sub_2663D806C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

double sub_2663D80F4(double a1)
{
  v2 = sub_2664DF3C8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  v8 = v3[13];
  v8(v6, *MEMORY[0x277D5FF88], v2);
  v9 = sub_2664DF3A8();
  v10 = v3[1];
  v10(v6, v2);
  *(inited + 32) = log(v9) - -60.0 / a1 * (-60.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF60], v2);
  v11 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 40) = log(v11) - -360.0 / a1 * (-360.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF80], v2);
  v12 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 48) = log(v12) - -2100.0 / a1 * (-2100.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF50], v2);
  v13 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 56) = log(v13) - -12600.0 / a1 * (-12600.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF70], v2);
  v14 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 64) = log(v14) - -54000.0 / a1 * (-54000.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF58], v2);
  v15 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 72) = log(v15) - -345600.0 / a1 * (-345600.0 / a1) * 0.5;
  v8(v6, *MEMORY[0x277D5FF68], v2);
  v16 = sub_2664DF3A8();
  v10(v6, v2);
  *(inited + 80) = log(v16) - -1512000.0 / a1 * (-1512000.0 / a1) * 0.5;
  v17 = sub_2663D806C(inited);
  swift_setDeallocating();
  return v17;
}

uint64_t sub_2663D84E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v35 = MEMORY[0x277D84F90];
  sub_2662FD0BC(0, v2, 0);
  v3 = v35;
  v6 = -1 << *(a1 + 32);
  v34 = a1 + 56;
  result = sub_2664E0A18();
  v8 = result;
  v9 = 0;
  v31 = v2;
  v32 = a2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v34 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_27;
    }

    v33 = *(a1 + 36);
    v13 = (*(a1 + 48) + 16 * v8);
    v14 = v13[1];
    if (*(a2 + 16))
    {
      v15 = *v13;
      v16 = v13[1];

      v17 = sub_2662A3E98(v15, v14);
      if (v18)
      {
        v19 = (*(a2 + 56) + 8 * v17);
        goto LABEL_14;
      }
    }

    else
    {
      v20 = v13[1];
    }

    v19 = &qword_280F90D48;
    if (qword_280F90D40 != -1)
    {
      swift_once();
      v19 = &qword_280F90D48;
    }

LABEL_14:
    v21 = *v19;

    v23 = *(v35 + 16);
    v22 = *(v35 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_2662FD0BC((v22 > 1), v23 + 1, 1);
    }

    *(v35 + 16) = v23 + 1;
    *(v35 + 8 * v23 + 32) = v21;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_28;
    }

    v24 = *(v34 + 8 * v12);
    if ((v24 & (1 << v8)) == 0)
    {
      goto LABEL_29;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_30;
    }

    v25 = v24 & (-2 << (v8 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v11 = v31;
      a2 = v32;
    }

    else
    {
      v26 = v12 << 6;
      v27 = v12 + 1;
      v11 = v31;
      v28 = (a1 + 64 + 8 * v12);
      a2 = v32;
      while (v27 < (v10 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_26634AE1C(v8, v33, 0);
          v10 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_26634AE1C(v8, v33, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v11)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2663D879C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2662FD0BC(0, v1, 0);
    v4 = v29;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2664E34E0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v29 + 16);
      v10 = *(v29 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_2662FD0BC((v10 > 1), v11 + 1, 1);
      }

      *(v29 + 16) = v12;
      *(v29 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_2662FD0BC(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        v27 = v25;
        sub_2662FD0BC((v26 > 1), v21 + 1, 1);
        v25 = v27;
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_2663D8A24(uint64_t a1, uint64_t a2)
{

  v4 = sub_2663D84E8(a2, a1);

  v5 = sub_2663D879C(v4);

  v6 = sub_2663D806C(v5);
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v6;
    v52 = MEMORY[0x277D84F90];
    sub_2662FD0BC(0, v7, 0);
    v10 = v52;
    v11 = *(v52 + 16);
    v12 = 32;
    do
    {
      v13 = *(v5 + v12);
      v52 = v10;
      v14 = *(v10 + 24);
      if (v11 >= v14 >> 1)
      {
        sub_2662FD0BC((v14 > 1), v11 + 1, 1);
        v10 = v52;
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v13 - v9;
      v12 += 8;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v52 = v8;
    sub_2662FD0BC(0, v15, 0);
    v16 = v8;
    v17 = *(v8 + 16);
    v18 = 32;
    do
    {
      v19 = exp(*(v10 + v18));
      v52 = v16;
      v20 = *(v16 + 24);
      if (v17 >= v20 >> 1)
      {
        v21 = v19;
        sub_2662FD0BC((v20 > 1), v17 + 1, 1);
        v19 = v21;
        v16 = v52;
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + 8 * v17 + 32) = v19;
      v18 += 8;
      ++v17;
      --v15;
    }

    while (v15);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v16 = MEMORY[0x277D84F90];
  }

  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2662FCFB4(0, v22, 0);
    v23 = v52;
    v24 = (a2 + 56);
    v25 = -1 << *(a2 + 32);
    v26 = sub_2664E0A18();
    v27 = 0;
    v48 = a2 + 56;
    v49 = v16 + 32;
    v46 = v22;
    v47 = v16;
    while (1)
    {
      v28 = 0;
      v29 = 1 << *(a2 + 32);
      v30 = (v29 + 63) >> 6;
      v31 = v24;
      while (1)
      {
        v33 = *v31++;
        v32 = v33;
        if (v33)
        {
          break;
        }

        v28 -= 64;
        if (!--v30)
        {
          v34 = 1 << *(a2 + 32);
          goto LABEL_22;
        }
      }

      v34 = __clz(__rbit64(v32)) - v28;
LABEL_22:
      if (v26 < v34)
      {
        break;
      }

      if (v26 >= v29)
      {
        goto LABEL_38;
      }

      if (v26 < 0)
      {
        goto LABEL_39;
      }

      if ((v24[v26 >> 6] & (1 << v26)) == 0)
      {
        goto LABEL_40;
      }

      if (v27 >= *(v16 + 16))
      {
        goto LABEL_41;
      }

      v51 = *(a2 + 36);
      v50 = v27 + 1;
      v35 = (*(a2 + 48) + 16 * v26);
      v36 = a2;
      v37 = *v35;
      v38 = v35[1];
      v39 = *(v49 + 8 * v27);
      v52 = v23;
      v41 = *(v23 + 16);
      v40 = *(v23 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_2662FCFB4((v40 > 1), v41 + 1, 1);
        v23 = v52;
      }

      *(v23 + 16) = v41 + 1;
      v42 = (v23 + 24 * v41);
      v42[4] = v37;
      v42[5] = v38;
      v42[6] = v39;
      if (v26 >= -(-1 << *(v36 + 32)))
      {
        goto LABEL_42;
      }

      v24 = v48;
      if ((*(v48 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_43;
      }

      a2 = v36;
      if (v51 != *(v36 + 36))
      {
        goto LABEL_44;
      }

      v26 = sub_2664E0A38();
      v27 = v50;
      v16 = v47;
      if (v50 == v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_33:
    if (*(v23 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v43 = sub_2664E0C98();
    }

    else
    {
      v43 = MEMORY[0x277D84F98];
    }

    v52 = v43;

    sub_2663D7CF0(v44, 1, &v52);

    return v52;
  }

  return result;
}

uint64_t sub_2663D8E90(uint64_t a1, double a2)
{
  v4 = sub_2664DF3C8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v5[13];
  v10(v8, *MEMORY[0x277D5FF78], v4);
  v11 = sub_2664DF3B8();
  v12 = v5[1];
  result = v12(v8, v4);
  if (v11 < v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664EAA60;
    v10(v8, *MEMORY[0x277D5FF88], v4);
    v15 = sub_2664DF3B8();
    result = v12(v8, v4);
    if (v15 >= v9)
    {
      __break(1u);
    }

    else
    {
      v16 = *(a1 + 32 + 8 * v15);
      v17 = a1 + 32;
      *(inited + 32) = log(v16) + -60.0 / a2 * (-60.0 / a2) * -0.5;
      v10(v8, *MEMORY[0x277D5FF60], v4);
      v18 = sub_2664DF3B8();
      result = v12(v8, v4);
      if (v18 < v9)
      {
        *(inited + 40) = log(*(v17 + 8 * v18)) + -360.0 / a2 * (-360.0 / a2) * -0.5;
        v10(v8, *MEMORY[0x277D5FF80], v4);
        v19 = sub_2664DF3B8();
        result = v12(v8, v4);
        if (v19 < v9)
        {
          *(inited + 48) = log(*(v17 + 8 * v19)) + -2100.0 / a2 * (-2100.0 / a2) * -0.5;
          v10(v8, *MEMORY[0x277D5FF50], v4);
          v20 = sub_2664DF3B8();
          result = v12(v8, v4);
          if (v20 < v9)
          {
            *(inited + 56) = log(*(v17 + 8 * v20)) + -12600.0 / a2 * (-12600.0 / a2) * -0.5;
            v10(v8, *MEMORY[0x277D5FF70], v4);
            v21 = sub_2664DF3B8();
            result = v12(v8, v4);
            if (v21 < v9)
            {
              *(inited + 64) = log(*(v17 + 8 * v21)) + -54000.0 / a2 * (-54000.0 / a2) * -0.5;
              v10(v8, *MEMORY[0x277D5FF58], v4);
              v22 = sub_2664DF3B8();
              result = v12(v8, v4);
              if (v22 < v9)
              {
                *(inited + 72) = log(*(v17 + 8 * v22)) + -345600.0 / a2 * (-345600.0 / a2) * -0.5;
                v10(v8, *MEMORY[0x277D5FF68], v4);
                v23 = sub_2664DF3B8();
                result = v12(v8, v4);
                if (v23 < v9)
                {
                  *(inited + 80) = log(*(v17 + 8 * v23)) + -1512000.0 / a2 * (-1512000.0 / a2) * -0.5;
                  sub_2663D806C(inited);
                  return swift_setDeallocating();
                }

LABEL_17:
                __break(1u);
                return result;
              }

LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2663D93A0()
{
  v0 = aIscontentfree[0];

  return v0;
}

void sub_2663D93D8()
{
  sub_2663D953C();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_2663D941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2663D953C();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2663D9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2663D953C();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_2663D94E8()
{
  result = qword_280F90908;
  if (!qword_280F90908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90908);
  }

  return result;
}

unint64_t sub_2663D953C()
{
  result = qword_280F90900;
  if (!qword_280F90900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90900);
  }

  return result;
}

uint64_t sub_2663D9590(void (*a1)(void *), uint64_t a2, void *a3)
{
  v51 = a2;
  v52 = sub_2664DEC48();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v46[-v10];
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v46[-v18];
  v20 = [a3 privatePlayMediaIntentData];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_22;
  }

  v22 = [v20 audioSearchResults];
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = v22;
  v50 = v19;
  sub_2663D9B50();
  v24 = sub_2664E04A8();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_21:

LABEL_22:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v42, v12);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "FreeMediItemSignal: No audioSearch ", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    *v9 = -1;
    v41 = v52;
    (*(v5 + 104))(v9, *MEMORY[0x277D60170], v52);
    a1(v9);
    v31 = v21;
    v11 = v9;
    goto LABEL_27;
  }

LABEL_5:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x266783B70](0, v24);
    goto LABEL_8;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);
LABEL_8:
    v27 = v26;
    v49 = a1;

    v28 = qword_280F914E8;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v30 = v50;
    (*(v13 + 16))();
    v31 = v29;
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v34 = 136315138;
      v47 = v33;
      v35 = INMediaItem.requiresSubscription.getter();
      v36 = (v35 & 1) == 0;
      if (v35)
      {
        v37 = 1702195828;
      }

      else
      {
        v37 = 0x65736C6166;
      }

      if (v36)
      {
        v38 = 0xE500000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      v39 = sub_2662A320C(v37, v38, &v53);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_26629C000, v32, v47, "FreeMediItemSignal: MediaItem reuires subscription : %s", v34, 0xCu);
      v40 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      (*(v13 + 8))(v50, v12);
    }

    else
    {

      (*(v13 + 8))(v30, v12);
    }

    v41 = v52;
    *v11 = (INMediaItem.requiresSubscription.getter() & 1) == 0;
    (*(v5 + 104))(v11, *MEMORY[0x277D60170], v41);
    v49(v11);

LABEL_27:
    return (*(v5 + 8))(v11, v41);
  }

  __break(1u);
  return result;
}

unint64_t sub_2663D9B50()
{
  result = qword_280F8F650;
  if (!qword_280F8F650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F650);
  }

  return result;
}

uint64_t sub_2663D9B9C()
{
  v0 = sub_2664DFE38();
  __swift_allocate_value_buffer(v0, qword_280F914F0);
  __swift_project_value_buffer(v0, qword_280F914F0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91D48;
  return sub_2664DFE48();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2664DFE38();
  v3 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2664DFE38();
  v3 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify())()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v0 = sub_2664DFE38();
  __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2663D9E70()
{
  v0 = sub_2664DFE38();
  __swift_allocate_value_buffer(v0, qword_28007CCE0);
  __swift_project_value_buffer(v0, qword_28007CCE0);
  return sub_2664DFE28();
}

uint64_t sub_2663D9EEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_2664D0458(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_2663D9F84(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));

    sub_2663D9EEC(v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2663DA080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DE438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = *v13;

  sub_26630F97C(0, 1, v16, sub_2663DBEA4, v15);
}

uint64_t sub_2663DA214(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v29 = sub_266385A94(MEMORY[0x277D84F90]);
  v28 = sub_266385A94(v11);
  sub_2663B95AC(a1, v27);
  sub_2663DAD20(a2, a1, &v28, &v29);
  sub_2663BC57C(a1);
  v12 = v28;
  v13 = v29;

  sub_2664DE428();
  sub_2664DE388();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  v16 = sub_2663DB3DC(v13, v12, v15);
  v18 = v17;
  v19 = v16;
  v21 = v20;
  v23 = v22;

  v27[3] = &type metadata for SupportedMediaSignal;
  v27[4] = &off_2877EEB20;
  v24 = swift_allocObject();
  v27[0] = v24;
  *(v24 + 2) = v18;
  v24[3] = v19;
  *(v24 + 4) = v21;
  *(v24 + 5) = v23;
  a3(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_2663DA414()
{
  v0 = sub_2662C3A68(&unk_2877E1750);
  result = swift_arrayDestroy();
  qword_280F91C70 = v0;
  return result;
}

uint64_t sub_2663DA460()
{
  if (qword_280F8FE38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663DA4CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v65 = a3;
  v66 = a4;
  v6 = sub_2664DFE38();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v62 = &v59 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v16 = *a1;
  v15 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v19 = a1[7];
  v63 = a1[6];
  v64 = v17;
  v67 = v19;
  v20 = *(a2 + 32);
  swift_bridgeObjectRetain_n();
  v68 = v16;
  if (sub_2663CD060(v16, v15, v20))
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v69 + 16))(v10, v21, v6);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v69;
      v26 = v24;
      v27 = swift_slowAlloc();
      v71 = v27;
      *v26 = 136446210;
      v28 = sub_2662A320C(v68, v15, &v71);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_26629C000, v22, v23, "SupportedMediaSignal#signal %{public}s in disallow list; removing from candidates", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);

      return (*(v25 + 8))(v10, v6);
    }

    goto LABEL_10;
  }

  v30 = *(a2 + 24);
  swift_bridgeObjectRetain_n();
  LOBYTE(v30) = sub_2663CD060(v68, v15, v30);

  v32 = v18;
  if (v30)
  {
    v72[0] = v18;
    sub_2662F9CB0(&unk_2877E12F0);
    v33 = sub_26639EB98(v72[0]);

    v22 = *(v33 + 16);
    if (v22)
    {
      v34 = sub_26640C820(*(v33 + 16), 0);
      v10 = sub_26640C9BC(v72, v34 + 4, v22, v33);
      sub_2662B793C();
      if (v10 != v22)
      {
        __break(1u);
LABEL_10:

        return (*(v69 + 8))(v10, v6);
      }
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v61 = v34;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v69 + 16))(v14, v35, v6);

    v60 = v6;

    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v72[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_2662A320C(v68, v15, v72);
      _os_log_impl(&dword_26629C000, v36, v37, "SupportedMediaSignal#signal applied INMediaCategoryVideo to %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v6 = v60;
    v31 = (*(v69 + 8))(v14, v60);
    v32 = v61;
  }

  v72[0] = 0xD000000000000014;
  v72[1] = 0x80000002664F0ED0;
  MEMORY[0x28223BE20](v31);
  *(&v59 - 2) = v72;
  v40 = v70;
  v41 = sub_2662AA720(sub_2662AA7CC, (&v59 - 4), v32);
  v70 = v40;
  if ((v41 & 1) != 0 && (*(a2 + 40) & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    v51 = v62;
    (*(v69 + 16))(v62, v50, v6);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06C8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v69;
      v56 = v54;
      v57 = v51;
      v58 = swift_slowAlloc();
      v73 = v58;
      *v56 = 136446210;
      *(v56 + 4) = sub_2662A320C(v68, v15, &v73);
      _os_log_impl(&dword_26629C000, v52, v53, "SupportedMediaSignal#signal video category prediction is disabled (for now)... removing %{public}s from candidates", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      return (*(v55 + 8))(v57, v6);
    }

    else
    {

      return (*(v69 + 8))(v51, v6);
    }
  }

  else
  {
    v72[0] = v67;

    sub_2662F9CB0(MEMORY[0x277D84F90]);
    v42 = v72[0];
    v43 = v65;
    v44 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = *v43;
    *v43 = 0x8000000000000000;
    v46 = v68;
    sub_26634F90C(v42, v68, v15, isUniquelyReferenced_nonNull_native);

    *v43 = v72[0];
    v47 = v66;
    v48 = *v66;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = *v47;
    *v47 = 0x8000000000000000;
    sub_26634F90C(v32, v46, v15, v49);

    *v47 = v72[0];
  }

  return result;
}

uint64_t sub_2663DAD20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 4)
    {
      v10 = i[1];
      v23[0] = *i;
      v23[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v23[2] = i[2];
      v23[3] = v11;
      v19 = v13;
      v20 = v12;
      v14 = i[3];
      v21 = i[2];
      v22 = v14;
      sub_2662C0AE0(v23, &v15);
      sub_2663DA4CC(&v19, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = v22;
      result = sub_2662C0B3C(&v15);
      if (!--v5)
      {
        return result;
      }
    }

    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    return sub_2662C0B3C(&v15);
  }

  return result;
}