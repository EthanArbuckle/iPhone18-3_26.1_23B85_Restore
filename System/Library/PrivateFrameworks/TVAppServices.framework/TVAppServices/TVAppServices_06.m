uint64_t sub_26CCA104C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v112 = a8;
  v113 = a6;
  v114 = a7;
  v115 = a4;
  v116 = a5;
  v117 = a3;
  v119 = a2;
  v9 = _s5CacheC5ValueOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26CD3A07C();
  v118 = *(v13 - 8);
  v14 = *(v118 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v102 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v102 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v102 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v102 - v28;
  v30 = *(*(_s5CacheC5ModelVMa(0) - 8) + 64);
  v31 = MEMORY[0x28223BE20](a1);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v102 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v39 = &v102 - v38;
  if (v35)
  {
    v122 = v35;
    v40 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
    return sub_26CD3A81C();
  }

  else
  {
    v107 = v37;
    v108 = v23;
    v109 = v20;
    v110 = v13;
    v105 = v9;
    v106 = v17;
    v104 = v12;
    v41 = v36;
    v42 = sub_26CD3A1EC();
    v43 = *(*(v42 - 8) + 56);
    v43(v29, 1, 1, v42);
    v44 = type metadata accessor for SportsFavoriteService.UserConsent.State();
    v45 = *(v44 + 20);
    v43(&v39[v45], 1, 1, v42);
    *v39 = 0;
    sub_26CC17CCC(v29, &v39[v45]);
    v39[*(v44 + 24)] = 1;
    v43(v29, 1, 1, v42);
    v111 = v41;
    v46 = &v39[*(v41 + 20)];
    v47 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v48 = *(v47 + 20);
    v43(&v46[v48], 1, 1, v42);
    *v46 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v29, &v46[v48]);
    v49 = *(v47 + 24);
    v103 = v46;
    v46[v49] = 1;
    v50 = [v117 URL];
    sub_26CD39FEC();

    v63 = sub_26CD3A08C();
    v65 = v64;
    v66 = *(v118 + 8);
    v67 = v25;
    v68 = v110;
    v66(v67, v110);
    v69 = sub_26CD39D5C();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    sub_26CD39D3C();
    sub_26CC18318(v39, _s5CacheC5ModelVMa);

    sub_26CC18C50(v63, v65);
    v117 = v66;
    sub_26CC183E0(v34, v39, _s5CacheC5ModelVMa);
    v51 = [v115 URL];
    v52 = v108;
    sub_26CD39FEC();

    v53 = sub_26CD3A08C();
    v54 = v116;
    v55 = v109;
    v72 = v53;
    v74 = v73;
    v117(v52, v68);
    v75 = sub_26CD39D5C();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    v78 = v107;
    sub_26CD39D3C();
    sub_26CC18318(v39, _s5CacheC5ModelVMa);

    sub_26CC18C50(v72, v74);
    sub_26CC183E0(v78, v39, _s5CacheC5ModelVMa);
    v56 = *(v54 + 32);
    v57 = v114;
    if (v56)
    {
      v58 = *(v54 + 40);
      v56(v39, v113);
    }

    v59 = [v57 URL];
    sub_26CD39FEC();

    v60 = sub_26CD39D8C();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
    v115 = v39;
    v79 = sub_26CD39D6C();
    v81 = v80;

    sub_26CD3A0CC();
    v117(v55, v68);
    sub_26CC18C50(v79, v81);
    v83 = [v112 URL];
    v84 = v106;
    sub_26CD39FEC();

    v85 = *(v60 + 48);
    v86 = *(v60 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v87 = sub_26CD39D6C();
    v89 = v88;

    sub_26CD3A0CC();
    v117(v84, v68);
    v90 = sub_26CC18C50(v87, v89);
    v91 = *(v116 + 8);
    (*v116)(&v122, v90);
    v92 = v115;
    if (v122)
    {
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v120 = 0;
      v121 = 0xE000000000000000;
      sub_26CD3AC6C();

      v120 = 0xD000000000000017;
      v121 = 0x800000026CD50020;
      v93 = v103;
      v94 = SportsFavoriteService.Favorites.State.debugDescription.getter();
      MEMORY[0x26D6AD060](v94);

      v95 = v120;
      v96 = v121;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_26CD3C1E0;
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = sub_26CC19E10();
      *(v97 + 32) = v95;
      *(v97 + 40) = v96;
      sub_26CD3A3DC();

      sub_26CC18BE8(v93, v104, type metadata accessor for SportsFavoriteService.Favorites.State);
      v92 = v115;
    }

    else
    {
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v120 = 0;
      v121 = 0xE000000000000000;
      sub_26CD3AC6C();

      v120 = 0xD000000000000019;
      v121 = 0x800000026CD50040;
      v98 = SportsFavoriteService.UserConsent.State.debugDescription.getter();
      MEMORY[0x26D6AD060](v98);

      v99 = v120;
      v100 = v121;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_26CD3C1E0;
      *(v101 + 56) = MEMORY[0x277D837D0];
      *(v101 + 64) = sub_26CC19E10();
      *(v101 + 32) = v99;
      *(v101 + 40) = v100;
      sub_26CD3A3DC();

      sub_26CC18BE8(v92, v104, type metadata accessor for SportsFavoriteService.UserConsent.State);
    }

    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
    sub_26CD3A82C();
    return sub_26CC18318(v92, _s5CacheC5ModelVMa);
  }
}

uint64_t sub_26CCA1C1C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCA1D24()
{
  result = type metadata accessor for SportsFavoriteService.UserConsent.State();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsFavoriteService.Favorites.State();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26CCA1D9C()
{
  result = qword_2804BD1D8;
  if (!qword_2804BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1D8);
  }

  return result;
}

unint64_t sub_26CCA1DF4()
{
  result = qword_2804BD1E0;
  if (!qword_2804BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1E0);
  }

  return result;
}

unint64_t sub_26CCA1E4C()
{
  result = qword_2804BD1E8;
  if (!qword_2804BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1E8);
  }

  return result;
}

unint64_t sub_26CCA1EA4()
{
  result = qword_2804BD1F0;
  if (!qword_2804BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1F0);
  }

  return result;
}

unint64_t sub_26CCA1EFC()
{
  result = qword_2804BD1F8;
  if (!qword_2804BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1F8);
  }

  return result;
}

unint64_t sub_26CCA1F54()
{
  result = qword_2804BD200;
  if (!qword_2804BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD200);
  }

  return result;
}

uint64_t sub_26CCA1FA8(int a1)
{
  v81 = a1;
  v82 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v70 - v7;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v85 = v1;
  sub_26CC9EF14(0, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    v6 = v8;
LABEL_5:
    sub_26CC3C0E0(v6);
    sub_26CC3BD30();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  v80 = v14;
  v18 = *(v10 + 32);
  v83 = v16;
  v18();
  sub_26CC9EF14(v85[6], v6);
  if (v17(v6, 1, v9) == 1)
  {
    (*(v10 + 8))(v83, v9);
    goto LABEL_5;
  }

  v76 = v10;
  (v18)(v80, v6, v9);
  v21 = swift_allocObject();
  v77 = v21;
  *(v21 + 16) = 0;
  v71 = (v21 + 16);
  v22 = swift_allocObject();
  v79 = v22;
  *(v22 + 16) = 0;
  v74 = (v22 + 16);
  v23 = swift_allocObject();
  v78 = v23;
  *(v23 + 16) = 0;
  v70 = (v23 + 16);
  v24 = objc_opt_self();
  v25 = sub_26CD39FCC();
  v26 = [v24 readingIntentWithURL:v25 options:0];

  v27 = sub_26CD39FCC();
  v75 = v9;
  v28 = [v24 writingIntentWithURL:v27 options:0];

  v29 = sub_26CD39FCC();
  v30 = [v24 readingIntentWithURL:v29 options:0];

  v31 = sub_26CD39FCC();
  v32 = [v24 writingIntentWithURL:v31 options:0];

  v73 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26CD44E80;
  *(v33 + 32) = v26;
  *(v33 + 40) = v28;
  *(v33 + 48) = v30;
  *(v33 + 56) = v32;
  sub_26CCA4F50();
  v34 = v26;
  v35 = v28;
  v36 = v30;
  v37 = v32;
  v72 = sub_26CD3A79C();

  v38 = v85[2];
  v39 = swift_allocObject();
  v40 = v78;
  *(v39 + 16) = v79;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = v81 & 1;
  *(v39 + 48) = v35;
  *(v39 + 56) = v37;
  v41 = v77;
  *(v39 + 64) = v40;
  *(v39 + 72) = v41;
  *(v39 + 80) = v82;
  aBlock[4] = sub_26CCA4F9C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_6;
  v42 = _Block_copy(aBlock);
  v85 = v34;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v38;

  v47 = v73;

  v48 = v72;
  [v47 coordinateAccessWithIntents:v72 queue:v46 byAccessor:v42];
  _Block_release(v42);

  v49 = v74;
  swift_beginAccess();
  v50 = *v49;
  if (*v49)
  {
    v51 = *v49;
    swift_willThrow();
    v52 = v50;

    v53 = *(v76 + 8);
    v54 = v75;
    v53(v80, v75);
    v53(v83, v54);
LABEL_10:

    goto LABEL_11;
  }

  v55 = v85;
  v82 = v45;
  v56 = v71;
  v57 = v70;
  swift_beginAccess();
  v58 = *v57;
  if (v58)
  {
    swift_willThrow();
    v59 = v58;

    v60 = *(v76 + 8);
    v61 = v75;
    v60(v80, v75);
    v60(v83, v61);
    goto LABEL_10;
  }

  swift_beginAccess();
  v62 = *v56;
  v63 = v80;
  if (!*v56)
  {

    v68 = *(v76 + 8);
    v69 = v75;
    v68(v63, v75);
    v68(v83, v69);
  }

  v64 = *v56;
  swift_willThrow();
  v65 = v62;

  v66 = *(v76 + 8);
  v67 = v75;
  v66(v63, v75);
  v66(v83, v67);

LABEL_11:
}

uint64_t sub_26CCA27A0()
{
  v60 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v64 = v0;
  sub_26CC9EF14(0, v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v6 = v8;
LABEL_5:
    sub_26CC3C0E0(v6);
    sub_26CC3BD30();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v59 = v1;
  v17 = *(v10 + 32);
  v61 = v15;
  v17();
  sub_26CC9EF14(v64[6], v6);
  if (v16(v6, 1, v9) == 1)
  {
    (*(v10 + 8))(v61, v9);
    goto LABEL_5;
  }

  v58 = v10;
  (v17)(v62, v6, v9);
  v20 = objc_opt_self();
  v21 = sub_26CD39FCC();
  v22 = [v20 writingIntentWithURL:v21 options:0];

  v23 = sub_26CD39FCC();
  v24 = [v20 writingIntentWithURL:v23 options:0];

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v55 = (v25 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v54 = (v26 + 16);
  v57 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26CD44E60;
  *(v27 + 32) = v22;
  *(v27 + 40) = v24;
  sub_26CCA4F50();
  v56 = v9;
  v28 = v22;
  v29 = v24;
  v30 = sub_26CD3A79C();

  v64 = v64[2];
  v31 = swift_allocObject();
  v31[2] = v25;
  v31[3] = v28;
  v31[4] = v29;
  v31[5] = v26;
  v31[6] = v60;
  aBlock[4] = sub_26CCA4FD8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_32;
  v32 = _Block_copy(aBlock);
  v33 = v28;
  v34 = v29;
  v35 = v64;

  v36 = v57;
  [v57 coordinateAccessWithIntents:v30 queue:v35 byAccessor:v32];
  _Block_release(v32);

  v37 = v55;
  swift_beginAccess();
  v38 = *v37;
  if (*v37)
  {
    v39 = *v37;
    swift_willThrow();
    v40 = v38;

    v41 = *(v58 + 8);
    v42 = v56;
    v41(v62, v56);
    v41(v61, v42);
LABEL_10:
  }

  v43 = v33;
  v44 = v34;
  v45 = v61;
  v46 = v56;
  v47 = v54;
  swift_beginAccess();
  v48 = *v47;
  v49 = v58;
  if (*v47)
  {
    v50 = *v47;
    swift_willThrow();
    v51 = v48;

    v52 = *(v49 + 8);
    v52(v62, v46);
    v52(v45, v46);
    goto LABEL_10;
  }

  v53 = *(v49 + 8);
  v53(v62, v46);
  v53(v45, v46);
}

uint64_t sub_26CCA2DC4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = _s5CacheC5ModelVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_26CD3A07C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC9EF14(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26CC3C0E0(v14);
    sub_26CC3BD30();
    swift_allocError();
    *v20 = 0;
    result = swift_willThrow();
  }

  else
  {
    v39 = v16;
    v40 = v15;
    (*(v16 + 32))(v19, v14, v15);
    v22 = sub_26CD3A1EC();
    v23 = *(*(v22 - 8) + 56);
    v23(v6, 1, 1, v22);
    v24 = type metadata accessor for SportsFavoriteService.UserConsent.State();
    v25 = *(v24 + 20);
    v23(&v10[v25], 1, 1, v22);
    *v10 = 0;
    sub_26CC17CCC(v6, &v10[v25]);
    v10[*(v24 + 24)] = 1;
    v23(v6, 1, 1, v22);
    v26 = &v10[*(v7 + 20)];
    v27 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v28 = *(v27 + 20);
    v23(&v26[v28], 1, 1, v22);
    *v26 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v6, &v26[v28]);
    v26[*(v27 + 24)] = 1;
    v43[0] = 0;
    v29 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
    v30 = sub_26CD39FCC();
    v31 = swift_allocObject();
    *(v31 + 16) = v10;
    *(v31 + 24) = v43;
    v32 = swift_allocObject();
    v32[2] = sub_26CCA50BC;
    v32[3] = v31;
    aBlock[4] = sub_26CCA50C4;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CCA351C;
    aBlock[3] = &block_descriptor_49;
    v33 = _Block_copy(aBlock);

    aBlock[0] = 0;
    [v29 coordinateReadingItemAtURL:v30 options:0 error:aBlock byAccessor:v33];
    _Block_release(v33);

    v34 = aBlock[0];
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      __break(1u);
    }

    if (v34)
    {
      swift_willThrow();
      (*(v39 + 8))(v19, v40);
    }

    else
    {
      v35 = v43[0];
      v36 = v39;
      if (!v43[0])
      {
        (*(v39 + 8))(v19, v40);
        sub_26CC18BE8(v10, v41, _s5CacheC5ModelVMa);

        sub_26CC18318(v10, _s5CacheC5ModelVMa);

        goto LABEL_9;
      }

      swift_willThrow();
      v37 = v35;
      (*(v36 + 8))(v19, v40);
    }

    sub_26CC18318(v10, _s5CacheC5ModelVMa);
  }

LABEL_9:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26CCA3398(uint64_t a1, uint64_t a2)
{
  v3 = _s5CacheC5ModelVMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26CD3A08C();
  v9 = v8;
  v10 = sub_26CD39D5C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_26CD39D4C();
  sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
  sub_26CD39D3C();
  sub_26CC18C50(v7, v9);

  return sub_26CCA50EC(v6, a2);
}

uint64_t sub_26CCA351C(uint64_t a1)
{
  v2 = sub_26CD3A07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_26CD39FEC();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_26CCA3600(void *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6, void *a7, uint64_t a8)
{
  v108 = a7;
  v109 = a8;
  v107 = a6;
  LODWORD(v106) = a5;
  v110 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v92 - v13;
  v15 = _s5CacheC5ModelVMa(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v92 - v20;
  v22 = sub_26CD3A07C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v92 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v34 = &v92 - v33;
  if (a1)
  {
    swift_beginAccess();
    v35 = *(a2 + 16);
    *(a2 + 16) = a1;
    v36 = a1;
  }

  else
  {
    v100 = v14;
    v101 = v32;
    v102 = v19;
    v103 = v15;
    v99 = v31;
    v104 = v21;
    v105 = v30;
    v37 = [v110 URL];
    sub_26CD39FEC();

    v38 = sub_26CD3A08C();
    v40 = v39;
    v110 = v38;
    v41 = v23 + 8;
    v42 = *(v23 + 8);
    v43 = v34;
    v44 = v105;
    v42(v43, v105);
    v45 = [a4 URL];
    sub_26CD39FEC();

    v97 = sub_26CD3A08C();
    v98 = v46;
    v42(v29, v44);
    v47 = sub_26CD39D5C();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    v50 = v103;
    v51 = v104;
    sub_26CD39D3C();
    v94 = v42;
    v95 = v41;
    v96 = v40;

    v52 = *(v47 + 48);
    v53 = *(v47 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    v54 = v102;
    sub_26CD39D3C();

    if (v106)
    {
      v55 = &v51[*(v50 + 20)];
      v106 = *v55;

      v56 = v100;
      sub_26CD3A1CC();
      v57 = sub_26CD3A1EC();
      v58 = *(*(v57 - 8) + 56);
      v58(v56, 0, 1, v57);
      v93 = type metadata accessor for SportsFavoriteService.Favorites.State;
      sub_26CC18318(v55, type metadata accessor for SportsFavoriteService.Favorites.State);
      v59 = type metadata accessor for SportsFavoriteService.Favorites.State();
      v60 = *(v59 + 20);
      v58(v55 + v60, 1, 1, v57);
      *v55 = v106;
      sub_26CC17CCC(v56, v55 + v60);
      v61 = (v59 + 24);
      *(v55 + *(v59 + 24)) = 1;
      v62 = &v54[*(v50 + 20)];
      v63 = *v62;

      sub_26CD3A1CC();
      v58(v56, 0, 1, v57);
      sub_26CC18318(v62, v93);
      v64 = v62 + *(v59 + 20);
      v58(v64, 1, 1, v57);
      *v62 = v63;
    }

    else
    {
      LODWORD(v106) = *v51;
      v65 = type metadata accessor for SportsFavoriteService.UserConsent.State();
      v66 = *(v65 + 20);
      v56 = v100;
      sub_26CC1B4DC(&v51[v66], v100, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC18318(v51, type metadata accessor for SportsFavoriteService.UserConsent.State);
      v67 = sub_26CD3A1EC();
      v68 = *(*(v67 - 8) + 56);
      v68(&v51[v66], 1, 1, v67);
      *v51 = v106;
      sub_26CC17CCC(v56, &v51[v66]);
      v61 = (v65 + 24);
      v51[*(v65 + 24)] = 1;
      LODWORD(v106) = *v54;
      v64 = &v54[*(v65 + 20)];
      sub_26CC1B4DC(v64, v56, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC18318(v54, type metadata accessor for SportsFavoriteService.UserConsent.State);
      v68(v64, 1, 1, v67);
      *v54 = v106;
      v62 = v54;
    }

    v69 = v107;
    sub_26CC17CCC(v56, v64);
    *(v62 + *v61) = 1;
    v70 = [v69 URL];
    v71 = v101;
    sub_26CD39FEC();

    v72 = sub_26CD39D8C();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
    v75 = sub_26CD39D6C();
    v76 = v108;
    v77 = v75;
    v79 = v78;

    sub_26CD3A0CC();
    v80 = v71;
    v81 = v94;
    v94(v80, v105);
    sub_26CC18C50(v77, v79);
    v82 = [v76 URL];
    v83 = v99;
    sub_26CD39FEC();

    v84 = *(v72 + 48);
    v85 = *(v72 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v86 = sub_26CD39D6C();
    v87 = v97;
    v88 = v86;
    v90 = v89;

    sub_26CD3A0CC();
    v91 = v104;
    v81(v83, v105);
    sub_26CC18C50(v88, v90);
    sub_26CC18C50(v87, v98);
    sub_26CC18C50(v110, v96);
    sub_26CC18318(v54, _s5CacheC5ModelVMa);
    sub_26CC18318(v91, _s5CacheC5ModelVMa);
  }
}

void sub_26CCA3FA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v74 = a3;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61 - v19;
  v21 = _s5CacheC5ModelVMa(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  if (a1)
  {
    swift_beginAccess();
    v28 = *(a2 + 16);
    *(a2 + 16) = a1;
    v29 = a1;
  }

  else
  {
    v66 = a4;
    v67 = v14;
    v68 = v25;
    v72 = v9;
    v73 = v10;
    v71 = a5;
    v30 = v24;
    v31 = sub_26CD3A1EC();
    v32 = *(*(v31 - 8) + 56);
    v32(v20, 1, 1, v31);
    v33 = type metadata accessor for SportsFavoriteService.UserConsent.State();
    v34 = *(v33 + 20);
    v32(&v27[v34], 1, 1, v31);
    *v27 = 0;
    sub_26CC17CCC(v20, &v27[v34]);
    v65 = v33;
    v27[*(v33 + 24)] = 1;
    v32(v20, 1, 1, v31);
    v35 = &v27[*(v30 + 20)];
    v36 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v37 = *(v36 + 20);
    v32(&v35[v37], 1, 1, v31);
    *v35 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v20, &v35[v37]);
    v64 = v36;
    v35[*(v36 + 24)] = 1;
    v38 = [v74 URL];
    v74 = v16;
    sub_26CD39FEC();

    v39 = sub_26CD39D8C();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v42 = sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
    v69 = sub_26CD39D6C();
    v70 = v43;
    v61 = v42;
    v62 = v39;
    v63 = v30;

    v44 = v74;
    v46 = v69;
    v45 = v70;
    sub_26CD3A0CC();
    sub_26CC18C50(v46, v45);
    v47 = *(v73 + 8);
    v73 += 8;
    v74 = v47;
    (v47)(v44, v72);
    sub_26CC18318(v27, _s5CacheC5ModelVMa);
    v32(v20, 1, 1, v31);
    v48 = v65;
    v49 = *(v65 + 20);
    v50 = v68;
    v32(&v68[v49], 1, 1, v31);
    *v50 = 0;
    sub_26CC17CCC(v20, &v50[v49]);
    v50[*(v48 + 24)] = 1;
    v32(v20, 1, 1, v31);
    v51 = v64;
    v52 = &v50[*(v63 + 20)];
    v53 = *(v64 + 20);
    v32(&v52[v53], 1, 1, v31);
    *v52 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v20, &v52[v53]);
    v52[*(v51 + 24)] = 1;
    v54 = [v66 URL];
    v55 = v67;
    sub_26CD39FEC();

    v56 = *(v62 + 48);
    v57 = *(v62 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v58 = sub_26CD39D6C();
    v60 = v59;

    sub_26CD3A0CC();
    sub_26CC18C50(v58, v60);
    (v74)(v55, v72);
    sub_26CC18318(v68, _s5CacheC5ModelVMa);
  }
}

void sub_26CCA45EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_26CD3A07C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = v39 - v19;
  if (a1)
  {
    swift_beginAccess();
    v21 = *(a2 + 16);
    *(a2 + 16) = a1;
    v22 = a1;
  }

  else
  {
    v41 = a5;
    v42 = v18;
    v40 = a6;
    v43 = a7;
    v23 = [a4 URL];
    sub_26CD39FEC();

    v24 = sub_26CD39D8C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v27 = _s5CacheC5ModelVMa(0);
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
    v28 = sub_26CD39D6C();
    v30 = v29;
    v39[1] = v27;

    sub_26CD3A0CC();
    v31 = v20;
    v32 = *(v42 + 8);
    v32(v31, v13);
    sub_26CC18C50(v28, v30);
    v33 = [v40 URL];
    sub_26CD39FEC();

    v34 = *(v24 + 48);
    v35 = *(v24 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    v36 = sub_26CD39D6C();
    v38 = v37;

    sub_26CD3A0CC();
    v32(v17, v13);
    sub_26CC18C50(v36, v38);
  }
}

void sub_26CCA4978(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v70 = a3;
  v12 = _s5CacheC5ModelVMa(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = sub_26CD3A07C();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v29 = &v59 - v28;
  if (a1)
  {
    swift_beginAccess();
    v30 = *(a2 + 16);
    *(a2 + 16) = a1;
    v31 = a1;
  }

  else
  {
    v64 = a5;
    v65 = a6;
    v67 = v12;
    v68 = v25;
    v66 = v27;
    v32 = v26;
    v33 = [v70 URL];
    sub_26CD39FEC();

    v63 = sub_26CD3A08C();
    v70 = v34;
    v35 = *(v32 + 8);
    v36 = v29;
    v37 = v68;
    v35(v36, v68);
    v38 = [a4 URL];
    sub_26CD39FEC();

    v39 = sub_26CD3A08C();
    v61 = v40;
    v62 = v39;
    v35(v24, v37);
    v41 = sub_26CD39D5C();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v60 = v35;
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    v44 = v67;
    sub_26CD39D3C();
    v45 = v18;

    v46 = *(v41 + 48);
    v47 = *(v41 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    v48 = v61;
    sub_26CD39D3C();

    if (sub_26CCDE714(*&v18[*(v44 + 20)], *&v16[*(v44 + 20)]))
    {
      v49 = v62;
      v50 = v48;
    }

    else
    {
      v51 = [v64 URL];
      v52 = v66;
      sub_26CD39FEC();

      v53 = sub_26CD39D8C();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      sub_26CD39D7C();
      sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
      v56 = sub_26CD39D6C();
      v58 = v57;

      sub_26CD3A0CC();
      v60(v52, v68);
      sub_26CC18C50(v56, v58);
      v50 = v61;
      v49 = v62;
    }

    sub_26CC18C50(v49, v50);
    sub_26CC18C50(v63, v70);
    sub_26CC18318(v16, _s5CacheC5ModelVMa);
    sub_26CC18318(v45, _s5CacheC5ModelVMa);
  }
}

unint64_t sub_26CCA4F50()
{
  result = qword_280BBB1E8;
  if (!qword_280BBB1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BBB1E8);
  }

  return result;
}

void sub_26CCA4F9C(void *a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  sub_26CCA3600(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

void sub_26CCA4FE8(void *a1)
{
  v3 = *(_s5CacheC5ModelVMa(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + v7);
  v13 = *(v1 + v9);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_26CCA45EC(a1, v11, v1 + v5, v12, v1 + v8, v13, v14);
}

uint64_t sub_26CCA50C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26CCA50EC(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheC5ModelVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCA5160(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0) - 8);
  v9 = (*(v8 + 80) + v7 + 96) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_26CCA104C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v7, v1 + v9, *(v1 + v10), *(v1 + v11));
}

uint64_t sub_26CCA52C8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26CCA0734(a1, v1 + v4, v5);
}

unint64_t sub_26CCA5388()
{
  result = qword_2804BD240;
  if (!qword_2804BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD240);
  }

  return result;
}

uint64_t sub_26CCA53E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_26CCA544C(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_26CD39D0C();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 16) = 0;
  *(v1 + 24) = 8;
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_26CCA55A4;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCA55A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_26CCA59E4;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_26CCA56CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCA56CC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  sub_26CCA8AA8(v2);

  sub_26CCAE9FC(v2, v3);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[8];
  if (v6 == 1)
  {
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v8 = v0[9];
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 32) = &unk_287DFAD40;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_26CCA5A64;
    v17 = v0[7];

    return sub_26CD2BB90(v17);
  }
}

uint64_t sub_26CCA59E4()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CCA5A64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_26CCA5D38;
  }

  else
  {
    v5 = sub_26CCA5B78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCA5B78()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 112) data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CCAE954(v4, v6);
  sub_26CCA655C(v4, v6, v2);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  if (v1)
  {
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    sub_26CC18C50(v4, v6);

    sub_26CC18C50(v4, v6);
    (*(v10 + 8))(v9, v11);
    sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    sub_26CC18C50(v4, v6);

    sub_26CC18C50(v4, v6);
    (*(v19 + 8))(v17, v18);
    sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26CCA5D38()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CCA5DEC(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_26CD39D0C();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 16) = 1;
  *(v1 + 24) = 8;
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_26CCA5F48;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCA5F48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_26CCAF720;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_26CCA6070;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCA6070()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  sub_26CCA8AA8(v2);

  sub_26CCAE9FC(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[9];
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    sub_26CCAE900();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    sub_26CC1B544(v6, &qword_2804BC3F8, &qword_26CD45490);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_26CCA6288;
    v14 = v0[7];

    return sub_26CD2BB90(v14);
  }
}

uint64_t sub_26CCA6288(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_26CCAF70C;
  }

  else
  {
    v5 = sub_26CCA639C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCA639C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 112) data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CCAE954(v4, v6);
  sub_26CCA69D4(v4, v6, v2);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  if (v1)
  {
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    sub_26CC18C50(v4, v6);

    sub_26CC18C50(v4, v6);
    (*(v10 + 8))(v9, v11);
    sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    sub_26CC18C50(v4, v6);

    sub_26CC18C50(v4, v6);
    (*(v19 + 8))(v17, v18);
    sub_26CC1B544(v8, &qword_2804BC3F8, &qword_26CD45490);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26CCA655C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_26CD39D1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10NetworkingO19UserConsentResponseVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v16 = sub_26CD3AC9C();
    swift_allocError();
    v18 = v17;
    sub_26CD3AC8C();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84168], v16);
    return swift_willThrow();
  }

  else
  {
    v36 = a3;
    v20 = sub_26CD39D5C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_26CCAE954(a1, a2);
    sub_26CD39D4C();
    (*(v8 + 104))(v11, *MEMORY[0x277CC86C0], v7);
    sub_26CD39D2C();
    sub_26CCAF200(&qword_2804BD290, _s10NetworkingO19UserConsentResponseVMa);
    sub_26CD39D3C();
    if (v3)
    {
      sub_26CC1D1B8(a1, a2);
    }

    else
    {

      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v33[1] = qword_280BBCBD0;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_26CD3AC6C();

      v34 = 0xD00000000000001DLL;
      v35 = 0x800000026CD502B0;
      if (*v15)
      {
        v23 = 0xE800000000000000;
        if (*v15 == 1)
        {
          v24 = 0x6E696C636564;
        }

        else
        {
          v24 = 0x747065636361;
        }

        v25 = v24 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
      }

      MEMORY[0x26D6AD060](v25, v23);

      v26 = v34;
      v27 = v35;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_26CD3C1E0;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_26CC19E10();
      *(v28 + 32) = v26;
      *(v28 + 40) = v27;
      sub_26CD3A3DC();

      sub_26CC1D1B8(a1, a2);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD138, &unk_26CD45540);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      v32 = v36;
      *v36 = *v15;
      sub_26CC16D64(&v15[*(v12 + 20)], &v32[v30], &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC16D64(&v15[*(v12 + 24)], &v32[v31], &qword_2804BCA90, &qword_26CD3C200);
      _s10NetworkingO12FetchedValueOMa(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_26CCA69D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_26CD39D1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v12 = sub_26CD3AC9C();
    swift_allocError();
    v14 = v13;
    sub_26CD3AC8C();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    return swift_willThrow();
  }

  else
  {
    v16 = sub_26CD39D5C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_26CCAE954(a1, a2);
    sub_26CD39D4C();
    (*(v8 + 104))(v11, *MEMORY[0x277CC86C0], v7);
    sub_26CD39D2C();
    sub_26CCAEA6C();
    sub_26CD39D3C();
    if (v3)
    {

      return sub_26CC1D1B8(a1, a2);
    }

    else
    {
      v19 = v27;
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v26[1] = qword_280BBCBD0;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_26CD3AC6C();

      v27 = 0xD000000000000013;
      v28 = 0x800000026CD50290;
      v29 = sub_26CC989C4(v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      v26[0] = v19;
      sub_26CC1DD84(&qword_2804BBDB8, &unk_2804BCA20, &unk_26CD3D4D0);
      v20 = sub_26CD3A55C();
      v22 = v21;

      MEMORY[0x26D6AD060](v20, v22);

      MEMORY[0x26D6AD060](93, 0xE100000000000000);
      v23 = v27;
      v24 = v28;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_26CD3C1E0;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_26CC19E10();
      *(v25 + 32) = v23;
      *(v25 + 40) = v24;
      sub_26CD3A3DC();

      sub_26CC1D1B8(a1, a2);
      *a3 = v26[0];
      _s10NetworkingO12FetchedValueOMa(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_26CCA6DD8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26CCA6E30(uint64_t a1)
{
  v2 = sub_26CCAF0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA6E6C(uint64_t a1)
{
  v2 = sub_26CCAF0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA6EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "favoritesSyncEnabled";
  v4 = 0xD000000000000022;
  if (v2 == 1)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000025;
  }

  if (v2 == 1)
  {
    v6 = "favoritesSyncEnabled";
  }

  else
  {
    v6 = "tModifiedTimestamp";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ed";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000025;
    v3 = "tModifiedTimestamp";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ed";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCA6F80()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCA701C()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCA70A4()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCA713C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CCAED74();
  *a2 = result;
  return result;
}

void sub_26CCA716C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "favoritesSyncEnabled";
  v4 = 0xD000000000000022;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000025;
    v3 = "tModifiedTimestamp";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ed";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_26CCA71C8()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_26CCA7220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26CCAED74();
  *a1 = result;
  return result;
}

uint64_t sub_26CCA7248(uint64_t a1)
{
  v2 = sub_26CCAF1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7284(uint64_t a1)
{
  v2 = sub_26CCAF1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA72C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v54 - v7;
  v8 = sub_26CD3A1EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v54 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2E0, &qword_26CD457B8);
  v67 = *(v69 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v54 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2E8, &qword_26CD457C0);
  v68 = *(v73 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v54 - v17;
  v19 = _s10NetworkingO19UserConsentResponseVMa(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v23 = 0;
  v24 = *(v20 + 28);
  v66 = v9;
  v27 = *(v9 + 56);
  v26 = v9 + 56;
  v25 = v27;
  v27(&v23[v24], 1, 1, v8);
  v28 = *(v20 + 32);
  v75 = v23;
  v70 = v8;
  v27(&v23[v28], 1, 1, v8);
  v29 = a1[3];
  v30 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_26CCAF0FC();
  v31 = v74;
  sub_26CD3B15C();
  if (v31)
  {
    v32 = v75;
  }

  else
  {
    v59 = v28;
    v60 = v24;
    v74 = v25;
    v34 = v70;
    v33 = v71;
    v61 = v26;
    v35 = v18;
    v37 = v68;
    v36 = v69;
    sub_26CCAF1AC();
    sub_26CD3ADBC();
    v32 = v75;
    v58 = v35;
    v79 = 0;
    v38 = sub_26CD3ADEC();
    if (v38 != 2)
    {
      if (v38)
      {
        v39 = 2;
      }

      else
      {
        v39 = 1;
      }

      *v32 = v39;
    }

    v78 = 1;
    v40 = v33;
    v41 = sub_26CCAF200(&qword_280BBB698, MEMORY[0x277CC9578]);
    sub_26CD3AE2C();
    v43 = v66;
    v44 = *(v66 + 48);
    v56 = v66 + 48;
    v57 = v41;
    v55 = v44;
    if (v44(v40, 1, v34) == 1)
    {
      sub_26CC1B544(v40, &qword_2804BCA90, &qword_26CD3C200);
      v45 = v65;
      v46 = v74;
    }

    else
    {
      v47 = *(v43 + 32);
      v48 = v64;
      v47(v64, v40, v34);
      v49 = v60;
      sub_26CC1B544(&v32[v60], &qword_2804BCA90, &qword_26CD3C200);
      v47(&v32[v49], v48, v34);
      v46 = v74;
      v74(&v32[v49], 0, 1, v34);
      v45 = v65;
    }

    v77 = 2;
    v50 = v72;
    sub_26CD3AE2C();
    (*(v67 + 8))(v50, v36);
    (*(v37 + 8))(v58, v73);
    if (v55(v45, 1, v34) == 1)
    {
      sub_26CC1B544(v45, &qword_2804BCA90, &qword_26CD3C200);
    }

    else
    {
      v51 = *(v66 + 32);
      v52 = v62;
      v51(v62, v45, v34);
      v53 = v59;
      sub_26CC1B544(&v32[v59], &qword_2804BCA90, &qword_26CD3C200);
      v51(&v32[v53], v52, v34);
      v46(&v32[v53], 0, 1, v34);
    }

    sub_26CCAF248(v32, v63);
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
  return sub_26CCAF150(v32);
}

uint64_t sub_26CCA799C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CCA79E8()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CCA7A3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26CD3AD9C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26CCA7A8C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26CCA7AE4(uint64_t a1)
{
  v2 = sub_26CCAF054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7B20(uint64_t a1)
{
  v2 = sub_26CCAF054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CCA7B68()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCA7C54()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCA7D2C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCA7E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CCAEDC0();
  *a2 = result;
  return result;
}

void sub_26CCA7E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x736D616574;
  v7 = 0xE700000000000000;
  v8 = 0x7365756761656CLL;
  if (v2 != 3)
  {
    v8 = 0x676E6974726F7073;
    v7 = 0xEE0073746E657645;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657469726F766166;
    v3 = 0xED0000726564724FLL;
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

uint64_t sub_26CCA7EEC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736D616574;
  v4 = 0x7365756761656CLL;
  if (v1 != 3)
  {
    v4 = 0x676E6974726F7073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657469726F766166;
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

uint64_t sub_26CCA7F90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26CCAEDC0();
  *a1 = result;
  return result;
}

uint64_t sub_26CCA7FB8(uint64_t a1)
{
  v2 = sub_26CCAF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CCA7FF4(uint64_t a1)
{
  v2 = sub_26CCAF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

ValueMetadata *sub_26CCA8030(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *a2;
  v11 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_26CD3AFBC() & 1) == 0)
  {
    v23 = v10 << 8;
    v13 = (v22 + 8);
    v11 = &_s10NetworkingO17FavoritesResponseV8DataKeysON;
    do
    {
      v16 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_26CCAF0A8();
      sub_26CD3AFAC();
      if (v3)
      {

        return v11;
      }

      v24[0] = 0;
      v17 = sub_26CD3AE3C();
      v19 = v18;
      v24[0] = 1;
      v14 = sub_26CD3AE6C();
      v3 = 0;
      sub_26CCDF54C(v24, v17, v19, v14, v23);

      (*v13)(v9, v6);
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    }

    while ((sub_26CD3AFBC() & 1) == 0);
    return v25;
  }

  return v11;
}

uint64_t sub_26CCA8294()
{
  v8 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  sub_26CD3ADAC();
  if (v0)
  {

    memset(v5, 0, sizeof(v5));
    v6 = 0;
    sub_26CC1B544(v5, &qword_2804BD2D8, &qword_26CD457B0);
  }

  else
  {
    sub_26CC2524C(v5, v7);
    LOBYTE(v5[0]) = 0;
    v2 = sub_26CCA8030(v7, v5);
    sub_26CC9B030(v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  sub_26CD3ADAC();
  sub_26CC2524C(v5, v7);
  LOBYTE(v5[0]) = 1;
  v3 = sub_26CCA8030(v7, v5);
  sub_26CC9B030(v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_26CD3ADAC();
  sub_26CC2524C(v5, v7);
  LOBYTE(v5[0]) = 2;
  v4 = sub_26CCA8030(v7, v5);
  sub_26CC9B030(v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v8;
}

uint64_t sub_26CCA84F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CCAEE0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CCA8520(uint64_t a1)
{
  v3 = 0x657469726F766166;
  v2[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[6] = v8;
  v9 = *(v1 + 8);
  v10 = 0xEE00736D6165742DLL;
  if (v9 <= 3)
  {
    if (*(v1 + 8) <= 1u)
    {
      if (*(v1 + 8))
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v9 != 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = 0x800000026CD50270;
    v3 = 0xD000000000000010;
    goto LABEL_16;
  }

  if (*(v1 + 8) <= 5u)
  {
    if (v9 == 4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v9 == 6)
  {
    v3 = 0xD000000000000018;
    v11 = "ordered-favorite-leagues";
    goto LABEL_15;
  }

  if (v9 != 7)
  {
    if (*v1)
    {
      v10 = 0xE900000000000073;
      goto LABEL_16;
    }

LABEL_9:
    v10 = 0xED000073676E6974;
    v3 = 0x7465732F72657375;
    goto LABEL_16;
  }

LABEL_11:
  v3 = 0xD000000000000018;
  v11 = "favorite-sporting-events";
LABEL_15:
  v10 = (v11 - 32) | 0x8000000000000000;
LABEL_16:
  v2[7] = v10;
  type metadata accessor for UTSURLRequestFactory();
  v12 = swift_task_alloc();
  v2[8] = v12;
  *v12 = v2;
  v12[1] = sub_26CCA8764;

  return sub_26CD027F0(v8, v3, v10, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CCA8764()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_26CCA8A38;
  }

  else
  {
    v4 = sub_26CCA8894;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCA8894()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_26CD39C9C();
  v3 = sub_26CD3A07C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_26CC1B544(v0[3], &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CCAE9A8();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    v8 = v0[6];
    v9 = v0[3];
  }

  else
  {
    v11 = v0[3];
    v12 = v0[2];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v4 + 32))(v12, v11, v3);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_26CCA8A38()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCA8AA8@<X0>(uint64_t a1@<X8>)
{
  v168 = a1;
  v166 = sub_26CD39E2C();
  *&v167 = *(v166 - 8);
  v2 = *(v167 + 64);
  v3 = MEMORY[0x28223BE20](v166);
  v163 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v162 = &v159 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v159 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v159 - v10;
  v165 = sub_26CD3A07C();
  v164 = *(v165 - 8);
  v12 = *(v164 + 64);
  v13 = MEMORY[0x28223BE20](v165);
  v161 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v159 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v159 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v159 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v159 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v159 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v159 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v169 = &v159 - v37;
  sub_26CD08B34(&v159 - v37);
  *&v170 = *(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type);
  v38 = *(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8);
  if (v38 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8) <= 6u)
    {
      v39 = v169;
      if (v38 - 4 >= 2)
      {
        v93 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        v94 = *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
        *v93 = 1414745936;
        v93[1] = 0xE400000000000000;
        v95 = v170;

        v96 = sub_26CD39D8C();
        v97 = *(v96 + 48);
        v98 = *(v96 + 52);
        swift_allocObject();
        sub_26CD39D7C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD248, &qword_26CD45498);
        inited = swift_initStackObject();
        v167 = xmmword_26CD3C1E0;
        *(inited + 16) = xmmword_26CD3C1E0;
        *(inited + 32) = 0x644965756761656CLL;
        v100 = inited + 32;
        *(inited + 40) = 0xE900000000000073;
        *(inited + 48) = v95;
        v101 = sub_26CC32494(inited);
        swift_setDeallocating();
        sub_26CC1B544(v100, &qword_2804BD250, &qword_26CD454A0);
        v172 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD258, &unk_26CD454A8);
        sub_26CCAA708();
        v121 = sub_26CD39D6C();
        v123 = v122;

        v124 = sub_26CD39D0C();
        if ((*(*(v124 - 8) + 48))(v39, 1, v124))
        {
          sub_26CC18C50(v121, v123);
        }

        else
        {
          sub_26CD39CDC();
        }
      }

      else
      {
        v40 = sub_26CD39D0C();
        v41 = *(*(v40 - 8) + 48);
        v42 = v41(v39, 1, v40);
        sub_26CCAA810(v170, v38);
        if (!v42)
        {
          sub_26CD39C0C();
        }

        if (v41(v39, 1, v40))
        {
          goto LABEL_9;
        }

        sub_26CD39C9C();
        v43 = v164;
        v44 = v165;
        if ((*(v164 + 48))(v26, 1, v165))
        {
          sub_26CC1B544(v26, &qword_2804BCA30, &qword_26CD3DA70);
          goto LABEL_9;
        }

        v140 = v161;
        (*(v43 + 16))(v161, v26, v44);
        sub_26CC1B544(v26, &qword_2804BCA30, &qword_26CD3DA70);
        v141 = v43;
        v142 = URL.queryParameters.getter();
        (*(v141 + 8))(v140, v44);
        if (!v142)
        {
          goto LABEL_9;
        }

        if (!*(v142 + 16))
        {

          goto LABEL_9;
        }

        sub_26CC181C4(25705, 0xE200000000000000);
        v144 = v143;

        if ((v144 & 1) == 0)
        {
LABEL_9:
          v45 = v170;
          v172 = v170;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
          sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
          sub_26CC16DCC();
          sub_26CD3A74C();
          sub_26CCAA6F0(v45, v38);
          v46 = v163;
          sub_26CD39DFC();

          v47 = v41(v39, 1, v40);
          v48 = v168;
          v49 = v166;
          v50 = v167;
          if (!v47)
          {
            v51 = sub_26CD39C8C();
            if (!(*(v164 + 48))(v52, 1, v165))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
              v53 = *(v50 + 72);
              v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_26CD3C1E0;
              (*(v50 + 16))(v55 + v54, v46, v49);
              sub_26CD3A00C();
            }

            v51(&v172, 0);
          }

          (*(v50 + 8))(v46, v49);
          return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
        }

        sub_26CCAA6F0(v170, v38);
      }

LABEL_74:
      v48 = v168;
      return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
    }

    v39 = v169;
    if (v38 == 7)
    {
      v77 = sub_26CD39D0C();
      v78 = *(*(v77 - 8) + 48);
      v79 = v78(v39, 1, v77);

      if (!v79)
      {
        sub_26CD39C0C();
      }

      v80 = v78(v39, 1, v77);
      v81 = v167;
      if (!v80)
      {
        sub_26CD39C9C();
        v82 = v164;
        v83 = v165;
        if ((*(v164 + 48))(v29, 1, v165))
        {
          sub_26CC1B544(v29, &qword_2804BCA30, &qword_26CD3DA70);
        }

        else
        {
          v154 = v160;
          (*(v82 + 16))(v160, v29, v83);
          sub_26CC1B544(v29, &qword_2804BCA30, &qword_26CD3DA70);
          v155 = v82;
          v156 = URL.queryParameters.getter();
          (*(v155 + 8))(v154, v83);
          if (v156)
          {
            if (*(v156 + 16))
            {
              sub_26CC181C4(7562345, 0xE300000000000000);
              v158 = v157;

              if (v158)
              {
                sub_26CCAA6F0(v170, 7u);
                goto LABEL_74;
              }
            }

            else
            {
            }
          }
        }
      }

      v84 = v170;
      v172 = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v84, 7u);
      v85 = v162;
      sub_26CD39DFC();

      v86 = v78(v39, 1, v77);
      v48 = v168;
      v87 = v166;
      if (!v86)
      {
        v88 = sub_26CD39C8C();
        if (!(*(v164 + 48))(v89, 1, v165))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
          v90 = *(v81 + 72);
          v91 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_26CD3C1E0;
          (*(v81 + 16))(v92 + v91, v85, v87);
          sub_26CD3A00C();
        }

        v88(&v172, 0);
      }

      (*(v81 + 8))(v85, v87);
    }

    else
    {
      v118 = sub_26CD39D0C();
      v119 = *(*(v118 - 8) + 48);
      v120 = v119(v39, 1, v118);
      v48 = v168;
      if (!v120)
      {
        sub_26CD39C0C();
      }

      if (!v119(v39, 1, v118))
      {
        sub_26CD39C1C();
      }
    }

    return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
  }

  v163 = v11;
  if (v38 - 1 < 2)
  {
    v56 = sub_26CD39D0C();
    v57 = *(*(v56 - 8) + 48);
    v58 = v169;
    v59 = v57(v169, 1, v56);
    sub_26CCAA810(v170, v38);
    if (!v59)
    {
      sub_26CD39C0C();
    }

    if (v57(v58, 1, v56))
    {
      goto LABEL_21;
    }

    sub_26CD39C9C();
    v60 = v164;
    v61 = v165;
    if ((*(v164 + 48))(v34, 1, v165))
    {
      sub_26CC1B544(v34, &qword_2804BCA30, &qword_26CD3DA70);
    }

    else
    {
      (*(v60 + 16))(v21, v34, v61);
      sub_26CC1B544(v34, &qword_2804BCA30, &qword_26CD3DA70);
      v136 = v60;
      v137 = URL.queryParameters.getter();
      (*(v136 + 8))(v21, v61);
      v58 = v169;
      if (!v137)
      {
        goto LABEL_21;
      }

      if (*(v137 + 16))
      {
        sub_26CC181C4(25705, 0xE200000000000000);
        v139 = v138;

        v58 = v169;
        if (v139)
        {
          sub_26CCAA6F0(v170, v38);
          v48 = v168;
          v39 = v58;
          return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
        }

        goto LABEL_21;
      }
    }

    v58 = v169;
LABEL_21:
    v62 = v57;
    v63 = v170;
    v172 = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
    sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
    sub_26CC16DCC();
    sub_26CD3A74C();
    sub_26CCAA6F0(v63, v38);
    v64 = v163;
    sub_26CD39DFC();

    v65 = v62(v58, 1, v56);
    v48 = v168;
    v39 = v58;
    v66 = v166;
    v67 = v167;
    if (!v65)
    {
      v68 = sub_26CD39C8C();
      if (!(*(v164 + 48))(v69, 1, v165))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
        v70 = *(v67 + 72);
        v71 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_26CD3C1E0;
        v73 = v72 + v71;
        v64 = v163;
        (*(v67 + 16))(v73, v163, v66);
        sub_26CD3A00C();
      }

      v68(&v172, 0);
    }

    (*(v67 + 8))(v64, v66);
    return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
  }

  if (v38)
  {
    v102 = sub_26CD39D0C();
    v103 = *(*(v102 - 8) + 48);
    v39 = v169;
    v104 = v103(v169, 1, v102);

    if (!v104)
    {
      sub_26CD39C0C();
    }

    v105 = v103(v39, 1, v102);
    v106 = v167;
    if (!v105)
    {
      sub_26CD39C9C();
      v107 = v164;
      v108 = v165;
      if ((*(v164 + 48))(v32, 1, v165))
      {
        sub_26CC1B544(v32, &qword_2804BCA30, &qword_26CD3DA70);
      }

      else
      {
        (*(v107 + 16))(v19, v32, v108);
        sub_26CC1B544(v32, &qword_2804BCA30, &qword_26CD3DA70);
        v145 = v107;
        v146 = URL.queryParameters.getter();
        (*(v145 + 8))(v19, v108);
        if (v146)
        {
          if (*(v146 + 16))
          {
            sub_26CC181C4(7562345, 0xE300000000000000);
            v148 = v147;

            if (v148)
            {
              sub_26CCAA6F0(v170, 3u);
              goto LABEL_74;
            }
          }

          else
          {
          }
        }
      }
    }

    v109 = v170;
    v172 = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
    sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
    sub_26CC16DCC();
    sub_26CD3A74C();
    sub_26CCAA6F0(v109, 3u);
    v110 = v9;
    sub_26CD39DFC();

    v111 = v103(v39, 1, v102);
    v48 = v168;
    v112 = v166;
    if (!v111)
    {
      v113 = sub_26CD39C8C();
      if (!(*(v164 + 48))(v114, 1, v165))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
        v115 = *(v106 + 72);
        v116 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_26CD3C1E0;
        (*(v106 + 16))(v117 + v116, v110, v112);
        sub_26CD3A00C();
      }

      v113(&v172, 0);
    }

    (*(v106 + 8))(v110, v112);
  }

  else
  {
    v75 = sub_26CD39D0C();
    v76 = *(*(v75 - 8) + 48);
    v39 = v169;
    if (!v76(v169, 1, v75))
    {
      sub_26CD39C0C();
    }

    if (v170 && v170 != 1)
    {
      v126 = 1;
    }

    else
    {
      v126 = sub_26CD3AFDC();
    }

    v127 = sub_26CD39D8C();
    v128 = *(v127 + 48);
    v129 = *(v127 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    v130 = swift_initStackObject();
    v170 = xmmword_26CD3C1E0;
    *(v130 + 16) = xmmword_26CD3C1E0;
    *(v130 + 32) = 0xD000000000000014;
    v131 = v130 + 32;
    *(v130 + 40) = 0x800000026CD4CB30;
    *(v130 + 48) = v126 & 1;
    v132 = sub_26CC32398(v130);
    swift_setDeallocating();
    sub_26CC1B544(v131, &qword_2804BC358, &unk_26CD454D0);
    v172 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CCAA828();
    v133 = sub_26CD39D6C();
    v135 = v134;

    if (v76(v39, 1, v75))
    {
      sub_26CC18C50(v133, v135);
    }

    else
    {
      sub_26CD39CDC();
    }

    v149 = v76(v39, 1, v75);
    v48 = v168;
    if (!v149)
    {
      v151 = sub_26CD39C5C();
      if (*v150)
      {
        v152 = v150;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v171 = *v152;
        *v152 = 0x8000000000000000;
        sub_26CD38A70(0xD000000000000010, 0x800000026CD4BD10, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
        *v152 = v171;
      }

      v151(&v172, 0);
    }
  }

  return sub_26CC16D64(v39, v48, &qword_2804BC3F8, &qword_26CD45490);
}

uint64_t sub_26CCAA528()
{
  v0 = sub_26CD09390();
  sub_26CCAA6F0(*(v0 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type), *(v0 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type + 8));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices21SportsFavoriteServiceV10NetworkingO0cD14RequestBuilderC4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 8) & 0xF;
  }
}

uint64_t sub_26CCAA63C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CCAA684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26CCAA6C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26CCAA6F0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 6)
  {
  }

  return result;
}

unint64_t sub_26CCAA708()
{
  result = qword_2804BD260;
  if (!qword_2804BD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BD258, &unk_26CD454A8);
    sub_26CCAA794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD260);
  }

  return result;
}

unint64_t sub_26CCAA794()
{
  result = qword_280BB9BE0;
  if (!qword_280BB9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9BE0);
  }

  return result;
}

uint64_t sub_26CCAA810(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 6)
  {
  }

  return result;
}

unint64_t sub_26CCAA828()
{
  result = qword_2804BC838;
  if (!qword_2804BC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC830, &qword_26CD41D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC838);
  }

  return result;
}

uint64_t sub_26CCAA8AC(uint64_t *a1)
{
  v3 = sub_26CD39E2C();
  *(v1 + 288) = v3;
  v4 = *(v3 - 8);
  *(v1 + 296) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  v6 = *(*(sub_26CD3A07C() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  *(v1 + 328) = v7;
  v8 = sub_26CD39D0C();
  *(v1 + 336) = v8;
  v9 = *(v8 - 8);
  *(v1 + 344) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 352) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v1 + 360) = v11;
  *(v1 + 368) = v12;
  v13 = *(a1 + 8);
  *(v1 + 233) = v13;
  *(v1 + 224) = v12;
  *(v1 + 232) = v13;
  v14 = swift_task_alloc();
  *(v1 + 376) = v14;
  *v14 = v1;
  v14[1] = sub_26CCAAA70;

  return sub_26CCA8520(v7);
}

uint64_t sub_26CCAAA70()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_26CCAB7AC;
  }

  else
  {
    v3 = sub_26CCAAB84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCAAB84()
{
  v1 = *(v0 + 233);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  sub_26CD39C7C();
  v8 = _s10NetworkingO28SportsFavoriteRequestBuilderCMa(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject() + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type;
  *v11 = 0;
  *(v11 + 8) = 8;
  (*(v5 + 16))(v4, v3, v7);
  v12 = sub_26CD0881C(v4);
  (*(v5 + 8))(v3, v7);
  v13 = v12 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type;
  v14 = *(v12 + OBJC_IVAR____TtCOV13TVAppServices21SportsFavoriteService10Networking28SportsFavoriteRequestBuilder_type);
  *v13 = v2;
  LOBYTE(v3) = *(v13 + 8);
  *(v13 + 8) = v1;

  sub_26CCAA810(v2, v1);
  sub_26CCAA6F0(v14, v3);

  if (v1 <= 3)
  {
    if ((v1 - 1) < 2)
    {
      v24 = *(v0 + 368);
      v16 = *(v0 + 320);
      v25 = *(v0 + 296);
      v26 = *(v0 + 304);
      v101 = *(v0 + 312);
      v103 = *(v0 + 288);
      v27 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      v28 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
      v29 = *(v0 + 233);
      *v27 = 1414745936;
      v27[1] = 0xE400000000000000;

      *(v0 + 272) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v24, v29);
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v101, v26);
      v22 = *(v25 + 8);
      v23 = v103;
      v22(v101, v103);
      goto LABEL_7;
    }

    if (v1)
    {
      v62 = *(v0 + 368);
      v64 = *(v0 + 312);
      v63 = *(v0 + 320);
      v65 = *(v0 + 296);
      v66 = *(v0 + 304);
      v67 = *(v0 + 288);
      v68 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      v69 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
      *v68 = 1414745936;
      v68[1] = 0xE400000000000000;

      *(v0 + 256) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v64, v66);
      v70 = *(v65 + 8);
      v70(v64, v67);
      swift_endAccess();
      v70(v63, v67);
      sub_26CCAA6F0(v62, 3u);
      goto LABEL_8;
    }

    v38 = *(v0 + 368);
    v39 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
    v40 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
    *v39 = 0x4843544150;
    v39[1] = 0xE500000000000000;

    if (v38 > 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = sub_26CD3AFDC();
    }

    v77 = *(v0 + 384);

    v78 = sub_26CD39D8C();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD3C1E0;
    *(inited + 32) = 0xD000000000000014;
    v82 = inited + 32;
    *(inited + 40) = 0x800000026CD4CB30;
    *(inited + 48) = v76 & 1;
    v83 = sub_26CC32398(inited);
    swift_setDeallocating();
    sub_26CC1B544(v82, &qword_2804BC358, &unk_26CD454D0);
    *(v0 + 280) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CCAA828();
    v84 = sub_26CD39D6C();
    v86 = v85;

    if (!v77)
    {
      v94 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v95 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v96 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v94 = v84;
      v94[1] = v86;
      sub_26CCAE954(v84, v86);
      sub_26CCAE954(v84, v86);
      sub_26CC1D1B8(v95, v96);
      sub_26CC18C50(v84, v86);
      v97 = sub_26CC31D94(&unk_287DFAC70);
      sub_26CC1B544(&unk_287DFAC90, &qword_2804BBB68, &qword_26CD3C678);
      sub_26CC18C50(v84, v86);
      v98 = *(v12 + 16);
      *(v12 + 16) = v97;

      goto LABEL_8;
    }
  }

  else
  {
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        v41 = *(v0 + 368);
        v42 = *(v0 + 320);
        v99 = *(v0 + 312);
        v43 = *(v0 + 296);
        v44 = *(v0 + 304);
        v104 = *(v0 + 288);
        v45 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        v46 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
        *v45 = 0x4554454C4544;
        v45[1] = 0xE600000000000000;

        *(v0 + 248) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
        sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
        sub_26CC16DCC();
        sub_26CD3A74C();
        sub_26CD39DFC();

        sub_26CD39E0C();
        sub_26CD39E1C();
        sub_26CD39DFC();

        swift_beginAccess();
        sub_26CCDEE64(v99, v44);
        v47 = *(v43 + 8);
        v47(v99, v104);
        swift_endAccess();
        v47(v42, v104);
        sub_26CCAA6F0(v41, 7u);
      }

      else
      {
        v71 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
        v72 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
        *v71 = 5522759;
        v71[1] = 0xE300000000000000;

        *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_cachePolicy) = 4;
      }

LABEL_8:
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      v33 = *(v0 + 320);
      v32 = *(v0 + 328);
      v35 = *(v0 + 304);
      v34 = *(v0 + 312);

      v36 = *(v0 + 8);

      return v36(v12);
    }

    if ((v1 - 4) < 2)
    {
      v15 = *(v0 + 368);
      v16 = *(v0 + 320);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v100 = *(v0 + 312);
      v102 = *(v0 + 288);
      v19 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
      v20 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
      v21 = *(v0 + 233);
      *v19 = 0x4554454C4544;
      v19[1] = 0xE600000000000000;

      *(v0 + 264) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD268, &qword_26CD454B8);
      sub_26CC1DD84(&qword_2804BD270, &qword_2804BD268, &qword_26CD454B8);
      sub_26CC16DCC();
      sub_26CD3A74C();
      sub_26CCAA6F0(v15, v21);
      sub_26CD39DFC();

      sub_26CD39E0C();
      sub_26CD39E1C();
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v100, v18);
      v22 = *(v17 + 8);
      v23 = v102;
      v22(v100, v102);
LABEL_7:
      swift_endAccess();
      v22(v16, v23);
      goto LABEL_8;
    }

    v48 = *(v0 + 384);
    v49 = *(v0 + 368);
    v50 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
    v51 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
    *v50 = 1414745936;
    v50[1] = 0xE400000000000000;

    v52 = sub_26CD39D8C();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_26CD39D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD248, &qword_26CD45498);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_26CD3C1E0;
    *(v55 + 32) = 0x644965756761656CLL;
    v56 = v55 + 32;
    *(v55 + 40) = 0xE900000000000073;
    *(v55 + 48) = v49;
    v57 = sub_26CC32494(v55);
    swift_setDeallocating();
    sub_26CC1B544(v56, &qword_2804BD250, &qword_26CD454A0);
    *(v0 + 240) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD258, &unk_26CD454A8);
    sub_26CCAA708();
    v58 = sub_26CD39D6C();
    v60 = v59;
    v61 = *(v0 + 368);

    if (!v48)
    {
      v73 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v74 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v75 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v73 = v58;
      v73[1] = v60;
      sub_26CCAE954(v58, v60);
      sub_26CC1D1B8(v74, v75);
      sub_26CCAA6F0(v61, 6u);
      sub_26CC18C50(v58, v60);
      goto LABEL_8;
    }

    sub_26CCAA6F0(v61, 6u);
  }

  v88 = *(v0 + 352);
  v87 = *(v0 + 360);
  v90 = *(v0 + 320);
  v89 = *(v0 + 328);
  v92 = *(v0 + 304);
  v91 = *(v0 + 312);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_26CCAB7AC()
{
  sub_26CCAA6F0(*(v0 + 368), *(v0 + 233));
  v1 = *(v0 + 384);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26CCAB85C(unsigned __int8 *a1)
{
  v3 = sub_26CD39D0C();
  *(v1 + 32) = v3;
  v4 = *(v3 - 8);
  *(v1 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 16) = *a1;
  *(v1 + 24) = 0;
  v7 = swift_task_alloc();
  *(v1 + 72) = v7;
  *v7 = v1;
  v7[1] = sub_26CCAB9B8;

  return (sub_26CCAA8AC)(v1 + 16);
}

uint64_t sub_26CCAB9B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_26CCABCC0;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_26CCABAE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCABAE0()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  sub_26CCA8AA8(v2);

  sub_26CCAE9FC(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);
    v6 = v0[8];
    v7 = v0[6];
    sub_26CC1B544(v0[7], &qword_2804BC3F8, &qword_26CD45490);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[7], v0[4]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_26CCABD40;
    v11 = v0[6];

    return sub_26CD2BB90(v11);
  }
}

uint64_t sub_26CCABCC0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CCABD40(void *a1)
{
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_26CCABF10;
  }

  else
  {

    v5 = sub_26CCABE5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCABE5C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[7];
  v2 = v0[6];
  sub_26CC1B544(v0[8], &qword_2804BC3F8, &qword_26CD45490);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CCABF10()
{
  v1 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CCABFC4(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCAC124;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAC124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAC520;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCAC24C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCAC24C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFAD70;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCAC590;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCAC520()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCAC590(void *a1)
{
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_26CCAC734;
  }

  else
  {

    v5 = sub_26CCAC6AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCAC6AC()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCAC734()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCAC7BC(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 2;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCAC91C;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAC91C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCACA44;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCACA44()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFADA0;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCACD18(void *a1)
{
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_26CCAF72C;
  }

  else
  {

    v5 = sub_26CCAF728;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCACE34(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 3;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCACF94;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCACF94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCAD0BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCAD0BC()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFADD0;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCAD390(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 4;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCAD4F0;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAD4F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCAD618;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCAD618()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFAE00;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCAD8EC(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 5;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCADA4C;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCADA4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCADB74;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCADB74()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFAE30;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCADE48(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 7;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCADFA8;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCADFA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCAE0D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCAE0D0()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFAE60;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

uint64_t sub_26CCAE3A4(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 16) = a1;
  *(v1 + 24) = 6;

  v7 = swift_task_alloc();
  *(v1 + 64) = v7;
  *v7 = v1;
  v7[1] = sub_26CCAE504;

  return sub_26CCAA8AC((v1 + 16));
}

uint64_t sub_26CCAE504(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26CCAF71C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26CCAE62C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCAE62C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_26CCA8AA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(v0[4], &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 32) = &unk_287DFAE90;
    sub_26CD3A3DC();

    sub_26CCAE900();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
    v7 = v0[7];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    if (qword_280BBB0C0 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_26CCACD18;
    v12 = v0[7];

    return sub_26CD2BB90(v12);
  }
}

unint64_t sub_26CCAE900()
{
  result = qword_2804BD278;
  if (!qword_2804BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD278);
  }

  return result;
}

uint64_t sub_26CCAE954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26CCAE9A8()
{
  result = qword_2804BD280;
  if (!qword_2804BD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD280);
  }

  return result;
}

uint64_t sub_26CCAE9FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CCAEA6C()
{
  result = qword_2804BD288;
  if (!qword_2804BD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD288);
  }

  return result;
}

void sub_26CCAEB28()
{
  sub_26CC16358();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26CCAEBB4()
{
  sub_26CCAEC28();
  if (v0 <= 0x3F)
  {
    sub_26CC16488();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26CCAEC28()
{
  if (!qword_280BBA258[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCA90, &qword_26CD3C200);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_280BBA258);
    }
  }
}

unint64_t sub_26CCAECC8()
{
  result = qword_2804BD2A8;
  if (!qword_2804BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2A8);
  }

  return result;
}

unint64_t sub_26CCAED20()
{
  result = qword_2804BD2B0;
  if (!qword_2804BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2B0);
  }

  return result;
}

uint64_t sub_26CCAED74()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CCAEDC0()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CCAEE0C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2B8, &qword_26CD457A0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD2C0, &qword_26CD457A8);
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CCAF054();
  sub_26CD3B15C();
  v11 = v16;
  v12 = v17;
  sub_26CCAF0A8();
  sub_26CD3ADBC();
  v13 = sub_26CCA8294();
  (*(v12 + 8))(v5, v2);
  (*(v11 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_26CCAF054()
{
  result = qword_2804BD2C8;
  if (!qword_2804BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2C8);
  }

  return result;
}

unint64_t sub_26CCAF0A8()
{
  result = qword_2804BD2D0;
  if (!qword_2804BD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2D0);
  }

  return result;
}

unint64_t sub_26CCAF0FC()
{
  result = qword_2804BD2F0;
  if (!qword_2804BD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2F0);
  }

  return result;
}

uint64_t sub_26CCAF150(uint64_t a1)
{
  v2 = _s10NetworkingO19UserConsentResponseVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CCAF1AC()
{
  result = qword_2804BD2F8;
  if (!qword_2804BD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD2F8);
  }

  return result;
}

uint64_t sub_26CCAF200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CCAF248(uint64_t a1, uint64_t a2)
{
  v4 = _s10NetworkingO19UserConsentResponseVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CCAF2F0()
{
  result = qword_2804BD300;
  if (!qword_2804BD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD300);
  }

  return result;
}

unint64_t sub_26CCAF348()
{
  result = qword_2804BD308;
  if (!qword_2804BD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD308);
  }

  return result;
}

unint64_t sub_26CCAF3A0()
{
  result = qword_2804BD310;
  if (!qword_2804BD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD310);
  }

  return result;
}

unint64_t sub_26CCAF3F8()
{
  result = qword_2804BD318;
  if (!qword_2804BD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD318);
  }

  return result;
}

unint64_t sub_26CCAF450()
{
  result = qword_2804BD320;
  if (!qword_2804BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD320);
  }

  return result;
}

unint64_t sub_26CCAF4A8()
{
  result = qword_2804BD328;
  if (!qword_2804BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD328);
  }

  return result;
}

unint64_t sub_26CCAF500()
{
  result = qword_2804BD330;
  if (!qword_2804BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD330);
  }

  return result;
}

unint64_t sub_26CCAF558()
{
  result = qword_2804BD338;
  if (!qword_2804BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD338);
  }

  return result;
}

unint64_t sub_26CCAF5B0()
{
  result = qword_2804BD340;
  if (!qword_2804BD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD340);
  }

  return result;
}

unint64_t sub_26CCAF608()
{
  result = qword_2804BD348;
  if (!qword_2804BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD348);
  }

  return result;
}

unint64_t sub_26CCAF660()
{
  result = qword_2804BD350;
  if (!qword_2804BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD350);
  }

  return result;
}

unint64_t sub_26CCAF6B8()
{
  result = qword_2804BD358;
  if (!qword_2804BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD358);
  }

  return result;
}

uint64_t _sSo8TVAppBagC0A8ServicesE3url3for10Foundation3URLVSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v7 = sub_26CD3A41C();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v36 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v32 = v10;
  sub_26CD3A3EC();

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_26CD3AC6C();

  v37 = sub_26CC19D14();
  v38 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v31 = a1;
  v15 = v37;
  v16 = v38;
  sub_26CD3A99C();
  v30 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v36;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v18));
  v19 = *(v3 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v4 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v31;
    sub_26CCB65D8(v31, a2, v21, 0, v33);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = v36;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26CD3AC6C();
    v24 = *(v4 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v25 = *(v4 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v24, v25);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v22 = v31;
    MEMORY[0x26D6AD060](v31, a2);
    v26 = v38;
    *(v23 + 32) = v37;
    *(v23 + 40) = v26;
    sub_26CD3A98C();
    v27 = swift_allocObject();
    *(v27 + 16) = v36;
    *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v27 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v27 + 32) = v23;
    sub_26CD3A3DC();

    sub_26CCB65D8(v22, a2, *(v4 + OBJC_IVAR___TVAppBag_amsBag), 0, v33);
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02D58, sub_26CC2175C, &block_descriptor_52);
  sub_26CD3AA1C();
  v28 = v32;
  sub_26CD3A3FC();
  return (*(v34 + 8))(v28, v35);
}

uint64_t _sSo8TVAppBagC0A8ServicesE10dictionary3forSDys11AnyHashableVypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v37 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_26CD3AC6C();

  v38 = sub_26CC19D14();
  v39 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v34 = a1;
  v15 = v38;
  v16 = v39;
  sub_26CD3A99C();
  v32[1] = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v37;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v3 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v34;
    v23 = sub_26CC22DEC(v34, a2, v21, 0, v3, &unk_2804BD450, &unk_26CD47370);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v25, v26);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v27 = v34;
    MEMORY[0x26D6AD060](v34, a2);
    v28 = v39;
    *(v24 + 32) = v38;
    *(v24 + 40) = v28;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 32) = v24;
    sub_26CD3A3DC();

    v21 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v23 = sub_26CC22DEC(v27, a2, v21, 0, v3, &unk_2804BD450, &unk_26CD47370);
    v22 = v27;
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
  sub_26CD3AA1C();
  v30 = v33;
  sub_26CD3A3FC();
  (*(v35 + 8))(v30, v36);
  return v23;
}

uint64_t sub_26CCB019C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v36 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_26CD3AC6C();

  v37 = sub_26CC19D14();
  v38 = v13;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v32 = a1;
  v14 = v37;
  v15 = v38;
  sub_26CD3A99C();
  v31[1] = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = v36;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  sub_26CD3A3DC();

  v17 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v17));
  v18 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v19 = v18;
  os_unfair_lock_unlock((v3 + v17));
  swift_endAccess();
  if (v18)
  {
    v20 = v19;
    v21 = v32;
    v22 = sub_26CCBB014(v32, a2, v20, 0, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = v36;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26CD3AC6C();
    v24 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v24, v25);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v26 = v32;
    MEMORY[0x26D6AD060](v32, a2);
    v27 = v38;
    *(v23 + 32) = v37;
    *(v23 + 40) = v27;
    sub_26CD3A98C();
    v28 = swift_allocObject();
    *(v28 + 16) = v36;
    *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 32) = v23;
    sub_26CD3A3DC();

    v20 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v22 = sub_26CCBB014(v26, a2, v20, 0, v3);
    v21 = v26;
  }

  sub_26CC1D5F8(v21, a2, nullsub_1, 0, &unk_287E02C68, sub_26CC21730, &block_descriptor_31);
  sub_26CD3AA1C();
  v29 = v33;
  sub_26CD3A3FC();
  (*(v34 + 8))(v29, v35);
  return v22;
}

uint64_t sub_26CCB06C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v37 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_26CD3AC6C();

  v38 = sub_26CC19D14();
  v39 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v34 = a1;
  v15 = v38;
  v16 = v39;
  sub_26CD3A99C();
  v32[1] = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v37;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v3 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v34;
    v23 = sub_26CCBB644(v34, a2, v21, 0, v3, MEMORY[0x277D83B88]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v25, v26);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v27 = v34;
    MEMORY[0x26D6AD060](v34, a2);
    v28 = v39;
    *(v24 + 32) = v38;
    *(v24 + 40) = v28;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 32) = v24;
    sub_26CD3A3DC();

    v21 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v23 = sub_26CCBB644(v27, a2, v21, 0, v3, MEMORY[0x277D83B88]);
    v22 = v27;
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
  sub_26CD3AA1C();
  v30 = v33;
  sub_26CD3A3FC();
  (*(v35 + 8))(v30, v36);
  return v23;
}

uint64_t sub_26CCB0C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v37 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_26CD3AC6C();

  v38 = sub_26CC19D14();
  v39 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v34 = a1;
  v15 = v38;
  v16 = v39;
  sub_26CD3A99C();
  v32[1] = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v37;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v3 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v34;
    v23 = sub_26CCBB644(v34, a2, v21, 0, v3, MEMORY[0x277D839F8]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v25, v26);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v27 = v34;
    MEMORY[0x26D6AD060](v34, a2);
    v28 = v39;
    *(v24 + 32) = v38;
    *(v24 + 40) = v28;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 32) = v24;
    sub_26CD3A3DC();

    v21 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v23 = sub_26CCBB644(v27, a2, v21, 0, v3, MEMORY[0x277D839F8]);
    v22 = v27;
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
  sub_26CD3AA1C();
  v30 = v33;
  sub_26CD3A3FC();
  (*(v35 + 8))(v30, v36);
  return v23;
}

uint64_t TVAppBag.value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a4;
  v38 = a3;
  v8 = sub_26CD3A41C();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v13 = swift_allocObject();
  v41 = xmmword_26CD3C1E0;
  *(v13 + 16) = xmmword_26CD3C1E0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  v14 = sub_26CC19E10();
  *(v13 + 64) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v36 = v11;
  sub_26CD3A3EC();

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_26CD3AC6C();
  v15 = sub_26CC19D14();
  v17 = v16;

  v42 = v15;
  v43 = v17;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v35 = a1;
  v18 = v42;
  v19 = v43;
  sub_26CD3A99C();
  v34[1] = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = v14;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  sub_26CD3A3DC();

  v21 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v5 + v21));
  v22 = *(v5 + OBJC_IVAR___TVAppBag_snapshotBag);
  v23 = v22;
  os_unfair_lock_unlock((v5 + v21));
  swift_endAccess();
  if (v22)
  {
    v24 = v23;
    v25 = v38;
    v26 = v35;
    sub_26CCB6CD4(v35, a2, v24, 0, v38, v37);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v27 = swift_allocObject();
    *(v27 + 16) = v41;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_26CD3AC6C();
    v28 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v29 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v28, v29);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v26 = v35;
    MEMORY[0x26D6AD060](v35, a2);
    v30 = v43;
    *(v27 + 32) = v42;
    *(v27 + 40) = v30;
    sub_26CD3A98C();
    v31 = swift_allocObject();
    *(v31 + 16) = v41;
    *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 32) = v27;
    sub_26CD3A3DC();

    v25 = v38;
    sub_26CCB6CD4(v26, a2, *(v5 + OBJC_IVAR___TVAppBag_amsBag), 0, v38, v37);
  }

  sub_26CCB77D0(v5, v26, a2, v25, &unk_287E02EC0, nullsub_1);
  sub_26CD3AA1C();
  v32 = v36;
  sub_26CD3A3FC();
  return (*(v39 + 8))(v32, v40);
}

uint64_t sub_26CCB1654()
{
  v8 = sub_26CD3A9CC();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_26CD3A9BC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_26CD3A4CC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  sub_26CD3A4BC();
  v9 = MEMORY[0x277D84F90];
  sub_26CC1A360(&unk_280BBB798, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC80, &unk_26CD45D70);
  sub_26CC1DD84(&qword_280BBB7B8, &unk_2804BCC80, &unk_26CD45D70);
  sub_26CD3AB5C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_26CD3AA0C();
  qword_280BBB738 = result;
  return result;
}

id static TVAppBag.app.getter()
{
  if (qword_280BBB718 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBB720;

  return v1;
}

uint64_t sub_26CCB1924()
{
  sub_26CD3AA1C();
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  return sub_26CD3A3FC();
}

uint64_t sub_26CCB19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v8 = sub_26CD3A49C();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26CD3A4CC();
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(v5 + OBJC_IVAR___TVAppBag_amsBag) isExpired];
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  aBlock = 0;
  v43 = 0xE000000000000000;
  sub_26CD3AC6C();
  v17 = sub_26CC19D14();
  v19 = v18;

  aBlock = v17;
  v43 = v19;
  MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD506E0);
  v33 = a1;
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0x697078457369202CLL, 0xEC0000003D646572);
  if (v16)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v16)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v20, v21);

  v23 = aBlock;
  v22 = v43;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_26CC19E10();
  *(v24 + 32) = v23;
  *(v24 + 40) = v22;
  sub_26CD3A3DC();

  if (v16)
  {
    if (qword_280BBB6A8 != -1)
    {
      swift_once();
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v28 = v33;
    v27[2] = v34;
    v27[3] = v26;
    v27[4] = v28;
    v27[5] = a2;
    v29 = v36;
    v27[6] = v35;
    v27[7] = v29;
    v46 = sub_26CCBC434;
    v47 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_26CC1DDD0;
    v45 = &block_descriptor_17;
    v30 = _Block_copy(&aBlock);

    sub_26CD3A4AC();
    v41 = MEMORY[0x277D84F90];
    sub_26CC1A360(&qword_280BBB7F0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
    sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
    v31 = v40;
    sub_26CD3AB5C();
    MEMORY[0x26D6AD3E0](0, v15, v11, v30);
    _Block_release(v30);
    (*(v39 + 8))(v11, v31);
    (*(v37 + 8))(v15, v38);
  }

  return result;
}

NSNumber_optional __swiftcall TVAppBag.BOOLean(for:)(Swift::String a1)
{
  v1 = sub_26CCB61CC(a1._countAndFlagsBits, a1._object, sub_26CCB019C);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

NSNumber_optional __swiftcall TVAppBag.integer(for:)(Swift::String a1)
{
  v1 = sub_26CCB623C(a1._countAndFlagsBits, a1._object, sub_26CCB06C4);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

NSNumber_optional __swiftcall TVAppBag.double(for:)(Swift::String a1)
{
  v1 = sub_26CCB634C(a1._countAndFlagsBits, a1._object, sub_26CCB0C04);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_26CCB1F84(uint64_t a1, uint64_t a2)
{
  v5 = sub_26CD3A41C();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  v52 = xmmword_26CD3C1E0;
  *(v10 + 16) = xmmword_26CD3C1E0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v48 = v8;
  sub_26CD3A3EC();

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v57 = sub_26CC19D14();
  *(&v57 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v51 = v2;
  v14 = v57;
  sub_26CD3A99C();
  v15 = swift_allocObject();
  *(v15 + 16) = v52;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v47 = v12;
  *(v15 + 32) = v14;
  v16 = v51;
  sub_26CD3A3DC();

  if (sub_26CC2016C(a1, a2, *(v16 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v17 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v16 + v17));
    v18 = *(v16 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v16 + v17));
    swift_endAccess();
    if (*(v18 + 16))
    {
      v19 = sub_26CC181C4(a1, a2);
      v20 = v48;
      if (v21)
      {
        sub_26CC168C0(*(v18 + 56) + 32 * v19, &v57);
      }

      else
      {

        v57 = 0u;
        v58 = 0u;
      }
    }

    else
    {

      v57 = 0u;
      v58 = 0u;
      v20 = v48;
    }

    sub_26CC200FC(&v57, &v55);
    if (v56)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v55 = 0;
        *(&v55 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v28 = *(v51 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v29 = *(v51 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v28, v29);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v30 = v55;
        sub_26CD3A99C();
        v31 = swift_allocObject();
        *(v31 + 16) = v52;
        v32 = v47;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = v32;
        *(v31 + 32) = v30;
        sub_26CD3A3DC();

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);
        sub_26CC1B544(&v57, &qword_2804BBDA8, &qword_26CD3D5F0);
        v27 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v55, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v33 = sub_26CCBBC88(&v57);
    if (v34)
    {
      v27 = v33;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);
    }

    else
    {
      sub_26CC200FC(&v57, &v53);
      v46 = v9;
      if (v54)
      {
        sub_26CC331CC(&v53, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v35 = swift_allocObject();
        *(v35 + 16) = v52;
        *&v53 = 0;
        *(&v53 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v55, v56);
        swift_getDynamicType();
        v36 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v36);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v37 = *(&v53 + 1);
        *(v35 + 32) = v53;
        *(v35 + 40) = v37;
        LODWORD(v48) = sub_26CD3A98C();
        v38 = swift_allocObject();
        *(v38 + 16) = v52;
        *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 32) = v35;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v55);
      }

      else
      {
        sub_26CC1B544(&v53, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v39 = v51;
      v40 = *(v51 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v41 = *(v51 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v40, v41);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](a1, a2);
      v42 = v55;
      sub_26CD3A99C();
      v43 = swift_allocObject();
      *(v43 + 16) = v52;
      v44 = v47;
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 64) = v44;
      *(v43 + 32) = v42;
      sub_26CD3A3DC();

      v27 = sub_26CC227C4(a1, a2, *(v39 + OBJC_IVAR___TVAppBag_amsBag), 1, v39);
    }

    sub_26CC1B544(&v57, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v22 = swift_allocObject();
    *(v22 + 16) = v52;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v23 = *(v16 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v57 = *(v16 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v57 + 1) = v23;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, a2);
    v24 = *(&v57 + 1);
    *(v22 + 32) = v57;
    *(v22 + 40) = v24;
    sub_26CD3A98C();
    v25 = a1;
    v26 = swift_allocObject();
    *(v26 + 16) = v52;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 32) = v22;
    sub_26CD3A3DC();

    v27 = _sSo8TVAppBagC0A8ServicesE6string3forSSSgSS_tF_0(v25, a2);
    v20 = v48;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v49 + 8))(v20, v50);
  return v27;
}

uint64_t _sSo8TVAppBagC0A8ServicesE16cachedDictionary3forSDys11AnyHashableVypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26CD3A41C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  v53 = xmmword_26CD3C1E0;
  *(v10 + 16) = xmmword_26CD3C1E0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v49 = v8;
  sub_26CD3A3EC();

  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v58 = sub_26CC19D14();
  *(&v58 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v52 = v2;
  v14 = v58;
  sub_26CD3A99C();
  v15 = swift_allocObject();
  *(v15 + 16) = v53;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v48 = v12;
  *(v15 + 32) = v14;
  v16 = v52;
  v17 = v9;
  sub_26CD3A3DC();

  v18 = a1;
  if (sub_26CC2016C(a1, a2, *(v16 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v19 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v16 + v19));
    v20 = *(v16 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v16 + v19));
    swift_endAccess();
    if (*(v20 + 16))
    {
      v21 = sub_26CC181C4(a1, a2);
      v22 = v49;
      if (v23)
      {
        sub_26CC168C0(*(v20 + 56) + 32 * v21, &v58);
      }

      else
      {

        v58 = 0u;
        v59 = 0u;
      }
    }

    else
    {

      v58 = 0u;
      v59 = 0u;
      v22 = v49;
    }

    sub_26CC200FC(&v58, &v56);
    if (v57)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v30 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v31 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v30, v31);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v32 = v56;
        sub_26CD3A99C();
        v33 = swift_allocObject();
        *(v33 + 16) = v53;
        v34 = v48;
        *(v33 + 56) = MEMORY[0x277D837D0];
        *(v33 + 64) = v34;
        *(v33 + 32) = v32;
        sub_26CD3A3DC();

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
        sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
        v29 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v56, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v35 = sub_26CCBBE08(&v58, &unk_2804BD450, &unk_26CD47370);
    if (v35)
    {
      v29 = v35;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D08, sub_26CCBC444, &block_descriptor_45);
    }

    else
    {
      sub_26CC200FC(&v58, &v54);
      v47 = v17;
      if (v55)
      {
        sub_26CC331CC(&v54, &v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v36 = swift_allocObject();
        *(v36 + 16) = v53;
        *&v54 = 0;
        *(&v54 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v56, v57);
        swift_getDynamicType();
        v37 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v37);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v38 = *(&v54 + 1);
        *(v36 + 32) = v54;
        *(v36 + 40) = v38;
        LODWORD(v49) = sub_26CD3A98C();
        v39 = swift_allocObject();
        *(v39 + 16) = v53;
        *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v39 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v39 + 32) = v36;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        sub_26CC1B544(&v54, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v40 = v52;
      v41 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v42 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v41, v42);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v18, a2);
      v43 = v56;
      sub_26CD3A99C();
      v44 = swift_allocObject();
      *(v44 + 16) = v53;
      v45 = v48;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v45;
      *(v44 + 32) = v43;
      sub_26CD3A3DC();

      v29 = sub_26CC22DEC(v18, a2, *(v40 + OBJC_IVAR___TVAppBag_amsBag), 1, v40, &unk_2804BD450, &unk_26CD47370);
    }

    sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = v16;
    v25 = swift_allocObject();
    *(v25 + 16) = v53;
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v26 = *(v24 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v58 = *(v24 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v58 + 1) = v26;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](v18, a2);
    v27 = *(&v58 + 1);
    *(v25 + 32) = v58;
    *(v25 + 40) = v27;
    sub_26CD3A98C();
    v28 = swift_allocObject();
    *(v28 + 16) = v53;
    *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 32) = v25;
    sub_26CD3A3DC();

    v29 = _sSo8TVAppBagC0A8ServicesE10dictionary3forSDys11AnyHashableVypGSgSS_tF_0(v18, a2);
    v22 = v49;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v50 + 8))(v22, v51);
  return v29;
}

uint64_t _sSo8TVAppBagC0A8ServicesE11cachedArray3forSayypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26CD3A41C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  v53 = xmmword_26CD3C1E0;
  *(v10 + 16) = xmmword_26CD3C1E0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v49 = v8;
  sub_26CD3A3EC();

  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v58 = sub_26CC19D14();
  *(&v58 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v52 = v2;
  v14 = v58;
  sub_26CD3A99C();
  v15 = swift_allocObject();
  *(v15 + 16) = v53;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v48 = v12;
  *(v15 + 32) = v14;
  v16 = v52;
  v17 = v9;
  sub_26CD3A3DC();

  v18 = a1;
  if (sub_26CC2016C(a1, a2, *(v16 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v19 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v16 + v19));
    v20 = *(v16 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v16 + v19));
    swift_endAccess();
    if (*(v20 + 16))
    {
      v21 = sub_26CC181C4(a1, a2);
      v22 = v49;
      if (v23)
      {
        sub_26CC168C0(*(v20 + 56) + 32 * v21, &v58);
      }

      else
      {

        v58 = 0u;
        v59 = 0u;
      }
    }

    else
    {

      v58 = 0u;
      v59 = 0u;
      v22 = v49;
    }

    sub_26CC200FC(&v58, &v56);
    if (v57)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v30 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v31 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v30, v31);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v32 = v56;
        sub_26CD3A99C();
        v33 = swift_allocObject();
        *(v33 + 16) = v53;
        v34 = v48;
        *(v33 + 56) = MEMORY[0x277D837D0];
        *(v33 + 64) = v34;
        *(v33 + 32) = v32;
        sub_26CD3A3DC();

        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02CB8, sub_26CC23F40, &block_descriptor_38);
        sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
        v29 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v56, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v35 = sub_26CCBBE08(&v58, &unk_2804BD460, &unk_26CD45D60);
    if (v35)
    {
      v29 = v35;

      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02CB8, sub_26CC23F40, &block_descriptor_38);
    }

    else
    {
      sub_26CC200FC(&v58, &v54);
      v47 = v17;
      if (v55)
      {
        sub_26CC331CC(&v54, &v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v36 = swift_allocObject();
        *(v36 + 16) = v53;
        *&v54 = 0;
        *(&v54 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](a1, a2);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v56, v57);
        swift_getDynamicType();
        v37 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v37);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v38 = *(&v54 + 1);
        *(v36 + 32) = v54;
        *(v36 + 40) = v38;
        LODWORD(v49) = sub_26CD3A98C();
        v39 = swift_allocObject();
        *(v39 + 16) = v53;
        *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v39 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v39 + 32) = v36;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        sub_26CC1B544(&v54, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v40 = v52;
      v41 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v42 = *(v52 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v41, v42);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v18, a2);
      v43 = v56;
      sub_26CD3A99C();
      v44 = swift_allocObject();
      *(v44 + 16) = v53;
      v45 = v48;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v45;
      *(v44 + 32) = v43;
      sub_26CD3A3DC();

      v29 = sub_26CC22DEC(v18, a2, *(v40 + OBJC_IVAR___TVAppBag_amsBag), 1, v40, &unk_2804BD460, &unk_26CD45D60);
    }

    sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = v16;
    v25 = swift_allocObject();
    *(v25 + 16) = v53;
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v26 = *(v24 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v58 = *(v24 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v58 + 1) = v26;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](v18, a2);
    v27 = *(&v58 + 1);
    *(v25 + 32) = v58;
    *(v25 + 40) = v27;
    sub_26CD3A98C();
    v28 = swift_allocObject();
    *(v28 + 16) = v53;
    *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 32) = v25;
    sub_26CD3A3DC();

    v29 = _sSo8TVAppBagC0A8ServicesE5array3forSayypGSgSS_tF_0(v18, a2);
    v22 = v49;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v50 + 8))(v22, v51);
  return v29;
}

uint64_t sub_26CCB3EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v55 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v54 = a2;
  v51 = v9;
  sub_26CD3A3EC();

  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v60 = sub_26CC19D14();
  *(&v60 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, v54);
  v14 = v60;
  sub_26CD3A99C();
  v50 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v55;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v12;
  v49 = v12;
  *(v15 + 32) = v14;
  v16 = v54;
  sub_26CD3A3DC();

  if (sub_26CC2016C(a1, v16, *(v2 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v17 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v2 + v17));
    v18 = *(v2 + OBJC_IVAR___TVAppBag_cachedBags);

    v48 = v3;
    os_unfair_lock_unlock((v3 + v17));
    swift_endAccess();
    if (*(v18 + 16))
    {
      v19 = a1;
      v20 = sub_26CC181C4(a1, v16);
      v21 = v51;
      if (v22)
      {
        sub_26CC168C0(*(v18 + 56) + 32 * v20, &v60);
      }

      else
      {

        v60 = 0u;
        v61 = 0u;
      }
    }

    else
    {

      v60 = 0u;
      v61 = 0u;
      v21 = v51;
      v19 = a1;
    }

    sub_26CC200FC(&v60, &v58);
    if (v59)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v58 = 0;
        *(&v58 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v28 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v29 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v28, v29);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v30 = v58;
        sub_26CD3A99C();
        v31 = swift_allocObject();
        *(v31 + 16) = v55;
        v32 = v49;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = v32;
        *(v31 + 32) = v30;
        sub_26CD3A3DC();

        sub_26CC1D5F8(v19, v16, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
        sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
        v27 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v33 = sub_26CCBC114(&v60);
    if (v34)
    {
      sub_26CC200FC(&v60, &v56);
      if (v57)
      {
        sub_26CC331CC(&v56, &v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v35 = swift_allocObject();
        *(v35 + 16) = v55;
        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](v19, v54);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v58, v59);
        swift_getDynamicType();
        v36 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v36);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v37 = *(&v56 + 1);
        *(v35 + 32) = v56;
        *(v35 + 40) = v37;
        sub_26CD3A98C();
        v38 = swift_allocObject();
        *(v38 + 16) = v55;
        *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 32) = v35;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v58);
      }

      else
      {
        sub_26CC1B544(&v56, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v39 = v48;
      v40 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v41 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v40, v41);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      v42 = v54;
      MEMORY[0x26D6AD060](v19, v54);
      v43 = v58;
      sub_26CD3A99C();
      v44 = swift_allocObject();
      *(v44 + 16) = v55;
      v45 = v49;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v45;
      *(v44 + 32) = v43;
      sub_26CD3A3DC();

      v27 = sub_26CCBB644(v19, v42, *(v39 + OBJC_IVAR___TVAppBag_amsBag), 1, v39, MEMORY[0x277D83B88]);
      sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    else
    {
      v27 = v33;
      sub_26CC1D5F8(v19, v54, nullsub_1, 0, &unk_287E02C18, sub_26CC211C0, &block_descriptor_24);
      sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = v55;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v24 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v60 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v60 + 1) = v24;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, v16);
    v25 = *(&v60 + 1);
    *(v23 + 32) = v60;
    *(v23 + 40) = v25;
    sub_26CD3A98C();
    v26 = swift_allocObject();
    *(v26 + 16) = v55;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 32) = v23;
    sub_26CD3A3DC();

    v27 = sub_26CCB06C4(a1, v16);
    v21 = v51;
  }

LABEL_20:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v52 + 8))(v21, v53);
  return v27;
}

uint64_t sub_26CCB4930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v55 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v54 = a2;
  v51 = v9;
  sub_26CD3A3EC();

  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v60 = sub_26CC19D14();
  *(&v60 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, v54);
  v14 = v60;
  sub_26CD3A99C();
  v50 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v55;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v12;
  v49 = v12;
  *(v15 + 32) = v14;
  v16 = v54;
  sub_26CD3A3DC();

  if (sub_26CC2016C(a1, v16, *(v2 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v17 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v2 + v17));
    v18 = *(v2 + OBJC_IVAR___TVAppBag_cachedBags);

    v48 = v3;
    os_unfair_lock_unlock((v3 + v17));
    swift_endAccess();
    if (*(v18 + 16))
    {
      v19 = a1;
      v20 = sub_26CC181C4(a1, v16);
      v21 = v51;
      if (v22)
      {
        sub_26CC168C0(*(v18 + 56) + 32 * v20, &v60);
      }

      else
      {

        v60 = 0u;
        v61 = 0u;
      }
    }

    else
    {

      v60 = 0u;
      v61 = 0u;
      v21 = v51;
      v19 = a1;
    }

    sub_26CC200FC(&v60, &v58);
    if (v59)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v58 = 0;
        *(&v58 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v28 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v29 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v28, v29);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v30 = v58;
        sub_26CD3A99C();
        v31 = swift_allocObject();
        *(v31 + 16) = v55;
        v32 = v49;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = v32;
        *(v31 + 32) = v30;
        sub_26CD3A3DC();

        sub_26CC1D5F8(v19, v16, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
        sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
        v27 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      sub_26CC1B544(&v58, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v33 = sub_26CCBC294(&v60);
    if (v34)
    {
      sub_26CC200FC(&v60, &v56);
      if (v57)
      {
        sub_26CC331CC(&v56, &v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v35 = swift_allocObject();
        *(v35 + 16) = v55;
        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        MEMORY[0x26D6AD060](v19, v54);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v58, v59);
        swift_getDynamicType();
        v36 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v36);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v37 = *(&v56 + 1);
        *(v35 + 32) = v56;
        *(v35 + 40) = v37;
        sub_26CD3A98C();
        v38 = swift_allocObject();
        *(v38 + 16) = v55;
        *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v38 + 32) = v35;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v58);
      }

      else
      {
        sub_26CC1B544(&v56, &qword_2804BBDA8, &qword_26CD3D5F0);
      }

      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v39 = v48;
      v40 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v41 = *(v48 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v40, v41);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      v42 = v54;
      MEMORY[0x26D6AD060](v19, v54);
      v43 = v58;
      sub_26CD3A99C();
      v44 = swift_allocObject();
      *(v44 + 16) = v55;
      v45 = v49;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v45;
      *(v44 + 32) = v43;
      sub_26CD3A3DC();

      v27 = sub_26CCBB644(v19, v42, *(v39 + OBJC_IVAR___TVAppBag_amsBag), 1, v39, MEMORY[0x277D839F8]);
      sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    else
    {
      v27 = v33;
      sub_26CC1D5F8(v19, v54, nullsub_1, 0, &unk_287E02B78, sub_26CCBC414, &block_descriptor_7);
      sub_26CC1B544(&v60, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = v55;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v24 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v60 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v60 + 1) = v24;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, v16);
    v25 = *(&v60 + 1);
    *(v23 + 32) = v60;
    *(v23 + 40) = v25;
    sub_26CD3A98C();
    v26 = swift_allocObject();
    *(v26 + 16) = v55;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 32) = v23;
    sub_26CD3A3DC();

    v27 = sub_26CCB0C04(a1, v16);
    v21 = v51;
  }

LABEL_20:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v52 + 8))(v21, v53);
  return v27;
}

uint64_t TVAppBag.cachedValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v70 = a4;
  v65 = sub_26CD3AADC();
  v64 = *(v65 - 8);
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v65);
  v68 = &v63 - v11;
  v72 = a3;
  v69 = *(a3 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26CD3A41C();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v18 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v20 = swift_allocObject();
  v77 = xmmword_26CD3C1E0;
  *(v20 + 16) = xmmword_26CD3C1E0;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_26CC19E10();
  *(v20 + 64) = v22;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;

  v76 = a1;
  v71 = v17;
  sub_26CD3A3EC();

  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();
  v23 = sub_26CC19D14();
  v25 = v24;

  *&v82 = v23;
  *(&v82 + 1) = v25;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](v76, a2);
  v75 = a2;
  v26 = v82;
  sub_26CD3A99C();
  v27 = swift_allocObject();
  *(v27 + 16) = v77;
  *(v27 + 56) = v21;
  *(v27 + 64) = v22;
  v67 = v22;
  *(v27 + 32) = v26;
  v28 = v75;
  v29 = v76;
  sub_26CD3A3DC();

  v30 = v5;
  if (sub_26CC2016C(v29, v28, *(v5 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v63 = v19;
    v31 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v5 + v31));
    v32 = *(v5 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v5 + v31));
    swift_endAccess();
    v33 = v72;
    if (*(v32 + 16))
    {
      v34 = sub_26CC181C4(v29, v75);
      v35 = v68;
      if (v36)
      {
        sub_26CC168C0(*(v32 + 56) + 32 * v34, &v82);
      }

      else
      {

        v82 = 0u;
        v83 = 0u;
      }
    }

    else
    {

      v82 = 0u;
      v83 = 0u;
      v35 = v68;
    }

    sub_26CC200FC(&v82, &v80);
    if (v81)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v42 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v43 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v42, v43);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v44 = v80;
        sub_26CD3A99C();
        v45 = swift_allocObject();
        *(v45 + 16) = v77;
        v46 = v67;
        *(v45 + 56) = MEMORY[0x277D837D0];
        *(v45 + 64) = v46;
        *(v45 + 32) = v44;
        sub_26CD3A3DC();

        (*(v69 + 56))(v70, 1, 1, v33);
        sub_26CCB77D0(v5, v29, v75, v33, &unk_287E02DA8, nullsub_1);
LABEL_20:
        sub_26CC1B544(&v82, &qword_2804BBDA8, &qword_26CD3D5F0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v80, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    sub_26CCB7498(&v82, v33, v35);
    v47 = v69;
    if ((*(v69 + 48))(v35, 1, v33) == 1)
    {
      (*(v64 + 8))(v35, v65);
      sub_26CC200FC(&v82, &v78);
      if (v79)
      {
        sub_26CC331CC(&v78, &v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v48 = swift_allocObject();
        *(v48 + 16) = v77;
        *&v78 = 0;
        *(&v78 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
        v49 = v75;
        MEMORY[0x26D6AD060](v29, v75);
        MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
        __swift_project_boxed_opaque_existential_1(&v80, v81);
        swift_getDynamicType();
        v50 = sub_26CD3B1AC();
        MEMORY[0x26D6AD060](v50);

        MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
        sub_26CD3AD1C();
        v51 = *(&v78 + 1);
        *(v48 + 32) = v78;
        *(v48 + 40) = v51;
        sub_26CD3A98C();
        v52 = swift_allocObject();
        *(v52 + 16) = v77;
        *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        v53 = v49;
        v29 = v76;
        *(v52 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
        *(v52 + 32) = v48;
        sub_26CD3A3DC();

        __swift_destroy_boxed_opaque_existential_1(&v80);
      }

      else
      {
        sub_26CC1B544(&v78, &qword_2804BBDA8, &qword_26CD3D5F0);
        v53 = v75;
      }

      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v56 = *(v30 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v57 = *(v30 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v56, v57);

      MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
      MEMORY[0x26D6AD060](v29, v53);
      v58 = v80;
      sub_26CD3A99C();
      v59 = swift_allocObject();
      *(v59 + 16) = v77;
      v60 = v67;
      *(v59 + 56) = MEMORY[0x277D837D0];
      *(v59 + 64) = v60;
      *(v59 + 32) = v58;
      sub_26CD3A3DC();

      sub_26CCB6CD4(v29, v53, *(v30 + OBJC_IVAR___TVAppBag_amsBag), 1, v33, v70);
    }

    else
    {
      v54 = v66;
      (*(v47 + 32))(v66, v35, v33);
      v55 = v70;
      (*(v47 + 16))(v70, v54, v33);
      (*(v47 + 56))(v55, 0, 1, v33);
      sub_26CCB77D0(v5, v29, v75, v33, &unk_287E02DD0, nullsub_1);
      (*(v47 + 8))(v54, v33);
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v37 = swift_allocObject();
  *(v37 + 16) = v77;
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();
  v39 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
  v38 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

  *&v82 = v39;
  *(&v82 + 1) = v38;
  MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
  MEMORY[0x26D6AD060](v29, v28);
  v40 = *(&v82 + 1);
  *(v37 + 32) = v82;
  *(v37 + 40) = v40;
  sub_26CD3A98C();
  v41 = swift_allocObject();
  *(v41 + 16) = v77;
  *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v41 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
  *(v41 + 32) = v37;
  sub_26CD3A3DC();

  TVAppBag.value<A>(for:)(v29, v28, v72, v70);
LABEL_21:
  sub_26CD3AA1C();
  v61 = v71;
  sub_26CD3A3FC();
  return (*(v73 + 8))(v61, v74);
}

id sub_26CCB6040(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  if (v10)
  {
    v11 = sub_26CD3A4DC();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_26CCB6110(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  if (v10)
  {
    v11 = sub_26CD3A79C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

NSNumber_optional __swiftcall TVAppBag.cachedBoolean(for:)(Swift::String a1)
{
  v1 = sub_26CCB61CC(a1._countAndFlagsBits, a1._object, sub_26CC20728);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB61CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v3 == 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }
}

NSNumber_optional __swiftcall TVAppBag.cachedInteger(for:)(Swift::String a1)
{
  v1 = sub_26CCB623C(a1._countAndFlagsBits, a1._object, sub_26CCB3EA4);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }
}

id sub_26CCB628C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);
  LOBYTE(v6) = v11;

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return v12;
}

NSNumber_optional __swiftcall TVAppBag.cachedDouble(for:)(Swift::String a1)
{
  v1 = sub_26CCB634C(a1._countAndFlagsBits, a1._object, sub_26CCB4930);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_26CCB634C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = COERCE_DOUBLE(a3());
  if (v4)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id sub_26CCB63B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = COERCE_DOUBLE(a4(v6, v8));
  LOBYTE(v6) = v11;

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  return v12;
}

void __swiftcall TVAppBag.init()(TVAppBag *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_26CCB65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a3;
  v49 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = v41 - v11;
  v12 = sub_26CD3A41C();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  v50 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v43 = sub_26CC19E10();
  *(v17 + 64) = v43;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v46 = v15;
  sub_26CD3A3EC();

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_26CD3AC6C();
  v18 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v18);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v19 = (a4 & 1) == 0;
  v42 = a4 & 1;
  if (a4)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  v21 = a2;
  if (v19)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x26D6AD060](v20, v22);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v23 = v44;
  *&v53[0] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v24 = a1;
  v26 = v54;
  v25 = v55;
  sub_26CD3A99C();
  v41[1] = v16;
  v27 = swift_allocObject();
  *(v27 + 16) = v50;
  v28 = v43;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v26;
  *(v27 + 40) = v25;
  sub_26CD3A3DC();

  v29 = sub_26CD3A07C();
  sub_26CC23428(v24, v21, v29, v23, v42, &v54);
  sub_26CC200FC(&v54, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v30 = v45;
  v31 = swift_dynamicCast();
  v32 = *(v29 - 8);
  (*(v32 + 56))(v30, v31 ^ 1u, 1, v29);
  sub_26CC200FC(&v54, &v51);
  if (v52)
  {
    sub_26CC331CC(&v51, v53);
    if ((*(v32 + 48))(v30, 1, v29) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v33 = swift_allocObject();
      *(v33 + 16) = v50;
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v34 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v35 = *(v5 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v34, v35);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v24, v21);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v36 = *(&v51 + 1);
      *(v33 + 32) = v51;
      *(v33 + 40) = v36;
      sub_26CD3A98C();
      v37 = swift_allocObject();
      *(v37 + 16) = v50;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 32) = v33;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v53);
    v38 = &v54;
  }

  else
  {
    sub_26CC1B544(&v54, &qword_2804BBDA8, &qword_26CD3D5F0);
    v38 = &v51;
  }

  sub_26CC1B544(v38, &qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC6FFD0(v30, v49);
  sub_26CD3AA1C();
  v39 = v46;
  sub_26CD3A3FC();
  return (*(v47 + 8))(v39, v48);
}

uint64_t sub_26CCB6CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a3;
  v52 = a6;
  v50 = sub_26CD3AADC();
  v48 = *(v50 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - v12;
  v51 = sub_26CD3A41C();
  v49 = *(v51 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v43 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  v53 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v44 = sub_26CC19E10();
  *(v17 + 64) = v44;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v47 = v15;
  sub_26CD3A3EC();

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_26CD3AC6C();
  v18 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v18);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v19 = (a4 & 1) == 0;
  v42 = a4 & 1;
  if (a4)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  v21 = a1;
  v22 = a2;
  if (v19)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x26D6AD060](v20, v23);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v24 = v45;
  *&v56[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v25 = v57;
  v26 = v58;
  sub_26CD3A99C();
  v41 = v16;
  v27 = swift_allocObject();
  *(v27 + 16) = v53;
  v28 = v44;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  sub_26CD3A3DC();
  v29 = v21;

  sub_26CC23428(v21, v22, a5, v24, v42, &v57);
  sub_26CC200FC(&v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v30 = v46;
  v31 = swift_dynamicCast();
  v32 = *(a5 - 8);
  (*(v32 + 56))(v30, v31 ^ 1u, 1, a5);
  sub_26CC200FC(&v57, &v54);
  if (v55)
  {
    sub_26CC331CC(&v54, v56);
    if ((*(v32 + 48))(v30, 1, a5) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v33 = swift_allocObject();
      *(v33 + 16) = v53;
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v34 = *(v6 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v35 = *(v6 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v34, v35);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v29, v22);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v36 = *(&v54 + 1);
      *(v33 + 32) = v54;
      *(v33 + 40) = v36;
      sub_26CD3A98C();
      v37 = swift_allocObject();
      *(v37 + 16) = v53;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 32) = v33;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v56);
    v38 = &v57;
  }

  else
  {
    sub_26CC1B544(&v57, &qword_2804BBDA8, &qword_26CD3D5F0);
    v38 = &v54;
  }

  sub_26CC1B544(v38, &qword_2804BBDA8, &qword_26CD3D5F0);
  v39 = v47;
  (*(v48 + 32))(v52, v30, v50);
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  return (*(v49 + 8))(v39, v51);
}

uint64_t sub_26CCB7428()
{
  v0 = *(*(sub_26CD3A41C() - 8) + 80);

  return sub_26CCB1924();
}

uint64_t sub_26CCB7498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v23 - v7;
  v8 = sub_26CD3AADC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  v14 = *(a2 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC200FC(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v18 = swift_dynamicCast();
  v19 = v14[7];
  if (!v18)
  {
    v19(v13, 1, 1, a2);
    (*(v9 + 8))(v13, v8);
    if (sub_26CD3A07C() == a2 || sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0) == a2)
    {
      sub_26CC200FC(a1, v25);
      if (v26)
      {
        if (swift_dynamicCast())
        {
          sub_26CD3A03C();

          v21 = swift_dynamicCast() ^ 1;
          return (v19)(a3, v21, 1, a2);
        }
      }

      else
      {
        sub_26CC1B544(v25, &qword_2804BBDA8, &qword_26CD3D5F0);
      }
    }

    v21 = 1;
    return (v19)(a3, v21, 1, a2);
  }

  v19(v13, 0, 1, a2);
  v20 = v14[4];
  v20(v17, v13, a2);
  v20(a3, v17, a2);
  v21 = 0;
  return (v19)(a3, v21, 1, a2);
}

uint64_t sub_26CCB77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  sub_26CCB19B8(a2, a3, a6, v10, a4);
}

void sub_26CCB7858(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = qword_280BBB6B8;
      v7 = a1;
      if (v6 != -1)
      {
        swift_once();
      }

      sub_26CD3AC6C();
      v8 = sub_26CC19D14();
      v10 = v9;

      MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD50C10);
      v11 = [v7 isExpired];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (v12)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      MEMORY[0x26D6AD060](v13, v14);

      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_26CD3C1E0;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_26CC19E10();
      *(v15 + 32) = v8;
      *(v15 + 40) = v10;
      sub_26CD3A3DC();

      sub_26CCB7C2C(v7);
    }

    else
    {
      if (a2)
      {
        swift_getErrorValue();
        v16 = sub_26CD3B08C();
        v18 = v17;
      }

      else
      {
        v18 = 0xED0000726F727265;
        v16 = 0x206E776F6E6B6E55;
      }

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      v20 = sub_26CC19D14();
      v22 = v21;

      MEMORY[0x26D6AD060](0xD00000000000001FLL, 0x800000026CD50BF0);
      MEMORY[0x26D6AD060](v16, v18);

      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26CD3C1E0;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v23 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v23 + 32) = v19;
      sub_26CD3A3DC();
    }
  }
}

uint64_t sub_26CCB7C2C(void *a1)
{
  v2 = v1;
  v4 = sub_26CD3A1EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_26CD3AC6C();
  v9 = sub_26CC19D14();
  v11 = v10;

  v22 = v9;
  v23 = v11;
  MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD50C40);
  v12 = [a1 creationDate];
  sub_26CD3A1BC();

  sub_26CC1A360(&qword_280BBB8B8, MEMORY[0x277CC9578]);
  v13 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v13);

  (*(v5 + 8))(v8, v4);
  v14 = v22;
  v15 = v23;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_26CC19E10();
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  sub_26CD3A3DC();

  v17 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v17));
  swift_endAccess();
  v18 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  *(v2 + OBJC_IVAR___TVAppBag_snapshotBag) = a1;

  swift_beginAccess();
  v19 = a1;
  os_unfair_lock_unlock((v2 + v17));
  swift_endAccess();
  return sub_26CCB7F9C(v19);
}

void sub_26CCB7F10(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_26CCB7F9C(void *a1)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_26CD3A41C();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v7 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v73 = v6;
  sub_26CD3A3FC();
  *&v84 = sub_26CC19D14();
  *(&v84 + 1) = v8;
  MEMORY[0x26D6AD060](0x4365746164707520, 0xEC00000065686361);
  v9 = v84;
  v6 = sub_26CD3A99C();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  v71 = xmmword_26CD3C1E0;
  *(v10 + 16) = xmmword_26CD3C1E0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v70 = sub_26CC19E10();
  *(v10 + 64) = v70;
  *(v10 + 32) = v9;
  v76 = v7;
  sub_26CD3A3DC();

  v11 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v12 = *(v2 + OBJC_IVAR___TVAppBag_diskCachedKeyTypes);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v79 = v2;
  v80 = v12;

  v77 = 0;
  v18 = 0;
  while (1)
  {
    v21 = v18;
    if (!v16)
    {
      break;
    }

LABEL_10:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v18 << 6);
    v24 = (*(v80 + 48) + 16 * v23);
    v25 = *v24;
    v2 = v24[1];
    v26 = *(*(v80 + 56) + 8 * v23);

    sub_26CC23428(v25, v2, v26, v78, 0, &v82);
    if (v83)
    {
      sub_26CC331CC(&v82, &v84);
      sub_26CC168C0(&v84, &v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v11;
      v6 = v11;
      v42 = sub_26CC181C4(v25, v2);
      v43 = *(v11 + 2);
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }

      if (*(v11 + 3) >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v41)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v6 = &v81;
          v51 = v41;
          sub_26CD36B88();
          if (v51)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v46 = v41;
        sub_26CD34624(v45, isUniquelyReferenced_nonNull_native);
        v6 = v81;
        v47 = sub_26CC181C4(v25, v2);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_51;
        }

        v42 = v47;
        if (v46)
        {
LABEL_26:

          v11 = v81;
          v49 = (*(v81 + 7) + 32 * v42);
          __swift_destroy_boxed_opaque_existential_1(v49);
          sub_26CC331CC(&v82, v49);
          __swift_destroy_boxed_opaque_existential_1(&v84);
          goto LABEL_32;
        }
      }

      v11 = v81;
      *&v81[8 * (v42 >> 6) + 64] |= 1 << v42;
      v52 = (*(v11 + 6) + 16 * v42);
      *v52 = v25;
      v52[1] = v2;
      sub_26CC331CC(&v82, (*(v11 + 7) + 32 * v42));
      __swift_destroy_boxed_opaque_existential_1(&v84);
      v53 = *(v11 + 2);
      v33 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v33)
      {
        goto LABEL_50;
      }

      *(v11 + 2) = v54;
LABEL_32:
      if (__OFADD__(v77, 1))
      {
        goto LABEL_49;
      }

      ++v77;
    }

    else
    {
      sub_26CC1B544(&v82, &qword_2804BBDA8, &qword_26CD3D5F0);
      v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v85 = sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      *&v84 = v27;
      sub_26CC331CC(&v84, &v82);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v11;
      v6 = v11;
      v29 = sub_26CC181C4(v25, v2);
      v31 = *(v11 + 2);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35 = v30;
      if (*(v11 + 3) >= v34)
      {
        if (v28)
        {
          goto LABEL_16;
        }

        v6 = &v81;
        v50 = v29;
        sub_26CD36B88();
        v29 = v50;
        if (v35)
        {
          goto LABEL_5;
        }

LABEL_17:
        v11 = v81;
        *&v81[8 * (v29 >> 6) + 64] |= 1 << v29;
        v37 = (*(v11 + 6) + 16 * v29);
        *v37 = v25;
        v37[1] = v2;
        sub_26CC331CC(&v82, (*(v11 + 7) + 32 * v29));
        v38 = *(v11 + 2);
        v33 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v33)
        {
          goto LABEL_46;
        }

        *(v11 + 2) = v39;
      }

      else
      {
        sub_26CD34624(v34, v28);
        v6 = v81;
        v29 = sub_26CC181C4(v25, v2);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_51;
        }

LABEL_16:
        if ((v35 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_5:
        v19 = v29;

        v11 = v81;
        v20 = (*(v81 + 7) + 32 * v19);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_26CC331CC(&v82, v20);
      }
    }
  }

  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v21;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  if (v77)
  {
    v55 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    v56 = v79;
    swift_beginAccess();
    os_unfair_lock_lock((v56 + v55));
    swift_endAccess();
    v57 = *(v56 + OBJC_IVAR___TVAppBag_cachedBags);
    *(v56 + OBJC_IVAR___TVAppBag_cachedBags) = v11;

    swift_beginAccess();

    os_unfair_lock_unlock((v56 + v55));
    swift_endAccess();
    sub_26CCB8768(v11);
  }

  else
  {

    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v58 = *(v79 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v59 = *(v79 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v58, v59);

    MEMORY[0x26D6AD060](0xD000000000000043, 0x800000026CD50C90);
    v60 = [v78 isExpired];
    v61 = v60 == 0;
    if (v60)
    {
      v62 = 1702195828;
    }

    else
    {
      v62 = 0x65736C6166;
    }

    if (v61)
    {
      v63 = 0xE500000000000000;
    }

    else
    {
      v63 = 0xE400000000000000;
    }

    MEMORY[0x26D6AD060](v62, v63);

    v64 = v84;
    sub_26CD3A99C();
    v65 = swift_allocObject();
    *(v65 + 16) = v71;
    v66 = v70;
    *(v65 + 56) = MEMORY[0x277D837D0];
    *(v65 + 64) = v66;
    *(v65 + 32) = v64;
    sub_26CD3A3DC();
  }

  sub_26CD3AA1C();
  v67 = v73;
  sub_26CD3A3FC();
  return (*(v74 + 8))(v67, v75);
}

uint64_t sub_26CCB8768(uint64_t a1)
{
  v2 = sub_26CD3A49C();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD3A4CC();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  aBlock = 0;
  v25 = 0xE000000000000000;
  sub_26CD3AC6C();
  v10 = sub_26CC19D14();
  v12 = v11;

  aBlock = v10;
  v25 = v12;
  MEMORY[0x26D6AD060](0x6361436576617320, 0xEE00676142646568);
  v14 = aBlock;
  v13 = v25;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26CD3C1E0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_26CC19E10();
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  sub_26CD3A3DC();

  if (qword_280BBB728 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  v28 = sub_26CCBC494;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26CC1DDD0;
  v27 = &block_descriptor_77;
  v18 = _Block_copy(&aBlock);

  sub_26CD3A4AC();
  v23 = MEMORY[0x277D84F90];
  sub_26CC1A360(&qword_280BBB7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v9, v5, v18);
  _Block_release(v18);
  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_26CCB8BBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3AC6C();
    v2 = sub_26CC19D14();
    v4 = v3;

    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50B70);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_26CC19E10();
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    sub_26CD3A3DC();

    sub_26CC19E64();
  }
}

void sub_26CCB8D34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_26CCB8D90(a2);
  }
}

uint64_t sub_26CCB8D90(uint64_t isUniquelyReferenced_nonNull_native)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v83 - v3;
  v5 = sub_26CD3A07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v93 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26CD3A41C();
  v85 = *(v86 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20]();
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v12 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v83[1] = v12;
    v84 = v11;
    sub_26CD3A3FC();
    v13 = sub_26CC194BC(MEMORY[0x277D84F90]);
    v14 = isUniquelyReferenced_nonNull_native + 64;
    v15 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(isUniquelyReferenced_nonNull_native + 64);
    v18 = (v15 + 63) >> 6;
    v94 = (v6 + 56);
    v90 = (v6 + 32);
    v89 = (v6 + 8);

    v19 = 0;
    v91 = v4;
    v95 = v5;
    v88 = isUniquelyReferenced_nonNull_native + 64;
    v92 = v18;
    if (v17)
    {
      break;
    }

LABEL_9:
    if (v18 <= v19 + 1)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 - 1;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        v17 = 0;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        goto LABEL_17;
      }

      v17 = *(v14 + 8 * v11);
      ++v19;
      if (v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  while (1)
  {
    v11 = v19;
LABEL_16:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v11 << 6);
    v24 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_26CC168C0(*(isUniquelyReferenced_nonNull_native + 56) + 32 * v23, &v99);
    *&v101 = v26;
    *(&v101 + 1) = v25;
    sub_26CC331CC(&v99, &v102);

    v21 = v11;
    v5 = v95;
LABEL_17:
    v104 = v101;
    v105 = v102;
    v106 = v103;
    v27 = *(&v101 + 1);
    if (!*(&v101 + 1))
    {
      break;
    }

    *&v96 = v21;
    v28 = v104;
    sub_26CC331CC(&v105, &v101);
    sub_26CC168C0(&v101, &v99);
    v29 = swift_dynamicCast();
    v30 = *v94;
    if (v29)
    {
      v6 = v5;
      v5 = isUniquelyReferenced_nonNull_native;
      v30(v4, 0, 1, v6);
      v31 = v28;
      (*v90)(v93, v4, v6);
      v32 = sub_26CD39FAC();
      v100 = MEMORY[0x277D837D0];
      *&v99 = v32;
      *(&v99 + 1) = v33;
      sub_26CC331CC(&v99, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v13;
      v34 = v28;
      v11 = v13;
      v4 = sub_26CC181C4(v34, v27);
      v36 = v13[2];
      v37 = (v35 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_46;
      }

      v6 = v35;
      if (v13[3] >= v38)
      {
        v18 = v92;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = &v97;
          sub_26CD36B88();
        }
      }

      else
      {
        sub_26CD34624(v38, isUniquelyReferenced_nonNull_native);
        v11 = v97;
        v39 = sub_26CC181C4(v31, v27);
        v18 = v92;
        if ((v6 & 1) != (v40 & 1))
        {
          goto LABEL_51;
        }

        v4 = v39;
      }

      isUniquelyReferenced_nonNull_native = v5;
      v5 = v95;
      if (v6)
      {

        v13 = v97;
        v6 = v97[7] + 32 * v4;
        __swift_destroy_boxed_opaque_existential_1(v6);
        sub_26CC331CC(v98, v6);
        (*v89)(v93, v5);
        __swift_destroy_boxed_opaque_existential_1(&v101);
      }

      else
      {
        v13 = v97;
        v97[(v4 >> 6) + 8] |= 1 << v4;
        v50 = (v13[6] + 16 * v4);
        *v50 = v34;
        v50[1] = v27;
        sub_26CC331CC(v98, (v13[7] + 32 * v4));
        (*v89)(v93, v5);
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v51 = v13[2];
        v47 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v47)
        {
          goto LABEL_48;
        }

        v13[2] = v52;
      }

      v19 = v96;
      v4 = v91;
      v14 = v88;
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v30(v4, 1, 1, v5);
      sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
      sub_26CC168C0(&v101, &v99);
      v6 = swift_isUniquelyReferenced_nonNull_native();
      *&v98[0] = v13;
      v41 = v28;
      v42 = v28;
      v11 = v13;
      v43 = sub_26CC181C4(v42, v27);
      v45 = v13[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_47;
      }

      v4 = v44;
      if (v13[3] < v48)
      {
        sub_26CD34624(v48, v6);
        v11 = *&v98[0];
        v43 = sub_26CC181C4(v41, v27);
        if ((v4 & 1) != (v49 & 1))
        {
LABEL_51:
          result = sub_26CD3B02C();
          __break(1u);
          return result;
        }

LABEL_33:
        if ((v4 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      if (v6)
      {
        goto LABEL_33;
      }

      v11 = v98;
      v6 = v43;
      sub_26CD36B88();
      v43 = v6;
      if ((v4 & 1) == 0)
      {
LABEL_37:
        v13 = *&v98[0];
        *(*&v98[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v54 = (v13[6] + 16 * v43);
        *v54 = v41;
        v54[1] = v27;
        sub_26CC331CC(&v99, (v13[7] + 32 * v43));
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v55 = v13[2];
        v47 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v47)
        {
          goto LABEL_49;
        }

        v13[2] = v56;
        goto LABEL_39;
      }

LABEL_34:
      v53 = v43;

      v13 = *&v98[0];
      v6 = *(*&v98[0] + 56) + 32 * v53;
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_26CC331CC(&v99, v6);
      __swift_destroy_boxed_opaque_existential_1(&v101);
LABEL_39:
      v19 = v96;
      v4 = v91;
      v18 = v92;
      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  v57 = v87;
  v58 = sub_26CC1C330();
  v60 = v59;
  v61 = _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  *&v104 = v13;
  *(&v104 + 1) = v58;
  *&v105 = v60;
  *(&v105 + 1) = v61;
  *&v106 = v62;
  v63 = objc_opt_self();
  sub_26CCB98B8();

  v64 = sub_26CD3A4DC();

  *&v101 = 0;
  v65 = [v63 dataWithJSONObject:v64 options:0 error:&v101];

  v66 = v101;
  if (v65)
  {
    v67 = sub_26CD3A0BC();
    v69 = v68;

    v70 = *(v57 + OBJC_IVAR___TVAppBag_cacheStorage + 24);
    v71 = *(v57 + OBJC_IVAR___TVAppBag_cacheStorage + 32);
    __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR___TVAppBag_cacheStorage), v70);
    (*(v71 + 16))(v67, v69, v70, v71);
    v72 = v86;
    v73 = v85;
    sub_26CC18C50(v67, v69);
  }

  else
  {
    v74 = v66;
    v75 = sub_26CD39F8C();

    swift_willThrow();
    v72 = v86;
    v73 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v76 = swift_allocObject();
    v96 = xmmword_26CD3C1E0;
    *(v76 + 16) = xmmword_26CD3C1E0;
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v77 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v77);

    MEMORY[0x26D6AD060](0xD000000000000024, 0x800000026CD509A0);
    *&v99 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v78 = *(&v101 + 1);
    *(v76 + 32) = v101;
    *(v76 + 40) = v78;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v79 = swift_allocObject();
    *(v79 + 16) = v96;
    *(v79 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v79 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v79 + 32) = v76;
    sub_26CD3A3DC();
  }

  sub_26CD3AA1C();
  v80 = v84;
  sub_26CD3A3FC();
  result = (*(v73 + 8))(v80, v72);
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26CCB98B8()
{
  v1 = v0;
  v2 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v3 = *v0;
  if (v3)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    *&v10 = v3;
    sub_26CC331CC(&v10, v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v9, 0x74636944676162, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = v1[2];
  if (v5 != 1)
  {
    v6 = sub_26CCBA4A8(v1[1], v5, v1[3], v1[4]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    *&v10 = v6;
    sub_26CC331CC(&v10, v9);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v9, 0x6D6E6F7269766E65, 0xEF6F666E49746E65, v7);
  }

  return v2;
}

id sub_26CCB99EC(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = sub_26CD3A41C();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v22 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_26CC19E10();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  sub_26CD3A3EC();

  v25 = 0;
  v12 = [a1 valueWithError_];
  v13 = v25;
  if (!v12)
  {
    v14 = v13;
    v15 = sub_26CD39F8C();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26CD3AC6C();
    v17 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v17);

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD50830);
    MEMORY[0x26D6AD060](a2, a3);
    MEMORY[0x26D6AD060](0x20726F727265202CLL, 0xEA0000000000203DLL);
    v24 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v18 = v26;
    *(v16 + 32) = v25;
    *(v16 + 40) = v18;
    sub_26CD3A98C();
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v19 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v19 + 32) = v16;
    sub_26CD3A3DC();

    v12 = 0;
  }

  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v6 + 8))(v9, v23);
  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_26CCB9E04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_26CC23F54(a2, a3, a4, a5, a6, a7);
  }
}

void sub_26CCB9EA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_26CCB9F34(a2, a3, a4, a5, a6);
  }
}

uint64_t sub_26CCB9F34(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_26CD3AADC();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = sub_26CD3A41C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v6 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v42 = v19;
    v43 = v18;
    v44 = a4;
    v45 = a3;
    *(v6 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v23 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    v40 = xmmword_26CD3C1E0;
    *(v24 + 16) = xmmword_26CD3C1E0;
    *(v24 + 56) = MEMORY[0x277D837D0];
    v39 = sub_26CC19E10();
    *(v24 + 64) = v39;
    *(v24 + 32) = a1;
    *(v24 + 40) = a2;

    sub_26CD3A3EC();

    sub_26CC23428(a1, a2, a5, *(v6 + OBJC_IVAR___TVAppBag_amsBag), 1, &v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    v25 = swift_dynamicCast();
    (*(*(a5 - 8) + 56))(v15, v25 ^ 1u, 1, a5);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26CD3AC6C();
    v26 = sub_26CC19D14();
    v28 = v27;

    v48 = v26;
    v49 = v28;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v29 = v48;
    v30 = v49;
    sub_26CD3A99C();
    v31 = swift_allocObject();
    *(v31 + 16) = v40;
    v32 = v39;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = v32;
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    sub_26CD3A3DC();

    v45(v15);
    (*(v46 + 8))(v15, v47);
    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v42 + 8))(v21, v43);
    *(v6 + v22) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26CD3AC6C();
    v34 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v34);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v35 = v48;
    v36 = v49;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_26CC19E10();
    *(v37 + 32) = v35;
    *(v37 + 40) = v36;
    sub_26CD3A3DC();
  }

  return result;
}

unint64_t sub_26CCBA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26CC194BC(MEMORY[0x277D84F90]);
  v9 = MEMORY[0x277D837D0];
  if (a2)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = a1;
    *(&v14 + 1) = a2;
    sub_26CC331CC(&v14, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v13, 0x65566D6574737973, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v15 = v9;
    *&v14 = a3;
    *(&v14 + 1) = a4;
    sub_26CC331CC(&v14, v13);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v13, 0x6F724665726F7473, 0xEC0000006449746ELL, v11);
  }

  return v8;
}

unsigned __int8 *sub_26CCBA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_26CC86DC0();

  result = sub_26CD3A72C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26CCBABA0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26CD3ACCC();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
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
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
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

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26CCBABA0()
{
  v0 = sub_26CD3A73C();
  v4 = sub_26CCBAC20(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26CCBAC20(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26CD3A63C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26CD3AAEC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26CCF1CCC(v9, 0);
  v12 = sub_26CCBAD78(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26CD3A63C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26CD3ACCC();
LABEL_4:

  return sub_26CD3A63C();
}

unint64_t sub_26CCBAD78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26CCBAF98(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26CD3A6DC();
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
          result = sub_26CD3ACCC();
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

    result = sub_26CCBAF98(v12, a6, a7);
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

    result = sub_26CD3A6AC();
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

uint64_t sub_26CCBAF98(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26CD3A6EC();
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
    v5 = MEMORY[0x26D6AD0A0](15, a1 >> 16);
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