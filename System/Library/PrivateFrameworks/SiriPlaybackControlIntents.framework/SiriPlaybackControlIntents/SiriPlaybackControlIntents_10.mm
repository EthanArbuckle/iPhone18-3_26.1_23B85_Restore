uint64_t ControlsFlowProvider.makeAmbiguousShuffleMusicFlow(for:with:)()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_79_2(v1);
  OUTLINED_FUNCTION_35_6();
  sub_268997354("makeAmbiguousShuffleFlow", 24, 2, 1, sub_26890DF10, v0, sub_2689A5460, var50, &unk_287955450, &unk_287955478, sub_2689A7210, v3, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
}

uint64_t sub_26899CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = sub_268B35494();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v30[1] = v10;
  v31 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_2802A4F30;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v15, v18, v11);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30[0] = a4;
    v22 = a3;
    v23 = v21;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "ControlsFlowProvider#makeAmbiguousShuffleFlow Determining if this is a request to enable shuffle or to start library playback shuffled", v21, 2u);
    v24 = v23;
    a3 = v22;
    a4 = v30[0];
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_2689A563C(a3, v33);
  v26 = v31;
  v25 = v32;
  (*(v8 + 16))(v31, a4, v32);
  v27 = (*(v8 + 80) + 504) & ~*(v8 + 80);
  v28 = swift_allocObject();
  memcpy(v28 + 16, v33, 0x1D8uLL);
  *(v28 + 61) = sub_26890D79C;
  *(v28 + 62) = v16;
  (*(v8 + 32))(&v28[v27], v26, v25);
  sub_26899D0E0();
}

uint64_t sub_26899CFFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    return (a3)(0, 0);
  }

  sub_268998C0C();
  sub_26899D644();
  a3();
}

void sub_26899D0E0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v65 = v9;
  v66 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_78();
  v63 = v16;
  OUTLINED_FUNCTION_9();
  v17 = sub_268B35494();
  v18 = OUTLINED_FUNCTION_1(v17);
  v64 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  v29 = sub_2689A0A2C(v6);
  if (v29)
  {
    v61 = v4;
    v62 = v2;
    v30 = type metadata accessor for MediaPlayerIntent();
    v31 = swift_allocBox();
    v59 = v32;
    v60 = v31;
    v33 = *(v64 + 16);
    v33(&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v17);
    sub_26893BA8C(&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (__swift_getEnumTagSinglePayload(v28, 1, v30) != 1)
    {
      sub_2688C0464(v28, v59);
      v50 = v0[13];
      v51 = v0[14];
      v66 = __swift_project_boxed_opaque_existential_1(v0 + 10, v50);
      sub_2689A563C(v0, v67);
      v33(&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v17);
      v52 = v64;
      v53 = (*(v64 + 80) + 488) & ~*(v64 + 80);
      v54 = &v21[v53 + 7] & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      memcpy((v55 + 16), v67, 0x1D8uLL);
      (*(v52 + 32))(v55 + v53, v22, v17);
      v56 = (v55 + v54);
      v57 = v62;
      *v56 = v61;
      v56[1] = v57;
      *(v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
      v58 = *(v51 + 8);

      v58(sub_2689A5694, v55, v50, v51);

      goto LABEL_15;
    }

    sub_2689A7CD8(v28, &qword_2802A5650, &unk_268B3BAC0);
    swift_deallocBox();
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v34 = v66;
    OUTLINED_FUNCTION_82(v66, qword_2802CDA10);
    v35 = v65;
    OUTLINED_FUNCTION_152();
    v36 = v63;
    v37(v63);
    v38 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    v40 = os_log_type_enabled(v38, v39);
    v4 = v61;
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v41);
      _os_log_impl(&dword_2688BB000, v38, v28, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Unable to make MediaPlayerIntent from parse, not handling", v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v35 + 8))(v36, v34);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v29 = OUTLINED_FUNCTION_0_0();
    }

    v42 = v66;
    OUTLINED_FUNCTION_13_8(v29, qword_2802CDA10);
    v43 = v65;
    OUTLINED_FUNCTION_120();
    v44(v14);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v47);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v48, v49, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Invalid ambiguous shuffle parse, not handling");
      OUTLINED_FUNCTION_6();
    }

    (*(v43 + 8))(v14, v42);
  }

  v4(0);
LABEL_15:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899D570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *__swift_project_boxed_opaque_existential_1((a2 + 368), *(a2 + 392));
  sub_26894A7E4();
  sub_26899D644();
  a3();
}

void sub_26899D644()
{
  OUTLINED_FUNCTION_26();
  v45 = v2;
  v46 = v1;
  v49 = v0;
  v50 = v3;
  v47 = v5;
  v48 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_268B35494();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v45 - v30;
  v32 = type metadata accessor for MediaPlayerIntent();
  OUTLINED_FUNCTION_70(v32);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v38 = v37 - v36;
  (*(v20 + 16))(v25, v7, v17);
  sub_26893BA8C(v25);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_2689A7CD8(v31, &qword_2802A5650, &unk_268B3BAC0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v39(v16);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v42);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v40, v41, v45);
      OUTLINED_FUNCTION_20_2();
    }

    (*(v11 + 8))(v16, v8);
  }

  else
  {
    sub_2688C0464(v31, v38);
    v43 = objc_allocWithZone(v46(0));
    v44 = [v43 init];
    v47(v38);
    sub_2689A5248(v48, v44, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v50(v44);

    sub_2688C2F6C(v38);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v23[0] = a5;
  v23[1] = a2;
  v24 = a4;
  v27 = a1;
  v9 = sub_268B35494();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = type metadata accessor for MediaPlayerIntent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689A563C(a2, v28);
  sub_268946C8C(a3, v15);
  (*(v10 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23[0], v9);
  v16 = (*(v13 + 80) + 488) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v10 + 80) + v17 + 8) & ~*(v10 + 80);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v28, 0x1D8uLL);
  sub_2688C0464(v15, v19 + v16);
  *(v19 + v17) = v24;
  (*(v10 + 32))(v19 + v18, v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;

  sub_26899FEC8(v27, sub_2689A7784, v19);
}

uint64_t sub_26899DBC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(void))
{
  v140 = a5;
  v141 = a6;
  v12 = sub_268B35494();
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 8);
  MEMORY[0x28223BE20](v12);
  v135 = v14;
  v136 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B36C04();
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = *(v132 + 64);
  MEMORY[0x28223BE20](v15);
  v131 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268B37A54();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v134 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v126 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v128 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v127 = &v126 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v126 - v30;
  v32 = a2[49];
  v143 = a2;
  v33 = *__swift_project_boxed_opaque_existential_1(a2 + 46, v32);
  sub_26894A7E4();
  type metadata accessor for MediaPlayerIntent();
  sub_2689A7B24(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent);
  v130 = a3;
  v34 = sub_268B37834();
  v142 = a7;
  if (v34)
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_39:
      swift_once();
    }

    v35 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v36 = *(v19 + 16);
    v136 = v35;
    v137 = v36;
    v36(v31);
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v19;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "Determining if we should handle Ambiguous + WHA request", v40, 2u);
      v41 = v40;
      v19 = v39;
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    v42 = *(v19 + 8);
    v129 = v18;
    v138 = v42;
    v139 = (v19 + 8);
    v42(v31, v18);
    v43 = sub_2688EFD0C(a1);
    v19 = 0;
    v31 = (a1 & 0xC000000000000001);
    v18 = &unk_279C42000;
    while (v43 != v19)
    {
      if (v31)
      {
        v44 = MEMORY[0x26D625BD0](v19, a1);
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v44 = *(a1 + 8 * v19 + 32);
      }

      v45 = v44;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v46 = [v44 proximity];
      if ((v46 - 1) >= 4)
      {
        if (v46)
        {
          v144[0] = v46;
          result = sub_268B38474();
          __break(1u);
          return result;
        }

        if ([v45 nowPlayingState] == 1)
        {
          v103 = v129;
          (v137)(v127, v136, v129);
          v104 = sub_268B37A34();
          v105 = sub_268B37F04();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&dword_2688BB000, v104, v105, "Request to play in [location] and local device is playing something. This is an addSpeaker request", v106, 2u);
            MEMORY[0x26D6266E0](v106, -1, -1);
          }

          v138(v127, v103);
          sub_26899D644();
          v141();
        }

        break;
      }

      ++v19;
    }

    v107 = v143;
    v108 = __swift_project_boxed_opaque_existential_1(v143 + 46, v143[49]);
    v109 = sub_2689A6974(1, *v108);
    v110 = sub_2688EFD0C(v109);

    if (v110)
    {
      v111 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
      sub_2689A5248(a1, v111, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
      sub_2689A8C9C(v130);
      sub_2689A563C(v107, v144);
      v112 = sub_268997824();
      sub_2689A5A38(v144);
      v114 = v131;
      v113 = v132;
      v115 = v133;
      (*(v132 + 104))(v131, *MEMORY[0x277D5F660], v133);
      v116 = v111;
      v117 = [v116 mediaType];
      sub_2689A563C(v107, v144);
      v118 = swift_allocObject();
      v119 = v142;
      v118[2] = v141;
      v118[3] = v119;
      v118[4] = v116;
      memcpy(v118 + 5, v144, 0x1D8uLL);
      v120 = v116;

      sub_2689A5A68(v120, v114, v117, sub_2689A7AC0, v118, v112);

      return (*(v113 + 8))(v114, v115);
    }

    else
    {
      v122 = v128;
      v121 = v129;
      (v137)(v128, v136, v129);
      v123 = sub_268B37A34();
      v124 = sub_268B37EE4();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_2688BB000, v123, v124, "No resumable devices found from context. Returning a nil flow for SiriAudio to handle", v125, 2u);
        MEMORY[0x26D6266E0](v125, -1, -1);
      }

      v138(v122, v121);
      return (v141)(0, 0);
    }
  }

  else
  {
    v47 = a7;
    v48 = a4;
    sub_26890282C();
    v50 = v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v52 = *(v19 + 16);
    v132 = v51;
    v133 = (v19 + 16);
    v131 = v52;
    (v52)(v25);

    v53 = sub_268B37A34();
    v54 = v18;
    v55 = sub_268B37F04();

    v56 = os_log_type_enabled(v53, v55);
    v139 = v19;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v129 = v54;
      v58 = v57;
      v130 = swift_slowAlloc();
      v144[0] = v130;
      *v58 = 136315394;
      v59 = NLMediaType.description.getter(v48);
      v61 = sub_26892CDB8(v59, v60, v144);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = type metadata accessor for DeviceContext();
      v63 = MEMORY[0x26D6256F0](v50, v62);
      v65 = sub_26892CDB8(v63, v64, v144);

      *(v58 + 14) = v65;
      v47 = v142;
      _os_log_impl(&dword_2688BB000, v53, v55, "Contexts matching media type %s: %s", v58, 0x16u);
      v66 = v130;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v66, -1, -1);
      MEMORY[0x26D6266E0](v58, -1, -1);

      v67 = *(v19 + 8);
      v68 = v129;
      v67(v25, v129);
    }

    else
    {

      v67 = *(v19 + 8);
      v67(v25, v54);
      v68 = v54;
    }

    v69 = v143;
    v70 = __swift_project_boxed_opaque_existential_1(v143 + 46, v143[49]);
    v71 = sub_2689A6974(1, *v70);

    if (sub_2688EFD0C(v71))
    {
      v72 = v134;
      (v131)(v134, v132, v68);

      v73 = sub_268B37A34();
      v74 = sub_268B37F04();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v133 = v67;
        v76 = v75;
        v77 = swift_slowAlloc();
        v144[0] = v77;
        *v76 = 136315138;
        v78 = type metadata accessor for DeviceContext();
        v79 = MEMORY[0x26D6256F0](v71, v78);
        v81 = v80;

        v82 = sub_26892CDB8(v79, v81, v144);
        v69 = v143;

        *(v76 + 4) = v82;
        _os_log_impl(&dword_2688BB000, v73, v74, "Resumable device found in context: %s, returning handle response", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x26D6266E0](v77, -1, -1);
        MEMORY[0x26D6266E0](v76, -1, -1);

        v133(v134, v68);
      }

      else
      {

        v67(v72, v68);
      }

      v92 = v140;
      v93 = v141;
      v94 = v138;
      sub_2689A563C(v69, v144);
      v95 = v136;
      v96 = v137;
      (*(v137 + 2))(v136, v92, v94);
      v97 = (*(v96 + 80) + 496) & ~*(v96 + 80);
      v98 = (v135 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      memcpy((v99 + 16), v144, 0x1D8uLL);
      *(v99 + 488) = a1;
      (*(v96 + 4))(v99 + v97, v95, v94);
      v100 = (v99 + v98);
      v101 = v142;
      *v100 = v93;
      v100[1] = v101;

      sub_26899EFEC(sub_2689A78AC, v99);
    }

    else
    {

      sub_2689A563C(v69, v144);
      v84 = v136;
      v83 = v137;
      v85 = v138;
      (*(v137 + 2))(v136, v140, v138);
      v86 = (*(v83 + 80) + 496) & ~*(v83 + 80);
      v87 = (v135 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      memcpy((v88 + 16), v144, 0x1D8uLL);
      *(v88 + 488) = a1;
      (*(v83 + 4))(v88 + v86, v84, v85);
      v89 = (v88 + v87);
      *v89 = v141;
      v89[1] = v47;
      v90 = v69[9];
      __swift_project_boxed_opaque_existential_1(v69 + 5, v69[8]);
      v91 = swift_allocObject();
      *(v91 + 16) = sub_2689A798C;
      *(v91 + 24) = v88;

      sub_268B36D24();
    }
  }
}

uint64_t sub_26899E978(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v37 = a2;
  v38 = a5;
  v34 = a4;
  v36 = a3;
  v35 = sub_268B35494();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v17, v18, v10);
    v19 = sub_268B37A34();
    v20 = sub_268B37EC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = a6;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Found relevant resumable contexts. Checking if local device can be resumed.", v21, 2u);
      v23 = v22;
      a6 = v33;
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    sub_2689A563C(v37, v39);
    v24 = v35;
    (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v35);
    v25 = (*(v8 + 80) + 496) & ~*(v8 + 80);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v39, 0x1D8uLL);
    *(v26 + 488) = v36;
    (*(v8 + 32))(v26 + v25, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v38;
    v27[1] = a6;

    sub_26899EFEC(sub_2689A7FF8, v26);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v15, v29, v10);
    v30 = sub_268B37A34();
    v31 = sub_268B37EC4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "No relevant resumable contexts found to resume and local device play queue is empty or does not match the requested mediaType. Returning nil", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    return v38(0, 0);
  }
}

uint64_t sub_26899EDAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B35494();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for MediaPlayerIntent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  sub_26893BA8C(v10);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2689A7CD8(v14, &qword_2802A5650, &unk_268B3BAC0);
    return 0;
  }

  else
  {
    sub_2688C0464(v14, v18);
    v20 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2689A5248(a1, v20, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    sub_2689A8C9C(v18);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_268B0494C();
    v19 = v21;

    sub_2688C2F6C(v18);
  }

  return v19;
}

uint64_t sub_26899EFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "ControlsFlowProvider.validateResumableContent validating resumable content.", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_2689A563C(v3, v18);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  memcpy(v16 + 4, v18, 0x1D8uLL);

  sub_268B36DB4();
}

void sub_26899F21C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_136();
  if (v8)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    (*(v12 + 16))(v0);
    v19 = sub_268B37A34();
    v20 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v20))
    {
      v21 = OUTLINED_FUNCTION_14();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Returning a resume flow", v21, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v12 + 8))(v0, v9);
    v22 = sub_26899EDAC(v6, v4);
    v2(v22, 0);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    (*(v12 + 16))(v17);
    v23 = sub_268B37A34();
    v24 = sub_268B37F04();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_14();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "Returning a nil flow", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v12 + 8))(v17, v9);
    v2(0, 0);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899F4C4(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v63 = a6;
  v67 = a3;
  v68 = a4;
  v8 = a2;
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v64 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  if (v8 <= 1)
  {

    v20 = a1;
  }

  v21 = sub_2688EFD0C(v20);
  v69 = v10;
  v70 = a5;
  v65 = v9;
  v66 = v18;
  if (v21)
  {
    v22 = v21;
    v71[0] = v19;
    sub_268B38234();
    if (v22 < 0)
    {
      goto LABEL_39;
    }

    v62 = v14;
    sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v23 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D625BD0](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = sub_268B38054();
      [v25 setIsPreResolved_];

      sub_268B38214();
      v27 = *(v71[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v22 != v23);

    a5 = v70;
    v20 = v71[0];
    v9 = v65;
    v18 = v66;
    v10 = v69;
    v14 = v62;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  if (sub_2688EFD0C(v20))
  {
    sub_2689A5248(v20, a5, type metadata accessor for Device, &selRef_setDevices_);
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v28 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v61 = *(v10 + 16);
      v62 = v28;
      v61(v18);

      v29 = sub_268B37A34();
      v30 = sub_268B37F04();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v71[0] = v32;
        *v31 = 136315138;
        v33 = type metadata accessor for Device();
        v34 = MEMORY[0x26D6256F0](v20, v33);
        v36 = v35;

        v37 = sub_26892CDB8(v34, v36, v71);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_2688BB000, v29, v30, "Found devices to resume: %s.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x26D6266E0](v32, -1, -1);
        v38 = v31;
        v39 = v69;
        MEMORY[0x26D6266E0](v38, -1, -1);

        v18 = v39[1];
        (v18)(v66, v9);
      }

      else
      {
        v45 = v18;

        v18 = *(v10 + 8);
        (v18)(v45, v9);
      }

      v46 = sub_268B18100();
      if (!v46)
      {
        break;
      }

      v47 = v46;
      v20 = sub_2688EFD0C(v46);
      v10 = 0;
      v9 = v47 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20 == v10)
        {

          v9 = v65;
          goto LABEL_33;
        }

        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x26D625BD0](v10, v47);
        }

        else
        {
          if (v10 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v48 = *(v47 + 8 * v10 + 32);
        }

        v49 = v48;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v50 = sub_268983434();

        ++v10;
        if (v50)
        {

          sub_2689A563C(v63, v71);
          v56 = swift_allocObject();
          memcpy(v56 + 2, v71, 0x1D8uLL);
          v57 = v70;
          v58 = v67;
          v59 = v68;
          v56[61] = v70;
          v56[62] = v58;
          v56[63] = v59;
          v60 = v57;

          sub_26899EFEC(sub_2689A7B14, v56);
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

LABEL_33:
    v51 = v64;
    (v61)(v64, v62, v9);
    v52 = sub_268B37A34();
    v53 = sub_268B37F04();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "Returning a resume flow", v54, 2u);
      v55 = v54;
      v51 = v64;
      MEMORY[0x26D6266E0](v55, -1, -1);
    }

    (v18)(v51, v9);
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    sub_268B0494C();
    v67();
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v14, v40, v9);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "No resumbale devices found for WHA request, returning nil flow for SiriAudio to handle", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    return (v67)(0, 0);
  }
}

uint64_t sub_26899FBD0(char a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v14, v15, v7);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Returning a resume flow", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_268B0494C();
    a4();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v12, v20, v7);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Returning a nil flow", v23, 2u);
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    return (a4)(0, 0);
  }
}

uint64_t sub_26899FEC8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = v3[35];
  __swift_project_boxed_opaque_existential_1(v3 + 31, v3[34]);

  if (sub_268B34CB4())
  {
    v25 = v13;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = v26;
    v16 = __swift_project_value_buffer(v26, qword_2802CDA10);
    (*(v27 + 16))(v12, v16, v15);
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "ControlsFlowProvider#augmentPrimaryContext getting local playback state and media type from MediaRemote", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v27 + 8))(v12, v15);
    v20 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    sub_2689A563C(v4, v28);
    v21 = swift_allocObject();
    memcpy(v21 + 2, v28, 0x1D8uLL);
    v21[61] = v25;
    v21[62] = a2;
    v21[63] = a3;

    sub_268B36D24();
  }

  else
  {

    a2(v23);
  }
}

uint64_t sub_2689A01C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  if (a2)
  {
    v48 = a1;
    v45 = a5;
    v46 = a3;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v47 = a4;
    v21 = __swift_project_value_buffer(v10, qword_2802CDA10);
    v44 = v11[2];
    v44(v18, v21, v10);

    v22 = sub_268B37A34();
    v23 = sub_268B37F04();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v15;
      v25 = v24;
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_26892CDB8(v48, a2, &v49);
      _os_log_impl(&dword_2688BB000, v22, v23, "ControlsFlowProvider.validateResumableContent found now playing app bundleID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x26D6266E0](v26, -1, -1);
      v27 = v25;
      v15 = v43;
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    v28 = v11[1];
    v28(v18, v10);
    v29 = v45;
    if (qword_2802A4F38 != -1)
    {
      swift_once();
    }

    if (sub_2689A06A4(v48, a2, qword_2802CDA28))
    {
      v30 = v29[9];
      __swift_project_boxed_opaque_existential_1(v29 + 5, v29[8]);
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      *(v31 + 24) = v47;

      sub_268B36D54();
    }

    else
    {
      v44(v15, v21, v10);
      v37 = sub_268B37A34();
      v38 = sub_268B37F04();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v15;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2688BB000, v37, v38, "ControlsFlowProvider.validateResumableContent assuming 3rd app has resumable content.", v40, 2u);
        v41 = v40;
        v15 = v39;
        MEMORY[0x26D6266E0](v41, -1, -1);
      }

      v28(v15, v10);
      return v46(1);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (v11[2])(v20, v33, v10);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "ControlsFlowProvider.validateResumableContent Now playing app bundleID is nil.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (v11[1])(v20, v10);
    return a3(0);
  }
}

BOOL sub_2689A06A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_268B38514();
  sub_268B37C54();
  v7 = sub_268B38544();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_268B38444();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_2689A0790(char a1, uint64_t (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v12, v4);
    v13 = sub_268B37A34();
    v14 = sub_268B37F04();
    if (!os_log_type_enabled(v13, v14))
    {
      v9 = v11;
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "ControlsFlowProvider.validateResumableContent has found resumable content.", v15, 2u);
    v9 = v11;
    goto LABEL_10;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v9, v16, v4);
  v13 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v13, v17))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v17, "ControlsFlowProvider.validateResumableContent inspecting the queue shows that there's no resumable content.", v15, 2u);
LABEL_10:
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

LABEL_12:

  (*(v5 + 8))(v9, v4);
  return a2(a1 & 1);
}

uint64_t sub_2689A0A2C(uint64_t a1)
{
  v159 = sub_268B37A54();
  v157 = *(v159 - 8);
  v2 = *(v157 + 64);
  v3 = MEMORY[0x28223BE20](v159);
  v148 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v155 = &v143 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v150 = &v143 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v143 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v151 = &v143 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = (&v143 - v18);
  MEMORY[0x28223BE20](v17);
  v156 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v143 - v22;
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_268B35494();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v147 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v152 = &v143 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v143 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v143 - v38;
  v40 = v29[2];
  v40(&v143 - v38, a1, v28);
  v158 = v29;
  v41 = v29[11];
  v160 = v39;
  v42 = v41(v39, v28);
  if (v42 != *MEMORY[0x277D5C128])
  {
    v156 = (v29 + 2);
    v144 = v37;
    v46 = a1;
    if (v42 == *MEMORY[0x277D5C158])
    {
      v47 = v160;
      (v158[12])(v160, v28);
      v48 = *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48)];
      v49 = sub_268B35484();
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      v44 = v157;
      if (v50)
      {
        v51 = v50;
        v52 = sub_268B37F14();
        v45 = v159;
        if (v52 != 2 && (v52 & 1) != 0)
        {
          v53 = [v51 mediaSearch];
          if (v53)
          {
            v54 = v53;
            v55 = sub_268A425C8();

            if (v55)
            {
              v56 = [v51 mediaSearch];
              if (v56)
              {
                v57 = v56;
                v58 = [v56 mediaType];

                if (v58 == 18)
                {

                  v59 = sub_268B366C4();
                  (*(*(v59 - 8) + 8))(v160, v59);
                  v43 = v28;
LABEL_32:
                  v62 = v46;
                  v60 = v40;
                  goto LABEL_67;
                }
              }
            }
          }
        }

        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v71 = __swift_project_value_buffer(v45, qword_2802CDA10);
        v72 = v154;
        (*(v44 + 16))(v154, v71, v45);
        v73 = sub_268B37A34();
        v74 = sub_268B37F04();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_2688BB000, v73, v74, "ControlsFlowProvider#shouldHandleAmbiguousShuffle INPlayMediaIntent doesn't have the expected properties set, not an ambiguous shuffle music request", v75, 2u);
          MEMORY[0x26D6266E0](v75, -1, -1);
        }

        (*(v44 + 8))(v72, v45);
      }

      else
      {

        v90 = v159;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v91 = __swift_project_value_buffer(v90, qword_2802CDA10);
        v92 = v151;
        (*(v44 + 16))(v151, v91, v90);
        v93 = sub_268B37A34();
        v94 = sub_268B37F04();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_2688BB000, v93, v94, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Not an INPlayMediaIntent", v95, 2u);
          MEMORY[0x26D6266E0](v95, -1, -1);
        }

        (*(v44 + 8))(v92, v90);
      }

      v96 = sub_268B366C4();
      (*(*(v96 - 8) + 8))(v160, v96);
      return 0;
    }

    v67 = v42 == *MEMORY[0x277D5C148] || v42 == *MEMORY[0x277D5C160];
    v44 = v157;
    if (!v67)
    {
      v76 = v28;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v77 = v159;
      v78 = __swift_project_value_buffer(v159, qword_2802CDA10);
      (*(v44 + 16))(v155, v78, v77);
      v79 = v152;
      v40(v152, a1, v28);
      v80 = sub_268B37A34();
      v81 = sub_268B37EE4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v153 = v82;
        v154 = swift_slowAlloc();
        v161[0] = v154;
        *v82 = 136315138;
        v40(v144, v79, v28);
        v83 = sub_268B37C24();
        v85 = v84;
        v86 = v158[1];
        v86(v79, v28);
        v87 = sub_26892CDB8(v83, v85, v161);
        v76 = v28;

        v88 = v153;
        *(v153 + 4) = v87;
        _os_log_impl(&dword_2688BB000, v80, v81, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Received unexpected parse: %s", v88, 0xCu);
        v89 = v154;
        __swift_destroy_boxed_opaque_existential_0Tm(v154);
        MEMORY[0x26D6266E0](v89, -1, -1);
        MEMORY[0x26D6266E0](v88, -1, -1);
      }

      else
      {

        v86 = v158[1];
        v86(v79, v28);
      }

      (*(v44 + 8))(v155, v159);
      v86(v160, v76);
      return 0;
    }

    v43 = v28;
    (v158[1])(v160, v28);
    v68 = v153[40];
    __swift_project_boxed_opaque_existential_1(v153 + 36, v153[39]);
    if ((sub_268B36F54() & 1) == 0)
    {
      v101 = v159;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v102 = __swift_project_value_buffer(v101, qword_2802CDA10);
      v103 = v150;
      (*(v44 + 16))(v150, v102, v101);
      v104 = sub_268B37A34();
      v105 = sub_268B37EE4();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_2688BB000, v104, v105, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Siri X v2 flag is not enabled, not handling ambiguous shuffle music request", v106, 2u);
        MEMORY[0x26D6266E0](v106, -1, -1);
      }

      (*(v44 + 8))(v103, v101);
      return 0;
    }

    v69 = sub_268A40454();
    v45 = v159;
    if (v69)
    {
      sub_268B35DC4();
      if (v161[3])
      {
        sub_268B361E4();
        if (swift_dynamicCast())
        {
          if (sub_2689A848C())
          {
            v70 = sub_2689A8424();
            if (v70 == 26)
            {
LABEL_31:

              goto LABEL_32;
            }

            if (sub_268942D54(v70) == 0x7972617262696CLL && v139 == 0xE700000000000000)
            {
            }

            else
            {
              v141 = sub_268B38444();

              if ((v141 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v142 = __swift_project_value_buffer(v45, qword_2802CDA10);
            v134 = v145;
            (*(v44 + 16))(v145, v142, v45);
            v135 = sub_268B37A34();
            v136 = sub_268B37ED4();
            if (!os_log_type_enabled(v135, v136))
            {
              goto LABEL_104;
            }

            v137 = swift_slowAlloc();
            *v137 = 0;
            v138 = "ControlsFlowProvider#shouldHandleAmbiguousShuffle user mentioned library, this is not ambiguous";
          }

          else
          {
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v133 = __swift_project_value_buffer(v45, qword_2802CDA10);
            v134 = v146;
            (*(v44 + 16))(v146, v133, v45);
            v135 = sub_268B37A34();
            v136 = sub_268B37ED4();
            if (!os_log_type_enabled(v135, v136))
            {
              goto LABEL_104;
            }

            v137 = swift_slowAlloc();
            *v137 = 0;
            v138 = "ControlsFlowProvider#shouldHandleAmbiguousShuffle Task is not a supported shuffle type for controls";
          }

          _os_log_impl(&dword_2688BB000, v135, v136, v138, v137, 2u);
          MEMORY[0x26D6266E0](v137, -1, -1);
LABEL_104:

          v131 = *(v44 + 8);
          v132 = v134;
LABEL_85:
          v131(v132, v45);
          return 0;
        }
      }

      else
      {

        sub_2689A7CD8(v161, &byte_2802A6450, &byte_268B3BE10);
      }
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v126 = __swift_project_value_buffer(v45, qword_2802CDA10);
    v127 = v149;
    (*(v44 + 16))(v149, v126, v45);
    v128 = sub_268B37A34();
    v129 = sub_268B37EE4();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_2688BB000, v128, v129, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Did not receive a task from parse", v130, 2u);
      MEMORY[0x26D6266E0](v130, -1, -1);
    }

    v131 = *(v44 + 8);
    v132 = v127;
    goto LABEL_85;
  }

  v40(v37, a1, v28);
  sub_26893BA8C(v37);
  v43 = v28;
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_2689A7CD8(v23, &qword_2802A5650, &unk_268B3BAC0);
    v44 = v157;
    v45 = v159;
LABEL_72:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v120 = __swift_project_value_buffer(v45, qword_2802CDA10);
    v121 = v156;
    (*(v44 + 16))(v156, v120, v45);
    v122 = sub_268B37A34();
    v123 = sub_268B37EE4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_2688BB000, v122, v123, "ControlsFlowProvider#shouldHandleAmbiguousShuffle NLv3 intent is not ambiguous shuffle", v124, 2u);
      MEMORY[0x26D6266E0](v124, -1, -1);
    }

    (*(v44 + 8))(v121, v45);
    (v158[1])(v160, v43);
    return 0;
  }

  v60 = v40;
  v61 = v24;
  v62 = a1;
  sub_2688C0464(v23, v27);
  v63 = *v27;
  v45 = v159;
  if (v63 == 24)
  {
    goto LABEL_71;
  }

  if (sub_26893E3F8(v63) == 0x656C6666756873 && v64 == 0xE700000000000000)
  {
  }

  else
  {
    v66 = sub_268B38444();

    if ((v66 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v97 = v27[*(v61 + 48)];
  if (v97 == 26)
  {
    goto LABEL_71;
  }

  if (sub_268942D54(v97) == 0x636973756DLL && v98 == 0xE500000000000000)
  {

    goto LABEL_64;
  }

  v100 = sub_268B38444();

  if ((v100 & 1) == 0)
  {
LABEL_71:
    sub_2688C2F6C(v27);
    v44 = v157;
    goto LABEL_72;
  }

LABEL_64:
  if (v27[*(v61 + 32)] != 2)
  {
    goto LABEL_71;
  }

  v107 = v27[1];
  sub_2688C2F6C(v27);
  v44 = v157;
  if (v107 != 4)
  {
    goto LABEL_72;
  }

  v144 = v37;
  (v158[1])(v160, v43);
LABEL_67:
  v109 = v147;
  v108 = v148;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v110 = __swift_project_value_buffer(v45, qword_2802CDA10);
  (*(v44 + 16))(v108, v110, v45);
  v60(v109, v62, v43);
  v111 = v60;
  v112 = sub_268B37A34();
  v113 = sub_268B37ED4();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v161[0] = v115;
    *v114 = 136315138;
    v111(v144, v109, v43);
    v116 = sub_268B37C24();
    v118 = v117;
    (v158[1])(v109, v43);
    v119 = sub_26892CDB8(v116, v118, v161);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_2688BB000, v112, v113, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Received valid ambiguous shuffle parse: %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v115);
    MEMORY[0x26D6266E0](v115, -1, -1);
    MEMORY[0x26D6266E0](v114, -1, -1);

    (*(v44 + 8))(v148, v45);
  }

  else
  {

    (v158[1])(v109, v43);
    (*(v44 + 8))(v108, v45);
  }

  return 1;
}

uint64_t sub_2689A1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  v20 = a4;
  v21 = a1;
  v10 = sub_268B35494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689A563C(a2, v22);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 488) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  memcpy((v16 + 16), v22, 0x1D8uLL);
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = (v16 + v15);
  *v17 = v20;
  v17[1] = a5;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a6;

  sub_26899FEC8(v21, sub_2689A5798, v16);
}

void sub_2689A1EBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = sub_268B35494();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  v22 = *__swift_project_boxed_opaque_existential_1((a2 + 368), *(a2 + 392));
  v63 = a1;
  sub_26894A7E4();
  (*(v17 + 16))(v20, a3, v16);
  LODWORD(v22) = (*(v17 + 88))(v20, v16);
  LODWORD(a1) = *MEMORY[0x277D5C160];
  (*(v17 + 8))(v20, v16);
  if (v22 != a1 || sub_268A40454() && (v23 = sub_2689CD5F0(), , (v23 & 1) != 0))
  {
    sub_2688E4594(a2 + 40, v70);
    sub_2689A563C(a2, v69);
    sub_268997824();
    sub_2689A5A38(v69);
    sub_2688E4594(a2 + 248, v69);
    sub_2688E4594(a2 + 368, v67);
    sub_2688E4594(a2 + 424, &v66);
    v24 = v68;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
    v26 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v28 = (&v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = *v28;
    v31 = v71;
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v33 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v32);
    (*(v35 + 16))(&v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2689F7CDC();
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    v38 = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntent()) init];
    v39 = v63;
    sub_2689A5248(v63, v38, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    swift_beginAccess();
    *(v21 + *(v58 + 48)) = 0;
    swift_beginAccess();
    v40 = v59;
    sub_268946C8C(v21, v59);
    sub_2689CA4AC(v40);
    sub_2688C2F6C(v40);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v62;
    v42 = __swift_project_value_buffer(v62, qword_2802CDA10);
    v44 = v60;
    v43 = v61;
    (*(v61 + 16))(v60, v42, v41);
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Resolving potential devices", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v43 + 8))(v44, v41);
    v48 = v65;

    sub_2689F525C(v38, v37, v64, v48, v39);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = v62;
    v50 = __swift_project_value_buffer(v62, qword_2802CDA10);
    v51 = v61;
    (*(v61 + 16))(v15, v50, v49);
    v52 = sub_268B37A34();
    v53 = sub_268B37F04();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v63;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Task is not an ambiguous shuffle music request. Handling as explicit shuffle.", v56, 2u);
      MEMORY[0x26D6266E0](v56, -1, -1);
    }

    (*(v51 + 8))(v15, v49);
    v64(v55);
  }
}

void sub_2689A25C4()
{
  OUTLINED_FUNCTION_26();
  v94 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v98 = v10;
  v99 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v97 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v95 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v93 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v96 = v19;
  OUTLINED_FUNCTION_8();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v88 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  v27 = sub_2688EFD0C(v7);
  if (v27)
  {
    v28 = v27;
    v29 = (v7 & 0xC000000000000001);
    sub_2688EFD10(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_73;
    }

    for (i = *(v7 + 32); ; i = MEMORY[0x26D625BD0](0, v7))
    {
      v31 = i;
      v32 = [i resolutionResultCode];

      v33 = MEMORY[0x277D84F90];
      if (v32 == 2)
      {
        break;
      }

      if (v32)
      {
        goto LABEL_23;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v89 = v3;
      v90 = v5;
      OUTLINED_FUNCTION_82(v99, qword_2802CDA10);
      v5 = v98;
      v91 = *(v98 + 16);
      v91(v26);
      v34 = sub_268B37A34();
      v35 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v35))
      {
        v36 = OUTLINED_FUNCTION_14();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Adding resolved device(s)", v36, 2u);
        v5 = v98;
        OUTLINED_FUNCTION_12();
      }

      v92 = *(v5 + 8);
      v92(v26, v99);
      v23 = 0;
      v102 = v33;
      v3 = &selRef_groupLeader;
      while (1)
      {
        if (v28 == v23)
        {
          v3 = v89;
          v5 = v90;
          v47 = v98;
          v26 = v99;
          goto LABEL_39;
        }

        if (v29)
        {
          v37 = OUTLINED_FUNCTION_190();
          v38 = MEMORY[0x26D625BD0](v37);
        }

        else
        {
          if (v23 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v38 = *(v7 + 8 * v23 + 32);
        }

        v0 = v38;
        v5 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v26 = [v38 resolvedValue];
        sub_268B380E4();
        swift_unknownObjectRelease();

        type metadata accessor for Device();
        if ((swift_dynamicCast() & 1) != 0 && (v0 = v101) != 0)
        {
          MEMORY[0x26D6256C0]();
          if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268B37D14();
          }

          sub_268B37D44();
          v33 = v102;
          ++v23;
        }

        else
        {
          ++v23;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v99, qword_2802CDA10);
    v47 = v98;
    OUTLINED_FUNCTION_152();
    v91 = v48;
    v48(v0);
    v49 = sub_268B37A34();
    v50 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v50))
    {
      v51 = OUTLINED_FUNCTION_14();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Adding disambiguated devices", v51, 2u);
      OUTLINED_FUNCTION_12();
    }

    v92 = *(v47 + 8);
    v92(v0, v99);
    if (v29)
    {
      v52 = MEMORY[0x26D625BD0](0, v7);
    }

    else
    {
      v52 = *(v7 + 32);
    }

    v53 = v52;
    v54 = [v52 disambiguationItems];

    v55 = sub_268B37CF4();
    sub_2689976AC(v55);
    OUTLINED_FUNCTION_129();

    if (v54)
    {
      v33 = v54;
    }

    v26 = v99;
LABEL_39:
    if (sub_2688EFD0C(v33))
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v89 = v3;
      v90 = v5;
      OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
      v56 = v96;
      v88 = v57;
      v97 = v47 + 16;
      v91(v96);
      v58 = sub_268B37A34();
      v59 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v59))
      {
        v7 = OUTLINED_FUNCTION_14();
        *v7 = 0;
        _os_log_impl(&dword_2688BB000, v58, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Checking resolved devices for playing music", v7, 2u);
        OUTLINED_FUNCTION_12();
      }

      v98 = v47 + 8;
      v92(v56, v26);
      v23 = sub_2688EFD0C(v33);
      v3 = (v33 & 0xC000000000000001);
      v5 = v33 & 0xFFFFFFFFFFFFFF8;

      v0 = 0;
      v29 = &selRef_groupLeader;
      v28 = &unk_279C42000;
      while (v23 != v0)
      {
        if (v3)
        {
          v60 = MEMORY[0x26D625BD0](v0, v33);
        }

        else
        {
          if (v0 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v60 = *(v33 + 8 * v0 + 32);
        }

        v7 = v60;
        if (__OFADD__(v0, 1))
        {
          goto LABEL_70;
        }

        v61 = [v60 context];
        if (v61)
        {
          v26 = v61;
          v62 = [v61 nowPlayingState];

          if (v62 == 1)
          {

            v75 = v93;
            OUTLINED_FUNCTION_66_2();
            v76();
            v77 = sub_268B37A34();
            sub_268B37F04();
            OUTLINED_FUNCTION_13();
            if (os_log_type_enabled(v77, v78))
            {
              v80 = OUTLINED_FUNCTION_172_0();
              v81 = OUTLINED_FUNCTION_173_0();
              v100 = v81;
              *v80 = 136315138;
              v82 = type metadata accessor for Device();

              v84 = MEMORY[0x26D6256F0](v83, v82);
              v86 = v85;

              v87 = sub_26892CDB8(v84, v86, &v100);

              *(v80 + 4) = v87;
              _os_log_impl(&dword_2688BB000, v77, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Mentioned devices are playing music: %s, returning handle response", v80, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v81);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();
            }

            v92(v75, (v33 & 0xFFFFFFFFFFFFFF8));
            v90(v94);
            goto LABEL_67;
          }
        }

        else
        {
        }

        ++v0;
      }

      v63 = v95;
      OUTLINED_FUNCTION_66_2();
      v64();
      v65 = sub_268B37A34();
      v66 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v66))
      {
        v67 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v67);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v68, v69, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest No playing music found to shuffle, not handling this as a set shuffle state request");
        OUTLINED_FUNCTION_83_0();
      }

      v92(v63, (v33 & 0xFFFFFFFFFFFFFF8));
      v90(0);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
      v91(v97);
      v70 = sub_268B37A34();
      v71 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v71))
      {
        v72 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v72);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v73, v74, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest No resolved devices, not handling");
        OUTLINED_FUNCTION_83_0();
      }

      v92(v97, v26);
      (v5)(0);
    }

LABEL_67:
  }

  else
  {
LABEL_23:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v99, qword_2802CDA10);
    v39 = v98;
    OUTLINED_FUNCTION_51_1();
    v40(v23);
    v41 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v43);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v41, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Device resolution result was not success or disambiguation, not handling");
      OUTLINED_FUNCTION_20_2();
    }

    v44 = *(v39 + 8);
    v45 = OUTLINED_FUNCTION_190();
    v46(v45);
    (v5)(0);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689A2F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36FD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D5F708], v8);
  sub_2689A7B24(&qword_2802A5C98, MEMORY[0x277D5F710]);
  v13 = sub_268B37BB4();
  (*(v9 + 8))(v12, v8);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v7, v14, v3);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    v18 = v13 ^ 1;
    *(v17 + 4) = v18 & 1;
    _os_log_impl(&dword_2688BB000, v15, v16, "Local device has resumable content: %{BOOL}d", v17, 8u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  else
  {

    v18 = v13 ^ 1;
  }

  (*(v4 + 8))(v7, v3);
  return a2(v18 & 1);
}

uint64_t sub_2689A3274(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802A4F30;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "ControlsFlowProvider#makeRequestContext Fetching device contexts", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = a3[13];
  v18 = a3[14];
  __swift_project_boxed_opaque_existential_1(a3 + 10, v17);
  (*(v18 + 8))(sub_2688E19F8, v11, v17, v18);
}

uint64_t sub_2689A3488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v9 = sub_268B36FD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[8];
  v19[2] = a2[9];
  v19[1] = __swift_project_boxed_opaque_existential_1(a2 + 5, v13);
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v12, v9);
  *(v16 + v15) = a3;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v20;
  v17[1] = a5;

  sub_268B36DD4();
}

uint64_t sub_2689A3630(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v64[1] = a6;
  v65 = a5;
  v9 = sub_268B37A54();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v64[0] = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = v64 - v13;
  v14 = sub_268B36FD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277D5F700], v14);
  v19 = sub_268B36FC4();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v21 = sub_2689CC500(a1, a2);
  swift_beginAccess();
  v22 = *(a4 + 16);
  v23 = sub_2688EFD0C(v22);

  for (i = 0; ; ++i)
  {
    if (v23 == i)
    {

      type metadata accessor for DeviceContext();
      v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v29 = sub_26893A824(0, 0);
      [v29 setNowPlayingState_];
      [v29 setNowPlayingMediaType_];
      swift_beginAccess();
      v23 = v29;
      MEMORY[0x26D6256C0]();
      sub_268A7A1A8(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_268B37D44();
      swift_endAccess();
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x26D625BD0](i, v22);
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      swift_once();
LABEL_14:
      v30 = v67;
      v31 = __swift_project_value_buffer(v67, qword_2802CDA10);
      v32 = v66;
      v33 = v68;
      (*(v66 + 16))(v68, v31, v30);
      v34 = v23;
      v35 = sub_268B37A34();
      v36 = sub_268B37F04();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v69[0] = v38;
        *v37 = 136315394;
        v39 = NowPlayingState.description.getter([v34 nowPlayingState]);
        v41 = sub_26892CDB8(v39, v40, v69);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = NowPlayingMediaType.description.getter([v34 nowPlayingMediaType]);
        v44 = sub_26892CDB8(v42, v43, v69);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_2688BB000, v35, v36, "ControlsFlowProvider#augmentPrimaryContext added primary context with nowPlayingState: %s and nowPlayingMediaType: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6266E0](v38, -1, -1);
        MEMORY[0x26D6266E0](v37, -1, -1);

        (*(v32 + 8))(v68, v30);
      }

      else
      {

        (*(v32 + 8))(v33, v30);
      }

LABEL_17:
      v45 = v65;
      swift_beginAccess();
      v46 = *(a4 + 16);

      v45(v47);
    }

    v27 = [v25 proximity];
    if ((v27 - 1) >= 4)
    {
      break;
    }
  }

  if (!v27)
  {

    [v26 setNowPlayingState_];
    [v26 setNowPlayingMediaType_];
    v49 = v66;
    v50 = v67;
    v51 = v64[0];
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v50, qword_2802CDA10);
    (*(v49 + 16))(v51, v52, v50);
    v53 = v26;
    v54 = sub_268B37A34();
    v55 = sub_268B37F04();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69[0] = v57;
      *v56 = 136315394;
      v58 = NowPlayingState.description.getter([v53 nowPlayingState]);
      v60 = sub_26892CDB8(v58, v59, v69);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = NowPlayingMediaType.description.getter([v53 nowPlayingMediaType]);
      v63 = sub_26892CDB8(v61, v62, v69);

      *(v56 + 14) = v63;
      _os_log_impl(&dword_2688BB000, v54, v55, "ControlsFlowProvider#augmentPrimaryContext augmented primary context with nowPlayingState: %s and nowPlayingMediaType: %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v57, -1, -1);
      MEMORY[0x26D6266E0](v56, -1, -1);

      (*(v49 + 8))(v64[0], v50);
    }

    else
    {

      (*(v49 + 8))(v51, v50);
    }

    goto LABEL_17;
  }

  v69[0] = v27;
  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_2689A3D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_15_10();
  sub_268B379F4();
  return a7(a1);
}

uint64_t sub_2689A3E7C()
{
  OUTLINED_FUNCTION_44_4();
  v4[8] = v1;
  v4[9] = v2 & 1;
  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5();
  return v0(v4);
}

uint64_t sub_2689A3F44()
{
  OUTLINED_FUNCTION_44_4();
  v3[8] = v1 & 1;
  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5();
  return v0(v3);
}

uint64_t sub_2689A4004()
{
  OUTLINED_FUNCTION_50_3();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5();
  return v0(v2);
}

uint64_t sub_2689A40E0(uint64_t a1, __int16 a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 0x1FF;
  return a3(&v4);
}

uint64_t sub_2689A4124(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_2689A4164(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2689A41E0(v6);
  return sub_268B38224();
}

void sub_2689A41E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CCA8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2689A44FC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2689A42C0(0, v3, 1, a1);
  }
}

void sub_2689A42C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_268B34614();
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v33 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v37 = (v11 + 8);
    v40 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v35 = v15;
      v36 = a3;
      v17 = *(v40 + 8 * a3);
      v34 = v16;
      v18 = v16;
      do
      {
        v19 = *v15;
        v20 = v17;
        v21 = v19;
        v22 = [v20 nowPlayingTimestamp];
        if (!v22)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v23 = v22;
        sub_268B345D4();

        v24 = [v21 nowPlayingTimestamp];
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = v24;
        v26 = v38;
        sub_268B345D4();

        v41 = sub_268B345A4();
        v27 = v18;
        v28 = *v37;
        v29 = v26;
        v30 = v39;
        (*v37)(v29, v39);
        v28(v13, v30);

        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_13;
        }

        v31 = *v15;
        v17 = *(v15 + 8);
        *v15 = v17;
        *(v15 + 8) = v31;
        v15 -= 8;
        ++v18;
      }

      while (v27 != -1);
      a3 = v36 + 1;
      v15 = v35 + 8;
      v16 = v34 - 1;
      if (v36 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2689A44FC(void ***a1, uint64_t a2, void ***a3, unint64_t a4)
{
  v126 = a1;
  v139 = sub_268B34614();
  v6 = *(*(v139 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v139);
  v136 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v124 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v131 = &v124 - v13;
  MEMORY[0x28223BE20](v12);
  v132 = &v124 - v15;
  v133 = a3;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v17 = 0;
    v138 = (v14 + 8);
    v18 = MEMORY[0x277D84F90];
    v19 = &unk_279C42000;
    v125 = a4;
    v140 = v11;
    while (1)
    {
      v20 = v17++;
      v127 = v20;
      if (v17 < v16)
      {
        v124 = v18;
        v21 = *v133;
        v22 = (*v133)[v20];
        v23 = (*v133)[v17];
        v24 = v22;
        v25 = v135;
        LODWORD(v134) = sub_268AD67D0(v23, v24);
        v135 = v25;
        if (v25)
        {

          return;
        }

        v129 = 8 * v20;
        v130 = v16;
        v26 = &v21[v20 + 2];
        v27 = (v20 + 2);
        while (1)
        {
          v28 = v27;
          if (v17 + 1 >= v16)
          {
            break;
          }

          v137 = v27;
          v29 = *(v26 - 1);
          v30 = *v26;
          v31 = v29;
          v32 = [v30 v19[497]];
          if (!v32)
          {
            goto LABEL_143;
          }

          v33 = v32;
          v34 = v19;
          v35 = v17;
          v36 = v132;
          sub_268B345D4();

          v37 = [v31 v34 + 888];
          if (!v37)
          {
            goto LABEL_144;
          }

          v38 = v37;
          v39 = v131;
          sub_268B345D4();

          LODWORD(v38) = sub_268B345A4() & 1;
          v40 = *v138;
          v41 = v39;
          v42 = v36;
          v43 = v139;
          (*v138)(v41, v139);
          v40(v42, v43);

          ++v26;
          v17 = v35 + 1;
          v28 = v137;
          v27 = (v137 + 1);
          v11 = v140;
          v19 = &unk_279C42000;
          v16 = v130;
          if ((v134 & 1) != v38)
          {
            goto LABEL_12;
          }
        }

        v17 = v16;
LABEL_12:
        if (v134)
        {
          v44 = v127;
          a4 = v125;
          if (v17 < v127)
          {
            goto LABEL_138;
          }

          v18 = v124;
          if (v127 < v17)
          {
            if (v16 >= v28)
            {
              v45 = v28;
            }

            else
            {
              v45 = v16;
            }

            v46 = 8 * v45 - 8;
            v47 = v17;
            v48 = v129;
            do
            {
              if (v44 != --v47)
              {
                v49 = *v133;
                if (!*v133)
                {
                  goto LABEL_147;
                }

                v50 = *(v49 + v48);
                *(v49 + v48) = *(v49 + v46);
                *(v49 + v46) = v50;
              }

              ++v44;
              v46 -= 8;
              v48 += 8;
            }

            while (v44 < v47);
          }
        }

        else
        {
          v18 = v124;
          a4 = v125;
        }
      }

      v51 = v133[1];
      if (v17 >= v51)
      {
        goto LABEL_46;
      }

      if (__OFSUB__(v17, v127))
      {
        goto LABEL_135;
      }

      if (v17 - v127 >= a4)
      {
LABEL_46:
        v53 = v127;
      }

      else
      {
        if (__OFADD__(v127, a4))
        {
          goto LABEL_136;
        }

        if ((v127 + a4) >= v51)
        {
          v52 = v133[1];
        }

        else
        {
          v52 = (v127 + a4);
        }

        if (v52 < v127)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v53 = v127;
        if (v17 != v52)
        {
          v124 = v18;
          v137 = *v133;
          v54 = &v137[v17 - 1];
          v55 = v127 - v17;
          v128 = v52;
LABEL_35:
          v134 = v17;
          v56 = v137[v17];
          v129 = v55;
          v130 = v54;
          while (1)
          {
            v57 = *v54;
            a4 = v56;
            v58 = v57;
            v59 = [a4 v19[497]];
            if (!v59)
            {
              goto LABEL_141;
            }

            v60 = v59;
            sub_268B345D4();

            v61 = [v58 v19[497]];
            if (!v61)
            {
              break;
            }

            v62 = v61;
            v63 = v136;
            sub_268B345D4();

            LOBYTE(v62) = sub_268B345A4();
            v64 = v11;
            v65 = *v138;
            v66 = v63;
            v67 = v139;
            (*v138)(v66, v139);
            v65(v64, v67);

            if ((v62 & 1) == 0)
            {
              v11 = v140;
              v19 = &unk_279C42000;
LABEL_44:
              v17 = v134 + 1;
              v54 = (v130 + 8);
              v55 = v129 - 1;
              if (v134 + 1 == v128)
              {
                v17 = v128;
                v18 = v124;
                goto LABEL_46;
              }

              goto LABEL_35;
            }

            if (!v137)
            {
              goto LABEL_142;
            }

            v68 = *v54;
            v56 = v54[1];
            *v54 = v56;
            v54[1] = v68;
            --v54;
            v69 = __CFADD__(v55++, 1);
            v11 = v140;
            v19 = &unk_279C42000;
            if (v69)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }
      }

      if (v17 < v53)
      {
        goto LABEL_134;
      }

      v70 = v18;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = v70;
      }

      else
      {
        v112 = v70[2];
        sub_268987C84();
        v18 = v113;
      }

      v71 = v18[2];
      a4 = v71 + 1;
      if (v71 >= v18[3] >> 1)
      {
        sub_268987C84();
        v18 = v114;
      }

      v18[2] = a4;
      v72 = v18 + 4;
      v73 = &v18[2 * v71 + 4];
      *v73 = v127;
      v73[1] = v17;
      v137 = *v126;
      if (!v137)
      {
        goto LABEL_148;
      }

      if (v71)
      {
        v134 = v17;
        while (1)
        {
          v74 = a4 - 1;
          v75 = &v72[2 * a4 - 2];
          v76 = &v18[2 * a4];
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v77 = v18[4];
            v78 = v18[5];
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_68:
            if (v80)
            {
              goto LABEL_121;
            }

            v92 = *v76;
            v91 = v76[1];
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            v95 = v93;
            if (v93)
            {
              goto LABEL_124;
            }

            v96 = v75[1];
            v97 = v96 - *v75;
            if (__OFSUB__(v96, *v75))
            {
              goto LABEL_127;
            }

            if (__OFADD__(v94, v97))
            {
              goto LABEL_129;
            }

            if (v94 + v97 >= v79)
            {
              if (v79 < v97)
              {
                v74 = a4 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          if (a4 < 2)
          {
            goto LABEL_123;
          }

          v99 = *v76;
          v98 = v76[1];
          v87 = __OFSUB__(v98, v99);
          v94 = v98 - v99;
          v95 = v87;
LABEL_83:
          if (v95)
          {
            goto LABEL_126;
          }

          v101 = *v75;
          v100 = v75[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_128;
          }

          if (v102 < v94)
          {
            goto LABEL_97;
          }

LABEL_90:
          if (v74 - 1 >= a4)
          {
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (!*v133)
          {
            goto LABEL_145;
          }

          v17 = v18;
          a4 = &v72[2 * v74 - 2];
          v106 = *a4;
          v107 = v74;
          v108 = &v72[2 * v74];
          v109 = *(v108 + 1);
          v110 = v135;
          sub_2689A4D98(&(*v133)[*a4], &(*v133)[*v108], &(*v133)[v109], v137);
          v135 = v110;
          if (v110)
          {
            goto LABEL_113;
          }

          if (v109 < v106)
          {
            goto LABEL_116;
          }

          v111 = *(v17 + 16);
          if (v107 > v111)
          {
            goto LABEL_117;
          }

          *a4 = v106;
          *(a4 + 8) = v109;
          if (v107 >= v111)
          {
            goto LABEL_118;
          }

          a4 = v111 - 1;
          sub_268AE0F78(v108 + 16, v111 - 1 - v107, v108);
          v18 = v17;
          *(v17 + 16) = v111 - 1;
          v11 = v140;
          v17 = v134;
          if (v111 <= 2)
          {
            goto LABEL_97;
          }
        }

        v81 = &v72[2 * a4];
        v82 = *(v81 - 8);
        v83 = *(v81 - 7);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_119;
        }

        v86 = *(v81 - 6);
        v85 = *(v81 - 5);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_120;
        }

        v88 = v76[1];
        v89 = v88 - *v76;
        if (__OFSUB__(v88, *v76))
        {
          goto LABEL_122;
        }

        v87 = __OFADD__(v79, v89);
        v90 = v79 + v89;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v90 >= v84)
        {
          v104 = *v75;
          v103 = v75[1];
          v87 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v87)
          {
            goto LABEL_133;
          }

          if (v79 < v105)
          {
            v74 = a4 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_68;
      }

LABEL_97:
      v16 = v133[1];
      a4 = v125;
      if (v17 >= v16)
      {
        goto LABEL_102;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_102:
  a4 = *v126;
  if (!*v126)
  {
LABEL_149:
    __break(1u);
    return;
  }

  v17 = v18;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v115 = v17;
  }

  else
  {
LABEL_139:
    v115 = sub_268AE0F64(v17);
  }

  v17 = (v115 + 16);
  v116 = *(v115 + 2);
  while (v116 >= 2)
  {
    if (!*v133)
    {
      goto LABEL_146;
    }

    v117 = v115;
    v118 = &v115[16 * v116];
    v119 = *v118;
    v120 = v17 + 16 * v116;
    v121 = *(v120 + 8);
    v122 = v135;
    sub_2689A4D98(&(*v133)[*v118], &(*v133)[*v120], &(*v133)[v121], a4);
    v135 = v122;
    if (v122)
    {
      break;
    }

    if (v121 < v119)
    {
      goto LABEL_130;
    }

    if (v116 - 2 >= *v17)
    {
      goto LABEL_131;
    }

    *v118 = v119;
    *(v118 + 1) = v121;
    v123 = *v17 - v116;
    if (*v17 < v116)
    {
      goto LABEL_132;
    }

    v116 = *v17 - 1;
    sub_268AE0F78((v120 + 16), v123, v120);
    *v17 = v116;
    v115 = v117;
  }

LABEL_113:
}

uint64_t sub_2689A4D98(void **a1, void **a2, void **a3, void **a4)
{
  v64 = sub_268B34614();
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  i = (&v57 - v16);
  v17 = a2 - a1;
  v63 = (v18 + 8);
  v19 = a3 - a2;
  if (v17 < v19)
  {
    sub_268988A70(a1, a2 - a1, a4);
    v20 = &a4[v17];
    v21 = &unk_279C42000;
    v65 = v20;
    v66 = a3;
    while (1)
    {
      if (a4 >= v20 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v23 = a1;
      v67 = a2;
      v24 = *a2;
      v25 = *a4;
      v26 = v24;
      v27 = v25;
      result = [v26 v21[497]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v29 = result;
      v30 = a4;
      v31 = i;
      sub_268B345D4();

      result = [v27 v21[497]];
      if (!result)
      {
        goto LABEL_40;
      }

      v32 = result;
      v33 = v60;
      sub_268B345D4();

      LOBYTE(v32) = sub_268B345A4();
      v34 = *v63;
      v35 = v33;
      v36 = v64;
      (*v63)(v35, v64);
      v34(v31, v36);

      if ((v32 & 1) == 0)
      {
        break;
      }

      v37 = v67;
      a2 = v67 + 1;
      v38 = v23;
      if (v23 != v67)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v38 + 1;
      v20 = v65;
      a3 = v66;
      v21 = &unk_279C42000;
    }

    v37 = a4++;
    v38 = v23;
    a2 = v67;
    if (v23 == v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v38 = *v37;
    goto LABEL_14;
  }

  sub_268988A70(a2, a3 - a2, a4);
  v20 = &a4[v19];
  v39 = &unk_279C42000;
  v58 = a4;
  v59 = a1;
LABEL_16:
  v40 = a2 - 1;
  v41 = a3 - 1;
  v67 = a2;
  for (i = a2 - 1; v20 > a4 && a2 > a1; v40 = i)
  {
    v66 = v41;
    v43 = v20 - 1;
    v44 = *v40;
    v45 = *(v20 - 1);
    v46 = v44;
    result = [v45 v39[497]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v47 = result;
    v65 = v20;
    sub_268B345D4();

    result = [v46 v39[497]];
    if (!result)
    {
      goto LABEL_41;
    }

    v48 = result;
    v49 = v61;
    sub_268B345D4();

    LOBYTE(v48) = sub_268B345A4();
    v50 = *v63;
    v51 = v49;
    v52 = v64;
    (*v63)(v51, v64);
    v50(v13, v52);

    if (v48)
    {
      v20 = v65;
      a3 = v66;
      v54 = i;
      a2 = i;
      a4 = v58;
      a1 = v59;
      v39 = &unk_279C42000;
      if (v66 + 1 != v67)
      {
        *v66 = *i;
        a2 = v54;
      }

      goto LABEL_16;
    }

    v53 = v66;
    a4 = v58;
    if (v65 != v66 + 1)
    {
      *v66 = *v43;
    }

    v41 = v53 - 1;
    v20 = v43;
    a2 = v67;
    a1 = v59;
    v39 = &unk_279C42000;
  }

LABEL_31:
  v55 = v20 - a4;
  if (a2 != a4 || a2 >= &a4[v55])
  {
    memmove(a2, a4, 8 * v55);
  }

  return 1;
}

void sub_2689A51F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setTargetBundleIdentifier_];
}

void sub_2689A5248(uint64_t a1, void *a2, void (*a3)(void), SEL *a4)
{
  a3(0);
  v6 = sub_268B37CE4();
  [a2 *a4];
}

void *sub_2689A52C0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v17 = type metadata accessor for AnalyticsServiceImpl();
  v18 = &off_2879539D0;
  v16[0] = a1;
  type metadata accessor for ContextUtil();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_3_8();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v12 = OUTLINED_FUNCTION_78_3(v11);
  v13(v12);
  v14 = sub_2689A5578(*v3, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v14;
}

uint64_t sub_2689A5424()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2689A5470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 472))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2689A54B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2689A5578(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v8 = sub_268B376A4();
  v9 = MEMORY[0x277D5F928];
  a4[15] = v8;
  a4[16] = v9;
  a4[12] = a3;
  a4[5] = type metadata accessor for AnalyticsServiceImpl();
  a4[6] = &off_2879539D0;
  a4[2] = a1;
  a4[17] = &unk_28794F398;
  a4[18] = &unk_28794F3D8;
  sub_2688E6514(a2, (a4 + 7));
  return a4;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 488) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_2689A57B0()
{
  OUTLINED_FUNCTION_29_5();
  v2 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_28_7();
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v11);

  return v17(v0, v1 + 16, v1 + v9, v13, v14, v15);
}

uint64_t sub_2689A585C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689A5894()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v1 = *(v0 + 488);

  v2 = *(v0 + 504);

  v3 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2689A58E8()
{
  v1 = sub_268B36FD4();
  OUTLINED_FUNCTION_11_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2689A598C(uint64_t a1, unint64_t a2)
{
  v5 = sub_268B36FD4();
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_28_7();
  v14 = *(v2 + v13);
  v15 = v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = *(v15 + 8);

  return sub_2689A3630(a1, a2, v2 + v12, v14, v16, v17);
}

uint64_t sub_2689A5A68(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), void *a5, uint64_t a6)
{
  v121 = a3;
  v122 = a6;
  v130 = a4;
  v120 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v111 - v10;
  v114 = sub_268B371E4();
  v117 = *(v114 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v114);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v119 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v111 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  i = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v118 = &v111 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  if (qword_2802A4F30 != -1)
  {
LABEL_55:
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v31 = *(v15 + 16);
  v124 = v30;
  v125 = v31;
  v126 = v15 + 16;
  (v31)(v29);
  v32 = a1;
  v33 = sub_268B37A34();
  v34 = sub_268B37F04();

  v35 = os_log_type_enabled(v33, v34);
  v132 = v14;
  v129 = v15;
  v115 = i;
  v116 = v13;
  if (v35)
  {
    v36 = a5;
    v37 = v15;
    v38 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v133[0] = v14;
    *v38 = 136315138;
    swift_getObjectType();
    v39 = sub_268B385B4();
    v13 = v40;
    v41 = sub_26892CDB8(v39, v40, v133);

    *(v38 + 4) = v41;
    _os_log_impl(&dword_2688BB000, v33, v34, "Smart selecting devices for intent: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26D6266E0](v14, -1, -1);
    MEMORY[0x26D6266E0](v38, -1, -1);

    v42 = v37;
    a5 = v36;
    v128 = *(v42 + 8);
    v128(v29, v132);
  }

  else
  {

    v128 = *(v15 + 8);
    v128(v29, v14);
  }

  v43 = sub_268B18100();
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v15 = v43;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v123 = v32;
  v45 = sub_268B18140();
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  v127 = v46;
  v47 = sub_2688EFD0C(v15);
  v131 = a5;
  if (v47 == 1 && sub_2688EFD0C(v15))
  {
    sub_2688EFD10(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x26D625BD0](0, v15);
    }

    else
    {
      v48 = *(v15 + 32);
    }

    v49 = v48;
    v50 = v119;
    v51 = sub_26892D418(v48);
    if (v52)
    {
      v53 = v51;
      v54 = v52;

      v55 = v132;
      v125(v50, v124, v132);

      v56 = sub_268B37A34();
      v57 = sub_268B37F04();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v133[0] = v59;
        *v58 = 136315138;
        v60 = sub_26892CDB8(v53, v54, v133);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_2688BB000, v56, v57, "Intent already has device with destinationDeviceId: %s, returning it", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x26D6266E0](v59, -1, -1);
        MEMORY[0x26D6266E0](v58, -1, -1);
      }

      else
      {
      }

      v128(v50, v55);
      sub_268983D74(v127);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_268B3BBA0;
      *(v101 + 32) = v49;
      v102 = v49;
      v130(v101, 0);
    }
  }

  a1 = sub_2688EFD0C(v15);
  for (i = 0; a1 != i; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x26D625BD0](i, v15);
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v61 = *(v15 + 8 * i + 32);
    }

    a5 = v61;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v13 = [v61 isPreResolved];
    v29 = sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v62 = sub_268B38054();
    v14 = v62;
    if (v13)
    {
      v29 = sub_268B38074();

      if (v29)
      {

        v78 = v118;
        v79 = v132;
        v125(v118, v124, v132);

        v80 = sub_268B37A34();
        v81 = sub_268B37F04();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v133[0] = v83;
          *v82 = 136315138;
          v84 = type metadata accessor for Device();
          v85 = MEMORY[0x26D6256F0](v15, v84);
          v87 = sub_26892CDB8(v85, v86, v133);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_2688BB000, v80, v81, "Devices are pre-resolved, skipping smart selection, and returning devices: %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);
          MEMORY[0x26D6266E0](v83, -1, -1);
          MEMORY[0x26D6266E0](v82, -1, -1);
        }

        v128(v78, v79);
        v130(v15, 0);
      }
    }

    else
    {
    }
  }

  if (sub_268921060())
  {
    v63 = sub_268B18120();
    v65 = v130;
    v64 = v131;
    if (v63)
    {
      v66 = v63;
      v67 = v112;
      v68 = v132;
      v125(v112, v124, v132);
      v69 = sub_268B37A34();
      v70 = sub_268B37F04();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v133[0] = v72;
        *v71 = 136315138;
        v73 = type metadata accessor for DeviceQuery();
        v74 = MEMORY[0x26D6256F0](v66, v73);
        v76 = sub_26892CDB8(v74, v75, v133);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_2688BB000, v69, v70, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        MEMORY[0x26D6266E0](v72, -1, -1);
        MEMORY[0x26D6266E0](v71, -1, -1);

        v77 = v112;
      }

      else
      {

        v77 = v67;
      }

      v128(v77, v68);
      sub_268920A60();

      v110 = swift_allocObject();
      *(v110 + 16) = v65;
      *(v110 + 24) = v64;

      sub_2688F80CC();
    }

    else
    {

      v104 = v111;
      v125(v111, v124, v132);
      v105 = sub_268B37A34();
      v106 = sub_268B37EE4();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_2688BB000, v105, v106, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.", v107, 2u);
        MEMORY[0x26D6266E0](v107, -1, -1);
      }

      v128(v104, v132);
      return v65(0, 2);
    }
  }

  else
  {
    v88 = v115;
    v89 = v132;
    v125(v115, v124, v132);
    v90 = sub_268B37A34();
    v91 = sub_268B37F04();
    v92 = os_log_type_enabled(v90, v91);
    v94 = v130;
    v93 = v131;
    if (v92)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2688BB000, v90, v91, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route", v95, 2u);
      MEMORY[0x26D6266E0](v95, -1, -1);
    }

    v128(v88, v89);
    v96 = sub_268B18120();
    v98 = v116;
    v97 = v117;
    if (v96)
    {
      v133[0] = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B58, &unk_268B3C660);
      sub_268918DC0();
      sub_2689A7B24(&qword_2802A5B68, type metadata accessor for DeviceQuery);
      v99 = v113;
      sub_268B37E84();

      v100 = v114;
      __swift_storeEnumTagSinglePayload(v99, 0, 1, v114);
      (*(v97 + 32))(v98, v99, v100);
    }

    else
    {
      v108 = v113;
      v100 = v114;
      __swift_storeEnumTagSinglePayload(v113, 1, 1, v114);
      sub_268B37164();
      if (__swift_getEnumTagSinglePayload(v108, 1, v100) != 1)
      {
        sub_2689A7CD8(v108, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    v109 = swift_allocObject();
    *(v109 + 16) = v94;
    *(v109 + 24) = v93;

    sub_2688F4CD4();

    return (*(v97 + 8))(v98, v100);
  }
}

uint64_t sub_2689A67B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2689A3F44();
}

uint64_t sub_2689A6840(uint64_t a1, uint64_t a2)
{
  v11 = type metadata accessor for AnalyticsServiceImpl();
  v12 = &off_2879539D0;
  v10[0] = a2;

  sub_268AD488C();
  v4 = v3;
  sub_268AD54B8();
  v6 = v5;
  v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_2688EFD0C(v4);

  sub_2688EFD0C(v6);
  v8 = *v7;
  sub_26894AE34();

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v6;
}

uint64_t sub_2689A6974(uint64_t a1, uint64_t a2)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v73 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v71 - v19;
  v88 = type metadata accessor for AnalyticsServiceImpl();
  v89 = &off_2879539D0;
  v87[0] = a2;
  v20 = *__swift_project_boxed_opaque_existential_1(v87, v88);

  v21 = v18;
  v22 = sub_2689A6840(a1, v20);
  v86 = MEMORY[0x277D84F90];
  v23 = sub_2688EFD0C(v22);
  v24 = 0;
  v83 = v22 & 0xC000000000000001;
  v84 = v23;
  v82 = v22 & 0xFFFFFFFFFFFFFF8;
  v25 = (v6 + 16);
  v80 = (v6 + 8);
  *&v26 = 136315138;
  v77 = v26;
  v75 = v22;
  v76 = v5;
  v74 = (v6 + 16);
  v78 = v18;
  v79 = v13;
  while (v84 != v24)
  {
    if (v83)
    {
      v27 = MEMORY[0x26D625BD0](v24, v22);
    }

    else
    {
      if (v24 >= *(v82 + 16))
      {
        goto LABEL_38;
      }

      v27 = *(v22 + 8 * v24 + 32);
    }

    v2 = v27;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_31:
      v63 = __swift_project_value_buffer(v5, qword_2802CDA10);
      (*v25)(v2, v63, v5);
      v53 = sub_268B37A34();
      v54 = sub_268B37EC4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v86 = v56;
        *v55 = v77;
        v64 = type metadata accessor for DeviceContext();

        v66 = MEMORY[0x26D6256F0](v65, v64);
        v68 = v67;

        v69 = sub_26892CDB8(v66, v68, &v86);

        *(v55 + 4) = v69;
        v62 = "Selecting most recent resumable deviceContexts: %s";
LABEL_33:
        _os_log_impl(&dword_2688BB000, v53, v54, v62, v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        MEMORY[0x26D6266E0](v56, -1, -1);
        MEMORY[0x26D6266E0](v55, -1, -1);
      }

      goto LABEL_35;
    }

    v28 = [v27 nowPlayingTimestamp];
    if (v28)
    {
      v29 = v28;
      sub_268B345D4();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = sub_268B34614();
    __swift_storeEnumTagSinglePayload(v21, v30, 1, v31);
    v32 = v81;
    sub_2688EF3EC(v21, v81);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v31);
    sub_2689A7CD8(v32, &unk_2802A7350, qword_268B3FF10);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v5, qword_2802CDA10);
      (*v25)(v13, v34, v5);
      v2 = v2;
      v35 = sub_268B37A34();
      v36 = sub_268B37EE4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v85 = v38;
        *v37 = v77;
        v39 = [v2 description];
        v40 = sub_268B37BF4();
        v42 = v41;

        v43 = sub_26892CDB8(v40, v42, &v85);
        v44 = v80;
        v22 = v75;

        *(v37 + 4) = v43;
        v25 = v74;
        _os_log_impl(&dword_2688BB000, v35, v36, "Item: %s has invalid timestamp. Discarding...", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x26D6266E0](v38, -1, -1);
        v45 = v37;
        v5 = v76;
        MEMORY[0x26D6266E0](v45, -1, -1);

        (*v44)(v79, v5);
        v13 = v79;
      }

      else
      {

        (*v80)(v13, v5);
      }

      v21 = v78;
    }

    else
    {
      sub_268B38214();
      v46 = v86[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v24;
  }

  if (sub_2688EFD0C(v86))
  {

    v86 = sub_268AE11A4(v47);
    sub_2689A4164(&v86);

    v48 = v86;
    if (sub_2688EFD0C(v86))
    {
      sub_2688EFD10(0, (v48 & 0xC000000000000001) == 0, v48);
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x26D625BD0](0, v48);
      }

      else
      {
        v49 = *(v48 + 32);
      }

      v50 = v49;
      v86 = v49;
      MEMORY[0x28223BE20](v49);
      *(&v71 - 2) = &v86;
      sub_2688C8F30(sub_2689A7CA0, (&v71 - 4), v48);
      v22 = v51;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v2 = v73;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v2 = v72;
  (*v25)(v72, v52, v5);

  v53 = sub_268B37A34();
  v54 = sub_268B37F04();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v86 = v56;
    *v55 = v77;
    v57 = type metadata accessor for DeviceContext();
    v58 = MEMORY[0x26D6256F0](v22, v57);
    v60 = v59;

    v61 = sub_26892CDB8(v58, v60, &v86);

    *(v55 + 4) = v61;
    v62 = "Found no resumable contexts with valid timestamps. Returning all resumable without timestamp filtration: %s";
    goto LABEL_33;
  }

LABEL_35:
  (*v80)(v2, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  return v22;
}

uint64_t sub_2689A7230()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v1 = *(v0 + 496);

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 504) & ~v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v8 = *(v0 + 496);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689A737C()
{
  OUTLINED_FUNCTION_29_5();
  v2 = sub_268B35494();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = v1 + ((*(v3 + 80) + 504) & ~*(v3 + 80));

  return v8(v0, v1 + 16, v4, v5, v6);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for MediaPlayerIntent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 488) & ~v2;
  v67 = *(*(v1 - 1) + 64);
  v4 = sub_268B35494();
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v66 = *(v8 + 64);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v9 = v0 + v3;
  v10 = v1[7];
  v11 = sub_268B35984();
  if (!OUTLINED_FUNCTION_18_5(v11))
  {
    OUTLINED_FUNCTION_16_10();
    v13 = *(v12 + 8);
    v14 = OUTLINED_FUNCTION_46_4();
    v15(v14);
  }

  v16 = v1[10];
  v17 = sub_268B37924();
  if (!OUTLINED_FUNCTION_18_5(v17))
  {
    OUTLINED_FUNCTION_16_10();
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_46_4();
    v21(v20);
  }

  v22 = v1[11];
  v23 = sub_268B37124();
  if (!OUTLINED_FUNCTION_18_5(v23))
  {
    OUTLINED_FUNCTION_16_10();
    v25 = *(v24 + 8);
    v26 = OUTLINED_FUNCTION_46_4();
    v27(v26);
  }

  v28 = v1[13];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  if (!OUTLINED_FUNCTION_18_5(v29))
  {
    OUTLINED_FUNCTION_16_10();
    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_46_4();
    v33(v32);
  }

  v34 = *(v9 + v1[14]);

  v35 = *(v9 + v1[15]);

  v36 = *(v9 + v1[16] + 8);

  v37 = *(v9 + v1[17]);

  v38 = *(v9 + v1[18]);

  v39 = *(v9 + v1[19]);

  v40 = *(v9 + v1[20]);

  v41 = *(v9 + v1[21]);

  v42 = v1[22];
  v43 = sub_268B37464();
  if (!OUTLINED_FUNCTION_18_5(v43))
  {
    OUTLINED_FUNCTION_16_10();
    v45 = *(v44 + 8);
    v46 = OUTLINED_FUNCTION_46_4();
    v47(v46);
  }

  v48 = *(v9 + v1[23] + 8);

  v49 = v1[24];
  v50 = sub_268B37034();
  if (!OUTLINED_FUNCTION_18_5(v50))
  {
    OUTLINED_FUNCTION_16_10();
    v52 = *(v51 + 8);
    v53 = OUTLINED_FUNCTION_46_4();
    v54(v53);
  }

  v55 = v1[25];
  v56 = sub_268B378F4();
  if (!OUTLINED_FUNCTION_18_5(v56))
  {
    OUTLINED_FUNCTION_16_10();
    v58 = *(v57 + 8);
    v59 = OUTLINED_FUNCTION_46_4();
    v60(v59);
  }

  v61 = (((v67 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v62 = (v66 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = *(v9 + v1[26] + 8);

  (*(v6 + 8))(v0 + v61, v4);
  v64 = *(v0 + v62 + 8);

  return MEMORY[0x2821FE8E8](v0, v62 + 16, v2 | v7 | 7);
}

uint64_t sub_2689A779C()
{
  OUTLINED_FUNCTION_29_5();
  v2 = type metadata accessor for MediaPlayerIntent();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 488) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_28_7();
  v15 = *(v1 + v6);
  v17 = (v1 + v16);
  v18 = *v17;
  v19 = v17[1];

  return v21(v0, v1 + 16, v1 + v4, v15, v1 + v14, v18, v19);
}

uint64_t objectdestroy_55Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 496) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v8 = *(v0 + 488);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_2689A798C()
{
  v0 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 496) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_28_7();
  v7 = OUTLINED_FUNCTION_52_4();

  return sub_26899E978(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2689A7A18()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v2 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 408));
  v3 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 464));
  v4 = *(v0 + 504);

  v5 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2689A7AD0()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  v1 = *(v0 + 504);

  v2 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2689A7B24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2689A7B6C()
{
  v0 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 496) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_52_4();
  sub_26899F21C();
}

uint64_t sub_2689A7BE4()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  v2 = v0[19];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 45);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 50);
  v3 = v0[56];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 57);
  v4 = v0[62];

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

void sub_2689A7CC0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2689A7CD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_85Tm()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  return MEMORY[0x2821FE8E8](v0, 488, 7);
}

unint64_t sub_2689A7D70(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2689A7DE4()
{
  OUTLINED_FUNCTION_29_5();
  v0 = sub_268B37A24();
  OUTLINED_FUNCTION_19_0(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_34_2(v5);

  return v8(v7);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_11_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2689A7EF8()
{
  OUTLINED_FUNCTION_29_5();
  v0 = sub_268B37A24();
  OUTLINED_FUNCTION_19_0(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_34_2(v5);

  return v8(v7);
}

uint64_t sub_2689A7F78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2689A561C(a1);
}

uint64_t OUTLINED_FUNCTION_1_24()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v1 = v0[54];
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[17];
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_10@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 192);
  v4 = *(v1 - 184);
  v5 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_5()
{
  result = 0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_34_2@<X0>(uint64_t a1@<X8>)
{
  v4 = ((a1 + 33) & ~a1) + v1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + v4);
  v8 = v3 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return sub_268B379F4();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
  v1 = *(v0 + 480);
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_268B37FF4();
}

uint64_t OUTLINED_FUNCTION_52_4()
{
  v3 = *(v2 + 488);
  v4 = (v2 + v0);
  v5 = *v4;
  v6 = v4[1];
  return v1;
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = v0;
  *(v2 - 112) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  result = *(v0 - 256);
  v3 = *(v1 - 160);
  return result;
}

void OUTLINED_FUNCTION_66_2()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 136);
  v3 = *(v0 - 200);
  v4 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_79_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void *OUTLINED_FUNCTION_80_3(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 192), 0x1D8uLL);
}

uint64_t sub_2689A8424()
{
  sub_268B36314();
  if (!v3)
  {
    return 26;
  }

  v0 = sub_268B35EC4();

  if (!v0)
  {
    return 26;
  }

  v1 = sub_268A6A3CC();

  return v1;
}

uint64_t sub_2689A848C()
{
  sub_268B36314();
  if (v3 && (v0 = sub_26893B978(), , (v0 & 1) != 0))
  {
    v1 = 1;
  }

  else
  {
    sub_268B36314();
    if (v3)
    {
      v1 = sub_26893BA00();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

Swift::String_optional __swiftcall UsoTask_shuffle_common_MediaItem.verb()()
{
  v0 = 0x656C6666756873;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_shuffle_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2689A85FC()
{
  v0 = sub_2689A8424();
  if (v0 == 26)
  {
    goto LABEL_11;
  }

  if (sub_268942D54(v0) == 0x636973756DLL && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v3 = sub_268B38444();

    if ((v3 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_268B36314();
  if (!v6)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_26893B978();

  return v4 & 1;
}

uint64_t sub_2689A8718(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689A876C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689A87C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689A8814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689A8868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689A88BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689A8910()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689A8964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689A89C8()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689A8A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689A8A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689A8AE4()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689A8B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689A8BAC(uint64_t a1)
{
  result = sub_2689A8C58(&qword_2802A6978);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689A8C58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2689A8C9C(uint64_t a1)
{
  v2 = v1;
  sub_2689A8E58(a1);
  sub_2689A9194(a1);
  sub_2689A9558(a1);
  v4 = type metadata accessor for MediaPlayerIntent();
  v5 = 0;
  v6 = 0;
  if (*(a1 + v4[12]) != 26)
  {
    v5 = sub_268942D54(*(a1 + v4[12]));
  }

  [v2 setMediaType_];
  v7 = (a1 + v4[26]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = sub_268B37BC4();
  }

  else
  {
    v9 = 0;
  }

  [v2 setTargetBundleIdentifier_];

  v10 = *(a1 + v4[14]);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v20 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for ControlsSettingAttribute();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = (v10 + 32);
    do
    {
      v15 = *v14++;
      v16 = objc_allocWithZone(ObjCClassFromMetadata);
      v17 = sub_26893A824(0, 0);
      if (v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      [v17 setSettingName_];
      sub_268B38214();
      v19 = *(v20 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      --v11;
    }

    while (v11);
    v12 = v20;
  }

  sub_2689828C4(v12, v2);
}

uint64_t sub_2689A8E58(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_287959E70;
    v20 = type metadata accessor for ResumeMediaIntent();
    v19(v12, v20, &off_287959E50);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_2689A9194(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959E70;
    v30 = type metadata accessor for ResumeMediaIntent();
    v24 = v26;
    v29(v28, v30, &off_287959E50);
LABEL_13:
  }
}

void sub_2689A9558(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BAF8;
    v17 = type metadata accessor for ResumeMediaIntent();
    v16(v15, v17, &off_28795BAE8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2689A9870(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlayerIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689A98CC(uint64_t a1)
{
  result = sub_2689ABAD4(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2689ABB14(result, v3, 0, a1);
  }
}

id sub_2689A994C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_268B382A4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

double sub_2689A99C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_26890C900(a1 + 32, a2);
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

uint64_t sub_2689A9A04(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_2689ABB90(a1);
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2();
  }
}

uint64_t sub_2689A9A8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t HomeAutomationCapableIntent.homeName.getter(uint64_t a1, uint64_t a2)
{
  if (qword_2802A4D90 != -1)
  {
    swift_once();
  }

  v3 = *(*(a2 + 8) + 8);
  sub_268B35C64();
  return v5;
}

uint64_t sub_2689A9C70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = *a4;
  v7 = *(*(a2 + 8) + 8);

  return sub_268B35C74();
}

uint64_t HomeAutomationCapableIntent.fromEntities.getter(char *a1, unint64_t a2)
{
  v124 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6138, &qword_268B3E820);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  v8 = &v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6140, &qword_268B3E828);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v118 = &v102 - v13;
  v119 = sub_268B37054();
  v14 = OUTLINED_FUNCTION_1(v119);
  v116 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v109 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_0();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = &v102 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA0, qword_268B3DE28);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  v38 = &v102 - v37;
  v122 = sub_268B37074();
  v39 = OUTLINED_FUNCTION_1(v122);
  v110 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  v108 = (v43 - v44);
  MEMORY[0x28223BE20](v45);
  v107 = &v102 - v46;
  v126 = sub_268B35B14();
  v47 = OUTLINED_FUNCTION_1(v126);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6150, qword_268B412C0);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v58);
  v60 = &v102 - v59;
  v61 = sub_268B35C14();
  v62 = OUTLINED_FUNCTION_1(v61);
  v112 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v111 = v67 - v66;
  if (qword_2802A4DB8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v68 = *(*(a2 + 8) + 8);
  sub_268B35C54();
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
  {
    v121 = v29;
    v117 = v22;
    v115 = v8;
    v70 = *(v112 + 32);
    v125 = v61;
    v70(v111, v60, v61);
    v60 = sub_268B35C04();
    v22 = 0;
    v123 = v49 + 16;
    v124 = *(v60 + 2);
    v114 = (v116 + 32);
    v104 = (v116 + 16);
    v120 = *MEMORY[0x277D5E5C8];
    v113 = (v116 + 8);
    v29 = (v49 + 8);
    v103 = (v110 + 32);
    v116 = MEMORY[0x277D84F90];
    v8 = v122;
    while (1)
    {
      a2 = v125;
      if (v124 == v22)
      {

        (*(v112 + 8))(v111, a2);
        return v116;
      }

      if (v22 >= *(v60 + 2))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v49 + 16))(v54, &v60[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v22], v126);
      sub_268B35A64();
      v71 = sub_268B35A44();
      v61 = 1;
      if (__swift_getEnumTagSinglePayload(v32, 1, v71) != 1)
      {
        break;
      }

LABEL_14:
      __swift_storeEnumTagSinglePayload(v38, v61, 1, v8);
      sub_2688EF38C(v32, &qword_2802A6148, &qword_268B3E830);
      (*v29)(v54, v126);
      if (__swift_getEnumTagSinglePayload(v38, 1, v8) == 1)
      {
        sub_2688EF38C(v38, &qword_2802A5FA0, qword_268B3DE28);
        ++v22;
      }

      else
      {
        v95 = *v103;
        (*v103)(v107, v38, v8);
        v106 = v95;
        v95(v108, v107, v8);
        v96 = v116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = *(v96 + 16);
          sub_2689874FC();
          v96 = v100;
        }

        v61 = *(v96 + 16);
        v97 = *(v96 + 24);
        v116 = v96;
        if (v61 >= v97 >> 1)
        {
          sub_2689874FC();
          v116 = v101;
        }

        ++v22;
        v98 = v116;
        *(v116 + 16) = v61 + 1;
        v106(v98 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v61, v108, v8);
      }
    }

    v72 = v121;
    sub_2689AB648(v32, v121);
    v73 = *(v71 - 8);
    v74 = v73[11];
    v75 = OUTLINED_FUNCTION_179();
    v77 = v76(v75);
    if (v77 == v120)
    {
      v78 = v73[12];
      v79 = OUTLINED_FUNCTION_179();
      v80(v79);
      v81 = *v72;
      v82 = v72[1];
      v83 = v118;
      sub_268B37044();
      v84 = v119;
      if (__swift_getEnumTagSinglePayload(v83, 1, v119) == 1)
      {
        sub_2688EF38C(v83, &qword_2802A6140, &qword_268B3E828);
      }

      else
      {
        (*v114)(v117, v83, v84);
        v88 = v115;
        sub_268B359E4();
        v89 = v84;
        v90 = sub_268B359C4();
        if (__swift_getEnumTagSinglePayload(v88, 1, v90) != 1)
        {
          v106 = sub_268B359B4();
          v105 = v91;
          (*(*(v90 - 8) + 8))(v88, v90);
          (*v104)(v109, v117, v119);
          sub_268B37064();
          v92 = *v113;
          v93 = OUTLINED_FUNCTION_179();
          v94(v93);
          v61 = 0;
          goto LABEL_13;
        }

        sub_2688EF38C(v88, &qword_2802A6138, &qword_268B3E820);
        (*v113)(v117, v89);
      }
    }

    else
    {
      v85 = v73[1];
      v86 = OUTLINED_FUNCTION_179();
      v87(v86);
    }

    v61 = 1;
LABEL_13:
    v8 = v122;
    goto LABEL_14;
  }

  sub_2688EF38C(v60, &qword_2802A6150, qword_268B412C0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2689AA64C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = *a4;
  v7 = *(*(a2 + 8) + 8);

  return sub_268B35C64();
}

uint64_t HomeAutomationCapableIntent.destinationDeviceId.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  if (qword_2802A4DC8 != -1)
  {
    swift_once();
  }

  v12 = *(*(a2 + 8) + 8);
  sub_268B35C64();
  v13 = v22;
  if (v23)
  {
    sub_2689AB6B8();
    OUTLINED_FUNCTION_0_3();
    v14 = swift_allocObject();
    *(v14 + 16) = v22;
    *(v14 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    sub_268B38024();

    if (!v22 || (v13 = sub_2689A9A04(v22, sub_2689ABA58), v16 = v15, , !v16))
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v3, qword_2802CDA10);
      (*(v6 + 16))(v11, v17, v3);
      v18 = sub_268B37A34();
      v19 = sub_268B37EE4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2688BB000, v18, v19, "Failed to decode destinationDeviceId", v20, 2u);
        MEMORY[0x26D6266E0](v20, -1, -1);
      }

      (*(v6 + 8))(v11, v3);
      return 0;
    }
  }

  return v13;
}

uint64_t HomeAutomationCapableIntent.reference.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37924();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2689AA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268B374D4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0_3();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_268B374C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_268B3BBC0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  sub_268B374B4();

  return (*(v11 + 8))(v16, v8);
}

uint64_t sub_2689AAB04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A6990 = result;
  return result;
}

uint64_t sub_2689AAB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A6998 = result;
  return result;
}

uint64_t sub_2689AABF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A69A0 = result;
  return result;
}

uint64_t sub_2689AAC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A69A8 = result;
  return result;
}

uint64_t sub_2689AACE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A69B0 = result;
  return result;
}

uint64_t sub_2689AAD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A69B8 = result;
  return result;
}

uint64_t sub_2689AADD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A69C0 = result;
  return result;
}

uint64_t sub_2689AAE4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A69C8 = result;
  return result;
}

uint64_t sub_2689AAEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A69D0 = result;
  return result;
}

uint64_t sub_2689AAF3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16();
  qword_2802A69D8 = result;
  return result;
}

uint64_t sub_2689AAFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A69E0 = result;
  return result;
}

uint64_t sub_2689AB02C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_2689AB078(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F748];
  v5 = sub_2689ABC4C(&qword_2802A6A70, MEMORY[0x277D5F748]);
  v6 = sub_2689ABC4C(&qword_2802A6A78, v4);
  v7 = sub_2689ABC4C(&qword_2802A6A80, v4);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB168(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F9D0];
  v5 = sub_2689ABC4C(&qword_2802A6A58, MEMORY[0x277D5F9D0]);
  v6 = sub_2689ABC4C(&qword_2802A6A60, v4);
  v7 = sub_2689ABC4C(&qword_2802A6A68, v4);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB258(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F880];
  v5 = sub_2689ABC4C(&qword_2802A6A40, MEMORY[0x277D5F880]);
  v6 = sub_2689ABC4C(&qword_2802A6A48, v4);
  v7 = sub_2689ABC4C(&qword_2802A6A50, v4);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB348(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5FA18];
  v5 = sub_2689ABC4C(&qword_2802A6A28, MEMORY[0x277D5FA18]);
  v6 = sub_2689ABC4C(&qword_2802A6A30, v4);
  v7 = sub_2689ABC4C(&qword_2802A6A38, v4);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB4A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_268A75754();
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_268B38444();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2689AB648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689AB6B8()
{
  result = qword_2802A5C90;
  if (!qword_2802A5C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5C90);
  }

  return result;
}

uint64_t sub_2689AB6FC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationNodes(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2689ABA20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2689ABA58(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABAD4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_268B38134();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2689ABB14(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABB90(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_268B38134();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2689ABBD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABC4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2689ABC94()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_268B35784();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_268B35784();
}

uint64_t sub_2689ABD04()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2689ABD4C(unsigned __int8 a1)
{
  if (a1 >= 5u)
  {
    return 3;
  }

  else
  {
    return (0x102000303uLL >> (8 * a1));
  }
}

uint64_t sub_2689ABE3C()
{
  v0 = OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_1_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ABF08()
{
  OUTLINED_FUNCTION_11_14();
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ABFA4(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_11_14();
  a2(v5, a1);
  return sub_268B38544();
}

uint64_t sub_2689ABFEC()
{
  v0 = OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_1_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AC064(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_11_14();
  a2(a1);
  OUTLINED_FUNCTION_12_11();

  return sub_268B38544();
}

uint64_t sub_2689AC0C4(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x26D625F10](a1);
  return sub_268B38544();
}

uint64_t sub_2689AC104(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    OUTLINED_FUNCTION_7_14();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC1A4()
{
  sub_268B37C54();
}

uint64_t sub_2689AC234()
{
  sub_268B37C54();
}

uint64_t sub_2689AC28C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_7_14();
      break;
    default:
      break;
  }

  sub_268B37C54();
}

uint64_t sub_2689AC350()
{
  sub_268B37C54();
}

uint64_t sub_2689AC3C4()
{
  sub_268B37C54();
}

uint64_t sub_2689AC440()
{
  sub_268B37C54();
}

uint64_t sub_2689AC4A8()
{
  sub_268B37C54();
}

uint64_t sub_2689AC55C()
{
  sub_268B37C54();
}

uint64_t sub_2689AC5E0()
{
  sub_268B37C54();
}

uint64_t sub_2689AC6D0()
{
  sub_268B37C54();
}

uint64_t sub_2689AC738()
{
  sub_268B37C54();
}

uint64_t sub_2689AC84C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC8C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_16_11();
      break;
    default:
      break;
  }

  sub_268B37C54();
}

uint64_t sub_2689AC978(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_18();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC9FC()
{
  sub_268B37C54();
}

uint64_t sub_2689ACA70()
{
  sub_268B37C54();
}

uint64_t sub_2689ACBA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_268B37C54();
}

uint64_t sub_2689ACC6C()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689ACCE4()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_18();
  }

  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689ACD84()
{
  OUTLINED_FUNCTION_9_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_8();
  }

  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689ACE4C()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689ACEB8()
{
  v0 = sub_268B38514();
  OUTLINED_FUNCTION_1_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ACF34()
{
  sub_268B38514();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689ACFE4()
{
  sub_268B38514();
  sub_268B37C54();

  return sub_268B38544();
}

uint64_t sub_2689AD060()
{
  v0 = sub_268B38514();
  OUTLINED_FUNCTION_1_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AD0AC()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689AD114()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689AD1A4()
{
  sub_268B38514();
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AD208(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_268B38514();
  a3(v6, a2);
  return sub_268B38544();
}

uint64_t sub_2689AD254()
{
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689AD2B0()
{
  sub_268B38514();
  sub_268B37C54();

  return sub_268B38544();
}

uint64_t sub_2689AD354(uint64_t a1, uint64_t a2)
{
  sub_268B38514();
  MEMORY[0x26D625F10](a2);
  return sub_268B38544();
}

uint64_t sub_2689AD3B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_268B38514();
  a3(a2);
  OUTLINED_FUNCTION_12_11();

  return sub_268B38544();
}

uint64_t sub_2689AD404()
{
  OUTLINED_FUNCTION_9_11();
  if (v0)
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    OUTLINED_FUNCTION_7_14();
  }

  OUTLINED_FUNCTION_6_17();

  return sub_268B38544();
}

uint64_t sub_2689AD4A4()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2689AD4F0(char a1)
{
  if (a1)
  {
    return 0x79616C70726961;
  }

  else
  {
    return 0x6465657073;
  }
}

unint64_t sub_2689AD524(char a1)
{
  result = 0x656C746974627573;
  switch(a1)
  {
    case 1:
      result = 25443;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6F69647561;
      break;
    case 4:
      result = 25697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2689AD5C0()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2689AD608(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a1;
  v57 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_268B36F64();
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v12 = sub_268B36F54();
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v13, v4);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v10 & 1;
    *(v16 + 8) = 1024;
    *(v16 + 10) = v12 & 1;
    _os_log_impl(&dword_2688BB000, v14, v15, "isSiriXEnabled: %{BOOL}d, isSiriXv2Enabled: %{BOOL}d", v16, 0xEu);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AB8, &qword_268B41688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3DE10;
  strcpy((inited + 32), "uso_NoEntity");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_13_9(v18, xmmword_268B414D0);
  v19[2].n128_u64[0] = v20;
  v19[2].n128_u64[1] = 0xE600000000000000;
  v19[3].n128_u8[0] = v10 & 1;
  v19[3].n128_u64[1] = 1886352499;
  v19[4].n128_u64[0] = 0xE400000000000000;
  v19[4].n128_u8[8] = v10 & 1;
  v19[5].n128_u64[0] = 0x6573756170;
  v19[5].n128_u64[1] = 0xE500000000000000;
  v19[6].n128_u8[0] = v10 & 1;
  v19[6].n128_u64[1] = 0x77726F4670696B73;
  v19[7].n128_u64[0] = 0xEB00000000647261;
  v19[7].n128_u8[8] = v10 & 1;
  strcpy(&v19[8], "skipBackward");
  v19[8].n128_u8[13] = 0;
  v19[8].n128_u16[7] = -5120;
  v19[9].n128_u8[0] = v10 & 1;
  v19[9].n128_u64[1] = 0x656C6666756873;
  v19[10].n128_u64[0] = 0xE700000000000000;
  v21 = v12 & 1;
  v19[10].n128_u8[8] = v21;
  OUTLINED_FUNCTION_8_11();
  *(v22 + 176) = v23;
  *(v22 + 184) = 0xE600000000000000;
  *(v22 + 192) = v21;
  OUTLINED_FUNCTION_17_9();
  *(v24 + 200) = v25;
  *(v24 + 208) = v26;
  *(v24 + 216) = v21;
  *(v24 + 224) = 2036427888;
  *(v24 + 232) = v27;
  *(v24 + 240) = v21;
  OUTLINED_FUNCTION_0_22();
  *(inited + 48) = v28;
  *(inited + 56) = v29;
  *(inited + 64) = v30;
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_13_9(v31, xmmword_268B414E0);
  v32[2].n128_u64[0] = v33;
  v32[2].n128_u64[1] = 0xE600000000000000;
  v32[3].n128_u8[0] = v10 & 1;
  v32[3].n128_u64[1] = 0x6573756170;
  v32[4].n128_u64[0] = 0xE500000000000000;
  v32[4].n128_u8[8] = v10 & 1;
  v32[5].n128_u64[0] = 0x77726F4670696B73;
  v32[5].n128_u64[1] = 0xEB00000000647261;
  v32[6].n128_u8[0] = v10 & 1;
  strcpy(&v32[6].n128_i8[8], "skipBackward");
  v32[7].n128_u8[5] = 0;
  v32[7].n128_u16[3] = -5120;
  v32[7].n128_u8[8] = v10 & 1;
  v32[8].n128_u64[0] = 0x6F546B656573;
  v32[8].n128_u64[1] = 0xE600000000000000;
  v32[9].n128_u8[0] = v21;
  strcpy(&v32[9].n128_i8[8], "seekBackward");
  v32[10].n128_u8[5] = 0;
  v32[10].n128_u16[3] = -5120;
  v32[10].n128_u8[8] = v21;
  v32[11].n128_u64[0] = 0x77726F466B656573;
  v32[11].n128_u64[1] = 0xEB00000000647261;
  v32[12].n128_u8[0] = v21;
  v32[12].n128_u64[1] = 0x627265566F6ELL;
  v32[13].n128_u64[0] = 0xE600000000000000;
  v32[13].n128_u8[8] = v10 & 1;
  v32[14].n128_u64[0] = 2036427888;
  v32[14].n128_u64[1] = 0xE400000000000000;
  v32[15].n128_u8[0] = v21;
  OUTLINED_FUNCTION_8_11();
  *(v34 + 248) = v35;
  *(v34 + 256) = 0xE600000000000000;
  *(v34 + 264) = v21;
  OUTLINED_FUNCTION_17_9();
  *(v36 + 272) = v37;
  *(v36 + 280) = 0xE700000000000000;
  *(v36 + 288) = v21;
  *(v36 + 296) = 0x726566736E617274;
  *(v36 + 304) = 0xE800000000000000;
  *(v36 + 312) = v21;
  *(v36 + 320) = 0x657461647075;
  *(v36 + 328) = 0xE600000000000000;
  *(v36 + 336) = v21;
  OUTLINED_FUNCTION_5_6();
  *(v39 + 344) = v38 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
  *(v39 + 352) = 0xED0000676E697474;
  *(v39 + 360) = v21;
  strcpy((v39 + 368), "disableSetting");
  *(v39 + 383) = -18;
  *(v39 + 384) = v21;
  *(v39 + 392) = 1886352499;
  *(v39 + 400) = v40;
  *(v39 + 408) = v21;
  *(v39 + 416) = 0x736972616D6D7573;
  *(v39 + 424) = 0xE900000000000065;
  *(v39 + 432) = v21;
  *(v39 + 440) = 0x74736575716572;
  *(v39 + 448) = v41;
  *(v39 + 456) = v21;
  *(v39 + 464) = 0x7365757165726E75;
  *(v39 + 472) = 0xE900000000000074;
  *(v39 + 480) = v21;
  *(v39 + 488) = 1701079400;
  *(v39 + 496) = v40;
  *(v39 + 504) = v21;
  OUTLINED_FUNCTION_15_11();
  *(inited + 72) = v42;
  *(inited + 80) = v43;
  *(inited + 88) = v44;
  *(swift_allocObject() + 16) = xmmword_268B3C0C0;
  OUTLINED_FUNCTION_5_6();
  *(v45 + 32) = v46;
  *(v45 + 40) = 0xE600000000000000;
  *(v45 + 48) = v21;
  *(v45 + 56) = 0x656C6261736964;
  *(v45 + 64) = 0xE700000000000000;
  *(v45 + 72) = v21;
  OUTLINED_FUNCTION_16_11();
  *(v48 + 80) = v47 + 2309;
  *(v48 + 88) = 0xEA00000000007942;
  *(v48 + 96) = v21;
  *(v48 + 104) = v47;
  *(v48 + 112) = 0xEA00000000007942;
  *(v48 + 120) = v21;
  *(v48 + 128) = 0x627265566F6ELL;
  *(v48 + 136) = 0xE600000000000000;
  *(v48 + 144) = v21;
  *(v48 + 152) = 0x65626D754E746573;
  *(v48 + 160) = 0xE900000000000072;
  *(v48 + 168) = v21;
  OUTLINED_FUNCTION_0_22();
  *(inited + 96) = v50;
  *(inited + 104) = v49 | 3;
  *(inited + 112) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_268B3BBC0;
  *(v52 + 32) = 0x656C6261736964;
  *(v52 + 40) = 0xE700000000000000;
  *(v52 + 48) = v21;
  *(inited + 120) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC8, &qword_268B41698);
  v53 = sub_268B37B84();
  v54 = sub_26892E7B4(v56, v57, v53);

  if (v54)
  {
    return v54;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2689ADC68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  result = sub_268B37B84();
  qword_2802CD938 = result;
  return result;
}

uint64_t sub_2689ADCB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = sub_268B36F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AB8, &qword_268B41688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBD0;
  OUTLINED_FUNCTION_0_22();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
  *(swift_allocObject() + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_8_11();
  *(v12 + 32) = v11 & 0xFFFFFFFFFFFFLL | 0x7541000000000000;
  *(v12 + 40) = 0xEB000000006F6964;
  v6 &= 1u;
  *(v12 + 48) = v6;
  OUTLINED_FUNCTION_15_11();
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 64) = 0xEE00676E69747465;
  *(swift_allocObject() + 16) = xmmword_268B3DE10;
  OUTLINED_FUNCTION_5_6();
  *(v15 + 32) = v16;
  *(v15 + 40) = 0xE600000000000000;
  *(v15 + 48) = v6;
  *(v15 + 56) = 0x656C6261736964;
  *(v15 + 64) = 0xE700000000000000;
  *(v15 + 72) = v6;
  *(v15 + 80) = 0x627265566F6ELL;
  *(v15 + 88) = 0xE600000000000000;
  *(v15 + 96) = v6;
  *(v15 + 104) = 7628147;
  *(v15 + 112) = 0xE300000000000000;
  *(v15 + 120) = v6;
  *(inited + 72) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC8, &qword_268B41698);
  v17 = sub_268B37B84();
  v18 = sub_26892E7B4(a1, a2, v17);

  if (v18)
  {
    return v18;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2689ADE94(char a1)
{
  if (a1)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x656D756C6F76;
  }
}

uint64_t sub_2689ADEF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2689AD4A4();
  *a2 = result;
  return result;
}

uint64_t sub_2689ADF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2689AD4F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriPlaybackControlIntents::Domain_optional __swiftcall Domain.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_71_3();
  v2 = v1;
  v3 = sub_268B382F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Domain.rawValue.getter()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C50616964656DLL;
  }
}

unint64_t sub_2689AE01C()
{
  result = qword_2802A6AA8;
  if (!qword_2802A6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6AA8);
  }

  return result;
}

uint64_t sub_2689AE094@<X0>(uint64_t *a1@<X8>)
{
  result = Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Domain(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2689AE188);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UsoMediaSettingName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2689AE28CLL);
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

unint64_t sub_2689AE2C8()
{
  result = qword_2802A6AB0;
  if (!qword_2802A6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6AB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_268B37C54();
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_268B38514();
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_268B38514();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return sub_268B37C54();
}

unint64_t sub_2689AE4EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_2689AE524(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37[2] = a7;
  v38 = a1;
  v42 = a5;
  v43 = a4;
  v41 = a11;
  v39 = a3;
  v40 = a9;
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v17 + 16))(v21, v22, v14);

  v23 = sub_268B37A34();
  v24 = sub_268B37F04();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_172_0();
    v37[1] = a8;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_173_0();
    v37[0] = a12;
    v28 = v27;
    v44 = v27;
    *v26 = 136446210;
    v29 = v38;
    *(v26 + 4) = sub_26892CDB8(v38, a2, &v44);
    _os_log_impl(&dword_2688BB000, v23, v24, "Setting sash applicationBundleIdentifier to: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v30 = *(v17 + 8);
    v31 = OUTLINED_FUNCTION_138();
    v32(v31);
  }

  else
  {

    v33 = *(v17 + 8);
    v34 = OUTLINED_FUNCTION_138();
    v35(v34);
    v29 = v38;
  }

  v36 = v39;
  sub_268AEBF54(v29, a2, v39);
  [v43 setSash_];
  sub_268AEC3BC();
}

uint64_t sub_2689AE780(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  sub_268B36DB4();
}

uint64_t sub_2689AE868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689AE8A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_2689AE8D8(uint64_t a1, uint8_t *a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7, void *a8)
{
  v90 = a8;
  v97 = a6;
  v98 = a7;
  v95 = a5;
  v96 = a4;
  v86 = type metadata accessor for SnippetModelContext();
  v11 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B36A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v99 = v15;
  v100 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v89 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v19;
  MEMORY[0x28223BE20](v18);
  v101 = &v83 - v20;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v87 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v84 = v31;
  v34 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v35 = *(v24 + 16);
  v91 = v34;
  v92 = v35;
  (v35)(v33);

  v36 = sub_268B37A34();
  v37 = sub_268B37F04();

  v38 = os_log_type_enabled(v36, v37);
  v94 = v24;
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_172_0();
    v93 = a3;
    v40 = v39;
    v41 = v24;
    v42 = OUTLINED_FUNCTION_173_0();
    *&v103[0] = v42;
    *v40 = 136446210;
    *(v40 + 4) = sub_26892CDB8(a1, a2, v103);
    _os_log_impl(&dword_2688BB000, v36, v37, "MediaControlsViewProvider.mediaPlayerSnippetModel creating mediaPlayerModel snippet with applicationBundleIdentifier: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_12();
    a3 = v93;
    OUTLINED_FUNCTION_12();

    v43 = *(v41 + 8);
  }

  else
  {

    v43 = *(v24 + 8);
  }

  v44 = OUTLINED_FUNCTION_138();
  v43(v44);
  v45 = v101;
  v46 = v96;
  sub_2689AF054(a1, a2, a3, v101);
  v47 = v95;
  v48 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  if (sub_268B34C84())
  {
    v49 = v84;
    v92(v84, v91, v21);
    v50 = sub_268B37A34();
    v51 = sub_268B37ED4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "MediaControlsViewProvider.mediaPlayerSnippetModel retuning snippet and no correspondingSessionID for xrOS", v52, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v43)(v49, v21);
    v53 = v99;
    v54 = v85;
    v55 = v45;
    v56 = v45;
    v57 = v100;
    (*(v99 + 16))(v85, v55, v100);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v57);
    v58 = (v54 + *(v86 + 20));
    *v58 = 0;
    v58[1] = 0;
    v97(v54);
    sub_2689B0974(v54);
    return (*(v53 + 8))(v56, v57);
  }

  sub_268B36C54();
  if (sub_268B36C24() == a3 && v60 == v46)
  {

    goto LABEL_17;
  }

  v62 = sub_268B38444();

  if (v62)
  {
LABEL_17:
    v63 = *MEMORY[0x277D27928];
    a3 = sub_268B37BF4();
    v46 = v64;
    goto LABEL_18;
  }

LABEL_18:
  v65 = a3;
  v66 = v87;
  v92(v87, v91, v21);

  v67 = sub_268B37A34();
  v68 = sub_268B37ED4();

  v69 = os_log_type_enabled(v67, v68);
  v93 = v65;
  if (v69)
  {
    v70 = v66;
    v71 = OUTLINED_FUNCTION_172_0();
    v72 = OUTLINED_FUNCTION_173_0();
    *&v103[0] = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_26892CDB8(v65, v46, v103);
    _os_log_impl(&dword_2688BB000, v67, v68, "MediaControlsViewProvider.mediaPlayerSnippetModel routeId: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v73 = v70;
  }

  else
  {

    v73 = v66;
  }

  (v43)(v73, v21);
  v74 = v90;
  v75 = v90[3];
  v96 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v75);
  sub_26890C900(v47, v103);
  sub_26890C900(v74, v102);
  v77 = v99;
  v76 = v100;
  v78 = v89;
  v79 = v101;
  (*(v99 + 16))(v89, v101, v100);
  v80 = (*(v77 + 80) + 112) & ~*(v77 + 80);
  v81 = swift_allocObject();
  sub_2688E6514(v103, v81 + 16);
  sub_2688E6514(v102, v81 + 56);
  v82 = v98;
  *(v81 + 96) = v97;
  *(v81 + 104) = v82;
  (*(v77 + 32))(v81 + v80, v78, v76);

  sub_268B36DF4();

  return (*(v77 + 8))(v79, v76);
}

uint64_t sub_2689AF054@<X0>(uint64_t a1@<X0>, uint8_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v52 = a4;
  v4 = sub_268B36A84();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36AD4();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AD0, &qword_268B416A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AD8, &qword_268B416B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  if (sub_2689B006C())
  {
    v28 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v20, qword_2802CDA10);
    (*(v21 + 16))(v27, v29, v20);
    v30 = sub_268B37A34();
    v31 = sub_268B37ED4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "MediaControlsViewProvider.mediaPlayerSnippet creating empty media player snippet", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v21 + 8))(v27, v20);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v28);
    v33 = sub_268B36A64();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    v34 = v52;
    sub_268B36A74();
  }

  else
  {

    sub_2689AFCA0(v46, v47);
    sub_268B36AC4();
    v35 = v49;
    (*(v49 + 16))(v19, v11, v8);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v8);
    v36 = sub_268B36A64();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v36);
    sub_268B36A74();
    v37 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v20, qword_2802CDA10);
    (*(v21 + 16))(v25, v38, v20);
    v39 = sub_268B37A34();
    v40 = sub_268B37ED4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "MediaControlsViewProvider.mediaPlayerSnippet creating media player snippet", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    (*(v21 + 8))(v25, v20);
    (*(v35 + 8))(v11, v37);
    v34 = v52;
    (*(v50 + 32))(v52, v7, v51);
  }

  v42 = *MEMORY[0x277D55548];
  v43 = sub_268B36A54();
  return (*(*(v43 - 8) + 104))(v34, v42, v43);
}

uint64_t sub_2689AF5F4(char a1, void *a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v10 = type metadata accessor for SnippetModelContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  if ((a1 & 1) != 0 && (v22 = sub_2689AFA98(1, a2, a3), v23))
  {
    v24 = v23;
    v46 = v22;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v14, qword_2802CDA10);
    (*(v15 + 16))(v21, v25, v14);

    v26 = sub_268B37A34();
    v27 = sub_268B37ED4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = a4;
      v30 = v29;
      v49 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_26892CDB8(v46, v24, &v49);
      _os_log_impl(&dword_2688BB000, v26, v27, "MediaControlsViewProvider.mediaPlayerSnippetModel returning snippet with sessionID: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v31 = v30;
      a4 = v45;
      MEMORY[0x26D6266E0](v31, -1, -1);
      MEMORY[0x26D6266E0](v28, -1, -1);

      v32 = v46;
      (*(v15 + 8))(v21, v14);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
      v32 = v46;
    }

    v41 = sub_268B36A54();
    (*(*(v41 - 8) + 16))(v13, v47, v41);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v41);
    v42 = &v13[*(v10 + 20)];
    *v42 = v32;
    v42[1] = v24;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v14, qword_2802CDA10);
    (*(v15 + 16))(v19, v33, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37ED4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = a4;
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = a1 & 1;
      _os_log_impl(&dword_2688BB000, v34, v35, "MediaControlsViewProvider.mediaPlayerSnippetModel returning snippet and no correspondingSessionID. Either shouldSuppress is set to false or Siri failed to acquire UIAssertion. shouldSuppress: %{BOOL}d", v37, 8u);
      v38 = v37;
      a4 = v36;
      MEMORY[0x26D6266E0](v38, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v39 = sub_268B36A54();
    (*(*(v39 - 8) + 16))(v13, v47, v39);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v39);
    v40 = &v13[*(v10 + 20)];
    *v40 = 0;
    *(v40 + 1) = 0;
  }

  a4(v13);
  return sub_2689B0974(v13);
}

uint64_t sub_2689AFA98(char a1, void *a2, void *a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_268B34C84())
  {
    return 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v12, v6);
  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_2688BB000, v13, v14, "MediaControlsViewProvider#fetchSessionIDIfNeeded shouldSuppressSnippet: %{BOOL}d", v15, 8u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_268B36E04();
}

uint64_t sub_2689AFCA0(uint64_t a1, uint8_t *a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_2802A4F40 != -1)
  {
    swift_once();
  }

  v12 = qword_2802CDA30;
  if (a2)
  {
    v13 = qword_2802CDA30 == a1 && *algn_2802CDA38 == a2;
    if (v13 || (sub_268B38444() & 1) != 0)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v11, v14, v4);
      v9 = sub_268B37A34();
      a1 = sub_268B37ED4();
      if (os_log_type_enabled(v9, a1))
      {
        a2 = swift_slowAlloc();
        *a2 = 0;
        _os_log_impl(&dword_2688BB000, v9, a1, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system media application identifier for apple music.", a2, 2u);
        MEMORY[0x26D6266E0](a2, -1, -1);
      }

      v15 = *(v5 + 8);
      v5 += 8;
      v15(v11, v4);
      v16 = *MEMORY[0x277D27E58];
      if (*MEMORY[0x277D27E58])
      {
        goto LABEL_27;
      }

      __break(1u);
    }
  }

  if (qword_2802A4F48 == -1)
  {
    if (a2)
    {
      goto LABEL_17;
    }

LABEL_30:

    return v12;
  }

  swift_once();
  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = qword_2802CDA40 == a1 && *algn_2802CDA48 == a2;
  if (!v17 && (sub_268B38444() & 1) == 0)
  {

    return a1;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v9, v18, v4);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system podcast application identifier for apple podcast.", v21, 2u);
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  result = (*(v5 + 8))(v9, v4);
  v16 = *MEMORY[0x277D27E60];
  if (*MEMORY[0x277D27E60])
  {
LABEL_27:
    v23 = v16;
    return sub_268B37C14();
  }

  __break(1u);
  return result;
}

uint64_t sub_2689B006C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() isSystemApertureAvailable];
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    v6 = sub_268B36B04();
  }

  else
  {
    v6 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6 & 1;
    _os_log_impl(&dword_2688BB000, v8, v9, "MediaControlsViewProvider.isSystemApertureEnabledOrIsInAmbient isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d", v10, 0xEu);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return (v5 | v6) & 1;
}

uint64_t sub_2689B0288(char a1, void *a2, void *a3, void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v59 = a6;
  v60 = a5;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = sub_2689AFA98(a1, a2, a3);
  if (v22)
  {
    sub_2689B071C(v21, v22, a4);
    sub_268AEBEF0(0xD000000000000016, 0x8000000268B59110, a4);
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v57 = *(v13 + 16);
  v57(v20, v23, v10);
  v24 = a4;
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  v61 = v24;

  v27 = os_log_type_enabled(v25, v26);
  v58 = v13;
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_172_0();
    v56 = v23;
    v29 = v28;
    v30 = OUTLINED_FUNCTION_173_0();
    v62 = v30;
    *v29 = 136315138;
    v31 = sub_2689B0780(v61);
    if (!v32)
    {
      v31 = 7104878;
    }

    v33 = v10;
    v34 = v18;
    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_26892CDB8(v31, v35, &v62);
    v18 = v34;
    v10 = v33;

    *(v29 + 4) = v36;
    _os_log_impl(&dword_2688BB000, v25, v26, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet sessionID: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v37 = v58;
    OUTLINED_FUNCTION_12();
    v23 = v56;
    OUTLINED_FUNCTION_12();

    v38 = *(v37 + 8);
    v38(v20, v33);
  }

  else
  {

    v38 = *(v13 + 8);
    v39 = OUTLINED_FUNCTION_138();
    v38(v39, v40);
  }

  v57(v18, v23, v10);
  v41 = v61;
  v42 = sub_268B37A34();
  v43 = sub_268B37F04();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_172_0();
    v45 = OUTLINED_FUNCTION_173_0();
    v62 = v45;
    *v44 = 136315138;
    v46 = sub_268AEBFAC(v41);
    if (!v47)
    {
      v46 = 7104878;
    }

    v48 = v18;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v50 = sub_26892CDB8(v46, v49, &v62);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_2688BB000, v42, v43, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet viewId: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v51 = v48;
  }

  else
  {

    v51 = v18;
  }

  v38(v51, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_268B3BBA0;
  *(v52 + 32) = v41;
  v53 = v41;
  v60(v52, 0);
}

uint64_t sub_2689B068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = a2;
  if (!a2)
  {

    a1 = a3;
    v7 = a4;
  }

  a5(a1, v7);
}

void sub_2689B071C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setCorrespondingSessionID_];
}

uint64_t sub_2689B0780(void *a1)
{
  v1 = [a1 correspondingSessionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t type metadata accessor for SnippetModelContext()
{
  result = qword_2802A6AE8;
  if (!qword_2802A6AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689B0830()
{
  v1 = sub_268B36A54();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 112) & ~v4;
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v8 = v0[13];

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689B08F8(char a1)
{
  v3 = *(sub_268B36A54() - 8);
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1 + ((*(v3 + 80) + 112) & ~*(v3 + 80));

  return sub_2689AF5F4(a1, v1 + 2, v1 + 7, v4, v5, v6);
}

uint64_t sub_2689B0974(uint64_t a1)
{
  v2 = type metadata accessor for SnippetModelContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2689B09E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2689B0AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2689B0B78()
{
  sub_2689B0BFC();
  if (v0 <= 0x3F)
  {
    sub_2689B0C54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2689B0BFC()
{
  if (!qword_2802A6AF8)
  {
    sub_268B36A54();
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A6AF8);
    }
  }
}

void sub_2689B0C54()
{
  if (!qword_2802A5E50)
  {
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A5E50);
    }
  }
}

id sub_2689B0CA4()
{
  if (qword_2802A4F00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E0;
  qword_2802CD940 = qword_2802CD9E0;

  return v1;
}

void sub_2689B0D08()
{
  OUTLINED_FUNCTION_26();
  v123 = v0;
  v124 = v1;
  v119 = v2;
  v120 = v3;
  v117 = v4;
  v118 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_20_0();
  v108 = v11 - v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v115 = &v103 - v14;
  OUTLINED_FUNCTION_9();
  v109 = sub_268B34E24();
  v15 = OUTLINED_FUNCTION_1(v109);
  v114 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v113 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B367A4();
  v21 = OUTLINED_FUNCTION_1(v20);
  v104 = v22;
  v105 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v103 = v25;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B37A54();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v107 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18();
  v106 = v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v41 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v43 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v44 = *(v29 + 16);
  v121 = v43;
  v122 = v44;
  (v44)(v0);
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_14();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "AddSpeakerHandleIntentStrategy.makeIntentHandledResponse() called", v47, 2u);
    OUTLINED_FUNCTION_12();
  }

  v48 = *(v29 + 8);
  v48(v0, v26);
  v49 = sub_268B0F7F4(v124);
  if (v49)
  {
    v115 = v49;
    sub_268B36754();
    v50 = sub_268B36734();
    if (!v50)
    {
      v50 = sub_268B36744();
    }

    v51 = v50;
    v52 = v41;
    v122(v41, v121, v26);

    v53 = sub_268B37A34();
    v54 = sub_268B37ED4();

    v55 = os_log_type_enabled(v53, v54);
    v111 = v48;
    v112 = v29 + 8;
    v116 = v26;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v113 = v52;
      v114 = v51;
      v57 = v56;
      v58 = swift_slowAlloc();
      v127[0] = v58;
      *v57 = 136315138;
      sub_268B36714();
      v59 = v103;
      sub_268B36B14();

      v60 = sub_268B36784();
      v62 = v61;
      (*(v104 + 8))(v59, v105);
      v63 = sub_26892CDB8(v60, v62, v127);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_2688BB000, v53, v54, "AddSpeakerHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      OUTLINED_FUNCTION_12();
      v51 = v114;
      OUTLINED_FUNCTION_12();

      v111(v113, v26);
    }

    else
    {

      v48(v52, v26);
    }

    v76 = v123;
    v77 = v119;
    v78 = swift_allocObject();
    v78[2] = v51;
    v78[3] = v76;
    v79 = v124;
    v81 = v117;
    v80 = v118;
    v78[4] = v124;
    v78[5] = v81;
    v78[6] = v77;
    v78[7] = v80;
    v82 = v115;
    v78[8] = v120;
    v78[9] = v82;
    v83 = OBJC_IVAR___AddSpeakerIntentResponse_code;
    swift_beginAccess();
    if (*&v81[v83] == 100)
    {
      v84 = v106;
      v122(v106, v121, v116);

      v79;
      v85 = v81;

      v86 = sub_268B37A34();
      v87 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v87))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v88, v89, "Requested to add speaker from phone/iOS device which resulted in a moveSpeaker operation instead. Returning moveSpeaker dialog");
        OUTLINED_FUNCTION_12();
      }

      v111(v84, v116);
      OUTLINED_FUNCTION_6_18();
      sub_2689B5C10(v126);
      if (OUTLINED_FUNCTION_8_12())
      {
        sub_268A63D80();
      }

      v90 = v123[2];
      OUTLINED_FUNCTION_15_12(v127);
      v91 = OUTLINED_FUNCTION_5_7();
      sub_268AB22F8(v91);

      OUTLINED_FUNCTION_15_12(v125);
      sub_2689B5C10(v125);
    }

    else
    {
      v92 = v107;
      v122(v107, v121, v116);

      v79;
      v93 = v81;

      v94 = sub_268B37A34();
      v95 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v95))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v96, v97, "Returning default response dialog for add speaker.");
        OUTLINED_FUNCTION_12();
      }

      v111(v92, v116);
      OUTLINED_FUNCTION_6_18();
      sub_2689B5BBC(v126);
      if (OUTLINED_FUNCTION_8_12())
      {
        sub_268A647E4();
      }

      v98 = v123[2];
      OUTLINED_FUNCTION_15_12(v127);
      v99 = OUTLINED_FUNCTION_5_7();
      sub_268ABE228(v99);

      OUTLINED_FUNCTION_15_12(v125);
      sub_2689B5BBC(v125);
    }
  }

  else
  {
    v122(v34, v121, v26);
    v64 = sub_268B37A34();
    v65 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v65))
    {
      v66 = OUTLINED_FUNCTION_14();
      *v66 = 0;
      _os_log_impl(&dword_2688BB000, v64, v65, "Unable to find any destinations in the intent. Returning a failure", v66, 2u);
      OUTLINED_FUNCTION_12();
    }

    v48(v34, v26);
    sub_268B36E84();
    v67 = v110;
    v68 = v108;
    if (!v69)
    {
      sub_268947F08();
    }

    v70 = v109;
    v71 = __swift_project_boxed_opaque_existential_1(v123 + 18, v123[21]);
    (*(v114 + 104))(v113, *MEMORY[0x277D5BC00], v70);
    v72 = sub_268B350F4();
    v73 = v115;
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v72);
    v74 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v74);
    v75 = *v71;
    sub_2688F1FA4(v73, v68, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v68, 1, v72) == 1)
    {
      sub_2688C058C(v68, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v72 - 8) + 8))(v68, v72);
    }

    v100 = v113;
    sub_2688E3180();

    sub_2688C058C(v67, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v115, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v100, v70);
    sub_2688C2ECC();
    v101 = swift_allocError();
    *v102 = 19;
    v127[0] = v101;
    v128 = 1;
    v118(v127);
    sub_2688C058C(v127, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B180C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v28[0] = a4;
  v28[1] = a8;
  v29 = a6;
  v30 = a7;
  v28[2] = a3;
  v28[3] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v28 - v19);
  sub_2688F1FA4(a1, v28 - v19, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31[0] = *v20;
    v21 = v31[0];
    v32 = 1;
    v22 = v31[0];
    v29(v31);

    return sub_2688C058C(v31, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v20, v16);
    v24 = a2[12];
    __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
    v25 = sub_268B36FA4();
    sub_2688F1FA4(v16, v14, &unk_2802A56E0, &unk_268B3CDF0);
    v26 = *&v14[*(v10 + 48)];
    if (v25)
    {
      sub_2689B1A9C();
    }

    else
    {
      sub_2689B29DC();
    }

    sub_2688C058C(v16, &unk_2802A56E0, &unk_268B3CDF0);
    v27 = sub_268B350F4();
    return (*(*(v27 - 8) + 8))(v14, v27);
  }
}

void sub_2689B1A9C()
{
  OUTLINED_FUNCTION_26();
  *(&v100 + 1) = v0;
  v106 = v1;
  v107 = v2;
  v105 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B35044();
  v11 = OUTLINED_FUNCTION_1(v10);
  v109 = v12;
  v110 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v108 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v99 = v22 - v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v98 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v28 = OUTLINED_FUNCTION_1(v27);
  v111 = v29;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v102 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v112 = &v93 - v35;
  v101 = v36;
  MEMORY[0x28223BE20](v34);
  v38 = &v93 - v37;
  v39 = sub_268B350F4();
  v103 = *(v39 - 8);
  v104 = v39;
  v40 = v9;
  v41 = v27;
  (*(v103 + 16))(v38, v40);
  v42 = *(v27 + 48);
  v113 = v38;
  *&v38[v42] = v7;
  v43 = qword_2802A4F30;
  v44 = v7;
  if (v43 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_0();
  }

  v45 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v46 = v19;
  v48 = *(v19 + 16);
  v19 += 16;
  v47 = v48;
  *&v100 = v45;
  v48(v0);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_14();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "AddSpeakerHandleIntentStrategy#intentHandledResponse...", v51, 2u);
    OUTLINED_FUNCTION_12();
  }

  v52 = *(v46 + 8);
  v52(v0, v16);
  v53 = [v5 source];
  if (v53 && (v54 = sub_2689B56E0(v53)) != 0)
  {
    v55 = v54;
    v94 = v47;
    v95 = v52;
    v96 = v41;
    v97 = v5;
    v56 = sub_2688EFD0C(v54);
    v5 = 0;
    do
    {
      if (v56 == v5)
      {

        v5 = v97;
        v41 = v96;
        v52 = v95;
        v47 = v94;
        goto LABEL_16;
      }

      if ((v55 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26D625BD0](v5, v55);
      }

      else
      {
        if (v5 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v57 = *(v55 + 8 * v5 + 32);
      }

      v0 = v57;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v41 = sub_268983434();

      ++v5;
    }

    while ((v41 & 1) == 0);

    v94(v98, v100, v16);
    v85 = sub_268B37A34();
    v86 = sub_268B37ED4();
    if (os_log_type_enabled(v85, v86))
    {
      v88 = OUTLINED_FUNCTION_14();
      *v88 = 0;
      _os_log_impl(&dword_2688BB000, v85, v86, "AddSpeakerHandleIntentStrategy#intentHandledResponse using local routeId", v88, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_46_2();
    v89();
    sub_268B36C54();
    v99 = sub_268B36C24();
    *&v100 = v90;
    v5 = v97;
    v66 = v113;
    v62 = *(&v100 + 1);
    v67 = v111;
    v41 = v96;
  }

  else
  {
LABEL_16:
    v58 = v99;
    v47(v99, v100, v16);
    v59 = sub_268B37A34();
    v60 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v60))
    {
      v61 = OUTLINED_FUNCTION_14();
      *v61 = 0;
      _os_log_impl(&dword_2688BB000, v59, v60, "AddSpeakerHandleIntentStrategy#intentHandledResponse using destination routeId", v61, 2u);
      OUTLINED_FUNCTION_12();
    }

    v52(v58, v16);
    v62 = *(&v100 + 1);
    sub_268A581C0(*(*(&v100 + 1) + 304));
    if (v63[2])
    {
      v65 = v63[4];
      v64 = v63[5];
      v99 = v65;
      *&v100 = v64;
    }

    else
    {

      v99 = 0;
      *&v100 = 0xE000000000000000;
    }

    v66 = v113;
    v67 = v111;
  }

  sub_26890C900((v62 + 33), v114);
  v96 = v116;
  v97 = v115;
  *(&v100 + 1) = __swift_project_boxed_opaque_existential_1(v114, v115);
  v68 = v112;
  sub_2688F1FA4(v66, v112, &unk_2802A56E0, &unk_268B3CDF0);
  v98 = *(v68 + *(v41 + 48));
  v69 = *__swift_project_boxed_opaque_existential_1(v62 + 28, v62[31]);
  if (v69)
  {
    v70 = OUTLINED_FUNCTION_28_1();
    LODWORD(v111) = [v69 BOOLForKey_];
  }

  else
  {
    LODWORD(v111) = 0;
  }

  v71 = v62[7];
  __swift_project_boxed_opaque_existential_1(v62 + 3, v62[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_268B3BBA0;
    *(v72 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
  }

  v73 = v108;
  sub_268A82B50(v5, v108);
  v74 = sub_2689F0948();
  v75 = v102;
  sub_2688F1FA4(v66, v102, &unk_2802A56E0, &unk_268B3CDF0);
  v76 = (*(v67 + 80) + 40) & ~*(v67 + 80);
  v77 = (v101 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = v5;
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = v62;
  v79[4] = v106;
  sub_2689186C8(v75, v79 + v76);
  v80 = (v79 + v77);
  v81 = v107;
  *v80 = v105;
  v80[1] = v81;
  v82 = v78;

  LOBYTE(v91) = v74 & 1;
  v83 = v112;
  v84 = v98;
  sub_268A83648(v112, v98, v99, v100, v111, v72, v73, (v62 + 13), v91, sub_2689B5A6C, v79, v97, v96, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);

  (*(v109 + 8))(v73, v110);
  sub_2688C058C(v113, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v103 + 8))(v83, v104);
  __swift_destroy_boxed_opaque_existential_0Tm(v114);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B2320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "AddSpeakerHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E3180();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "AddSpeakerHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

void sub_2689B29DC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v71 = v3;
  v72 = v2;
  v68 = v4;
  v65 = v5;
  v7 = v6;
  v70 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = v21 - 8;
  v66 = *(v21 - 8);
  v23 = *(v66 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v67 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v27);
  (*(v28 + 16))(v26, v12);
  v29 = *(v22 + 56);
  v69 = v26;
  *&v26[v29] = v10;
  v30 = qword_2802A4F30;
  v31 = v10;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v16 + 16))(v20, v32, v13);
  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_14();
    *v35 = 0;
    _os_log_impl(&dword_2688BB000, v33, v34, "AddSpeakerHandleIntentStrategy#legacyHandledResponse...", v35, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v20, v13);
  v36 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_268B3BBA0;
    v38 = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
    v64 = v37;
    *(v37 + 32) = v38;
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  sub_268B0DEEC();
  v40 = v39;
  if (sub_2688EFD0C(v39))
  {
    sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x26D625BD0](0, v40);
    }

    else
    {
      v41 = *(v40 + 32);
    }

    v42 = v41;

    v63 = sub_268B0F784(v42);
    v65 = v43;
  }

  else
  {

    v63 = 0;
    v65 = 0;
  }

  v44 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v45 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v45)
  {
    v46 = v45;
    v47 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v62) = [v46 BOOLForKey_];
  }

  else
  {
    HIDWORD(v62) = 0;
  }

  v61 = v1 + 13;
  v48 = v69;
  v49 = v67;
  sub_2688F1FA4(v69, v67, &unk_2802A56E0, &unk_268B3CDF0);
  v50 = (*(v66 + 80) + 40) & ~*(v66 + 80);
  v51 = (v23 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v70;
  v53[2] = v70;
  v53[3] = v1;
  v53[4] = v7;
  sub_2689186C8(v49, v53 + v50);
  v55 = (v53 + v51);
  v57 = v71;
  v56 = v72;
  *v55 = v68;
  v55[1] = v57;
  *(v53 + v52) = v64;
  *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v58 = *__swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v59 = v54;

  v60 = v56;
  sub_268AED0F0(v59, v63, v65, 0, 0, HIDWORD(v62), (v1 + 3), (v1 + 8), v61, v58, sub_2689B5880, v53, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);

  sub_2688C058C(v48, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B2F04(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9)
{
  v92 = a8;
  v93 = a7;
  v98 = a6;
  v91 = a5;
  v96 = a4;
  v99 = a3;
  LODWORD(v89) = a2;
  v94 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v82 - v11;
  v88 = sub_268B35044();
  v86 = *(v88 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v82 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - v37;
  v39 = sub_268B34E24();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v90 = &v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v82 - v45;
  v97 = v44;
  v95 = v40;
  if (v89)
  {
    v47 = v19;
    v48 = v96;
    v49 = v98;
    v50 = sub_268B36E84();
    if (v51)
    {
      v89 = v50;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v89 = v70;
    }

    v71 = v97;
    v72 = v84;
    v73 = __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    (*(v95 + 104))(v90, *MEMORY[0x277D5BC00], v71);
    sub_2688F1FA4(v49, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v74 = sub_268B350F4();
    v75 = *(v74 - 8);
    (*(v75 + 32))(v33, v23, v74);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v74);
    v76 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v76);
    v77 = *v73;
    sub_2688F1FA4(v33, v30, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v30, 1, v74) == 1)
    {
      sub_2688C058C(v30, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v75 + 8))(v30, v74);
    }

    v78 = v90;
    sub_2688E3180();

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v95 + 8))(v78, v97);
    v102[0] = v94;
    v105 = 1;
    v79 = v94;
  }

  else
  {
    v90 = a9;
    sub_268947F08();
    v89 = v52;
    v53 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    (*(v40 + 104))(v46, *MEMORY[0x277D5BC10], v39);
    sub_2688F1FA4(v98, v25, &unk_2802A56E0, &unk_268B3CDF0);

    v54 = sub_268B350F4();
    v55 = *(v54 - 8);
    (*(v55 + 32))(v38, v25, v54);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v54);
    v56 = sub_268B34B94();
    v57 = v83;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v56);
    v58 = *v53;
    sub_2688F1FA4(v38, v36, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v36, 1, v54) == 1)
    {
      sub_2688C058C(v36, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v55 + 8))(v36, v54);
    }

    v59 = v99;
    sub_2688E3180();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v38, &unk_2802A57B0, &unk_268B3CE00);
    (*(v95 + 8))(v46, v97);
    v60 = v96;
    v61 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v102[0] = v94;
    v62 = *v61;

    sub_268948494(v102);
    sub_2688C058C(v102, &byte_2802A6450, &byte_268B3BE10);
    v63 = v85;
    sub_268A82B50(v59, v85);
    if (v90 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v81 = sub_268B38294();

      v90 = v81;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v103 = sub_268B354F4();
    v104 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v102);
    v64 = 0;
    if (sub_2689F0948())
    {
      v64 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v65 = sub_268B38064();
      [v64 setMinimumAutoDismissalTimeInMs_];

      [v64 setPremptivelyResumeMedia_];
    }

    v66 = v60[7];
    __swift_project_boxed_opaque_existential_1(v60 + 3, v60[6]);
    sub_268B34CA4();
    v67 = v86;
    v68 = v87;
    v69 = v88;
    (*(v86 + 16))(v87, v63, v88);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    sub_268B34EF4();

    sub_2688C058C(v100, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v68, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v67 + 8))(v63, v69);
    v105 = 0;
  }

  v93(v102);
  return sub_2688C058C(v102, &unk_2802A57C0, &qword_268B3BE00);
}

void *sub_2689B3A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  __src[2] = 1;
  memset(&__src[3], 0, 57);
  memcpy(__dst, __src, 0x51uLL);
  sub_2689B5664(__dst);
  LODWORD(__src[0]) = 0;
  memset(&__src[1], 0, 72);
  LOBYTE(__src[10]) = 1;
  if (sub_268B0F7F4(a1))
  {
    sub_268A65248();
  }

  return memcpy(a2, __src, 0x51uLL);
}