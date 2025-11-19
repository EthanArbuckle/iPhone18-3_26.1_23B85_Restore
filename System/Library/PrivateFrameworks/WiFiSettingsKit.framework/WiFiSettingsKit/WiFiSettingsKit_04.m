uint64_t sub_2740F73B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = sub_2741C6E4C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = v8;
  v66 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v61 = *(v65 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v65);
  v56 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = v55 - v18;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v77 = xmmword_280946088;
  sub_2740A6A74();

  v58 = sub_2741C76AC();
  v57 = v19;
  v59 = v20;
  v60 = v21;
  v55[2] = sub_2741C714C();
  v55[1] = v22;
  v55[0] = v23;
  v24 = (a1 + *(v6 + 52));
  v26 = *v24;
  v25 = v24[1];
  *&v80 = v26;
  *(&v80 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v27 = v77;
  v28 = v78;
  swift_getKeyPath();
  v80 = v27;
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v29 = v56;
  sub_2741C6CFC();
  v30 = a1;
  v31 = a1 + *(v6 + 60);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  LOBYTE(v77) = v32;
  *(&v77 + 1) = v33;
  LOBYTE(v78) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v77 = v80;
  LOBYTE(v78) = v81;
  LOBYTE(v80) = 2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v35 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0);
  v36 = sub_2740A58C0();
  v38 = v64;
  v37 = v65;
  sub_2741C789C();

  (*(v61 + 8))(v29, v37);
  v39 = v66;
  sub_2740FB2AC(v30, v66);
  v40 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v41 = swift_allocObject();
  sub_2740FBC04(v39, v41 + v40, type metadata accessor for EnterpriseURLCredentialsPromptView);
  v42 = v72;
  sub_2741C6E3C();
  *&v77 = v37;
  *(&v77 + 1) = v34;
  v78 = v35;
  v79 = v36;
  swift_getOpaqueTypeConformance2();
  v43 = v76;
  v44 = v68;
  sub_2741C78EC();

  (*(v73 + 8))(v42, v74);
  (*(v67 + 8))(v38, v44);
  v46 = v69;
  v45 = v70;
  v47 = *(v70 + 16);
  v48 = v71;
  v47(v69, v43, v71);
  v49 = v75;
  v50 = v58;
  v51 = v57;
  *v75 = v58;
  v49[1] = v51;
  LOBYTE(v44) = v59 & 1;
  *(v49 + 16) = v59 & 1;
  v49[3] = v60;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939840, &unk_2741D5C40);
  v47(v49 + *(v52 + 48), v46, v48);
  sub_27409861C(v50, v51, v44);
  v53 = *(v45 + 8);

  v53(v76, v48);
  v53(v46, v48);
  sub_2740A6AC8(v50, v51, v44);
}

uint64_t sub_2740F7B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_2741C80DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2740FB2AC(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2741C80AC();
  v13 = sub_2741C809C();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_2740FBC04(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2740CE980(0, 0, v11, a3, v15);
}

uint64_t sub_2740F7D10(uint64_t a1)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  v2 = (a1 + *(type metadata accessor for EnterpriseURLCredentialsPromptView() + 52));
  v4 = *v2;
  v5 = v2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397B8, &unk_2741D0550);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_2809397C8, &qword_2809397B8, &unk_2741D0550);
  sub_2740A6A74();
  return sub_2741C7ABC();
}

uint64_t sub_2740F7EE8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D0, &unk_2741D5B70);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (qword_280937480 != -1)
  {
    swift_once();
  }

  v26 = qword_280946038;
  v27 = unk_280946040;
  sub_2740A6A74();

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 16) = 257;
  if (qword_280937488 != -1)
  {
    swift_once();
  }

  v26 = qword_280946048;
  v27 = unk_280946050;

  *v13 = sub_2741C76AC();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 16) = 258;
  v22 = v3[2];
  v22(v10, v15, v2);
  v22(v7, v13, v2);
  v22(a1, v10, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D8, &unk_2741D0560);
  v22(&a1[*(v23 + 48)], v7, v2);
  v24 = v3[1];
  v24(v13, v2);
  v24(v15, v2);
  v24(v7, v2);
  return (v24)(v10, v2);
}

uint64_t sub_2740F81D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939760, &qword_2741D5AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = sub_2741C730C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_2741C72DC();
  v21[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  sub_2741C72EC();
  v21[4] = a1;
  sub_2741C6D2C();
  v17 = *(v3 + 48);
  v18 = v10[2];
  v18(v6, v16, v9);
  v18(&v6[v17], v14, v9);
  sub_2741C71EC();
  v19 = v10[1];
  v19(v14, v9);
  return (v19)(v16, v9);
}

uint64_t sub_2740F8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2740FB2AC(a1, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2740FBC04(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2741C7A7C();
  v10 = a1 + *(v5 + 64);
  v11 = *v10;
  v12 = *(v10 + 8);
  v17[16] = v11;
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(v6) = v17[15];
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_2740A7438;
  v16[2] = v14;
  return result;
}

uint64_t sub_2740F8650()
{
  v0 = sub_2741C6DBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD00000000000001ELL, 0x80000002741DB730);
  sub_2740F40BC(v4);
  sub_2741C6DAC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2740F8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  sub_2740FB2AC(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2740FBC04(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2741C7A7C();
  v14 = (a1 + *(v4 + 52));
  v16 = *v14;
  v15 = v14[1];
  v26 = v16;
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  LOBYTE(v6) = sub_274109704();

  if (v6)
  {
    v17 = a1 + *(v4 + 56);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v26) = v18;
    v27 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A3C();
    v20 = v25[8];
  }

  else
  {
    v20 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v8 + 32))(a2, v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v24 = (a2 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_2740A6E2C;
  v24[2] = v22;
  return result;
}

uint64_t sub_2740F8A1C(uint64_t a1)
{
  v2 = sub_2741C730C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939720, &qword_2741D03E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_2741C72FC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939740, &unk_2741D5A70);
  sub_2740A6D24(&qword_280939748, &qword_280939740, &unk_2741D5A70);
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

void *sub_2740F8C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C71AC();
  v10 = 1;
  sub_2740F8CE4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_2740A6D94(__dst, &v7, &qword_280939750, &qword_2741D0460);
  sub_27409D420(v12, &qword_280939750, &qword_2741D0460);
  memcpy(&v9[7], __dst, 0x120uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x127uLL);
}

uint64_t sub_2740F8CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_2741C713C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2741C712C();
  sub_2741C711C();
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v5[18];
  v7 = v5[19];

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  v8 = sub_2741C768C();
  v10 = v9;
  v12 = v11;
  sub_2741C758C();
  v46 = sub_2741C767C();
  v47 = v13;
  v54 = v14;
  v16 = v15;

  sub_2740A6AC8(v8, v10, v12 & 1);

  v53 = sub_2741C752C();
  sub_2741C6C6C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v49 = v16 & 1;
  LOBYTE(v81[0]) = v16 & 1;
  LOBYTE(v72) = 0;
  v52 = sub_2741C753C();
  sub_2741C6C6C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v92) = 0;
  KeyPath = swift_getKeyPath();
  v51 = sub_2741C737C();
  if (qword_280937660 != -1)
  {
    swift_once();
  }

  v92 = qword_2809463F8;
  v93 = unk_280946400;
  sub_2740A6A74();

  v33 = sub_2741C76AC();
  v35 = v34;
  v37 = v36;
  sub_2741C75EC();
  v38 = sub_2741C767C();
  v40 = v39;
  v42 = v41;
  v45 = v43;

  sub_2740A6AC8(v33, v35, v37 & 1);

  sub_2741C7C1C();
  sub_2741C6F1C();
  v119 = v42 & 1;
  *&v63 = v46;
  *(&v63 + 1) = v54;
  LOBYTE(v64) = v49;
  *(&v64 + 1) = *v121;
  DWORD1(v64) = *&v121[3];
  *(&v64 + 1) = v47;
  LOBYTE(v65) = v53;
  *(&v65 + 1) = *v120;
  DWORD1(v65) = *&v120[3];
  *(&v65 + 1) = v18;
  *&v66 = v20;
  *(&v66 + 1) = v22;
  *&v67 = v24;
  BYTE8(v67) = 0;
  HIDWORD(v67) = *&v123[3];
  *(&v67 + 9) = *v123;
  LOBYTE(v68) = v52;
  DWORD1(v68) = *&v122[3];
  *(&v68 + 1) = *v122;
  *(&v68 + 1) = v26;
  *&v69 = v28;
  *(&v69 + 1) = v30;
  *&v70 = v32;
  BYTE8(v70) = 0;
  HIDWORD(v70) = *&v124[3];
  *(&v70 + 9) = *v124;
  *&v71 = KeyPath;
  BYTE8(v71) = 1;
  *(&v71 + 9) = v125;
  BYTE11(v71) = v126;
  HIDWORD(v71) = v51;
  v55[2] = v65;
  v55[3] = v66;
  v55[0] = v63;
  v55[1] = v64;
  v55[6] = v69;
  v55[7] = v70;
  v55[4] = v67;
  v55[5] = v68;
  *&v72 = v38;
  *(&v72 + 1) = v40;
  LOBYTE(v73) = v42 & 1;
  *(&v73 + 1) = *v118;
  DWORD1(v73) = *&v118[3];
  *(&v73 + 1) = v45;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  v74 = v56;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v55[14] = v59;
  v55[15] = v60;
  v55[16] = v61;
  v55[17] = v62;
  v55[8] = v71;
  v55[9] = v72;
  v55[12] = v57;
  v55[13] = v58;
  v55[10] = v73;
  v55[11] = v56;
  memcpy(a2, v55, 0x120uLL);
  v81[0] = v38;
  v81[1] = v40;
  v82 = v42 & 1;
  *v83 = *v118;
  *&v83[3] = *&v118[3];
  v84 = v45;
  v89 = v60;
  v90 = v61;
  v91 = v62;
  v85 = v56;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  sub_2740A6D94(&v63, &v92, &qword_280939758, &unk_2741D5AB0);
  sub_2740A6D94(&v72, &v92, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v81, &qword_2809381B0, &qword_2741CB9D0);
  v92 = v46;
  v93 = v54;
  v94 = v49;
  *v95 = *v121;
  *&v95[3] = *&v121[3];
  v96 = v47;
  v97 = v53;
  *v98 = *v120;
  *&v98[3] = *&v120[3];
  v99 = v18;
  v100 = v20;
  v101 = v22;
  v102 = v24;
  v103 = 0;
  *&v104[3] = *&v123[3];
  *v104 = *v123;
  v105 = v52;
  *&v106[3] = *&v122[3];
  *v106 = *v122;
  v107 = v26;
  v108 = v28;
  v109 = v30;
  v110 = v32;
  v111 = 0;
  *v112 = *v124;
  *&v112[3] = *&v124[3];
  v113 = KeyPath;
  v114 = 1;
  v115 = v125;
  v116 = v126;
  v117 = v51;
  return sub_27409D420(&v92, &qword_280939758, &unk_2741D5AB0);
}

uint64_t sub_2740F92F0(void *a1, uint64_t a2)
{
  v3 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160);
  v4 = (a2 + *(type metadata accessor for EnterpriseURLCredentialsPromptView() + 60));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v4) = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740F9394(uint64_t a1)
{
  v2 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v63)
  {
    return sub_27409D420(&v61, &qword_280937E78, &qword_2741D81E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = v54;
    v11 = v55;
    v13 = v56;
    v50 = v3;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v14 = v60;
    if (v60 == 3)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_2741C856C();
      v61 = v54;
      v62 = v55;
      MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
      MEMORY[0x2743E5FB0](v11, v13);
      MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
      v47 = v12;
      v48 = v11;
      v54 = v12;
      v55 = v11;
      v49 = v13;
      v16 = v51;
      v15 = v52;
      v56 = v13;
      v57 = v51;
      v17 = v53;
      v58 = v52;
      v59 = v53;
      v60 = 3;
      sub_2741C862C();
      sub_2740CB460(v61, v62);

      v18 = (a1 + v2[13]);
      v20 = *v18;
      v19 = v18[1];
      v54 = v20;
      v55 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
      sub_2741C7A3C();
      v21 = v61;
      if (*(v61 + 72) == 1)
      {
        *(v61 + 72) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v46 = &v46;
        MEMORY[0x28223BE20](KeyPath);
        *(&v46 - 2) = v21;
        *(&v46 - 8) = 1;
        v54 = v21;
        sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials);
        sub_2741C69FC();

        v17 = v53;
      }

      v41 = sub_2741C80DC();
      (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
      sub_2740FB2AC(a1, &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2741C80AC();
      v42 = sub_2741C809C();
      v43 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v44 = swift_allocObject();
      v45 = MEMORY[0x277D85700];
      *(v44 + 16) = v42;
      *(v44 + 24) = v45;
      sub_2740FBC04(&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for EnterpriseURLCredentialsPromptView);
      sub_2740CE980(0, 0, v8, &unk_2741D0448, v44);
      v33 = v47;
      v34 = v48;
      v35 = v49;
      v36 = v16;
      v37 = v15;
      v38 = v17;
      v39 = 3;
    }

    else
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_2741C856C();
      v61 = v54;
      v62 = v55;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      v22 = v12;
      v54 = v12;
      v55 = v11;
      v23 = v13;
      v24 = v51;
      v25 = v52;
      v56 = v13;
      v57 = v51;
      v26 = v53;
      v58 = v52;
      v59 = v53;
      v60 = v14;
      sub_2741C862C();
      sub_2740CB460(v61, v62);

      v27 = a1 + v2[9];
      v28 = *v27;
      v29 = *(v27 + 8);
      LOBYTE(v54) = v28;
      v55 = v29;
      LOBYTE(v61) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      v30 = a1 + v2[15];
      v31 = *v30;
      v32 = *(v30 + 8);
      LOBYTE(v30) = *(v30 + 16);
      LOBYTE(v54) = v31;
      v55 = v32;
      LOBYTE(v56) = v30;
      LOBYTE(v61) = 2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
      sub_2741C6C7C();
      v33 = v22;
      v34 = v11;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      v38 = v26;
      v39 = v14;
    }

    sub_2740A66EC(v33, v34, v35, v36, v37, v38, v39);
  }

  return result;
}

uint64_t sub_2740F997C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32[-1] - v10;
  if (a1)
  {
    v12 = v4[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (v33[1])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (v37[0] != 1)
        {
          sub_2740A6040(v37, v38);
          sub_2740A609C(v38, v37);

          v34 = *&v37[2];
          v35 = *&v37[4];
          v36 = v37[6];
          if (v37[5])
          {
            sub_2740A609C(v38, v32);
            v13 = v32[0];
            sub_27409D420(v33, &qword_280937FB8, &unk_2741D0410);
            v14 = *(&v35 + 1);
            v15 = v36;
            __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
            (*(v15 + 56))(v13, v14, v15);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          v16 = sub_2741C80DC();
          (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
          sub_2740FB2AC(a2, &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_2741C80AC();
          v17 = sub_2741C809C();
          v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v19 = swift_allocObject();
          v20 = MEMORY[0x277D85700];
          *(v19 + 16) = v17;
          *(v19 + 24) = v20;
          sub_2740FBC04(v7, v19 + v18, type metadata accessor for EnterpriseURLCredentialsPromptView);
          sub_2740CE980(0, 0, v11, &unk_2741D0408, v19);

          sub_2740A61EC(v38);
          v21 = &qword_280937FB8;
          v22 = &unk_2741D0410;
          v23 = &v34;
          goto LABEL_11;
        }

LABEL_10:
        v21 = &qword_280937FA8;
        v22 = &unk_2741D03F0;
        v23 = v37;
LABEL_11:
        sub_27409D420(v23, v21, v22);
        goto LABEL_12;
      }
    }

    else
    {
      sub_27409D420(v32, &qword_280937E78, &qword_2741D81E0);
    }

    v37[0] = 1;
    memset(&v37[1], 0, 48);
    goto LABEL_10;
  }

LABEL_12:
  v24 = a2 + v4[10];
  v25 = *v24;
  v26 = *(v24 + 8);
  v38[0] = v25;
  v39 = v26;
  LOBYTE(v37[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v27 = a2 + v4[15];
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v27) = *(v27 + 16);
  v38[0] = v28;
  v39 = v29;
  v40 = v27;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740F9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v5 = sub_2741C6DBC();
  v4[106] = v5;
  v6 = *(v5 - 8);
  v4[107] = v6;
  v7 = *(v6 + 64) + 15;
  v4[108] = swift_task_alloc();
  v4[109] = sub_2741C80AC();
  v4[110] = sub_2741C809C();
  v9 = sub_2741C805C();
  v4[111] = v9;
  v4[112] = v8;

  return MEMORY[0x2822009F8](sub_2740F9E8C, v9, v8);
}

uint64_t sub_2740F9E8C()
{
  v1 = *(v0 + 840);
  v2 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  *(v0 + 904) = v2;
  v3 = (v1 + v2[15]);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v3) = v3[16];
  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 712) = v3;
  *(v0 + 116) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C7C();
  v6 = (v1 + v2[14]);
  v7 = *v6;
  *(v0 + 118) = *v6;
  v8 = *(v6 + 1);
  *(v0 + 115) = 1;
  *(v0 + 912) = v8;
  *(v0 + 736) = v7;
  *(v0 + 744) = v8;
  *(v0 + 920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  sub_2741C856C();

  sub_2740A6D94(v1 + 40, v0 + 16, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  v9 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB218(0xD000000000000028, 0x80000002741DB670, 0xD000000000000010, 0x80000002741D8D60);

  sub_2740A6D94(v1 + 40, v0 + 224, &qword_280938340, &qword_2741D1660);
  if (*(v0 + 232))
  {
    v10 = *(v0 + 840);
    *(v0 + 168) = *(v0 + 272);
    *(v0 + 184) = *(v0 + 288);
    *(v0 + 200) = *(v0 + 304);
    *(v0 + 216) = *(v0 + 320);
    *(v0 + 120) = *(v0 + 224);
    *(v0 + 136) = *(v0 + 240);
    *(v0 + 152) = *(v0 + 256);
    *(v0 + 928) = sub_2740F42C4();
    v11 = (v10 + v2[13]);
    v13 = *v11;
    v12 = v11[1];
    *(v0 + 752) = v13;
    *(v0 + 760) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
    sub_2741C7A3C();
    *(v0 + 600) = type metadata accessor for AssociationCredentials();
    *(v0 + 608) = &off_288329FD0;
    v14 = swift_task_alloc();
    *(v0 + 936) = v14;
    *v14 = v0;
    v14[1] = sub_2740FA200;

    return sub_274139F44(v0 + 120, 0, 0, 1, v0 + 576);
  }

  else
  {
    sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
    return sub_2741C863C();
  }
}

uint64_t sub_2740FA200()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *(*v1 + 928);
  v9 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v5 = *(v2 + 896);
    v6 = *(v2 + 888);
    v7 = sub_2740FA500;
  }

  else
  {
    sub_27409D420(v2 + 576, &qword_280937FB8, &unk_2741D0410);
    v7 = sub_2740FA35C;
    v6 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2740FA35C()
{
  v1 = *(v0 + 872);
  *(v0 + 952) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740FA3E8, v3, v2);
}

uint64_t sub_2740FA3E8()
{
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];

  sub_2740F40BC(v2);
  sub_2741C6DAC();
  (*(v3 + 8))(v2, v4);
  v6 = v0[112];
  v7 = v0[111];

  return MEMORY[0x2822009F8](sub_2740FA490, v7, v6);
}

uint64_t sub_2740FA490()
{
  v1 = v0[110];

  sub_2740ACB2C((v0 + 15));
  v2 = v0[108];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2740FA500()
{
  v1 = v0;
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 118);
  v6 = *(v0 + 880);

  sub_2740ACB2C(v0 + 120);
  sub_27409D420(v0 + 576, &qword_280937FB8, &unk_2741D0410);
  sub_2741C856C();
  *(v0 + 768) = 0;
  *(v0 + 776) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741D8D40);
  *(v0 + 832) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  sub_2740CB218(*(v1 + 768), *(v1 + 776), 0xD000000000000010, 0x80000002741D8D60);

  *(v0 + 113) = 0;
  *(v0 + 784) = v5;
  *(v0 + 792) = v4;
  sub_2741C7A4C();
  *(v0 + 816) = v2;
  v7 = v2;
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 920);
    v38 = *(v0 + 944);
    v8 = *(v0 + 904);
    v9 = *(v0 + 440);
    v10 = *(v1 + 448);
    v35 = *(v1 + 440);
    v36 = *(v1 + 840);
    v11 = *(v1 + 456);
    v12 = *(v1 + 464);
    v13 = *(v1 + 472);
    v14 = *(v1 + 480);
    *(v1 + 640) = &type metadata for WiFiAssociationError;
    v15 = *(v1 + 488);
    *(v1 + 648) = sub_2740A6654();
    v16 = swift_allocObject();
    *(v1 + 616) = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v10;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13;
    *(v16 + 56) = v14;
    *(v16 + 64) = v15;
    v17 = *(v8 + 44);
    sub_2740A6D94(v1 + 616, v1 + 536, &qword_280937E78, &qword_2741D81E0);
    sub_2740A6800(v9, v10, v11, v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v1 + 616, &qword_280937E78, &qword_2741D81E0);
    v18 = (v36 + *(v8 + 36));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v1 + 117) = 1;
    *(v1 + 720) = v19;
    *(v1 + 728) = v20;

    sub_2741C7A4C();
    sub_2740A66EC(v35, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v21 = *(v0 + 944);
    *(v0 + 824) = v21;
    v22 = v21;
    v23 = swift_dynamicCast();
    v24 = *(v0 + 944);
    if (v23)
    {
      v25 = *(v0 + 920);
      v26 = *(v0 + 904);
      v27 = *(v0 + 840);
      sub_2740A6040(v0 + 384, v0 + 328);
      *(v0 + 520) = &type metadata for WiFiEnterpriseAssociationError;
      *(v0 + 528) = sub_2740A65B8();
      v28 = swift_allocObject();
      *(v0 + 496) = v28;
      sub_2740A609C(v0 + 328, v28 + 16);
      v29 = *(v26 + 44);
      sub_2740A6D94(v0 + 496, v0 + 656, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      sub_2741C7A4C();
      sub_27409D420(v0 + 496, &qword_280937E78, &qword_2741D81E0);
      v30 = v27 + *(v26 + 40);
      v31 = *(v30 + 8);
      *(v0 + 800) = *v30;
      *(v0 + 808) = v31;
      *(v0 + 114) = 1;

      sub_2741C7A4C();

      sub_2740A61EC(v0 + 328);
    }

    else
    {

      *(v0 + 384) = 1;
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      sub_27409D420(v0 + 384, &qword_280937FA8, &unk_2741D03F0);
    }
  }

  v32 = *(v1 + 864);

  v33 = *(v1 + 8);

  return v33();
}

uint64_t sub_2740FA984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);
  return result;
}

uint64_t type metadata accessor for EnterpriseURLCredentialsPromptView()
{
  result = qword_280939680;
  if (!qword_280939680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740FAAAC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v4 = v0[17];

  v5 = v0[19];

  v6 = v0[21];

  v7 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_2740FAB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939678, &qword_2741D02B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FAC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2740FAD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2740FAE2C()
{
  sub_2740FB0B8(319, &qword_280939690, &qword_280939698, &unk_2741D0328, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2740FB11C(319, &qword_2809396A0, &type metadata for ScannedNetwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2740FB16C(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2740FB16C(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2740FB11C(319, &qword_280937EC8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2740FB0B8(319, &qword_280937ED0, &qword_280937E78, &qword_2741D81E0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2740FB11C(319, &qword_280939450, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_2740FB16C(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_2740A5850();
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
    }
  }
}

void sub_2740FB0B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2740FB11C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2740FB16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2740FB1EC()
{
  result = qword_2809396C8;
  if (!qword_2809396C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B0, &qword_2741D0390);
    sub_2740A6D24(&qword_2809396D0, &qword_2809396D8, &qword_2741D03B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809396C8);
  }

  return result;
}

uint64_t sub_2740FB2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FB310()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = (v0 + v3);
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (v5[6])
  {

    v6 = v5[8];

    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 12);
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2741C6DBC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[8]);

  v11 = *(v5 + v1[9] + 8);

  v12 = *(v5 + v1[10] + 8);

  v13 = v5 + v1[11];
  if (*(v13 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  v14 = *(v13 + 5);

  v15 = v5 + v1[12];
  v16 = *(v15 + 1);

  v17 = *(v15 + 2);

  v18 = (v5 + v1[13]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v5 + v1[14] + 8);

  v22 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740FB500()
{
  v1 = *(type metadata accessor for EnterpriseURLCredentialsPromptView() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2740F92F0((v0 + 16), v2);
}

uint64_t sub_2740FB580(char a1)
{
  v3 = *(type metadata accessor for EnterpriseURLCredentialsPromptView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2740F997C(a1, v4);
}

uint64_t sub_2740FB5F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B8, &qword_2741D0398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2740FB6E0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B8, &qword_2741D0398) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A885C(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2740FB7A4(uint64_t a1)
{
  v4 = *(type metadata accessor for EnterpriseURLCredentialsPromptView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_2740F9D90(a1, v6, v7, v1 + v5);
}

uint64_t sub_2740FB894()
{
  v1 = v0[2];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2740FB8DC()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2740FB9B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EnterpriseURLCredentialsPromptView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2740FBA2C()
{
  result = qword_280939798;
  if (!qword_280939798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939788, &unk_2741D0500);
    sub_2740C51B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939798);
  }

  return result;
}

unint64_t sub_2740FBAC0()
{
  result = qword_2809397C0;
  if (!qword_2809397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809397C0);
  }

  return result;
}

uint64_t sub_2740FBB24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2740FBB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FBC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2740FBC6C(uint64_t a1)
{
  v2 = type metadata accessor for EnterpriseIdentity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (v5[6])
  {

    v6 = v5[8];

    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 12);
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2741C6DBC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[8]);

  v11 = *(v5 + v1[9] + 8);

  v12 = *(v5 + v1[10] + 8);

  v13 = v5 + v1[11];
  if (*(v13 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  v14 = *(v13 + 5);

  v15 = v5 + v1[12];
  v16 = *(v15 + 1);

  v17 = *(v15 + 2);

  v18 = (v5 + v1[13]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v5 + v1[14] + 8);

  v22 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (v6[6])
  {

    v7 = v6[8];

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 12);
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2741C6DBC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[8]);

  v12 = *(v6 + v1[9] + 8);

  v13 = *(v6 + v1[10] + 8);

  v14 = v6 + v1[11];
  if (*(v14 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v1[11]));
  }

  v15 = *(v14 + 5);

  v16 = v6 + v1[12];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = (v6 + v1[13]);
  v20 = *v19;

  v21 = v19[1];

  v22 = *(v6 + v1[14] + 8);

  v23 = *(v6 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740FC13C(uint64_t a1)
{
  v4 = *(type metadata accessor for EnterpriseURLCredentialsPromptView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740F9D90(a1, v6, v7, v1 + v5);
}

unint64_t sub_2740FC230()
{
  result = qword_280939848;
  if (!qword_280939848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939850, &qword_2741D0678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B8, &qword_2741D0398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    swift_getOpaqueTypeConformance2();
    sub_2740A5F60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939848);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2740FC414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_2740FC45C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740FC4E8()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2740FC628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939860, &qword_2741D0788);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939868, &qword_2741D0790);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  sub_2740FD264(a1, &v43);
  v17 = swift_allocObject();
  v18 = v48;
  v19 = v50;
  *(v17 + 112) = v49;
  *(v17 + 128) = v19;
  *(v17 + 144) = v51;
  v20 = v46;
  *(v17 + 48) = v45;
  *(v17 + 64) = v20;
  *(v17 + 80) = v47;
  *(v17 + 96) = v18;
  v21 = v44;
  *(v17 + 16) = v43;
  *(v17 + 32) = v21;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939870, &qword_2741D0798);
  sub_2740A6D24(&qword_280939878, &qword_280939870, &qword_2741D0798);
  sub_2741C7A7C();
  *&v16[*(v10 + 44)] = sub_2741C736C();
  v35 = v16;
  *(&v44 + 1) = &type metadata for ScannedNetwork;
  *&v45 = sub_2740F2248();
  *&v43 = swift_allocObject();
  sub_2740ACAC8(a1 + 16, v43 + 16);
  type metadata accessor for AssociationModel();
  sub_2740FD34C(&qword_280937E70, type metadata accessor for AssociationModel);
  v22 = sub_2741C6CEC();
  v24 = v23;
  type metadata accessor for NetworksListModel();
  sub_2740FD34C(&qword_280939880, type metadata accessor for NetworksListModel);
  v25 = sub_2741C6CEC();
  *(&v45 + 1) = v22;
  LOBYTE(v46) = v24 & 1;
  *(&v46 + 1) = v25;
  LOBYTE(v47) = v26 & 1;
  v40 = 0;
  sub_2741C7A2C();
  BYTE8(v47) = v41;
  v48 = v42;
  LOBYTE(v49) = 1;
  sub_2740FC4E8();
  sub_2740FD394();
  v27 = v36;
  sub_2741C770C();

  sub_2740FD3E8(&v43);
  sub_2740A6D94(v16, v14, &qword_280939868, &qword_2741D0790);
  v28 = v4[2];
  v29 = v37;
  v30 = v27;
  v28(v37, v27, v3);
  v31 = v38;
  sub_2740A6D94(v14, v38, &qword_280939868, &qword_2741D0790);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939890, &qword_2741D07A0);
  v28((v31 + *(v32 + 48)), v29, v3);
  v33 = v4[1];
  v33(v30, v3);
  sub_27409D420(v35, &qword_280939868, &qword_2741D0790);
  v33(v29, v3);
  return sub_27409D420(v14, &qword_280939868, &qword_2741D0790);
}

uint64_t sub_2740FCB08(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_280937B90 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_280946F08 object:0 userInfo:0];

  v3 = *(a1 + 128);
  return (*(a1 + 120))();
}

double sub_2740FCBAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v23 = 1;
  sub_2740FCD34(a1, &v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  sub_2740A6D94(&v24, &v11, &qword_280939898, &qword_2741D07A8);
  sub_27409D420(v34, &qword_280939898, &qword_2741D07A8);
  *&v22[55] = v27;
  *&v22[39] = v26;
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[7] = v24;
  *&v22[23] = v25;
  v5 = *&v22[112];
  *(a2 + 113) = *&v22[96];
  *(a2 + 129) = v5;
  *(a2 + 145) = *&v22[128];
  v6 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v6;
  v7 = *&v22[80];
  *(a2 + 81) = *&v22[64];
  *(a2 + 97) = v7;
  result = *v22;
  v9 = *&v22[16];
  *(a2 + 17) = *v22;
  v22[151] = v33;
  v10 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 161) = *&v22[144];
  *(a2 + 33) = v9;
  return result;
}

uint64_t sub_2740FCD34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[5])
  {
    v3 = a1[4];
    v5 = sub_2741C71BC();
    sub_2740FD078(a1, &v28);
    *&v26[7] = v28;
    *&v26[23] = v29;
    *&v26[39] = v30;
    *&v26[55] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398C8, &qword_2741D07C8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2741CC090;
    v7 = sub_2741C752C();
    *(v6 + 32) = v7;
    v8 = sub_2741C753C();
    *(v6 + 33) = v8;
    v9 = sub_2741C755C();
    sub_2741C755C();
    if (sub_2741C755C() != v7)
    {
      v9 = sub_2741C755C();
    }

    sub_2741C755C();
    if (sub_2741C755C() != v8)
    {
      v9 = sub_2741C755C();
    }

    sub_2741C6C6C();
    *&v38[17] = *&v26[16];
    *&v38[33] = *&v26[32];
    *&v38[49] = *&v26[48];
    v27[0] = 0;
    v37 = v5;
    v38[0] = 0;
    *&v38[64] = *&v26[63];
    *&v38[1] = *v26;
    v38[72] = v9;
    *&v39 = v10;
    *(&v39 + 1) = v11;
    *&v40 = v12;
    *(&v40 + 1) = v13;
    LOBYTE(v41) = 0;
    sub_2740FD500(&v37);
  }

  else
  {
    v14 = a1[3];
    *&v37 = a1[2];
    sub_2740A6A74();

    *&v37 = sub_2741C76AC();
    *(&v37 + 1) = v15;
    v38[0] = v16 & 1;
    *&v38[8] = v17;
    sub_2740FD43C(&v37);
  }

  v48 = v39;
  v49 = v40;
  v50 = v41;
  v44 = *&v38[16];
  v45 = *&v38[32];
  v46 = *&v38[48];
  v47 = *&v38[64];
  v42 = v37;
  v43 = *v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398A0, &qword_2741D07B0);
  sub_2740FD448();
  sub_2741C72CC();
  v48 = v57;
  v49 = v58;
  v18 = v53;
  v44 = v53;
  v45 = v54;
  v19 = v55;
  v46 = v55;
  v47 = v56;
  v20 = v51;
  v42 = v51;
  v43 = v52;
  v21 = v58;
  v34 = v57;
  v35 = v58;
  v22 = v54;
  v30 = v53;
  v31 = v54;
  v23 = v56;
  v32 = v55;
  v33 = v56;
  v24 = v52;
  v28 = v51;
  v29 = v52;
  v50 = v59;
  v36 = v59;
  LOWORD(v41) = v59;
  v39 = v57;
  v40 = v58;
  *&v38[16] = v53;
  *&v38[32] = v54;
  *&v38[48] = v55;
  *&v38[64] = v56;
  v37 = v51;
  *v38 = v52;
  v27[136] = 1;
  *(a2 + 96) = v57;
  *(a2 + 112) = v21;
  *(a2 + 32) = v18;
  *(a2 + 48) = v22;
  *(a2 + 64) = v19;
  *(a2 + 80) = v23;
  *a2 = v20;
  *(a2 + 16) = v24;
  *(a2 + 128) = v41;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  sub_2740A6D94(&v28, v27, &qword_2809398C0, &qword_2741D07C0);
  return sub_27409D420(&v42, &qword_2809398C0, &qword_2741D07C0);
}

uint64_t sub_2740FD078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v21 = v4;
  v22 = v3;
  v20 = v5;
  v23 = v6;

  v7 = sub_2741C76AC();
  v9 = v8;
  v11 = v10;
  sub_2741C75DC();
  v12 = sub_2741C767C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_2740A6AC8(v7, v9, v11 & 1);

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  sub_27409861C(v22, v21, v20 & 1);

  sub_27409861C(v12, v14, v16 & 1);

  sub_2740A6AC8(v12, v14, v16 & 1);

  sub_2740A6AC8(v22, v21, v20 & 1);
}

uint64_t sub_2740FD210@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2741C70EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939858, &qword_2741D0780);
  return sub_2740FC628(v1, a1 + *(v3 + 44));
}

uint64_t sub_2740FD29C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v4 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2740FD304()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2740FD34C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2740FD394()
{
  result = qword_280939888;
  if (!qword_280939888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939888);
  }

  return result;
}

unint64_t sub_2740FD448()
{
  result = qword_2809398A8;
  if (!qword_2809398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809398A0, &qword_2741D07B0);
    sub_2740A6D24(&qword_2809398B0, &qword_2809398B8, &qword_2741D07B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809398A8);
  }

  return result;
}

unint64_t sub_2740FD560()
{
  result = qword_2809398E0;
  if (!qword_2809398E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809398E0);
  }

  return result;
}

uint64_t NetworkRequestErrorCode.init(rawValue:)(uint64_t result)
{
  if (result == -100)
  {
    v1 = -100;
  }

  else
  {
    v1 = 0;
  }

  if (result == -200)
  {
    v1 = -200;
  }

  if (result != -300)
  {
    return v1;
  }

  return result;
}

uint64_t *sub_2740FD5E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == -200)
  {
    v3 = -200;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != -200;
  if (v2 == -100)
  {
    v3 = -100;
    v4 = 0;
  }

  v5 = v2 == -300;
  if (v2 != -300)
  {
    v2 = v3;
  }

  if (v5)
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

id NetworkRequestError.__allocating_init(code:network:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_errorCode] = a1;
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_network] = a2;
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_underlyingError] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id NetworkRequestError.init(code:network:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_errorCode] = a1;
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_network] = a2;
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_underlyingError] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for NetworkRequestError();
  return objc_msgSendSuper2(&v5, sel_init);
}

id NetworkRequestError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2741C7E3C();

  if (a4)
  {
    v9 = sub_2741C7D4C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id NetworkRequestError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkRequestError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2740FD8BC()
{
  result = qword_280939900;
  if (!qword_280939900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939900);
  }

  return result;
}

uint64_t sub_2740FD9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2740FDA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DNSServerTextField()
{
  result = qword_280939910;
  if (!qword_280939910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740FDB00()
{
  sub_2740FDB6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2740FDB6C()
{
  if (!qword_280939920)
  {
    type metadata accessor for DNSServer();
    v0 = sub_2741C7BFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280939920);
    }
  }
}

uint64_t sub_2740FDBE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2741C714C();
  sub_2741C7BCC();
  swift_getKeyPath();
  sub_2741C7BEC();

  (*(v1 + 8))(v4, v0);
  return sub_2741C7C8C();
}

unint64_t sub_2740FDD78()
{
  result = qword_280938148;
  if (!qword_280938148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938118, &unk_2741CB890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938148);
  }

  return result;
}

uint64_t sub_2740FDDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D54CB0]) init];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D48, &qword_2741CDC10);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v3 + 24) = sub_2741C6B7C();
  *(v3 + 32) = &unk_288326350;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 80) = a3;
  *(v3 + 72) = 0;
  v11 = *(v3 + 16);

  v12 = v11;
  v13 = sub_2741C7E3C();

  [v12 setNetworkName_];

  [*(v4 + 16) setDelegate_];
  return v4;
}

id sub_2740FDED8()
{
  if (![objc_opt_self() passwordSharingAvailability])
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 16);
    v4 = (v2 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (v5 == *(v0 + 80))
      {
        if (*(v0 + 72))
        {

          return sub_2740CB218(0xD00000000000002ALL, 0x80000002741DBA20, 0x6574617669746361, 0xEA00000000002928);
        }

        else
        {
          sub_2740CB460(0xD000000000000024, 0x80000002741DB9F0);
          result = [*(v0 + 16) activate];
          *(v0 + 72) = 1;
        }

        return result;
      }
    }
  }

  return sub_2740CB460(0xD000000000000021, 0x80000002741DB960);
}

id sub_2740FDFF0()
{
  if (![objc_opt_self() passwordSharingAvailability])
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 16);
    v4 = (v2 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (v5 == *(v0 + 80))
      {
        if (*(v0 + 72) == 1)
        {
          sub_2740CB460(0xD000000000000026, 0x80000002741DB9C0);
          result = [*(v0 + 16) invalidate];
          *(v0 + 72) = 0;
        }

        else
        {

          return sub_2740CB218(0xD000000000000026, 0x80000002741DB990, 0x6176697463616564, 0xEC00000029286574);
        }

        return result;
      }
    }
  }

  return sub_2740CB460(0xD000000000000021, 0x80000002741DB960);
}

uint64_t sub_2740FE110(uint64_t a1, void *a2)
{
  sub_2740CB460(0xD000000000000028, 0x80000002741DB930);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);

    v5 = [a2 psk];
    sub_2741C7E7C();

    sub_2741C6B6C();
  }

  return result;
}

uint64_t sub_2740FE248()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2740FE2C4(void *a1)
{
  v3 = sub_2741C7CCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2741C7CFC();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_2741C856C();

  aBlock = 0xD00000000000001FLL;
  v21 = 0x80000002741DB900;
  MEMORY[0x2743E5FB0](*(v1 + 40), *(v1 + 48));
  sub_2740CB460(aBlock, v21);

  sub_2740D3950();
  v12 = sub_2741C82CC();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v24 = sub_2740FE63C;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2740B96AC;
  v23 = &block_descriptor_7;
  v15 = _Block_copy(&aBlock);
  v16 = a1;

  sub_2741C7CEC();
  aBlock = MEMORY[0x277D84F90];
  sub_2740BA1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938598, &unk_2741D0A90);
  sub_2740BA204();
  sub_2741C83FC();
  MEMORY[0x2743E6360](0, v11, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_2740FE5C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2740FE5FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740FE65C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 16, a1, &qword_2809399A8, &qword_2741D3F40);
}

uint64_t sub_2740FE6FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 16, a2, &qword_2809399A8, &qword_2741D3F40);
}

uint64_t sub_2740FE7CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2740FF138(a2, a1 + 16, &qword_2809399A8, &qword_2741D3F40);
  return swift_endAccess();
}

uint64_t sub_2740FE840@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 56, a1, &qword_2809395D8, &qword_2741CFF78);
}

uint64_t sub_2740FE8E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 56, a2, &qword_2809395D8, &qword_2741CFF78);
}

uint64_t sub_2740FE980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_2740A6D94(a1, v11, a5, a6);
  v9 = *a2;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C69FC();

  return sub_27409D420(v11, a5, a6);
}

uint64_t sub_2740FEA4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2740FF138(a2, a1 + 56, &qword_2809395D8, &qword_2741CFF78);
  return swift_endAccess();
}

uint64_t sub_2740FEAC0()
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  return *(v0 + 96);
}

uint64_t sub_2740FEB30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_2740FEBA8(uint64_t result)
{
  if (*(v1 + 96) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740FF018();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2740FEC80()
{
  sub_27409D420(v0 + 16, &qword_2809399A8, &qword_2741D3F40);
  sub_27409D420(v0 + 56, &qword_2809395D8, &qword_2741CFF78);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit16AssociationState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationState()
{
  result = qword_280939990;
  if (!qword_280939990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740FEDA0()
{
  result = sub_2741C6A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2740FEE48()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  return *(v1 + 96);
}

uint64_t sub_2740FEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v11 = *v7;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C69FC();

  return sub_27409D420(a1, a6, a7);
}

unint64_t sub_2740FEFF0(uint64_t a1)
{
  result = sub_2740FF018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2740FF018()
{
  result = qword_2809399A0;
  if (!qword_2809399A0)
  {
    type metadata accessor for AssociationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809399A0);
  }

  return result;
}

uint64_t sub_2740FF138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740FF20C()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit23ControllerWiFiInterface__knownNetworks;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit23ControllerWiFiInterface_monitoredEvents);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControllerWiFiInterface()
{
  result = qword_2809399C0;
  if (!qword_2809399C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740FF328()
{
  sub_2740FF3D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2740FF3D4()
{
  if (!qword_2809399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399D8, &unk_2741D32B0);
    v0 = sub_2741C6C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2809399D0);
    }
  }
}

uint64_t sub_2740FF438@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ControllerWiFiInterface();
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

uint64_t sub_2740FF478(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2740FF4C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740FF52C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v49 = a2;
  v2 = type metadata accessor for NetworkSettings();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F0, &qword_2741D0CF0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F8, &qword_2741D0CF8);
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17);
  v45 = &v39 - v19;
  v44 = swift_allocBox();
  v21 = v20;
  type metadata accessor for NetworkDetailsModel();
  v22 = sub_2740DD380();

  v43 = v22;
  sub_2741C7BDC();
  v23 = v10[2];
  v42 = v21;
  v40 = v23;
  v23(v14, v21, v9);
  sub_2741C7BCC();
  v24 = v10[1];
  v24(v14, v9);
  swift_getKeyPath();
  sub_2741C7BEC();

  v24(v16, v9);
  swift_getKeyPath();
  sub_2741C7B0C();

  sub_27410035C(v8);
  v54 = v56;
  v55 = v57;
  if (v41)
  {
    if (qword_280937A28 != -1)
    {
      swift_once();
    }

    v25 = &qword_280946C38;
  }

  else
  {
    if (qword_280937A20 != -1)
    {
      swift_once();
    }

    v25 = &qword_280946C28;
  }

  v27 = *v25;
  v26 = v25[1];

  v50 = v27;
  v51 = v28;
  sub_2740A6A74();
  v50 = sub_2741C76AC();
  v51 = v29;
  v52 = v30 & 1;
  v53 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A00, &unk_2741D0D48);
  sub_2740A6D24(&qword_280939A08, &qword_280939A00, &unk_2741D0D48);
  v32 = v45;
  sub_2741C7AAC();
  v40(v14, v42, v9);
  sub_2741C7BBC();
  v24(v14, v9);
  v33 = v50;
  swift_getKeyPath();
  v50 = v33;
  sub_2741C6A0C();

  v34 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v35 = v48;
  sub_2740BA058(v33 + v34, v48);

  v36 = *(v35 + 152);
  sub_2740CC5A0(v35);
  *&v56 = v36;
  sub_2740A6D24(&qword_280939A10, &qword_2809399F8, &qword_2741D0CF8);

  v37 = v47;
  sub_2741C78CC();

  (*(v46 + 8))(v32, v37);
}

uint64_t sub_2740FFB0C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A18, &qword_2741D0D68);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (qword_280937A30 != -1)
  {
    swift_once();
  }

  v26 = qword_280946C48;
  v27 = unk_280946C50;
  sub_2740A6A74();

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 4) = 1;
  v15[40] = 1;
  if (qword_280937A38 != -1)
  {
    swift_once();
  }

  v26 = qword_280946C58;
  v27 = unk_280946C60;

  *v13 = sub_2741C76AC();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 4) = 2;
  v13[40] = 1;
  v22 = v3[2];
  v22(v10, v15, v2);
  v22(v7, v13, v2);
  v22(a1, v10, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A20, &unk_2741D0D70);
  v22(&a1[*(v23 + 48)], v7, v2);
  v24 = v3[1];
  v24(v13, v2);
  v24(v15, v2);
  v24(v7, v2);
  return (v24)(v10, v2);
}

uint64_t sub_2740FFDF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = *a2;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2741C856C();

  v17 = 0xD00000000000001CLL;
  v18 = 0x80000002741DBB10;
  v16[1] = v9;
  v10 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v10);

  sub_2740CB218(v17, v18, 2036625250, 0xE400000000000000);

  v11 = sub_2741C80DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_2741C80AC();

  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  sub_2740CE980(0, 0, v8, &unk_2741D0D60, v13);
}

uint64_t sub_2740FFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F0, &qword_2741D0CF0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_2741C80AC();
  v4[7] = sub_2741C809C();
  v9 = sub_2741C805C();
  v4[8] = v9;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_2741000B0, v9, v8);
}

uint64_t sub_2741000B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_projectBox();
  (*(v2 + 16))(v1, v5, v4);
  sub_2741C7BBC();
  (*(v2 + 8))(v1, v4);
  v0[10] = v0[2];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_27410019C;

  return sub_2741020B8();
}

uint64_t sub_27410019C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2741002E0, v5, v4);
}

uint64_t sub_2741002E0()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_27410035C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2741003CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27410040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2740FFFB0(a1, v4, v5, v6);
}

uint64_t sub_2741004C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399F8, &qword_2741D0CF8);
  sub_2740A6D24(&qword_280939A10, &qword_2809399F8, &qword_2741D0CF8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741005AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v6 = *a2;
  swift_beginAccess();
  return sub_2740BA058(v5 + v6, a3);
}

uint64_t sub_274100678(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for NetworkSettings();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740BA058(a1, v11);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_274100748@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v5 = *a1;
  swift_beginAccess();
  return sub_2740BA058(v2 + v5, a2);
}

uint64_t sub_274100838(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for NetworkSettings();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  swift_beginAccess();
  sub_2740BA058(v2 + v9, v8);
  LOBYTE(a2) = sub_2740B9F04(v8, a1);
  sub_2741041FC(v8, type metadata accessor for NetworkSettings);
  if (a2)
  {
    sub_2740BA058(a1, v8);
    swift_beginAccess();
    sub_2741040C8(v8, v2 + v9);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v2;
    v12[-1] = a1;
    v12[1] = v2;
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    sub_2741C69FC();
  }

  return sub_2741041FC(a1, type metadata accessor for NetworkSettings);
}

uint64_t sub_274100A1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_27410412C(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_274100A84@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  return sub_27409D4E4(v5 + v3, a1);
}

uint64_t sub_274100B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  return sub_27409D4E4(v3 + v4, a2);
}

uint64_t sub_274100C14(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C69FC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_274100CF4(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_274100D60()
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
}

uint64_t sub_274100E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  return result;
}

uint64_t sub_274100EE0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    sub_2741C69FC();
  }

  return result;
}

double sub_274101000@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = (v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config);
  swift_beginAccess();
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14 = v3[4];
  v15 = *(v3 + 10);
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  sub_2740B2AC0(&v10, &v9);
  v6 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v6;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  result = *&v10;
  v8 = v11;
  *a1 = v10;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_274101114@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v15[0] = v3;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v15[0] = *v4;
  v15[1] = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v16 = *(v4 + 80);
  v15[3] = v7;
  v15[4] = v8;
  v15[2] = v6;
  v9 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v9;
  v10 = *(v4 + 32);
  v11 = *(v4 + 48);
  v12 = *(v4 + 64);
  *(a2 + 80) = *(v4 + 80);
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v10;
  return sub_2740B2AC0(v15, &v14);
}

uint64_t sub_274101228(__int128 *a1, uint64_t *a2)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 10);
  v4 = *a1;
  v5 = a1[1];
  v2 = *a2;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C69FC();
}

uint64_t sub_274101314(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v8 = *(v3 + 64);
  v9 = *(v3 + 80);
  v10 = *(a2 + 48);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = v10;
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = *(a2 + 80);
  v11 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v11;
  sub_2740B2AC0(a2, &v13);
}

uint64_t sub_2741013F4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = (v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v4 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v5 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  result = sub_274103F80(v4, v3[1]);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

uint64_t sub_2741014D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v5 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v6 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v7 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_274103F80(v4, v5);
}

uint64_t sub_2741015A0(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v2 = *a2;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C69FC();
}

uint64_t sub_27410167C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  v3 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v4 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v5 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v6 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v7 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  v8 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v8;
  *(v2 + 32) = *(a2 + 32);
  sub_274103FF0(a2, v10);
  return sub_2740CC5FC(v3, v4);
}

uint64_t sub_274101708@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v7;
}

uint64_t sub_274101810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 48);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v4 + 32);
  *(a2 + 48) = v8;
}

uint64_t sub_274101920(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  v2 = *a2;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C69FC();
}

uint64_t sub_274101A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v8 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v8;
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  sub_274103138(a2, &v10);
}

uint64_t sub_274101ABC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_274101B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_274101C44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_274101C70(v4);
}

uint64_t sub_274101C70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    sub_2741C69FC();
  }
}

uint64_t sub_274101DA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_274101E10()
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);
}

uint64_t sub_274101EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);
  return result;
}

uint64_t sub_274101F90(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2741020B8()
{
  *(v1 + 88) = v0;
  v2 = *(*(type metadata accessor for NetworkSettings() - 8) + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274102148, 0, 0);
}

uint64_t sub_274102148()
{
  v2 = v0[11];
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v2;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings;
  swift_beginAccess();
  sub_2740BA058(v2 + v3, v1);
  swift_getKeyPath();
  v0[9] = v2;
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  LOBYTE(v3) = sub_2740B9F04(v1, v2 + v4);
  sub_2741041FC(v1, type metadata accessor for NetworkSettings);
  if (v3)
  {
    sub_2740CB460(0xD00000000000002ALL, 0x80000002741DBC30);
    v5 = v0[12];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[11];
    v9 = v0[12];
    sub_2740CB460(0xD000000000000026, 0x80000002741DBC00);
    v10 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    swift_getKeyPath();
    v0[10] = v8;
    sub_2741C6A0C();

    sub_2740BA058(v2 + v4, v9);
    v11 = *__swift_project_boxed_opaque_existential_1((*v10 + 56), *(*v10 + 80));
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_274102404;
    v13 = v0[12];

    return sub_27410DE80(v13);
  }
}

uint64_t sub_274102404()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_274102500, 0, 0);
}

uint64_t sub_274102500()
{
  sub_2741041FC(*(v0 + 96), type metadata accessor for NetworkSettings);
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27410257C()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v12[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v3, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = (*(v5 + 32))(v4, v5);
  v8 = v7;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v9 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v10 = *v2;
  sub_2740CC180(v1 + v9, v6, v8);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_274102778()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v12[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v3, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = (*(v5 + 32))(v4, v5);
  v8 = v7;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v9 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v10 = *v2;
  sub_2740CC2BC(v1 + v9, v6, v8);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_274102974()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v12[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v3, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = (*(v5 + 32))(v4, v5);
  v8 = v7;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v9 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v10 = *v2;
  sub_2740CC3F8((v1 + v9), v6, v8);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_274102B70()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_2741041FC(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  sub_2741041FC(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network));
  v1 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 8);
  v2 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 16);
  v3 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 32);
  v4 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 48);
  v5 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 64);
  v6 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config + 80);

  v7 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v8 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v9 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_2740CC5FC(*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config), *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8));
  v10 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig + 8);
  v11 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig + 16);
  v12 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig + 32);
  v13 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig + 48);

  v14 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings);

  v15 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel___observationRegistrar;
  v16 = sub_2741C6A4C();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t sub_274102CE0()
{
  sub_274102B70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkDetailsModel()
{
  result = qword_280939A78;
  if (!qword_280939A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274102D8C()
{
  result = type metadata accessor for NetworkSettings();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2741C6A4C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_274102EB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_274101C70(v4);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

void *sub_274103260(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v88 = type metadata accessor for KnownNetwork();
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NetworkSettings();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116[3] = a4;
  v116[4] = a5;
  v100 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v116);
  v18 = *(*(a4 - 8) + 32);
  v98 = boxed_opaque_existential_1;
  v99 = a4;
  v18(boxed_opaque_existential_1, a1, a4);
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v19 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v19 = xmmword_2741D0D80;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v20 = type metadata accessor for NetworkConfigurationState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v25 = *(v13 + 56);
  v25(v23 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v12);
  v25(v23 + v24, 1, 1, v12);
  sub_2741C6A3C();
  *(&v110 + 1) = v20;
  *&v111 = sub_2741041B4(&qword_280939A90, type metadata accessor for NetworkConfigurationState);
  *&v109 = v23;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v93 = v23;

  v27 = sub_274192EC8(v26, &v109);
  v28 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v27;
  v29 = a3 + 2;
  a3[5] = v28;
  a3[6] = &off_288327F88;
  v30 = *__swift_project_boxed_opaque_existential_1(a3 + 2, v28);
  sub_2740CBF04(v116, v16);
  sub_2740BA058(v16, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings);
  sub_2740BA058(v16, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings);
  v31 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v116, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v94 = a2;
  v95 = v16;
  v92 = v31;
  if (a2)
  {

    v33 = v98;
    v32 = v99;
    v34 = v100;
    v97 = sub_27410B850(v98, a2, v99, v100);
  }

  else
  {
    v97 = 0;
    v32 = v99;
    v34 = v100;
    v33 = v98;
  }

  v35 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v36 = __swift_project_boxed_opaque_existential_1((*v35 + 56), *(*v35 + 80));
  sub_27410F168(v33, *v36, v32, v34, v117);
  v37 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v38 = v117[3];
  *(v37 + 2) = v117[2];
  *(v37 + 3) = v38;
  *(v37 + 4) = v117[4];
  *(v37 + 10) = v118;
  v39 = v117[1];
  *v37 = v117[0];
  *(v37 + 1) = v39;
  v40 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v41 = *(*v40 + 16);
  v42 = *(*v40 + 24);
  v43 = *(*v40 + 32);
  v44 = *(*v40 + 40);
  v45 = *(*v40 + 48);
  v46 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v96 = a3;
  v47 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v48 = v46[1];
  v90 = v46[2];
  v91 = v29;
  v49 = v46[3];
  v89 = v46[4];
  sub_274103F80(v41, v42);
  v50 = v47;
  v51 = v96;
  sub_2740CC5FC(v50, v48);
  *v46 = v41;
  v46[1] = v42;
  v46[2] = v43;
  v46[3] = v44;
  v46[4] = v45;
  v52 = v91;
  v53 = __swift_project_boxed_opaque_existential_1(v91, v51[5]);
  v54 = __swift_project_boxed_opaque_existential_1((*v53 + 56), *(*v53 + 80));
  v56 = v98;
  v55 = v99;
  v57 = v100;
  sub_27410F5EC(v98, *v54, v99, v100, v119);
  v58 = v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v59 = v119[1];
  *v58 = v119[0];
  *(v58 + 16) = v59;
  *(v58 + 32) = v119[2];
  *(v58 + 48) = v120;
  v60 = __swift_project_boxed_opaque_existential_1(v52, v51[5]);
  v61 = __swift_project_boxed_opaque_existential_1((*v60 + 56), *(*v60 + 80));
  *(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_27410F8E0(v56, *v61, v55, v57);
  swift_getKeyPath();
  *&v101 = v51;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v62 = v92;
  swift_beginAccess();
  sub_27409D4E4(v51 + v62, &v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v113 = v105;
    v114 = v106;
    v115 = v107;
    v109 = v101;
    v110 = v102;
    v111 = v103;
    v112 = v104;
    if (v97)
    {
      v63 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v64 = v95;
      if (*(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v109);
        *(v51 + v63) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v86 - 2) = v51;
      *(&v86 - 8) = 1;
      *&v101 = v51;
    }

    else
    {
      v66 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v67 = *(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      v64 = v95;
      if (BYTE9(v111))
      {
        if (v67 == 2)
        {
          sub_2740ACB2C(&v109);
          *(v51 + v66) = 2;
          goto LABEL_24;
        }

        v70 = swift_getKeyPath();
        MEMORY[0x28223BE20](v70);
        *(&v86 - 2) = v51;
        *(&v86 - 8) = 2;
        *&v101 = v51;
      }

      else
      {
        if (v67 == 3)
        {
          sub_2740ACB2C(&v109);
          *(v51 + v66) = 3;
          goto LABEL_24;
        }

        v71 = swift_getKeyPath();
        MEMORY[0x28223BE20](v71);
        *(&v86 - 2) = v51;
        *(&v86 - 8) = 3;
        *&v101 = v51;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v109);
  }

  else
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    sub_27409D420(&v101, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v101 = v51;
    sub_2741C6A0C();

    sub_27409D4E4(v51 + v62, &v109);
    v65 = v87;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v65, type metadata accessor for KnownNetwork);
      v64 = v95;
      if (*(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v69 = swift_getKeyPath();
        MEMORY[0x28223BE20](v69);
        *(&v86 - 2) = v51;
        *(&v86 - 8) = 4;
        *&v109 = v51;
        sub_2741C69FC();
      }
    }

    else
    {
      v64 = v95;
    }
  }

LABEL_24:
  v72 = v97 & 1;
  if ((v97 & 1) == *(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v72;
  }

  else
  {
    v73 = swift_getKeyPath();
    MEMORY[0x28223BE20](v73);
    *(&v86 - 2) = v51;
    *(&v86 - 8) = v72;
    *&v109 = v51;
    sub_2741C69FC();
  }

  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v101 = v51;
  sub_2741C6A0C();

  v74 = *(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v74 <= 1)
  {
    if (*(v51 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v75 = 0xEF6B726F7774656ELL;
      v76 = 0x20746E6572727563;
    }

    else
    {
      v75 = 0x80000002741DBD20;
      v76 = 0xD000000000000019;
    }
  }

  else if (v74 == 2)
  {
    v75 = 0x80000002741DBD00;
    v76 = 0xD00000000000001CLL;
  }

  else if (v74 == 3)
  {
    v75 = 0x80000002741DBCE0;
    v76 = 0xD00000000000001ELL;
  }

  else
  {
    v75 = 0x80000002741DBCB0;
    v76 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v76, v75);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  v77 = (*(v100 + 32))(v99);
  MEMORY[0x2743E5FB0](v77);

  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v97)
  {
    v78 = 1702195828;
  }

  else
  {
    v78 = 0x65736C6166;
  }

  if (v97)
  {
    v79 = 0xE400000000000000;
  }

  else
  {
    v79 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v78, v79);

  sub_2740CB460(v109, *(&v109 + 1));

  v80 = v93;
  swift_setDeallocating();
  sub_27409D420(v80 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v81 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v82 = sub_2741C6A4C();
  (*(*(v82 - 8) + 8))(v80 + v81, v82);
  v83 = *(*v80 + 48);
  v84 = *(*v80 + 52);
  swift_deallocClassInstance();
  sub_2741041FC(v64, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  return v51;
}

uint64_t sub_274103F80(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_274103FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A88, &qword_2741D0FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741040C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSettings();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27410412C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSettings();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741041B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2741041FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2741042E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AA8, &qword_2741D10E0);
  sub_274104AE4();
  return sub_2741C762C();
}

uint64_t sub_274104354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AC8, &qword_2741D1110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AC0, &unk_2741D10E8);
  sub_2740A6D24(&qword_280939AD0, &qword_280939AC8, &qword_2741D1110);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_280939AB8, &qword_280939AC0, &unk_2741D10E8);
  return sub_2741C7B5C();
}

uint64_t sub_2741044D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AD8, &unk_2741D1118);
  sub_2740A6D24(&qword_280939AE0, &qword_280939AD8, &unk_2741D1118);
  return sub_2741C7A7C();
}

uint64_t sub_2741045EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v9, v5);
  v6 = v9;
  if (*(v9 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != a4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10 = v6;
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

__n128 sub_27410470C@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2741C70EC();
  sub_2741047C0(a1, a2, a3, a4, v13);
  *&v12[55] = v13[3];
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  *&v12[7] = v13[0];
  *(a5 + 33) = *&v12[16];
  result = *&v12[32];
  *(a5 + 49) = *&v12[32];
  *(a5 + 65) = *&v12[48];
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 80) = *&v12[63];
  *(a5 + 17) = *v12;
  return result;
}

uint64_t sub_2741047C0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_280937480 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946038;
    }

    else
    {
      if (qword_280937488 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946048;
    }

    v12 = *v10;
    v11 = v10[1];
  }

  sub_2740A6A74();
  v13 = sub_2741C76AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v26, v20);
  v21 = v26;
  swift_getKeyPath();
  v27 = v21;
  sub_2740C91EC();
  sub_2741C6A0C();

  v22 = *(v21 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v22 == v9)
  {
    v23 = sub_2741C79CC();
    v24 = sub_2741C797C();
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  sub_27409861C(v13, v15, v17 & 1);

  sub_274104BD8(v23);
  sub_274104C18(v23);
  LOBYTE(v27) = v17 & 1;
  LOBYTE(v26) = 1;
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v19;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v23;
  *(a5 + 56) = v24;
  sub_274104C18(v23);
  sub_2740A6AC8(v13, v15, v17 & 1);
}

uint64_t sub_274104A1C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A98, &qword_2741D10D8);
  sub_2740A6D24(&qword_280939AA0, &qword_280939A98, &qword_2741D10D8);
  return sub_2741C7B9C();
}

uint64_t sub_274104ACC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2741042E0();
}

unint64_t sub_274104AE4()
{
  result = qword_280939AB0;
  if (!qword_280939AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AA8, &qword_2741D10E0);
    sub_2740A6D24(&qword_280939AB8, &qword_280939AC0, &unk_2741D10E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939AB0);
  }

  return result;
}

uint64_t sub_274104BD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274104C18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_274104C7C()
{
  result = qword_280939AE8;
  if (!qword_280939AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AF0, qword_2741D1150);
    sub_2740A6D24(&qword_280939AA0, &qword_280939A98, &qword_2741D10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939AE8);
  }

  return result;
}

uint64_t sub_274104D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_27409D118(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_274106598(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2741051E0(a1);
    v8 = *v2;
    v9 = sub_274125ECC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_274106CC0();
        v14 = v16;
      }

      sub_27409D118((*(v14 + 56) + 40 * v11), v17);
      sub_27410615C(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2741051E0(v17);
  }

  return result;
}

uint64_t sub_274104E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 80) = a4;
  return MEMORY[0x2822009F8](sub_274104E48, 0, 0);
}

uint64_t sub_274104E48()
{
  *(v0 + 88) = sub_2741C80AC();
  *(v0 + 96) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274104EE0, v2, v1);
}

uint64_t sub_274104EE0()
{
  v1 = *(v0 + 96);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_274104F78, 0, 0);
}

uint64_t sub_274104F78()
{
  v1 = *(v0 + 88);
  *(v0 + 104) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274105004, v3, v2);
}

uint64_t sub_274105004()
{
  v1 = *(v0 + 104);

  *(v0 + 112) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274105080, 0, 0);
}

uint64_t sub_274105080()
{
  v1 = *(v0 + 88);
  *(v0 + 120) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27410510C, v3, v2);
}

uint64_t sub_27410510C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(v0 + 128);

  sub_27409D4E4(v3, v0 + 16);
  swift_beginAccess();
  sub_274104D38(v0 + 16, v4);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2741051E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AF8, &qword_2741D11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274105248(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
  v36 = a2;
  result = sub_2741C866C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_27409D2F8(v25, v37);
      }

      else
      {
        sub_27409D308(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_27409D2F8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_274105500(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
  result = sub_2741C866C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_27409D2F8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2740BA2B0(v24, &v38);
        sub_27409D308(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2741C84EC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_27409D2F8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2741057B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v33 = a2;
  result = sub_2741C866C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2741C87DC();
      MEMORY[0x2743E6870](v21);
      result = sub_2741C880C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_274105A48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
  result = sub_2741C866C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_27409D118(v22, v33);
      }

      else
      {
        sub_27409D4E4(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_2741C87DC();
      MEMORY[0x2743E6870](v21);
      result = sub_2741C880C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_27409D118(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_274105CE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
  v36 = a2;
  result = sub_2741C866C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_27409D118(v25, v37);
      }

      else
      {
        sub_27409D4E4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_27409D118(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_274105FAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2741C841C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2741C87DC();

      sub_2741C7F0C();
      v14 = sub_2741C880C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27410615C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2741C841C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v6);
      sub_2741C87DC();
      MEMORY[0x2743E6870](v12);
      result = sub_2741C880C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2741062FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2741251AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_27410681C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_274105248(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2741251AC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2741C871C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_27409D2F8(a1, v23);
  }

  else
  {
    sub_2741066C8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_27410644C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_274125164(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2741069C0();
      goto LABEL_7;
    }

    sub_274105500(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_274125164(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2740BA2B0(a2, v22);
      return sub_274106734(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2741C871C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_27409D2F8(a1, v17);
}

uint64_t sub_274106598(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_274125ECC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_274106CC0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_274105A48(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_274125ECC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_2741C871C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return sub_27409D118(a1, v21);
  }

  else
  {

    return sub_2741067B0(v9, a2, a1, v20);
  }
}

_OWORD *sub_2741066C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27409D2F8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_274106734(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_27409D2F8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2741067B0(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_27409D118(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_27410681C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_27409D308(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27409D2F8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2741069C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2740BA2B0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_27409D308(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_27409D2F8(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_274106B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_274106CC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_27409D4E4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_27409D118(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_274106E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_27409D4E4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27409D118(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_274106FE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_274107030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741070AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_27410710C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_274107158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_274107230(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

void *PasswordRelayer.__allocating_init(networkName:securityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PasswordSharingInterface();
  swift_allocObject();

  v7 = sub_2740FDDDC(a1, a2, a3);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = v7;
  v6[6] = *(v7 + 24);

  return v6;
}

void *PasswordRelayer.init(networkName:securityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PasswordSharingInterface();
  swift_allocObject();

  v7 = sub_2740FDDDC(a1, a2, a3);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v7;
  v3[6] = *(v7 + 24);

  return v3;
}

void *PasswordRelayer.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t PasswordRelayer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_2741074A0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_2741074F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t (*sub_274107548())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_27410759C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_2741075DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

uint64_t (*sub_274107620())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2741076D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_274107720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_274107768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_27410791C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2741079B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_274107A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_274107AD8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_274107B20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a2);
}

uint64_t sub_274107BB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_274099294(a1, &v10 - v6);
  v8 = *a2;
  return sub_274108BF8(v7);
}

unsigned __int8 *sub_274107C60(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_274108EAC(&v4);
}

uint64_t sub_274107C98()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_274107D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_274107D80(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274107E58()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_274107ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_274108008()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_274108088(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_2741081B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  swift_getKeyPath();
  v20 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v0 + v12, v11);
  v13 = type metadata accessor for EnterpriseIdentity();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v11, 1, v13);
  result = sub_27409D420(v11, &qword_280937DA0, &qword_2741CB190);
  if (v15 != 1)
  {
    (*(v14 + 56))(v9, 1, 1, v13);
    sub_274099294(v1 + v12, v6);
    v17 = sub_27410ADC8(v6, v9);
    sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
    if (v17)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v19[-2] = v1;
      v19[-1] = v9;
      v19[2] = v1;
      sub_2741C69FC();
    }

    else
    {
      sub_274099294(v9, v6);
      sub_2741089B4(v6);
    }

    return sub_27409D420(v9, &qword_280937DA0, &qword_2741CB190);
  }

  return result;
}

uint64_t sub_27410847C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_2741084FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (v6 = *(v2 + 64), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;

    return sub_2741081B8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_274108630()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + 72);
}

uint64_t sub_2741086A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_274108740(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274108828()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = *(v0 + 88);
}

uint64_t sub_27410889C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 88);
}

uint64_t sub_274108918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C69FC();
}

uint64_t sub_2741089B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_27410B054(a1, v1 + v7);
  swift_endAccess();
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001BLL, 0x80000002741DBF50);
  swift_getKeyPath();
  v9 = v1;
  sub_2740C91EC();
  sub_2741C6A0C();

  sub_274099294(v1 + v7, v6);
  sub_2741C862C();
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  sub_2740CB460(v10, v11);

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274108B60@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2740C91EC();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v5 + v3, a1);
}

uint64_t sub_274108BF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v1 + v7, v6);
  LOBYTE(v7) = sub_27410ADC8(v6, a1);
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2740C91EC();
    sub_2741C69FC();
  }

  else
  {
    sub_274099294(a1, v6);
    sub_2741089B4(v6);
  }

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274108D90(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - v5;
  sub_274099294(a2, &v8 - v5);
  return sub_2741089B4(v6);
}

uint64_t sub_274108E2C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a1 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);
  return result;
}

unsigned __int8 *sub_274108EAC(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274108F9C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) != 0)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v3 = *(v0 + v2) == 160;
  }

  else
  {
    v3 = 1;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741C69FC();
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v1 + v2) == 512)
  {
    sub_2741084FC(0, 0xE000000000000000);
    return sub_274108088(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_274109168()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);
}

uint64_t sub_2741091E0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == a1)
  {

    return sub_274108F9C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_27410931C()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);
}

uint64_t sub_2741093A8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_274109454(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

BOOL sub_274109544()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if (*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == 4)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 16)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 64)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 80)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  return *(v0 + v1) == 20;
}

uint64_t sub_274109704()
{
  v1 = v0;
  v48 = sub_2741C66FC();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  swift_getKeyPath();
  v49 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v13 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) == 0 || (swift_getKeyPath(), v49 = v0, sub_2741C6A0C(), , *(v0 + v13) == 160))
  {
    swift_getKeyPath();
    v49 = v0;
    sub_2741C6A0C();

    if (*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) == 2)
    {
      swift_getKeyPath();
      v49 = v0;
      sub_2741C6A0C();

      v14 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
      swift_beginAccess();
      sub_274099294(v1 + v14, v12);
      v15 = type metadata accessor for EnterpriseIdentity();
      v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
      sub_27409D420(v12, &qword_280937DA0, &qword_2741CB190);
      return v16;
    }

    swift_getKeyPath();
    v49 = v0;
    sub_2741C6A0C();

    v18 = v0[6];
    v19 = v0[5] & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v18) & 0xF;
    }

    if (v19)
    {
      swift_getKeyPath();
      v49 = v0;
      sub_2741C6A0C();

      v20 = v0[8];
      v21 = v0[7] & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v20) & 0xF;
      }

      return v21 != 0;
    }

    return 0;
  }

  swift_getKeyPath();
  v49 = v0;
  sub_2741C6A0C();

  if (*(v0 + v13) == 1)
  {
    swift_getKeyPath();
    v49 = v0;
    sub_2741C6A0C();

    v22 = v0[7];
    v23 = v1[8];

    v24 = sub_2741C7F1C();

    if (v24 < 5)
    {
      return 0;
    }

    swift_getKeyPath();
    v49 = v1;
    sub_2741C6A0C();

    v26 = v1[7];
    v25 = v1[8];

    v27 = sub_2741C7F1C();

    return v27 < 59;
  }

  if (!sub_274109544())
  {
    swift_getKeyPath();
    v49 = v0;
    sub_2741C6A0C();

    v43 = v0[8];
    v44 = v0[7] & 0xFFFFFFFFFFFFLL;
    if ((v43 & 0x2000000000000000) != 0)
    {
      v44 = HIBYTE(v43) & 0xF;
    }

    if (!v44)
    {
      return 0;
    }

    swift_getKeyPath();
    v49 = v0;
    sub_2741C6A0C();

    v46 = v0[7];
    v45 = v1[8];

    v47 = sub_2741C7F1C();

    return v47 < 65;
  }

  sub_2741C66DC();
  sub_2741C66EC();
  v29 = *(v2 + 8);
  v30 = v48;
  v29(v6, v48);
  swift_getKeyPath();
  v49 = v0;
  sub_2741C6A0C();

  v31 = v0[8];
  v49 = v0[7];
  v50 = v31;
  sub_2740A6A74();
  sub_2741C83BC();
  v33 = v32;
  swift_getKeyPath();
  v49 = v0;
  sub_2741C6A0C();

  v34 = v0[7];
  v35 = v1[8];

  v36 = sub_2741C7F1C();

  if (v36 < 8)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  v49 = v1;
  sub_2741C6A0C();

  v37 = v1[7];
  v38 = v1[8];

  v39 = sub_2741C7F1C();

  if (v39 <= 63)
  {
    v29(v8, v30);
    return 1;
  }

  else
  {
LABEL_17:
    swift_getKeyPath();
    v49 = v1;
    sub_2741C6A0C();

    v41 = v1[7];
    v40 = v1[8];

    v42 = sub_2741C7F1C();

    v29(v8, v30);
    return (v42 == 64) & v33;
  }
}

uint64_t sub_274109E08()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 6);

  v3 = *(v0 + 8);

  v4 = *(v0 + 10);

  v5 = *(v0 + 11);

  sub_27409D420(&v0[OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity], &qword_280937DA0, &qword_2741CB190);
  v6 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials___observationRegistrar;
  v7 = sub_2741C6A4C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationCredentials()
{
  result = qword_280939B48;
  if (!qword_280939B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274109F40()
{
  sub_2740997F4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2741C6A4C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27410A05C()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  v2 = type metadata accessor for EnterpriseIdentity();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) = 1;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) = 80;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode) = 3;
  sub_2741C6A3C();
  return v0;
}

uint64_t sub_27410A158()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t sub_27410A1D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);

  return v2;
}

uint64_t sub_27410A258()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

uint64_t sub_27410A2D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);
}

uint64_t sub_27410A350()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + 72);
}

uint64_t sub_27410A3C0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 88);
}

uint64_t sub_27410A434()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C69FC();
}

uint64_t sub_27410A4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a1);
}

uint64_t sub_27410A570()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + 16);
}

uint64_t sub_27410A5E0()
{
  v1 = *v0;
  v18 = 60;
  v19 = 0xE100000000000000;
  swift_getMetatypeMetadata();
  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  strcpy(v17, " username: '");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v3 = 0xE000000000000000;
  if (v0[5] || v0[6] != 0xE000000000000000)
  {
    v5 = sub_2741C86DC();
    v6 = (v5 & 1) == 0;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x657463616465723CLL;
    }

    if (v6)
    {
      v3 = 0xEA00000000003E64;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x2743E5FB0](v4, v3);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v17[0], v17[1]);

  strcpy(v17, " password: '");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  swift_getKeyPath();
  sub_2741C6A0C();

  v7 = 0xE000000000000000;
  if (v0[7] || v0[8] != 0xE000000000000000)
  {
    v9 = sub_2741C86DC();
    v10 = (v9 & 1) == 0;
    if (v9)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x657463616465723CLL;
    }

    if (v10)
    {
      v7 = 0xEA00000000003E64;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x2743E5FB0](v8, v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v17[0], v17[1]);

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0x27203A65646F6D20, 0xE800000000000000);
  swift_getKeyPath();
  sub_2741C6A0C();

  v15 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741DBED0);
  swift_getKeyPath();
  sub_2741C6A0C();

  v16 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741DBEF0);
  swift_getKeyPath();
  sub_2741C6A0C();

  LOBYTE(v16) = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  sub_2741C856C();

  v17[0] = 0xD000000000000014;
  v17[1] = 0x80000002741DBF10;
  swift_getKeyPath();
  sub_2741C6A0C();

  v11 = v0[11];
  if (v11)
  {
    v12 = 0x657463616465723CLL;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xEA00000000003E64;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x2743E5FB0](v12, v13);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v17[0], v17[1]);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return v18;
}

unsigned __int8 *sub_27410AB7C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_274108EAC(&v4);
}

uint64_t sub_27410AC20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
}

uint64_t keypath_set_88Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_27410ADC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_274099294(a1, &v23 - v16);
  sub_274099294(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_274099294(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2740F23D4(&v17[v18], v8);
      v21 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_2740FBC6C(v8);
      sub_2740FBC6C(v12);
      sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
      v20 = !v21;
      return v20 & 1;
    }

    sub_2740FBC6C(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27409D420(v17, &qword_280939B58, &unk_2741D15B0);
    v20 = 1;
    return v20 & 1;
  }

  sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_27410B054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27410B0D4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 64);
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;

  return sub_2741081B8();
}

uint64_t sub_27410B124()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_27410B164()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_27410B1EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27410B808(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v1 + 24, a1);
}

uint64_t sub_27410B2AC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2);
  return swift_endAccess();
}

uint64_t sub_27410B310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for KnownNetwork();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  swift_getKeyPath();
  v18[0] = v10;
  sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v10 + 32, v18, &qword_280938340, &qword_2741D1660);
  v11 = v18[1];
  sub_27409D420(v18, &qword_280938340, &qword_2741D1660);
  if (!v11)
  {
    return 0;
  }

  swift_getKeyPath();
  v18[0] = v10;
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v10 + v12, v4, &qword_280938570, &qword_2741D1630);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_27409D420(v4, &qword_280938570, &qword_2741D1630);
    v13 = 1;
  }

  else
  {
    sub_27409D240(v4, v9);
    v14 = v9[115];
    sub_27409D050(v9);
    v13 = v14 ^ 1;
  }

  swift_getKeyPath();
  v17 = v10;
  sub_2741C6A0C();

  if (*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v17 = v10;
  sub_2741C6A0C();

  return ((*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) & 1) == 0) & v13;
}

uint64_t sub_27410B638()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkModel___observationRegistrar;
  v3 = sub_2741C6A4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentNetworkModel()
{
  result = qword_280939B68;
  if (!qword_280939B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27410B738()
{
  result = sub_2741C6A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27410B808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27410B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = type metadata accessor for KnownNetwork();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v53 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v72[3] = a3;
  v72[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_27409D4E4(v72, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v27 = swift_dynamicCast();
  v28 = *(v20 + 56);
  if (!v27)
  {
    v39 = v56;
    v28(v18, 1, 1, v19);
    sub_27409D420(v18, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v72, v69);
    if (swift_dynamicCast())
    {
      v70[4] = v64;
      v70[5] = v65;
      v71 = v66;
      v70[0] = v60;
      v70[1] = v61;
      v70[2] = v62;
      v70[3] = v63;
      v40 = *(v39 + 16);
      swift_getKeyPath();
      *&v60 = v40;
      sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v70, v69);
      sub_2740A6D94(v40 + 32, &v60, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v69, v67, &qword_280938340, &qword_2741D1660);
      if (*(&v60 + 1))
      {
        sub_2740A6D94(&v60, v59, &qword_280938340, &qword_2741D1660);
        if (*(&v67[0] + 1))
        {
          v57[4] = v67[4];
          v57[5] = v67[5];
          v58 = v68;
          v57[0] = v67[0];
          v57[1] = v67[1];
          v57[2] = v67[2];
          v57[3] = v67[3];
          if (v59[0] == v67[0])
          {
            v41 = 1;
          }

          else
          {
            v41 = sub_2741C86DC();
          }

          sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v70);
          sub_2740ACB2C(v57);
          sub_2740ACB2C(v59);
          v47 = &v60;
          v48 = &qword_280938340;
          v49 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v70);
        sub_2740ACB2C(v59);
      }

      else
      {
        sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v70);
        if (!*(&v67[0] + 1))
        {
          v36 = &qword_280938340;
          v37 = &qword_2741D1660;
          v38 = &v60;
          goto LABEL_19;
        }
      }

      v43 = &qword_280939B80;
      v44 = &qword_2741D4800;
    }

    else
    {
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v43 = &qword_280938340;
      v44 = &qword_2741D1660;
    }

    v45 = &v60;
    goto LABEL_25;
  }

  v51 = v13;
  v28(v18, 0, 1, v19);
  sub_27409D240(v18, v25);
  sub_27409CF58(v25, v16);
  v28(v16, 0, 1, v19);
  v52 = v20;
  v29 = *(v56 + 16);
  swift_getKeyPath();
  *&v60 = v29;
  sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  v30 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v31 = v55;
  v32 = *(v54 + 48);
  sub_2740A6D94(v16, v55, &qword_280938570, &qword_2741D1630);
  v33 = v29 + v30;
  v34 = v52;
  sub_2740A6D94(v33, v31 + v32, &qword_280938570, &qword_2741D1630);
  v35 = *(v34 + 48);
  if (v35(v31, 1, v19) != 1)
  {
    v42 = v51;
    sub_2740A6D94(v31, v51, &qword_280938570, &qword_2741D1630);
    if (v35(v31 + v32, 1, v19) == 1)
    {
      sub_27409D420(v16, &qword_280938570, &qword_2741D1630);
      sub_27409D050(v25);
      sub_27409D050(v42);
      goto LABEL_12;
    }

    v46 = v53;
    sub_27409D240(v31 + v32, v53);
    if (*v42 == *v46 && v42[1] == v46[1])
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_2741C86DC();
    }

    sub_27409D420(v16, &qword_280938570, &qword_2741D1630);
    sub_27409D050(v25);
    sub_27409D050(v46);
    sub_27409D050(v42);
    v47 = v31;
    v48 = &qword_280938570;
    v49 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v47, v48, v49);
    goto LABEL_29;
  }

  sub_27409D420(v16, &qword_280938570, &qword_2741D1630);
  sub_27409D050(v25);
  if (v35(v31 + v32, 1, v19) != 1)
  {
LABEL_12:
    v43 = &qword_280939B78;
    v44 = &unk_2741D6DB0;
    v45 = v31;
LABEL_25:
    sub_27409D420(v45, v43, v44);
    v41 = 0;
    goto LABEL_29;
  }

  v36 = &qword_280938570;
  v37 = &qword_2741D1630;
  v38 = v31;
LABEL_19:
  sub_27409D420(v38, v36, v37);
  v41 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  return v41 & 1;
}

unint64_t InteractionStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_27410C054()
{
  result = qword_280939B88;
  if (!qword_280939B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B88);
  }

  return result;
}

uint64_t *sub_27410C0A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkWarning(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27410C238(_BYTE *a1)
{
  v1 = 0;
  switch(*a1)
  {
    case 0:
    case 1:
      if (qword_2809374B8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460A8;
      goto LABEL_38;
    case 5:
    case 6:
    case 0xB:
    case 0xD:
    case 0xE:
      if (qword_2809374C8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460C8;
      goto LABEL_38;
    case 7:
      if (qword_2809374C0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460B8;
      goto LABEL_38;
    case 8:
    case 0xC:
      if (qword_2809374F8 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946128;
      goto LABEL_38;
    case 9:
      if (qword_2809374F0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946118;
      goto LABEL_38;
    case 0xA:
      if (qword_2809374E8 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946108;
      goto LABEL_38;
    case 0xF:
      if (qword_280937500 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946138;
      goto LABEL_38;
    case 0x10:
      if (qword_280937508 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946148;
      goto LABEL_38;
    case 0x12:
      if (qword_2809374E0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460F8;
      goto LABEL_38;
    case 0x13:
      if (qword_2809374D0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460D8;
      goto LABEL_38;
    case 0x14:
      if (qword_2809374D8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460E8;
      goto LABEL_38;
    case 0x15:
      if (qword_280937510 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946158;
LABEL_38:
      v1 = *v2;
      v3 = v2[1];

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_27410C5C0(_BYTE *a1)
{
  v2 = 0;
  switch(*a1)
  {
    case 0:
    case 1:
      if (*(v1 + 1) == 1)
      {
        if (qword_280937520 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946178;
      }

      else
      {
        if (qword_280937518 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946168;
      }

      goto LABEL_54;
    case 5:
      if (qword_280937538 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461A8;
      goto LABEL_54;
    case 6:
      if (qword_280937530 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946198;
      goto LABEL_54;
    case 7:
      if (qword_280937528 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946188;
      goto LABEL_54;
    case 8:
      if (qword_280937568 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946208;
      goto LABEL_54;
    case 9:
      if (qword_280937560 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461F8;
      goto LABEL_54;
    case 0xA:
      if (qword_280937558 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461E8;
      goto LABEL_54;
    case 0xB:
      if (qword_280937580 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946238;
      goto LABEL_54;
    case 0xC:
      if (qword_280937588 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946248;
      goto LABEL_54;
    case 0xD:
      if (qword_280937590 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946258;
      goto LABEL_54;
    case 0xE:
      if (qword_280937598 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946268;
      goto LABEL_54;
    case 0xF:
      if (qword_280937570 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946218;
      goto LABEL_54;
    case 0x10:
      if (qword_280937578 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946228;
      goto LABEL_54;
    case 0x12:
      if (qword_280937550 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461D8;
      goto LABEL_54;
    case 0x13:
      if (qword_280937540 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461B8;
      goto LABEL_54;
    case 0x14:
      if (qword_280937548 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461C8;
LABEL_54:
      v2 = *v3;
      v4 = v3[1];

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_27410CA84(_BYTE *a1)
{
  v2 = 0;
  v3 = *(v1 + 1);
  switch(*a1)
  {
    case 0:
    case 1:
      if (*(v1 + 1))
      {
        if (qword_2809375A0 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946278;
      }

      else
      {
        if (qword_2809375A8 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946288;
      }

      goto LABEL_78;
    case 5:
    case 6:
    case 0xB:
      if (*(v1 + 1))
      {
        if (qword_2809375C0 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809462B8;
      }

      else
      {
        if (qword_2809375C8 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809462C8;
      }

      goto LABEL_78;
    case 7:
      if (*(v1 + 1))
      {
        if (qword_2809375B0 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946298;
      }

      else
      {
        if (qword_2809375B8 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809462A8;
      }

      goto LABEL_78;
    case 8:
    case 0xC:
      if (*(v1 + 1))
      {
        if (qword_280937628 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946388;
      }

      else
      {
        if (qword_280937630 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946398;
      }

      goto LABEL_78;
    case 9:
      if (*(v1 + 1))
      {
        if (qword_280937618 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946368;
      }

      else
      {
        if (qword_280937620 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946378;
      }

      goto LABEL_78;
    case 0xA:
      if (*(v1 + 1))
      {
        if (qword_280937608 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946348;
      }

      else
      {
        if (qword_280937610 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946358;
      }

      goto LABEL_78;
    case 0xD:
    case 0xE:
    case 0xF:
      if (qword_2809375D0 != -1)
      {
        swift_once();
      }

      v4 = &qword_2809462D8;
      goto LABEL_78;
    case 0x10:
      if (qword_280937638 != -1)
      {
        swift_once();
      }

      v4 = &qword_2809463A8;
      goto LABEL_78;
    case 0x12:
      if (*(v1 + 1))
      {
        if (qword_2809375F8 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946328;
      }

      else
      {
        if (qword_280937600 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946338;
      }

      goto LABEL_78;
    case 0x13:
      if (*(v1 + 1))
      {
        if (qword_2809375D8 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809462E8;
      }

      else
      {
        if (qword_2809375E0 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809462F8;
      }

      goto LABEL_78;
    case 0x14:
      if (*(v1 + 1))
      {
        if (qword_2809375E8 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946308;
      }

      else
      {
        if (qword_2809375F0 != -1)
        {
          swift_once();
        }

        v4 = &qword_280946318;
      }

      goto LABEL_78;
    case 0x15:
      if (*(v1 + 1))
      {
        if (qword_280937640 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809463B8;
      }

      else
      {
        if (qword_280937648 != -1)
        {
          swift_once();
        }

        v4 = &qword_2809463C8;
      }

LABEL_78:
      v2 = *v4;
      v5 = v4[1];

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_27410D098@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2047)
  {
    if (result < 0x10000)
    {
      if (result < 0x2000)
      {
        if (result == 2048)
        {
          *a2 = 11;
          return result;
        }

        if (result == 4096)
        {
          *a2 = 12;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0x2000:
            *a2 = 17;
            return result;
          case 0x4000:
            *a2 = 18;
            return result;
          case 0x8000:
            *a2 = 1;
            return result;
        }
      }
    }

    else if (result >= 0x80000)
    {
      switch(result)
      {
        case 0x80000:
          *a2 = 21;
          return result;
        case 0x100000:
          *a2 = 13;
          return result;
        case 0x200000:
          *a2 = 14;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 0x10000:
          *a2 = 2;
          return result;
        case 0x20000:
          *a2 = 3;
          return result;
        case 0x40000:
          *a2 = 4;
          return result;
      }
    }
  }

  else if (result <= 31)
  {
    if (result <= 3)
    {
      if (result == 1)
      {
        *a2 = 0;
        return result;
      }

      if (result == 2)
      {
        *a2 = 5;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          *a2 = 6;
          return result;
        case 8:
          *a2 = 7;
          return result;
        case 16:
          *a2 = 19;
          return result;
      }
    }
  }

  else if (result > 255)
  {
    switch(result)
    {
      case 256:
        *a2 = 9;
        return result;
      case 512:
        *a2 = 15;
        return result;
      case 1024:
        *a2 = 16;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 32:
        *a2 = 20;
        return result;
      case 64:
        *a2 = 10;
        return result;
      case 128:
        *a2 = 8;
        return result;
    }
  }

  *a2 = 22;
  return result;
}

uint64_t sub_27410D288()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2741C87DC();
  sub_2741C87FC();
  sub_2741C87FC();
  return sub_2741C880C();
}

uint64_t sub_27410D2E8()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2741C87FC();
  return sub_2741C87FC();
}

uint64_t sub_27410D328()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2741C87DC();
  sub_2741C87FC();
  sub_2741C87FC();
  return sub_2741C880C();
}

unint64_t sub_27410D3B0()
{
  result = qword_280939B90;
  if (!qword_280939B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B90);
  }

  return result;
}

BOOL sub_27410D404(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v21 = *a1;
  v3 = sub_27410C238(&v21);
  if (v4)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5;
  }

  if (!v7)
  {
    return 0;
  }

  v20[1] = v1;
  v20[2] = v2;
  v20[0] = v1;
  v8 = sub_27410C5C0(v20);
  if (v9)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10;
  }

  if (!v12)
  {
    return 0;
  }

  v19[1] = v1;
  v19[2] = v2;
  v19[0] = v1;
  v13 = sub_27410CA84(v19);
  if (v14)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15;
  }

  return v17 != 0;
}

unint64_t sub_27410D51C()
{
  result = qword_280939B98;
  if (!qword_280939B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B98);
  }

  return result;
}

void *sub_27410D570@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result == 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27410D598(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 < 3)
  {
    if (qword_280937970 != -1)
    {
      swift_once();
    }

    v5 = &qword_280946A28;
LABEL_16:
    v8 = *v5;
    v7 = v5[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2741CB550;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_27410D7BC();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    goto LABEL_17;
  }

  if (a3 == 6)
  {
    if (qword_280937990 != -1)
    {
      swift_once();
    }

    v5 = &qword_280946A68;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    if (qword_2809379A0 != -1)
    {
      swift_once();
    }

    v5 = &qword_280946A88;
    goto LABEL_16;
  }

  if (qword_280937960 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2741CB550;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_27410D7BC();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

LABEL_17:

  v10 = sub_2741C7E4C();

  return v10;
}

unint64_t sub_27410D7BC()
{
  result = qword_280939BA0;
  if (!qword_280939BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockdownModeAlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockdownModeAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27410D964()
{
  result = qword_280939BA8;
  if (!qword_280939BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BA8);
  }

  return result;
}

void *sub_27410D9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27410DAFC(a1);
  if (!v3)
  {
    v6 = result;
    v7 = sub_2740CD860([*(v2 + 16) privateMACAddressModeForNetworkProfile_]);
    if (v7 == 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [*(v2 + 16) privateMACAddressForNetworkProfile_];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2741C7E7C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [*(v2 + 16) hardwareMACAddress];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2741C7E7C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    LOBYTE(v20) = v8;
    *(&v20 + 1) = v11;
    v21 = v13;
    v22 = v16;
    v23 = v18;
    v24 = v8;
    v19[3] = sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
    v19[4] = &off_2883287E8;
    v19[0] = v6;
    return sub_2740B6AC8(v19, &v20, a2);
  }

  return result;
}

void *sub_27410DAFC(void *a1)
{
  v3 = sub_2741C696C();
  v22 = *(v3 - 1);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = *(v6 + 80);
  v8(&v23, v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    return v25;
  }

  v18 = v3;
  v8(&v23, v7, v6);
  v19 = sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  if ((swift_dynamicCast() & 1) == 0 || (v17[1] = v1, v9 = v25, v3 = [v25 matchingKnownNetworkProfile], v9, !v3))
  {
    v8(&v23, v7, v6);
    if (swift_dynamicCast())
    {
      v10 = v25;
      v3 = [v25 networkProfile];
      [v3 setPrivateMACAddressModeUserSetting_];
      v11 = v21;
      sub_2741C695C();
      v12 = sub_2741C692C();
      (*(v22 + 8))(v11, v18);
      [v3 setAddedAt_];
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_2741C856C();

      v23 = 0xD00000000000002FLL;
      v24 = 0x80000002741DC0A0;
      v13 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v15 = (*(v14 + 32))(v13, v14);
      MEMORY[0x2743E5FB0](v15);

      sub_2740CB218(v23, v24, 0xD000000000000014, 0x80000002741DC0D0);

      sub_27410FC08();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_27410DE80(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27410DF10, 0, 0);
}

uint64_t sub_27410DF10()
{
  v90 = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  v2 = v0[34];
  v3 = *(v1 + 96);
  v4 = sub_27410EA7C(v1);
  v5 = v0[34];
  [v4 setAutoJoinDisabled_];
  v6 = qword_280937320;
  v7 = *(v5 + 16);
  if (v6 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v8 = sub_2741C81DC();
  v0[32] = 0;
  v9 = [v7 updateKnownNetworkProfile:v4 properties:v8 error:v0 + 32];

  v10 = v0[32];
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v12 = v10;
    v13 = sub_2741C681C();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_2741C856C();
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741DBFC0);
    v0[21] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[9], v0[10], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v14 = v0[33];
  v15 = v0[34];
  v16 = *(v14 + 98);
  v17 = sub_27410EA7C(v14);
  v18 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BB0, &qword_2741D1A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CB550;
  *(inited + 32) = 0x4265766974706143;
  v20 = inited + 32;
  *(inited + 40) = 0xED00007373617079;
  *(inited + 48) = v16 ^ 1;
  v21 = sub_274178114(inited);
  swift_setDeallocating();
  sub_27409D420(v20, &qword_280939BB8, &qword_2741D1A38);
  sub_2741123D0(v21);

  v22 = sub_2741C7D4C();

  [v17 setCaptiveProfile_];

  v23 = qword_280937328;
  v24 = *(v18 + 16);
  if (v23 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v25 = sub_2741C81DC();
  v0[31] = 0;
  v26 = [v24 updateKnownNetworkProfile:v17 properties:v25 error:v0 + 31];

  v27 = v0[31];
  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v29 = v27;
    v30 = sub_2741C681C();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_2741C856C();
    v0[11] = 0;
    v0[12] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741DBFE0);
    v0[22] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[11], v0[12], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v31 = v0[33];
  v32 = v0[34];
  v33 = *(v31 + 56);
  v34 = sub_27410EA7C(v31);
  v35 = v34;
  v36 = v0[34];
  if (v33)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2;
  }

  [v34 setLowDataMode_];
  v38 = qword_280937330;
  v39 = *(v36 + 16);
  if (v38 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v40 = sub_2741C81DC();
  v0[30] = 0;
  v41 = [v39 updateKnownNetworkProfile:v35 properties:v40 error:v0 + 30];

  v42 = v0[30];
  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v44 = v42;
    v45 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[13] = 0;
    v0[14] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ELL, 0x80000002741DC000);
    v0[23] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[13], v0[14], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v46 = v0[33];
  v47 = v0[34];
  v48 = *(v46 + 99);
  v49 = sub_27410EA7C(v46);
  v50 = v0[34];
  [v49 setPrivacyProxyEnabled_];
  v51 = qword_280937338;
  v52 = *(v50 + 16);
  if (v51 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v53 = sub_2741C81DC();
  v0[29] = 0;
  v54 = [v52 updateKnownNetworkProfile:v49 properties:v53 error:v0 + 29];

  v55 = v0[29];
  if (v54)
  {
    v56 = v55;
  }

  else
  {
    v57 = v55;
    v58 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[15] = 0;
    v0[16] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DC020);
    v0[24] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[15], v0[16], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v59 = v0[33];
  v60 = v0[34];
  v61 = v59[19];
  v62 = sub_27410EA7C(v59);
  v63 = v0[34];
  [v62 setDisable6EMode_];
  v64 = qword_280937340;
  v65 = *(v63 + 16);
  if (v64 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v66 = sub_2741C81DC();
  v0[28] = 0;
  v67 = [v65 updateKnownNetworkProfile:v62 properties:v66 error:v0 + 28];

  v68 = v0[28];
  if (v67)
  {
    v69 = v68;
  }

  else
  {
    v70 = v68;
    v71 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[17] = 0;
    v0[18] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741DC050);
    v0[25] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[17], v0[18], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v72 = v0[33];
  v73 = v0[34];
  v74 = *(v72 + 104);
  v75 = sub_27410EA7C(v72);
  v76 = v0[34];
  [v75 setPrivateMACAddressModeUserSetting_];
  v77 = qword_280937348;
  v78 = *(v76 + 16);
  if (v77 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v79 = sub_2741C81DC();
  v0[27] = 0;
  v80 = [v78 updateKnownNetworkProfile:v75 properties:v79 error:v0 + 27];

  v81 = v0[27];
  if (v80)
  {
    v82 = v81;
  }

  else
  {
    v83 = v81;
    v84 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[19] = 0;
    v0[20] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000021, 0x80000002741DC070);
    v0[26] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[19], v0[20], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v85 = v0[1];
  v86 = *MEMORY[0x277D85DE8];

  return v85();
}

uint64_t sub_27410EA7C(void *a1)
{
  sub_27409D4E4(a1, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    return v10;
  }

  sub_27409D4E4(a1, &v11);
  sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 16);
    v5 = [v4 knownNetworkProfileMatchingScanResult_];

    if (v5)
    {
      return v5;
    }
  }

  sub_27409D4E4(a1, &v11);
  if (swift_dynamicCast())
  {
    v6 = [v10 networkProfile];

    if (v6)
    {
      return v6;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2741C856C();

  v11 = 0xD00000000000002FLL;
  v12 = 0x80000002741DC0A0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938580, &qword_2741CD4E0);
  v9 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB218(v11, v12, 0xD000000000000014, 0x80000002741DC0D0);

  sub_27410FC08();
  swift_allocError();
  return swift_willThrow();
}