uint64_t sub_2662D1C1C(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), int a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v109 = a8;
  v110 = a7;
  LODWORD(v108) = a6;
  v106 = a4;
  v107 = a5;
  v105 = a2;
  v10 = sub_2664DFE38();
  v111 = *(v10 - 8);
  v11 = *(v111 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v103 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v102 = &v98 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v98 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v99 = &v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v98 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = sub_2664DFD68();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v34 = v10;
    v35 = sub_2664DE198();
    sub_2664DFD98();
    v36 = sub_2664DFD48();
    a3 = v37;

    (*(v30 + 8))(v33, v29);
    v38 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v39 = v36;
    }

    else
    {

      v39 = 0;
      a3 = 0;
    }

    v10 = v34;
  }

  else
  {
    v39 = 0;
  }

  v40 = v111;
  v41 = sub_2664DE748();
  if (v41 != sub_2664DE748())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v40 + 16))(v28, v47, v10);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = sub_2664DE748();
      _os_log_impl(&dword_26629C000, v48, v49, "PodcastPlaybackHandler#validateResult result: %ld", v50, 0xCu);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v40 + 8))(v28, v10);
    sub_2662CDDCC(a1, v39, a3, v106, v107, v108, v110, v109);
  }

  v42 = v105;
  if (v105)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v40 + 16))(v26, v43, v10);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v42;
      _os_log_impl(&dword_26629C000, v44, v45, "PodcastPlaybackHandler#validateResult status: %u", v46, 8u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    (*(v40 + 8))(v26, v10);
    sub_2662D0648(v42, v39, a3, v106, v107, v108, v110, v109);
  }

  if (a3)
  {
    v108 = v39;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v53 = v104;
    v107 = *(v40 + 16);
    v107(v104, v52, v10);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v10;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v114 = v58;
      *v57 = 136315138;
      v59 = v108;
      *(v57 + 4) = sub_2662A320C(v108, a3, &v114);
      _os_log_impl(&dword_26629C000, v54, v55, "PodcastPlaybackHandler#validateResult errorOnion: '%s'", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v60 = v58;
      v61 = v111;
      MEMORY[0x266784AD0](v60, -1, -1);
      v62 = v57;
      v10 = v56;
      MEMORY[0x266784AD0](v62, -1, -1);

      v63 = *(v61 + 8);
      v63(v53, v10);
    }

    else
    {

      v63 = *(v40 + 8);
      v63(v53, v10);
      v59 = v108;
    }

    *&v114 = v59;
    *(&v114 + 1) = a3;
    v112 = 0x2934202C333828;
    v113 = 0xE700000000000000;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {
      *&v114 = 0xD000000000000012;
      *(&v114 + 1) = 0x80000002664F3BB0;
      MEMORY[0x2667833B0](v59, a3);

      v69 = *(&v114 + 1);
      v70 = v114;
      v71 = v102;
      v107(v102, v52, v10);

      v72 = sub_2664DFE18();
      v73 = sub_2664E06B8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v111 = v10;
        v76 = v75;
        *&v114 = v75;
        *v74 = 134218498;
        *(v74 + 4) = 3;
        *(v74 + 12) = 2048;
        *(v74 + 14) = 152;
        *(v74 + 22) = 2080;
        v77 = sub_2662A320C(v70, v69, &v114);

        *(v74 + 24) = v77;
        _os_log_impl(&dword_26629C000, v72, v73, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v74, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x266784AD0](v76, -1, -1);
        MEMORY[0x266784AD0](v74, -1, -1);

        v63(v71, v111);
      }

      else
      {

        v63(v71, v10);
      }

      *&v114 = 924;
      *(&v114 + 1) = v70;
    }

    else
    {
      *&v114 = v59;
      *(&v114 + 1) = a3;
      v112 = 0x293731202C323328;
      v113 = 0xE800000000000000;
      if (sub_2664E09B8())
      {

        v69 = 0x80000002664F3B80;
        v78 = v101;
        v107(v101, v52, v10);
        v79 = sub_2664DFE18();
        v80 = sub_2664E06B8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *&v114 = v82;
          *v81 = 134218498;
          *(v81 + 4) = 3;
          *(v81 + 12) = 2048;
          *(v81 + 14) = 50;
          *(v81 + 22) = 2080;
          *(v81 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, &v114);
          _os_log_impl(&dword_26629C000, v79, v80, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v81, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x266784AD0](v82, -1, -1);
          MEMORY[0x266784AD0](v81, -1, -1);
        }

        v63(v78, v10);
        v83 = xmmword_2664E3860;
      }

      else
      {
        if ((sub_2662CDCFC() & 1) == 0)
        {
          v89 = v100;
          v107(v100, v52, v10);

          v90 = sub_2664DFE18();
          v91 = sub_2664E06B8();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *&v114 = v93;
            *v92 = 134218498;
            *(v92 + 4) = 3;
            *(v92 + 12) = 2048;
            *(v92 + 14) = 4;
            *(v92 + 22) = 2080;
            v94 = a3;
            v95 = v108;
            v96 = v10;
            v97 = sub_2662A320C(v108, v94, &v114);

            *(v92 + 24) = v97;
            _os_log_impl(&dword_26629C000, v90, v91, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v92, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v93);
            MEMORY[0x266784AD0](v93, -1, -1);
            MEMORY[0x266784AD0](v92, -1, -1);

            v63(v100, v96);
          }

          else
          {

            v63(v89, v10);
            v94 = a3;
            v95 = v108;
          }

          *&v114 = 772;
          *(&v114 + 1) = v95;
          v115 = v94;
          goto LABEL_48;
        }

        v69 = 0x80000002664F3B60;
        v84 = v99;
        v107(v99, v52, v10);
        v85 = sub_2664DFE18();
        v86 = sub_2664E06B8();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v114 = v88;
          *v87 = 134218498;
          *(v87 + 4) = 3;
          *(v87 + 12) = 2048;
          *(v87 + 14) = 154;
          *(v87 + 22) = 2080;
          *(v87 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, &v114);
          _os_log_impl(&dword_26629C000, v85, v86, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v87, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
          MEMORY[0x266784AD0](v88, -1, -1);
          MEMORY[0x266784AD0](v87, -1, -1);
        }

        v63(v84, v10);
        v83 = xmmword_2664E3850;
      }

      v114 = v83;
    }

    v115 = v69;
LABEL_48:
    v110(&v114);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v65 = v103;
  (*(v40 + 16))(v103, v64, v10);
  v66 = sub_2664DFE18();
  v67 = sub_2664E06E8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_26629C000, v66, v67, "PodcastPlaybackHandler#validateResult success", v68, 2u);
    MEMORY[0x266784AD0](v68, -1, -1);
  }

  (*(v40 + 8))(v65, v10);
  v114 = 0uLL;
  v115 = 0;
  return (v110)(&v114);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662D2BDC(int a1, uint64_t *a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a6;
  v27 = a5;
  v29 = a4;
  v30 = a3;
  v31 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v15 = v8[2];
  v15(v13, v14, v7);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "PodcastPlaybackHandler#play play-continuation executing...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = v8[1];
  v19(v13, v7);
  v20 = sub_2664ACDA0(a2[3], a2[4], a2[5], v31 & 1);
  if (v20)
  {
    return v27(v20);
  }

  v22 = v28;
  v15(v28, v14, v7);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "PodcastPlaybackHandler#play external devices, not sending startPlayback (set previously)", v25, 2u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v19(v22, v7);
  memset(v32, 0, sizeof(v32));
  return v30(v32);
}

unint64_t sub_2662D2EBC()
{
  result = qword_280F8F680;
  if (!qword_280F8F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F680);
  }

  return result;
}

uint64_t sub_2662D2F20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  return sub_2662CBDA8();
}

uint64_t sub_2662D2F30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_2662D2F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662D3010(char *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662DAD1C(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
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

uint64_t sub_2662D31F4()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000012, 0x80000002664E3960, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280072540 = v10;
  return result;
}

double PSESignalsStitcher.__allocating_init()()
{
  v0 = swift_allocObject();
  *&result = 15;
  *(v0 + 16) = xmmword_2664E3930;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v2;
  return result;
}

double PSESignalsStitcher.init()()
{
  *&result = 15;
  *(v0 + 16) = xmmword_2664E3930;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v2;
  return result;
}

uint64_t sub_2662D33E8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  if (*(v4 + 24) >= *(v4 + 16))
  {
    v12 = *(v4 + 16);
  }

  else
  {
    v12 = *(v4 + 24);
  }

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v4;
  v13[9] = a2;
  v14 = a2;

  sub_2662D3E2C(v12, a2, sub_2662D37C8, v13);
}

uint64_t sub_2662D34D8(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v35 = a2;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v21 = a1[3];
    v36 = *a1;
    v37 = *(a1 + 1);
    v38 = v21;
    swift_beginAccess();
    sub_2662D4340(&v36, (a8 + 32));
    result = swift_endAccess();
    v24 = *(a8 + 16);
    v23 = *(a8 + 24);
    v16 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      if (v16 < 0 && (v25 = __OFSUB__(0, v16), v16 = v24 - v23, v25))
      {
        __break(1u);
      }

      else
      {
        v26 = swift_allocObject();
        v26[2] = v35;
        v26[3] = a3;
        v26[4] = a4;
        v26[5] = a5;
        v26[6] = a6;
        v26[7] = a7;
        v26[8] = a8;

        sub_2662D3E2C(v16, a9, sub_2662D448C, v26);
      }

      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_280F914E8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v27, v16);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06D8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v34 = a7;
    v31 = v30;
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "PSESignalsStitcher#stitch received nil while gathering post engagement signals. Sending back initial raw signal result.", v30, 2u);
    v32 = v31;
    a7 = v34;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  v36 = a4;
  *&v37 = a5;
  *(&v37 + 1) = a6;
  v38 = a7;
  return v35(&v36);
}

uint64_t sub_2662D37FC(uint64_t *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a3;
  v49 = sub_2664DFE38();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v49);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = *a1;
  if (*a1)
  {
    v47 = a2;
    v23 = a1[3];
    *v53 = v22;
    *&v53[8] = *(a1 + 1);
    *&v53[24] = v23;
    swift_beginAccess();
    sub_2662D4340(v53, (a8 + 40));
    swift_endAccess();
    swift_beginAccess();
    v25 = *(a8 + 32);
    v24 = *(a8 + 40);
    *v53 = a4;
    *&v53[8] = a5;
    *&v53[16] = v25;
    *&v53[24] = v24;
    v26 = qword_280F914E8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = v49;
    v28 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v19, v28, v27);
    v29 = *v53;
    v31 = *&v53[16];
    v30 = *&v53[24];

    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136315138;
      v50 = v29;
      *&v51 = v31;
      *(&v51 + 1) = v30;

      v36 = sub_2664E0318();
      v38 = sub_2662A320C(v36, v37, &v52);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26629C000, v32, v33, "PSESignalsStitcher#stitch gathered signal with value %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      (*(v15 + 8))(v19, v49);
    }

    else
    {

      (*(v15 + 8))(v19, v27);
    }

    swift_beginAccess();
    v50 = *v53;
    v51 = *&v53[16];
    v47(&v50);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = v49;
    v40 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v21, v40, v39);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "PSESignalsStitcher#stitch received nil while gathering post engagement signals. Sending back initial raw signal result.", v43, 2u);
      v44 = v43;
      v39 = v49;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v15 + 8))(v21, v39);
    *v53 = a4;
    *&v53[8] = a5;
    *&v53[16] = a6;
    *&v53[24] = a7;
    return (a2)(v53);
  }
}

uint64_t sub_2662D3CDC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072548, &qword_2664E39B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2664E36F0;
  *(v6 + 32) = type metadata accessor for NowPlayingAppSignal();
  *(v6 + 40) = &off_2877EBA08;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_266447850(a1, v6, 0, 0, sub_2662D4304, v7);
}

uint64_t PSESignalsStitcher.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PSESignalsStitcher.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2662D3E2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v33 = a1;
  v34 = a3;
  v4 = sub_2664E0038();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E0018();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2664E00E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v32 - v23;
  if (qword_280071A80 != -1)
  {
    swift_once();
  }

  v32[1] = qword_280072540;
  sub_2664E00C8();
  *v16 = v33;
  (*(v13 + 104))(v16, *MEMORY[0x277D85188], v12);
  MEMORY[0x266783140](v22, v16);
  (*(v13 + 8))(v16, v12);
  v25 = *(v18 + 8);
  v25(v22, v17);
  v26 = swift_allocObject();
  v27 = v34;
  v28 = v35;
  v26[2] = v35;
  v26[3] = v27;
  v26[4] = v36;
  aBlock[4] = sub_2662D42F8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_2;
  v29 = _Block_copy(aBlock);
  v30 = v28;

  sub_2664E0068();
  v40 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x2667837B0](v24, v11, v7, v29);
  _Block_release(v29);
  (*(v39 + 8))(v7, v4);
  (*(v37 + 8))(v11, v38);
  v25(v24, v17);
}

uint64_t sub_2662D4304(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t sub_2662D4340(uint64_t result, void **a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_2662A5550(v5, &v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      v6 = type metadata accessor for NowPlayingAppSignal();
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_266384800(0, v7[2] + 1, 1, v7);
        }

        v9 = v7[2];
        v8 = v7[3];
        if (v9 >= v8 >> 1)
        {
          v7 = sub_266384800((v8 > 1), v9 + 1, 1, v7);
        }

        v12 = v6;
        v13 = &off_2877EBA08;
        *&v11 = v10;
        v7[2] = v9 + 1;
        result = sub_2662A8618(&v11, &v7[5 * v9 + 4]);
        *a2 = v7;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2662D44A0(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "Int64: doing the crazy to unwrap Int64 as UInt64...", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *swift_slowAlloc() = a1;
  MEMORY[0x266784AD0]();
  return a1;
}

unint64_t sub_2662D4690@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2662DADE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SiriAudioAppPredictorResult.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_requestId);
  v2 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_requestId + 8);

  return v1;
}

uint64_t SiriAudioAppPredictorResult.selectedBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier + 8);

  return v1;
}

id SiriAudioAppPredictorResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAudioAppPredictorResult.__allocating_init(requestId:selectedBundleIdentifier:disambiguateBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SiriAudioAppPredictorResult.init(requestId:selectedBundleIdentifier:disambiguateBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v5[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&v5[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for SiriAudioAppPredictorResult();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2662D4BF0()
{
  v1 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2662D4C88(char a1)
{
  v3 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SiriAudioAppPredictorOptions.init()()
{
  v0[OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAudioAppPredictorOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2662D4DE0()
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
  sub_2664E0078();
  v12[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230]);
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001DLL, 0x80000002664F4110, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F912B0 = v10;
  return result;
}

id SiriAudioAppPredictor.init(caller:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v55 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v12 = v5[2];
  v52 = v5 + 2;
  v53 = v11;
  v51 = v12;
  v12(v10, v11, v4);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_26629C000, v13, v14, "SiriAudioAppPredictor#init for caller: %{public}ld...", v15, 0xCu);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v17 = v5[1];
  v16 = v5 + 1;
  v50 = v17;
  v17(v10, v4);
  if (a1 != 6)
  {
    byte_28007CCC8 = 1;
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  v18 = *__swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662D9E08();
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  sub_2662A5550(qword_280F91C10, v76);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v54 = a1;
  v78[0] = qword_280F905C8;
  *(v78 + 5) = *(&qword_280F905C8 + 5);
  v49 = type metadata accessor for SelfEmitter();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  v56 = v16;
  v57 = v4;
  v58 = v2;
  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v75);
  *(&v72 + 1) = &type metadata for DeviceProvider;
  *&v73[0] = &protocol witness table for DeviceProvider;
  sub_266406880(&v71);
  *&v74 = &type metadata for FeatureFlagProvider;
  *(&v74 + 1) = &protocol witness table for FeatureFlagProvider;
  sub_266389EC0(v73 + 8);
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v19 = qword_280F8F808;
  v48[0] = qword_280F8F808;
  v20 = type metadata accessor for CompanionDeviceProvider();
  v21 = swift_allocObject();
  v21[5] = type metadata accessor for MultiUserConnectionProvider();
  v21[6] = &protocol witness table for MultiUserConnectionProvider;
  v21[2] = v19;
  v69 = v20;
  v70 = &protocol witness table for CompanionDeviceProvider;
  *&v68 = v21;
  v22 = v77;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v48[1] = v48;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v66 = &type metadata for InstalledAppProvider;
  v67 = &protocol witness table for InstalledAppProvider;
  *&v65 = swift_allocObject();
  sub_2662B8E78(&qword_280F90278, v65 + 16);
  v64[3] = &type metadata for AppSelectionConfigurationProvider;
  v64[4] = &off_2877EDBD8;
  v63 = &protocol witness table for FeatureFlagProvider;
  v64[0] = v28;
  v62 = &type metadata for FeatureFlagProvider;
  *&v61 = v78[0];
  *(&v61 + 5) = *(v78 + 5);
  v60[3] = &type metadata for CoreAnalyticsLogger;
  v60[4] = &off_2877F2F78;
  v29 = type metadata accessor for PlayMediaAppSelector();
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v64, &type metadata for AppSelectionConfigurationProvider);
  v32 = *(qword_2877EDBB8 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  __swift_mutable_project_boxed_opaque_existential_1(v60, &type metadata for CoreAnalyticsLogger);
  v36 = *v34;
  *(v30 + 80) = &type metadata for AppSelectionConfigurationProvider;
  *(v30 + 88) = &off_2877EDBD8;
  *(v30 + 56) = v36;
  *(v30 + 160) = &type metadata for CoreAnalyticsLogger;
  *(v30 + 168) = &off_2877F2F78;
  sub_2662A8618(&v65, v30 + 16);
  sub_2662A8618(&v61, v30 + 96);
  *(v30 + 176) = v49;
  *(v30 + 184) = &protocol witness table for SelfEmitter;
  sub_2662A8618(v75, v30 + 192);
  v37 = v71;
  *(v30 + 248) = v72;
  v38 = v73[1];
  *(v30 + 264) = v73[0];
  *(v30 + 280) = v38;
  *(v30 + 296) = v74;
  *(v30 + 232) = v37;
  sub_2662A8618(&v68, v30 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  v40 = v57;
  v39 = v58;
  v41 = &v58[OBJC_IVAR___SAAudioAppPredictor_selector];
  v41[3] = v29;
  v41[4] = &protocol witness table for PlayMediaAppSelector;
  *v41 = v30;
  v42 = v55;
  *&v39[OBJC_IVAR___SAAudioAppPredictor_caller] = v54;
  v51(v42, v53, v40);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_26629C000, v43, v44, "SiriAudioAppPredictor#init complete.", v45, 2u);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v50(v42, v40);
  v46 = type metadata accessor for SiriAudioAppPredictor();
  v59.receiver = v39;
  v59.super_class = v46;
  return objc_msgSendSuper2(&v59, sel_init);
}

uint64_t sub_2662D57FC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v43 = sub_2664DFE08();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v43);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = v2;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v4;
    v19 = a1;
    v20 = v18;
    *v18 = 134349056;
    *(v18 + 4) = *(v15 + OBJC_IVAR___SAAudioAppPredictor_caller);

    _os_log_impl(&dword_26629C000, v16, v17, "SiriAudioAppPredictor#warm for caller: %{public}ld...", v20, 0xCu);
    v21 = v20;
    a1 = v19;
    v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = v40;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  (*(v10 + 8))(v13, v9);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v41;
  v40 = *(&v15->isa + OBJC_IVAR___SAAudioAppPredictor_caller);
  v23 = qword_280F91508;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  v25 = v42;
  sub_2664DFDE8();
  v26 = v43;
  (*(v4 + 16))(v7, v25, v43);
  v27 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v28 = (v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = "appPredictorWarm";
  *(v29 + 24) = 16;
  *(v29 + 32) = 2;
  (*(v4 + 32))(v29 + v27, v7, v26);
  v30 = (v29 + v28);
  *v30 = sub_2662DAE64;
  v30[1] = v22;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D83B88];
  *(v31 + 16) = xmmword_2664E36F0;
  v33 = MEMORY[0x277D83C10];
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  v34 = v40;
  *(v31 + 32) = v40;
  sub_2664DFDC8();

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2662D3010;
  *(v35 + 24) = v29;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2662DAE90;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2662DAECC;
  *(v37 + 24) = v36;

  _s16SiriAudioSupport20PlayMediaAppSelectorC4warm6caller10completionyAA0abF15PredictorCallerO_ySbctFZ_0(v34, sub_2662DAF04, v37);

  return (*(v4 + 8))(v25, v26);
}

uint64_t sub_2662D5DB4(char a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v10, v11, "SiriAudioAppPredictor#warm complete. Success?:%{BOOL}d", v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1 & 1);
}

uint64_t sub_2662D6024(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v42 = a2;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E0038();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E00B8();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (swift_beginAccess(), (v21 = *(a1 + 184)) != 0))
  {
    v22 = qword_280F90D30;

    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v36[1] = qword_280F90D38;
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a4;
    v25 = v42;
    v24[4] = v38;
    v24[5] = v25;
    v24[6] = a3;
    v47 = sub_2662DBFE8;
    v48 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v36[4] = &v45;
    v45 = sub_2662A3F90;
    v46 = &block_descriptor_80;
    v26 = _Block_copy(&aBlock);
    v37 = v23;

    sub_2664E0068();
    v49 = MEMORY[0x277D84F90];
    v38 = sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    v36[2] = sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v20, v16, v26);
    _Block_release(v26);
    v41 = *(v41 + 8);
    (v41)(v16, v13);
    v27 = v40;
    v39 = *(v39 + 8);
    (v39)(v20, v40);

    v28 = swift_allocObject();
    *(v28 + 16) = v42;
    *(v28 + 24) = a3;
    v47 = sub_2662DBFF8;
    v48 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2662A3F90;
    v46 = &block_descriptor_86;
    v29 = _Block_copy(&aBlock);

    sub_2664E0068();
    v49 = MEMORY[0x277D84F90];
    sub_2664E0A08();
    MEMORY[0x266783800](0, v20, v16, v29);
    _Block_release(v29);

    (v41)(v16, v13);
    (v39)(v20, v27);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v31, v8);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_2662A320C(v42, a3, &v49);
      _os_log_impl(&dword_26629C000, v32, v33, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] unexpected error loading context (or context-intent) for request. Not donating interaction or recording", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_2662D666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:a1 response:0];
  v10 = sub_2664E02A8();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_2662DC040;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2663CE9D8;
  v13[3] = &block_descriptor_92;
  v12 = _Block_copy(v13);

  [v9 _donateInteractionWithBundleId_completion_];
  _Block_release(v12);
}

uint64_t sub_2662D67AC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  if (a1)
  {
    v40 = a4;
    v18 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v17, v19, v10);
    v20 = a1;

    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = a2;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v10;
      v26 = v25;
      v42 = v25;
      *v24 = 136446722;
      *(v24 + 4) = sub_2662A320C(v23, a3, &v42);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_2662A320C(v40, a5, &v42);
      *(v24 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_2664E0DE8();
      v29 = sub_2662A320C(v27, v28, &v42);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_26629C000, v21, v22, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] failed to donate interaction for bundle: %{public}s: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);

      return (*(v11 + 8))(v17, v41);
    }

    v38 = *(v11 + 8);
    v39 = v17;
  }

  else
  {
    v31 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v32, v10);

    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v41 = v10;
      v36 = v35;
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_2662A320C(v31, a3, &v42);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_2662A320C(a4, a5, &v42);
      _os_log_impl(&dword_26629C000, v33, v34, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] successfully donated interaction for bundle: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);

      return (*(v11 + 8))(v15, v41);
    }

    v38 = *(v11 + 8);
    v39 = v15;
  }

  return v38(v39, v10);
}

uint64_t sub_2662D6C54(uint64_t a1, unint64_t a2)
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
  v11 = sub_2664E06D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(a1, a2, &v15);
    _os_log_impl(&dword_26629C000, v10, v11, "SiriAudioAppPredictor#disambiguationSelected [%{public}s] training records not implemented", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_2662D6EF8(void (*a1)(void), uint64_t a2, char *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v91 = a6;
  v92 = a7;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v98 = a1;
  v99 = a2;
  v7 = sub_2664DFE08();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v10;
  MEMORY[0x28223BE20](v9);
  v90 = &v84 - v11;
  v100 = sub_2664DFE38();
  v97 = *(v100 - 8);
  v12 = *(v97 + 64);
  v13 = MEMORY[0x28223BE20](v100);
  v95 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - v15;
  v17 = sub_2664DE4A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16SiriAudioSupport19AppSelectionContextC9removeAllyyFZ_0();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  sub_2664DE498();
  v22 = sub_2664DE458();
  v24 = v23;
  v25 = *(v18 + 8);
  v25(v21, v17);
  v104 = &type metadata for SiriAudioAppPredictor.AppPredictorInternalExecutorProvider;
  v105 = &off_2877E6EF8;
  *&v103 = v22;
  *(&v103 + 1) = v24;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(qword_280F90B28);
  sub_2662A8618(&v103, qword_280F90B28);
  swift_endAccess();
  v27 = qword_280F90B40;
  v26 = unk_280F90B48;
  v28 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32);
  v96 = (*(v26 + 16))(v27, v26);
  v34 = v33;
  (*(v29 + 8))(v32, v27);
  if (v34)
  {
    v35 = v34;
    v36 = v97;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v100;
    v38 = __swift_project_value_buffer(v100, qword_280F914F0);
    swift_beginAccess();
    v39 = v95;
    (*(v36 + 16))(v95, v38, v37);
    v40 = v85;

    v41 = v86;
    v42 = v87;
    v43 = sub_2664DFE18();
    v44 = sub_2664E06E8();

    v45 = os_log_type_enabled(v43, v44);
    p_class_meths = &OBJC_PROTOCOL___NSSecureCoding.class_meths;
    v87 = v42;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = v40;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v102 = v50;
      *v47 = 136446978;
      *(v47 + 4) = sub_2662A320C(v96, v35, &v102);
      *(v47 + 12) = 2050;
      *(v47 + 14) = *&v48[OBJC_IVAR___SAAudioAppPredictor_caller];

      *(v47 + 22) = 2114;
      *(v47 + 24) = v41;
      *(v47 + 32) = 2114;
      *(v47 + 34) = v42;
      *v49 = v41;
      v49[1] = v42;
      v51 = v41;
      v52 = v42;
      _os_log_impl(&dword_26629C000, v43, v44, "SiriAudioAppPredictor#predict [%{public}s] for caller: %{public}ld search:%{public}@, options:%{public}@...", v47, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
      swift_arrayDestroy();
      v53 = v49;
      v40 = v48;
      MEMORY[0x266784AD0](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      v54 = v47;
      p_class_meths = (&OBJC_PROTOCOL___NSSecureCoding + 32);
      MEMORY[0x266784AD0](v54, -1, -1);

      (*(v36 + 8))(v95, v100);
    }

    else
    {

      (*(v36 + 8))(v39, v37);
    }

    v85 = v40;
    v100 = v35;
    v69 = swift_allocObject();
    *(v69 + 16) = v98;
    *(v69 + 24) = v99;
    v98 = *(p_class_meths[176] + v40);
    v70 = qword_280F91508;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = qword_280F91D48;
    v72 = v90;
    sub_2664DFDE8();
    v73 = v93;
    v74 = v94;
    v75 = v89;
    (*(v93 + 16))(v89, v72, v94);
    v76 = (*(v73 + 80) + 33) & ~*(v73 + 80);
    v77 = (v88 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = "appPredictorPredict";
    *(v78 + 24) = 19;
    *(v78 + 32) = 2;
    (*(v73 + 32))(v78 + v76, v75, v74);
    v79 = (v78 + v77);
    *v79 = sub_2662DBE30;
    v79[1] = v69;

    sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v80 = swift_allocObject();
    v81 = MEMORY[0x277D83B88];
    *(v80 + 16) = xmmword_2664E36F0;
    v82 = MEMORY[0x277D83C10];
    *(v80 + 56) = v81;
    *(v80 + 64) = v82;
    *(v80 + 32) = v98;
    sub_2664DFDC8();

    v83 = swift_allocObject();
    *(v83 + 16) = sub_2662C0D38;
    *(v83 + 24) = v78;

    sub_2662D792C(sub_2662C0DE0, v83, v85, v91, v96, v100, v87, v92);

    (*(v73 + 8))(v72, v74);
  }

  else
  {
    v55 = v97;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v56 = v100;
    v57 = __swift_project_value_buffer(v100, qword_280F914F0);
    swift_beginAccess();
    (*(v55 + 16))(v16, v57, v56);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SiriAudioAppPredictor#predict unexpected nil request id", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    (*(v55 + 8))(v16, v56);
    sub_2664DE498();
    v61 = sub_2664DE458();
    v63 = v62;
    v25(v21, v17);
    v64 = type metadata accessor for SiriAudioAppPredictorResult();
    v65 = objc_allocWithZone(v64);
    v66 = &v65[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v66 = v61;
    v66[1] = v63;
    v67 = &v65[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v67 = 0;
    *(v67 + 1) = 0;
    *&v65[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v101.receiver = v65;
    v101.super_class = v64;
    v68 = objc_msgSendSuper2(&v101, sel_init);
    v98();
  }
}

uint64_t sub_2662D792C(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *&a3[OBJC_IVAR___SAAudioAppPredictor_selector + 24];
  v17 = *&a3[OBJC_IVAR___SAAudioAppPredictor_selector + 32];
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR___SAAudioAppPredictor_selector], v16);
  v23 = *&a3[OBJC_IVAR___SAAudioAppPredictor_caller];
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = sub_2662C0CAC;
  v18[5] = v15;
  v18[6] = a3;
  v18[7] = a7;
  v18[8] = a4;
  v18[9] = a8;
  v19 = *(v17 + 16);

  v20 = a3;
  v21 = a7;
  v19(a4, v23, sub_2662DBE5C, v18, v16, v17);
}

void sub_2662D7A78(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v64 = a8;
  v56 = a6;
  v57 = a7;
  v59 = a4;
  v60 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = *(a1 + 8);
  v63 = *a1;
  v58 = *(a1 + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v53 = v13[2];
  v54 = v20;
  v53(v18, v20, v12);
  swift_bridgeObjectRetain_n();

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v12;
  v61 = a2;
  v62 = a3;
  if (v23)
  {
    v25 = swift_slowAlloc();
    v52 = v12;
    v26 = v25;
    v27 = swift_slowAlloc();
    v66 = v27;
    *v26 = 136446722;
    *(v26 + 4) = sub_2662A320C(a2, a3, &v66);
    *(v26 + 12) = 2082;
    v65[0] = v63;
    v65[1] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v28 = sub_2664E0318();
    v30 = sub_2662A320C(v28, v29, &v66);

    *(v26 + 14) = v30;
    *(v26 + 22) = 1024;

    *(v26 + 24) = v58;

    _os_log_impl(&dword_26629C000, v21, v22, "SiriAudioAppPredictor#predict [%{public}s] complete. bundleIdentifier:%{public}s, attempted?:%{BOOL}d", v26, 0x1Cu);
    swift_arrayDestroy();
    v31 = v64;
    MEMORY[0x266784AD0](v27, -1, -1);
    v32 = v26;
    v24 = v52;
    MEMORY[0x266784AD0](v32, -1, -1);

    v33 = v13[1];
    v33(v18, v24);
    if (v19)
    {
LABEL_5:
      sub_2662DB1B4(v63, v19, v31, v61, v62, v59, v60);
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v33 = v13[1];
    v33(v18, v12);
    v31 = v64;
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v63 = a9;
  v34 = v55;
  v53(v55, v54, v24);
  v35 = v62;

  v36 = sub_2664DFE18();
  v37 = v24;
  v38 = sub_2664E06C8();

  v39 = os_log_type_enabled(v36, v38);
  v40 = v61;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v65[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_2662A320C(v40, v35, v65);
    _os_log_impl(&dword_26629C000, v36, v38, "SiriAudioAppPredictor#predict [%{public}s] getting apps for disambiguation...", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);
  }

  v33(v34, v37);
  type metadata accessor for AppSelectionContext();
  v43 = swift_allocObject();
  v43[2] = v40;
  v43[3] = v35;
  v44 = v60;
  v43[4] = v59;
  v43[5] = v44;
  v46 = v56;
  v45 = v57;
  v43[6] = v56;
  v43[7] = v45;
  v47 = v63;
  v48 = v64;
  v43[8] = v64;
  v43[9] = v47;

  v49 = v46;
  v50 = v45;
  v51 = v48;
  static AppSelectionContext.shared(refId:completion:)(v40, v35, sub_2662DBEE8, v43);
}

void sub_2662D7F64(uint64_t a1, unint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v98 = a6;
  v99 = a4;
  v100 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  if (!a1)
  {
LABEL_18:
    v61 = a2;
    if (qword_280F914E8 == -1)
    {
LABEL_19:
      v62 = __swift_project_value_buffer(v14, qword_280F914F0);
      swift_beginAccess();
      (v15[2])(v19, v62, v14);
      v63 = v100;

      v64 = sub_2664DFE18();
      v65 = sub_2664E06D8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v98 = v14;
        v68 = v15;
        v69 = v67;
        *&v127[0] = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_2662A320C(v61, v63, v127);
        _os_log_impl(&dword_26629C000, v64, v65, "SiriAudioAppPredictor#predict [%{public}s] error bundle confidences from request context", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x266784AD0](v69, -1, -1);
        MEMORY[0x266784AD0](v66, -1, -1);

        (v68[1])(v19, v98);
      }

      else
      {

        (v15[1])(v19, v14);
      }

      v70 = type metadata accessor for SiriAudioAppPredictorResult();
      v71 = objc_allocWithZone(v70);
      v72 = &v71[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
      *v72 = v61;
      v72[1] = v63;
      v73 = &v71[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
      *v73 = 0;
      *(v73 + 1) = 0;
      *&v71[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
      v131.receiver = v71;
      v131.super_class = v70;

      v46 = objc_msgSendSuper2(&v131, sel_init);
LABEL_23:
      v99();

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_19;
  }

  v96 = a7;
  swift_beginAccess();
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 128);
  v128 = *(a1 + 144);
  v127[6] = v23;
  v127[7] = v24;
  v127[5] = v22;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v27 = *(a1 + 80);
  v127[3] = *(a1 + 64);
  v127[4] = v27;
  v127[1] = v25;
  v127[2] = v26;
  v127[0] = *(a1 + 16);
  v28 = *(a1 + 96);
  v107 = *(a1 + 80);
  v108 = v28;
  v29 = *(a1 + 128);
  v109[0] = *(a1 + 112);
  v109[1] = v29;
  v30 = *(a1 + 32);
  v103 = *(a1 + 16);
  v104 = v30;
  v31 = *(a1 + 64);
  v105 = *(a1 + 48);
  v106 = v31;
  v32 = v128;
  memmove(__dst, (a1 + 16), 0x80uLL);
  v130 = v32;
  if (sub_2662DBF1C(__dst) == 1)
  {
    v97 = a2;
    v124 = v107;
    v125 = v108;
    v126[0] = v109[0];
    v126[1] = v109[1];
    v120 = v103;
    v121 = v104;
    v122 = v105;
    v123 = v106;
    *&v126[2] = v32;
    sub_2662DBF34(v127, v118);
    sub_2662A9238(&v120, &qword_280072590, &qword_2664E3B48);
  }

  else
  {
    v124 = v107;
    v125 = v108;
    v126[0] = v109[0];
    v126[1] = v109[1];
    v120 = v103;
    v121 = v104;
    v122 = v105;
    v123 = v106;
    *&v126[2] = v32;
    sub_2662DBF34(v127, v118);

    sub_2662A9238(&v120, &qword_280072590, &qword_2664E3B48);
    if (v32)
    {
      v33 = v15;
      v95 = a5;
      v34 = a2;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v14, qword_280F914F0);
      swift_beginAccess();
      (v33[2])(v21, v35, v14);
      v36 = v100;

      v37 = sub_2664DFE18();
      v38 = sub_2664E06C8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v102[0] = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_2662A320C(v34, v100, v102);
        _os_log_impl(&dword_26629C000, v37, v38, "SiriAudioAppPredictor#predict [%{public}s] with diamabiguation", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x266784AD0](v40, -1, -1);
        v41 = v39;
        v36 = v100;
        MEMORY[0x266784AD0](v41, -1, -1);
      }

      (v33[1])(v21, v14);
      v42 = type metadata accessor for SiriAudioAppPredictorResult();
      v43 = objc_allocWithZone(v42);
      v44 = &v43[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
      *v44 = v34;
      v44[1] = v36;
      v45 = &v43[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
      *v45 = 0;
      *(v45 + 1) = 0;
      *&v43[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = v32;
      v101.receiver = v43;
      v101.super_class = v42;

      v46 = objc_msgSendSuper2(&v101, sel_init);
      goto LABEL_23;
    }

    v97 = a2;
  }

  swift_beginAccess();
  v47 = *(a1 + 32);
  v48 = *(a1 + 48);
  v49 = *(a1 + 80);
  v118[3] = *(a1 + 64);
  v118[4] = v49;
  v50 = *(a1 + 96);
  v51 = *(a1 + 112);
  v52 = *(a1 + 128);
  v119 = *(a1 + 144);
  v118[6] = v51;
  v118[7] = v52;
  v118[5] = v50;
  v118[1] = v47;
  v118[2] = v48;
  v53 = *(a1 + 16);
  v54 = *(a1 + 64);
  v114 = *(a1 + 48);
  v115 = v54;
  v55 = *(a1 + 96);
  v116 = *(a1 + 80);
  v117 = v55;
  v118[0] = v53;
  v56 = *(a1 + 32);
  v112 = *(a1 + 16);
  v113 = v56;
  v57 = v51;
  v58 = *(a1 + 136);
  v110 = *(a1 + 120);
  v111 = v58;
  memmove(&v120, (a1 + 16), 0x60uLL);
  *&v126[0] = v57;
  v59 = *(a1 + 120);
  *(&v126[1] + 8) = *(a1 + 136);
  *(v126 + 8) = v59;
  if (sub_2662DBF1C(&v120) == 1)
  {
    v105 = v114;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v103 = v112;
    v104 = v113;
    *(v109 + 8) = v110;
    *&v109[0] = v57;
    *(&v109[1] + 8) = v111;
    sub_2662DBF34(v118, v102);
    sub_2662A9238(&v103, &qword_280072590, &qword_2664E3B48);
LABEL_17:
    a2 = v97;
    goto LABEL_18;
  }

  v105 = v114;
  v106 = v115;
  v107 = v116;
  v108 = v117;
  v103 = v112;
  v104 = v113;
  *(v109 + 8) = v110;
  *&v109[0] = v57;
  *(&v109[1] + 8) = v111;
  sub_2662DBF34(v118, v102);

  sub_2662A9238(&v103, &qword_280072590, &qword_2664E3B48);
  if (!v57)
  {
    goto LABEL_17;
  }

  v60 = *(v57 + 16);
  v94 = v57;
  v95 = a5;
  if (v60)
  {
    v14 = sub_26640C8A4(v60, 0);
    v93 = sub_26640CC9C(v102, v14 + 4, v60, v57);
    v19 = v102[0];
    v15 = v102[3];

    sub_2662B793C();
    if (v93 != v60)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v102[0] = v14;
  sub_2662DA3AC(v102);
  v93 = a8;
  v14 = v102[0];
  v74 = v102[0][2];
  if (v74)
  {
    v61 = 0;
    v15 = v102[0] + 5;
    v75 = MEMORY[0x277D84F90];
    while (v61 < v14[2])
    {
      v76 = *(v15 - 1);
      v77 = *v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_2663846F4(0, *(v75 + 2) + 1, 1, v75);
      }

      v79 = *(v75 + 2);
      v78 = *(v75 + 3);
      v19 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v75 = sub_2663846F4((v78 > 1), v79 + 1, 1, v75);
      }

      ++v61;
      *(v75 + 2) = v19;
      v80 = &v75[16 * v79];
      *(v80 + 4) = v76;
      *(v80 + 5) = v77;
      v15 += 3;
      if (v74 == v61)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v75 = MEMORY[0x277D84F90];
LABEL_35:
  v81 = swift_allocObject();

  *(v81 + 16) = v75;
  v82 = *(v98 + OBJC_IVAR___SAAudioAppPredictor_selector + 24);
  v83 = *(v98 + OBJC_IVAR___SAAudioAppPredictor_selector + 32);
  v98 = __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR___SAAudioAppPredictor_selector), v82);
  v84 = swift_allocObject();
  v86 = v96;
  v85 = v97;
  v84[2] = v96;
  v84[3] = v85;
  v88 = v93;
  v87 = v94;
  v84[4] = v100;
  v84[5] = v87;
  v89 = v99;
  v84[6] = v88;
  v84[7] = v89;
  v84[8] = v95;
  v84[9] = v81;
  v84[10] = a9;
  v90 = *(v83 + 32);

  v91 = v86;
  v92 = v88;

  v90(sub_2662DBFA4, v84, v82, v83);
}

void sub_2662D8900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v112 = a8;
  v108 = a6;
  v114 = a5;
  v14 = a9;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 1);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v113 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v103 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v103 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v103 - v24;
  v26 = *(a1 + 24);
  v27 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  swift_beginAccess();
  v28 = *(a2 + v27) == 1;
  v111 = a7;
  if (v28)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v30 = v16[2];
    v107 = v29;
    v106 = (v16 + 2);
    v105 = v30;
    (v30)(v25, v29, v15);

    v31 = v114;

    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();

    LODWORD(v104) = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v117[0] = v103;
      *v34 = 136446722;
      *(v34 + 4) = sub_2662A320C(a3, a4, v117);
      *(v34 + 12) = 2048;
      *(v34 + 14) = v26;
      *(v34 + 22) = 2082;
      v35 = sub_2664E01D8();
      v37 = v16;
      v38 = v15;
      v39 = a3;
      v40 = a4;
      v41 = sub_2662A320C(v35, v36, v117);
      v31 = v114;

      *(v34 + 24) = v41;
      a4 = v40;
      a3 = v39;
      v15 = v38;
      v16 = v37;
      _os_log_impl(&dword_26629C000, v32, v104, "SiriAudioAppPredictor#predict [%{public}s] trimming disambiguation. Threshold:%f for bundle confidences: %{public}s", v34, 0x20u);
      v42 = v103;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v104 = v16[1];
    v104(v25, v15);
    v43 = _s16SiriAudioSupport13ThresholdTrimV4trim17bundleConfidences9thresholdSaySSGSDySSSdG_SdtFZ_0(v31, v26);
    v44 = v43;
    v45 = v43[2];
    if (v45)
    {
      if (v45 == 1)
      {
        v47 = v43[4];
        v46 = v43[5];

        v48 = v109;
        (v105)(v109, v107, v15);

        v49 = sub_2664DFE18();
        v50 = sub_2664E06E8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = v15;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v114 = v16;
          v54 = a4;
          v55 = v53;
          v117[0] = v53;
          *v52 = 136446466;
          *(v52 + 4) = sub_2662A320C(a3, v54, v117);
          *(v52 + 12) = 2082;
          *(v52 + 14) = sub_2662A320C(v47, v46, v117);
          _os_log_impl(&dword_26629C000, v49, v50, "SiriAudioAppPredictor#predict [%{public}s] trimmed disambiguation to single bundle: %{public}s, selecting...", v52, 0x16u);
          swift_arrayDestroy();
          v56 = v55;
          a4 = v54;
          MEMORY[0x266784AD0](v56, -1, -1);
          MEMORY[0x266784AD0](v52, -1, -1);

          v57 = v109;
          v58 = v51;
        }

        else
        {

          v57 = v48;
          v58 = v15;
        }

        v104(v57, v58);
        sub_2662DB1B4(v47, v46, v108, a3, a4, v111, v112);

        return;
      }

      v59 = v110;
      (v105)(v110, v107, v15);

      v60 = sub_2664DFE18();
      v61 = sub_2664E06E8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v108 = v15;
        v63 = v62;
        v106 = swift_slowAlloc();
        v117[0] = v106;
        *v63 = 136446722;
        *(v63 + 4) = sub_2662A320C(a3, a4, v117);
        *(v63 + 12) = 2080;
        swift_beginAccess();
        v105 = v60;
        v64 = *(a9 + 16);

        v109 = a4;
        v66 = MEMORY[0x2667834D0](v65, MEMORY[0x277D837D0]);
        LODWORD(v103) = v61;
        v67 = v66;
        v107 = a9;
        v69 = v68;

        v70 = sub_2662A320C(v67, v69, v117);
        v14 = v107;

        *(v63 + 14) = v70;
        *(v63 + 22) = 2080;
        v71 = MEMORY[0x2667834D0](v44, MEMORY[0x277D837D0]);
        v73 = sub_2662A320C(v71, v72, v117);

        *(v63 + 24) = v73;
        a4 = v109;
        v74 = v105;
        _os_log_impl(&dword_26629C000, v105, v103, "SiriAudioAppPredictor#predict [%{public}s] replacing disambiguation:%s with trimmed:%s", v63, 0x20u);
        v75 = v106;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v75, -1, -1);
        v76 = v63;
        v15 = v108;
        MEMORY[0x266784AD0](v76, -1, -1);

        v77 = v110;
      }

      else
      {

        v77 = v59;
      }

      v104(v77, v15);
      swift_beginAccess();
      v78 = *(v14 + 16);
      *(v14 + 16) = v44;
    }

    a7 = v111;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v79 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v80 = v113;
  (v16[2])(v113, v79, v15);

  v81 = sub_2664DFE18();
  v82 = sub_2664E06E8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v108 = v15;
    v85 = v84;
    v116[0] = v84;
    *v83 = 136446722;
    *(v83 + 4) = sub_2662A320C(a3, a4, v116);
    *(v83 + 12) = 2082;
    swift_beginAccess();
    v109 = a4;
    v86 = *(v14 + 16);

    v110 = a3;
    v88 = v14;
    v89 = MEMORY[0x2667834D0](v87, MEMORY[0x277D837D0]);
    v91 = v90;

    v92 = v89;
    v14 = v88;
    v93 = sub_2662A320C(v92, v91, v116);

    *(v83 + 14) = v93;
    *(v83 + 22) = 2082;
    v94 = sub_2664E01D8();
    v96 = sub_2662A320C(v94, v95, v116);
    a4 = v109;

    *(v83 + 24) = v96;
    a3 = v110;
    a7 = v111;
    _os_log_impl(&dword_26629C000, v81, v82, "SiriAudioAppPredictor#predict [%{public}s] complete with disambiguation result for bundle identifiers: %{public}s with original confidences: %{public}s", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v85, -1, -1);
    MEMORY[0x266784AD0](v83, -1, -1);

    (v16[1])(v113, v108);
  }

  else
  {

    (v16[1])(v80, v15);
  }

  swift_beginAccess();
  v97 = *(v14 + 16);
  v98 = type metadata accessor for SiriAudioAppPredictorResult();
  v99 = objc_allocWithZone(v98);
  v100 = &v99[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
  *v100 = a3;
  v100[1] = a4;
  v101 = &v99[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
  *v101 = 0;
  *(v101 + 1) = 0;
  *&v99[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = v97;
  v115.receiver = v99;
  v115.super_class = v98;

  v102 = objc_msgSendSuper2(&v115, sel_init);
  a7();
}

uint64_t sub_2662D9470(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  ObjectType = swift_getObjectType();
  v6 = sub_2664E0038();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a1;
    v23 = v13;
    v24 = v9;
    v25 = v6;
    v26 = a2;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "SiriAudioAppPredictor#predict...", v22, 2u);
    v28 = v27;
    a2 = v26;
    v6 = v25;
    v9 = v24;
    v13 = v23;
    a1 = v44;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v29 = a1;
  v30 = sub_2664E06F8();
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v31 = sub_2664E08F8();
  v32 = sub_2664E08F8();
  v33 = [objc_allocWithZone(MEMORY[0x277CD3F10]) initWithAppSelectionEnabled:v31 appInferred:v32 audioSearchResults:0];

  [v30 setPrivatePlayMediaIntentData_];
  v34._object = 0x80000002664F3F30;
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  INIntent.setLaunchId(launchId:caller:)(0, v34);
  if (qword_280F912A8 != -1)
  {
    swift_once();
  }

  v35 = swift_allocObject();
  v36 = v47;
  v35[2] = v46;
  v35[3] = v36;
  v37 = v48;
  v35[4] = v48;
  v35[5] = v29;
  v35[6] = a2;
  v35[7] = v30;
  v35[8] = ObjectType;
  aBlock[4] = sub_2662DB1A0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_3;
  v38 = _Block_copy(aBlock);
  v39 = v29;

  v40 = v37;
  v41 = a2;
  v42 = v30;
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v13, v9, v38);
  _Block_release(v38);

  (*(v51 + 8))(v9, v6);
  (*(v49 + 8))(v13, v50);
}

uint64_t sub_2662D9ADC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriAudioAppPredictor#unsafeReleaseModel Releasing app prediction model", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  v11 = *__swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662D9E08();
  return a1(1);
}

uint64_t sub_2662D9D5C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_2662D9DAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2662D9E08()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v0 + 16);
  sub_2662A98AC();
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
    v29 = v7;
    v12 = v11;
    v13 = swift_slowAlloc();
    *&v31[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], v31);
    _os_log_impl(&dword_26629C000, v9, v10, "AtomicValue#reset [%{public}s] resetting value", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_2662DC04C(v30);
  v14 = &v1[*(*v1 + 112)];
  swift_beginAccess();
  v15 = v14[9];
  v31[8] = v14[8];
  v31[9] = v15;
  v16 = v14[11];
  v31[10] = v14[10];
  v31[11] = v16;
  v17 = v14[5];
  v31[4] = v14[4];
  v31[5] = v17;
  v18 = v14[7];
  v31[6] = v14[6];
  v31[7] = v18;
  v19 = v14[1];
  v31[0] = *v14;
  v31[1] = v19;
  v20 = v14[3];
  v31[2] = v14[2];
  v31[3] = v20;
  v21 = v30[9];
  v22 = v30[10];
  v23 = v30[7];
  v14[8] = v30[8];
  v14[9] = v21;
  v24 = v30[11];
  v14[10] = v22;
  v14[11] = v24;
  v25 = v30[5];
  v14[4] = v30[4];
  v14[5] = v25;
  v14[6] = v30[6];
  v14[7] = v23;
  v26 = v30[1];
  *v14 = v30[0];
  v14[1] = v26;
  v27 = v30[3];
  v14[2] = v30[2];
  v14[3] = v27;
  sub_2662A9238(v31, &qword_280073320, &unk_2664EF750);
  v1[24] = 0;
  return sub_2662AA89C();
}

uint64_t sub_2662DA108()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  sub_2662A98AC();
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
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], v16);
    _os_log_impl(&dword_26629C000, v9, v10, "AtomicValue#reset [%{public}s] resetting value", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = &v1[*(*v1 + 112)];
  swift_beginAccess();
  v14 = v13[2];
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;

  v1[24] = 0;
  return sub_2662AA89C();
}

uint64_t sub_2662DA3AC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2663B88D8(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_2664E0D28();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
      v7 = sub_2664E04F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2662DA51C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2662DA51C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2663B88C4(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2662DAAE0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_266384948(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_266384948((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_2662DAAE0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2662DAAE0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2662DAD1C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

unint64_t sub_2662DADE8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2662DAE64(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2662DAE90(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_2662DAECC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2662DAF0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v24 = a2;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_2662A320C(a3, a4, &v25);
    _os_log_impl(&dword_26629C000, v14, v15, "SiriAudioAppPredictor#disambiguationSelected [%{public}s]...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    v20 = v18;
    a1 = v17;
    a2 = v24;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for AppSelectionContext();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a1;
  v21[5] = a2;

  static AppSelectionContext.shared(refId:completion:)(a3, a4, sub_2662DBFDC, v21);
}

void sub_2662DB1B4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v57 = a7;
  v58 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  if (_s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0())
  {
    v20 = [a3 privatePlayMediaIntentData];
    v56 = a6;
    if (v20 && (v22 = v20, v23 = [v20 audioSearchResults], v22, v23))
    {
      sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
      v24 = sub_2664E04A8();
    }

    else
    {
      v24 = 0;
    }

    v62.value._rawValue = v24;
    v62.is_nil = 0;
    v35 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v62, v21);
    countAndFlagsBits = v35._countAndFlagsBits;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v37, v12);
    v38 = v12;
    v39 = v58;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60 = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_2662A320C(a4, v58, &v60);
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_2662A320C(v35._countAndFlagsBits, v35._object, &v60);
      _os_log_impl(&dword_26629C000, v40, v41, "SiriAudioAppPredictor#finishSelect [%{public}s] complete with updated first party bundle identifier to: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v43, -1, -1);
      v44 = v42;
      countAndFlagsBits = v35._countAndFlagsBits;
      v39 = v58;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v13 + 8))(v19, v38);
    a6 = v56;
    v45 = type metadata accessor for SiriAudioAppPredictorResult();
    v46 = objc_allocWithZone(v45);
    v47 = &v46[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v47 = a4;
    v47[1] = v39;
    v48 = &v46[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v48 = countAndFlagsBits;
    v48[1] = v35._object;
    *&v46[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v59.receiver = v46;
    v59.super_class = v45;

    v49 = objc_msgSendSuper2(&v59, sel_init);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v25, v12);
    v26 = v12;
    v27 = v58;

    v28 = sub_2664DFE18();
    v29 = sub_2664E06E8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v55 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v56 = a6;
      v33 = v32;
      v60 = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_2662A320C(a4, v27, &v60);
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_2662A320C(a1, a2, &v60);
      _os_log_impl(&dword_26629C000, v28, v29, "SiriAudioAppPredictor#finishSelect [%{public}s] complete with selected: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      v34 = v33;
      a6 = v56;
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      (*(v13 + 8))(v17, v55);
    }

    else
    {

      (*(v13 + 8))(v17, v26);
    }

    v50 = type metadata accessor for SiriAudioAppPredictorResult();
    v51 = objc_allocWithZone(v50);
    v52 = &v51[OBJC_IVAR___SAAudioAppPredictorResult_requestId];
    *v52 = a4;
    v52[1] = v27;
    v53 = &v51[OBJC_IVAR___SAAudioAppPredictorResult_selectedBundleIdentifier];
    *v53 = a1;
    v53[1] = a2;
    *&v51[OBJC_IVAR___SAAudioAppPredictorResult_disambiguateBundleIdentifiers] = 0;
    v61.receiver = v51;
    v61.super_class = v50;

    v49 = objc_msgSendSuper2(&v61, sel_init);
  }

  v54 = v49;
  a6();
}

uint64_t _s16SiriAudioSupport0aB12AppPredictorC18unsafeReleaseModel10completionyySbc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_2664E0038();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2664E00B8();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v10;
    v20 = v6;
    v21 = v3;
    v22 = v7;
    v23 = a1;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "SiriAudioAppPredictor#unsafeReleaseModel Queueing app prediction model release", v19, 2u);
    v25 = v24;
    a1 = v23;
    v7 = v22;
    v3 = v21;
    v6 = v20;
    v10 = v30;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (qword_280F912A8 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = a1;
  *(v26 + 24) = v27;
  aBlock[4] = sub_2662DBE28;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_47;
  v28 = _Block_copy(aBlock);

  sub_2664E0068();
  v34 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v10, v6, v28);
  _Block_release(v28);
  (*(v33 + 8))(v6, v3);
  (*(v7 + 8))(v10, v32);
}

unint64_t sub_2662DBBF0()
{
  result = qword_280072588;
  if (!qword_280072588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072588);
  }

  return result;
}

uint64_t sub_2662DBE30(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662DBF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2662DBF34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072590, &qword_2664E3B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_73Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2662DC04C(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2662DC078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2662DC0C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

SiriAudioSupport::MusicSubscriptionStatus_optional __swiftcall MusicSubscriptionStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriAudioSupport::MusicSubscriptionType_optional __swiftcall MusicSubscriptionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2662DC16C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_2662DC1B4()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

SiriAudioSupport::SubscriptionDetails __swiftcall SubscriptionProvider.statusSync(bypassingCache:)(Swift::Bool bypassingCache)
{
  v2 = bypassingCache;
  v3 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v7 = v5;
  SubscriptionProvider.status(bypassingCache:completion:)(v2, sub_2662DC320, v6);

  sub_2664E0878();

  swift_beginAccess();
  *v3 = *(v4 + 16);
}

uint64_t sub_2662DC320(__int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + 16) = v4;
  return sub_2664E0888();
}

uint64_t SubscriptionProvider.token(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "subscriptionProviderToken";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662DE2C8;
  v17[1] = v11;

  sub_2664E0848();
  sub_2664DFDD8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2662DE3C4;
  *(v18 + 24) = v16;

  sub_2662DC63C(sub_2662DE46C, v18);

  return (*(v5 + 8))(v10, v4);
}

void sub_2662DC63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = qword_280F914E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v11, v4);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "SubscriptionProvider#token Requesting Music user token...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = [objc_opt_self() sharedProvider];
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2662DEAB0;
  *(v16 + 24) = v9;
  aBlock[4] = sub_2662DEAB8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_83_0;
  v17 = _Block_copy(aBlock);

  [v15 getTokenForcingRefresh:0 completion:v17];
  _Block_release(v17);
}

uint64_t sub_2662DC8F0(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v50 = a4;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v47 = *(v8 + 16);
  v47(v13, v14, v7);

  v15 = sub_2664DFE18();
  v53 = v8;
  v16 = v15;
  v17 = sub_2664E06C8();

  v18 = os_log_type_enabled(v16, v17);
  v51 = a1;
  v52 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v49 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a3;
    v22 = v21;
    v54 = v21;
    *v20 = 136315138;
    v23 = a2 == 0;
    v24 = a2;
    if (a2)
    {
      v25 = a1;
    }

    else
    {
      v25 = 0x3E6C696E3CLL;
    }

    v26 = v14;
    if (v23)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = v24;
    }

    v28 = sub_2662A320C(v25, v27, &v54);
    v14 = v26;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_26629C000, v16, v17, "SubscriptionProvider#tokenToken received as: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v29 = v22;
    a3 = v46;
    MEMORY[0x266784AD0](v29, -1, -1);
    v30 = v20;
    v7 = v49;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v31 = *(v53 + 8);
  v31(v13, v7);
  if (a3)
  {
    v32 = v48;
    v47(v48, v14, v7);
    v33 = a3;
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v7;
      v38 = v37;
      v54 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v39 = sub_2664E0DE8();
      v41 = a3;
      v42 = sub_2662A320C(v39, v40, &v54);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_26629C000, v34, v35, "SubscriptionProvider#tokenError retrieving token: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);

      v43 = v32;
      v44 = v49;
    }

    else
    {

      v43 = v32;
      v44 = v7;
    }

    v31(v43, v44);
  }

  return v50(v51, v52);
}

uint64_t SubscriptionProvider.updateUserContext(queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
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
  *(v17 + 16) = "subscriptionProviderUpdateUserContext";
  *(v17 + 24) = 37;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_2662D2B60;
  v18[1] = v12;

  sub_2664E0848();
  sub_2664DFDD8();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2662D3010;
  *(v19 + 24) = v17;

  sub_2662DCF9C(sub_2662DAE90, v19, v22);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2662DCF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_2664E0038();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00B8();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v45 = v18;
  v19 = qword_280F914E8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v20, v13);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "SubscriptionProvider#updateUserContext Updating user context", v23, 2u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v60 = sub_2662DEA88;
  v61 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v48 = &v58;
  v58 = sub_2662A3F90;
  v59 = &block_descriptor_4;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v28 = v12;
  sub_2664E0068();
  v55 = MEMORY[0x277D84F90];
  v51 = sub_2662A6120();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v43[1] = sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v12, v8, v26);
  _Block_release(v26);
  v46 = *(v54 + 8);
  v54 += 8;
  v46(v8, v5);
  v29 = *(v52 + 8);
  v52 += 8;
  v49 = v29;
  v29(v12, v53);

  dispatch_group_enter(v27);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v60 = sub_2662DEA90;
  v61 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_2662A3F90;
  v59 = &block_descriptor_59;
  v31 = _Block_copy(&aBlock);
  v32 = v27;
  sub_2664E0068();
  v55 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  MEMORY[0x266783800](0, v12, v8, v31);
  _Block_release(v31);
  v33 = v46;
  v46(v8, v5);
  v49(v28, v53);

  dispatch_group_enter(v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v60 = sub_2662DEA98;
  v61 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_2662A3F90;
  v59 = &block_descriptor_65_1;
  v35 = _Block_copy(&aBlock);
  v44 = v32;
  sub_2664E0068();
  v55 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  MEMORY[0x266783800](0, v28, v8, v35);
  _Block_release(v35);
  v33(v8, v5);
  v36 = v53;
  v37 = v49;
  v49(v28, v53);

  v38 = swift_allocObject();
  v39 = v45;
  *(v38 + 16) = sub_2662D2B74;
  *(v38 + 24) = v39;
  v60 = sub_2662DEAA0;
  v61 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_2662A3F90;
  v59 = &block_descriptor_71_0;
  v40 = _Block_copy(&aBlock);
  sub_2664E0068();
  v55 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v41 = v44;
  sub_2664E0758();
  _Block_release(v40);

  v46(v8, v5);
  v37(v28, v36);
}

uint64_t sub_2662DD754(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  SubscriptionProvider.status(bypassingCache:completion:)(0, sub_2662DEAA8, v2);
}

void sub_2662DD7C8(char *a1, NSObject *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v11 = [objc_opt_self() songsQuery];
  [v11 setEntityLimit_];
  [v11 _countOfItems];
  sub_2664E0828();
  [v10 setSubscriptionStatus_];
  v12 = [objc_opt_self() sharedStore];
  v13 = sub_2664E02A8();
  [v12 storeUserContext:v10 forBundleIdentifier:v13];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v14, v4);
  v15 = v10;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = [v15 subscriptionStatus];
    *(v18 + 12) = 2048;
    v19 = sub_2664E0818();
    if (v20)
    {
      v21 = -1;
    }

    else
    {
      v21 = v19;
    }

    *(v18 + 14) = v21;

    _os_log_impl(&dword_26629C000, v16, v17, "SubscriptionProvider#updateUserContext updated user context for Music. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v18, 0x16u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  (*(v5 + 8))(v8, v4);
  dispatch_group_leave(a2);
}

void sub_2662DDADC(NSObject *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v8 = [objc_opt_self() podcastsQuery];
  [v8 _countOfItems];

  sub_2664E0828();
  [v7 setSubscriptionStatus_];
  v9 = [objc_opt_self() sharedStore];
  v10 = sub_2664E02A8();
  [v9 storeUserContext:v7 forBundleIdentifier:v10];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v11, v2);
  v12 = v7;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = [v12 subscriptionStatus];
    *(v15 + 12) = 2048;
    v16 = sub_2664E0818();
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = v16;
    }

    *(v15 + 14) = v18;

    _os_log_impl(&dword_26629C000, v13, v14, "SubscriptionProvider#updateUserContext updated user context for Podcasts. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v15, 0x16u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  (*(v3 + 8))(v6, v2);
  dispatch_group_leave(a1);
}

void sub_2662DDDCC(NSObject *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CD3DD8]) init];
  v8 = [objc_opt_self() audiobooksQuery];
  [v8 _countOfItems];

  sub_2664E0828();
  [v7 setSubscriptionStatus_];
  v9 = [objc_opt_self() sharedStore];
  v10 = sub_2664E02A8();
  [v9 storeUserContext:v7 forBundleIdentifier:v10];

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v11, v2);
  v12 = v7;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = [v12 subscriptionStatus];
    *(v15 + 12) = 2048;
    v16 = sub_2664E0818();
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = v16;
    }

    *(v15 + 14) = v18;

    _os_log_impl(&dword_26629C000, v13, v14, "SubscriptionProvider#updateUserContext updated user context for Books. subscriptionStatus: %ld, numberOfLibraryItems: %ld", v15, 0x16u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  (*(v3 + 8))(v6, v2);
  dispatch_group_leave(a1);
}

uint64_t sub_2662DE0BC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_26629C000, v8, v9, "SubscriptionProvider#updateUserContext successfully updated media user context", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return a1(1);
}

uint64_t sub_2662DE2C8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_2662DE2F8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

uint64_t sub_2662DE3C4(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662DE2F8(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2662DE46C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

unint64_t sub_2662DE4AC()
{
  result = qword_2800725A0;
  if (!qword_2800725A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725A0);
  }

  return result;
}

unint64_t sub_2662DE504()
{
  result = qword_2800725A8;
  if (!qword_2800725A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicSubscriptionStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicSubscriptionStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MusicSubscriptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicSubscriptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionDetails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for SubscriptionDetails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for SubscriptionProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SubscriptionProvider(_WORD *result, int a2, int a3)
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

SiriAudioSupport::PlaybackRepeatMode_optional __swiftcall PlaybackRepeatMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlaybackRepeatMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 7105633;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6647407;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2662DEC0C()
{
  result = qword_2800725B0;
  if (!qword_2800725B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725B0);
  }

  return result;
}

uint64_t sub_2662DEC60()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662DED34()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_2662DEDF4()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_2662DEED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE300000000000000;
  v6 = 7105633;
  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6647407;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2662DEF64()
{
  result = qword_2800725B8;
  if (!qword_2800725B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800725C0, &qword_2664E3EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackRepeatMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackRepeatMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2662DF128()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v6 == 1)
  {
    LOBYTE(v6) = 0;
    v7 = 3;
  }

  else if (*v0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v5, v8, v1);
    v9 = sub_2664DFE18();
    v10 = sub_2664E06D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26629C000, v9, v10, "DisambiguateItemsReason.asSelfResolutionType: Called with unmapped DisambiguateItemsReason, which is an error", v11, 2u);
      MEMORY[0x266784AD0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7 | (v6 << 32);
}

uint64_t sub_2662DF30C()
{
  if (qword_280F8FA20 != -1)
  {
    swift_once();
  }

  v0 = swift_retain_n();
  v1 = sub_2662DFCF8(v0);

  qword_280F91C78 = v1;
  return result;
}

uint64_t sub_2662DF384(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F914E8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "NowPlayingUsageCache: recomputing bundle affinity", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2662C0CAC;
  *(v18 + 24) = v11;
  v19 = *v17;
  sub_2664C8F4C(sub_2662DFEB4, v18);
}

uint64_t sub_2662DF5C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "NowPlayingUsageCache: done recomputing bundle affinity", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

uint64_t sub_2662DF794(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "NowPlayingUsageCache: retrieving bundle affinity", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 16);

  sub_266310808(0x4014000000000000, 0, v15, a1, a2);
}

uint64_t sub_2662DF980(uint64_t *a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *a1;
  if (v12)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v13, v4);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "NowPlayingUsageCache: retrieved affinity from usage provider", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return (a2)(v12);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v18, v4);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "NowPlayingUsageCache: Unable to get affinity from usage provider", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    sub_266385ABC(MEMORY[0x277D84F90]);
    a2();
  }
}

uint64_t sub_2662DFC9C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2662DFCF8(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingUsageProvider();
  v19[3] = v2;
  v19[4] = &off_2877F4DC8;
  v19[0] = a1;
  type metadata accessor for NowPlayingUsageCache();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v18[3] = v2;
  v18[4] = &off_2877F4DC8;
  v18[0] = v9;
  *(v3 + 24) = 0x4014000000000000;
  sub_2662A5550(v18, v17);
  v10 = swift_allocObject();
  sub_2662A8618(v17, v10 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800725C8, &qword_2664E4088);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2662EDC64(0xD00000000000001DLL, 0x80000002664F4290, sub_2662DFEAC, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  *(v3 + 16) = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v3;
}

uint64_t sub_2662DFEC0()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ALL, 0x80000002664F42E0, 1, v3);
  *(v0 + 16) = result;
  off_2800725D0 = v0;
  return result;
}

uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 1);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  if (qword_280071A88 != -1)
  {
LABEL_20:
    swift_once();
  }

  v45 = v13;
  v49 = off_2800725D0;
  v16 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v47 = v7[2];
  v47(v15, v17, v6);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v17;
    v21 = a1;
    v22 = v7;
    v23 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v20, 2u);
    v24 = v23;
    v7 = v22;
    a1 = v21;
    v17 = v51;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = v7[1];
  v50 = v7 + 1;
  v51 = v6;
  v48 = v25;
  v25(v15, v6);
  v26 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0();
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

      if (sub_2664E03F8())
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

    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315138;
      v41 = sub_2662A320C(v15, a1, &v52);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_26629C000, v37, v38, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
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

    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_2662A320C(a2, a3, &v52);
      _os_log_impl(&dword_26629C000, v30, v31, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v48(v28, v29);
    v34 = 0;
  }

  v42 = v49[2];

  sub_2662AA89C();

  return v34;
}

uint64_t sub_2662E0500(uint64_t a1, unint64_t a2, void *a3)
{
  v55 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v54 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v54[0] = v10;
  v16 = off_2800725D0;
  v17 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v19 = v6[2];
  v57 = v6 + 2;
  v58 = v18;
  v56 = v19;
  v19(v15, v18, v5);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
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
    _os_log_impl(&dword_26629C000, v20, v21, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v28, 2u);
    v29 = v28;
    v6 = v27;
    v13 = v26;
    a2 = v25;
    a1 = v24;
    v5 = v23;
    v16 = v22;
    MEMORY[0x266784AD0](v29, -1, -1);
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
      v40 = sub_2664E02A8();
      [v39 addInternalSignal_];
    }

    v56(v13, v58, v5);

    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = a2;
      v46 = v44;
      v59 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(a1, v45, &v59);
      _os_log_impl(&dword_26629C000, v41, v42, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v31(v13, v5);
    v47 = v16[2];

    sub_2662AA89C();
  }

  else
  {

    v49 = v54[0];
    v56(v54[0], v58, v5);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v31(v49, v5);
    v53 = *(v54[1] + 16);
    return sub_2662AA89C();
  }
}

uint64_t sub_2662E0A3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2662E0B20(v3);
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

uint64_t sub_2662E0B34(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_2800725D0;
  v14 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateAddMediaIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD4378]) init];
      [v26 setPrivateAddMediaIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateAddMediaIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_2664E02A8();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2662A320C(v47, v30, &v50);
      _os_log_impl(&dword_26629C000, v33, v34, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_2662AA89C();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_2662AA89C();
  }
}

uint64_t sub_2662E1094(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_2800725D0;
  v14 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateUpdateMediaAffinityIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD43A0]) init];
      [v26 setPrivateUpdateMediaAffinityIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateUpdateMediaAffinityIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_2664E02A8();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2662A320C(v47, v30, &v50);
      _os_log_impl(&dword_26629C000, v33, v34, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_2662AA89C();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_2662AA89C();
  }
}

uint64_t sub_2662E15F4(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_2800725D0;
  v14 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateSearchForMediaIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD4398]) init];
      [v26 setPrivateSearchForMediaIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateSearchForMediaIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_2664E02A8();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2662A320C(v47, v30, &v50);
      _os_log_impl(&dword_26629C000, v33, v34, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_2662AA89C();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_2662AA89C();
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(uint64_t a1, unint64_t a2, void *a3)
{
  v42 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v39 = v6[2];
  v40 = v12;
  v39(v11, v12, v5);

  v13 = a3;
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

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
    *(v18 + 4) = sub_2662A320C(v42, v17, &v43);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v21 = v13;
    _os_log_impl(&dword_26629C000, v14, v15, "InternalSignalsManager#add signal: %s, to intent: %@...", v18, 0x16u);
    sub_2662E4324(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v22 = v18;
    a2 = v17;
    v5 = v38;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v6[1];
  v23(v11, v5);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    if (qword_280071A88 != -1)
    {
      swift_once();
    }

    return sub_2662E0500(v42, a2, v25);
  }

  else
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      if (qword_280071A88 != -1)
      {
        swift_once();
      }

      return sub_2662E0B34(v42, a2, v28);
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        if (qword_280071A88 != -1)
        {
          swift_once();
        }

        return sub_2662E1094(v42, a2, v30);
      }

      else
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          if (qword_280071A88 != -1)
          {
            swift_once();
          }

          return sub_2662E15F4(v42, a2, v32);
        }

        else
        {
          v33 = v41;
          v39(v41, v40, v5);
          v34 = sub_2664DFE18();
          v35 = sub_2664E06D8();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_26629C000, v34, v35, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v36, 2u);
            MEMORY[0x266784AD0](v36, -1, -1);
          }

          return (v23)(v33, v5);
        }
      }
    }
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  if (qword_280071A88 != -1)
  {
LABEL_19:
    swift_once();
  }

  v52 = v11;
  v56 = off_2800725D0;
  v14 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v54 = v5[2];
  v54(v13, v15, v4);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v58 = v15;
    v19 = a3;
    v20 = v5;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "InternalSignalsManager#getSignal (lock aquired)", v18, 2u);
    v22 = v21;
    v5 = v20;
    a3 = v19;
    v15 = v58;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v57 = v5 + 1;
  v58 = v4;
  v55 = v23;
  v23(v13, v4);
  v24 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0();
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

      if (sub_2664E03F8())
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

    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();

    v38 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_2662A320C(v13, a3, &v59);
      _os_log_impl(&dword_26629C000, v38, v37, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    else
    {
    }

    v55(v35, v34);
    v41 = v56[2];

    sub_2662AA89C();

    v42 = sub_2664E0378();
    v43 = sub_2664ACFCC(v42, v13, a3);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = MEMORY[0x266783360](v43, v45, v47, v49);

    return v50;
  }

  else
  {
LABEL_11:

    v26 = v53;
    v27 = v58;
    v54(v53, v15, v58);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "InternalSignalsManager#getSignal could not find signal. (unlock)", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v55(v26, v27);
    v31 = v56[2];

    sub_2662AA89C();

    return 0;
  }
}

uint64_t sub_2662E2594(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v61 = off_2800725D0;
  v15 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privatePlayMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_2664E04A8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2664E0D88();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privatePlayMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_2664E04A8();

              v63 = v48;
              sub_2662E0A3C(v36);

              if (v63)
              {
                v49 = sub_2664E0488();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2662A320C(v62, a2, &v63);
      _os_log_impl(&dword_26629C000, v51, v52, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_2662AA89C();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_2662AA89C();
  }
}

uint64_t sub_2662E2BC8(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v61 = off_2800725D0;
  v15 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateAddMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_2664E04A8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2664E0D88();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateAddMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_2664E04A8();

              v63 = v48;
              sub_2662E0A3C(v36);

              if (v63)
              {
                v49 = sub_2664E0488();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2662A320C(v62, a2, &v63);
      _os_log_impl(&dword_26629C000, v51, v52, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_2662AA89C();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_2662AA89C();
  }
}

uint64_t sub_2662E31FC(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v61 = off_2800725D0;
  v15 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateUpdateMediaAffinityIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_2664E04A8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2664E0D88();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateUpdateMediaAffinityIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_2664E04A8();

              v63 = v48;
              sub_2662E0A3C(v36);

              if (v63)
              {
                v49 = sub_2664E0488();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2662A320C(v62, a2, &v63);
      _os_log_impl(&dword_26629C000, v51, v52, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_2662AA89C();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_2662AA89C();
  }
}

uint64_t sub_2662E3830(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v61 = off_2800725D0;
  v15 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateSearchForMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_2664E04A8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2664E0D88();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateSearchForMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_2664E04A8();

              v63 = v48;
              sub_2662E0A3C(v36);

              if (v63)
              {
                v49 = sub_2664E0488();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2662A320C(v62, a2, &v63);
      _os_log_impl(&dword_26629C000, v51, v52, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_2662AA89C();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_2662AA89C();
  }
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC6remove_4fromySS_So8INIntentCtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v35 = v6[2];
  v36 = v13;
  v35(v12, v13, v5);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v6;
    v18 = a1;
    v19 = v17;
    v38 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2662A320C(v18, a2, &v38);
    _os_log_impl(&dword_26629C000, v14, v15, "InternalSignalsManager#remove %s...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    a1 = v18;
    v6 = v34;
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v21 = v6[1];
  v21(v12, v5);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    if (qword_280071A88 != -1)
    {
      swift_once();
    }

    return sub_2662E2594(a1, a2, v23);
  }

  else
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      if (qword_280071A88 != -1)
      {
        swift_once();
      }

      return sub_2662E2BC8(a1, a2, v26);
    }

    else
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        if (qword_280071A88 != -1)
        {
          swift_once();
        }

        return sub_2662E31FC(a1, a2, v28);
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v29;
          if (qword_280071A88 != -1)
          {
            swift_once();
          }

          return sub_2662E3830(a1, a2, v30);
        }

        else
        {
          v35(v10, v36, v5);
          v31 = sub_2664DFE18();
          v32 = sub_2664E06D8();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_26629C000, v31, v32, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v33, 2u);
            MEMORY[0x266784AD0](v33, -1, -1);
          }

          return (v21)(v10, v5);
        }
      }
    }
  }
}

uint64_t sub_2662E4324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2662E43D4(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v2 privateMediaIntentData];

  return v3;
}

id sub_2662E4434(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = [v4 privateMediaIntentData];

  return v5;
}

uint64_t ConfirmInterruptionLocation.deviceLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmInterruptionLocation.roomLocation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall ConfirmInterruptionLocation.init(deviceLocation:multipleDevices:roomLocation:multipleRooms:)(SiriAudioSupport::ConfirmInterruptionLocation *__return_ptr retstr, Swift::String_optional deviceLocation, Swift::Bool multipleDevices, Swift::String_optional roomLocation, Swift::Bool multipleRooms)
{
  retstr->deviceLocation = deviceLocation;
  retstr->multipleDevices = multipleDevices;
  retstr->roomLocation = roomLocation;
  retstr->multipleRooms = multipleRooms;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2662E4524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2662E4580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t InstalledApp.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstalledApp.appName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2662E46E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34D0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &unk_280F8F588, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072488, &qword_2664E3698);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072490, &qword_2664E36A0);
  *(inited + 64) = sub_2664E0318();
  *(inited + 72) = v3;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 80) = sub_2664E0318();
  *(inited + 88) = v4;
  v5 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_2800725D8 = v5;
  return result;
}

uint64_t static InstalledApp.supportedIntents.getter()
{
  if (qword_280071A90 != -1)
  {
    swift_once();
  }
}

uint64_t InstalledApp.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2664E0368();
}

uint64_t static InstalledApp.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t sub_2662E490C@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v84 = a3;
  v87 = sub_2664DFE38();
  v86 = *(v87 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v83 = *(a1 + 32);
  v13 = a1[6];
  v80 = a1[5];
  v94 = v13;
  v14 = a1[7];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[6];
  v79 = a2[5];
  v78 = v17;
  v18 = a2[7];
  *&v90 = v11;

  sub_2662F9CB0(v16);
  v19 = sub_26639EB98(v90);

  v20 = *(v19 + 16);
  if (v20)
  {
    *(&v82 + 1) = sub_26640C820(*(v19 + 16), 0);
    v21 = sub_26640C9BC(&v90, (*(&v82 + 1) + 32), v20, v19);
    sub_2662B793C();
    if (v21 == v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  *(&v82 + 1) = MEMORY[0x277D84F90];
LABEL_5:
  *&v90 = v12;
  sub_2662F9CB0(v15);
  v22 = sub_26639EB98(v90);

  v23 = *(v22 + 16);
  if (v23)
  {
    *&v82 = sub_26640C820(*(v22 + 16), 0);
    v24 = sub_26640C9BC(&v90, (v82 + 32), v23, v22);
    sub_2662B793C();
    if (v24 == v23)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  *&v82 = MEMORY[0x277D84F90];
LABEL_9:
  *&v90 = v14;
  sub_2662F9CB0(v18);
  v25 = sub_26639EB98(v90);

  v26 = *(v25 + 16);
  v81 = v4;
  if (v26)
  {
    v27 = sub_26640C820(v26, 0);
    v28 = sub_26640C9BC(&v90, v27 + 4, v26, v25);
    result = sub_2662B793C();
    if (v28 != v26)
    {
      __break(1u);
      return result;
    }

    v30 = v27[2];
    if (v30)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
    if (v30)
    {
LABEL_12:
      v31 = 0;
      v32 = (v27 + 5);
      v77 = v30 - 1;
      v88 = MEMORY[0x277D84F90];
      do
      {
        v33 = (v32 + 16 * v31);
        v34 = v31;
        while (1)
        {
          if (v34 >= v27[2])
          {
            __break(1u);
            goto LABEL_38;
          }

          v35 = *(v33 - 1);
          v36 = *v33;
          if (v35 != v10 || v36 != v9)
          {
            v38 = *(v33 - 1);
            v39 = *v33;
            if ((sub_2664E0D88() & 1) == 0)
            {
              break;
            }
          }

          ++v34;
          v33 += 2;
          if (v30 == v34)
          {
            goto LABEL_29;
          }
        }

        v40 = v88;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v90 = v40;
        v76 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FCF24(0, *(v40 + 16) + 1, 1);
          v40 = v90;
        }

        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v88 = v43 + 1;
          sub_2662FCF24((v42 > 1), v43 + 1, 1);
          v44 = v88;
          v40 = v90;
        }

        v31 = v34 + 1;
        *(v40 + 16) = v44;
        v88 = v40;
        v45 = v40 + 16 * v43;
        *(v45 + 32) = v35;
        *(v45 + 40) = v36;
        v32 = v76;
      }

      while (v77 != v34);
      goto LABEL_29;
    }
  }

  v88 = MEMORY[0x277D84F90];
LABEL_29:

  v46 = v94;
  if (v94)
  {
    v32 = v87;
    v27 = v86;
    v30 = v85;
    v47 = v83;
    v48 = v80;
  }

  else
  {
    v46 = v78;

    v48 = v79;
    v32 = v87;
    v27 = v86;
    v30 = v85;
    v47 = v83;
  }

  *&v90 = v10;
  *(&v90 + 1) = v9;
  v91 = v82;
  LOBYTE(v92) = v47;
  *(&v92 + 1) = v48;
  *&v93 = v46;
  v10 = v88;
  *(&v93 + 1) = v88;
  v49 = qword_280F914E8;

  v94 = v46;

  if (v49 != -1)
  {
LABEL_38:
    swift_once();
  }

  v50 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  (v27[2])(v30, v50, v32);

  sub_2662C0AE0(&v90, v89);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06E8();
  sub_2662C0B3C(&v90);

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v89[0] = v54;
    *v53 = 136446978;
    v55 = v90;

    v56 = v10;
    v57 = sub_2662A320C(v55, *(&v55 + 1), v89);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2082;

    v59 = MEMORY[0x277D837D0];
    v60 = MEMORY[0x2667834D0](v58, MEMORY[0x277D837D0]);
    v62 = v61;

    v63 = sub_2662A320C(v60, v62, v89);

    *(v53 + 14) = v63;
    *(v53 + 22) = 2082;

    v65 = MEMORY[0x2667834D0](v64, v59);
    v67 = v66;

    v68 = sub_2662A320C(v65, v67, v89);

    *(v53 + 24) = v68;
    *(v53 + 32) = 2082;
    v69 = MEMORY[0x2667834D0](v56, v59);
    v71 = v70;

    v72 = sub_2662A320C(v69, v71, v89);

    *(v53 + 34) = v72;

    _os_log_impl(&dword_26629C000, v51, v52, "InstalledAppProvider#apps merged bundle: %{public}s, supportedCategories: %{public}s, supportedIntents: %{public}s, counterpartBundleIdentifiers: %{public}s", v53, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    result = (*(v86 + 8))(v85, v87);
  }

  else
  {

    result = (v27[1])(v30, v32);
  }

  v73 = v91;
  v74 = v84;
  *v84 = v90;
  v74[1] = v73;
  v75 = v93;
  v74[2] = v92;
  v74[3] = v75;
  return result;
}

Swift::String __swiftcall InstalledApp.slimDescription()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000021, 0x80000002664F36A0);
  MEMORY[0x2667833B0](v1, v2);
  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664F36D0);
  sub_2664E0C28();
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t InstalledApp.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E5218()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E5264()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2664E0368();
}

uint64_t sub_2662E526C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2664E0E68();
  sub_2664E0368();
  return sub_2664E0EB8();
}

uint64_t sub_2662E52B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

void sub_2662E52E4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v96 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v56 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v22 = v11;
      while (1)
      {
        v21 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v21 >= v10)
        {
          goto LABEL_26;
        }

        v20 = *(v6 + 8 * v21);
        ++v22;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_34;
    }

    v20 = v9;
    v21 = v11;
LABEL_14:
    v23 = __clz(__rbit64(v20)) | (v21 << 6);
    v24 = (*(a1 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(a1 + 56) + (v23 << 6));
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    v83 = v27[2];
    v84 = v28;
    v81 = v30;
    v82 = v29;
    v77 = *v27;
    v78 = v27[1];
    v79 = v27[2];
    v80 = v27[3];
    *&v76 = v26;
    *(&v76 + 1) = v25;

    sub_2662C0AE0(&v81, &v85);
    a2(&v90, &v76);
    v87 = v78;
    v88 = v79;
    v89 = v80;
    v85 = v76;
    v86 = v77;
    sub_2662E5DE8(&v85);
    v31 = v91;
    if (!v91)
    {
LABEL_26:
      sub_2662B793C();

      return;
    }

    v74 = v90;
    v32 = v90;
    v75 = v91;
    v85 = v92;
    v86 = v93;
    v87 = v94;
    v88 = v95;
    v33 = *v96;
    v35 = sub_2662A3E98(v90, v91);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_31;
    }

    v39 = v34;
    if (v33[3] < v38)
    {
      break;
    }

    if (a4)
    {
      if (v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_2664538FC();
      if (v39)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v96;
    v12[(v35 >> 6) + 8] |= 1 << v35;
    v13 = (v12[6] + 16 * v35);
    *v13 = v32;
    v13[1] = v31;
    v14 = (v12[7] + (v35 << 6));
    v15 = v93;
    *v14 = v92;
    v14[1] = v15;
    v16 = v95;
    v14[2] = v94;
    v14[3] = v16;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_32;
    }

    v12[2] = v19;
LABEL_7:
    v9 = (v20 - 1) & v20;
    a4 = 1;
    v11 = v21;
  }

  v40 = v96;
  sub_26644FFAC(v38, a4 & 1);
  v41 = *v40;
  v42 = sub_2662A3E98(v32, v31);
  if ((v39 & 1) != (v43 & 1))
  {
    goto LABEL_33;
  }

  v35 = v42;
  if ((v39 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v44 = *v96;
  v45 = (*(*v96 + 56) + (v35 << 6));
  v46 = v45[3];
  v48 = *v45;
  v47 = v45[1];
  v78 = v45[2];
  v79 = v46;
  v76 = v48;
  v77 = v47;
  v81 = *v45;
  v82 = v45[1];
  v83 = v45[2];
  v84 = v45[3];
  sub_2662C0AE0(&v76, &v69);
  sub_2662E490C(&v81, &v85, v73);
  if (!v59)
  {
    *v61 = v81;
    v62 = v82;
    v63 = v83;
    v64 = v84;
    sub_2662C0B3C(v61);
    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    sub_2662C0B3C(&v65);

    v49 = (*(v44 + 56) + (v35 << 6));
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[3];
    v71 = v49[2];
    v72 = v52;
    v69 = v50;
    v70 = v51;
    v53 = v73[1];
    *v49 = v73[0];
    v49[1] = v53;
    v54 = v73[3];
    v49[2] = v73[2];
    v49[3] = v54;
    sub_2662C0B3C(&v69);
    goto LABEL_7;
  }

  v69 = v81;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  sub_2662C0B3C(&v69);
  v61[0] = v59;
  v55 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    sub_2662C0B3C(&v65);
    sub_2662B793C();

    return;
  }

LABEL_34:
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

uint64_t sub_2662E5814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 2);
  v9[0] = *(a1 + 1);
  v9[1] = v4;
  v6 = *(a1 + 4);
  v10 = *(a1 + 3);
  v5 = v10;
  v11 = v6;
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_2662C0AE0(v9, &v8);
}

uint64_t _s16SiriAudioSupport12InstalledAppV13additiveMerge4left5rightSayACGAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663855DC(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v14 = v6[1];
      v72 = *v6;
      v73 = v14;
      v15 = v6[3];
      v74 = v6[2];
      v75 = v15;
      v16 = v72;
      sub_2662C0AE0(&v72, &v68);
      sub_2662C0AE0(&v72, &v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v4;
      v18 = sub_2662A3E98(v16, *(&v16 + 1));
      v20 = *(v4 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        result = sub_2664E0DD8();
        __break(1u);
        return result;
      }

      v24 = v19;
      if (*(v4 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v18;
      sub_2664538FC();
      v18 = v32;
      if (v24)
      {
LABEL_3:
        v4 = v67;
        v7 = (v67[7] + (v18 << 6));
        v8 = v7[3];
        v10 = *v7;
        v9 = v7[1];
        v70 = v7[2];
        v71 = v8;
        v68 = v10;
        v69 = v9;
        v11 = v72;
        v12 = v73;
        v13 = v75;
        v7[2] = v74;
        v7[3] = v13;
        *v7 = v11;
        v7[1] = v12;
        sub_2662C0B3C(&v68);
        sub_2662C0B3C(&v72);
        goto LABEL_4;
      }

LABEL_11:
      v4 = v67;
      v67[(v18 >> 6) + 8] |= 1 << v18;
      *(v67[6] + 16 * v18) = v16;
      v26 = (v67[7] + (v18 << 6));
      v28 = v74;
      v27 = v75;
      v29 = v73;
      *v26 = v72;
      v26[1] = v29;
      v26[2] = v28;
      v26[3] = v27;

      sub_2662C0B3C(&v72);
      v30 = v67[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      v67[2] = v31;
LABEL_4:
      v6 += 4;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    sub_26644FFAC(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2662A3E98(v16, *(&v16 + 1));
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_39;
    }

LABEL_10:
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v33 = sub_2663855DC(MEMORY[0x277D84F90]);
  v34 = *(a2 + 16);
  if (v34)
  {
    v35 = (a2 + 32);
    while (1)
    {
      v43 = v35[1];
      v72 = *v35;
      v73 = v43;
      v44 = v35[3];
      v74 = v35[2];
      v75 = v44;
      v45 = v72;
      sub_2662C0AE0(&v72, &v68);
      sub_2662C0AE0(&v72, &v68);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = sub_2662A3E98(v45, *(&v45 + 1));
      v49 = v33[2];
      v50 = (v48 & 1) == 0;
      v22 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v22)
      {
        goto LABEL_35;
      }

      v52 = v48;
      if (v33[3] < v51)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_24;
      }

      v60 = v47;
      sub_2664538FC();
      v47 = v60;
      if (v52)
      {
LABEL_17:
        v36 = (v33[7] + (v47 << 6));
        v37 = v36[3];
        v39 = *v36;
        v38 = v36[1];
        v70 = v36[2];
        v71 = v37;
        v68 = v39;
        v69 = v38;
        v40 = v72;
        v41 = v73;
        v42 = v75;
        v36[2] = v74;
        v36[3] = v42;
        *v36 = v40;
        v36[1] = v41;
        sub_2662C0B3C(&v68);
        sub_2662C0B3C(&v72);
        goto LABEL_18;
      }

LABEL_25:
      v33[(v47 >> 6) + 8] |= 1 << v47;
      *(v33[6] + 16 * v47) = v45;
      v54 = (v33[7] + (v47 << 6));
      v56 = v74;
      v55 = v75;
      v57 = v73;
      *v54 = v72;
      v54[1] = v57;
      v54[2] = v56;
      v54[3] = v55;

      sub_2662C0B3C(&v72);
      v58 = v33[2];
      v22 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v22)
      {
        goto LABEL_37;
      }

      v33[2] = v59;
LABEL_18:
      v35 += 4;
      if (!--v34)
      {
        goto LABEL_29;
      }
    }

    sub_26644FFAC(v51, v46);
    v47 = sub_2662A3E98(v45, *(&v45 + 1));
    if ((v52 & 1) != (v53 & 1))
    {
      goto LABEL_39;
    }

LABEL_24:
    if (v52)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_29:
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v72 = v4;
  sub_2662E52E4(v33, sub_2662E5814, 0, v61, &v72);
  v62 = v72;
  v63 = *(v72 + 16);
  if (v63)
  {
    v64 = sub_26640C79C(*(v72 + 16), 0);
    v65 = sub_26640CB14(&v72, v64 + 2, v63, v62);

    sub_2662B793C();
    if (v65 != v63)
    {
      goto LABEL_38;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v64;
}

unint64_t sub_2662E5CBC()
{
  result = qword_2800725E0;
  if (!qword_2800725E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800725E0);
  }

  return result;
}

uint64_t sub_2662E5D40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2662E5D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662E5DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800725E8, qword_2664E4390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AtomicDictionary.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AtomicDictionary.init(name:)(a1, a2);
  return v4;
}

void *AtomicDictionary.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = type metadata accessor for AtomicValue();
  swift_getTupleTypeMetadata2();
  v10 = sub_2664E04E8();
  v11 = sub_2662E87F0(v10, v7, v9, *(v6 + 96));

  v3[2] = v11;
  v3[4] = a1;
  v3[5] = a2;
  v12 = qword_280F91468;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91470;
  v15[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v15[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v15[0] = v13;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v3[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v15);
  return v3;
}

uint64_t sub_2662E6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v84 = a4;
  v74 = a3;
  v73 = a2;
  v78 = *v7;
  v10 = *(v78 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v85 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v87 = &v70[-v15];
  v93 = sub_2664DFE38();
  v16 = *(v93 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v93);
  v80 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v75 = &v70[-v21];
  MEMORY[0x28223BE20](v20);
  v92 = &v70[-v22];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = v93;
  v24 = __swift_project_value_buffer(v93, qword_280F914F0);
  swift_beginAccess();
  v25 = v16[2];
  v89 = v24;
  v79 = v16 + 2;
  v88 = v25;
  v25(v92, v24, v23);
  v26 = *(v11 + 16);
  v90 = a1;
  v26(v87, a1, v10);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  v29 = os_log_type_enabled(v27, v28);
  v86 = v16;
  v91 = v10;
  v77 = v11 + 16;
  v76 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97[0] = v72;
    *v30 = 136446466;
    *(v30 + 4) = sub_2662A320C(v7[4], v7[5], v97);
    *(v30 + 12) = 2082;
    v71 = v28;
    v31 = v87;
    v26(v85, v87, v10);
    v32 = sub_2664E0318();
    v33 = v10;
    v35 = v34;
    (*(v11 + 8))(v31, v33);
    v36 = v93;
    v37 = sub_2662A320C(v32, v35, v97);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_26629C000, v27, v71, "AtomicDictionary#computeIfAbsent [%{public}s] key: %{public}s", v30, 0x16u);
    v38 = v72;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    v39 = v30;
    v40 = v86;
    MEMORY[0x266784AD0](v39, -1, -1);

    v41 = v40[1];
    (v41)(v92, v36);
  }

  else
  {

    (*(v11 + 8))(v87, v10);
    v41 = v16[1];
    (v41)(v92, v93);
  }

  v42 = v8[3];
  sub_2662A98AC();
  v43 = v75;
  v88(v75, v89, v93);

  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v97[0] = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_2662A320C(v8[4], v8[5], v97);
    _os_log_impl(&dword_26629C000, v44, v45, "AtomicDictionary#computeIfAbsent [%{public}s] global lock acquired", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v48 = v93;
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v49 = v43;
    v50 = v48;
  }

  else
  {

    v49 = v43;
    v50 = v93;
  }

  (v41)(v49, v50);
  v51 = v76;
  v92 = v41;
  swift_beginAccess();
  v52 = v8[2];
  v53 = v78;
  v54 = *(v78 + 88);
  type metadata accessor for AtomicValue();
  v55 = *(v53 + 96);

  sub_2664E0238();

  v56 = v96;
  if (!v96)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_2664E0B28();

    v94 = 0xD000000000000022;
    v95 = 0x80000002664F4340;
    MEMORY[0x2667833B0](v8[4], v8[5]);
    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v57 = v94;
    v58 = v95;
    v59 = v74;

    v56 = sub_26630D9D0(v57, v58, v73, v59);
  }

  v51(v85, v90, v91);
  v96 = v56;
  swift_beginAccess();
  sub_2664E0228();

  sub_2664E0248();
  swift_endAccess();
  sub_2662AA89C();
  v60 = v80;
  v88(v80, v89, v93);

  v61 = sub_2664DFE18();
  v62 = sub_2664E06E8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v96 = v64;
    *v63 = 136446466;
    *(v63 + 4) = sub_2662A320C(v8[4], v8[5], &v96);
    *(v63 + 12) = 2080;
    v94 = v84;
    v65 = v81;
    LOBYTE(v95) = v81 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v66 = sub_2664E0318();
    v68 = sub_2662A320C(v66, v67, &v96);

    *(v63 + 14) = v68;
    _os_log_impl(&dword_26629C000, v61, v62, "AtomicDictionary#computeIfAbsent [%{public}s] found existing value for key, releasing global lock, computing with expiry: %s...", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v64, -1, -1);
    MEMORY[0x266784AD0](v63, -1, -1);

    (v92)(v60, v93);
  }

  else
  {

    (v92)(v60, v93);
    v65 = v81;
  }

  sub_26630AFF8(v84, v65 & 1, v82, v83);
}

uint64_t sub_2662E6B24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - v7;
  (*(v9 + 16))(&v15 - v7, v10);
  v11 = *a1;
  v12 = *(**a2 + 176);

  return v12(v13, v8);
}

uint64_t sub_2662E6C14(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v58 = *v1;
  v4 = *(v58 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = sub_2664DFE38();
  v66 = *(v11 - 8);
  v12 = v66[8];
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v20 = v66[2];
  v64 = v66 + 2;
  v65 = v19;
  v63 = v20;
  v20(v18, v19, v11);
  v21 = *(v5 + 16);
  v59 = a1;
  v21(v10, a1, v4);

  v57 = v18;
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v62 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69[0] = v55;
    *v25 = 136446466;
    *(v25 + 4) = sub_2662A320C(v2[4], v2[5], v69);
    *(v25 + 12) = 2082;
    v21(v56, v10, v4);
    v26 = sub_2664E0318();
    v28 = v27;
    (*(v5 + 8))(v10, v4);
    v29 = sub_2662A320C(v26, v28, v69);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_26629C000, v22, v23, "AtomicDictionary#get [%{public}s] for key: %{public}s, acquiring global lock...", v25, 0x16u);
    v30 = v55;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v30, -1, -1);
    v31 = v25;
    v11 = v62;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v32 = v66[1];
  v32(v57, v11);
  v33 = v2[3];
  sub_2662A98AC();
  swift_beginAccess();
  v34 = v2[2];
  v35 = v58;
  v36 = *(v58 + 88);
  type metadata accessor for AtomicValue();
  v37 = *(v35 + 96);

  sub_2664E0238();

  v38 = v68;
  v39 = v60;
  v63(v60, v65, v11);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_2662A320C(v2[4], v2[5], &v68);
    *(v42 + 12) = 2080;
    v67 = v38;
    sub_2664E0948();
    v59 = v32;

    v44 = sub_2664E0318();
    v46 = sub_2662A320C(v44, v45, &v68);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_26629C000, v40, v41, "AtomicDictionary#get [%{public}s] got value %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v43, -1, -1);
    v47 = v42;
    v11 = v62;
    MEMORY[0x266784AD0](v47, -1, -1);

    v32 = v59;
    v59(v39, v11);
  }

  else
  {

    v32(v39, v11);
  }

  sub_2662AA89C();
  v48 = v61;
  v63(v61, v65, v11);

  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v68 = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_2662A320C(v2[4], v2[5], &v68);
    _os_log_impl(&dword_26629C000, v49, v50, "AtomicDictionary#get [%{public}s] released global lock", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  v32(v48, v11);
  return v38;
}

uint64_t sub_2662E7324(uint64_t a1, char *a2)
{
  v3 = v2;
  v67 = a2;
  v61 = *v2;
  v5 = *(v61 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v62 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v52 - v18;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v20 = *(v14 + 16);
  v60 = v19;
  v57 = v20;
  v58 = v14 + 16;
  v20(v65, v19, v13);
  v66 = v14;
  v64 = v6[2];
  v64(v12, v67, v5);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();

  v23 = os_log_type_enabled(v21, v22);
  v63 = v6;
  v56 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v54 = v22;
    v25 = v24;
    v55 = swift_slowAlloc();
    v68[0] = v55;
    *v25 = 136446722;
    *(v25 + 4) = sub_2662A320C(v3[4], v3[5], v68);
    *(v25 + 12) = 2082;
    v64(v10, v12, v5);
    v26 = sub_2664E0318();
    v27 = v6;
    v28 = v26;
    v53 = v13;
    v30 = v29;
    v59 = v27[1];
    v59(v12, v5);
    v31 = sub_2662A320C(v28, v30, v68);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2080;
    v69 = a1;
    v32 = v61;
    v33 = *(v61 + 88);
    type metadata accessor for AtomicValue();
    sub_2664E0948();

    v34 = sub_2664E0318();
    v36 = sub_2662A320C(v34, v35, v68);

    *(v25 + 24) = v36;
    _os_log_impl(&dword_26629C000, v21, v54, "AtomicDictionary#set [%{public}s] for key: %{public}s, value: %s, acquiring global lock...", v25, 0x20u);
    v37 = v55;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    v38 = v65;
    v39 = v53;
    v65 = *(v66 + 8);
    (v65)(v38, v53);
    v40 = v5;
  }

  else
  {

    v59 = v6[1];
    v59(v12, v5);
    v41 = v65;
    v65 = *(v66 + 8);
    (v65)(v41, v13);
    v40 = v5;
    v39 = v13;
    v32 = v61;
  }

  v42 = v3[3];
  sub_2662A98AC();
  v64(v56, v67, v40);
  v69 = a1;
  swift_beginAccess();
  v43 = *(v32 + 88);
  type metadata accessor for AtomicValue();
  v44 = *(v32 + 96);
  sub_2664E0228();

  sub_2664E0248();
  swift_endAccess();
  sub_2662AA89C();
  v45 = v62;
  v46 = v39;
  v57(v62, v60, v39);

  v47 = sub_2664DFE18();
  v48 = sub_2664E06E8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_2662A320C(v3[4], v3[5], v68);
    _os_log_impl(&dword_26629C000, v47, v48, "AtomicDictionary#set [%{public}s] released global lock", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v59(v67, v40);
  return (v65)(v45, v46);
}

void (*sub_2662E7990(uint64_t **a1, void (*a2)(char *, uint64_t)))(uint64_t **a1, char a2)
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
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  *v7 = sub_2662E6C14(a2);
  return sub_2662E7AD0;
}

void sub_2662E7AD0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[1];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v5, v2[2]);

    sub_2662E7324(v7, v4);
    v8 = *v2;
  }

  else
  {
    sub_2662E7324(**a1, v5);
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_2662E7B7C(uint64_t a1)
{
  v2 = v1;
  v54 = *v1;
  v4 = *(v54 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = sub_2664DFE38();
  v63 = *(v11 - 8);
  v12 = v63[8];
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v59 = &v52 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v19 = v63[2];
  v61 = v63 + 2;
  v62 = v18;
  v60 = v19;
  v19(v59, v18, v11);
  v20 = *(v5 + 16);
  v55 = a1;
  v20(v10, a1, v4);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();

  v23 = os_log_type_enabled(v21, v22);
  v58 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64[0] = v52;
    *v24 = 136446466;
    *(v24 + 4) = sub_2662A320C(v2[4], v2[5], v64);
    *(v24 + 12) = 2082;
    v20(v53, v10, v4);
    v25 = sub_2664E0318();
    v27 = v26;
    (*(v5 + 8))(v10, v4);
    v28 = sub_2662A320C(v25, v27, v64);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_26629C000, v21, v22, "AtomicDictionary#removeValue [%{public}s] for key: %{public}s, acquiring global lock...", v24, 0x16u);
    v29 = v52;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v29, -1, -1);
    v30 = v24;
    v11 = v58;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v31 = v63[1];
  v31(v59, v11);
  v32 = v2[3];
  sub_2662A98AC();
  swift_beginAccess();
  v33 = v54;
  v34 = *(v54 + 88);
  type metadata accessor for AtomicValue();
  v35 = *(v33 + 96);
  sub_2664E0228();
  sub_2664E01E8();
  swift_endAccess();
  v36 = v65;
  v37 = v56;
  v60(v56, v62, v11);

  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v64[0] = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_2662A320C(v2[4], v2[5], v64);
    *(v40 + 12) = 2080;
    v65 = v36;
    sub_2664E0948();
    v59 = v31;

    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, v64);

    *(v40 + 14) = v44;
    _os_log_impl(&dword_26629C000, v38, v39, "AtomicDictionary#removeValue [%{public}s] got value %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    v45 = v40;
    v11 = v58;
    MEMORY[0x266784AD0](v45, -1, -1);

    v31 = v59;
    (v59)(v37, v11);
  }

  else
  {

    v31(v37, v11);
  }

  sub_2662AA89C();
  v46 = v57;
  v60(v57, v62, v11);

  v47 = sub_2664DFE18();
  v48 = sub_2664E06E8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_2662A320C(v2[4], v2[5], v64);
    _os_log_impl(&dword_26629C000, v47, v48, "AtomicDictionary#removeValue [%{public}s] released global lock", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v31(v46, v11);
  return v36;
}

uint64_t sub_2662E828C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v29 = v4[2];
  v29(v10, v11, v3);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    v15 = v2;
    v16 = v8;
    v17 = v14;
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "AtomicDictionary#clear acquiring global lock...", v14, 2u);
    v18 = v17;
    v8 = v16;
    v2 = v15;
    v4 = v28;
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = v4[1];
  v19(v10, v3);
  v20 = v1[3];
  sub_2662A98AC();
  swift_beginAccess();
  v22 = v2[10];
  v21 = v2[11];
  type metadata accessor for AtomicValue();
  v23 = v2[12];
  sub_2664E0228();
  sub_2664E0218();
  swift_endAccess();
  sub_2662AA89C();
  v29(v8, v11, v3);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "AtomicDictionary#removeAll released global lock", v26, 2u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  return (v19)(v8, v3);
}