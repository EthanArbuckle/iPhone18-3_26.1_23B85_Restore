uint64_t sub_2663F1D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void (*a10)(__int128 *), uint64_t a11, uint64_t a12)
{
  v74 = a8;
  v76 = a7;
  *(&v72 + 1) = a6;
  *&v72 = a5;
  v75 = a4;
  v70 = a3;
  v82 = a10;
  v83 = a11;
  v13 = sub_2664DE438();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v77 = &v67[-v17];
  v84 = sub_2664DFE38();
  v80 = *(v84 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_2664E0018();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_2664E00E8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v67[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v32 = &v67[-v31];
  sub_2664E00C8();
  v71 = a2;
  *v24 = a2;
  (*(v21 + 104))(v24, *MEMORY[0x277D85178], v20);
  MEMORY[0x266783140](v30, v24);
  (*(v21 + 8))(v24, v20);
  v33 = *(v26 + 8);
  v33(v30, v25);
  sub_2664E0738();
  v33(v32, v25);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v34 = *(a12 + 32);
    v87 = *(a12 + 16);
    v88 = v34;

    v82(&v87);
  }

  else
  {
    v69 = a12;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = a9;
    v36 = v84;
    v37 = __swift_project_value_buffer(v84, qword_280F914F0);
    swift_beginAccess();
    v39 = v80;
    v38 = v81;
    (*(v80 + 16))(v81, v37, v36);
    v41 = v77;
    v40 = v78;
    v42 = v79;
    (*(v78 + 16))(v77, v74, v79);
    v43 = v76;

    v44 = v75;

    v45 = sub_2664DFE18();
    v46 = sub_2664E06D8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v68 = v46;
      v48 = v44;
      v49 = v47;
      v74 = swift_slowAlloc();
      *&v85 = v74;
      *v49 = 136446978;
      v50 = v48;
      v35 = a9;
      *(v49 + 4) = sub_2662A320C(v70, v50, &v85);
      *(v49 + 12) = 2050;
      *(v49 + 14) = v71;
      *(v49 + 22) = 2080;
      v87 = v72;
      v88 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      v51 = sub_2664E0318();
      v53 = v41;
      v54 = sub_2662A320C(v51, v52, &v85);

      *(v49 + 24) = v54;
      *(v49 + 32) = 2050;
      v55 = v73;
      sub_2664DE428();
      sub_2664DE388();
      v57 = v56;
      v58 = *(v40 + 8);
      v58(v55, v42);
      v58(v53, v42);
      *(v49 + 34) = v57;
      _os_log_impl(&dword_26629C000, v45, v68, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v49, 0x2Au);
      v59 = v74;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);

      (*(v39 + 8))(v81, v84);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v39 + 8))(v38, v84);
    }

    v60 = v82;
    v61 = v69;
    if (v35)
    {
      v62 = sub_2664DF638();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v65 = *(v61 + 32);
    v85 = *(v61 + 16);
    v86 = v65;

    v60(&v85);
  }
}

uint64_t sub_2663F2518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v75 = a8;
  v71 = a7;
  v65 = a6;
  v66 = a4;
  v67 = a5;
  v62 = a3;
  v76 = a9;
  v72 = sub_2664DE438();
  v69 = *(v72 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x28223BE20](v72);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - v14;
  v74 = sub_2664DFE38();
  v70 = *(v74 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E0018();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2664E00E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;
  sub_2664E00C8();
  v63 = a2;
  *v21 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D85178], v17);
  MEMORY[0x266783140](v27, v21);
  (*(v18 + 8))(v21, v17);
  v30 = *(v23 + 8);
  v30(v27, v22);
  sub_2664E0738();
  v30(v29, v22);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v78[0] = *(a10 + 16);

    v75(v78);
  }

  else
  {
    v61 = a10;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = v74;
    v32 = __swift_project_value_buffer(v74, qword_280F914F0);
    swift_beginAccess();
    v33 = v70;
    v34 = v73;
    (*(v70 + 16))(v73, v32, v31);
    v36 = v68;
    v35 = v69;
    v37 = v72;
    (*(v69 + 16))(v68, v65, v72);
    v38 = v67;

    v39 = v66;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = v36;
      v45 = swift_slowAlloc();
      v78[0] = v45;
      *v43 = 136446978;
      *(v43 + 4) = sub_2662A320C(v62, v42, v78);
      *(v43 + 12) = 2050;
      *(v43 + 14) = v63;
      *(v43 + 22) = 2080;
      v77 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073648, qword_2664EB7E8);
      v46 = sub_2664E0318();
      v48 = sub_2662A320C(v46, v47, v78);

      *(v43 + 24) = v48;
      *(v43 + 32) = 2050;
      v49 = v64;
      sub_2664DE428();
      sub_2664DE388();
      v51 = v50;
      v52 = *(v35 + 8);
      v53 = v49;
      v54 = v72;
      v52(v53, v72);
      v52(v44, v54);
      *(v43 + 34) = v51;
      _os_log_impl(&dword_26629C000, v40, v41, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      (*(v33 + 8))(v73, v74);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
      (*(v33 + 8))(v34, v31);
    }

    v55 = v61;
    v56 = v75;
    if (v71)
    {
      v57 = sub_2664DF638();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v77 = *(v55 + 16);

    v56(&v77);
  }
}

uint64_t sub_2663F2C38()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000015, 0x80000002664F7DE0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073638 = v10;
  return result;
}

uint64_t sub_2663F2DD0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = a6;
  v39 = a5;
  v40 = a3;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a2;
    v24 = a1;
    v25 = a8;
    v26 = v23;
    v41 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_2662A320C(v40, a4, &v41);
    _os_log_impl(&dword_26629C000, v19, v20, "Continuations#buildAndStart [%{public}s] waiting for previous...", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v27 = v26;
    a8 = v25;
    a1 = v24;
    a2 = v37;
    MEMORY[0x266784AD0](v27, -1, -1);
    v28 = v22;
    a7 = v36;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  if (v39)
  {
    v29 = v39;
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v29 = sub_2662ECF60(0xD00000000000001BLL, 0x80000002664F7DA0, sub_2663F3108, 0);
  }

  swift_bridgeObjectRetain_n();

  v33 = v38;

  sub_266311654(0, 1, v29, v40, a4, a1, a2, v33, a7, a8);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_2663F3148(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v170 = a8;
  v169 = a7;
  v171 = a6;
  v179 = a4;
  v180 = a5;
  v178 = a3;
  v176 = a2;
  v175 = sub_2664E0038();
  v182 = *(v175 - 8);
  v9 = *(v182 + 64);
  MEMORY[0x28223BE20](v175);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E00B8();
  v181 = *(v12 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DE438();
  v174 = *(v16 - 8);
  v17 = *(v174 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v147 - v20;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v183 = v22;
  v184 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](&v147 - v28);
  v31 = &v147 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v177 = &v147 - v36;
  v37 = *(a1 + 2);
  if (v37)
  {
    v38 = *(a1 + 1);
    v39 = *a1;
    v40 = qword_280F914E8;
    v41 = *(a1 + 2);

    if (v40 != -1)
    {
      swift_once();
    }

    v42 = v183;
    v43 = __swift_project_value_buffer(v183, qword_280F914F0);
    swift_beginAccess();
    v44 = v184;
    v45 = v177;
    (*(v184 + 16))(v177, v43, v42);

    v46 = v178;

    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v38;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v192[0] = v51;
      *v50 = 136446722;
      if (qword_280071B00 != -1)
      {
        swift_once();
      }

      *(v50 + 4) = sub_2662A320C(qword_280072E28, qword_280072E30, v192);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_2662A320C(v176, v46, v192);
      *(v50 + 22) = 2080;
      LOBYTE(v185) = v39;
      v52 = PlaybackCode.rawValue.getter();
      v54 = sub_2662A320C(v52, v53, v192);

      *(v50 + 24) = v54;
      _os_log_impl(&dword_26629C000, v47, v48, "Continuations#buildAndStart %{public}s [%{public}s] previous continuation completed with ERROR code: %s - exiting", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      (*(v184 + 8))(v177, v42);
      v38 = v49;
    }

    else
    {

      (*(v44 + 8))(v45, v42);
    }

    v192[0] = v39;
    v192[1] = v38;
    v192[2] = v37;
    v179(v192);
  }

  else
  {
    v160 = v32;
    v158 = v35;
    *&v159 = v34;
    v161 = v33;
    v163 = v17;
    v164 = v21;
    v165 = v15;
    v166 = v16;
    v167 = v12;
    v168 = v11;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v183;
    v56 = __swift_project_value_buffer(v183, qword_280F914F0);
    swift_beginAccess();
    v57 = v184;
    v59 = v184 + 16;
    v58 = *(v184 + 16);
    v177 = v56;
    v173 = v58;
    v58(v31, v56, v55);
    v60 = v178;

    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();

    v63 = os_log_type_enabled(v61, v62);
    v162 = v19;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136446210;
      *(v64 + 4) = sub_2662A320C(v176, v60, &aBlock);
      _os_log_impl(&dword_26629C000, v61, v62, "Continuations#buildAndStart [%{public}s] previous completed successfully", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      v57 = v184;
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    v172 = *(v57 + 8);
    v172(v31, v55);
    v66 = v55;
    v67 = v160;
    v173(v160, v177, v66);

    v68 = sub_2664DFE18();
    v69 = sub_2664E06E8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136446210;
      v72 = v176;
      *(v70 + 4) = sub_2662A320C(v176, v60, &aBlock);
      _os_log_impl(&dword_26629C000, v68, v69, "Continuations#buildAndStart [%{public}s] evaluating next Continuation function", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x266784AD0](v71, -1, -1);
      MEMORY[0x266784AD0](v70, -1, -1);

      v172(v67, v66);
    }

    else
    {

      v172(v67, v66);
      v72 = v176;
    }

    aBlock = 0;
    v187 = 0xE000000000000000;
    sub_2664E0B28();

    aBlock = 0xD00000000000001CLL;
    v187 = 0x80000002664F7DC0;
    MEMORY[0x2667833B0](v72, v60);
    v74 = aBlock;
    v75 = v187;
    v76 = v173;
    if (qword_280071C08 != -1)
    {
      swift_once();
    }

    v160 = qword_280073638;
    v77 = v158;
    v76(v158, v177, v66);
    v78 = sub_2664DFE18();
    v79 = sub_2664E06B8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock = v81;
      *v80 = 134218498;
      *(v80 + 4) = 0;
      *(v80 + 12) = 2048;
      *(v80 + 14) = 40;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_2662A320C(0x74754F64656D6974, 0xE800000000000000, &aBlock);
      _os_log_impl(&dword_26629C000, v78, v79, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v80, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      v82 = v81;
      v76 = v173;
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);
    }

    v172(v77, v66);
    v83 = v170;
    v84 = v169;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v83;
    v176 = v85;
    v86 = v159;
    v76(v159, v177, v66);

    v87 = sub_2664DFE18();
    v88 = sub_2664E06C8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v89 = 136446466;
      *(v89 + 4) = sub_2662A320C(v74, v75, &aBlock);
      *(v89 + 12) = 2050;
      *(v89 + 14) = 60000;
      _os_log_impl(&dword_26629C000, v87, v88, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v89, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x266784AD0](v90, -1, -1);
      v91 = v89;
      v92 = v74;
      MEMORY[0x266784AD0](v91, -1, -1);

      v172(v86, v66);
    }

    else
    {

      v172(v86, v66);
      v92 = v74;
    }

    v148 = v75;
    v178 = v92;
    v170 = v59;
    v93 = v164;
    sub_2664DE428();
    v94 = dispatch_group_create();
    v95 = swift_allocObject();
    v159 = xmmword_2664EB7D0;
    *(v95 + 16) = xmmword_2664EB7D0;
    v172 = v95;
    *(v95 + 32) = 0xE800000000000000;
    aBlock = 0;
    v187 = 0xE000000000000000;

    sub_2664E0B28();

    aBlock = 0xD00000000000001ALL;
    v187 = 0x80000002664F44D0;
    MEMORY[0x2667833B0](v92, v75);
    v96 = aBlock;
    v97 = v187;
    type metadata accessor for AtomicOnce();
    v98 = swift_allocObject();
    *(v98 + 24) = 0;
    *(v98 + 32) = v96;
    *(v98 + 40) = v97;
    v99 = qword_280F91468;

    v100 = v166;
    if (v99 != -1)
    {
      swift_once();
    }

    v101 = qword_280F91470;
    v189 = type metadata accessor for SiriKitTaskLoggingProvider();
    v190 = &protocol witness table for SiriKitTaskLoggingProvider;
    aBlock = v101;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    *(v98 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v96, v97, 1, &aBlock);
    dispatch_group_enter(v94);
    v102 = v174;
    v103 = *(v174 + 16);
    v104 = v98;
    v105 = v162;
    v158 = (v174 + 16);
    v157 = v103;
    v103(v162, v93, v100);
    v106 = *(v102 + 80);
    v153 = ~v106;
    v107 = (v106 + 56) & ~v106;
    v108 = (v163 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v147 = v106;
    v109 = swift_allocObject();
    v110 = v100;
    v111 = v176;
    v109[2] = sub_2663F50E0;
    v109[3] = v111;
    v112 = v178;
    v109[4] = v104;
    v109[5] = v112;
    v113 = v148;
    v109[6] = v148;
    v114 = *(v102 + 32);
    v155 = v102 + 32;
    v154 = v114;
    v114(v109 + v107, v105, v110);
    *(v109 + v108) = v172;
    *(v109 + ((v108 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;
    v190 = sub_2663F5108;
    v191 = v109;
    aBlock = MEMORY[0x277D85DD0];
    v187 = 1107296256;
    v188 = sub_2662A3F90;
    v189 = &block_descriptor_15;
    v115 = _Block_copy(&aBlock);

    v169 = v104;

    v152 = v94;
    v116 = v165;
    sub_2664E0068();
    v185 = MEMORY[0x277D84F90];
    v117 = sub_2662A6120();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    v119 = sub_2662A5AC8();
    v120 = v168;
    v151 = v118;
    v150 = v119;
    v121 = v175;
    v156 = v117;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v116, v120, v115);
    _Block_release(v115);
    v122 = v182 + 8;
    v171 = *(v182 + 8);
    v171(v120, v121);
    v123 = *(v181 + 8);
    v181 += 8;
    v149 = v123;
    v123(v116, v167);

    v124 = v161;
    v125 = v183;
    v173(v161, v177, v183);

    v126 = sub_2664DFE18();
    v127 = sub_2664E06E8();

    v128 = os_log_type_enabled(v126, v127);
    v182 = v122;
    if (v128)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock = v130;
      *v129 = 136446210;
      *(v129 + 4) = sub_2662A320C(v178, v113, &aBlock);
      _os_log_impl(&dword_26629C000, v126, v127, "Completions#timeout waiting for completion: %{public}s...", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      MEMORY[0x266784AD0](v130, -1, -1);
      MEMORY[0x266784AD0](v129, -1, -1);
    }

    (*(v184 + 8))(v124, v125);
    v131 = v113;
    v132 = v162;
    v133 = v164;
    v134 = v166;
    v157(v162, v164, v166);
    v135 = (v147 + 72) & v153;
    v136 = v135 + v163;
    v137 = (((v135 + v163) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v138 = swift_allocObject();
    v139 = v152;
    *(v138 + 16) = v152;
    *(v138 + 24) = 60000;
    *(v138 + 32) = v178;
    *(v138 + 40) = v131;
    *(v138 + 48) = v159;
    *(v138 + 64) = 0xE800000000000000;
    v154(v138 + v135, v132, v134);
    *(v138 + v136) = 1;
    v140 = v138 + (v136 & 0xFFFFFFFFFFFFFFF8);
    v141 = v180;
    *(v140 + 8) = v179;
    *(v140 + 16) = v141;
    *(v138 + v137) = v172;
    v190 = sub_2663F51C4;
    v191 = v138;
    aBlock = MEMORY[0x277D85DD0];
    v187 = 1107296256;
    v188 = sub_2662A3F90;
    v189 = &block_descriptor_21_1;
    v142 = _Block_copy(&aBlock);

    v143 = v139;

    v144 = v165;
    sub_2664E0068();
    v185 = MEMORY[0x277D84F90];
    v145 = v168;
    v146 = v175;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v144, v145, v142);
    _Block_release(v142);

    v171(v145, v146);
    v149(v144, v167);
    (*(v174 + 8))(v133, v134);
  }
}

uint64_t sub_2663F44EC(_BYTE *a1, uint64_t a2, unint64_t a3)
{

  sub_2663124DC(0, 1, a1, a2, a3);
}

uint64_t sub_2663F4550(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  if (*(a1 + 2))
  {
    v14 = *a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v15, v6);

    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = a2;
      v21 = v19;
      v32 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_2662A320C(v20, a3, &v32);
      *(v18 + 12) = 2082;
      v31[15] = v14;
      v22 = PlaybackCode.rawValue.getter();
      v24 = sub_2662A320C(v22, v23, &v32);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_26629C000, v16, v17, "Continuations#buildAndStart [%{public}s] completed with ERROR code: %{public}s in background", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v21, -1, -1);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v26, v6);

    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_2662A320C(a2, a3, &v32);
      _os_log_impl(&dword_26629C000, v27, v28, "Continuations#buildAndStart [%{public}s] completed successfully in background", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_2663F4978(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v60 = a6;
  v73 = a5;
  v74 = a4;
  v67 = sub_2664E0038();
  v70 = *(v67 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E00B8();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v71 = v21;
  v24 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v17 + 16);
  v64 = v24;
  v63 = v17 + 16;
  v62 = v25;
  v25(v23, v24, v16);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();

  v28 = os_log_type_enabled(v26, v27);
  v72 = v17;
  v66 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v57 = a3;
    v30 = v16;
    v31 = v29;
    v32 = v17;
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v31 = 136446210;
    *(v31 + 4) = sub_2662A320C(a1, a2, &aBlock);
    _os_log_impl(&dword_26629C000, v26, v27, "Continuations#buildAndStart [%{public}s]...", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);

    v34 = v30;
    a3 = v57;
    (*(v32 + 8))(v23, v34);
  }

  else
  {

    (*(v17 + 8))(v23, v16);
  }

  v35 = a1;
  aBlock = 0;
  v77 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001DLL;
  v77 = 0x80000002664F7D80;
  MEMORY[0x2667833B0](a1, a2);
  v36 = aBlock;
  v37 = v77;
  v38 = swift_allocObject();
  v38[2] = a1;
  v38[3] = a2;
  v38[4] = v60;
  v38[5] = a3;
  v39 = v58;
  v38[6] = v59;
  v38[7] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  a3;

  v43 = sub_2662ECF60(v36, v37, sub_2663F50C4, v38);

  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v35;
  v44[4] = a2;
  v80 = sub_2663F50D4;
  v81 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2662A3F90;
  v79 = &block_descriptor_32;
  v45 = _Block_copy(&aBlock);

  v46 = v61;
  sub_2664E0068();
  v75 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v47 = v65;
  v48 = v67;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v46, v47, v45);
  _Block_release(v45);
  (*(v70 + 8))(v47, v48);
  (*(v68 + 8))(v46, v69);

  v49 = v71;
  v50 = v66;
  v62(v71, v64, v66);

  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_2662A320C(v35, a2, &aBlock);
    _os_log_impl(&dword_26629C000, v51, v52, "Continuations#buildAndStart [%{public}s] returning early success completion (prior to work)", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  (*(v72 + 8))(v49, v50);
  v77 = 0;
  v78 = 0;
  aBlock = v43;
  LOBYTE(v79) = 0;

  v74(&aBlock);

  return sub_2662D2F30(aBlock, v77, v78, v79);
}

uint64_t sub_2663F50E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2663F5108()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663EFE80(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), &unk_2877EF5F8, sub_2663F5278);
}

uint64_t sub_2663F51C4()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F1D98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663F5278(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(a1 + 2);
  v15 = *a1;
  v16 = v12;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v1 + v4;
  v14[5] = v10 + 16;
  v14[6] = &v15;
  v14[7] = v11;
  return sub_266469DF8(sub_2663F5360, v14);
}

uint64_t sub_2663F5378(char *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1[4];
  v14 = *a1;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v1 + v4;
  v13[5] = v9 + 16;
  v13[6] = &v14;
  v13[7] = v10;
  return sub_266469DF8(sub_2663F5458, v13);
}

uint64_t sub_2663F546C(uint64_t *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1[4];
  v14 = *a1;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v1 + v4;
  v13[5] = v9 + 16;
  v13[6] = &v14;
  v13[7] = v10;
  return sub_266469DF8(sub_2663F554C, v13);
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2663F5708(char *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *a1;
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + v8);
  v12 = *(a1 + 24);
  v16 = *(a1 + 8);
  v17 = v12;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = v1 + v4;
  v14[5] = v10 + 16;
  v14[6] = &v15;
  v14[7] = v11;
  return sub_266469DF8(sub_2663F57F4, v14);
}

void sub_2663F57F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = *(v6 + 16);
  v8[0] = *v6;
  v8[1] = v7;
  v9 = *(v6 + 32);
  sub_2663F03E0(v1, v2, v3, v4, v8, v5);
}

id sub_2663F5844(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a3 & 1;
    _os_log_impl(&dword_26629C000, v14, v15, "LocalAlbumPlaybackhandler#albumQuery, targetsLocalDevice: %{BOOL}d", v16, 8u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v17 = *(v4 + 96);
  return sub_266376F50(a1, a2, 1, a3 & 1, 0);
}

uint64_t sub_2663F5A34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_2663F5CD8(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_2663F5CD8(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

id sub_2663F6458(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v98 = a3;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v96 = v7;
  v97 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v91 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v91 - v19;
  v21 = sub_2664DEC48();
  v95 = *(v21 - 8);
  v22 = *(v95 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = &v91 - v26;
  if (*(a4 + 16) && (v28 = sub_2662A3E98(a1, a2), (v29 & 1) != 0))
  {
    v93 = a1;
    v94 = v21;
    v30 = v27;
    v31 = v95;
    v32 = *(v95 + 16);
    v32(v30, *(a4 + 56) + *(v95 + 72) * v28, v94);
    v32(v25, v30, v94);
    v33 = v31;
    v34 = v94;
    v35 = (*(v33 + 88))(v25, v94);
    if (v35 == *MEMORY[0x277D60170])
    {
      (*(v33 + 96))(v25, v34);
      v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(v33 + 8))(v30, v34);
      return v36;
    }

    v92 = v30;
    if (v35 == *MEMORY[0x277D60188])
    {
      (*(v33 + 96))(v25, v34);
      v46 = v34;
      v47 = v33;
      v48 = sub_2664876B0(*v25);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        (*(v47 + 8))(v92, v46);
        return v36;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v51 = v96;
      v52 = __swift_project_value_buffer(v96, qword_280F914F0);
      swift_beginAccess();
      v53 = v97;
      (*(v97 + 16))(v20, v52, v51);

      v54 = sub_2664DFE18();
      v55 = sub_2664E06D8();

      v56 = os_log_type_enabled(v54, v55);
      v57 = v94;
      v58 = v92;
      if (v56)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v99 = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_2662A320C(v93, a2, &v99);
        _os_log_impl(&dword_26629C000, v54, v55, "SelfEmitter: Couldn't convert signal value for %{public}s; empty dependent values list", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x266784AD0](v60, -1, -1);
        MEMORY[0x266784AD0](v59, -1, -1);
      }

      (*(v53 + 8))(v20, v51);
      (*(v95 + 8))(v58, v57);
    }

    else
    {
      v61 = v93;
      if (v35 == *MEMORY[0x277D60180])
      {
        (*(v33 + 96))(v25, v34);
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (*(v33 + 8))(v92, v34);
        return v36;
      }

      if (v35 != *MEMORY[0x277D60178])
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v80 = v96;
        v81 = __swift_project_value_buffer(v96, qword_280F914F0);
        swift_beginAccess();
        v82 = v97;
        (*(v97 + 16))(v15, v81, v80);

        v83 = sub_2664DFE18();
        v84 = sub_2664E06D8();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v91 = v83;
          v86 = v85;
          v87 = swift_slowAlloc();
          v99 = v87;
          *v86 = 136446210;
          *(v86 + 4) = sub_2662A320C(v61, a2, &v99);
          v88 = v84;
          v89 = v91;
          _os_log_impl(&dword_26629C000, v91, v88, "SelfEmitter: Couldn't convert signal value for %{public}s; unknown SignalValue type", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x266784AD0](v87, -1, -1);
          MEMORY[0x266784AD0](v86, -1, -1);
        }

        else
        {
        }

        (*(v82 + 8))(v15, v80);
        v90 = *(v95 + 8);
        v90(v92, v34);
        v36 = v98;
        v90(v25, v34);
        return v36;
      }

      (*(v33 + 96))(v25, v34);
      sub_26648772C(*v25);
      v62 = v34;
      v63 = v33;
      v65 = v64;
      v67 = v66;

      if ((v67 & 1) == 0)
      {
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (*(v63 + 8))(v92, v62);
        return v36;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v68 = v96;
      v69 = __swift_project_value_buffer(v96, qword_280F914F0);
      swift_beginAccess();
      v70 = v97;
      (*(v97 + 16))(v18, v69, v68);

      v71 = sub_2664DFE18();
      v72 = sub_2664E06D8();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v94;
      if (v73)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = v61;
        v78 = v70;
        v79 = v76;
        v99 = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_2662A320C(v77, a2, &v99);
        _os_log_impl(&dword_26629C000, v71, v72, "SelfEmitter: Couldn't convert signal value for %{public}s; empty dependent values list", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x266784AD0](v79, -1, -1);
        MEMORY[0x266784AD0](v75, -1, -1);

        (*(v78 + 8))(v18, v68);
      }

      else
      {

        (*(v70 + 8))(v18, v68);
      }

      (*(v95 + 8))(v92, v74);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = v96;
    v39 = __swift_project_value_buffer(v96, qword_280F914F0);
    swift_beginAccess();
    v40 = v97;
    (*(v97 + 16))(v12, v39, v38);

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_2662A320C(a1, a2, &v99);
      _os_log_impl(&dword_26629C000, v41, v42, "SelfEmitter: Couldn't find signal value for %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (*(v40 + 8))(v12, v38);
  }

  v45 = v98;

  return v45;
}

id sub_2663F6EFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v125 = a5;
  v121 = a3;
  v122 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v126 = v9;
  v127 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v120 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v116 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v116 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v119 = &v116 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v116 - v25;
  v124 = sub_2664DEC48();
  v27 = *(v124 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v124);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v116 - v32;
  v34 = *(a6 + 16);
  v123 = a1;
  if (!v34 || (v35 = sub_2662A3E98(a1, a2), (v36 & 1) == 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v126;
    v56 = __swift_project_value_buffer(v126, qword_280F914F0);
    swift_beginAccess();
    v57 = v127;
    (*(v127 + 16))(v14, v56, v55);

    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v128 = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_2662A320C(v123, a2, &v128);
      _os_log_impl(&dword_26629C000, v58, v59, "SelfEmitter: Couldn't find signal value for %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    (*(v57 + 8))(v14, v55);
    goto LABEL_16;
  }

  v117 = a2;
  v37 = *(a6 + 56) + v27[9] * v35;
  v38 = v27;
  v39 = v27[2];
  v40 = v124;
  v39(v33, v37, v124);
  v118 = v33;
  v39(v31, v33, v40);
  v41 = v38;
  v42 = (v38[11])(v31, v40);
  if (v42 == *MEMORY[0x277D60170])
  {
    (v38[12])(v31, v40);
    v43 = *v31;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = v126;
    v45 = __swift_project_value_buffer(v126, qword_280F914F0);
    swift_beginAccess();
    v46 = v127;
    (*(v127 + 16))(v22, v45, v44);
    v47 = v117;

    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v128 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_2662A320C(v123, v47, &v128);
      _os_log_impl(&dword_26629C000, v48, v49, "SelfEmitter: Expected dependent value, but have an independent signal result for signal %{public}s.  Returning that", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v46 + 8))(v22, v44);
    v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_9:
    v53 = v52;
    (v41[1])(v118, v124);
    return v53;
  }

  if (v42 != *MEMORY[0x277D60188])
  {
    v70 = v118;
    v71 = v123;
    if (v42 == *MEMORY[0x277D60180])
    {
      (v41[12])(v31, v40);
      v72 = *v31;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v73 = v126;
      v74 = __swift_project_value_buffer(v126, qword_280F914F0);
      swift_beginAccess();
      v75 = v127;
      (*(v127 + 16))(v19, v74, v73);
      v76 = v117;

      v77 = sub_2664DFE18();
      v78 = sub_2664E06D8();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v128 = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_2662A320C(v123, v76, &v128);
        _os_log_impl(&dword_26629C000, v77, v78, "SelfEmitter: Expected dependent value, but have an independent signal result for signal %{public}s.  Returning that", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266784AD0](v80, -1, -1);
        MEMORY[0x266784AD0](v79, -1, -1);
      }

      (*(v75 + 8))(v19, v73);
      v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      goto LABEL_9;
    }

    v90 = v122;
    if (v42 != *MEMORY[0x277D60178])
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v95 = v126;
      v96 = __swift_project_value_buffer(v126, qword_280F914F0);
      swift_beginAccess();
      v97 = v127;
      v98 = v120;
      (*(v127 + 16))(v120, v96, v95);
      v99 = v117;

      v100 = sub_2664DFE18();
      v101 = sub_2664E06D8();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v128 = v103;
        *v102 = 136446210;
        *(v102 + 4) = sub_2662A320C(v123, v99, &v128);
        _os_log_impl(&dword_26629C000, v100, v101, "SelfEmitter: Couldn't convert signal value for %{public}s; unknown SignalValue type", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        MEMORY[0x266784AD0](v103, -1, -1);
        MEMORY[0x266784AD0](v102, -1, -1);

        (*(v97 + 8))(v120, v95);
      }

      else
      {

        (*(v97 + 8))(v98, v95);
      }

      v114 = v41[1];
      v115 = v124;
      v114(v70, v124);
      v53 = v125;
      v114(v31, v115);
      return v53;
    }

    (v41[12])(v31, v40);
    v91 = *v31;
    if (*(*v31 + 16))
    {
      v92 = sub_2662A3E98(v121, v90);
      if (v93)
      {
        v94 = *(*(*&v91 + 56) + 8 * v92);

        v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (v41[1])(v70, v40);
        return v53;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v104 = v126;
    v105 = __swift_project_value_buffer(v126, qword_280F914F0);
    swift_beginAccess();
    v106 = v127;
    v107 = v119;
    (*(v127 + 16))(v119, v105, v104);

    v108 = v117;

    v109 = sub_2664DFE18();
    v110 = sub_2664E06D8();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = v90;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v128 = v113;
      *v112 = 136446466;
      *(v112 + 4) = sub_2662A320C(v121, v111, &v128);
      *(v112 + 12) = 2080;
      *(v112 + 14) = sub_2662A320C(v71, v108, &v128);
      _os_log_impl(&dword_26629C000, v109, v110, "SelfEmitter: Didn't find dependent value for bundle %{public}s in signal %s", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v113, -1, -1);
      MEMORY[0x266784AD0](v112, -1, -1);

      (*(v106 + 8))(v119, v104);
    }

    else
    {

      (*(v106 + 8))(v107, v104);
    }

    goto LABEL_49;
  }

  (v38[12])(v31, v40);
  v63 = *v31;
  v64 = v118;
  v65 = v122;
  if (*(*v31 + 16))
  {
    v66 = sub_2662A3E98(v121, v122);
    if (v67)
    {
      v68 = v64;
      v69 = *(*(*&v63 + 56) + 8 * v66);

      v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (v41[1])(v68, v40);
      return v53;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v81 = v126;
  v82 = __swift_project_value_buffer(v126, qword_280F914F0);
  swift_beginAccess();
  v83 = v127;
  (*(v127 + 16))(v26, v82, v81);

  v84 = v117;

  v85 = sub_2664DFE18();
  v86 = sub_2664E06D8();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = v65;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v128 = v89;
    *v88 = 136446466;
    *(v88 + 4) = sub_2662A320C(v121, v87, &v128);
    *(v88 + 12) = 2080;
    *(v88 + 14) = sub_2662A320C(v123, v84, &v128);
    _os_log_impl(&dword_26629C000, v85, v86, "SelfEmitter: Didn't find dependent value for bundle %{public}s in signal %s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v89, -1, -1);
    MEMORY[0x266784AD0](v88, -1, -1);

    (*(v83 + 8))(v26, v81);
LABEL_49:
    (v41[1])(v118, v124);
    goto LABEL_16;
  }

  (*(v83 + 8))(v26, v81);
  (v41[1])(v64, v124);
LABEL_16:
  v62 = v125;

  return v62;
}

void sub_2663F7D44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v18 = sub_2663F6EFC(a1, a2, a3, a4, v17, a6);

  [v18 doubleValue];
  v20 = v19;

  if (v20 != -1.0)
  {
    v28 = v20 * 1000.0;
    if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -2147483650.0)
    {
      if (v28 < 2147483650.0)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v21, v12);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06D8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v29 = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v30 = a5;
    v27 = v26;
    v31 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_2662A320C(a3, a4, &v31);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_2662A320C(v29, a2, &v31);
    _os_log_impl(&dword_26629C000, v22, v23, "SelfEmitter#doubleScaledToInt: Failed to find the doubleValue for bundle %{public}s in signal %{public}s; returning default", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
}

uint64_t sub_2663F8080(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a4;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DEC48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  if (!*(a5 + 16) || (v21 = sub_2662A3E98(a1, a2), (v22 & 1) == 0))
  {
    v30 = a1;
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
      v39 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_2662A320C(v30, a2, &v39);
      _os_log_impl(&dword_26629C000, v32, v33, "SelfEmitter: Couldn't find signal value for %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v23 = *(a5 + 56) + *(v14 + 72) * v21;
  v24 = *(v14 + 16);
  v24(v20, v23, v13);
  v24(v18, v20, v13);
  if ((*(v14 + 88))(v18, v13) != *MEMORY[0x277D60188])
  {
    v36 = *(v14 + 8);
    v36(v20, v13);
    v36(v18, v13);
    return 0;
  }

  (*(v14 + 96))(v18, v13);
  v25 = *v18;
  if (!*(*v18 + 16) || (v26 = sub_2662A3E98(v37, v38), (v27 & 1) == 0))
  {

    (*(v14 + 8))(v20, v13);
    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  (*(v14 + 8))(v20, v13);

  if (v28 == 2)
  {
    return 2;
  }

  else
  {
    return v28 == 1;
  }
}

uint64_t sub_2663F8490(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2663F84E4(uint64_t a1)
{
  sub_2663F9624();
  v2 = [swift_getObjCClassFromMetadata() identityKind];
  v3 = objc_allocWithZone(MEMORY[0x277CD5DA0]);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2663F9670;
  *(v4 + 24) = a1;
  v8[4] = sub_26631D1BC;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26631C950;
  v8[3] = &block_descriptor_33;
  v5 = _Block_copy(v8);

  v6 = [v3 initWithModelKind:v2 block:v5];

  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2663F8650(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2663F9678;
  *(v4 + 24) = a2;
  v7[4] = sub_2663F968C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2663F8490;
  v7[3] = &block_descriptor_21_2;
  v5 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v5);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_2663F8790(void *a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 56);
  v10 = *(a2 + 64);
  v12 = HIBYTE(v10) & 0xF;
  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_63;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    v38 = sub_26640687C(v11, v10, 10);
    v40 = v39;

    if (v40)
    {
      goto LABEL_63;
    }

    v16 = v38;
    return [a1 setSubscriptionAdamID_];
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v41 = v11;
    v42 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v26 = &v41 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v11 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = &v41;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = &v41 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    result = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2664E0B78();
  }

  v15 = *result;
  if (v15 == 43)
  {
    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v23;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (v15 == 45)
  {
    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v13)
  {
    v16 = 0;
    if (result)
    {
      while (1)
      {
        v29 = *result - 48;
        if (v29 > 9)
        {
          goto LABEL_61;
        }

        v30 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          goto LABEL_61;
        }

        v16 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v13)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v16 = 0;
  LOBYTE(v12) = 1;
LABEL_62:
  v43 = v12;
  if ((v12 & 1) == 0)
  {
    return [a1 setSubscriptionAdamID_];
  }

LABEL_63:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v9, v34, v4);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_26629C000, v35, v36, "Adam ID is not a parsable Int64", v37, 2u);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2663F8C1C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_2663F8EB4(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_2663F8EB4(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

unint64_t sub_2663F9624()
{
  result = qword_280073650;
  if (!qword_280073650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073650);
  }

  return result;
}

uint64_t sub_2663F9690(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2663F96EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2663F9758()
{
  v0 = sub_2662C3A68(&unk_2877E13E0);
  result = swift_arrayDestroy();
  qword_280F91CF8 = v0;
  return result;
}

uint64_t sub_2663F97B8()
{
  if (qword_280F90A10 != -1)
  {
    swift_once();
  }
}

unint64_t sub_2663F9814()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_2663F9890();
}

unint64_t sub_2663F9850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return sub_2663F9D4C(a3);
}

unint64_t sub_2663F9890()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA070;
  *(inited + 32) = 0x707954616964656DLL;
  *(inited + 40) = 0xE900000000000065;
  v3 = *v0;
  if (*v0)
  {
    v4 = [*v0 mediaType];
  }

  else
  {
    v4 = 0;
  }

  v32 = v4;
  v5 = sub_2664E0D48();
  MEMORY[0x2667833B0](v5);

  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = 1701869940;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000002664F0F50;
  v7 = MEMORY[0x277D839B0];
  if (v3)
  {
    v8 = [v3 albumName];
    v9 = v8;
    if (v8)
    {
    }

    *(inited + 96) = v9 != 0;
    *(inited + 120) = v7;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000002664F0F70;
    v10 = [v3 artistName];
    v11 = v10;
    if (v10)
    {
    }

    *(inited + 144) = v11 != 0;
    *(inited + 168) = v7;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000002664F0F90;
    v12 = [v3 genreNames];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2664E04A8();

      v15 = *(v14 + 16);

      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }

    *(inited + 192) = v16;
    *(inited + 216) = v7;
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x80000002664F0FB0;
    v18 = [v3 mediaName];
    v19 = v18;
    if (v18)
    {
    }

    *(inited + 240) = v19 != 0;
    *(inited + 264) = v7;
    *(inited + 272) = 0xD000000000000010;
    *(inited + 280) = 0x80000002664F0FD0;
    v20 = [v3 moodNames];
    if (v20)
    {
      v21 = v20;
      v22 = sub_2664E04A8();

      v23 = *(v22 + 16);

      v17 = v23 != 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000002664F0F70;
    *(inited + 168) = v7;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000002664F0F90;
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x80000002664F0FB0;
    *(inited + 272) = 0xD000000000000010;
    *(inited + 280) = 0x80000002664F0FD0;
    *(inited + 96) = 0;
    *(inited + 144) = 0;
    *(inited + 192) = 0;
    *(inited + 216) = v7;
    *(inited + 240) = 0;
    *(inited + 264) = v7;
  }

  *(inited + 288) = v17;
  *(inited + 312) = v7;
  *(inited + 320) = 0xD000000000000017;
  *(inited + 328) = 0x80000002664F0FF0;
  v24 = [v3 releaseDate];
  v25 = v24;
  if (v24)
  {
  }

  *(inited + 336) = v25 != 0;
  *(inited + 360) = v7;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x80000002664F1010;
  v26 = v1[1];
  *(v1 + 16);
  v27 = sub_2664E0D48();
  MEMORY[0x2667833B0](v27);

  *(inited + 384) = 1701869940;
  *(inited + 392) = 0xE400000000000000;
  v28 = MEMORY[0x277D837D0];
  *(inited + 408) = MEMORY[0x277D837D0];
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x80000002664F1030;
  v33 = v1[3];
  v29 = sub_2664E0D48();
  MEMORY[0x2667833B0](v29);

  *(inited + 456) = v28;
  *(inited + 432) = 1701869940;
  *(inited + 440) = 0xE400000000000000;
  v30 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v30;
}

unint64_t sub_2663F9D4C(uint64_t a1)
{
  v2 = v1;
  result = sub_2663F9890();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v5 = result;
  result = sub_2662A3E98(0xD000000000000010, 0x80000002664F0FB0);
  if ((v6 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * result, v14);
  sub_266318804(v14, v15);
  result = swift_dynamicCast();
  v7 = 0.0;
  if (v13)
  {
    v7 = 1.0;
  }

  *(a1 + 192) = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_38;
  }

  result = sub_2662A3E98(0xD000000000000012, 0x80000002664F0F70);
  if (v8)
  {
    sub_2662A01E8(*(v5 + 56) + 32 * result, v14);

    sub_266318804(v14, v15);
    swift_dynamicCast();
    v9 = 0.0;
    v10 = 1.0;
    if (!v13)
    {
      v10 = 0.0;
    }

    *(a1 + 200) = v10;
    result = *v2;
    if (*v2 && (result = [result mediaType]) != 0)
    {
      *(a1 + 160) = 0;
      v9 = 1.0;
      if (result != 1)
      {
        *(a1 + 256) = 0;
        v11 = 1.0;
        if (result != 2)
        {
          *(a1 + 168) = 0;
          if (result != 3)
          {
            *(a1 + 24) = 0;
            if (result != 4)
            {
              *(a1 + 240) = 0;
              if (result != 5)
              {
                *(a1 + 216) = 0;
                if (result != 6)
                {
                  *(a1 + 248) = 0;
                  if (result != 10)
                  {
                    *(a1 + 80) = 0;
                    if (result != 14)
                    {
                      *(a1 + 64) = 0;
                      if (result != 16)
                      {
                        *(a1 + 232) = 0;
                        if (result != 17)
                        {
                          *(a1 + 88) = 0;
                          v12 = 0.0;
                          if (result == 18)
                          {
                            v12 = 1.0;
                          }

                          goto LABEL_35;
                        }

LABEL_34:
                        *(a1 + 88) = v11;
                        v12 = 0.0;
LABEL_35:
                        *(a1 + 72) = v12;
                        return result;
                      }

LABEL_33:
                      *(a1 + 232) = v11;
                      v11 = 0.0;
                      goto LABEL_34;
                    }

LABEL_32:
                    *(a1 + 64) = v11;
                    v11 = 0.0;
                    goto LABEL_33;
                  }

LABEL_31:
                  *(a1 + 80) = v11;
                  v11 = 0.0;
                  goto LABEL_32;
                }

LABEL_30:
                *(a1 + 248) = v11;
                v11 = 0.0;
                goto LABEL_31;
              }

LABEL_29:
              *(a1 + 216) = v11;
              v11 = 0.0;
              goto LABEL_30;
            }

LABEL_28:
            *(a1 + 240) = v11;
            v11 = 0.0;
            goto LABEL_29;
          }

LABEL_27:
          *(a1 + 24) = v11;
          v11 = 0.0;
          goto LABEL_28;
        }

LABEL_26:
        *(a1 + 168) = v11;
        v11 = 0.0;
        goto LABEL_27;
      }
    }

    else
    {
      *(a1 + 160) = 0x3FF0000000000000;
    }

    *(a1 + 256) = v9;
    v11 = 0.0;
    goto LABEL_26;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2663F9FB8(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v44 = a2;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v43 = sub_2664DE438();
  v41 = *(v43 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x28223BE20](v43);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v39 - v17;
  sub_2664DE428();
  v48[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073658, &qword_2664EB968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073660, &unk_2664EB970);
  v18 = sub_2664E0318();
  v20 = v19;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v21 = qword_280F91D48;
  sub_2664DFDE8();
  v40 = v6;
  v22 = *(v6 + 16);
  v42 = v10;
  v45 = v5;
  v22(v10, v12, v5);
  v46 = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2664E36F0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2662C4094();
  *(v23 + 32) = v18;
  *(v23 + 40) = v20;
  sub_2664DFDC8();

  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v24 = sub_26632958C(1013);
  v25 = [a1 mediaSearch];
  v26 = [a1 parsecCategory];
  v27 = [a1 playbackQueueLocation];
  sub_2664DE428();
  sub_2664DE388();
  v29 = v28;
  v30 = *(v41 + 8);
  v31 = v16;
  v32 = v43;
  v30(v31, v43);
  if (v24)
  {

    sub_26636B8D0();
  }

  v48[3] = &type metadata for IntentMediaSignal;
  v48[4] = &off_2877EF8D8;
  v33 = swift_allocObject();
  v48[0] = v33;
  *(v33 + 16) = v25;
  *(v33 + 24) = v26;
  *(v33 + 32) = 0;
  *(v33 + 40) = v27;
  *(v33 + 48) = v29;
  sub_2664E0838();
  v34 = v42;
  sub_2664DFDD8();
  v44(v48);
  v35 = *(v40 + 8);
  v36 = v34;
  v37 = v45;
  v35(v36, v45);

  v35(v12, v37);
  v30(v47, v32);
  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

id SAStartRequest.init(utterance:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_2664E02A8();

  [v0 setUtterance_];

  return v0;
}

id SASendCommands.init(commands:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073670, &unk_2664EB998);
  v1 = sub_2664E0488();

  [v0 setCommands_];

  return v0;
}

id static SASendCommands.startRequest(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2662A320C(a1, a2, &v22);
    _os_log_impl(&dword_26629C000, v10, v11, "SASendCommands#startRequest creating start request command with machine utterance: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = [objc_allocWithZone(MEMORY[0x277D47948]) init];
  v15 = sub_2664E02A8();
  [v14 setUtterance_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2664E34F0;
  *(v16 + 32) = v14;
  v17 = objc_allocWithZone(MEMORY[0x277D477C0]);
  v18 = v14;
  v19 = [v17 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073670, &unk_2664EB998);
  v20 = sub_2664E0488();

  [v19 setCommands_];

  return v19;
}

id SAUIConfirmationView.init(denyOption:confirmOption:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [a2 commands];
  [v4 setConfirmCommands_];

  v6 = [a1 commands];
  [v4 setDenyCommands_];

  v7 = [a2 label];
  [v4 setConfirmText_];

  v8 = [a1 label];
  [v4 setDenyText_];

  [v4 setCancelTrigger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2664EB980;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_2663FADE4();
  v10 = a1;
  v11 = a2;
  v12 = sub_2664E0488();

  [v4 setAllConfirmationOptions_];

  return v4;
}

id SAUIConfirmationOption.init(label:type:iconType:commands:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_2664E02A8();

  [v0 setLabel_];

  v2 = sub_2664E02A8();

  [v0 setType_];

  v3 = sub_2664E02A8();

  [v0 setIconType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073688, qword_2664EB9A8);
  v4 = sub_2664E0488();

  [v0 setCommands_];

  return v0;
}

id SAPerson.init(contact:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 givenName];
  if (!v3)
  {
    sub_2664E02C8();
    v3 = sub_2664E02A8();
  }

  [v2 setFirstName_];

  v4 = [a1 phoneticGivenName];
  if (!v4)
  {
    sub_2664E02C8();
    v4 = sub_2664E02A8();
  }

  [v2 setFirstNamePhonetic_];

  v5 = [a1 middleName];
  if (!v5)
  {
    sub_2664E02C8();
    v5 = sub_2664E02A8();
  }

  [v2 setMiddleName_];

  v6 = [a1 familyName];
  if (!v6)
  {
    sub_2664E02C8();
    v6 = sub_2664E02A8();
  }

  [v2 setLastName_];

  v7 = [a1 phoneticFamilyName];
  if (!v7)
  {
    sub_2664E02C8();
    v7 = sub_2664E02A8();
  }

  [v2 setLastNamePhonetic_];

  v8 = [a1 nickname];
  if (!v8)
  {
    sub_2664E02C8();
    v8 = sub_2664E02A8();
  }

  [v2 setNickName_];

  return v2;
}

unint64_t sub_2663FADE4()
{
  result = qword_280073680;
  if (!qword_280073680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073680);
  }

  return result;
}

uint64_t HistoryStats.addInstance(date:)()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE3C8();
  if (v5 <= 0.0)
  {

    return sub_2664DF368();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_2664DFE18();
    v8 = sub_2664E06D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26629C000, v7, v8, "HistoryStats cannot add instance from the future", v9, 2u);
      MEMORY[0x266784AD0](v9, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t HistoryStats.total1Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = v1[13];
  v8(&v20 - v6, *MEMORY[0x277D5FF88], v0);
  v9 = sub_2664DF3A8();
  v10 = v1[1];
  v10(v7, v0);
  v8(v5, *MEMORY[0x277D5FF60], v0);
  v11 = sub_2664DF3A8();
  result = (v10)(v5, v0);
  v13 = __OFADD__(v9, v11);
  v14 = v9 + v11;
  if (v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8(v7, *MEMORY[0x277D5FF80], v0);
  v15 = sub_2664DF3A8();
  result = (v10)(v7, v0);
  v13 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8(v7, *MEMORY[0x277D5FF50], v0);
  v17 = sub_2664DF3A8();
  result = (v10)(v7, v0);
  v13 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8(v7, *MEMORY[0x277D5FF70], v0);
  v19 = sub_2664DF3A8();
  v10(v7, v0);
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t HistoryStats.total7Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = HistoryStats.total1Day.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277D5FF58], v0);
  v6 = sub_2664DF3A8();
  (*(v1 + 8))(v4, v0);
  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoryStats.total28Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = HistoryStats.total1Day.getter();
  v6 = v1[13];
  v6(v4, *MEMORY[0x277D5FF58], v0);
  v7 = sub_2664DF3A8();
  v8 = v1[1];
  result = v8(v4, v0);
  v10 = __OFADD__(v5, v7);
  v11 = v5 + v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6(v4, *MEMORY[0x277D5FF68], v0);
  v12 = sub_2664DF3A8();
  v8(v4, v0);
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2663FB4F0()
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
  v36 = &type metadata for PlaybackStarter;
  v37 = &off_2877EE098;
  v10 = swift_allocObject();
  *&v35 = v10;
  sub_2663DE730(v10 + 2);
  v11 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v33 = v2;
  v34 = &protocol witness table for MultiUserConnectionProvider;
  *&v32 = v1;
  v12 = swift_allocObject();

  v13 = sub_266360778(v11, &v32, v12);

  v10[10] = v3;
  v10[11] = &protocol witness table for AccountProvider;
  v10[7] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v33 = v2;
  v34 = &protocol witness table for MultiUserConnectionProvider;
  *&v32 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v32, v15);

  v33 = v3;
  v34 = &protocol witness table for AccountProvider;
  *&v32 = v16;
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
  sub_2663DE730(v20 + 7);
  return (*(v24 + 136))(&v38, &v35, &v32, &v29);
}

uint64_t sub_2663FB9C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v54 = a4;
  v56 = a3;
  v50 = sub_2664DFE38();
  v52 = *(v50 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a2 + 16);
  v62 = *a2;
  v63 = v10;
  *v64 = *(a2 + 32);
  *&v64[15] = *(a2 + 47);
  v57 = a1;
  v11 = *(a1 + 49);
  do
  {
    v13 = v9;
    if (v9 == 5)
    {
      break;
    }

    v14 = byte_2877E4B00[v9 + 32];
    if (byte_2877E4B00[v13 + 32] > 3u)
    {
      if (v14 > 5)
      {
        if (v14 == 6)
        {
          v19 = 0x62696C656C6F6877;
          v20 = 0xEC00000079726172;
          if (v11 > 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v20 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
          if (v11 > 3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v14 == 4)
        {
          v19 = 1684630645;
        }

        else
        {
          v19 = 0x6867696C746F7073;
        }

        if (v14 == 4)
        {
          v20 = 0xE400000000000000;
        }

        else
        {
          v20 = 0xE900000000000074;
        }

        if (v11 > 3)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v15 = 0x72657669746C756DLL;
      if (v14 != 2)
      {
        v15 = 0x65726F7473;
      }

      v16 = 0xEA00000000006573;
      if (v14 != 2)
      {
        v16 = 0xE500000000000000;
      }

      v17 = 0x636E797369726973;
      if (!v14)
      {
        v17 = 0x656369766564;
      }

      v18 = 0xE600000000000000;
      if (v14)
      {
        v18 = 0xE800000000000000;
      }

      if (v14 <= 1)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (v14 <= 1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v11 > 3)
      {
LABEL_32:
        v21 = 0x62696C656C6F6877;
        if (v11 != 6)
        {
          v21 = 0x6E776F6E6B6E75;
        }

        v22 = 0xEC00000079726172;
        if (v11 != 6)
        {
          v22 = 0xE700000000000000;
        }

        v23 = 0x6867696C746F7073;
        if (v11 == 4)
        {
          v23 = 1684630645;
        }

        v24 = 0xE900000000000074;
        if (v11 == 4)
        {
          v24 = 0xE400000000000000;
        }

        if (v11 <= 5)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (v11 <= 5)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        if (v19 != v25)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      }
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v27 = 0x72657669746C756DLL;
      }

      else
      {
        v27 = 0x65726F7473;
      }

      if (v11 == 2)
      {
        v26 = 0xEA00000000006573;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      if (v19 != v27)
      {
        goto LABEL_2;
      }
    }

    else if (v11)
    {
      v26 = 0xE800000000000000;
      if (v19 != 0x636E797369726973)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v26 = 0xE600000000000000;
      if (v19 != 0x656369766564)
      {
        goto LABEL_2;
      }
    }

LABEL_62:
    if (v20 == v26)
    {

      break;
    }

LABEL_2:
    v12 = sub_2664E0D88();

    v9 = v13 + 1;
  }

  while ((v12 & 1) == 0);
  v28 = v57;
  if (sub_2664C8564(v57))
  {
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    *v61 = *(a2 + 32);
    *&v61[15] = *(a2 + 47);
    v30 = swift_allocObject();
    v31 = *(a2 + 16);
    *(v30 + 16) = *a2;
    *(v30 + 32) = v31;
    *(v30 + 48) = *(a2 + 32);
    *(v30 + 63) = *(a2 + 47);
    *(v30 + 72) = v54;
    v32 = v53;
    *(v30 + 80) = v55;
    *(v30 + 88) = v32;
    v33 = v56;
    *(v30 + 96) = v56;
    *(v30 + 104) = v28;
    *(v30 + 112) = v13 != 5;

    sub_2662D2A64(&v62, v58);
    v34 = v33;

    sub_2664C604C((v32 + 96), v28, &v59, 2, sub_2664016C8, v30);
  }

  else
  {
    v35 = v53;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v50;
    v37 = __swift_project_value_buffer(v50, qword_280F914F0);
    swift_beginAccess();
    (*(v52 + 16))(v51, v37, v36);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "MPCAssistantQueueHandler#warm routing gathered, fetching queue from subclass", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v41 = v13 != 5;

    (*(v52 + 8))(v51, v36);
    v59 = v62;
    v60 = v63;
    *v61 = *v64;
    *&v61[15] = *&v64[15];
    v42 = swift_allocObject();
    *(v42 + 16) = v54;
    *(v42 + 24) = v55;
    v43 = v63;
    *(v42 + 32) = v62;
    *(v42 + 48) = v43;
    *(v42 + 64) = *v64;
    *(v42 + 79) = *&v64[15];
    v44 = v56;
    *(v42 + 88) = v56;
    *(v42 + 96) = v35;
    *(v42 + 104) = v28;
    *(v42 + 112) = 0;
    *(v42 + 116) = v41;
    v45 = *(*v35 + 160);

    sub_2662D2A64(&v62, v58);
    v46 = v44;

    v45(v47, &v59, 0, sub_266401650, v42);
  }
}

void *sub_2663FC110(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a2[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v13;
  v8[5] = type metadata accessor for MediaPlaybackProvider();
  v8[6] = &off_2877F3740;
  v8[2] = v27;
  v8[10] = &type metadata for PlaybackStarter;
  v8[11] = &off_2877EE098;
  v28 = swift_allocObject();
  v8[7] = v28;
  v29 = v19[3];
  v28[3] = v19[2];
  v28[4] = v29;
  v28[5] = v19[4];
  v30 = v19[1];
  v28[1] = *v19;
  v28[2] = v30;
  v8[20] = &type metadata for PlaybackQueueLocationProvider;
  v8[21] = &off_2877E8100;
  v31 = swift_allocObject();
  v8[17] = v31;
  v32 = v25[3];
  v31[3] = v25[2];
  v31[4] = v32;
  v31[5] = v25[4];
  v33 = v25[1];
  v31[1] = *v25;
  v31[2] = v33;
  sub_2662A8618(a3, (v8 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

void sub_2663FC40C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v146 = a6;
  v148 = a4;
  v149 = a3;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v131[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](&v131[-v23]);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v131[-v26];
  v28 = MEMORY[0x28223BE20](v25);
  v35 = &v131[-v34];
  v36 = *(a1 + 16);
  if (!v36)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v35, v48, v13);
    v49 = v14;
    v50 = sub_2664DFE18();
    v51 = sub_2664E06B8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&aBlock = v53;
      *v52 = 134218498;
      *(v52 + 4) = 10;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 38;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2662A320C(0x5164696C61766E49, 0xEC00000065756575, &aBlock);
      _os_log_impl(&dword_26629C000, v50, v51, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v52, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (*(v49 + 8))(v35, v13);
    aBlock = xmmword_2664EBA10;
    *&v152 = 0xEC00000065756575;
    BYTE8(v152) = 1;
    v149(&aBlock);
    goto LABEL_13;
  }

  v139 = v30;
  LODWORD(v140) = a8;
  v136 = v29;
  v135 = v28;
  *&v137 = v33;
  v134 = v32;
  v133 = v31;
  v37 = v14;
  v142 = *(a1 + 24);
  v132 = *(a1 + 32);
  LODWORD(v138) = *(a1 + 36);
  v38 = qword_280F914E8;
  v143 = v36;
  if (v38 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v40 = v37;
  v41 = *(v37 + 16);
  v144 = v39;
  v145 = v37 + 16;
  v147 = v41;
  v41(v27, v39, v13);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26629C000, v42, v43, "MPCAssistantQueueHandler#warm using x scheme", v44, 2u);
    v45 = v44;
    v40 = v37;
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v46 = *(v40 + 8);
  v46(v27, v13);
  v47 = *(a2 + 48);
  v141 = v40 + 8;
  if (v47 <= 1 && !v47)
  {
    goto LABEL_17;
  }

  v54 = sub_2664E0D88();

  if (v54)
  {
    goto LABEL_19;
  }

  if (v47 == 3)
  {
LABEL_17:

    goto LABEL_19;
  }

  v55 = sub_2664E0D88();

  if (v55)
  {
LABEL_19:
    v139 = v13;
    v56 = __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v57 = *(a2 + 50);
    *&v58 = *(a2 + 8);
    v138 = v58;
    v59 = *(a2 + 16);
    v60 = *(a7 + 104);
    *&v58 = *(a7 + 96);
    v137 = v58;
    v156[3] = &type metadata for PlaybackAttributes;
    v156[4] = &off_2877E7D78;
    v61 = swift_allocObject();
    v156[0] = v61;
    v62 = *(a2 + 16);
    *(v61 + 16) = *a2;
    *(v61 + 32) = v62;
    *(v61 + 48) = *(a2 + 32);
    *(v61 + 63) = *(a2 + 47);
    sub_26637C7BC(v56, &aBlock);
    sub_2662A5550(v156, v150);
    v63 = swift_allocObject();
    v64 = v154;
    *(v63 + 48) = v153;
    *(v63 + 64) = v64;
    v65 = v152;
    *(v63 + 16) = aBlock;
    *(v63 + 32) = v65;
    *&v64 = v138;
    *(&v64 + 1) = v59;
    *&v66 = v137;
    *(&v66 + 1) = v60;
    v67 = v155;
    *(v63 + 96) = v64;
    *(v63 + 112) = v66;
    *(v63 + 80) = v67;
    v68 = v148;
    *(v63 + 128) = v149;
    *(v63 + 136) = v68;
    sub_2662A8618(v150, v63 + 144);
    v69 = v143;
    v70 = v146;
    *(v63 + 184) = v143;
    *(v63 + 192) = v70;
    *(v63 + 200) = v140 & 1;
    v71 = v142;
    if (v142)
    {
      v140 = v46;
      v72 = v69;
      sub_2662D2A64(a2, &aBlock);

      v73 = v70;
      v74 = v71;

      [v74 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v75 = v150[0];
        [v150[0] setSingleGroup_];
        v76 = v72;
        v77 = v74;

        v78 = v75;
        sub_2664ADBE8(v77, v73, v77, v76, sub_26637C818, v63, v78, v57);

LABEL_43:
        __swift_destroy_boxed_opaque_existential_1Tm(v156);
        return;
      }

      v143 = v72;
      v93 = v144;
      v94 = v139;
      v147(v135, v144, v139);
      v95 = sub_2664DFE18();
      v96 = sub_2664E06D8();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_26629C000, v95, v96, "Guaranteed cast to mutable RemoteControlDestination failed", v97, 2u);
        v98 = v97;
        v93 = v144;
        MEMORY[0x266784AD0](v98, -1, -1);
      }

      v99 = v140;
      v140(v135, v94);
      v146 = 0x80000002664F5AE0;
      v100 = v133;
      v147(v133, v93, v94);
      v101 = sub_2664DFE18();
      v102 = sub_2664E06B8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = v74;
        v105 = swift_slowAlloc();
        *&aBlock = v105;
        *v103 = 134218498;
        *(v103 + 4) = 15;
        *(v103 + 12) = 2048;
        *(v103 + 14) = 22;
        *(v103 + 22) = 2080;
        *(v103 + 24) = sub_2662A320C(0xD000000000000010, v146, &aBlock);
        _os_log_impl(&dword_26629C000, v101, v102, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v103, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        v106 = v105;
        v74 = v104;
        MEMORY[0x266784AD0](v106, -1, -1);
        MEMORY[0x266784AD0](v103, -1, -1);
      }

      v99(v100, v94);
      aBlock = xmmword_2664E8D90;
      *&v152 = v146;
      BYTE8(v152) = 1;
      v149(&aBlock);
    }

    else
    {
      v79 = v144;
      v147(v136, v144, v139);
      v143 = v69;
      sub_2662D2A64(a2, &aBlock);

      v80 = v70;

      v81 = sub_2664DFE18();
      v82 = sub_2664E06D8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_26629C000, v81, v82, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v83, 2u);
        v79 = v144;
        MEMORY[0x266784AD0](v83, -1, -1);
      }

      v84 = v139;
      v46(v136, v139);
      v85 = v134;
      v86 = v79;
      v87 = v84;
      v147(v134, v86, v84);
      v88 = sub_2664DFE18();
      v89 = v46;
      v90 = sub_2664E06B8();
      if (os_log_type_enabled(v88, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&aBlock = v92;
        *v91 = 134218498;
        *(v91 + 4) = 15;
        *(v91 + 12) = 2048;
        *(v91 + 14) = 13;
        *(v91 + 22) = 2080;
        *(v91 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &aBlock);
        _os_log_impl(&dword_26629C000, v88, v90, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v91, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x266784AD0](v92, -1, -1);
        MEMORY[0x266784AD0](v91, -1, -1);
      }

      v89(v85, v87);
      aBlock = xmmword_2664E8DA0;
      *&v152 = 0xE900000000000074;
      BYTE8(v152) = 1;
      v149(&aBlock);
    }

    sub_2662D2F30(aBlock, *(&aBlock + 1), v152, SBYTE8(v152));
    goto LABEL_43;
  }

  v107 = v144;
  v147(v20, v144, v13);
  v108 = sub_2664DFE18();
  v109 = sub_2664E06C8();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_26629C000, v108, v109, "MPCAssistantQueueHandler#warm setting upnext via continuation and x scheme", v110, 2u);
    MEMORY[0x266784AD0](v110, -1, -1);
  }

  v46(v20, v13);
  v111 = v142;
  v112 = v138;
  if (!v142)
  {
    v112 = 1;
  }

  v113 = v148;
  if (v112)
  {
    v147(v139, v107, v13);
    v114 = sub_2664DFE18();
    v115 = sub_2664E06C8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_26629C000, v114, v115, "MPCAssistantQueueHandler#warm setting upnext via continuation and x scheme", v116, 2u);
      MEMORY[0x266784AD0](v116, -1, -1);
    }

    v46(v139, v13);
    v117 = v137;
    v147(v137, v107, v13);
    v118 = sub_2664DFE18();
    v119 = v46;
    v120 = sub_2664E06B8();
    if (os_log_type_enabled(v118, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&aBlock = v122;
      *v121 = 134218498;
      *(v121 + 4) = 10;
      *(v121 + 12) = 2048;
      *(v121 + 14) = 7;
      *(v121 + 22) = 2080;
      *(v121 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F8000, &aBlock);
      _os_log_impl(&dword_26629C000, v118, v120, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v121, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x266784AD0](v122, -1, -1);
      MEMORY[0x266784AD0](v121, -1, -1);
    }

    v119(v117, v13);
    v123 = v143;
    aBlock = xmmword_2664EBA00;
    *&v152 = 0x80000002664F8000;
    BYTE8(v152) = 1;
    v149(&aBlock);

LABEL_13:
    sub_2662D2F30(aBlock, *(&aBlock + 1), v152, SBYTE8(v152));
    return;
  }

  v124 = objc_allocWithZone(MEMORY[0x277D27828]);
  v125 = v111;
  v126 = [v124 init];
  sub_266386350(MEMORY[0x277D84F90]);
  v127 = sub_2664E01A8();

  v128 = swift_allocObject();
  *(v128 + 16) = v149;
  *(v128 + 24) = v113;
  *&v153 = sub_2664016E0;
  *(&v153 + 1) = v128;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v152 = sub_2663A0C48;
  *(&v152 + 1) = &block_descriptor_34;
  v129 = _Block_copy(&aBlock);

  v130 = v143;
  [v126 insertPlaybackQueueWithResult:v143 atPosition:v132 onDestination:v125 withOptions:v127 completion:v129];
  _Block_release(v129);
}

uint64_t sub_2663FD67C(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v52 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = sub_2664DFD68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = [a1 commandResult];
    v20 = [a1 error];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  sub_2664DFD98();

  v21 = sub_2664DFD48();
  v23 = v22;

  v24 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  if (v24)
  {
    v48 = v15;
    v49 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v16;
    v25 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v26 = v6[2];
    v26(v12, v25, v5);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "MPCAssistantQueueHandler#warm error doing queue insertion using x scheme", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    v30 = v6[1];
    v30(v12, v5);
    v50 = sub_2664DFD48();
    v32 = v31;
    v33 = v51;
    v26(v51, v25, v5);

    v34 = sub_2664DFE18();
    v35 = sub_2664E06B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 134218498;
      *(v36 + 4) = 10;
      *(v36 + 12) = 2048;
      *(v36 + 14) = 7;
      *(v36 + 22) = 2080;
      v38 = sub_2662A320C(v50, v32, &v54);

      *(v36 + 24) = v38;
      _os_log_impl(&dword_26629C000, v34, v35, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v36, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    else
    {
    }

    v30(v33, v5);
    v46 = v48;
    v54 = 2567;
    v55 = v50;
    v56 = v32;
    v57 = 1;
    v52(&v54);
    sub_2662D2F30(v54, v55, v56, v57);
    return (*(v47 + 8))(v53, v46);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (v6[2])(v14, v39, v5);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v16;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MPCAssistantQueueHandler#warm performed queue insertion using x scheme", v43, 2u);
      v44 = v43;
      v16 = v42;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (v6[1])(v14, v5);
    v54 = 0;
    v55 = 0;
    v57 = 0;
    v56 = 0;
    v52(&v54);
    return (*(v16 + 8))(v53, v15);
  }
}

uint64_t sub_2663FDC60(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, int a8, char a9)
{
  LODWORD(v172) = a8;
  v166 = a7;
  v171 = a6;
  v162 = a5;
  v168 = a3;
  v164 = sub_2664DFE08();
  v173 = *(v164 - 8);
  v12 = *(v173 + 64);
  v13 = MEMORY[0x28223BE20](v164);
  v163 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v147 - v15;
  v175 = sub_2664DFE38();
  v17 = *(v175 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v175);
  v20 = MEMORY[0x28223BE20](&v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v159 = &v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v147 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v147 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v36 = &v147 - v35;
  v37 = *(a1 + 8);
  v174 = *a1;
  v38 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v39 = qword_280F914E8;
    v40 = *(a1 + 16);

    if (v39 != -1)
    {
      swift_once();
    }

    v41 = v175;
    v42 = __swift_project_value_buffer(v175, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v36, v42, v41);

    v43 = sub_2664DFE18();
    v44 = sub_2664E06E8();
    v45 = v174;
    sub_2664017EC(v174, v37, v38, 1);
    if (os_log_type_enabled(v43, v44))
    {
      v46 = v17;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v167 = v37;
      v49 = a2;
      v50 = v48;
      *&aBlock = v48;
      *v47 = 136315138;
      v183 = v45;
      v51 = PlaybackCode.rawValue.getter();
      v53 = sub_2662A320C(v51, v52, &aBlock);

      *(v47 + 4) = v53;
      v45 = v174;
      _os_log_impl(&dword_26629C000, v43, v44, "MPCAssistantQueueHandler#warm failed to build queue from subclass - code:%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      v54 = v50;
      a2 = v49;
      v37 = v167;
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      (*(v46 + 8))(v36, v175);
    }

    else
    {

      (*(v17 + 8))(v36, v175);
    }

    *&aBlock = v45;
    *(&aBlock + 1) = v37;
    *&v181 = v38;
    BYTE8(v181) = 1;
    a2(&aBlock);
    return sub_2662D2F30(aBlock, *(&aBlock + 1), v181, SBYTE8(v181));
  }

  v158 = v31;
  v156 = v34;
  v149 = v33;
  v167 = v37;
  v161 = v38;
  v150 = v32;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = v175;
  v56 = __swift_project_value_buffer(v175, qword_280F914F0);
  swift_beginAccess();
  v57 = *(v17 + 16);
  v160 = v56;
  v170 = v17 + 16;
  v169 = v57;
  v57(v30, v56, v55);
  v58 = sub_2664DFE18();
  v59 = sub_2664E06E8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = v17;
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_26629C000, v58, v59, "MPCAssistantQueueHandler#warm successfully built queue from subclass", v61, 2u);
    v62 = v61;
    v17 = v60;
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  v63 = *(v17 + 8);
  v165 = v17 + 8;
  v63(v30, v175);
  v64 = *(a4 + 48);
  if (v64 <= 1 && !*(a4 + 48))
  {
    goto LABEL_17;
  }

  v66 = sub_2664E0D88();

  if (v66)
  {
LABEL_19:
    v154 = a2;
    v68 = *__swift_project_boxed_opaque_existential_1(v171 + 2, v171[5]);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v69 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    v152 = v172 & 0x1010101;
    sub_26648D3D0(v152, v68, &aBlock);
    sub_2664E0838();
    v158 = v69;
    sub_2664DFDD8();
    v70 = *(v173 + 8);
    v173 += 8;
    v153 = v70;
    v70(v16, v164);
    v71 = aBlock;
    v72 = v160;
    v169(v27, v160, v175);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06E8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 67240192;
      *(v75 + 4) = v71 != 3;
      _os_log_impl(&dword_26629C000, v73, v74, "MPCAssistantQueueHandler#warm localPlaybackPermitted: %{BOOL,public}d", v75, 8u);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v63(v27, v175);
    v76 = v174;
    [v174 setShouldOverrideManuallyCuratedQueue_];
    v77 = v166;
    if (*(v166 + 88))
    {
      v78 = *(v166 + 80);
      v79 = sub_2664E02A8();
    }

    else
    {
      v79 = 0;
    }

    [v76 setSiriRecommendationID_];

    swift_beginAccess();
    if (*(v77 + 24))
    {
      v80 = *(v77 + 16);
      v81 = *(v77 + 24);

      v82 = sub_2664E02A8();
    }

    else
    {
      v82 = 0;
    }

    v157 = v172 & 1;
    [v76 setSiriAssetInfo_];

    v83 = sub_2664E01A8();
    [v76 setSiriWHAMetricsInfo_];

    v176 = v76;
    sub_2664016F8(v76, v167, v161, 0);
    sub_2662C1744(0, &qword_280073690, 0x277D27860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073698, &qword_2664EBAB8);
    if (swift_dynamicCast())
    {
      sub_2662A8618(&aBlock, v177);
      v84 = v178;
      v85 = v179;
      __swift_project_boxed_opaque_existential_1(v177, v178);
      v86 = *(a4 + 16);
      aBlock = *a4;
      v181 = v86;
      *v182 = *(a4 + 32);
      *&v182[15] = *(a4 + 47);
      v87 = (*(*v171 + 168))(&aBlock);
      (*(v85 + 8))(v87 & 1, v84, v85);
      v169(v156, v72, v175);
      sub_2662D2A64(a4, &aBlock);
      v88 = sub_2664DFE18();
      v89 = sub_2664E06E8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 67109120;
        *(v90 + 4) = *a4 & 1;
        sub_2662D2B88(a4);
        _os_log_impl(&dword_26629C000, v88, v89, "MPCAssistantQueueHandler: setting query attribute for shuffle: %{BOOL}d", v90, 8u);
        MEMORY[0x266784AD0](v90, -1, -1);
      }

      else
      {
        sub_2662D2B88(a4);
      }

      v63(v156, v175);
      __swift_destroy_boxed_opaque_existential_1Tm(v177);
    }

    else
    {
      *v182 = 0;
      aBlock = 0u;
      v181 = 0u;
      sub_266401708(&aBlock);
    }

    v151 = v71;
    LODWORD(v156) = (v172 >> 8) & 1;
    v155 = (v172 >> 16) & 1;
    LODWORD(v172) = (v172 >> 24) & 1;
    v91 = v159;
    v169(v159, v72, v175);
    v92 = sub_2664DFE18();
    v93 = sub_2664E06E8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_26629C000, v92, v93, "MPCAssistantQueueHandler: resolving destination and sending queue in background with continuation...", v94, 2u);
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    v159 = v63;
    v63(v91, v175);
    v95 = v171;
    v96 = __swift_project_boxed_opaque_existential_1(v171 + 2, v171[5]);
    v97 = *(a4 + 24);
    v148 = *(a4 + 32);
    v98 = *(a4 + 40);
    v99 = swift_allocObject();
    v100 = v168;
    *(v99 + 16) = v154;
    *(v99 + 24) = v100;
    v101 = *(a4 + 16);
    *(v99 + 32) = *a4;
    *(v99 + 48) = v101;
    *(v99 + 64) = *(a4 + 32);
    *(v99 + 79) = *(a4 + 47);
    *(v99 + 83) = v157;
    *(v99 + 84) = v156;
    *(v99 + 85) = v155;
    *(v99 + 86) = v172;
    *(v99 + 88) = v95;
    v102 = v174;
    v103 = v162;
    *(v99 + 96) = v174;
    *(v99 + 104) = v103;
    *(v99 + 112) = v166;
    *(v99 + 120) = a9 & 1;
    v104 = *v96;
    sub_2664016F8(v102, v167, v161, 0);
    sub_2662D2A64(a4, &aBlock);

    v105 = v98;

    v106 = v103;

    v107 = v163;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    if (v98 && !*(v97 + 16))
    {
      v174 = v104;
      v125 = v149;
      v169(v149, v160, v175);

      v126 = sub_2664DFE18();
      v127 = sub_2664E06E8();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v177[0] = v172;
        *v128 = 136315138;
        v129 = v148;
        *&aBlock = v148;
        *(&aBlock + 1) = v105;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v130 = sub_2664E0318();
        v132 = sub_2662A320C(v130, v131, v177);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_26629C000, v126, v127, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v128, 0xCu);
        v133 = v172;
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
        MEMORY[0x266784AD0](v133, -1, -1);
        MEMORY[0x266784AD0](v128, -1, -1);

        (v159)(v125, v175);
        v134 = v151;
      }

      else
      {

        (v159)(v125, v175);
        v134 = v151;
        v129 = v148;
      }

      v144 = v134 != 3;
      v122 = [objc_opt_self() systemMediaApplicationDestination];
      v145 = swift_allocObject();
      v145[2] = sub_266401770;
      v145[3] = v99;
      v145[4] = v174;
      v145[5] = v129;
      v145[6] = v105;
      *v182 = sub_2662CDCDC;
      *&v182[8] = v145;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v181 = sub_2663A0C48;
      *(&v181 + 1) = &block_descriptor_40;
      v146 = _Block_copy(&aBlock);

      [v122 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:v144 audioRoutingInfo:v152 completion:v146];
      _Block_release(v146);
    }

    else
    {
      v108 = v150;
      v169(v150, v160, v175);

      v109 = sub_2664DFE18();
      v110 = sub_2664E06C8();

      v111 = os_log_type_enabled(v109, v110);
      v112 = v151;
      if (v111)
      {
        LODWORD(v174) = v151 != 3;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *&aBlock = v114;
        *v113 = 136446722;
        LOBYTE(v177[0]) = v157;
        BYTE1(v177[0]) = v156;
        BYTE2(v177[0]) = v155;
        BYTE3(v177[0]) = v172;
        type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
        v115 = sub_2664E0318();
        v117 = sub_2662A320C(v115, v116, &aBlock);

        *(v113 + 4) = v117;
        *(v113 + 12) = 2080;
        v177[0] = v97;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
        v118 = sub_2664E0318();
        v120 = sub_2662A320C(v118, v119, &aBlock);

        *(v113 + 14) = v120;
        v107 = v163;
        *(v113 + 22) = 1026;
        *(v113 + 24) = v174;
        _os_log_impl(&dword_26629C000, v109, v110, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v113, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v114, -1, -1);
        MEMORY[0x266784AD0](v113, -1, -1);
      }

      (v159)(v108, v175);
      v121 = [objc_opt_self() systemMediaApplicationDestination];
      v122 = sub_2664E0488();
      v123 = swift_allocObject();
      *(v123 + 16) = sub_266401770;
      *(v123 + 24) = v99;
      *v182 = sub_2662CDCD4;
      *&v182[8] = v123;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v181 = sub_2663A0C48;
      *(&v181 + 1) = &block_descriptor_34_0;
      v124 = _Block_copy(&aBlock);

      [v121 resolveWithQueue:0 hashedRouteIdentifiers:v122 localPlaybackPermitted:v112 != 3 audioRoutingInfo:v152 completion:v124];
      _Block_release(v124);
    }

    sub_2664E0838();
    sub_2664DFDD8();

    return v153(v107, v164);
  }

  if (v64 == 3)
  {
LABEL_17:

    goto LABEL_19;
  }

  v67 = sub_2664E0D88();

  if (v67)
  {
    goto LABEL_19;
  }

  v169(v158, v160, v175);
  v135 = sub_2664DFE18();
  v136 = sub_2664E06E8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_26629C000, v135, v136, "MPCAssistantQueueHandler#warm setting upnext via continuation", v137, 2u);
    MEMORY[0x266784AD0](v137, -1, -1);
  }

  v63(v158, v175);
  v138 = swift_allocObject();
  v139 = v166;
  *(v138 + 16) = v171;
  *(v138 + 24) = v139;
  v140 = *(a4 + 16);
  *(v138 + 32) = *a4;
  *(v138 + 48) = v140;
  *(v138 + 64) = *(a4 + 32);
  *(v138 + 79) = *(a4 + 47);
  v141 = v174;
  v142 = v162;
  *(v138 + 88) = v174;
  *(v138 + 96) = v142;
  sub_2664016F8(v141, v167, v161, 0);
  sub_2662D2A64(a4, &aBlock);

  v143 = v142;

  sub_2663F4978(0xD000000000000025, 0x80000002664F8020, v143, a2, v168, 0, sub_2664016E8, v138);
}

uint64_t sub_2663FF33C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  __swift_project_boxed_opaque_existential_1((a3 + 136), *(a3 + 160));
  v13 = *(a5 + 16);
  v15[0] = *a5;
  v15[1] = v13;
  v16[0] = *(a5 + 32);
  *(v16 + 15) = *(a5 + 47);
  return sub_2662EE198(a4, v15, [a6 createRemotePlaybackQueue], a7, a1, a2);
}

void sub_2663FF3E8(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t a9, char a10)
{
  v64 = a8;
  v65 = a5;
  v67 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - v24;
  if (a1)
  {
    if (*(a4 + 40) && !*(*(a4 + 24) + 16))
    {
      v53 = swift_allocObject();
      v54 = *(a4 + 16);
      *(v53 + 24) = *a4;
      *(v53 + 16) = a6;
      *(v53 + 40) = v54;
      *(v53 + 56) = *(a4 + 32);
      *(v53 + 71) = *(a4 + 47);
      v55 = a7;
      *(v53 + 80) = a7;
      v56 = v64;
      *(v53 + 88) = v64;
      *(v53 + 96) = a9;
      *(v53 + 104) = a10 & 1;
      v57 = v67;
      *(v53 + 112) = a2;
      *(v53 + 120) = v57;
      v75 = sub_266401834;
      v76 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_2663A0C48;
      v74 = &block_descriptor_52;
      v58 = _Block_copy(&aBlock);
      v59 = a1;

      sub_2662D2A64(a4, &v68);
      v60 = v55;
      v61 = v56;

      [v59 resolveWithRouteIdentifiers:0 audioRoutingInfo:v65 & 0x1010101 completion:v58];
      _Block_release(v58);
    }

    else
    {
      v63 = a9;
      v66 = a2;
      v26 = qword_280F914E8;
      v62 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v15, qword_280F914F0);
      swift_beginAccess();
      (*(v16 + 16))(v23, v27, v15);
      v28 = sub_2664DFE18();
      v29 = sub_2664E06C8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_26629C000, v28, v29, "MPCAssistantQueueHandler: resolved destination, applying routes...", v30, 2u);
        MEMORY[0x266784AD0](v30, -1, -1);
      }

      (*(v16 + 8))(v23, v15);
      v31 = *(a4 + 24);
      v32 = sub_2664E0488();
      v33 = swift_allocObject();
      *(v33 + 16) = a6;
      *(v33 + 24) = a7;
      v34 = a7;
      v35 = *(a4 + 16);
      *(v33 + 32) = *a4;
      *(v33 + 48) = v35;
      *(v33 + 64) = *(a4 + 32);
      *(v33 + 79) = *(a4 + 47);
      v36 = v64;
      v37 = v63;
      *(v33 + 88) = v64;
      *(v33 + 96) = v37;
      *(v33 + 104) = a10 & 1;
      v38 = v67;
      *(v33 + 112) = v66;
      *(v33 + 120) = v38;
      v75 = sub_2664017FC;
      v76 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_2663A0C48;
      v74 = &block_descriptor_46;
      v39 = _Block_copy(&aBlock);

      sub_2662D2A64(a4, &v68);
      v40 = v34;
      v41 = v36;

      v42 = v62;
      [v62 resolveWithHashedRouteIdentifiers:v32 audioRoutingInfo:v65 & 0x1010101 completion:v39];
      _Block_release(v39);
    }
  }

  else
  {
    v66 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v44 = *(v16 + 16);
    v44(v25, v43, v15);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06D8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "MPCAssistantQueueHandler#warm unexpected nil MPCAssistantRemoteControlDestination from media remote", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v48 = *(v16 + 8);
    v48(v25, v15);
    v44(v20, v43, v15);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v68 = v52;
      *v51 = 134218498;
      *(v51 + 4) = 10;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 13;
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v68);
      _os_log_impl(&dword_26629C000, v49, v50, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v51, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v48(v20, v15);
    v68 = xmmword_2664EBA20;
    v69 = 0xE900000000000074;
    v70 = 1;
    v66(&v68);
    sub_2662D2F30(v68, *(&v68 + 1), v69, v70);
  }
}

uint64_t sub_2663FFB04(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  v102 = a8;
  LODWORD(v96) = a7;
  v98 = a5;
  v103 = sub_2664DFE38();
  v14 = *(v103 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v103);
  v92 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v87[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v87[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v90 = &v87[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v87[-v24];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v97 = a4;
  v26 = a9;
  v27 = v103;
  v28 = __swift_project_value_buffer(v103, qword_280F914F0);
  swift_beginAccess();
  v29 = v14[2];
  v101 = v28;
  v100 = v14 + 2;
  v99 = v29;
  v29(v25, v28, v27);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v14;
    v33 = a1;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "MPCAssistantQueueHandler: resolved SE Route Id, now sending queue...", v34, 2u);
    v35 = v34;
    a1 = v33;
    v14 = v32;
    v26 = a9;
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  v36 = v14[1];
  v93 = v14 + 1;
  v36(v25, v103);
  v37 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v38 = __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v88 = *(a3 + 50);
  *&v39 = *(a3 + 8);
  v95 = v39;
  v40 = *(a3 + 16);
  v41 = *(a6 + 104);
  *&v39 = *(a6 + 96);
  v94 = v39;
  v110[3] = &type metadata for PlaybackAttributes;
  v110[4] = &off_2877E7D78;
  v42 = swift_allocObject();
  v110[0] = v42;
  v43 = *(a3 + 16);
  *(v42 + 16) = *a3;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(a3 + 32);
  *(v42 + 63) = *(a3 + 47);
  sub_26637C7BC(v38, &v105);
  sub_2662A5550(v110, v104);
  v44 = swift_allocObject();
  v45 = v108;
  *(v44 + 48) = v107;
  *(v44 + 64) = v45;
  v46 = v106;
  *(v44 + 16) = v105;
  *(v44 + 32) = v46;
  *&v45 = v95;
  *(&v45 + 1) = v40;
  *&v47 = v94;
  *(&v47 + 1) = v41;
  v48 = v109;
  *(v44 + 96) = v45;
  *(v44 + 112) = v47;
  *(v44 + 80) = v48;
  *(v44 + 128) = v102;
  *(v44 + 136) = v26;
  sub_2662A8618(v104, v44 + 144);
  v49 = v97;
  v50 = v98;
  *(v44 + 184) = v97;
  *(v44 + 192) = v50;
  *(v44 + 200) = v96 & 1;
  if (!v37)
  {
    v57 = v90;
    v99(v90, v101, v103);
    sub_2662D2A64(a3, &v105);

    v58 = v49;
    v59 = v50;

    v60 = sub_2664DFE18();
    v61 = sub_2664E06D8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v36;
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v60, v61, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v63, 2u);
      v64 = v63;
      v36 = v62;
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    v65 = v103;
    v36(v57, v103);
    v66 = v92;
    v99(v92, v101, v65);
    v67 = sub_2664DFE18();
    v68 = v36;
    v69 = sub_2664E06B8();
    if (os_log_type_enabled(v67, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v105 = v71;
      *v70 = 134218498;
      *(v70 + 4) = 15;
      *(v70 + 12) = 2048;
      *(v70 + 14) = 13;
      *(v70 + 22) = 2080;
      *(v70 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v105);
      _os_log_impl(&dword_26629C000, v67, v69, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v70, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x266784AD0](v71, -1, -1);
      MEMORY[0x266784AD0](v70, -1, -1);

      v72 = v92;
    }

    else
    {

      v72 = v66;
    }

    v68(v72, v103);
    v105 = xmmword_2664E8DA0;
    *&v106 = 0xE900000000000074;
    BYTE8(v106) = 1;
    v102(&v105);
    goto LABEL_20;
  }

  v96 = v36;
  sub_2662D2A64(a3, &v105);

  v51 = v49;
  v52 = v50;

  [v37 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = v89;
    v99(v89, v101, v103);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06D8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "Guaranteed cast to mutable RemoteControlDestination failed", v76, 2u);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v77 = v103;
    v78 = v96;
    v96(v73, v103);
    v79 = v91;
    v99(v91, v101, v77);
    v80 = sub_2664DFE18();
    v81 = sub_2664E06B8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v101 = v26;
      v83 = v82;
      v84 = swift_slowAlloc();
      *&v105 = v84;
      *v83 = 134218498;
      *(v83 + 4) = 15;
      *(v83 + 12) = 2048;
      *(v83 + 14) = 22;
      *(v83 + 22) = 2080;
      *(v83 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v105);
      _os_log_impl(&dword_26629C000, v80, v81, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v83, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x266784AD0](v84, -1, -1);
      MEMORY[0x266784AD0](v83, -1, -1);

      v85 = v91;
    }

    else
    {

      v85 = v79;
    }

    v78(v85, v103);
    v105 = xmmword_2664E8D90;
    *&v106 = 0x80000002664F5AE0;
    BYTE8(v106) = 1;
    v102(&v105);

LABEL_20:

    sub_2662D2F30(v105, *(&v105 + 1), v106, SBYTE8(v106));
    return __swift_destroy_boxed_opaque_existential_1Tm(v110);
  }

  v53 = v104[0];
  [v104[0] setSingleGroup_];
  v54 = v51;
  v55 = v37;

  v56 = v53;
  sub_2664ADBE8(v55, v52, v55, v54, sub_26637F70C, v44, v56, v88);

  return __swift_destroy_boxed_opaque_existential_1Tm(v110);
}

uint64_t sub_266400550(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  v100 = a8;
  LODWORD(v92) = a7;
  v95 = a5;
  v94 = a3;
  v93 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v88 = &v84[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v84[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v84[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v84[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v84[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v99 = a9;
  v25 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v26 = v13[2];
  v98 = v25;
  v97 = v26;
  v96 = v13 + 2;
  (v26)(v24, v25, v12);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "MPCAssistantQueueHandler: resolved destination routes, now sending queue...", v29, 2u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v31 = v13 + 1;
  v30 = v13[1];
  v30(v24, v12);
  v32 = __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v85 = *(a4 + 50);
  *&v33 = *(a4 + 8);
  v91 = v33;
  v34 = *(a4 + 16);
  v35 = *(a6 + 104);
  *&v33 = *(a6 + 96);
  v90 = v33;
  v107[3] = &type metadata for PlaybackAttributes;
  v107[4] = &off_2877E7D78;
  v36 = swift_allocObject();
  v107[0] = v36;
  v37 = *(a4 + 16);
  *(v36 + 16) = *a4;
  *(v36 + 32) = v37;
  *(v36 + 48) = *(a4 + 32);
  *(v36 + 63) = *(a4 + 47);
  sub_26637C7BC(v32, &v102);
  sub_2662A5550(v107, v101);
  v38 = swift_allocObject();
  v39 = v105;
  *(v38 + 48) = v104;
  *(v38 + 64) = v39;
  v40 = v103;
  *(v38 + 16) = v102;
  *(v38 + 32) = v40;
  *&v39 = v91;
  *(&v39 + 1) = v34;
  *&v41 = v90;
  *(&v41 + 1) = v35;
  v42 = v106;
  *(v38 + 96) = v39;
  *(v38 + 112) = v41;
  *(v38 + 80) = v42;
  v43 = v99;
  *(v38 + 128) = v100;
  *(v38 + 136) = v43;
  sub_2662A8618(v101, v38 + 144);
  v44 = v94;
  v45 = v95;
  *(v38 + 184) = v94;
  *(v38 + 192) = v45;
  *(v38 + 200) = v92 & 1;
  if (!v93)
  {
    v93 = v12;
    v97(v89, v98);
    sub_2662D2A64(a4, &v102);

    v56 = v44;
    v57 = v45;

    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v30;
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v61, 2u);
      v62 = v61;
      v30 = v60;
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    v63 = v93;
    v30(v89, v93);
    v64 = v88;
    (v97)(v88, v98, v63);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06B8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = v30;
      v69 = swift_slowAlloc();
      *&v102 = v69;
      *v67 = 134218498;
      *(v67 + 4) = 15;
      *(v67 + 12) = 2048;
      *(v67 + 14) = 13;
      *(v67 + 22) = 2080;
      *(v67 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v102);
      _os_log_impl(&dword_26629C000, v65, v66, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v67, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);

      v68(v64, v63);
    }

    else
    {

      v30(v64, v63);
    }

    v102 = xmmword_2664E8DA0;
    *&v103 = 0xE900000000000074;
    BYTE8(v103) = 1;
    v100(&v102);
    goto LABEL_19;
  }

  *&v91 = v30;
  v92 = v31;
  v46 = v93;
  sub_2662D2A64(a4, &v102);

  v47 = v44;
  v48 = v45;
  v49 = v47;
  v50 = v48;
  v51 = v46;

  [v51 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v86;
    (v97)(v86, v98, v12);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "Guaranteed cast to mutable RemoteControlDestination failed", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v74 = v91;
    (v91)(v70, v12);
    v75 = 0x80000002664F5AE0;
    v76 = v87;
    (v97)(v87, v98, v12);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06B8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v98 = 0x80000002664F5AE0;
      v80 = v79;
      v81 = swift_slowAlloc();
      *&v102 = v81;
      *v80 = 134218498;
      *(v80 + 4) = 15;
      *(v80 + 12) = 2048;
      *(v80 + 14) = 22;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_2662A320C(0xD000000000000010, v98, &v102);
      _os_log_impl(&dword_26629C000, v77, v78, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v80, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x266784AD0](v81, -1, -1);
      v82 = v80;
      v75 = v98;
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    v74(v76, v12);
    v102 = xmmword_2664E8D90;
    *&v103 = v75;
    BYTE8(v103) = 1;
    v100(&v102);

LABEL_19:

    sub_2662D2F30(v102, *(&v102 + 1), v103, SBYTE8(v103));
    return __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  v52 = v101[0];
  [v101[0] setSingleGroup_];
  v53 = v49;
  v54 = v51;

  v55 = v52;
  sub_2664ADBE8(v54, v50, v54, v53, sub_26637F70C, v38, v55, v85);

  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

uint64_t sub_26640103C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2663FB4F0();
  *a1 = result;
  return result;
}

uint64_t sub_2664010C0(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v59 = a3;
  v60 = a4;
  v61 = a2;
  v64 = sub_2664DFE08();
  v62 = *(v64 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v10;
  MEMORY[0x28223BE20](v9);
  v58 = &v51 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = a1[4];
  v56 = a1[3];
  v53 = v20;
  v54 = a1[5];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v22 = v13[2];
  v22(v19, v21, v12);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = v17;
    v26 = v6;
    v27 = v25;
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "MPCAssistantQueueHandler#play starting queue", v25, 2u);
    v28 = v27;
    v6 = v26;
    v17 = v52;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = v13[1];
  v29(v19, v12);
  v52 = __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
  v22(v17, v21, v12);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "PlaybackStarter#play Sending early completion to mark start playback request", v32, 2u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v29(v17, v12);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v33 = qword_280F91D48;
  v34 = v58;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  v51 = "playbackQueueLocation";
  v35 = v62;
  v36 = v57;
  v37 = v64;
  (*(v62 + 16))(v57, v34, v64);
  sub_26637C7BC(v52, v65);
  v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v39 = (v55 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 87) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v35 + 32))(v42 + v38, v36, v37);
  v43 = (v42 + v39);
  v44 = v65[3];
  v43[2] = v65[2];
  v43[3] = v44;
  v43[4] = v65[4];
  v45 = v65[1];
  *v43 = v65[0];
  v43[1] = v45;
  *(v42 + v40) = v56;
  v46 = (v42 + v41);
  v47 = v54;
  *v46 = v53;
  v46[1] = v47;
  v48 = v59;
  *(v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v59;

  v49 = v48;

  sub_2663F4978(0xD00000000000001FLL, v51 | 0x8000000000000000, v49, v60, v63, v61, sub_2663CB454, v42);

  return (*(v35 + 8))(v34, v37);
}

uint64_t sub_266401650(uint64_t a1)
{
  if (*(v1 + 115))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 114))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 113))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_2663FDC60(a1, *(v1 + 16), *(v1 + 24), v1 + 32, *(v1 + 88), *(v1 + 96), *(v1 + 104), v4 | *(v1 + 112) | v3 | v2, *(v1 + 116));
}

id sub_2664016F8(void *a1, int a2, id a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_266401708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736A0, &unk_2664EBAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266401770(void *a1)
{
  if (*(v1 + 86))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 85))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 84))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2663FF3E8(a1, *(v1 + 16), *(v1 + 24), v1 + 32, v4 | *(v1 + 83) | v3 | v2, *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
}

void sub_2664017EC(void *a1, int a2, id a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_266401894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2664019C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2662BD660;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_266401B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 216) = a4;
  v7 = sub_2664DFE38();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266401C00, 0, 0);
}

uint64_t sub_266401C00()
{
  v61 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  *(v0 + 136) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57 = v5;
  v5(v1, v4, v2);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AudioMegamodelTriggeredLogger: Attempting to send triggered log", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 216);

  v13 = *(v11 + 8);
  *(v0 + 160) = v13;
  v58 = v13;
  v13(v9, v10);
  v14 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v15 = sub_2664E02A8();

  v16 = [v14 initWithUUIDString_];
  *(v0 + 168) = v16;

  if (v16)
  {
    v17 = *(v0 + 72);
    v18 = v17[3];
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v19 + 16))(v18, v19);
    if (v20)
    {
      v21 = objc_allocWithZone(MEMORY[0x277CCAD78]);
      v22 = sub_2664E02A8();

      v23 = [v21 initWithUUIDString_];
      *(v0 + 176) = v23;

      if (v23)
      {
        v24 = *__swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
        v25 = *(MEMORY[0x277CE4838] + 4);
        v59 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
        v26 = swift_task_alloc();
        *(v0 + 184) = v26;
        *v26 = v0;
        v26[1] = sub_26640214C;

        return v59(v16, &unk_2877E50D0);
      }
    }

    v57(*(v0 + 120), v4, *(v0 + 88));
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 120);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "AudioMegamodelTriggeredLogger: skipping triggered log because no Siri request ID available (i.e., megamodel evaluated outside of the context of a Siri request", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v35 = v31;
    v36 = v32;
  }

  else
  {
    v57(*(v0 + 112), v4, *(v0 + 88));
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 216);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136315138;
      if (v39 == 1)
      {
        v42 = "2E-B087-1008D96998FA";
      }

      else
      {
        v42 = "eHandler#handleUpNext";
      }

      if (v39)
      {
        v43 = v42;
      }

      else
      {
        v43 = "9E-9E25-3F79C03A0137";
      }

      v44 = v41;
      v45 = *(v0 + 112);
      v46 = *(v0 + 88);
      v47 = *(v0 + 96);
      v48 = sub_2662A320C(0xD000000000000024, v43 | 0x8000000000000000, &v60);

      *(v40 + 4) = v48;
      _os_log_impl(&dword_26629C000, v37, v38, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: provided codepath [%s] doesn't parse as a UUID; this trigger will never be emitted!  Skipping.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);

      v35 = v45;
      v36 = v46;
    }

    else
    {
      v49 = *(v0 + 112);
      v50 = *(v0 + 88);
      v51 = *(v0 + 96);

      v35 = v49;
      v36 = v50;
    }
  }

  v58(v35, v36);
  v53 = *(v0 + 120);
  v52 = *(v0 + 128);
  v55 = *(v0 + 104);
  v54 = *(v0 + 112);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_26640214C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_266402460;
  }

  else
  {
    v3 = sub_266402260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266402260()
{
  v1 = *(v0 + 176);
  v2 = *__swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
  v3 = *(MEMORY[0x277CE4830] + 4);
  v8 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_266402334;
  v6 = *(v0 + 168);

  return v8(v6, v4);
}

uint64_t sub_266402334()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_266402710;
  }

  else
  {
    v4 = sub_266402680;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266402460()
{
  v32 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  v3 = v1;
  v4 = sub_2664DFE18();
  v5 = sub_2664E06D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v29 = *(v0 + 104);
    v30 = *(v0 + 160);
    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = sub_2664E0DE8();
    v15 = sub_2662A320C(v13, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_26629C000, v4, v5, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: got %s while trying to emit triggered log; giving up without sending the trigger", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266784AD0](v9, -1, -1);
    MEMORY[0x266784AD0](v8, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 160);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    v17(v18, v20);
  }

  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_266402680()
{
  v1 = *(v0 + 168);

  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_266402710()
{
  v32 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  v3 = v1;
  v4 = sub_2664DFE18();
  v5 = sub_2664E06D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v29 = *(v0 + 104);
    v30 = *(v0 + 160);
    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = sub_2664E0DE8();
    v15 = sub_2662A320C(v13, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_26629C000, v4, v5, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: got %s while trying to emit triggered log; giving up without sending the trigger", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266784AD0](v9, -1, -1);
    MEMORY[0x266784AD0](v8, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 160);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    v17(v18, v20);
  }

  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_266402930(char a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v4);
  v2 = [objc_allocWithZone(sub_2664DFDB8()) init];
  sub_2664029E8(a1, v4, v2);

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_2664029E8(char a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v17[3] = sub_2664DFDB8();
  v17[4] = &off_2877EFCC8;
  v17[0] = a3;
  v10 = a3;
  sub_2664E05A8();
  v11 = sub_2664E05C8();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_2662A5550(a2, v16);
  sub_2662A5550(v17, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  sub_2662A8618(v16, v12 + 40);
  sub_2662A8618(v15, v12 + 80);
  sub_26633E760(0, 0, v9, &unk_2664EBBA0, v12);

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_266402B54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_266401B18(a1, v4, v5, v6, v1 + 40, v1 + 80);
}

uint64_t static Tasks.parallelizeAsync(tasks:priority:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266402C38, 0, 0);
}

uint64_t sub_266402C38()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_266402D1C;

  return MEMORY[0x282200600]();
}

uint64_t sub_266402D1C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_266402E34, 0, 0);
}

uint64_t static Tasks.parallelizeInnerAsync(tasks:prirority:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266402E68, 0, 0);
}

uint64_t sub_266402E68()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_266402F4C;

  return MEMORY[0x282200600]();
}

uint64_t sub_266402F4C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_266404388, 0, 0);
}

uint64_t static Tasks.parallelizeAsync(tasks:priority:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664E05C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  (*(v9 + 56))(&v19 - v13, 1, 1, v8);
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  (*(v9 + 32))(&v16[v15], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v17 = &v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a3;
  *(v17 + 1) = a4;

  sub_26633E760(0, 0, v14, &unk_2664EBBF8, v16);
}

uint64_t sub_266403254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_266403278, 0, 0);
}

uint64_t sub_266403278()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_26640335C;

  return MEMORY[0x282200600]();
}

uint64_t sub_26640335C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_266403474, 0, 0);
}

uint64_t sub_266403474()
{
  v5 = (v0[4] + *v0[4]);
  v1 = *(v0[4] + 4);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_266403560;
  v3 = v0[5];

  return v5();
}

uint64_t sub_266403560()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266403654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266403700, 0, 0);
}

uint64_t sub_266403700()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 72);
    v3 = (v1 + 32);
    do
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = *(v0 + 88);
      v9 = swift_allocObject();
      *(v9 + 16) = *v3;
      v10 = sub_2664E05C8();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v7, v8, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = &unk_2664EBC38;
      v12[5] = v9;
      sub_26633EF94(v7, v6);
      LODWORD(v7) = (*(v11 + 48))(v6, 1, v10);

      v14 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_26633F004(*(v0 + 96));
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_2664E05B8();
        (*(v11 + 8))(v14, v10);
        if (*v13)
        {
LABEL_9:
          v17 = v12[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_2664E0578();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_2664EBC40;
      *(v19 + 24) = v12;

      if (v16 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_26633F004(v5);
      ++v3;
      --v2;
    }

    while (v2);
  }

  v20 = *(MEMORY[0x277D85698] + 4);
  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736A8, &unk_2664EBC50);
  *v21 = v0;
  v21[1] = sub_266403A70;
  v23 = *(v0 + 72);

  return MEMORY[0x2822002C8](0, 0, v22);
}

uint64_t sub_266403A70()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_266403B9C(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2662C1890;

  return v5();
}

uint64_t sub_266403C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2662BD660;

  return v8();
}

uint64_t sub_266403DF0(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_266374740, v5);
}

uint64_t sub_266403EF8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return sub_266403654(a1, a2, v7, v6);
}

uint64_t sub_266403FAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2664E05C8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2662BD660;

  return sub_266403254(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_2664040F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2662C1890;

  return sub_266403B9C(v2);
}

uint64_t sub_2664041A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2662C1890;

  return sub_266403C84(a1, v4, v5, v7);
}

uint64_t sub_266404264(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662BD660;

  return sub_266396550(a1, v5);
}

uint64_t sub_26640431C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_266403D6C();
}

uint64_t sub_266404328()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_266403E7C();
}

uint64_t sub_266404334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Int_optional __swiftcall CommonIntentSignals.onscreenMediaItemListPosition()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2664048BC(v1);
  if (v7)
  {
    v8 = v7;
    v9 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000015, 0x80000002664F80E0, v7);
    if (v10)
    {
      v11 = HIBYTE(v10) & 0xF;
      v12 = v9 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v13 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v15 = sub_2664058E0(v9, v10, 10);
          v37 = v38;
LABEL_70:

          if (v37)
          {
            v9 = 0;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_76;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v41[0] = v9;
          v41[1] = v10 & 0xFFFFFFFFFFFFFFLL;
          if (v9 == 43)
          {
            if (v11)
            {
              v12 = v11 - 1;
              if (v11 != 1)
              {
                v15 = 0;
                v29 = v41 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    break;
                  }

                  v15 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v12)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_68;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          if (v9 != 45)
          {
            if (v11)
            {
              v15 = 0;
              v34 = v41;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                v36 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  break;
                }

                ++v34;
                if (!--v11)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_68;
          }

          if (v11)
          {
            v12 = v11 - 1;
            if (v11 != 1)
            {
              v15 = 0;
              v23 = v41 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  break;
                }

                v25 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v25 - v24;
                if (__OFSUB__(v25, v24))
                {
                  break;
                }

                ++v23;
                if (!--v12)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }
        }

        else
        {
          if ((v9 & 0x1000000000000000) != 0)
          {
            v9 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v39 = v10;
            v9 = sub_2664E0B78();
            v12 = v10;
            LOBYTE(v10) = v39;
          }

          v14 = *v9;
          if (v14 == 43)
          {
            if (v12 >= 1)
            {
              if (--v12)
              {
                v15 = 0;
                if (v9)
                {
                  v26 = (v9 + 1);
                  while (1)
                  {
                    v27 = *v26 - 48;
                    if (v27 > 9)
                    {
                      goto LABEL_68;
                    }

                    v28 = 10 * v15;
                    if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                    {
                      goto LABEL_68;
                    }

                    v15 = v28 + v27;
                    if (__OFADD__(v28, v27))
                    {
                      goto LABEL_68;
                    }

                    ++v26;
                    if (!--v12)
                    {
                      goto LABEL_69;
                    }
                  }
                }

                goto LABEL_67;
              }

              goto LABEL_68;
            }

            goto LABEL_81;
          }

          if (v14 != 45)
          {
            if (v12)
            {
              v15 = 0;
              if (v9)
              {
                while (1)
                {
                  v32 = *v9 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_68;
                  }

                  v33 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v15 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_68;
                  }

                  ++v9;
                  if (!--v12)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_67;
            }

LABEL_68:
            v15 = 0;
            LOBYTE(v12) = 1;
            goto LABEL_69;
          }

          if (v12 >= 1)
          {
            if (--v12)
            {
              v15 = 0;
              if (v9)
              {
                v16 = (v9 + 1);
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_68;
                  }

                  v18 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v15 = v18 - v17;
                  if (__OFSUB__(v18, v17))
                  {
                    goto LABEL_68;
                  }

                  ++v16;
                  if (!--v12)
                  {
                    goto LABEL_69;
                  }
                }
              }

LABEL_67:
              LOBYTE(v12) = 0;
LABEL_69:
              v40[0] = v12;
              v37 = v12;
              goto LABEL_70;
            }

            goto LABEL_68;
          }

          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v19, v2);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "CommonIntentSignals#onscreenMediaItemListPosition could not find intent returning nil", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  v9 = 0;
  v37 = 1;
LABEL_76:
  LOBYTE(v10) = v37 & 1;
LABEL_83:
  result.is_nil = v10;
  result.value = v9;
  return result;
}

uint64_t sub_2664048BC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  if (swift_dynamicCast() || (sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0), swift_dynamicCast()) || (sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8), swift_dynamicCast()) || (sub_2662C1744(0, &unk_280F8F588, 0x277CD4030), swift_dynamicCast()))
  {
    v6 = v8[1];
  }

  else
  {
    v6 = 0;
  }

  (*(v2 + 8))(v5, a1);
  return v6;
}

BOOL sub_266404A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664048BC(a2);
  if (v9)
  {
    v10 = v9;
    v11 = _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v9, a1);

    return v11;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v13, v4);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "CommonIntentSignals#isIntentInternalSignalPresent could not find intent returning false", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

void sub_266404C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, void (*a6)(void, void, void), const char *a7)
{
  v34 = a7;
  v36 = a5;
  v37 = a1;
  v39 = a4;
  v38 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v35 = v10[2];
  v35(v16, v17, v9);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v10;
    v21 = a2;
    v22 = v14;
    v23 = a6;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, v36, v20, 2u);
    v25 = v24;
    a6 = v23;
    v14 = v22;
    a2 = v21;
    v10 = v33;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = v10[1];
  v26(v16, v9);
  v27 = sub_2664048BC(v38);
  if (v27)
  {
    v28 = v27;
    a6(v37, a2, v27);
  }

  else
  {
    v35(v14, v17, v9);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, v34, v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v26(v14, v9);
  }
}

Swift::Void __swiftcall CommonIntentSignals.addSFACompanionAssistantID(assistantId:)(Swift::String assistantId)
{
  v3 = v2;
  v4 = v1;
  object = assistantId._object;
  countAndFlagsBits = assistantId._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0xD000000000000018, 0x80000002664F8100, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::Void __swiftcall CommonIntentSignals.addSFAAssistantID(assistantId:)(Swift::String assistantId)
{
  v3 = v2;
  v4 = v1;
  object = assistantId._object;
  countAndFlagsBits = assistantId._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0x7369737341414653, 0xEF3A6449746E6174, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::String_optional __swiftcall CommonIntentSignals.getSFACompanionAssistantID()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000018, 0x80000002664F8100, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall CommonIntentSignals.getSFAAssistantID()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0x7369737341414653, 0xEF3A6449746E6174, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall CommonIntentSignals.addSiriLocaleOverride(locale:)(Swift::String locale)
{
  v3 = v2;
  v4 = v1;
  object = locale._object;
  countAndFlagsBits = locale._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0xD000000000000013, 0x80000002664F8120, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::String_optional __swiftcall CommonIntentSignals.getLocaleOverride()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000013, 0x80000002664F8120, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t CommonIntentSignals.addOnscreenMediaItemListPosition(for:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *result;
  if (*(result + 8))
  {
    v6 = __OFSUB__(0, v5);
    v5 = -v5;
    if (!v6)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!__OFSUB__(v5, 1))
  {
LABEL_6:
    v7 = sub_2664E0D48();
    MEMORY[0x2667833B0](v7);

    sub_266404C5C(0xD000000000000015, 0x80000002664F80E0, a2, a3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_2664058E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2664E0418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2664063F0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2664E0B78();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_266405E6C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2664E0418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2664063F0();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2664E0B78();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2664063F0()
{
  v0 = sub_2664E0428();
  v4 = sub_266406470(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_266406470(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2664E0358();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2664E0958();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2662A3A54(v9, 0);
  v12 = sub_2664065C8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2664E0358();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2664E0B78();
LABEL_4:

  return sub_2664E0358();
}

unint64_t sub_2664065C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2664067E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2664E03D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2664E0B78();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2664067E8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2664E03B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2664067E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2664E03E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2667833E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_266406880(uint64_t a1@<X8>)
{
  v2 = sub_2664E02A8();
  v3 = MGGetSInt32Answer();

  v4 = v3 == 3;
  v5 = sub_2664E02A8();
  v6 = MGGetSInt32Answer();

  v7 = v6 == 1;
  v8 = [objc_opt_self() currentDeviceInfo];
  LOBYTE(v6) = [v8 isInternalBuild];

  *a1 = 0;
  *(a1 + 2) = v4;
  *(a1 + 3) = v7;
  *(a1 + 4) = v6;
}

uint64_t DeviceProvider.open(uri:carPlay:completion:)(void (*a1)(void, void), unint64_t a2, int a3, uint64_t (*a4)(id), uint64_t a5)
{
  v127 = a5;
  v128 = a4;
  LODWORD(v121) = a3;
  v126 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v117 - v8;
  v135 = sub_2664DE268();
  v133 = *(v135 - 8);
  v10 = *(v133 + 64);
  v11 = MEMORY[0x28223BE20](v135);
  v123 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = v117 - v14;
  MEMORY[0x28223BE20](v13);
  v134 = v117 - v15;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v120 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v125 = v117 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v124 = v117 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v117 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v118 = v117 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v117 - v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v33 = v17[2];
  v131 = v32;
  v130 = v17 + 2;
  v129 = v33;
  v33(v31, v32, v16);

  v34 = v17;
  v35 = sub_2664DFE18();
  v36 = sub_2664E06B8();

  v37 = os_log_type_enabled(v35, v36);
  v119 = v27;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v137 = v39;
    *v38 = 136315138;
    v40 = v126;
    *(v38 + 4) = sub_2662A320C(v126, a2, &v137);
    _os_log_impl(&dword_26629C000, v35, v36, "DeviceProvider#open Request to open URI:%s  ...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);

    v41 = v16;
    v132 = v34[1];
    v132(v31, v16);
    v42 = v34;
    v43 = v135;
  }

  else
  {

    v41 = v16;
    v132 = v17[1];
    v132(v31, v16);
    v42 = v17;
    v43 = v135;
    v40 = v126;
  }

  sub_2664DE258();
  v44 = v133;
  if ((*(v133 + 48))(v9, 1, v43) == 1)
  {
    sub_2662A9238(v9, &qword_280072BC0, &qword_2664E6030);
    v45 = v120;
    v46 = v41;
    v129(v120, v131, v41);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v137 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2662A320C(v40, a2, &v137);
      _os_log_impl(&dword_26629C000, v47, v48, "DeviceProvider#open Could not coerce input:%s to URL type", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v132(v45, v46);
    return v128(0);
  }

  else
  {
    (*(v44 + 32))(v134, v9, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E36F0;
    *(inited + 32) = 0xD000000000000014;
    v53 = inited + 32;
    *(inited + 40) = 0x80000002664F81A0;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v54 = sub_2663854AC(inited);
    swift_setDeallocating();
    sub_2662A9238(v53, &unk_2800734F0, &unk_2664E3660);
    v140 = v54;
    v55 = v41;
    if (v121)
    {
      v56 = v118;
      v129(v118, v131, v55);
      v57 = sub_2664DFE18();
      v58 = sub_2664E06E8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26629C000, v57, v58, "DeviceProvider#open Getting endpoint for CarPlay service...", v59, 2u);
        MEMORY[0x266784AD0](v59, -1, -1);
      }

      v132(v56, v55);
      v60 = [objc_opt_self() serviceName];
      if (!v60)
      {
        sub_2664E02C8();
        v60 = sub_2664E02A8();
      }

      v61 = sub_2664E02A8();
      v62 = [objc_opt_self() endpointForMachName:v61 service:v60 instance:0];

      v63 = *MEMORY[0x277CC1E38];
      v64 = sub_2664E02C8();
      v66 = v65;
      if (v62)
      {
        *(&v138 + 1) = sub_266407E20();
        *&v137 = v62;
        sub_266318804(&v137, v136);
        v67 = v62;
        v68 = v140;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = v68;
        sub_26634EEE0(v136, v64, v66, isUniquelyReferenced_nonNull_native);

        v140 = v139;
      }

      else
      {
        v137 = 0u;
        v138 = 0u;
        sub_2662A9238(&v137, &unk_280074250, &unk_2664E3680);
        sub_2664079EC(v64, v66, v136);

        sub_2662A9238(v136, &unk_280074250, &unk_2664E3680);
      }

      v70 = v119;
      v129(v119, v131, v55);
      v71 = sub_2664DFE18();
      v72 = sub_2664E06E8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_26629C000, v71, v72, "DeviceProvider#open Retrieved carplay endpoint.", v73, 2u);
        MEMORY[0x266784AD0](v73, -1, -1);
        v74 = v62;
      }

      else
      {
        v74 = v71;
        v71 = v62;
      }

      v132(v70, v55);
    }

    v75 = v124;
    v129(v124, v131, v55);
    v76 = v133;
    v77 = v122;
    v78 = v135;
    v121 = *(v133 + 16);
    v121(v122, v134, v135);
    v79 = sub_2664DFE18();
    v80 = sub_2664E06E8();
    v81 = os_log_type_enabled(v79, v80);
    v117[1] = v42;
    v117[0] = v55;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v137 = v83;
      *v82 = 136315394;
      sub_2663C12D0();
      v84 = sub_2664E0D48();
      v85 = v78;
      v86 = v84;
      v88 = v87;
      v126 = *(v76 + 8);
      v126(v77, v85);
      v89 = sub_2662A320C(v86, v88, &v137);

      *(v82 + 4) = v89;
      *(v82 + 12) = 2080;
      swift_beginAccess();

      v90 = sub_2664E01D8();
      v92 = v91;

      v93 = sub_2662A320C(v90, v92, &v137);

      *(v82 + 14) = v93;
      _os_log_impl(&dword_26629C000, v79, v80, "DeviceProvider#open Opening URL:%s with options: %s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v83, -1, -1);
      v94 = v82;
      v55 = v117[0];
      MEMORY[0x266784AD0](v94, -1, -1);

      v132(v124, v55);
    }

    else
    {

      v126 = *(v76 + 8);
      v126(v77, v78);
      v132(v75, v55);
    }

    v95 = [objc_opt_self() defaultWorkspace];
    v96 = v134;
    if (v95)
    {
      v97 = v95;
      v98 = sub_2664DE208();
      swift_beginAccess();

      v99 = sub_2664E01A8();

      v100 = [v97 openSensitiveURL:v98 withOptions:v99];
    }

    else
    {
      v100 = 0;
    }

    v101 = v125;
    v129(v125, v131, v55);
    v102 = v123;
    v103 = v135;
    v121(v123, v96, v135);
    v104 = sub_2664DFE18();
    v105 = sub_2664E06B8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v139 = v107;
      *v106 = 136315394;
      sub_2663C12D0();
      v108 = sub_2664E0D48();
      v110 = v109;
      v111 = v102;
      v112 = v126;
      v126(v111, v103);
      v113 = sub_2662A320C(v108, v110, &v139);

      *(v106 + 4) = v113;
      *(v106 + 12) = 1024;
      *(v106 + 14) = v100;
      _os_log_impl(&dword_26629C000, v104, v105, "DeviceProvider#open Opened URL:%s with result: %{BOOL}d", v106, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x266784AD0](v107, -1, -1);
      MEMORY[0x266784AD0](v106, -1, -1);

      v114 = v125;
      v115 = v117[0];
    }

    else
    {

      v116 = v102;
      v112 = v126;
      v126(v116, v103);
      v114 = v101;
      v115 = v55;
    }

    v132(v114, v115);
    v128(v100);
    v112(v134, v103);
  }
}

double sub_26640793C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2662A3E98(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2664538FC();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + (v9 << 6));
    v15 = v14[1];
    *a3 = *v14;
    a3[1] = v15;
    v16 = v14[3];
    a3[2] = v14[2];
    a3[3] = v16;
    sub_266452ABC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2664079EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2662A3E98(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_266453AC4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_266318804((*(v12 + 56) + 32 * v9), a3);
    sub_266452C74(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_266407AFC(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = *v4;
  v9 = sub_2662A3E98(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v7;
  v18 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v14 = v18;
  }

  v15 = *(*(v14 + 48) + 16 * v11 + 8);

  v16 = *(*(v14 + 56) + 8 * v11);
  a3(v11, v14);
  *v7 = v14;
  return v16;
}

double sub_266407BAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26634DAA8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_266454598();
      v11 = v13;
    }

    sub_266318804((*(v11 + 56) + 32 * v8), a2);
    sub_26645319C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_266407C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_2662A3E98(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    a4(v15, v18);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

unint64_t sub_266407E20()
{
  result = qword_2800736B0;
  if (!qword_2800736B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800736B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_266407F4C()
{
  type metadata accessor for NearDeviceProvider();
  v0 = swift_allocObject();
  result = NearDeviceProvider.init()();
  qword_2800736B8 = v0;
  return result;
}

uint64_t NearDeviceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  NearDeviceProvider.init()();
  return v0;
}

uint64_t static NearDeviceProvider.shared.getter()
{
  if (qword_280071C10 != -1)
  {
    swift_once();
  }
}

void *NearDeviceProvider.init()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E0788();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v15 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000020, 0x80000002664F8220, v14, v9);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v16 = v23;
  v23[2] = v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v17, v0);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NearDeviceProvider#init: Starting up RPCompanionLinkClient...", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v16[3] = dispatch_group_create();
  v21 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  v16[4] = v21;
  [v21 setDispatchQueue_];
  return v16;
}

void sub_26640837C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_26629C000, v8, v9, "NearDeviceProvider#startDiscovering...", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  dispatch_group_enter(*(v1 + 24));
  v11 = *(v1 + 32);
  v22 = sub_266408794;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2662A3F90;
  v21 = &block_descriptor_36;
  v12 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler_];
  _Block_release(v12);
  v22 = sub_2664087A0;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2662A3F90;
  v21 = &block_descriptor_3;
  v13 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler_];
  _Block_release(v13);
  v22 = sub_266408958;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26637AA0C;
  v21 = &block_descriptor_6;
  v14 = _Block_copy(&aBlock);
  [v11 setDeviceLostHandler_];
  _Block_release(v14);
  v22 = sub_266408964;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26637AA0C;
  v21 = &block_descriptor_9_0;
  v15 = _Block_copy(&aBlock);
  [v11 setDeviceFoundHandler_];
  _Block_release(v15);
  v22 = sub_2664097EC;
  v23 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2663CE9D8;
  v21 = &block_descriptor_12_3;
  v16 = _Block_copy(&aBlock);

  [v11 activateWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_2664087AC(const char *a1)
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
    _os_log_impl(&dword_26629C000, v8, v9, a1, v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_266408970(void *a1, const char *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_26629C000, v11, v12, a2, v13, 0xCu);
    sub_2662E4324(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_266408B70(void *a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  if (a1)
  {
    v12 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v13, v4);
    v14 = a1;
    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_2664E0DE8();
      v22 = sub_2662A320C(v20, v21, &v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26629C000, v15, v16, "NearDeviceProvider#startDiscovering: Failed to activate RPCompanionLinkClient with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      v23 = v18;
      a2 = v30;
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    dispatch_group_leave(*(a2 + 24));
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v24, v4);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "NearDeviceProvider#startDiscovering: Successfully activated RPCompanionLinkClient", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    dispatch_group_leave(*(a2 + 24));
  }

  return sub_2664E0748();
}

uint64_t sub_266408F00()
{
  v0 = sub_2664E0018();
  v61 = *(v0 - 8);
  v62 = v0;
  v1 = *(v61 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_2664E00E8();
  v4 = *(v60 - 8);
  v5 = *(v4 + 8);
  v6 = MEMORY[0x28223BE20](v60);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v57 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = (&v57 - v20);
  if (qword_280F914E8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v23 = v12;
  v24 = *(v12 + 16);
  v64 = v12 + 16;
  v65 = v22;
  v68 = v11;
  v63 = v24;
  v24(v21, v22, v11);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "NearDeviceProvider#hasNearbyPhone...", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v23 + 8);
  v29 = v68;
  v66 = v23 + 8;
  v28(v21, v68);
  v30 = v28;
  v31 = v67;
  v32 = *(v67 + 24);
  sub_2664E00C8();
  *v3 = 5001;
  v34 = v61;
  v33 = v62;
  (*(v61 + 104))(v3, *MEMORY[0x277D85178], v62);
  MEMORY[0x266783140](v8, v3);
  (*(v34 + 8))(v3, v33);
  v35 = *(v4 + 1);
  v36 = v8;
  v8 = v60;
  v35(v36, v60);
  sub_2664E0738();
  v35(v10, v8);
  if ((sub_2664E0028() & 1) == 0)
  {
    v41 = v58;
    v63(v58, v65, v29);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "NearDeviceProvider#hasNearbyPhone rapport timed out", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v30(v41, v29);
    return 0;
  }

  v4 = v59;
  v63(v59, v65, v29);

  v21 = sub_2664DFE18();
  v37 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v37))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v38 = [*(v31 + 32) activeDevices];
    sub_2664097F4();
    v39 = sub_2664E04A8();

    if (v39 >> 62)
    {
      v40 = sub_2664E0A68();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v40;

    _os_log_impl(&dword_26629C000, v21, v37, "NearDeviceProvider#hasNearbyPhone wait complete. Found %ld devices", v8, 0xCu);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  else
  {
  }

  v30(v4, v68);
  v11 = [*(v31 + 32) activeDevices];
  sub_2664097F4();
  v10 = sub_2664E04A8();

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

  v12 = sub_2664E0A68();
  if (!v12)
  {
LABEL_32:

    return 0;
  }

LABEL_15:
  v62 = v30;
  v45 = 0;
  v67 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x266783B70](v45, v10);
    }

    else
    {
      if (v45 >= *(v67 + 16))
      {
        goto LABEL_29;
      }

      v46 = *(v10 + 8 * v45 + 32);
    }

    v8 = v46;
    v3 = (v45 + 1);
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v47 = [v46 model];
    if (v47)
    {
      v48 = v47;
      v49 = sub_2664E02C8();
      v4 = v50;

      v71[0] = v49;
      v71[1] = v4;
      v69 = 0x656E6F685069;
      v70 = 0xE600000000000000;
      sub_2662C178C();
      sub_2662C17E0();
      v21 = v71;
      v11 = sub_2664E0278();

      if (v11)
      {
        break;
      }
    }

    ++v45;
    if (v3 == v12)
    {
      goto LABEL_32;
    }
  }

  v51 = v57;
  v52 = v68;
  v63(v57, v65, v68);
  v53 = sub_2664DFE18();
  v54 = sub_2664E06C8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26629C000, v53, v54, "NearDeviceProvider#hasNearbyPhone found iphone", v55, 2u);
    MEMORY[0x266784AD0](v55, -1, -1);
  }

  else
  {
  }

  v62(v51, v52);
  return 1;
}