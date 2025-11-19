uint64_t sub_21C8E7D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04B8, &qword_21CBAED30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-v5];
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04D0, &qword_21CBAED38);
  sub_21C8F0228();
  sub_21CB85054();
  sub_21CB82334();
  sub_21C8F0198();
  sub_21CB84514();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C8E7E54(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSecurityRecommendationsList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v5 = *(v10 + 56);

  v10 = v5;
  sub_21C8F1824(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21C8F0DC4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMAppSecurityRecommendationsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04E0, &qword_21CBAED40);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0);
  sub_21C8F02AC();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

uint64_t sub_21C8E80C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0508, &qword_21CBAED58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = v37 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04E8, &qword_21CBAED48);
  v8 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v39 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v37 - v12;
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  v22 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v40 = v3;
  sub_21CB85084();
  *&v43 = v19;
  *(&v43 + 1) = v20;
  LOBYTE(v44) = v21;
  *(&v44 + 1) = v22;
  sub_21C903054(&v43, v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0658, &qword_21CBAF0E8);
    return (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
  }

  else
  {
    v25 = sub_21C8F0DC4(v13, v18, type metadata accessor for PMAccount);
    v37[1] = v37;
    v26 = v18[1];
    *&v43 = *v18;
    *(&v43 + 1) = v26;
    MEMORY[0x28223BE20](v25);
    type metadata accessor for PMSecurityRecommendationsAccountRow();
    sub_21C8F132C(&qword_27CDF0660, type metadata accessor for PMSecurityRecommendationsAccountRow);

    v27 = v38;
    sub_21CB82614();
    [objc_opt_self() isPasswordsAppInstalled];
    sub_21CB85214();
    sub_21CB82AC4();
    v28 = v27;
    v29 = v39;
    v30 = sub_21C716934(v28, v39, &qword_27CDF0508, &qword_21CBAED58);
    v38 = v37;
    v31 = (v29 + *(v41 + 36));
    v32 = v48;
    v31[4] = v47;
    v31[5] = v32;
    v31[6] = v49;
    v33 = v44;
    *v31 = v43;
    v31[1] = v33;
    v34 = v46;
    v31[2] = v45;
    v31[3] = v34;
    MEMORY[0x28223BE20](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04F0, &qword_21CBAED50);
    sub_21C8F03CC();
    sub_21C6EADEC(&qword_27CDF0520, &qword_27CDF04F0, &qword_21CBAED50);
    v35 = v42;
    sub_21CB84204();
    sub_21C6EA794(v29, &qword_27CDF04E8, &qword_21CBAED48);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0658, &qword_21CBAF0E8);
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    return sub_21C8F0E2C(v18, type metadata accessor for PMAccount);
  }
}

uint64_t sub_21C8E8690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C902240();
}

uint64_t sub_21C8E86E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C8, &qword_21CBAEBC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C8E6948(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C8E8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v111 = *(v4 - 8);
  v112 = v4;
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v4);
  v105 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v113 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0620, &unk_21CBAF060);
  v13 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v92 - v14;
  v15 = type metadata accessor for PMAppSecurityRecommendationsList();
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = v17;
  v99 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF300, &qword_21CBABFA8);
  v96 = *(v102 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0628, &qword_21CBAF070);
  v107 = *(v20 - 8);
  v108 = v20;
  v21 = *(v107 + 64);
  MEMORY[0x28223BE20](v20);
  v100 = &v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0630, &unk_21CBAF078);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v110 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v117 = &v92 - v27;
  v106 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v28 = *(v106 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v106);
  v95 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PMAccount.Storage(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v92 - v37;
  v39 = type metadata accessor for PMAccount(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v109 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v92 - v48;
  v50 = *(v47 + 16);
  v114 = a2;
  v115 = &v92 - v48;
  if (v50 != 1)
  {
    v55 = 1;
    v56 = v47;
LABEL_7:
    v57 = v116;
    goto LABEL_8;
  }

  v94 = v12;
  v93 = v47;
  v51 = sub_21C713194(v47);
  if (!v52)
  {
    v55 = 1;
    v12 = v94;
    v56 = v93;
    goto LABEL_7;
  }

  v53 = v51;
  v54 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C9031B4(v53, v54, v38);

  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_21C6EA794(v38, &unk_27CDEBE60, &unk_21CB9FF40);
    v55 = 1;
    v12 = v94;
    v56 = v93;
    v49 = v115;
    v57 = v116;
LABEL_8:
    v58 = v106;
    goto LABEL_9;
  }

  sub_21C8F0DC4(v38, v43, type metadata accessor for PMAccount);
  sub_21C8F1824(&v43[*(v39 + 24)], v34, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = v94;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C8F0E2C(v34, type metadata accessor for PMAccount.Storage);
    v49 = v115;
    v57 = v116;
LABEL_19:
    sub_21C8F0E2C(v43, type metadata accessor for PMAccount);
    v55 = 1;
    v56 = v93;
    goto LABEL_8;
  }

  v86 = *v34;
  v87 = [*v34 hasValidWebsite];

  v49 = v115;
  v57 = v116;
  if (!v87)
  {
    goto LABEL_19;
  }

  v88 = v106;
  v89 = v95;
  sub_21C8F0DC4(v43, &v95[*(v106 + 20)], type metadata accessor for PMAccount);
  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  *(v89 + 16) = 0;
  v90 = (v89 + v88[7]);
  v91 = (v89 + v88[9]);
  *(v89 + v88[6]) = 1;
  *v90 = 0;
  v90[1] = 0;
  *(v89 + v88[8]) = 0;
  *v91 = 0;
  v91[1] = 0;
  sub_21C8F0DC4(v89, v49, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v58 = v88;
  v55 = 0;
  v56 = v93;
LABEL_9:
  v59 = 1;
  (*(v28 + 56))(v49, v55, 1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v60 = sub_21C900CCC(v56);

  if (v60 != 2)
  {
    v61 = v99;
    sub_21C8F1824(v57, v99, type metadata accessor for PMAppSecurityRecommendationsList);
    v62 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v63 = (v98 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v96 + 16);
    v65 = (v96 + 8);
    v66 = swift_allocObject();
    v67 = sub_21C8F0DC4(v61, v66 + v62, type metadata accessor for PMAppSecurityRecommendationsList);
    *(v66 + v63) = v56;
    MEMORY[0x28223BE20](v67);
    *(&v92 - 2) = v56;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    v68 = v101;
    sub_21CB84DA4();
    v69 = v102;
    (*v64)(v104, v68, v102);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8);
    v70 = v100;
    sub_21CB83494();
    (*v65)(v68, v69);
    sub_21C716934(v70, v117, &qword_27CDF0628, &qword_21CBAF070);
    v59 = 0;
  }

  v71 = 1;
  v72 = (*(v107 + 56))(v117, v59, 1, v108);
  if (*(v56 + 16))
  {
    MEMORY[0x28223BE20](v72);
    *(&v92 - 2) = v57;
    *(&v92 - 1) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v73 = v105;
    sub_21CB85054();
    v75 = v111;
    v74 = v112;
    (*(v111 + 32))(v12, v73, v112);
    v71 = 0;
  }

  else
  {
    v75 = v111;
    v74 = v112;
  }

  (*(v75 + 56))(v12, v71, 1, v74);
  v76 = v115;
  v77 = v109;
  v78 = v12;
  sub_21C6EDBAC(v115, v109, &qword_27CDF0638, &qword_21CBAF088);
  v79 = v117;
  v80 = v110;
  sub_21C6EDBAC(v117, v110, &qword_27CDF0630, &unk_21CBAF078);
  v81 = v113;
  sub_21C6EDBAC(v12, v113, &qword_27CDEC8A8, &unk_21CBACF50);
  v82 = v114;
  sub_21C6EDBAC(v77, v114, &qword_27CDF0638, &qword_21CBAF088);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0640, &unk_21CBAF090);
  sub_21C6EDBAC(v80, v82 + *(v83 + 48), &qword_27CDF0630, &unk_21CBAF078);
  sub_21C6EDBAC(v81, v82 + *(v83 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v78, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v79, &qword_27CDF0630, &unk_21CBAF078);
  sub_21C6EA794(v76, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C6EA794(v81, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v80, &qword_27CDF0630, &unk_21CBAF078);
  return sub_21C6EA794(v77, &qword_27CDF0638, &qword_21CBAF088);
}

uint64_t sub_21C8E95B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_21C8E9674(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C902654(v4);
}

uint64_t sub_21C8E96A0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_21CB85114();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_21CB858B4();
  v2[9] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8E9794, v7, v6);
}

uint64_t sub_21C8E9794()
{
  v1 = v0[9];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v3 = *(v0[2] + 120);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  sub_21CB86544();
  sub_21C7072A8(v3, v0[3]);

  sub_21C8329EC(v8);

  sub_21C901AD4(MEMORY[0x277D84FA0]);
  (*(v6 + 104))(v5, *MEMORY[0x277CDF0D8], v7);
  sub_21C90231C(v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C8E990C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v6 = v21;
  swift_getKeyPath();
  v21 = v6;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  sub_21CB85084();
  v10 = v21;
  swift_getKeyPath();
  v21 = v10;
  sub_21CB810D4();

  v11 = *(v10 + 56);

  v12 = *(v11 + 16);

  if (!v12)
  {
    sub_21CB85084();
    v15 = v21;
    swift_getKeyPath();
    v21 = v15;
    sub_21CB810D4();

    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    sub_21CB83784();

    v18 = v20;
    (*(v2 + 32))(v20, v5, v1);
    v14 = v18;
    v13 = 0;
  }

  else
  {
LABEL_5:
    v13 = 1;
    v14 = v20;
  }

  return (*(v2 + 56))(v14, v13, 1, v1);
}

uint64_t sub_21C8E9BC0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v5 = v10;
  swift_getKeyPath();
  v10 = v5;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v6 = *(v5 + 72);

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v7;
}

id sub_21C8E9D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_21C8F1824(a1, a6, type metadata accessor for PMAccount);
  v10 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v11 = a6 + *(v10 + 24);
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a6 + *(v10 + 20);
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return a5;
}

uint64_t sub_21C8E9E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0668, &qword_21CBAF0F0);
  v3 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0670, &qword_21CBAF0F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v81 - v9;
  v10 = type metadata accessor for PMAppSecurityRecommendationsList();
  v95 = *(v10 - 8);
  v11 = *(v95 + 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v20 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v96 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  v25 = a1[1];
  v84 = *a1;
  v83 = v25;
  v26 = *(a1 + 16);
  v27 = a1[3];
  sub_21CB81014();
  v28 = sub_21CB81004();
  v30 = v29;
  v31 = *(v14 + 8);
  v93 = v14 + 8;
  v94 = v13;
  v86 = v31;
  v31(v19, v13);
  sub_21C8F1824(v102, v12, type metadata accessor for PMAppSecurityRecommendationsList);
  v32 = (v95[80] + 16) & ~v95[80];
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = v95[80];
  v34 = swift_allocObject();
  v88 = v32;
  v35 = v34 + v32;
  v95 = v12;
  v36 = v12;
  v37 = v83;
  v38 = v84;
  sub_21C8F0DC4(v36, v35, type metadata accessor for PMAppSecurityRecommendationsList);
  v90 = v33;
  v39 = v34 + v33;
  *v39 = v38;
  *(v39 + 8) = v37;
  *(v39 + 16) = v26;
  *(v39 + 24) = v27;
  v106 = v28;
  v107 = v30;
  v103 = &v106;
  v104 = 0x69662E6873617274;
  v105 = 0xEA00000000006C6CLL;

  v40 = v27;
  v41 = v24;
  v91 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v43 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v44 = v85;
  v92 = v42;
  sub_21CB84DA4();

  v45 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  v47 = *(v44 + 36);
  v89 = v41;
  v48 = (v41 + v47);
  *v48 = KeyPath;
  v48[1] = v45;
  sub_21CB81014();
  if (v26 == 1)
  {
    v49 = sub_21CB81004();
    v51 = v50;
    v86(v19, v94);
    v52 = v95;
    sub_21C8F1824(v102, v95, type metadata accessor for PMAppSecurityRecommendationsList);
    v53 = v90;
    v54 = swift_allocObject();
    v55 = sub_21C8F0DC4(v52, v54 + v88, type metadata accessor for PMAppSecurityRecommendationsList);
    v56 = v54 + v53;
    *v56 = v38;
    *(v56 + 8) = v37;
    *(v56 + 16) = 1;
    v57 = v91;
    *(v56 + 24) = v91;
    v106 = v49;
    v107 = v51;
    MEMORY[0x28223BE20](v55);
    *(&v81 - 4) = &v106;
    *(&v81 - 3) = 0x6C6C69662E657965;
    *(&v81 - 2) = 0xE800000000000000;
  }

  else
  {
    v60 = v82;
    sub_21CB81014();
    v61 = sub_21CB80FF4();
    v63 = v62;
    v64 = v60;
    v65 = v94;
    v82 = v43;
    v66 = v86;
    v86(v64, v94);
    v66(v19, v65);
    v67 = v95;
    sub_21C8F1824(v102, v95, type metadata accessor for PMAppSecurityRecommendationsList);
    v68 = v90;
    v69 = swift_allocObject();
    v70 = sub_21C8F0DC4(v67, v69 + v88, type metadata accessor for PMAppSecurityRecommendationsList);
    v71 = v69 + v68;
    *v71 = v38;
    *(v71 + 8) = v37;
    *(v71 + 16) = v26;
    v57 = v91;
    *(v71 + 24) = v91;
    v106 = v61;
    v107 = v63;
    MEMORY[0x28223BE20](v70);
    *(&v81 - 4) = &v106;
    strcpy(&v81 - 24, "eye.slash.fill");
    *(&v81 - 9) = -18;
  }

  v58 = v57;
  v59 = v96;
  sub_21CB84DA4();

  v72 = sub_21CB84A74();
  v73 = swift_getKeyPath();
  v74 = (v59 + *(v44 + 36));
  *v74 = v73;
  v74[1] = v72;
  sub_21C6EDBAC(v59, v97, &qword_27CDEC198, &qword_21CBAF100);
  swift_storeEnumTagMultiPayload();
  sub_21C7FC8A0();
  v75 = v99;
  sub_21CB83494();
  sub_21C6EA794(v59, &qword_27CDEC198, &qword_21CBAF100);
  v76 = v89;
  sub_21C6EDBAC(v89, v59, &qword_27CDEC198, &qword_21CBAF100);
  v77 = v100;
  sub_21C6EDBAC(v75, v100, &qword_27CDF0670, &qword_21CBAF0F8);
  v78 = v101;
  sub_21C6EDBAC(v59, v101, &qword_27CDEC198, &qword_21CBAF100);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF0678, &unk_21CBAF140);
  sub_21C6EDBAC(v77, v78 + *(v79 + 48), &qword_27CDF0670, &qword_21CBAF0F8);
  sub_21C6EA794(v75, &qword_27CDF0670, &qword_21CBAF0F8);
  sub_21C6EA794(v76, &qword_27CDEC198, &qword_21CBAF100);
  sub_21C6EA794(v77, &qword_27CDF0670, &qword_21CBAF0F8);
  return sub_21C6EA794(v59, &qword_27CDEC198, &qword_21CBAF100);
}

uint64_t sub_21C8EA7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21C8F1824(a1, v7, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();

  v13 = sub_21CB858A4();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21C8F0DC4(v7, v16 + v14, type metadata accessor for PMAppSecurityRecommendationsList);
  *(v16 + v15) = a2;
  sub_21C98B308(0, 0, v11, &unk_21CBAF0D8, v16);
}

uint64_t sub_21C8EA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21CB858B4();
  v5[5] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21C8EAA3C, v7, v6);
}

uint64_t sub_21C8EAA3C()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v0[8] = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21C8EAAF8;
  v3 = v0[4];

  return sub_21C900FEC(v3);
}

uint64_t sub_21C8EAAF8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21C7AFEF4, v5, v4);
}

uint64_t sub_21C8EAC3C@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = (v6 + 8);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*v15)(v9, v5);
  v20[2] = v16;
  v20[3] = v18;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v11 + 16))(v4, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C8EAF98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C901704(a2);
}

uint64_t sub_21C8EAFF4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = (v6 + 8);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*v15)(v9, v5);
  v20[2] = v16;
  v20[3] = v18;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v11 + 16))(v4, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C8EB338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  sub_21CB81ED4();
  v11 = sub_21CB81F14();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_21C8F1824(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21C8F0DC4(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMAppSecurityRecommendationsList);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84D94();
}

uint64_t sub_21C8EB588(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  v3 = sub_21C903344(a2);

  v4 = sub_21C87E898(v3);
  v6 = v5;
  v8 = v7;
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  v9 = *(v13 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v13 + 104);
  *(v13 + 104) = 0x8000000000000000;
  sub_21C8D4880(v4, v6, v8, 0, isUniquelyReferenced_nonNull_native);
  *(v13 + 104) = v12;
  swift_endAccess();
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C8EB75C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v32[0] = a2;
  v32[1] = a3;
  v33 = a4;
  v34 = a5;
  sub_21C903054(v32, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  v18 = v30;
  sub_21C8F0DC4(v12, v30, type metadata accessor for PMAccount);
  sub_21CB85084();
  v19 = v32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v20 = *(v14 + 72);
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21CBA0690;
  sub_21C8F1824(v18, v22 + v21, type metadata accessor for PMAccount);
  v23 = sub_21C87E898(v22);
  v25 = v24;
  v27 = v26;
  swift_getKeyPath();
  v32[0] = v19;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v32[0] = v19;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  v28 = *(v19 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v19 + 104);
  *(v19 + 104) = 0x8000000000000000;
  sub_21C8D4880(v23, v25, v27, 0, isUniquelyReferenced_nonNull_native);
  *(v19 + 104) = v31;
  swift_endAccess();
  v32[0] = v19;
  swift_getKeyPath();
  sub_21CB810E4();

  sub_21C8F0E2C(v18, type metadata accessor for PMAccount);
}

uint64_t sub_21C8EBAFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v9 = *(v14 + 120);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v9, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4 & 1;
  *(inited + 56) = a5;

  v12 = a5;
  sub_21C83532C(inited);

  swift_setDeallocating();
  sub_21C8F1684(inited + 32);
  sub_21C905C8C(0, 0);
}

uint64_t sub_21C8EBC70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMAppSecurityRecommendationsList();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_21CB858E4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_21C8F1824(a1, v13, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();

  v19 = a5;
  v20 = sub_21CB858A4();
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_21C8F0DC4(v13, v23 + v21, type metadata accessor for PMAppSecurityRecommendationsList);
  v25 = v23 + v22;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v25 + 24) = v19;
  sub_21C98B308(0, 0, v17, &unk_21CBAF158, v23);
}

uint64_t sub_21C8EBEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  sub_21CB858B4();
  *(v8 + 88) = sub_21CB858A4();
  v10 = sub_21CB85874();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return MEMORY[0x2822009F8](sub_21C8EBF40, v10, v9);
}

uint64_t sub_21C8EBF40()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v6 = *(v0 + 48);
  *(v0 + 16) = v5;
  *(v0 + 112) = v6;
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_21C8EC024;

  return sub_21C9038A8(v0 + 16);
}

uint64_t sub_21C8EC024()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21C8EC168, v5, v4);
}

uint64_t sub_21C8EC168()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C8EC1C8()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v8 = *(v15 + 120);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v8, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = *(v15 + 16);

  if (v10)
  {
    sub_21CB85084();
    v11 = v15;
    swift_getKeyPath();
    v15 = v11;
    sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810D4();

    v10 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
    swift_beginAccess();
    (*(v1 + 16))(v7, v11 + v10, v0);

    (*(v1 + 104))(v4, *MEMORY[0x277CDF0D8], v0);
    LOBYTE(v10) = sub_21CB850F4();
    v12 = *(v1 + 8);
    v12(v4, v0);
    v12(v7, v0);
  }

  return v10 & 1;
}

uint64_t sub_21C8EC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for PMAppSecurityRecommendationsList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05D8, &unk_21CBAEF60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05F8, &unk_21CBAEF78);
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v27);
  v13 = &v27 - v12;
  sub_21C8F1824(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_21C8F0DC4(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppSecurityRecommendationsList);
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
  v30 = sub_21C8E9BC0();
  v31 = v16;
  v17 = sub_21C8F08D8();
  v18 = sub_21C71F3FC();
  v19 = MEMORY[0x277D837D0];
  sub_21CB846E4();

  sub_21C6EA794(v9, &qword_27CDF05D8, &unk_21CBAEF60);
  v34 = sub_21C8E9BC0();
  v35 = v20;
  v30 = v6;
  v31 = v19;
  v32 = v17;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  v22 = v27;
  v21 = v28;
  sub_21CB843E4();

  (*(v10 + 8))(v13, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v23 = v30;
  swift_getKeyPath();
  v30 = v23;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v24 = *(v23 + 72);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05B8, &qword_21CBAEF50);
  v26 = v21 + *(result + 36);
  *v26 = 0;
  *(v26 + 8) = v24;
  return result;
}

uint64_t sub_21C8EC8F0()
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8EC95C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  *(v1 + 72) = (*(v1 + 72) & 1) == 0;
  sub_21C9059D4();
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C8ECAA8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v13 = v5;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v9 = *(v8 + 72);

  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8ECCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C8F1824(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C8F0DC4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB84DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v9 = v17;
  swift_getKeyPath();
  v17 = v9;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v10 = *(v9 + 56);

  v11 = *(v10 + 16);

  LOBYTE(v6) = v11 == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_21C735744;
  v15[2] = v13;
  return result;
}

uint64_t sub_21C8ECF28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C8ED04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v31 - v4;
  v5 = type metadata accessor for PMAppSecurityRecommendationsList();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v7;
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v35 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v15 = v41;
  swift_getKeyPath();
  v41 = v15;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v16 = *(v15 + 96);

  v17 = *(v16 + 16);

  sub_21CB85084();
  v18 = v41;
  swift_getKeyPath();
  v41 = v18;
  sub_21CB810D4();

  v19 = *(v18 + 56);

  v20 = *(v19 + 16);

  v21 = (v31 + 8);
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*v21)(v11, v32);
  v41 = v22;
  v42 = v24;
  v25 = v36;
  sub_21C8F1824(a1, v36, type metadata accessor for PMAppSecurityRecommendationsList);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_21C8F0DC4(v25, v27 + v26, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21C71F3FC();
  v28 = v35;
  sub_21CB84DE4();
  v29 = v37;
  (*(v37 + 16))(v39, v28, v12);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB83494();
  return (*(v29 + 8))(v28, v12);
}

uint64_t sub_21C8ED634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  v0 = *(v2 + 96);
  *(v2 + 96) = MEMORY[0x277D84FA0];
  sub_21C906A74(v0);

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C8ED784()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v0 = *(v11 + 56);

  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v1, 0);
    v2 = v12;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v12 + 16);
      v7 = *(v12 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_21C7B0C0C((v7 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v8 = v12 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v9 = sub_21CB009AC(v2);

  sub_21C901AD4(v9);
}

uint64_t sub_21C8ED950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMAppSecurityRecommendationsList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81F04();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21C8F1824(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21C8F0DC4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAppSecurityRecommendationsList);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21C8F0CC0;
  v19[1] = v17;
  return result;
}

uint64_t sub_21C8EDB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8EDBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0600, &unk_21CBAEFB8);
  v132 = *(v3 - 8);
  v133 = v3;
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = (&v105 - v5);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  v6 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v105 - v7;
  v110 = sub_21CB81024();
  v107 = *(v110 - 8);
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v105 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v113 = *(v114 - 8);
  v12 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v115 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v112 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0608, &unk_21CBAEFC8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v131 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = &v105 - v23;
  v130 = sub_21CB831C4();
  v129 = *(v130 - 8);
  v24 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v126 = &v105 - v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  *&v124 = *(v119 - 8);
  v28 = *(v124 + 64);
  MEMORY[0x28223BE20](v119);
  *&v123 = &v105 - v29;
  v30 = type metadata accessor for PMAppSecurityRecommendationsList();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v135 = v33;
  v34 = (&v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v105 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60);
  v40 = *(v39 - 8);
  v125 = v39 - 8;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v136 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v105 - v44;
  sub_21CB81ED4();
  v46 = sub_21CB81F14();
  (*(*(v46 - 8) + 56))(v38, 0, 1, v46);
  v122 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F1824(a1, v34, type metadata accessor for PMAppSecurityRecommendationsList);
  v47 = *(v31 + 80);
  v48 = (v47 + 16) & ~v47;
  v49 = swift_allocObject();
  v121 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F0DC4(v34, v49 + v48, type metadata accessor for PMAppSecurityRecommendationsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v137 = v45;
  sub_21CB84D94();
  v50 = v119;
  sub_21CB85084();
  v51 = v139;
  swift_getKeyPath();
  *&v139 = v51;
  v120 = sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v52 = *(v51 + 96);

  v53 = *(v52 + 16);

  v54 = v53 == 0;
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v57 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
  *v57 = KeyPath;
  v57[1] = sub_21C87E800;
  v57[2] = v56;
  v58 = v123;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v124 + 8))(v58, v50);
  v59 = v145;
  v60 = v146;
  v61 = v147;
  v138 = 1;
  swift_getKeyPath();
  v142 = v59;
  v143 = v60;
  v144 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();
  v62 = a1;

  v124 = v139;
  v123 = v140;
  v63 = v141;

  sub_21C8F1824(v62, v34, v122);
  v105 = v47;
  v64 = swift_allocObject();
  v106 = v48;
  v122 = v34;
  sub_21C8F0DC4(v34, v64 + v48, v121);
  v65 = &v137[*(v125 + 44)];
  v66 = v123;
  *v65 = v124;
  *(v65 + 1) = v66;
  *(v65 + 4) = v63;
  *(v65 + 5) = &unk_21CBAEFE0;
  *(v65 + 6) = v64;
  v67 = v126;
  sub_21CB831B4();
  sub_21CB85084();
  sub_21CB85084();
  v68 = v139;
  swift_getKeyPath();
  *&v139 = v68;
  sub_21CB810D4();

  v69 = *(v68 + 96);

  LODWORD(v63) = sub_21C900CCC(v69);

  v70 = v127;

  v71 = 1;
  if (v63 != 2)
  {
    v72 = (v107 + 8);
    v73 = v109;
    sub_21CB81014();
    v74 = v108;
    sub_21CB81014();
    v75 = sub_21CB80FF4();
    v77 = v76;
    v78 = *v72;
    v79 = v74;
    v80 = v110;
    (*v72)(v79, v110);
    v78(v73, v80);
    *&v139 = v75;
    *(&v139 + 1) = v77;
    v81 = v122;
    sub_21C8F1824(v62, v122, type metadata accessor for PMAppSecurityRecommendationsList);
    v82 = v106;
    v83 = swift_allocObject();
    sub_21C8F0DC4(v81, v83 + v82, type metadata accessor for PMAppSecurityRecommendationsList);
    sub_21C71F3FC();
    v84 = v111;
    sub_21CB84DE4();
    v85 = v113;
    v86 = v114;
    (*(v113 + 16))(v117, v84, v114);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v87 = v112;
    sub_21CB83494();
    (*(v85 + 8))(v84, v86);
    v88 = v115;
    sub_21C6EDBAC(v87, v115, &qword_27CDEE9D8, &unk_21CBAA9C0);
    v89 = v118;
    *v118 = 0;
    *(v89 + 8) = 1;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0618, &unk_21CBAEFF0);
    sub_21C6EDBAC(v88, v89 + *(v90 + 48), &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C6EA794(v87, &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C6EA794(v88, &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C716934(v89, v70, &qword_27CDF0600, &unk_21CBAEFB8);
    v71 = 0;
  }

  (*(v132 + 56))(v70, v71, 1, v133);
  v91 = v136;
  sub_21C6EDBAC(v137, v136, &qword_27CDEEB98, &qword_21CBACD60);
  LOBYTE(v139) = 1;
  v92 = v129;
  v93 = *(v129 + 16);
  v94 = v128;
  v95 = v67;
  v96 = v130;
  v93(v128, v67, v130);
  v97 = v131;
  sub_21C6EDBAC(v70, v131, &qword_27CDF0608, &unk_21CBAEFC8);
  v98 = v134;
  sub_21C6EDBAC(v91, v134, &qword_27CDEEB98, &qword_21CBACD60);
  v99 = v70;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0610, &qword_21CBAEFE8);
  v101 = v98 + v100[12];
  v102 = v139;
  *v101 = 0;
  *(v101 + 8) = v102;
  v93((v98 + v100[16]), v94, v96);
  sub_21C6EDBAC(v97, v98 + v100[20], &qword_27CDF0608, &unk_21CBAEFC8);
  sub_21C6EA794(v99, &qword_27CDF0608, &unk_21CBAEFC8);
  v103 = *(v92 + 8);
  v103(v95, v96);
  sub_21C6EA794(v137, &qword_27CDEEB98, &qword_21CBACD60);
  sub_21C6EA794(v97, &qword_27CDF0608, &unk_21CBAEFC8);
  v103(v94, v96);
  return sub_21C6EA794(v136, &qword_27CDEEB98, &qword_21CBACD60);
}

uint64_t sub_21C8EEC40(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  v3 = sub_21C902984();

  v4 = sub_21C87E898(v3);
  v6 = v5;
  v8 = v7;
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  v9 = *(v13 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v13 + 104);
  *(v13 + 104) = 0x8000000000000000;
  sub_21C8D4880(v4, v6, v8, a2, isUniquelyReferenced_nonNull_native);
  *(v13 + 104) = v12;
  swift_endAccess();
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C8EEE10()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8EEF38(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_21CB85114();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_21CB858B4();
  v2[9] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8F188C, v7, v6);
}

uint64_t sub_21C8EF02C(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSecurityRecommendationsList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C8F1824(a1, v5, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C8F0DC4(v5, v13 + v12, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21C98B308(0, 0, v9, &unk_21CBAF008, v13);
}

uint64_t sub_21C8EF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21C8EF2A4, v6, v5);
}

uint64_t sub_21C8EF2A4()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v0[9] = v0[2];
  sub_21CB85084();
  v2 = v0[3];
  swift_getKeyPath();
  v0[4] = v2;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v3 = *(v2 + 96);
  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_21C8EF40C;

  return sub_21C900FEC(v3);
}

uint64_t sub_21C8EF40C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21C7B6B44, v6, v5);
}

uint64_t sub_21C8EF56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v0 = *(v2 + 96);

  sub_21C901704(v0);
}

unint64_t sub_21C8EF670()
{
  result = qword_27CDF0398;
  if (!qword_27CDF0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
    sub_21C8EF6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0398);
  }

  return result;
}

unint64_t sub_21C8EF6F4()
{
  result = qword_27CDF03A0;
  if (!qword_27CDF03A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03A8, &qword_21CBAEBB0);
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03A0);
  }

  return result;
}

unint64_t sub_21C8EF7AC()
{
  result = qword_27CDF03B0;
  if (!qword_27CDF03B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03B8, &qword_21CBAEBB8);
    type metadata accessor for PMEmptyStateDetailView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C0, &qword_21CBAEBC0);
    sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
    sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C8EF93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03B0);
  }

  return result;
}

unint64_t sub_21C8EF93C()
{
  result = qword_27CDF03D8;
  if (!qword_27CDF03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03E0, &qword_21CBAEBD0);
    sub_21C8EF9F4();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03D8);
  }

  return result;
}

unint64_t sub_21C8EF9F4()
{
  result = qword_27CDF03E8;
  if (!qword_27CDF03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03F0, &qword_21CBAEBD8);
    sub_21C8EFA80();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03E8);
  }

  return result;
}

unint64_t sub_21C8EFA80()
{
  result = qword_27CDF03F8;
  if (!qword_27CDF03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0400, &qword_21CBAEBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0408, &qword_21CBAEBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0410, &qword_21CBAEBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0418, &qword_21CBAEBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C0, &qword_21CBAEBC0);
    sub_21C8EFCC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
    sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0468, &qword_27CDF0410, &qword_21CBAEBF0);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03F8);
  }

  return result;
}

unint64_t sub_21C8EFCC0()
{
  result = qword_27CDF0420;
  if (!qword_27CDF0420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0418, &qword_21CBAEBF8);
    sub_21C8EFD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0420);
  }

  return result;
}

unint64_t sub_21C8EFD4C()
{
  result = qword_27CDF0428;
  if (!qword_27CDF0428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0430, &qword_21CBAEC00);
    sub_21C8EFE04();
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0428);
  }

  return result;
}

unint64_t sub_21C8EFE04()
{
  result = qword_27CDF0438;
  if (!qword_27CDF0438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0440, &qword_21CBAEC08);
    sub_21C8EFE90();
    sub_21C847DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0438);
  }

  return result;
}

unint64_t sub_21C8EFE90()
{
  result = qword_27CDF0448;
  if (!qword_27CDF0448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0450, &qword_21CBAEC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0458, &qword_21CBAEC18);
    sub_21C6EADEC(&qword_27CDF0460, &qword_27CDF0458, &qword_21CBAEC18);
    swift_getOpaqueTypeConformance2();
    sub_21C8F132C(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0448);
  }

  return result;
}

unint64_t sub_21C8EFFC4()
{
  result = qword_27CDF0488;
  if (!qword_27CDF0488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0390, &qword_21CBAEBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0388, &qword_21CBAEBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0380, &qword_21CBAEB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0480, &qword_21CBAEC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
    sub_21C8EF670();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0488);
  }

  return result;
}

unint64_t sub_21C8F0198()
{
  result = qword_27CDF04C0;
  if (!qword_27CDF04C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04B8, &qword_21CBAED30);
    sub_21C8F0228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04C0);
  }

  return result;
}

unint64_t sub_21C8F0228()
{
  result = qword_27CDF04C8;
  if (!qword_27CDF04C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04D0, &qword_21CBAED38);
    sub_21C8F02AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04C8);
  }

  return result;
}

unint64_t sub_21C8F02AC()
{
  result = qword_27CDF04D8;
  if (!qword_27CDF04D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E0, &qword_21CBAED40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E8, &qword_21CBAED48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04F0, &qword_21CBAED50);
    sub_21C8F03CC();
    sub_21C6EADEC(&qword_27CDF0520, &qword_27CDF04F0, &qword_21CBAED50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04D8);
  }

  return result;
}

unint64_t sub_21C8F03CC()
{
  result = qword_27CDF04F8;
  if (!qword_27CDF04F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E8, &qword_21CBAED48);
    sub_21C8F0458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04F8);
  }

  return result;
}

unint64_t sub_21C8F0458()
{
  result = qword_27CDF0500;
  if (!qword_27CDF0500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0508, &qword_21CBAED58);
    sub_21C6EADEC(&qword_27CDF0510, &qword_27CDF0518, &qword_21CBAED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0500);
  }

  return result;
}

uint64_t sub_21C8F0544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_21C8E8808(a1, a2);
}

uint64_t sub_21C8F05B8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C8E96A0(a1, v1 + v5);
}

unint64_t sub_21C8F0690()
{
  result = qword_27CDF0588;
  if (!qword_27CDF0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0588);
  }

  return result;
}

unint64_t sub_21C8F070C()
{
  result = qword_27CDF05C0;
  if (!qword_27CDF05C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05B8, &qword_21CBAEF50);
    sub_21C8F07C4();
    sub_21C6EADEC(&qword_27CDF05E8, &qword_27CDF05F0, &qword_21CBAEF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05C0);
  }

  return result;
}

unint64_t sub_21C8F07C4()
{
  result = qword_27CDF05C8;
  if (!qword_27CDF05C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D0, &qword_21CBAEF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D8, &unk_21CBAEF60);
    sub_21C8F08D8();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C8F132C(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05C8);
  }

  return result;
}

unint64_t sub_21C8F08D8()
{
  result = qword_27CDF05E0;
  if (!qword_27CDF05E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D8, &unk_21CBAEF60);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05E0);
  }

  return result;
}

uint64_t sub_21C8F0AC8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C8EEF38(a1, v1 + v5);
}

uint64_t sub_21C8F0BD0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C8EF20C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C8F0D08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8F0DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8F0E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8F0E8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C8EA9A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_119Tm()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_21C8F1188(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_21C8F1230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return sub_21C8E80C8(v10, a2);
}

unint64_t sub_21C8F12C4()
{
  result = qword_27CDF0650;
  if (!qword_27CDF0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0650);
  }

  return result;
}

uint64_t sub_21C8F132C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C8F1374@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7[0] = *(v1 + 24);
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  return sub_21C8E9E30(v7, a1);
}

uint64_t objectdestroy_140Tm()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 32, v2 | 7);
}

uint64_t sub_21C8F15D8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_21C8F16D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C6F35D0;

  return sub_21C8EBEA0(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_21C8F1824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C8F18C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8F190C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21C8F196C(uint64_t a1)
{
  sub_21C7226D8();
  if (v2 <= 0x3F)
  {
    sub_21C8F1E98(319, &qword_27CDEC850, &qword_27CDEC858, &qword_21CBB1080, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_21C6EDA64();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        sub_21CB84D84();
        if (v6 <= 0x3F)
        {
          sub_21C8F1E98(319, &qword_27CDF0700, &unk_27CDFA2C0, &unk_21CBA68A0, MEMORY[0x277CE10B8]);
          if (v7 <= 0x3F)
          {
            type metadata accessor for LABiometryType(319);
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

uint64_t sub_21C8F1AB4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 71) & ~v8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v6 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
    }

    v18 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v6 + (v17 | v16) + 1;
}

void sub_21C8F1C38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v12 + ((v10 + 71) & ~(v10 | 7)) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v17 = 0;
    if (v9 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = (a3 - v9 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v9 >= a2)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v13] = 0;
      }

      else if (v17)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if ((v7 & 0x80000000) != 0)
        {
          v20 = ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
          if (v8 >= a2)
          {
            v23 = *(v6 + 56);

            v23(v20);
          }

          else if (v12 != -8)
          {
            v21 = ~v8 + a2;
            v22 = ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
            bzero(v20, (v12 + 8));
            *v22 = v21;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *a1 = a2 - 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v18 = ~v9 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v18;
    if (v17 > 1)
    {
LABEL_30:
      if (v17 == 2)
      {
        *&a1[v13] = v19;
      }

      else
      {
        *&a1[v13] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v17 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v17)
  {
    a1[v13] = v19;
  }
}

void sub_21C8F1E98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21C8F1F40(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 6u)
  {
    if (a2 <= 8u)
    {
      if (a2 == 7)
      {
        v2 = 5;
        return MEMORY[0x21CF15F90](v2);
      }

      if (a2 == 8)
      {
        v2 = 7;
        return MEMORY[0x21CF15F90](v2);
      }
    }

    else
    {
      switch(a2)
      {
        case 9u:
          v2 = 8;
          return MEMORY[0x21CF15F90](v2);
        case 0xAu:
          v2 = 9;
          return MEMORY[0x21CF15F90](v2);
        case 0xBu:
          v2 = 10;
          return MEMORY[0x21CF15F90](v2);
      }
    }
  }

  else if (a2 <= 3u)
  {
    if (a2 == 2)
    {
      v2 = 0;
      return MEMORY[0x21CF15F90](v2);
    }

    if (a2 == 3)
    {
      v2 = 1;
      return MEMORY[0x21CF15F90](v2);
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x21CF15F90](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x21CF15F90](v2);
      case 6u:
        v2 = 4;
        return MEMORY[0x21CF15F90](v2);
    }
  }

  MEMORY[0x21CF15F90](6);
  return sub_21CB864A4();
}

uint64_t sub_21C8F2034()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8F1F40(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C8F2084()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8F1F40(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C8F20D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0708, &qword_21CBAF338);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = sub_21CB82834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0710, &qword_21CBAF340);
  v18 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - v19;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0718, &qword_21CBAF348);
  v20 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v22 = &v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0720, &qword_21CBAF350);
  v44 = *(v23 - 8);
  v24 = *(v44 + 64);
  MEMORY[0x28223BE20](v23);
  v40 = v22;
  v41 = &v39 - v25;
  sub_21C8F2604(v46, *(a1 + 16), *(a1 + 24), v22);
  v26 = v11;
  v27 = *(v11 + 104);
  v27(v17, *MEMORY[0x277CDF9F8], v10);
  v27(v14, *MEMORY[0x277CDF988], v10);
  sub_21C8FEB84(&qword_27CDECA98, MEMORY[0x277CDFA28]);
  result = sub_21CB85524();
  if (result)
  {
    v46 = v23;
    v29 = *(v26 + 32);
    v29(v9, v17, v10);
    v29(&v9[*(v3 + 48)], v14, v10);
    sub_21C6EDBAC(v9, v6, &qword_27CDF0708, &qword_21CBAF338);
    v30 = *(v3 + 48);
    v31 = v42;
    v29(v42, v6, v10);
    v32 = *(v26 + 8);
    v32(&v6[v30], v10);
    sub_21C716934(v9, v6, &qword_27CDF0708, &qword_21CBAF338);
    v29((v31 + *(v43 + 36)), &v6[*(v3 + 48)], v10);
    v32(v6, v10);
    sub_21C8F4DDC();
    sub_21C6EADEC(&qword_27CDF0760, &qword_27CDF0710, &qword_21CBAF340);
    v33 = v40;
    v34 = v41;
    sub_21CB842B4();
    sub_21C6EA794(v31, &qword_27CDF0710, &qword_21CBAF340);
    sub_21C6EA794(v33, &qword_27CDF0718, &qword_21CBAF348);
    LOBYTE(v33) = sub_21CB83D04();
    v35 = sub_21CB83D24();
    sub_21CB83D24();
    if (sub_21CB83D24() != v33)
    {
      v35 = sub_21CB83D24();
    }

    v36 = sub_21CB82934();
    v37 = v45;
    (*(v44 + 32))(v45, v34, v46);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0768, &qword_21CBAF370);
    v38 = v37 + *(result + 36);
    *v38 = v36;
    *(v38 + 8) = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C8F2604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0758, &qword_21CBAF368);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0770, &qword_21CBAF378);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0748, &qword_21CBAF360);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v28 - v17;
  v19 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  if (sub_21C8F2970(v19) && (v20 = *(a1 + 32)) != 0)
  {
    v21 = *(a1 + 40);
    sub_21C71DD5C(*(a1 + 32));
    *v18 = sub_21CB832E4();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0780, &qword_21CBAF388);
    sub_21C8F2A98(a1, v20, v21, &v18[*(v22 + 44)]);
    sub_21C6EDBAC(v18, v14, &qword_27CDF0748, &qword_21CBAF360);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368);
    sub_21CB83494();
    sub_21C71B710(v20);
    v23 = v18;
    v24 = &qword_27CDF0748;
    v25 = &qword_21CBAF360;
  }

  else
  {
    *v10 = sub_21CB832E4();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0778, &qword_21CBAF380);
    sub_21C8F2F08(a1, a2, a3, &v10[*(v26 + 44)]);
    sub_21C6EDBAC(v10, v14, &qword_27CDF0758, &qword_21CBAF368);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368);
    sub_21CB83494();
    v23 = v10;
    v24 = &qword_27CDF0758;
    v25 = &qword_21CBAF368;
  }

  return sub_21C6EA794(v23, v24, v25);
}

BOOL sub_21C8F2970(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 48);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v12, v4);
  (*(v5 + 8))(v8, v4);
  sub_21C85F75C(v12);
  return (v13 & 1) != 0 && *(v2 + 32) != 0;
}

uint64_t sub_21C8F2A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a3;
  v33 = a2;
  v6 = type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0788, &qword_21CBAF390);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  sub_21C8F2D7C(v21);
  v22 = [objc_opt_self() isInHardwareKeyboardMode];
  v23 = *(a1 + *(v21 + 56));
  v24 = *(a1 + *(v21 + 60));
  v25 = v35;
  *v12 = v33;
  *(v12 + 1) = v25;
  v12[16] = v22;
  *(v12 + 3) = v23;
  v12[32] = v24;
  v26 = *(v7 + 40);
  *&v12[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v27 = v14[2];
  v27(v17, v20, v13);
  v28 = v34;
  sub_21C8F55EC(v12, v34, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v27(a4, v17, v13);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0790, &qword_21CBAF3D0);
  sub_21C8F55EC(v28, &a4[*(v29 + 48)], type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);

  sub_21C8F5654(v12, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v30 = v14[1];
  v30(v20, v13);
  sub_21C8F5654(v28, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  return (v30)(v17, v13);
}

uint64_t sub_21C8F2D7C(uint64_t a1)
{
  sub_21CB85184();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0798, &qword_21CBAF3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07A0, &qword_21CBAF3E0);
  sub_21C8F4F84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
  sub_21C8F52D4();
  swift_getOpaqueTypeConformance2();
  return sub_21CB85194();
}

double sub_21C8F2EA0(uint64_t a1)
{
  v2 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  result = 16.0;
  if ((*(a1 + *(v2 + 60)) & 1) == 0)
  {
    if (*(a1 + *(v2 + 56)) == 1)
    {
      return 32.0;
    }

    else
    {
      ShouldShowIconBadge = PMOnboardingShouldShowIconBadge();
      result = 0.0;
      if (ShouldShowIconBadge)
      {
        return 16.0;
      }
    }
  }

  return result;
}

uint64_t sub_21C8F2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v56 = sub_21CB83524();
  v55 = *(v56 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0878, &qword_21CBAF470);
  v53 = *(v54 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v50 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0880, &qword_21CBAF478);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0888, &qword_21CBAF480);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0890, &qword_21CBAF488);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v50 - v30;
  v32 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  sub_21C8F34FC(v32, v20);
  sub_21CB85234();
  sub_21CB82AC4();
  sub_21C716934(v20, v28, &qword_27CDF0888, &qword_21CBAF480);
  v33 = &v28[*(v22 + 44)];
  v34 = v68;
  *(v33 + 4) = v67;
  *(v33 + 5) = v34;
  *(v33 + 6) = v69;
  v35 = v64;
  *v33 = v63;
  *(v33 + 1) = v35;
  v36 = v66;
  *(v33 + 2) = v65;
  *(v33 + 3) = v36;
  sub_21C716934(v28, v31, &qword_27CDF0890, &qword_21CBAF488);
  v58 = a2;
  v60 = a2;
  v61 = a3;
  v37 = a1;
  v62 = a1;
  sub_21CB83CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0788, &qword_21CBAF390);
  sub_21C8F5714();
  sub_21CB81FF4();
  v38 = v51;
  sub_21CB83514();
  LOBYTE(v20) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v20)
  {
    sub_21CB83CB4();
  }

  sub_21C6EADEC(&qword_27CDF08A0, &qword_27CDF0878, &qword_21CBAF470);
  v39 = v54;
  sub_21CB84534();
  (*(v55 + 8))(v38, v56);
  (*(v53 + 8))(v11, v39);
  v40 = sub_21CB83D04();
  sub_21C8F2EA0(v37);
  sub_21CB81F24();
  v41 = &v16[*(v52 + 36)];
  *v41 = v40;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_21C6EDBAC(v31, v25, &qword_27CDF0890, &qword_21CBAF488);
  v46 = v57;
  sub_21C6EDBAC(v16, v57, &qword_27CDF0880, &qword_21CBAF478);
  v47 = v59;
  sub_21C6EDBAC(v25, v59, &qword_27CDF0890, &qword_21CBAF488);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08A8, &unk_21CBAF490);
  sub_21C6EDBAC(v46, v47 + *(v48 + 48), &qword_27CDF0880, &qword_21CBAF478);
  sub_21C6EA794(v16, &qword_27CDF0880, &qword_21CBAF478);
  sub_21C6EA794(v31, &qword_27CDF0890, &qword_21CBAF488);
  sub_21C6EA794(v46, &qword_27CDF0880, &qword_21CBAF478);
  return sub_21C6EA794(v25, &qword_27CDF0890, &qword_21CBAF488);
}

uint64_t sub_21C8F34FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 48);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v21, v11);
  (*(v12 + 8))(v16, v11);
  sub_21C85F75C(v21);
  if ((v22 & 1) == 0)
  {
    return (*(v7 + 56))(a2, 1, 1, v6);
  }

  v18 = v3[1];
  *v10 = *v3;
  v10[1] = v18;
  v19 = *(v6 + 20);
  *(v10 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C8FD468(v10, a2, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  (*(v7 + 56))(a2, 0, 1, v6);
}

__n128 sub_21C8F3748@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v72 = *(a2 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](a1);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21CB83524();
  v67 = *(v69 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07C0, &qword_21CBAF3F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0870, &qword_21CBAF468);
  v66 = *(v68 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v17 = &v64 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07B8, &qword_21CBAF3E8);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v74 = &v64 - v19;
  *v14 = sub_21CB832E4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0840, &qword_21CBAF430);
  sub_21C8F4AE4(&v14[*(v20 + 44)]);
  v21 = sub_21CB83CF4();
  v71 = a3;
  v22 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  sub_21C8F4590(v22);
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07E8, &qword_21CBAF400) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_21CB83D04();
  sub_21C8F2970(v22);
  sub_21CB81F24();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07D8, &qword_21CBAF3F8) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_21CB84AB4();
  v43 = sub_21CB83CE4();
  v44 = &v14[*(v11 + 36)];
  *v44 = v42;
  v44[8] = v43;
  sub_21CB83514();
  v45 = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v45)
  {
    sub_21CB83CB4();
  }

  sub_21C8F50D8();
  sub_21CB84534();
  (*(v67 + 8))(v10, v69);
  sub_21C6EA794(v14, &qword_27CDF07C0, &qword_21CBAF3F0);
  sub_21CB85214();
  sub_21CB82AC4();
  v46 = v74;
  (*(v66 + 32))(v74, v17, v68);
  v47 = (v46 + *(v65 + 36));
  v48 = v80;
  v47[4] = v79;
  v47[5] = v48;
  v47[6] = v81;
  v49 = v76;
  *v47 = v75;
  v47[1] = v49;
  v50 = v78;
  v47[2] = v77;
  v47[3] = v50;
  v69 = *(v22 + 48);
  v68 = sub_21CB84D84();
  v51 = v70;
  sub_21CB84D54();
  v52 = v71;
  v67 = *(v71 + 8);
  (v67)(v82, a2, v71);
  v53 = *(v72 + 8);
  v53(v51, a2);
  sub_21C85F75C(v82);
  v54 = v83;
  sub_21CB84D54();
  (v67)(v84, a2, v52);
  v53(v51, a2);
  sub_21C85F75C(v84);
  v55 = 0x4074A00000000000;
  if (v85)
  {
    v56 = 330.0;
  }

  else
  {
    v56 = 490.0;
  }

  sub_21CB85214();
  if ((v54 & 1) == 0)
  {
    v55 = 0;
  }

  v57 = *&v55;
  if ((v54 & 1) == 0)
  {
    v57 = -INFINITY;
  }

  if (v57 > v56)
  {
    sub_21CB85B04();
    v58 = sub_21CB83C94();
    sub_21CB81C14();
  }

  sub_21CB82AC4();
  v59 = v73;
  sub_21C716934(v74, v73, &qword_27CDF07B8, &qword_21CBAF3E8);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0798, &qword_21CBAF3D8) + 36);
  v61 = v91;
  *(v60 + 64) = v90;
  *(v60 + 80) = v61;
  *(v60 + 96) = v92;
  v62 = v87;
  *v60 = v86;
  *(v60 + 16) = v62;
  result = v89;
  *(v60 + 32) = v88;
  *(v60 + 48) = result;
  return result;
}

uint64_t sub_21C8F3E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v53 - v9;
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v53 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for PMOsloHeaderContentView(0);
  v24 = *(v23 - 8);
  v58 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v55 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 48);
  sub_21CB84D84();
  sub_21CB84D54();
  v28 = *(a1 + 24);
  (*(v28 + 16))(v10, v28);
  v29 = *(v11 + 8);
  v29(v22, v10);
  v53 = v2;
  sub_21CB84D54();
  (*(v28 + 24))(v10, v28);
  v29(v19, v10);
  v30 = v54;
  sub_21CB84D54();
  v31 = *(v28 + 8);
  v31(v62, v10, v28);
  v29(v30, v10);
  v66 = v62[0];
  sub_21C6EDBAC(&v66, &v63, &unk_27CDED260, &qword_21CBA1C60);
  sub_21C85F75C(v62);
  v32 = v56;
  sub_21CB84D54();
  v31(&v63, v10, v28);
  v29(v32, v10);
  v65 = v64;
  sub_21C6EDBAC(&v65, v61, &unk_27CDED260, &qword_21CBA1C60);
  sub_21C85F75C(&v63);
  v33 = sub_21CB813C4();
  v34 = v55;
  (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  v35 = v58;
  v36 = *(v58 + 28);
  v37 = type metadata accessor for PMOsloBadge(0);
  (*(*(v37 - 8) + 56))(v34 + v36, 1, 1, v37);
  v38 = v35;
  v39 = *(v35 + 32);
  v40 = *(v38 + 36);
  sub_21C7D3344(v57, v34, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v60, v34 + v36, &unk_27CDF2CA0, &unk_21CBA5520);
  v41 = v65;
  *(v34 + v39) = v66;
  *(v34 + v40) = v41;
  LOBYTE(v36) = sub_21CB83D04();
  sub_21CB81F24();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v59;
  sub_21C8F55EC(v34, v59, type metadata accessor for PMOsloHeaderContentView);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530) + 36);
  *v51 = v36;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  return sub_21C8F5654(v34, type metadata accessor for PMOsloHeaderContentView);
}

uint64_t sub_21C8F439C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 48);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v19, v4);
  (*(v5 + 8))(v8, v4);
  v11 = v19[4];

  sub_21C85F75C(v19);
  v12 = *(a1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3260, &qword_21CBAF450);
  sub_21CB84D54();
  v13 = *v2;
  v14 = v2[3];
  v16[0] = v11;
  v16[6] = v13;
  v17 = *(v2 + 1);
  v18 = v14;

  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0858, &unk_21CBAF458);
  sub_21C8F54A4();
  sub_21C8F54F8();
  sub_21CB84974();
  return sub_21C8F5584(v16);
}

double sub_21C8F4590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 48);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v10, v2);
  (*(v3 + 8))(v6, v2);
  sub_21C85F75C(v10);
  result = 34.0;
  if (v11)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21C8F46B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49[1] = a2;
  v50 = sub_21CB83524();
  v49[0] = *(v50 - 8);
  v3 = *(v49[0] + 64);
  MEMORY[0x28223BE20](v50);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0838, &qword_21CBAF428);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0828, &qword_21CBAF420);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0810, &qword_21CBAF418);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v49 - v18;
  *v10 = sub_21CB832E4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0840, &qword_21CBAF430);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  sub_21C8F4AE4(&v10[*(v20 + 44)]);
  v23 = sub_21CB83CD4();
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07E8, &qword_21CBAF400) + 36)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_21CB83CF4();
  sub_21C8F4590(a1);
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07D8, &qword_21CBAF3F8) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_21CB83D04();
  sub_21C8F2970(a1);
  sub_21CB81F24();
  v36 = &v10[*(v7 + 44)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v10, v15, &qword_27CDF0838, &qword_21CBAF428);
  v41 = &v15[*(v12 + 44)];
  v42 = v56;
  *(v41 + 4) = v55;
  *(v41 + 5) = v42;
  *(v41 + 6) = v57;
  v43 = v52;
  *v41 = v51;
  *(v41 + 1) = v43;
  v44 = v54;
  *(v41 + 2) = v53;
  *(v41 + 3) = v44;
  v45 = sub_21CB84AB4();
  v46 = sub_21CB83CE4();
  sub_21C716934(v15, v19, &qword_27CDF0828, &qword_21CBAF420);
  v47 = &v19[*(v16 + 36)];
  *v47 = v45;
  v47[8] = v46;
  sub_21CB83514();
  LOBYTE(v15) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v15)
  {
    sub_21CB83CB4();
  }

  sub_21C8F52D4();
  sub_21CB84534();
  (*(v49[0] + 8))(v5, v50);
  return sub_21C6EA794(v19, &qword_27CDF0810, &qword_21CBAF418);
}

uint64_t sub_21C8F4AE4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0848, &unk_21CBAF438);
  v23 = *(v1 - 8);
  v2 = v23;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  sub_21C8F3E34(v16, v15);
  sub_21C8F439C(v16);
  sub_21C6EDBAC(v15, v12, &qword_27CDF2CB0, &qword_21CBA5530);
  v17 = *(v2 + 16);
  v18 = v1;
  v17(v5, v8, v1);
  v19 = v24;
  sub_21C6EDBAC(v12, v24, &qword_27CDF2CB0, &qword_21CBA5530);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0850, &qword_21CBAF448) + 48);
  v17(v20, v5, v18);
  v21 = *(v23 + 8);
  v21(v8, v18);
  sub_21C6EA794(v15, &qword_27CDF2CB0, &qword_21CBA5530);
  v21(v5, v18);
  return sub_21C6EA794(v12, &qword_27CDF2CB0, &qword_21CBA5530);
}

uint64_t sub_21C8F4D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83CD4();
  sub_21CB81F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_21C8F55B4(a1, a2);
  *(a2 + 80) = v4;
  *(a2 + 88) = v6;
  *(a2 + 96) = v8;
  *(a2 + 104) = v10;
  *(a2 + 112) = v12;
  *(a2 + 120) = 0;
  return result;
}

unint64_t sub_21C8F4DDC()
{
  result = qword_27CDF0728;
  if (!qword_27CDF0728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0718, &qword_21CBAF348);
    sub_21C8F4E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0728);
  }

  return result;
}

unint64_t sub_21C8F4E60()
{
  result = qword_27CDF0730;
  if (!qword_27CDF0730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0738, &qword_21CBAF358);
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0730);
  }

  return result;
}

unint64_t sub_21C8F4F84()
{
  result = qword_27CDF07A8;
  if (!qword_27CDF07A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0798, &qword_21CBAF3D8);
    sub_21C8F5010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07A8);
  }

  return result;
}

unint64_t sub_21C8F5010()
{
  result = qword_27CDF07B0;
  if (!qword_27CDF07B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07B8, &qword_21CBAF3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07C0, &qword_21CBAF3F0);
    sub_21C8F50D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07B0);
  }

  return result;
}

unint64_t sub_21C8F50D8()
{
  result = qword_27CDF07C8;
  if (!qword_27CDF07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07C0, &qword_21CBAF3F0);
    sub_21C8F5190();
    sub_21C6EADEC(&qword_27CDF0800, &qword_27CDF0808, &qword_21CBAF410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07C8);
  }

  return result;
}

unint64_t sub_21C8F5190()
{
  result = qword_27CDF07D0;
  if (!qword_27CDF07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07D8, &qword_21CBAF3F8);
    sub_21C8F521C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07D0);
  }

  return result;
}

unint64_t sub_21C8F521C()
{
  result = qword_27CDF07E0;
  if (!qword_27CDF07E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07E8, &qword_21CBAF400);
    sub_21C6EADEC(&qword_27CDF07F0, &qword_27CDF07F8, &qword_21CBAF408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07E0);
  }

  return result;
}

unint64_t sub_21C8F52D4()
{
  result = qword_27CDF0818;
  if (!qword_27CDF0818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
    sub_21C8F538C();
    sub_21C6EADEC(&qword_27CDF0800, &qword_27CDF0808, &qword_21CBAF410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0818);
  }

  return result;
}

unint64_t sub_21C8F538C()
{
  result = qword_27CDF0820;
  if (!qword_27CDF0820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0828, &qword_21CBAF420);
    sub_21C8F5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0820);
  }

  return result;
}

unint64_t sub_21C8F5418()
{
  result = qword_27CDF0830;
  if (!qword_27CDF0830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0838, &qword_21CBAF428);
    sub_21C8F5190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0830);
  }

  return result;
}

unint64_t sub_21C8F54A4()
{
  result = qword_27CDF0860;
  if (!qword_27CDF0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0860);
  }

  return result;
}

unint64_t sub_21C8F54F8()
{
  result = qword_27CDF0868;
  if (!qword_27CDF0868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0858, &unk_21CBAF458);
    sub_21C8F54A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0868);
  }

  return result;
}

uint64_t sub_21C8F55EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8F5654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8F56CC(uint64_t (*a1)(uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for PMSafariAutoFillStrongPasswordView();
  return a1(v6);
}

unint64_t sub_21C8F5714()
{
  result = qword_27CDF0898;
  if (!qword_27CDF0898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0788, &qword_21CBAF390);
    sub_21C8F4F84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
    sub_21C8F52D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0898);
  }

  return result;
}

uint64_t sub_21C8F57F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09B0, &qword_21CBAF858);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09B8, &qword_21CBAF860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  *v6 = sub_21CB83074();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09C0, &qword_21CBAF868);
  sub_21C8F5A08(v1, &v6[*(v11 + 44)]);
  v12 = sub_21CB83CD4();
  v13 = *(v1 + 32);
  if ((v13 & 1) == 0)
  {
    *(v1 + 24);
  }

  sub_21CB81F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_21C716934(v6, v10, &qword_27CDF09B0, &qword_21CBAF858);
  v22 = &v10[*(v7 + 36)];
  *v22 = v12;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_21CB83D04();
  if ((v13 & 1) == 0)
  {
    *(v1 + 24);
  }

  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_21C716934(v10, a1, &qword_27CDF09B8, &qword_21CBAF860);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09C8, &qword_21CBAF870);
  v33 = a1 + *(result + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_21C8F5A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09D0, &qword_21CBAF878);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09D8, &unk_21CBAF880);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = v42 - v17;
  if (*(a1 + 16))
  {
    v20 = *(v7 + 56);
    v21 = v42 - v17;
    v22 = 1;
  }

  else
  {
    sub_21C8F55EC(a1, v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
    v23 = *(v4 + 80);
    v43 = v4;
    v24 = (v23 + 16) & ~v23;
    v25 = swift_allocObject();
    v26 = sub_21C8FD468(v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
    v42[1] = v42;
    MEMORY[0x28223BE20](v26);
    v42[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C8FD504();
    v4 = v43;
    sub_21CB84DA4();
    (*(v7 + 32))(v19, v12, v6);
    v20 = *(v7 + 56);
    v21 = v19;
    v22 = 0;
  }

  v27 = v6;
  v20(v21, v22, 1, v6, v18);
  sub_21C8F55EC(a1, v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  v30 = sub_21C8FD468(v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  MEMORY[0x28223BE20](v30);
  v42[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
  sub_21C8FD504();
  sub_21CB84DA4();
  v31 = v19;
  v43 = v19;
  v32 = v12;
  v33 = v44;
  sub_21C6EDBAC(v31, v44, &qword_27CDF09D8, &unk_21CBAF880);
  v34 = *(v7 + 16);
  v35 = v45;
  v34(v45, v32, v6);
  v36 = v7;
  v37 = v46;
  sub_21C6EDBAC(v33, v46, &qword_27CDF09D8, &unk_21CBAF880);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09E8, &qword_21CBAF898);
  v39 = v37 + *(v38 + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  v34((v37 + *(v38 + 64)), v35, v27);
  v40 = *(v36 + 8);
  v40(v32, v27);
  sub_21C6EA794(v43, &qword_27CDF09D8, &unk_21CBAF880);
  v40(v35, v27);
  return sub_21C6EA794(v33, &qword_27CDF09D8, &unk_21CBAF880);
}

uint64_t sub_21C8F5F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = sub_21CB84A44();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB82054();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v27 = sub_21CB84BB4();
  *(a1 + 32);
  v18 = sub_21CB83DC4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = sub_21CB83E14();
  sub_21C6EA794(v17, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v21 = a1 + *(type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0) + 32);
  sub_21C74F0F8(v13);
  (*(v7 + 104))(v10, *MEMORY[0x277CDF3D0], v6);
  LOBYTE(v21) = sub_21CB82044();
  v22 = *(v7 + 8);
  v22(v10, v6);
  v22(v13, v6);
  if (v21)
  {
    (*(v24 + 104))(v25, *MEMORY[0x277CE0EE0], v26);
    result = sub_21CB84B44();
  }

  else
  {
    result = sub_21CB84AD4();
  }

  *a2 = v27;
  a2[1] = KeyPath;
  a2[2] = v19;
  a2[3] = result;
  return result;
}

double sub_21C8F627C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_21CB829C4();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB28, &qword_21CBAF7B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  sub_21CB81EF4();
  v19 = sub_21CB81F14();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  sub_21C8F55EC(a1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_21C8FD468(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  sub_21CB84D94();
  sub_21CB829B4();
  sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0);
  sub_21C8FEB84(&qword_27CDF0948, MEMORY[0x277CDDA98]);
  v23 = v28;
  v22 = v29;
  sub_21CB84124();
  (*(v3 + 8))(v6, v23);
  (*(v15 + 8))(v18, v14);
  v24 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0940, &qword_21CBAF7A8) + 36));
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0958, &qword_21CBAF7B8) + 28);
  sub_21CB82AE4();
  *v24 = swift_getKeyPath();
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0930, &qword_21CBAF7A0) + 36)) = 0;
  LOBYTE(v18) = sub_21CB83CE4();
  v26 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0910, &qword_21CBAF790) + 36);
  *v26 = v18;
  result = 0.0;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 1;
  return result;
}

uint64_t sub_21C8F66D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

double sub_21C8F6710@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0988, &qword_21CBAF7D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0978, &qword_21CBAF7C8);
  v16 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v18 = &v27 - v17;
  sub_21C8F55EC(a1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_21C8FD468(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0998, &qword_21CBAF7D8);
  sub_21C8FD0E0();
  sub_21CB84DA4();
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0990, &qword_27CDF0988, &qword_21CBAF7D0);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v21 = v28;
  sub_21CB84124();
  (*(v29 + 8))(v7, v21);
  (*(v12 + 8))(v15, v11);
  v22 = &v18[*(v27 + 36)];
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0958, &qword_21CBAF7B8) + 28);
  sub_21CB82AE4();
  *v22 = swift_getKeyPath();
  sub_21C8FCF5C();
  v24 = v30;
  sub_21CB844A4();
  sub_21C6EA794(v18, &qword_27CDF0978, &qword_21CBAF7C8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0918, &qword_21CBAF798);
  result = -10.0;
  *(v24 + *(v25 + 36)) = xmmword_21CBAF1B0;
  return result;
}

uint64_t sub_21C8F6B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_21CB84A44();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82054();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_21CB84BD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84BB4();
  (*(v16 + 104))(v19, *MEMORY[0x277CE0FE0], v15);
  v31 = sub_21CB84C64();

  (*(v16 + 8))(v19, v15);
  sub_21CB85214();
  sub_21CB82374();
  LOBYTE(v19) = v36;
  v29 = v37;
  v30 = v35;
  LOBYTE(v16) = v38;
  v27 = v40;
  v28 = v39;
  v20 = v32 + *(type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0) + 20);
  sub_21C74F0F8(v14);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v7);
  sub_21CB82044();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v14, v7);
  (*(v33 + 104))(v6, *MEMORY[0x277CE0EE0], v34);
  v22 = sub_21CB84B54();
  result = swift_getKeyPath();
  v24 = v30;
  *a2 = v31;
  *(a2 + 8) = v24;
  *(a2 + 16) = v19;
  v25 = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v16;
  v26 = v27;
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = result;
  *(a2 + 64) = v22;
  return result;
}

uint64_t sub_21C8F6EE8()
{
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0910, &qword_21CBAF790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0918, &qword_21CBAF798);
  sub_21C8FCBD8();
  sub_21C8FCE94();
  return sub_21CB85194();
}

uint64_t sub_21C8F6FB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_21C6EDBAC(a2 + 8, a3 + 8, &unk_27CDFA2C0, &unk_21CBA68A0);
  v6 = *(a2 + 48);
  v7 = *(a2 + 72);
  *a3 = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 72) = v7;
}

uint64_t sub_21C8F703C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832E4();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08E8, &unk_21CBAF760) + 44);
  v9 = *v1;
  swift_getKeyPath();
  sub_21C8F55B4(v1, v8);
  v4 = swift_allocObject();
  v5 = v8[3];
  v4[3] = v8[2];
  v4[4] = v5;
  v4[5] = v8[4];
  v6 = v8[1];
  v4[1] = v8[0];
  v4[2] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08F0, &qword_21CBAF788);
  sub_21C6EADEC(&qword_27CDF08F8, &qword_27CDF08F0, &qword_21CBAF788);
  sub_21C8FCB20();
  sub_21C8FCB74();
  return sub_21CB84FD4();
}

uint64_t sub_21C8F71A4@<X0>(uint64_t a1@<X8>)
{
  v211 = a1;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A28, &qword_21CBAF9C0);
  v2 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v185 = &v173 - v3;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A30, &qword_21CBAF9C8);
  v4 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v181 = &v173 - v5;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A38, &qword_21CBAF9D0);
  v6 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v182 = &v173 - v7;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A40, &qword_21CBAF9D8);
  v8 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v186 = &v173 - v9;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A48, &qword_21CBAF9E0);
  v176 = *(v179 - 8);
  v10 = *(v176 + 64);
  MEMORY[0x28223BE20](v179);
  v175 = &v173 - v11;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A50, &qword_21CBAF9E8);
  v12 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v14 = &v173 - v13;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A58, &qword_21CBAF9F0);
  v15 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v17 = &v173 - v16;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A60, &qword_21CBAF9F8);
  v18 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v194 = &v173 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A68, &qword_21CBAFA00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v173 - v22;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A70, &qword_21CBAFA08);
  v24 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v178 = &v173 - v25;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A78, &qword_21CBAFA10);
  v26 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v196 = &v173 - v27;
  v28 = sub_21CB81024();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A80, &qword_21CBAFA18);
  v198 = *(v201 - 8);
  v33 = *(v198 + 64);
  MEMORY[0x28223BE20](v201);
  v199 = &v173 - v34;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A88, &qword_21CBAFA20);
  v35 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v197 = &v173 - v36;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A90, &qword_21CBAFA28);
  v37 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v209 = &v173 - v38;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A98, &qword_21CBAFA30);
  v39 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v204 = &v173 - v40;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AA0, &qword_21CBAFA38);
  v41 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v190 = &v173 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AA8, &qword_21CBAFA40);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v173 - v45;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AB0, &qword_21CBAFA48);
  v47 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v189 = &v173 - v48;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AB8, &qword_21CBAFA50);
  v49 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v193 = &v173 - v50;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AC0, &qword_21CBAFA58);
  v51 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v206 = &v173 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AC8, &qword_21CBAFA60);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v58 = &v173 - v57;
  v59 = *v1;
  if (v59 > 6)
  {
    if (*v1 <= 8u)
    {
      if (v59 == 7)
      {
        v119 = v55;
        v174 = v55;
        v120 = v56;
        v121 = v58;
        v173 = v58;
        sub_21C8FA0C0(v58);
        (*(v120 + 16))(v23, v121, v119);
        swift_storeEnumTagMultiPayload();
        v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
        v123 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
        v124 = sub_21CB82A54();
        v125 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
        v126 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
        v212 = v123;
        v213 = v124;
        v214 = v125;
        v215 = v126;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v212 = v122;
        v213 = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v128 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
        v129 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
        v212 = v128;
        v213 = v124;
        v214 = v129;
        v215 = v126;
        swift_getOpaqueTypeConformance2();
        v130 = v178;
        v131 = v174;
        sub_21CB83494();
        sub_21C6EDBAC(v130, v194, &qword_27CDF0A70, &qword_21CBAFA08);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE2BC();
        sub_21C8FE4AC();
        v132 = v196;
        sub_21CB83494();
        sub_21C6EA794(v130, &qword_27CDF0A70, &qword_21CBAFA08);
        sub_21C6EDBAC(v132, v204, &qword_27CDF0A78, &qword_21CBAFA10);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
        sub_21C8FE230();
        v133 = v206;
        sub_21CB83494();
        sub_21C6EA794(v132, &qword_27CDF0A78, &qword_21CBAFA10);
        sub_21C6EDBAC(v133, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDFB0();
        sub_21C8FE564();
        sub_21CB83494();
        sub_21C6EA794(v133, &qword_27CDF0AC0, &qword_21CBAFA58);
        return (*(v120 + 8))(v173, v131);
      }

      if (v59 != 8)
      {
        goto LABEL_27;
      }

      MEMORY[0x28223BE20](v55);
      *(&v173 - 2) = v1;
      MEMORY[0x28223BE20](v108);
      *(&v173 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B50, &qword_21CBAFA88);
      sub_21C8FE730();
      sub_21C6EADEC(&qword_27CDF0BA0, &qword_27CDF0B50, &qword_21CBAFA88);
      v109 = v175;
      sub_21CB83F54();
      v82 = v176;
      v81 = v109;
      v83 = v179;
      (*(v176 + 16))(v14, v109, v179);
      swift_storeEnumTagMultiPayload();
      sub_21C8FDDF8();
      sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0);
      sub_21CB83494();
      sub_21C6EDBAC(v17, v194, &qword_27CDF0A58, &qword_21CBAF9F0);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE2BC();
      sub_21C8FE4AC();
      v110 = v196;
      sub_21CB83494();
      sub_21C6EA794(v17, &qword_27CDF0A58, &qword_21CBAF9F0);
      sub_21C6EDBAC(v110, v204, &qword_27CDF0A78, &qword_21CBAFA10);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
      sub_21C8FE230();
      v90 = v206;
      sub_21CB83494();
      sub_21C6EA794(v110, &qword_27CDF0A78, &qword_21CBAFA10);
      v91 = &qword_27CDF0AC0;
      v92 = &qword_21CBAFA58;
      sub_21C6EDBAC(v90, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
    }

    else
    {
      if (v59 == 9 || v59 == 10)
      {
        sub_21CB81014();
        v156 = sub_21CB81004();
        v158 = v157;
        (*(v29 + 8))(v32, v28);
        v159 = v199;
        sub_21C8FA758(v156, v158, 10, v199);

        v160 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
        v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
        v162 = sub_21CB82A54();
        v163 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
        v164 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
        v212 = v161;
        v213 = v162;
        v214 = v163;
        v215 = v164;
        v165 = swift_getOpaqueTypeConformance2();
        v212 = v160;
        v213 = v165;
        swift_getOpaqueTypeConformance2();
        v166 = v197;
        v167 = v201;
        sub_21CB845C4();
        (*(v198 + 8))(v159, v167);
        sub_21C6EDBAC(v166, v181, &qword_27CDF0A88, &qword_21CBAFA20);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDDF8();
        v168 = v182;
        sub_21CB83494();
        sub_21C6EDBAC(v168, v185, &qword_27CDF0A38, &qword_21CBAF9D0);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
        v169 = v186;
        sub_21CB83494();
        sub_21C6EA794(v168, &qword_27CDF0A38, &qword_21CBAF9D0);
        sub_21C6EDBAC(v169, v209, &qword_27CDF0A40, &qword_21CBAF9D8);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDFB0();
        sub_21C8FE564();
        sub_21CB83494();
        sub_21C6EA794(v169, &qword_27CDF0A40, &qword_21CBAF9D8);
        v155 = v166;
        return sub_21C6EA794(v155, &qword_27CDF0A88, &qword_21CBAFA20);
      }

      if (v59 != 11)
      {
        goto LABEL_27;
      }

      sub_21CB81014();
      v78 = sub_21CB81004();
      v80 = v79;
      (*(v29 + 8))(v32, v28);
      v81 = v199;
      sub_21C8FA758(v78, v80, 10, v199);

      v82 = v198;
      v83 = v201;
      (*(v198 + 16))(v185, v81, v201);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
      v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
      v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
      v86 = sub_21CB82A54();
      v87 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
      v88 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
      v212 = v85;
      v213 = v86;
      v214 = v87;
      v215 = v88;
      v89 = swift_getOpaqueTypeConformance2();
      v212 = v84;
      v213 = v89;
      swift_getOpaqueTypeConformance2();
      v90 = v186;
      sub_21CB83494();
      v91 = &qword_27CDF0A40;
      v92 = &qword_21CBAF9D8;
      sub_21C6EDBAC(v90, v209, &qword_27CDF0A40, &qword_21CBAF9D8);
    }

    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v90, v91, v92);
    return (*(v82 + 8))(v81, v83);
  }

  if (*v1 > 3u)
  {
    if (v59 != 4)
    {
      v174 = v55;
      if (v59 != 5)
      {
        if (v59 == 6)
        {
          sub_21CB81014();
          v60 = sub_21CB81004();
          v62 = v61;
          (*(v29 + 8))(v32, v28);
          v63 = v199;
          sub_21C8FA758(v60, v62, 5, v199);

          v64 = v198;
          (*(v198 + 16))(v23, v63, v201);
          swift_storeEnumTagMultiPayload();
          v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
          v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
          v67 = sub_21CB82A54();
          v68 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
          v69 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
          v212 = v66;
          v213 = v67;
          v214 = v68;
          v215 = v69;
          v70 = swift_getOpaqueTypeConformance2();
          v212 = v65;
          v213 = v70;
          swift_getOpaqueTypeConformance2();
          v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
          v72 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
          v212 = v71;
          v213 = v67;
          v214 = v72;
          v215 = v69;
          swift_getOpaqueTypeConformance2();
          v73 = v178;
          v74 = v201;
          sub_21CB83494();
          sub_21C6EDBAC(v73, v194, &qword_27CDF0A70, &qword_21CBAFA08);
          swift_storeEnumTagMultiPayload();
          sub_21C8FE2BC();
          sub_21C8FE4AC();
          v75 = v196;
          sub_21CB83494();
          sub_21C6EA794(v73, &qword_27CDF0A70, &qword_21CBAFA08);
          sub_21C6EDBAC(v75, v204, &qword_27CDF0A78, &qword_21CBAFA10);
          swift_storeEnumTagMultiPayload();
          sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
          sub_21C8FE230();
          v76 = v206;
          sub_21CB83494();
          sub_21C6EA794(v75, &qword_27CDF0A78, &qword_21CBAFA10);
          sub_21C6EDBAC(v76, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
          swift_storeEnumTagMultiPayload();
          sub_21C8FDFB0();
          sub_21C8FE564();
          sub_21CB83494();
          sub_21C6EA794(v76, &qword_27CDF0AC0, &qword_21CBAFA58);
          return (*(v64 + 8))(v199, v74);
        }

        goto LABEL_27;
      }

      sub_21CB81014();
      v140 = sub_21CB81004();
      v142 = v141;
      (*(v29 + 8))(v32, v28);
      v143 = v199;
      sub_21C8FA758(v140, v142, 4, v199);

      v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
      v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
      v146 = sub_21CB82A54();
      v147 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
      v148 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
      v212 = v145;
      v213 = v146;
      v214 = v147;
      v215 = v148;
      v149 = swift_getOpaqueTypeConformance2();
      v212 = v144;
      v213 = v149;
      swift_getOpaqueTypeConformance2();
      v103 = v197;
      v150 = v201;
      sub_21CB845C4();
      (*(v198 + 8))(v143, v150);
      sub_21C6EDBAC(v103, v46, &qword_27CDF0A88, &qword_21CBAFA20);
      swift_storeEnumTagMultiPayload();
      v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
      v152 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
      v212 = v151;
      v213 = v146;
      v214 = v152;
      v215 = v148;
      swift_getOpaqueTypeConformance2();
      sub_21C8FDDF8();
      v107 = v189;
      sub_21CB83494();
      sub_21C6EDBAC(v107, v190, &qword_27CDF0AB0, &qword_21CBAFA48);
      goto LABEL_25;
    }

    v113 = v55;
    v111 = v56;
    v112 = v58;
    sub_21C8F9D38(v58);
    (*(v111 + 16))(v46, v112, v113);
    swift_storeEnumTagMultiPayload();
    v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    v135 = sub_21CB82A54();
    v136 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
    v137 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    v212 = v134;
    v213 = v135;
    v214 = v136;
    v215 = v137;
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    v118 = v189;
    sub_21CB83494();
    sub_21C6EDBAC(v118, v190, &qword_27CDF0AB0, &qword_21CBAFA48);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_21C8FE0E4();
    v138 = v193;
    sub_21CB83494();
    sub_21C6EA794(v118, &qword_27CDF0AB0, &qword_21CBAFA48);
    sub_21C6EDBAC(v138, v204, &qword_27CDF0AB8, &qword_21CBAFA50);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    v139 = v206;
    sub_21CB83494();
    sub_21C6EA794(v138, &qword_27CDF0AB8, &qword_21CBAFA50);
    sub_21C6EDBAC(v139, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v139, &qword_27CDF0AC0, &qword_21CBAFA58);
    return (*(v111 + 8))(v112, v113);
  }

  v174 = v55;
  if (v59 == 2)
  {
    v111 = v56;
    v112 = v58;
    sub_21C8F99B4(v58);
    v113 = v174;
    (*(v111 + 16))(v46, v112, v174);
    swift_storeEnumTagMultiPayload();
    v114 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    v115 = sub_21CB82A54();
    v116 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
    v117 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    v212 = v114;
    v213 = v115;
    v214 = v116;
    v215 = v117;
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    v118 = v189;
    sub_21CB83494();
    sub_21C6EDBAC(v118, v190, &qword_27CDF0AB0, &qword_21CBAFA48);
    goto LABEL_22;
  }

  if (v59 != 3)
  {
LABEL_27:
    v170 = v197;
    sub_21C8FA448();
    sub_21C6EDBAC(v170, v14, &qword_27CDF0A88, &qword_21CBAFA20);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDDF8();
    sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0);
    sub_21CB83494();
    sub_21C6EDBAC(v17, v194, &qword_27CDF0A58, &qword_21CBAF9F0);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE2BC();
    sub_21C8FE4AC();
    v171 = v196;
    sub_21CB83494();
    sub_21C6EA794(v17, &qword_27CDF0A58, &qword_21CBAF9F0);
    sub_21C6EDBAC(v171, v204, &qword_27CDF0A78, &qword_21CBAFA10);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    v172 = v206;
    sub_21CB83494();
    sub_21C6EA794(v171, &qword_27CDF0A78, &qword_21CBAFA10);
    sub_21C6EDBAC(v172, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v172, &qword_27CDF0AC0, &qword_21CBAFA58);
    v155 = v170;
    return sub_21C6EA794(v155, &qword_27CDF0A88, &qword_21CBAFA20);
  }

  sub_21CB81014();
  v93 = sub_21CB81004();
  v95 = v94;
  (*(v29 + 8))(v32, v28);
  v96 = v199;
  sub_21C8FA758(v93, v95, 6, v199);

  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v99 = sub_21CB82A54();
  v100 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
  v101 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v212 = v98;
  v213 = v99;
  v214 = v100;
  v215 = v101;
  v102 = swift_getOpaqueTypeConformance2();
  v212 = v97;
  v213 = v102;
  swift_getOpaqueTypeConformance2();
  v103 = v197;
  v104 = v201;
  sub_21CB845C4();
  (*(v198 + 8))(v96, v104);
  sub_21C6EDBAC(v103, v46, &qword_27CDF0A88, &qword_21CBAFA20);
  swift_storeEnumTagMultiPayload();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v106 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
  v212 = v105;
  v213 = v99;
  v214 = v106;
  v215 = v101;
  swift_getOpaqueTypeConformance2();
  sub_21C8FDDF8();
  v107 = v189;
  sub_21CB83494();
  sub_21C6EDBAC(v107, v190, &qword_27CDF0AB0, &qword_21CBAFA48);
LABEL_25:
  swift_storeEnumTagMultiPayload();
  sub_21C8FE0E4();
  v153 = v193;
  sub_21CB83494();
  sub_21C6EA794(v107, &qword_27CDF0AB0, &qword_21CBAFA48);
  sub_21C6EDBAC(v153, v204, &qword_27CDF0AB8, &qword_21CBAFA50);
  swift_storeEnumTagMultiPayload();
  sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
  sub_21C8FE230();
  v154 = v206;
  sub_21CB83494();
  sub_21C6EA794(v153, &qword_27CDF0AB8, &qword_21CBAFA50);
  sub_21C6EDBAC(v154, v209, &qword_27CDF0AC0, &qword_21CBAFA58);
  swift_storeEnumTagMultiPayload();
  sub_21C8FDFB0();
  sub_21C8FE564();
  sub_21CB83494();
  sub_21C6EA794(v154, &qword_27CDF0AC0, &qword_21CBAFA58);
  v155 = v103;
  return sub_21C6EA794(v155, &qword_27CDF0A88, &qword_21CBAFA20);
}

uint64_t sub_21C8F99B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sub_21C8FE948(v2, v33);
  v21 = swift_allocObject();
  v22 = v33[3];
  *(v21 + 48) = v33[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v33[4];
  v23 = v33[1];
  *(v21 + 16) = v33[0];
  *(v21 + 32) = v23;
  *(v21 + 96) = 1;
  v30 = v2;
  v31 = v18;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v24 = v27;
  sub_21CB84124();
  (*(v28 + 8))(v7, v24);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21C8F9D38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sub_21C8FE948(v2, v33);
  v21 = swift_allocObject();
  v22 = v33[3];
  *(v21 + 48) = v33[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v33[4];
  v23 = v33[1];
  *(v21 + 16) = v33[0];
  *(v21 + 32) = v23;
  *(v21 + 96) = 2;
  v30 = v2;
  v31 = v18;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v24 = v27;
  sub_21CB84124();
  (*(v28 + 8))(v7, v24);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21C8FA0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sub_21C8FE948(v2, v33);
  v21 = swift_allocObject();
  v22 = v33[3];
  *(v21 + 48) = v33[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v33[4];
  v23 = v33[1];
  *(v21 + 16) = v33[0];
  *(v21 + 32) = v23;
  *(v21 + 96) = 7;
  v30 = v2;
  v31 = v18;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v24 = v27;
  sub_21CB84124();
  (*(v28 + 8))(v7, v24);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21C8FA448()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A80, &qword_21CBAFA18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  sub_21C8FA758(v10, v12, 8, v9);

  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v15 = sub_21CB82A54();
  v16 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
  v17 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v13;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB845C4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21C8FA758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a3;
  v32 = a2;
  v31 = a1;
  v36 = a4;
  v37 = sub_21CB82A04();
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v18 = *(v33 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v33);
  v21 = &v30 - v20;
  sub_21C8FE948(v5, &v41);
  v22 = swift_allocObject();
  v23 = v44;
  *(v22 + 48) = v43;
  *(v22 + 64) = v23;
  *(v22 + 80) = v45;
  v24 = v42;
  *(v22 + 16) = v41;
  *(v22 + 32) = v24;
  *(v22 + 96) = v30;
  v38 = v5;
  v39 = v31;
  v40 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C20, &qword_21CBAFAF0);
  sub_21C8FEDB4();
  sub_21CB84DA4();
  sub_21CB82A44();
  v25 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
  v26 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
  sub_21CB84124();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
  v27 = v34;
  sub_21CB829F4();
  *&v41 = v13;
  *(&v41 + 1) = v8;
  *&v42 = v25;
  *(&v42 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_21CB84334();
  (*(v35 + 8))(v27, v37);
  return (*(v18 + 8))(v21, v28);
}

uint64_t sub_21C8FABB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BF0, &qword_21CBAFAD0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_21C8FE948(a1, &v32);
  v16 = swift_allocObject();
  v17 = v35;
  v16[3] = v34;
  v16[4] = v17;
  v16[5] = v36;
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BF8, &qword_21CBAFAD8);
  sub_21C6EADEC(&qword_27CDF0C00, &qword_27CDF0BF8, &qword_21CBAFAD8);
  sub_21CB84DA4();
  sub_21C8FE948(a1, &v32);
  v19 = swift_allocObject();
  v20 = v35;
  v19[3] = v34;
  v19[4] = v20;
  v19[5] = v36;
  v21 = v33;
  v19[1] = v32;
  v19[2] = v21;
  v30 = a1;
  sub_21CB84DA4();
  v22 = v4[2];
  v22(v9, v15, v3);
  v23 = v28;
  v22(v28, v12, v3);
  v24 = v29;
  v22(v29, v9, v3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C08, &qword_21CBAFAE0);
  v22(&v24[*(v25 + 48)], v23, v3);
  v26 = v4[1];
  v26(v12, v3);
  v26(v15, v3);
  v26(v23, v3);
  return (v26)(v9, v3);
}

uint64_t sub_21C8FAF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v51 = v9;
  v52 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21C6EDBAC(a1 + 8, &v51, &unk_27CDFA2C0, &unk_21CBA68A0);
  if (!v53)
  {
    sub_21C6EA794(&v51, &unk_27CDFA2C0, &unk_21CBA68A0);
LABEL_8:
    v34 = 0;
    v36 = 0;
    v43 = 0;
    v40 = 0;
    goto LABEL_9;
  }

  v19 = *__swift_project_boxed_opaque_existential_0(&v51, v53);
  v20 = sub_21C995410();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v51);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_8;
  }

  v51 = v20;
  v52 = v22;
  v24 = sub_21CB84054();
  v26 = v25;
  v28 = v27;
  v29 = sub_21CB83FD4();
  v49 = v12;
  v31 = v30;
  v48 = v16;
  v33 = v32;
  v47 = v14;
  sub_21C74A72C(v24, v26, v28 & 1);

  sub_21CB84B34();
  v34 = sub_21CB83FB4();
  v36 = v35;
  v50 = v18;
  v38 = v37;
  v40 = v39;

  v41 = v33 & 1;
  LOBYTE(v16) = v48;
  v42 = v31;
  v12 = v49;
  sub_21C74A72C(v29, v42, v41);
  v14 = v47;

  v43 = v38 & 1;
  v18 = v50;
  sub_21C79B058(v34, v36, v43);

LABEL_9:
  v44 = v16 & 1;
  sub_21C79B058(v12, v14, v44);

  sub_21C8FECB4(v34, v36, v43, v40);
  sub_21C85CDBC(v34, v36, v43, v40);
  LOBYTE(v51) = v44;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v44;
  *(a2 + 24) = v18;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v43;
  *(a2 + 56) = v40;
  sub_21C85CDBC(v34, v36, v43, v40);
  sub_21C74A72C(v12, v14, v44);
}

uint64_t sub_21C8FB258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C8FB2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C10, &qword_21CBAFAE8);
  sub_21C6EADEC(&qword_27CDF0C18, &qword_27CDF0C10, &qword_21CBAFAE8);
  return sub_21CB84C84();
}

uint64_t sub_21C8FB35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v51 = v9;
  v52 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21C6EDBAC(a1 + 8, &v51, &unk_27CDFA2C0, &unk_21CBA68A0);
  if (!v53)
  {
    sub_21C6EA794(&v51, &unk_27CDFA2C0, &unk_21CBA68A0);
LABEL_8:
    v34 = 0;
    v36 = 0;
    v43 = 0;
    v40 = 0;
    goto LABEL_9;
  }

  v19 = *__swift_project_boxed_opaque_existential_0(&v51, v53);
  v20 = sub_21C995408();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v51);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_8;
  }

  v51 = v20;
  v52 = v22;
  v24 = sub_21CB84054();
  v26 = v25;
  v28 = v27;
  v29 = sub_21CB83FD4();
  v49 = v12;
  v31 = v30;
  v48 = v16;
  v33 = v32;
  v47 = v14;
  sub_21C74A72C(v24, v26, v28 & 1);

  sub_21CB84B34();
  v34 = sub_21CB83FB4();
  v36 = v35;
  v50 = v18;
  v38 = v37;
  v40 = v39;

  v41 = v33 & 1;
  LOBYTE(v16) = v48;
  v42 = v31;
  v12 = v49;
  sub_21C74A72C(v29, v42, v41);
  v14 = v47;

  v43 = v38 & 1;
  v18 = v50;
  sub_21C79B058(v34, v36, v43);

LABEL_9:
  v44 = v16 & 1;
  sub_21C79B058(v12, v14, v44);

  sub_21C8FECB4(v34, v36, v43, v40);
  sub_21C85CDBC(v34, v36, v43, v40);
  LOBYTE(v51) = v44;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v44;
  *(a2 + 24) = v18;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v43;
  *(a2 + 56) = v40;
  sub_21C85CDBC(v34, v36, v43, v40);
  sub_21C74A72C(v12, v14, v44);
}

uint64_t sub_21C8FB69C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C8FB6DC(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_21CB85184();
  v14 = v7;
  v15 = v9;
  v16 = a1;
  v12 = v7;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  sub_21C8FE7C8();
  sub_21CB85194();
}

uint64_t sub_21C8FB88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - v8;
  *&v65[0] = a1;
  *(&v65[0] + 1) = a2;
  sub_21C71F3FC();

  v9 = sub_21CB84054();
  v11 = v10;
  v13 = v12;
  sub_21CB84AD4();
  v14 = sub_21CB83FB4();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C74A72C(v9, v11, v13 & 1);

  LOBYTE(v9) = sub_21CB83CD4();
  sub_21CB81F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v11) = v18 & 1;
  LOBYTE(v65[0]) = v18 & 1;
  LOBYTE(v57) = 0;
  v29 = sub_21CB83D44();
  sub_21CB81F24();
  v64 = 0;
  *&v57 = v14;
  *(&v57 + 1) = v16;
  LOBYTE(v58) = v11;
  *(&v58 + 1) = v20;
  LOBYTE(v59) = v9;
  *(&v59 + 1) = v22;
  *&v60 = v24;
  *(&v60 + 1) = v26;
  *&v61 = v28;
  BYTE8(v61) = 0;
  LOBYTE(v62) = v29;
  *(&v62 + 1) = v30;
  *&v63[0] = v31;
  *(&v63[0] + 1) = v32;
  *&v63[1] = v33;
  BYTE8(v63[1]) = 0;
  sub_21CB83E04();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C40, &qword_21CBAFB08);
  v35 = sub_21C8FEF28();
  v36 = v46;
  sub_21CB840D4();
  v65[4] = v61;
  v65[5] = v62;
  v66[0] = v63[0];
  *(v66 + 9) = *(v63 + 9);
  v65[0] = v57;
  v65[1] = v58;
  v65[2] = v59;
  v65[3] = v60;
  sub_21C6EA794(v65, &qword_27CDF0C40, &qword_21CBAFB08);
  sub_21CB85184();
  v56 = v47;
  v54 = vdupq_n_s64(0x406E400000000000uLL);
  v55 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00);
  *&v57 = v34;
  *(&v57 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_21C8FEFB4();
  v37 = v50;
  v38 = v48;
  sub_21CB84964();
  (*(v49 + 8))(v36, v38);
  v39 = sub_21CB85214();
  v41 = v40;
  v42 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C20, &qword_21CBAFAF0) + 36);
  *&v57 = sub_21CB84A34();
  sub_21CB85184();
  v53 = &v57;
  v51 = 0x4028000000000000;
  v52 = &v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C68, &qword_21CBAFB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C70, &qword_21CBAFB20);
  sub_21C8FF0A4();
  sub_21C8FF18C();
  sub_21CB85194();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C60, &qword_21CBAFB10);
  v44 = (v42 + *(result + 36));
  *v44 = v39;
  v44[1] = v41;
  return result;
}

__n128 sub_21C8FBCE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CB85214();
  sub_21CB82AC4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

__n128 sub_21C8FBDD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_21CB85214();
  if (a3 > a4)
  {
    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();
  }

  sub_21CB82AC4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00) + 36));
  v10[4] = v16;
  v10[5] = v17;
  v10[6] = v18;
  *v10 = v12;
  v10[1] = v13;
  result = v15;
  v10[2] = v14;
  v10[3] = v15;
  return result;
}

uint64_t sub_21C8FBF40()
{
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  sub_21C8FE7C8();
  return sub_21CB85194();
}

uint64_t sub_21C8FC00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BA8, &qword_21CBAFAB0);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B78, &qword_21CBAFA98);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_21C71F3FC();

  v14 = sub_21CB84054();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_21CB83CD4();
  sub_21CB81F24();
  LOBYTE(v43) = v18 & 1;
  v44 = 0;
  *&v45 = v14;
  *(&v45 + 1) = v16;
  LOBYTE(v46) = v18 & 1;
  *(&v46 + 1) = v20;
  LOBYTE(v47) = v21;
  *(&v47 + 1) = v22;
  *&v48[0] = v23;
  *(&v48[0] + 1) = v24;
  *&v48[1] = v25;
  BYTE8(v48[1]) = 0;
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B80, &qword_21CBAFAA0);
  sub_21C74AA20();
  sub_21CB840D4();
  v49[2] = v47;
  v50[0] = v48[0];
  *(v50 + 9) = *(v48 + 9);
  v49[0] = v45;
  v49[1] = v46;
  sub_21C6EA794(v49, &qword_27CDF0B80, &qword_21CBAFAA0);
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v5 + 32))(v13, v8, v38);
  v26 = &v13[*(v10 + 44)];
  v27 = v48[2];
  *(v26 + 4) = v48[1];
  *(v26 + 5) = v27;
  *(v26 + 6) = v48[3];
  v28 = v46;
  *v26 = v45;
  *(v26 + 1) = v28;
  v29 = v48[0];
  *(v26 + 2) = v47;
  *(v26 + 3) = v29;
  v30 = sub_21CB85214();
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  v34 = v39;
  v35 = v39 + *(v33 + 36);
  v43 = 2;
  sub_21CB85184();
  v42 = &v43;
  v40 = 0x4028000000000000;
  v41 = &v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
  sub_21C8FE9B4();
  sub_21C8FEA9C();
  sub_21CB85194();
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B98, &qword_21CBAFAA8) + 36));
  *v36 = v30;
  v36[1] = v32;
  return sub_21C716934(v13, v34, &qword_27CDF0B78, &qword_21CBAFA98);
}

uint64_t sub_21C8FC3CC@<X0>(uint64_t a1@<X8>)
{
  sub_21C71F3FC();

  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB84A34();
  v7 = sub_21CB83FB4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_21C8FC4F8()
{
  sub_21C7226D8();
  if (v0 <= 0x3F)
  {
    sub_21C735A14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C8FC5A4()
{
  sub_21C7226D8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LABiometryType(319);
    if (v1 <= 0x3F)
    {
      sub_21C735A14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI022PMSafariAutoFillStronga13ViewAutomaticgA8Provider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21C8FC67C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21C8FC6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMSafariAutoFillStrongPasswordViewConfiguration.Button(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_19;
  }

  v2 = a2 + 11;
  if (a2 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 11;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 11;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 9)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 9;
}

uint64_t storeEnumTagSinglePayload for PMSafariAutoFillStrongPasswordViewConfiguration.Button(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF5)
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21C8FC898(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21C8FC8B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_21C8FC8EC()
{
  result = qword_27CDF08D0;
  if (!qword_27CDF08D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0768, &qword_21CBAF370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0718, &qword_21CBAF348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0710, &qword_21CBAF340);
    sub_21C8F4DDC();
    sub_21C6EADEC(&qword_27CDF0760, &qword_27CDF0710, &qword_21CBAF340);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08D0);
  }

  return result;
}

unint64_t sub_21C8FCA18()
{
  result = qword_27CDF08D8;
  if (!qword_27CDF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08D8);
  }

  return result;
}

unint64_t sub_21C8FCA70()
{
  result = qword_27CDF08E0;
  if (!qword_27CDF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08E0);
  }

  return result;
}

unint64_t sub_21C8FCB20()
{
  result = qword_27CDF0900;
  if (!qword_27CDF0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0900);
  }

  return result;
}

unint64_t sub_21C8FCB74()
{
  result = qword_27CDF0908;
  if (!qword_27CDF0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0908);
  }

  return result;
}

unint64_t sub_21C8FCBD8()
{
  result = qword_27CDF0920;
  if (!qword_27CDF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0910, &qword_21CBAF790);
    sub_21C8FCC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0920);
  }

  return result;
}

unint64_t sub_21C8FCC64()
{
  result = qword_27CDF0928;
  if (!qword_27CDF0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0930, &qword_21CBAF7A0);
    sub_21C8FCD1C();
    sub_21C6EADEC(&qword_27CDF0960, &qword_27CDF0968, &qword_21CBAF7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0928);
  }

  return result;
}

unint64_t sub_21C8FCD1C()
{
  result = qword_27CDF0938;
  if (!qword_27CDF0938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0940, &qword_21CBAF7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB28, &qword_21CBAF7B0);
    sub_21CB829C4();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0);
    sub_21C8FEB84(&qword_27CDF0948, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0950, &qword_27CDF0958, &qword_21CBAF7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0938);
  }

  return result;
}

unint64_t sub_21C8FCE94()
{
  result = qword_27CDF0970;
  if (!qword_27CDF0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0918, &qword_21CBAF798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0978, &qword_21CBAF7C8);
    sub_21C8FCF5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0970);
  }

  return result;
}

unint64_t sub_21C8FCF5C()
{
  result = qword_27CDF0980;
  if (!qword_27CDF0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0978, &qword_21CBAF7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0988, &qword_21CBAF7D0);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0990, &qword_27CDF0988, &qword_21CBAF7D0);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0950, &qword_27CDF0958, &qword_21CBAF7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0980);
  }

  return result;
}

unint64_t sub_21C8FD0E0()
{
  result = qword_27CDF09A0;
  if (!qword_27CDF09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0998, &qword_21CBAF7D8);
    sub_21C8FD198();
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF09A0);
  }

  return result;
}

unint64_t sub_21C8FD198()
{
  result = qword_27CDF45F0;
  if (!qword_27CDF45F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09A8, &unk_21CBAF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45F0);
  }

  return result;
}

uint64_t sub_21C8FD21C(uint64_t a1)
{
  v2 = sub_21CB82AF4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82D34();
}

uint64_t objectdestroy_45Tm_0()
{
  v1 = (type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82054();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8FD400()
{
  v1 = *(type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)(0);
}

uint64_t sub_21C8FD468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C8FD504()
{
  result = qword_27CDF09E0;
  if (!qword_27CDF09E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C74DDEC();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF09E0);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = (type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82054();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8FD6E0(uint64_t a1)
{
  v3 = *(type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 8);
  return (*v4)(a1);
}

uint64_t sub_21C8FD778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_21CB831A4();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C68, &qword_21CBAFB18) + 36)) = v3;
}

uint64_t sub_21C8FD81C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(sub_21CB82A84() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_21CB831A4();
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = a3;
  a2[1] = a3;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C70, &qword_21CBAFB20) + 36)) = v5;
}

uint64_t sub_21C8FD8DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_21CB831A4();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21C8FD96C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(sub_21CB82A84() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_21CB831A4();
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = a3;
  a2[1] = a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
  *(a2 + *(result + 36)) = v5;
  return result;
}

BOOL sub_21C8FDA18(int a1, int a2)
{
  if (a1 <= 6u)
  {
    if (a1 > 3u)
    {
      switch(a1)
      {
        case 4u:
          return a2 == 4;
        case 5u:
          return a2 == 5;
        case 6u:
          return a2 == 6;
      }

      goto LABEL_34;
    }

    if (a1 == 2)
    {
      return a2 == 2;
    }

    if (a1 != 3)
    {
      goto LABEL_34;
    }

    return a2 == 3;
  }

  if (a1 <= 8u)
  {
    if (a1 == 7)
    {
      return a2 == 7;
    }

    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_34;
  }

  switch(a1)
  {
    case 9u:
      return a2 == 9;
    case 0xAu:
      return a2 == 10;
    case 0xBu:
      return a2 == 11;
  }

LABEL_34:
  if ((a2 - 2) < 0xAu)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t sub_21C8FDB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8FDB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21C8FDC00()
{
  result = qword_27CDF0A00;
  if (!qword_27CDF0A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A08, &qword_21CBAF968);
    sub_21C8FCBD8();
    sub_21C8FCE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A00);
  }

  return result;
}

unint64_t sub_21C8FDC98()
{
  result = qword_27CDF0A10;
  if (!qword_27CDF0A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09C8, &qword_21CBAF870);
    sub_21C8FDD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A10);
  }

  return result;
}

unint64_t sub_21C8FDD24()
{
  result = qword_27CDF0A18;
  if (!qword_27CDF0A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09B8, &qword_21CBAF860);
    sub_21C6EADEC(&qword_27CDF0A20, &qword_27CDF09B0, &qword_21CBAF858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A18);
  }

  return result;
}

unint64_t sub_21C8FDDF8()
{
  result = qword_27CDF0AD8;
  if (!qword_27CDF0AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A88, &qword_21CBAFA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C8FEB84(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0AD8);
  }

  return result;
}

unint64_t sub_21C8FDFB0()
{
  result = qword_27CDF0AF8;
  if (!qword_27CDF0AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AC0, &qword_21CBAFA58);
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0AF8);
  }

  return result;
}

uint64_t sub_21C8FE068(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C8FE0E4()
{
  result = qword_27CDF0B08;
  if (!qword_27CDF0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AB0, &qword_21CBAFA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B08);
  }

  return result;
}

unint64_t sub_21C8FE230()
{
  result = qword_27CDF0B20;
  if (!qword_27CDF0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A78, &qword_21CBAFA10);
    sub_21C8FE2BC();
    sub_21C8FE4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B20);
  }

  return result;
}

unint64_t sub_21C8FE2BC()
{
  result = qword_27CDF0B28;
  if (!qword_27CDF0B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A70, &qword_21CBAFA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B28);
  }

  return result;
}

unint64_t sub_21C8FE4AC()
{
  result = qword_27CDF0B30;
  if (!qword_27CDF0B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A58, &qword_21CBAF9F0);
    sub_21C8FDDF8();
    sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B30);
  }

  return result;
}

unint64_t sub_21C8FE564()
{
  result = qword_27CDF0B40;
  if (!qword_27CDF0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A40, &qword_21CBAF9D8);
    sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B40);
  }

  return result;
}

unint64_t sub_21C8FE730()
{
  result = qword_27CDF0B58;
  if (!qword_27CDF0B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B48, &qword_21CBAFA80);
    sub_21C8FE7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B58);
  }

  return result;
}

unint64_t sub_21C8FE7C8()
{
  result = qword_27CDF0B60;
  if (!qword_27CDF0B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B68, &qword_21CBAFA90);
    sub_21C8FE880();
    sub_21C6EADEC(&qword_27CDF0B90, &qword_27CDF0B98, &qword_21CBAFAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B60);
  }

  return result;
}

unint64_t sub_21C8FE880()
{
  result = qword_27CDF0B70;
  if (!qword_27CDF0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B78, &qword_21CBAFA98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B80, &qword_21CBAFAA0);
    sub_21C74AA20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B70);
  }

  return result;
}

uint64_t sub_21C8FE980()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21C8FBF40();
}

uint64_t sub_21C8FE998@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C8FC3CC(a1);
}

unint64_t sub_21C8FE9B4()
{
  result = qword_27CDF0BC0;
  if (!qword_27CDF0BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
    sub_21C8FEB84(&qword_27CDF0BC8, MEMORY[0x277CE1260]);
    sub_21C6EADEC(&qword_27CDF0BD0, &qword_27CDF0BD8, &qword_21CBAFAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BC0);
  }

  return result;
}

unint64_t sub_21C8FEA9C()
{
  result = qword_27CDF0BE0;
  if (!qword_27CDF0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
    sub_21C8FEB84(&qword_27CDF0BE8, MEMORY[0x277CDFC08]);
    sub_21C6EADEC(&qword_27CDF0BD0, &qword_27CDF0BD8, &qword_21CBAFAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BE0);
  }

  return result;
}

uint64_t sub_21C8FEB84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C8FEBCC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1(1);
}

uint64_t sub_21C8FEC3C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1(0);
}

uint64_t sub_21C8FECB4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C79B058(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_80Tm(uint64_t a1)
{
  if (v1[6])
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 3);
  }

  v3 = v1[9];

  v4 = v1[11];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_21C8FED5C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  return v2(v1);
}

uint64_t sub_21C8FED88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_21C8FB88C(v2, v3, a1);
}

unint64_t sub_21C8FEDB4()
{
  result = qword_27CDF0C28;
  if (!qword_27CDF0C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C20, &qword_21CBAFAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C30, &qword_21CBAFAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C38, &qword_21CBAFB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C8FEF28();
    swift_getOpaqueTypeConformance2();
    sub_21C8FEFB4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0C58, &qword_27CDF0C60, &qword_21CBAFB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C28);
  }

  return result;
}

unint64_t sub_21C8FEF28()
{
  result = qword_27CDF0C48;
  if (!qword_27CDF0C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C74AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C48);
  }

  return result;
}

unint64_t sub_21C8FEFB4()
{
  result = qword_27CDF0C50;
  if (!qword_27CDF0C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C38, &qword_21CBAFB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C8FEF28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C50);
  }

  return result;
}

double sub_21C8FF07C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *&result = sub_21C8FBCE4(a1, a2).n128_u64[0];
  return result;
}

double sub_21C8FF084@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  *&result = sub_21C8FBDD8(a1, a2, *(v2 + 16), *(v2 + 24)).n128_u64[0];
  return result;
}

unint64_t sub_21C8FF0A4()
{
  result = qword_27CDF0C78;
  if (!qword_27CDF0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C68, &qword_21CBAFB18);
    sub_21C8FEB84(&qword_27CDF0BC8, MEMORY[0x277CE1260]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C78);
  }

  return result;
}

unint64_t sub_21C8FF18C()
{
  result = qword_27CDF0C80;
  if (!qword_27CDF0C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C70, &qword_21CBAFB20);
    sub_21C8FEB84(&qword_27CDF0BE8, MEMORY[0x277CDFC08]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C80);
  }

  return result;
}

unint64_t sub_21C8FF274()
{
  result = qword_27CDF0C88;
  if (!qword_27CDF0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C90, &qword_21CBAFB28);
    sub_21C8FDFB0();
    sub_21C8FE564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C88);
  }

  return result;
}

uint64_t sub_21C8FF314(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a2 + 16))
  {
    v9 = *(a2 + 40);
    sub_21CB86484();
    v10 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
    sub_21C909928(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    sub_21CB85494();
    v11 = *(a1 + *(v4 + 20));
    sub_21CB864A4();
    if (v11)
    {
      v12 = v11;
      sub_21CB85DE4();
    }

    v13 = sub_21CB864D4();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    v65 = a2 + 56;
    if ((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v60 = v11;
      v62 = v10;
      v61 = v4;
      v16 = ~v14;
      v17 = *a1;
      v18 = *(a1 + 8);
      if (*a1)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18 == 0xC000000000000000;
      }

      v20 = !v19;
      v71 = v20;
      v72 = *(v5 + 72);
      v21 = v18 >> 62;
      v69 = v17;
      v22 = HIDWORD(v17) - v17;
      v23 = __OFSUB__(HIDWORD(v17), v17);
      v68 = v23;
      v66 = v18;
      v67 = v22;
      v70 = BYTE6(v18);
      v63 = a2;
      v24 = v65;
      v64 = v16;
      while (1)
      {
        sub_21C909970(*(a2 + 48) + v72 * v15, v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v25 = *v8;
        v26 = v8[1];
        v27 = v26 >> 62;
        if (v26 >> 62 == 3)
        {
          break;
        }

        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_37;
          }

          v33 = *(v25 + 16);
          v32 = *(v25 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v34)
          {
            goto LABEL_125;
          }

          if (v21 > 1)
          {
            goto LABEL_38;
          }
        }

        else if (v27)
        {
          LODWORD(v31) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_126;
          }

          v31 = v31;
          if (v21 > 1)
          {
LABEL_38:
            if (v21 != 2)
            {
              if (v31)
              {
                goto LABEL_113;
              }

              goto LABEL_64;
            }

            v37 = *(v69 + 16);
            v36 = *(v69 + 24);
            v34 = __OFSUB__(v36, v37);
            v35 = v36 - v37;
            if (v34)
            {
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
            }

            goto LABEL_40;
          }
        }

        else
        {
          v31 = BYTE6(v26);
          if (v21 > 1)
          {
            goto LABEL_38;
          }
        }

LABEL_34:
        v35 = v70;
        if (v21)
        {
          v35 = v67;
          if (v68)
          {
            goto LABEL_124;
          }
        }

LABEL_40:
        if (v31 != v35)
        {
          goto LABEL_113;
        }

        if (v31 >= 1)
        {
          if (v27 > 1)
          {
            if (v27 != 2)
            {
              *&v74[6] = 0;
              *v74 = 0;
LABEL_63:
              sub_21CA8FA10(v74, v69, v66, &v73);
              if (!v73)
              {
                goto LABEL_113;
              }

              goto LABEL_64;
            }

            v39 = *(v25 + 16);
            v38 = *(v25 + 24);
            v40 = sub_21CB808C4();
            if (v40)
            {
              v41 = sub_21CB808F4();
              if (__OFSUB__(v39, v41))
              {
                goto LABEL_129;
              }

              v40 += v39 - v41;
            }

            if (__OFSUB__(v38, v39))
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (!v27)
            {
              *v74 = *v8;
              *&v74[8] = v26;
              v74[10] = BYTE2(v26);
              v74[11] = BYTE3(v26);
              v74[12] = BYTE4(v26);
              v74[13] = BYTE5(v26);
              goto LABEL_63;
            }

            v42 = v25;
            if (v25 >> 32 < v25)
            {
              goto LABEL_127;
            }

            v40 = sub_21CB808C4();
            if (v40)
            {
              v43 = sub_21CB808F4();
              if (__OFSUB__(v42, v43))
              {
                goto LABEL_130;
              }

              v40 += v42 - v43;
            }
          }

          sub_21CB808E4();
          sub_21CA8FA10(v40, v69, v66, v74);
          a2 = v63;
          v16 = v64;
          v24 = v65;
          if ((v74[0] & 1) == 0)
          {
            goto LABEL_113;
          }
        }

LABEL_64:
        if ((v8[2] != *(a1 + 16) || v8[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v8[4] != *(a1 + 32) || v8[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_113;
        }

        v44 = v8[6];
        v45 = *(a1 + 48);
        if (*(a1 + 56) == 1)
        {
          if (v45 <= 1)
          {
            if (v45)
            {
              if (v44 != 1)
              {
                goto LABEL_113;
              }
            }

            else if (v44)
            {
              goto LABEL_113;
            }
          }

          else if (v45 == 2)
          {
            if (v44 != 2)
            {
              goto LABEL_113;
            }
          }

          else if (v45 == 3)
          {
            if (v44 != 3)
            {
              goto LABEL_113;
            }
          }

          else if (v44 != 4)
          {
            goto LABEL_113;
          }
        }

        else if (v44 != v45)
        {
          goto LABEL_113;
        }

        v46 = v8[8];
        v47 = *(a1 + 64);
        if (*(a1 + 72) == 1)
        {
          if (v47)
          {
            if (v47 == 1)
            {
              if (v46 != 1)
              {
                goto LABEL_113;
              }
            }

            else if (v46 != 2)
            {
              goto LABEL_113;
            }
          }

          else if (v46)
          {
            goto LABEL_113;
          }
        }

        else if (v46 != v47)
        {
          goto LABEL_113;
        }

        v48 = v8[10];
        v49 = *(a1 + 80);
        if (*(a1 + 88) == 1)
        {
          if (v49)
          {
            if (v49 == 1)
            {
              if (v48 != 1)
              {
                goto LABEL_113;
              }
            }

            else if (v48 != 2)
            {
              goto LABEL_113;
            }
          }

          else if (v48)
          {
            goto LABEL_113;
          }
        }

        else if (v48 != v49)
        {
          goto LABEL_113;
        }

        if (v8[12] != *(a1 + 96))
        {
          goto LABEL_113;
        }

        v50 = *(v62 + 44);
        sub_21CB811C4();
        sub_21C909928(&unk_27CDF8A70, MEMORY[0x277D216C8]);
        if ((sub_21CB85574() & 1) == 0)
        {
          v16 = v64;
LABEL_113:
          sub_21C719360(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          goto LABEL_114;
        }

        v51 = *(v8 + *(v61 + 20));
        if (v51)
        {
          v52 = v60;
          if (v60)
          {
            sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
            v53 = v52;
            v54 = v51;
            v55 = sub_21CB85DD4();
            sub_21C719360(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

            v16 = v64;
            v24 = v65;
            if (v55)
            {
              goto LABEL_122;
            }

            goto LABEL_114;
          }

          sub_21C719360(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        }

        else
        {
          v56 = v60;
          v57 = v60;
          sub_21C719360(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          if (!v56)
          {
LABEL_122:
            result = 1;
            goto LABEL_121;
          }
        }

        v16 = v64;
LABEL_114:
        v15 = (v15 + 1) & v16;
        if (((*(v24 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      if (v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v21 < 3;
      if (((v30 | v71) & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_37:
      v31 = 0;
      if (v21 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

LABEL_120:
  result = 0;
LABEL_121:
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C8FFAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  v7 = sub_21CB864D4();
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
    if (v12 || (sub_21CB86344() & 1) != 0)
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

uint64_t sub_21C8FFBD8(void *a1, uint64_t a2)
{
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v4 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = v107 - v5;
  v6 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = (v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v123 = (v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount.UniqueID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v129 = (v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (v107 - v16);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v18 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v20 = v107 - v19;
  v21 = type metadata accessor for PMAccount(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PMAccount.MockData(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v116 = (v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v136 = v107 - v30;
  v31 = type metadata accessor for PMAccount.Storage(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v119 = (v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v118 = (v107 - v35);
  MEMORY[0x28223BE20](v36);
  v38 = (v107 - v37);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v128 = v22;
  v137 = a2;
  v39 = *(a2 + 40);
  sub_21CB86484();
  v40 = a1;
  v41 = *a1;
  v134 = v40[1];
  sub_21CB854C4();
  v130 = *(v21 + 20);
  sub_21C7CECE4();
  v135 = v21;
  v122 = *(v21 + 24);
  sub_21C909970(v40 + v122, v38, type metadata accessor for PMAccount.Storage);
  v121 = v31;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v38;
    v43 = v136;
    sub_21C9099F4(v42, v136, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C719360(v43, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v44 = *v38;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v45 = v135[7];
  v132 = v40;
  v46 = v40 + v45;
  v47 = *(v46 + 1);
  v111 = v46;
  if (v47)
  {
    v48 = *(v46 + 3);
    v49 = v46[16];
    v50 = *v46;
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  v51 = v134;
  v52 = sub_21CB864D4();
  v53 = -1 << *(v137 + 32);
  v54 = v52 & ~v53;
  v136 = v137 + 56;
  if (((*(v137 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
  {
    return 0;
  }

  v133 = ~v53;
  v134 = *(v128 + 72);
  v127 = v17;
  v128 = v12;
  v115 = v41;
  while (1)
  {
    sub_21C909970(*(v137 + 48) + v134 * v54, v25, type metadata accessor for PMAccount);
    v57 = *v25 == v41 && v25[1] == v51;
    if (!v57 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_12;
    }

    v58 = *(v131 + 48);
    sub_21C909970(v25 + v135[5], v20, type metadata accessor for PMAccount.UniqueID);
    sub_21C909970(v132 + v130, &v20[v58], type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v129;
      sub_21C909970(v20, v129, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = v124;
        sub_21C9099F4(&v20[v58], v124, type metadata accessor for PMAccount.SIWAUniqueID);
        v61 = sub_21C7D1550(v59, v60);
        sub_21C719360(v60, type metadata accessor for PMAccount.SIWAUniqueID);
        sub_21C719360(v59, type metadata accessor for PMAccount.SIWAUniqueID);
        if (!v61)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      v55 = type metadata accessor for PMAccount.SIWAUniqueID;
      v56 = v59;
LABEL_11:
      sub_21C719360(v56, v55);
      sub_21C6EA794(v20, &qword_27CDEB3C8, &unk_21CBB0010);
      goto LABEL_12;
    }

    sub_21C909970(v20, v17, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = type metadata accessor for PMAccount.CombinedUniqueID;
      v56 = v17;
      goto LABEL_11;
    }

    v62 = v123;
    sub_21C9099F4(&v20[v58], v123, type metadata accessor for PMAccount.CombinedUniqueID);
    v63 = sub_21C7D1A58(v17, v62);
    sub_21C719360(v62, type metadata accessor for PMAccount.CombinedUniqueID);
    sub_21C719360(v17, type metadata accessor for PMAccount.CombinedUniqueID);
    if (!v63)
    {
LABEL_21:
      sub_21C719360(v20, type metadata accessor for PMAccount.UniqueID);
LABEL_33:
      v17 = v127;
      goto LABEL_12;
    }

LABEL_24:
    sub_21C719360(v20, type metadata accessor for PMAccount.UniqueID);
    v64 = v135;
    v65 = *(v126 + 48);
    v66 = v125;
    sub_21C909970(v25 + v135[6], v125, type metadata accessor for PMAccount.Storage);
    sub_21C909970(v132 + v122, v66 + v65, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = v119;
      sub_21C909970(v66, v119, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = v116;
        sub_21C9099F4(v66 + v65, v116, type metadata accessor for PMAccount.MockData);
        v69 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v67, v68);
        sub_21C719360(v68, type metadata accessor for PMAccount.MockData);
        sub_21C719360(v67, type metadata accessor for PMAccount.MockData);
        if (!v69)
        {
          goto LABEL_27;
        }

        goto LABEL_35;
      }

      sub_21C719360(v67, type metadata accessor for PMAccount.MockData);
      goto LABEL_32;
    }

    v70 = v118;
    sub_21C909970(v66, v118, type metadata accessor for PMAccount.Storage);
    v71 = *v70;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

LABEL_32:
      sub_21C6EA794(v66, &unk_27CDF7680, &qword_21CBB4E30);
      goto LABEL_33;
    }

    v72 = *(v66 + v65);
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v73 = sub_21CB85DD4();

    if ((v73 & 1) == 0)
    {
LABEL_27:
      sub_21C719360(v66, type metadata accessor for PMAccount.Storage);
      v17 = v127;
      v41 = v115;
      goto LABEL_12;
    }

LABEL_35:
    sub_21C719360(v66, type metadata accessor for PMAccount.Storage);
    v74 = (v25 + v64[7]);
    v75 = *v74;
    v76 = v74[1];
    v78 = v74[2];
    v77 = v74[3];
    v120 = v78;
    v117 = v77;
    v80 = *v111;
    v79 = v111[1];
    v81 = v111[2];
    v82 = v111[3];
    v17 = v127;
    v113 = v82;
    v112 = v79;
    if (!v76)
    {
      break;
    }

    v110 = v81;
    v114 = v75;
    if (!v79)
    {
      v97 = v80;
      v98 = v82;
      v96 = v97;
      sub_21C7D33AC(v75, v76, v120, v117);
      v81 = v110;
      sub_21C7D33AC(v96, 0, v110, v98);
      v99 = v117;
      sub_21C7D33AC(v114, v76, v120, v117);

      v95 = v114;
      goto LABEL_46;
    }

    v109 = v80;
    v57 = v75 == v80;
    v41 = v115;
    if (!v57 || v76 != v79) && (v83 = v79, v84 = sub_21CB86344(), v79 = v83, (v84 & 1) == 0) || ((v120 ^ v110))
    {
      v85 = v117;
      v86 = v79;
      sub_21C7D33AC(v114, v76, v120, v117);
      v87 = v86;
      v88 = v113;
      sub_21C7D33AC(v109, v87, v110, v113);
      sub_21C7D33AC(v114, v76, v120, v85);
      sub_21C7D33F0(v109, v112, v110, v88);

      v89 = v114;
      v90 = v76;
      v91 = v120;
      v92 = v85;
LABEL_47:
      sub_21C7D33F0(v89, v90, v91, v92);
      goto LABEL_12;
    }

    v108 = v76;
    v107[1] = sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v100 = v76;
    v101 = v120;
    v102 = v117;
    sub_21C7D33AC(v114, v100, v120, v117);
    v103 = v113;
    sub_21C7D33AC(v109, v112, v110, v113);
    sub_21C7D33AC(v114, v108, v101, v102);
    v104 = v102;
    LOBYTE(v102) = sub_21CB85DD4();
    sub_21C7D33F0(v109, v112, v110, v103);

    v105 = v108;

    sub_21C7D33F0(v114, v105, v120, v104);
    if (v102)
    {
      goto LABEL_53;
    }

LABEL_12:
    sub_21C719360(v25, type metadata accessor for PMAccount);
    v54 = (v54 + 1) & v133;
    if (((*(v136 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
    {
      return 0;
    }
  }

  v93 = v75;
  v94 = v79;
  sub_21C7D33AC(v75, 0, v120, v117);
  if (v94)
  {
    sub_21C7D33AC(v80, v94, v81, v113);
    v95 = v93;
    v96 = v80;
LABEL_46:
    v41 = v115;
    sub_21C7D33F0(v95, v76, v120, v117);
    v89 = v96;
    v90 = v112;
    v91 = v81;
    v92 = v113;
    goto LABEL_47;
  }

  sub_21C7D33AC(v80, 0, v81, v113);
  sub_21C7D33F0(v93, 0, v120, v117);
LABEL_53:
  sub_21C719360(v25, type metadata accessor for PMAccount);
  return 1;
}

uint64_t sub_21C900A10(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB813C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_21C909928(&qword_27CDF0CC8, MEMORY[0x277CBA690]), v9 = sub_21CB85484(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_21C909928(&qword_27CDF0CD0, MEMORY[0x277CBA690]);
      v17 = sub_21CB85574();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21C900C28()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v1 = *(v0 + 96);
}

uint64_t sub_21C900CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  v2 = a1;
  if (v1 == 1)
  {
    v3 = sub_21C713194(a1);
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      swift_getKeyPath();
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
      sub_21CB810D4();

      swift_beginAccess();
      v7 = *(v34 + 64);
      if (*(v7 + 16))
      {
        v8 = *(v34 + 64);

        v9 = sub_21CB10A3C(v6, v5);
        v11 = v10;

        if (v11)
        {
          v12 = *(*(v7 + 56) + 32 * v9 + 16);

          return v12;
        }
      }

      return 2;
    }
  }

  v14 = v2 + 56;
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 56);

  result = swift_beginAccess();
  v32 = 0;
  v18 = 0;
  v19 = (v15 + 63) >> 6;
  v33 = v2;
  while (v17)
  {
LABEL_16:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (*(v2 + 48) + ((v18 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    swift_getKeyPath();
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

    sub_21CB810D4();

    v25 = *(v34 + 64);
    if (*(v25 + 16) && (v26 = *(v34 + 64), , v27 = sub_21CB10A3C(v24, v23), v29 = v28, , (v29 & 1) != 0))
    {
      v30 = *(*(v25 + 56) + 32 * v27 + 16);

      v2 = v33;
      if ((v30 & 1) != 0 && __OFADD__(v32++, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {

      v2 = v33;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v32 == *(v2 + 16);
    }

    v17 = *(v14 + 8 * v20);
    ++v18;
    if (v17)
    {
      v18 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21C900FEC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_21CB85114();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_21CB858B4();
  v2[13] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v2[14] = v7;
  v2[15] = v6;

  return MEMORY[0x2822009F8](sub_21C9010E0, v7, v6);
}

uint64_t sub_21C9010E0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1 + 56;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  v0[16] = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v37 = v1;

  v36 = v2;
  swift_beginAccess();
  v7 = 0;
  v8 = (63 - v4) >> 6;
  v9 = MEMORY[0x277D84F90];
  v35 = v0;
LABEL_5:
  v34 = v9;
  v0[17] = v9;
  v10 = v7;
  while (v6)
  {
    v7 = v10;
LABEL_12:
    v11 = v0[9];
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(v37 + 48) + ((v7 << 10) | (16 * v12)));
    v14 = v13[1];
    v38 = *v13;
    swift_getKeyPath();
    v0[5] = v11;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

    sub_21CB810D4();

    v15 = *(v36 + 64);
    if (*(v15 + 16))
    {
      v16 = *(v36 + 64);

      v17 = sub_21CB10A3C(v38, v14);
      v19 = v18;

      if (v19)
      {
        v20 = *(v15 + 56) + 32 * v17;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);

        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_21CA4F1E0(0, *(v34 + 2) + 1, 1, v34);
        }

        v27 = *(v34 + 2);
        v26 = *(v34 + 3);
        if (v27 >= v26 >> 1)
        {
          v34 = sub_21CA4F1E0((v26 > 1), v27 + 1, 1, v34);
        }

        *(v34 + 2) = v27 + 1;
        v28 = &v34[32 * v27];
        *(v28 + 4) = v22;
        *(v28 + 5) = v21;
        v28[48] = v23;
        *(v28 + 7) = v25;
        v9 = v34;
        v0 = v35;
        goto LABEL_5;
      }
    }

    v10 = v7;
    v0 = v35;
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v7 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v7);
    ++v10;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  v29 = v0[8];
  v30 = v0[9];

  v3 = *(v30 + 120);
  v31 = qword_27CDEA4C0;

  if (v31 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  sub_21CB86544();
  v0[18] = sub_21C7072A8(v3, v0[6]);

  v32 = swift_task_alloc();
  v0[19] = v32;
  *v32 = v0;
  v32[1] = sub_21C90146C;

  return sub_21C833508(v34);
}

uint64_t sub_21C90146C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21C9015CC, v6, v5);
}

uint64_t sub_21C9015CC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[9];

  swift_getKeyPath();
  v0[7] = v3;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  if ((*(v3 + 72) & 1) == 0)
  {
    v4 = v0[9];
    sub_21C901AD4(MEMORY[0x277D84FA0]);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  sub_21C905C8C(0, 0);
  (*(v6 + 104))(v5, *MEMORY[0x277CDF0D8], v8);
  sub_21C90231C(v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C901704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v41 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v42 = a1;

  swift_beginAccess();
  v11 = 0;
  v12 = (v8 + 63) >> 6;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(v42 + 48) + ((v11 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    swift_getKeyPath();
    v43 = v2;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

    sub_21CB810D4();

    v18 = *(v2 + 64);
    if (*(v18 + 16) && (v19 = *(v2 + 64), , v20 = sub_21CB10A3C(v17, v16), v22 = v21, , (v22 & 1) != 0))
    {
      v23 = *(v18 + 56) + 32 * v20;
      v24 = *(v23 + 8);
      v36 = *v23;
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);

      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_21CA4F1E0(0, *(v40 + 2) + 1, 1, v40);
      }

      v29 = *(v40 + 2);
      v28 = *(v40 + 3);
      if (v29 >= v28 >> 1)
      {
        v40 = sub_21CA4F1E0((v28 > 1), v29 + 1, 1, v40);
      }

      v30 = v40;
      *(v40 + 2) = v29 + 1;
      v31 = &v30[32 * v29];
      *(v31 + 4) = v36;
      *(v31 + 5) = v24;
      v31[48] = v25;
      *(v31 + 7) = v27;
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(v7 + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v2 + 120);
  v32 = qword_27CDEA4C0;

  if (v32 == -1)
  {
    goto LABEL_17;
  }

LABEL_19:
  swift_once();
LABEL_17:
  sub_21CB86544();
  sub_21C7072A8(v7, v43);

  sub_21C83532C(v40);

  sub_21C905C8C(0, 0);
  v33 = v37;
  (*(v38 + 104))(v37, *MEMORY[0x277CDF0D8], v39);
  return sub_21C90231C(v33);
}

uint64_t sub_21C901AD4(uint64_t a1)
{
  v3 = *(v1 + 96);

  v5 = sub_21C7A2154(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 96);
    *(v1 + 96) = a1;
    sub_21C906A74(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C901C34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v4 = sub_21CB85114();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21C901D2C()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  return *(v0 + 73);
}

uint64_t sub_21C901DCC()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v1 = *(v0 + 56);
}

uint64_t sub_21C901E70()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_21C901F20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 96);
}

uint64_t sub_21C901FCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C901AD4(v4);
}

uint64_t sub_21C901FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C9020A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C9020E4(v2, v3);
}

uint64_t sub_21C9020E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_21CB86344() & 1) != 0)
  {

    return sub_21C9051D0(a1, a2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C902240()
{
  v1 = *(v0 + 120);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v7);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 152))(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21C90231C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_21C909928(&qword_27CDEE658, MEMORY[0x277CDF0E0]);
  v10 = sub_21CB85574();
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
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }

  return (v11)(a1, v4);
}

uint64_t sub_21C90259C()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_21C902654(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);

  v5 = sub_21C9086A4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 104);
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90279C()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  return *(v0 + 72);
}

uint64_t sub_21C90283C()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v1 = *(v0 + 40);
}

uint64_t sub_21C9028E0()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v1 = *(v0 + 48);
}

void *sub_21C902984()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PMAccount.UniqueID(0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v12);
  v66 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v71 = v1;
  v68 = sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  v69 = v15;
  sub_21CB810D4();

  v16 = *(v1 + 96);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = *(v1 + 96);

  result = swift_beginAccess();
  v22 = 0;
  v23 = (v17 + 63) >> 6;
  v67 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v22;
    if (!v19)
    {
      break;
    }

LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = (*(v16 + 48) + ((v22 << 10) | (16 * v25)));
    v28 = *v26;
    v27 = v26[1];
    swift_getKeyPath();
    v70 = v1;

    sub_21CB810D4();

    v29 = *(v1 + 64);
    if (*(v29 + 16) && (v30 = *(v1 + 64), , v31 = sub_21CB10A3C(v28, v27), v33 = v32, , (v33 & 1) != 0))
    {
      v34 = *(v29 + 56) + 32 * v31;
      v35 = *(v34 + 24);
      v57 = *(v34 + 8);

      v36 = v35;

      v56 = v36;
      v37 = [v36 savedAccount];
      v38 = v65;
      *v65 = v37;
      swift_storeEnumTagMultiPayload();
      v39 = v61;
      v40 = v66;
      v41 = (v66 + *(v61 + 28));
      *v41 = 0u;
      v41[1] = 0u;
      sub_21C909970(v38, v40 + *(v39 + 24), type metadata accessor for PMAccount.Storage);
      v42 = *(v39 + 20);
      v55 = v37;
      sub_21C7C8A3C(v40 + v42);
      v43 = v63;
      sub_21C909970(v40 + v42, v63, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v59;
        sub_21C9099F4(v43, v59, type metadata accessor for PMAccount.SIWAUniqueID);
        v45 = sub_21C7CE99C();
        v47 = v46;

        v48 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v44 = v58;
        sub_21C9099F4(v43, v58, type metadata accessor for PMAccount.CombinedUniqueID);
        v45 = sub_21C7CE408();
        v47 = v49;

        v48 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719360(v44, v48);
      sub_21C719360(v65, type metadata accessor for PMAccount.Storage);
      v50 = v66;
      *v66 = v45;
      v50[1] = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_21CA4F1B8(0, v67[2] + 1, 1, v67);
      }

      v52 = v67[2];
      v51 = v67[3];
      if (v52 >= v51 >> 1)
      {
        v67 = sub_21CA4F1B8(v51 > 1, v52 + 1, 1, v67);
      }

      v53 = v66;
      v54 = v67;
      v67[2] = v52 + 1;
      result = sub_21C9099F4(v53, v54 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52, type metadata accessor for PMAccount);
    }

    else
    {
    }
  }

  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v22 >= v23)
    {

      return v67;
    }

    v19 = *(v16 + 56 + 8 * v22);
    ++v24;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C902F8C()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  result = 0;
  v2 = *(v0 + 56);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 32;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_21C903054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(v2 + 120);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v10 = sub_21C7072A8(v8, v15[0]);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 24);
    ObjectType = swift_getObjectType();
    v15[0] = v4;
    v15[1] = v5;
    v16 = v6;
    v17 = v7;
    (*(v11 + 56))(v15, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = type metadata accessor for PMAccount(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_21C9031B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getKeyPath();
  v20[0] = v3;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16))
  {
    v9 = *(v4 + 64);

    v10 = sub_21CB10A3C(a1, a2);
    if (v11)
    {
      v12 = *(v8 + 56) + 32 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);

      v17 = v16;

      v20[0] = v14;
      v20[1] = v13;
      v21 = v15;
      v22 = v17;
      sub_21C903054(v20, a3);
    }
  }

  v19 = type metadata accessor for PMAccount(0);
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

void *sub_21C903344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v54 = type metadata accessor for PMAccount(0);
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v56 = a1;

  v57 = v1;
  result = swift_beginAccess();
  v17 = 0;
  v18 = (v13 + 63) >> 6;
  v48 = (v7 + 48);
  v45 = v7;
  v52 = (v7 + 56);
  v49 = MEMORY[0x277D84F90];
  v55 = v6;
  while (v15)
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (*(v56 + 48) + ((v17 << 10) | (16 * v20)));
    v23 = *v21;
    v22 = v21[1];
    swift_getKeyPath();
    v24 = v57;
    v58[0] = v57;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

    sub_21CB810D4();

    v25 = *(v24 + 64);
    if (!*(v25 + 16))
    {
      goto LABEL_22;
    }

    v26 = *(v24 + 64);

    v27 = sub_21CB10A3C(v23, v22);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_22;
    }

    v30 = *(v25 + 56) + 32 * v27;
    v31 = *(v30 + 8);
    v51 = *v30;
    v50 = *(v30 + 16);
    v32 = *(v30 + 24);

    v33 = v32;

    v34 = *(v57 + 120);
    v35 = qword_27CDEA4C0;

    if (v35 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v36 = sub_21C7072A8(v34, v58[0]);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 24);
      ObjectType = swift_getObjectType();
      v58[0] = v51;
      v58[1] = v31;
      v59 = v50;
      v60 = v33;
      v39 = v55;
      (*(v37 + 56))(v58, ObjectType, v37);

      swift_unknownObjectRelease();

      if ((*v48)(v39, 1, v54) == 1)
      {
        goto LABEL_23;
      }

      v40 = v46;
      sub_21C9099F4(v39, v46, type metadata accessor for PMAccount);
      sub_21C909970(v40, v47, type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_21CA4F1B8(0, v49[2] + 1, 1, v49);
      }

      v42 = v49[2];
      v41 = v49[3];
      if (v42 >= v41 >> 1)
      {
        v49 = sub_21CA4F1B8(v41 > 1, v42 + 1, 1, v49);
      }

      sub_21C719360(v46, type metadata accessor for PMAccount);
      v43 = v49;
      v49[2] = v42 + 1;
      result = sub_21C9099F4(v47, v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, type metadata accessor for PMAccount);
    }

    else
    {

LABEL_22:

      v39 = v55;
      (*v52)(v55, 1, 1, v54);
LABEL_23:
      result = sub_21C6EA794(v39, &unk_27CDEBE60, &unk_21CB9FF40);
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v49;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9038A8(uint64_t a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 200) = *(a1 + 16);
  *(v2 + 112) = *(a1 + 24);
  *(v2 + 120) = sub_21CB858B4();
  *(v2 + 128) = sub_21CB858A4();
  v4 = sub_21CB85874();
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;

  return MEMORY[0x2822009F8](sub_21C90395C, v4, v3);
}

uint64_t sub_21C90395C()
{
  v1 = *(v0[11] + 120);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = v0[15];
  sub_21CB86544();
  v0[19] = sub_21C7072A8(v1, v0[10]);

  v0[20] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v0[21] = v5;
  v0[22] = v4;

  return MEMORY[0x2822009F8](sub_21C903A64, v5, v4);
}

uint64_t sub_21C903A64()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_21C903B60;
  v8 = *(v0 + 152);

  return sub_21C833508(inited);
}

uint64_t sub_21C903B60()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  swift_setDeallocating();
  sub_21C8F1684(v3 + 32);
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21C903CAC, v5, v4);
}

uint64_t sub_21C903CAC()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x2822009F8](sub_21C903D18, v3, v4);
}

uint64_t sub_21C903D18()
{
  v1 = v0[16];
  v2 = v0[11];

  sub_21C905C8C(0, 0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_21C903D88()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = v2;
  *(v0 + 56) = v2;
  *(v0 + 64) = MEMORY[0x277D84F98];
  *(v0 + 72) = 0;
  *(v0 + 80) = nullsub_1;
  *(v0 + 88) = 0;
  v3 = MEMORY[0x277D84FA0];
  *(v1 + 96) = MEMORY[0x277D84FA0];
  *(v1 + 104) = sub_21CB12414(v2);
  *(v1 + 112) = v3;
  *(v1 + 120) = swift_getKeyPath();
  *(v1 + 128) = swift_getKeyPath();
  *(v1 + 136) = swift_getKeyPath();
  *(v1 + 144) = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  v5 = *MEMORY[0x277CDF0D8];
  v6 = sub_21CB85114();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  sub_21CB81104();
  v7 = *(v1 + 128);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v9 = sub_21C710778(v7, v14);

  v10 = sub_21CB85584();
  v11 = [v9 BOOLForKey:v10 withDefault:0];

  if (v11 == *(v1 + 72))
  {
    *(v1 + 72) = v11;
    sub_21C9059D4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }

  sub_21C904918();
  return v1;
}

uint64_t sub_21C904048(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_21C967A88(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90419C(uint64_t a1)
{
  v3 = *(v1 + 48);

  v5 = sub_21C967A88(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9042F0(uint64_t a1)
{
  v3 = *(v1 + 56);

  v5 = sub_21C967A88(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C904444(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);

  v5 = sub_21C9088B8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90458C(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;

    return sub_21C9059D4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9046C0(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9047D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 112);
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C904918()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v21 = v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0CB8, &unk_21CBAFF58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = *(v0 + 120);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  v18[1] = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v10, v24);

  swift_beginAccess();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDF0CC0, &qword_27CDF0CB8, &unk_21CBAFF58);
  sub_21CB81E04();

  v12 = *(v6 + 8);
  v18[0] = v6 + 8;
  v19 = v12;
  v12(v9, v5);
  swift_getKeyPath();
  v24 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v13 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v13, v24);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB81E04();

  v19(v9, v5);
  swift_getKeyPath();
  v24 = v1;
  sub_21CB810D4();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v14 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v14, v24);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v15 = v21;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v16 = v23;
  sub_21CB81E04();

  (*(v22 + 8))(v15, v16);
  swift_getKeyPath();
  v24 = v1;
  sub_21CB810D4();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v24 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C905038()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  if (*(v0 + 72) == 1)
  {
    swift_getKeyPath();
    sub_21CB810D4();

    v1 = 40;
  }

  else
  {
    swift_getKeyPath();
    sub_21CB810D4();

    v1 = 48;
  }

  v2 = *(v0 + v1);

  swift_getKeyPath();
  sub_21CB810D4();

  v3 = *(v0 + 24);
  v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    return sub_21C9042F0(v2);
  }

  sub_21C906EB4(v2);
}

uint64_t sub_21C9051D0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  if (v4 == *(v2 + 16) && v3 == *(v2 + 24))
  {
  }

  v6 = sub_21CB86344();

  if ((v6 & 1) == 0)
  {
    return sub_21C905038();
  }

  return result;
}

uint64_t sub_21C9052C0()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v1 = *(v0 + 32);
}

uint64_t sub_21C905364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 32);
}

uint64_t sub_21C905410(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 32);

  v4 = sub_21CB85934();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 32);
LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_21C905598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21C905644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 48);
}

uint64_t sub_21C9056F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 56);
}

uint64_t sub_21C90579C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C9042F0(v4);
}

uint64_t sub_21C9057C8()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_21C905880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_21C905940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C904444(v4);
}

uint64_t sub_21C90596C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

uint64_t sub_21C9059D4()
{
  v1 = v0;
  sub_21C905C8C(0, 0);
  swift_getKeyPath();
  v12 = v0;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  if ((*(v0 + 72) & 1) == 0)
  {
    swift_getKeyPath();
    v12 = v0;
    sub_21CB810D4();

    v2 = *(v0 + 96);

    v4 = sub_21C9092FC(v3, v1);

    sub_21C901AD4(v4);
  }

  v5 = *(v1 + 128);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v7 = sub_21C710778(v5, v12);

  swift_getKeyPath();
  sub_21CB810D4();

  v8 = *(v1 + 72);
  v9 = sub_21CB85584();
  [v7 setBool:v8 forKey:v9];

  v10 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v10, v1);

  swift_getKeyPath();
  sub_21CB810D4();

  LOBYTE(v8) = *(v1 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21CB81DC4();
}

uint64_t sub_21C905C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  KeyPath = a2;
  v5 = v2;
  if (a1)
  {
    v6 = a1;
    if (a2)
    {
LABEL_3:

      v7 = KeyPath;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *(v2 + 120);
    v9 = qword_27CDEA4C0;

    if (v9 != -1)
    {
LABEL_47:
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v8, v71);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v6 = v71;
    v3 = v5;
    if (KeyPath)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 15);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v10, v71);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = v71;
  v3 = v5;
LABEL_9:

  sub_21CAE8994(v7);
  sub_21C904048(v6);
  KeyPath = swift_getKeyPath();
  v71 = v3;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v12 = *(v3 + 5);
  v13 = *(v12 + 16);

  v8 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_10:
  v15 = 32 * v8;
  while (v13 != v8)
  {
    if (v8 >= *(v12 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    ++v8;
    v16 = v15 + 32;
    v17 = *(v12 + v15 + 48);
    v15 += 32;
    if ((v17 & 1) == 0)
    {
      v19 = *(v12 + v16);
      v18 = *(v12 + v16 + 8);
      v20 = *(v12 + v16 + 24);

      v21 = v20;
      v71 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B0C2C(0, *(v14 + 16) + 1, 1);
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      KeyPath = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_21C7B0C2C((v22 > 1), v23 + 1, 1);
      }

      *(v14 + 16) = KeyPath;
      v24 = v14 + 32 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      *(v24 + 48) = 0;
      *(v24 + 56) = v21;
      goto LABEL_10;
    }
  }

  sub_21C90419C(v14);
  sub_21C905038();
  swift_getKeyPath();
  sub_21CB810D4();

  v71 = v5;
  swift_getKeyPath();
  sub_21CB810F4();
  v25 = v5;

  swift_beginAccess();
  v26 = *(v5 + 8);
  *(v5 + 8) = MEMORY[0x277D84F98];

  swift_getKeyPath();
  sub_21CB810E4();

  KeyPath = swift_getKeyPath();
  sub_21CB810D4();

  v67 = *(*(v5 + 5) + 16);
  if (v67)
  {

    v8 = 0;
    v28 = (v27 + 56);
    v66 = v27;
    while (1)
    {
      if (v8 >= *(v27 + 16))
      {
        goto LABEL_44;
      }

      v34 = *(v28 - 3);
      v33 = *(v28 - 2);
      v68 = *(v28 - 8);
      v35 = *v28;
      swift_getKeyPath();
      swift_bridgeObjectRetain_n();
      v69 = v35;
      sub_21CB810D4();

      swift_getKeyPath();
      sub_21CB810F4();

      swift_beginAccess();
      v36 = *(v25 + 8);
      KeyPath = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v25 + 8);
      v38 = v25;
      *(v25 + 8) = 0x8000000000000000;
      v40 = sub_21CB10A3C(v34, v33);
      v41 = *(v37 + 16);
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_45;
      }

      v5 = v39;
      if (*(v37 + 24) >= v43)
      {
        if (KeyPath)
        {
          KeyPath = v37;
          if ((v39 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_21C8D52C0();
          KeyPath = v37;
          if ((v5 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_21C8D10DC(v43, KeyPath);
        v44 = sub_21CB10A3C(v34, v33);
        if ((v5 & 1) != (v45 & 1))
        {
          result = sub_21CB863B4();
          __break(1u);
          return result;
        }

        v40 = v44;
        KeyPath = v37;
        if ((v5 & 1) == 0)
        {
LABEL_31:
          *(KeyPath + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v46 = (*(KeyPath + 48) + 16 * v40);
          *v46 = v34;
          v46[1] = v33;
          v47 = *(KeyPath + 56) + 32 * v40;
          *v47 = v34;
          *(v47 + 8) = v33;
          *(v47 + 16) = v68;
          v32 = v69;
          *(v47 + 24) = v69;
          v48 = *(KeyPath + 16);
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_46;
          }

          *(KeyPath + 16) = v50;

          goto LABEL_22;
        }
      }

      v29 = *(KeyPath + 56) + 32 * v40;
      v30 = *(v29 + 8);
      v31 = *(v29 + 24);
      *v29 = v34;
      *(v29 + 8) = v33;
      *(v29 + 16) = v68;
      v32 = v69;
      *(v29 + 24) = v69;

LABEL_22:
      ++v8;
      v25 = v38;
      *(v38 + 8) = KeyPath;
      swift_endAccess();
      KeyPath = swift_getKeyPath();
      sub_21CB810E4();

      v28 += 4;
      v27 = v66;
      if (v67 == v8)
      {

        break;
      }
    }
  }

  swift_getKeyPath();
  sub_21CB810D4();

  v51 = v25;
  v52 = *(v25 + 7);
  v53 = *(v52 + 16);
  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    v70 = MEMORY[0x277D84F90];

    sub_21C7B0C0C(0, v53, 0);
    v54 = v70;
    v55 = (v52 + 40);
    do
    {
      v57 = *(v55 - 1);
      v56 = *v55;
      v58 = *(v70 + 16);
      v59 = *(v70 + 24);

      if (v58 >= v59 >> 1)
      {
        sub_21C7B0C0C((v59 > 1), v58 + 1, 1);
      }

      *(v70 + 16) = v58 + 1;
      v60 = v70 + 16 * v58;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
      v55 += 4;
      --v53;
    }

    while (v53);
  }

  v61 = sub_21CB009AC(v54);

  swift_getKeyPath();
  sub_21CB810D4();

  v62 = *(v51 + 12);

  v64 = sub_21C908D28(v63, v61);

  return sub_21C901AD4(v64);
}