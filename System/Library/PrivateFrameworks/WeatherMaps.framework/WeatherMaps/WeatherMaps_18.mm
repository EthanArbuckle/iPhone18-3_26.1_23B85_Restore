uint64_t sub_220FA3B68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FC2220();
  *a1 = result;
  return result;
}

uint64_t sub_220FA3BA0()
{
  v0 = sub_220FC1D20();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_220FA3BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0068);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v18 - v5;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0058);
  v7 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0], v8);
  v10 = v18 - v9;
  *v6 = sub_220FC1D60();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00C8) + 44)];
  *v11 = sub_220FC1D10();
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00D0);
  sub_220FA3EEC(&v11[*(v12 + 44)]);
  v18[4] = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0070);
  v14 = sub_220E453D4(&qword_27CFA0078, &qword_27CFA0068);
  v15 = sub_220E453D4(&qword_27CFA0080, &qword_27CFA0070);
  sub_220FC2170();
  sub_220E3B2DC(v6, &qword_27CFA0068);
  sub_220FC2310();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0060);
  v18[6] = v3;
  v18[7] = v13;
  v18[8] = v14;
  v18[9] = v15;
  swift_getOpaqueTypeConformance2();
  sub_220FAD314();
  v16 = v18[0];
  sub_220FC21A0();
  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_220FA3EEC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00D8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF60);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF68);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF70);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v29 - v23;
  sub_220FA4270(v12);
  sub_220FC2330();
  sub_220FC1BD0();
  sub_220E93658(v12, v16, &qword_27CF9FF60);
  memcpy(&v16[*(v13 + 36)], __src, 0x70uLL);
  sub_220FACFCC();
  sub_220FC2130();
  sub_220E3B2DC(v16, &qword_27CF9FF68);
  *v8 = sub_220FC1D70();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00E0);
  sub_220FA47EC(&v8[*(v25 + 44)]);
  sub_220E93294(v24, v20, &qword_27CF9FF70);
  sub_220E93294(v8, v4, &qword_27CFA00D8);
  v26 = v30;
  sub_220E93294(v20, v30, &qword_27CF9FF70);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00E8);
  sub_220E93294(v4, v26 + *(v27 + 48), &qword_27CFA00D8);
  sub_220E3B2DC(v8, &qword_27CFA00D8);
  sub_220E3B2DC(v24, &qword_27CF9FF70);
  sub_220E3B2DC(v4, &qword_27CFA00D8);
  return sub_220E3B2DC(v20, &qword_27CF9FF70);
}

uint64_t sub_220FA4270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFB0);
  MEMORY[0x28223BE20](v35, v3);
  v31 = &v31 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFF0);
  MEMORY[0x28223BE20](v38, v5);
  v39 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFF8);
  MEMORY[0x28223BE20](v32, v7);
  v33 = &v31 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF90);
  MEMORY[0x28223BE20](v37, v9);
  v34 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFA0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v31 - v13);
  v15 = sub_220FC2220();
  v16 = sub_220FC1F50();
  KeyPath = swift_getKeyPath();
  v18 = sub_220FC21F0();
  v19 = swift_getKeyPath();
  v36 = v11;
  v20 = (v14 + *(v11 + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEE8) + 28);
  v22 = *MEMORY[0x277CE1048];
  v23 = sub_220FC2240();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v14 = v15;
  v14[1] = KeyPath;
  v14[2] = v16;
  v14[3] = v19;
  v14[4] = v18;
  v24 = *v2;
  if (v24 == 4)
  {
    v25 = v31;
    sub_220E93294(v14, v31, &qword_27CF9FFA0);
    *(v25 + *(v35 + 36)) = xmmword_220FD98F0;
    sub_220E93294(v25, v33, &qword_27CF9FFB0);
    swift_storeEnumTagMultiPayload();
    sub_220FAD170();
    sub_220FAD228();
    v26 = v34;
    sub_220FC1DB0();
    sub_220E93294(v26, v39, &qword_27CF9FF90);
    swift_storeEnumTagMultiPayload();
    sub_220FAD0E4();
    sub_220FC1DB0();
    sub_220E3B2DC(v26, &qword_27CF9FF90);
    v27 = v25;
    v28 = &qword_27CF9FFB0;
LABEL_6:
    sub_220E3B2DC(v27, v28);
    return sub_220E3B2DC(v14, &qword_27CF9FFA0);
  }

  if (v24 != 5)
  {
    sub_220E93294(v14, v33, &qword_27CF9FFA0);
    swift_storeEnumTagMultiPayload();
    sub_220FAD170();
    sub_220FAD228();
    v29 = v34;
    sub_220FC1DB0();
    sub_220E93294(v29, v39, &qword_27CF9FF90);
    swift_storeEnumTagMultiPayload();
    sub_220FAD0E4();
    sub_220FC1DB0();
    v27 = v29;
    v28 = &qword_27CF9FF90;
    goto LABEL_6;
  }

  sub_220E93294(v14, v39, &qword_27CF9FFA0);
  swift_storeEnumTagMultiPayload();
  sub_220FAD0E4();
  sub_220FAD170();
  sub_220FC1DB0();
  return sub_220E3B2DC(v14, &qword_27CF9FFA0);
}

uint64_t sub_220FA47EC@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFC8);
  MEMORY[0x28223BE20](v91, v1);
  v3 = v81 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFD0);
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v86 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v85 = v81 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v84 = v81 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v92 = v81 - v15;
  v16 = sub_220FA4EC0();
  v18 = v17;
  v20 = v19;
  sub_220FC1F10();
  v21 = sub_220FC2030();
  v23 = v22;
  v25 = v24;

  sub_220ECFE1C(v16, v18, v20 & 1);

  sub_220FC1F30();
  v26 = sub_220FC1FB0();
  v28 = v27;
  v30 = v29;
  sub_220ECFE1C(v21, v23, v25 & 1);

  sub_220FC21F0();
  v31 = sub_220FC2020();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_220ECFE1C(v26, v28, v30 & 1);

  v94 = v31;
  v95 = v33;
  v38 = v35 & 1;
  v96 = v35 & 1;
  v97 = v37;
  v39 = *MEMORY[0x277CDF9A8];
  v40 = sub_220FC1BA0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 104);
  v43 = v41 + 104;
  v42(v3, v39, v40);
  v44 = sub_220FAD2B4(&qword_27CF9FFD8, MEMORY[0x277CDFA28]);
  v93 = v3;
  v90 = v44;
  result = sub_220FC26B0();
  if (result)
  {
    v82 = v39;
    v83 = v42;
    v46 = sub_220E453D4(&qword_27CF9FFE0, &qword_27CF9FFC8);
    v47 = v93;
    v81[1] = v46;
    sub_220FC2100();
    sub_220E3B2DC(v47, &qword_27CF9FFC8);
    sub_220ECFE1C(v31, v33, v38);

    sub_220FC1D20();
    v48 = sub_220FC2050();
    v50 = v49;
    v52 = v51;
    sub_220FC1F70();
    v53 = sub_220FC2030();
    v55 = v54;
    v81[2] = v43;
    v56 = v40;
    v58 = v57;

    sub_220ECFE1C(v48, v50, v52 & 1);

    sub_220FC1F40();
    v59 = sub_220FC1FB0();
    v61 = v60;
    LOBYTE(v48) = v62;
    sub_220ECFE1C(v53, v55, v58 & 1);

    sub_220FC2200();
    v63 = sub_220FC2020();
    v65 = v64;
    LOBYTE(v47) = v66;
    v68 = v67;

    sub_220ECFE1C(v59, v61, v48 & 1);

    v94 = v63;
    v95 = v65;
    v69 = v47 & 1;
    v96 = v47 & 1;
    v97 = v68;
    v83(v93, v82, v56);
    result = sub_220FC26B0();
    if (result)
    {
      v70 = v84;
      v71 = v93;
      sub_220FC2100();
      sub_220E3B2DC(v71, &qword_27CF9FFC8);
      sub_220ECFE1C(v63, v65, v69);

      v73 = v87;
      v72 = v88;
      v74 = *(v87 + 16);
      v75 = v85;
      v76 = v92;
      v74(v85, v92, v88);
      v77 = v86;
      v74(v86, v70, v72);
      v78 = v89;
      v74(v89, v75, v72);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00F0);
      v74(&v78[*(v79 + 48)], v77, v72);
      v80 = *(v73 + 8);
      v80(v70, v72);
      v80(v76, v72);
      v80(v77, v72);
      return (v80)(v75, v72);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220FA5044@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC2220();
  v3 = sub_220FA4EC0();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_220FAC85C(v3, v5, v7);

  sub_220ECFE1C(v3, v5, v7);
}

void *sub_220FA5178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0098);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &__src[-v7];
  v9 = sub_220FC1EF0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0058);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(v5 + 44)];
  *v11 = v9;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_220FC2330();
  sub_220FC1BD0();
  sub_220E2D664(v8, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0060);
  return memcpy((a2 + *(v12 + 36)), __src, 0x70uLL);
}

uint64_t sub_220FA52F0()
{
  sub_220FC2310();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC48);
  sub_220E453D4(&qword_27CF9FC50, &qword_27CF9FC40);
  OUTLINED_FUNCTION_1_71();
  sub_220E453D4(v0, &qword_27CF9FC48);
  return sub_220FC2320();
}

uint64_t sub_220FA5418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0000);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FC68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FC90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FC88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FCA0);
  sub_220E453D4(&qword_27CF9FCA8, &qword_27CF9FC90);
  swift_getOpaqueTypeConformance2();
  sub_220FAC064();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_220E453D4(&qword_27CFA0028, &qword_27CFA0018);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_220FC1BC0();
}

uint64_t sub_220FA56D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v65 = a2;
  v66 = sub_220FC1AE0();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v2);
  v63 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_220FC1D00();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v4);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_220FC1E40();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC68);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v47 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0020);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0010);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v49 = &v47 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0008);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v20);
  v51 = &v47 - v21;
  sub_220FA5E7C(v12);
  v74 = sub_220FC21E0();
  sub_220FC1E30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FC90);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FC88);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FCA0);
  v25 = sub_220E453D4(&qword_27CF9FCA8, &qword_27CF9FC90);
  v68 = MEMORY[0x277CE1350];
  v69 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_220FAC064();
  v68 = v22;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v72 = OpaqueTypeConformance2;
  v73 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CE0F60];
  sub_220FC2140();
  (*(v53 + 8))(v8, v55);

  (*(v50 + 8))(v12, v9);
  v31 = v59;
  v32 = v56;
  v33 = v61;
  (*(v59 + 104))(v56, *MEMORY[0x277CDDDC0], v61);
  v68 = v9;
  v69 = v29;
  v70 = v28;
  v71 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v49;
  v36 = v52;
  sub_220FC2160();
  (*(v31 + 8))(v32, v33);
  v37 = v15;
  v38 = v36;
  (*(v54 + 8))(v37, v36);
  v67 = v48;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0018);
  v68 = v38;
  v69 = v34;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_220E453D4(&qword_27CFA0028, &qword_27CFA0018);
  v42 = v51;
  v43 = v57;
  sub_220FC2180();
  (*(v58 + 8))(v35, v43);
  v44 = v63;
  sub_220FC1AD0();
  v68 = v43;
  v69 = v39;
  v70 = v40;
  v71 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v60;
  sub_220FC20C0();
  (*(v64 + 8))(v44, v66);
  return (*(v62 + 8))(v42, v45);
}

uint64_t sub_220FA5E7C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC88);
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v18 - v11;
  *v12 = sub_220FC1D70();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC98);
  sub_220FA7D94(v1, &v12[*(v13 + 44)]);
  sub_220FC2310();
  v14 = MEMORY[0x277CE1340];
  v15 = MEMORY[0x277CE1350];
  sub_220FC1D30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCA0);
  OUTLINED_FUNCTION_1_71();
  sub_220E453D4(v16, &qword_27CF9FC90);
  v18[2] = v15;
  v18[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_220FAC064();
  sub_220FC21A0();
  (*(v4 + 8))(v8, v2);
  return sub_220E3B2DC(v12, &qword_27CF9FC90);
}

uint64_t sub_220FA60B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0030);
  MEMORY[0x28223BE20](v45, v3);
  v43 = &v35 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0038);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v5);
  v41 = &v35 - v6;
  v7 = sub_220FC1DE0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0040);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v35 - v11;
  sub_220FC1DD0();
  v48 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0048);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0050);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0058);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0060);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0068);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0070);
  v17 = sub_220E453D4(&qword_27CFA0078, &qword_27CFA0068);
  v18 = sub_220E453D4(&qword_27CFA0080, &qword_27CFA0070);
  v49 = v15;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_220FAD314();
  v49 = v13;
  v50 = MEMORY[0x277CE1350];
  v51 = v14;
  v52 = OpaqueTypeConformance2;
  v53 = MEMORY[0x277CE1340];
  v54 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v49 = v36;
  v50 = v21;
  swift_getOpaqueTypeConformance2();
  sub_220FC1AC0();
  sub_220FC1DC0();
  v47 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00A0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA00A8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA00B0);
  v24 = sub_220E453D4(&qword_27CFA00B8, &qword_27CFA00A8);
  v25 = sub_220E453D4(&qword_27CFA00C0, &qword_27CFA00B0);
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v41;
  sub_220FC1AC0();
  v27 = *(v45 + 48);
  v29 = v39;
  v28 = v40;
  v30 = v43;
  (*(v39 + 16))(v43, v12, v40);
  v31 = v42;
  v32 = &v30[v27];
  v33 = v44;
  (*(v42 + 16))(v32, v26, v44);
  sub_220FC1D80();
  (*(v31 + 8))(v26, v33);
  return (*(v29 + 8))(v12, v28);
}

uint64_t sub_220FA661C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_220FC1D50();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0050);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  sub_220FA3BFC(&v16 - v7);
  sub_220FC1D40();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0058);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0060);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0068);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0070);
  v11 = sub_220E453D4(&qword_27CFA0078, &qword_27CFA0068);
  v12 = sub_220E453D4(&qword_27CFA0080, &qword_27CFA0070);
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_220FAD314();
  v22 = v18;
  v23 = MEMORY[0x277CE1350];
  v24 = v17;
  v25 = OpaqueTypeConformance2;
  v26 = MEMORY[0x277CE1340];
  v27 = v14;
  swift_getOpaqueTypeConformance2();
  sub_220FC20D0();
  (*(v19 + 8))(v3, v21);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_220FA68F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = type metadata accessor for LocationPicker();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  sub_220FAC318(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationPicker);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_220FAC374(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LocationPicker);
  sub_220FC2280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA00B0);
  sub_220E453D4(&qword_27CFA00B8, &qword_27CFA00A8);
  sub_220E453D4(&qword_27CFA00C0, &qword_27CFA00B0);
  sub_220FC2170();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_220FA6B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_220FC1D70();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC60);
  return sub_220FA6BE8(a1, a2 + *(v4 + 44));
}

uint64_t sub_220FA6BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC68);
  v37 = *(v47 - 8);
  v4 = v37;
  MEMORY[0x28223BE20](v47, v5);
  v46 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC70);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31[-v17];
  sub_220FC2330();
  sub_220FC1B60();
  v45 = v48;
  v44 = v50;
  v43 = v52;
  v42 = v53;
  v62 = 1;
  v61 = v49;
  v60 = v51;
  *v18 = sub_220FC1D10();
  *(v18 + 1) = 0x4020000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC78);
  sub_220FA7038(a1, &v18[*(v19 + 44)]);
  sub_220FC2330();
  sub_220FC1B60();
  v41 = v54;
  v40 = v56;
  v39 = v58;
  v38 = v59;
  v65 = 1;
  v64 = v55;
  v63 = v57;
  sub_220FA5E7C(v10);
  LOBYTE(a1) = v62;
  v20 = v61;
  v32 = v60;
  v35 = v14;
  sub_220E93294(v18, v14, &qword_27CF9FC70);
  v33 = v65;
  v34 = v64;
  v36 = v63;
  v21 = *(v4 + 16);
  v22 = v46;
  v23 = v47;
  v21(v46, v10, v47);
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v45;
  *(a2 + 24) = v20;
  *(a2 + 32) = v44;
  *(a2 + 40) = v32;
  v24 = v42;
  *(a2 + 48) = v43;
  *(a2 + 56) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC80);
  sub_220E93294(v14, a2 + v25[12], &qword_27CF9FC70);
  v26 = a2 + v25[16];
  *v26 = 0;
  *(v26 + 8) = v33;
  *(v26 + 16) = v41;
  *(v26 + 24) = v34;
  *(v26 + 32) = v40;
  *(v26 + 40) = v36;
  v27 = v38;
  *(v26 + 48) = v39;
  *(v26 + 56) = v27;
  v28 = v22;
  v21((a2 + v25[20]), v22, v23);
  v29 = *(v37 + 8);
  v29(v10, v23);
  sub_220E3B2DC(v18, &qword_27CF9FC70);
  v29(v28, v23);
  return sub_220E3B2DC(v35, &qword_27CF9FC70);
}

uint64_t sub_220FA7038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF58);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF60);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF68);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF70);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v35 - v25;
  sub_220FC2330();
  sub_220FC1B60();
  v39 = v41;
  v38 = v43;
  v37 = v45;
  v36 = v46;
  v50 = 1;
  v49 = v42;
  v48 = v44;
  sub_220FA4270(v14);
  sub_220FC2330();
  sub_220FC1BD0();
  sub_220E93658(v14, v18, &qword_27CF9FF60);
  memcpy(&v18[*(v15 + 36)], __src, 0x70uLL);
  sub_220FACFCC();
  v35 = v26;
  sub_220FC2130();
  sub_220E3B2DC(v18, &qword_27CF9FF68);
  *v10 = sub_220FC1D70();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v27 = v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFB8);
  sub_220FA74BC(a1, &v10[*(v28 + 44)]);
  LOBYTE(a1) = v50;
  LOBYTE(v15) = v49;
  LOBYTE(v10) = v48;
  v29 = v22;
  sub_220E93294(v26, v22, &qword_27CF9FF70);
  v30 = v40;
  sub_220E93294(v27, v40, &qword_27CF9FF58);
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v39;
  *(a2 + 24) = v15;
  *(a2 + 32) = v38;
  *(a2 + 40) = v10;
  v31 = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFC0);
  sub_220E93294(v29, a2 + v32[12], &qword_27CF9FF70);
  sub_220E93294(v30, a2 + v32[16], &qword_27CF9FF58);
  v33 = a2 + v32[20];
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_220E3B2DC(v27, &qword_27CF9FF58);
  sub_220E3B2DC(v35, &qword_27CF9FF70);
  sub_220E3B2DC(v30, &qword_27CF9FF58);
  return sub_220E3B2DC(v29, &qword_27CF9FF70);
}

uint64_t sub_220FA74BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFC8);
  MEMORY[0x28223BE20](v107, v3);
  v109 = &v87 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFD0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v5);
  v103 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v102 = &v87 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v101 = &v87 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v108 = &v87 - v15;
  v94 = a1;
  v16 = sub_220FA4EC0();
  v18 = v17;
  v20 = v19;
  sub_220FC1F10();
  v21 = sub_220FC2030();
  v23 = v22;
  v25 = v24;

  sub_220ECFE1C(v16, v18, v20 & 1);

  sub_220FC1F30();
  v26 = sub_220FC1FB0();
  v28 = v27;
  v30 = v29;
  v31 = v25 & 1;
  v32 = v109;
  sub_220ECFE1C(v21, v23, v31);

  sub_220FC21F0();
  v33 = sub_220FC2020();
  v35 = v34;
  LOBYTE(v23) = v36;
  v38 = v37;

  sub_220ECFE1C(v26, v28, v30 & 1);

  v117 = v33;
  v118 = v35;
  v39 = v23 & 1;
  LOBYTE(v119) = v23 & 1;
  v120 = v38;
  v40 = *MEMORY[0x277CDF9A8];
  v41 = sub_220FC1BA0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 104);
  v44 = v42 + 104;
  v43(v32, v40, v41);
  v45 = sub_220FAD2B4(&qword_27CF9FFD8, MEMORY[0x277CDFA28]);
  result = sub_220FC26B0();
  if (result)
  {
    v96 = v45;
    v98 = v43;
    v99 = v40;
    v100 = v41;
    v95 = sub_220E453D4(&qword_27CF9FFE0, &qword_27CF9FFC8);
    sub_220FC2100();
    sub_220E3B2DC(v32, &qword_27CF9FFC8);
    sub_220ECFE1C(v33, v35, v39);

    v47 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    v97 = v44;
    if (v47)
    {
      v94 = 0;
      v92 = 0;
      v91 = 0;
      v90 = 0;
      v89 = 0;
      v88 = 0;
      v87 = 0;
      v93 = 1;
    }

    else
    {
      type metadata accessor for LocationPicker();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
      sub_220FC1B10();
      sub_220FC2330();
      sub_220FC1B60();
      v93 = 0;
      v94 = v117;
      v92 = v119;
      v91 = v121;
      v90 = v122;
      v116 = 1;
      v115 = v118;
      v114 = v120;
      v87 = 1;
      v88 = v118;
      v89 = v120;
      LOBYTE(v110) = 0;
    }

    sub_220FC1D20();
    v48 = sub_220FC2050();
    v50 = v49;
    v52 = v51;
    sub_220FC1F70();
    v53 = sub_220FC2030();
    v55 = v54;
    v57 = v56;

    sub_220ECFE1C(v48, v50, v52 & 1);

    sub_220FC1F40();
    v58 = sub_220FC1FB0();
    v60 = v59;
    v62 = v61;
    sub_220ECFE1C(v53, v55, v57 & 1);

    sub_220FC2200();
    v63 = sub_220FC2020();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    sub_220ECFE1C(v58, v60, v62 & 1);

    v110 = v63;
    v111 = v65;
    v70 = v67 & 1;
    v112 = v67 & 1;
    v113 = v69;
    v71 = v109;
    v98(v109, v99, v100);
    result = sub_220FC26B0();
    if (result)
    {
      v72 = v101;
      sub_220FC2100();
      sub_220E3B2DC(v71, &qword_27CF9FFC8);
      sub_220ECFE1C(v63, v65, v70);

      v73 = v104;
      v74 = *(v104 + 16);
      v75 = v102;
      v76 = v108;
      v77 = v105;
      v74(v102, v108, v105);
      v78 = v103;
      v74(v103, v72, v77);
      v79 = v106;
      v74(v106, v75, v77);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FFE8);
      v81 = &v79[*(v80 + 48)];
      v82 = v87;
      *v81 = 0;
      *(v81 + 1) = v82;
      v83 = v88;
      *(v81 + 2) = v94;
      *(v81 + 3) = v83;
      v84 = v89;
      *(v81 + 4) = v92;
      *(v81 + 5) = v84;
      v85 = v90;
      *(v81 + 6) = v91;
      *(v81 + 7) = v85;
      v81[64] = v93;
      v74(&v79[*(v80 + 64)], v78, v77);
      v86 = *(v73 + 8);
      v86(v72, v77);
      v86(v76, v77);
      v86(v78, v77);
      return (v86)(v75, v77);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220FA7D94@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v52 = a2;
  v3 = sub_220FC1E00();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC88);
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCC8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCD0);
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v41 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCD8);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v20);
  v22 = &v41 - v21;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCE0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v23);
  v41 = &v41 - v24;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCE8);
  sub_220FAC150();
  sub_220FC1FA0();
  v25 = sub_220E453D4(&qword_27CF9FD18, &qword_27CF9FCC8);
  sub_220FC20B0();
  (*(v12 + 8))(v15, v11);
  sub_220FC2310();
  v26 = MEMORY[0x277CE1340];
  v27 = MEMORY[0x277CE1350];
  sub_220FC1D30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD20);
  v54 = v11;
  v55 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v27;
  v55 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v54 = v16;
  v55 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  sub_220FC21A0();
  (*(v48 + 8))(v10, v7);
  (*(v43 + 8))(v19, v16);
  v31 = v49;
  sub_220FC1DF0();
  v54 = v16;
  v55 = v7;
  v56 = v28;
  v57 = OpaqueTypeConformance2;
  v58 = v30;
  v59 = v40;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  v33 = v44;
  v34 = v50;
  sub_220FC21B0();
  (*(v51 + 8))(v31, v34);
  (*(v46 + 8))(v22, v33);
  KeyPath = swift_getKeyPath();
  if (((*v42 - 3) & 0xFD) != 0)
  {
    v36 = 44.0;
  }

  else
  {
    v36 = 60.0;
  }

  v37 = v52;
  (*(v45 + 32))(v52, v32, v47);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD28);
  v39 = v37 + *(result + 36);
  *v39 = KeyPath;
  *(v39 + 8) = v36;
  return result;
}

uint64_t sub_220FA83FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD00);
  sub_220FAC1E0();
  return sub_220FC22F0();
}

uint64_t sub_220FA846C(uint64_t a1)
{
  v2 = type metadata accessor for LocationPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v9[1] = *(a1 + 8);
  sub_220FAC318(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationPicker);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_220FAC374(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LocationPicker);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD10);
  sub_220E453D4(&qword_27CF9FD30, &qword_27CF9E7A0);
  sub_220E453D4(&qword_27CF9FD08, &qword_27CF9FD10);
  sub_220FAD2B4(&qword_27CF9FD38, type metadata accessor for LocationPickerViewModel.Row);
  return sub_220FC22E0();
}

uint64_t sub_220FA8698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = type metadata accessor for LocationPickerViewModel.Row();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationPicker();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  sub_220FAC318(a2, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationPicker);
  sub_220FAC318(a1, v9, type metadata accessor for LocationPickerViewModel.Row);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_220FAC374(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for LocationPicker);
  sub_220FAC374(v9, v16 + v15, type metadata accessor for LocationPickerViewModel.Row);
  v18[4] = a1;
  v18[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD40);
  sub_220FAC4A4();
  return sub_220FC2280();
}

uint64_t sub_220FA88C8()
{
  sub_220FC1020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  return sub_220FC22A0();
}

uint64_t sub_220FA8930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_220FC1D10();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD70);
  sub_220FA89D0(a1, a2, a3 + *(v6 + 44));
  v7 = sub_220FC21D0();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD40);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_220FA89D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v237 = a2;
  v243 = a3;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD78);
  MEMORY[0x28223BE20](v228, v4);
  v215 = &v207 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD80);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v214 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v225 = &v207 - v11;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD88);
  MEMORY[0x28223BE20](v212, v12);
  v210 = &v207 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD90);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v213 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v222 = &v207 - v19;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD98);
  MEMORY[0x28223BE20](v221, v20);
  v224 = &v207 - v21;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDA0);
  MEMORY[0x28223BE20](v223, v22);
  v24 = &v207 - v23;
  v25 = sub_220FC1BA0();
  v216 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDA8);
  MEMORY[0x28223BE20](v234, v29);
  v227 = &v207 - v30;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDB0);
  MEMORY[0x28223BE20](v230, v31);
  v232 = &v207 - v32;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDB8);
  MEMORY[0x28223BE20](v242, v33);
  v236 = &v207 - v34;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDC0);
  MEMORY[0x28223BE20](v239, v35);
  v241 = &v207 - v36;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDC8);
  MEMORY[0x28223BE20](v231, v37);
  v235 = &v207 - v38;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDD0);
  MEMORY[0x28223BE20](v240, v39);
  v41 = &v207 - v40;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDD8);
  MEMORY[0x28223BE20](v233, v42);
  v226 = (&v207 - v43);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDE0);
  MEMORY[0x28223BE20](v217, v44);
  v219 = (&v207 - v45);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDE8);
  MEMORY[0x28223BE20](v218, v46);
  v211 = (&v207 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FDF0);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v220 = &v207 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v229 = &v207 - v53;
  v54 = a1 + *(type metadata accessor for LocationPickerViewModel.Row() + 20);
  v55 = *(v54 + 8);
  *&v238 = *v54;
  v57 = *(v54 + 16);
  v56 = *(v54 + 24);
  v58 = *(v54 + 32);
  v59 = *(v54 + 56);
  switch(*(v54 + 64))
  {
    case 1:
      v236 = v41;
      v82 = v56;

      v83 = sub_220FC1D70();
      v244[0] = 1;
      sub_220FABA40(v250);
      memcpy(v252, v250, sizeof(v252));
      memcpy(v253, v250, 0x88uLL);
      sub_220E93294(v252, v249, &qword_27CF9FDF8);
      sub_220E3B2DC(v253, &qword_27CF9FDF8);

      memcpy(v250 + 7, v252, 0x88uLL);
      __src[0] = v83;
      __src[1] = 0;
      LOBYTE(__src[2]) = v244[0];
      memcpy(&__src[2] + 1, v250, 0x8FuLL);
      if (v82)
      {
        v84 = sub_220FC2220();
        v85 = sub_220FC1F20();
        KeyPath = swift_getKeyPath();
        v87 = sub_220FC21C0();
        v88 = swift_getKeyPath();
        *&v249[0] = v84;
        *(&v249[0] + 1) = KeyPath;
        *&v249[1] = v85;
        *(&v249[1] + 1) = v88;
        *&v249[2] = v87;
        BYTE8(v249[2]) = 0;
      }

      else
      {
        *&v250[0] = 11565;
        *(&v250[0] + 1) = 0xE200000000000000;
        sub_220E921A4();
        v152 = sub_220FC2060();
        v154 = v153;
        v156 = v155;
        sub_220FC1F20();
        v157 = sub_220FC2030();
        v159 = v158;
        v161 = v160;

        sub_220ECFE1C(v152, v154, v156 & 1);

        sub_220FC21F0();
        v162 = sub_220FC2020();
        v164 = v163;
        v166 = v165;
        v168 = v167;

        sub_220ECFE1C(v157, v159, v161 & 1);

        *&v249[0] = v162;
        *(&v249[0] + 1) = v164;
        *&v249[1] = v166 & 1;
        *(&v249[1] + 1) = v168;
        *&v249[2] = 0;
        BYTE8(v249[2]) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE70);
      sub_220FAC86C();
      sub_220FC1DB0();
      v237 = v250[1];
      v238 = v250[0];
      v169 = *&v250[2];
      v170 = BYTE8(v250[2]);
      v232 = *&v250[2];
      memcpy(v247, __src, sizeof(v247));
      memcpy(v248, __src, sizeof(v248));
      memcpy(v249, __src, 0xA0uLL);
      v246 = 0;
      v245 = BYTE8(v250[2]);
      *&v249[10] = 0x4020000000000000;
      BYTE8(v249[10]) = 0;
      v249[11] = v250[0];
      v249[12] = v250[1];
      *&v249[13] = *&v250[2];
      BYTE8(v249[13]) = BYTE8(v250[2]);
      memcpy(v250, v249, 0xD9uLL);
      v171 = v238;
      v172 = v237;
      v173 = v238;
      v234 = v238;
      *&v238 = *(&v238 + 1);
      sub_220FAC9DC(v173, *(&v238 + 1), v237, *(&v237 + 1), *&v249[13], v245);
      sub_220E93294(__src, v244, &qword_27CF9FE08);
      sub_220E93294(v248, v244, &qword_27CF9FE08);
      sub_220FAC9DC(v171, *(&v171 + 1), v172, *(&v172 + 1), v169, v170);
      sub_220FACA7C(v171, *(&v171 + 1), v172, *(&v172 + 1), v169, v170);
      memcpy(v251, v247, 0xA0uLL);
      sub_220E3B2DC(v251, &qword_27CF9FE08);
      memcpy(v235, v250, 0xD9uLL);
      swift_storeEnumTagMultiPayload();
      sub_220E93294(v249, v244, &qword_27CF9FEA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE50);
      sub_220E453D4(&qword_27CF9FE40, &qword_27CF9FDD8);
      sub_220E453D4(&qword_27CF9FE48, &qword_27CF9FE50);
      v174 = v236;
      sub_220FC1DB0();
      sub_220E93294(v174, v241, &qword_27CF9FDD0);
      swift_storeEnumTagMultiPayload();
      sub_220FAC6C4();
      sub_220FAC7A4();
      sub_220FC1DB0();
      sub_220FACA7C(v234, v238, v172, *(&v172 + 1), v232, v170);
      sub_220E3B2DC(v249, &qword_27CF9FEA0);
      sub_220E3B2DC(__src, &qword_27CF9FE08);
      v122 = v174;
      v123 = &qword_27CF9FDD0;
      return sub_220E3B2DC(v122, v123);
    case 2:
      v228 = v55;

      sub_220FC1030();
      v69 = sub_220FC0FB0();
      v71 = v70;
      if (v69 == sub_220FC0FB0() && v71 == v72)
      {
      }

      else
      {
        v74 = sub_220FC3940();

        if ((v74 & 1) == 0)
        {
          v75 = sub_220FC1000();
          v77 = v76;
LABEL_22:
          *&v250[0] = v75;
          *(&v250[0] + 1) = v77;
          v229 = sub_220E921A4();
          v91 = sub_220FC2060();
          v93 = v92;
          v95 = v94;
          sub_220FC1F20();
          v96 = sub_220FC2030();
          v98 = v97;
          v100 = v99;

          sub_220ECFE1C(v91, v93, v95 & 1);

          sub_220FC21F0();
          v233 = sub_220FC2020();
          v235 = v101;
          LODWORD(v231) = v102;
          *&v237 = v103;

          sub_220ECFE1C(v96, v98, v100 & 1);

          *&v250[0] = v238;
          *(&v250[0] + 1) = v228;
          v104 = sub_220FC2060();
          v106 = v105;
          v108 = v107;
          sub_220FC1F20();
          v109 = sub_220FC2030();
          v111 = v110;
          LOBYTE(v93) = v112;

          sub_220ECFE1C(v104, v106, v108 & 1);

          sub_220FC2200();
          v113 = sub_220FC2020();
          v115 = v114;
          LOBYTE(v98) = v116;
          v118 = v117;

          sub_220ECFE1C(v109, v111, v93 & 1);

          LOBYTE(v109) = v231 & 1;
          LOBYTE(__src[0]) = v231 & 1;
          v251[0] = v231 & 1;
          v248[0] = 1;
          LOBYTE(v96) = v98 & 1;
          v247[0] = v98 & 1;
          v119 = v233;
          *&v249[0] = v233;
          v120 = v235;
          *(&v249[0] + 1) = v235;
          LOBYTE(v249[1]) = v231 & 1;
          *(&v249[1] + 1) = v237;
          *&v249[2] = 0;
          BYTE8(v249[2]) = 1;
          *&v249[3] = v113;
          *(&v249[3] + 1) = v115;
          LOBYTE(v249[4]) = v96;
          *(&v249[4] + 1) = v118;
          memcpy(v250, v249, 0x50uLL);
          sub_220FAC85C(v233, v235, v231 & 1);

          sub_220FAC85C(v113, v115, v96);

          sub_220FAC85C(v119, v120, v109);

          sub_220FAC85C(v113, v115, v96);
          *&v238 = v118;

          sub_220ECFE1C(v113, v115, v96);

          sub_220ECFE1C(v119, v120, __src[0]);

          memcpy(v232, v250, 0x50uLL);
          swift_storeEnumTagMultiPayload();
          sub_220E93294(v249, v244, &qword_27CF9FE68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE20);
          sub_220E453D4(&qword_27CF9FE28, &qword_27CF9FE20);
          sub_220FAC5E0();
          v121 = v236;
          sub_220FC1DB0();
          sub_220E93294(v121, v241, &qword_27CF9FDB8);
          swift_storeEnumTagMultiPayload();
          sub_220FAC6C4();
          sub_220FAC7A4();
          sub_220FC1DB0();
          sub_220E3B2DC(v249, &qword_27CF9FE68);
          sub_220ECFE1C(v113, v115, v96);

          sub_220ECFE1C(v233, v235, v109);

          v122 = v121;
          v123 = &qword_27CF9FDB8;
          return sub_220E3B2DC(v122, v123);
        }
      }

      if (qword_2812C5B30 != -1)
      {
        swift_once();
      }

      v89 = qword_2812CE4B0;
      v75 = sub_220FBFF80();
      v77 = v90;

      goto LABEL_22;
    case 3:
      v235 = *(v54 + 48);
      v209 = v56;

      v208 = v57;
      v78 = v237;
      sub_220FA397C(v28);
      v79 = sub_220FC1B90();
      (*(v216 + 8))(v28, v25);
      if (v79)
      {
        *v24 = sub_220FC1D70();
        *(v24 + 1) = 0;
        v24[16] = 1;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE60);
        sub_220FAAC3C(v78, v238, v55, v208, v209, v58, v235, &v24[*(v80 + 44)], v59);

        sub_220E93294(v24, v224, &qword_27CF9FDA0);
        swift_storeEnumTagMultiPayload();
        sub_220E453D4(&qword_27CF9FE10, &qword_27CF9FDA0);
        sub_220E453D4(&qword_27CF9FE18, &qword_27CF9FD78);
        v81 = v227;
        sub_220FC1DB0();
        sub_220E3B2DC(v24, &qword_27CF9FDA0);
      }

      else
      {
        v124 = sub_220FC1D70();
        v244[0] = 1;
        sub_220FABA40(v250);
        memcpy(v248, v250, 0x88uLL);
        memcpy(v251, v250, 0x88uLL);
        sub_220E93294(v248, v249, &qword_27CF9FDF8);
        sub_220E3B2DC(v251, &qword_27CF9FDF8);

        memcpy(v249 + 7, v248, 0x88uLL);
        v250[0] = v124;
        LOBYTE(v250[1]) = v244[0];
        memcpy(&v250[1] + 1, v249, 0x8FuLL);
        if (v208)
        {

          v125 = v210;
          sub_220FAB5FC();

          v126 = v125;
          v127 = v222;
          sub_220E93658(v126, v222, &qword_27CF9FD88);
          v128 = 0;
        }

        else
        {
          v128 = 1;
          v127 = v222;
        }

        __swift_storeEnumTagSinglePayload(v127, v128, 1, v212);
        v200 = v225;
        sub_220FAB73C(v209, v58, v235, v59, v225);

        memcpy(__src, v250, 0xA0uLL);
        v201 = v213;
        sub_220E93294(v127, v213, &qword_27CF9FD90);
        v202 = v214;
        sub_220E93294(v200, v214, &qword_27CF9FD80);
        memcpy(v244, __src, 0xA0uLL);
        v203 = v215;
        memcpy(v215, __src, 0xA0uLL);
        v203[20] = 0;
        *(v203 + 168) = 1;
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE00);
        sub_220E93294(v201, v203 + *(v204 + 64), &qword_27CF9FD90);
        sub_220E93294(v202, v203 + *(v204 + 80), &qword_27CF9FD80);
        sub_220E93294(v250, v249, &qword_27CF9FE08);
        sub_220E93294(v244, v249, &qword_27CF9FE08);
        sub_220E3B2DC(v202, &qword_27CF9FD80);
        sub_220E3B2DC(v201, &qword_27CF9FD90);
        memcpy(v249, __src, 0xA0uLL);
        sub_220E3B2DC(v249, &qword_27CF9FE08);
        sub_220E93294(v203, v224, &qword_27CF9FD78);
        swift_storeEnumTagMultiPayload();
        sub_220E453D4(&qword_27CF9FE10, &qword_27CF9FDA0);
        sub_220E453D4(&qword_27CF9FE18, &qword_27CF9FD78);
        v81 = v227;
        sub_220FC1DB0();
        sub_220E3B2DC(v250, &qword_27CF9FE08);
        sub_220E3B2DC(v203, &qword_27CF9FD78);
        sub_220E3B2DC(v225, &qword_27CF9FD80);
        sub_220E3B2DC(v222, &qword_27CF9FD90);
      }

      sub_220E93294(v81, v232, &qword_27CF9FDA8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE20);
      sub_220E453D4(&qword_27CF9FE28, &qword_27CF9FE20);
      sub_220FAC5E0();
      v205 = v236;
      sub_220FC1DB0();
      sub_220E93294(v205, v241, &qword_27CF9FDB8);
      swift_storeEnumTagMultiPayload();
      sub_220FAC6C4();
      sub_220FAC7A4();
      sub_220FC1DB0();

      sub_220E3B2DC(v205, &qword_27CF9FDB8);
      v122 = v81;
      v123 = &qword_27CF9FDA8;
      return sub_220E3B2DC(v122, v123);
    default:
      v236 = v41;
      v209 = v56;

      v228 = v55;

      sub_220FC1030();
      v60 = sub_220FC0FB0();
      v62 = v61;
      v64 = v60 == sub_220FC0FB0() && v62 == v63;
      v208 = v57;
      if (v64)
      {
      }

      else
      {
        v65 = sub_220FC3940();

        if ((v65 & 1) == 0)
        {
          v66 = sub_220FC1000();
          v68 = v67;
          goto LABEL_29;
        }
      }

      if (qword_2812C5B30 != -1)
      {
        swift_once();
      }

      v129 = qword_2812CE4B0;
      v66 = sub_220FBFF80();
      v68 = v130;

LABEL_29:
      *&v250[0] = v66;
      *(&v250[0] + 1) = v68;
      v225 = sub_220E921A4();
      v131 = sub_220FC2060();
      v133 = v132;
      v135 = v134;
      sub_220FC1F20();
      v136 = sub_220FC2030();
      v138 = v137;
      v140 = v139;

      sub_220ECFE1C(v131, v133, v135 & 1);

      sub_220FC21F0();
      v232 = sub_220FC2020();
      v230 = v141;
      LODWORD(v227) = v142;
      v234 = v143;

      sub_220ECFE1C(v136, v138, v140 & 1);

      if (v228 && (v144 = v209) != 0)
      {
        v145 = sub_220FC1D60();
        v146 = v211;
        *v211 = v145;
        *(v146 + 8) = 0;
        *(v146 + 16) = 1;
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEC8);
        sub_220FAA890(v208, v144, v146 + *(v147 + 44));

        type metadata accessor for LocationPicker();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
        sub_220FC1B10();
        sub_220FC2330();
        sub_220FC1B60();
        v148 = v219;
        v149 = (v146 + *(v218 + 36));
        v150 = v250[1];
        *v149 = v250[0];
        v149[1] = v150;
        v149[2] = v250[2];
        sub_220E93294(v146, v148, &qword_27CF9FDE8);
        swift_storeEnumTagMultiPayload();
        sub_220FACB14();
        v151 = v229;
        sub_220FC1DB0();
        sub_220E3B2DC(v146, &qword_27CF9FDE8);
      }

      else
      {

        *&v250[0] = 11565;
        *(&v250[0] + 1) = 0xE200000000000000;
        v175 = sub_220FC2060();
        v177 = v176;
        v179 = v178;
        sub_220FC1F20();
        v180 = sub_220FC2030();
        v182 = v181;
        v184 = v183;

        sub_220ECFE1C(v175, v177, v179 & 1);

        sub_220FC1F80();
        v185 = sub_220FC2030();
        v187 = v186;
        v189 = v188;
        v191 = v190;

        sub_220ECFE1C(v180, v182, v184 & 1);

        v192 = v219;
        *v219 = v185;
        v192[1] = v187;
        *(v192 + 16) = v189 & 1;
        v192[3] = v191;
        swift_storeEnumTagMultiPayload();
        sub_220FACB14();
        v151 = v229;
        sub_220FC1DB0();
      }

      v193 = v220;
      sub_220E93294(v151, v220, &qword_27CF9FDF0);
      v194 = v226;
      v195 = v232;
      v196 = v230;
      *v226 = v232;
      *(v194 + 8) = v196;
      v197 = v227 & 1;
      *(v194 + 16) = v227 & 1;
      *(v194 + 24) = v234;
      *(v194 + 32) = 0;
      *(v194 + 40) = 1;
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEC0);
      sub_220E93294(v193, v194 + *(v198 + 64), &qword_27CF9FDF0);
      sub_220FAC85C(v195, v196, v197);

      sub_220FAC85C(v195, v196, v197);

      sub_220E3B2DC(v193, &qword_27CF9FDF0);
      sub_220ECFE1C(v195, v196, v197);

      sub_220E93294(v194, v235, &qword_27CF9FDD8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FE50);
      sub_220E453D4(&qword_27CF9FE40, &qword_27CF9FDD8);
      sub_220E453D4(&qword_27CF9FE48, &qword_27CF9FE50);
      v199 = v236;
      sub_220FC1DB0();
      sub_220E93294(v199, v241, &qword_27CF9FDD0);
      swift_storeEnumTagMultiPayload();
      sub_220FAC6C4();
      sub_220FAC7A4();
      sub_220FC1DB0();
      sub_220ECFE1C(v195, v196, v197);

      sub_220E3B2DC(v199, &qword_27CF9FDD0);
      sub_220E3B2DC(v194, &qword_27CF9FDD8);
      v122 = v229;
      v123 = &qword_27CF9FDF0;
      return sub_220E3B2DC(v122, v123);
  }
}

uint64_t sub_220FAA890@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v33 = sub_220FC1E20();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FED0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v33 - v9);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FED8);
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v12);
  v14 = &v33 - v13;

  v15 = sub_220FC2220();
  v16 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEE0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEE8) + 28);
  v18 = *MEMORY[0x277CE1048];
  v19 = sub_220FC2240();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v10 = v15;
  v20 = sub_220FC1F20();
  KeyPath = swift_getKeyPath();
  v22 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FEF0) + 36));
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = sub_220FC21F0();
  v24 = swift_getKeyPath();
  v25 = (v10 + *(v7 + 36));
  *v25 = v24;
  v25[1] = v23;
  sub_220FC1E10();
  v26 = sub_220FACC94();
  sub_220FC2150();
  (*(v3 + 8))(v6, v33);
  sub_220E3B2DC(v10, &qword_27CF9FED0);
  v38 = v35;
  v39 = v36;
  sub_220E921A4();

  v27 = sub_220FC2060();
  v29 = v28;
  LOBYTE(v3) = v30;
  v38 = v7;
  v39 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  sub_220FC2110();
  sub_220ECFE1C(v27, v29, v3 & 1);

  return (*(v11 + 8))(v14, v31);
}

uint64_t sub_220FAAC3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, unint64_t a9)
{
  v114 = a7;
  v113 = a6;
  v112 = a5;
  v109 = a4;
  v105 = a3;
  v104 = a2;
  v118 = a1;
  v91 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD80);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v116 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v115 = &v90 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD88);
  MEMORY[0x28223BE20](v108, v15);
  v90 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FD90);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v111 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v110 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF18);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v117 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v120 = (&v90 - v28);
  sub_220FC1030();
  v29 = sub_220FC0FB0();
  v31 = v30;
  if (v29 == sub_220FC0FB0() && v31 == v32)
  {
  }

  else
  {
    v34 = sub_220FC3940();

    if ((v34 & 1) == 0)
    {
      v35 = sub_220FC1000();
      v37 = v36;
      goto LABEL_11;
    }
  }

  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v38 = qword_2812CE4B0;
  v35 = sub_220FBFF80();
  v37 = v39;

LABEL_11:
  v103 = a9;
  v126 = v35;
  v127 = v37;
  v93 = sub_220E921A4();
  v40 = sub_220FC2060();
  v42 = v41;
  v44 = v43;
  sub_220FC1F20();
  v45 = sub_220FC2030();
  v47 = v46;
  v49 = v48;

  sub_220ECFE1C(v40, v42, v44 & 1);

  sub_220FC21F0();
  v107 = sub_220FC2020();
  v106 = v50;
  v102 = v51;
  v119 = v52;

  sub_220ECFE1C(v45, v47, v49 & 1);

  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v101 = 0;
    v99 = 0;
    v98 = 0;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v94 = 0;
    v100 = 1;
  }

  else
  {
    type metadata accessor for LocationPicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
    sub_220FC1B10();
    sub_220FC2330();
    sub_220FC1B60();
    v100 = 0;
    v101 = v126;
    v99 = v128;
    v98 = v130;
    v97 = v131;
    v125 = 1;
    v124 = v127;
    v123 = v129;
    v94 = 1;
    v95 = v127;
    v96 = v129;
    LOBYTE(v121) = 0;
  }

  v121 = v104;
  v122 = v105;

  v53 = sub_220FC2060();
  v55 = v54;
  v57 = v56;
  sub_220FC1F10();
  v58 = sub_220FC2030();
  v60 = v59;
  v62 = v61;

  sub_220ECFE1C(v53, v55, v57 & 1);

  sub_220FC2200();
  v104 = sub_220FC2020();
  v93 = v63;
  v92 = v64;
  v105 = v65;

  sub_220ECFE1C(v58, v60, v62 & 1);

  v66 = sub_220FC1D10();
  v67 = v120;
  *v120 = v66;
  v67[1] = 0;
  v68 = 1;
  *(v67 + 16) = 1;
  if (v109)
  {

    v69 = v90;
    sub_220FAB5FC();

    v70 = v110;
    sub_220E93658(v69, v110, &qword_27CF9FD88);
    v68 = 0;
  }

  else
  {
    v70 = v110;
  }

  __swift_storeEnumTagSinglePayload(v70, v68, 1, v108);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF20);
  v72 = v120;
  v73 = v120 + *(v71 + 44);
  v74 = v115;
  sub_220FAB73C(v112, v113, v114, v103, v115);
  v75 = v111;
  sub_220E93294(v70, v111, &qword_27CF9FD90);
  v76 = v116;
  sub_220E93294(v74, v116, &qword_27CF9FD80);
  sub_220E93294(v75, v73, &qword_27CF9FD90);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF28);
  sub_220E93294(v76, v73 + *(v77 + 48), &qword_27CF9FD80);
  sub_220E3B2DC(v74, &qword_27CF9FD80);
  sub_220E3B2DC(v70, &qword_27CF9FD90);
  sub_220E3B2DC(v76, &qword_27CF9FD80);
  sub_220E3B2DC(v75, &qword_27CF9FD90);
  v78 = v102 & 1;
  LOBYTE(v121) = v102 & 1;
  v79 = v117;
  sub_220E93294(v72, v117, &qword_27CF9FF18);
  v80 = v107;
  v81 = v91;
  v82 = v106;
  *v91 = v107;
  v81[1] = v82;
  *(v81 + 16) = v78;
  v81[3] = v119;
  v81[4] = 0;
  v83 = v101;
  v81[5] = v94;
  v81[6] = v83;
  v84 = v99;
  v81[7] = v95;
  v81[8] = v84;
  v85 = v98;
  v81[9] = v96;
  v81[10] = v85;
  v81[11] = v97;
  *(v81 + 96) = v100;
  v86 = v104;
  v87 = v93;
  v81[13] = v104;
  v81[14] = v87;
  LOBYTE(v73) = v92 & 1;
  *(v81 + 120) = v92 & 1;
  v81[16] = v105;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF30);
  sub_220E93294(v79, v81 + *(v88 + 80), &qword_27CF9FF18);
  sub_220FAC85C(v80, v82, v78);

  sub_220FAC85C(v86, v87, v73);

  sub_220E3B2DC(v120, &qword_27CF9FF18);
  sub_220E3B2DC(v79, &qword_27CF9FF18);
  sub_220ECFE1C(v86, v87, v73);

  sub_220ECFE1C(v80, v82, v121);
}

uint64_t sub_220FAB5FC()
{

  v0 = sub_220FC2070();
  v2 = v1;
  v4 = v3;
  sub_220FC1F10();
  v5 = sub_220FC2030();
  v7 = v6;
  v9 = v8;

  sub_220ECFE1C(v0, v2, v4 & 1);

  sub_220FC2200();
  v10 = sub_220FC2020();
  v12 = v11;
  v14 = v13;

  sub_220ECFE1C(v5, v7, v9 & 1);

  sub_220FC2130();
  sub_220ECFE1C(v10, v12, v14 & 1);
}

uint64_t sub_220FAB73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v33 = sub_220FC1BA0();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = a1;
  v41[1] = a2;
  v9 = sub_220E921A4();

  v34 = v9;
  v10 = sub_220FC2060();
  v12 = v11;
  v14 = v13;
  sub_220FC1F10();
  v15 = sub_220FC2030();
  v17 = v16;
  v19 = v18;

  sub_220ECFE1C(v10, v12, v14 & 1);

  sub_220FC2200();
  v20 = sub_220FC2020();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_220ECFE1C(v15, v17, v19 & 1);

  v27 = v31;
  sub_220FA397C(v31);
  sub_220FC1B90();
  (*(v32 + 8))(v27, v33);
  sub_220FC2330();
  sub_220FC1B60();
  *&v42[38] = v46;
  *&v42[22] = v45;
  v43 = v24 & 1;
  *&v42[6] = v44;
  v41[0] = v20;
  v41[1] = v22;
  LOBYTE(v41[2]) = v24 & 1;
  v41[3] = v26;
  LOWORD(v41[4]) = 257;
  *(&v41[4] + 2) = *v42;
  *(&v41[6] + 2) = *&v42[16];
  *(&v41[8] + 2) = *&v42[32];
  v41[10] = *(&v46 + 1);
  v28 = v35;
  if (v36)
  {
    v29 = v36;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v38 = v28;
  v39 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FF38);
  sub_220FACEBC();
  sub_220FC2120();

  memcpy(v40, v41, sizeof(v40));
  return sub_220E3B2DC(v40, &qword_27CF9FF38);
}

uint64_t sub_220FABA40@<X0>(uint64_t a1@<X8>)
{
  sub_220FC1030();
  v2 = sub_220FC0FB0();
  v4 = v3;
  if (v2 == sub_220FC0FB0() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_220FC3940();

    if ((v7 & 1) == 0)
    {
      v8 = sub_220FC1000();
      v10 = v9;
      goto LABEL_11;
    }
  }

  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v11 = qword_2812CE4B0;
  v8 = sub_220FBFF80();
  v10 = v12;

LABEL_11:
  v57 = v8;
  v58 = v10;
  sub_220E921A4();
  v13 = sub_220FC2060();
  v15 = v14;
  v17 = v16;
  sub_220FC1F20();
  v18 = sub_220FC2030();
  v20 = v19;
  v22 = v21;

  sub_220ECFE1C(v13, v15, v17 & 1);

  sub_220FC21F0();
  v23 = sub_220FC2020();
  v54 = v24;
  v55 = v23;
  v53 = v25;
  v56 = v26;

  sub_220ECFE1C(v18, v20, v22 & 1);

  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v51 = 1;
  }

  else
  {
    type metadata accessor for LocationPicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
    sub_220FC1B10();
    sub_220FC2330();
    sub_220FC1B60();
    v51 = 0;
    v52 = v57;
    v49 = v61;
    v50 = v59;
    v45 = 1;
    v46 = v58;
    v47 = v60;
    v48 = v62;
  }

  v27 = sub_220FC2060();
  v29 = v28;
  v31 = v30;
  sub_220FC1F10();
  v32 = sub_220FC2030();
  v34 = v33;
  v36 = v35;

  sub_220ECFE1C(v27, v29, v31 & 1);

  sub_220FC2200();
  v37 = sub_220FC2020();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_220ECFE1C(v32, v34, v36 & 1);

  *a1 = v55;
  *(a1 + 8) = v54;
  *(a1 + 16) = v53 & 1;
  *(a1 + 24) = v56;
  *(a1 + 32) = 0;
  *(a1 + 40) = v45;
  *(a1 + 48) = v52;
  *(a1 + 56) = v46;
  *(a1 + 64) = v50;
  *(a1 + 72) = v47;
  *(a1 + 80) = v49;
  *(a1 + 88) = v48;
  *(a1 + 96) = v51;
  *(a1 + 104) = v37;
  *(a1 + 112) = v39;
  *(a1 + 120) = v41 & 1;
  *(a1 + 128) = v43;
  sub_220FAC85C(v55, v54, v53 & 1);

  sub_220FAC85C(v37, v39, v41 & 1);

  sub_220ECFE1C(v37, v39, v41 & 1);

  sub_220ECFE1C(v55, v54, v53 & 1);
}

uint64_t sub_220FABEE0()
{
  sub_220FC21E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FCC8);
  sub_220E453D4(&qword_27CF9FD18, &qword_27CF9FCC8);
  swift_getOpaqueTypeConformance2();
  sub_220FC20F0();
}

uint64_t sub_220FABFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220FC21E0();
  v5 = sub_220FC1F00();
  sub_220E93294(a1, a2, &qword_27CF9FC90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FCA0);
  v7 = a2 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

unint64_t sub_220FAC064()
{
  result = qword_27CF9FCB0;
  if (!qword_27CF9FCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FCA0);
    sub_220E453D4(&qword_27CF9FCA8, &qword_27CF9FC90);
    sub_220E453D4(&qword_27CF9FCB8, &qword_27CF9FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FCB0);
  }

  return result;
}

unint64_t sub_220FAC150()
{
  result = qword_27CF9FCF0;
  if (!qword_27CF9FCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FCE8);
    sub_220FAC1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FCF0);
  }

  return result;
}

unint64_t sub_220FAC1E0()
{
  result = qword_27CF9FCF8;
  if (!qword_27CF9FCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FD00);
    sub_220E453D4(&qword_27CF9FD08, &qword_27CF9FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FCF8);
  }

  return result;
}

uint64_t sub_220FAC298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LocationPicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_220FA8698(a1, v6, a2);
}

uint64_t sub_220FAC318(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220FAC374(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220FAC3D0()
{
  type metadata accessor for LocationPicker();
  type metadata accessor for LocationPickerViewModel.Row();

  return sub_220FA88C8();
}

unint64_t sub_220FAC4A4()
{
  result = qword_27CF9FD48;
  if (!qword_27CF9FD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FD40);
    sub_220E453D4(&qword_27CF9FD50, &qword_27CF9FD58);
    sub_220E453D4(&qword_27CF9FD60, &qword_27CF9FD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FD48);
  }

  return result;
}

unint64_t sub_220FAC5E0()
{
  result = qword_27CF9FE30;
  if (!qword_27CF9FE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FDA8);
    sub_220E453D4(&qword_27CF9FE10, &qword_27CF9FDA0);
    sub_220E453D4(&qword_27CF9FE18, &qword_27CF9FD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FE30);
  }

  return result;
}

unint64_t sub_220FAC6C4()
{
  result = qword_27CF9FE38;
  if (!qword_27CF9FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FDD0);
    sub_220E453D4(&qword_27CF9FE40, &qword_27CF9FDD8);
    sub_220E453D4(&qword_27CF9FE48, &qword_27CF9FE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FE38);
  }

  return result;
}

unint64_t sub_220FAC7A4()
{
  result = qword_27CF9FE58;
  if (!qword_27CF9FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FDB8);
    sub_220E453D4(&qword_27CF9FE28, &qword_27CF9FE20);
    sub_220FAC5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FE58);
  }

  return result;
}

uint64_t sub_220FAC85C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_220FAC86C()
{
  result = qword_27CF9FE78;
  if (!qword_27CF9FE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FE70);
    sub_220FAC924();
    sub_220E453D4(&qword_27CF9FD60, &qword_27CF9FD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FE78);
  }

  return result;
}

unint64_t sub_220FAC924()
{
  result = qword_27CF9FE80;
  if (!qword_27CF9FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FE88);
    sub_220E453D4(&qword_27CF9FE90, &qword_27CF9FE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FE80);
  }

  return result;
}

uint64_t sub_220FAC9DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_220FAC85C(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_220FACA7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_220ECFE1C(a1, a2, a3 & 1);
  }

  else
  {
  }
}

unint64_t sub_220FACB14()
{
  result = qword_27CF9FEA8;
  if (!qword_27CF9FEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FDE8);
    sub_220E453D4(&qword_27CF9FEB0, &qword_27CF9FEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FEA8);
  }

  return result;
}

uint64_t sub_220FACBCC(uint64_t a1)
{
  v2 = sub_220FC2240();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_220FC1C20();
}

unint64_t sub_220FACC94()
{
  result = qword_27CF9FEF8;
  if (!qword_27CF9FEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FED0);
    sub_220FACD4C();
    sub_220E453D4(&qword_27CF9FD60, &qword_27CF9FD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FEF8);
  }

  return result;
}

unint64_t sub_220FACD4C()
{
  result = qword_27CF9FF00;
  if (!qword_27CF9FF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FEF0);
    sub_220FACE04();
    sub_220E453D4(&qword_27CF9FE90, &qword_27CF9FE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF00);
  }

  return result;
}

unint64_t sub_220FACE04()
{
  result = qword_27CF9FF08;
  if (!qword_27CF9FF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FEE0);
    sub_220E453D4(&qword_27CF9FF10, &qword_27CF9FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF08);
  }

  return result;
}

unint64_t sub_220FACEBC()
{
  result = qword_27CF9FF40;
  if (!qword_27CF9FF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FF38);
    sub_220FACF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF40);
  }

  return result;
}

unint64_t sub_220FACF48()
{
  result = qword_27CF9FF48;
  if (!qword_27CF9FF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF48);
  }

  return result;
}

unint64_t sub_220FACFCC()
{
  result = qword_27CF9FF78;
  if (!qword_27CF9FF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FF68);
    sub_220FAD058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF78);
  }

  return result;
}

unint64_t sub_220FAD058()
{
  result = qword_27CF9FF80;
  if (!qword_27CF9FF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FF60);
    sub_220FAD0E4();
    sub_220FAD170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF80);
  }

  return result;
}

unint64_t sub_220FAD0E4()
{
  result = qword_27CF9FF88;
  if (!qword_27CF9FF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FF90);
    sub_220FAD170();
    sub_220FAD228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF88);
  }

  return result;
}

unint64_t sub_220FAD170()
{
  result = qword_27CF9FF98;
  if (!qword_27CF9FF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FFA0);
    sub_220FAC86C();
    sub_220E453D4(&qword_27CF9FF10, &qword_27CF9FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FF98);
  }

  return result;
}

unint64_t sub_220FAD228()
{
  result = qword_27CF9FFA8;
  if (!qword_27CF9FFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FFB0);
    sub_220FAD170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FFA8);
  }

  return result;
}

uint64_t sub_220FAD2B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220FAD314()
{
  result = qword_27CFA0088;
  if (!qword_27CFA0088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0060);
    sub_220FAD3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0088);
  }

  return result;
}

unint64_t sub_220FAD3A0()
{
  result = qword_27CFA0090;
  if (!qword_27CFA0090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0070);
    sub_220E453D4(&qword_27CFA0078, &qword_27CFA0068);
    sub_220E453D4(&qword_27CFA0080, &qword_27CFA0070);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0090);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for LocationPicker() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
  OUTLINED_FUNCTION_2();
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v8(v0 + v3 + v1[10], v6);
  v9 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1BA0();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v0 + v3 + v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_220FAD710()
{
  result = qword_27CFA00F8;
  if (!qword_27CFA00F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0100);
    sub_220E453D4(&qword_27CF9FC50, &qword_27CF9FC40);
    sub_220E453D4(&qword_27CF9FC58, &qword_27CF9FC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA00F8);
  }

  return result;
}

uint64_t sub_220FAD800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a7;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  return v7;
}

uint64_t sub_220FAD81C()
{
  sub_220E5E3BC(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_220FAD844()
{
  sub_220FAD81C();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

double sub_220FAD89C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 64);
  if (*(v4 + 16) && (v5 = sub_220F1AE18(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 48 * v5;

    sub_220EF5194(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  return result;
}

uint64_t sub_220FAD910@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 64);
  if (*(v9 + 16) && (result = sub_220F1AE18(result), (v10 & 1) != 0))
  {
    result = sub_220EF5194(*(v9 + 56) + 48 * result, &v12);
    v11 = v13[0];
    *(a2 + 40) = v12;
    *(a2 + 56) = v11;
    *(a2 + 65) = *(v13 + 9);
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 80) = 4;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v3;
  return result;
}

void sub_220FADA94(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerCurve);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerCurve) = a1;
  v3 = a1;

  sub_220FADAEC();
}

void sub_220FADAEC()
{
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_style] == 4)
  {
    v8 = [v0 layer];
    [v8 setCornerRadius_];
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius];
    v2 = sub_220FC2700();
    v4 = v3;
    if (v2 == sub_220FC2700() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_220FC3940();
    }

    [v0 _setCornerRadius_continuous_maskedCorners_];
  }
}

id sub_220FADC58(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle_];
  *a3 = result;
  return result;
}

void sub_220FADCA4()
{
  if (qword_27CF9C1D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CFA0110;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 effectForBlurEffect:v2 style:0];

  qword_27CFA0118 = v3;
}

void sub_220FADD40()
{
  if (qword_27CF9C1D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27CFA0108;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 effectForBlurEffect:v2 style:4];

  qword_27CFA0120 = v3;
}

id sub_220FADDDC()
{
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = sub_220FADE6C(1, 0, 0, 0, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id sub_220FADE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_style] = a1;
  v13 = &v6[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_groupName];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = *&a4;
  if (a5)
  {
    v14 = 10.0;
  }

  if (a1 == 2)
  {
    v14 = 0.0;
  }

  *&v6[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = v14;
  v15 = *MEMORY[0x277CDA138];
  *&v6[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerCurve] = *MEMORY[0x277CDA138];
  v16 = v15;
  sub_220E3D588(a1);
  v20.receiver = v6;
  v20.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v20, sel_initWithEffect_, 0);
  if (a3)
  {
    v18 = sub_220FC26C0();
  }

  else
  {
    v18 = 0;
  }

  [v17 _setGroupName_];

  [v17 setUserInteractionEnabled_];
  sub_220FADFD4();
  sub_220FADAEC();
  sub_220E3D598(a1);

  return v17;
}

void sub_220FADFD4()
{
  v1 = v0;
  v2 = sub_220FC1920();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_groupName + 8];
  if (v4)
  {
    v8 = *&v0[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_groupName];
    v9 = v4;

    MEMORY[0x223D9BD60](46, 0xE100000000000000);
    v5 = sub_220FAD9CC();
    MEMORY[0x223D9BD60](v5);

    sub_220FAE50C(v8, v9, v0);
  }

  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_style];
  switch(v6)
  {
    case 0uLL:
      if (qword_27CF9C1D8 != -1)
      {
        swift_once();
      }

      v7 = qword_27CFA0110;
      goto LABEL_17;
    case 1uLL:
      if (qword_27CF9C1D0 != -1)
      {
        swift_once();
      }

      v7 = qword_27CFA0108;
      goto LABEL_17;
    case 2uLL:
      if (qword_27CF9C1E0 != -1)
      {
        swift_once();
      }

      v7 = qword_27CFA0118;
      goto LABEL_17;
    case 3uLL:
      if (qword_27CF9C1E8 != -1)
      {
        swift_once();
      }

      v7 = qword_27CFA0120;
LABEL_17:

      [v1 setEffect_];
      break;
    case 4uLL:
      [v1 setEffect_];
      sub_220FC1910();
      v10 = sub_220FC1950();
      v11 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(&v8);
      sub_220FC1960();
      sub_220FC31B0();
      break;
    default:
      [v1 setBackgroundColor_];
      [v1 setEffect_];

      sub_220E3D598(v6);
      break;
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps25BackgroundEffectViewStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220FAE454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220FAE4AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_220FAE50C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 _setGroupName_];
}

id sub_220FAE570()
{
  v0 = [swift_getObjCClassFromMetadata() quaternaryLabelColor];
  [v0 alphaComponent];
  v2 = [v0 colorWithAlphaComponent_];

  return v2;
}

uint64_t type metadata accessor for InteractiveFocus()
{
  result = qword_2812C6DE0;
  if (!qword_2812C6DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220FAE630()
{
  sub_220FAE69C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220FAE69C()
{
  if (!qword_2812CA058)
  {
    sub_220FC1070();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812CA058);
    }
  }
}

uint64_t sub_220FAE714(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC1070();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InteractiveFocus();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v35 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0148);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v35 - v19;
  v22 = (&v35 + *(v21 + 56) - v19);
  sub_220FAEAE4(a1, &v35 - v19);
  sub_220FAEAE4(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220FAEAE4(v20, v12);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08) + 48);
      v25 = *&v12[v24];
      v26 = v12[v24 + 8];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *(v22 + v24);
        v27 = *(v22 + v24 + 8);
        (*(v5 + 32))(v8, v22, v4);
        v28 = sub_220FC1010();
        v29 = *(v5 + 8);
        v29(v8, v4);
        v29(v12, v4);
        if ((v28 & 1) == 0)
        {
LABEL_36:
          sub_220FAEBB0(v20);
          return 0;
        }

        if (!v26)
        {
          if ((v27 & 1) != 0 || v25 != v36)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        }

        if (v25 == 0.0)
        {
          if (v36 == 0.0)
          {
            v34 = v27;
          }

          else
          {
            v34 = 0;
          }

          if ((v34 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        }

        if (v36 == 0.0)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27;
        }

LABEL_15:
        if (v30 != 1)
        {
          goto LABEL_36;
        }

LABEL_18:
        sub_220FAEBB0(v20);
        return 1;
      }

      (*(v5 + 8))(v12, v4);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_220FAEAE4(v20, v16);
    v31 = *v16;
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = *v22;
      v30 = *(v22 + 8);
      if (*(v16 + 8) != 1)
      {
        if (v31 != v32)
        {
          LOBYTE(v30) = 1;
        }

        if (v30)
        {
          goto LABEL_36;
        }

        goto LABEL_18;
      }

      if (v31 == 0.0)
      {
        if (v32 != 0.0)
        {
          LOBYTE(v30) = 0;
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_18;
      }

      if (v32 == 0.0)
      {
        v30 = 0;
      }

      goto LABEL_15;
    }
  }

  sub_220FAEB48(v20);
  return 0;
}

uint64_t sub_220FAEA80(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = *&a1 == *&a3;
  if (a4)
  {
    v4 = 0;
  }

  v5 = a4 & (a3 == 0);
  if (*&a1 != 0.0)
  {
    v5 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_220FAEAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveFocus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FAEB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220FAEBB0(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveFocus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220FAEC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  sub_220EE5B48(&qword_2812CA290);
  v14 = sub_220FC2690();
  v15 = *(v8 + 16);
  if (v14)
  {
    v16 = a1;
  }

  else
  {
    v16 = v3;
  }

  v15(v13, v16, v6);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18) + 36);
  if (sub_220FC2680())
  {
    return (*(v8 + 32))(a2, v13, v6);
  }

  (*(v8 + 8))(v13, v6);
  return (v15)(a2, v3 + v17, v6);
}

uint64_t sub_220FAED98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  swift_beginAccess();
  v4 = sub_220FC02B0();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_220FAF544();
  return (*(v5 + 8))(a1, v4);
}

BOOL sub_220FAEE64()
{
  v1 = sub_220FAF138();
  v2 = [v1 state];

  return v2 == 2 || [*(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer) state] == 1;
}

uint64_t sub_220FAEED0()
{
  v1 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220FB4D40(v0 + v20, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    OUTLINED_FUNCTION_0_92();
    v22 = v13;
  }

  else
  {
    sub_220FB4DA4(v13, v19);
    (*(v3 + 16))(v8, v19 + *(v14 + 32), v1);
    sub_220FAED98(v8);
    OUTLINED_FUNCTION_5_40();
    v22 = v19;
  }

  return sub_220FB4E08(v22, v21);
}

uint64_t sub_220FAF070(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB5320(a1, v1 + v3);
  swift_endAccess();
  sub_220FAF308();
  OUTLINED_FUNCTION_0_92();
  return sub_220FB4E08(a1, v4);
}

double sub_220FAF0E0()
{
  [v0 frame];
  MinY = CGRectGetMinY(v3);
  [*&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar] frame];
  return MinY + CGRectGetMidY(v4);
}

id sub_220FAF138()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer];
  }

  else
  {
    v4 = v0;
    ObjectType = swift_getObjectType();
    type metadata accessor for MapScrubberGestureRecognizer();
    v11[3] = ObjectType;
    v11[0] = v4;
    v6 = v4;
    v7 = sub_220F74EFC(v11, sel_handleWithGesture_);
    v8 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220FAF1DC()
{
  v0 = sub_220FC03E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  sub_220FC0380();
  v6 = sub_220FC0370();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  return v5;
}

id sub_220FAF308()
{
  v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_forceNeedsLayout] = 1;
  sub_220FAF34C();

  return [v0 setNeedsLayout];
}

void sub_220FAF34C()
{
  v23 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v23, v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);

  v9 = 0;
  v10 = (v7 + 40);
  while (v8 != v9)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *v10;
    v14 = v12;
    [v14 removeFromSuperview];
    if (v11)
    {
      [v13 removeFromSuperview];
    }

    v10 += 3;
    ++v9;
  }

  v15 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  v16 = v0 + v15;
  v17 = v22;
  sub_220FB4D40(v16, v22);
  if (__swift_getEnumTagSinglePayload(v17, 1, v23) == 1)
  {
    sub_220FB2AD8();
  }

  else
  {
    v18 = v17;
    v19 = v21;
    sub_220FB4DA4(v18, v21);
    sub_220FB2928(v19);
    sub_220FB4E08(v19, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
  }
}

id sub_220FAF544()
{
  v1 = v0;
  v2 = sub_220FC02B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(&v1[v19], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_220FB4E08(v14, type metadata accessor for MapScrubberOverlayBar.ViewModel);
    return [v1 setAccessibilityValue_];
  }

  else
  {
    sub_220FB4DA4(v14, v18);
    v21 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v21], v2);
    sub_220FAEC0C(v6, v10);
    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    (*(v3 + 40))(&v1[v21], v10, v2);
    swift_endAccess();
    sub_220FAF7FC();
    return sub_220FB4E08(v18, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
  }
}

id sub_220FAF7FC()
{
  v1 = v0;
  v2 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220FB4D40(&v1[v21], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    OUTLINED_FUNCTION_0_92();
    sub_220FB4E08(v14, v22);
    return [v1 setAccessibilityValue_];
  }

  else
  {
    sub_220FB4DA4(v14, v20);
    v24 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v25 = *(v4 + 16);
    v25(v9, &v1[v24], v2);
    v26 = sub_220FC0240();
    v27 = *(v4 + 8);
    v27(v9, v2);
    if (v26)
    {
      if (qword_2812C5B30 != -1)
      {
        OUTLINED_FUNCTION_1_72();
        swift_once();
      }

      v28 = qword_2812CE4B0;
      OUTLINED_FUNCTION_6_33();
      v29 = sub_220FBFF80();
    }

    else
    {
      v31 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_accessibilityDateFormatter];
      v25(v9, &v1[v24], v2);
      v32 = sub_220FC01D0();
      v27(v9, v2);
      v28 = [v31 stringFromDate_];

      v29 = sub_220FC2700();
    }

    v33 = v29;
    v34 = v30;

    sub_220EBFC70(v33, v34, v1, &selRef_setAccessibilityValue_);
    OUTLINED_FUNCTION_5_40();
    return sub_220FB4E08(v20, v35);
  }
}

double sub_220FAFAFC()
{
  v1 = sub_220FC02B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  v7 = COERCE_DOUBLE(sub_220FAFC1C());
  LOBYTE(v6) = v8;
  (*(v2 + 8))(v5, v1);
  result = v7;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_220FAFC1C()
{
  v1 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(v0 + v9, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_220FB4E08(v4, type metadata accessor for MapScrubberOverlayBar.ViewModel);
    return 0;
  }

  else
  {
    sub_220FB4DA4(v4, v8);
    sub_220FC01B0();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    sub_220FC01B0();
    v14 = v12 / v13;
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    if (v14 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v0 effectiveUserInterfaceLayoutDirection];
    sub_220FB4E08(v8, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
    v17 = 1.0 - v15;
    if (v16 != 1)
    {
      v17 = v15;
    }

    return *&v17;
  }
}

uint64_t sub_220FAFE00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_220FC02B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24 - v17;
  sub_220FB00C4(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_220E3B2DC(v5, &qword_27CF9EBC0);
  }

  (*(v7 + 32))(v18, v5, v6);
  v20 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v21(v14, &v0[v20], v6);
  v21(v10, v18, v6);
  sub_220FAED98(v10);
  v21(v10, &v0[v20], v6);
  sub_220EE5B48(&qword_27CF9D1E0);
  v22 = sub_220FC26B0();
  v23 = *(v7 + 8);
  v23(v10, v6);
  if ((v22 & 1) == 0)
  {
    [v1 sendActionsForControlEvents_];
  }

  v23(v14, v6);
  return (v23)(v18, v6);
}

uint64_t sub_220FB00C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_220FB4E08(v6, type metadata accessor for MapScrubberOverlayBar.ViewModel);
    v12 = 1;
  }

  else
  {
    sub_220FB4DA4(v6, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    sub_220FC01B0();
    sub_220FC01C0();
    sub_220FB4E08(v10, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
    v12 = 0;
  }

  v13 = sub_220FC02B0();
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v13);
}

id sub_220FB0280()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_elapsedBar;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_control;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks] = MEMORY[0x277D84F90];
  v5 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *v5 = v6;
  v5[1] = v7;
  v8 = sub_220FC2300();
  v9 = 4.0;
  if (v8)
  {
    v9 = 6.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight] = v9;
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickWidth] = 0x4000000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_baselineSpacing] = 0x4018000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_minimumWidth] = 0x4044000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_verticalHitAreaIncrease] = 0x4018000000000000;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_220FC30C0();
  v12 = 0.0;
  if (v10)
  {
    v12 = 2.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_extraPadding] = v12;
  v13 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_overlappingLabelInsets];
  *v13 = xmmword_220FD9F20;
  v13[1] = xmmword_220FD9F20;
  v14 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowLabel;
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_72();
    swift_once();
  }

  v15 = &v0[v14];
  v16 = qword_2812CE4B0;
  OUTLINED_FUNCTION_6_33();
  v17 = sub_220FBFF80();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  v20 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_todayLabel];
  v21 = qword_2812CE4B0;
  OUTLINED_FUNCTION_10();
  v22 = sub_220FBFF80();
  v24 = v23;

  *v20 = v22;
  v20[1] = v24;
  v25 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds];
  *v25 = 0u;
  v25[1] = 0u;
  v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_forceNeedsLayout] = 0;
  *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer] = 0;
  v26 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_accessibilityDateFormatter;
  *&v0[v26] = sub_220FAF1DC();
  v27 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  v28 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  __swift_storeEnumTagSinglePayload(&v0[v27], 1, 1, v28);
  sub_220FC0670();
  v31.receiver = v0;
  v31.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0x8000000220FE7A10);
  sub_220FB05E8();

  return v29;
}

void sub_220FB05E8()
{
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar];
  v2 = objc_opt_self();
  v3 = [v2 tertiarySystemFillColor];
  [v1 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight];
  [v1 _setCornerRadius_];
  [v0 addSubview_];
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_elapsedBar];
  v6 = [v2 labelColor];
  [v5 setBackgroundColor_];

  [v5 _setCornerRadius_];
  v7 = [v5 layer];
  [v7 setZPosition_];

  [v0 addSubview_];
  sub_220FAF34C();
  v8 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark];
  v9 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark];
  sub_220FB2180(v9, 1);

  v10 = v8[1];
  v11 = sub_220FB24C8();
  sub_220FB25C8(v10, v11, v12, 1);

  [v0 addSubview_];
  [v0 addSubview_];
  if ((sub_220FC2300() & 1) == 0)
  {
    v13 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_control];
    v14 = [v2 labelColor];
    [v13 setBackgroundColor_];

    [v13 bounds];
    [v13 setBounds_];
    [v13 _setCornerRadius_];
    [v0 addSubview_];
  }

  v15 = sub_220FAF138();
  [v0 addGestureRecognizer_];

  [v0 setIsAccessibilityElement_];
  v16 = *MEMORY[0x277D76538];
  v17 = *MEMORY[0x277D765D0];
  if (!*MEMORY[0x277D76538])
  {
    if (!v17)
    {
      v16 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v16 |= v17;
    goto LABEL_9;
  }

  if ((v17 & ~v16) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [v0 accessibilityTraits];
  if ((v16 & ~v18) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  [v0 setAccessibilityTraits_];
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v20 = qword_2812CE4B0;
  v21 = sub_220FBFF80();
  v23 = v22;

  sub_220EBFC70(v21, v23, v0, &selRef_setAccessibilityLabel_);
}

void sub_220FB09C4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_elapsedBar;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_control;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks) = MEMORY[0x277D84F90];
  v4 = (v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark);
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *v4 = v5;
  v4[1] = v6;
  v7 = sub_220FC2300();
  v8 = 4.0;
  if (v7)
  {
    v8 = 6.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight) = v8;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickWidth) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_baselineSpacing) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_minimumWidth) = 0x4044000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_verticalHitAreaIncrease) = 0x4018000000000000;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = sub_220FC30C0();
  v11 = 0.0;
  if (v9)
  {
    v11 = 2.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_extraPadding) = v11;
  v12 = (v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_overlappingLabelInsets);
  *v12 = xmmword_220FD9F20;
  v12[1] = xmmword_220FD9F20;
  v13 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowLabel;
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_72();
    swift_once();
  }

  v14 = (v0 + v13);
  v15 = qword_2812CE4B0;
  OUTLINED_FUNCTION_6_33();
  v16 = sub_220FBFF80();
  v18 = v17;

  *v14 = v16;
  v14[1] = v18;
  v19 = (v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_todayLabel);
  v20 = qword_2812CE4B0;
  OUTLINED_FUNCTION_10();
  v21 = sub_220FBFF80();
  v23 = v22;

  *v19 = v21;
  v19[1] = v23;
  v24 = (v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds);
  *v24 = 0u;
  v24[1] = 0u;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_forceNeedsLayout) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar____lazy_storage___gestureRecognizer) = 0;
  v25 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_accessibilityDateFormatter;
  *(v0 + v25) = sub_220FAF1DC();
  v26 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  v27 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  __swift_storeEnumTagSinglePayload(v0 + v26, 1, 1, v27);
  sub_220FC0670();
  sub_220FC3740();
  __break(1u);
}

void sub_220FB0D40()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds];
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_lastBounds + 24];
  [v0 bounds];
  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  v16.origin.x = v2;
  v16.origin.y = v3;
  v16.size.width = v4;
  v16.size.height = v5;
  if (!CGRectEqualToRect(v16, v17) || v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_forceNeedsLayout] == 1)
  {
    [v0 bounds];
    *v1 = v10;
    *(v1 + 1) = v11;
    *(v1 + 2) = v12;
    *(v1 + 3) = v13;
    v0[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_forceNeedsLayout] = 0;
    [v0 bounds];
    sub_220FB0E30(v14);
    sub_220FB1198();
  }
}

void sub_220FB0E30(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight];
  [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar] setFrame_];
  sub_220FB1A6C(a1);
  v13 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(&v1[v13], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v14 = type metadata accessor for MapScrubberOverlayBar.ViewModel;
    v15 = v7;
  }

  else
  {
    sub_220FB4DA4(v7, v11);
    v16 = COERCE_DOUBLE(sub_220FAFC1C());
    if ((v17 & 1) == 0)
    {
      v18 = v16 * a1 + -2.0;
      v19 = &v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark];
      [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark] setCenter_];
      [v19[1] sizeToFit];
      v20 = v19[1];
      v21 = [v1 effectiveUserInterfaceLayoutDirection];
      v22 = 1.0;
      if (v21 == 1)
      {
        [v19[1] bounds];
        v22 = CGRectGetWidth(v36) + -1.0;
      }

      v23 = v18 - v22;
      v24 = v12 + 6.0 + *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_extraPadding] * 0.5;
      [v20 frame];
      [v20 setFrame_];
    }

    v14 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active;
    v15 = v11;
  }

  sub_220FB4E08(v15, v14);
  v25 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  v26 = *&v1[v25];
  v35 = *(v26 + 16);
  if (v35 >= 2)
  {

    v27 = 0;
    for (i = (v26 + 49); ; i += 24)
    {
      if (v35 == v27)
      {

        return;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      v29 = *(i - 1);
      v30 = *(i - 9);
      if (*i)
      {
        v31 = 256;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(i - 17);
      v33 = v30;
      sub_220FB1B98(v27, v32, v30, a1, v31 | v29, v2);

      ++v27;
    }

    __break(1u);
  }
}

void sub_220FB1198()
{
  v1 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  v67 = v0;
  sub_220FB4D40(v0 + v9, v8);
  v10 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v1);
  if (EnumTagSinglePayload != 1)
  {
    sub_220FB4DA4(v8, v4);
    v10 = *(*(v4 + 1) + 16) < 2uLL;
    sub_220FB4E08(v4, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
  }

  if ((sub_220FC2300() & 1) == 0)
  {
    [*(v67 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_control) setHidden_];
  }

  v12 = v67;
  v13 = *(v67 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_elapsedBar);
  LODWORD(v65) = v10;
  [v13 setHidden_];
  v14 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  v15 = *(v12 + v14);
  v66 = *(v15 + 16);

  v16 = 0;
  v17 = (v15 + 40);
  while (v66 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v18 = *(v17 - 1);
    v19 = *v17;
    v20 = *v17;
    v21 = v18;
    [v21 setHidden_];
    if (v19)
    {
      [v20 setHidden_];
    }

    v17 += 3;
    ++v16;
  }

  v22 = v67;
  v23 = v67 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark;
  v24 = v65;
  [*(v67 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark) setHidden_];
  v64 = v23;
  [*(v23 + 8) setHidden_];
  v25 = *(v22 + v14);
  v65 = *(v25 + 16);
  v66 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_bar;

  v26 = 0;
  for (i = 0; v65 != i; ++i)
  {
    if (i >= *(v25 + 16))
    {
      goto LABEL_39;
    }

    v28 = *(v25 + v26 + 32);
    v29 = *(v25 + v26 + 40);
    v30 = v67;
    swift_beginAccess();
    v31 = *(v30 + v14);
    v32 = v29;
    v33 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + v14) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_220E989F0();
      v31 = v42;
    }

    if (i >= *(v31 + 16))
    {
      goto LABEL_40;
    }

    *(v31 + v26 + 49) = 0;
    *(v67 + v14) = v31;
    swift_endAccess();
    if (v29)
    {
      v35 = v32;
      [v35 frame];
      MinX = CGRectGetMinX(v68);
      v37 = *(v67 + v66);
      [v37 frame];
      if (MinX < CGRectGetMinX(v69) || ([v35 frame], MaxX = CGRectGetMaxX(v70), objc_msgSend(v37, sel_frame), CGRectGetMaxX(v71) < MaxX))
      {
        [v35 setHidden_];
        v39 = v67;
        swift_beginAccess();
        v40 = *(v39 + v14);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v39 + v14) = v40;
        if ((v41 & 1) == 0)
        {
          sub_220E989F0();
          v40 = v43;
        }

        if (i >= *(v40 + 16))
        {
          goto LABEL_42;
        }

        *(v40 + v26 + 49) = 1;
        *(v67 + v14) = v40;
        swift_endAccess();
      }
    }

    v26 += 24;
  }

  v44 = v67;
  sub_220FB2F9C();
  [*(v64 + 8) frame];
  v46 = UIEdgeInsetsInsetRect_0(v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = *(v44 + v14);
  v65 = *(v53 + 16);

  v54 = 0;
  v55 = (v53 + 40);
  while (v65 != v54)
  {
    if (v54 >= *(v53 + 16))
    {
      goto LABEL_41;
    }

    v56 = *(v55 - 1);
    v57 = *v55;
    v58 = *v55;
    v59 = v56;
    [v59 frame];
    v60 = CGRectGetMinX(v72);
    v61 = *(v67 + v66);
    [v61 frame];
    if (v60 <= CGRectGetMinX(v73) || ([v59 frame], v62 = CGRectGetMaxX(v74), objc_msgSend(v61, sel_frame), CGRectGetMaxX(v75) <= v62))
    {
      [v59 setHidden_];
    }

    if (v57)
    {
      v63 = v58;
      [v63 frame];
      v77.origin.x = v46;
      v77.origin.y = v48;
      v77.size.width = v50;
      v77.size.height = v52;
      if (CGRectIntersectsRect(v76, v77))
      {
        [v63 setHidden_];
      }
    }

    v55 += 3;
    ++v54;
  }
}

void sub_220FB17AC(double a1)
{
  sub_220FB0E30(a1);
  v2 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = v4;
      [v5 frame];
      CGRectGetMinY(v8);
      v6 = [v5 font];
      if (v6)
      {
        v7 = v6;
        [v6 ascender];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_220FB18FC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_62();
  v15 = CGRectInset(v14, 0.0, -6.0);
  v13.x = a2;
  v13.y = a3;
  if (!CGRectContainsPoint(v15, v13))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_62();
  CGRectGetMinX(v16);
  OUTLINED_FUNCTION_0_62();
  CGRectGetMaxX(v17);
  sub_220FC1110();
  v9 = v8;
  OUTLINED_FUNCTION_0_62();
  CGRectGetMinY(v18);
  OUTLINED_FUNCTION_0_62();
  CGRectGetMaxY(v19);
  sub_220FC1110();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, v9, v10);
}

uint64_t sub_220FB1A6C(double a1)
{
  v3 = [v1 effectiveUserInterfaceLayoutDirection];
  v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_elapsedBar];
  if (v3 == 1)
  {
    v5 = sub_220FAFAFC() * a1;
    v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight];
    [v4 setFrame_];
  }

  else
  {
    v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight];
    [v4 setFrame_];
  }

  result = sub_220FC2300();
  if ((result & 1) == 0)
  {
    v8 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_control];
    v9 = v6 * 0.5 + (a1 - v6) * sub_220FAFAFC();

    return [v8 setCenter_];
  }

  return result;
}

void sub_220FB1B98(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, char *a6)
{
  v9 = COERCE_DOUBLE(sub_220FB1DB8(a1, a4));
  if (v10)
  {
    [a2 setHidden_];
    if (a3)
    {

      [a3 setHidden_];
    }

    return;
  }

  v11 = v9;
  v12 = *&a6[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_barHeight];
  [a2 setCenter_];
  if (!a3)
  {
    return;
  }

  v24 = a3;
  [v24 sizeToFit];
  v13 = 2.0;
  if ([a6 effectiveUserInterfaceLayoutDirection] == 1)
  {
    [v24 bounds];
    v13 = CGRectGetWidth(v26) + -1.0;
  }

  v14 = [*&a6[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark + 8] font];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  [v14 ascender];
  v17 = v16;

  v18 = [v24 font];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = v12 + 6.0 + v17;
  [v18 ascender];
  v22 = v21;

  v23 = v20 - v22 + *&a6[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_extraPadding] * 0.5;
  [v24 frame];
  [v24 setFrame_];
}

uint64_t sub_220FB1DB8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_220FC02B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(&v3[v19], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_220FB4E08(v14, type metadata accessor for MapScrubberOverlayBar.ViewModel);
    v20 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
    swift_beginAccess();
    v21 = *(*&v3[v20] + 16);
    if (v21 >= 2)
    {
      v22 = a2 / (v21 - 1) * a1 + 1.0;
      v23 = [v3 effectiveUserInterfaceLayoutDirection];
      v24 = a2 - v22;
      if (v23 != 1)
      {
        v24 = v22;
      }

      return *&v24;
    }

    return 0;
  }

  sub_220FB4DA4(v14, v18);
  v26 = *v18;
  if (*(*v18 + 16) <= a1)
  {
    sub_220FB4E08(v18, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
  result = sub_220FC01B0();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v26 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v28 = v27;
  (*(v7 + 16))(v10, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);
  sub_220FC01B0();
  v30 = v29;
  (*(v7 + 8))(v10, v6);
  v31 = v30 / v28 * a2;
  if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v32 = a2 - v31;
  }

  else
  {
    v32 = v31;
  }

  sub_220FB4E08(v18, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
  return *&v32;
}

void sub_220FB211C()
{
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  CGRectGetWidth(v1);
}

void sub_220FB2180(void *a1, char a2)
{
  v4 = objc_opt_self();
  if (a2)
  {
    v5 = [v4 blackColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v6 = [v4 secondarySystemFillColor];
  }

  [a1 setBackgroundColor_];

  [a1 _setCornerRadius_];
  [a1 bounds];
  [a1 setBounds_];
  if ((a2 & 1) == 0)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v7 = [a1 layer];
    [v7 addSublayer_];

    v8 = [objc_opt_self() secondarySystemFillColor];
    v9 = [v8 CGColor];

    [v30 setBackgroundColor_];
    [a1 _cornerRadius];
    [v30 setCornerRadius_];
    v10 = sub_220FC26C0();
    [v30 setCompositingFilter_];

    [a1 bounds];
    [v30 bounds];
    [v30 setBounds_];
    v11 = [a1 layer];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    MidX = CGRectGetMidX(v32);
    v21 = [a1 layer];
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    [v30 setPosition_];
  }
}

uint64_t sub_220FB24C8()
{
  v1 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(v0 + v5, v4);
  v6 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    return 0;
  }

  sub_220FB4E08(v4, type metadata accessor for MapScrubberOverlayBar.ViewModel);
  v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowLabel);

  return v7;
}

void sub_220FB25C8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_220FC2410();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220FBFF50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_220E1966C(0, &qword_2812C5B80);
    v18 = sub_220E417BC(*MEMORY[0x277D76940], 0, 0, 1, 0, 0, *MEMORY[0x277D743F8]);
    [a1 setFont_];

    sub_220FB51B0(a2, a3, a1);
    v19 = [objc_opt_self() labelColor];
    v25 = [v19 colorWithAlphaComponent_];

    [a1 setTextColor_];
    v20 = v25;
  }

  else
  {
    sub_220FC23F0();
    sub_220FC1F60();
    sub_220FC2400();

    (*(v9 + 8))(v12, v8);
    sub_220E1966C(0, &qword_2812C5B80);
    v21 = sub_220E417BC(*MEMORY[0x277D76940], 0, 0, 1, 0, 0, *MEMORY[0x277D743F8]);
    v22 = sub_220FBFF40();

    (*(v14 + 8))(v17, v13);
    [a1 setAttributedText_];

    v23 = [objc_opt_self() secondaryLabelColor];
    [a1 setTextColor_];
  }
}

uint64_t sub_220FB2928(uint64_t a1)
{
  v3 = sub_220FC02B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v18 = v1;

  v10 = sub_220FB2D34(v8, v9, sub_220FB5318);

  v11 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  *&v1[v11] = v10;

  v12 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  (*(v4 + 16))(v7, a1 + *(v12 + 28), v3);
  sub_220FAED98(v7);
  v13 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark + 8];
  v14 = sub_220FB24C8();
  sub_220F05198(v14, v15, v13);

  result = sub_220FC2300();
  if ((result & 1) == 0)
  {
    return [v1 bringSubviewToFront_];
  }

  return result;
}

uint64_t sub_220FB2AD8()
{
  v1 = v0;
  v9 = MEMORY[0x277D84F90];
  v2 = 6;
  sub_220F0B160(0, 6, 0);
  do
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_220FB2180(v3, 0);
    [v0 addSubview_];
    v5 = *(v9 + 16);
    v4 = *(v9 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_220F0B160((v4 > 1), v5 + 1, 1);
    }

    *(v9 + 16) = v5 + 1;
    v6 = v9 + 24 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = 0;
    *(v6 + 48) = 4;
    --v2;
  }

  while (v2);
  v7 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  *&v1[v7] = v9;
}

id sub_220FB2C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_220E1966C(0, &qword_2812C5B80);
  v8 = sub_220E417BC(*MEMORY[0x277D76940], 0, 0, 1, 0, 0, *MEMORY[0x277D74420]);
  [v7 setFont_];

  sub_220FB25C8(v7, a1, a2, 0);
  [a4 addSubview_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_220FB2180(v9, 0);
  [a4 addSubview_];
  return v9;
}

uint64_t sub_220FB2D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v45 = MEMORY[0x277D84F90];
  sub_220F0B160(0, v7, 0);
  result = v45;
  v40 = v5;
  v41 = v6;
  v38 = a1;
  v39 = v7;
  v37 = a2;
  if (v7)
  {
    v9 = (a2 + 32);
    v10 = (a1 + 40);
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *v9;
      v14 = result;

      v15 = a3(v11, v12, v13);
      v43 = v16;
      v44 = v15;
      v18 = v17;

      result = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_220F0B160((v19 > 1), v20 + 1, 1);
        result = v14;
      }

      *(result + 16) = v20 + 1;
      v21 = result + 24 * v20;
      *(v21 + 32) = v44;
      *(v21 + 40) = v43;
      --v6;
      *(v21 + 48) = v18;
      *(v21 + 49) = HIBYTE(v18) & 1;
      --v5;
      ++v9;
      v10 += 2;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v22 = v39;
    v23 = (v38 + 16 * v39 + 40);
    while (v40 != v22)
    {
      if (v22 >= v40)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_24;
      }

      if (v41 == v22)
      {
        return result;
      }

      if (v22 >= v41)
      {
        goto LABEL_25;
      }

      v25 = *(v23 - 1);
      v24 = *v23;
      v26 = *(v37 + 32 + v22);
      v27 = result;

      v28 = a3(v25, v24, v26);
      v30 = v29;
      v32 = v31;

      result = v27;
      v46 = v27;
      v33 = v22;
      v35 = *(result + 16);
      v34 = *(result + 24);
      if (v35 >= v34 >> 1)
      {
        sub_220F0B160((v34 > 1), v35 + 1, 1);
        result = v46;
      }

      *(result + 16) = v35 + 1;
      v36 = result + 24 * v35;
      *(v36 + 32) = v28;
      *(v36 + 40) = v30;
      *(v36 + 48) = v32;
      *(v36 + 49) = HIBYTE(v32) & 1;
      v22 = v33 + 1;
      v23 += 2;
    }
  }

  return result;
}

void sub_220FB2F9C()
{
  sub_220FB302C();
  if (v0)
  {
    v1 = 0;
    v2 = 2;
    while (1)
    {
      if (v1 > 2u)
      {
        sub_220FB33B8(v2);
        if (__OFADD__(v2++, 1))
        {
          __break(1u);
          return;
        }
      }

      else
      {
        sub_220FB32C8(++v1);
      }

      sub_220FB302C();
      if ((v4 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_220FB32C8(0);
}

void sub_220FB302C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = 0;
    v5 = 0;
    v6 = (v2 + 49);
    v31 = v3;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      if (*v6)
      {
        goto LABEL_22;
      }

      v7 = *(v6 - 17);
      v8 = *(v6 - 9);
      if (v5)
      {
        break;
      }

      if (!v8)
      {
        v5 = 0;
        goto LABEL_22;
      }

      v9 = v8;
      v12 = v7;
      if (([v9 isHidden] & 1) == 0)
      {
        v11 = v9;
        v5 = v8;
LABEL_13:
        sub_220E1966C(0, &qword_27CF9CD60);
        v13 = v9;
        v14 = v11;
        v15 = sub_220FC3250();

        if (v15)
        {

          v3 = v31;
LABEL_21:

          goto LABEL_22;
        }

        v3 = v31;
        goto LABEL_16;
      }

      v13 = v9;
      v5 = 0;
LABEL_16:
      v16 = v13;
      if (([v16 isHidden] & 1) != 0 || !v5)
      {

        v13 = v8;
        goto LABEL_21;
      }

      [v5 frame];
      v18 = v17;
      [v16 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v33.origin.x = UIEdgeInsetsInsetRect_0(v18);
      v33.origin.y = v27;
      v33.size.width = v28;
      v33.size.height = v29;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v30 = CGRectIntersectsRect(v32, v33);

      if (v30)
      {

        v5 = v8;
        goto LABEL_24;
      }

      v5 = v8;
LABEL_22:
      ++v4;
      v6 += 24;
      if (v3 == v4)
      {

LABEL_24:

        return;
      }
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v10 = v7;
    v11 = v5;
    goto LABEL_13;
  }
}

uint64_t sub_220FB32C8(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = a1;

    v8 = (v5 + 48);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      if (v10 != 4 && v9 != 0)
      {
        v12 = *(v8 - 2);
        v13 = v9;
        if (([v13 isHidden] & 1) == 0 && v10 < v7)
        {
          [v13 setHidden_];
        }
      }

      v8 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

id sub_220FB33B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_tickMarks;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  v7 = 0;
  for (i = (v4 + 49); ; i += 24)
  {
    if (v5 == v7)
    {
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    result = *(i - 9);
    if (result && (*i & 1) == 0)
    {
      if (a1 == -1)
      {
        v10 = 1;
      }

      else
      {
        if (a1)
        {
          v9 = v7 % a1 == 0;
        }

        else
        {
          v9 = v7 == 0;
        }

        v10 = v9;
      }

      result = [result setHidden_];
    }

    ++v7;
  }

  __break(1u);
  return result;
}

void sub_220FB349C(void *a1)
{
  v3 = [a1 state];
  if ((v3 - 1) >= 2)
  {
    if (v3 == 3)
    {

      [v1 sendActionsForControlEvents_];
    }
  }

  else
  {
    if ([a1 state] == 1)
    {
      [v1 sendActionsForControlEvents_];
    }

    sub_220FB211C();
    sub_220FC1110();
    sub_220FAFE00();
    [v1 bounds];
    sub_220FB1A6C(v4);
    [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_nowTickMark] center];
    sub_220F74E98(v5);
  }
}

uint64_t sub_220FB3790()
{
  result = type metadata accessor for MapScrubberOverlayBar.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_220FC02B0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_220FB3940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E860);
  MEMORY[0x28223BE20](v81, v5);
  v82 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v85 = &v73 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v84 = &v73 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v86 = &v73 - v22;
  v23 = sub_220FC02B0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v83 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v73 - v29;
  v31 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(v3 + v39, v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
  {
    v79 = a2;
    sub_220FB4DA4(v34, v38);
    v42 = &v38[*(v35 + 32)];
    sub_220FAEC0C(v87, v30);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18) + 36);
    v44 = sub_220FC0240();
    v78 = v24;
    v46 = *(v24 + 8);
    v45 = v24 + 8;
    v77 = v46;
    v47 = (v46)(v30, v23);
    if (v44)
    {
      v49 = v79;
      sub_220FC01C0();
      v50 = v38;
LABEL_25:
      sub_220FB4E08(v50, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
      v40 = v49;
      v41 = 0;
      return __swift_storeEnumTagSinglePayload(v40, v41, 1, v23);
    }

    v73 = v45;
    v75 = v43;
    v76 = v38;
    MEMORY[0x28223BE20](v47, v48);
    *(&v73 - 2) = v87;
    sub_220EDBC94();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v23);
    v74 = v42;
    if (EnumTagSinglePayload == 1)
    {
      v52 = v86;
      sub_220FB4454(&v42[v75], v86);
      v53 = __swift_getEnumTagSinglePayload(v19, 1, v23);
      v54 = v78;
      v56 = v83;
      v55 = v84;
      if (v53 != 1)
      {
        sub_220E3B2DC(v19, &qword_27CF9EBC0);
      }
    }

    else
    {
      v54 = v78;
      v52 = v86;
      (*(v78 + 32))(v86, v19, v23);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v23);
      v56 = v83;
      v55 = v84;
    }

    v57 = v52;
    sub_220E70720(v52, v55);
    v58 = __swift_getEnumTagSinglePayload(v55, 1, v23);
    v59 = v75;
    if (v58 == 1)
    {
      sub_220E3B2DC(v55, &qword_27CF9EBC0);
    }

    else
    {
      (*(v54 + 32))(v56, v55, v23);
      v60 = *(v35 + 28);
      if (sub_220FC01F0())
      {
        v61 = sub_220FC01F0();
        v77(v56, v23);
        v62 = v85;
        if (v61)
        {
          sub_220E3B2DC(v57, &qword_27CF9EBC0);
          v63 = v76;
          v49 = v79;
          (*(v54 + 16))(v79, &v76[v60], v23);
          v50 = v63;
          goto LABEL_25;
        }

LABEL_16:
        (*(v54 + 16))(v62, &v74[v59], v23);
        __swift_storeEnumTagSinglePayload(v62, 0, 1, v23);
        v64 = v82;
        v65 = *(v81 + 48);
        v66 = v57;
        sub_220E70720(v57, v82);
        sub_220E70720(v62, v64 + v65);
        if (__swift_getEnumTagSinglePayload(v64, 1, v23) == 1)
        {
          sub_220E3B2DC(v62, &qword_27CF9EBC0);
          v67 = __swift_getEnumTagSinglePayload(v64 + v65, 1, v23);
          v68 = v76;
          if (v67 == 1)
          {
            sub_220E3B2DC(v64, &qword_27CF9EBC0);
            v49 = v79;
LABEL_24:
            sub_220FC01C0();
            sub_220E3B2DC(v66, &qword_27CF9EBC0);
            v50 = v68;
            goto LABEL_25;
          }
        }

        else
        {
          v69 = v80;
          sub_220E70720(v64, v80);
          if (__swift_getEnumTagSinglePayload(v64 + v65, 1, v23) != 1)
          {
            (*(v54 + 32))(v30, v64 + v65, v23);
            sub_220EE5B48(&qword_27CF9D1E0);
            v71 = sub_220FC26B0();
            v72 = v77;
            v77(v30, v23);
            sub_220E3B2DC(v62, &qword_27CF9EBC0);
            v72(v69, v23);
            sub_220E3B2DC(v64, &qword_27CF9EBC0);
            v49 = v79;
            v68 = v76;
            if (v71)
            {
              goto LABEL_24;
            }

LABEL_22:
            sub_220FB4E08(v68, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
            return sub_220FB5260(v66, v49);
          }

          sub_220E3B2DC(v62, &qword_27CF9EBC0);
          v77(v69, v23);
          v68 = v76;
        }

        sub_220E3B2DC(v64, &qword_27CF9E860);
        v49 = v79;
        goto LABEL_22;
      }

      v77(v56, v23);
    }

    v62 = v85;
    goto LABEL_16;
  }

  sub_220FB4E08(v34, type metadata accessor for MapScrubberOverlayBar.ViewModel);
  v40 = a2;
  v41 = 1;
  return __swift_storeEnumTagSinglePayload(v40, v41, 1, v23);
}

uint64_t sub_220FB4238(void (*a1)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  v18 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v19 = *(v9 + 16);
  v19(v13, &v1[v18], v7);
  a1(v13);
  v20 = *(v9 + 8);
  v20(v13, v7);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_220E3B2DC(v6, &qword_27CF9EBC0);
  }

  (*(v9 + 32))(v17, v6, v7);
  v19(v13, v17, v7);
  sub_220FAED98(v13);
  [v1 sendActionsForControlEvents_];
  return (v20)(v17, v7);
}

uint64_t sub_220FB4454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v57 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (v53 - v10);
  MEMORY[0x28223BE20](v12, v13);
  v58 = v53 - v14;
  v15 = sub_220FC02B0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v56 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v53 - v21;
  v23 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_model;
  swift_beginAccess();
  sub_220FB4D40(v3 + v31, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_220FB4E08(v26, type metadata accessor for MapScrubberOverlayBar.ViewModel);
    v32 = a2;
    v33 = 1;
    return __swift_storeEnumTagSinglePayload(v32, v33, 1, v15);
  }

  v55 = a2;
  sub_220FB4DA4(v26, v30);
  v34 = *(v27 + 32);
  sub_220FAEC0C(v59, v22);
  v35 = sub_220FC0240();
  v54 = *(v16 + 8);
  v36 = v54(v22, v15);
  if (v35)
  {
    v38 = v55;
    (*(v16 + 16))(v55, &v30[v34], v15);
    sub_220FB4E08(v30, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
    v32 = v38;
LABEL_5:
    v33 = 0;
    return __swift_storeEnumTagSinglePayload(v32, v33, 1, v15);
  }

  v53[1] = v53;
  MEMORY[0x28223BE20](v36, v37);
  v53[-2] = v59;
  v60 = v40;
  v41 = sub_220FB4E60(sub_220FB5178, &v53[-4], v40);
  MEMORY[0x28223BE20](v41, v42);
  v53[-2] = &v60;
  sub_220FB50CC(sub_220FB5240, v44, v43 & 1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    v45 = &v30[v34];
    v46 = v58;
    sub_220FB3940(v45);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v15);
    v48 = v55;
    v49 = v56;
    v50 = v57;
    if (EnumTagSinglePayload != 1)
    {
      sub_220E3B2DC(v11, &qword_27CF9EBC0);
    }
  }

  else
  {
    v46 = v58;
    (*(v16 + 32))(v58, v11, v15);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v15);
    v48 = v55;
    v49 = v56;
    v50 = v57;
  }

  sub_220E70720(v46, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v15) == 1)
  {
    sub_220FB4E08(v30, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
    sub_220E3B2DC(v50, &qword_27CF9EBC0);
  }

  else
  {
    (*(v16 + 32))(v49, v50, v15);
    v51 = *(v27 + 28);
    if (sub_220FC01E0())
    {
      v52 = sub_220FC01E0();
      v54(v49, v15);
      if (v52)
      {
        sub_220E3B2DC(v46, &qword_27CF9EBC0);
        (*(v16 + 16))(v48, &v30[v51], v15);
        sub_220FB4E08(v30, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
        v32 = v48;
        goto LABEL_5;
      }
    }

    else
    {
      v54(v49, v15);
    }

    sub_220FB4E08(v30, type metadata accessor for MapScrubberOverlayBar.ViewModel.Active);
  }

  return sub_220FB5260(v46, v48);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_220FB4AA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220FB4AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220FB4B80()
{
  v0 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_220FB4C00()
{
  sub_220EEC034();
  if (v0 <= 0x3F)
  {
    sub_220FB4CF4(319, &qword_27CFA0210);
    if (v1 <= 0x3F)
    {
      sub_220FB4CF4(319, &qword_27CFA0218);
      if (v2 <= 0x3F)
      {
        sub_220FC02B0();
        if (v3 <= 0x3F)
        {
          sub_220E5BE7C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220FB4CF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220FC2A10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_220FB4D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FB4DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FB4E08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220FB4E60(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_220FC02B0() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

unint64_t sub_220FB4F34@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v3 = a2 + 56 * result;
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = *(v3 + 80);
    *a3 = *(v3 + 32);
    *(a3 + 8) = *(v3 + 40);
    *(a3 + 24) = v4;
    *(a3 + 32) = v5;
    *(a3 + 40) = v6;
    *(a3 + 48) = v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_220FB4FB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_220FC02B0();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_220FB5050@<X0>(void *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
LABEL_5:
    *a4 = v7;
    *(a4 + 16) = v8;
    *(a4 + 32) = v9;
    *(a4 + 48) = v6;
    return result;
  }

  v10 = a2;
  result = (result)(v11, &v10);
  if (!v4)
  {
    v7 = v11[0];
    v8 = v11[1];
    v9 = v11[2];
    v6 = v12;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_220FB50CC@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_220FC02B0();
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_220FC02B0();
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

void sub_220FB51B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();
  [a3 setText_];
}

uint64_t sub_220FB5260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FB5320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t View.buttons(_:buttons:)(__int128 *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2();
  v9 = *a1;
  v11[1] = a1[1];
  v11[0] = v9;
  v12 = v8;
  MEMORY[0x223D9B6E0](v11, a4, &type metadata for ButtonsModifier, a5);
}

uint64_t View.delegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220E1E2A8(a1, v6);
  MEMORY[0x223D9B6E0](v6, a2, &type metadata for DelegateModifier, a3);
  return sub_220FB548C(v6);
}

uint64_t EnvironmentValues.buttons.getter()
{
  sub_220FB54F8();
  sub_220FC1CE0();
  return v1;
}

unint64_t sub_220FB54F8()
{
  result = qword_2812C9F60;
  if (!qword_2812C9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F60);
  }

  return result;
}

uint64_t (*EnvironmentValues.buttons.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_220FB54F8();
  sub_220FC1CE0();
  return sub_220FB55E8;
}

uint64_t sub_220FB55E8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_0_93();
  }

  OUTLINED_FUNCTION_0_93();
}

uint64_t EnvironmentValues.delegate.getter()
{
  sub_220FB56B4();

  return sub_220FC1CE0();
}

unint64_t sub_220FB56B4()
{
  result = qword_2812C9F20;
  if (!qword_2812C9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F20);
  }

  return result;
}

uint64_t EnvironmentValues.delegate.setter(uint64_t a1)
{
  sub_220FB575C(a1, v3);
  sub_220FB56B4();
  sub_220FC1CF0();
  return sub_220FB57CC(a1);
}

uint64_t sub_220FB575C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FB57CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.delegate.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_220FB56B4();
  sub_220FC1CE0();
  return sub_220FB58B0;
}

void sub_220FB58B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_220FB575C(*a1, v2 + 40);
    sub_220FB575C(v2 + 40, v2 + 80);
    OUTLINED_FUNCTION_0_93();
    sub_220FB57CC(v2 + 40);
  }

  else
  {
    sub_220FB575C(*a1, v2 + 40);
    OUTLINED_FUNCTION_0_93();
  }

  sub_220FB57CC(v2);

  free(v2);
}

uint64_t EnvironmentValues.preferredMapSize.getter()
{
  sub_220FB5990();
  sub_220FC1CE0();
  return v1;
}

unint64_t sub_220FB5990()
{
  result = qword_2812C9280;
  if (!qword_2812C9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9280);
  }

  return result;
}

void (*EnvironmentValues.preferredMapSize.modify(void *a1))(_OWORD **a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *(v3 + 6) = v1;
  *(v3 + 7) = sub_220FB5990();
  sub_220FC1CE0();
  v4 = v3[40];
  *v3 = *(v3 + 24);
  v3[16] = v4;
  return sub_220FB5AE4;
}

void sub_220FB5AE4(_OWORD **a1)
{
  v2 = *(*a1 + 16);
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[40] = v2;
  sub_220FC1CF0();

  free(v1);
}

unint64_t sub_220FB5B40()
{
  result = qword_27CFA0220;
  if (!qword_27CFA0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0220);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx11WeatherMaps15ButtonsModifierVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_220FC1BB0();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_220FB5C04()
{
  result = qword_2812C6DF0;
  if (!qword_2812C6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C6DF0);
  }

  return result;
}

uint64_t sub_220FB5C98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_220FB5CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220FB5D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v14 = *(v2 + 32);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0258);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0260) + 36));
  *v10 = KeyPath;
  v10[1] = sub_220FB64B4;
  v10[2] = v7;
  return sub_220FB64BC(v13, v12);
}

void sub_220FB5E68(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_220FB64BC(a2, v17);
  swift_isUniquelyReferenced_nonNull_native();
  v17[0] = *a1;
  v8 = v17[0];
  v9 = sub_220F1908C(v4, v5, v6, v7);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0268);
  v13 = sub_220FC3710();
  v14 = v17[0];
  if (v13)
  {
    v15 = sub_220F1908C(v4, v5, v6, v7);
    if ((v12 & 1) == (v16 & 1))
    {
      v11 = v15;
      goto LABEL_5;
    }

LABEL_9:
    sub_220FC3990();
    __break(1u);
    return;
  }

LABEL_5:
  *a1 = v14;
  if ((v12 & 1) == 0)
  {
    sub_220E98788(v11, v4, v5, v6, v7, MEMORY[0x277D84F90], v14);
  }

  sub_220F34DDC(a2[4]);
}

uint64_t sub_220FB5FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0270) + 36));
  sub_220E1E2A8(v2, (v6 + 1));
  *v6 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0278);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

double sub_220FB609C()
{
  qword_2812C9F58 = 0;
  result = 0.0;
  xmmword_2812C9F38 = 0u;
  unk_2812C9F48 = 0u;
  return result;
}

uint64_t sub_220FB60B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812C9F30 != -1)
  {
    swift_once();
  }

  return sub_220FB575C(&xmmword_2812C9F38, a1);
}

uint64_t sub_220FB6138@<X0>(void *a1@<X8>)
{
  if (qword_2812C9F68 != -1)
  {
    swift_once();
  }

  *a1 = qword_2812C9F70;
}

uint64_t sub_220FB61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220FB627C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_220FB6208(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_220FB6218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220FB63D8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_220FB627C()
{
  result = qword_27CFA0228;
  if (!qword_27CFA0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F860);
    sub_220FB6300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0228);
  }

  return result;
}

unint64_t sub_220FB6300()
{
  result = qword_27CFA0230;
  if (!qword_27CFA0230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F008);
    sub_220FB6384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0230);
  }

  return result;
}

unint64_t sub_220FB6384()
{
  result = qword_27CFA0238;
  if (!qword_27CFA0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0238);
  }

  return result;
}

unint64_t sub_220FB63D8()
{
  result = qword_27CFA0240;
  if (!qword_27CFA0240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0248);
    sub_220FB645C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0240);
  }

  return result;
}

unint64_t sub_220FB645C()
{
  result = qword_27CFA0250;
  if (!qword_27CFA0250)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0250);
  }

  return result;
}

unint64_t sub_220FB64F4()
{
  result = qword_27CFA0280;
  if (!qword_27CFA0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0260);
    sub_220E453D4(&qword_27CFA0288, &qword_27CFA0258);
    sub_220E453D4(&qword_27CFA0290, &qword_27CFA0298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0280);
  }

  return result;
}

unint64_t sub_220FB65D8()
{
  result = qword_2812C5E50;
  if (!qword_2812C5E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0270);
    sub_220E453D4(&qword_2812C5E38, &qword_27CFA0278);
    sub_220E453D4(&qword_2812C5E30, &qword_27CFA02A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E50);
  }

  return result;
}

BOOL sub_220FB66C8()
{

  sub_220FC1340();

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_220FB672C(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_220FC11C0();
  OUTLINED_FUNCTION_4_47();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3_45();
  if (qword_2812C5F20 != -1)
  {
    swift_once();
  }

  v7 = sub_220FC17A0();
  __swift_project_value_buffer(v7, qword_2812C5F28);
  v8 = sub_220FC1780();
  v9 = sub_220FC2E30();
  if (os_log_type_enabled(v8, v9))
  {
    v19 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = sub_220FC2750();
    v14 = sub_220E20FF8(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_220E15000, v8, v9, "Invalidating and cancelling url session: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D9DDF0](v11, -1, -1);
    v15 = v10;
    v4 = v19;
    MEMORY[0x223D9DDF0](v15, -1, -1);
  }

  sub_220FC1350();

  v16 = v20;
  [v20 invalidateAndCancel];

  *(OUTLINED_FUNCTION_5_41() + 16) = v4;
  v20 = MEMORY[0x277D84F90];
  sub_220E1DDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E760);
  sub_220E1DE0C();
  OUTLINED_FUNCTION_1_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA02A8);
  swift_allocObject();
  OUTLINED_FUNCTION_3_50();
  if (a1)
  {
    v17 = sub_220FC1360();
    v2[3] = v17;

    type metadata accessor for WeatherMapOverlayServiceStatistics();
    swift_allocObject();
    v2[4] = sub_220E1DE94(v17);
  }

  else
  {
    v2[2] = sub_220FC1360();
  }
}

uint64_t sub_220FB6ACC()
{

  sub_220FC1350();

  return v1;
}

uint64_t sub_220FB6B24()
{
  v0 = sub_220FC37A0();

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

uint64_t sub_220FB6B78(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6172656E6567;
  }
}

uint64_t sub_220FB6BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220FB6B24();
  *a1 = result;
  return result;
}

uint64_t sub_220FB6C08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FB6B78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_220FB6C34(char a1)
{
  if (qword_2812C9130 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sessionWithConfiguration_];
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6C6172656E6567;
  }

  if (a1)
  {
    v4 = 0x8000000220FDB4C0;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_220FB70D8(v3, v4, v2);
  return v2;
}

uint64_t sub_220FB6CF8()
{

  return v0;
}

uint64_t sub_220FB6D28()
{
  sub_220FB6CF8();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_220FB6D5C()
{
  result = sub_220FB6D7C();
  qword_2812C9138 = result;
  return result;
}

void *sub_220FB6D7C()
{
  v0 = sub_220FC3110();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  v13 = sub_220FC0090();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultManager];
  sub_220F9A350(v12);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220F9A55C(v12);
    type metadata accessor for WeatherMapURLCache();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
    v19 = sub_220FC2D60();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    type metadata accessor for WeatherMapURLCache();
    (*(v14 + 16))(v9, v17, v13);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    v19 = sub_220FC2D60();
    (*(v14 + 8))(v17, v13);
  }

  sub_220FB713C();
  (*(v1 + 104))(v4, *MEMORY[0x277D7B1E8], v0);
  v20 = v19;
  v21 = sub_220FC3100();
  (*(v1 + 8))(v4, v0);
  [v21 setURLCache_];

  [v21 setWaitsForConnectivity_];
  return v21;
}

void sub_220FB70D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setSessionDescription_];
}

unint64_t sub_220FB713C()
{
  result = qword_2812C5BD0;
  if (!qword_2812C5BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5BD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapURLSessionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_220FB7270()
{
  result = qword_27CFA02B0;
  if (!qword_27CFA02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA02B0);
  }

  return result;
}

uint64_t sub_220FB72CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D224(a1, v1 + v3);
  swift_endAccess();
  sub_220FB734C();
  [v1 setNeedsLayout];
  OUTLINED_FUNCTION_0_95();
  return sub_220FB9438(a1, v4);
}

id sub_220FB734C()
{
  v1 = v0;
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  [v1 addSubview_];
  [v1 addSubview_];
  v3 = sub_220FB7EE0();
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView;
    v10 = *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView];
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    v11 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationHeaderSectionView());

    v12 = sub_220F7EEEC(v6, v7, v8);
    [v1 addSubview_];
    sub_220FB938C(v6, v7, v8);
    v13 = *&v1[v9];
    *&v1[v9] = v12;
  }

  sub_220FB8084(&v23);
  v14 = v26;
  if ((~v26 & 0xFEFE) != 0)
  {
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v28 = v26;
    v18 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView;
    v19 = *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView];
    if (v19)
    {
      [v19 removeFromSuperview];
    }

    objc_allocWithZone(type metadata accessor for WeatherMapAnnotationFooterSectionView());
    sub_220F232DC(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v14);
    v20 = sub_220F22894(v27);
    [v1 addSubview_];
    sub_220FB9324(&v23);
    v21 = *&v1[v18];
    *&v1[v18] = v20;
  }

  return sub_220FB8410();
}

id sub_220FB755C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView] = 0;
  sub_220E3D2E4(a1, &v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model]);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 56.0, 56.0);
  sub_220FB734C();

  OUTLINED_FUNCTION_0_95();
  sub_220FB9438(a1, v7);
  return v6;
}

void sub_220FB765C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220FB7738()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  if (sub_220FB7784())
  {
    sub_220FB7888();
  }

  else
  {
    sub_220FB7A98();
  }
}

uint64_t sub_220FB7784()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for WeatherMapAnnotationContentViewModel;
  if (EnumCaseMultiPayload)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658) + 48)];
    v7 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
  }

  sub_220FB9438(v4, v7);
  return v8;
}

id sub_220FB7888()
{
  [v0 bounds];
  Width = CGRectGetWidth(v23);
  v2 = sub_220FB7784();
  v3 = 12.0;
  if (v2)
  {
    v3 = 18.0;
  }

  v4 = Width - v3;
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel];
  [v5 setNumberOfLines_];
  [v5 sizeThatFits_];
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v7 * (v8 / v6 * 0.85);
  [v5 bounds];
  [v5 setBounds_];
  v10 = sub_220FB84F8();
  [v0 bounds];
  Height = CGRectGetHeight(v24);
  v12 = sub_220FB7784();
  v13 = 0.0;
  if (v12)
  {
    v13 = 8.0;
  }

  v14 = Height - v13 - v9 - v10 + 4.0;
  v15 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView;
  v16 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView];
  if (v16)
  {
    v17 = v16;
    [v0 bounds];
    CGRectGetWidth(v25);
    [v17 bounds];
    [v17 setBounds_];

    v18 = *&v0[v15];
    if (v18)
    {
      v19 = v18;
      [v0 bounds];
      [v19 setCenter_];
    }
  }

  [v0 bounds];
  v20 = CGRectGetWidth(v27) * 0.5;

  return [v5 setCenter_];
}

void sub_220FB7A98()
{
  v1 = sub_220FB84F8();
  [v0 bounds];
  Width = CGRectGetWidth(v40);
  sub_220FB8648();
  v4 = v3;
  v5 = sub_220FB7784();
  v6 = 12.0;
  if (v5)
  {
    v6 = 18.0;
  }

  v7 = Width - v4 - v6;
  v8 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel];
  if ([v8 isHidden])
  {
    v9 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView];
    if (([v9 isHidden] & 1) == 0)
    {
      [v9 sizeThatFits_];
      [v9 bounds];
      [v9 setBounds_];
      [v0 bounds];
      v10 = CGRectGetWidth(v41) * 0.5;
      [v0 bounds];
      [v9 setCenter_];
    }

    goto LABEL_12;
  }

  [v8 sizeThatFits_];
  if (v7 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 / v11;
  v15 = v12 * (v13 / v11);
  [v8 bounds];
  [v8 setBounds_];
  v16 = [v8 font];
  if (!v16)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = [v8 font];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 pointSize];
  v21 = v20;

  v22 = [v17 fontWithSize_];
  [v22 ascender];
  v24 = v23;
  [v0 bounds];
  v25 = CGRectGetWidth(v43) * 0.5;
  sub_220FB8648();
  [v8 setCenter_];

LABEL_12:
  [v0 bounds];
  v27 = CGRectGetHeight(v44) - v1;
  v28 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView;
  v29 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView];
  if (v29)
  {
    v30 = v29;
    [v0 bounds];
    CGRectGetWidth(v45);
    [v30 bounds];
    [v30 setBounds_];

    v31 = *&v0[v28];
    if (v31)
    {
      v32 = v31;
      [v0 bounds];
      [v32 setCenter_];
    }
  }

  v33 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView;
  v34 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView];
  if (v34)
  {
    v35 = v34;
    [v0 bounds];
    CGRectGetWidth(v47);
    [v35 bounds];
    [v35 setBounds_];

    v36 = *&v0[v33];
    if (v36)
    {
      v38 = v36;
      [v0 bounds];
      v37 = CGRectGetWidth(v48) * 0.5;
      [v0 bounds];
      [v38 setCenter_];
    }
  }
}

uint64_t sub_220FB7EE0()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v9, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_220FB93D0(v8, v4, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
      v12 = *(v4 + 2);
      v13 = *(v4 + 4);

      v13;
      sub_220FB9438(v4, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
      return v12;
    }

    v11 = type metadata accessor for WeatherMapAnnotationContentViewModel;
  }

  else
  {
    v11 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
  }

  sub_220FB9438(v8, v11);
  return 0;
}

uint64_t sub_220FB8084@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v1 + v19, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220FB93D0(v18, v14, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
      v22 = *(v14 + 8);
      v21 = *(v14 + 9);
      v23 = *(v14 + 10);
      v24 = *(v14 + 11);
      v26 = *(v14 + 12);
      v25 = *(v14 + 13);
      v27 = *(v14 + 56);
      sub_220FB9498(v22, v21, v23, v24, v26, v25, v27);
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel;
      v29 = v14;
    }

    else
    {
      sub_220FB93D0(v18, v10, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
      v22 = *(v10 + 5);
      v21 = *(v10 + 6);
      v23 = *(v10 + 7);
      v24 = *(v10 + 8);
      v26 = *(v10 + 9);
      v25 = *(v10 + 10);
      v27 = *(v10 + 44);
      sub_220F232DC(v22, v21, v23, v24, v26, v25, v27);
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
      v29 = v10;
    }

    result = sub_220FB9438(v29, v28);
  }

  else
  {
    v30 = v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658) + 48)];
    sub_220FB93D0(v18, v6, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    v21 = v6[3];
    if (v21)
    {
      v22 = v6[2];
      v31 = *(v6 + *(v3 + 32));
      v32 = MEMORY[0x277D76A20];
      v23 = v6[4];
      if (!v30)
      {
        v32 = MEMORY[0x277D76938];
      }

      v33 = *v32;
      v34 = MEMORY[0x277D743F8];
      if (!v30)
      {
        v34 = MEMORY[0x277D74418];
      }

      v25 = *v34;
      v26 = v33;

      v24 = v31;
      result = sub_220FB9438(v6, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
      v27 = 256;
    }

    else
    {
      result = sub_220FB9438(v6, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v25 = 0;
      v27 = -258;
    }
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 32) = v26;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  return result;
}

id sub_220FB8410()
{
  sub_220FB8E98();
  sub_220FB87B0();
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_headerSectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_220FB7EE0();
    v6 = v4;
    if (v4)
    {
      sub_220FB938C(v3, v4, v5);
    }

    [v2 setHidden_];
  }

  v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_footerSectionView];
  if (v7)
  {
    v8 = v7;
    sub_220FB8084(v11);
    v9 = v12 & 0xFEFE;
    if (v9 != 65278)
    {
      sub_220FB9324(v11);
    }

    [v8 setHidden_];
  }

  return [v0 setNeedsLayout];
}

double sub_220FB84F8()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220FB9438(v4, type metadata accessor for WeatherMapAnnotationContentViewModel);
      return 34.0;
    }

    else
    {
      sub_220FB9438(v4, type metadata accessor for WeatherMapAnnotationContentViewModel);
      return 35.0;
    }
  }

  else
  {
    v8 = v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658) + 48)];
    sub_220FB9438(v4, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    result = 30.0;
    if (v8)
    {
      return 6.0;
    }
  }

  return result;
}

id sub_220FB8648()
{
  result = [*(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel) text];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = sub_220FC2700();
  v5 = v4;

  result = sub_220FC27E0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  v6 = sub_220EF5750(v3, v5);
  if (v7)
  {
    if (v6 == 45250 && v7 == 0xA200000000000000)
    {
    }

    else
    {
      v9 = sub_220FC3940();

      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v10 = sub_220F92AB4(v3, v5);
  v12 = v11;

  if (v12)
  {
    if (v10 == 45250 && v12 == 0xA200000000000000)
    {
    }

    else
    {
      sub_220FC3940();
    }
  }

  return result;
}

id sub_220FB87B0()
{
  v1 = sub_220FB8950();
  if (v2)
  {
    v4 = v1;
    v5 = v2;
    sub_220FB7784();
    v6 = *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel);
    sub_220E1966C(0, &qword_2812C5B80);
    v7 = sub_220FC3150();
    [v6 setFont_];

    [v6 setAdjustsFontForContentSizeCategory_];
    sub_220F05198(v4, v5, v6);
    v8 = sub_220FB8BFC();
    [v6 setTextColor_];

    [v6 setTextAlignment_];
    [v6 setHidden_];
    [v6 setAdjustsFontSizeToFitWidth_];
    v9 = sel_setMinimumScaleFactor_;
    v3 = 0.5;
    v10 = v6;
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_titleLabel);
    v9 = sel_setHidden_;
  }

  return [v10 v9];
}

uint64_t sub_220FB8950()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220FB93D0(v16, v12, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    v19 = sub_220FC2780();
    v21 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
    v22 = v12;
LABEL_7:
    sub_220FB9438(v22, v21);
    return v19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_220FB93D0(v16, v8, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
    v19 = sub_220FC2780();
    v21 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
    v22 = v8;
    goto LABEL_7;
  }

  sub_220FB93D0(v16, v4, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  v19 = *(v4 + 1);
  v20 = v4[24];
  sub_220E5696C();
  sub_220FB9438(v4, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  if (v20 == 1)
  {
    sub_220EE79F8();
    return 0;
  }

  return v19;
}

id sub_220FB8BFC()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220FB93D0(v16, v4, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
      v19 = *&v4[*(v1 + 40)];
      v20 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel;
      v21 = v4;
    }

    else
    {
      sub_220FB93D0(v16, v8, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
      v19 = *&v8[*(v5 + 32)];
      v20 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
      v21 = v8;
    }
  }

  else
  {
    sub_220FB93D0(v16, v12, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    v19 = *&v12[*(v9 + 32)];
    v20 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
    v21 = v12;
  }

  sub_220FB9438(v21, v20);
  return v19;
}

void sub_220FB8E98()
{
  v1 = sub_220FB8F7C();
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView);
  if (v1)
  {
    v5 = v1;
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView) setImage_];
    v3 = [objc_opt_self() labelColor];
    [v2 setTintColor_];

    [v2 setHidden_];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_iconView);

    [v4 setHidden_];
  }
}

id sub_220FB8F7C()
{
  v1 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentForegroundView_model;
  swift_beginAccess();
  sub_220E3D2E4(v0 + v9, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = type metadata accessor for WeatherMapAnnotationContentViewModel;
    v14 = v4;
LABEL_6:
    sub_220FB9438(v14, v13);
    return 0;
  }

  sub_220FB93D0(v4, v8, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  if (v8[24] != 1)
  {
    v13 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel;
    v14 = v8;
    goto LABEL_6;
  }

  v11 = *(v8 + 1);
  v10 = *(v8 + 2);
  sub_220E1966C(0, &qword_2812C5B50);
  v12 = sub_220F6DD88(v11, v10, *MEMORY[0x277D76A20], -1, *MEMORY[0x277D74418], 0, 0, 2);
  sub_220FB9438(v8, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  return v12;
}

uint64_t type metadata accessor for WeatherMapAnnotationContentForegroundView()
{
  result = qword_27CFA02D8;
  if (!qword_27CFA02D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220FB9278()
{
  result = type metadata accessor for WeatherMapAnnotationContentViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220FB9324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA02E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220FB938C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_220FB93D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220FB9438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220FB9498(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  if ((~a7 & 0xFEFE) != 0)
  {
    sub_220F232DC(a1, a2, a3, a4, a5, a6, a7);
  }
}

id sub_220FB94AC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for MKPointOfInterestCategory(0);
  v1 = sub_220FC2960();

  v2 = [v0 initIncludingCategories_];

  return v2;
}

void sub_220FB9524(char a1)
{
  [v1 *off_278456088[a1]];
  sub_220FB95AC();
  v2 = sub_220FB94AC();
  [v1 setPointOfInterestFilter_];
}

unint64_t sub_220FB95AC()
{
  result = qword_2812C5C10;
  if (!qword_2812C5C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5C10);
  }

  return result;
}

unint64_t sub_220FB95F4()
{
  result = qword_2812C7DF0;
  if (!qword_2812C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7DF0);
  }

  return result;
}

uint64_t sub_220FB9690()
{
  OUTLINED_FUNCTION_0_96();
  sub_220FC27D0();
  return sub_220FC3A90();
}

uint64_t sub_220FB973C()
{
  OUTLINED_FUNCTION_0_96();
  sub_220FC27D0();
  return sub_220FC3A90();
}

uint64_t sub_220FB97A8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_0_96();
  MEMORY[0x223D9CFA0](a1);
  return sub_220FC3A90();
}

uint64_t sub_220FB980C(char a1)
{
  OUTLINED_FUNCTION_0_96();
  MEMORY[0x223D9CFA0](a1 & 1);
  return sub_220FC3A90();
}

uint64_t sub_220FB9864(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_0_96();
  a2(v5, a1);
  return sub_220FC3A90();
}

uint64_t sub_220FB98B8()
{
  OUTLINED_FUNCTION_0_96();
  sub_220FC3A70();
  return sub_220FC3A90();
}

uint64_t sub_220FB98F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_96();
  MEMORY[0x223D9CFA0](a1);
  return sub_220FC3A90();
}

uint64_t sub_220FB9938()
{
  v0 = sub_220FC37A0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220FB9984(char a1)
{
  result = 5000257;
  switch(a1)
  {
    case 1:
      result = 67;
      break;
    case 2:
      result = 70;
      break;
    case 3:
      result = 75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220FB99DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220FB9938();
  *a1 = result;
  return result;
}

uint64_t sub_220FB9A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FB9984(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220FB9A38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3E520();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapTemperatureScaleIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220FB9BB4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_220FB9C10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  v52.origin.x = OUTLINED_FUNCTION_0_0();
  if (CGRectEqualToRect(v52, v54))
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0.0;
    v14 = 0uLL;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0uLL;
    v18 = 1;
LABEL_40:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v14;
    *(a2 + 40) = v5;
    *(a2 + 48) = v9;
    *(a2 + 56) = v15;
    *(a2 + 64) = v17;
    *(a2 + 80) = v16;
    *(a2 + 88) = v10;
    *(a2 + 96) = v11;
    *(a2 + 104) = v12;
    *(a2 + 112) = v13;
    *(a2 + 116) = v18;
    return;
  }

  v19 = *(a1 + 64);
  if (v19 == 1.0)
  {
    v20 = 20.0;
  }

  else
  {
    v20 = 21.0;
  }

  v53.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v53);
  v22 = *(a1 + 40);
  v51 = *(a1 + 32);
  v23 = *(a1 + 48);
  v50 = *(a1 + 56);
  v24 = v20 + log2(Width / v23);
  if (v24 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v24;
  }

  v26 = floor(v25 + 0.01);
  if (v26 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v26 >= OUTLINED_FUNCTION_1_74())
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__OFADD__(v11, 1))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v27 = exp2(v26);
  if (v26 == INFINITY)
  {
    goto LABEL_45;
  }

  v28 = v27 * 0.5;
  if (v27 * 0.5 == INFINITY)
  {
    goto LABEL_45;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v28 >= OUTLINED_FUNCTION_1_74())
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = v28;
  v30 = floor(v51 / *MEMORY[0x277CD4BC0] * v29);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v31 = floor((v51 + v23) / *MEMORY[0x277CD4BC0] * v29);
  if (v31 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v32 = *(MEMORY[0x277CD4BC0] + 8);
  v33 = v22 / v32 * v29;
  v34 = floor(v33);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v35 = floor((v22 + v50) / v32 * v29);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v36 = v30;
  v37 = v31 - v30;
  if (__OFSUB__(v31, v30))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v38 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v39 = v34;
  v40 = v35 - v34;
  if (__OFSUB__(v35, v34))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v41 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v42 = floor(v25);
  if (v42 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v42 >= OUTLINED_FUNCTION_1_74())
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v44 = v25;
  v45 = v43;
  v46 = round(((exp2(v44 - v42) + -1.0) * 0.5 + 0.5) * *(a1 + 72));
  if (v42 == INFINITY || (*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_65;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v47 = OUTLINED_FUNCTION_1_74();
  if (v48 < v47)
  {
    v18 = 0;
    v12 = v28;
    v15 = v36;
    *&v17 = v39;
    v16 = v41;
    v49 = (v36 - v45) * v48;
    v5 = (v39 - v33) * v48;
    v9 = v48;
    v10 = *(v2 + 16);
    v6 = v51;
    v7 = v22;
    v8 = v23;
    *&v14 = v50;
    *(&v14 + 1) = v49;
    *(&v17 + 1) = v38;
    v13 = v19;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
}

double sub_220FBA07C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 1 << a3;
  if (a3 >= 0x40)
  {
    v3 = 0;
  }

  if (a3 > 0x40)
  {
    v3 = 0;
  }

  return *MEMORY[0x277CD4BC0] / v3 * a1;
}

void sub_220FBA0BC(uint64_t a1)
{
  if (__OFSUB__(21, a1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(21 - a1, 2))
  {
    exp2((19 - a1));
    return;
  }

  __break(1u);
}

void *sub_220FBA0FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_220FBA344();
  if (!v6)
  {
    if (qword_2812C5EA8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v14 = sub_220FC17A0();
    __swift_project_value_buffer(v14, qword_2812C5EB0);
    v15 = sub_220FC1780();
    v16 = sub_220FC2E10();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_220E15000, v15, v16, "Coverage: Unable to parse GeoJSON file!", v17, 2u);
      MEMORY[0x223D9DDF0](v17, -1, -1);
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = *MEMORY[0x277CD4BB8];
  v9 = *(MEMORY[0x277CD4BB8] + 8);
  v10 = *(MEMORY[0x277CD4BB8] + 16);
  v11 = *(MEMORY[0x277CD4BB8] + 24);
  v12 = sub_220FBA9D0(v6);
  if (!v12)
  {
    if (qword_2812C5EA8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v18 = sub_220FC17A0();
    __swift_project_value_buffer(v18, qword_2812C5EB0);
    v15 = sub_220FC1780();
    v19 = sub_220FC2E10();
    if (os_log_type_enabled(v15, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_220E15000, v15, v19, "Coverage: Unable to create path from polygons!", v20, 2u);
      MEMORY[0x223D9DDF0](v20, -1, -1);
    }

LABEL_13:
    sub_220E565AC(a1, a2);

    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;
  sub_220E565AC(a1, a2);
  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[2] = v7;
  v3[3] = v13;
  return v3;
}

unint64_t sub_220FBA344()
{
  v52[8] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CD4DE0]) init];
  v1 = sub_220FC0100();
  v51 = 0;
  v2 = [v0 geoJSONObjectsWithData:v1 error:&v51];

  v3 = v51;
  if (!v2)
  {
    v34 = v51;
    v35 = sub_220FBFFE0();

    swift_willThrow();
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v36 = sub_220FC17A0();
    __swift_project_value_buffer(v36, qword_2812C5EB0);
    v37 = v35;
    v38 = sub_220FC1780();
    v39 = sub_220FC2E10();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_220E15000, v38, v39, "Unable to decode coverage data: %@", v40, 0xCu);
      sub_220FBAEF8(v41);
      MEMORY[0x223D9DDF0](v41, -1, -1);
      MEMORY[0x223D9DDF0](v40, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0350);
  v4 = sub_220FC2970();
  v5 = v3;

  v6 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v7 = sub_220F43CDC(v4);
  if (!v7)
  {
LABEL_45:

    v27 = *(MEMORY[0x277CD4BB8] + 8);
    v28 = *(MEMORY[0x277CD4BB8] + 16);
    v29 = *(MEMORY[0x277CD4BB8] + 24);
    v52[0] = *MEMORY[0x277CD4BB8];
    v52[1] = v27;
    v52[2] = v52[0] + v28;
    v52[3] = v27;
    v52[4] = v52[0] + v28;
    v52[5] = v27 + v29;
    v52[6] = v52[0];
    v52[7] = v27 + v29;
    sub_220E638D4();
    v2 = sub_220FBAC38(v52, 4, v6);
    if (qword_2812C5EA8 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_46;
  }

  v8 = v7;
  v9 = 0;
  v10 = v4 & 0xC000000000000001;
  v45 = v4 & 0xFFFFFFFFFFFFFF8;
  v47 = v7;
  v48 = v4;
  v46 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      MEMORY[0x223D9CB30](v9, v4);
    }

    else
    {
      if (v9 >= *(v45 + 16))
      {
        goto LABEL_60;
      }

      swift_unknownObjectRetain();
    }

    v11 = __OFADD__(v9++, 1);
    if (v11)
    {
      goto LABEL_59;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_42:
    if (v9 == v8)
    {
      goto LABEL_45;
    }
  }

  v2 = [v12 geometry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0358);
  v13 = sub_220FC2970();

  v50 = v13;
  if (v13 >> 62)
  {
    v14 = sub_220FC34C0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v14;
  if (!v14)
  {
    swift_unknownObjectRelease();

    goto LABEL_42;
  }

  v15 = 0;
  v17 = v14;
  v16 = v50;
  v18 = v50 & 0xC000000000000001;
  while (1)
  {
    if (v18)
    {
      v19 = MEMORY[0x223D9CB30](v15, v16);
    }

    else
    {
      if (v15 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v19 = *(v50 + 32 + 8 * v15);
    }

    v20 = v19;
    v11 = __OFADD__(v15++, 1);
    if (v11)
    {
      break;
    }

    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = sub_220FBAE30(v21);
      if (v22)
      {
        v2 = v22;
        if (v22 >> 62)
        {
          v23 = sub_220FC34C0();
          if (v23)
          {
LABEL_23:
            if (v23 < 1)
            {
              goto LABEL_58;
            }

            for (i = 0; i != v23; ++i)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v25 = MEMORY[0x223D9CB30](i, v2);
              }

              else
              {
                v25 = *(v2 + 8 * i + 32);
              }

              v26 = v25;
              MEMORY[0x223D9BEA0]();
              if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_220FC29C0();
              }

              sub_220FC29F0();
            }
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_23;
          }
        }

        v17 = v49;
        v16 = v50;
        v18 = v50 & 0xC000000000000001;
      }

      v2 = v20;
      MEMORY[0x223D9BEA0]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();

      v6 = v51;
      goto LABEL_38;
    }

LABEL_38:
    if (v15 == v17)
    {
      swift_unknownObjectRelease();

      v8 = v47;
      v4 = v48;
      v10 = v46;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_46:
  v30 = sub_220FC17A0();
  __swift_project_value_buffer(v30, qword_2812C5EB0);
  v31 = sub_220FC1780();
  v32 = sub_220FC2E30();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_220E15000, v31, v32, "Decoded radar coverage data.", v33, 2u);
    MEMORY[0x223D9DDF0](v33, -1, -1);
  }

  return v2;
}

uint64_t sub_220FBA9D0(void *a1)
{
  v2 = sub_220FBAE30(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_220FBACD4(a1);
  result = sub_220F43CDC(v3);
  if (!result)
  {
LABEL_13:

    return v4;
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D9CB30](i, v3);
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      if (v4)
      {
        v10 = v4;
        v11 = sub_220FBACD4(v9);
        if (v11)
        {
          v12 = v11;
          sub_220FC2E50();

          v9 = v12;
        }
      }
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_220FBAB10(double a1, double a2, double a3, double a4)
{
  v9 = sub_220FBAE90(*(v4 + 16));
  if (v9)
  {
    v10 = v9;
    v11 = sub_220F43CDC(v9);
    v12 = 0;
    while (1)
    {
      if (v11 == v12)
      {
LABEL_11:

        return;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D9CB30](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = [v13 intersectsMapRect_];

      ++v12;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

id sub_220FBAC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_220E638D4();
    v5 = sub_220FC2960();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() polygonWithPoints:a1 count:a2 interiorPolygons:v5];

  return v6;
}

CGPath *sub_220FBACD4(void *a1)
{
  v2 = [a1 pointCount];
  v3 = [a1 points];
  v4 = a1;
  v5 = a1;
  if (v2 < 3)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v7 = v3 + 24;
  sub_220FC2E60();
  v8 = v2 - 1;
  do
  {
    sub_220FC2E70();
    v7 += 16;
    --v8;
  }

  while (v8);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t sub_220FBADD8()
{
  sub_220FBADB0();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_220FBAE30(void *a1)
{
  v1 = [a1 interiorPolygons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_220E638D4();
  v3 = sub_220FC2970();

  return v3;
}

uint64_t sub_220FBAE90(void *a1)
{
  v2 = [a1 interiorPolygons];

  if (!v2)
  {
    return 0;
  }

  sub_220E638D4();
  v3 = sub_220FC2970();

  return v3;
}

uint64_t sub_220FBAEF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220FBAF60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_220FBAFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220FBB004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_220FBB044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_220FBB0E0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6576697463616E69;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = MEMORY[0x277D84F90];
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 80) = xmmword_220FC8E20;
  return result;
}

uint64_t sub_220FBB128(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_220FC3940() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_220FC3940() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_220E8523C(*(a1 + 32), *(a2 + 32)))
  {
    v8 = *(a2 + 33);
    if (*(a1 + 33) == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }
    }

    else if (v8 == 2 || (sub_220E859D8() & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 48);
    v10 = *(a2 + 48);
    if (v9)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *(a1 + 40) == *(a2 + 40) && v9 == v10;
      if (!v11 && (sub_220FC3940() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (sub_220F3548C(*(a1 + 56), *(a2 + 56)))
    {
      v12 = *(a1 + 64);
      v13 = *(a2 + 64);
      if (v12)
      {
        if (!v13 || (sub_220F3548C(v12, v13) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v13)
      {
        return 0;
      }

      v14 = *(a1 + 72);
      v15 = *(a2 + 72);
      if (v14 == 2)
      {
        if (v15 != 2)
        {
          return 0;
        }
      }

      else if (v15 == 2 || (sub_220E85764(v14 & 1) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

double sub_220FBB2B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v20 = *v3;
  v19 = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 7);
  v17 = *(v3 + 8);
  v10 = v17;
  v18 = v9;
  v15 = v20;
  v16 = v7;
  *&v14[7] = v3[5];
  sub_220F30FE8(&v20, v13);
  sub_220ED6038(&v19, v13, &qword_27CF9CFD0);
  sub_220ED6038(&v18, v13, &qword_27CF9F198);
  sub_220ED6038(&v17, v13, &qword_27CF9F1C8);

  v11 = v16;
  *a3 = v15;
  *(a3 + 16) = v11;
  *(a3 + 32) = v8;
  *(a3 + 33) = 0;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = v9;
  *(a3 + 64) = v10;
  *(a3 + 72) = 0;
  result = *v14;
  *(a3 + 73) = *v14;
  *(a3 + 88) = *&v14[15];
  return result;
}

uint64_t sub_220FBB3B4(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_220FBB3F0()
{
  v0 = sub_220FC37A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220FBB43C(char a1)
{
  if (!a1)
  {
    return 0x6F756E69746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6574657263736964;
  }

  return 0x6576697463616E69;
}

uint64_t sub_220FBB498(char a1)
{
  if (a1)
  {
    return 0x694D7261656E696CLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_220FBB4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
      {

        return 3;
      }

      else
      {
        v9 = sub_220FC3940();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_220FBB634(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
      result = 0x65756C6176;
      break;
    case 3:
      result = 0x61746E6563726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220FBB6CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220FBB704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FBB3B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220FBB730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220FBB3F0();
  *a1 = result;
  return result;
}

uint64_t sub_220FBB760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FBB43C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220FBB78C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220FBB7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FBB498(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220FBB7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220FBB4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220FBB820(uint64_t a1)
{
  v2 = sub_220FBE090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220FBB85C(uint64_t a1)
{
  v2 = sub_220FBE090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220FBB898(uint64_t a1, uint64_t a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  v46 = &v46 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0430);
  MEMORY[0x28223BE20](v11 - 8, v12);
  OUTLINED_FUNCTION_3_3();
  v47 = v13;
  MEMORY[0x28223BE20](v14, v15);
  v50 = &v46 - v16;
  v17 = sub_220FBFFA0();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v51 = sub_220FBFF50();
  OUTLINED_FUNCTION_6();
  v20 = v19;
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_3_3();
  v49 = v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v46 - v26;
  v52 = a1;
  v53 = a2;
  v56 = 40;
  v57 = 0xE100000000000000;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_220E921A4();
  v52 = OUTLINED_FUNCTION_12_26();
  v53 = v28;
  v56 = 41;
  v57 = 0xE100000000000000;
  v54 = 0;
  v55 = 0xE000000000000000;
  v29 = OUTLINED_FUNCTION_12_26();
  v31 = v30;

  sub_220FBFF90();
  sub_220FBFF60();
  v52 = v29;
  v53 = v31;
  v56 = 32;
  v57 = 0xE100000000000000;
  v32 = sub_220FC33C0();

  if (v32[2])
  {
    v34 = v32[4];
    v33 = v32[5];

    v52 = v34;
    v53 = v33;
    v35 = sub_220FC03E0();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v35);
    sub_220FBE138();
    v36 = v50;
    sub_220FBFFF0();
    sub_220E3B2DC(v10, &qword_27CF9E5D0);
    v37 = v36;
    v38 = v47;
    sub_220ED6038(v37, v47, &qword_27CFA0430);
    if (__swift_getEnumTagSinglePayload(v38, 1, v48) != 1)
    {
      v41 = v38;
      v42 = v46;
      sub_220FBE1D4(v41, v46);
      sub_220FC2760();

      sub_220FBFF90();
      v40 = v49;
      sub_220FBFF60();
      sub_220FBE244();
      v39 = v51;
      sub_220FBFF30();
      (*(v20 + 8))(v40, v39);
      v43 = sub_220FBFF70();
      LOBYTE(v56) = 1;
      sub_220FBE2A8();
      sub_220FBFFC0();
      v43(&v52, 0);
      sub_220E3B2DC(v42, &qword_27CFA0428);
      sub_220E3B2DC(v50, &qword_27CFA0430);
      goto LABEL_7;
    }

    sub_220E3B2DC(v50, &qword_27CFA0430);

    sub_220E3B2DC(v38, &qword_27CFA0430);
  }

  else
  {
  }

  v39 = v51;
  v40 = v49;
LABEL_7:
  sub_220FBE190();
  (*(v20 + 16))(v40, v27, v39);
  v44 = sub_220FC3020();
  (*(v20 + 8))(v27, v39);
  return v44;
}

uint64_t sub_220FBBE10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449656C616373 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000220FE7DA0 == a2;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C616373 && a2 == 0xE700000000000000;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
          if (v9 || (sub_220FC3940() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
            if (v10 || (sub_220FC3940() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7261646E6F636573 && a2 == 0xEF73746E696F5079;
              if (v11 || (sub_220FC3940() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656956656C616373 && a2 == 0xEF656372756F5377;
                if (v12 || (sub_220FC3940() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_220FC3940();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_220FBC0E4(char a1)
{
  result = 0x656449656C616373;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x676E696C616373;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
      result = 0x73746E696F70;
      break;
    case 6:
      result = 0x7261646E6F636573;
      break;
    case 7:
      result = 0x656956656C616373;
      break;
    case 8:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220FBC1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220FBBE10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220FBC224(uint64_t a1)
{
  v2 = sub_220FBDC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220FBC260(uint64_t a1)
{
  v2 = sub_220FBDC64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220FBC29C()
{
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v0 = qword_2812CE4B0;
  v1 = sub_220FBFF80();
  v3 = v2;

  qword_2812CE540 = v1;
  *algn_2812CE548 = v3;
}

uint64_t sub_220FBC370(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_220FC3940() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v7 && (sub_220FC3940() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v8 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_220FBC42C(uint64_t a1)
{
  v2 = v1;
  sub_220FC27D0();
  if (*(v2 + 24))
  {
    sub_220FC3A60();
    OUTLINED_FUNCTION_14_27();
  }

  else
  {
    sub_220FC3A60();
  }

  sub_220FC27D0();

  if (*(v2 + 33) == 2)
  {
    sub_220FC3A60();
  }

  else
  {
    sub_220FC3A60();
    sub_220FC27D0();
  }

  if (*(v2 + 48))
  {
    sub_220FC3A60();
    OUTLINED_FUNCTION_14_27();
  }

  else
  {
    sub_220FC3A60();
  }

  sub_220FBDAF4(a1, *(v2 + 56));
  v4 = *(v2 + 64);
  sub_220FC3A60();
  if (v4)
  {
    sub_220FBDAF4(a1, v4);
  }

  if (*(v2 + 72) == 2)
  {
    sub_220FC3A60();
  }

  else
  {
    sub_220FC3A60();
    sub_220FC27D0();
  }

  v5 = *(v2 + 80);
  v6 = *(v2 + 88);

  return sub_220F21618(v5, v6);
}

uint64_t sub_220FBC644()
{
  sub_220FC3A40();
  sub_220FBC42C(v1);
  return sub_220FC3A90();
}

uint64_t sub_220FBC684()
{
  if (*(v0 + 8))
  {
    sub_220FC3A60();
    OUTLINED_FUNCTION_14_27();
  }

  else
  {
    sub_220FC3A60();
  }

  sub_220FC27D0();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v1);
  if (*(v0 + 48) == 1)
  {
    return sub_220FC3A60();
  }

  v3 = *(v0 + 40);
  sub_220FC3A60();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x223D9CFD0](v4);
}

uint64_t sub_220FBC728()
{
  sub_220FC3A40();
  sub_220FBC684();
  return sub_220FC3A90();
}

uint64_t sub_220FBC768(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA03C8);
  OUTLINED_FUNCTION_6();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220FBDC64();
  OUTLINED_FUNCTION_16_18();
  sub_220FC3AB0();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_5_42();
  sub_220FC38B0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    OUTLINED_FUNCTION_5_42();
    sub_220FC3880();
    LOBYTE(v13) = *(v3 + 32);
    v14 = 2;
    sub_220FBDE08();
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38D0();
    LOBYTE(v13) = *(v3 + 33);
    v14 = 3;
    sub_220FBDE5C();
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38A0();
    LOBYTE(v13) = 4;
    OUTLINED_FUNCTION_5_42();
    sub_220FC3880();
    *&v13 = *(v3 + 56);
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F198);
    sub_220FBDEB0(&qword_27CFA03E0, sub_220FBDF28);
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38D0();
    *&v13 = *(v3 + 64);
    v14 = 6;
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38A0();
    LOBYTE(v13) = *(v3 + 72);
    v14 = 7;
    sub_220FBDF7C();
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38A0();
    v13 = *(v3 + 80);
    v14 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1D8);
    sub_220FBDFD0(&qword_27CFA03F8);
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_5_42();
    sub_220FC38D0();
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_220FBCA7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0388);
  OUTLINED_FUNCTION_6();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220FBDC64();
  sub_220FC3AA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_4_48();
  v10 = sub_220FC3820();
  v12 = v11;
  OUTLINED_FUNCTION_4_48();
  v21 = sub_220FC37E0();
  v23 = v13;
  OUTLINED_FUNCTION_13_27(2);
  sub_220FBDCB8();
  OUTLINED_FUNCTION_3_51();
  sub_220FC3850();
  v37 = 1;
  OUTLINED_FUNCTION_13_27(3);
  sub_220FBDD0C();
  OUTLINED_FUNCTION_3_51();
  sub_220FC3810();
  LOBYTE(v25[0]) = 4;
  OUTLINED_FUNCTION_4_48();
  v20 = sub_220FC37E0();
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F198);
  OUTLINED_FUNCTION_13_27(5);
  sub_220FBDEB0(&qword_27CFA03A8, sub_220FBDD60);
  OUTLINED_FUNCTION_4_48();
  sub_220FC3850();
  OUTLINED_FUNCTION_13_27(6);
  OUTLINED_FUNCTION_4_48();
  sub_220FC3810();
  OUTLINED_FUNCTION_13_27(7);
  sub_220FBDDB4();
  OUTLINED_FUNCTION_3_51();
  sub_220FC3810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1D8);
  v38 = 8;
  sub_220FBDFD0(&qword_27CFA03C0);
  OUTLINED_FUNCTION_4_48();
  sub_220FC3850();
  v15 = OUTLINED_FUNCTION_1_75();
  v16(v15);
  v17 = v35;
  v18 = v36;
  __src[0] = v10;
  __src[1] = v12;
  __src[2] = v21;
  __src[3] = v23;
  LOWORD(__src[4]) = 257;
  __src[5] = v20;
  __src[6] = v22;
  OUTLINED_FUNCTION_15_17();
  __src[7] = v5;
  __src[8] = v7;
  LOBYTE(__src[9]) = 4;
  __src[10] = v35;
  __src[11] = v36;
  sub_220E31B58(__src, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v25[0] = v10;
  v25[1] = v12;
  v25[2] = v21;
  v25[3] = v23;
  v26 = v37;
  v27 = 1;
  v28 = v20;
  v29 = v22;
  v30 = v5;
  v31 = v7;
  v32 = 4;
  v33 = v17;
  v34 = v18;
  sub_220E31784(v25);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_220FBD044(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0418);
  OUTLINED_FUNCTION_6();
  v5 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220FBE090();
  OUTLINED_FUNCTION_16_18();
  sub_220FC3AB0();
  v11[15] = 0;
  OUTLINED_FUNCTION_10_32();
  sub_220FC3880();
  if (!v1)
  {
    v11[14] = 1;
    OUTLINED_FUNCTION_10_32();
    sub_220FC38B0();
    v11[13] = 2;
    sub_220FC38C0();
    v11[12] = 3;
    OUTLINED_FUNCTION_10_32();
    sub_220FC3890();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_220FBD1D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0408);
  OUTLINED_FUNCTION_6();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220FBE090();
  sub_220FC3AA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  OUTLINED_FUNCTION_11_24();
  v12 = sub_220FC37E0();
  v26 = v13;
  v29 = 1;
  OUTLINED_FUNCTION_11_24();
  v24 = sub_220FC3820();
  v25 = v14;
  v28 = 2;
  sub_220FC3830();
  v16 = v15;
  v27 = 3;
  OUTLINED_FUNCTION_11_24();
  v17 = sub_220FC37F0();
  v18 = v11;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v26;
  *a2 = v12;
  *(a2 + 8) = v22;
  v23 = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v23;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  return result;
}

uint64_t sub_220FBD440()
{
  sub_220FC3A40();
  sub_220FBC42C(v1);
  return sub_220FC3A90();
}

uint64_t sub_220FBD49C()
{
  sub_220FC3A40();
  sub_220FBC684();
  return sub_220FC3A90();
}

void *sub_220FBD5A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_220FBCA7C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

double sub_220FBD6B4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220FBD1D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_220FBD7CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3E448();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_220FBD818@<X0>(void *a1@<X8>)
{
  result = sub_220F3DB34(v4);
  if (!v1)
  {
    return memcpy(a1, v4, 0x60uLL);
  }

  return result;
}

uint64_t sub_220FBD8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3DE90();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

double sub_220FBD900@<D0>(uint64_t a1@<X8>)
{
  sub_220F3E2B0(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_220FBD998()
{
  result = qword_27CFA0360;
  if (!qword_27CFA0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0360);
  }

  return result;
}

unint64_t sub_220FBD9F0()
{
  result = qword_27CFA0368;
  if (!qword_27CFA0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0368);
  }

  return result;
}

unint64_t sub_220FBDA48()
{
  result = qword_27CFA0370;
  if (!qword_27CFA0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0370);
  }

  return result;
}

unint64_t sub_220FBDAA0()
{
  result = qword_27CFA0378;
  if (!qword_27CFA0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0378);
  }

  return result;
}

uint64_t sub_220FBDAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D9CFA0](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 5))
      {
        sub_220FC3A60();

        sub_220FC27D0();
      }

      else
      {
        sub_220FC3A60();
      }

      sub_220FC27D0();
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x223D9CFD0](*&v9);
      if (v8)
      {
        sub_220FC3A60();
      }

      else
      {
        sub_220FC3A60();
        if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x223D9CFD0](v10);
      }

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_220FBDC10()
{
  result = qword_27CFA0380;
  if (!qword_27CFA0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0380);
  }

  return result;
}

unint64_t sub_220FBDC64()
{
  result = qword_27CFA0390;
  if (!qword_27CFA0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0390);
  }

  return result;
}

unint64_t sub_220FBDCB8()
{
  result = qword_27CFA0398;
  if (!qword_27CFA0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0398);
  }

  return result;
}

unint64_t sub_220FBDD0C()
{
  result = qword_27CFA03A0;
  if (!qword_27CFA03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03A0);
  }

  return result;
}

unint64_t sub_220FBDD60()
{
  result = qword_27CFA03B0;
  if (!qword_27CFA03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03B0);
  }

  return result;
}

unint64_t sub_220FBDDB4()
{
  result = qword_27CFA03B8;
  if (!qword_27CFA03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03B8);
  }

  return result;
}

unint64_t sub_220FBDE08()
{
  result = qword_27CFA03D0;
  if (!qword_27CFA03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03D0);
  }

  return result;
}

unint64_t sub_220FBDE5C()
{
  result = qword_27CFA03D8;
  if (!qword_27CFA03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03D8);
  }

  return result;
}

uint64_t sub_220FBDEB0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220FBDF28()
{
  result = qword_27CFA03E8;
  if (!qword_27CFA03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03E8);
  }

  return result;
}

unint64_t sub_220FBDF7C()
{
  result = qword_27CFA03F0;
  if (!qword_27CFA03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA03F0);
  }

  return result;
}

uint64_t sub_220FBDFD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F1D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220FBE03C()
{
  result = qword_27CFA0400;
  if (!qword_27CFA0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0400);
  }

  return result;
}

unint64_t sub_220FBE090()
{
  result = qword_27CFA0410;
  if (!qword_27CFA0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0410);
  }

  return result;
}

unint64_t sub_220FBE0E4()
{
  result = qword_27CFA0420;
  if (!qword_27CFA0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0420);
  }

  return result;
}

unint64_t sub_220FBE138()
{
  result = qword_27CFA0438;
  if (!qword_27CFA0438)
  {
    sub_220FBFF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0438);
  }

  return result;
}

unint64_t sub_220FBE190()
{
  result = qword_27CF9D0A0;
  if (!qword_27CF9D0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9D0A0);
  }

  return result;
}

uint64_t sub_220FBE1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220FBE244()
{
  result = qword_27CFA0440;
  if (!qword_27CFA0440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFA0428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0440);
  }

  return result;
}

unint64_t sub_220FBE2A8()
{
  result = qword_27CFA0448;
  if (!qword_27CFA0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0448);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapScale.Point.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapScale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_220FBE4C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_220FBE598(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_220FBE674()
{
  result = qword_27CFA0450;
  if (!qword_27CFA0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0450);
  }

  return result;
}

unint64_t sub_220FBE6CC()
{
  result = qword_27CFA0458;
  if (!qword_27CFA0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0458);
  }

  return result;
}

unint64_t sub_220FBE724()
{
  result = qword_27CFA0460;
  if (!qword_27CFA0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0460);
  }

  return result;
}

unint64_t sub_220FBE77C()
{
  result = qword_27CFA0468;
  if (!qword_27CFA0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0468);
  }

  return result;
}

unint64_t sub_220FBE7D4()
{
  result = qword_27CFA0470;
  if (!qword_27CFA0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0470);
  }

  return result;
}

unint64_t sub_220FBE82C()
{
  result = qword_27CFA0478;
  if (!qword_27CFA0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0478);
  }

  return result;
}

unint64_t sub_220FBE884()
{
  result = qword_27CFA0480;
  if (!qword_27CFA0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0480);
  }

  return result;
}

uint64_t sub_220FBE90C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[8])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220FBE958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_220FBE9B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_220FBEA88(char a1)
{
  if (a1)
  {
    return 0x64656E696F6ALL;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_220FBEAB8(char a1)
{
  if (a1)
  {
    return 1953722224;
  }

  else
  {
    return 6648432;
  }
}

uint64_t sub_220FBEB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220FBEB3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FBEA88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220FBEC3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220FBEC74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FBEAB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_220FBED54()
{
  result = qword_27CFA0488;
  if (!qword_27CFA0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0488);
  }

  return result;
}

unint64_t sub_220FBEDAC()
{
  result = qword_27CFA0490;
  if (!qword_27CFA0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0490);
  }

  return result;
}

unint64_t sub_220FBEE00()
{
  result = qword_27CFA0498;
  if (!qword_27CFA0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA0498);
  }

  return result;
}

unint64_t sub_220FBEE54()
{
  result = qword_27CFA04A0;
  if (!qword_27CFA04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFA04A0);
  }

  return result;
}

uint64_t sub_220FBEEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_2();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  sub_220EDC548(v1 + v17, v16);
  sub_220FBF94C(v16, v13, type metadata accessor for WeatherMapAnnotatedLocationData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FBF94C(v13, v8, type metadata accessor for WeatherMapAnnotatedLocation);
    v18 = *(v3 + 20);
    v19 = sub_220FC0760();
    OUTLINED_FUNCTION_2();
    (*(v20 + 16))(a1, v8 + v18, v19);
    sub_220F063C4(v8, type metadata accessor for WeatherMapAnnotatedLocation);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v19);
  }

  else
  {
    v22 = sub_220FC0760();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v22);
    OUTLINED_FUNCTION_0_97();
    return sub_220F063C4(v13, v23);
  }
}

uint64_t sub_220FBF098()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_6_34();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  sub_220EDC548(v0 + v10, v9);
  sub_220F05E6C(v1);
  OUTLINED_FUNCTION_0_97();
  sub_220F063C4(v9, v11);
  v12 = sub_220FC1020();
  v13 = OUTLINED_FUNCTION_4_49();
  v14(v13);
  return v12;
}

uint64_t sub_220FBF1BC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v33[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33[-v15];
  v17 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  sub_220FBF9AC(a1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_220E41754(v16);
    v25 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    OUTLINED_FUNCTION_5_1();
    sub_220EDC548(v2 + v25, v7);
    sub_220F05E6C(v11);
    sub_220E41754(a1);
    OUTLINED_FUNCTION_0_97();
    sub_220F063C4(v7, v26);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v27 = v2 + v25;
  }

  else
  {
    v28 = *(v19 + 32);
    v28(v24, v16, v17);
    v29 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    OUTLINED_FUNCTION_5_1();
    sub_220EDC548(v2 + v29, v7);
    sub_220F05E6C(v11);
    sub_220E41754(a1);
    OUTLINED_FUNCTION_0_97();
    sub_220F063C4(v7, v30);
    v31 = type metadata accessor for WeatherMapAnnotatedLocation(0);
    v28(&v11[*(v31 + 20)], v24, v17);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v27 = v2 + v29;
  }

  sub_220FBFA1C(v11, v27);
  return swift_endAccess();
}

uint64_t sub_220FBF4D8()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_6_34();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  sub_220EDC548(v0 + v10, v9);
  sub_220F05E6C(v1);
  OUTLINED_FUNCTION_0_97();
  sub_220F063C4(v9, v11);
  v12 = sub_220FC1040();
  v13 = OUTLINED_FUNCTION_4_49();
  v14(v13);
  return v12;
}

double sub_220FBF640()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_6_34();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  sub_220EDC548(v0 + v10, v9);
  sub_220F05E6C(v1);
  OUTLINED_FUNCTION_0_97();
  sub_220F063C4(v9, v11);
  sub_220FC0FE0();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_4_49();
  v15(v14);
  return v13;
}

id sub_220FBF76C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = *a2;
  sub_220EDC548(a1, &v2[OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation]);
  v2[OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_overlayKind] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  OUTLINED_FUNCTION_0_97();
  sub_220F063C4(a1, v7);
  return v6;
}

uint64_t type metadata accessor for WeatherMapAnnotation()
{
  result = qword_2812C9F78;
  if (!qword_2812C9F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220FBF8B4()
{
  result = type metadata accessor for WeatherMapAnnotatedLocationData(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220FBF94C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220FBF9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FBFA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_34()
{

  return type metadata accessor for WeatherMapAnnotatedLocationData(0);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectIntersection(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x282123698](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

MKMapRect MKMapRectOffset(MKMapRect rect, double dx, double dy)
{
  MEMORY[0x2821236B8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}