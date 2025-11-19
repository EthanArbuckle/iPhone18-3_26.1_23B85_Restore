uint64_t sub_26649FE40(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  swift_beginAccess();
  qword_280073F80 = v13;
  qword_280073F88 = v14;
  qword_280073F90 = v15;

  if (!v15)
  {
    v41[0] = v13;
    v41[1] = v14;
    v41[2] = 0;
    v26 = v41;
    return a2(v26);
  }

  if (!sub_266457DC4(v13, &unk_2877E4AD8))
  {

    v27 = v36;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v27 + 16))(v10, v28, v6);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136446210;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &v38);
      _os_log_impl(&dword_26629C000, v29, v30, "MediaPlaybackProvider#prepareForSetQueue %{public}s IGNORING prepareForSetQueue response that's not an iTunesAccountError, a noNetwork error, a gdprNeededInGroup or a requiresPreflight error (likely does not impact request)", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v27 + 8))(v10, v6);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v26 = &v38;
    return a2(v26);
  }

  v16 = v36;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v12, v17, v6);

  v18 = v16;
  v19 = sub_2664DFE18();
  v20 = sub_2664E06D8();

  if (os_log_type_enabled(v19, v20))
  {
    v34[1] = a3;
    v35 = a2;
    v21 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    v38 = v34[0];
    *v21 = 136446466;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &v38);
    *(v21 + 12) = 2082;
    v37 = v13;
    v22 = PlaybackCode.rawValue.getter();
    v24 = sub_2662A320C(v22, v23, &v38);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#prepareForSetQueue %{public}s ACCEPTING prepareForSetQueue error code: %{public}s", v21, 0x16u);
    v25 = v34[0];
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    (*(v36 + 8))(v12, v6);
    a2 = v35;
  }

  else
  {

    (*(v18 + 8))(v12, v6);
  }

  v38 = v13;
  v39 = v14;
  v40 = v15;
  a2(&v38);
}

void sub_2664A0358(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!MRAVEndpointGetLocalEndpoint())
  {
    __break(1u);
    return;
  }

  v31 = v8;
  v32 = a4;
  v33 = a3;
  v13 = MRAVEndpointCopyUniqueIdentifier();
  v14 = v13;
  if (!a1)
  {
    v18 = 0;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  v15 = [a2 outputDeviceUIDs];
  v16 = sub_2664E04A8();

  v34 = sub_2664E02C8();
  v35 = v17;
  MEMORY[0x28223BE20](v34);
  *(&v30 - 2) = &v34;
  v18 = sub_2662AA720(sub_2663A6860, (&v30 - 4), v16);

  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_4:
  v19 = [a2 property descriptor for SiriAudioSelfLogger.MWTMusicMetadata.isPrimaryUser];
  v20 = sub_2664E04A8();

  v34 = sub_2664E02C8();
  v35 = v21;
  MEMORY[0x28223BE20](v34);
  *(&v30 - 2) = &v34;
  v22 = sub_2662AA720(sub_2662AA7CC, (&v30 - 4), v20);

LABEL_7:
  v23 = v31;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v24, v23);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v14;
    v28 = swift_slowAlloc();
    *v28 = 67109632;
    *(v28 + 4) = (v18 | v22) & 1;
    *(v28 + 8) = 1024;
    *(v28 + 10) = v18 & 1;
    *(v28 + 14) = 1024;
    *(v28 + 16) = v22 & 1;
    _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup:%{BOOL}d. pairingIDMatch:%{BOOL}d, localUIDMatch:%{BOOL}d", v28, 0x14u);
    v29 = v28;
    v14 = v27;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v9 + 8))(v12, v23);
  v33((v18 | v22) & 1);
}

uint64_t sub_2664A06F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a6;
  v50 = a4;
  v51 = a5;
  v48 = a3;
  v49 = a2;
  v46 = *v9;
  v47 = a7;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = a9;
  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = a8;
    v22 = v21;
    v54 = a1;
    v55 = v21;
    *v20 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
    v23 = sub_2664E0318();
    v25 = sub_2662A320C(v23, v24, &v55);
    v43 = a1;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v27 = v49;
    v54 = v49;
    v28 = sub_2664E0318();
    v30 = sub_2662A320C(v28, v29, &v55);

    *(v20 + 14) = v30;
    *(v20 + 22) = 1026;
    v31 = v48;
    *(v20 + 24) = v48;
    _os_log_impl(&dword_26629C000, v18, v19, "MediaPlaybackProvider#addToUpNext origin:%s queue:%{public}s position:%{public}d", v20, 0x1Cu);
    swift_arrayDestroy();
    v32 = v22;
    a8 = v44;
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    v33 = v12;
    v34 = v43;
    (*(v13 + 8))(v16, v33);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    v34 = a1;
    v27 = v49;
    v31 = v48;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_2662ED444(0xD000000000000037, 0x80000002664FAEF0, sub_2662EAAE8, 0);
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = 0xD000000000000021;
  v39[4] = 0x80000002664FAEC0;
  v39[5] = a8;
  v40 = v45;
  v39[6] = v45;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_2664B7410;
  *(v41 + 24) = v39;

  sub_2664AD2F4(v34, v52, v50, v51, v53, v47, a8, v40, v27, v31, v46);
}

void sub_2664A0B24(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, char a10)
{
  v42 = a8;
  v43 = a2;
  v44 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v41[-v21];
  v23 = *a1;
  if (*a1 >= 2uLL)
  {
    v34 = *(a1 + 8);
    v35 = v23;
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    if (qword_280071CA8 != -1)
    {
      swift_once();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = a6;
    *(v36 + 24) = v35;
    *(v36 + 32) = v23;
    *(v36 + 40) = v34;
    *(v36 + 48) = a4;
    *(v36 + 56) = a5;
    v37 = v43;
    v38 = v44;
    *(v36 + 64) = a7;
    *(v36 + 72) = v37;
    *(v36 + 80) = v38;
    *(v36 + 88) = v42;
    *(v36 + 92) = a9;
    *(v36 + 96) = a10 & 1;
    aBlock[4] = sub_2664AEB50;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_180;
    v39 = _Block_copy(aBlock);
    v40 = v35;
    sub_266465164(v23, v34);

    MRMediaRemoteGetSupportedCommandsForOrigin();
    _Block_release(v39);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v25 = v16[2];
    v25(v22, v24, v15);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#addToUpNext UserIdentity nil", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v29 = v16[1];
    v29(v22, v15);
    v25(v20, v24, v15);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v46 = v33;
      *v32 = 134218498;
      *(v32 + 4) = 19;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 21;
      *(v32 + 22) = 2080;
      *(v32 + 24) = sub_2662A320C(0x49726573556C694ELL, 0xEF797469746E6564, &v46);
      _os_log_impl(&dword_26629C000, v30, v31, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v29(v20, v15);
    v46 = xmmword_2664EF500;
    v47 = 0xEF797469746E6564;
    v43(&v46);
  }
}

uint64_t sub_2664A0FB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, unsigned int a11)
{
  v48 = a7;
  v39 = a4;
  v38 = a3;
  v41 = a1;
  v49 = sub_2664DFE38();
  v42 = *(v49 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v49);
  v40 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v20 = a5;
  v46 = a6;
  v21 = v48;
  v19[6] = a6;
  v19[7] = v21;
  v19[8] = a8;
  v19[9] = a9;
  v44 = a9;
  v19[10] = a10;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v43 = v22 + 16;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = sub_2664A4494;
  *(v24 + 32) = 0;
  v45 = a11;
  *(v24 + 40) = a11;
  *(v24 + 48) = v23;

  aBlock[4] = sub_2664AEC48;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664A4BD4;
  aBlock[3] = &block_descriptor_193;
  v25 = _Block_copy(aBlock);
  v48 = a8;
  swift_retain_n();
  v47 = a10;
  swift_retain_n();

  v26 = v38;
  sub_266465164(v39, v20);

  MRMediaRemoteCommandInfoEnumerateSupportedCommandsWithHandler();
  _Block_release(v25);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = __swift_project_value_buffer(v49, qword_280F914F0);
  swift_beginAccess();
  v29 = v42;
  v30 = v40;
  (*(v42 + 16))(v40, v28, v27);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109376;
    swift_beginAccess();
    *(v33 + 4) = *(v22 + 16);

    *(v33 + 8) = 1024;
    swift_beginAccess();
    *(v33 + 10) = *(v23 + 16);

    _os_log_impl(&dword_26629C000, v31, v32, "MRMediaRemoteCommandInsertIntoPlaybackQueue supportedCommand: %{BOOL}d supportsOnlyNext: %{BOOL}d", v33, 0xEu);
    v34 = v33;
    v27 = v49;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  else
  {
  }

  (*(v29 + 8))(v30, v27);
  swift_beginAccess();
  v35 = *(v22 + 16);
  swift_beginAccess();
  sub_2664B60DC(v35, *(v23 + 16), sub_2664AEC10, v19, v45, v46, v44, v47);
}

void sub_2664A14C4(int a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v110 = a8;
  v113 = a7;
  v112 = a6;
  v109 = a5;
  v114 = a4;
  *&v118 = a3;
  v111 = a1;
  v127 = *MEMORY[0x277D85DE8];
  v108 = sub_2664E0198();
  v107 = *(v108 - 8);
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2664E0188();
  v116 = *(v117 - 8);
  v13 = *(v116 + 64);
  v14 = MEMORY[0x28223BE20](v117);
  v106 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v102 - v16;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v102 - v23;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v25 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v104 = v18[2];
    v104(v24, v25, v17);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v27))
    {
      v103 = v22;
      v102 = v18;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &aBlock);
      *(v28 + 12) = 2082;
      *&v120[0] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v30 = sub_2664E0318();
      v32 = sub_2662A320C(v30, v31, &aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#addToUpNext %{public}s Sending add request to %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);

      v33 = v102[1];
      v33(v24, v17);
      v22 = v103;
    }

    else
    {

      v33 = v18[1];
      v33(v24, v17);
    }

    v34 = *MEMORY[0x277D27E18];
    if (!*MEMORY[0x277D27E18])
    {
      __break(1u);
    }

    v35 = objc_opt_self();
    *&v120[0] = 0;
    v36 = v34;
    v37 = [v35 archivedDataWithRootObject:v118 requiringSecureCoding:1 error:v120];
    v38 = *&v120[0];
    if (v37)
    {
      v39 = sub_2664DE2F8();
      v41 = v40;

      v123 = MEMORY[0x277CC9318];
      *&aBlock = v39;
      *(&aBlock + 1) = v41;
      sub_266318804(&aBlock, v120);
      v42 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v42;
      sub_26634F694(v120, v36, isUniquelyReferenced_nonNull_native);

      v44 = v126;
    }

    else
    {
      v45 = v38;

      v46 = sub_2664DE1A8();
      swift_willThrow();
      v104(v22, v25, v17);
      v47 = v46;
      v48 = sub_2664DFE18();
      v49 = sub_2664E06D8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v103 = v22;
        v51 = v50;
        v52 = swift_slowAlloc();
        *&aBlock = v52;
        *v51 = 136315138;
        swift_getErrorValue();
        v53 = sub_2664E0DE8();
        v55 = sub_2662A320C(v53, v54, &aBlock);
        *&v118 = 0;
        v56 = v55;

        *(v51 + 4) = v56;
        _os_log_impl(&dword_26629C000, v48, v49, "MediaPlaybackProvider#addToUpNext Error getting user identity data - %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x266784AD0](v52, -1, -1);
        MEMORY[0x266784AD0](v51, -1, -1);

        v57 = v103;
      }

      else
      {

        v57 = v22;
      }

      v33(v57, v17);
      v44 = MEMORY[0x277D84F98];
    }

    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v58 = qword_280F90B40;
    v59 = unk_280F90B48;
    v60 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v61 = *(v58 - 8);
    v62 = *(v61 + 64);
    MEMORY[0x28223BE20](v60);
    v64 = &v102 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v64);
    v65 = (*(v59 + 16))(v58, v59);
    v67 = v66;
    (*(v61 + 8))(v64, v58);
    if (!v67)
    {
      goto LABEL_21;
    }

    v68 = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      __break(1u);
      goto LABEL_41;
    }

    v69 = v68;
    v70 = sub_2664E02A8();
    v123 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&aBlock = v70;
    sub_266318804(&aBlock, v120);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v44;
    sub_26634F694(v120, v69, v71);

    v103 = v119;

    v104 = v67;
    v72 = sub_26648BD18(v65, v67);
    a2 = v73;
    v18 = sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540]);
    v22 = v105;
    v74 = v108;
    sub_2664E0178();
    sub_2663C50C4(v72, a2);
    sub_2664AB368(v72, a2);
    sub_266348774(v72, a2);
    v75 = v115;
    sub_2664E0168();
    sub_266348774(v72, a2);
    (*(v107 + 8))(v22, v74);
    (*(v116 + 16))(v106, v75, v117);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290]);
    sub_2664E0438();
    v76 = *(&aBlock + 1);
    v24 = aBlock;
    v77 = *(aBlock + 16);
    v78 = MEMORY[0x277D84F90];
    if (*(&aBlock + 1) == v77)
    {
      break;
    }

    v17 = aBlock + 32;
    v118 = xmmword_2664E36F0;
    v96 = *(&aBlock + 1);
    while ((v76 & 0x8000000000000000) == 0)
    {
      if (v96 >= *(v24 + 2))
      {
        goto LABEL_37;
      }

      v97 = *(v17 + v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v98 = swift_allocObject();
      *(v98 + 16) = v118;
      *(v98 + 56) = MEMORY[0x277D84B78];
      *(v98 + 64) = MEMORY[0x277D84BC0];
      *(v98 + 32) = v97;
      v18 = sub_2664E02E8();
      v22 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_2663846F4(0, *(v78 + 2) + 1, 1, v78);
      }

      a2 = *(v78 + 2);
      v100 = *(v78 + 3);
      if (a2 >= v100 >> 1)
      {
        v78 = sub_2663846F4((v100 > 1), a2 + 1, 1, v78);
      }

      ++v96;
      *(v78 + 2) = a2 + 1;
      v101 = &v78[16 * a2];
      *(v101 + 4) = v18;
      *(v101 + 5) = v22;
      if (v77 == v96)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_19:
  (*(v116 + 8))(v115, v117);

  *&aBlock = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
  v79 = sub_2664E0288();
  v81 = v80;

  if (!*MEMORY[0x277D27DF0])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v82 = *MEMORY[0x277D27DF0];

  v123 = MEMORY[0x277D837D0];
  *&aBlock = v79;
  *(&aBlock + 1) = v81;
  sub_266318804(&aBlock, v120);
  v83 = v103;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v83;
  sub_26634F694(v120, v82, v84);

  v44 = v119;
LABEL_21:
  if (v114 == 1 || !v109)
  {

    goto LABEL_26;
  }

  v85 = *MEMORY[0x277D27DA8];
  if (*MEMORY[0x277D27DA8])
  {
    v86 = v109;
    v87 = v85;

    v88 = [v86 BOOLValue];
    v123 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v88;
    sub_266318804(&aBlock, v120);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v44;
    sub_26634F694(v120, v87, v89);

LABEL_26:
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString);
    v90 = sub_2664E01A8();

    sub_2662C1744(0, &qword_280F8F5C0, 0x277D85C78);
    v91 = sub_2664E07C8();
    v92 = swift_allocObject();
    v93 = v112;
    v92[2] = v110;
    v92[3] = v93;
    v92[4] = a9;
    v92[5] = a10;
    v124 = sub_2664B6738;
    v125 = v92;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v122 = sub_2664A2C48;
    v123 = &block_descriptor_199;
    v94 = _Block_copy(&aBlock);

    MRMediaRemoteInsertSystemAppPlaybackQueueWithOptions();
    _Block_release(v94);

    v95 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_2664A2358(int a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v68 = a5;
  v69 = a4;
  v67 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v65 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v62 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v70 = v7[2];
  v70(v21, v22);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = a1;
    _os_log_impl(&dword_26629C000, v23, v24, "MediaPlaybackProvider#addToUpNext received MRError code: %u", v25, 8u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = v7[1];
  v26(v21, v6);
  if (a1 == 45)
  {
    v33 = v70;
    (v70)(v13, v22, v6);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "MediaPlaybackProvider#addToUpNext MRMediaRemoteError is cannotModifyQueueWithPlaybackTokenItems", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v26(v13, v6);
    sub_2664B5F24();
    v37 = 0x80000002664FAF90;
    v38 = v64;
    v33(v64, v22, v6);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v38;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v72 = v43;
      *v42 = 134218498;
      *(v42 + 4) = 19;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 47;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_2662A320C(0xD000000000000027, 0x80000002664FAF90, &v72);
      _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);

      v26(v41, v6);
    }

    else
    {

      v26(v38, v6);
    }

    v55 = v69;
    v56 = xmmword_2664EF510;
    goto LABEL_27;
  }

  if (a1)
  {
    v44 = v66;
    (v70)(v66, v22, v6);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06D8();
    if (os_log_type_enabled(v45, v46))
    {
      v64 = (v7 + 1);
      v47 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v72 = v63;
      *v47 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v47 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &v72);
      *(v47 + 12) = 2082;
      v71 = a1;
      type metadata accessor for MRMediaRemoteError(0);
      v48 = sub_2664E0318();
      v50 = sub_2662A320C(v48, v49, &v72);

      *(v47 + 14) = v50;
      _os_log_impl(&dword_26629C000, v45, v46, "MediaPlaybackProvider#addToUpNext %{public}s Error setting playback queue, error: %{public}s", v47, 0x16u);
      v51 = v63;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      v52 = v66;
      v53 = v6;
    }

    else
    {

      v52 = v44;
      v53 = v6;
    }

    v26(v52, v53);
    sub_2664B5F24();
    v37 = 0x80000002664FAF70;
    v57 = v65;
    (v70)(v65, v22, v6);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v72 = v61;
      *v60 = 134218498;
      *(v60 + 4) = 19;
      *(v60 + 12) = 2048;
      *(v60 + 14) = 4;
      *(v60 + 22) = 2080;
      *(v60 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FAF70, &v72);
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v60, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v26(v57, v6);
    v55 = v69;
    v56 = xmmword_2664EF520;
LABEL_27:
    v72 = v56;
    v73 = v37;
    v55(&v72);
  }

  v27 = v63;
  (v70)(v63, v22, v6);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v72 = v31;
    *v30 = 136446210;
    v32 = v69;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &v72);
    _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#addToUpNext %{public}s set playback queue", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    v26(v27, v6);
  }

  else
  {

    v26(v27, v6);
    v32 = v69;
  }

  v72 = 0uLL;
  v73 = 0;
  return v32(&v72);
}

uint64_t sub_2664A2C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2664A2C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v60 = a7;
  v61 = a5;
  v17 = *v9;
  v18 = sub_2664DFE38();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  if (a1)
  {
    v24 = a8;
    v25 = [objc_allocWithZone(MEMORY[0x277D27830]) init];
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = a9;
    *(v26 + 32) = v10;
    *(v26 + 40) = a2;
    *(v26 + 48) = a3;
    *(v26 + 56) = a4;
    *(v26 + 64) = v61;
    *(v26 + 72) = a6;
    *(v26 + 80) = v60;
    aBlock[4] = sub_2664AEAA0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664A3614;
    aBlock[3] = &block_descriptor_165;
    v27 = _Block_copy(aBlock);

    [v25 connectToEndpoint:v59 completion:v27];
    _Block_release(v27);
  }

  else
  {
    v53 = v21;
    v54 = v17;
    v55 = v10;
    v56 = a9;
    v57 = a4;
    v58 = a8;
    if (qword_280F914E8 != -1)
    {
      v51 = v20;
      swift_once();
      v20 = v51;
    }

    v59 = a6;
    v28 = v20;
    v29 = __swift_project_value_buffer(v20, qword_280F914F0);
    swift_beginAccess();
    v30 = v53;
    (*(v53 + 16))(v23, v29, v28);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = 0;
      v64 = v52;
      *v33 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v34 = sub_2664E0318();
      v36 = sub_2662A320C(v34, v35, &v64);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v63 = a2;
      v37 = sub_2664E0318();
      v39 = sub_2662A320C(v37, v38, &v64);

      *(v33 + 14) = v39;
      *(v33 + 22) = 1026;
      *(v33 + 24) = a3;
      _os_log_impl(&dword_26629C000, v31, v32, "MediaPlaybackProvider#addToUpNext origin:%s queue:%{public}s position:%{public}d", v33, 0x1Cu);
      v40 = v52;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v30 + 8))(v23, v28);
    v42 = v55;
    v41 = v56;
    v43 = v54;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = sub_2662ED444(0xD000000000000037, 0x80000002664FAEF0, sub_2662EAAE8, 0);
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = 0xD000000000000021;
    v49 = v58;
    v48[4] = 0x80000002664FAEC0;
    v48[5] = v49;
    v48[6] = v41;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_2664AEA9C;
    *(v50 + 24) = v48;

    sub_2664AD2F4(0, v42, v57, v61, v59, v60, v49, v41, a2, a3, v43);
  }
}

uint64_t sub_2664A31C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v54 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - v23;
  if (!a3)
  {
    return sub_2664A06F0(a2, a7, a8, a9, a10, a11, a12, a4, a5);
  }

  v52 = a5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v26 = *(v19 + 16);
  v26(v24, v25, v18);
  v27 = a3;
  v28 = sub_2664DFE18();
  v29 = v19;
  v30 = sub_2664E06D8();

  v31 = os_log_type_enabled(v28, v30);
  v53 = a4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v51 = v26;
    v33 = v32;
    v34 = swift_slowAlloc();
    v50 = v29;
    v35 = v34;
    v55 = a3;
    *&v56 = v34;
    *v33 = 136446210;
    v36 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v37 = sub_2664E0318();
    v39 = sub_2662A320C(v37, v38, &v56);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_26629C000, v28, v30, "Failed to connect to endpoint, error: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266784AD0](v35, -1, -1);
    v40 = v33;
    v26 = v51;
    MEMORY[0x266784AD0](v40, -1, -1);

    v41 = *(v50 + 8);
  }

  else
  {

    v41 = *(v29 + 8);
  }

  v41(v24, v18);
  v43 = v54;
  v26(v54, v25, v18);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06B8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = v43;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v56 = v48;
    *v47 = 134218498;
    *(v47 + 4) = 19;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 7;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FAF30, &v56);
    _os_log_impl(&dword_26629C000, v44, v45, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v47, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);

    v49 = v46;
  }

  else
  {

    v49 = v43;
  }

  v41(v49, v18);
  v56 = xmmword_2664EF530;
  v57 = 0x80000002664FAF30;
  v53(&v56);
}

void sub_2664A3614(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2664A369C(void *a1, unint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v18 = sub_2664E08F8();
  v60 = v18;
  v56 = &v60;
  v19 = sub_2662C5584(sub_2664AEA7C, v55, a2);

  if (v19)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v21 = v54;
    (*(v54 + 16))(v16, v20, v8);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "Create radio success", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v21 + 8))(v16, v8);
    v58 = 0uLL;
    v59 = 0;
    return a3(&v58);
  }

  else
  {
    v51 = a4;
    v52 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v27 = v54;
    v49 = *(v54 + 16);
    v50 = v26;
    v49(v14, v26, v8);
    v28 = a1;

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v31 = 136446466;
      if (a1)
      {
        swift_getErrorValue();
        v32 = sub_2664E0DE8();
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *&v58 = v32;
      *(&v58 + 1) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v35 = sub_2664E0318();
      v37 = sub_2662A320C(v35, v36, &v57);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      v38 = MEMORY[0x2667834D0](a2, v17);
      v40 = sub_2662A320C(v38, v39, &v57);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_26629C000, v29, v30, "Create radio failed. Error: %{public}s, statuses: %{public}s", v31, 0x16u);
      v41 = v48;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      v34 = *(v54 + 8);
      v34(v14, v8);
    }

    else
    {

      v34 = *(v27 + 8);
      v34(v14, v8);
    }

    v42 = v53;
    v49(v53, v50, v8);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06B8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v58 = v46;
      *v45 = 134218498;
      *(v45 + 4) = 19;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 8;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5080, &v58);
      _os_log_impl(&dword_26629C000, v43, v44, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v45, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v34(v42, v8);
    v58 = xmmword_2664EF540;
    v59 = 0x80000002664F5080;
    v52(&v58);
  }
}

void sub_2664A3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D27830]) init];
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = v3;
    v10[4] = sub_2664AEA68;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2664A3614;
    v10[3] = &block_descriptor_140;
    v9 = _Block_copy(v10);

    [v7 connectToEndpoint:a1 completion:v9];
    _Block_release(v9);
  }

  else
  {

    sub_2664AD444(0, a2, a3);
  }
}

void sub_2664A3E0C(uint64_t a1, char *a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v56 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  if (a3)
  {
    v54 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v20 = v10[2];
    v20(v16, v19, v9);
    v21 = a3;
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v52 = v20;
      v27 = v26;
      v57 = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      *&v59 = sub_2664E0DE8();
      *(&v59 + 1) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v29 = sub_2664E0318();
      v31 = sub_2662A320C(v29, v30, &v57);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_26629C000, v22, v23, "Failed to connect to endpoint, error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v32 = v27;
      v20 = v52;
      MEMORY[0x266784AD0](v32, -1, -1);
      v33 = v25;
      v10 = v53;
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v34 = v10[1];
    v34(v16, v9);
    v35 = v55;
    v20(v55, v19, v9);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06B8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v59 = v39;
      *v38 = 134218498;
      *(v38 + 4) = 19;
      *(v38 + 12) = 2048;
      *(v38 + 14) = 8;
      *(v38 + 22) = 2080;
      *(v38 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664FAEA0, &v59);
      _os_log_impl(&dword_26629C000, v36, v37, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v38, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v34(v35, v9);
    v59 = xmmword_2664EF550;
    v60 = 0x80000002664FAEA0;
    v56(&v59);
  }

  else
  {
    v55 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (v10[2])(v18, v40, v9);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v57 = a1;
      aBlock[0] = v44;
      *v43 = 136315138;
      v45 = sub_2664E0318();
      v47 = sub_2662A320C(v45, v46, aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_26629C000, v41, v42, "Connected to endpoint: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (v10[1])(v18, v9);
    v48 = [objc_allocWithZone(MEMORY[0x277D27850]) init];
    [v48 setOrigin_];
    v49 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
    v50 = swift_allocObject();
    *(v50 + 16) = v56;
    *(v50 + 24) = a5;
    aBlock[4] = sub_2664AEA74;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26634045C;
    aBlock[3] = &block_descriptor_146;
    v51 = _Block_copy(aBlock);

    [v49 sendCommand:121 toDestination:v48 withOptions:0 completion:v51];
    _Block_release(v51);
  }
}

uint64_t sub_2664A4494(uint64_t a1, int a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v60[-v17];
  if (v16)
  {
    v19 = *MEMORY[0x277D27AB8];
    v20 = MRMediaRemoteCommandInfoCopyValueForKey();
    if (v20)
    {
      v21 = v20;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v65 = v9;
      v22 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      v63 = v5[2];
      v64 = v22;
      v63(v12, v22, v4);
      v23 = sub_2664DFE18();
      v24 = sub_2664E06D8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v61 = a2;
        v26 = v25;
        v27 = swift_slowAlloc();
        v62 = v5;
        v28 = v27;
        v66 = v21;
        v67 = v27;
        *v26 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FD8, &unk_2664EF6E0);
        v29 = sub_2664E0318();
        v31 = sub_2662A320C(v29, v30, &v67);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_26629C000, v23, v24, "supportedInsertionPositions: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v32 = v28;
        v5 = v62;
        MEMORY[0x266784AD0](v32, -1, -1);
        v33 = v26;
        a2 = v61;
        MEMORY[0x266784AD0](v33, -1, -1);
      }

      v34 = v5[1];
      v34(v12, v4);
      swift_unknownObjectRetain();
      v35 = sub_2664E0E38();
      v36 = [v21 containsObject_];

      swift_unknownObjectRelease();
      if (v36)
      {
        return 1;
      }

      v46 = a2;
      v47 = v65;
      v63(v65, v64, v4);
      v48 = sub_2664DFE18();
      v49 = sub_2664E06D8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67 = v64;
        *v50 = 136446466;
        LODWORD(v66) = v46;
        v51 = sub_2664E0D48();
        v53 = v47;
        v54 = sub_2662A320C(v51, v52, &v67);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2082;
        v66 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FD8, &unk_2664EF6E0);
        v55 = sub_2664E0318();
        v57 = sub_2662A320C(v55, v56, &v67);

        *(v50 + 14) = v57;
        _os_log_impl(&dword_26629C000, v48, v49, "Mode %{public}s not in %{public}s", v50, 0x16u);
        v58 = v64;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v58, -1, -1);
        MEMORY[0x266784AD0](v50, -1, -1);

        v59 = v53;
      }

      else
      {

        v59 = v47;
      }

      v34(v59, v4);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (v5[2])(v15, v42, v4);
      v43 = sub_2664DFE18();
      v44 = sub_2664E06D8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_26629C000, v43, v44, "supportedInsertionPositions is nil", v45, 2u);
        MEMORY[0x266784AD0](v45, -1, -1);
      }

      (v5[1])(v15, v4);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (v5[2])(v18, v38, v4);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "MediaPlaybackProvider#isInsertionPositionSupported MRMediaRemoteCommandInfoRef is nil", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    (v5[1])(v18, v4);
  }

  return 0;
}

uint64_t sub_2664A4B10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result == 125)
  {
    result = MRMediaRemoteCommandInfoGetEnabled();
    if (result)
    {
      v12 = a4(a2, a6);
      swift_beginAccess();
      *(a3 + 16) = v12 & 1;
      v13 = a4(a2, 0);
      result = swift_beginAccess();
      *(a7 + 16) = v13 & 1;
    }
  }

  return result;
}

uint64_t sub_2664A4BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_2664A4C34(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v25 = a4;
  v26 = a1;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a2;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v24 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 67240450;
    *(v15 + 4) = v26 != 0;
    *(v15 + 8) = 2082;
    if (a2)
    {
      v27 = v12;
      type metadata accessor for CFError(0);
      sub_2664B67D0(&qword_2800726B0, type metadata accessor for CFError);
      v17 = sub_2664E0DE8();
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v27 = v17;
    v28 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v19 = sub_2664E0318();
    v21 = sub_2662A320C(v19, v20, &v29);

    *(v15 + 10) = v21;
    _os_log_impl(&dword_26629C000, v13, v14, "MediaPlaybackProvider#groupLeaderWithTimeOut completed with endpoint present?:%{BOOL,public}d, error: %{public}s...", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v7 + 8))(v10, v6);
    a3 = v24;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return a3(v26, a2);
}

uint64_t sub_2664A4F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280F91508;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "mediaPlaybackProviderDecodeHashedRouteUIDs";
  *(v17 + 24) = 42;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_2662C0D0C;
  v18[1] = v12;

  sub_2664E0848();
  sub_2664DFDC8();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2662C0D38;
  *(v19 + 24) = v17;

  sub_2664A51FC(sub_2662C0DE0, v19, v21[0], v21[1]);

  return (*(v6 + 8))(v11, v5);
}

void sub_2664A51FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = qword_280F914E8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v13;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
    v24 = sub_2662A320C(v22, v23, aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackProvider#decodeHashedRouteUIDs for routes: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v25 = v21;
    v13 = v32;
    MEMORY[0x266784AD0](v25, -1, -1);
    v26 = v19;
    a4 = v33;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v27 = *(a4 + 144);
  v28 = sub_2664E0488();
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = sub_2662C0CAC;
  v29[4] = v13;
  aBlock[4] = sub_2664AEA38;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648C248;
  aBlock[3] = &block_descriptor_128;
  v30 = _Block_copy(aBlock);

  [v27 decodeHashedRouteUIDs:v28 completion:v30];
  _Block_release(v30);
}

void sub_2664A5544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = sub_26640C820(v7, 0);
  v10 = sub_266410DDC(aBlock, v9 + 4, v7, a1);

  sub_2662B793C();
  if (v10 == v7)
  {
    v5 = a3;
    v4 = a4;
LABEL_4:
    v11 = *(a2 + 152);
    v12 = sub_2664E0488();

    v13 = swift_allocObject();
    *(v13 + 16) = v5;
    *(v13 + 24) = v4;
    aBlock[4] = sub_2664AEA44;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664A56E8;
    aBlock[3] = &block_descriptor_134;
    v14 = _Block_copy(aBlock);

    [v11 discoverRemoteControlEndpointsMatchingUIDs:v12 completion:v14];
    _Block_release(v14);

    return;
  }

  __break(1u);
}

uint64_t sub_2664A56E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2664E04A8();
  v4 = sub_2664E04A8();

  v2(v3, v4);
}

void sub_2664A5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2664E36F0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = sub_2664E0488();

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v14[4] = sub_2664AEA14;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2664A56E8;
  v14[3] = &block_descriptor_110;
  v13 = _Block_copy(v14);

  [v9 discoverRemoteControlEndpointsMatchingUIDs:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_2664A58D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    v19 = MEMORY[0x2667834D0](a1, MEMORY[0x277D84F70] + 8);
    v28 = v9;
    v21 = sub_2662A320C(v19, v20, &v29);
    v26 = v8;
    v22 = a3;
    v23 = v21;

    *(v17 + 4) = v23;
    a3 = v22;
    _os_log_impl(&dword_26629C000, v14, v15, v27, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);

    (*(v28 + 8))(v12, v26);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return a3(a1);
}

uint64_t sub_2664A5B64()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
  return v0;
}

uint64_t sub_2664A5BCC()
{
  sub_2664A5B64();

  return swift_deallocClassInstance();
}

uint64_t sub_2664A5C94()
{
  sub_2664A6030(v52);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280F905C8;
  v1 = BYTE1(qword_280F905C8);
  v2 = BYTE2(qword_280F905C8);
  v3 = BYTE3(qword_280F905C8);
  v4 = BYTE4(qword_280F905C8);
  v5 = BYTE5(qword_280F905C8);
  v6 = BYTE6(qword_280F905C8);
  v7 = HIBYTE(qword_280F905C8);
  v49 = byte_280F905D0;
  v46 = byte_280F905D1;
  v47 = byte_280F905D2;
  v48 = byte_280F905D3;
  v50 = byte_280F905D4;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  type metadata accessor for AppleMediaServicesProvider();
  v9 = swift_allocObject();
  v10 = 256;
  if (v1)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  if (v2)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v3)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v12 | v13 | v14;
  if (v4)
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0x10000000000;
  if ((v5 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000000000;
  if ((v6 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v16 | v17;
  if (v7)
  {
    v20 = 0x100000000000000;
  }

  else
  {
    v20 = 0;
  }

  v21 = v15 | v19 | v18;
  if ((v46 & 1) == 0)
  {
    v10 = 0;
  }

  v22 = v10 & 0xFFFFFFFFFFFFFFFELL | v49 & 1;
  if (v47)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  if (v48)
  {
    v24 = 0x1000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v23 | v24;
  if (v50)
  {
    v26 = 0x100000000;
  }

  else
  {
    v26 = 0;
  }

  swift_retain_n();
  v27 = sub_2664AAEF0(v21 | v20, v25 | v26, v8, v9);

  v28 = v53;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v45[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32);
  v34 = *v32;
  v35 = type metadata accessor for MediaPlaybackProvider();
  v51[3] = v35;
  v51[4] = &off_2877F3740;
  v51[0] = v34;
  type metadata accessor for MediaPlaybackLite();
  v36 = swift_allocObject();
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v51, v35);
  v38 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v45[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v41 + 16))(v40);
  v42 = *v40;

  v43 = sub_2664AB120(v42, v27, v36);

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v52);
  qword_280073F98 = v43;
  return result;
}

uint64_t sub_2664A6030@<X0>(void *a1@<X8>)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, &v27, v5);

  v7 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v27);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v24 = qword_280F905C8;
  *(&v24 + 5) = *(&qword_280F905C8 + 5);
  v25 = &type metadata for FeatureFlagProvider;
  v26 = &protocol witness table for FeatureFlagProvider;
  v23 = &protocol witness table for SharedContextProvider;
  v22 = type metadata accessor for SharedContextProvider();
  v20 = &protocol witness table for SubscriptionProvider;
  *&v21 = swift_initStaticObject();
  v19 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v9;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v11[28] = &type metadata for WatchOSSupportProvider;
  v11[29] = &off_2877EC0A0;
  v11[5] = v4;
  v11[6] = &protocol witness table for AccountProvider;
  v11[2] = v6;
  v11[17] = v13;
  v11[18] = v7;
  v11[19] = v8;
  sub_2662A8618(&v27, (v11 + 20));
  sub_2662A8618(&v24, (v11 + 30));
  sub_2662A8618(&v21, (v11 + 35));
  sub_2662A8618(&v18, (v11 + 7));
  sub_2662A8618(&v15, (v11 + 12));

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  a1[3] = v10;
  a1[4] = &off_2877F3740;
  *a1 = v11;
  return result;
}

uint64_t static MediaPlaybackLite.shared.getter()
{
  if (qword_280071CD8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2664A63D0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;
}

uint64_t sub_2664A6440(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  swift_beginAccess();
  v10 = *a3;
  *a2 = v7;
  *a4 = v8;
  *a3 = v9;
}

uint64_t sub_2664A6508(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, void *a7)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  swift_beginAccess();
  v13 = *a6;
  *a5 = v10;
  *a7 = v11;
  *a6 = v12;
}

uint64_t sub_2664A6594()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000033, 0x80000002664FBD40, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073FB8 = v10;
  return result;
}

uint64_t sub_2664A672C()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002CLL, 0x80000002664FBD10, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073FC0 = v10;
  return result;
}

uint64_t sub_2664A68C4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 104);
  *(v4 + 96) = v3;
  *(v4 + 104) = v2;
}

uint64_t sub_2664A6924()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_2664A6970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_2664A69C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v73 = a2;
  v72 = a1;
  v4 = sub_2664E0198();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2664E0188();
  v75 = *(v76 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v68 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v17, v12);

    v18 = sub_2664DFE18();
    v19 = sub_2664E06E8();

    v20 = os_log_type_enabled(v18, v19);
    v77 = a3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v79 = v22;
      *v21 = 136446210;
      v23 = *(a3 + 120);
      *&v81[0] = *(a3 + 112);
      *(&v81[0] + 1) = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v24 = sub_2664E0318();
      *&v78 = v12;
      v26 = sub_2662A320C(v24, v25, &v79);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_26629C000, v18, v19, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) with refId: %{public}s...", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x266784AD0](v22, -1, -1);
      MEMORY[0x266784AD0](v21, -1, -1);

      (*(v13 + 8))(v16, v78);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074018, &unk_2664EF740);
    result = swift_initStackObject();
    v78 = xmmword_2664E36F0;
    *(result + 16) = xmmword_2664E36F0;
    v28 = *MEMORY[0x277D27DC0];
    if (!*MEMORY[0x277D27DC0])
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(result + 32) = v28;
    v29 = result + 32;
    *(result + 64) = MEMORY[0x277D837D0];
    *(result + 40) = 0xD000000000000013;
    *(result + 48) = 0x80000002664FBDB0;
    v30 = result;
    v31 = v28;
    v32 = sub_266386AE4(v30);
    swift_setDeallocating();
    sub_2662A9238(v29, &qword_280072F90, &qword_2664E90A8);
    v82 = v32;
    if (*(v77 + 120))
    {
      v33 = *(v77 + 112);
      v34 = *(v77 + 120);
    }

    else
    {
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v36 = qword_280F90B40;
      v35 = unk_280F90B48;
      v37 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v38 = *(v36 - 8);
      v39 = *(v38 + 64);
      MEMORY[0x28223BE20](v37);
      v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41);
      v33 = (*(v35 + 16))(v36, v35);
      v34 = v42;
      (*(v38 + 8))(v41, v36);
      if (!v34)
      {
        v56 = 0;
        v57 = v77;
        goto LABEL_16;
      }
    }

    swift_bridgeObjectRetain_n();
    v43 = sub_2664E02A8();
    result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    v80 = result;
    *&v79 = v43;
    if (!*MEMORY[0x277D27D08])
    {
      goto LABEL_31;
    }

    sub_2664AAA78(&v79, *MEMORY[0x277D27D08], v81);
    sub_2662A9238(v81, &unk_280074250, &unk_2664E3680);

    v69 = v33;
    v68 = v34;
    v44 = sub_26648BD18(v33, v34);
    v46 = v45;
    sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540]);
    v47 = v70;
    sub_2664E0178();
    sub_2663C50C4(v44, v46);
    sub_2664AB368(v44, v46);
    sub_266348774(v44, v46);
    v48 = v74;
    sub_2664E0168();
    sub_266348774(v44, v46);
    v49 = *(v5 + 8);
    v5 += 8;
    v49(v47, v4);
    (*(v75 + 16))(v71, v48, v76);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290]);
    sub_2664E0438();
    v12 = *(&v81[0] + 1);
    v16 = *&v81[0];
    v50 = *(*&v81[0] + 16);
    v51 = MEMORY[0x277D84F90];
    if (*(&v81[0] + 1) == v50)
    {
      break;
    }

    v13 = *&v81[0] + 32;
    a3 = *(&v81[0] + 1);
    while ((v12 & 0x8000000000000000) == 0)
    {
      if (a3 >= *(v16 + 2))
      {
        goto LABEL_28;
      }

      v61 = *(v13 + a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v62 = swift_allocObject();
      *(v62 + 16) = v78;
      *(v62 + 56) = MEMORY[0x277D84B78];
      *(v62 + 64) = MEMORY[0x277D84BC0];
      *(v62 + 32) = v61;
      v63 = sub_2664E02E8();
      v65 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_2663846F4(0, *(v51 + 2) + 1, 1, v51);
      }

      v4 = *(v51 + 2);
      v66 = *(v51 + 3);
      v5 = v4 + 1;
      if (v4 >= v66 >> 1)
      {
        v51 = sub_2663846F4((v66 > 1), v4 + 1, 1, v51);
      }

      ++a3;
      *(v51 + 2) = v5;
      v67 = &v51[16 * v4];
      *(v67 + 4) = v63;
      *(v67 + 5) = v65;
      if (v50 == a3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_14:
  (*(v75 + 8))(v74, v76);

  *&v81[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
  v52 = sub_2664E0288();
  v54 = v53;

  v80 = MEMORY[0x277D837D0];
  *&v79 = v52;
  *(&v79 + 1) = v54;
  v55 = *MEMORY[0x277D27DF0];
  if (*MEMORY[0x277D27DF0])
  {
    v56 = v68;

    sub_2664AAA78(&v79, v55, v81);
    sub_2662A9238(v81, &unk_280074250, &unk_2664E3680);
    v32 = v82;
    v57 = v77;
    v33 = v69;
LABEL_16:
    v58 = __swift_project_boxed_opaque_existential_1((v57 + 56), *(v57 + 80));
    v59 = swift_allocObject();
    v59[2] = v33;
    v59[3] = v56;
    v59[4] = v72;
    v59[5] = v73;
    v60 = *v58;

    sub_26649D67C(v32, sub_2664B71E8, v59);
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664A742C(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v36 - v16;
  v37 = *a1;
  v18 = *(a1 + 2);
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v19, v10);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06E8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[1] = a5;
      v23 = a4;
      v24 = v22;
      v25 = swift_slowAlloc();
      v26 = a2;
      v27 = v18;
      v28 = v25;
      *&v38 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_2662A320C(v26, a3, &v38);
      _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) completed with refId: %{public}s...", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v29 = v28;
      v18 = v27;
      MEMORY[0x266784AD0](v29, -1, -1);
      v30 = v24;
      a4 = v23;
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v17, v31, v10);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) completed with nil refId...", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
  }

  v38 = v37;
  v39 = v18;
  return a4(&v38);
}

uint64_t sub_2664A77A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v30 = sub_2664DFE08();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackLite#warm called to prewarm...", v19, 2u);
    v20 = v19;
    v5 = v18;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v21 = qword_280F91D48;
  sub_2664DFDE8();
  v22 = v30;
  (*(v4 + 16))(v7, v9, v30);
  v23 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = "mediaPlaybackProviderWarm";
  *(v24 + 24) = 25;
  *(v24 + 32) = 2;
  (*(v4 + 32))(v24 + v23, v7, v22);
  v25 = (v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v32;
  *v25 = v31;
  v25[1] = v26;

  sub_2664E0848();
  sub_2664DFDC8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2664B7414;
  *(v27 + 24) = v24;

  sub_2664A7BBC(0, v35, v33, v34, sub_2664B7418, v27);

  return (*(v4 + 8))(v9, v22);
}

uint64_t sub_2664A7BBC(int a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2664DFE08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a2 + 80);
  v30 = a2;
  v18 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v17);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_26648D3D0(v27 & 0x1010101, v18, v33);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v13 + 8))(v16, v12);
  v20 = v33[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v21, v7);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = v20;
    _os_log_impl(&dword_26629C000, v22, v23, "MediaPlaybackLite#warm streaming availability: %{public}ld", v24, 0xCu);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return sub_2664A896C(v28, v29, 0, v31, v32, 10.0);
}

uint64_t sub_2664A7F24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v33 = sub_2664DE438();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v33);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v9;
    v19 = v3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackLite#waitForPrepareForSetQueue...", v18, 2u);
    v21 = v20;
    v3 = v19;
    v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = v30;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_2664DE428();
  v22 = *(v3 + 136);
  v23 = v33;
  (*(v4 + 16))(v7, v9, v33);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v24, v7, v23);
  v26 = (v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;

  sub_26648A940(0, 1, sub_2664AB678, v25);

  return (*(v4 + 8))(v9, v23);
}

uint64_t sub_2664A8278(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v44 = a4;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v19 = *(a1 + 2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v20, v14);
  (*(v8 + 16))(v13, a2, v7);

  v21 = v7;
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v43 = v19;
  if (v24)
  {
    v40 = v21;
    v41 = a3;
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v25 = 136315394;
    if (v19)
    {
      LOBYTE(v47) = v45;
      v26 = PlaybackCode.rawValue.getter();
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *&v47 = v26;
    *(&v47 + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v28 = sub_2664E0318();
    v30 = sub_2662A320C(v28, v29, &v46);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2050;
    v31 = v42;
    sub_2664DE428();
    sub_2664DE388();
    v33 = v32;
    v34 = *(v8 + 8);
    v35 = v31;
    v36 = v40;
    v34(v35, v40);
    v34(v13, v36);
    *(v25 + 14) = v33;
    _os_log_impl(&dword_26629C000, v22, v23, "MediaPlaybackLite#waitForPrepareForSetQueue completed with code: %s in %{public}f seconds", v25, 0x16u);
    v37 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v15 + 8))(v18, v14);
    a3 = v41;
  }

  else
  {

    (*(v8 + 8))(v13, v21);
    (*(v15 + 8))(v18, v14);
  }

  v47 = v45;
  v48 = v43;
  return a3(&v47);
}

uint64_t sub_2664A8678()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  v9 = v1[2];
  v9(v7, v8, v0);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "MediaPlaybackLite#reset...", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  v13 = v1[1];
  v13(v7, v0);
  swift_beginAccess();
  if (qword_280073F90)
  {
    v14 = qword_280073F80;

    LOBYTE(v14) = sub_266457DC4(v14, &unk_2877E4AD8);

    if (v14)
    {
      v9(v5, v8, v0);
      v15 = sub_2664DFE18();
      v16 = sub_2664E06E8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackLite#reset resetting prepareForSetQueueValue", v17, 2u);
        MEMORY[0x266784AD0](v17, -1, -1);
      }

      v13(v5, v0);
      v18 = *(v20[1] + 136);

      sub_2662DA108();
    }
  }

  qword_280073F80 = 0;
  qword_280073F88 = 0;
  qword_280073F90 = 0;
}

uint64_t sub_2664A896C(uint64_t a1, unint64_t a2, int a3, void (*a4)(__int128 *), uint64_t a5, double a6)
{
  v7 = v6;
  v76 = a5;
  v77 = a4;
  v78 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v69 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v75 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v79 = v12[2];
  v80 = v24;
  v79(v23, v24, v11);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v70 = v11;
    v29 = v7;
    v30 = v28;
    v81 = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_2662A320C(a1, a2, &v81);
    *(v27 + 12) = 1026;
    *(v27 + 14) = v78 & 1;
    _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackLite#prepareForSetQueue refId: %{public}s, ignoreCache: %{BOOL,public}d...", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v31 = v30;
    v7 = v29;
    v11 = v70;
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v32 = v12[1];
  v32(v23, v11);
  v33 = v7[15];
  v34 = v75;
  if (v33)
  {
    if (v7[14] == a1 && v33 == a2 || (v35 = v7[15], (sub_2664E0D88() & 1) != 0))
    {
      v75 = v32;
      v36 = v74;
      v79(v74, v80, v11);

      v37 = sub_2664DFE18();
      v38 = sub_2664E06E8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v36;
        v40 = v7;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v81 = v42;
        *v41 = 136446466;
        *(v41 + 4) = sub_2662A320C(a1, a2, &v81);
        *(v41 + 12) = 1026;
        *(v41 + 14) = v78 & 1;
        _os_log_impl(&dword_26629C000, v37, v38, "MediaPlaybackLite#prepareForSetQueue already invoked with same refId: %{public}s, ignoreCache: %{BOOL,public}d...", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x266784AD0](v42, -1, -1);
        v43 = v41;
        v7 = v40;
        MEMORY[0x266784AD0](v43, -1, -1);

        v44 = v39;
      }

      else
      {

        v44 = v36;
      }

      (v75)(v44, v11);
      v67 = v7[17];

      v58 = 0;
      v59 = 1;
LABEL_26:
      sub_26648A940(v58, v59, v77, v76);
    }
  }

  v7[14] = a1;
  v7[15] = a2;

  v79(v34, v80, v11);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06E8();
  v47 = os_log_type_enabled(v45, v46);
  v71 = v7;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v81 = v49;
    *v48 = 136446466;
    *(v48 + 4) = sub_2662A320C(a1, a2, &v81);
    *(v48 + 12) = 1026;
    v50 = v78;
    *(v48 + 14) = v78 & 1;
    _os_log_impl(&dword_26629C000, v45, v46, "MediaPlaybackLite#prepareForSetQueue updating refId: %{public}s, ignoreCache: %{BOOL,public}d...", v48, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    v32(v34, v11);
    if ((v50 & 1) == 0)
    {
LABEL_13:
      v51 = v73;
      v79(v73, v80, v11);
      v52 = v51;
      v53 = sub_2664DFE18();
      v54 = sub_2664E06E8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v81 = v56;
        *v55 = 136446210;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        *(v55 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v81);
        _os_log_impl(&dword_26629C000, v53, v54, "MediaPlaybackLite#prepareForSetQueue %{public}s NOT ignoring cache, computing...", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x266784AD0](v56, -1, -1);
        MEMORY[0x266784AD0](v55, -1, -1);
      }

      v32(v52, v11);
      v57 = v71[17];

      v58 = *&a6;
      v59 = 0;
      goto LABEL_26;
    }
  }

  else
  {

    v32(v34, v11);
    if ((v78 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v60 = v72;
  v79(v72, v80, v11);
  v61 = v60;
  v62 = sub_2664DFE18();
  v63 = sub_2664E06E8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v81 = v65;
    *v64 = 136446210;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v64 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v81);
    _os_log_impl(&dword_26629C000, v62, v63, "MediaPlaybackLite#prepareForSetQueue %{public}s ignoring cache and computing next", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v65, -1, -1);
    MEMORY[0x266784AD0](v64, -1, -1);
  }

  v32(v61, v11);
  v66 = v71[17];

  sub_2664889E0(v77, v76);
}

uint64_t sub_2664A91B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v66 = a4;
  v68 = a3;
  *&v77 = a2;
  v69 = a1;
  v5 = sub_2664E0198();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E0188();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v22 = v14[2];
    v22(v20, v21, v13);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "MediaPlaybackLite#setRepeatMode...", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v26 = v14[1];
    result = v26(v20, v13);
    v28 = v77;
    if (!v77)
    {
      break;
    }

    if (!*MEMORY[0x277D27D08])
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v29 = *MEMORY[0x277D27D08];
    v30 = v69;
    v31 = sub_2664E02A8();
    v81 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&v80 = v31;
    sub_266318804(&v80, v79);
    v32 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v32;
    sub_26634F694(v79, v29, isUniquelyReferenced_nonNull_native);

    v64 = v78;

    v34 = sub_26648BD18(v30, v28);
    v36 = v35;
    v18 = sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540]);
    v37 = v70;
    v14 = v73;
    sub_2664E0178();
    sub_2663C50C4(v34, v36);
    sub_2664AB368(v34, v36);
    sub_266348774(v34, v36);
    v38 = v74;
    sub_2664E0168();
    sub_266348774(v34, v36);
    (*(v72 + 8))(v37, v14);
    (*(v75 + 16))(v71, v38, v76);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290]);
    sub_2664E0438();
    v39 = *(&v80 + 1);
    v20 = v80;
    v40 = *(v80 + 16);
    v41 = MEMORY[0x277D84F90];
    if (*(&v80 + 1) == v40)
    {
LABEL_7:
      (*(v75 + 8))(v74, v76);

      *&v80 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
      sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
      v42 = sub_2664E0288();
      v44 = v43;

      v45 = *MEMORY[0x277D27DF0];
      if (*MEMORY[0x277D27DF0])
      {
        v81 = MEMORY[0x277D837D0];
        *&v80 = v42;
        *(&v80 + 1) = v44;
        sub_266318804(&v80, v79);
        v46 = v45;
        v47 = v64;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v47;
        sub_26634F694(v79, v46, v48);

        v49 = v78;
        v50 = __swift_project_boxed_opaque_existential_1((v65 + 56), *(v65 + 80));
        v51 = swift_allocObject();
        *(v51 + 16) = v66;
        *(v51 + 24) = v67;
        v52 = *v50;

        sub_266493FF8(v68, v49, sub_2664AB718, v51);
      }

      goto LABEL_25;
    }

    v13 = v80 + 32;
    v77 = xmmword_2664E36F0;
    v56 = *(&v80 + 1);
    while ((v39 & 0x8000000000000000) == 0)
    {
      if (v56 >= *(v20 + 2))
      {
        goto LABEL_22;
      }

      v57 = *(v13 + v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v58 = swift_allocObject();
      *(v58 + 16) = v77;
      *(v58 + 56) = MEMORY[0x277D84B78];
      *(v58 + 64) = MEMORY[0x277D84BC0];
      *(v58 + 32) = v57;
      v14 = sub_2664E02E8();
      v18 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2663846F4(0, *(v41 + 2) + 1, 1, v41);
      }

      v61 = *(v41 + 2);
      v60 = *(v41 + 3);
      if (v61 >= v60 >> 1)
      {
        v41 = sub_2663846F4((v60 > 1), v61 + 1, 1, v41);
      }

      ++v56;
      *(v41 + 2) = v61 + 1;
      v62 = &v41[16 * v61];
      *(v62 + 4) = v14;
      *(v62 + 5) = v18;
      if (v40 == v56)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v22(v18, v21, v13);
  v53 = sub_2664DFE18();
  v54 = sub_2664E06D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26629C000, v53, v54, "MediaPlaybackLite#setRepeatMode received unexpected nil refId; can't set repeat mode", v55, 2u);
    MEMORY[0x266784AD0](v55, -1, -1);
  }

  return v26(v18, v13);
}

uint64_t sub_2664A99F8(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v12, v4);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v27 = swift_slowAlloc();
    v29 = v27;
    v30 = v10;
    *v16 = 136446210;
    v31 = v9;
    v32 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    v17 = sub_2664E0318();
    v25 = v14;
    v19 = sub_2662A320C(v17, v18, &v29);
    v26 = v4;
    v20 = a2;
    v21 = v19;

    *(v16 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_26629C000, v13, v25, "MediaPlaybackLite#setRepeatMode repeat mode set with success?: %{public}s", v16, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v28 + 8))(v8, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v30 = v10;
  v31 = v9;
  v32 = v11;
  return a2(&v30);
}

uint64_t sub_2664A9CC8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_2664DFE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = "mediaPlaybackProviderInterruptIfCarPlay";
  *(v12 + 24) = 39;
  *(v12 + 32) = 2;
  v13 = v12 + v10;
  v14 = v2;
  (*(v3 + 32))(v13, v6, v2);
  v15 = (v12 + v11);
  v16 = v25;
  *v15 = v24;
  v15[1] = v16;

  sub_2664E0848();
  sub_2664DFDC8();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2664B7424;
  *(v17 + 24) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2662D31EC;
  *(v18 + 24) = v17;
  v19 = qword_280F90B20;

  if (v19 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v26);
  v20 = v27;
  v21 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2662D31F0;
  *(v22 + 24) = v18;
  (*(v21 + 8))(sub_2664B706C, v22, v20, v21);

  (*(v3 + 8))(v8, v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_2664AA038(char a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446466;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &v15);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_26629C000, v10, v11, "MediaPlaybackLite#prepareForAudioHandoff %{public}s complete. Result: %{BOOL,public}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1 & 1);
}

uint64_t *MediaPlaybackLite.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  return v0;
}

uint64_t MediaPlaybackLite.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t sub_2664AA3A8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2664AA3D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_2664AA408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_2662A01E8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_2664AA458@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2664AEC5C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2664DE148();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_2664DE0F8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2664DE2B8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2664AA520(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_266348774(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_266348774(v6, v5);
    *v3 = xmmword_2664EF560;
    sub_266348774(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2664DE108() && __OFSUB__(v6, sub_2664DE138()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2664DE148();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2664DE0E8();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2664AA9C4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_266348774(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2664EF560;
    sub_266348774(0, 0xC000000000000000);
    sub_2664DE278();
    result = sub_2664AA9C4(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2664AA8C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2664AEC5C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2664AEDB4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2664AEE30(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2664AA958(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2664AA9C4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2664DE108();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2664DE138();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2664DE128();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

_OWORD *sub_2664AAA78@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_26634DAA8(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_266451660(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_26634DAA8(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for CFString(0);
    v12 = sub_2664E0DD8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_266454598();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_266453714(v12, a2, a1, v11);
    *a3 = 0u;
    a3[1] = 0u;
    result = a2;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v12;
  sub_266318804((v11[7] + 32 * v12), a3);
  result = sub_266318804(a1, (v11[7] + v19));
LABEL_11:
  *v5 = v11;
  return result;
}

uint64_t sub_2664AABB0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_2662A3E98(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_266450328(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_2662A3E98(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_2664E0DD8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_266453AC4();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2664535F8(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_266318804((v13[7] + 32 * v14), a4);
  result = sub_266318804(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_2664AACFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2664AAD4C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_2664AAD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_2662A01E8(*(v3 + 56) + 32 * v13, v19);
    *&v21 = v14;
    sub_266318804(v19, (&v21 + 8));
    v15 = v23;
    result = v14;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19[0] = v21;
      v19[1] = v22;
      v20 = v15;
      v18(v19);
      return sub_2662A9238(v19, &qword_280074000, &unk_2664EF718);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2664AAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &type metadata for FeatureFlagProvider;
  v24 = &protocol witness table for FeatureFlagProvider;
  *&v22 = a1;
  BYTE12(v22) = BYTE4(a2);
  DWORD2(v22) = a2;
  v20 = type metadata accessor for SiriKitTaskLoggingProvider();
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = a3;
  *(a4 + 16) = [objc_allocWithZone(type metadata accessor for AppleMediaServicesRequestHandler()) init];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "AppleMediaServicesProvider#init...", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_2662A8618(&v22, a4 + 24);
  sub_2662A8618(&v19, a4 + 64);
  return a4;
}

uint64_t sub_2664AB120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = type metadata accessor for AppleMediaServicesProvider();
  v15[4] = &protocol witness table for AppleMediaServicesProvider;
  v15[0] = a2;
  v14[3] = type metadata accessor for MediaPlaybackProvider();
  v14[4] = &off_2877F3740;
  v14[0] = a1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = MEMORY[0x277D84F98];
  sub_2662A5550(v14, a3 + 56);
  sub_2662A5550(v15, a3 + 16);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a3 + 136) = sub_2662ECF60(0xD000000000000019, 0x80000002664FBDD0, sub_2663F3108, 0);
  v9 = *(v6 + 48);
  v10 = *(v6 + 52);
  swift_allocObject();

  v11 = sub_2662ECF60(0xD000000000000032, 0x80000002664FBDF0, sub_2664B71E0, a3);

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v12 = *(a3 + 136);
  *(a3 + 136) = v11;

  return a3;
}

uint64_t sub_2664AB29C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v12;

  sub_266489BC4(sub_2664AEADC, v13);
}

uint64_t sub_2664AB368(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_2664E0198();
      sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540]);
      result = sub_2664E0158();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2664AB548(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2664AB548(uint64_t a1, uint64_t a2)
{
  result = sub_2664DE108();
  if (!result || (result = sub_2664DE138(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2664DE128();
      sub_2664E0198();
      sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540]);
      return sub_2664E0158();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2664AB628@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_2664E0B38();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t sub_2664AB678(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2664A8278(a1, v1 + v4, v6, v7);
}

uint64_t sub_2664AB720(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v14, v6);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06E8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2662A320C(a2, a3, &v24);
      _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow createTailSpinFile generated: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow failed to create tailspin file", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }

  if (qword_280071CB0 != -1)
  {
    swift_once();
  }

  return sub_2664E0888();
}

uint64_t sub_2664ABA8C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2664ABAE0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2664ABB34(uint64_t a1, uint64_t a2)
{
  v119 = sub_2664E0038();
  v137 = *(v119 - 8);
  v4 = *(v137 + 64);
  MEMORY[0x28223BE20](v119);
  v128 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2664E00B8();
  v136 = *(v127 - 8);
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2664DE438();
  v124 = *(v126 - 8);
  v8 = *(v124 + 64);
  v9 = MEMORY[0x28223BE20](v126);
  v123 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v10;
  MEMORY[0x28223BE20](v9);
  v135 = &v102 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v118 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v102 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v102 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v26 = v13[2];
  v132 = v13 + 2;
  v133 = v25;
  v131 = v26;
  v26(v24, v25, v12);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  v29 = os_log_type_enabled(v27, v28);
  v130 = v12;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "MediaPlaybackLite#prepareForAudioHandoff requested...", v30, 2u);
    v31 = v30;
    v12 = v130;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = v13[1];
  v121 = v13 + 1;
  v134 = v32;
  v32(v24, v12);
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = qword_280F90B40;
  v34 = unk_280F90B48;
  v35 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v36 = *(v33 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39);
  v40 = (*(v34 + 24))(v33, v34);
  (*(v36 + 8))(v39, v33);
  if (v40 == 2 || (v40 & 1) == 0)
  {
    v41 = 100;
  }

  else
  {
    v41 = 500;
  }

  v42 = v130;
  v131(v22, v133, v130);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134349056;
    *(v45 + 4) = v41;
    _os_log_impl(&dword_26629C000, v43, v44, "MediaPlaybackLite#prepareForAudioHandoff using timeout: %{public}ldms", v45, 0xCu);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v134(v22, v42);
  if (qword_280071CE0 != -1)
  {
    swift_once();
  }

  v116 = qword_280073FB8;
  if (qword_280071CE8 != -1)
  {
    swift_once();
  }

  v113 = qword_280073FC0;
  v46 = swift_allocObject();
  *(v46 + 16) = a1;
  *(v46 + 24) = a2;
  v115 = v46;
  v131(v19, v133, v42);

  v47 = sub_2664DFE18();
  v48 = sub_2664E06C8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v42;
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v49 = 136446466;
    *(v49 + 4) = sub_2662A320C(0xD000000000000028, 0x80000002664FBCB0, &aBlock);
    *(v49 + 12) = 2050;
    *(v49 + 14) = v41;
    _os_log_impl(&dword_26629C000, v47, v48, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);

    v52 = v19;
    v53 = v50;
  }

  else
  {

    v52 = v19;
    v53 = v42;
  }

  v134(v52, v53);
  v129 = 0x80000002664FBCB0;
  v117 = v41;
  v54 = v135;
  sub_2664DE428();
  v55 = dispatch_group_create();
  v120 = swift_allocObject();
  *(v120 + 16) = 1;
  aBlock = 0;
  v140 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v140 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000028, 0x80000002664FBCB0);
  v56 = aBlock;
  v57 = v140;
  type metadata accessor for AtomicOnce();
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  *(v58 + 32) = v56;
  *(v58 + 40) = v57;
  v59 = qword_280F91468;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = qword_280F91470;
  v142 = type metadata accessor for SiriKitTaskLoggingProvider();
  v143 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v60;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v58 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v56, v57, 1, &aBlock);
  dispatch_group_enter(v55);
  v61 = v124;
  v62 = *(v124 + 16);
  v63 = v55;
  v64 = v58;
  v65 = v123;
  v66 = v126;
  v112 = v124 + 16;
  v111 = v62;
  v62(v123, v54, v126);
  v67 = *(v61 + 80);
  v110 = ~v67;
  v68 = (v67 + 56) & ~v67;
  v69 = (v122 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = v67;
  v70 = swift_allocObject();
  v70[2] = sub_2664A9CC8;
  v70[3] = 0;
  v70[4] = v64;
  v70[5] = 0xD000000000000028;
  v70[6] = v129;
  v71 = *(v61 + 32);
  v109 = v61 + 32;
  v108 = v71;
  v71(v70 + v68, v65, v66);
  *(v70 + v69) = v120;
  *(v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v143 = sub_2664B6EF4;
  v144 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_2662A3F90;
  v142 = &block_descriptor_376;
  v72 = _Block_copy(&aBlock);
  v114 = v64;

  v106 = v63;
  v73 = v125;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  v74 = sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v76 = sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v77 = v128;
  v105 = v75;
  v104 = v76;
  v78 = v119;
  v107 = v74;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v73, v77, v72);
  _Block_release(v72);
  v79 = *(v137 + 8);
  v137 += 8;
  v113 = v79;
  v79(v77, v78);
  v80 = *(v136 + 8);
  v136 += 8;
  v103 = v80;
  v80(v73, v127);

  v81 = v118;
  v82 = v130;
  v131(v118, v133, v130);
  v83 = sub_2664DFE18();
  v84 = sub_2664E06E8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136446210;
    *(v85 + 4) = sub_2662A320C(0xD000000000000028, v129, &aBlock);
    _os_log_impl(&dword_26629C000, v83, v84, "Completions#timeout waiting for completion: %{public}s...", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x266784AD0](v86, -1, -1);
    MEMORY[0x266784AD0](v85, -1, -1);
  }

  v134(v81, v82);
  v87 = v123;
  v88 = v126;
  v111(v123, v135, v126);
  v89 = (v102 + 49) & v110;
  v90 = v89 + v122;
  v91 = (((v89 + v122) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v93 = v106;
  v94 = v117;
  *(v92 + 16) = v106;
  *(v92 + 24) = v94;
  *(v92 + 32) = 0xD000000000000028;
  *(v92 + 40) = v129;
  *(v92 + 48) = 1;
  v108(v92 + v89, v87, v88);
  *(v92 + v90) = 0;
  v95 = v92 + (v90 & 0xFFFFFFFFFFFFFFF8);
  v96 = v115;
  *(v95 + 8) = sub_2662D31E8;
  *(v95 + 16) = v96;
  *(v92 + v91) = v120;
  v143 = sub_2664B6FC4;
  v144 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_2662A3F90;
  v142 = &block_descriptor_382;
  v97 = _Block_copy(&aBlock);

  v98 = v93;

  v99 = v125;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  v100 = v128;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v99, v100, v97);
  _Block_release(v97);

  v113(v100, v78);
  v103(v99, v127);
  (*(v124 + 8))(v135, v88);
}

uint64_t keypath_getTm_0@<X0>(_OWORD *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;
}

uint64_t sub_2664ACDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (a3)
  {
    v13 = (v12 == 0) | a4;
    if (!v12 && (a4 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = a4;
    if (!v12)
    {
LABEL_4:
      v13 = 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v14, v7);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = a3 != 0;
    v18 = swift_slowAlloc();
    *v18 = 67109888;
    *(v18 + 4) = v17;
    *(v18 + 8) = 1024;
    *(v18 + 10) = v12 == 0;
    *(v18 + 14) = 1024;
    *(v18 + 16) = a4 & 1;
    *(v18 + 20) = 1024;
    *(v18 + 22) = v13 & 1;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#shouldSendPlayCommand seRoutePresent: %{BOOL}d, nonWHA: %{BOOL}d, apartOfWHAGroup: %{BOOL}d, shouldSendPlayCommand: %{BOOL}d...", v18, 0x1Au);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return v13 & 1;
}

unint64_t sub_2664ACFCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2664E0388();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2664E0428();
}

void sub_2664AD07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = 0x4014000000000000;
    _os_log_impl(&dword_26629C000, v11, v12, "MediaPlaybackProvider#groupLeaderWithTimeOut %f...", v13, 0xCu);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_2664AEA0C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = &block_descriptor_104;
  v15 = _Block_copy(aBlock);

  MRAVEndpointGetMyGroupLeaderWithTimeout();
  _Block_release(v15);
}

uint64_t sub_2664AD2F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11)
{
  v14 = MROriginCopy();
  if (a1)
  {
    UniqueIdentifier = MROriginGetUniqueIdentifier();
  }

  else
  {
    UniqueIdentifier = 0;
  }

  v16 = a2[5];
  v17 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  *(v18 + 32) = a9;
  *(v18 + 40) = v14;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = a10;
  *(v18 + 68) = UniqueIdentifier;
  *(v18 + 72) = a1 == 0;
  *(v18 + 80) = a11;
  v19 = *(v17 + 8);

  v19(a3, a4, a5, a6, sub_2664AEB08, v18, v16, v17);
}

void sub_2664AD444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D27850]) init];
  v7 = v6;
  if (a1)
  {
    [v6 setOrigin_];
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_2664B7380;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26634045C;
  v11[3] = &block_descriptor_153;
  v10 = _Block_copy(v11);

  [v8 sendCommand:121 toDestination:v7 withOptions:0 completion:v10];
  _Block_release(v10);
}

uint64_t *sub_2664AD590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v50[-v17];
  if (a1)
  {
    if (a3)
    {
      v19 = a1;
      [v19 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v20 = v54;
        v21 = sub_2664E02A8();
        [v20 setOriginatingOutputDeviceUID_];

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v22 = __swift_project_value_buffer(v5, qword_280F914F0);
        swift_beginAccess();
        (*(v6 + 16))(v18, v22, v5);
        a1 = v20;
        v23 = sub_2664DFE18();
        v24 = sub_2664E06C8();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = v53;
          *v25 = 136446210;
          v26 = a1;
          v51 = v24;
          v27 = v26;
          v28 = [v26 description];
          v29 = sub_2664E02C8();
          v52 = v19;
          v30 = v29;
          v32 = v31;

          v33 = sub_2662A320C(v30, v32, &v54);

          *(v25 + 4) = v33;
          _os_log_impl(&dword_26629C000, v23, v51, "MediaPlaybackProvider#createDestinationForSERouteId resolved destination: %{public}s", v25, 0xCu);
          v34 = v53;
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x266784AD0](v34, -1, -1);
          MEMORY[0x266784AD0](v25, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v18, v5);
      }

      else
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v45 = __swift_project_value_buffer(v5, qword_280F914F0);
        swift_beginAccess();
        (*(v6 + 16))(v16, v45, v5);
        v46 = sub_2664DFE18();
        v47 = sub_2664E06D8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_26629C000, v46, v47, "MediaPlaybackProvider#createDestinationForSERouteId destination mutable copy failed", v48, 2u);
          MEMORY[0x266784AD0](v48, -1, -1);
        }

        (*(v6 + 8))(v16, v5);
      }
    }

    else
    {
      v39 = qword_280F914E8;
      v40 = a1;
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v5, qword_280F914F0);
      swift_beginAccess();
      (*(v6 + 16))(v13, v41, v5);
      v42 = sub_2664DFE18();
      v43 = sub_2664E06D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26629C000, v42, v43, "MediaPlaybackProvider#createDestinationForSERouteId nil seRouteId", v44, 2u);
        MEMORY[0x266784AD0](v44, -1, -1);
      }

      (*(v6 + 8))(v13, v5);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v10, v35, v5);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "MediaPlaybackProvider#createDestinationForSERouteId nil destination passed in", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  return a1;
}

uint64_t sub_2664ADBE8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7, char a8)
{
  v86 = a2;
  v85 = sub_2664DFE08();
  v83 = *(v85 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v85);
  MEMORY[0x28223BE20](v16);
  v84 = &v75 - v17;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v81 = v18;
  v82 = v19;
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v76 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v75 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v78 = &v75 - v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v80 = a5;
  *(v26 + 32) = a5;
  *(v26 + 40) = a6;
  *(v26 + 48) = a7;
  v27 = a8;
  *(v26 + 56) = a8;
  v77 = a3;
  v79 = a4;

  v28 = a7;
  v29 = [a1 outputDeviceUIDs];
  v30 = sub_2664E04A8();

  v31 = *(v30 + 16);

  if (v31 || (v32 = [a1 hashedOutputDeviceUIDs], v33 = sub_2664E04A8(), v32, v34 = *(v33 + 16), , v34))
  {
    v82 = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_2664B6BBC;
    *(v35 + 24) = v26;
    v36 = qword_280F91508;
    v81 = v26;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_280F91D48;
    v38 = v84;
    sub_2664DFDE8();
    v39 = v83;
    v40 = v85;
    (*(v83 + 16))(&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v85);
    v41 = (*(v39 + 80) + 33) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v42 + 24) = 47;
    *(v42 + 32) = 2;
    (*(v39 + 32))(v42 + v41, &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
    v43 = (v42 + ((v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_2662D31E8;
    v43[1] = v35;

    sub_2664E0848();
    sub_2664DFDC8();
    v44 = swift_allocObject();
    *(v44 + 16) = sub_2664B7424;
    *(v44 + 24) = v42;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_2662D31EC;
    *(v45 + 24) = v44;
    v46 = swift_allocObject();
    v47 = v82;
    v46[2] = v82;
    v46[3] = sub_2662D31F0;
    v46[4] = v45;
    aBlock[4] = sub_2662D31C0;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_334;
    v48 = _Block_copy(aBlock);

    v49 = v47;

    MEMORY[0x266784170](v86, v48);
    _Block_release(v48);

    (*(v39 + 8))(v38, v40);
  }

  else
  {
    v86 = a6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v85 = v28;
    v51 = v81;
    v52 = __swift_project_value_buffer(v81, qword_280F914F0);
    swift_beginAccess();
    v53 = v82[2];
    v54 = v78;
    v53(v78, v52, v51);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06C8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v58 = v81;
    v59 = v82[1];
    ++v82;
    v59(v54, v81);
    v60 = [v77 outputDeviceUIDs];
    v61 = sub_2664E04A8();

    v62 = *(v61 + 16);

    if (v62)
    {
      v63 = v76;
      v53(v76, v52, v58);
      v64 = sub_2664DFE18();
      v65 = sub_2664E06E8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_26629C000, v64, v65, "PlaybackStarter#send remote WHA destination with immediatelyStartPlayback:true", v66, 2u);
        v67 = v66;
        v58 = v81;
        MEMORY[0x266784AD0](v67, -1, -1);
      }

      v59(v63, v58);
      [v79 setShouldImmediatelyStartPlayback_];
      v68 = v85;
      v69 = 0;
    }

    else
    {
      v70 = v75;
      v53(v75, v52, v58);
      v71 = sub_2664DFE18();
      v72 = sub_2664E06E8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 67240192;
        *(v73 + 4) = v27 & 1;
        _os_log_impl(&dword_26629C000, v71, v72, "PlaybackStarter#send Sending to destination with immediatelyStartPlayback:%{BOOL,public}d", v73, 8u);
        v74 = v73;
        v58 = v81;
        MEMORY[0x266784AD0](v74, -1, -1);
      }

      v59(v70, v58);
      [v79 setShouldImmediatelyStartPlayback_];
      v68 = v85;
      v69 = 1;
    }

    v80(v68, v69);
  }
}

uint64_t sub_2664AE454(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v47 = a3;
  v7 = sub_2664DFE38();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = v44[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2664DFE08();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = [a1 outputDeviceUIDs];
  v17 = sub_2664E04A8();

  v18 = *(v17 + 16);

  if (v18 || (v19 = [a1 hashedOutputDeviceUIDs], v20 = sub_2664E04A8(), v19, v21 = *(v20 + 16), , v21))
  {
    v44 = a1;
    v45 = a2;
    v22 = swift_allocObject();
    *(v22 + 16) = v47;
    *(v22 + 24) = a4;
    v23 = qword_280F91508;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = qword_280F91D48;
    sub_2664DFDE8();
    v25 = v46;
    (*(v11 + 16))(&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    v26 = (*(v11 + 80) + 33) & ~*(v11 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v27 + 24) = 47;
    *(v27 + 32) = 2;
    (*(v11 + 32))(v27 + v26, &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v28 = (v27 + ((v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_2662D2B60;
    v28[1] = v22;

    sub_2664E0848();
    sub_2664DFDC8();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_2662D2B68;
    *(v29 + 24) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2662D2B6C;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    v32 = v44;
    v31[2] = v44;
    v31[3] = sub_2662D2B74;
    v31[4] = v30;
    aBlock[4] = sub_2662D2B7C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_48;
    v33 = _Block_copy(aBlock);

    v34 = v32;

    MEMORY[0x266784170](v45, v33);
    _Block_release(v33);

    return (*(v11 + 8))(v15, v25);
  }

  else
  {
    v36 = v47;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v45;
    v38 = __swift_project_value_buffer(v45, qword_280F914F0);
    swift_beginAccess();
    v39 = v44;
    (v44[2])(v10, v38, v37);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();
    v42 = v36;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (v39[1])(v10, v37);
    return v42(0);
  }
}

void sub_2664AEB08(uint64_t a1)
{
  v2 = *(v1 + 68) | (*(v1 + 72) << 32);
  v3 = *(v1 + 80);
  sub_2664A0B24(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v2, SBYTE4(v2));
}

uint64_t objectdestroy_176Tm(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 != 1)
  {
  }

  v4 = *(v1 + 64);

  v5 = *(v1 + 80);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2664AEC5C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2664AED14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2664DE148();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2664DE118();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2664DE2B8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2664AEDB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2664DE148();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2664DE0F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2664DE2B8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2664AEE30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2664DE148();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2664DE0F8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2664AEEB4(int a1, uint64_t a2)
{
  v75 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = &v67 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v74 = v4[2];
  v74(v14, v15, v3);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v4;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackProvider#allowCommandForRequest...", v19, 2u);
    v20 = v19;
    v4 = v18;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v23 = v4[1];
  v21 = (v4 + 1);
  v22 = v23;
  v23(v14, v3);
  if (qword_280071CC0 != -1)
  {
    swift_once();
  }

  v24 = qword_280073F68;
  sub_2662A98AC();
  result = *MEMORY[0x277D27D08];
  if (*MEMORY[0x277D27D08])
  {
    if (*(a2 + 16))
    {
      v26 = sub_26634DAA8(result);
      if (v27)
      {
        sub_2662A01E8(*(a2 + 56) + 32 * v26, v78);
        if (swift_dynamicCast())
        {
          v28 = v76;
          v29 = v77;
          v30 = HIBYTE(v77) & 0xF;
          if ((v77 & 0x2000000000000000) == 0)
          {
            v30 = v76 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            if (qword_280071CB8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v31 = off_280073F60;
            v32 = v75;
            if (*(off_280073F60 + 2))
            {
              v33 = sub_26634DB5C(v75);
              if (v34)
              {
                v35 = (v31[7] + 16 * v33);
                v36 = v35[1];
                v71 = *v35;
                v73 = v36;
                swift_endAccess();
                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v76 = off_280073F60;
                off_280073F60 = 0x8000000000000000;
                sub_26634F7D4(v28, v29, v75, isUniquelyReferenced_nonNull_native);
                off_280073F60 = v76;
                swift_endAccess();
                v38 = v72;
                v74(v72, v15, v3);
                v39 = v73;

                v40 = sub_2664DFE18();
                v41 = sub_2664E06C8();

                if (os_log_type_enabled(v40, v41))
                {
                  v69 = v41;
                  v68 = v28;
                  v70 = v24;
                  v74 = v21;
                  v42 = swift_slowAlloc();
                  v43 = swift_slowAlloc();
                  v78[0] = v43;
                  *v42 = 136315650;
                  v44 = v43;
                  if (v75)
                  {
                    if (v75 == 1)
                    {
                      v45 = 0xD00000000000001DLL;
                    }

                    else
                    {
                      v45 = 0xD000000000000018;
                    }

                    if (v75 == 1)
                    {
                      v46 = "mandPrepareForSetQueue";
                    }

                    else
                    {
                      v46 = "MRMediaRemoteCommandSendQueue";
                    }
                  }

                  else
                  {
                    v45 = 0xD000000000000026;
                    v46 = "led";
                  }

                  v64 = sub_2662A320C(v45, v46 | 0x8000000000000000, v78);

                  *(v42 + 4) = v64;
                  *(v42 + 12) = 2080;
                  v61 = v71;
                  v39 = v73;
                  *(v42 + 14) = sub_2662A320C(v71, v73, v78);
                  *(v42 + 22) = 2080;
                  v65 = v68;
                  *(v42 + 24) = sub_2662A320C(v68, v29, v78);
                  _os_log_impl(&dword_26629C000, v40, v69, "MediaPlaybackProvider#allowCommandForRequest cmd: %s, currRefId: '%s', newRefId: '%s'", v42, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x266784AD0](v44, -1, -1);
                  MEMORY[0x266784AD0](v42, -1, -1);

                  v22(v72, v3);
                  v28 = v65;
                }

                else
                {

                  v22(v38, v3);
                  v61 = v71;
                }

                if (v61 == v28 && v39 == v29)
                {

                  v60 = 0;
                }

                else
                {
                  v66 = sub_2664E0D88();

                  v60 = v66 ^ 1;
                }

                goto LABEL_41;
              }
            }

            swift_endAccess();
            v47 = v73;
            v74(v73, v15, v3);

            v48 = sub_2664DFE18();
            v49 = sub_2664E06C8();

            if (os_log_type_enabled(v48, v49))
            {
              LODWORD(v72) = v49;
              v74 = v21;
              v50 = v32;
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v78[0] = v52;
              *v51 = 136315394;
              v53 = v52;
              if (v50)
              {
                if (v50 == 1)
                {
                  v54 = 0xD00000000000001DLL;
                }

                else
                {
                  v54 = 0xD000000000000018;
                }

                if (v50 == 1)
                {
                  v55 = "mandPrepareForSetQueue";
                }

                else
                {
                  v55 = "MRMediaRemoteCommandSendQueue";
                }
              }

              else
              {
                v54 = 0xD000000000000026;
                v55 = "led";
              }

              v62 = sub_2662A320C(v54, v55 | 0x8000000000000000, v78);

              *(v51 + 4) = v62;
              *(v51 + 12) = 2080;
              *(v51 + 14) = sub_2662A320C(v28, v29, v78);
              _os_log_impl(&dword_26629C000, v48, v72, "MediaPlaybackProvider#allowCommandForRequest cmd: %s associated with '%s'", v51, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v53, -1, -1);
              MEMORY[0x266784AD0](v51, -1, -1);

              v22(v73, v3);
              v32 = v75;
            }

            else
            {

              v22(v47, v3);
            }

            swift_beginAccess();
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v76 = off_280073F60;
            off_280073F60 = 0x8000000000000000;
            sub_26634F7D4(v28, v29, v32, v63);
            off_280073F60 = v76;
            swift_endAccess();
LABEL_40:
            v60 = 1;
LABEL_41:
            sub_2662AA89C();
            return v60 & 1;
          }
        }
      }
    }

    if (qword_280071CB8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v76 = off_280073F60;
    off_280073F60 = 0x8000000000000000;
    sub_26634F7D4(0, 0xE000000000000000, v75, v56);
    off_280073F60 = v76;
    swift_endAccess();
    v74(v8, v15, v3);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06C8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "MediaPlaybackProvider#allowCommandForRequest refId empty or nil, allowed...", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v22(v8, v3);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_2664AF830(void *a1, void *a2, uint64_t a3, int a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v44 = a2;
  v45 = a5;
  v40 = a4;
  v41 = a1;
  v39 = *v6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v43 = a3;
  if (sub_2664AEEB4(1, a3))
  {
    v38 = a6;
    v21 = [v44 outputDeviceUIDs];
    v22 = sub_2664E04A8();

    v23 = *(v22 + 16);

    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v24 = qword_280F91D48;
    sub_2664DFDE8();
    (*(v15 + 16))(v18, v20, v14);
    v25 = (*(v15 + 80) + 33) & ~*(v15 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = "mediaPlaybackProviderSend";
    *(v26 + 24) = 25;
    *(v26 + 32) = 2;
    (*(v15 + 32))(v26 + v25, v18, v14);
    v27 = (v26 + ((v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    v28 = v38;
    *v27 = v45;
    v27[1] = v28;

    sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D83B88];
    *(v29 + 16) = xmmword_2664E36F0;
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v23;
    sub_2664DFDC8();

    v32 = swift_allocObject();
    *(v32 + 16) = sub_2664B6BD0;
    *(v32 + 24) = v26;

    sub_266490554(sub_2664B6BD4, v32, v41, v43, v44, v42, v40 & 1, v39);

    return (*(v15 + 8))(v20, v14);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v34, v9);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MediaPlaybackProvider#send preventing re-send MRMediaRemoteCommandSendQueue for same Siri request", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    memset(v46, 0, sizeof(v46));
    return v45(v46);
  }
}

unsigned __int8 *sub_2664AFD44(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v99 = &v96 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v98 = &v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v96 - v15;
  v105 = a1;
  v106 = a2;
  v107 = 47;
  v108 = 0xE100000000000000;
  sub_2662D2EBC();
  v17 = sub_2664E0968();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v19 = *(v5 + 16);
  v102 = v5 + 16;
  v103 = v18;
  v101 = v19;
  v19(v16, v18, v4);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v5;
    v24 = v4;
    v25 = swift_slowAlloc();
    v107 = v25;
    *v22 = 136315394;
    *(v22 + 4) = sub_2662A320C(a1, a2, &v107);
    *(v22 + 12) = 2080;
    v26 = MEMORY[0x2667834D0](v17, MEMORY[0x277D837D0]);
    v28 = sub_2662A320C(v26, v27, &v107);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#spotlightIdentitfierAsCollection library grouping splitting identifier: %s into components: %s", v22, 0x16u);
    swift_arrayDestroy();
    v29 = v25;
    v4 = v24;
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v30 = v23;
  }

  else
  {

    v30 = v5;
  }

  v31 = *(v30 + 8);
  result = v31(v16, v4);
  if (v17[2] != 3)
  {

    v43 = v100;
    v101(v100, v103, v4);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "MediaPlaybackProvider#spotlightIdentitfierAsCollection identifier didn't have 3 components", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v47 = v43;
LABEL_81:
    v31(v47, v4);
    return 0;
  }

  v34 = v17[6];
  v33 = v17[7];
  v35 = HIBYTE(v33) & 0xF;
  v36 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
LABEL_72:
    v62 = v99;
    v101(v99, v103, v4);

    v63 = sub_2664DFE18();
    v64 = sub_2664E06C8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v107 = v66;
      *v65 = 136315138;
      v67 = v4;
      v68 = v17[6];
      v69 = v17[7];

      v70 = sub_2662A320C(v68, v69, &v107);
      v71 = v31;
      v72 = v70;

      *(v65 + 4) = v72;
      _os_log_impl(&dword_26629C000, v63, v64, "MediaPlaybackProvider#spotlightIdentitfierAsCollection could not parse MPMediaEntityType from component: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v65, -1, -1);

      v73 = v99;
      goto LABEL_79;
    }

LABEL_80:

    v47 = v62;
    goto LABEL_81;
  }

  if ((v33 & 0x1000000000000000) != 0)
  {
    v74 = v17[7];

    v39 = sub_26640687C(v34, v33, 10);
    v76 = v75;

    if ((v76 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if ((v33 & 0x2000000000000000) != 0)
  {
    v107 = v17[6];
    v108 = v33 & 0xFFFFFFFFFFFFFFLL;
    if (v34 == 43)
    {
      if (v35)
      {
        if (--v35)
        {
          v39 = 0;
          v54 = &v107 + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v35)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v34 != 45)
      {
        if (v35)
        {
          v39 = 0;
          v59 = &v107;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              break;
            }

            v61 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v61 + v60;
            if (__OFADD__(v61, v60))
            {
              break;
            }

            v59 = (v59 + 1);
            if (!--v35)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v35)
      {
        if (--v35)
        {
          v39 = 0;
          v48 = &v107 + 1;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v50 - v49;
            if (__OFSUB__(v50, v49))
            {
              break;
            }

            ++v48;
            if (!--v35)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v34 & 0x1000000000000000) == 0)
  {
    goto LABEL_87;
  }

  for (result = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_2664E0B78())
  {
    v38 = *result;
    if (v38 == 43)
    {
      if (v36 < 1)
      {
        goto LABEL_90;
      }

      v35 = v36 - 1;
      if (v36 != 1)
      {
        v39 = 0;
        if (!result)
        {
          goto LABEL_62;
        }

        v51 = result + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            break;
          }

          v39 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          ++v51;
          if (!--v35)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v38 == 45)
    {
      if (v36 < 1)
      {
        __break(1u);
        goto LABEL_89;
      }

      v35 = v36 - 1;
      if (v36 != 1)
      {
        v39 = 0;
        if (!result)
        {
          goto LABEL_62;
        }

        v40 = result + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            break;
          }

          v39 = v42 - v41;
          if (__OFSUB__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v35)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v36)
    {
      v39 = 0;
      if (!result)
      {
LABEL_62:
        LOBYTE(v35) = 0;
        goto LABEL_71;
      }

      while (1)
      {
        v57 = *result - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v39;
        if ((v39 * 10) >> 64 != (10 * v39) >> 63)
        {
          break;
        }

        v39 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++result;
        if (!--v36)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_70:
    v39 = 0;
    LOBYTE(v35) = 1;
LABEL_71:
    v104 = v35;
    if (v35)
    {
      goto LABEL_72;
    }

LABEL_75:
    if (v17[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_87:
    ;
  }

  v77 = v39;
  v78 = v17[8];
  v79 = v17[9];

  v80 = sub_26648B718(v78, v79);
  if (v81)
  {
    v62 = v98;
    v101(v98, v103, v4);

    v63 = sub_2664DFE18();
    v82 = sub_2664E06C8();

    if (!os_log_type_enabled(v63, v82))
    {
      goto LABEL_80;
    }

    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v107 = v84;
    *v83 = 136315138;
    v67 = v4;
    v85 = v17[8];
    v86 = v17[9];

    v87 = sub_2662A320C(v85, v86, &v107);
    v71 = v31;
    v88 = v87;

    *(v83 + 4) = v88;
    _os_log_impl(&dword_26629C000, v63, v82, "MediaPlaybackProvider#spotlightIdentitfierAsCollection could not parse persistentID from component: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x266784AD0](v84, -1, -1);
    MEMORY[0x266784AD0](v83, -1, -1);

    v73 = v98;
LABEL_79:
    v71(v73, v67);
    return 0;
  }

  else
  {
    v89 = v80;

    v90 = sub_2662D44A0(v89);
    v91 = v97;
    v101(v97, v103, v4);
    v92 = sub_2664DFE18();
    v93 = sub_2664E06C8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 134218240;
      *(v94 + 4) = v77;
      *(v94 + 12) = 2048;
      *(v94 + 14) = v90;
      _os_log_impl(&dword_26629C000, v92, v93, "MediaPlaybackProvider#spotlightIdentitfierAsCollection type:%ld, persistentID:%llu", v94, 0x16u);
      v95 = v94;
      v91 = v97;
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    v31(v91, v4);
    return v77;
  }
}

uint64_t sub_2664B07A8(void *a1, void *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - v10;
  v11 = a1[2];
  if (v11 != 1)
  {
    goto LABEL_10;
  }

  v12 = v4;
  v13 = a1[4];
  v14 = a1[5];

  v15 = sub_2664AFD44(v13, v14);
  v17 = v16;
  v19 = v18;
  v4 = v12;

  if (v19)
  {
    goto LABEL_10;
  }

  if (v15 == 1 && (v20 = [a2 collectionWithPersistentID:v17 groupingType:6]) != 0)
  {
    v21 = v20;
    v22 = [v20 items];

    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v23 = sub_2664E04A8();

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v25 = v39;
    (*(v5 + 16))(v39, v24, v4);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#itemsFromSpotlight returing collection items", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v5 + 8))(v25, v4);
  }

  else
  {
LABEL_10:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v29, v4);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "MediaPlaybackProvider#itemsFromSpotlight converting identifiers into entity items", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v23 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    if (v11)
    {
      v33 = a1 + 5;
      do
      {
        v34 = *v33;
        v41[0] = *(v33 - 1);
        v41[1] = v34;

        sub_266493D38(v41, a2, &v40);

        if (v40)
        {
          MEMORY[0x266783490](v35);
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2664E04C8();
          }

          sub_2664E0518();
          v23 = v42;
        }

        v33 += 2;
        --v11;
      }

      while (v11);
    }
  }

  return v23;
}

uint64_t sub_2664B0BF0()
{
  v0 = sub_2664E0CB8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2664B0C3C(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v15 = v6;
    MEMORY[0x28223BE20](v6);
    v12[2] = &v15;
    LOBYTE(v5) = sub_2662C5584(sub_2664B7388, v12, v5);

    if (v5)
    {
      goto LABEL_4;
    }
  }

  v15 = a2;
  v16 = a3;
  v13 = -7403;
  v13 = sub_2664E0D48();
  v14 = v7;
  sub_2662D2EBC();
  v8 = sub_2664E09B8();

  if (v8)
  {
LABEL_4:
    v9 = 1;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v13 = -7400;
    v13 = sub_2664E0D48();
    v14 = v10;
    v9 = sub_2664E09B8();
  }

  return v9 & 1;
}

uint64_t sub_2664B0DC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFD28();
  if (*(v9 + 16) && (v10 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664FB7A0), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    v23 = v12;
    v13 = sub_2664E0D48();
    v23 = 40;
    v24 = 0xE100000000000000;
    MEMORY[0x2667833B0](v13);

    MEMORY[0x2667833B0](44, 0xE100000000000000);

    v14 = v23;
    v15 = v24;
    v23 = a1;
    v24 = a2;
    v22[1] = v14;
    v22[2] = v15;
    sub_2662D2EBC();
    v16 = sub_2664E09B8();
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v17, v4);
    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26629C000, v18, v19, "MediaPlaybackProvider#isSonicXSchemeURLError unable to get xsqErrorDomain", v20, 2u);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v16 = 0;
  }

  return v16 & 1;
}

unsigned __int8 *sub_2664B1060(unint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DE098();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFD28();
  if (!*(v14 + 16) || (v15 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664FB7A0), (v16 & 1) == 0))
  {

    if (qword_280F914E8 != -1)
    {
LABEL_80:
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v25, v4);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#extractErrorCodeFromXYPairWithXSchemeURLError unable to get xsqErrorDomain", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v64 = v10;
  v17 = *(*(v14 + 56) + 8 * v15);

  v65 = v17;
  v18 = sub_2664E0D48();
  v65 = 40;
  v66 = 0xE100000000000000;
  MEMORY[0x2667833B0](v18);

  v4 = v66;

  MEMORY[0x2667833B0](44, 0xE100000000000000);

  v5 = v65;
  v8 = v66;
  v65 = a1;
  v66 = a2;
  v69 = 41;
  v70 = 0xE100000000000000;
  sub_2662D2EBC();
  v19 = sub_2664E0968();
  v20 = v19;
  v21 = *(v19 + 16);
  if (!v21)
  {
LABEL_8:

    return 0;
  }

  v22 = 0;
  v23 = (v19 + 40);
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_80;
    }

    v24 = *(v23 - 1);
    v4 = *v23;

    if (sub_2664E03F8())
    {
      break;
    }

    ++v22;
    v23 += 2;
    if (v21 == v22)
    {
      goto LABEL_8;
    }
  }

  v65 = sub_2664ACFCC(4uLL, v24, v4);
  v66 = v30;
  v67 = v31;
  v68 = v32;
  sub_2664DE068();
  sub_2663C1328();
  v33 = sub_2664E0988();
  v35 = v34;
  (*(v64 + 8))(v13, v9);

  v65 = v33;
  v66 = v35;
  v36 = sub_2664E0418();
  v38 = v37;
  result = swift_bridgeObjectRelease_n();
  v39 = HIBYTE(v38) & 0xF;
  v40 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v41 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    return 0;
  }

  if ((v38 & 0x1000000000000000) == 0)
  {
    if ((v38 & 0x2000000000000000) != 0)
    {
      v65 = v36;
      v66 = v38 & 0xFFFFFFFFFFFFFFLL;
      if (v36 == 43)
      {
        if (v39)
        {
          if (--v39)
          {
            v43 = 0;
            v53 = &v65 + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                break;
              }

              v55 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                break;
              }

              v43 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                break;
              }

              ++v53;
              if (!--v39)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_87:
        __break(1u);
        return result;
      }

      if (v36 != 45)
      {
        if (v39)
        {
          v43 = 0;
          v58 = &v65;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            v58 = (v58 + 1);
            if (!--v39)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if (v39)
      {
        if (--v39)
        {
          v43 = 0;
          v47 = &v65 + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v49 - v48;
            if (__OFSUB__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v39)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      if ((v36 & 0x1000000000000000) != 0)
      {
        result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2664E0B78();
      }

      v42 = *result;
      if (v42 == 43)
      {
        if (v40 >= 1)
        {
          v39 = v40 - 1;
          if (v40 != 1)
          {
            v43 = 0;
            if (result)
            {
              v50 = result + 1;
              while (1)
              {
                v51 = *v50 - 48;
                if (v51 > 9)
                {
                  goto LABEL_74;
                }

                v52 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  goto LABEL_74;
                }

                v43 = v52 + v51;
                if (__OFADD__(v52, v51))
                {
                  goto LABEL_74;
                }

                ++v50;
                if (!--v39)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_74;
        }

        goto LABEL_86;
      }

      if (v42 != 45)
      {
        if (v40)
        {
          v43 = 0;
          if (result)
          {
            while (1)
            {
              v56 = *result - 48;
              if (v56 > 9)
              {
                goto LABEL_74;
              }

              v57 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_74;
              }

              v43 = v57 + v56;
              if (__OFADD__(v57, v56))
              {
                goto LABEL_74;
              }

              ++result;
              if (!--v40)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_74:
        v43 = 0;
        LOBYTE(v39) = 1;
        goto LABEL_75;
      }

      if (v40 >= 1)
      {
        v39 = v40 - 1;
        if (v40 != 1)
        {
          v43 = 0;
          if (result)
          {
            v44 = result + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_74;
              }

              v46 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_74;
              }

              v43 = v46 - v45;
              if (__OFSUB__(v46, v45))
              {
                goto LABEL_74;
              }

              ++v44;
              if (!--v39)
              {
                goto LABEL_75;
              }
            }
          }

LABEL_66:
          LOBYTE(v39) = 0;
LABEL_75:
          LOBYTE(v69) = v39;
          v61 = v39;

          goto LABEL_76;
        }

        goto LABEL_74;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  LOBYTE(v69) = 0;

  v43 = sub_26640687C(v36, v38, 10);
  v61 = v62;
  swift_bridgeObjectRelease_n();
LABEL_76:
  if (v61)
  {
    return 0;
  }

  else
  {
    return v43;
  }
}

uint64_t sub_2664B178C()
{
  sub_2664E0D48();
  sub_2662D2EBC();
  v0 = sub_2664E09B8();

  if (v0)
  {
    v1 = 1;
  }

  else
  {
    sub_2664E0D48();
    v1 = sub_2664E09B8();
  }

  return v1 & 1;
}

uint64_t sub_2664B1890()
{
  v0 = sub_2664DFD28();
  if (*(v0 + 16) && (v1 = sub_2662A3E98(0x726F7272454349, 0xE700000000000000), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    sub_2664E0D48();
    sub_2662D2EBC();
    v4 = sub_2664E09B8();

    sub_2664E0D48();
    v5 = sub_2664E09B8();

    v6 = v4 & v5;
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2664B19E4(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 domain];
  v5 = sub_2664E02C8();
  v7 = v6;

  v8 = *MEMORY[0x277D277F8];
  if (v5 == sub_2664E02C8() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_2664E0D88();

    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v3 code] != 9)
  {
LABEL_23:

    return 0;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  result = sub_2664E0A68();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x266783B70](0, a2);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);
LABEL_16:
    v14 = v13;
LABEL_19:
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v15 = sub_2664E08F8();
    v16 = v15;
    if (v14)
    {
      v17 = sub_2664E0918();

      return (v17 & 1) != 0;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_2664B1B84()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_2664E02A8();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    v11 = sub_2664E02A8();
    v12 = [v10 objectForKey_];

    if (v12)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    if (*(&v32 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:

        return;
      }

      v13 = v30[1];
      v14 = mach_absolute_time();
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (v15)
      {
        if (qword_280071C28 == -1)
        {
LABEL_10:
          v17 = *&qword_28007CCF8;
          if (qword_280F914E8 != -1)
          {
            v30[0] = qword_28007CCF8;
            swift_once();
            v17 = *v30;
          }

          v18 = v17 * v16;
          v19 = __swift_project_value_buffer(v0, qword_280F914F0);
          swift_beginAccess();
          v30[0] = v1[2];
          (v30[0])(v7, v19, v0);
          v20 = sub_2664DFE18();
          v21 = sub_2664E06E8();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = v18;
            _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay read EndTTSTime with timeDiff: %f", v22, 0xCu);
            MEMORY[0x266784AD0](v22, -1, -1);
          }

          v23 = v1[1];
          v23(v7, v0);
          if (v18 > 1.0)
          {
            (v30[0])(v5, v19, v0);
            v24 = sub_2664DFE18();
            v25 = sub_2664E06D8();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 0;
              _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay large delay detected", v26, 2u);
              MEMORY[0x266784AD0](v26, -1, -1);
            }

            v23(v5, v0);
            v27 = sub_2664DF638();
            v28 = *(v27 + 48);
            v29 = *(v27 + 52);
            swift_allocObject();
            sub_2664DF628();
            sub_2664DF618();
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_10;
    }

    sub_2662A9238(v33, &unk_280074250, &unk_2664E3680);
  }
}

uint64_t sub_2664B2034()
{
  v0 = sub_2664DE438();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE408();
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_2664E02A8();
  [v5 setDateFormat_];

  v7 = sub_2664DE3A8();
  v8 = [v5 stringFromDate_];

  v9 = sub_2664E02C8();
  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t sub_2664B21A4(uint64_t *a1)
{
  v2 = sub_2664DFE38();
  v78 = *(v2 - 8);
  v79 = v2;
  v3 = *(v78 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v70 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v77 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074220, &qword_2664F0C60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v70 - v16;
  v18 = sub_2664DFBD8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  type metadata accessor for ErrorFilingProvider();
  v26 = static ErrorFilingProvider.getTrialPolicy()();
  if (v27 >> 60 == 15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = v79;
    v29 = __swift_project_value_buffer(v79, qword_280F914F0);
    swift_beginAccess();
    v30 = v78;
    (*(v78 + 16))(v6, v29, v28);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no Trial policy, returning false", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v30 + 8))(v6, v28);
    return 0;
  }

  v74 = a1;
  v34 = v18;
  v35 = v26;
  v36 = v27;
  sub_2664DFBA8();
  v75 = v35;
  v76 = v36;
  v37 = v34;
  sub_2664DFB98();
  if ((*(v19 + 48))(v17, 1, v34) == 1)
  {
    sub_2662A9238(v17, &unk_280074220, &qword_2664F0C60);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = v79;
    v39 = __swift_project_value_buffer(v79, qword_280F914F0);
    swift_beginAccess();
    v40 = v78;
    (*(v78 + 16))(v9, v39, v38);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no parseable policy, returning false", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    sub_2662B79A8(v75, v76);

    (*(v40 + 8))(v9, v38);
    return 0;
  }

  v44 = v25;
  (*(v19 + 32))(v25, v17, v37);
  v45 = *(sub_2664DFBB8() + 16);

  if (!v45)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v62 = v79;
    v63 = __swift_project_value_buffer(v79, qword_280F914F0);
    swift_beginAccess();
    v64 = v78;
    (*(v78 + 16))(v12, v63, v62);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06C8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspin list is empty", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    sub_2662B79A8(v75, v76);

    (*(v64 + 8))(v12, v62);
    (*(v19 + 8))(v44, v37);
    return 0;
  }

  v46 = *v74;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v47 = v79;
  v48 = __swift_project_value_buffer(v79, qword_280F914F0);
  swift_beginAccess();
  v49 = v77;
  v50 = v78;
  (*(v78 + 16))(v77, v48, v47);
  (*(v19 + 16))(v23, v44, v37);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v71 = v53;
    v73 = swift_slowAlloc();
    v80 = v73;
    *v53 = 136315138;
    v72 = v52;
    sub_2664DFBB8();
    v70 = MEMORY[0x2667834D0]();
    v55 = v54;

    v56 = *(v19 + 8);
    v56(v23, v37);
    v57 = v56;
    v58 = sub_2662A320C(v70, v55, &v80);

    v59 = v71;
    *(v71 + 1) = v58;
    _os_log_impl(&dword_26629C000, v51, v72, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspins supported: %s", v59, 0xCu);
    v60 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x266784AD0](v60, -1, -1);
    MEMORY[0x266784AD0](v59, -1, -1);

    v61 = v57;
    (*(v50 + 8))(v49, v79);
  }

  else
  {

    v61 = *(v19 + 8);
    v61(v23, v37);
    (*(v50 + 8))(v49, v47);
  }

  v69 = sub_2664DFBB8();
  sub_2662B79A8(v75, v76);
  v61(v44, v37);
  *v74 = v69;
  return 1;
}

uint64_t sub_2664B29E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = a2;
  v6 = sub_2664DFE38();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v51 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = MEMORY[0x277D84F90];
    v48 = v13;
    do
    {
      v54 = v14;
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_28;
        }

        v3 = *(v15 - 1);
        v17 = *v15;
        v56 = v55;
        v57 = a3;
        v58[0] = v3;
        v58[1] = v17;
        sub_2662D2EBC();

        if (sub_2664E09B8())
        {
          break;
        }

        ++v16;
        v15 += 2;
        if (v12 == v11)
        {
          v14 = v54;
          goto LABEL_16;
        }
      }

      v14 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FCF24(0, *(v14 + 16) + 1, 1);
        v14 = v59;
      }

      v13 = v48;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2662FCF24((v19 > 1), v20 + 1, 1);
        v14 = v59;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v3;
      *(v21 + 40) = v17;
    }

    while (v12 != v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v22 = *(v14 + 16);

  if (v22)
  {
    byte_280073F50 = 1;
    v3 = v51;
    v12 = v52;
    if (qword_280F914E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v23 = v53;
    v24 = __swift_project_value_buffer(v53, qword_280F914F0);
    swift_beginAccess();
    v25 = v50;
    (*(v12 + 16))(v50, v24, v23);

    v26 = sub_2664DFE18();
    v27 = a3;
    v28 = sub_2664E06C8();

    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58[0] = v30;
      *v29 = 136315394;
      v31 = MEMORY[0x2667834D0](v3, MEMORY[0x277D837D0]);
      v33 = sub_2662A320C(v31, v32, v58);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2662A320C(v55, v27, v58);
      _os_log_impl(&dword_26629C000, v26, v28, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow collecting tailspin for list: %s and errorDescription: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);

      (*(v12 + 8))(v50, v23);
    }

    else
    {

      (*(v12 + 8))(v25, v23);
    }

    return sub_2664DF5D8();
  }

  else
  {
    v35 = v51;
    v34 = v52;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v53;
    v37 = __swift_project_value_buffer(v53, qword_280F914F0);
    swift_beginAccess();
    v38 = v49;
    (*(v34 + 16))(v49, v37, v36);

    v39 = sub_2664DFE18();
    v40 = sub_2664E06C8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58[0] = v42;
      *v41 = 136315394;
      v43 = MEMORY[0x2667834D0](v35, MEMORY[0x277D837D0]);
      v45 = a3;
      v46 = sub_2662A320C(v43, v44, v58);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2662A320C(v55, v45, v58);
      _os_log_impl(&dword_26629C000, v39, v40, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow no op, with tailspinList: %s and errorDescription: '%s'", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    result = (*(v34 + 8))(v38, v36);
    byte_280073F50 = 0;
  }

  return result;
}

uint64_t sub_2664B300C()
{
  v0 = sub_2664DFD28();
  if (*(v0 + 16) && (v1 = sub_2662A3E98(0xD000000000000012, 0x80000002664FB8A0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    sub_2664E0D48();
    sub_2662D2EBC();
    v4 = sub_2664E09B8();

    sub_2664E0D48();
    v5 = sub_2664E09B8();

    v6 = v4 & v5;
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2664B3164()
{
  sub_2662D2EBC();
  if (sub_2664E09B8() & 1) != 0 || (sub_2664E09B8())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_2664E09B8();
  }

  return v0 & 1;
}

uint64_t sub_2664B3274()
{
  sub_2662D2EBC();
  if (sub_2664E09B8() & 1) != 0 || (sub_2664E09B8())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_2664E09B8();
  }

  return v0 & 1;
}

unint64_t sub_2664B337C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_2664AAD9C(&v45);
  if (!v47)
  {
    goto LABEL_25;
  }

  v12 = v45;
  sub_266318804(&v46, v44);
  v13 = *a5;
  result = sub_26634DD28(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_266452550(v19, a4 & 1);
    v21 = *a5;
    result = sub_26634DD28(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    result = sub_2664E0DD8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_266454E14();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_2662A01E8(*(*a5 + 56) + 32 * result, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v25 + v24));
    sub_266318804(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + 8 * result) = v12;
  result = sub_266318804(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_2664AAD9C(&v45);
    if (v47)
    {
      v20 = 1;
      do
      {
        v12 = v45;
        sub_266318804(&v46, v44);
        v33 = *a5;
        result = sub_26634DD28(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_266452550(v37, 1);
          v38 = *a5;
          result = sub_26634DD28(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_2662A01E8(*(*a5 + 56) + 32 * result, v43);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);

          v32 = *(v30 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v32 + v31));
          sub_266318804(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + 8 * result) = v12;
          result = sub_266318804(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_2664AAD9C(&v45);
      }

      while (v47);
    }

LABEL_25:
    sub_2662B793C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2664B369C(char a1, char a2, char a3)
{
  v6 = sub_2664E0038();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664E00B8();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v18[1] = qword_280F90D38;
  v15 = swift_allocObject();
  v15[16] = a2;
  v15[17] = a1;
  v15[18] = a3 & 1;
  aBlock[4] = sub_2664B6A60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_259;
  v16 = _Block_copy(aBlock);
  sub_2664E0068();
  v20 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  sub_2664E0A08();
  MEMORY[0x266783800](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_2664B39AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || a1 == 0xD000000000000026 && 0x80000002664F3330 == a2)
  {
    return 0;
  }

  if (sub_2664E0D88())
  {
    return 0;
  }

  if (!*(sub_2664DFD38() + 16))
  {

    return 0;
  }

  sub_2662A3E98(a1, a2);
  v9 = v8;

  result = 0;
  if (v9)
  {
    if (a3)
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_2664B3A8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v73 = a1;
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v59 - v6;
  v7 = sub_2664E0018();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_2664E00E8();
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v59 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v70 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FE8, &qword_2664EF6F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  v77 = sub_2664DF5E8();
  v78 = v25;

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F4810);

  v26 = v78;
  *(inited + 32) = v77;
  *(inited + 40) = v26;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  v27 = sub_2663869D0(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &unk_280074240, &unk_2664EF700);
  v28 = _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(v27);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v71 = v15[2];
  v71(v23, v29, v14);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v15;
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v28 + 16);

    _os_log_impl(&dword_26629C000, v30, v31, "MediaPlaybackProvider#fileRadarWithTailSpins count: %ld", v33, 0xCu);
    v34 = v33;
    v15 = v32;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  else
  {
  }

  v37 = v15[1];
  v36 = v15 + 1;
  v35 = v37;
  v37(v23, v14);
  if (byte_280073F50 == 1)
  {
    v59 = v29;
    v71(v21, v29, v14);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v35;
      v41 = v36;
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = 20;
      _os_log_impl(&dword_26629C000, v38, v39, "MediaPlaybackProvider#fileRadarWithTailSpins waiting up to %ld seconds for tailspin file creation to complete", v42, 0xCu);
      v43 = v42;
      v36 = v41;
      v35 = v40;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v61 = v28;

    v62 = v36;
    v60 = v35;
    v35(v21, v14);
    v44 = v70;
    if (qword_280071CB0 != -1)
    {
      swift_once();
    }

    v45 = v63;
    sub_2664E00C8();
    v46 = v65;
    *v65 = 20;
    v48 = v68;
    v47 = v69;
    (*(v68 + 104))(v46, *MEMORY[0x277D85188], v69);
    v49 = v64;
    MEMORY[0x266783140](v45, v46);
    (*(v48 + 8))(v46, v47);
    v50 = *(v66 + 8);
    v51 = v67;
    v50(v45, v67);
    sub_2664E0868();
    v50(v49, v51);
    v52 = sub_2664E0028();
    v71(v44, v59, v14);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06E8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = v52 & 1;
      _os_log_impl(&dword_26629C000, v53, v54, "MediaPlaybackProvider#fileRadarWithTailSpins notification received: %{BOOL}d", v55, 8u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    v60(v44, v14);
    v28 = v61;
  }

  type metadata accessor for ErrorFilingProvider();
  v56 = sub_2664DFB08();
  v57 = v72;
  (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
  sub_2664DA31C(v73, v74, 0, 0, v75, v76, 0, v28, v57, 0, 0, 0, 0);

  return sub_2662A9238(v57, &unk_280074230, &qword_2664EF6F0);
}

uint64_t sub_2664B4280(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v217 = a8;
  v224 = a7;
  v215 = a6;
  v227 = a5;
  v234 = a4;
  v226 = a3;
  v236 = a2;
  v219 = a1;
  v222 = sub_2664DFE08();
  v221 = *(v222 - 8);
  v12 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v220 = v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v206 - v16;
  v18 = sub_2664DEA08();
  v214 = *(v18 - 8);
  v19 = *(v214 + 64);
  MEMORY[0x28223BE20](v18);
  v213 = v206 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_2664DFD68();
  v228 = *(v225 - 8);
  v21 = *(v228 + 64);
  v22 = MEMORY[0x28223BE20](v225);
  v218 = v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v206 - v24;
  v26 = sub_2664DFE38();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v216 = v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v206 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v223 = v206 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v212 = v206 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v206 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v206 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v206 - v44;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v26, qword_280F914F0);
  swift_beginAccess();
  v47 = v26;
  v48 = v27;
  v49 = *(v27 + 16);
  v230 = v27 + 16;
  v231 = v46;
  v235 = v47;
  v229 = v49;
  (v49)(v45, v46);
  v50 = sub_2664DFE18();
  v51 = sub_2664E06C8();
  v52 = os_log_type_enabled(v50, v51);
  v233 = v25;
  if (v52)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_26629C000, v50, v51, "MediaPlaybackProvider#logSignpost...", v53, 2u);
    v54 = v53;
    v25 = v233;
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v56 = v48 + 8;
  v55 = *(v48 + 8);
  v57 = v235;
  v232 = v55;
  v55(v45, v235);
  if (v234)
  {
    v58 = sub_2664DE198();
    v59 = sub_2664DE198();
    IsInformational = MPCAssistantErrorIsInformational();

    if (IsInformational)
    {
      v229(v43, v231, v57);
      v61 = sub_2664DFE18();
      v62 = sub_2664E06E8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v57;
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_26629C000, v61, v62, "MediaPlaybackProvider#logSignpost ignoring an informational error", v64, 2u);
        MEMORY[0x266784AD0](v64, -1, -1);

        v65 = v43;
        v66 = v63;
      }

      else
      {

        v65 = v43;
        v66 = v57;
      }

      return v232(v65, v66);
    }

    v25 = v233;
  }

  v209 = v17;
  v210 = v18;
  sub_2664DFD98();
  v67 = sub_2664DFD78();
  v69 = v68;
  v70 = sub_2664DFD48();
  v72 = v71;

  v73 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v73 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {

    v229(v33, v231, v57);
    v79 = sub_2664DFE18();
    v80 = sub_2664E06C8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26629C000, v79, v80, "MediaPlaybackProvider#logSignpost no error onion available", v81, 2u);
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v232(v33, v57);
    v82 = v225;
    v83 = v228;
    goto LABEL_91;
  }

  v211 = v69;
  v74 = sub_2664DFD88();
  v240 = v74;
  v241 = v75;
  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    v77 = v56;
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    v74 = v240;
    v78 = v241;
  }

  else
  {
    v78 = v75;
    v77 = v56;
  }

  v84 = v211;
  v237[0] = v74;
  v237[1] = v78;

  MEMORY[0x2667833B0](v67, v84);

  MEMORY[0x2667833B0](47, 0xE100000000000000);

  v86 = v237[0];
  v85 = v237[1];
  sub_2664DFD48();
  v87 = sub_2664DFDA8();
  v89 = v88;

  v237[0] = v86;
  v237[1] = v85;

  MEMORY[0x2667833B0](v87, v89);

  v90 = v237[1];
  v91 = HIBYTE(v237[1]) & 0xF;
  if ((v237[1] & 0x2000000000000000) == 0)
  {
    v91 = v237[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v91)
  {

    v82 = v225;
    v83 = v228;
    v25 = v233;
    v106 = v227;
    if (v227)
    {
      goto LABEL_92;
    }

    return (*(v83 + 8))(v25, v82);
  }

  v207 = v237[0];
  v92 = v235;
  v229(v40, v231, v235);

  v93 = sub_2664DFE18();
  v94 = sub_2664E06E8();

  v95 = os_log_type_enabled(v93, v94);
  v208 = v90;
  if (v95)
  {
    v96 = v90;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v237[0] = v98;
    *v97 = 136315138;
    *(v97 + 4) = sub_2662A320C(v207, v96, v237);
    _os_log_impl(&dword_26629C000, v93, v94, "MediaPlaybackProvider#logSignpost mediaPlaybackProviderErrorStatus: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x266784AD0](v98, -1, -1);
    MEMORY[0x266784AD0](v97, -1, -1);
  }

  v232(v40, v92);
  v25 = v233;
  v99 = v226;
  v100 = v223;
  sub_2664DFD48();
  v101 = sub_2664B39AC(v236, v99, v234);

  v102 = sub_2664DFD48();
  v104 = v103;
  if ((sub_2664B0C3C(v227, v102, v103) & 1) == 0)
  {
    if (sub_2664B178C())
    {

      v105 = 37;
      goto LABEL_45;
    }

    v237[0] = v102;
    v237[1] = v104;
    v238 = 0xD00000000000003ALL;
    v239 = 0x80000002664FB080;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {

      v105 = 155;
      goto LABEL_45;
    }

    v108 = sub_2664B1890();

    if (v108)
    {
      v105 = 54;
      goto LABEL_45;
    }

    if (v234)
    {
      v109 = sub_2664DE198();
      v110 = sub_2664B19E4(v109, v227);

      if ((v110 & 1) == 0)
      {
        v111 = sub_2664DE198();
        v112 = [v111 code];

        if (v112 == 15)
        {
          v105 = 52;
          goto LABEL_45;
        }

LABEL_44:
        v105 = 0;
        goto LABEL_45;
      }
    }

    else if ((sub_2664B19E4(0, v227) & 1) == 0)
    {
      goto LABEL_44;
    }

    v105 = 160;
    goto LABEL_45;
  }

  v105 = 1;
LABEL_45:
  if (v236 == 0xD000000000000026 && 0x80000002664F3330 == v99 || (v113 = 0, (sub_2664E0D88() & 1) != 0))
  {
    v113 = sub_266457DC4(v105, &unk_2877E4AD8);
  }

  v206[2] = v77;
  if ((v236 != 0xD00000000000001DLL || 0x80000002664F3360 != v99) && (sub_2664E0D88() & 1) == 0 && (v236 != 0xD000000000000018 || 0x80000002664F3380 != v99) && ((v113 | v101 | sub_2664E0D88()) & 1) == 0)
  {
    v137 = v207;
    goto LABEL_84;
  }

  LODWORD(v234) = v101;
  v114 = v212;
  v115 = v235;
  v229(v212, v231, v235);

  v116 = sub_2664DFE18();
  v117 = sub_2664E06C8();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v237[0] = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_2662A320C(v236, v99, v237);
    _os_log_impl(&dword_26629C000, v116, v117, "MediaPlaybackProvider#logSignpost submitting error metrics for %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    MEMORY[0x266784AD0](v119, -1, -1);
    MEMORY[0x266784AD0](v118, -1, -1);
  }

  v232(v114, v115);
  v206[1] = v78;
  v120 = v207;
  if (qword_280F91468 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v212 = qword_280F91470;
    v121 = v214;
    v122 = v213;
    v123 = v210;
    (*(v214 + 104))(v213, *MEMORY[0x277D5BC00], v210);
    v124 = *MEMORY[0x277D5B8D0];
    v125 = sub_2664DE808();
    v126 = *(v125 - 8);
    v127 = v209;
    (*(v126 + 104))(v209, v124, v125);
    (*(v126 + 56))(v127, 0, 1, v125);
    v237[0] = 0;
    v237[1] = 0xE000000000000000;
    sub_2664E0B28();

    v237[0] = 0xD00000000000001CLL;
    v237[1] = 0x80000002664FB210;
    v206[0] = 0x80000002664FB210;
    MEMORY[0x2667833B0](v120, v208);
    sub_26631F2F0(v122, 0xD000000000000011, 0x80000002664FB230, v127, v237[0], v237[1]);

    sub_2662A9238(v127, &qword_280072AA0, &qword_2664E9EA0);
    (*(v121 + 8))(v122, v123);
    if ((v234 & 1) == 0)
    {
      v100 = v223;
      v136 = v218;
      v137 = v120;
      v25 = v233;
      goto LABEL_85;
    }

    v128 = 0x6E776F6E6B6E75;
    if (v224)
    {
      v129 = [v224 playerPath];
      if (v129)
      {
        v130 = v129;
        v131 = [v129 description];

        v132 = sub_2664E02C8();
        v134 = v133;

        v135 = v132;
      }

      else
      {
        v134 = 0xE700000000000000;
        v135 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v134 = 0xE700000000000000;
      v135 = 0x6E776F6E6B6E75;
    }

    strcpy(v237, "playerPath = ");
    HIWORD(v237[1]) = -4864;
    MEMORY[0x2667833B0](v135, v134);

    result = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      break;
    }

    v138 = v237[0];
    v139 = v237[1];
    v140 = v219;
    if (*(v219 + 16) && (v141 = sub_26634DAA8(result), (v142 & 1) != 0) && (sub_2662A01E8(*(v140 + 56) + 32 * v141, v237), (swift_dynamicCast() & 1) != 0))
    {
      v143 = v238;
      v144 = v239;
    }

    else
    {
      v144 = 0xE700000000000000;
      v143 = 0x6E776F6E6B6E75;
    }

    strcpy(v237, "contextID = ");
    BYTE5(v237[1]) = 0;
    HIWORD(v237[1]) = -5120;
    MEMORY[0x2667833B0](v143, v144);

    result = *MEMORY[0x277D27DF0];
    if (!*MEMORY[0x277D27DF0])
    {
      goto LABEL_116;
    }

    v145 = v237[1];
    v234 = v237[0];
    v146 = v219;
    if (*(v219 + 16) && (v147 = sub_26634DAA8(result), (v148 & 1) != 0) && (sub_2662A01E8(*(v146 + 56) + 32 * v147, v237), (swift_dynamicCast() & 1) != 0))
    {
      v128 = v238;
      v149 = v239;
    }

    else
    {
      v149 = 0xE700000000000000;
    }

    v224 = v138;
    v237[0] = 0xD000000000000016;
    v237[1] = 0x80000002664FB1D0;
    MEMORY[0x2667833B0](v128, v149);

    v150 = *MEMORY[0x277D27CE8];
    if (!*MEMORY[0x277D27CE8])
    {
      goto LABEL_117;
    }

    v152 = v237[0];
    v151 = v237[1];

    v153 = v219;
    if (*(v219 + 16) && (v154 = sub_26634DAA8(v150), (v155 & 1) != 0) && (sub_2662A01E8(*(v153 + 56) + 32 * v154, v237), (swift_dynamicCast() & 1) != 0))
    {
      v156 = v139;
      v158 = v238;
      v157 = v239;

      v159 = v158;
    }

    else
    {
      v156 = v139;

      v157 = 0x80000002664FB1F0;
      v159 = 0xD000000000000015;
    }

    strcpy(v237, "commandID = ");
    BYTE5(v237[1]) = 0;
    HIWORD(v237[1]) = -5120;
    MEMORY[0x2667833B0](v159, v157);

    v160 = v237[0];
    v161 = v237[1];
    strcpy(v237, "timeOfError: ");
    HIWORD(v237[1]) = -4864;
    MEMORY[0x2667833B0](a11, a12);
    v162 = v237[0];
    v163 = v237[1];
    v237[0] = 0;
    v237[1] = 0xE000000000000000;
    sub_2664E0B28();

    v237[0] = 10;
    v237[1] = 0xE100000000000000;
    MEMORY[0x2667833B0](v224, v156);

    MEMORY[0x2667833B0](2570, 0xE200000000000000);
    MEMORY[0x2667833B0](v234, v145);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v152, v151);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v160, v161);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v162, v163);

    v164 = v237[0];
    v165 = v237[1];
    v237[0] = 0;
    v237[1] = 0xE000000000000000;
    sub_2664E0B28();

    v237[0] = 0xD00000000000001CLL;
    v237[1] = v206[0];
    v137 = v207;
    MEMORY[0x2667833B0](v207, v208);
    sub_2664B3A8C(v237[0], v237[1], v164, v165);
    v25 = v233;
    v100 = v223;
LABEL_84:
    v136 = v218;
LABEL_85:
    v166 = MEMORY[0x277D837D0];

    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_2664E36F0;
    *(v167 + 56) = v166;
    *(v167 + 64) = sub_2662C4094();
    v168 = v208;
    *(v167 + 32) = v137;
    *(v167 + 40) = v168;
    v169 = v220;
    sub_2664DFDF8();
    v204 = v167;
    LOBYTE(v203) = 2;
    v202 = 86;
    sub_2664DFDC8();

    (*(v221 + 8))(v169, v222);
    v170 = v235;
    v229(v100, v231, v235);
    v83 = v228;
    v82 = v225;
    (*(v228 + 16))(v136, v25, v225);
    v171 = v226;

    v172 = sub_2664DFE18();
    v173 = sub_2664E06D8();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v237[0] = v175;
      *v174 = 136446466;
      *(v174 + 4) = sub_2662A320C(v236, v171, v237);
      *(v174 + 12) = 2082;
      v176 = sub_2664DFD48();
      v178 = v177;
      (*(v228 + 8))(v136, v82);
      v179 = sub_2662A320C(v176, v178, v237);

      *(v174 + 14) = v179;
      _os_log_impl(&dword_26629C000, v172, v173, "Logging SiriKitEvent Event: %{public}s with extended error description: %{public}s", v174, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v175, -1, -1);
      v180 = v174;
      v83 = v228;
      MEMORY[0x266784AD0](v180, -1, -1);

      v181 = v223;
    }

    else
    {

      (*(v83 + 8))(v136, v82);
      v181 = v100;
    }

    v232(v181, v170);
LABEL_91:
    v106 = v227;
    if (!v227)
    {
      return (*(v83 + 8))(v25, v82);
    }

LABEL_92:
    v120 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      if (!sub_2664E0A68())
      {
        return (*(v83 + 8))(v25, v82);
      }
    }

    else if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return (*(v83 + 8))(v25, v82);
    }

    if ((v106 & 0xC000000000000001) != 0)
    {
      v182 = MEMORY[0x266783B70](0, v106);
LABEL_97:
      v183 = v182;
      v184 = a9;
      v185 = v216;
      if (!v215)
      {
        goto LABEL_110;
      }

      if (v215 >> 62)
      {
        if (!sub_2664E0A68())
        {
          goto LABEL_110;
        }

LABEL_100:
        LODWORD(v234) = a10;
        v186 = v235;
        v229(v185, v231, v235);
        v187 = v226;

        v188 = sub_2664DFE18();
        v189 = sub_2664E06E8();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v231 = a9;
          v191 = v190;
          v192 = swift_slowAlloc();
          v237[0] = v192;
          *v191 = 136446210;
          *(v191 + 4) = sub_2662A320C(v236, v187, v237);
          _os_log_impl(&dword_26629C000, v188, v189, "Logging Signpost Event: %{public}s resultStatuses is empty", v191, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v192);
          v193 = v192;
          v82 = v225;
          MEMORY[0x266784AD0](v193, -1, -1);
          v194 = v191;
          v184 = v231;
          MEMORY[0x266784AD0](v194, -1, -1);
        }

        v195 = v232(v185, v186);
        MEMORY[0x28223BE20](v195);
        v202 = v217;
        v203 = v184;
        LOBYTE(v204) = v234;
        v205 = v25;
        sub_266487534(sub_2664B6A1C, &v206[-6], v227);
      }

      else
      {
        if (*((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

LABEL_110:
        v196 = [v183 integerValue];
        v197 = sub_2664DFD58();
        sub_2664E0858();
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v198 = swift_allocObject();
        *(v198 + 16) = xmmword_2664E34E0;
        v199 = MEMORY[0x277D83B88];
        v200 = MEMORY[0x277D83C10];
        *(v198 + 56) = MEMORY[0x277D83B88];
        *(v198 + 64) = v200;
        *(v198 + 32) = v196;
        *(v198 + 96) = v199;
        *(v198 + 104) = v200;
        *(v198 + 72) = v197;
        v201 = v220;
        sub_2664DFDF8();
        v204 = v198;
        LOBYTE(v203) = 2;
        v202 = 118;
        sub_2664DFDC8();

        (*(v221 + 8))(v201, v222);
        v82 = v225;
      }

      v83 = v228;
      return (*(v83 + 8))(v25, v82);
    }

    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v182 = *(v106 + 32);
      goto LABEL_97;
    }

    __break(1u);
LABEL_108:
    swift_once();
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

void sub_2664B5C78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, v12, v4);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "MediaPlaybackProvider#prepareForSetQueueDestination...", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = v5[1];
  v17(v11, v4);
  v13(v9, v12, v4);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "MediaPlaybackProvider#prepareForSetQueueDestination using system media application", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v17(v9, v4);
  v21 = [objc_opt_self() systemMediaApplicationDestination];
  sub_26649DAEC(v21, v23, v24, v25, v26);
}

uint64_t sub_2664B5F24()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "MediaPlaybackProvider#destroyMRQueue destroying queue...", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return MRSystemAppPlaybackQueueDestroy();
}

uint64_t sub_2664B60DC(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, unsigned int a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v55 = a8;
  v56 = a7;
  v54 = a6;
  v57 = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v24, v25, v11);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#addToUpNext Insertion position supported", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v12 + 8))(v24, v11);
    v29 = v57;
    return a3(v29);
  }

  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v22, v30, v11);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "MediaPlaybackProvider#addToUpNext Insertion position of 'next' is supported. Default to that.", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v12 + 8))(v22, v11);
    v29 = 0;
    return a3(v29);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v53 = *(v12 + 16);
  v53(v19, v35, v11);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06D8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v52 = v35;
    v39 = v38;
    v51 = swift_slowAlloc();
    *&v59 = v51;
    *v39 = 136315138;
    v58 = v57;
    sub_2664B66E4();
    v40 = sub_2664E09D8();
    v42 = sub_2662A320C(v40, v41, &v59);

    *(v39 + 4) = v42;
    _os_log_impl(&dword_26629C000, v36, v37, "MediaPlaybackProvider#addToUpNext Insertion position not supported for %s", v39, 0xCu);
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266784AD0](v43, -1, -1);
    v44 = v39;
    v35 = v52;
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v45 = *(v12 + 8);
  v45(v19, v11);
  sub_2664B5F24();
  v53(v16, v35, v11);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06B8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v59 = v49;
    *v48 = 134218498;
    *(v48 + 4) = 19;
    *(v48 + 12) = 2048;
    *(v48 + 14) = 6;
    *(v48 + 22) = 2080;
    *(v48 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FAF70, &v59);
    _os_log_impl(&dword_26629C000, v46, v47, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  v45(v16, v11);
  v59 = xmmword_2664EF570;
  v60 = 0x80000002664FAF70;
  v56(&v59);
}

unint64_t sub_2664B66E4()
{
  result = qword_280073FD0;
  if (!qword_280073FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073FD0);
  }

  return result;
}

uint64_t objectdestroy_155Tm(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[4]);
  v4 = v1[6];

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_2664B67D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2664B6818()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F4930(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2664B68C0(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_2663606A4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5);
}

void sub_2664B695C(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  sub_26649F0B4(a1, v7, v1 + v4, v9, v10, v11);
}

void sub_2664B6A70(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  sub_26648F610(a1, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t objectdestroy_286Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2664B6B84()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  return sub_26648E5A0(v1, v2, v3, v4);
}

void sub_2664B6BD8(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_2664925C0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_244Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_247Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t objectdestroy_215Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2664B6F0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v2 = *(sub_2664DE438() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *&v1[v4];
  v11 = *&v1[(v4 + 15) & 0xFFFFFFFFFFFFFFF8];

  return a1(v5, v6, v7, v8, v9, &v1[v3], v10, v11);
}

uint64_t sub_2664B6FC4()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F0F4C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_2664B7080()
{
  result = qword_280073FF8;
  if (!qword_280073FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2800737F0, &unk_2664E5320);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073FF8);
  }

  return result;
}

void *sub_2664B7134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2664AA958(sub_2664B719C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2664B71F4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[9];
  v12[8] = a1[8];
  v12[9] = v5;
  v6 = a1[11];
  v12[10] = a1[10];
  v12[11] = v6;
  v7 = a1[5];
  v12[4] = a1[4];
  v12[5] = v7;
  v8 = a1[7];
  v12[6] = a1[6];
  v12[7] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  return sub_266489448(v12, v2, v3, v4);
}

uint64_t objectdestroy_124Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_2664B72C8()
{
  result = qword_280074020;
  if (!qword_280074020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074020);
  }

  return result;
}

Swift::Void __swiftcall INAddMediaIntent.addPlaylistAppEntityId(appEntityId:)(Swift::String appEntityId)
{
  MEMORY[0x2667833B0](appEntityId._countAndFlagsBits, appEntityId._object);
  _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0xD000000000000014, 0x80000002664FBE30, v1);
}

Swift::String_optional __swiftcall INAddMediaIntent.getPlaylistAppEntityId()()
{
  v1 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000014, 0x80000002664FBE30, v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_2664B74CC()
{
  v1 = sub_2664DEA78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(&off_279BCC920 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v14 = *(&off_279BCC920 + v6);

    return MEMORY[0x277D84F90];
  }

  v17 = MEMORY[0x277D84F90];
  sub_2662FCFF4(0, v8, 0);
  v9 = v17;
  v10 = 32;
  do
  {
    v11 = *(v7 + v10);
    if (v11 > 2)
    {
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          sub_2664DEA58();
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      sub_2664DEA48();
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          sub_2664DEA28();
          goto LABEL_13;
        }

LABEL_10:
        sub_2664DEA38();
        goto LABEL_13;
      }

      sub_2664DEA68();
    }

LABEL_13:
    v17 = v9;
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2662FCFF4(v12 > 1, v13 + 1, 1);
      v9 = v17;
    }

    *(v9 + 16) = v13 + 1;
    (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v5, v1);
    v10 += 8;
    --v8;
  }

  while (v8);

  return v9;
}

uint64_t AcceptedSpeakerIdConfidence.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_2664B7754()
{
  result = qword_280074028;
  if (!qword_280074028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074028);
  }

  return result;
}

uint64_t sub_2664B77B8()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }

  v0 = qword_2800737C0;
  type metadata accessor for MediaRemoteProvider();
  v1 = swift_allocObject();
  v1[5] = type metadata accessor for MediaRemoteAPIProvider();
  v1[6] = &protocol witness table for MediaRemoteAPIProvider;
  v1[2] = v0;
  qword_280074030 = v1;
}

uint64_t MediaRemoteProvider.__allocating_init(mediaRemoteAPIProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v11 = *(a1 + 24);
  v3 = v11;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v5 = *(v11 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(v2 + 40) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t static MediaRemoteProvider.shared.getter()
{
  if (qword_280071CF0 != -1)
  {
    swift_once();
  }
}

uint64_t *MediaRemoteProvider.init(mediaRemoteAPIProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2663E8770(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t MediaRemoteProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ShowMusicNoticeAppIntent.init(noticeEntity:itemEntity:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073968, &qword_2664ED390);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  a2[1] = sub_2664DFA28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073970, &qword_2664ED398);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *a2 = sub_2664DFA28();

  sub_2664DFA38();
}

uint64_t PodcastShowEntity.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2664DF888();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2664DF8E8();
  (*(v4 + 8))(a1, v3);
  return v10;
}