uint64_t sub_21E0F24A8@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v123 = a3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD818);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v112 - v4;
  v128 = sub_21E13D5B4();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD288);
  v129 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v127 = &v112 - v6;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD290);
  v136 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v131 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v138 = &v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD820);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v140 = &v112 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD828);
  v139 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v135 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v141 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v112 - v20;
  v22 = sub_21E13E144();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v142 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v112 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v30 = *(v23 + 16);
  v133 = &v112 - v31;
  v30(v29);
  strcpy(v146, "Self (CL)");
  WORD1(v146[1]) = 0;
  HIDWORD(v146[1]) = -385875968;
  v32 = sub_21E13E134();
  [v32 coordinate];

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  v34 = sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  v35 = sub_21DF252E0();
  v134 = v21;
  v36 = v35;
  sub_21E13D654();
  v121 = a1;
  v132 = v23 + 16;
  v119 = v30;
  (v30)(v27, a1, v22);
  v37 = (*(v23 + 88))(v27, v22);
  v38 = &property descriptor for NewSaliencyModel.entities;
  v39 = MEMORY[0x277CE42E0];
  v40 = v37 == *MEMORY[0x277D79380];
  v143 = v22;
  v122 = v23;
  v116 = v36;
  v115 = v33;
  v114 = v34;
  if (v40)
  {
    (*(v23 + 96))(v27, v22);
    v41 = *v27;

    strcpy(v146, "Self (ARCam)");
    BYTE5(v146[1]) = 0;
    HIWORD(v146[1]) = -5120;
    [v41 coordinate];
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
    v42 = v141;
    sub_21E13D654();
    v112 = v41;
    [v41 coordinate];
    [v41 horizontalAccuracy];
    v43 = v125;
    sub_21E13D5A4();
    sub_21E1414B4();
    v44 = sub_21E141514();

    v146[0] = v44;
    v45 = v127;
    v46 = v128;
    v47 = MEMORY[0x277CE0F78];
    v48 = MEMORY[0x277CE0F60];
    sub_21E13D5E4();

    (*(v126 + 8))(v43, v46);
    v49 = sub_21E1414B4();
    v148 = v48;
    v149 = v49;
    v146[0] = v46;
    v146[1] = v47;
    v147 = v39;
    swift_getOpaqueTypeConformance2();
    v50 = v138;
    v51 = v124;
    sub_21E13D624();

    (*(v129 + 8))(v45, v51);
    v52 = *(v139 + 16);
    v53 = v145;
    v54 = v130;
    v52(v145, v42, v130);
    v55 = v50;
    v56 = *(v136 + 16);
    v57 = v131;
    v58 = v50;
    v59 = v144;
    v56(v131, v58, v144);
    v60 = v113;
    v52(v113, v53, v54);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD838);
    v56((v60 + *(v61 + 48)), v57, v59);

    v62 = *(v136 + 8);
    v62(v55, v59);
    v63 = *(v139 + 8);
    v63(v141, v54);
    v62(v57, v59);
    v63(v53, v54);
    v38 = &property descriptor for NewSaliencyModel.entities;
    v64 = v140;
    sub_21DF3DE9C(v60, v140, &qword_27CEAD818);
    v65 = 0;
    v66 = v64;
  }

  else
  {
    (*(v23 + 8))(v27, v22);
    v65 = 1;
    v66 = v140;
  }

  (*(v117 + 56))(v66, v65, 1, v118);
  v67 = v120;
  v68 = sub_21E13D314();
  v71 = sub_21E0F41C8(8, v68, v69, v70);
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v78 = MEMORY[0x223D52A20](v71, v73, v75, v77);
  v80 = v79;

  v146[0] = v78;
  v146[1] = v80;
  v81 = sub_21E13E134();
  [v81 coordinate];

  MEMORY[0x28223BE20](v82);
  *(&v112 - 2) = v67;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v83 = v141;
  sub_21E13D654();
  v84 = sub_21E13E134();
  [v84 coordinate];

  v85 = sub_21E13E134();
  [v85 v38[401]];

  v86 = v125;
  sub_21E13D5A4();
  sub_21E141434();
  v87 = sub_21E141514();

  v146[0] = v87;
  v88 = v127;
  v89 = v128;
  v90 = MEMORY[0x277CE0F78];
  v91 = MEMORY[0x277CE42E0];
  v92 = MEMORY[0x277CE0F60];
  sub_21E13D5E4();

  (*(v126 + 8))(v86, v89);
  v93 = sub_21E141434();
  v148 = v92;
  v149 = v93;
  v146[0] = v89;
  v146[1] = v90;
  v147 = v91;
  swift_getOpaqueTypeConformance2();
  v94 = v138;
  v95 = v124;
  sub_21E13D624();

  (*(v129 + 8))(v88, v95);
  v96 = v119;
  (v119)(v142, v133, v143);
  v97 = *(v139 + 16);
  v98 = v130;
  v97(v145, v134, v130);
  v99 = v137;
  sub_21DF236C0(v140, v137, &qword_27CEAD820);
  v97(v135, v83, v98);
  v100 = v136;
  v129 = *(v136 + 16);
  v101 = v131;
  (v129)(v131, v94, v144);
  v102 = v101;
  v103 = v123;
  (v96)(v123, v142, v143);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD830);
  v97((v103 + v104[12]), v145, v98);
  sub_21DF236C0(v99, v103 + v104[16], &qword_27CEAD820);
  v105 = v135;
  v97((v103 + v104[20]), v135, v98);
  v106 = v144;
  (v129)(v103 + v104[24], v102, v144);
  v107 = *(v100 + 8);
  v107(v138, v106);
  v108 = *(v139 + 8);
  v108(v141, v98);
  sub_21DF23614(v140, &qword_27CEAD820);
  v108(v134, v98);
  v109 = *(v122 + 8);
  v110 = v143;
  v109(v133, v143);
  v107(v102, v144);
  v108(v105, v98);
  sub_21DF23614(v137, &qword_27CEAD820);
  v108(v145, v98);
  return (v109)(v142, v110);
}

uint64_t sub_21E0F3454()
{
  sub_21E1400D4();
  sub_21E141684();
}

uint64_t sub_21E0F3518()
{
  v0 = sub_21E13D314();
  v3 = sub_21E0F41C8(8, v0, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  MEMORY[0x223D52A20](v3, v5, v7, v9);

  sub_21DF252E0();
  return sub_21E141694();
}

uint64_t GeoLocateResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_21E13D594();
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD220);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v54 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7B0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v54 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7B8);
  MEMORY[0x28223BE20](v70);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v54 - v8;
  v72 = sub_21E13E144();
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v54 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7C0);
  MEMORY[0x28223BE20](v71);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B10);
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_21E13D344();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = sub_21E13DBB4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v74, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D790E0])
  {
    (*(v25 + 96))(v28, v24);
    v30 = (*(v18 + 32))(v23, v28, v17);
    MEMORY[0x28223BE20](v30);
    sub_21E13F574();
    v31 = v59;
    (*(v59 + 16))(v13, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
    sub_21E0F4270();
    sub_21E1402F4();
    (*(v31 + 8))(v16, v14);
    return (*(v18 + 8))(v23, v17);
  }

  v58 = v13;
  v59 = v14;
  if (v29 == *MEMORY[0x277D790E8])
  {
    (*(v25 + 96))(v28, v24);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7A8) + 64);
    v56 = v18;
    v33 = *(v18 + 32);
    v55 = v20;
    v57 = v17;
    v33(v20, v28, v17);
    v34 = v68;
    v35 = *(v68 + 32);
    v36 = v72;
    v35();
    v37 = v66;
    (v35)(v66, &v28[v32], v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E1578A0;
    *(inited + 32) = sub_21E13E134();
    *(inited + 40) = sub_21E13E134();
    sub_21E0F1F9C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v39 = v60;
    sub_21E13D554();
    v40 = sub_21E13D564();
    v41 = (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    MEMORY[0x28223BE20](v41);
    sub_21E13D574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7C8);
    sub_21DF23E5C(&qword_27CEAD7D0, &qword_27CEAD7C8);
    v42 = v61;
    sub_21E13D544();
    sub_21E141CC4();
    sub_21E13FCE4();
    v43 = v63;
    (*(v64 + 32))(v63, v42, v65);
    v44 = (v43 + *(v70 + 36));
    v45 = v80;
    v44[4] = v79;
    v44[5] = v45;
    v44[6] = v81;
    v46 = v76;
    *v44 = v75;
    v44[1] = v46;
    v47 = v78;
    v44[2] = v77;
    v44[3] = v47;
    v48 = v67;
    sub_21DF3DE9C(v43, v67, &qword_27CEAD7B8);
    sub_21DF236C0(v48, v58, &qword_27CEAD7B8);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
    sub_21E0F4270();
    v18 = v56;
    sub_21E1402F4();
    v49 = v48;
    v17 = v57;
    sub_21DF23614(v49, &qword_27CEAD7B8);
    v50 = *(v34 + 8);
    v51 = v37;
    v52 = v72;
    v50(v51, v72);
    v50(v69, v52);
    v23 = v55;
    return (*(v18 + 8))(v23, v17);
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E0F40E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E13D314();
  v5 = sub_21E0F41C8(8, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x223D52A20](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x223D52A60](v12, v14);

  *a1 = 0x697A696C61636F4CLL;
  *(a1 + 8) = 0xEB0000000020676ELL;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21E0F41C8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_21E142214();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_21E0F4270()
{
  result = qword_27CEAD7D8;
  if (!qword_27CEAD7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD7B8);
    sub_21DF23E5C(&qword_27CEAD7E0, &qword_27CEAD7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD7D8);
  }

  return result;
}

uint64_t type metadata accessor for GeoLocateResultView()
{
  result = qword_27CEAD7E8;
  if (!qword_27CEAD7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E0F43DC()
{
  result = sub_21E13DBB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21E0F4448()
{
  result = qword_27CEAD808;
  if (!qword_27CEAD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD810);
    sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10);
    sub_21E0F4270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD808);
  }

  return result;
}

uint64_t sub_21E0F4508(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  sub_21DF5BFAC(0, v1, 0);
  v2 = v32;
  v4 = a1 + 56;
  result = sub_21E142774();
  v6 = v31;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_45;
    }

    v11 = *(a1 + 36);
    ++v7;
    v12 = result & 0x3F;
    v13 = 0xEC00000070756B6FLL;
    v14 = 0x6F4C6C6175736956;
    switch(*(*(a1 + 48) + result))
    {
      case 1:
        v13 = 0xEA00000000007075;
        v14 = 0x6B6F6F4C7370614DLL;
        break;
      case 2:
        v14 = 0x697463417370614DLL;
        v13 = 0xEA00000000006E6FLL;
        break;
      case 3:
        v13 = 0xE600000000000000;
        v14 = 0x65646F435251;
        break;
      case 4:
        v14 = 0x4370696C43707041;
        v15 = 6644847;
        goto LABEL_31;
      case 5:
        v14 = 0x6574654461746144;
        v13 = 0xEC000000726F7463;
        break;
      case 6:
        v14 = 0x7A6972616D6D7553;
        goto LABEL_26;
      case 7:
        v13 = 0xE900000000000064;
        v14 = 0x756F6C4164616552;
        break;
      case 8:
        v14 = 0x7261646E656C6143;
        v13 = 0xED0000746E657645;
        break;
      case 9:
        v14 = 0xD000000000000014;
        v13 = 0x800000021E15ADE0;
        break;
      case 0xA:
        v14 = 0x7261646E656C6143;
        v13 = 0xEC00000074696445;
        break;
      case 0xB:
        v13 = 0xE300000000000000;
        v14 = 7041857;
        break;
      case 0xC:
        v14 = 0x6165536567616D49;
        v15 = 6841202;
        goto LABEL_31;
      case 0xD:
        v14 = 0x74616C736E617254;
LABEL_26:
        v13 = 0xE900000000000065;
        break;
      case 0xE:
        v14 = 0x4172657474756853;
        v13 = 0xED00006E6F697463;
        break;
      case 0xF:
        v14 = 0x4E72657474756853;
        v13 = 0xEF6E6F697463416FLL;
        break;
      case 0x10:
        v13 = 0xEA00000000007265;
        v14 = 0x6B63697453646441;
        break;
      case 0x11:
        v14 = 0xD000000000000014;
        v13 = 0x800000021E15AE50;
        break;
      case 0x12:
        v13 = 0xE90000000000006FLL;
        v14 = 0x746F685065766153;
        break;
      case 0x13:
        v14 = 0x6974634174786554;
        v15 = 7564911;
        goto LABEL_31;
      case 0x14:
        v13 = 0xE800000000000000;
        v14 = 0x6B63616264656546;
        break;
      case 0x15:
        v14 = 0x6669636570736E55;
        v15 = 6579561;
LABEL_31:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v17 = *(v32 + 16);
    v16 = *(v32 + 24);
    if (v17 >= v16 >> 1)
    {
      v29 = *(a1 + 36);
      v30 = result;
      v28 = v7;
      sub_21DF5BFAC((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v6 = v31;
      v11 = v29;
      result = v30;
    }

    *(v32 + 16) = v17 + 1;
    v18 = v32 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_46;
    }

    v19 = *(v4 + 8 * v9);
    if ((v19 & v10) == 0)
    {
      goto LABEL_47;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_48;
    }

    v20 = v19 & (-2 << v12);
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 64 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          v26 = v7;
          sub_21E093850(result, v11, 0);
          v7 = v26;
          v6 = v31;
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      v27 = v7;
      sub_21E093850(result, v11, 0);
      v7 = v27;
      v6 = v31;
    }

LABEL_4:
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t SessionAnalyticsSuggestedActionObserverModifier.Reason.rawValue.getter()
{
  v1 = 0x7261657070416E6FLL;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0x72676B6361426E6FLL;
  }

  if (*v0)
  {
    v1 = 0x7070617369446E6FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SessionAnalytics.__allocating_init(alwaysSuggestedActions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SessionAnalytics.init(alwaysSuggestedActions:)(a1);
  return v2;
}

uint64_t View.onUpdateAnalyticsForSuggestedActions(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;

  sub_21E141704();
  v8 = v11;
  v9 = v12;
  v11 = a1;
  v12 = a2;
  v13 = v8;
  v14 = v9;
  MEMORY[0x223D51B40](&v11, a3, &type metadata for SessionAnalyticsSuggestedActionObserverModifier, a4);
}

uint64_t sub_21E0F4BC0(uint64_t a1)
{
  v9 = a1;
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  swift_getKeyPath();
  v10 = v1;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  swift_getKeyPath();
  v10 = v1;

  sub_21E13D3C4();

  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_21E005F44(v6);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21E0F4DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E1029FC(&qword_280F690E0, MEMORY[0x277D78DD0]);
  LOBYTE(v8) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v9(v7, a1, v4);
    sub_21E0F4BC0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[2] = v2;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_21E0F505C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21E13D834();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2, v4);
  return sub_21E0F4BC0(v6);
}

uint64_t sub_21E0F5158@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_21E0F5280(uint64_t a1)
{
  v2 = sub_21E13D344();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E0F534C(v5);
}

uint64_t sub_21E0F534C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E1029FC(&qword_280F6C088, MEMORY[0x277CC95F0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21E0F563C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v5 = *a1;
  swift_beginAccess();
  return sub_21DF236C0(v2 + v5, a2, &qword_27CEAA448);
}

uint64_t sub_21E0F5714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v6, a3, &qword_27CEAA448);
}

uint64_t sub_21E0F57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21DF236C0(a1, &v11 - v8, &qword_27CEAA448);
  return a5(v9);
}

uint64_t sub_21E0F58CC(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_21DF236C0(v2 + v8, v7, &qword_27CEAA448);
  LOBYTE(a2) = sub_21E1019D4(v7, a1);
  sub_21DF23614(v7, &qword_27CEAA448);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  else
  {
    sub_21DF236C0(a1, v7, &qword_27CEAA448);
    swift_beginAccess();
    sub_21E102700(v7, v2 + v8);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEAA448);
}

uint64_t sub_21E0F5AD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_21DF236C0(a2, &v11 - v7, &qword_27CEAA448);
  v9 = *a3;
  swift_beginAccess();
  sub_21E102700(v8, a1 + v9);
  return swift_endAccess();
}

uint64_t sub_21E0F5C18()
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E0F5CD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21E0F5DD8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0F5F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_21E0F6054(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21E13E7A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3B4();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21E0F61DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a2, v7, v9);
  v12 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v12, v11, v7);
  return swift_endAccess();
}

uint64_t sub_21E0F6360@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E0F645C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_21E0F6520(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

void (*sub_21E0F6644(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0F6300();
  return sub_21E0F677C;
}

void sub_21E0F677C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t sub_21E0F6810()
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();
}

uint64_t sub_21E0F68BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__pillAnalyticsManager);
}

uint64_t sub_21E0F699C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__pillAnalyticsManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0F6AD8()
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount);
}

uint64_t sub_21E0F6B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount);
  return result;
}

uint64_t sub_21E0F6C30(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E0F6D3C()
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted);
}

uint64_t sub_21E0F6DE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted);
  return result;
}

uint64_t sub_21E0F6E94(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E0F6FAC()
{
  v1 = v0;
  v2 = sub_21E13D344();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_21E13D304();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_21E0F5600(v7);
  v9(v7, 1, 1, v8);
  sub_21E0F58A4(v7);
  swift_getKeyPath();
  v19 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v19 = v0;
  swift_getKeyPath();
  sub_21E13D3E4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__suggestedActions;
  swift_beginAccess();
  *(v1 + v10) = MEMORY[0x277D84FA0];

  v18 = v1;
  swift_getKeyPath();
  sub_21E13D3D4();

  swift_getKeyPath();
  v18 = v1;
  sub_21E13D3C4();

  v18 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
  swift_beginAccess();
  *(v1 + v11) = MEMORY[0x277D84F98];

  v17 = v1;
  swift_getKeyPath();
  sub_21E13D3D4();

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  sub_21E0F534C(v4);
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16[-2] = v1;
    v16[-1] = 0;
    v17 = v1;
    sub_21E13D3B4();
  }

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  result = swift_beginAccess();
  if (*(v1 + v13))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    v16[-2] = v1;
    LOBYTE(v16[-1]) = 0;
    v16[1] = v1;
    sub_21E13D3B4();
  }

  return result;
}

uint64_t SessionAnalytics.init(alwaysSuggestedActions:)(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_21E13D834();
  v30 = *(v3 - 8);
  v4 = v30;
  MEMORY[0x28223BE20](v3);
  v32 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_21E13E7A4();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21E13D344();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 16) = 0xD00000000000002ALL;
  *(v2 + 24) = 0x800000021E15F5B0;
  v27 = *MEMORY[0x277D78DC0];
  v14 = *(v4 + 104);
  v28 = v3;
  v14(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint, v11);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v10 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID, v13, v9);
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__startTime;
  v16 = sub_21E13D304();
  v17 = *(*(v16 - 8) + 56);
  v17(v2 + v15, 1, 1, v16);
  v17(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__endTime, 1, 1, v16);
  v17(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__lastShutterTime, 1, 1, v16);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__suggestedActions) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts) = sub_21DF26590(MEMORY[0x277D84F90]);
  sub_21E13E204();
  sub_21E13E1F4();
  sub_21E13E764();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__featureAwareness, v8, v29);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus) = 0;
  type metadata accessor for PillAnalyticsManager(0);
  v18 = swift_allocObject();
  (v14)(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__entryPoint, v27, v3);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastHeroPill;
  v20 = sub_21E13EEE4();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  v21(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastEngagedPill, 1, 1, v20);
  v17(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__lastPillQueryTime, 1, 1, v16);
  sub_21E13D3F4();
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__pillAnalyticsManager) = v18;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted) = 0;
  sub_21E13D3F4();
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics_alwaysSuggestedActions) = v31;
  swift_getKeyPath();
  v34 = v2;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  swift_getKeyPath();
  v34 = v2;

  sub_21E13D3C4();

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v23 = v2 + v22;
  v24 = v32;
  (*(v30 + 16))(v32, v23, v28);
  sub_21E005F44(v24);

  sub_21E0F7A68();
  swift_getKeyPath();
  v33 = v2;
  sub_21E13D3C4();

  v33 = v2;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  sub_21E13E784();
  swift_endAccess();
  v33 = v2;
  swift_getKeyPath();
  sub_21E13D3D4();

  return v2;
}

uint64_t type metadata accessor for SessionAnalytics()
{
  result = qword_280F6AE98;
  if (!qword_280F6AE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E0F7A68()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21E13D344();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics___observationRegistrar;
  v44 = v1;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  v36 = v12;
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__startTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v13, v11, &qword_27CEAA448);
  v14 = sub_21E13D304();
  v15 = *(v14 - 8);
  LODWORD(v13) = (*(v15 + 48))(v11, 1, v14);
  result = sub_21DF23614(v11, &qword_27CEAA448);
  if (v13 == 1)
  {
    sub_21E13D2F4();
    v17 = *(v15 + 56);
    v33 = v14;
    v17(v8, 0, 1, v14);
    v34 = v8;
    sub_21E0F5600(v8);
    _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
    sub_21E0F534C(v5);
    sub_21E13E674();
    sub_21E13E664();
    swift_getKeyPath();
    v43 = v1;
    sub_21E13D3C4();

    v18 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
    swift_beginAccess();
    v19 = v35;
    v20 = v37;
    (*(v35 + 16))(v5, v1 + v18, v37);
    sub_21E13E654();

    (*(v19 + 8))(v5, v20);
    swift_getKeyPath();
    v42 = v1;
    sub_21E13D3C4();

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
    swift_beginAccess();
    v23 = v38;
    v22 = v39;
    v24 = v1 + v21;
    v25 = v40;
    (*(v39 + 16))(v38, v24, v40);
    v26 = (*(v22 + 88))(v23, v25);
    if (v26 == *MEMORY[0x277D78DB0])
    {
      (*(v22 + 8))(v23, v25);
      v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
      swift_beginAccess();
      if (*(v1 + v27) != 3)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v32 - 2) = v1;
        *(&v32 - 8) = 3;
        v41 = v1;
        sub_21E13D3B4();
      }

      swift_getKeyPath();
      v41 = v1;
      sub_21E13D3C4();

      v29 = v34;
      sub_21E13D2F4();
      v17(v29, 0, 1, v33);
      sub_21E006FD4(v29);
    }

    else if (v26 == *MEMORY[0x277D78DA8])
    {
      v30 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
      result = swift_beginAccess();
      if (*(v1 + v30) != 1)
      {
        v31 = swift_getKeyPath();
        MEMORY[0x28223BE20](v31);
        *(&v32 - 2) = v1;
        *(&v32 - 8) = 1;
        v41 = v1;
        sub_21E13D3B4();
      }
    }

    else
    {
      return (*(v22 + 8))(v23, v25);
    }
  }

  return result;
}

uint64_t sub_21E0F8110()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  swift_getKeyPath();
  v19 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__endTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v8, v7, &qword_27CEAA448);
  v9 = sub_21E13D304();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_21DF23614(v7, &qword_27CEAA448);
  if (v11 == 1)
  {
    sub_21E13D2F4();
    (*(v10 + 56))(v4, 0, 1, v9);
    sub_21E0F58A4(v4);
    swift_getKeyPath();
    v18[0] = v1;
    sub_21E13D3C4();

    swift_getKeyPath();
    v18[0] = v1;

    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_21E0E0F98(14);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    sub_21E00C4E0(v17);

    sub_21E13E674();
    sub_21E13E664();
    sub_21E13E644();
  }

  return result;
}

BOOL sub_21E0F8418()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v2 - 8);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  swift_getKeyPath();
  v17 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__startTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v7, v6, &qword_27CEAA448);
  v8 = sub_21E13D304();
  v9 = *(*(v8 - 8) + 48);
  LODWORD(v7) = v9(v6, 1, v8);
  sub_21DF23614(v6, &qword_27CEAA448);
  if (v7 == 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v16 = v1;
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__endTime;
  swift_beginAccess();
  v12 = v15;
  sub_21DF236C0(v1 + v11, v15, &qword_27CEAA448);
  v10 = v9(v12, 1, v8) == 1;
  sub_21DF23614(v12, &qword_27CEAA448);
  return v10;
}

uint64_t sub_21E0F868C(unsigned __int8 *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = sub_21E13F1B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v10 = *a2;
  if (v10 <= 1 && !*a2)
  {
LABEL_5:

    goto LABEL_7;
  }

  v11 = sub_21E142B14();

  if ((v11 & 1) == 0)
  {
    if (v10 != 2)
    {
      v12 = sub_21E142B14();

      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_7:
  result = sub_21E0F8418();
  if (result)
  {
    swift_getKeyPath();
    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics___observationRegistrar;
    v42 = v3;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    v38 = v14;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__suggestedActions;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = sub_21E0BE3B8(v39, v16);

    if ((v17 & 1) == 0)
    {
      result = sub_21E0BE3B8(v39, *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics_alwaysSuggestedActions));
      if ((result & 1) == 0)
      {
        sub_21E13EC34();
        v18 = sub_21E13F1A4();
        v19 = sub_21E142554();
        if (os_log_type_enabled(v18, v19))
        {
          v35 = v19;
          v36 = v18;
          v37 = v7;
          v20 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v40[0] = v34;
          *v20 = 136315394;
          v41 = v39;
          v21 = ActionAnalytics.ActionType.rawValue.getter();
          v23 = sub_21E0E08C0(v21, v22, v40);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2080;
          v24 = 0xE800000000000000;
          v25 = 0xD00000000000001ALL;
          v26 = 0x800000021E15AFD0;
          if (v10 != 2)
          {
            v25 = 0x72676B6361426E6FLL;
            v26 = 0xEC000000646E756FLL;
          }

          v27 = 0x7261657070416E6FLL;
          if (v10)
          {
            v27 = 0x7070617369446E6FLL;
            v24 = 0xEB00000000726165;
          }

          if (v10 <= 1)
          {
            v28 = v27;
          }

          else
          {
            v28 = v25;
          }

          if (v10 <= 1)
          {
            v29 = v24;
          }

          else
          {
            v29 = v26;
          }

          v30 = sub_21E0E08C0(v28, v29, v40);

          *(v20 + 14) = v30;
          v31 = v36;
          _os_log_impl(&dword_21DF05000, v36, v35, "SessionAnalytics: did suggest action %s for reason %s", v20, 0x16u);
          v32 = v34;
          swift_arrayDestroy();
          MEMORY[0x223D540B0](v32, -1, -1);
          MEMORY[0x223D540B0](v20, -1, -1);

          (*(v37 + 8))(v9, v6);
        }

        else
        {

          (*(v7 + 8))(v9, v6);
        }

        swift_getKeyPath();
        v40[0] = v3;
        sub_21E13D3C4();

        v40[0] = v3;
        swift_getKeyPath();
        sub_21E13D3E4();

        swift_beginAccess();
        sub_21E0E1D44(&v41, v39);
        swift_endAccess();
        v40[0] = v3;
        swift_getKeyPath();
        sub_21E13D3D4();
      }
    }
  }

  return result;
}

unint64_t sub_21E0F8C08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_21E13D834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E13F1B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v68 = *a2;
  v69 = v17;
  result = sub_21E0F8418();
  if ((result & 1) == 0)
  {
    return result;
  }

  v66 = v9;
  v67 = v12;
  v65 = v10;
  sub_21E13EC34();
  v19 = sub_21E13F1A4();
  v20 = sub_21E142554();
  if (os_log_type_enabled(v19, v20))
  {
    v64 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v71[0] = v22;
    *v21 = 136315394;
    LOBYTE(v70) = v69;
    v23 = ActionAnalytics.ActionType.rawValue.getter();
    v25 = sub_21E0E08C0(v23, v24, v71);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (v68 <= 3)
    {
      v34 = 0xEC00000072656E69;
      v35 = 0x61746E6F436E6950;
      v36 = 0xED00006C6F72746ELL;
      v37 = 0x6F436172656D6143;
      if (v68 != 2)
      {
        v37 = 0x61426E6F69746341;
        v36 = 0xE900000000000072;
      }

      if (v68)
      {
        v35 = 0x72657474756853;
        v34 = 0xE700000000000000;
      }

      if (v68 <= 1)
      {
        v32 = v35;
      }

      else
      {
        v32 = v37;
      }

      if (v68 <= 1)
      {
        v33 = v34;
      }

      else
      {
        v33 = v36;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x726162696E6D4FLL;
      v28 = 0xE400000000000000;
      v29 = 1685217603;
      if (v68 != 7)
      {
        v29 = 0xD000000000000010;
        v28 = 0x800000021E15AEF0;
      }

      if (v68 != 6)
      {
        v27 = v29;
        v26 = v28;
      }

      v30 = 0xED0000756E654D72;
      v31 = 0x61426E6F69746341;
      if (v68 != 4)
      {
        v31 = 0x6574616369646544;
        v30 = 0xEF6E6F7474754264;
      }

      if (v68 <= 5)
      {
        v32 = v31;
      }

      else
      {
        v32 = v27;
      }

      if (v68 <= 5)
      {
        v33 = v30;
      }

      else
      {
        v33 = v26;
      }
    }

    v38 = sub_21E0E08C0(v32, v33, v71);

    *(v21 + 14) = v38;
    _os_log_impl(&dword_21DF05000, v19, v20, "SessionAnalytics: did perform %s from %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D540B0](v22, -1, -1);
    MEMORY[0x223D540B0](v21, -1, -1);

    (*(v14 + 8))(v16, v13);
    v8 = v64;
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  swift_getKeyPath();
  v71[0] = v3;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v71[0] = v3;
  KeyPath = swift_getKeyPath();
  sub_21E13D3E4();

  v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v3 + v40);
  v42 = v70;
  *(v3 + v40) = 0x8000000000000000;
  v43 = v69;
  result = sub_21E0E0F98(v69);
  v45 = v42[2];
  v46 = (v44 & 1) == 0;
  v47 = __OFADD__(v45, v46);
  v48 = v45 + v46;
  v49 = v67;
  if (v47)
  {
    __break(1u);
    goto LABEL_44;
  }

  KeyPath = v44;
  if (v42[3] >= v48)
  {
    goto LABEL_32;
  }

  sub_21E0FEED8(v48, isUniquelyReferenced_nonNull_native);
  v42 = v70;
  result = sub_21E0E0F98(v43);
  if ((KeyPath & 1) != (v50 & 1))
  {
    result = sub_21E142B84();
    __break(1u);
LABEL_32:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  *(v3 + v40) = v42;
  if (KeyPath)
  {
    goto LABEL_36;
  }

LABEL_34:
  v42[(result >> 6) + 8] |= 1 << result;
  *(v42[6] + result) = v43;
  *(v42[7] + 8 * result) = 0;
  v51 = v42[2];
  v47 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (v47)
  {
    __break(1u);
  }

  else
  {
    v42[2] = v52;
LABEL_36:
    while (1)
    {
      v53 = v42[7];
      v54 = *(v53 + 8 * result);
      v47 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (!v47)
      {
        break;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      v62 = result;
      sub_21E10066C();
      result = v62;
      v42 = v70;
      *(v3 + v40) = v70;
      if ((KeyPath & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    *(v53 + 8 * result) = v55;
    swift_endAccess();
    v71[0] = v3;
    swift_getKeyPath();
    sub_21E13D3D4();

    LOBYTE(v71[0]) = v43;
    LOBYTE(v70) = v68;
    sub_21DF3723C(v71);
    swift_getKeyPath();
    v71[0] = v3;
    sub_21E13D3C4();

    v56 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
    swift_beginAccess();
    v58 = v65;
    v57 = v66;
    (*(v65 + 16))(v49, v3 + v56, v66);
    LOBYTE(v56) = sub_21E13D7F4();
    (*(v58 + 8))(v49, v57);
    if (v56)
    {
      swift_getKeyPath();
      v70 = v3;
      sub_21E13D3C4();

      v59 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
      swift_beginAccess();
      if (*(v3 + v59) == 1)
      {
        swift_getKeyPath();
        v70 = v3;
        sub_21E13D3C4();

        sub_21E13D2F4();
        v60 = sub_21E13D304();
        (*(*(v60 - 8) + 56))(v8, 0, 1, v60);
        sub_21E006FD4(v8);

        if (*(v3 + v59) != 2)
        {
          v61 = swift_getKeyPath();
          MEMORY[0x28223BE20](v61);
          *(&v63 - 2) = v3;
          *(&v63 - 8) = 2;
          v70 = v3;
          sub_21E13D3B4();
        }
      }
    }

    swift_getKeyPath();
    v70 = v3;
    sub_21E13D3C4();

    v70 = v3;
    swift_getKeyPath();
    sub_21E13D3E4();

    swift_beginAccess();
    sub_21E13E774();
    swift_endAccess();
    v70 = v3;
    swift_getKeyPath();
    sub_21E13D3D4();
  }

  return result;
}

uint64_t sub_21E0F953C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__isHighlighted) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v7 - 2) = v0;
    *(&v7 - 8) = 1;
    v8 = v0;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  swift_getKeyPath();
  v8 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  sub_21E13D2F4();
  v5 = sub_21E13D304();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_21E006FD4(v3);
}

uint64_t sub_21E0F9780()
{
  v1 = v0;
  v2 = sub_21E13F1B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21E0F8418();
  if (result)
  {
    sub_21E13EC34();
    v7 = sub_21E13F1A4();
    v8 = sub_21E142554();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21DF05000, v7, v8, "SessionAnalytics: did encounter error", v9, 2u);
      MEMORY[0x223D540B0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    v14 = v1;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3C4();

    v14 = v1;
    swift_getKeyPath();
    sub_21E13D3E4();

    v10 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__errorCount) = v12;
      v14 = v1;
      swift_getKeyPath();
      sub_21E13D3D4();
    }
  }

  return result;
}

uint64_t sub_21E0F99BC()
{
  v1 = v0;
  v141 = sub_21E13F1B4();
  v133 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v132 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v131 = &v130 - v4;
  MEMORY[0x28223BE20](v5);
  v139 = &v130 - v6;
  v136 = sub_21E13D834();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_21E13E314();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v130 - v12;
  v14 = sub_21E13D304();
  v137 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v130 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v130 - v17;
  v18 = sub_21E13D344();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_21DF26AE0(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics___observationRegistrar;
  v154 = v0;
  v23 = sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
  swift_beginAccess();
  (*(v19 + 16))(v21, v1 + v24, v18);
  sub_21E13D314();
  (*(v19 + 8))(v21, v18);
  v25 = sub_21E1421D4();

  v26 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];

  sub_21E08D0EC(v26, 0x496E6F6973736573, 0xE900000000000044);
  swift_getKeyPath();
  v153 = v1;
  sub_21E13D3C4();
  v27 = v137;

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__startTime;
  swift_beginAccess();
  sub_21DF236C0(v1 + v28, v13, &qword_27CEAA448);
  v29 = *(v27 + 48);
  v30 = v29(v13, 1, v14);
  v31 = &property descriptor for NewSaliencyModel.entities;
  v145 = v22;
  v146 = v23;
  if (v30 == 1)
  {
    sub_21DF23614(v13, &qword_27CEAA448);
    goto LABEL_16;
  }

  v32 = *(v27 + 32);
  v32(v140, v13, v14);
  swift_getKeyPath();
  v33 = v27;
  v151 = v1;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__endTime;
  swift_beginAccess();
  v35 = v1 + v34;
  v36 = v138;
  sub_21DF236C0(v35, v138, &qword_27CEAA448);
  if (v29(v36, 1, v14) == 1)
  {
    (*(v27 + 8))(v140, v14);
    sub_21DF23614(v138, &qword_27CEAA448);
    v31 = &property descriptor for NewSaliencyModel.entities;
    goto LABEL_16;
  }

  v32(v130, v138, v14);
  sub_21E13D2B4();
  v38 = v37;
  v39 = 0.0;
  v31 = &property descriptor for NewSaliencyModel.entities;
  if (v38 > 0.0)
  {
    v40 = 1.0;
    if (v38 <= 1.0 || (v41 = 4096.0, v40 = v38, v38 < 4096.0))
    {
      if (*&v40 >> 52 >= 0x7FFuLL)
      {
        v41 = 4096.0;
        if ((*&v40 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v41 = v40;
        }
      }

      else
      {
        v41 = v40;
      }
    }

    v42 = log2(v41);
    v39 = exp2(ceil(v42));
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v39 <= -9.22337204e18)
      {
LABEL_62:
        __break(1u);
      }

      else if (v39 < 9.22337204e18)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
LABEL_65:
    type metadata accessor for CLAuthorizationStatus(0);
    LODWORD(v147) = v14;
    sub_21E142B44();
    __break(1u);
    goto LABEL_66;
  }

LABEL_15:
  v43 = v39;
  v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v45 = v155;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151 = v45;
  sub_21E0E6CE4(v44, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v47 = v151;
  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v47;
  sub_21E0E6CE4(v48, 0x6E6F697461727564, 0xED000065676E6152, v49);
  v155 = v151;
  v50 = *(v33 + 8);
  v50(v130, v14);
  v50(v140, v14);
LABEL_16:
  swift_getKeyPath();
  v151 = v1;
  sub_21E13D3C4();

  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v31[241]];
  v52 = v155;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v52;
  sub_21E0E6CE4(v51, 0x756F43726F727265, 0xEA0000000000746ELL, v53);
  v155 = v151;
  swift_getKeyPath();
  v151 = v1;
  sub_21E13D3C4();

  v54 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__suggestedActions;
  swift_beginAccess();
  v140 = v54;
  v152 = *(v1 + v54);

  sub_21E0FAEFC(v55);
  swift_getKeyPath();
  v150 = v1;
  sub_21E13D3C4();

  v56 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
  swift_beginAccess();

  sub_21E0FAFD8(v57);
  swift_getKeyPath();
  v149 = v1;
  sub_21E13D3C4();

  v58 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v59 = v135;
  v60 = v1 + v58;
  v61 = v134;
  v62 = v136;
  (*(v135 + 16))(v134, v60, v136);
  v63 = (*(v59 + 88))(v61, v62);
  if (v63 == *MEMORY[0x277D78DB0])
  {

    (*(v59 + 8))(v61, v62);
    v64 = MEMORY[0x277D79418];
    v65 = 3;
    goto LABEL_29;
  }

  if (v63 == *MEMORY[0x277D78DC0] || v63 == *MEMORY[0x277D78DC8])
  {
LABEL_28:

    v65 = 0;
    v64 = MEMORY[0x277D79428];
    goto LABEL_29;
  }

  if (v63 != *MEMORY[0x277D78DA8])
  {
    if (v63 != *MEMORY[0x277D78DB8])
    {
LABEL_66:
      result = sub_21E142B04();
      __break(1u);
      return result;
    }

    goto LABEL_28;
  }

  swift_getKeyPath();
  v148 = v1;
  sub_21E13D3C4();

  v66 = *(v1 + v56);
  if (*(v66 + 16))
  {

    v67 = sub_21E0E0F98(14);
    if (v68)
    {
      v69 = *(*(v66 + 56) + 8 * v67);

      if (v69 < 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = 2;
      }

      v64 = MEMORY[0x277D79420];
      goto LABEL_29;
    }
  }

  v64 = MEMORY[0x277D79420];
  v65 = 1;
LABEL_29:
  (*(v143 + 104))(v142, *v64, v144);
  v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v31[241]];
  v71 = v155;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v71;
  sub_21E0E6CE4(v70, 0x5372657474756873, 0xED00007375746174, v72);
  v73 = v148;
  v155 = v148;
  v74 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v31[241]];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v73;
  sub_21E0E6CE4(v74, 0x4449656C646E7562, 0xE800000000000000, v75);
  v14 = v148;
  v148 = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  v147 = v1;
  sub_21E13D3C4();

  v76 = *(v1 + v56);
  v77 = 1 << *(v76 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v76 + 64);
  v80 = (v77 + 63) >> 6;

  v81 = 0;
  v82 = 0;
  do
  {
    if (!v79)
    {
      while (1)
      {
        v83 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v83 >= v80)
        {
          goto LABEL_41;
        }

        v79 = *(v76 + 64 + 8 * v83);
        ++v82;
        if (v79)
        {
          v82 = v83;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    v83 = v82;
LABEL_38:
    v84 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v85 = v84 | (v83 << 6);
    v86 = *(*(v76 + 56) + 8 * v85);
    sub_21E0E1D44(&v147, *(*(v76 + 48) + v85));
    v87 = __OFADD__(v81, v86);
    v81 += v86;
  }

  while (!v87);
  __break(1u);
LABEL_41:

  if (v81 < 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v88 = UInt.bucketedPowerOf2(maxValue:)(0x40uLL);
  if ((v88 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v14;
  sub_21E0E6CE4(v89, 0xD000000000000014, 0x800000021E15F750, v90);
  v92 = v147;
  v91 = v148;
  v155 = v147;
  if (v148[2])
  {
    v93 = sub_21E102840(v148);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v92;
    sub_21E0E6CE4(v93, 0xD000000000000010, 0x800000021E15F770, v94);
    v155 = v147;
    sub_21E13EC34();

    v95 = sub_21E13F1A4();
    v96 = sub_21E142554();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v141;
    v99 = v133;
    v100 = v131;
    if (v97)
    {
      v101 = v141;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      v104 = sub_21E102840(v91);

      *(v102 + 4) = v104;
      *v103 = v104;
      _os_log_impl(&dword_21DF05000, v95, v96, "SessionAnalytics: performed actions %@", v102, 0xCu);
      sub_21DF23614(v103, &unk_27CEAC540);
      MEMORY[0x223D540B0](v103, -1, -1);
      v105 = v102;
      v98 = v101;
      MEMORY[0x223D540B0](v105, -1, -1);
    }

    else
    {
    }

    v106 = v140;
    (*(v99 + 8))(v139, v98);
  }

  else
  {

    v98 = v141;
    v99 = v133;
    v100 = v131;
    v106 = v140;
  }

  swift_getKeyPath();
  v147 = v1;
  sub_21E13D3C4();

  if (*(*&v106[v1] + 16))
  {
    swift_getKeyPath();
    v147 = v1;
    sub_21E13D3C4();

    v108 = sub_21E102840(v107);

    v109 = v155;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v109;
    sub_21E0E6CE4(v108, 0xD000000000000010, 0x800000021E15F790, v110);
    v155 = v147;
    sub_21E13EC34();

    v111 = sub_21E13F1A4();
    v112 = sub_21E142554();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 138412290;
      swift_getKeyPath();
      v147 = v1;
      sub_21E13D3C4();

      v116 = sub_21E102840(v115);

      *(v113 + 4) = v116;
      *v114 = v116;
      _os_log_impl(&dword_21DF05000, v111, v112, "SessionAnalytics: suggested actions %@", v113, 0xCu);
      sub_21DF23614(v114, &unk_27CEAC540);
      MEMORY[0x223D540B0](v114, -1, -1);
      MEMORY[0x223D540B0](v113, -1, -1);
    }

    v98 = v141;
    (*(v99 + 8))(v100, v141);
  }

  swift_getKeyPath();
  v147 = v1;
  sub_21E13D3C4();

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v117 = v155;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v117;
  sub_21E0E6CE4(v14, 0x696C686769487369, 0xED00006465746867, v118);
  v155 = v147;
  sub_21E13DE44();
  sub_21E13DE34();
  LODWORD(v14) = sub_21E13DE24();

  if (v14 >= 5)
  {
    goto LABEL_65;
  }

  v119 = v132;
  sub_21E13EC34();
  v120 = sub_21E13F1A4();
  v121 = sub_21E142554();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = v98;
    v123 = swift_slowAlloc();
    *v123 = 134217984;
    *(v123 + 4) = v14;
    _os_log_impl(&dword_21DF05000, v120, v121, "SessionAnalytics: location auth status %ld", v123, 0xCu);
    v124 = v123;
    v98 = v122;
    MEMORY[0x223D540B0](v124, -1, -1);
  }

  (*(v99 + 8))(v119, v98);
  v125 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v126 = v155;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v126;
  sub_21E0E6CE4(v125, 0xD00000000000001BLL, 0x800000021E15F7B0, v127);
  v128 = v147;
  (*(v143 + 8))(v142, v144);
  return v128;
}

Swift::Double __swiftcall Double.bucketedPowerOf2(allowZero:minPositiveValue:maxValue:)(Swift::Bool allowZero, Swift::Double minPositiveValue, Swift::Double maxValue)
{
  if (allowZero && v4 <= 0.0)
  {
    return 0.0;
  }

  if (minPositiveValue >= v4)
  {
    if ((*&minPositiveValue & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v4 = minPositiveValue;
    }

    if ((~*&minPositiveValue & 0x7FF0000000000000) != 0)
    {
      v4 = minPositiveValue;
    }
  }

  if ((*&v4 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = maxValue;
  }

  else
  {
    v6 = v4;
  }

  if ((~*&v4 & 0x7FF0000000000000) != 0)
  {
    v6 = v4;
  }

  if (v4 >= maxValue)
  {
    v6 = maxValue;
  }

  v7 = ceil(log2(v6));

  return exp2(v7);
}

uint64_t sub_21E0FAEFC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_21E0E1D44(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21E0FAFD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_21E0E1D44(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

Swift::Int __swiftcall Int.bucketedPowerOf2(maxValue:)(Swift::Int maxValue)
{
  if ((v1 | maxValue) < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  maxValue = UInt.bucketedPowerOf2(maxValue:)(maxValue);
  if (maxValue < 0)
  {
LABEL_5:
    __break(1u);
  }

  return maxValue;
}

uint64_t sub_21E0FB0E4()
{
  v1 = v0;
  v2 = sub_21E13E7A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21E13F1B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-v11];
  sub_21E0F8110();
  v13 = sub_21E0F99BC();
  if (*(v13 + 16))
  {
    sub_21E13EC34();

    v14 = sub_21E13F1A4();
    v15 = sub_21E142554();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v40 = v5;
      v17 = v16;
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v17 = 136315138;
      sub_21DF3ED18(0, &qword_280F68C10);
      v18 = sub_21E142004();
      v37 = v15;
      v19 = v7;
      v21 = sub_21E0E08C0(v18, v20, aBlock);
      v38 = v6;
      v22 = v3;
      v23 = v2;
      v24 = v21;

      *(v17 + 4) = v24;
      v2 = v23;
      v3 = v22;
      _os_log_impl(&dword_21DF05000, v14, v37, "SessionAnalytics: publishing %s", v17, 0xCu);
      v25 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223D540B0](v25, -1, -1);
      v26 = v17;
      v5 = v40;
      MEMORY[0x223D540B0](v26, -1, -1);

      (*(v19 + 8))(v12, v38);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v32 = sub_21E1420F4();
    v33 = swift_allocObject();
    *(v33 + 16) = v13;
    aBlock[4] = sub_21E00FEC0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E001D60;
    aBlock[3] = &block_descriptor_12;
    v34 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v34);

    swift_getKeyPath();
    aBlock[0] = v1;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3C4();

    v35 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__featureAwareness;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v35, v2);
    sub_21E13E794();
    (*(v3 + 8))(v5, v2);
    return sub_21E0F6FAC();
  }

  else
  {

    sub_21E13EC34();
    v27 = sub_21E13F1A4();
    v28 = sub_21E142564();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v7;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21DF05000, v27, v28, "SessionAnalytics: No event map to publish.", v30, 2u);
      MEMORY[0x223D540B0](v30, -1, -1);

      return (*(v29 + 8))(v9, v6);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_21E0FB5F8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v15 = a3;
  v16 = a2;
  v8 = sub_21E13D344();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  swift_getKeyPath();
  v17 = v5;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v18 = v12;
  swift_getKeyPath();
  v17 = v5;

  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
  swift_beginAccess();
  (*(v9 + 16))(v11, v5 + v13, v8);
  sub_21E007D9C(a1, v15, v16, &v18, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21E0FB7F4(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v57 = a1;
  v55 = sub_21E13D304();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v48 - v12;
  v14 = *a3;
  swift_getKeyPath();
  v61 = v3;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v15 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__pillAnalyticsManager);
  swift_getKeyPath();
  v61 = v3;

  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
  swift_beginAccess();
  v17 = *(v4 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_21E0E0F98(14);
    if (v19)
    {
      v53 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  if (v14 <= 1 && v14)
  {
    goto LABEL_11;
  }

  v20 = sub_21E142B14();

  if (v20)
  {
    goto LABEL_13;
  }

  if (v14 > 2)
  {
LABEL_11:
  }

  else
  {
    v21 = sub_21E142B14();

    if ((v21 & 1) == 0)
    {
    }
  }

LABEL_13:
  v51 = v13;
  v52 = a2;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager___observationRegistrar;
  v60 = v15;
  v23 = sub_21E1029FC(&qword_280F6A0B0, type metadata accessor for PillAnalyticsManager);
  sub_21E13D3C4();

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI20PillAnalyticsManager__pillAnalytics;
  v25 = swift_beginAccess();
  v26 = *(v15 + v24);
  MEMORY[0x28223BE20](v25);
  v48[-2] = v57;

  v27 = sub_21E001B24(sub_21E101D24, &v48[-4], v26);
  v29 = v28;

  if (v29)
  {
  }

  v48[1] = 0;
  swift_getKeyPath();
  v59 = v15;
  v50 = v23;
  sub_21E13D3C4();

  v30 = *(v15 + v24);
  v49 = v24;
  if ((v30 & 0xC000000000000001) == 0)
  {
    v31 = v55;
    v32 = v52;
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v30 + 8 * v27 + 32);

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_31;
  }

  v33 = MEMORY[0x223D530F0](v27, v30);

  v31 = v55;
  v32 = v52;
LABEL_19:
  v55 = v22;
  v57 = v15;
  sub_21E004558(v32, v53);
  swift_getKeyPath();
  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics___observationRegistrar;
  v59 = v33;
  v35 = sub_21E1029FC(&qword_27CEAA438, type metadata accessor for PillAnalytics);
  v53 = v34;
  v52 = v35;
  sub_21E13D3C4();

  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__endTime;
  swift_beginAccess();
  v37 = v51;
  sub_21DF236C0(v33 + v36, v51, &qword_27CEAA448);
  LODWORD(v36) = (*(v7 + 48))(v37, 1, v31);
  sub_21DF23614(v37, &qword_27CEAA448);
  if (v36 == 1)
  {
    v38 = v56;
    sub_21E13D2F4();
    (*(v7 + 56))(v38, 0, 1, v31);
    sub_21E003544(v38);
  }

  v39 = v54;
  sub_21E13D2F4();
  v40 = *(v7 + 16);
  v41 = v56;
  v40(v56, v39, v31);
  v42 = *(v7 + 56);
  v42(v41, 0, 1, v31);
  sub_21E003174(v41);
  v40(v41, v39, v31);
  v42(v41, 0, 1, v31);
  sub_21E003544(v41);
  (*(v7 + 8))(v39, v31);
  if (sub_21E0BE3B8(*(v33 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_pillShown), *(v33 + OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics_actionsWithSuggestionTracking)))
  {
    swift_getKeyPath();
    v58 = v33;
    sub_21E13D3C4();

    v43 = OBJC_IVAR____TtC20VisualIntelligenceUI13PillAnalytics__engaged;
    swift_beginAccess();
    if (*(v33 + v43) == 2)
    {
    }
  }

  sub_21E005610();
  swift_getKeyPath();
  v15 = v57;
  v58 = v57;

  sub_21E13D3C4();

  v58 = v15;
  swift_getKeyPath();
  sub_21E13D3E4();

  v44 = v49;
  swift_beginAccess();
  v32 = sub_21E00FB7C((v15 + v44), v33);

  v46 = *(v15 + v44);
  if (v46 >> 62)
  {
LABEL_31:
    result = sub_21E1427B4();
    v47 = result;
    if (result >= v32)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47 >= v32)
  {
LABEL_26:
    sub_21DF60224(v32, v47);
    swift_endAccess();
    v58 = v15;
    swift_getKeyPath();
    sub_21E13D3D4();
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21E0FC138(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  HIDWORD(v17) = a3;
  v18 = a2;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v3;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  swift_getKeyPath();
  v20 = v3;

  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
  swift_beginAccess();
  (*(v7 + 16))(v9, v4 + v10, v6);
  swift_getKeyPath();
  v19 = v4;
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_21E0E0F98(14);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_21E008F8C(a1, v18, v9, BYTE4(v17) & 1, v15);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21E0FC3C0()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_21E13D7F4();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getKeyPath();
    v13 = v1;
    sub_21E13D3C4();

    swift_getKeyPath();
    v13 = v1;

    sub_21E13D3C4();

    v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (*(v9 + 16))
    {

      v10 = sub_21E0E0F98(14);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    sub_21E009FB4(v12);
  }

  return result;
}

uint64_t sub_21E0FC630(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_21E13D344();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_21E13EEE4();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13D834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v34 = v1;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  (*(v12 + 16))(v14, v2 + v15, v11);
  LOBYTE(v15) = sub_21E13D7F4();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = v29;
    if (v29)
    {
      swift_getKeyPath();
      v33[0] = v17;
      sub_21E1029FC(&qword_280F6B830, type metadata accessor for NewActionModel);

      sub_21E13D3C4();

      v18 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      sub_21DF236C0(v17 + v18, v7, &qword_27CEA6D48);
      v20 = v26;
      v19 = v27;
      if ((*(v26 + 48))(v7, 1, v27) == 1)
      {

        sub_21DF23614(v7, &qword_27CEA6D48);
      }

      else
      {
        (*(v20 + 32))(v10, v7, v19);
        ActionPin.Pill.analyticsAction()();
        v32 = 0;
        sub_21E0F868C(v33, &v32);

        (*(v20 + 8))(v10, v19);
      }
    }

    swift_getKeyPath();
    v33[0] = v2;
    sub_21E13D3C4();

    swift_getKeyPath();
    v33[0] = v2;

    sub_21E13D3C4();

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
    swift_beginAccess();
    v23 = v30;
    v22 = v31;
    v24 = v2 + v21;
    v25 = v28;
    (*(v30 + 16))(v28, v24, v31);
    sub_21E009724(v17, v25);

    return (*(v23 + 8))(v25, v22);
  }

  return result;
}

uint64_t sub_21E0FCB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics_alwaysSuggestedActions);
  ActionPin.Pill.analyticsAction()();
  if (sub_21E0BE3B8(v23, v10))
  {
    v21 = a2;
    swift_getKeyPath();
    v23 = v2;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3C4();

    swift_getKeyPath();
    v23 = v2;

    sub_21E13D3C4();

    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
    swift_beginAccess();
    (*(v7 + 16))(v9, v3 + v11, v6);
    swift_getKeyPath();
    v22 = v3;
    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__performedActionCounts;
    swift_beginAccess();
    v13 = *(v3 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_21E0E0F98(14);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      v19 = v21;
    }

    else
    {
      v16 = 0;
      v19 = v21;
    }

    sub_21E008F8C(a1, v19, v9, 1, v16);

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v17 = sub_21DFE49CC();
    swift_getKeyPath();
    v23 = v3;
    sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3C4();

    sub_21E00A99C(a1);
    if (v17)
    {

      return sub_21E0FC3C0();
    }

    else
    {
    }
  }
}

uint64_t sub_21E0FCF2C(uint64_t a1)
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  sub_21E00B2EC(a1);
}

uint64_t sub_21E0FCFF0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  sub_21E00B878(a1, a2);
}

uint64_t sub_21E0FD0C4()
{
  swift_getKeyPath();
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  sub_21E00BE88();
}

uint64_t sub_21E0FD180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  swift_getKeyPath();
  v7 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  sub_21E13D2F4();
  v4 = sub_21E13D304();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_21E006FD4(v3);
}

uint64_t sub_21E0FD2D4()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  swift_getKeyPath();
  v15 = v0;
  sub_21E1029FC(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
  sub_21E13D3C4();

  v9 = sub_21E13D304();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  sub_21E006FD4(v8);

  swift_getKeyPath();
  v15 = v0;
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v10, v2);
  LOBYTE(v10) = sub_21E13D7F4();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
    result = swift_beginAccess();
    if (*(v1 + v12) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v14[-2] = v1;
      LOBYTE(v14[-1]) = 1;
      v14[1] = v1;
      sub_21E13D3B4();
    }
  }

  return result;
}

uint64_t SessionAnalytics.deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  v2 = sub_21E13D834();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
  v4 = sub_21E13D344();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__startTime, &qword_27CEAA448);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__endTime, &qword_27CEAA448);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__lastShutterTime, &qword_27CEAA448);

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__featureAwareness;
  v6 = sub_21E13E7A4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics___observationRegistrar;
  v8 = sub_21E13D404();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t SessionAnalytics.__deallocating_deinit()
{
  SessionAnalytics.deinit();

  return swift_deallocClassInstance();
}

Swift::UInt __swiftcall UInt.bucketedPowerOf2(maxValue:)(Swift::UInt maxValue)
{
  if (!v1)
  {
    return 0.0;
  }

  v2 = maxValue;
  if (v1 == 1)
  {
    v3 = 1.0;
    if (maxValue >= 2)
    {
LABEL_4:
      if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v2 = v3;
      }

      if ((~*&v3 & 0x7FF0000000000000) != 0)
      {
        v2 = v3;
      }
    }
  }

  else
  {
    v3 = v1;
    if (v2 > v1)
    {
      goto LABEL_4;
    }
  }

  v4 = log2(v2);
  v6 = exp2(ceil(v4));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v6 <= -1.0)
    {
      __break(1u);
    }

    else if (v6 < 1.84467441e19)
    {
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

VisualIntelligenceUI::SessionAnalyticsSuggestedActionObserverModifier::Reason_optional __swiftcall SessionAnalyticsSuggestedActionObserverModifier.Reason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E142A34();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21E0FD934()
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

uint64_t sub_21E0FDA0C()
{
  sub_21E142204();
}

uint64_t sub_21E0FDAD0()
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

void sub_21E0FDBB0(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7261657070416E6FLL;
  v4 = 0x800000021E15AFD0;
  v5 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v5 = 0x72676B6361426E6FLL;
    v4 = 0xEC000000646E756FLL;
  }

  if (*v1)
  {
    v3 = 0x7070617369446E6FLL;
    v2 = 0xEB00000000726165;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SessionAnalyticsSuggestedActionObserverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD840);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD848) + 36));
  *v11 = sub_21DFE1364;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD850) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_21E101D44;
  v13[3] = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD858) + 36));
  *v15 = sub_21E101D54;
  v15[1] = v14;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_21E0FDDF0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  v6[0] = 1;
  return a1(v6);
}

void sub_21E0FDE6C(_BYTE *a1, void (*a2)(uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v36 = a2;
  v9 = sub_21E141E74();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E141E94();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21E141EB4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v28 - v21;
  if (*a1)
  {
    if (*a1 != 1)
    {
      LOBYTE(aBlock) = a4 & 1;
      v38 = a5;
      v43 = 1;
      v29 = a3;
      v23 = v20;
      v32 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
      sub_21E141724();
      sub_21DF3ED18(0, &qword_280F68C78);
      v30 = sub_21E1425C4();
      sub_21E141EA4();
      sub_21E141EC4();
      v31 = *(v16 + 8);
      v31(v18, v23);
      v24 = swift_allocObject();
      v25 = v29;
      *(v24 + 16) = v36;
      *(v24 + 24) = v25;
      *(v24 + 32) = a4 & 1;
      *(v24 + 40) = a5;
      v41 = sub_21E1027D4;
      v42 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_21E079CD4;
      v40 = &block_descriptor_162;
      v26 = _Block_copy(&aBlock);

      sub_21E141E84();
      aBlock = MEMORY[0x277D84F90];
      sub_21E1029FC(&qword_280F68CE8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
      sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
      sub_21E142764();
      v27 = v30;
      MEMORY[0x223D52DF0](v22, v14, v11, v26);
      _Block_release(v26);

      (*(v35 + 8))(v11, v9);
      (*(v33 + 8))(v14, v34);
      v31(v22, v32);
    }
  }

  else
  {
    LOBYTE(aBlock) = a4 & 1;
    v38 = a5;
    v43 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141724();
    LOBYTE(aBlock) = 3;
    v36(&aBlock);
  }
}

uint64_t sub_21E0FE310(uint64_t (*a1)(char *), uint64_t a2, char a3, uint64_t a4)
{
  v8[0] = a3;
  v9 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  result = sub_21E141714();
  if (v7 == 1)
  {
    v9 = a4;
    sub_21E141724();
    v8[0] = 2;
    return a1(v8);
  }

  return result;
}

uint64_t sub_21E0FE3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD840);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD848) + 36));
  *v11 = sub_21E102A64;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD850) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_21E102AA8;
  v13[3] = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD858) + 36));
  *v15 = sub_21E102A60;
  v15[1] = v14;
  swift_retain_n();
  return swift_retain_n();
}

VisualIntelligenceUI::AnalyticsShutterStatus_optional __swiftcall AnalyticsShutterStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

VisualIntelligenceUI::AnalyticsPillEngagement_optional __swiftcall AnalyticsPillEngagement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21E0FE5C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C40);
  v46 = a2;
  result = sub_21E142A04();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v45 = result;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = *(v5 + 56) + 40 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);
      if ((v46 & 1) == 0)
      {

        sub_21DF27ADC(v28, v29, v30, v31, v32);
      }

      v48 = v30;
      v33 = v29;
      v34 = v28;
      sub_21E142C14();
      sub_21E142204();
      result = sub_21E142C44();
      v7 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        v17 = v31;
        v18 = v32;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v31;
      v18 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v45 + 48) + 16 * v15);
      *v19 = v49;
      v19[1] = v26;
      v20 = *(v45 + 56) + 40 * v15;
      *v20 = v34;
      *(v20 + 8) = v33;
      *(v20 + 16) = v16;
      *(v20 + 24) = v17;
      *(v20 + 32) = v18;
      ++*(v45 + 16);
      v5 = v44;
      v12 = v47;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E0FE8E0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C50);
  v40 = a2;
  result = sub_21E142A04();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_21DF27B48(v28, v41);
      }

      else
      {
        sub_21DF236C0(v28, v41, &qword_27CEA6C58);
      }

      sub_21E142C14();
      sub_21E142204();
      result = sub_21E142C44();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_21DF27B48(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21E0FEC34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF0);
  v35 = a2;
  result = sub_21E142A04();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21E142C14();
      sub_21E142204();
      result = sub_21E142C44();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E0FEED8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF8);
  result = sub_21E142A04();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_21E142C14();
      sub_21E142204();

      result = sub_21E142C44();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_21E0FF424(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21E13D344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C08);
  v39 = a2;
  result = sub_21E142A04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21E1029FC(&qword_280F6C090, MEMORY[0x277CC95F0]);
      result = sub_21E142014();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21E0FF800(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C28);
  v33 = a2;
  result = sub_21E142A04();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v5 + 56) + 104 * v20;
      if (v33)
      {
        sub_21DF27A80(v24, v34);
      }

      else
      {
        sub_21DFA1148(v24, v34);
      }

      sub_21E142C14();
      sub_21E142204();
      result = sub_21E142C44();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21DF27A80(v34, *(v7 + 56) + 104 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21E0FFAC4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21E13D344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB040);
  v40 = a2;
  result = sub_21E142A04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_21E1029FC(&qword_280F6C090, MEMORY[0x277CC95F0]);
      result = sub_21E142014();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_21E0FFE84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_21E0FFEE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  result = sub_21DF27B48(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_21E0FFF84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_21E0FFFCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21E13D344();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_21E100084(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21DF27A80(a4, a5[7] + 104 * a1);
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

void *sub_21E1000F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C40);
  v27 = v0;
  v1 = *v0;
  v28 = sub_21E1429F4();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = *(v1 + 56) + v14;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = (*(v28 + 48) + v15);
        v25 = *(v19 + 32);
        *v24 = v18;
        v24[1] = v17;
        v26 = *(v28 + 56) + v14;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v25;

        result = sub_21DF27ADC(v20, v21, v22, v23, v25);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_21E1002B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C50);
  v4 = *v0;
  v5 = sub_21E1429F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21DF236C0(*(v4 + 56) + v26, v30, &qword_27CEA6C58);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21DF27B48(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_21E100500()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF0);
  v2 = *v0;
  v3 = sub_21E1429F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_21E10066C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF8);
  v2 = *v0;
  v3 = sub_21E1429F4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_21E1007B8()
{
  v1 = v0;
  v33 = sub_21E13D344();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C08);
  v3 = *v0;
  v4 = sub_21E1429F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21E100A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C28);
  v2 = *v0;
  v3 = sub_21E1429F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 104 * v16;
      sub_21DFA1148(*(v2 + 56) + 104 * v16, v24);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      sub_21DF27A80(v24, *(v4 + 56) + v21);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

char *sub_21E100BE0()
{
  v1 = v0;
  v31 = sub_21E13D344();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB040);
  v3 = *v0;
  v4 = sub_21E1429F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_21E100E50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E101978(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21E100EBC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21E100EBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E142AA4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21E142314();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21E101084(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21E100FB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E100FB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21E142B14(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E101084(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21E101914(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21E101660((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21E142B14();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21E142B14();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21E06A15C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21E06A15C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21E101660((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21E101914(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21E101888(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21E142B14(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21E101660(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21E142B14() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21E142B14() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_21E101888(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21E101914(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21E1019D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA460);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEAA448);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEAA448);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEAA448);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21E1029FC(&qword_27CEAA468, MEMORY[0x277CC9578]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEAA448);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEAA460);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEAA448);
  v17 = 0;
  return v17 & 1;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E101D68()
{
  result = qword_27CEAD860;
  if (!qword_27CEAD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD860);
  }

  return result;
}

unint64_t sub_21E101DDC()
{
  result = qword_27CEAD868;
  if (!qword_27CEAD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD868);
  }

  return result;
}

unint64_t sub_21E101E34()
{
  result = qword_27CEAD870;
  if (!qword_27CEAD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD870);
  }

  return result;
}

void sub_21E101E90()
{
  sub_21E13D834();
  if (v0 <= 0x3F)
  {
    sub_21E13D344();
    if (v1 <= 0x3F)
    {
      sub_21E1023F8();
      if (v2 <= 0x3F)
      {
        sub_21E13E7A4();
        if (v3 <= 0x3F)
        {
          sub_21E13D404();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21E1023F8()
{
  if (!qword_280F6C098)
  {
    sub_21E13D304();
    v0 = sub_21E142724();
    if (!v1)
    {
      atomic_store(v0, &qword_280F6C098);
    }
  }
}

unint64_t sub_21E102490()
{
  result = qword_280F68F00;
  if (!qword_280F68F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD858);
    sub_21E10251C();
    sub_21DFA3F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F00);
  }

  return result;
}

unint64_t sub_21E10251C()
{
  result = qword_280F68F40;
  if (!qword_280F68F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD850);
    sub_21E1025A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F40);
  }

  return result;
}

unint64_t sub_21E1025A8()
{
  result = qword_280F68FC0;
  if (!qword_280F68FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD848);
    sub_21DF23E5C(&unk_280F68E30, &qword_27CEAD840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FC0);
  }

  return result;
}

uint64_t sub_21E102674()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__pillAnalyticsManager) = *(v0 + 24);
}

uint64_t sub_21E102700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_58Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21E1027E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_21E102840(uint64_t a1)
{
  v5 = sub_21E0F4508(a1);

  sub_21E100E50(&v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD588);
  sub_21DF23E5C(&qword_27CEAD590, &qword_27CEAD588);
  sub_21E142044();

  v1 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v2 = sub_21E1420F4();

  v3 = [v1 initWithString_];

  return v3;
}

uint64_t sub_21E1029FC(unint64_t *a1, void (*a2)(uint64_t))
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

double FocusSelectionModel.contentsScale.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t FocusSelectionModel.contentsScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return result;
}

float FocusSelectionModel.focusSelectionConfiguration.getter@<S0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v3 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration;
  swift_beginAccess();
  result = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = result;
  return result;
}

float sub_21E102DA8@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration;
  swift_beginAccess();
  result = *(v4 + 4);
  *a2 = *v4;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_21E102E78(uint64_t a1)
{
  v1 = *(a1 + 4);
  LOBYTE(v3[0]) = *a1;
  v3[1] = v1;
  return FocusSelectionModel.focusSelectionConfiguration.setter(v3);
}

uint64_t FocusSelectionModel.focusSelectionConfiguration.setter(float *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration);
  result = swift_beginAccess();
  if (v2 == *v4 && v4[1] == v3)
  {
    *v4 = v2;
    v4[1] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t FocusSelectionModel.__allocating_init(active:)(char a1)
{
  v2 = swift_allocObject();
  FocusSelectionModel.init(active:)(a1);
  return v2;
}

uint64_t sub_21E1030EC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  sub_21E142614();
  CGRectOffset(v7, -v1, -v2);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetWidth(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetHeight(v9);
  sub_21E142614();

  return sub_21E142614();
}

uint64_t sub_21E1031E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  sub_21E142614();
  CGRectOffset(v7, -v1, -v2);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetWidth(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetHeight(v9);

  return sub_21E142614();
}

CGFloat sub_21E1032AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 72) / *(v4 + 56);
  v10 = CGRectGetMinX(*&a1) * v9;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetWidth(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetHeight(v14);
  return v10;
}

uint64_t FocusSelectionModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FocusSelectionModel.active.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21E1034D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t FocusSelectionModel.active.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E1036EC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*FocusSelectionModel.active.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E103890;
}

void *FocusSelectionModel.pixelBuffer.getter()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_21E1038E8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_21E1039BC(v2);
}

void FocusSelectionModel.pixelBuffer.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_21E1039BC(a1);
}

uint64_t sub_21E1039BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v20[1] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD888);
  sub_21E13DE64();
  v13 = sub_21E1423F4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v11, v5);
  sub_21E1423C4();

  v15 = sub_21E1423B4();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = v14;
  (*(v6 + 32))(&v17[v16], v8, v5);

  sub_21E0C3104(0, 0, v4, &unk_21E158588, v17);

  return (*(v6 + 8))(v11, v5);
}

void (*FocusSelectionModel.pixelBuffer.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21E103CE8;
}

void sub_21E103CE8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_21E1039BC(v4);
  }

  free(v3);
}

uint64_t sub_21E103D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = (v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didSelect[0]);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = &unk_21E158560;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_21DF09028(v5);
}

uint64_t sub_21E103E84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21DF4AA04;

  return v7(a2);
}

uint64_t sub_21E103F78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_21E158550;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21DF09028(v1);
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(v4);
}

uint64_t sub_21E1040D4(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_21DF8DAF8;

  return v5();
}

uint64_t sub_21E1041FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3B4();
  a5(a1, a2);
}

void (*FocusSelectionModel.didSelect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E104428;
}

uint64_t sub_21E10445C(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v6 = (v3 + *a2);
  swift_beginAccess();
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_21E104538@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = (v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_21E0A0D10;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_21DF09028(v5);
}

uint64_t sub_21E104644(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21E107390;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21DF09028(v1);
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(v4);
}

uint64_t sub_21E1047E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (a1 + *a4);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  a5(a2, a3);
  return a6(v11, v12);
}

void (*FocusSelectionModel.didHighlight.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E1049C8;
}

uint64_t FocusSelectionModel.selectionCount.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21E104A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t FocusSelectionModel.selectionCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return result;
}

void (*FocusSelectionModel.selectionCount.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E104DE4;
}

void *sub_21E104DF0()
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
  v2 = v1;
  return v1;
}

void sub_21E104EA0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges;
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21E1070C4();
  v6 = v5;
  v7 = a1;
  v8 = sub_21E1426D4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

double sub_21E10503C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

void (*FocusSelectionModel.normalizedVisibleRect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E1052C8;
}

uint64_t type metadata accessor for FocusSelectionModel()
{
  result = qword_280F6A5A0;
  if (!qword_280F6A5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E105348(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = (v5 + *a1);
  swift_beginAccess();
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  result = CGRectEqualToRect(*v10, v13);
  if (result)
  {
    v10->origin.x = a2;
    v10->origin.y = a3;
    v10->size.width = a4;
    v10->size.height = a5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E1054C0(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = (a1 + *a2);
  result = swift_beginAccess();
  *v10 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  return result;
}

void (*FocusSelectionModel.contentsRect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E105678;
}

uint64_t sub_21E105684(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t sub_21E1056E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*FocusSelectionModel.contentsScale.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E105894;
}

__n128 sub_21E1058C8@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v6 = v5 + *a2;
  swift_beginAccess();
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

void (*FocusSelectionModel.frame.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E105B30;
}

uint64_t sub_21E105B3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 4) = v2;
  return result;
}

void (*FocusSelectionModel.focusSelectionConfiguration.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E105CF4;
}

uint64_t FocusSelectionModel.init(active:)(char a1)
{
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer) = 0;
  v3 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didSelect);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale) = 0x3FF0000000000000;
  v5 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration;
  *v5 = 0;
  *(v5 + 4) = 1045220557;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel____lazy_storage___ciContext) = 0;
  sub_21E13D3F4();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active) = a1;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v6 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__normalizedVisibleRect);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v11 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v16 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__frame);
  *v16 = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  return v1;
}

id sub_21E105E64()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel____lazy_storage___ciContext;
  v2 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel____lazy_storage___ciContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel____lazy_storage___ciContext);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall FocusSelectionModel.handleHighlight()()
{
  swift_getKeyPath();
  sub_21E106D00(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v1 = (v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {

    v2(v3);
    sub_21DF1F1DC(v2);
  }
}

uint64_t sub_21E105FBC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_21E1423C4();
  v2[7] = sub_21E1423B4();
  v4 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E106054, v4, v3);
}

uint64_t sub_21E106054()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD880);
  sub_21E13DE74();
  v1 = v0[2];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
    v3 = objc_opt_self();
    v4 = [v3 cannyEdgeDetectorFilter];
    [v4 setInputImage_];
    LODWORD(v5) = 15.0;
    [v4 setGaussianSigma_];
    [v4 setPerceptual_];
    LODWORD(v6) = 1017370378;
    [v4 setThresholdLow_];
    LODWORD(v7) = 1028443341;
    [v4 setThresholdHigh_];
    [v4 setHysteresisPasses_];
    v8 = [v4 outputImage];
    if (v8)
    {
      v9 = v8;
      v10 = [v3 morphologyMaximumFilter];
      [v10 setInputImage_];
      LODWORD(v11) = 7.0;
      [v10 setRadius_];
      v12 = [v10 outputImage];
      if (v12)
      {
        v13 = v12;
        v14 = sub_21E105E64();
        [v13 extent];
        v15 = [v14 createCGImage:v13 fromRect:?];

        if (v15)
        {
          v16 = v0[6];
          sub_21E104EA0([objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v15 scale:0 orientation:1.0]);
          v17 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
          swift_beginAccess();
          v18 = *(v16 + v17);
          *(v16 + v17) = 0;

          sub_21E1039BC(0);
        }
      }
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_21E1062F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21E1423C4();
  v5[8] = sub_21E1423B4();
  v7 = sub_21E142364();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_21E106390, v7, v6);
}

uint64_t sub_21E106390()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_21E10649C;
    v3 = *(v0 + 56);

    return sub_21E105FBC(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21E10649C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21E1065E0, v3, v2);
}

uint64_t sub_21E1065E0()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t FocusSelectionModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21DF1F1DC(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didSelect[0]));
  sub_21DF1F1DC(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight));

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FocusSelectionModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21DF1F1DC(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didSelect[0]));
  sub_21DF1F1DC(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight));

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21E106880@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

BOOL _s20VisualIntelligenceUI18FocusSelectionAreaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v5 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
    if (v5 && (*(a1 + 64) == *(a2 + 64) ? (v6 = *(a1 + 72) == *(a2 + 72)) : (v6 = 0), v6))
    {
      return CGRectEqualToRect(*(a1 + 80), *(a2 + 80));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _s20VisualIntelligenceUI14FocusSelectionO2eeoiySbAC_ACtFZ_0(unint64_t *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return (v3 & 0x8000000000000000) == 0 && *(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24) && *(v2 + 32) == *(v3 + 32) && *(v2 + 40) == *(v3 + 40) && *(v2 + 48) == *(v3 + 48);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v5 = _s20VisualIntelligenceUI18FocusSelectionAreaC2eeoiySbAC_ACtFZ_0(v2 & 0x7FFFFFFFFFFFFFFFLL, v3 & 0x7FFFFFFFFFFFFFFFLL);

  return v5;
}

BOOL _s20VisualIntelligenceUI19FocusSelectionPointC2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  return a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6];
}

uint64_t sub_21E106AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21E106B70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

__n128 sub_21E106C58(void *a1)
{
  v2 = (*(v1 + 16) + *a1);
  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  swift_beginAccess();
  result = v5;
  *v2 = v5;
  v2[1] = v4;
  return result;
}

uint64_t sub_21E106D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E106D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21E106DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21E106F44()
{
  result = sub_21E13D344();
  if (v1 <= 0x3F)
  {
    result = sub_21E13D404();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_21E107084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges) = v2;
  v4 = v2;
}

unint64_t sub_21E1070C4()
{
  result = qword_280F68C28;
  if (!qword_280F68C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F68C28);
  }

  return result;
}

uint64_t sub_21E107110(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return sub_21E1040D4(a1, v4);
}

uint64_t sub_21E1071C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21DF4AA04;

  return sub_21E103E84(a1, a2, v6);
}

uint64_t sub_21E10728C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD880) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21DF8DAF8;

  return sub_21E1062F4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21E1073EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v9 = sub_21E13D304();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  type metadata accessor for CGRect(0);
  sub_21E141704();
  v17 = v39;
  v18 = v38;
  *(a5 + 24) = v37;
  *(a5 + 40) = v18;
  *(a5 + 56) = v17;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  sub_21E141704();
  v23 = v39;
  v24 = v38;
  *(a5 + 64) = v37;
  *(a5 + 80) = v24;
  *(a5 + 96) = v23;
  *a5 = a1;
  type metadata accessor for WandVFXOverlayModel(0);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 24) = 0x3FF0000000000000;
  *(v25 + 48) = 257;
  swift_retain_n();

  sub_21E13D3F4();
  sub_21E13D2F4();
  type metadata accessor for FocusSelectionGestureContext(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled) = 1;
  *(v26 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight) = 0;
  sub_21E13D3F4();
  v27 = v32;
  v26[2] = a1;
  v26[3] = v27;
  v28 = MEMORY[0x277D84F90];
  v26[4] = a4;
  v26[5] = v25;
  v26[7] = v28;
  (*(v10 + 32))(v26 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext_startDate, v12, v9);
  *(v26 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) = 0;
  v26[6] = a2;
  v33 = v26;

  sub_21E141704();

  v30 = *(&v37 + 1);
  *(a5 + 8) = v37;
  *(a5 + 16) = v30;
  return result;
}

uint64_t sub_21E107678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress);
  return result;
}

id sub_21E107750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
  *a2 = v4;

  return v4;
}

void sub_21E107810(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E104EA0(v1);
}

uint64_t sub_21E10784C()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();
}

uint64_t sub_21E1078F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21E10799C(uint64_t a1)
{

  v3 = sub_21E13D324();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E107B00()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();
}

uint64_t sub_21E107BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  *a2 = *(v3 + 56);
}

uint64_t sub_21E107C50()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3B4();
}

uint64_t sub_21E107D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21E107E5C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  return *(v2 + *a2);
}

uint64_t sub_21E107F24(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E108028()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  if (*(*(v0 + 56) + 16))
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    if (*(*(v0 + 56) + 16))
    {
      swift_getKeyPath();
      sub_21E13D3C4();

      v3 = *(v0 + 56);
      v4 = *(v3 + 16);
      if (v4)
      {

        v5 = v3 + 48;
        v6 = 0.0;
        do
        {
          sub_21E1426A4();
          if (v6 <= v7)
          {
            v6 = v7;
          }

          v5 += 24;
          --v4;
        }

        while (v4);

        v8 = v6 * 0.35;
      }

      else
      {
        v8 = 0.0;
      }

      result = sub_21E1426A4();
      if (((v9 <= v8) ^ *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight)))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21E13D3B4();
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight) = v9 <= v8;
      }
    }
  }

  return result;
}

BOOL sub_21E108298()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  if (!*(*(v0 + 56) + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  if (!*(*(v0 + 56) + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  swift_getKeyPath();
  sub_21E13D3C4();

  v3 = *(v0 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 24 * v4 + 8);
  sub_21E1426A4();
  swift_getKeyPath();
  sub_21E13D3C4();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

  sub_21E13D3C4();

  v7 = v6 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__focusSelectionConfiguration;
  swift_beginAccess();
  v8 = *(v7 + 4);

  return v5 - v2 >= v8;
}

uint64_t sub_21E10853C()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext_startDate;
  v2 = sub_21E13D304();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_21E1086F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v74 - v4;
  v79 = v1;
  v6 = *&v1[OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_gestureContext];
  swift_getKeyPath();
  v80 = v6;
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled) == 1)
  {
    v7 = v6[5];
    swift_getKeyPath();
    v80 = v7;
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);

    sub_21E13D3C4();

    v8 = v7[4];
    if (v8 >= 2 && (v9 = v8, v10 = [v9 behaviorGraph], v9, v10))
    {
      v11 = sub_21E142354();
      v12 = sub_21E1420F4();
      [v10 setValue:v11 forKeyPath:v12];
    }

    else
    {
    }

    if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v74 - 2) = v6;
      *(&v74 - 8) = 0;
      v80 = v6;
      sub_21E13D3B4();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) = 0;
    }

    if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight) == 1)
    {
      *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight) = 1;
    }

    else
    {
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      *(&v74 - 2) = v6;
      *(&v74 - 8) = 1;
      v80 = v6;
      sub_21E13D3B4();
    }

    swift_getKeyPath();
    v80 = v6;
    sub_21E13D3C4();

    v15 = v6[7];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      v18 = INFINITY;
      v19 = -INFINITY;
      v20 = -INFINITY;
      v21 = INFINITY;
      do
      {
        v22 = *(v17 - 1);
        v23 = *v17;
        if (v22 < v21)
        {
          v21 = *(v17 - 1);
        }

        if (v23 < v18)
        {
          v18 = *v17;
        }

        if (v20 <= v22)
        {
          v20 = *(v17 - 1);
        }

        if (v19 <= v23)
        {
          v19 = *v17;
        }

        v17 += 3;
        --v16;
      }

      while (v16);
      v24 = [a1 view];
      if (v24)
      {
        v25 = v24;
        v26 = v6[5];
        swift_getKeyPath();
        v80 = v26;

        sub_21E13D3C4();

        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          v77 = Strong;
          [Strong bounds];
          *&v78 = v20 - v21;
          v76 = v19 - v18;
          [v25 bounds];
          v75 = v28;
          *&v74 = v29;
          v30 = v6[6];
          swift_getKeyPath();
          v80 = v30;
          sub_21E10E7A8(&unk_280F6B040, type metadata accessor for OverlayViewModel);

          sub_21E13D3C4();

          ITKRectFromNormalizedSubrect();
          ITKRectFromNormalizedSubrect();
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          swift_getKeyPath();
          v80 = v6;
          sub_21E13D3C4();

          v39 = v6[2];
          swift_getKeyPath();
          v80 = v39;
          v40 = sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

          *&v78 = v40;
          sub_21E13D3C4();

          v41 = *(v39 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
          v42 = v41;

          if (v41)
          {
            v43 = &property descriptor for NewSaliencyModel.entities;
            [v42 size];
            v76 = v44;
          }

          else
          {
            v43 = &property descriptor for NewSaliencyModel.entities;
            [v25 bounds];
            v76 = v45;
          }

          swift_getKeyPath();
          v80 = v6;
          sub_21E13D3C4();

          v46 = v6[2];
          swift_getKeyPath();
          v80 = v46;

          sub_21E13D3C4();

          v47 = *(v46 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
          v48 = v47;

          if (v47)
          {
            [v48 size];
            v75 = v49;
          }

          else
          {
            [v25 v43[162]];
            v75 = v50;
          }

          [v25 itk_viewPointRatioFromWindow];
          v52 = v51 * 40.0;
          v81.origin.x = v32;
          v81.origin.y = v34;
          v81.size.width = v36;
          v81.size.height = v38;
          if (CGRectGetWidth(v81) <= v52)
          {
            v53 = v52 * -0.5;
          }

          else
          {
            v53 = 0.0;
          }

          v82.origin.x = v32;
          v82.origin.y = v34;
          v82.size.width = v36;
          v82.size.height = v38;
          if (CGRectGetHeight(v82) <= v52)
          {
            v54 = v52 * -0.5;
          }

          else
          {
            v54 = 0.0;
          }

          v83.origin.x = v32;
          v83.origin.y = v34;
          v83.size.width = v36;
          v83.size.height = v38;
          v84 = CGRectInset(v83, v53, v54);
          x = v84.origin.x;
          y = v84.origin.y;
          width = v84.size.width;
          height = v84.size.height;
          [v25 v43[162]];
          v60 = v59;
          v62 = v61;
          swift_getKeyPath();
          v80 = v6;
          sub_21E13D3C4();

          v63 = v6[2];
          swift_getKeyPath();
          v80 = v63;

          sub_21E13D3C4();

          v64 = (v63 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
          swift_beginAccess();
          v65 = v64[1];
          v78 = *v64;
          v74 = v65;

          type metadata accessor for FocusSelectionArea();
          v66 = swift_allocObject();
          *(v66 + 16) = x;
          *(v66 + 24) = y;
          *(v66 + 32) = width;
          *(v66 + 40) = height;
          *(v66 + 48) = v60;
          *(v66 + 56) = v62;
          v67 = v75;
          *(v66 + 64) = v76;
          *(v66 + 72) = v67;
          v68 = v74;
          *(v66 + 80) = v78;
          *(v66 + 96) = v68;
          if (sub_21E108298())
          {
            v69 = sub_21E1423F4();
            (*(*(v69 - 8) + 56))(v5, 1, 1, v69);
            sub_21E1423C4();
            v70 = v79;

            v71 = sub_21E1423B4();
            v72 = swift_allocObject();
            v73 = MEMORY[0x277D85700];
            v72[2] = v71;
            v72[3] = v73;
            v72[4] = v70;
            v72[5] = v66 | 0x8000000000000000;
            sub_21E0C2E04(0, 0, v5, &unk_21E158C90, v72);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_21E1090E0(void *a1)
{
  v6 = *(v1 + OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_gestureContext);
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled) != 1)
  {
    return;
  }

  v7 = sub_21E10B6AC();

  if (v7)
  {
LABEL_16:
    v21 = [a1 view];
    if (!v21)
    {
      return;
    }

    v9 = v21;
    swift_getKeyPath();
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);

    sub_21E13D3C4();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {

      return;
    }

    [a1 locationInView_];
    v23 = v22;
    v69 = v24;
    v70 = v22;
    v25 = v24;
    [Strong bounds];
    ITKAspectRatio();
    [v9 convertPoint:Strong toCoordinateSpace:{v23, v25}];
    [v9 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v6[6];
    swift_getKeyPath();
    sub_21E10E7A8(&unk_280F6B040, type metadata accessor for OverlayViewModel);

    sub_21E13D3C4();

    v36 = v34[11];
    v35 = v34[12];
    v37 = v34[13];
    v38 = v34[14];

    v40 = MEMORY[0x223D53790](v39, v27, v29, v31, v33, v36, v35, v37, v38);
    v2 = MEMORY[0x223D53770](v70, v69, v40, v41, v42, v43);
    v3 = v44;
    [a1 lastTouchTimestamp];
    v4 = v45;
    swift_getKeyPath();
    sub_21E13D3C4();

    swift_getKeyPath();
    sub_21E13D3E4();

    v11 = v6[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6[7] = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v9 = 0;
  sub_21E13D3B4();

  swift_getKeyPath();
  sub_21E13D3C4();

  Strong = v6[2];
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

  sub_21E13D3C4();

  swift_getKeyPath();
  sub_21E13D3E4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
  swift_beginAccess();
  v12 = *&v11[Strong];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *&v11[Strong] = v14;
    swift_getKeyPath();
    sub_21E13D3D4();

    if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) == 1)
    {
      *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) = 1;
    }

    else
    {
      v15 = swift_getKeyPath();
      MEMORY[0x28223BE20](v15);
      sub_21E13D3B4();
    }

    if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight))
    {
      v16 = swift_getKeyPath();
      MEMORY[0x28223BE20](v16);
      sub_21E13D3B4();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight) = 0;
    }

    v17 = v6[5];
    if (*(v17 + 49))
    {
      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);
      sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);

      sub_21E13D3B4();
    }

    else
    {
      *(v17 + 49) = 0;
    }

    v19 = v6[5];
    if (*(v19 + 48))
    {
      v20 = swift_getKeyPath();
      MEMORY[0x28223BE20](v20);
      sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);

      sub_21E13D3B4();
    }

    else
    {
      *(v19 + 48) = 0;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_36:
  v11 = sub_21E06B060(0, *(v11 + 2) + 1, 1, v11);
  v6[7] = v11;
LABEL_19:
  v48 = *(v11 + 2);
  v47 = *(v11 + 3);
  if (v48 >= v47 >> 1)
  {
    v11 = sub_21E06B060((v47 > 1), v48 + 1, 1, v11);
  }

  *(v11 + 2) = v48 + 1;
  v49 = &v11[24 * v48];
  *(v49 + 4) = v4;
  v49[5] = v2;
  *(v49 + 6) = v3;
  v6[7] = v11;
  swift_getKeyPath();
  sub_21E13D3D4();

  sub_21E108028();
  v50 = &property descriptor for NewSaliencyModel.entities;
  [Strong bounds];
  ITKNormalizedPointInRect();
  ITKFlipPoint();
  ITKPointFromNormalizedRect();
  v51 = v6[5];
  swift_getKeyPath();

  sub_21E13D3C4();

  v52 = *(v51 + 32);
  if (v52 >= 2 && (v53 = v52, v54 = [v53 behaviorGraph], v53, v54))
  {
    v55 = sub_21E142694();
    v56 = sub_21E1420F4();
    [v54 setValue:v55 forKeyPath:v56];

    v50 = &property descriptor for NewSaliencyModel.entities;
  }

  else
  {
  }

  [Strong itk_viewPointRatioFromWindow];
  [Strong v50[162]];
  v57 = v6[5];
  swift_getKeyPath();

  sub_21E13D3C4();

  v58 = *(v57 + 32);
  if (v58 >= 2 && (v59 = v58, v60 = [v59 behaviorGraph], v59, v60))
  {
    v61 = sub_21E13D424();
    v62 = sub_21E1420F4();
    [v60 setValue:v61 forKeyPath:v62];
  }

  else
  {
  }

  v63 = v6[5];
  swift_getKeyPath();

  sub_21E13D3C4();

  v64 = *(v63 + 32);
  if (v64 >= 2 && (v65 = v64, v66 = [v65 behaviorGraph], v65, v66))
  {
    v67 = sub_21E142354();
    v68 = sub_21E1420F4();
    [v66 setValue:v67 forKeyPath:v68];
  }

  else
  {
  }
}

uint64_t sub_21E109E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_21E1423C4();
  v5[11] = sub_21E1423B4();
  v7 = sub_21E142364();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x2822009F8](sub_21E109E98, v7, v6);
}

uint64_t sub_21E109E98()
{
  v1 = v0[10];
  v2 = *(v0[9] + OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_gestureContext);
  v0[14] = v2;
  v3 = *(v2 + 24);
  v0[15] = *(v2 + 32);
  v0[5] = v1;

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_21E109FB8;

  return v6(v0 + 5);
}

uint64_t sub_21E109FB8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21E10A0FC, v3, v2);
}

uint64_t sub_21E10A0FC()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[6] = v1;
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext);
  sub_21E13D3C4();

  v2 = *(v1 + 16);
  swift_getKeyPath();
  v0[7] = v2;
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

  sub_21E13D3C4();

  v3 = (v2 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didSelect[0]);
  swift_beginAccess();
  v4 = *v3;
  v0[17] = *v3;
  v0[18] = v3[1];
  sub_21DF35DC0(v4);

  if (v4)
  {
    v0[8] = v0[10];
    v8 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_21E10A388;

    return v8(v0 + 8);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21E10A388()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21E10A4A8, v3, v2);
}

uint64_t sub_21E10A4A8()
{
  v1 = *(v0 + 136);

  sub_21DF1F1DC(v1);
  v2 = *(v0 + 8);

  return v2();
}

id sub_21E10A598@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for FocusSelectionGesture.Coordinator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_focusModel] = v3;
  *&v6[OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_gestureContext] = v4;
  v8.receiver = v6;
  v8.super_class = v5;

  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

BOOL sub_21E10A630(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      return v2 == 1;
    }

    if (v2 >= 2)
    {
      sub_21DF3ED18(0, &qword_280F68C10);
      if (sub_21E1426D4())
      {
        return sub_21E1426D4() & 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21E10A6DC()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21E10A780@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21E10A82C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
    sub_21E13D3B4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_21DF3ED18(0, &unk_27CEAD970);
  v3 = v2;
  v4 = sub_21E1426D4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void *sub_21E10A9D4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  v1 = *(v0 + 32);
  sub_21E110D04(v1, *(v3 + 40));
  return v1;
}

id sub_21E10AA88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = v4;
  a2[1] = v5;
  return sub_21E110D04(v4, v5);
}

void sub_21E10AB34(void *a1, void *a2)
{
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  if (!v6)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_11;
    }

LABEL_15:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
    sub_21E13D3B4();
    sub_21E110DB4(a1, a2);

    return;
  }

  if (v6 != 1)
  {
    if (a1 >= 2)
    {
      sub_21DF3ED18(0, &qword_280F68C10);
      v8 = v6;
      v9 = v5;
      if (sub_21E1426D4())
      {
        v10 = sub_21E1426D4();
        sub_21E110DB4(v6, v5);
        if (v10)
        {
          v7 = *(v2 + 32);
          v5 = *(v2 + 40);
          goto LABEL_11;
        }
      }

      else
      {
        sub_21E110DB4(v6, v5);
      }
    }

    goto LABEL_15;
  }

  if (a1 != 1)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_11:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  sub_21E110DB4(v7, v5);
}

uint64_t sub_21E10AD28()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  return *(v0 + 48);
}

uint64_t sub_21E10ADC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_21E10AE70(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E10AF80()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  return *(v0 + 49);
}

uint64_t sub_21E10B020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_21E10B0C8(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E10B1D8()
{
  v1[3] = *v0;
  v2 = sub_21E13D264();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_21E13DF44();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E10B350, 0, 0);
}

void sub_21E10B350()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_21E13DEE4();
  sub_21E13DF04();
  sub_21E13DE94();
  sub_21E13DEA4();
  sub_21E13DE84();
  (*(v2 + 8))(v1, v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21E1420F4();
  v7 = sub_21E1420F4();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (!v8)
  {
    __break(1u);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  sub_21E13D214();

  (*(v12 + 32))(v9, v10, v11);
  v13 = sub_21E13D1D4();
  v14 = objc_opt_self();
  v0[2] = 0;
  v15 = [v14 worldWithURL:v13 options:0 error:v0 + 2];

  v16 = v0[2];
  if (v15)
  {
    v17 = v16;
    v18 = [v15 rootNode];
    v19 = sub_21E1420F4();
    v20 = [v18 childNodeWithName_];

    if (v20)
    {
      (*(v0[5] + 8))(v0[7], v0[4]);

      v21 = v0[1];

      v21(v20, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = v16;
    sub_21E13D0F4();

    swift_willThrow();

    swift_unexpectedError();
  }
}

uint64_t sub_21E10B6AC()
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
    v2 = v1;
    v3 = [v2 behaviorGraph];

    if (v3)
    {
      v4 = sub_21E1420F4();
      v5 = [v3 valueForKeyPath_];

      if (v5)
      {
        sub_21E142754();

        swift_unknownObjectRelease();
      }

      else
      {

        v8 = 0u;
        v9 = 0u;
      }

      v10[0] = v8;
      v10[1] = v9;
      if (*(&v9 + 1))
      {
        if (swift_dynamicCast())
        {
          return v7;
        }
      }

      else
      {
        sub_21DF23614(v10, &unk_27CEAC970);
      }
    }
  }

  return 0;
}

uint64_t sub_21E10B84C()
{
  MEMORY[0x223D541D0](v0 + 16);
  sub_21E110DB4(*(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI19WandVFXOverlayModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_21E10B8F8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D78160]) init];
  [v3 setPreferredFramesPerSecond_];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v5 setPixelFormat_];
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  if (*(a2 + 32) >= 2uLL)
  {
    v7 = *(a2 + 40);
  }

  else
  {
    v7 = 0;
  }

  [v5 setWorld_];

  swift_getKeyPath();
  sub_21E13D3C4();

  [v5 setRendersContinuously_];
  v8 = [v5 world];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 clock];

    swift_getKeyPath();
    sub_21E13D3C4();

    [v10 setPaused_];
  }

  [v5 setHidden_];
  swift_getKeyPath();
  sub_21E13D3C4();

  v11 = *(a2 + 32);
  if (v11 >= 2)
  {
    v12 = v11;
    v13 = [v12 behaviorGraph];

    if (v13)
    {
      v14 = sub_21E142694();
      v15 = sub_21E1420F4();
      [v13 setValue:v14 forKeyPath:v15];
    }
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v16 = *(a2 + 32);
  if (v16 >= 2)
  {
    v17 = v16;
    v18 = [v17 behaviorGraph];

    if (v18)
    {
      v19 = sub_21E13D424();
      v20 = sub_21E1420F4();
      [v18 setValue:v19 forKeyPath:v20];
    }
  }

  sub_21E10A82C(v5);
  return v5;
}

id sub_21E10BCCC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel);
  sub_21E13D3C4();

  [a1 setRendersContinuously_];
  v5 = [a1 world];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 clock];

    swift_getKeyPath();
    sub_21E13D3C4();

    [v7 setPaused_];
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  return [a1 setHidden_];
}

uint64_t sub_21E10BE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E110D48();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E10BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E110D48();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E10BF3C()
{
  sub_21E110D48();
  sub_21E1402A4();
  __break(1u);
}

uint64_t FocusSelectionView.focusModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FocusSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_21E13F3E4();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD890);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD898);
  MEMORY[0x28223BE20](v9);
  v11 = (&v67 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8A0);
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x28223BE20](v12);
  v68 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8A8);
  v16 = *(v15 - 8);
  v79 = v15;
  v80 = v16;
  MEMORY[0x28223BE20](v15);
  v70 = &v67 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8B0);
  MEMORY[0x28223BE20](v81);
  v78 = &v67 - v18;
  v19 = *(v1 + 80);
  v91 = *(v1 + 64);
  v92 = v19;
  v93 = *(v1 + 96);
  v20 = *(v1 + 16);
  *v88 = *v1;
  *&v88[16] = v20;
  v21 = *(v1 + 48);
  v89 = *(v1 + 32);
  v90 = v21;
  *v11 = sub_21E141CC4();
  v11[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8B8);
  sub_21E10C928(v88, v11 + *(v23 + 44));
  v24 = swift_allocObject();
  v25 = v92;
  *(v24 + 80) = v91;
  *(v24 + 96) = v25;
  *(v24 + 112) = v93;
  v26 = *&v88[16];
  *(v24 + 16) = *v88;
  *(v24 + 32) = v26;
  v27 = v90;
  *(v24 + 48) = v89;
  *(v24 + 64) = v27;
  v28 = (v11 + *(v9 + 36));
  sub_21E13F844();
  sub_21DFA1C44(v88, &v85);
  sub_21E1423D4();
  *v28 = &unk_21E1585F8;
  v28[1] = v24;
  v94 = *&v88[8];
  v85 = *&v88[8];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0);
  sub_21E141714();
  v29 = *v88;
  *&v85 = v83;
  *(&v85 + 1) = *v88;
  v30 = sub_21E10E480();
  v31 = sub_21E10E568();

  sub_21E1412B4();

  sub_21DF23614(v11, &qword_27CEAD898);
  v32 = v5;
  sub_21E13F3D4();
  v33 = swift_allocObject();
  v34 = v92;
  *(v33 + 80) = v91;
  *(v33 + 96) = v34;
  *(v33 + 112) = v93;
  v35 = *&v88[16];
  *(v33 + 16) = *v88;
  *(v33 + 32) = v35;
  v36 = v90;
  *(v33 + 48) = v89;
  *(v33 + 64) = v36;
  sub_21DFA1C44(v88, &v85);
  v37 = v71;
  v38 = v74;
  sub_21E141AA4();

  (*(v75 + 8))(v32, v38);
  sub_21E13F494();
  *&v85 = v9;
  *(&v85 + 1) = &type metadata for FocusSelectionGesture;
  v86 = v30;
  v87 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_21DF23E5C(&unk_280F69000, &qword_27CEAD890);
  v41 = v70;
  v42 = v72;
  v43 = v76;
  v44 = v68;
  sub_21E1410A4();
  v45 = v43;
  (*(v77 + 8))(v37, v43);
  v46 = v42;
  (*(v73 + 8))(v44, v42);
  v85 = v94;
  sub_21E141714();
  v47 = *(v83 + 48);

  v48 = *(v47 + 16);

  swift_getKeyPath();
  *&v85 = v48;
  sub_21E10E7A8(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  LOBYTE(v44) = *(v48 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress);

  LOBYTE(v83) = v44;
  v49 = swift_allocObject();
  v50 = v92;
  *(v49 + 80) = v91;
  *(v49 + 96) = v50;
  *(v49 + 112) = v93;
  v51 = *&v88[16];
  *(v49 + 16) = *v88;
  *(v49 + 32) = v51;
  v52 = v90;
  *(v49 + 48) = v89;
  *(v49 + 64) = v52;
  sub_21DFA1C44(v88, &v85);
  *&v85 = v46;
  *(&v85 + 1) = v45;
  v86 = OpaqueTypeConformance2;
  v87 = v40;
  swift_getOpaqueTypeConformance2();
  v54 = v78;
  v53 = v79;
  sub_21E141324();

  (*(v80 + 8))(v41, v53);
  v55 = swift_allocObject();
  v56 = v92;
  *(v55 + 80) = v91;
  *(v55 + 96) = v56;
  *(v55 + 112) = v93;
  v57 = *&v88[16];
  *(v55 + 16) = *v88;
  *(v55 + 32) = v57;
  v58 = v90;
  *(v55 + 48) = v89;
  *(v55 + 64) = v58;
  v59 = (v54 + *(v81 + 36));
  *v59 = sub_21E10EB7C;
  v59[1] = 0;
  v59[2] = sub_21E10EECC;
  v59[3] = v55;
  swift_getKeyPath();
  *&v83 = v29;
  sub_21DFA1C44(v88, &v85);
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);
  sub_21E13D3C4();

  v60 = (v29 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
  swift_beginAccess();
  v61 = v60[1];
  v83 = *v60;
  v84 = v61;
  v62 = swift_allocObject();
  v63 = v92;
  *(v62 + 80) = v91;
  *(v62 + 96) = v63;
  *(v62 + 112) = v93;
  v64 = *&v88[16];
  *(v62 + 16) = *v88;
  *(v62 + 32) = v64;
  v65 = v90;
  *(v62 + 48) = v89;
  *(v62 + 64) = v65;
  sub_21DFA1C44(v88, &v85);
  type metadata accessor for CGRect(0);
  sub_21E10F068();
  sub_21E10E7A8(&unk_280F68C60, type metadata accessor for CGRect);
  sub_21E141324();

  return sub_21DF23614(v54, &qword_27CEAD8B0);
}