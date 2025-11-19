uint64_t sub_261B1F8E4(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B31750();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000011, 0x8000000261D174B0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0x704163696C627570;
  if (v103)
  {
    v85 = 0xD000000000000011;
  }

  else
  {
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000011;
  v87[1] = 0x8000000261D174B0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B20688(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B316FC();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000021, 0x8000000261D17480, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000021;
  v87[1] = 0x8000000261D17480;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B21444(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B316A8();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D17460, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000018;
  v87[1] = 0x8000000261D17460;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B22200(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B31654();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D17440, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000014;
  v87[1] = 0x8000000261D17440;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B22FA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31600();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000022, 0x8000000261D17410, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000022;
  v87[1] = 0x8000000261D17410;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B23D64(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B315AC();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000012, 0x8000000261D173F0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000012;
  v87[1] = 0x8000000261D173F0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B24B0C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B31558();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000013, 0x8000000261D173D0, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000013;
  v88[1] = 0x8000000261D173D0;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B258D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31504();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D173B0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000014;
  v87[1] = 0x8000000261D173B0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B26694(int a1, uint64_t a2)
{
  v102 = a1;
  v3 = sub_261CFED34();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v103 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFCF24();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v91 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v89[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v101 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v100 = &v89[-v16];
  v17 = sub_261CFCF84();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v92 = &v89[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v89[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v98 = &v89[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v107 = &v89[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v89[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v89[-v35];
  v37 = sub_261CFCFA4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v99 = &v89[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v97 = &v89[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v96 = &v89[-v45];
  MEMORY[0x28223BE20](v44);
  v47 = &v89[-v46];
  v112[1] = a2;
  v109 = sub_261B314B0();
  sub_261CFC754();
  sub_261CFCF94();
  v48 = *(v38 + 8);
  v110 = v38 + 8;
  v111 = v37;
  v108 = v48;
  v48(v47, v37);
  (*(v18 + 104))(v34, *MEMORY[0x277CBA158], v17);
  (*(v18 + 56))(v34, 0, 1, v17);
  v49 = *(v22 + 56);
  sub_261AFB668(v36, v25, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v34, &v25[v49], &qword_27FEDA428, &qword_261D02F28);
  v106 = v18;
  v50 = *(v18 + 48);
  if (v50(v25, 1, v17) == 1)
  {
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    if (v50(&v25[v49], 1, v17) == 1)
    {
      return sub_261AE6A40(v25, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v25, v107, &qword_27FEDA428, &qword_261D02F28);
  if (v50(&v25[v49], 1, v17) == 1)
  {
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    (*(v106 + 8))(v107, v17);
LABEL_6:
    sub_261AE6A40(v25, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v72 = v106;
  v73 = v92;
  (*(v106 + 32))(v92, &v25[v49], v17);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v90 = sub_261CFF974();
  v74 = *(v72 + 8);
  v74(v73, v17);
  sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  v74(v107, v17);
  result = sub_261AE6A40(v25, &qword_27FEDA428, &qword_261D02F28);
  if (v90)
  {
    return result;
  }

LABEL_7:
  v52 = v96;
  sub_261CFC754();
  v53 = v98;
  sub_261CFCF94();
  v108(v52, v111);
  if (v50(v53, 1, v17) == 1)
  {
    sub_261AE6A40(v53, &qword_27FEDA428, &qword_261D02F28);
    v54 = 0xEE00656372756F73;
    v107 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v107 = sub_261B876C4();
    v54 = v55;
    (*(v106 + 8))(v53, v17);
  }

  v57 = v100;
  v56 = v101;
  v58 = v97;
  sub_261CFC754();
  sub_261CFCF64();
  v108(v58, v111);
  v59 = sub_261CFCF54();
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  if (v61(v57, 1, v59) == 1)
  {
    sub_261AE6A40(v57, &qword_27FEDA418, &qword_261D02F18);
    v106 = 0;
    v101 = 0;
  }

  else
  {
    v106 = sub_261CFCF44();
    v101 = v62;
    (*(v60 + 8))(v57, v59);
  }

  v63 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v108(v63, v111);
  if (v61(v56, 1, v59) == 1)
  {
    v64 = &qword_27FEDA418;
    v65 = &qword_261D02F18;
    v66 = v56;
  }

  else
  {
    v67 = v93;
    sub_261CFCF34();
    (*(v60 + 8))(v56, v59);
    v69 = v94;
    v68 = v95;
    if ((*(v94 + 48))(v67, 1, v95) != 1)
    {
      v75 = v91;
      (*(v69 + 16))(v91, v67, v68);
      v76 = (*(v69 + 88))(v75, v68);
      if (v76 == *MEMORY[0x277CBA0B8])
      {
        v71 = 0xEE0064726177726FLL;
        v70 = 0x4679616C70736964;
      }

      else if (v76 == *MEMORY[0x277CBA0A8])
      {
        v71 = 0xEB00000000796C6ELL;
        v70 = 0x4F79616C70736964;
      }

      else if (v76 == *MEMORY[0x277CBA0C0])
      {
        v71 = 0xE900000000000079;
        v70 = 0x6C6E4F6563696F76;
      }

      else if (v76 == *MEMORY[0x277CBA0B0])
      {
        v71 = 0xEC00000064726177;
        v70 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v75, v68);
        v71 = 0xE700000000000000;
        v70 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v67, v68);
      goto LABEL_30;
    }

    v64 = &qword_27FEDA410;
    v65 = &qword_261D02F10;
    v66 = v67;
  }

  sub_261AE6A40(v66, v64, v65);
  v70 = 0;
  v71 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v77 = sub_261CFF7A4();
  __swift_project_value_buffer(v77, qword_27FEDB1E0);
  sub_261CFD104();
  v78 = sub_261CFF784();
  v79 = sub_261CFFE84();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v112[0] = v81;
    *v80 = 136315394;
    *(v80 + 4) = sub_261B879C8(0xD00000000000001ELL, 0x8000000261D17390, v112);
    *(v80 + 12) = 2080;
    v82 = v107;
    *(v80 + 14) = sub_261B879C8(v107, v54, v112);
    _os_log_impl(&dword_261AE2000, v78, v79, "Posting Analytics: %s.%s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v81, -1, -1);
    MEMORY[0x26671D560](v80, -1, -1);
  }

  else
  {

    v82 = v107;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v83 = 0x8000000261D14240;
  v84 = 0xD000000000000011;
  if ((v102 & 1) == 0)
  {
    v84 = 0x704163696C627570;
    v83 = 0xEF746E65746E4970;
  }

  v86 = v103;
  v85 = v104;
  *v103 = 0xD00000000000001ELL;
  v86[1] = 0x8000000261D17390;
  v86[2] = v82;
  v86[3] = v54;
  v86[4] = v84;
  v86[5] = v83;
  v87 = v105;
  v88 = v101;
  v86[6] = v106;
  v86[7] = v88;
  v86[8] = v70;
  v86[9] = v71;
  (*(v85 + 104))(v86, *MEMORY[0x277D44E90], v87);
  sub_261CFED84();

  return (*(v85 + 8))(v86, v87);
}

uint64_t sub_261B2742C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B3145C();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000026, 0x8000000261D17360, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000026;
  v88[1] = 0x8000000261D17360;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B281F8(int a1)
{
  v106 = a1;
  v109 = sub_261CFED34();
  v108 = *(v109 - 8);
  v2 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v94[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = sub_261CFCF24();
  v99 = *(v110 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v110);
  v96 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v94[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v105 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v104 = &v94[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v97 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v94[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v94[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v111 = &v94[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v94[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v94[-v32];
  v34 = sub_261CFCFA4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v103 = &v94[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v101 = &v94[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v100 = &v94[-v42];
  MEMORY[0x28223BE20](v41);
  v44 = &v94[-v43];
  v45 = v1[11];
  v128 = v1[10];
  v129 = v45;
  v130 = v1[12];
  v131 = *(v1 + 26);
  v46 = v1[7];
  v124 = v1[6];
  v125 = v46;
  v47 = v1[9];
  v126 = v1[8];
  v127 = v47;
  v48 = v1[3];
  v120 = v1[2];
  v121 = v48;
  v49 = v1[5];
  v122 = v1[4];
  v123 = v49;
  v50 = v1[1];
  v118 = *v1;
  v119 = v50;
  v114 = sub_261B31408();
  sub_261CFC754();
  sub_261CFCF94();
  v51 = *(v35 + 8);
  v116 = v34;
  v115 = v35 + 8;
  v113 = v51;
  v51(v44, v34);
  (*(v15 + 104))(v31, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v52 = *(v19 + 56);
  sub_261AFB668(v33, v22, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v31, &v22[v52], &qword_27FEDA428, &qword_261D02F28);
  v112 = v15;
  v53 = *(v15 + 48);
  if (v53(v22, 1, v14) == 1)
  {
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
    if (v53(&v22[v52], 1, v14) == 1)
    {
      return sub_261AE6A40(v22, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  v55 = v111;
  sub_261AFB668(v22, v111, &qword_27FEDA428, &qword_261D02F28);
  if (v53(&v22[v52], 1, v14) == 1)
  {
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
    (*(v112 + 8))(v55, v14);
LABEL_6:
    sub_261AE6A40(v22, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v75 = v112;
  v76 = &v22[v52];
  v77 = v97;
  (*(v112 + 32))(v97, v76, v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v95 = sub_261CFF974();
  v78 = *(v75 + 8);
  v78(v77, v14);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
  v78(v111, v14);
  result = sub_261AE6A40(v22, &qword_27FEDA428, &qword_261D02F28);
  if (v95)
  {
    return result;
  }

LABEL_7:
  v56 = v100;
  sub_261CFC754();
  v57 = v102;
  sub_261CFCF94();
  v113(v56, v116);
  if (v53(v57, 1, v14) == 1)
  {
    sub_261AE6A40(v57, &qword_27FEDA428, &qword_261D02F28);
    v58 = 0xEE00656372756F73;
    v111 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v111 = sub_261B876C4();
    v58 = v59;
    (*(v112 + 8))(v57, v14);
  }

  v60 = v105;
  v61 = v104;
  v62 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v113(v62, v116);
  v63 = sub_261CFCF54();
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  if (v65(v61, 1, v63) == 1)
  {
    sub_261AE6A40(v61, &qword_27FEDA418, &qword_261D02F18);
    v112 = 0;
    v105 = 0;
  }

  else
  {
    v112 = sub_261CFCF44();
    v105 = v66;
    (*(v64 + 8))(v61, v63);
  }

  v67 = v103;
  sub_261CFC754();
  sub_261CFCF64();
  v113(v67, v116);
  if (v65(v60, 1, v63) == 1)
  {
    v68 = &qword_27FEDA418;
    v69 = &qword_261D02F18;
    v70 = v60;
  }

  else
  {
    v71 = v98;
    sub_261CFCF34();
    (*(v64 + 8))(v60, v63);
    v72 = v99;
    if ((*(v99 + 48))(v71, 1, v110) != 1)
    {
      v79 = v96;
      v80 = v110;
      (*(v72 + 16))(v96, v71, v110);
      v81 = (*(v72 + 88))(v79, v80);
      if (v81 == *MEMORY[0x277CBA0B8])
      {
        v74 = 0xEE0064726177726FLL;
        v73 = 0x4679616C70736964;
      }

      else if (v81 == *MEMORY[0x277CBA0A8])
      {
        v74 = 0xEB00000000796C6ELL;
        v73 = 0x4F79616C70736964;
      }

      else if (v81 == *MEMORY[0x277CBA0C0])
      {
        v74 = 0xE900000000000079;
        v73 = 0x6C6E4F6563696F76;
      }

      else if (v81 == *MEMORY[0x277CBA0B0])
      {
        v74 = 0xEC00000064726177;
        v73 = 0x726F466563696F76;
      }

      else
      {
        (*(v72 + 8))(v79, v110);
        v74 = 0xE700000000000000;
        v73 = 0x6E776F6E6B6E75;
      }

      (*(v72 + 8))(v71, v110);
      goto LABEL_30;
    }

    v68 = &qword_27FEDA410;
    v69 = &qword_261D02F10;
    v70 = v71;
  }

  sub_261AE6A40(v70, v68, v69);
  v73 = 0;
  v74 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v82 = sub_261CFF7A4();
  __swift_project_value_buffer(v82, qword_27FEDB1E0);
  sub_261CFD104();
  v83 = sub_261CFF784();
  v84 = sub_261CFFE84();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v117 = v86;
    *v85 = 136315394;
    *(v85 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D17340, &v117);
    *(v85 + 12) = 2080;
    v87 = v111;
    *(v85 + 14) = sub_261B879C8(v111, v58, &v117);
    _os_log_impl(&dword_261AE2000, v83, v84, "Posting Analytics: %s.%s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v86, -1, -1);
    MEMORY[0x26671D560](v85, -1, -1);
  }

  else
  {

    v87 = v111;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v88 = 0x8000000261D14240;
  v89 = 0xD000000000000011;
  if ((v106 & 1) == 0)
  {
    v89 = 0x704163696C627570;
    v88 = 0xEF746E65746E4970;
  }

  v90 = v107;
  *v107 = 0xD000000000000017;
  v90[1] = 0x8000000261D17340;
  v90[2] = v87;
  v90[3] = v58;
  v90[4] = v89;
  v90[5] = v88;
  v91 = v105;
  v90[6] = v112;
  v90[7] = v91;
  v90[8] = v73;
  v90[9] = v74;
  v92 = v108;
  v93 = v109;
  (*(v108 + 104))(v90, *MEMORY[0x277D44E90], v109);
  sub_261CFED84();

  return (*(v92 + 8))(v90, v93);
}

uint64_t sub_261B2912C(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B313B4();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000011, 0x8000000261D17320, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0x704163696C627570;
  if (v103)
  {
    v85 = 0xD000000000000011;
  }

  else
  {
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000011;
  v87[1] = 0x8000000261D17320;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B29ED0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B317F8();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D174F0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000018;
  v87[1] = 0x8000000261D174F0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B2AC8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31360();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000021, 0x8000000261D172F0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000021;
  v87[1] = 0x8000000261D172F0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B2BA48(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B3130C();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D172D0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000014;
  v87[1] = 0x8000000261D172D0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B2C804(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B312B8();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000019, 0x8000000261D172B0, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000019;
  v88[1] = 0x8000000261D172B0;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B2D5D0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B31264();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D17290, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000018;
  v88[1] = 0x8000000261D17290;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B2E39C()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDA370);
  __swift_project_value_buffer(v9, qword_27FEDA370);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9838 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionIsCollapsedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B2E944(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SectionEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B2EAD0(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B2EAD0(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v10);
}

uint64_t UpdateSectionIsCollapsedAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t sub_261B2EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B2EB34(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateSectionIsCollapsedAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSectionIsCollapsedAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B2EC5C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionIsCollapsedAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B2ED9C()
{
  result = swift_getKeyPath();
  qword_27FEDA388 = result;
  return result;
}

uint64_t static UpdateSectionIsCollapsedAppIntent.binding.getter()
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDA388 = a1;
}

uint64_t (*static UpdateSectionIsCollapsedAppIntent.binding.modify())()
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B2EF44@<X0>(void *a1@<X8>)
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDA388;
  return sub_261CFCDA4();
}

uint64_t sub_261B2EFC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9840;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDA388 = v1;
}

uint64_t UpdateSectionIsCollapsedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v51 - v3;
  v71 = sub_261CFD184();
  v74 = *(v71 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_261CFD674();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD884();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFFA44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFD6A4();
  v56 = v27;
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v66 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v65 = &v51 - v32;
  MEMORY[0x28223BE20](v31);
  v68 = &v51 - v33;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v36 = v19 + 104;
  v35 = *(v19 + 104);
  v53 = v18;
  v35(v22, v34, v18);
  v52 = v35;
  v54 = v36;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v22, v34, v18);
  v51 = v17;
  sub_261CFD6C4();
  v37 = *(v73 + 56);
  v73 += 56;
  v57 = v37;
  v37(v17, 0, 1, v27);
  v38 = type metadata accessor for SectionEntity();
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  v39 = sub_261CFC834();
  v62 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v61 = v41;
  v63 = v40 + 56;
  v41(v69, 1, 1, v39);
  v41(v64, 1, 1, v39);
  v59 = *MEMORY[0x277CBA308];
  v42 = *(v74 + 104);
  v74 += 104;
  v60 = v42;
  v42(v70);
  sub_261AE8268(&qword_280D224E0, type metadata accessor for SectionEntity);
  v43 = v51;
  *v72 = sub_261CFCC34();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v53;
  v45 = v52;
  v52(v22, v34, v53);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6C4();
  v57(v43, 0, 1, v56);
  v76 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  v46 = v67;
  sub_261CFFCD4();
  v47 = sub_261CFFCE4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v61(v69, 1, 1, v62);
  v60(v70, v59, v71);
  v48 = sub_261CFCD44();
  v49 = v72;
  v72[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v75 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v49[2] = result;
  return result;
}

uint64_t UpdateSectionIsCollapsedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 176) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 184) = v3;
  v4 = *(v3 - 8);
  *(v2 + 192) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300) - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v2 + 224) = v7;
  v8 = *(v7 - 8);
  *(v2 + 232) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  v10 = sub_261CFD754();
  *(v2 + 248) = v10;
  v11 = *(v10 - 8);
  *(v2 + 256) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v13 = type metadata accessor for SectionEntity();
  *(v2 + 280) = v13;
  v14 = *(v13 - 8);
  *(v2 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = *v1;
  *(v2 + 328) = *(v1 + 16);
  *(v2 + 336) = sub_261CFFD24();
  *(v2 + 344) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 352) = v17;
  *(v2 + 360) = v16;

  return MEMORY[0x2822009F8](sub_261B2FD50, v17, v16);
}

uint64_t sub_261B2FD50()
{
  v14 = v0;
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C6FD40(v5, v0 + 56, v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_261B2EB34(v5);
  v7 = v12[1];
  *(v0 + 16) = v12[0];
  *(v0 + 32) = v7;
  *(v0 + 48) = v13;
  sub_261B30804(v0 + 16, v0 + 96);
  sub_261CFCBB4();
  v8 = *(v0 + 40);
  *(v0 + 409) = *(v0 + 408);
  sub_261CFCBC4();
  sub_261B30860(v0 + 16);
  sub_261CFCBB4();
  sub_261BBEA50(2u, v6);
  sub_261B2EB34(v5);
  sub_261B0FF98(0, v4, v3, v2);
  *(v0 + 368) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v0 + 376) = v10;
  *(v0 + 384) = v9;

  return MEMORY[0x2822009F8](sub_261B2FEB4, v10, v9);
}

uint64_t sub_261B2FEB4()
{
  sub_261B30804(v0 + 16, v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_261B2FF7C;
  v2 = *(v0 + 240);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261B2FF7C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 376);
  if (v0)
  {
    v7 = sub_261B306A0;
  }

  else
  {
    v7 = sub_261B300B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B300B8()
{
  v1 = v0[46];

  v2 = v0[44];
  v3 = v0[45];

  return MEMORY[0x2822009F8](sub_261B3011C, v2, v3);
}

uint64_t sub_261B3011C()
{
  v50 = v0;
  v1 = v0[43];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];

  sub_261B01D28(&qword_27FEDA3B8, &qword_27FEDA3B0, &qword_261D02D00);
  sub_261CFC964();
  sub_261AFB668(v6, v7, &qword_27FEDA1E0, &unk_261D02300);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[31];
    sub_261AE6A40(v0[26], &qword_27FEDA1E0, &unk_261D02300);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    v48 = *(v9 + 8);
    v48(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v49);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 134;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD00000000000004CLL, 0x8000000261D171B0, v49);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[29];
    v30 = v0[30];
    v33 = v0[27];
    v32 = v0[28];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B30860((v0 + 2));
    sub_261AE6A40(v33, &qword_27FEDA1E0, &unk_261D02300);
    (*(v31 + 8))(v30, v32);
    v36 = v0[37];
    v35 = v0[38];
    v37 = v0[33];
    v38 = v0[30];
    v40 = v0[26];
    v39 = v0[27];
    v41 = v0[25];
    v48(v0[34], v0[31]);

    v29 = v0[1];
  }

  else
  {
    v20 = v0[37];
    v21 = v0[32];
    v22 = v0[33];
    v23 = v0[30];
    v43 = v0[31];
    v44 = v0[34];
    v47 = v0[35];
    v24 = v0[28];
    v25 = v0[29];
    v26 = v0[27];
    v27 = v0[24];
    v28 = v0[25];
    v45 = v0[22];
    v46 = v0[23];
    sub_261B30EB0(v0[26], v20);
    sub_261AE6A40(v26, &qword_27FEDA1E0, &unk_261D02300);
    (*(v25 + 8))(v23, v24);
    (*(v21 + 16))(v22, v44, v43);
    sub_261CFC9E4();
    sub_261AE8268(&qword_280D224D0, type metadata accessor for SectionEntity);
    sub_261AE8268(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B30860((v0 + 2));
    (*(v27 + 8))(v28, v46);
    sub_261B2EB34(v20);
    (*(v21 + 8))(v44, v43);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261B306A0()
{
  v1 = v0[46];

  v2 = v0[44];
  v3 = v0[45];

  return MEMORY[0x2822009F8](sub_261B30704, v2, v3);
}

uint64_t sub_261B30704()
{
  v1 = v0[43];
  v2 = v0[32];

  sub_261B30860((v0 + 2));
  v12 = v0[50];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[33];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  (*(v2 + 8))(v0[34], v0[31]);

  v10 = v0[1];

  return v10();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3C8, &qword_261D02D08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3D0, &qword_261D02D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B30F14();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3D8, &qword_261D02D40);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3E0, &unk_261D02D70);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B30ABC(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261B30B4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B30BC0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_261CFCBB4();
  *a1 = v5;
  return result;
}

uint64_t sub_261B30BFC(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*sub_261B30C34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B30CA8()
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B30D20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9838 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B30DD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSectionIsCollapsedAppIntent.perform()(a1);
}

uint64_t sub_261B30E74(uint64_t a1)
{
  v2 = sub_261B30F14();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B30EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261B30F14()
{
  result = qword_280D22BC8;
  if (!qword_280D22BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BC8);
  }

  return result;
}

unint64_t sub_261B30FB4()
{
  result = qword_280D22BC0;
  if (!qword_280D22BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BC0);
  }

  return result;
}

unint64_t sub_261B3100C()
{
  result = qword_280D22BD0;
  if (!qword_280D22BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BD0);
  }

  return result;
}

uint64_t destroy for UpdateSectionIsCollapsedAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *sub_261B310F4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateSectionIsCollapsedAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;
  sub_261CFCDA4();

  return a1;
}

uint64_t *assignWithTake for UpdateSectionIsCollapsedAppIntent(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateSectionIsCollapsedAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

unint64_t sub_261B31264()
{
  result = qword_27FEDA430;
  if (!qword_27FEDA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA430);
  }

  return result;
}

unint64_t sub_261B312B8()
{
  result = qword_27FEDA440;
  if (!qword_27FEDA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA440);
  }

  return result;
}

unint64_t sub_261B3130C()
{
  result = qword_27FEDA448;
  if (!qword_27FEDA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA448);
  }

  return result;
}

unint64_t sub_261B31360()
{
  result = qword_27FEDA450;
  if (!qword_27FEDA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA450);
  }

  return result;
}

unint64_t sub_261B313B4()
{
  result = qword_27FEDA458;
  if (!qword_27FEDA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA458);
  }

  return result;
}

unint64_t sub_261B31408()
{
  result = qword_27FEDA460;
  if (!qword_27FEDA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA460);
  }

  return result;
}

unint64_t sub_261B3145C()
{
  result = qword_27FEDA468;
  if (!qword_27FEDA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA468);
  }

  return result;
}

unint64_t sub_261B314B0()
{
  result = qword_27FEDA470;
  if (!qword_27FEDA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA470);
  }

  return result;
}

unint64_t sub_261B31504()
{
  result = qword_27FEDA478;
  if (!qword_27FEDA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA478);
  }

  return result;
}

unint64_t sub_261B31558()
{
  result = qword_27FEDA480;
  if (!qword_27FEDA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA480);
  }

  return result;
}

unint64_t sub_261B315AC()
{
  result = qword_27FEDA488;
  if (!qword_27FEDA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA488);
  }

  return result;
}

unint64_t sub_261B31600()
{
  result = qword_27FEDA490;
  if (!qword_27FEDA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA490);
  }

  return result;
}

unint64_t sub_261B31654()
{
  result = qword_27FEDA498;
  if (!qword_27FEDA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA498);
  }

  return result;
}

unint64_t sub_261B316A8()
{
  result = qword_27FEDA4A0;
  if (!qword_27FEDA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4A0);
  }

  return result;
}

unint64_t sub_261B316FC()
{
  result = qword_280D22BE0;
  if (!qword_280D22BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BE0);
  }

  return result;
}

unint64_t sub_261B31750()
{
  result = qword_27FEDA4A8;
  if (!qword_27FEDA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4A8);
  }

  return result;
}

unint64_t sub_261B317A4()
{
  result = qword_27FEDA4B0;
  if (!qword_27FEDA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4B0);
  }

  return result;
}

unint64_t sub_261B317F8()
{
  result = qword_27FEDA4B8;
  if (!qword_27FEDA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4B8);
  }

  return result;
}

unint64_t sub_261B3184C()
{
  result = qword_27FEDA4C0;
  if (!qword_27FEDA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4C0);
  }

  return result;
}

unint64_t sub_261B318A0()
{
  result = qword_27FEDA4C8;
  if (!qword_27FEDA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4C8);
  }

  return result;
}

unint64_t sub_261B318F4()
{
  result = qword_27FEDA4D0;
  if (!qword_27FEDA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4D0);
  }

  return result;
}

unint64_t sub_261B31948()
{
  result = qword_27FEDA4D8;
  if (!qword_27FEDA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4D8);
  }

  return result;
}

unint64_t sub_261B3199C()
{
  result = qword_27FEDA4E0;
  if (!qword_27FEDA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4E0);
  }

  return result;
}

unint64_t sub_261B319F0()
{
  result = qword_280D22CA0;
  if (!qword_280D22CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CA0);
  }

  return result;
}

unint64_t sub_261B31A44()
{
  result = qword_280D22C58;
  if (!qword_280D22C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C58);
  }

  return result;
}

unint64_t sub_261B31A98()
{
  result = qword_280D22C70;
  if (!qword_280D22C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C70);
  }

  return result;
}

unint64_t sub_261B31AEC()
{
  result = qword_280D22C40;
  if (!qword_280D22C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C40);
  }

  return result;
}

unint64_t sub_261B31B40()
{
  result = qword_280D22BF8;
  if (!qword_280D22BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BF8);
  }

  return result;
}

unint64_t sub_261B31B94()
{
  result = qword_280D22D68;
  if (!qword_280D22D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D68);
  }

  return result;
}

unint64_t sub_261B31BE8()
{
  result = qword_280D22C10;
  if (!qword_280D22C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C10);
  }

  return result;
}

unint64_t sub_261B31C3C()
{
  result = qword_280D22C88;
  if (!qword_280D22C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C88);
  }

  return result;
}

unint64_t sub_261B31C90()
{
  result = qword_280D22C28;
  if (!qword_280D22C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C28);
  }

  return result;
}

unint64_t sub_261B31CE4()
{
  result = qword_27FEDA4E8;
  if (!qword_27FEDA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4E8);
  }

  return result;
}

unint64_t sub_261B31D38()
{
  result = qword_27FEDA4F0;
  if (!qword_27FEDA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4F0);
  }

  return result;
}

uint64_t CompleteRemindersAppIntent.reminders.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t (*CompleteRemindersAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CompleteRemindersAppIntent.isCompleted.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*CompleteRemindersAppIntent.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t CompleteRemindersAppIntent.completeSubtasks.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B31FC4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*CompleteRemindersAppIntent.completeSubtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B32114()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDA4F8);
  __swift_project_value_buffer(v9, qword_27FEDA4F8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CompleteRemindersAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9848 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA4F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CompleteRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = v49 - v3;
  v4 = sub_261CFD184();
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v49 - v16;
  v66 = sub_261CFD674();
  v18 = *(v66 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v66);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_261CFFA44();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = sub_261CFD6A4();
  v63 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v65 = *MEMORY[0x277CC9110];
  v31 = *(v18 + 104);
  v64 = v18 + 104;
  v67 = v31;
  v56 = v21;
  v31(v21);
  sub_261CFD6C4();
  v32 = *(v29 + 56);
  v62 = v29 + 56;
  v32(v17, 1, 1, v28);
  v52 = v32;
  v73 = 0;
  v33 = sub_261CFC834();
  v57 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v53 = v35;
  v59 = v34 + 56;
  v36 = v54;
  v35(v54, 1, 1, v33);
  v35(v12, 1, 1, v33);
  v61 = *MEMORY[0x277CBA308];
  v37 = *(v71 + 104);
  v71 += 104;
  v60 = v37;
  v37(v68);
  sub_261B32BE4();
  v38 = sub_261CFCC34();
  v39 = v69;
  *v69 = v38;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  v49[1] = v25;
  sub_261CFD874();
  v67(v56, v65, v66);
  sub_261CFD6C4();
  v40 = v17;
  v32(v17, 1, 1, v63);
  LOBYTE(v73) = 2;
  v41 = sub_261CFFCE4();
  v42 = *(v41 - 8);
  v50 = *(v42 + 56);
  v51 = v42 + 56;
  v43 = v55;
  v50(v55, 1, 1, v41);
  v44 = v53;
  v53(v36, 1, 1, v57);
  v45 = v68;
  v60(v68, v61, v70);
  v39[1] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v67(v56, v65, v66);
  sub_261CFD6C4();
  v52(v40, 1, 1, v63);
  LOBYTE(v73) = 2;
  v50(v43, 1, 1, v41);
  v44(v36, 1, 1, v57);
  v60(v45, v61, v70);
  v46 = sub_261CFCD44();
  v47 = v69;
  v69[2] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA518, &qword_261D02F78);
  v72 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v47[3] = result;
  return result;
}

unint64_t sub_261B32BE4()
{
  result = qword_280D22358;
  if (!qword_280D22358)
  {
    type metadata accessor for ReminderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22358);
  }

  return result;
}

uint64_t CompleteRemindersAppIntent.init(reminders:isCompleted:completeSubtasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v64 = a2;
  v63 = a1;
  v79 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = v54 - v6;
  v7 = sub_261CFD184();
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v69 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v54 - v18;
  v76 = sub_261CFD674();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v76);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFD884();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_261CFFA44();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_261CFD6A4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v74 = *MEMORY[0x277CC9110];
  v35 = *(v20 + 104);
  v75 = v20 + 104;
  v77 = v35;
  v66 = v23;
  v35(v23);
  sub_261CFD6C4();
  v36 = *(v33 + 56);
  v72 = v33 + 56;
  v73 = v36;
  v37 = v32;
  v57 = v32;
  v36(v19, 1, 1, v32);
  v83 = 0;
  v38 = sub_261CFC834();
  v67 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v58 = v40;
  v68 = v39 + 56;
  v41 = v60;
  v40(v60, 1, 1, v38);
  v40(v69, 1, 1, v38);
  v70 = *MEMORY[0x277CBA308];
  v42 = *(v81 + 104);
  v81 += 104;
  v71 = v42;
  v42(v78);
  sub_261B32BE4();
  v61 = sub_261CFCC34();
  v43 = v79;
  *v79 = v61;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  v54[0] = v31;
  sub_261CFF9B4();
  v54[1] = v27;
  sub_261CFD874();
  v77(v66, v74, v76);
  sub_261CFD6C4();
  v44 = v19;
  v73(v19, 1, 1, v37);
  LOBYTE(v83) = 2;
  v45 = sub_261CFFCE4();
  v46 = *(v45 - 8);
  v55 = *(v46 + 56);
  v56 = v46 + 56;
  v47 = v62;
  v55(v62, 1, 1, v45);
  v48 = v41;
  v49 = v58;
  v58(v41, 1, 1, v67);
  v50 = v78;
  v71(v78, v70, v80);
  v59 = sub_261CFCD44();
  v43[1] = v59;
  sub_261CFF9B4();
  sub_261CFD874();
  v77(v66, v74, v76);
  sub_261CFD6C4();
  v73(v44, 1, 1, v57);
  LOBYTE(v83) = 2;
  v55(v47, 1, 1, v45);
  v49(v48, 1, 1, v67);
  v71(v50, v70, v80);
  v51 = sub_261CFCD44();
  v52 = v79;
  v79[2] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA518, &qword_261D02F78);
  v82 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v52[3] = sub_261CFC684();
  v83 = v63;
  sub_261CFCBC4();
  LOBYTE(v83) = v64;
  sub_261CFCBC4();
  LOBYTE(v83) = v65;
  return sub_261CFCBC4();
}

uint64_t CompleteRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B335D0, v5, v4);
}

uint64_t sub_261B335D0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C54A98)(v10, "CompleteRemindersAppIntent", 26, 2, v8, v9, v6, v7);
}

uint64_t sub_261B336C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261B33764, v7, v6);
}

uint64_t sub_261B33764()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B10D54(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_261B06CB8;
  v10 = v0[11];

  return (v12)(v10, v0 + 7, v5, v6);
}

uint64_t static CompleteRemindersAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDA510 = a1;
  return result;
}

unint64_t sub_261B339D0()
{
  result = qword_27FEDA520;
  if (!qword_27FEDA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA520);
  }

  return result;
}

unint64_t sub_261B33A28()
{
  result = qword_27FEDA528;
  if (!qword_27FEDA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA528);
  }

  return result;
}

uint64_t sub_261B33B00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9848 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA4F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B33BF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B33C94, v5, v4);
}

uint64_t sub_261B33C94()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C54A98)(v10, "CompleteRemindersAppIntent", 26, 2, v8, v9, v6, v7);
}

uint64_t sub_261B33D8C(uint64_t a1)
{
  v2 = sub_261B31D38();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CompleteRemindersIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_261B33F0C()
{
  result = qword_27FEDA530;
  if (!qword_27FEDA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA538, &qword_261D030D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA530);
  }

  return result;
}

uint64_t sub_261B33F70()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA540);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA540);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.entities(query:for:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v4 = type metadata accessor for AppEntityID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B34124, 0, 0);
}

{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_261B3C288, 0, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v3[3] = a2;
  v3[4] = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for GroupEntity();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for AppEntityID();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BA0D00, 0, 0);
}

{
  v3[2] = a2;
  v3[3] = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = type metadata accessor for ReminderEntity();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for AppEntityID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD6A84, 0, 0);
}

{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return sub_261BE0BE8(a2);
}

{
  v3[2] = a2;
  v3[3] = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = type metadata accessor for SectionEntity();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for SectionEntityID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for AppEntityID();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C68028, 0, 0);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261B4276C;

  return (sub_261C89DEC)(a1, a2);
}

uint64_t sub_261B34124()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDA540);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80[0] = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x26671C340](v6, v5);
    v11 = sub_261B879C8(v9, v10, v80);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_261AE2000, v3, v4, "[ListEntityListQueryPerforming] Query list or custom smart list with identifiers %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v12 = v0[4];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v0[7];
    v77 = v0[6];
    v78 = v0[8];
    v80[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v16 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      v18 = v0[8];
      sub_261B01DC4(v16, v18, type metadata accessor for AppEntityID);
      v19 = *(v77 + 20);
      v20 = *v18;
      v21 = *(v78 + 8);
      v22 = objc_allocWithZone(MEMORY[0x277D44700]);
      v23 = sub_261CFD814();
      v24 = sub_261CFFA54();
      [v22 initWithUUID:v23 entityName:v24];

      sub_261B3B9DC(v18, type metadata accessor for AppEntityID);
      sub_261D00374();
      v25 = *(v80[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v16 += v17;
      --v13;
    }

    while (v13);
    v14 = v80[0];
  }

  v26 = sub_261B3B11C(v14);

  v79 = MEMORY[0x277D84F98];
  v27 = [objc_opt_self() cdEntityName];
  v28 = sub_261CFFA74();
  v30 = v29;

  if (!*(v26 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v31 = sub_261B37CE8(v28, v30);
  v33 = v32;

  if (v33)
  {
    v34 = *(*(v26 + 56) + 8 * v31);
    v35 = *(v0[5] + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    sub_261CFD104();
    v36 = sub_261CFFC54();

    v0[3] = 0;
    v37 = [v35 fetchListsWithObjectIDs:v36 error:v0 + 3];

    v38 = v0[3];
    if (!v37)
    {
      v71 = v38;

      sub_261CFD654();

      goto LABEL_37;
    }

    sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
    sub_261B3B918();
    v39 = sub_261CFF8F4();
    v40 = v38;

    sub_261B34BA4(v39, &qword_27FEDB0E0, 0x277D44660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
    sub_261CFF904();
    goto LABEL_13;
  }

LABEL_14:
  v41 = [objc_opt_self() cdEntityName];
  v42 = sub_261CFFA74();
  v44 = v43;

  if (!*(v26 + 16))
  {

LABEL_29:

    goto LABEL_30;
  }

  sub_261B37CE8(v42, v44);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
LABEL_30:
    v63 = v0[4];
    v64 = v0[5];
    sub_261CFCDA4();
    v65 = sub_261B3B638(v63, &v79, v64);
    v66 = v0[8];
    v67 = v0[5];

    v68 = v0[1];
    v69 = *MEMORY[0x277D85DE8];

    return v68(v65);
  }

  v47 = *(v0[5] + 16);
  v0[2] = 0;
  v48 = [v47 fetchCustomSmartListsWithError_];
  v49 = v0[2];
  if (v48)
  {
    v50 = v48;
    sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
    v51 = sub_261CFFC64();
    v52 = v49;

    if (v51 >> 62)
    {
      v53 = sub_261D00274();
      if (v53)
      {
LABEL_19:
        v80[0] = MEMORY[0x277D84F90];
        sub_261B3A004(0, v53 & ~(v53 >> 63), 0);
        if (v53 < 0)
        {
          __break(1u);
        }

        v54 = 0;
        v55 = v80[0];
        do
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x26671CA10](v54, v51);
          }

          else
          {
            v56 = *(v51 + 8 * v54 + 32);
          }

          v57 = v56;
          v58 = [v56 objectID];
          v80[0] = v55;
          v60 = *(v55 + 16);
          v59 = *(v55 + 24);
          if (v60 >= v59 >> 1)
          {
            v62 = v58;
            sub_261B3A004((v59 > 1), v60 + 1, 1);
            v58 = v62;
            v55 = v80[0];
          }

          ++v54;
          *(v55 + 16) = v60 + 1;
          v61 = v55 + 16 * v60;
          *(v61 + 32) = v58;
          *(v61 + 40) = v57;
        }

        while (v53 != v54);

        if (*(v55 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_19;
      }
    }

    v55 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_35:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA560, &qword_261D03108);
      v72 = sub_261D00544();
LABEL_43:
      v80[0] = v72;
      sub_261B3B3B0(v55, 1, v80);

      sub_261B34BA4(v80[0], &unk_27FEDB000, 0x277D447F8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
      sub_261CFF904();
      goto LABEL_29;
    }

LABEL_42:
    v72 = MEMORY[0x277D84F98];
    goto LABEL_43;
  }

  v73 = v49;
  sub_261CFD654();

LABEL_37:
  swift_willThrow();
  v74 = v0[8];

  v75 = v0[1];
  v76 = *MEMORY[0x277D85DE8];

  return v75();
}

uint64_t sub_261B34990(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6E0, &qword_261D03278);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v20 = MEMORY[0x277D84F90];
  sub_261B3A024(0, v9, 0);
  v10 = v20;
  v11 = *(sub_261CFEFD4() - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17[1] = v5 + 32;
  v13 = *(v11 + 72);
  while (1)
  {
    sub_261B3663C(v12, v19, v8);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v20 = v10;
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_261B3A024(v14 > 1, v15 + 1, 1);
      v10 = v20;
    }

    *(v10 + 16) = v15 + 1;
    (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v18);
    v12 += v13;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261B34BA4(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!sub_261D00274())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
  v5 = sub_261D00544();
LABEL_6:
  if (sub_261B05020(0, &qword_280D21DF0, 0x277D44700) != MEMORY[0x277D837D0])
  {
    if (v4)
    {
      v6 = sub_261D00424();
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v6 | 0x8000000000000000;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v8 = ~v16;
      v7 = a1 + 64;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v9 = v18 & *(a1 + 64);
      v10 = a1;
    }

    v19 = (v8 + 64) >> 6;
    v20 = v5 + 64;
    sub_261CFCDA4();
    result = sub_261CFD104();
    v22 = 0;
    for (i = v10; ; v10 = i)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v33 = sub_261D004B4();
        if (!v33)
        {
          goto LABEL_61;
        }

        v69 = v33;
        swift_dynamicCast();
        sub_261B05020(0, a2, a3);
        swift_dynamicCast();
        v32 = v69;
        v31 = v71;
        v25 = v22;
        v27 = v9;
        if (!v71)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v24 = v9;
        v25 = v22;
        if (!v9)
        {
          v26 = v22;
          while (1)
          {
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v25 >= v19)
            {
              goto LABEL_61;
            }

            v24 = *(v7 + 8 * v25);
            ++v26;
            if (v24)
            {
              v10 = i;
              goto LABEL_25;
            }
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_25:
        v27 = (v24 - 1) & v24;
        v28 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
        v29 = *(*(v10 + 48) + v28);
        v30 = *(*(v10 + 56) + v28);
        v31 = v29;
        v32 = v30;
        if (!v31)
        {
          goto LABEL_61;
        }
      }

      v34 = *(v5 + 40);
      result = sub_261D000E4();
      v35 = -1 << *(v5 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        do
        {
          if (++v37 == v39 && (v38 & 1) != 0)
          {
            __break(1u);
            goto LABEL_64;
          }

          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
        }

        while (v41 == -1);
        v23 = __clz(__rbit64(~v41)) + (v37 << 6);
      }

      *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v5 + 48) + 8 * v23) = v31;
      *(*(v5 + 56) + 8 * v23) = v32;
      ++*(v5 + 16);
      v22 = v25;
      v9 = v27;
    }
  }

  if (v4)
  {
    v11 = sub_261D00424();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v11 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(a1 + 32);
    v13 = ~v42;
    v12 = a1 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v14 = v44 & *(a1 + 64);
    v15 = a1;
  }

  v45 = (v13 + 64) >> 6;
  sub_261CFCDA4();
  result = sub_261CFD104();
  v46 = 0;
  for (j = v15; ; v15 = j)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      v60 = sub_261D004B4();
      if (!v60)
      {
        goto LABEL_61;
      }

      v70 = v60;
      swift_dynamicCast();
      sub_261B05020(0, a2, a3);
      swift_dynamicCast();
      v59 = v70;
      v58 = v71;
      v53 = v46;
      v55 = v14;
      if (!v71)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v52 = v14;
      v53 = v46;
      if (!v14)
      {
        v54 = v46;
        while (1)
        {
          v53 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_65;
          }

          if (v53 >= v45)
          {
            break;
          }

          v52 = *(v12 + 8 * v53);
          ++v54;
          if (v52)
          {
            v15 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        sub_261AE6F74();

        return v5;
      }

LABEL_53:
      v55 = (v52 - 1) & v52;
      v56 = (v53 << 9) | (8 * __clz(__rbit64(v52)));
      v57 = *(*(v15 + 56) + v56);
      v58 = *(*(v15 + 48) + v56);
      v59 = v57;
      if (!v58)
      {
        goto LABEL_61;
      }
    }

    result = sub_261B37CA4(v58);
    if (v61)
    {
      v47 = *(v5 + 48);
      v48 = *(v47 + 8 * result);
      *(v47 + 8 * result) = v58;
      v49 = result;

      v50 = *(v5 + 56);
      v51 = *(v50 + 8 * v49);
      *(v50 + 8 * v49) = v59;
      result = swift_unknownObjectRelease();
      goto LABEL_45;
    }

    if (*(v5 + 16) >= *(v5 + 24))
    {
      goto LABEL_66;
    }

    *(v5 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v5 + 48) + 8 * result) = v58;
    *(*(v5 + 56) + 8 * result) = v59;
    v62 = *(v5 + 16);
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      break;
    }

    *(v5 + 16) = v64;
LABEL_45:
    v46 = v53;
    v14 = v55;
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_261B35144(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v76 = a3;
  v79 = a4;
  v82[1] = *MEMORY[0x277D85DE8];
  v80 = type metadata accessor for ListEntity();
  v78 = *(v80 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(type metadata accessor for AppEntityID() + 20);
  v8 = *a1;
  v9 = a1[1];
  v10 = objc_allocWithZone(MEMORY[0x277D44700]);
  v11 = sub_261CFD814();
  v12 = sub_261CFFA54();
  v13 = [v10 initWithUUID:v11 entityName:v12];

  v14 = objc_allocWithZone(MEMORY[0x277D44700]);
  v15 = sub_261CFD814();
  v16 = sub_261CFFA54();
  v17 = [v14 initWithUUID:v15 entityName:v16];

  v18 = sub_261CADDC8(v17, *v81);
  if (v18)
  {
    v19 = [v13 entityName];
    v20 = sub_261CFFA74();
    v22 = v21;

    v23 = [objc_opt_self() cdEntityName];
    v24 = sub_261CFFA74();
    v26 = v25;

    if (v24 == v20 && v26 == v22)
    {
    }

    else
    {
      v34 = sub_261D00614();

      if ((v34 & 1) == 0)
      {
        v52 = [objc_opt_self() cdEntityName];
        v53 = sub_261CFFA74();
        v55 = v54;

        if (v53 == v20 && v55 == v22)
        {
        }

        else
        {
          v59 = sub_261D00614();

          if ((v59 & 1) == 0)
          {
            if (qword_27FED9850 != -1)
            {
              swift_once();
            }

            v68 = sub_261CFF7A4();
            __swift_project_value_buffer(v68, qword_27FEDA540);
            v45 = v13;
            v46 = sub_261CFF784();
            v47 = sub_261CFFE74();

            if (!os_log_type_enabled(v46, v47))
            {
              goto LABEL_44;
            }

            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138543362;
            *(v48 + 4) = v45;
            *v49 = v45;
            v69 = v45;
            v51 = "[ListEntityListQueryPerforming] Unknown list entity type: %{public}@";
            goto LABEL_43;
          }
        }

        objc_opt_self();
        v60 = swift_dynamicCastObjCClass();
        if (v60)
        {
          v61 = v60;
          swift_unknownObjectRetain();
          v62 = [v61 customContext];
          if (v62)
          {

            v63 = [v61 parentListID];
            if (v63)
            {
              v64 = v63;
              v65 = *(v76 + 16);
              v82[0] = 0;
              v66 = [v65 fetchListWithObjectID:v64 error:v82];
              v67 = v82[0];
              v56 = v77;
              if (!v66)
              {
                v74 = v67;
                swift_unknownObjectRelease();
                sub_261CFD654();

                swift_willThrow();
                swift_unknownObjectRelease();

                goto LABEL_45;
              }
            }

            else
            {
              v66 = 0;
              v56 = v77;
            }

            sub_261B750A0(v61, v66, v56);
            goto LABEL_25;
          }

          swift_unknownObjectRelease();
        }

        if (qword_27FED9850 != -1)
        {
          swift_once();
        }

        v70 = sub_261CFF7A4();
        __swift_project_value_buffer(v70, qword_27FEDA540);
        v45 = v13;
        v46 = sub_261CFF784();
        v47 = sub_261CFFE74();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138543362;
          *(v48 + 4) = v45;
          *v49 = v45;
          v71 = v45;
          v51 = "[ListEntityListQueryPerforming] Should not happen that the smartList fetched with a smartList ID not being a CSL: %{public}@";
          goto LABEL_43;
        }

LABEL_44:

        sub_261B01D70();
        swift_allocError();
        *v72 = 20;
        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_45;
      }
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      swift_unknownObjectRetain();
      if ([v36 isGroup])
      {
        swift_unknownObjectRelease();
        if (qword_27FED9850 != -1)
        {
          swift_once();
        }

        v37 = sub_261CFF7A4();
        __swift_project_value_buffer(v37, qword_27FEDA540);
        v38 = v13;
        v39 = sub_261CFF784();
        v40 = sub_261CFFE64();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138543362;
          *(v41 + 4) = v38;
          *v42 = v38;
          v43 = v38;
          _os_log_impl(&dword_261AE2000, v39, v40, "[ListEntityListQueryPerforming] Attempt to create ListEntity from a group: %{public}@. This is not permitted because we have GroupEntity.", v41, 0xCu);
          sub_261AE6A40(v42, &unk_27FEDA730, &unk_261D035C0);
          MEMORY[0x26671D560](v42, -1, -1);
          MEMORY[0x26671D560](v41, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v78 + 56))(v79, 1, 1, v80);
        goto LABEL_45;
      }

      v56 = v77;
      sub_261B73240(v36, v77);
LABEL_25:

      swift_unknownObjectRelease();
      v57 = v56;
      v58 = v79;
      sub_261B01E2C(v57, v79);
      (*(v78 + 56))(v58, 0, 1, v80);
      goto LABEL_45;
    }

    if (qword_27FED9850 != -1)
    {
      swift_once();
    }

    v44 = sub_261CFF7A4();
    __swift_project_value_buffer(v44, qword_27FEDA540);
    v45 = v13;
    v46 = sub_261CFF784();
    v47 = sub_261CFFE74();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      v51 = "[ListEntityListQueryPerforming] Should not happen that the list fetched with a list ID not being a REMList: %{public}@";
LABEL_43:
      _os_log_impl(&dword_261AE2000, v46, v47, v51, v48, 0xCu);
      sub_261AE6A40(v49, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v49, -1, -1);
      MEMORY[0x26671D560](v48, -1, -1);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v27 = sub_261CFF7A4();
  __swift_project_value_buffer(v27, qword_27FEDA540);
  v28 = v13;
  v29 = sub_261CFF784();
  v30 = sub_261CFFE64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_261AE2000, v29, v30, "[ListEntityListQueryPerforming] Could not fetch list with %{public}@", v31, 0xCu);
    sub_261AE6A40(v32, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v32, -1, -1);
    MEMORY[0x26671D560](v31, -1, -1);
    v28 = v29;
    v29 = v33;
  }

  (*(v78 + 56))(v79, 1, 1, v80);
LABEL_45:
  v73 = *MEMORY[0x277D85DE8];
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_261B35B74, 0, 0);
}

{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v7 = sub_261CFEFD4();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BA1D0C, 0, 0);
}

{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_261C6A314, 0, 0);
}

uint64_t sub_261B35B74()
{
  v19 = v0;
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDA540);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_261B879C8(v6, v5, &v16);
    _os_log_impl(&dword_261AE2000, v3, v4, "[ListEntityListQueryPerforming] Query list or custom smart list matching string %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[2];
  v16 = v0[3];
  v17 = v11;
  v18 = 0;
  v13 = *(v9 + 16);
  sub_261CFD104();
  sub_261B35D44(&v16, v12);
  sub_261B3B980(v16, v17, v18);
  v14 = v0[1];

  return v14();
}

uint64_t sub_261B35D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = v34 - v7;
  v8 = sub_261CFEFD4();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = v34 - v12;
  v46 = 0;
  v14 = *a1;
  v13 = a1[1];
  v15 = *(a1 + 16);
  v47 = 0;
  if (v15)
  {
    v36 = 0;
  }

  else
  {
    v46 = v14;
    v47 = v13;
    v36 = v13;
    sub_261CFD104();
    LOBYTE(v14) = 3;
  }

  sub_261CFEFE4();
  result = sub_261CFEF54();
  if (v2)
  {
  }

  v17 = result;
  v34[1] = 0;
  v34[2] = a2;
  v41 = *(result + 16);
  if (!v41)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_22:

    sub_261B34990(v19, &v46);

    v33 = sub_261CFD6A4();
    (*(*(v33 - 8) + 56))(v35, 1, 1, v33);
    type metadata accessor for ListEntity();
    sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261CFCFC4();
  }

  v18 = 0;
  v40 = v42 + 16;
  v37 = (v42 + 8);
  v43 = (v42 + 32);
  v19 = MEMORY[0x277D84F90];
  v20 = v14;
  v39 = v8;
  v38 = v14;
  while (v18 < *(v17 + 16))
  {
    v21 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v22 = *(v42 + 72);
    (*(v42 + 16))(v45, v17 + v21 + v22 * v18, v8);
    if (v20 > 1)
    {
      if (v20 != 2 || (v25 = sub_261CFEF84(), v26 = [v25 capabilities], v25, LOBYTE(v25) = objc_msgSend(v26, sel_supportsSections), v26, (v25 & 1) != 0))
      {
LABEL_16:
        v27 = v17;
        v28 = *v43;
        (*v43)(v44, v45, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261B3A064(0, *(v19 + 16) + 1, 1);
          v19 = v48;
        }

        v31 = *(v19 + 16);
        v30 = *(v19 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_261B3A064(v30 > 1, v31 + 1, 1);
          v19 = v48;
        }

        *(v19 + 16) = v31 + 1;
        v32 = v19 + v21 + v31 * v22;
        v8 = v39;
        result = (v28)(v32, v44, v39);
        v17 = v27;
        v20 = v38;
        goto LABEL_8;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_16;
      }

      v23 = sub_261CFEF84();
      v24 = [v23 capabilities];

      LODWORD(v23) = [v24 supportsGroups];
      if (v23)
      {
        goto LABEL_16;
      }
    }

    result = (*v37)(v45, v8);
LABEL_8:
    if (v41 == ++v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:criteria:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = *v3;
  *(v4 + 40) = *a3;
  return MEMORY[0x2822009F8](sub_261B36214, 0, 0);
}

uint64_t sub_261B36214()
{
  v14 = v0;
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query suggested lists & custom smart lists", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);

  v12[0] = v5;
  v12[1] = 0;
  v13 = 1;
  v9 = *(v7 + 16);
  sub_261B35D44(v12, v8);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t REMStoreIntentPerformer.defaultListEntity(query:criteria:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  *(v4 + 40) = *a3;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B36404, 0, 0);
}

uint64_t sub_261B36404()
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query default list", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 32);

  v7 = *(v6 + 16);
  *(v0 + 16) = 0;
  if ((v5 - 1) > 1)
  {
    v8 = [v7 fetchDefaultListWithError_];
  }

  else
  {
    v8 = [v7 fetchDefaultListRequiringCloudKitWithError_];
  }

  v9 = v8;
  v10 = v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v11;

    swift_willThrow();
    v12 = *(v0 + 8);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (v9)
    {
      sub_261B73240(v9, *(v0 + 24));
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(v0 + 24);
    v16 = type metadata accessor for ListEntity();
    (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
    v12 = *(v0 + 8);
    v17 = *MEMORY[0x277D85DE8];
  }

  return v12();
}

uint64_t sub_261B3663C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v43 - v12;
  v54 = type metadata accessor for ListEntity();
  v56 = *(v54 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v54);
  v50 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = v43 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F8, &qword_261D03288);
  v17 = *(v48 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v48);
  v20 = v43 - v19;
  v47 = sub_261CFD6A4();
  v21 = *(v47 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v47);
  v53 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFEF94();
  v25 = sub_261B37650(v24, a2);

  v26 = *(v25 + 16);
  if (v26)
  {
    v43[2] = v3;
    v43[3] = a1;
    v43[4] = a3;
    v57 = MEMORY[0x277D84F90];
    sub_261B3A0A8(0, v26, 0);
    v27 = v57;
    v28 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v43[1] = v25;
    v29 = v25 + v28;
    v30 = *(v56 + 72);
    v44 = (v21 + 56);
    v45 = v30;
    v43[5] = v17 + 32;
    v46 = v17;
    v31 = v51;
    do
    {
      v55 = v26;
      v56 = v27;
      v32 = v49;
      sub_261B01DC4(v29, v49, type metadata accessor for ListEntity);
      sub_261B01DC4(v32, v50, type metadata accessor for ListEntity);
      v33 = *(v32 + *(v54 + 24));
      sub_261CFCA04();
      sub_261CFD664();
      (*v44)(v31, 1, 1, v47);
      v34 = sub_261CFD074();
      (*(*(v34 - 8) + 56))(v52, 1, 1, v34);
      sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity);
      sub_261CFC7F4();
      v35 = v32;
      v27 = v56;
      sub_261B3B9DC(v35, type metadata accessor for ListEntity);
      v57 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_261B3A0A8(v36 > 1, v37 + 1, 1);
        v27 = v57;
      }

      *(v27 + 16) = v37 + 1;
      (*(v46 + 32))(v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37, v20, v48);
      v29 += v45;
      v26 = v55 - 1;
    }

    while (v55 != 1);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v38 = sub_261CFEF84();
  v39 = [v38 displayName];

  sub_261CFFA74();
  v40 = v53;
  sub_261CFD664();
  v41 = sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity);
  return MEMORY[0x2667195E0](v40, v27, v54, v41);
}

uint64_t *sub_261B36BD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a3;
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v60 - v6;
  v77 = sub_261CFEF64();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v77);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_261CFEFA4();
  v62 = *(v63 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ListEntity();
  v78 = *(v73 - 8);
  v13 = *(v78 + 64);
  v14 = MEMORY[0x28223BE20](v73);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v60 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v76 = (&v60 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = (&v60 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v60 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v60 - v26);
  v28 = sub_261CFEF74();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (&v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = MEMORY[0x277D84F90];
  (*(v29 + 16))(v32, v71, v28);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == *MEMORY[0x277D452F8])
  {
    (*(v29 + 96))(v32, v28);
    v34 = *v32;
    sub_261B73240(v34, v27);
    v35 = sub_261B419E8(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = v35[2];
    v36 = v35[3];
    v37 = v10 + 1;
    if (v10 >= v36 >> 1)
    {
      goto LABEL_45;
    }

    while (1)
    {

      v35[2] = v37;
      v38 = v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v10;
      v39 = v27;
LABEL_8:
      sub_261B01E2C(v39, v38);
      v84 = v35;
      result = *(a2 + 8);
      if (!result)
      {
        break;
      }

LABEL_29:
      v71 = *a2;
      v50 = v35[2];
      v75 = result;
      sub_261CFD104();
      v70 = v50;
      if (!v50)
      {
        v34 = MEMORY[0x277D84F90];
LABEL_41:

        v35 = v34;
        break;
      }

      v51 = 0;
      v34 = MEMORY[0x277D84F90];
      v69 = v35;
      while (1)
      {
        v36 = v35[2];
        if (v51 >= v36)
        {
          break;
        }

        v77 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v76 = *(v78 + 72);
        sub_261B01DC4(v35 + v77 + v76 * v51, v18, type metadata accessor for ListEntity);
        v52 = *(v18 + *(v73 + 24));
        sub_261CFCA04();
        v53 = v74;
        sub_261CFD874();
        v54 = sub_261CFD884();
        (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        a2 = sub_261B3BA3C();
        v27 = MEMORY[0x277D837D0];
        v55 = sub_261D00194();
        v10 = v18;
        v57 = v56;
        sub_261AE6A40(v53, &qword_27FEDA708, &qword_261D03298);

        v81 = v55;
        v82 = v57;
        v79 = v71;
        v80 = v75;
        v37 = sub_261D00184();

        if (v37)
        {
          sub_261B01E2C(v10, v72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83[0] = v34;
          v18 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = v83;
            sub_261B3A0E8(0, *(v34 + 2) + 1, 1);
            v34 = v83[0];
          }

          v35 = v69;
          a2 = *(v34 + 2);
          v59 = *(v34 + 3);
          if (a2 >= v59 >> 1)
          {
            v37 = v83;
            sub_261B3A0E8(v59 > 1, a2 + 1, 1);
            v34 = v83[0];
          }

          *(v34 + 2) = a2 + 1;
          sub_261B01E2C(v72, &v34[v77 + a2 * v76]);
        }

        else
        {
          sub_261B3B9DC(v10, type metadata accessor for ListEntity);
          v18 = v10;
          v35 = v69;
        }

        if (v70 == ++v51)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v35 = sub_261B419E8(v36 > 1, v37, 1, v35);
    }

LABEL_42:
    *v64 = v35;
    return result;
  }

  if (v33 == *MEMORY[0x277D452F0])
  {
    (*(v29 + 96))(v32, v28);
    v37 = *v32;
    sub_261B750A0(v37, 0, v25);
    v35 = sub_261B419E8(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = v35[2];
    v40 = v35[3];
    v10 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v35 = sub_261B419E8(v40 > 1, v41 + 1, 1, v35);
    }

    v35[2] = v10;
    v38 = v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v41;
    v39 = v25;
    goto LABEL_8;
  }

  if (v33 == *MEMORY[0x277D45300])
  {
    v60 = a2;
    v61 = v18;
    (*(v29 + 96))(v32, v28);
    v34 = v66;
    (*(v62 + 32))(v66, v32, v63);
    v37 = v34;
    v43 = sub_261CFEF94();
    v71 = *(v43 + 16);
    if (v71)
    {
      a2 = 0;
      v68 = v7 + 88;
      v69 = (v7 + 16);
      v67 = *MEMORY[0x277D452E8];
      v65 = *MEMORY[0x277D452E0];
      v18 = (v7 + 96);
      v35 = MEMORY[0x277D84F90];
      v70 = v43;
      while (1)
      {
        v36 = *(v43 + 16);
        if (a2 >= v36)
        {
          goto LABEL_44;
        }

        v44 = v77;
        (*(v7 + 16))(v10, v43 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v77);
        v45 = (*(v7 + 88))(v10, v44);
        if (v45 == v67)
        {
          (*v18)(v10, v44);
          v34 = *v10;
          sub_261B73240(v34, v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_261B419E8(0, v35[2] + 1, 1, v35);
          }

          v47 = v35[2];
          v46 = v35[3];
          v37 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            v35 = sub_261B419E8(v46 > 1, v47 + 1, 1, v35);
          }

          v27 = v75;
        }

        else
        {
          if (v45 != v65)
          {
            sub_261D00604();
            __break(1u);
            goto LABEL_47;
          }

          (*v18)(v10, v44);
          v34 = *v10;
          v48 = sub_261CFEF84();
          sub_261B750A0(v34, v48, v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_261B419E8(0, v35[2] + 1, 1, v35);
          }

          v47 = v35[2];
          v49 = v35[3];
          v37 = v47 + 1;
          if (v47 >= v49 >> 1)
          {
            v35 = sub_261B419E8(v49 > 1, v47 + 1, 1, v35);
          }

          v27 = v76;
        }

        ++a2;

        v35[2] = v37;
        sub_261B01E2C(v27, v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v47);
        v43 = v70;
        if (v71 == a2)
        {
          goto LABEL_28;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_28:

    v37 = &v84;
    sub_261BBBA5C(v35);
    (*(v62 + 8))(v66, v63);
    v35 = v84;
    v18 = v61;
    a2 = v60;
    result = *(v60 + 8);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

LABEL_47:
  result = sub_261D00604();
  __break(1u);
  return result;
}

uint64_t sub_261B37650(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(sub_261CFEF74() - 8);
  v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_261B36BD8(v6, a2, &v24);
    if (v2)
    {

      return v8;
    }

    v10 = v24;
    v11 = *(v24 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_261B419E8(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for ListEntity();
        v17 = *(result - 8);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v20 = v8[2];
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_25;
          }

          v8[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += v7;
    if (!--v3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_261B37848(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v6, a2);
}

uint64_t sub_261B378E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v10, a3, a4);
}

uint64_t sub_261B37994(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.suggestedEntities(query:criteria:)(a1, v8, a3);
}

uint64_t sub_261B37A40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.defaultListEntity(query:criteria:)(a1, v8, a3);
}

unint64_t sub_261B37AEC(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v5 = sub_261D006F4();

  return sub_261B385D8(a1 & 1, v5);
}

unint64_t sub_261B37B8C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v5 = sub_261D006F4();

  return sub_261B38714(a1 & 1, v5);
}

unint64_t sub_261B37C38(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261C27448(v6, a1);
  v4 = sub_261D006F4();

  return sub_261B3885C(a1, v4);
}

unint64_t sub_261B37CA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_261D000E4();

  return sub_261B38B94(a1, v5);
}

unint64_t sub_261B37CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();
  v6 = sub_261D006F4();

  return sub_261B38C68(a1, a2, v6);
}

unint64_t sub_261B37D60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261CFD864();
  sub_261B3B994(&qword_27FEDA6B0, MEMORY[0x277CC9708]);
  v5 = sub_261CFF934();

  return sub_261B38D20(a1, v5);
}

unint64_t sub_261B37E0C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B38EE0(a1, v4);
}

unint64_t sub_261B37F34(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v5 = sub_261D006F4();

  return sub_261B39110(a1 & 1, v5);
}

unint64_t sub_261B37FD0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B39244(a1, v4);
}

unint64_t sub_261B380B0(void *a1, unint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  sub_261D006C4();
  sub_261D006E4();
  if (a1)
  {
    v8 = a1;
    sub_261D00104();
  }

  v9 = sub_261D006F4();
  return sub_261B393DC(a1, v9, a2, a3);
}

unint64_t sub_261B38154(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v5 = sub_261D006F4();

  return sub_261B394D8(a1 & 1, v5);
}

unint64_t sub_261B381F4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B39614(a1, v4);
}

unint64_t sub_261B382B4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B39794(a1, v4);
}

unint64_t sub_261B38380(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B3992C(a1, v4);
}

unint64_t sub_261B38450(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v5 = sub_261D006F4();

  return sub_261B39AC0(a1 & 1, v5);
}

unint64_t sub_261B384EC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_261D006C4();
  sub_261CFFB14();

  v4 = sub_261D006F4();

  return sub_261B39BF4(a1, v4);
}

unint64_t sub_261B385D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x736E6D756C6F63;
    }

    else
    {
      v6 = 1953720684;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x736E6D756C6F63 : 1953720684;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B38714(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65697265636F7267;
    }

    else
    {
      v6 = 0x647261646E617473;
    }

    if (a1)
    {
      v7 = 0xE900000000000073;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65697265636F7267 : 0x647261646E617473;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000073 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B3885C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xD000000000000014;
            v12 = 0x8000000261D14190;
          }

          else
          {
            v11 = 0xD000000000000017;
            v12 = 0x8000000261D141B0;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xD000000000000017;
          v12 = 0x8000000261D141D0;
        }

        else if (v6 == 8)
        {
          v11 = 0x637341656C746974;
          v12 = 0xEE00676E69646E65;
        }

        else
        {
          v11 = 0x736544656C746974;
          v12 = 0xEF676E69646E6563;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v8 = 0x8000000261D14150;
        }

        else
        {
          v8 = 0x8000000261D14170;
        }

        if (v6 == 2)
        {
          v7 = 0xD000000000000016;
          v8 = 0x8000000261D14130;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x6C61756E616DLL : 0x746C7561666564;
        v10 = v6 ? 0xE600000000000000 : 0xE700000000000000;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x736544656C746974;
      if (v5 == 8)
      {
        v13 = 0x637341656C746974;
      }

      v14 = 0xEF676E69646E6563;
      if (v5 == 8)
      {
        v14 = 0xEE00676E69646E65;
      }

      if (v5 == 7)
      {
        v13 = 0xD000000000000017;
      }

      v15 = 0x8000000261D141B0;
      if (v5 == 7)
      {
        v14 = 0x8000000261D141D0;
      }

      v16 = 0xD000000000000014;
      if (v5 == 5)
      {
        v15 = 0x8000000261D14190;
      }

      else
      {
        v16 = 0xD000000000000017;
      }

      if (v5 <= 6)
      {
        v13 = v16;
        v14 = v15;
      }

      if (v5 == 3)
      {
        v17 = 0xD000000000000016;
      }

      else
      {
        v17 = 0xD000000000000013;
      }

      if (v5 == 3)
      {
        v18 = 0x8000000261D14150;
      }

      else
      {
        v18 = 0x8000000261D14170;
      }

      if (v5 == 2)
      {
        v17 = 0xD000000000000016;
        v18 = 0x8000000261D14130;
      }

      if (v5)
      {
        v19 = 0x6C61756E616DLL;
      }

      else
      {
        v19 = 0x746C7561666564;
      }

      if (v5)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 4 ? v17 : v13;
      v22 = v5 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_261D00614();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_261B38B94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_261D000F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_261B38C68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_261D00614())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_261B38D20(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_261CFD864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_261B3B994(&qword_27FEDA6B8, MEMORY[0x277CC9708]);
      v16 = sub_261CFF974();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_261B38EE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x64656767616C66;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x64656E6769737361;
          }

          else
          {
            v8 = 0x6574656C706D6F63;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE900000000000064;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x656C756465686373;
        }

        else
        {
          v8 = 7105633;
        }

        if (v7 == 1)
        {
          v9 = 0xE900000000000064;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7961646F74;
      }

      v10 = 0x6574656C706D6F63;
      if (v6 == 4)
      {
        v10 = 0x64656E6769737361;
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE900000000000064;
      }

      if (v6 == 3)
      {
        v10 = 0x64656767616C66;
        v11 = 0xE700000000000000;
      }

      v12 = 0x656C756465686373;
      if (v6 != 1)
      {
        v12 = 7105633;
      }

      v13 = 0xE300000000000000;
      if (v6 == 1)
      {
        v13 = 0xE900000000000064;
      }

      if (!v6)
      {
        v12 = 0x7961646F74;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_261D00614();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6D6F74746F62;
    }

    else
    {
      v6 = 7368564;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6D6F74746F62 : 7368564;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39244(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6974636573;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6552746E65726170;
          v7 = 0xEE007265646E696DLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1953720684)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1953720684;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6E6F6974636573;
      }

      else
      {
        v10 = 0x6552746E65726170;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xEE007265646E696DLL;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B393DC(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = v4;
    v12 = ~v6;
    do
    {
      v13 = *(*(v10 + 48) + 8 * v7);
      if (v13)
      {
        if (a1)
        {
          sub_261B05020(0, a3, a4);
          v14 = v13;
          v15 = a1;
          v16 = sub_261D000F4();

          if (v16)
          {
            return v7;
          }
        }
      }

      else if (!a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_261B394D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7496035;
    }

    else
    {
      v6 = 0x746C7561666564;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7496035 : 0x746C7561666564;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39614(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x657669727261;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x747261706564;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE700000000000000;
            if (v8 != 0x6E776F6E6B6E75)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x657669727261;
      }

      else
      {
        v10 = 0x747261706564;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39794(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6767616C46746F6ELL;
          v8 = 0xEA00000000006465;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x64656767616C66;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x6E776F6E6B6E75)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6767616C46746F6ELL;
      }

      else
      {
        v10 = 0x64656767616C66;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006465;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B3992C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x6D756964656DLL : 1751607656;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 7827308 : 1701736302;
      v10 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6D756964656DLL : 1751607656;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v15 = v5 ? 7827308 : 1701736302;
      v16 = v5 ? 0xE300000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_261D00614();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}