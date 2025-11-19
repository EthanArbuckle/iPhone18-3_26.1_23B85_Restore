uint64_t sub_2672E8E30(uint64_t a1)
{
  v2 = sub_2672E8F34(&qword_2800FA230);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672E8E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672E8F34(&qword_2800FA230);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672E8F34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaISOLanguageCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaISOLocale.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaISOLanguageCode(0);
  sub_2672E933C(&qword_2800F12E8, type metadata accessor for SISchemaISOLanguageCode);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65676175676E616CLL, 0xEC00000065646F43);
  v6(v9, 0);
  type metadata accessor for SISchemaCountryCode(0);
  sub_2672E933C(&qword_2800F0420, type metadata accessor for SISchemaCountryCode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x437972746E756F63, 0xEB0000000065646FLL);
  return v7(v9, 0);
}

uint64_t sub_2672E9230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672E9294(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672E933C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672E9384()
{
  result = qword_2800F0438;
  if (!qword_2800F0438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0438);
  }

  return result;
}

uint64_t static SISchemaKeyboardDismissed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v49 = sub_26738113C();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v46 = a2;
  sub_26738119C();
  v41 = *MEMORY[0x277D3E4E8];
  v47 = *(v3 + 104);
  v47(v6);
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v43 = v13;
  v44 = v14;
  v15 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6472616F6279656BLL, 0xEC00000064657355);
  v16(v50, 0);
  v48 = *MEMORY[0x277D3E508];
  v17 = v48;
  v18 = v49;
  v19 = v47;
  (v47)(v6, v48, v49);
  v45 = v3 + 104;
  v50[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E496874676E656CLL, 0xED00007364726F57);
  v20(v50, 0);
  v19(v6, v17, v18);
  v50[0] = 1;
  sub_26738114C();
  v21 = v11;
  v22 = v11;
  v23 = v43;
  v43(v10, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E496874676E656CLL, 0xED00007372616843);
  v24(v50, 0);
  v25 = v49;
  v19(v6, v48, v49);
  v50[0] = 1;
  sub_26738114C();
  v26 = v21;
  v40 = v21;
  v23(v10, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x73726168436D756ELL, 0xED00006465646441);
  v27(v50, 0);
  v28 = v48;
  v29 = v25;
  v30 = v47;
  (v47)(v6, v48, v29);
  v50[0] = 1;
  sub_26738114C();
  v31 = v43;
  v43(v10, 0, 1, v26);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x73726168436D756ELL, 0xEF646574656C6544);
  v32(v50, 0);
  v33 = v28;
  v34 = v49;
  v30(v6, v33, v49);
  v50[0] = 1;
  sub_26738114C();
  v35 = v40;
  v31(v10, 0, 1, v40);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x7473694474696465, 0xEC00000065636E61);
  v36(v50, 0);
  v30(v6, v41, v34);
  v50[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x657355696A6F6D65, 0xE900000000000064);
  v37(v50, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2672E9CF8(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v31(v10, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0x6472616F6279656BLL, 0xEE00656C61636F4CLL);
  v38(v50, 0);
  sub_266ECB128(&unk_2878923D8);
  return sub_2673811CC();
}

uint64_t sub_2672E9BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672E9C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672E9CF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672E9D40()
{
  result = qword_2800F9CE8;
  if (!qword_2800F9CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9CE8);
  }

  return result;
}

uint64_t static SISchemaLanguageProfile.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 108, 0xE100000000000000);
  return v10(v12, 0);
}

uint64_t sub_2672E9FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672EA030(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672EA094()
{
  result = qword_2800FA238;
  if (!qword_2800FA238)
  {
    sub_2672EA0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA238);
  }

  return result;
}

unint64_t sub_2672EA0EC()
{
  result = qword_2800FA240;
  if (!qword_2800FA240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA240);
  }

  return result;
}

uint64_t static SISchemaLinkedAccessoryState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F737365636361, 0xEB00000000644979);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026746B100);
  return v7(v9, 0);
}

uint64_t sub_2672EA410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672EA474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaLocale.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v380 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674980A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v380;

  v1(v443, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v381 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x415F454C41434F4CLL, 0xEC00000045415F52, v11);
  v12 = *v9;
  *v9 = v381;

  v7(v443, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v382 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x415F454C41434F4CLL, 0xEC00000041535F52, v17);
  v18 = *v15;
  *v15 = v382;

  v13(v443, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v383 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x435F454C41434F4CLL, 0xEC00000053455F41, v23);
  v24 = *v21;
  *v21 = v383;

  v19(v443, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v384 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x435F454C41434F4CLL, 0xEC0000005A435F53, v29);
  v30 = *v27;
  *v27 = v384;

  v25(v443, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v385 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0x445F454C41434F4CLL, 0xEC0000004B445F41, v35);
  v36 = *v33;
  *v33 = v385;

  v31(v443, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v386 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0x445F454C41434F4CLL, 0xEC00000054415F45, v41);
  v42 = *v39;
  *v39 = v386;

  v37(v443, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v387 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0x445F454C41434F4CLL, 0xEC00000048435F45, v47);
  v48 = *v45;
  *v45 = v387;

  v43(v443, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v388 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0x445F454C41434F4CLL, 0xEC00000045445F45, v53);
  v54 = *v51;
  *v51 = v388;

  v49(v443, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v389 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0x455F454C41434F4CLL, 0xEC00000052475F4CLL, v59);
  v60 = *v57;
  *v57 = v389;

  v55(v443, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v390 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0x455F454C41434F4CLL, 0xEC00000045415F4ELL, v65);
  v66 = *v63;
  *v63 = v390;

  v61(v443, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v391 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0x455F454C41434F4CLL, 0xEC00000055415F4ELL, v71);
  v72 = *v69;
  *v69 = v391;

  v67(v443, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v392 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0x455F454C41434F4CLL, 0xEC00000041435F4ELL, v77);
  v78 = *v75;
  *v75 = v392;

  v73(v443, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v393 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0x455F454C41434F4CLL, 0xEC00000042475F4ELL, v83);
  v84 = *v81;
  *v81 = v393;

  v79(v443, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v394 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0x455F454C41434F4CLL, 0xEC00000044495F4ELL, v89);
  v90 = *v87;
  *v87 = v394;

  v85(v443, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v395 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0x455F454C41434F4CLL, 0xEC00000045495F4ELL, v95);
  v96 = *v93;
  *v93 = v395;

  v91(v443, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v396 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0x455F454C41434F4CLL, 0xEC0000004E495F4ELL, v101);
  v102 = *v99;
  *v99 = v396;

  v97(v443, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v397 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0x455F454C41434F4CLL, 0xEC000000594D5F4ELL, v107);
  v108 = *v105;
  *v105 = v397;

  v103(v443, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v398 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0x455F454C41434F4CLL, 0xEC0000005A4E5F4ELL, v113);
  v114 = *v111;
  *v111 = v398;

  v109(v443, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v399 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0x455F454C41434F4CLL, 0xEC00000048505F4ELL, v119);
  v120 = *v117;
  *v117 = v399;

  v115(v443, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v400 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0x455F454C41434F4CLL, 0xEC00000047535F4ELL, v125);
  v126 = *v123;
  *v123 = v400;

  v121(v443, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v401 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0x455F454C41434F4CLL, 0xEC00000041535F4ELL, v131);
  v132 = *v129;
  *v129 = v401;

  v127(v443, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v402 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0x455F454C41434F4CLL, 0xEC00000053555F4ELL, v137);
  v138 = *v135;
  *v135 = v402;

  v133(v443, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v403 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0x455F454C41434F4CLL, 0xEC000000415A5F4ELL, v143);
  v144 = *v141;
  *v141 = v403;

  v139(v443, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v404 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0x455F454C41434F4CLL, 0xEC0000004C435F53, v149);
  v150 = *v147;
  *v147 = v404;

  v145(v443, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v405 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0x455F454C41434F4CLL, 0xEC0000004F435F53, v155);
  v156 = *v153;
  *v153 = v405;

  v151(v443, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0x455F454C41434F4CLL, 0xEC00000053455F53, v161);
  v162 = *v159;
  *v159 = v406;

  v157(v443, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0x455F454C41434F4CLL, 0xEC000000584D5F53, v167);
  v168 = *v165;
  *v165 = v407;

  v163(v443, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v408 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0x455F454C41434F4CLL, 0xEC00000053555F53, v173);
  v174 = *v171;
  *v171 = v408;

  v169(v443, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v409 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0x465F454C41434F4CLL, 0xEC00000049465F49, v179);
  v180 = *v177;
  *v177 = v409;

  v175(v443, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0x465F454C41434F4CLL, 0xEC00000045425F52, v185);
  v186 = *v183;
  *v183 = v410;

  v181(v443, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v411 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0x465F454C41434F4CLL, 0xEC00000041435F52, v191);
  v192 = *v189;
  *v189 = v411;

  v187(v443, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v412 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0x465F454C41434F4CLL, 0xEC00000048435F52, v197);
  v198 = *v195;
  *v195 = v412;

  v193(v443, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v413 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0x465F454C41434F4CLL, 0xEC00000052465F52, v203);
  v204 = *v201;
  *v201 = v413;

  v199(v443, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v414 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0x485F454C41434F4CLL, 0xEC0000004C495F45, v209);
  v210 = *v207;
  *v207 = v414;

  v205(v443, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v415 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0x485F454C41434F4CLL, 0xEC0000004E495F49, v215);
  v216 = *v213;
  *v213 = v415;

  v211(v443, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v416 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0x485F454C41434F4CLL, 0xEC00000052485F52, v221);
  v222 = *v219;
  *v219 = v416;

  v217(v443, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v417 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0x485F454C41434F4CLL, 0xEC00000055485F55, v227);
  v228 = *v225;
  *v225 = v417;

  v223(v443, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v418 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0x495F454C41434F4CLL, 0xEC00000044495F44, v233);
  v234 = *v231;
  *v231 = v418;

  v229(v443, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0x495F454C41434F4CLL, 0xEC00000048435F54, v239);
  v240 = *v237;
  *v237 = v419;

  v235(v443, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v420 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0x495F454C41434F4CLL, 0xEC00000054495F54, v245);
  v246 = *v243;
  *v243 = v420;

  v241(v443, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v421 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0x4A5F454C41434F4CLL, 0xEC000000504A5F41, v251);
  v252 = *v249;
  *v249 = v421;

  v247(v443, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v422 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0x4B5F454C41434F4CLL, 0xEC000000524B5F4FLL, v257);
  v258 = *v255;
  *v255 = v422;

  v253(v443, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v423 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0x4D5F454C41434F4CLL, 0xEC000000594D5F53, v263);
  v264 = *v261;
  *v261 = v423;

  v259(v443, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v424 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0x4E5F454C41434F4CLL, 0xEC0000004F4E5F42, v269);
  v270 = *v267;
  *v267 = v424;

  v265(v443, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v425 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0x4E5F454C41434F4CLL, 0xEC00000045425F4CLL, v275);
  v276 = *v273;
  *v273 = v425;

  v271(v443, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v426 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0x4E5F454C41434F4CLL, 0xEC0000004C4E5F4CLL, v281);
  v282 = *v279;
  *v279 = v426;

  v277(v443, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v427 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0x505F454C41434F4CLL, 0xEC0000004C505F4CLL, v287);
  v288 = *v285;
  *v285 = v427;

  v283(v443, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0x505F454C41434F4CLL, 0xEC00000052425F54, v293);
  v294 = *v291;
  *v291 = v428;

  v289(v443, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0x505F454C41434F4CLL, 0xEC00000054505F54, v299);
  v300 = *v297;
  *v297 = v429;

  v295(v443, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0x525F454C41434F4CLL, 0xEC0000004F525F4FLL, v305);
  v306 = *v303;
  *v303 = v430;

  v301(v443, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0x525F454C41434F4CLL, 0xEC00000055525F55, v311);
  v312 = *v309;
  *v309 = v431;

  v307(v443, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0x535F454C41434F4CLL, 0xEC0000004B535F4BLL, v317);
  v318 = *v315;
  *v315 = v432;

  v313(v443, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0x535F454C41434F4CLL, 0xEC00000045535F56, v323);
  v324 = *v321;
  *v321 = v433;

  v319(v443, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0x545F454C41434F4CLL, 0xEC00000048545F48, v329);
  v330 = *v327;
  *v327 = v434;

  v325(v443, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0x545F454C41434F4CLL, 0xEC00000052545F52, v335);
  v336 = *v333;
  *v333 = v435;

  v331(v443, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0x555F454C41434F4CLL, 0xEC00000041555F4BLL, v341);
  v342 = *v339;
  *v339 = v436;

  v337(v443, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0x565F454C41434F4CLL, 0xEC0000004E565F49, v347);
  v348 = *v345;
  *v345 = v437;

  v343(v443, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0x575F454C41434F4CLL, 0xED00004E435F5555, v353);
  v354 = *v351;
  *v351 = v438;

  v349(v443, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0x595F454C41434F4CLL, 0xED00004E435F4555, v359);
  v360 = *v357;
  *v357 = v439;

  v355(v443, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v440 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0x5A5F454C41434F4CLL, 0xEC0000004E435F48, v365);
  v366 = *v363;
  *v363 = v440;

  v361(v443, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v441 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0x5A5F454C41434F4CLL, 0xEC0000004B485F48, v371);
  v372 = *v369;
  *v369 = v441;

  v367(v443, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0x5A5F454C41434F4CLL, 0xEC00000057545F48, v377);
  v378 = *v375;
  *v375 = v442;

  v373(v443, 0);
  sub_266ECB128(&unk_287892408);
  return sub_26738112C();
}

uint64_t sub_2672EC1A8(uint64_t a1)
{
  v2 = sub_2672EC2AC(&qword_2800FA248);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EC210(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EC2AC(&qword_2800FA248);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EC2AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaLocale(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaLocaleIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x437972746E756F63, 0xEB0000000065646FLL);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x65676175676E616CLL, 0xEC00000065646F43);
  return v16(v20, 0);
}

uint64_t sub_2672EC620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672EC684(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672EC6E8()
{
  result = qword_2800F61C0;
  if (!qword_2800F61C0)
  {
    sub_2672EC740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F61C0);
  }

  return result;
}

unint64_t sub_2672EC740()
{
  result = qword_2800F61B8;
  if (!qword_2800F61B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F61B8);
  }

  return result;
}

uint64_t static SISchemaLocation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v28 = *MEMORY[0x277D3E500];
  v29 = v3 + 104;
  v30 = v2;
  v27 = v11;
  v11(v6);
  v33[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v26 = *(v13 + 56);
  v26(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x656475746974616CLL, 0xE800000000000000);
  v14(v33, 0);
  v31 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v32, 0x656475746974616CLL, 0xE800000000000000);
  v25 = *(v13 + 48);
  if (!v25(v17, 1, v12))
  {
    sub_266ECB128(&unk_287892438);
    sub_26738115C();
  }

  (v16)(v32, 0);
  v15(v33, 0);
  v27(v6, v28, v30);
  v33[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x64757469676E6F6CLL, 0xE900000000000065);
  v18(v33, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v32, 0x64757469676E6F6CLL, 0xE900000000000065);
  if (!v25(v21, 1, v12))
  {
    sub_266ECB128(&unk_287892468);
    sub_26738115C();
  }

  (v20)(v32, 0);
  v19(v33, 0);
  v27(v6, v28, v30);
  v33[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267498120);
  v22(v33, 0);
  sub_266ECB128(&unk_287892498);
  return sub_2673811CC();
}

uint64_t sub_2672ECCCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672ECD30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672ECD94()
{
  result = qword_2800F66C8;
  if (!qword_2800F66C8)
  {
    sub_2672ECDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F66C8);
  }

  return result;
}

unint64_t sub_2672ECDEC()
{
  result = qword_2800F66C0;
  if (!qword_2800F66C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F66C0);
  }

  return result;
}

uint64_t static SISchemaLocationAccessPermission.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267498180, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x80000002674981B0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674981E0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267498200, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x8000000267498230, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x8000000267498260, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x8000000267498290, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2672ED20C(uint64_t a1)
{
  v2 = sub_2672ED310(&qword_2800FA250);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672ED274(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672ED310(&qword_2800FA250);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672ED310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaLocationAccessPermission(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaLogicalTimestamp.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E510], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674982F0);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v12(v14, 0);
  sub_266ECB128(&unk_2878924E0);
  return sub_2673811CC();
}

uint64_t sub_2672ED6A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672ED70C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaMeasurementSystem.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267498340, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267498360, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267498380, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674983A0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672EDA3C(uint64_t a1)
{
  v2 = sub_2672EDB40(&qword_2800FA258);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EDAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EDB40(&qword_2800FA258);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EDB40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMeasurementSystem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMediaPlayBackState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674983F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267498410, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267498430, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267498450, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267498470, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x8000000267498490, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x80000002674984B0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2672EDF64(uint64_t a1)
{
  v2 = sub_2672EE068(&qword_2800FA260);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EDFCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EE068(&qword_2800FA260);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EE068(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMediaPlayBackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMediaType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x80000002674984F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x505954414944454DLL, 0xEF434953554D5F45, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267498510, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x8000000267498530, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267498550, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267498570, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x8000000267498590, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x80000002674985B0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2672EE508(uint64_t a1)
{
  v2 = sub_2672EE60C(&qword_2800FA268);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EE570(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EE60C(&qword_2800FA268);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EE60C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMetricForm.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267498600, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267498620, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2672EE7F4(uint64_t a1)
{
  v2 = sub_2672EE8F8(&qword_2800FA278);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EE85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EE8F8(&qword_2800FA278);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EE8F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMetricForm(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMetricName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x555F43495254454DLL, 0xEE004E574F4E4B4ELL, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x535F43495254454DLL, 0xEA00000000005452, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x455F43495254454DLL, 0xEA00000000004450, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x555F43495254454DLL, 0xEB00000000524655, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x4C5F43495254454DLL, 0xED000048434E5541, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672EEC44(uint64_t a1)
{
  v2 = sub_2672EED48(&qword_2800FA288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EECAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EED48(&qword_2800FA288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EED48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMetricName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMetricScope.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674986A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x80000002674986C0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2672EEF30(uint64_t a1)
{
  v2 = sub_2672EF034(&qword_2800FA298);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672EEF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672EF034(&qword_2800FA298);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672EF034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaMetricScope(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaMultiUserSetup.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v46 = sub_26738113C();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v44 = *MEMORY[0x277D3E538];
  v10 = *(v2 + 104);
  v47 = v2 + 104;
  v10(v5);
  v45 = v10;
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v49 = *(v12 + 56);
  v13 = v12 + 56;
  v49(v9, 0, 1, v11);
  v43 = v13;
  v48 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026746AEE0);
  v14(v50, 0);
  v41 = "numGuestsAccepted";
  v15 = v44;
  v16 = v46;
  (v10)(v5, v44, v46);
  v50[0] = 1;
  sub_26738114C();
  v17 = v49;
  v49(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v41 | 0x8000000000000000);
  v18(v50, 0);
  v41 = "numParticipantsWithTrust";
  v19 = v15;
  v20 = v16;
  v21 = v16;
  v22 = v45;
  (v45)(v5, v19, v20);
  v50[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v41 | 0x8000000000000000);
  v23(v50, 0);
  v41 = "dRecognizeMyVoice";
  v24 = v44;
  (v22)(v5, v44, v21);
  v50[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v41 | 0x8000000000000000);
  v25(v50, 0);
  v41 = "gnizeMyVoiceEnabled";
  v26 = v46;
  (v22)(v5, v24, v46);
  v50[0] = 1;
  sub_26738114C();
  v27 = v49;
  v49(v9, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v41 | 0x8000000000000000);
  v28(v50, 0);
  v41 = "numVoiceProfilesAvailable";
  v44 = *MEMORY[0x277D3E508];
  v29 = v45;
  v45(v5);
  v50[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v41 | 0x8000000000000000);
  v30(v50, 0);
  v40 = "onalRequestsEnabled";
  v31 = v44;
  (v29)(v5, v44, v26);
  v50[0] = 1;
  sub_26738114C();
  v42 = v11;
  v32 = v49;
  v49(v9, 0, 1, v11);
  v33 = sub_2673811AC();
  v41 = 0xD000000000000020;
  sub_266EC637C(v9, 0xD000000000000020, v40 | 0x8000000000000000);
  v33(v50, 0);
  v40 = "hingSiriLanguage";
  v34 = v31;
  v36 = v45;
  v35 = v46;
  (v45)(v5, v34, v46);
  v50[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v11);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, v41, v40 | 0x8000000000000000);
  v37(v50, 0);
  (v36)(v5, v44, v35);
  v50[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v42);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x800000026746B030);
  return v38(v50, 0);
}

uint64_t sub_2672EF968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672EF9CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672EFA30()
{
  result = qword_2800F9FB0;
  if (!qword_2800F9FB0)
  {
    sub_2672EFA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9FB0);
  }

  return result;
}

unint64_t sub_2672EFA88()
{
  result = qword_2800F9FA8;
  if (!qword_2800F9FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9FA8);
  }

  return result;
}

uint64_t static SISchemaMultiUserState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA0F0, 0x277D5A8B0);
  sub_266ECAF2C(&qword_2800FA0E8, &qword_2800FA0F0, 0x277D5A8B0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656C6C6F726E65, 0xED00007372657355);
  return v5(v7, 0);
}

uint64_t sub_2672EFCB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA0F0, 0x277D5A8B0);
  sub_266ECAF2C(&qword_2800FA0E8, &qword_2800FA0F0, 0x277D5A8B0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656C6C6F726E65, 0xED00007372657355);
  return v5(v7, 0);
}

uint64_t sub_2672EFE5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672EFEC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaOpaqueClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645796E61, 0xEF64616F6C796150);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F9F30, 0x277D5A828);
  sub_266ECAF2C(&qword_2800F9F28, &qword_2800F9F30, 0x277D5A828);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xEB00000000644974);
  v12(v14, 0);
  sub_266ECB128(&unk_287892510);
  return sub_2673811CC();
}

uint64_t sub_2672F0288(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F0320()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F03EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F0450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F04B0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA2A0, &qword_2800FA2A8, 0x277D5A970);
  a1[2] = sub_266ECAF2C(&qword_2800FA2B0, &qword_2800FA2A8, 0x277D5A970);
  result = sub_266ECAF2C(&qword_2800FA2B8, &qword_2800FA2A8, 0x277D5A970);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaOrderedAnyEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F95D0, 0x277D5A820);
  sub_266ECAF2C(&qword_2800F95D8, &qword_2800F95D0, 0x277D5A820);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x617461646174656DLL, 0xE800000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E657665, 0xE500000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287892540);
  return sub_2673811CC();
}

uint64_t sub_2672F0854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F08EC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F09B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F0A1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F0A7C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA2C8, &qword_2800F1DA0, 0x277D5A978);
  a1[2] = sub_266ECAF2C(&qword_2800FA2D0, &qword_2800F1DA0, 0x277D5A978);
  result = sub_266ECAF2C(&qword_2800FA2D8, &qword_2800F1DA0, 0x277D5A978);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaPersonalization.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = sub_26738113C();
  v25 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23[1] = a2;
  sub_26738119C();
  v24 = "iri.heartbeat.Personalization";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v29[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v26 = *(v14 - 8);
  v15 = *(v26 + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v24 | 0x8000000000000000);
  v16(v29, 0);
  v13(v7, v12, v25);
  v29[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674987F0);
  v17(v29, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x7465536563696F76, 0xED000073676E6974);
  v18(v29, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v28, 0x7465536563696F76, 0xED000073676E6974);
  if (!(*(v26 + 48))(v21, 1, v14))
  {
    sub_266ECB128(&unk_287892570);
    sub_26738115C();
  }

  (v20)(v28, 0);
  return v19(v29, 0);
}

uint64_t sub_2672F1038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F109C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaPNRFatalError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA2E0, 0x277D5A988);
  sub_266ECAF2C(&qword_2800FA2E8, &qword_2800FA2E0, 0x277D5A988);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x69796C7265646E75, 0xEF726F727245676ELL);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026747DA10);
  return v8(v10, 0);
}

uint64_t sub_2672F1450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F14B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaPNRFatalErrorInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D6F44726F727265, 0xEB000000006E6961);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  return v16(v20, 0);
}

uint64_t sub_2672F1884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F18E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F194C()
{
  result = qword_2800FA2E8;
  if (!qword_2800FA2E8)
  {
    sub_2672F19A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA2E8);
  }

  return result;
}

unint64_t sub_2672F19A4()
{
  result = qword_2800FA2E0;
  if (!qword_2800FA2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA2E0);
  }

  return result;
}

uint64_t static SISchemaPNRSourceOfTTS.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674988A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674988D0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x80000002674988F0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267498910, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267498940, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267498960, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672F1D58(uint64_t a1)
{
  v2 = sub_2672F1E5C(&qword_2800FA2F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F1DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F1E5C(&qword_2800FA2F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F1E5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaPNRSourceOfTTS(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaPNRSpeechError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674989B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x80000002674989E0, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267498A00, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267498A20, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267498A40, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267498A60, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x8000000267498A80, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267498AB0, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267498AD0, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267498AF0, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x8000000267498B10, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267498B40, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000022, 0x8000000267498B60, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000022, 0x8000000267498B90, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002ALL, 0x8000000267498BC0, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002ALL, 0x8000000267498BF0, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_2672F2678(uint64_t a1)
{
  v2 = sub_2672F277C(&qword_2800FA308);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F26E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F277C(&qword_2800FA308);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F277C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaPNRSpeechError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaPNRSpeechRecognitionSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267498C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267498C90, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267498CC0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672F29D8(uint64_t a1)
{
  v2 = sub_2672F2ADC(&qword_2800FA318);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F2A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F2ADC(&qword_2800FA318);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F2ADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaPNRSpeechRecognitionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaPNRSpeechRecognitionSourceContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaPNRSpeechRecognitionSource(0);
  sub_2672F2E10(&qword_2800FA310, type metadata accessor for SISchemaPNRSpeechRecognitionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267498D30);
  return v5(v7, 0);
}

uint64_t sub_2672F2D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F2D68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F2E10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672F2E58()
{
  result = qword_2800F9CB8;
  if (!qword_2800F9CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9CB8);
  }

  return result;
}

uint64_t static SISchemaPNRTextToSpeechRequestReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v33 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v32 = *(v2 + 104);
  v34 = v2 + 104;
  v11 = v1;
  v32(v5, v10, v1);
  v35[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v31 = v13 + 56;
  v29 = v12;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7373416563696F76, 0xED000079654B7465);
  v15(v35, 0);
  v28 = "oSpeechRequestReceived";
  v16 = v11;
  v30 = v11;
  v17 = v11;
  v18 = v32;
  v32(v5, v10, v17);
  v35[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v28 | 0x8000000000000000);
  v19(v35, 0);
  v20 = *MEMORY[0x277D3E4E8];
  v18(v5, v20, v16);
  v35[0] = 1;
  sub_26738114C();
  v21 = v29;
  v14(v9, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x74536D7261577369, 0xEB00000000747261);
  v22(v35, 0);
  v18(v5, v20, v30);
  v35[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267498DB0);
  v23(v35, 0);
  type metadata accessor for SISchemaPNRSourceOfTTS(0);
  sub_2672F3628(&qword_2800FA2F0, type metadata accessor for SISchemaPNRSourceOfTTS);
  sub_26738120C();
  v14(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x664F656372756F73, 0xEB00000000535454);
  v24(v35, 0);
  type metadata accessor for SISchemaPNRSpeechError(0);
  sub_2672F3628(&qword_2800FA300, type metadata accessor for SISchemaPNRSpeechError);
  sub_26738120C();
  v14(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x7245686365657073, 0xEB00000000726F72);
  return v25(v35, 0);
}

uint64_t sub_2672F351C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F3580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F3628(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672F3670()
{
  result = qword_2800F9CA8;
  if (!qword_2800F9CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9CA8);
  }

  return result;
}

uint64_t static SISchemaPrivacyTier.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x305F52454954, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x315F52454954, 0xE600000000000000, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x325F52454954, 0xE600000000000000, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x335F52454954, 0xE600000000000000, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672F391C(uint64_t a1)
{
  v2 = sub_2672F3A20(&qword_2800FA328);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F3984(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F3A20(&qword_2800FA328);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F3A20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaPrivacyTier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaProduct.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x5F544355444F5250, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267498E20, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267498E40, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672F3C80(uint64_t a1)
{
  v2 = sub_2672F3D84(&qword_2800FA330);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F3CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F3D84(&qword_2800FA330);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F3D84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaProduct(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaProgramCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267498E90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x434D4152474F5250, 0xEF534F495F45444FLL, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267498EB0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x8000000267498ED0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x8000000267498EF0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x8000000267498F10, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672F413C(uint64_t a1)
{
  v2 = sub_2672F4240(&qword_2800FA338);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F41A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F4240(&qword_2800FA338);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F4240(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaProgramCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaProvisionalEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645796E61, 0xE800000000000000);
  v11(v20, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = v18;
  v14 = *(v19 + 104);
  v19 += 104;
  v14(v4, v12, v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x644965707974, 0xE600000000000000);
  v15(v20, 0);
  v14(v4, *MEMORY[0x277D3E510], v13);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F6973726576, 0xE700000000000000);
  v16(v20, 0);
  sub_266ECB128(&unk_2878925A0);
  return sub_2673811CC();
}

uint64_t sub_2672F4654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F46EC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F47B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F481C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F487C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA340, &qword_2800F1E30, 0x277D5A9A8);
  a1[2] = sub_266ECAF2C(&qword_2800FA348, &qword_2800F1E30, 0x277D5A9A8);
  result = sub_266ECAF2C(&qword_2800FA350, &qword_2800F1E30, 0x277D5A9A8);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaPunchOut.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v30 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v27[2] = v4 + 104;
  v29 = v12;
  v31 = v3;
  v13(v7, v12, v3);
  v28 = v13;
  v33[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v27[1] = v15 + 56;
  v16(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x4449707061, 0xE500000000000000);
  v17(v33, 0);
  v13(v7, v12, v3);
  v33[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D656863536C7275, 0xE900000000000065);
  v18(v33, 0);
  sub_266ECB294(0, &qword_2800FA1D0, 0x277D5ACB0);
  sub_266ECAF2C(&qword_2800FA1D8, &qword_2800FA1D0, 0x277D5ACB0);
  sub_26738120C();
  v16(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E6F4377656976, 0xED000072656E6961);
  v19(v33, 0);
  v20 = v28;
  v28(v7, *MEMORY[0x277D3E4F8], v31);
  v33[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D656C4577656976, 0xED00004449746E65);
  v21(v33, 0);
  type metadata accessor for SISchemaPunchOutUI(0);
  sub_2672F5134();
  sub_26738120C();
  v27[0] = v14;
  v16(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x74754F68636E7570, 0xEA00000000004955);
  v22(v33, 0);
  v32 = "iri.uei.PunchOut";
  v23 = v31;
  v20(v7, *MEMORY[0x277D3E4E8], v31);
  v33[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v32 | 0x8000000000000000);
  v24(v33, 0);
  v20(v7, v29, v23);
  v33[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v27[0]);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x4449656361, 0xE500000000000000);
  return v25(v33, 0);
}

uint64_t sub_2672F5070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F50D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F5134()
{
  result = qword_2800FA358;
  if (!qword_2800FA358)
  {
    type metadata accessor for SISchemaPunchOutUI(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA358);
  }

  return result;
}

uint64_t static SISchemaPunchOutUI.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267498FE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267499000, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267499020, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267499040, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x54554F48434E5550, 0xEF4C4C41435F4955, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x8000000267499060, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267499080, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x80000002674990A0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2672F5624(uint64_t a1)
{
  v2 = sub_2672F5728(&qword_2800FA360);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F568C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F5728(&qword_2800FA360);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F5728(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaPunchOutUI(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaRawSpeechProfileData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 114, 0xE100000000000000);
  return v10(v12, 0);
}

uint64_t sub_2672F59AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F5A10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F5A74()
{
  result = qword_2800FA368;
  if (!qword_2800FA368)
  {
    sub_2672F5ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA368);
  }

  return result;
}

unint64_t sub_2672F5ACC()
{
  result = qword_2800FA370;
  if (!qword_2800FA370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA370);
  }

  return result;
}

uint64_t static SISchemaRedactableString.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26738113C();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaRedactionState(0);
  sub_2672F60C0(&qword_2800FA378, type metadata accessor for SISchemaRedactionState);
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F69746361646572, 0xEE0065746174536ELL);
  v13(v28, 0);
  (*(v3 + 104))(v6, *MEMORY[0x277D3E530], v24);
  v28[0] = 0;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54(v21 > 1, v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_2672F5FB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F6018(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F60C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672F6108()
{
  result = qword_2800FA020;
  if (!qword_2800FA020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA020);
  }

  return result;
}

uint64_t static SISchemaRedactionState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x4445544341444552, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v8;

  return v1(v9, 0);
}

uint64_t sub_2672F6268(uint64_t a1)
{
  v2 = sub_2672F636C(&qword_2800FA380);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F62D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F636C(&qword_2800FA380);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F636C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaRedactionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaRequestLink.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3C88, 0x277D5A9E0);
  sub_266ECAF2C(&qword_2800F3C90, &qword_2800F3C88, 0x277D5A9E0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746567726174, 0xE600000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_2878925D8);
  return sub_2673811CC();
}

uint64_t sub_2672F660C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F66A4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F6770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F67D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F6834(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA388, &qword_2800F1E50, 0x277D5A9D0);
  a1[2] = sub_266ECAF2C(&qword_2800FA390, &qword_2800F1E50, 0x277D5A9D0);
  result = sub_266ECAF2C(&qword_2800FA398, &qword_2800F1E50, 0x277D5A9D0);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaRequestLinkInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaComponentName(0);
  sub_2672B5FC8();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656E6F706D6F63, 0xE900000000000074);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 1684632949, 0xE400000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287892608);
  return sub_2673811CC();
}

uint64_t sub_2672F6BCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F6C30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaResponseCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674991F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267499210, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267499230, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267499250, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267499270, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x8000000267499290, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x80000002674992B0, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x80000002674992D0, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x80000002674992F0, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x8000000267499320, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x8000000267499340, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x8000000267499360, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267499380, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x80000002674993A0, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_2672F73D8(uint64_t a1)
{
  v2 = sub_2672F74DC(&qword_2800FA3A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F7440(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F74DC(&qword_2800FA3A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F74DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaResponseCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSelfTriggerSuppressionMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = "lfTriggerSuppressionMetrics";
  v10 = *(v2 + 104);
  v10(v5, *MEMORY[0x277D3E508], v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v18 | 0x8000000000000000);
  v13(v21, 0);
  v10(v5, *MEMORY[0x277D3E518], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000030, 0x8000000267499420);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F4690, 0x277D588C8);
  sub_266ECAF2C(&qword_2800F4688, &qword_2800F4690, 0x277D588C8);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267499460);
  return v15(v21, 0);
}

uint64_t sub_2672F792C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F7990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaSendWithoutConfirmation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24 = a1;
  sub_26738119C();
  v12 = *(v3 + 104);
  v26 = *MEMORY[0x277D3E4E8];
  v11 = v26;
  v12(v6, v26, v2);
  v25 = v3 + 104;
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x656C62616E457369, 0xE900000000000064);
  v16(v28, 0);
  v23 = "nfirmationEnabled";
  v17 = v11;
  v18 = v27;
  v12(v6, v17, v27);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v23 | 0x8000000000000000);
  v19(v28, 0);
  v12(v6, v26, v18);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267469A00);
  return v20(v28, 0);
}

uint64_t sub_2672F7E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F7E98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F7EFC()
{
  result = qword_2800FA0A0;
  if (!qword_2800FA0A0)
  {
    sub_2672F7F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0A0);
  }

  return result;
}

unint64_t sub_2672F7F54()
{
  result = qword_2800FA098;
  if (!qword_2800FA098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA098);
  }

  return result;
}

uint64_t static SISchemaServerEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  MEMORY[0x28223BE20](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA3A8, 0x277D5AA00);
  sub_266ECAF2C(&qword_2800FA3B0, &qword_2800FA3A8, 0x277D5AA00);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800FA3B8, 0x277D5AC88);
  sub_266ECAF2C(&qword_2800FA3C0, &qword_2800FA3B8, 0x277D5AC88);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x80000002674994F0);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800F9AB8, 0x277D5A830);
  sub_266ECAF2C(&qword_2800F9AC0, &qword_2800F9AB8, 0x277D5A830);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267499510);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800FA3C8, 0x277D5AA70);
  sub_266ECAF2C(&qword_2800FA3D0, &qword_2800FA3C8, 0x277D5AA70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x65746E496E727574, 0xEF6E6F6974636172);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800FA3D8, 0x277D5AA30);
  sub_266ECAF2C(&qword_2800FA3E0, &qword_2800FA3D8, 0x277D5AA30);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267499530);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F9AD8, 0x277D5A848);
  sub_266ECAF2C(&qword_2800F9AE0, &qword_2800F9AD8, 0x277D5A848);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267499550);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800FA3E8, 0x277D5AA08);
  sub_266ECAF2C(&qword_2800FA3F0, &qword_2800FA3E8, 0x277D5AA08);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267499570);
  v16(v29, 0);
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54(v22 > 1, v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v15, v28);
  v17(v29, 0);
  sub_266ECB128(&unk_287892638);
  return sub_2673811CC();
}

uint64_t sub_2672F8808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F88A0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F896C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F89D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F8A30(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA3F8, &qword_2800FA400, 0x277D5A9F8);
  a1[2] = sub_266ECAF2C(&qword_2800FA408, &qword_2800FA400, 0x277D5A9F8);
  result = sub_266ECAF2C(&qword_2800FA410, &qword_2800FA400, 0x277D5A9F8);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaServerEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v32 = *MEMORY[0x277D3E4F8];
  v39 = v2;
  v40 = v3 + 104;
  v37 = v11;
  v11(v6);
  v42[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v35 = *(v13 + 56);
  v36 = v13 + 56;
  v35(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  v34 = v10;
  sub_266EC637C(v10, 0x44496E727574, 0xE600000000000000);
  v14(v42, 0);
  v38 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v41, 0x44496E727574, 0xE600000000000000);
  v17 = *(v13 + 48);
  v33 = v13 + 48;
  v31 = v17;
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_287892668);
    sub_26738115C();
  }

  (v16)(v41, 0);
  v15(v42, 0);
  v19 = v39;
  v20 = v37;
  v37(v6, *MEMORY[0x277D3E510], v39);
  v42[0] = 1;
  v21 = v34;
  sub_26738114C();
  v22 = v35;
  v35(v21, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v21, 0x6D617473656D6974, 0xEB00000000734E70);
  v23(v42, 0);
  v20(v6, v32, v19);
  v42[0] = 1;
  sub_26738114C();
  v22(v21, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v21, 0x6976654469726973, 0xEC00000044496563);
  v24(v42, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v41, 0x6976654469726973, 0xEC00000044496563);
  if (!v31(v27, 1, v12))
  {
    sub_266ECB128(&unk_287892698);
    sub_26738115C();
  }

  (v26)(v41, 0);
  v25(v42, 0);
  v37(v6, *MEMORY[0x277D3E530], v39);
  v42[0] = 1;
  v28 = v34;
  sub_26738114C();
  v35(v28, 0, 1, v12);
  v29 = sub_2673811AC();
  sub_266EC637C(v28, 0x6F50726576726573, 0xE900000000000064);
  return v29(v42, 0);
}

uint64_t sub_2672F9148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F91AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F9210()
{
  result = qword_2800FA3B0;
  if (!qword_2800FA3B0)
  {
    sub_2672F9268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3B0);
  }

  return result;
}

unint64_t sub_2672F9268()
{
  result = qword_2800FA3A8;
  if (!qword_2800FA3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3A8);
  }

  return result;
}

uint64_t static SISchemaServerGeneratedDismissal.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaServerGeneratedDismissalReason(0);
  sub_2672F95A4(&qword_2800FA420, type metadata accessor for SISchemaServerGeneratedDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ELL, 0x8000000267499600);
  return v5(v7, 0);
}

uint64_t sub_2672F9498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F94FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F95A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672F95EC()
{
  result = qword_2800FA3E8;
  if (!qword_2800FA3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3E8);
  }

  return result;
}

uint64_t static SISchemaServerGeneratedDismissalReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267499660, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x8000000267499690, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x80000002674996D0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267499710, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003BLL, 0x8000000267499750, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267499790, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672F99A0(uint64_t a1)
{
  v2 = sub_2672F9AA4(&qword_2800FA428);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F9A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F9AA4(&qword_2800FA428);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F9AA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaServerGeneratedDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriCue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriCueType(0);
  sub_2672F9F4C(&qword_2800FA430, type metadata accessor for SISchemaSiriCueType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5465754369726973, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_2672F9CB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriCueType(0);
  sub_2672F9F4C(&qword_2800FA430, type metadata accessor for SISchemaSiriCueType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5465754369726973, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_2672F9E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F9EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F9F4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672F9F94()
{
  result = qword_2800F9B18;
  if (!qword_2800F9B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B18);
  }

  return result;
}

uint64_t static SISchemaSiriCueType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267499820, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267499850, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267499870, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267499890, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FA268(uint64_t a1)
{
  v2 = sub_2672FA36C(&qword_2800FA438);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FA2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FA36C(&qword_2800FA438);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FA36C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriCueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriDirectAction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674998E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267499910, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267499940, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267499960, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x8000000267499980, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674999A0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674999C0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x80000002674999E0, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267499A00, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x8000000267499A20, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267499A40, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_2672FA958(uint64_t a1)
{
  v2 = sub_2672FAA5C(&qword_2800FA440);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FA9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FAA5C(&qword_2800FA440);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FAA5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriDirectAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriHardwareButtonLongPressBehavior.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x8000000267499AA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267499AD0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267499B10, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x8000000267499B40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FAD28(uint64_t a1)
{
  v2 = sub_2672FAE2C(&qword_2800FA448);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FAD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FAE2C(&qword_2800FA448);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FAE2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriInCallEnablementState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267499BC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267499BF0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267499C20, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267499C50, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FB0F4(uint64_t a1)
{
  v2 = sub_2672FB1F8(&qword_2800FA450);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FB15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FB1F8(&qword_2800FA450);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FB1F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriInCallEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriPauseTimeState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267499CB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267499CD0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267499CF0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267499D10, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FB4C8(uint64_t a1)
{
  v2 = sub_2672FB5CC(&qword_2800FA458);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FB530(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FB5CC(&qword_2800FA458);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FB5CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriPauseTimeState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriPresentationType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000033, 0x8000000267499D60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267499DA0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267499DC0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267499DE0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267499E00, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267499E20, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267499E50, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267499E80, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2672FBA58(uint64_t a1)
{
  v2 = sub_2672FBB5C(&qword_2800FA468);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FBAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FBB5C(&qword_2800FA468);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FBB5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriPresentationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriProductType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267499ED0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267499F00, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267499F20, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267499F40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FBE28(uint64_t a1)
{
  v2 = sub_2672FBF2C(&qword_2800FA478);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FBE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FBF2C(&qword_2800FA478);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FBF2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriProductType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriResponseContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6850676F6C616964, 0xEB00000000657361);
  v11(v15, 0);
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_2672FC464(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267499F90);
  v12(v15, 0);
  type metadata accessor for SISchemaSiriResponseMode(0);
  sub_2672FC464(&qword_2800FA480, type metadata accessor for SISchemaSiriResponseMode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267499FB0);
  return v13(v15, 0);
}

uint64_t sub_2672FC358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FC3BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FC464(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672FC4AC()
{
  result = qword_2800FA490;
  if (!qword_2800FA490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA490);
  }

  return result;
}

uint64_t static SISchemaSiriResponseMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026749A000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026749A030, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A050, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026749A070, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026749A090, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026749A0B0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749A0E0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x800000026749A100, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2672FC940(uint64_t a1)
{
  v2 = sub_2672FCA44(&qword_2800FA498);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FC9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FCA44(&qword_2800FA498);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FCA44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriResponseMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUILocation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000027, 0x800000026749A150, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749A180, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026749A1A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026749A1C0, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_2878926C8);
  return sub_26738112C();
}

uint64_t sub_2672FCD20(uint64_t a1)
{
  v2 = sub_2672FCE24(&qword_2800FA4A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FCD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FCE24(&qword_2800FA4A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FCE24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUILocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUISettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v32 = *MEMORY[0x277D3E4E8];
  v33 = v2;
  v39 = v3 + 104;
  v37 = v11;
  (v11)(v6);
  v42[0] = 1;
  v31 = v6;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v35 = *(v13 + 56);
  v36 = v13 + 56;
  v35(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026749A210);
  v14(v42, 0);
  v40 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v41, 0xD00000000000001ELL, 0x800000026749A210);
  v17 = *(v13 + 48);
  v38 = v13 + 48;
  v34 = v17;
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_2878926F0);
    sub_26738115C();
  }

  (v16)(v41, 0);
  v15(v42, 0);
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v37(v31, v32, v33);
  v42[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026749A230);
  v22(v42, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v41, 0xD000000000000014, 0x800000026749A230);
  if (!v34(v25, 1, v12))
  {
    sub_266ECB128(&unk_287892718);
    sub_26738115C();
  }

  (v24)(v41, 0);
  v23(v42, 0);
  v37(v19, v20, v21);
  v42[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026749A250);
  v26(v42, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v41, 0xD000000000000014, 0x800000026749A250);
  if (!v34(v29, 1, v12))
  {
    sub_266ECB128(&unk_287892740);
    sub_26738115C();
  }

  (v28)(v41, 0);
  v27(v42, 0);
  sub_266ECB128(&unk_287892768);
  return sub_2673811CC();
}

uint64_t sub_2672FD460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FD4C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672FD528()
{
  result = qword_2800FA008;
  if (!qword_2800FA008)
  {
    sub_2672FD580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA008);
  }

  return result;
}

unint64_t sub_2672FD580()
{
  result = qword_2800FA000;
  if (!qword_2800FA000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA000);
  }

  return result;
}

uint64_t static SISchemaSiriUISize.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026749A2A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749A2C0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A2F0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672FD7E4(uint64_t a1)
{
  v2 = sub_2672FD8E8(&qword_2800FA4B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FD84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FD8E8(&qword_2800FA4B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FD8E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUISize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUIState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x800000026749A340, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x800000026749A370, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026749A390, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026749A3B0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x800000026749A3D0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x800000026749A3F0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672FDC94(uint64_t a1)
{
  v2 = sub_2672FDD98(&qword_2800FA4C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FDCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FDD98(&qword_2800FA4C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FDD98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUIState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUnavailableReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026749A440, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749A460, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026749A490, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672FDFF0(uint64_t a1)
{
  v2 = sub_2672FE0F4(&qword_2800FA4D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FE058(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FE0F4(&qword_2800FA4D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FE0F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUnavailableReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriVoiceTriggerSettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v26 = "riVoiceTriggerSettings";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v28 = v3 + 104;
  v24 = v11;
  v12(v6, v11, v2);
  v13 = v12;
  v23 = v12;
  v29[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 0, 1, v14);
  v16 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v26 | 0x8000000000000000);
  v17(v29, 0);
  v26 = "isHeySiriTriggerPhraseEnabled";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v26 | 0x8000000000000000);
  v20(v29, 0);
  v23(v6, v24, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026749A540);
  return v21(v29, 0);
}

uint64_t sub_2672FE54C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FE5B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672FE614()
{
  result = qword_2800FA0C0;
  if (!qword_2800FA0C0)
  {
    sub_2672FE66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0C0);
  }

  return result;
}

unint64_t sub_2672FE66C()
{
  result = qword_2800FA0B8;
  if (!qword_2800FA0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA0B8);
  }

  return result;
}

uint64_t static SISchemaSpeechResultCandidateSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(1, 0x535F544C55534552, 0xEF44455443454C45, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026749A5A0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2672FE858(uint64_t a1)
{
  v2 = sub_2672FE95C(&qword_2800FA4E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FE8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FE95C(&qword_2800FA4E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FE95C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpeechResultCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSpeechResultSelected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v11(v14, 0);
  type metadata accessor for SISchemaSpeechResultCandidateSource(0);
  sub_2672FEDCC(&qword_2800FA4E0, type metadata accessor for SISchemaSpeechResultCandidateSource);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  return v12(v14, 0);
}

uint64_t sub_2672FECC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FED24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FEDCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672FEE14()
{
  result = qword_2800FA3D8;
  if (!qword_2800FA3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3D8);
  }

  return result;
}

uint64_t static SISchemaSpeechTranscription.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x4449656361, 0xE500000000000000);
  v11(v14, 0);
  type metadata accessor for SISchemaSpeechTranscriptionType(0);
  sub_2672FF28C(&qword_2800FA4F0, type metadata accessor for SISchemaSpeechTranscriptionType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026749A620);
  return v12(v14, 0);
}

uint64_t sub_2672FF180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FF1E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FF28C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672FF2D4()
{
  result = qword_2800F9B38;
  if (!qword_2800F9B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B38);
  }

  return result;
}

uint64_t static SISchemaSpeechTranscriptionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000039, 0x800000026749A670, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026749A6B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026749A6D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026749A6F0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672FF5A4(uint64_t a1)
{
  v2 = sub_2672FF6A8(&qword_2800FA4F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FF60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FF6A8(&qword_2800FA4F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FF6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpeechTranscriptionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSpokenNotificationsWhitelistSetting.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 1162760014, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x53544341544E4F43, 0xE800000000000000, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x53544E45434552, 0xE700000000000000, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x454E4F5952455645, 0xE800000000000000, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x455449524F564146, 0xE800000000000000, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672FF9C4(uint64_t a1)
{
  v2 = sub_2672FFAC8(&qword_2800FA500);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FFA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FFAC8(&qword_2800FA500);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FFAC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSubRequestType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026749A7A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v90;

  v1(v104, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026749A7C0, v11);
  v12 = *v9;
  *v9 = v91;

  v7(v104, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A7E0, v17);
  v18 = *v15;
  *v15 = v92;

  v13(v104, 0);
  v19 = sub_266ECB128(&unk_287892790);
  v21 = v20;
  v22 = sub_2673810FC();
  v24 = v23;
  v25 = *v23;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v24;
  *v24 = 0x8000000000000000;
  sub_266ECD4CC(v19, v21, 2, v26);
  *v24 = v93;
  v22(v104, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749A800, v31);
  v32 = *v29;
  *v29 = v94;

  v27(v104, 0);
  v33 = sub_266ECB128(&unk_2878927B8);
  v35 = v34;
  v36 = sub_2673810FC();
  v38 = v37;
  v39 = *v37;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v38;
  *v38 = 0x8000000000000000;
  sub_266ECD4CC(v33, v35, 3, v40);
  *v38 = v95;
  v36(v104, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = *v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026749A820, v45);
  v46 = *v43;
  *v43 = v96;

  v41(v104, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026749A850, v51);
  v52 = *v49;
  *v49 = v97;

  v47(v104, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749A870, v57);
  v58 = *v55;
  *v55 = v98;

  v53(v104, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = *v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x800000026749A890, v63);
  v64 = *v61;
  *v61 = v99;

  v59(v104, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = *v66;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x800000026749A8C0, v69);
  v70 = *v67;
  *v67 = v100;

  v65(v104, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x800000026749A8F0, v75);
  v76 = *v73;
  *v73 = v101;

  v71(v104, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000024, 0x800000026749A910, v81);
  v82 = *v79;
  *v79 = v102;

  v77(v104, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = *v84;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x800000026749A940, v87);
  v88 = *v85;
  *v85 = v103;

  return v83(v104, 0);
}

uint64_t sub_2673001FC(uint64_t a1)
{
  v2 = sub_267300300(&qword_2800FA508);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267300264(uint64_t a1, uint64_t a2)
{
  v4 = sub_267300300(&qword_2800FA508);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267300300(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSubRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTapToEditInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026749A9B0);
  return v10(v12, 0);
}

uint64_t sub_267300594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673005F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730065C()
{
  result = qword_2800FA208;
  if (!qword_2800FA208)
  {
    sub_2673006B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA208);
  }

  return result;
}

unint64_t sub_2673006B4()
{
  result = qword_2800FA200;
  if (!qword_2800FA200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA200);
  }

  return result;
}

uint64_t static SISchemaTemperatureScale.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026749AA00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026749AA20, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749AA40, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267300918(uint64_t a1)
{
  v2 = sub_267300A1C(&qword_2800FA510);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267300980(uint64_t a1, uint64_t a2)
{
  v4 = sub_267300A1C(&qword_2800FA510);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267300A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTemperatureScale(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTextToSpeechBegin.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v3 + 104))(v6, *MEMORY[0x277D3E530], v2);
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x4449656361, 0xE500000000000000);
  v14(v26, 0);
  type metadata accessor for SISchemaAudioOutputRoute(0);
  sub_267301024();
  v24[1] = a1;
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026749AA90);
  v15(v26, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v25, 0xD000000000000010, 0x800000026749AA90);
  v24[0] = *(v12 + 48);
  if (!(v24[0])(v18, 1, v11))
  {
    sub_266ECB128(&unk_2878927E0);
    sub_26738115C();
  }

  (v17)(v25, 0);
  v16(v26, 0);
  sub_266ECB294(0, &qword_2800F9950, 0x277D5A8D8);
  sub_266ECAF2C(&qword_2800F9958, &qword_2800F9950, 0x277D5A8D8);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026748EED0);
  v19(v26, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v25, 0xD000000000000019, 0x800000026748EED0);
  if (!(v24[0])(v22, 1, v11))
  {
    sub_266ECB128(&unk_287892808);
    sub_26738115C();
  }

  (v21)(v25, 0);
  return v20(v26, 0);
}

uint64_t sub_267300F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267300FC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267301024()
{
  result = qword_2800F9978;
  if (!qword_2800F9978)
  {
    type metadata accessor for SISchemaAudioOutputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9978);
  }

  return result;
}

uint64_t static SISchemaTextToSpeechEnd.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x4449656361, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_267301308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730136C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673013D0()
{
  result = qword_2800F9B60;
  if (!qword_2800F9B60)
  {
    sub_267301428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9B60);
  }

  return result;
}

unint64_t sub_267301428()
{
  result = qword_2800F9B58;
  if (!qword_2800F9B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B58);
  }

  return result;
}

uint64_t static SISchemaTranscriptEventType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026749AB10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026749AB30, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026749AB60, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026749AB90, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026749ABD0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x800000026749AC00, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x800000026749AC30, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x800000026749AC60, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x800000026749AC90, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_26730192C(uint64_t a1)
{
  v2 = sub_267301A30(&qword_2800FA518);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267301994(uint64_t a1, uint64_t a2)
{
  v4 = sub_267301A30(&qword_2800FA518);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267301A30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTranscriptEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTranscriptShownReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026749ACF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749AD10, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026749AD40, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267301C88(uint64_t a1)
{
  v2 = sub_267301D8C(&qword_2800FA528);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267301CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267301D8C(&qword_2800FA528);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267301D8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTranscriptShownReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTriggerPhrase.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x800000026749ADB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026749ADD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x800000026749ADF0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267301FE4(uint64_t a1)
{
  v2 = sub_2673020E8(&qword_2800FA530);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730204C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673020E8(&qword_2800FA530);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673020E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTriggerPhrase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTRPRequestLink.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  v7(v10, 0);
  type metadata accessor for SISchemaTRPRequestLinkSource(0);
  sub_26730263C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_287892830);
  return sub_2673811CC();
}

uint64_t sub_267302414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2673024AC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267302578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673025DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730263C()
{
  result = qword_2800FA538;
  if (!qword_2800FA538)
  {
    type metadata accessor for SISchemaTRPRequestLinkSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA538);
  }

  return result;
}

uint64_t sub_267302694(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA540, &qword_2800FA548, 0x277D5AA40);
  a1[2] = sub_266ECAF2C(&qword_2800FA550, &qword_2800FA548, 0x277D5AA40);
  result = sub_266ECAF2C(&qword_2800FA558, &qword_2800FA548, 0x277D5AA40);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaTRPRequestLinkSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026749AE70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749AE90, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026749AEC0, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_287892860);
  return sub_26738112C();
}

uint64_t sub_2673029BC(uint64_t a1)
{
  v2 = sub_267302AC0(&qword_2800FA568);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267302A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_267302AC0(&qword_2800FA568);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267302AC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTRPRequestLinkSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTurnInteraction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463617265746E69, 0xED000064496E6F69);
  return v10(v12, 0);
}

uint64_t sub_267302D5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267302DC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267302E24()
{
  result = qword_2800FA3D0;
  if (!qword_2800FA3D0)
  {
    sub_267302E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3D0);
  }

  return result;
}

unint64_t sub_267302E7C()
{
  result = qword_2800FA3C8;
  if (!qword_2800FA3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3C8);
  }

  return result;
}

uint64_t static SISchemaTurnMTERequest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657571655265746DLL, 0xEC00000064497473);
  return v5(v7, 0);
}

uint64_t sub_2673030A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657571655265746DLL, 0xEC00000064497473);
  return v5(v7, 0);
}

uint64_t sub_267303248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673032AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaTVRemoteInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTVRemoteType(0);
  sub_2673037AC(&qword_2800FA570, type metadata accessor for SISchemaTVRemoteType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795465746F6D6572, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_267303514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTVRemoteType(0);
  sub_2673037AC(&qword_2800FA570, type metadata accessor for SISchemaTVRemoteType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795465746F6D6572, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2673036A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267303704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673037AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2673037F4()
{
  result = qword_2800FA1F0;
  if (!qword_2800FA1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1F0);
  }

  return result;
}

uint64_t static SISchemaTVRemoteType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x800000026749AFC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v58;

  v1(v67, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026749AFE0, v11);
  v12 = *v9;
  *v9 = v59;

  v7(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749B000, v17);
  v18 = *v15;
  *v15 = v60;

  v13(v67, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026749B020, v23);
  v24 = *v21;
  *v21 = v61;

  v19(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026749B040, v29);
  v30 = *v27;
  *v27 = v62;

  v25(v67, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026749B060, v35);
  v36 = *v33;
  *v33 = v63;

  v31(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026749B080, v41);
  v42 = *v39;
  *v39 = v64;

  v37(v67, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001FLL, 0x800000026749B0A0, v47);
  v48 = *v45;
  *v45 = v65;

  v43(v67, 0);
  v49 = sub_266ECB128(&unk_287892890);
  v51 = v50;
  v52 = sub_2673810FC();
  v54 = v53;
  v55 = *v53;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v54;
  *v54 = 0x8000000000000000;
  sub_266ECD4CC(v49, v51, 7, v56);
  *v54 = v66;
  return v52(v67, 0);
}

uint64_t sub_267303CFC(uint64_t a1)
{
  v2 = sub_267303E00(&qword_2800FA578);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267303D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_267303E00(&qword_2800FA578);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267303E00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTVRemoteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTypingRequestTrace.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026749B0F0);
  return v10(v12, 0);
}

uint64_t sub_267304094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673040F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730415C()
{
  result = qword_2800F9EA0;
  if (!qword_2800F9EA0)
  {
    sub_2673041B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9EA0);
  }

  return result;
}

unint64_t sub_2673041B4()
{
  result = qword_2800F9E98;
  if (!qword_2800F9E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E98);
  }

  return result;
}

uint64_t static SISchemaUEIDictationAlternativeConfusionPairsSelected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v34 = v0;
  v35 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v32 = *(v9 + 56);
  v28 = v9 + 56;
  v32(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026749B160);
  v10(v37, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v36, 0xD000000000000015, 0x800000026749B160);
  v31 = *(v9 + 48);
  if (!v31(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878928C0);
    sub_26738115C();
  }

  (v12)(v36, 0);
  v11(v37, 0);
  v14 = *(v35 + 104);
  v30 = *MEMORY[0x277D3E508];
  v35 += 104;
  v29 = v14;
  v14(v33);
  v37[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v15(v37, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v36, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  if (!v31(v18, 1, v8))
  {
    sub_266ECB128(&unk_2878928E8);
    sub_26738115C();
  }

  (v17)(v36, 0);
  v16(v37, 0);
  v29(v33, v30, v34);
  v37[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v19(v37, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v36, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  if (!v31(v22, 1, v8))
  {
    sub_266ECB128(&unk_287892910);
    sub_26738115C();
  }

  (v21)(v36, 0);
  v20(v37, 0);
  v29(v33, v30, v34);
  v37[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v8);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674212E0);
  v23(v37, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v36, 0xD000000000000010, 0x80000002674212E0);
  if (!v31(v26, 1, v8))
  {
    sub_266ECB128(&unk_287892938);
    sub_26738115C();
  }

  (v25)(v36, 0);
  v24(v37, 0);
  sub_266ECB128(&unk_287892960);
  return sub_2673811CC();
}

uint64_t sub_26730495C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673049C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationAlternativeTextPairsSelected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749B160);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000015, 0x800000026749B160);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892990);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267304D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267304D68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationContentEditedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F99C8, 0x277D5A7C0);
  sub_266ECAF2C(&qword_2800F99C0, &qword_2800F99C8, 0x277D5A7C0);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267491C30);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000014, 0x8000000267491C30);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878929B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2673050AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267305110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationDiscoveryToolTip.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x800000026749B250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749B280, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026749B2B0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026749B2E0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026749B310, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x800000026749B340, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x800000026749B370, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x800000026749B3A0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026749B3D0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_26730566C(uint64_t a1)
{
  v2 = sub_267305770(&qword_2800FA588);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673056D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267305770(&qword_2800FA588);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267305770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIDictationDiscoveryToolTip(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDismissalReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000033, 0x800000026749B450, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026749B490, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026749B4D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673059CC(uint64_t a1)
{
  v2 = sub_267305AD0(&qword_2800FA598);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267305A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267305AD0(&qword_2800FA598);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267305AD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDismissed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(0);
  sub_267305F80(&qword_2800FA590, type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267305CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(0);
  sub_267305F80(&qword_2800FA590, type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267305E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267305ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267305F80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267305FC8()
{
  result = qword_2800FA5A8;
  if (!qword_2800FA5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5A8);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDisplayContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800FA5B0, 0x277D5AAB8);
  sub_266ECAF2C(&qword_2800FA5B8, &qword_2800FA5B0, 0x277D5AAB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800FA5A8, 0x277D5AAA8);
  sub_266ECAF2C(&qword_2800FA5A0, &qword_2800FA5A8, 0x277D5AAA8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_26730652C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267306590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipShown.makeTypeManifestAndEnsureFields(in:)()
{
  v14 = sub_26738113C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTip(0);
  sub_267306A70(&qword_2800FA580, type metadata accessor for SISchemaUEIDictationDiscoveryToolTip);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x537069546C6F6F74, 0xEC0000006E776F68);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x696A6F6D45736168, 0xE800000000000000);
  return v11(v15, 0);
}

uint64_t sub_267306964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673069C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267306A70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267306AB8()
{
  result = qword_2800FA5B0;
  if (!qword_2800FA5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5B0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEnablementPromptShown.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[1] = a1;
  sub_26738119C();
  v22 = "iri.odd.ODDDictationProperties";
  v11 = *MEMORY[0x277D3E4E8];
  v23 = *(v3 + 104);
  v24 = v3 + 104;
  v23(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v21 = v12;
  v13(v10, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v22 | 0x8000000000000000);
  v15(v25, 0);
  v22 = "tionEnablementPromptShown";
  v16 = v23;
  v23(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v22 | 0x8000000000000000);
  v17(v25, 0);
  v16(v6, *MEMORY[0x277D3E510], v2);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026749B640);
  return v18(v25, 0);
}

uint64_t sub_267306F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267306F74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267306FD8()
{
  result = qword_2800F9DE0;
  if (!qword_2800F9DE0)
  {
    sub_267307030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9DE0);
  }

  return result;
}

unint64_t sub_267307030()
{
  result = qword_2800F9DD8;
  if (!qword_2800F9DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DD8);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidAlternativesEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v14 = sub_26738113C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEuclidAlternativesEventType(0);
  sub_2673074CC(&qword_2800FA050, type metadata accessor for SISchemaDictationEuclidAlternativesEventType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x707954746E657665, 0xE900000000000065);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E510], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026749B6A0);
  v11(v15, 0);
  sub_266ECB128(&unk_2878929E0);
  return sub_2673811CC();
}

uint64_t sub_2673073C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673074CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267307514()
{
  result = qword_2800F9E58;
  if (!qword_2800F9E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E58);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidAlternativesEventTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA100, 0x277D5A8B8);
  sub_266ECAF2C(&qword_2800FA0F8, &qword_2800FA100, 0x277D5A8B8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xED0000726961506ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F697375666E6F63, 0xED0000726961506ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892A08);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287892A30);
  return sub_2673811CC();
}

uint64_t sub_267307824(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307888(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationEuclidSpeechAlternativesSelected.makeTypeManifestAndEnsureFields(in:)()
{
  v14 = sub_26738113C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType(0);
  sub_267307D70(&qword_2800FA060, type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026749B760);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E510], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026749B6A0);
  return v11(v15, 0);
}

uint64_t sub_267307C64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307CC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267307D70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267307DB8()
{
  result = qword_2800F9E78;
  if (!qword_2800F9E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E78);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA100, 0x277D5A8B8);
  sub_266ECAF2C(&qword_2800FA0F8, &qword_2800FA100, 0x277D5A8B8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xED0000726961506ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F697375666E6F63, 0xED0000726961506ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892A58);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2673080B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730811C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationInputModeSwitchContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA5C0, 0x277D5AAF8);
  sub_266ECAF2C(&qword_2800FA5C8, &qword_2800FA5C0, 0x277D5AAF8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA5D0, 0x277D5AAF0);
  sub_266ECAF2C(&qword_2800FA5D8, &qword_2800FA5D0, 0x277D5AAF0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26730860C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267308670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationInputModeSwitchEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730895C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673089C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267308A24()
{
  result = qword_2800FA5D8;
  if (!qword_2800FA5D8)
  {
    sub_267308A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5D8);
  }

  return result;
}

unint64_t sub_267308A7C()
{
  result = qword_2800FA5D0;
  if (!qword_2800FA5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5D0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationInputModeSwitchStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_267308D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267308D74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267308DD8()
{
  result = qword_2800FA5C8;
  if (!qword_2800FA5C8)
  {
    sub_267308E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5C8);
  }

  return result;
}

unint64_t sub_267308E30()
{
  result = qword_2800FA5C0;
  if (!qword_2800FA5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5C0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationPartialResultUpdated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_2673090C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267309128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730918C()
{
  result = qword_2800F9D30;
  if (!qword_2800F9D30)
  {
    sub_2673091E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9D30);
  }

  return result;
}

unint64_t sub_2673091E4()
{
  result = qword_2800F9D28;
  if (!qword_2800F9D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9D28);
  }

  return result;
}

uint64_t static SISchemaUEIDictationTranscriptionTokenized.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656B6F546D756ELL, 0xE900000000000073);
  return v10(v12, 0);
}

uint64_t sub_267309480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673094E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267309548()
{
  result = qword_2800F9D90;
  if (!qword_2800F9D90)
  {
    sub_2673095A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9D90);
  }

  return result;
}

unint64_t sub_2673095A0()
{
  result = qword_2800F9D88;
  if (!qword_2800F9D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9D88);
  }

  return result;
}

uint64_t static SISchemaUEIDictationVoiceCommandDisambiguationAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_26738113C();
  v27 = *(v25 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v23[1] = v12;
  v24 = v11;
  v26 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v13(v28, 0);
  type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(0);
  sub_267309B70();
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026749B960);
  v14(v28, 0);
  v23[0] = "disambiguationType";
  v15 = *MEMORY[0x277D3E538];
  v16 = *(v27 + 104);
  v27 += 104;
  v17 = v4;
  v18 = v25;
  v16(v4, v15, v25);
  v28[0] = 1;
  sub_26738114C();
  v19 = v24;
  v24(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v23[0] | 0x8000000000000000);
  v20(v28, 0);
  v16(v17, v15, v18);
  v28[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026749B9A0);
  return v21(v28, 0);
}

uint64_t sub_267309AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267309B10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267309B70()
{
  result = qword_2800FA5E0;
  if (!qword_2800FA5E0)
  {
    type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5E0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationVoiceCommandExecuted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v13(v48, 0);
  type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus(0);
  sub_26730A5C0(&qword_2800FA5E8, type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v42 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x53646E616D6D6F63, 0xED00007375746174);
  v14(v48, 0);
  type metadata accessor for SISchemaUEIVoiceCommandType(0);
  sub_26730A5C0(&qword_2800FA5F0, type metadata accessor for SISchemaUEIVoiceCommandType);
  sub_26738120C();
  v40 = v9;
  v11(v8, 0, 1, v9);
  v15 = v11;
  v45 = a1;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x54646E616D6D6F63, 0xEB00000000657079);
  v16(v48, 0);
  v38 = "tionVoiceCommandExecuted";
  v41 = *MEMORY[0x277D3E540];
  v17 = v47;
  v18 = *(v46 + 104);
  v46 += 104;
  v19 = v44;
  v18(v44);
  v43 = v18;
  v48[0] = 1;
  v20 = v19;
  sub_26738114C();
  v15(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v38 | 0x8000000000000000);
  v21(v48, 0);
  v38 = "commandTargetWordCount";
  v22 = v19;
  v23 = v41;
  (v18)(v22, v41, v17);
  v48[0] = 1;
  sub_26738114C();
  v24 = v40;
  v39 = v15;
  v15(v8, 0, 1, v40);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v38 | 0x8000000000000000);
  v25(v48, 0);
  v38 = "commandPayloadWordCount";
  v26 = v23;
  v27 = v23;
  v28 = v47;
  v43(v20, v27, v47);
  v48[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v38 | 0x8000000000000000);
  v29(v48, 0);
  v38 = "commandTargetCharacterCount";
  v30 = v43;
  v43(v20, v26, v28);
  v48[0] = 1;
  sub_26738114C();
  v31 = v39;
  v32 = v40;
  v39(v8, 0, 1, v40);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v38 | 0x8000000000000000);
  v33(v48, 0);
  v38 = "commandPayloadCharacterCount";
  v34 = v44;
  v30(v44, v26, v28);
  v48[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v38 | 0x8000000000000000);
  v35(v48, 0);
  v30(v34, v41, v47);
  v48[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026749BAA0);
  return v36(v48, 0);
}

uint64_t sub_26730A4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730A560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26730A5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaUEIDictationVoiceCommandKeyboardAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v34 = v12 + 56;
  v31 = v11;
  v13(v10, 0, 1, v11);
  v29 = v13;
  v30 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v14(v37, 0);
  v15 = *MEMORY[0x277D3E538];
  v16 = v35;
  v17 = *(v36 + 104);
  v36 += 104;
  v17(v6, v15, v35);
  v33 = v17;
  v37[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F69747265736E69, 0xEA0000000000736ELL);
  v18(v37, 0);
  v28 = v6;
  v32 = v15;
  v17(v6, v15, v16);
  v37[0] = 1;
  sub_26738114C();
  v19 = v31;
  v20 = v29;
  v29(v10, 0, 1, v31);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x7574697473627573, 0xEB00000000646574);
  v21(v37, 0);
  v22 = v28;
  v23 = v33;
  v33(v28, v15, v16);
  v37[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x646574656C6564, 0xE700000000000000);
  v24(v37, 0);
  v23(v22, v32, v35);
  v37[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x687469726F676C61, 0xEF7375746174536DLL);
  return v25(v37, 0);
}

uint64_t sub_26730AC04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730AC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationVoiceCommandUndoTapAction.makeTypeManifestAndEnsureFields(in:)()
{
  v14 = sub_26738113C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026749BB40);
  return v11(v15, 0);
}

uint64_t sub_26730B04C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B0B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewAppearContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA5F8, 0x277D5AB40);
  sub_266ECAF2C(&qword_2800FA600, &qword_2800FA5F8, 0x277D5AB40);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA608, 0x277D5AB38);
  sub_266ECAF2C(&qword_2800FA610, &qword_2800FA608, 0x277D5AB38);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26730B5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewAppearEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730B8F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730B9B8()
{
  result = qword_2800FA610;
  if (!qword_2800FA610)
  {
    sub_26730BA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA610);
  }

  return result;
}

unint64_t sub_26730BA10()
{
  result = qword_2800FA608;
  if (!qword_2800FA608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA608);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewAppearStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730BCA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730BD08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730BD6C()
{
  result = qword_2800FA600;
  if (!qword_2800FA600)
  {
    sub_26730BDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA600);
  }

  return result;
}

unint64_t sub_26730BDC4()
{
  result = qword_2800FA5F8;
  if (!qword_2800FA5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5F8);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA618, 0x277D5AB58);
  sub_266ECAF2C(&qword_2800FA620, &qword_2800FA618, 0x277D5AB58);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA628, 0x277D5AB50);
  sub_266ECAF2C(&qword_2800FA630, &qword_2800FA628, 0x277D5AB50);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26730C25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C2C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730C5AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730C674()
{
  result = qword_2800FA630;
  if (!qword_2800FA630)
  {
    sub_26730C6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA630);
  }

  return result;
}

unint64_t sub_26730C6CC()
{
  result = qword_2800FA628;
  if (!qword_2800FA628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA628);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730C960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C9C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730CA28()
{
  result = qword_2800FA620;
  if (!qword_2800FA620)
  {
    sub_26730CA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA620);
  }

  return result;
}

unint64_t sub_26730CA80()
{
  result = qword_2800FA618;
  if (!qword_2800FA618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA618);
  }

  return result;
}

uint64_t static SISchemaUEIInvocationTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v18 = sub_26738113C();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v20, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7865546465707974, 0xE900000000000074);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x7865546465707974, 0xE900000000000074);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287892A80);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_26730CEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730CF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEILaunchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA638, 0x277D5AB78);
  sub_266ECAF2C(&qword_2800FA640, &qword_2800FA638, 0x277D5AB78);
  v30 = a1;
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v12(v35, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v34, 0xD000000000000010, 0x800000026741EB30);
  v15 = *(v10 + 48);
  if (!v15(v16, 1, v9))
  {
    sub_266ECB128(&unk_287892AA8);
    sub_26738115C();
  }

  (v14)(v34, 0);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800FA648, 0x277D5AB70);
  sub_266ECAF2C(&qword_2800FA650, &qword_2800FA648, 0x277D5AB70);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v17(v35, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v34, 0x6465646E65, 0xE500000000000000);
  if (!v15(v20, 1, v9))
  {
    sub_266ECB128(&unk_287892AD8);
    sub_26738115C();
  }

  (v19)(v34, 0);
  v18(v35, 0);
  v21 = v31;
  sub_26738117C();
  v22 = sub_2673811BC();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_266ECAD54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_266ECAD54(v27 > 1, v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v21, v33);
  return v22(v35, 0);
}

uint64_t sub_26730D528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730D58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEILaunchEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26730D878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730D8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730D940()
{
  result = qword_2800FA650;
  if (!qword_2800FA650)
  {
    sub_26730D998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA650);
  }

  return result;
}

unint64_t sub_26730D998()
{
  result = qword_2800FA648;
  if (!qword_2800FA648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA648);
  }

  return result;
}

uint64_t static SISchemaUEILaunchStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}