uint64_t sub_267067200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267067264(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26706730C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267067354()
{
  result = qword_2800F37E8;
  if (!qword_2800F37E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37E8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMusicTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v3 = sub_26738113C();
  v120 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v109 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v13 = *MEMORY[0x277D3E508];
  v121 = *(v4 + 104);
  v116 = v4 + 104;
  v115 = v13;
  v121(v7, v13, v3);
  v123[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v118 = v14;
  v16(v11, 0, 1, v14);
  v122 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6144746E65696C63, 0xEF6B656557664F79);
  v18(v123, 0);
  v114 = "rawRequestDeviceCategory";
  v117 = v7;
  v19 = v7;
  v21 = v120;
  v20 = v121;
  v121(v19, v13, v120);
  v123[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v114 | 0x8000000000000000);
  v22(v123, 0);
  v112 = "ningIndependentSignals";
  LODWORD(v114) = *MEMORY[0x277D3E4E8];
  v23 = v114;
  v20(v117, v114, v21);
  v123[0] = 1;
  sub_26738114C();
  v24 = v118;
  v16(v11, 0, 1, v118);
  v119 = v17;
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v112 | 0x8000000000000000);
  v25(v123, 0);
  v112 = "isMediaAlbumPresent";
  v26 = v117;
  v27 = v21;
  v28 = v121;
  v121(v117, v23, v27);
  v123[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v24);
  v29 = v16;
  v113 = v16;
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v112 | 0x8000000000000000);
  v30(v123, 0);
  v112 = "isMediaArtistPresent";
  v31 = v114;
  v32 = v120;
  v28(v26, v114, v120);
  v123[0] = 1;
  sub_26738114C();
  v33 = v24;
  v29(v11, 0, 1, v24);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v112 | 0x8000000000000000);
  v34(v123, 0);
  v112 = "isMediaGenrePresent";
  v35 = v117;
  v36 = v121;
  v121(v117, v31, v32);
  v123[0] = 1;
  sub_26738114C();
  v37 = v113;
  v113(v11, 0, 1, v33);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v112 | 0x8000000000000000);
  v38(v123, 0);
  v112 = "isMediaMoodPresent";
  v39 = v114;
  v40 = v120;
  v36(v35, v114, v120);
  v123[0] = 1;
  sub_26738114C();
  v41 = v118;
  v37(v11, 0, 1, v118);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v112 | 0x8000000000000000);
  v42(v123, 0);
  v112 = "isMediaNamePresent";
  v36(v117, v39, v40);
  v123[0] = 1;
  sub_26738114C();
  v43 = v41;
  v37(v11, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v112 | 0x8000000000000000);
  v44(v123, 0);
  v112 = "isMediaReleaseDatePresent";
  v45 = v117;
  v36(v117, v115, v120);
  v123[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v41);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v112 | 0x8000000000000000);
  v46(v123, 0);
  LODWORD(v112) = *MEMORY[0x277D3E510];
  v47 = v121;
  (v121)(v45);
  v123[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v41);
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0x75676E614C776172, 0xEB00000000656761);
  v48(v123, 0);
  v49 = v120;
  v50 = v47;
  v47(v45, v112, v120);
  v123[0] = 1;
  sub_26738114C();
  v51 = v113;
  v113(v11, 0, 1, v43);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C61636F4C776172, 0xE900000000000065);
  v52(v123, 0);
  v50(v45, v112, v49);
  v53 = v50;
  v123[0] = 1;
  sub_26738114C();
  v51(v11, 0, 1, v43);
  v54 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F69676552776172, 0xE90000000000006ELL);
  v54(v123, 0);
  v110 = "rawClientHourOfDay";
  v55 = v114;
  v50(v45, v114, v49);
  v123[0] = 1;
  sub_26738114C();
  v56 = v118;
  v51(v11, 0, 1, v118);
  v57 = sub_2673811AC();
  v112 = 0xD000000000000010;
  sub_266EC637C(v11, 0xD000000000000010, v110 | 0x8000000000000000);
  v57(v123, 0);
  v110 = "nowPlayingLastBundleRecencyS";
  v58 = v55;
  v59 = v55;
  v60 = v120;
  v53(v45, v58, v120);
  v123[0] = 1;
  sub_26738114C();
  v61 = v113;
  v113(v11, 0, 1, v56);
  v62 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v110 | 0x8000000000000000);
  v62(v123, 0);
  v63 = v117;
  v64 = v59;
  v65 = v60;
  v66 = v121;
  v121(v117, v64, v60);
  v123[0] = 1;
  sub_26738114C();
  v61(v11, 0, 1, v56);
  v67 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E65696C437369, 0xEF74756F6B726F57);
  v67(v123, 0);
  v68 = v115;
  v66(v63, v115, v65);
  v123[0] = 1;
  sub_26738114C();
  v69 = v61;
  v61(v11, 0, 1, v56);
  v70 = sub_2673811AC();
  sub_266EC637C(v11, 0x707954616964656DLL, 0xE900000000000065);
  v70(v123, 0);
  v72 = v120;
  v71 = v121;
  v121(v63, v68, v120);
  v123[0] = 1;
  sub_26738114C();
  v73 = v69;
  v69(v11, 0, 1, v118);
  v74 = sub_2673811AC();
  sub_266EC637C(v11, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v74(v123, 0);
  v75 = v117;
  v71(v117, v114, v72);
  v123[0] = 1;
  sub_26738114C();
  v76 = v118;
  v73(v11, 0, 1, v118);
  v77 = sub_2673811AC();
  sub_266EC637C(v11, 0x656E657269507369, 0xEF74736575716552);
  v77(v123, 0);
  v110 = "isClientNavigating";
  v78 = v120;
  v79 = v121;
  v121(v75, *MEMORY[0x277D3E518], v120);
  v123[0] = 1;
  sub_26738114C();
  v73(v11, 0, 1, v76);
  v80 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v110 | 0x8000000000000000);
  v80(v123, 0);
  v110 = "foregroundBundleRecencyS";
  v81 = v115;
  v79(v75, v115, v78);
  v123[0] = 1;
  sub_26738114C();
  v82 = v118;
  v73(v11, 0, 1, v118);
  v83 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v110 | 0x8000000000000000);
  v83(v123, 0);
  v110 = "isClientDaylight";
  v85 = v120;
  v84 = v121;
  v121(v75, v81, v120);
  v123[0] = 1;
  sub_26738114C();
  v73(v11, 0, 1, v82);
  v86 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v110 | 0x8000000000000000);
  v86(v123, 0);
  v110 = "sirikitResponseCode";
  v87 = v117;
  v84(v117, v115, v85);
  v123[0] = 1;
  sub_26738114C();
  v73(v11, 0, 1, v82);
  v88 = sub_2673811AC();
  sub_266EC637C(v11, v112, v110 | 0x8000000000000000);
  v88(v123, 0);
  v84(v87, *MEMORY[0x277D3E538], v85);
  v123[0] = 1;
  sub_26738114C();
  v89 = v118;
  v73(v11, 0, 1, v118);
  v90 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v90(v123, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267068DD0(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v73(v11, 0, 1, v89);
  v91 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974756C6F736572, 0xEE00657079546E6FLL);
  v91(v123, 0);
  v111 = "mediaParsecCategory";
  v92 = v115;
  v93 = v120;
  v94 = v121;
  v121(v87, v115, v120);
  v123[0] = 1;
  sub_26738114C();
  v73(v11, 0, 1, v89);
  v95 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v111 | 0x8000000000000000);
  v95(v123, 0);
  v111 = "rawNowPlayingState";
  v96 = v93;
  v94(v87, v92, v93);
  v123[0] = 1;
  sub_26738114C();
  v97 = v118;
  v73(v11, 0, 1, v118);
  v98 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v111 | 0x8000000000000000);
  v98(v123, 0);
  v94(v87, v114, v96);
  v123[0] = 1;
  sub_26738114C();
  v99 = v97;
  v100 = v97;
  v101 = v113;
  v113(v11, 0, 1, v99);
  v102 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E65746E6F437369, 0xED00006565724674);
  v102(v123, 0);
  v111 = "commonForegroundAppRecency";
  v103 = v96;
  v104 = v96;
  v105 = v121;
  v121(v87, v114, v104);
  v123[0] = 1;
  sub_26738114C();
  v101(v11, 0, 1, v100);
  v106 = sub_2673811AC();
  sub_266EC637C(v11, v112, v111 | 0x8000000000000000);
  v106(v123, 0);
  v105(v87, v115, v103);
  v123[0] = 1;
  sub_26738114C();
  v101(v11, 0, 1, v118);
  v107 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, 0x800000026744D810);
  return v107(v123, 0);
}

uint64_t sub_267068CC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267068D28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267068DD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267068E18()
{
  result = qword_2800F37D8;
  if (!qword_2800F37D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37D8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F37F8, 0x277D58300);
  sub_266ECAF2C(&qword_2800F3800, &qword_2800F37F8, 0x277D58300);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000003ALL, 0x800000026744D880);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3808, 0x277D582F8);
  sub_266ECAF2C(&qword_2800F3810, &qword_2800F3808, 0x277D582F8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000038, 0x800000026744D8C0);
  return v7(v9, 0);
}

uint64_t sub_26706913C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670691A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  return v5(v7, 0);
}

uint64_t sub_267069424()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  return v5(v7, 0);
}

uint64_t sub_2670695CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267069630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3590, 0x277D58218);
  sub_266ECAF2C(&qword_2800F3588, &qword_2800F3590, 0x277D58218);
  sub_26738120C();
  v26 = sub_26738116C();
  v10 = *(v26 - 8);
  v11 = *(v10 + 56);
  v27 = v10 + 56;
  v11(v9, 0, 1, v26);
  v25 = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026744D9C0);
  v12(v30, 0);
  v23 = "commonIndependent";
  v13 = *MEMORY[0x277D3E4E8];
  v14 = v29;
  v28 = *(v28 + 104);
  v24 = v13;
  (v28)(v5, v13, v29);
  v30[0] = 1;
  sub_26738114C();
  v15 = v26;
  v11(v9, 0, 1, v26);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v23 | 0x8000000000000000);
  v16(v30, 0);
  v23 = "isNotebookTitlePresent";
  v17 = v14;
  v18 = v28;
  (v28)(v5, v13, v17);
  v30[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v23 | 0x8000000000000000);
  v19(v30, 0);
  v18(v5, v24, v29);
  v30[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v15);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026744DA20);
  return v20(v30, 0);
}

uint64_t sub_267069BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267069C18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEOntologySource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026744DA80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026744DAA0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026744DAD0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026744DB00, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026744DB30, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267069FB4(uint64_t a1)
{
  v2 = sub_26706A0B8(&qword_2800F3818);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706A01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706A0B8(&qword_2800F3818);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706A0B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEOntologySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_26738113C();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v62);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v66 = a1;
  sub_26738119C();
  v60 = *MEMORY[0x277D3E510];
  v10 = *(v2 + 104);
  v61 = v2 + 104;
  v65 = v10;
  v10(v5);
  v67[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v64 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6563696F6863, 0xE600000000000000);
  v15(v67, 0);
  v59 = "ChoiceDependentSignals";
  LODWORD(v58) = *MEMORY[0x277D3E508];
  v16 = v58;
  v17 = v62;
  (v65)(v5, v58, v62);
  v67[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = v13;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v59 | 0x8000000000000000);
  v19(v67, 0);
  v59 = "isUserSelectedChoice";
  v56 = v5;
  v20 = v17;
  v21 = v65;
  (v65)(v5, v16, v20);
  v67[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v59 | 0x8000000000000000);
  v22(v67, 0);
  LODWORD(v59) = *MEMORY[0x277D3E500];
  v23 = v56;
  v21(v56);
  v67[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v11);
  v24 = v18;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026744DC00);
  v25(v67, 0);
  v26 = v23;
  v27 = v58;
  v28 = v62;
  v29 = v65;
  (v65)(v26, v58, v62);
  v67[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x5379636E65636572, 0xEE0073646E6F6365);
  v30(v67, 0);
  v31 = v56;
  v29(v56, v27, v28);
  v32 = v29;
  v67[0] = 1;
  sub_26738114C();
  v63 = v11;
  v24(v9, 0, 1, v11);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x5279636E65636572, 0xEB000000006B6E61);
  v33(v67, 0);
  v55 = "frequencyPercentage";
  v34 = v62;
  v32(v31, v58, v62);
  v67[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v11);
  v57 = v24;
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v55 | 0x8000000000000000);
  v35(v67, 0);
  v58 = "lastContiguousCount";
  v36 = v59;
  v37 = v65;
  (v65)(v31, v59, v34);
  v67[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v63);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v58 | 0x8000000000000000);
  v38(v67, 0);
  v58 = "locationAffinity300Meters";
  v39 = v37;
  v37(v31, v36, v34);
  v67[0] = 1;
  sub_26738114C();
  v40 = v63;
  v41 = v57;
  v57(v9, 0, 1, v63);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v58 | 0x8000000000000000);
  v42(v67, 0);
  v43 = v34;
  v39(v31, v59, v34);
  v67[0] = 1;
  sub_26738114C();
  v44 = v41;
  v41(v9, 0, 1, v40);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026744DC80);
  v45(v67, 0);
  v59 = "locationAffinity156Kilometers";
  v46 = v60;
  v47 = v65;
  (v65)(v31, v60, v43);
  v67[0] = 1;
  sub_26738114C();
  v44(v9, 0, 1, v63);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v59 | 0x8000000000000000);
  v48(v67, 0);
  v59 = "locationFrequencyCount300Meters";
  v49 = v62;
  v47(v31, v46, v62);
  v67[0] = 1;
  sub_26738114C();
  v50 = v63;
  v51 = v57;
  v57(v9, 0, 1, v63);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v59 | 0x8000000000000000);
  v52(v67, 0);
  (v65)(v31, v60, v49);
  v67[0] = 1;
  sub_26738114C();
  v51(v9, 0, 1, v50);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x800000026744DCF0);
  return v53(v67, 0);
}

uint64_t sub_26706AD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706ADA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706AE04()
{
  result = qword_2800F3820;
  if (!qword_2800F3820)
  {
    sub_26706AE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3820);
  }

  return result;
}

unint64_t sub_26706AE5C()
{
  result = qword_2800F3828;
  if (!qword_2800F3828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3828);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v3 = sub_26738113C();
  v93 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v87 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v98 = *(v4 + 104);
  v98(v7, v12, v3);
  v99[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v91 = v13;
  v15(v11, 0, 1, v13);
  v92 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x65736163657375, 0xE700000000000000);
  v17(v99, 0);
  v97 = *MEMORY[0x277D3E508];
  v18 = v93;
  v19 = v98;
  (v98)(v7);
  v99[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v95 = v15;
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x43736563696F6863, 0xEC000000746E756FLL);
  v20(v99, 0);
  v21 = *MEMORY[0x277D3E510];
  v96 = v4 + 104;
  v19(v7, v21, v18);
  v99[0] = 1;
  sub_26738114C();
  v22 = v91;
  v15(v11, 0, 1, v91);
  v90 = a2;
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D617473656D6974, 0xEC00000063655370);
  v23(v99, 0);
  v24 = v97;
  v25 = v93;
  v98(v7, v97, v93);
  v99[0] = 1;
  v26 = v7;
  sub_26738114C();
  v27 = v95;
  v95(v11, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x75676E614C776172, 0xEB00000000656761);
  v28(v99, 0);
  v94 = v26;
  v29 = v26;
  v30 = v25;
  v31 = v25;
  v32 = v98;
  v98(v29, v24, v31);
  v99[0] = 1;
  sub_26738114C();
  v27(v11, 0, 1, v22);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C61636F4C776172, 0xE900000000000065);
  v33(v99, 0);
  v88 = "IndependentSignals";
  v34 = v97;
  v32(v94, v97, v30);
  v99[0] = 1;
  sub_26738114C();
  v35 = v91;
  v27(v11, 0, 1, v91);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v88 | 0x8000000000000000);
  v36(v99, 0);
  v37 = v94;
  v38 = v34;
  v39 = v93;
  v32(v94, v38, v93);
  v99[0] = 1;
  sub_26738114C();
  v40 = v35;
  v41 = v95;
  v95(v11, 0, 1, v35);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E756F43776172, 0xEA00000000007972);
  v42(v99, 0);
  v88 = "rawStateOrProvince";
  v43 = v97;
  v44 = v39;
  v45 = v39;
  v46 = v98;
  v98(v37, v97, v45);
  v99[0] = 1;
  sub_26738114C();
  v41(v11, 0, 1, v40);
  v47 = v41;
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v88 | 0x8000000000000000);
  v48(v99, 0);
  v88 = "EntityResolutionCommonSignals";
  v49 = v94;
  v46(v94, v43, v44);
  v99[0] = 1;
  sub_26738114C();
  v50 = v91;
  v47(v11, 0, 1, v91);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v88 | 0x8000000000000000);
  v51(v99, 0);
  v88 = "calendarHourOfDay";
  v52 = v97;
  v53 = v44;
  v54 = v98;
  v98(v49, v97, v53);
  v99[0] = 1;
  sub_26738114C();
  v55 = v50;
  v56 = v95;
  v95(v11, 0, 1, v55);
  v57 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v88 | 0x8000000000000000);
  v57(v99, 0);
  v88 = "calendarDayOfWeek";
  v59 = v93;
  v58 = v94;
  v54(v94, v52, v93);
  v99[0] = 1;
  sub_26738114C();
  v60 = v91;
  v56(v11, 0, 1, v91);
  v61 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v88 | 0x8000000000000000);
  v61(v99, 0);
  v88 = "calendarWeekOfMonth";
  v62 = v52;
  v63 = v59;
  v64 = v98;
  v98(v58, v62, v59);
  v99[0] = 1;
  sub_26738114C();
  v65 = v95;
  v95(v11, 0, 1, v60);
  v66 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v88 | 0x8000000000000000);
  v66(v99, 0);
  v87 = "rawClientHourOfDay";
  v67 = v94;
  v68 = v97;
  v64(v94, v97, v59);
  v99[0] = 1;
  sub_26738114C();
  v65(v11, 0, 1, v60);
  v69 = sub_2673811AC();
  v88 = 0xD000000000000010;
  sub_266EC637C(v11, 0xD000000000000010, v87 | 0x8000000000000000);
  v69(v99, 0);
  v87 = "calendarMonthOfYear";
  v70 = v98;
  v98(v67, v68, v63);
  v99[0] = 1;
  sub_26738114C();
  v71 = v95;
  v95(v11, 0, 1, v60);
  v72 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v87 | 0x8000000000000000);
  v72(v99, 0);
  v87 = "isDeviceLockStatus";
  v73 = v94;
  v74 = v93;
  v70(v94, v68, v93);
  v99[0] = 1;
  sub_26738114C();
  v71(v11, 0, 1, v60);
  v75 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v87 | 0x8000000000000000);
  v75(v99, 0);
  v87 = "nowPlayingLastBundleRecencyS";
  v76 = v97;
  v77 = v98;
  v98(v73, v97, v74);
  v99[0] = 1;
  sub_26738114C();
  v95(v11, 0, 1, v60);
  v78 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v87 | 0x8000000000000000);
  v78(v99, 0);
  v79 = v94;
  v77(v94, v76, v74);
  v99[0] = 1;
  sub_26738114C();
  v80 = v95;
  v95(v11, 0, 1, v60);
  v81 = sub_2673811AC();
  sub_266EC637C(v11, 0x616C507261437369, 0xE900000000000079);
  v81(v99, 0);
  v98(v79, v97, v93);
  v99[0] = 1;
  sub_26738114C();
  v80(v11, 0, 1, v60);
  v82 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026744DE30);
  v82(v99, 0);
  type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(0);
  sub_26706C228();
  sub_26738120C();
  v80(v11, 0, 1, v60);
  v83 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026744DE50);
  v83(v99, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v80(v11, 0, 1, v60);
  v84 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v84(v99, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v80(v11, 0, 1, v60);
  v85 = sub_2673811AC();
  sub_266EC637C(v11, v88, 0x800000026742D000);
  return v85(v99, 0);
}

uint64_t sub_26706C164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706C1C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706C228()
{
  result = qword_2800F3768;
  if (!qword_2800F3768)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3768);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3838, 0x277D58310);
  sub_266ECAF2C(&qword_2800F3830, &qword_2800F3838, 0x277D58310);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xED0000736C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3828, 0x277D58308);
  sub_266ECAF2C(&qword_2800F3820, &qword_2800F3828, 0x277D58308);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026744DED0);
  return v7(v9, 0);
}

uint64_t sub_26706C5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706C604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v40 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v36 = "RetryContactInteractionContext";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v37 = v3 + 104;
  v32 = v12;
  v41[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v38 = *(v14 + 56);
  v15 = v14 + 56;
  v38(v10, 0, 1, v13);
  v39 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v36 | 0x8000000000000000);
  v16(v41, 0);
  v36 = "rSiriContactGivenName";
  v17 = v40;
  v12(v6, v11, v40);
  v41[0] = 1;
  sub_26738114C();
  v18 = v38;
  v38(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v36 | 0x8000000000000000);
  v19(v41, 0);
  v36 = "rSiriContactFamilyName";
  LODWORD(v34) = v11;
  v20 = v17;
  v21 = v32;
  v32(v6, v11, v20);
  v41[0] = 1;
  sub_26738114C();
  v18(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v36 | 0x8000000000000000);
  v22(v41, 0);
  v36 = "rSiriContactDisplayName";
  v23 = v40;
  v21(v6, v11, v40);
  v41[0] = 1;
  sub_26738114C();
  v35 = v13;
  v24 = v38;
  v38(v10, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v36 | 0x8000000000000000);
  v25(v41, 0);
  v36 = "isExactMatchPriorSiriContactId";
  v21(v6, v34, v23);
  v41[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v36 | 0x8000000000000000);
  v26(v41, 0);
  v34 = "isInteractionSuccess";
  LODWORD(v36) = *MEMORY[0x277D3E538];
  (v21)(v6);
  v41[0] = 1;
  sub_26738114C();
  v27 = v35;
  v24(v10, 0, 1, v35);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v34 | 0x8000000000000000);
  v28(v41, 0);
  v21(v6, v36, v40);
  v41[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026744E020);
  return v29(v41, 0);
}

uint64_t sub_26706CDFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706CE60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706CEC4()
{
  result = qword_2800F3740;
  if (!qword_2800F3740)
  {
    sub_26706CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3740);
  }

  return result;
}

unint64_t sub_26706CF1C()
{
  result = qword_2800F3738;
  if (!qword_2800F3738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3738);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPrivatizedHistoryStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x79636E65636572, 0xE700000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x636E657571657266, 0xEB00000000736569);
  return v16(v20, 0);
}

uint64_t sub_26706D290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706D2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706D358()
{
  result = qword_2800F3678;
  if (!qword_2800F3678)
  {
    sub_26706D3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3678);
  }

  return result;
}

unint64_t sub_26706D3B0()
{
  result = qword_2800F3670;
  if (!qword_2800F3670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3670);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEProjectIntent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026744E0D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026744E0F0, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026744E120, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744E150, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x800000026744E180, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000031, 0x800000026744E1C0, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x800000026744E200, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002DLL, 0x800000026744E230, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000034, 0x800000026744E260, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x800000026744E2A0, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000032, 0x800000026744E2D0, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ELL, 0x800000026744E310, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000032, 0x800000026744E350, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_26706DA84(uint64_t a1)
{
  v2 = sub_26706DB88(&qword_2800F3840);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706DAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706DB88(&qword_2800F3840);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706DB88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPromptContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEPromptTag(0);
  sub_26706E170();
  v23 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 6775156, 0xE300000000000000);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F3618, 0x277D58260);
  sub_266ECAF2C(&qword_2800F3610, &qword_2800F3618, 0x277D58260);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026744E3D0);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F3750, 0x277D582A8);
  sub_266ECAF2C(&qword_2800F3748, &qword_2800F3750, 0x277D582A8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026744E3F0);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  return v15(v27, 0);
}

uint64_t sub_26706E0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706E110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706E170()
{
  result = qword_2800F3848;
  if (!qword_2800F3848)
  {
    type metadata accessor for INFERENCESchemaINFERENCEPromptTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3848);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPromptTag.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026744E450, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026744E470, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744E490, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026744E4C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26706E494(uint64_t a1)
{
  v2 = sub_26706E598(&qword_2800F3850);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706E4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706E598(&qword_2800F3850);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706E598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEPromptTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v0);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v27 | 0x8000000000000000);
  v12(v34, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64497972657571, 0xE700000000000000);
  v13(v34, 0);
  type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType(0);
  sub_26706ED74(&qword_2800F3758, type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType);
  sub_26738121C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026744E540);
  v14(v34, 0);
  type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(0);
  sub_26706ED74(&qword_2800F3608, type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType);
  sub_26738121C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026744E560);
  v15(v34, 0);
  (*(v29 + 104))(v28, *MEMORY[0x277D3E530], v30);
  v34[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v16 = v31;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x800000026744E580);
  v17(v34, 0);
  sub_26738117C();
  v18 = sub_2673811BC();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266ECAD54(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266ECAD54(v23 > 1, v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v32 + 32))(v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v16, v33);
  return v18(v34, 0);
}

uint64_t sub_26706ECB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706ED14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26706ED74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static INFERENCESchemaINFERENCERequestMatchSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v67 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v68 = "isPartialNameMatch";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v12 = v3 + 104;
  v61 = v11;
  v69[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v66 = *(v14 + 56);
  v15 = v14 + 56;
  v66(v10, 0, 1, v13);
  v65 = a1;
  v16 = sub_2673811AC();
  v60 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, v68 | 0x8000000000000000);
  v16(v69, 0);
  v59 = "isSuggestedContact";
  LODWORD(v68) = *MEMORY[0x277D3E4E8];
  v17 = v67;
  (v11)(v6);
  v18 = v12;
  v69[0] = 1;
  sub_26738114C();
  v63 = v15;
  v64 = v13;
  v19 = v66;
  v66(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v59 | 0x8000000000000000);
  v20(v69, 0);
  v59 = "areAllQueryTokensInContact";
  v21 = v68;
  v22 = v17;
  v23 = v61;
  v61(v6, v68, v22);
  v62 = v18;
  v69[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v59 | 0x8000000000000000);
  v24(v69, 0);
  v59 = "allPrimaryNameTokensAreInQuery";
  v25 = v67;
  v23(v6, v21, v67);
  v69[0] = 1;
  sub_26738114C();
  v26 = v64;
  v19(v10, 0, 1, v64);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, v60, v59 | 0x8000000000000000);
  v27(v69, 0);
  v60 = "isGivenNameMatch";
  v28 = v68;
  v29 = v61;
  v61(v6, v68, v25);
  v69[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v60 | 0x8000000000000000);
  v30(v69, 0);
  v60 = "isMiddleNameMatch";
  v31 = v28;
  v32 = v67;
  v33 = v29;
  v29(v6, v31, v67);
  v69[0] = 1;
  sub_26738114C();
  v34 = v66;
  v66(v10, 0, 1, v26);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v60 | 0x8000000000000000);
  v35(v69, 0);
  v60 = "isFamilyNameMatch";
  v33(v6, v68, v32);
  v69[0] = 1;
  sub_26738114C();
  v34(v10, 0, 1, v26);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v60 | 0x8000000000000000);
  v36(v69, 0);
  v60 = "isMeCardRelation";
  v58 = v6;
  v37 = v6;
  v38 = v68;
  v39 = v67;
  v40 = v61;
  v61(v37, v68, v67);
  v69[0] = 1;
  sub_26738114C();
  v41 = v66;
  v66(v10, 0, 1, v64);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v60 | 0x8000000000000000);
  v42(v69, 0);
  v43 = v58;
  v40(v58, v38, v39);
  v69[0] = 1;
  sub_26738114C();
  v44 = v64;
  v41(v10, 0, 1, v64);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x616E6B63694E7369, 0xEF686374614D656DLL);
  v45(v69, 0);
  v60 = "isOrganizationNameMatch";
  v46 = v68;
  v40(v43, v68, v39);
  v69[0] = 1;
  sub_26738114C();
  v47 = v44;
  v48 = v66;
  v66(v10, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v60 | 0x8000000000000000);
  v49(v69, 0);
  v60 = "isNamePrefixMatch";
  v50 = v67;
  v40(v43, v46, v67);
  v69[0] = 1;
  sub_26738114C();
  v51 = v64;
  v48(v10, 0, 1, v64);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v60 | 0x8000000000000000);
  v52(v69, 0);
  v60 = "FERENCERequestMatchSignalSet";
  v40(v43, v68, v50);
  v69[0] = 1;
  sub_26738114C();
  v53 = v66;
  v66(v10, 0, 1, v51);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v60 | 0x8000000000000000);
  v54(v69, 0);
  v40(v43, v68, v67);
  v69[0] = 1;
  sub_26738114C();
  v53(v10, 0, 1, v51);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026744E610);
  return v55(v69, 0);
}

uint64_t sub_26706FA1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706FA80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706FAE4()
{
  result = qword_2800F3708;
  if (!qword_2800F3708)
  {
    sub_26706FB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3708);
  }

  return result;
}

unint64_t sub_26706FB3C()
{
  result = qword_2800F3700;
  if (!qword_2800F3700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3700);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionQueryInfoGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738113C();
  v25 = *(v23 - 8);
  v0 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v24 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v22 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v8 = v6;
  v7(v5, 0, 1);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, v22 | 0x8000000000000000);
  v9(v26, 0);
  sub_26738120C();
  (v7)(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64497972657571, 0xE700000000000000);
  v10(v26, 0);
  type metadata accessor for INFERENCESchemaINFERENCEResolutionState(0);
  sub_26707029C(&qword_2800F3720, type metadata accessor for INFERENCESchemaINFERENCEResolutionState);
  sub_26738120C();
  (v7)(v5, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6974756C6F736572, 0xEF65746174536E6FLL);
  v11(v26, 0);
  type metadata accessor for INFERENCESchemaINFERENCEForcePromptType(0);
  sub_26707029C(&qword_2800F37A8, type metadata accessor for INFERENCESchemaINFERENCEForcePromptType);
  sub_26738120C();
  v12 = v7;
  v21 = v7;
  (v7)(v5, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F72506563726F66, 0xEF6570795474706DLL);
  v13(v26, 0);
  v22 = "nQueryInfoGenerated";
  v14 = *MEMORY[0x277D3E530];
  v15 = v24;
  v25 = *(v25 + 104);
  v16 = v23;
  (v25)(v24, v14, v23);
  v26[0] = 1;
  sub_26738114C();
  v12(v5, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, v22 | 0x8000000000000000);
  v17(v26, 0);
  (v25)(v15, v14, v16);
  v26[0] = 1;
  sub_26738114C();
  v21(v5, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000025, 0x800000026744E6A0);
  return v18(v26, 0);
}

uint64_t sub_2670701D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707023C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26707029C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static INFERENCESchemaINFERENCEResolutionRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
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
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F3858, 0x277D58368);
  sub_266ECAF2C(&qword_2800F3860, &qword_2800F3858, 0x277D58368);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F3868, 0x277D58358);
  sub_266ECAF2C(&qword_2800F3870, &qword_2800F3868, 0x277D58358);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F3878, 0x277D58360);
  sub_266ECAF2C(&qword_2800F3880, &qword_2800F3878, 0x277D58360);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54(v19 > 1, v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  return v14(v26, 0);
}

uint64_t sub_267070904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267070968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267070C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267070CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267070D1C()
{
  result = qword_2800F3870;
  if (!qword_2800F3870)
  {
    sub_267070D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3870);
  }

  return result;
}

unint64_t sub_267070D74()
{
  result = qword_2800F3868;
  if (!qword_2800F3868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3868);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v10(v12, 0);
}

uint64_t sub_267071010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670710D8()
{
  result = qword_2800F3880;
  if (!qword_2800F3880)
  {
    sub_267071130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3880);
  }

  return result;
}

unint64_t sub_267071130()
{
  result = qword_2800F3878;
  if (!qword_2800F3878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3878);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESlotType(0);
  sub_2670714D4();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65707954746F6C73, 0xE800000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3890, 0x277D58370);
  sub_266ECAF2C(&qword_2800F3898, &qword_2800F3890, 0x277D58370);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265766C6F736572, 0xEE006769666E6F43);
  return v7(v9, 0);
}

uint64_t sub_267071410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670714D4()
{
  result = qword_2800F3888;
  if (!qword_2800F3888)
  {
    type metadata accessor for INFERENCESchemaINFERENCESlotType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3888);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744E810, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026744E840, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026744E870, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744E8A0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x800000026744E8D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267071864(uint64_t a1)
{
  v2 = sub_267071968(&qword_2800F38A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670718CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267071968(&qword_2800F38A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267071968(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolverConfig.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F36E0, 0x277D58298);
  sub_266ECAF2C(&qword_2800F36D8, &qword_2800F36E0, 0x277D58298);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x43746361746E6F63, 0xED00006769666E6FLL);
  v10(v19, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v0);
  return v11(v19, 0);
}

uint64_t sub_267071D24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071D88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCESearchProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026744E990, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026744E9B0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026744E9E0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026744EA10, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026744EA30, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267072120(uint64_t a1)
{
  v2 = sub_267072224(&qword_2800F38A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267072188(uint64_t a1, uint64_t a2)
{
  v4 = sub_267072224(&qword_2800F38A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267072224(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESearchProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESimpleTaskInfoGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v30 = sub_26738113C();
  v26 = *(v30 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v27 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v28 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026744B3C0);
  v12(v31, 0);
  type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(0);
  sub_267072980();
  sub_26738120C();
  v13 = v8;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x636375536B736174, 0xEF65707954737365);
  v14(v31, 0);
  v29 = *MEMORY[0x277D3E4E8];
  v15 = v25;
  v26 = *(v26 + 104);
  v16 = v30;
  (v26)(v25);
  v31[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x7365636375537369, 0xE900000000000073);
  v17(v31, 0);
  v18 = v16;
  v19 = v26;
  (v26)(v15, v29, v18);
  v31[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x7475636578457369, 0xEA00000000006465);
  v20(v31, 0);
  v19(v15, v29, v30);
  v31[0] = 1;
  sub_26738114C();
  v21 = v13;
  v10(v7, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026744EA90);
  v22(v31, 0);
  sub_266ECB294(0, &qword_2800F38B8, 0x277D58390);
  sub_266ECAF2C(&qword_2800F38C0, &qword_2800F38B8, 0x277D58390);
  sub_26738120C();
  v10(v7, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026744EAB0);
  return v23(v31, 0);
}

uint64_t sub_2670728BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267072920(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267072980()
{
  result = qword_2800F38B0;
  if (!qword_2800F38B0)
  {
    type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F38B0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESlotType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026744EB00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026744EB20, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026744EB40, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026744EB60, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026744EB80, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267072D18(uint64_t a1)
{
  v2 = sub_267072E1C(&qword_2800F38C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267072D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_267072E1C(&qword_2800F38C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267072E1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESlotType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000035, 0x800000026744EBF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004BLL, 0x800000026744EC30, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000044, 0x800000026744EC80, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004BLL, 0x800000026744ECD0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004DLL, 0x800000026744ED20, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000050, 0x800000026744ED70, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000057, 0x800000026744EDD0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000057, 0x800000026744EE30, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000058, 0x800000026744EE90, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000004ALL, 0x800000026744EEF0, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000004BLL, 0x800000026744EF40, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000043, 0x800000026744EF90, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000053, 0x800000026744EFE0, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_2670734DC(uint64_t a1)
{
  v2 = sub_2670735E0(&qword_2800F38D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267073544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670735E0(&qword_2800F38D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670735E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath(0);
  sub_2670739F0(&qword_2800F38D0, type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69747563657865, 0xED0000687461506ELL);
  v6(v9, 0);
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_2670739F0(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x497463656A6F7270, 0xED0000746E65746ELL);
  return v7(v9, 0);
}

uint64_t sub_2670738E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267073948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670739F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267073A38()
{
  result = qword_2800F3530;
  if (!qword_2800F3530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3530);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESpeechAlternativeRanks.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v34 = v11;
  v35[0] = 1;
  sub_26738114C();
  v31 = sub_26738116C();
  v12 = *(*(v31 - 8) + 56);
  v12(v10, 0, 1, v31);
  v28[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x726F7272457369, 0xE700000000000000);
  v13(v35, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v32;
  v11(v6, v14, v32);
  v35[0] = 1;
  sub_26738114C();
  v16 = v31;
  v12(v10, 0, 1, v31);
  v29 = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F6973726576, 0xE700000000000000);
  v17(v35, 0);
  v33 = v14;
  v18 = v15;
  v19 = v34;
  v34(v6, v14, v18);
  v30 = v3 + 104;
  v35[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D614E6E65766967, 0xED00006B6E615265);
  v20(v35, 0);
  v21 = v14;
  v22 = v32;
  v19(v6, v21, v32);
  v35[0] = 1;
  sub_26738114C();
  v23 = v29;
  v29(v10, 0, 1, v16);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x614E656C6464696DLL, 0xEE006B6E6152656DLL);
  v24(v35, 0);
  v34(v6, v33, v22);
  v35[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v16);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x614E796C696D6166, 0xEE006B6E6152656DLL);
  v25(v35, 0);
  v34(v6, v33, v22);
  v35[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v16);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D614E6C6C7566, 0xEC0000006B6E6152);
  return v26(v35, 0);
}

uint64_t sub_2670740D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267074138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707419C()
{
  result = qword_2800F36F8;
  if (!qword_2800F36F8)
  {
    sub_2670741F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F36F8);
  }

  return result;
}

unint64_t sub_2670741F4()
{
  result = qword_2800F36F0;
  if (!qword_2800F36F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F36F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCETaskSpecificInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F37C0, 0x277D582D0);
  sub_266ECAF2C(&qword_2800F37B8, &qword_2800F37C0, 0x277D582D0);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026744F120);
  v10(v19, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v0);
  return v11(v19, 0);
}

uint64_t sub_2670745AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267074610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCETaskSuccessType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744F180, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026744F1B0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026744F1E0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026744F210, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x800000026744F240, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670749AC(uint64_t a1)
{
  v2 = sub_267074AB0(&qword_2800F38E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267074A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_267074AB0(&qword_2800F38E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267074AB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCETrialEnrollment.makeTypeManifestAndEnsureFields(in:)()
{
  v25 = sub_26738113C();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = v0 + 104;
  v23 = *(v0 + 104);
  v10 = v8;
  v24 = v8;
  v23(v3);
  v22[2] = v9;
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v22[1] = v12 + 56;
  v13(v7, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  v14(v26, 0);
  v15 = v10;
  v16 = v25;
  v17 = v23;
  (v23)(v3, v15, v25);
  v26[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D7461657274, 0xEB00000000644974);
  v18(v26, 0);
  (v17)(v3, *MEMORY[0x277D3E510], v16);
  v26[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v19(v26, 0);
  (v17)(v3, v24, v25);
  v26[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974756F6C6C6F72, 0xE900000000000064);
  return v20(v26, 0);
}

uint64_t sub_267074FBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267075020(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267075084()
{
  result = qword_2800F3718;
  if (!qword_2800F3718)
  {
    sub_2670750DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3718);
  }

  return result;
}

unint64_t sub_2670750DC()
{
  result = qword_2800F3710;
  if (!qword_2800F3710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3710);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v206 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v194 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v205 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E508];
  v202 = *(v3 + 104);
  v203 = v3 + 104;
  v204 = v11;
  v202(v6, v11, v2);
  v208[0] = 1;
  sub_26738114C();
  v199 = sub_26738116C();
  v197 = *(v199 - 8);
  v12 = v197 + 56;
  v13 = *(v197 + 7);
  v13(v10, 0, 1, v199);
  v201 = v13;
  v14 = sub_2673811AC();
  v196 = 0xD000000000000014;
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026744F300);
  v14(v208, 0);
  v195 = "relativeAppUsage1Day";
  v15 = v11;
  v16 = v206;
  v17 = v202;
  v202(v6, v15, v206);
  v208[0] = 1;
  sub_26738114C();
  v18 = v199;
  v13(v10, 0, 1, v199);
  v198 = v12;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, v196, v195 | 0x8000000000000000);
  v19(v208, 0);
  v196 = "relativeAppUsage7Day";
  v17(v6, v204, v16);
  v20 = v6;
  v208[0] = 1;
  sub_26738114C();
  v21 = v201;
  v201(v10, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v196 | 0x8000000000000000);
  v22(v208, 0);
  v196 = "relativeAppUsage14Day";
  v23 = v204;
  v24 = v206;
  v25 = v202;
  v202(v20, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v18);
  v26 = sub_2673811AC();
  v195 = 0xD000000000000017;
  sub_266EC637C(v10, 0xD000000000000017, v196 | 0x8000000000000000);
  v26(v208, 0);
  v196 = "entityAbsoluteCount2Min";
  v27 = v23;
  v28 = v25;
  v25(v20, v27, v24);
  v208[0] = 1;
  sub_26738114C();
  v29 = v199;
  v201(v10, 0, 1, v199);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v196 | 0x8000000000000000);
  v30(v208, 0);
  v196 = "entityAbsoluteCount10Min";
  v31 = v204;
  v32 = v206;
  v28(v20, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v33 = v201;
  v201(v10, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v196 | 0x8000000000000000);
  v34(v208, 0);
  v196 = "entityAbsoluteCount1Hr";
  v35 = v32;
  v202(v20, v31, v32);
  v208[0] = 1;
  sub_26738114C();
  v36 = v199;
  v33(v10, 0, 1, v199);
  v37 = sub_2673811AC();
  v38 = v196 | 0x8000000000000000;
  v196 = 0xD000000000000016;
  sub_266EC637C(v10, 0xD000000000000016, v38);
  v37(v208, 0);
  v194 = "entityAbsoluteCount6Hr";
  v200 = v20;
  v39 = v20;
  v40 = v204;
  v41 = v35;
  v42 = v202;
  v202(v39, v204, v41);
  v208[0] = 1;
  sub_26738114C();
  v43 = v36;
  v44 = v36;
  v45 = v201;
  v201(v10, 0, 1, v44);
  v46 = sub_2673811AC();
  v47 = v195;
  sub_266EC637C(v10, v195, v194 | 0x8000000000000000);
  v46(v208, 0);
  v194 = "entityAbsoluteCount1Day";
  v48 = v200;
  v42(v200, v40, v206);
  v208[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v43);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, v47, v194 | 0x8000000000000000);
  v49(v208, 0);
  v42(v48, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v50 = v199;
  v201(v10, 0, 1, v199);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026744F420);
  v51(v208, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v207, 0xD000000000000018, 0x800000026744F420);
  if (!(*(v197 + 6))(v54, 1, v50))
  {
    sub_266ECB128(&unk_287887C20);
    sub_26738115C();
  }

  (v53)(v207, 0);
  v52(v208, 0);
  v202(v48, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v55 = v199;
  v56 = v201;
  v201(v10, 0, 1, v199);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026744F440);
  v57(v208, 0);
  v58 = v204;
  v59 = v206;
  v202(v48, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v55);
  v60 = v56;
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x6552797469746E65, 0xED000079636E6563);
  v61(v208, 0);
  v197 = "entityAbsoluteCount28Day";
  v62 = v202;
  v202(v200, v58, v59);
  v208[0] = 1;
  sub_26738114C();
  v63 = v199;
  v60(v10, 0, 1, v199);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v197 | 0x8000000000000000);
  v64(v208, 0);
  v197 = "NumberOfLibraryItems";
  v65 = v200;
  v62(v200, v58, v206);
  v208[0] = 1;
  sub_26738114C();
  v60(v10, 0, 1, v63);
  v66 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v197 | 0x8000000000000000);
  v66(v208, 0);
  v194 = "SubscriptionStatus";
  LODWORD(v197) = *MEMORY[0x277D3E4E8];
  v67 = v197;
  v68 = v206;
  v69 = v62;
  v62(v65, v197, v206);
  v208[0] = 1;
  sub_26738114C();
  v70 = v201;
  v201(v10, 0, 1, v63);
  v71 = sub_2673811AC();
  v195 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, v194 | 0x8000000000000000);
  v71(v208, 0);
  v194 = "isLastForegroundApp";
  v72 = v200;
  v69(v200, v67, v68);
  v208[0] = 1;
  sub_26738114C();
  v70(v10, 0, 1, v63);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, v195, v194 | 0x8000000000000000);
  v73(v208, 0);
  v195 = "isLastNowPlayingApp";
  v74 = v204;
  v75 = v206;
  v69(v72, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v70(v10, 0, 1, v63);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v195 | 0x8000000000000000);
  v76(v208, 0);
  v195 = "nowPlayingAbsoluteCount2Min";
  v77 = v200;
  v78 = v202;
  v202(v200, v74, v75);
  v208[0] = 1;
  sub_26738114C();
  v79 = v201;
  v201(v10, 0, 1, v63);
  v80 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v195 | 0x8000000000000000);
  v80(v208, 0);
  v195 = "nowPlayingAbsoluteCount10Min";
  v81 = v77;
  v82 = v204;
  v78(v81, v204, v75);
  v208[0] = 1;
  sub_26738114C();
  v79(v10, 0, 1, v63);
  v83 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v83(v208, 0);
  v195 = "nowPlayingAbsoluteCount1Hr";
  v84 = v200;
  v78(v200, v82, v206);
  v208[0] = 1;
  sub_26738114C();
  v79(v10, 0, 1, v63);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v85(v208, 0);
  v195 = "nowPlayingAbsoluteCount6Hr";
  v86 = v204;
  v87 = v206;
  v78(v84, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v88 = v199;
  v79(v10, 0, 1, v199);
  v89 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v195 | 0x8000000000000000);
  v89(v208, 0);
  v195 = "nowPlayingAbsoluteCount1Day";
  v90 = v200;
  v91 = v86;
  v92 = v87;
  v93 = v202;
  v202(v200, v91, v87);
  v208[0] = 1;
  sub_26738114C();
  v94 = v201;
  v201(v10, 0, 1, v88);
  v95 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v195 | 0x8000000000000000);
  v95(v208, 0);
  v195 = "nowPlayingAbsoluteCount7Day";
  v96 = v90;
  v97 = v204;
  v93(v96, v204, v92);
  v208[0] = 1;
  sub_26738114C();
  v94(v10, 0, 1, v88);
  v98 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v195 | 0x8000000000000000);
  v98(v208, 0);
  v195 = "nowPlayingAbsoluteCount14Day";
  v99 = v200;
  v100 = v206;
  v101 = v202;
  v202(v200, v97, v206);
  v208[0] = 1;
  sub_26738114C();
  v102 = v88;
  v103 = v201;
  v201(v10, 0, 1, v102);
  v104 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v195 | 0x8000000000000000);
  v104(v208, 0);
  v105 = v99;
  v106 = v197;
  v101(v105, v197, v100);
  v107 = v101;
  v208[0] = 1;
  sub_26738114C();
  v108 = v199;
  v103(v10, 0, 1, v199);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, 0x616C50776F4E7369, 0xEF707041676E6979);
  v109(v208, 0);
  v110 = v200;
  v111 = v206;
  v107(v200, v106, v206);
  v208[0] = 1;
  sub_26738114C();
  v103(v10, 0, 1, v108);
  v112 = sub_2673811AC();
  sub_266EC637C(v10, 0x7463656C65537369, 0xED00007070416465);
  v112(v208, 0);
  v195 = "nowPlayingAbsoluteCount28Day";
  v113 = v204;
  v114 = v202;
  v202(v110, v204, v111);
  v208[0] = 1;
  sub_26738114C();
  v115 = v199;
  v103(v10, 0, 1, v199);
  v116 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v195 | 0x8000000000000000);
  v116(v208, 0);
  v195 = "egroundAppStartInSec";
  v117 = v200;
  v118 = v206;
  v114(v200, v113, v206);
  v208[0] = 1;
  sub_26738114C();
  v119 = v201;
  v201(v10, 0, 1, v115);
  v120 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v195 | 0x8000000000000000);
  v120(v208, 0);
  v195 = "egroundAppEndInSec";
  v121 = v204;
  v122 = v118;
  v123 = v202;
  v202(v117, v204, v122);
  v208[0] = 1;
  sub_26738114C();
  v119(v10, 0, 1, v115);
  v124 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v195 | 0x8000000000000000);
  v124(v208, 0);
  v195 = "PlayingAppStartInSec";
  v123(v117, v121, v206);
  v208[0] = 1;
  sub_26738114C();
  v125 = v199;
  v119(v10, 0, 1, v199);
  v126 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v195 | 0x8000000000000000);
  v126(v208, 0);
  v195 = "PlayingAppEndInSec";
  v127 = v206;
  v123(v117, v121, v206);
  v208[0] = 1;
  sub_26738114C();
  v128 = v125;
  v129 = v125;
  v130 = v201;
  v201(v10, 0, 1, v128);
  v131 = sub_2673811AC();
  sub_266EC637C(v10, v196, v195 | 0x8000000000000000);
  v131(v208, 0);
  v196 = "spotlightRelativeCount";
  v132 = v202;
  v202(v117, *MEMORY[0x277D3E540], v127);
  v208[0] = 1;
  sub_26738114C();
  v130(v10, 0, 1, v129);
  v133 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v196 | 0x8000000000000000);
  v133(v208, 0);
  v132(v117, v197, v127);
  v208[0] = 1;
  sub_26738114C();
  v134 = v201;
  v201(v10, 0, 1, v129);
  v135 = sub_2673811AC();
  sub_266EC637C(v10, 0x726765726F467369, 0xEF707041646E756FLL);
  v135(v208, 0);
  v197 = "supportedMediaCategories";
  v136 = v204;
  v137 = v206;
  v138 = v202;
  v202(v117, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v139 = v199;
  v134(v10, 0, 1, v199);
  v140 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v197 | 0x8000000000000000);
  v140(v208, 0);
  v197 = "entityPartialSiriCount2Min";
  v141 = v137;
  v138(v200, v136, v137);
  v208[0] = 1;
  sub_26738114C();
  v142 = v139;
  v143 = v139;
  v144 = v201;
  v201(v10, 0, 1, v143);
  v145 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v197 | 0x8000000000000000);
  v145(v208, 0);
  v197 = "entityPartialSiriCount10Min";
  v146 = v200;
  v147 = v204;
  v148 = v141;
  v149 = v202;
  v202(v200, v204, v148);
  v208[0] = 1;
  sub_26738114C();
  v144(v10, 0, 1, v142);
  v150 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v197 | 0x8000000000000000);
  v150(v208, 0);
  v197 = "entityPartialSiriCount1Hr";
  v151 = v147;
  v152 = v206;
  v153 = v149;
  v149(v146, v147, v206);
  v208[0] = 1;
  sub_26738114C();
  v154 = v199;
  v155 = v201;
  v201(v10, 0, 1, v199);
  v156 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v197 | 0x8000000000000000);
  v156(v208, 0);
  v197 = "entityPartialSiriCount6Hr";
  v153(v200, v151, v152);
  v208[0] = 1;
  sub_26738114C();
  v157 = v154;
  v158 = v155;
  v155(v10, 0, 1, v154);
  v159 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v197 | 0x8000000000000000);
  v159(v208, 0);
  v197 = "entityPartialSiriCount1Day";
  v160 = v200;
  v161 = v204;
  v153(v200, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v155(v10, 0, 1, v157);
  v162 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v197 | 0x8000000000000000);
  v162(v208, 0);
  v197 = "entityPartialSiriCount7Day";
  v163 = v161;
  v164 = v206;
  v165 = v202;
  v202(v160, v161, v206);
  v208[0] = 1;
  sub_26738114C();
  v166 = v199;
  v158(v10, 0, 1, v199);
  v167 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v197 | 0x8000000000000000);
  v167(v208, 0);
  v197 = "entityPartialSiriCount28Day";
  v168 = v200;
  v169 = v164;
  v170 = v165;
  v165(v200, v163, v169);
  v208[0] = 1;
  sub_26738114C();
  v158(v10, 0, 1, v166);
  v171 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v197 | 0x8000000000000000);
  v171(v208, 0);
  v197 = "entityPartialAppCount2Min";
  v172 = v206;
  v170(v168, v204, v206);
  v208[0] = 1;
  sub_26738114C();
  v173 = v201;
  v201(v10, 0, 1, v166);
  v174 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v197 | 0x8000000000000000);
  v174(v208, 0);
  v197 = "entityPartialAppCount10Min";
  v175 = v200;
  v176 = v204;
  v170(v200, v204, v172);
  v208[0] = 1;
  sub_26738114C();
  v173(v10, 0, 1, v166);
  v177 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v197 | 0x8000000000000000);
  v177(v208, 0);
  v197 = "entityPartialAppCount1Hr";
  v178 = v175;
  v179 = v175;
  v180 = v176;
  v181 = v206;
  v182 = v202;
  v202(v179, v180, v206);
  v208[0] = 1;
  sub_26738114C();
  v183 = v199;
  v173(v10, 0, 1, v199);
  v184 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v197 | 0x8000000000000000);
  v184(v208, 0);
  v197 = "entityPartialAppCount6Hr";
  v185 = v204;
  v182(v178, v204, v181);
  v208[0] = 1;
  sub_26738114C();
  v186 = v201;
  v201(v10, 0, 1, v183);
  v187 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v197 | 0x8000000000000000);
  v187(v208, 0);
  v197 = "entityPartialAppCount1Day";
  v188 = v185;
  v189 = v206;
  v182(v178, v188, v206);
  v208[0] = 1;
  sub_26738114C();
  v190 = v199;
  v186(v10, 0, 1, v199);
  v191 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v197 | 0x8000000000000000);
  v191(v208, 0);
  v182(v178, v204, v189);
  v208[0] = 1;
  sub_26738114C();
  v186(v10, 0, 1, v190);
  v192 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x800000026744F8A0);
  return v192(v208, 0);
}

uint64_t sub_2670779D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267077A34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267077A98()
{
  result = qword_2800F38E8;
  if (!qword_2800F38E8)
  {
    sub_267077AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F38E8);
  }

  return result;
}

unint64_t sub_267077AF0()
{
  result = qword_2800F38F0;
  if (!qword_2800F38F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F38F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F38F8, 0x277D583B0);
  sub_266ECAF2C(&qword_2800F3900, &qword_2800F38F8, 0x277D583B0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026744F920);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F38F0, 0x277D583A0);
  sub_266ECAF2C(&qword_2800F38E8, &qword_2800F38F0, 0x277D583A0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026744F940);
  return v7(v9, 0);
}

uint64_t sub_267077E14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267077E78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v49 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v48 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v50 = *(v3 + 104);
  v50(v6, v11, v2);
  v46 = v3 + 104;
  v51[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v47 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026744DDF0);
  v16(v51, 0);
  v43 = *MEMORY[0x277D3E508];
  v18 = v49;
  v17 = v50;
  (v50)(v6);
  v51[0] = 1;
  sub_26738114C();
  v45 = v12;
  v14(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026744DE10);
  v19(v51, 0);
  v20 = v43;
  v17(v6, v43, v18);
  v51[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x7954746E65746E69, 0xEA00000000006570);
  v21(v51, 0);
  v44 = v6;
  v22 = v49;
  v17(v6, v20, v49);
  v51[0] = 1;
  sub_26738114C();
  v23 = v45;
  v24 = v14;
  v14(v10, 0, 1, v45);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v25(v51, 0);
  v50(v44, v20, v22);
  v51[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C43656369766564, 0xEB00000000737361);
  v26(v51, 0);
  v27 = v50;
  v50(v44, v20, v22);
  v51[0] = 1;
  sub_26738114C();
  v28 = v45;
  v41 = v24;
  v24(v10, 0, 1, v45);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F48746E65696C63, 0xEF796144664F7275);
  v29(v51, 0);
  v31 = v44;
  v42 = *MEMORY[0x277D3E510];
  v30 = v42;
  v27(v44, v42, v22);
  v51[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4C746E65696C63, 0xEC000000656C6163);
  v32(v51, 0);
  v33 = v50;
  v50(v31, v30, v22);
  v51[0] = 1;
  sub_26738114C();
  v34 = v41;
  v41(v10, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x614C746E65696C63, 0xEE0065676175676ELL);
  v35(v51, 0);
  v33(v31, v42, v22);
  v51[0] = 1;
  sub_26738114C();
  v36 = v45;
  v34(v10, 0, 1, v45);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x6552746E65696C63, 0xEC0000006E6F6967);
  v37(v51, 0);
  v33(v31, v43, v49);
  v51[0] = 1;
  sub_26738114C();
  v34(v10, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026744F9C0);
  return v38(v51, 0);
}

uint64_t sub_2670788C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267078924(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267078988()
{
  result = qword_2800F3900;
  if (!qword_2800F3900)
  {
    sub_2670789E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3900);
  }

  return result;
}

unint64_t sub_2670789E0()
{
  result = qword_2800F38F8;
  if (!qword_2800F38F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F38F8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v26 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v27 = v3 + 104;
  v12(v6, v11, v2);
  v24 = v12;
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v23 = v13;
  v14(v10, 0, 1, v13);
  v15 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026744FA40);
  v16(v28, 0);
  v22 = "isDisambiguatedApp";
  v17 = *MEMORY[0x277D3E508];
  v18 = v26;
  v12(v6, v17, v26);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v22 | 0x8000000000000000);
  v19(v28, 0);
  v24(v6, v17, v18);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v23);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026744FA80);
  return v20(v28, 0);
}

uint64_t sub_267078E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267078E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267078F00()
{
  result = qword_2800F3908;
  if (!qword_2800F3908)
  {
    sub_267078F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3908);
  }

  return result;
}

unint64_t sub_267078F58()
{
  result = qword_2800F3910;
  if (!qword_2800F3910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3910);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = sub_26738113C();
  v44 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v35 = a2;
  sub_26738119C();
  v42 = "ambiguationIndependentSignals";
  v13 = *(v4 + 104);
  v41 = *MEMORY[0x277D3E508];
  v12 = v41;
  v13(v7, v41, v3);
  v38 = v4 + 104;
  v45[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v39 = v14;
  v16(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v42 | 0x8000000000000000);
  v18(v45, 0);
  v42 = "disambiguationAppsOrder";
  v19 = v12;
  v20 = v44;
  v13(v7, v19, v44);
  v37 = v13;
  v45[0] = 1;
  sub_26738114C();
  v36 = v17;
  v16(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v42 | 0x8000000000000000);
  v21(v45, 0);
  LODWORD(v42) = *MEMORY[0x277D3E510];
  v22 = v20;
  (v13)(v7);
  v45[0] = 1;
  sub_26738114C();
  v23 = v39;
  v24 = v16;
  v16(v11, 0, 1, v39);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v25(v45, 0);
  v34 = "disambiguationReasons";
  v26 = v37;
  v37(v7, v41, v22);
  v45[0] = 1;
  sub_26738114C();
  v27 = v23;
  v24(v11, 0, 1, v23);
  v28 = v24;
  v40 = v24;
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v34 | 0x8000000000000000);
  v29(v45, 0);
  v26(v7, v42, v44);
  v45[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026742D020);
  v30(v45, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v40(v11, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026742D000);
  return v31(v45, 0);
}

uint64_t sub_267079640(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670796A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3470, 0x277D583A8);
  sub_266ECAF2C(&qword_2800F3478, &qword_2800F3470, 0x277D583A8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026744FBC0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F3920, 0x277D583C0);
  sub_266ECAF2C(&qword_2800F3918, &qword_2800F3920, 0x277D583C0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026744F920);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F3910, 0x277D583B8);
  sub_266ECAF2C(&qword_2800F3908, &qword_2800F3910, 0x277D583B8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026744F940);
  return v8(v10, 0);
}

uint64_t sub_267079AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267079B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3928, 0x277D583E0);
  sub_266ECAF2C(&qword_2800F3930, &qword_2800F3928, 0x277D583E0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000037, 0x800000026744FC30);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3938, 0x277D583D8);
  sub_266ECAF2C(&qword_2800F3940, &qword_2800F3938, 0x277D583D8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000035, 0x800000026744FC70);
  return v7(v9, 0);
}

uint64_t sub_267079ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267079F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)()
{
  v29 = sub_26738113C();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  v11(v31, 0);
  v12 = *MEMORY[0x277D3E508];
  v13 = *(v0 + 104);
  v28 = v0 + 104;
  v24 = v13;
  v13(v3, v12, v29);
  v31[0] = 1;
  v26 = v3;
  sub_26738114C();
  v25 = v10;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x5474756F6B726F77, 0xEB00000000657079);
  v14(v31, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v30, 0x5474756F6B726F77, 0xEB00000000657079);
  v17 = *(v9 + 48);
  v27 = v9 + 48;
  if (!v17(v18, 1, v8))
  {
    sub_266ECB128(&unk_287887C48);
    sub_26738115C();
  }

  (v16)(v30, 0);
  v15(v31, 0);
  v24(v26, *MEMORY[0x277D3E4E8], v29);
  v31[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F6F646E497369, 0xEF74756F6B726F57);
  v19(v31, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v30, 0x726F6F646E497369, 0xEF74756F6B726F57);
  if (!v17(v22, 1, v8))
  {
    sub_266ECB128(&unk_287887C70);
    sub_26738115C();
  }

  (v21)(v30, 0);
  return v20(v31, 0);
}

uint64_t sub_26707A550(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707A5B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v38 = a1;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3590, 0x277D58218);
  sub_266ECAF2C(&qword_2800F3588, &qword_2800F3590, 0x277D58218);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v39 = *(v11 + 56);
  v12 = v11 + 56;
  v39(v9, 0, 1, v10);
  v37 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026744D9C0);
  v13(v43, 0);
  v14 = *MEMORY[0x277D3E508];
  v15 = v42;
  v16 = v41 + 104;
  v34 = *(v41 + 104);
  v36 = v14;
  v34(v5, v14, v42);
  v41 = v16;
  v43[0] = 1;
  sub_26738114C();
  v35 = v10;
  v17 = v39;
  v39(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v18(v43, 0);
  v40 = "isDeviceLockStatus";
  v19 = v14;
  v20 = v34;
  v34(v5, v19, v15);
  v43[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v40 | 0x8000000000000000);
  v21(v43, 0);
  LODWORD(v40) = *MEMORY[0x277D3E4E8];
  v20(v5);
  v43[0] = 1;
  sub_26738114C();
  v22 = v35;
  v23 = v39;
  v39(v9, 0, 1, v35);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026744DDF0);
  v24(v43, 0);
  v25 = v40;
  (v20)(v5, v40, v42);
  v43[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C69626F4D7369, 0xEE006E4F61746144);
  v26(v43, 0);
  (v20)(v5, v25, v42);
  v43[0] = 1;
  sub_26738114C();
  v27 = v22;
  v23(v9, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E4F696669577369, 0xE800000000000000);
  v28(v43, 0);
  v29 = v42;
  (v20)(v5, v36, v42);
  v43[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v22);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x5474756F6B726F77, 0xEB00000000657079);
  v30(v43, 0);
  (v20)(v5, v40, v29);
  v43[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F6F646E497369, 0xEF74756F6B726F57);
  return v31(v43, 0);
}

uint64_t sub_26707AE54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707AEB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaHistoricalLocationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v7, *MEMORY[0x277D3E500], v3);
  v20[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v19[0] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x800000026744FDB0);
  v14(v20, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x800000026744FDD0);
  v15(v20, 0);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x800000026744FDF0);
  v16(v20, 0);
  type metadata accessor for JRSchemaJRBucketedDistance(0);
  sub_26707B48C();
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026744FE10);
  return v17(v20, 0);
}

uint64_t sub_26707B3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707B42C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707B48C()
{
  result = qword_2800F3948;
  if (!qword_2800F3948)
  {
    type metadata accessor for JRSchemaJRBucketedDistance(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3948);
  }

  return result;
}

uint64_t static JRSchemaIntervalUntilStartTime.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3960, 0x277D58418);
  sub_266ECAF2C(&qword_2800F3968, &qword_2800F3960, 0x277D58418);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026744FE60);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3970, 0x277D58430);
  sub_266ECAF2C(&qword_2800F3978, &qword_2800F3970, 0x277D58430);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x800000026744FE80);
  return v7(v9, 0);
}

uint64_t sub_26707B800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707B864(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRAction.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E6F69746361, 0xE700000000000000);
  return v10(v12, 0);
}

uint64_t sub_26707BB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707BBB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707BC1C()
{
  result = qword_2800F3990;
  if (!qword_2800F3990)
  {
    sub_26707BC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3990);
  }

  return result;
}

unint64_t sub_26707BC74()
{
  result = qword_2800F3998;
  if (!qword_2800F3998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3998);
  }

  return result;
}

uint64_t static JRSchemaJRActionCandidateTuple.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEC00000073644965);
  return v5(v7, 0);
}

uint64_t sub_26707BE9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEC00000073644965);
  return v5(v7, 0);
}

uint64_t sub_26707C040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707C0A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRAnonymizedHistoryAndContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F39B0, 0x277D58410);
  sub_266ECAF2C(&qword_2800F39B8, &qword_2800F39B0, 0x277D58410);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26707C318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F39B0, 0x277D58410);
  sub_266ECAF2C(&qword_2800F39B8, &qword_2800F39B0, 0x277D58410);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26707C4B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707C514(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRAnonymizedHistoryAndContextTuple.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v20[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x74616469646E6163, 0xEC00000073644965);
  v13(v23, 0);
  v20[0] = "zedHistoryAndContextTuple";
  v14 = *MEMORY[0x277D3E500];
  v15 = v21;
  v16 = *(v22 + 104);
  v22 += 104;
  v16(v6, v14, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v20[0] | 0x8000000000000000);
  v17(v23, 0);
  v16(v6, v14, v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x65726F63536C6675, 0xE800000000000000);
  return v18(v23, 0);
}

uint64_t sub_26707C9C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707CA2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRBucketedDistance.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026744FFC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026744FFE0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267450000, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267450020, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267450040, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x8000000267450060, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267450080, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ALL, 0x80000002674500A0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_26707CF28(uint64_t a1)
{
  v2 = sub_26707D02C(&qword_2800F39D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26707CF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26707D02C(&qword_2800F39D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26707D02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JRSchemaJRBucketedDistance(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static JRSchemaJRCandidateBooleanMask.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674500F0);
  return v10(v12, 0);
}

uint64_t sub_26707D2C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707D324(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707D388()
{
  result = qword_2800F3968;
  if (!qword_2800F3968)
  {
    sub_26707D3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3968);
  }

  return result;
}

unint64_t sub_26707D3E0()
{
  result = qword_2800F3960;
  if (!qword_2800F3960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3960);
  }

  return result;
}

uint64_t static JRSchemaJRCandidateRiskLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6576654C6B736972, 0xE90000000000006CLL);
  return v10(v12, 0);
}

uint64_t sub_26707D67C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707D6E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707D744()
{
  result = qword_2800F39D8;
  if (!qword_2800F39D8)
  {
    sub_26707D79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F39D8);
  }

  return result;
}

unint64_t sub_26707D79C()
{
  result = qword_2800F39E0;
  if (!qword_2800F39E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F39E0);
  }

  return result;
}

uint64_t static JRSchemaJRCandidateSearchToolRank.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6F54686372616573, 0xEE006B6E61526C6FLL);
  return v10(v12, 0);
}

uint64_t sub_26707DA40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707DAA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707DB08()
{
  result = qword_2800F39E8;
  if (!qword_2800F39E8)
  {
    sub_26707DB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F39E8);
  }

  return result;
}

unint64_t sub_26707DB60()
{
  result = qword_2800F39F0;
  if (!qword_2800F39F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F39F0);
  }

  return result;
}

uint64_t static JRSchemaJRCandidateTimeIntervalMatrix.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x80000002674501C0);
  return v10(v12, 0);
}

uint64_t sub_26707DDFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707DE60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707DEC4()
{
  result = qword_2800F3978;
  if (!qword_2800F3978)
  {
    sub_26707DF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3978);
  }

  return result;
}

unint64_t sub_26707DF1C()
{
  result = qword_2800F3970;
  if (!qword_2800F3970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3970);
  }

  return result;
}

uint64_t static JRSchemaJRClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F39F8, 0x277D58440);
  sub_266ECAF2C(&qword_2800F3A00, &qword_2800F39F8, 0x277D58440);
  v23 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F3A08, 0x277D58460);
  sub_266ECAF2C(&qword_2800F3A10, &qword_2800F3A08, 0x277D58460);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267450220);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F3A18, 0x277D58458);
  sub_266ECAF2C(&qword_2800F3A20, &qword_2800F3A18, 0x277D58458);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267450240);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  v15(v27, 0);
  sub_266ECB128(&unk_287887C98);
  return sub_2673811CC();
}

uint64_t sub_26707E478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26707E510()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26707E5DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707E640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26707E6A0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3A28, &qword_2800F3A30, 0x277D58438);
  a1[2] = sub_266ECAF2C(&qword_2800F3A38, &qword_2800F3A30, 0x277D58438);
  result = sub_266ECAF2C(&qword_2800F3A40, &qword_2800F3A30, 0x277D58438);
  a1[3] = result;
  return result;
}

uint64_t static JRSchemaJRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 1682535018, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682535018, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887CD0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287887D00);
  return sub_2673811CC();
}

uint64_t sub_26707EA44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707EAA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJREntitySimilarityRow.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v14 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616469646E6163, 0xEA00000000004165);
  v9(v17, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616469646E6163, 0xEA00000000004265);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E500], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6972616C696D6973, 0xEF65726F63537974);
  return v11(v17, 0);
}

uint64_t sub_26707EF24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707EF88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJREntitySimilarityScores.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3A58, 0x277D58448);
  sub_266ECAF2C(&qword_2800F3A50, &qword_2800F3A58, 0x277D58448);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 7827314, 0xE300000000000000);
  return v5(v7, 0);
}

uint64_t sub_26707F1F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3A58, 0x277D58448);
  sub_266ECAF2C(&qword_2800F3A50, &qword_2800F3A58, 0x277D58448);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 7827314, 0xE300000000000000);
  return v5(v7, 0);
}

uint64_t sub_26707F38C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707F3F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRExperimentTriggered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  return v7(v9, 0);
}

uint64_t sub_26707F76C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707F7D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRInferenceContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3A70, 0x277D58478);
  sub_266ECAF2C(&qword_2800F3A78, &qword_2800F3A70, 0x277D58478);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64657472617473, 0xE700000000000000);
  v9(v23, 0);
  sub_266ECB294(0, &qword_2800F3A80, 0x277D58470);
  sub_266ECAF2C(&qword_2800F3A88, &qword_2800F3A80, 0x277D58470);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F3A90, 0x277D58468);
  sub_266ECAF2C(&qword_2800F3A98, &qword_2800F3A90, 0x277D58468);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v21;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v12(v23, 0);
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
  (*(v0 + 32))(v16 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19, v11, v22);
  return v13(v23, 0);
}

uint64_t sub_26707FD88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707FDEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRInferenceEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = sub_26738113C();
  v67 = *(v62 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v62);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3AA0, 0x277D58488);
  sub_266ECAF2C(&qword_2800F3AA8, &qword_2800F3AA0, 0x277D58488);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267450380);
  v14(v68, 0);
  sub_266ECB294(0, &qword_2800F3AB0, 0x277D58490);
  sub_266ECAF2C(&qword_2800F3AB8, &qword_2800F3AB0, 0x277D58490);
  v61 = a1;
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v65 = v12;
  v66 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x74754F6C65646F6DLL, 0xEC00000073747570);
  v15(v68, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v59 = v13;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F6973726576, 0xE700000000000000);
  v16(v68, 0);
  v57 = "modelInputShapes";
  v18 = v67 + 104;
  v19 = *(v67 + 104);
  v20 = v64;
  v58 = *MEMORY[0x277D3E500];
  v17 = v58;
  v21 = v62;
  v19(v64, v58, v62);
  v63 = v19;
  v67 = v18;
  v68[0] = 1;
  sub_26738114C();
  v22 = v65;
  v65(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v57 | 0x8000000000000000);
  v23(v68, 0);
  v57 = "trialDisambiguationRate";
  v19(v20, v17, v21);
  v68[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v57 | 0x8000000000000000);
  v24(v68, 0);
  sub_266ECB294(0, &qword_2800F3AC0, 0x277D584D8);
  sub_266ECAF2C(&qword_2800F3AC8, &qword_2800F3AC0, 0x277D584D8);
  sub_26738120C();
  v60 = v10;
  v22(v9, 0, 1, v10);
  v25 = v22;
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x666F72506B736972, 0xEB00000000656C69);
  v26(v68, 0);
  v27 = v64;
  v28 = v58;
  v29 = v62;
  v63(v64, v58, v62);
  v68[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v10);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xED00006570795472);
  v30(v68, 0);
  v31 = v63;
  v63(v27, v28, v29);
  v68[0] = 1;
  sub_26738114C();
  v32 = v65;
  v65(v9, 0, 1, v60);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x5079646165726C61, 0xEF646574706D6F72);
  v33(v68, 0);
  v31(v64, v28, v29);
  v68[0] = 1;
  sub_26738114C();
  v34 = v60;
  v32(v9, 0, 1, v60);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4372656C6C6163, 0xEF746E656E6F706DLL);
  v35(v68, 0);
  sub_266ECB294(0, &qword_2800F3AD0, 0x277D584E8);
  sub_266ECAF2C(&qword_2800F3AD8, &qword_2800F3AD0, 0x277D584E8);
  sub_26738122C();
  v36 = v65;
  v65(v9, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x80000002674503E0);
  v37(v68, 0);
  sub_266ECB294(0, &qword_2800F3AE0, 0x277D584F0);
  sub_266ECAF2C(&qword_2800F3AE8, &qword_2800F3AE0, 0x277D584F0);
  sub_26738122C();
  v38 = v60;
  v36(v9, 0, 1, v60);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267450400);
  v39(v68, 0);
  sub_266ECB294(0, &qword_2800F39E0, 0x277D58420);
  sub_266ECAF2C(&qword_2800F39D8, &qword_2800F39E0, 0x277D58420);
  sub_26738122C();
  v36(v9, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616469646E6163, 0xED00006B73695265);
  v40(v68, 0);
  sub_266ECB294(0, &qword_2800F39F0, 0x277D58428);
  sub_266ECAF2C(&qword_2800F39E8, &qword_2800F39F0, 0x277D58428);
  sub_26738122C();
  v36(v9, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F54686372616573, 0xEF736B6E61526C6FLL);
  v41(v68, 0);
  type metadata accessor for JRSchemaJRBucketedDistance(0);
  sub_2670811AC(&qword_2800F3948, type metadata accessor for JRSchemaJRBucketedDistance);
  sub_26738122C();
  v36(v9, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026744FE10);
  v42(v68, 0);
  sub_266ECB294(0, &qword_2800F3988, 0x277D583F0);
  sub_266ECAF2C(&qword_2800F3980, &qword_2800F3988, 0x277D583F0);
  sub_26738122C();
  v36(v9, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267450420);
  v43(v68, 0);
  type metadata accessor for JRSchemaJRParameterSubType(0);
  sub_2670811AC(&qword_2800F3AF0, type metadata accessor for JRSchemaJRParameterSubType);
  sub_26738122C();
  v44 = v38;
  v36(v9, 0, 1, v38);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267450440);
  v45(v68, 0);
  v57 = "parameterSubType";
  v47 = v63;
  v46 = v64;
  v48 = v58;
  v49 = v62;
  v63(v64, v58, v62);
  v68[0] = 1;
  sub_26738114C();
  v65(v9, 0, 1, v44);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v57 | 0x8000000000000000);
  v50(v68, 0);
  v47(v46, v48, v49);
  v68[0] = 1;
  sub_26738114C();
  v51 = v65;
  v65(v9, 0, 1, v44);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0x7373656E64756F6CLL, 0xED00006C6576654CLL);
  v52(v68, 0);
  sub_266ECB294(0, &qword_2800F3AF8, 0x277D58498);
  sub_266ECAF2C(&qword_2800F3B00, &qword_2800F3AF8, 0x277D58498);
  sub_26738122C();
  v51(v9, 0, 1, v44);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365726F6373, 0xE600000000000000);
  v53(v68, 0);
  sub_266ECB294(0, &qword_2800F3A68, 0x277D58450);
  sub_266ECAF2C(&qword_2800F3A60, &qword_2800F3A68, 0x277D58450);
  sub_26738122C();
  v51(v9, 0, 1, v44);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267450480);
  return v54(v68, 0);
}

uint64_t sub_2670810E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708114C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670811AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static JRSchemaJRInferenceFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267081480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670814E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267081548()
{
  result = qword_2800F3A88;
  if (!qword_2800F3A88)
  {
    sub_2670815A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3A88);
  }

  return result;
}

unint64_t sub_2670815A0()
{
  result = qword_2800F3A80;
  if (!qword_2800F3A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3A80);
  }

  return result;
}

uint64_t static JRSchemaJRInferenceStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267081834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267081898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670818FC()
{
  result = qword_2800F3A78;
  if (!qword_2800F3A78)
  {
    sub_267081954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3A78);
  }

  return result;
}

unint64_t sub_267081954()
{
  result = qword_2800F3A70;
  if (!qword_2800F3A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3A70);
  }

  return result;
}

uint64_t static JRSchemaJRModelDiagnosticsSignals.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267450540);
  return v10(v12, 0);
}

uint64_t sub_267081BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267081C54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267081CB8()
{
  result = qword_2800F3B08;
  if (!qword_2800F3B08)
  {
    sub_267081D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3B08);
  }

  return result;
}

unint64_t sub_267081D10()
{
  result = qword_2800F3B10;
  if (!qword_2800F3B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3B10);
  }

  return result;
}

uint64_t static JRSchemaJRModelInputShapes.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v40 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v11 = a1;
  sub_26738119C();
  v37 = "iri.jr.JRModelInputShapes";
  v13 = *(v3 + 104);
  v41 = *MEMORY[0x277D3E538];
  v12 = v41;
  v13(v6, v41, v2);
  v38 = v13;
  v42[0] = 1;
  sub_26738114C();
  v39 = sub_26738116C();
  v14 = *(v39 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v39);
  v36 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v37 | 0x8000000000000000);
  v17(v42, 0);
  v37 = "candidateTuplesShapes";
  v18 = v12;
  v19 = v40;
  v13(v6, v18, v40);
  v34[1] = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v20 = v39;
  v15(v10, 0, 1, v39);
  v34[2] = v11;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v37 | 0x8000000000000000);
  v21(v42, 0);
  v37 = "deviceContextShapes";
  v22 = v41;
  v23 = v19;
  v24 = v38;
  v38(v6, v41, v23);
  v42[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v37 | 0x8000000000000000);
  v25(v42, 0);
  v37 = "candidateInteractionsShapes";
  v26 = v40;
  v24(v6, v22, v40);
  v42[0] = 1;
  sub_26738114C();
  v27 = v39;
  v35 = v15;
  v15(v10, 0, 1, v39);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v37 | 0x8000000000000000);
  v28(v42, 0);
  v37 = "sCandidatesShapes";
  v29 = v26;
  v30 = v38;
  v38(v6, v41, v29);
  v42[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v37 | 0x8000000000000000);
  v31(v42, 0);
  v30(v6, v41, v40);
  v42[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267450650);
  return v32(v42, 0);
}

uint64_t sub_2670823DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267082440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670824A4()
{
  result = qword_2800F3AA8;
  if (!qword_2800F3AA8)
  {
    sub_2670824FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3AA8);
  }

  return result;
}

unint64_t sub_2670824FC()
{
  result = qword_2800F3AA0;
  if (!qword_2800F3AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3AA0);
  }

  return result;
}

uint64_t static JRSchemaJRModelOutputs.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800F3998, 0x277D583F8);
  v10 = sub_266ECAF2C(&qword_2800F3990, &qword_2800F3998, 0x277D583F8);
  v31 = v9;
  v32 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F69746361, 0xE600000000000000);
  v13(v33, 0);
  v14 = sub_266ECB294(0, &qword_2800F39A8, 0x277D58400);
  v15 = sub_266ECAF2C(&qword_2800F39A0, &qword_2800F39A8, 0x277D58400);
  v29 = v14;
  v30 = v15;
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x74616469646E6163, 0xEA00000000007365);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F3B18, 0x277D584A0);
  sub_266ECAF2C(&qword_2800F3B20, &qword_2800F3B18, 0x277D584A0);
  v25 = a1;
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E696B6E6172, 0xE700000000000000);
  v17(v33, 0);
  sub_266ECB294(0, &qword_2800F39C8, 0x277D58408);
  sub_266ECAF2C(&qword_2800F39C0, &qword_2800F39C8, 0x277D58408);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x80000002674506A0);
  v18(v33, 0);
  (*(v27 + 104))(v26, *MEMORY[0x277D3E4E8], v28);
  v33[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674506C0);
  v19(v33, 0);
  sub_266ECB294(0, &qword_2800F3B10, 0x277D58480);
  sub_266ECAF2C(&qword_2800F3B08, &qword_2800F3B10, 0x277D58480);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267450540);
  v20(v33, 0);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6341776F64616873, 0xEC0000006E6F6974);
  v21(v33, 0);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674506E0);
  v22(v33, 0);
  sub_266ECB294(0, &qword_2800F3B28, 0x277D584F8);
  sub_266ECAF2C(&qword_2800F3B30, &qword_2800F3B28, 0x277D584F8);
  sub_26738122C();
  v12(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x7473694872657375, 0xEB0000000079726FLL);
  return v23(v33, 0);
}

uint64_t sub_267082DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267082E04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRParameterSubType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v536 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267450730, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v536;

  v1(v625, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v537 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1000, 0xD000000000000026, 0x8000000267450750, v11);
  v12 = *v9;
  *v9 = v537;

  v7(v625, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v538 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(1001, 0xD00000000000002CLL, 0x8000000267450780, v17);
  v18 = *v15;
  *v15 = v538;

  v13(v625, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v539 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(1002, 0xD000000000000029, 0x80000002674507B0, v23);
  v24 = *v21;
  *v21 = v539;

  v19(v625, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v540 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(1003, 0xD000000000000024, 0x80000002674507E0, v29);
  v30 = *v27;
  *v27 = v540;

  v25(v625, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v541 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(1004, 0xD000000000000024, 0x8000000267450810, v35);
  v36 = *v33;
  *v33 = v541;

  v31(v625, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v542 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(1005, 0xD000000000000026, 0x8000000267450840, v41);
  v42 = *v39;
  *v39 = v542;

  v37(v625, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v543 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(1006, 0xD00000000000002DLL, 0x8000000267450870, v47);
  v48 = *v45;
  *v45 = v543;

  v43(v625, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v544 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(1007, 0xD000000000000026, 0x80000002674508A0, v53);
  v54 = *v51;
  *v51 = v544;

  v49(v625, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v545 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(1008, 0xD000000000000027, 0x80000002674508D0, v59);
  v60 = *v57;
  *v57 = v545;

  v55(v625, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v546 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(1009, 0xD000000000000029, 0x8000000267450900, v65);
  v66 = *v63;
  *v63 = v546;

  v61(v625, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v547 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(2000, 0xD000000000000021, 0x8000000267450930, v71);
  v72 = *v69;
  *v69 = v547;

  v67(v625, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v548 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(2001, 0xD000000000000027, 0x8000000267450960, v77);
  v78 = *v75;
  *v75 = v548;

  v73(v625, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v549 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(2002, 0xD000000000000024, 0x8000000267450990, v83);
  v84 = *v81;
  *v81 = v549;

  v79(v625, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v550 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(2003, 0xD00000000000001FLL, 0x80000002674509C0, v89);
  v90 = *v87;
  *v87 = v550;

  v85(v625, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v551 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(2004, 0xD00000000000001FLL, 0x80000002674509E0, v95);
  v96 = *v93;
  *v93 = v551;

  v91(v625, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v552 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(2005, 0xD000000000000021, 0x8000000267450A00, v101);
  v102 = *v99;
  *v99 = v552;

  v97(v625, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v553 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(2006, 0xD000000000000028, 0x8000000267450A30, v107);
  v108 = *v105;
  *v105 = v553;

  v103(v625, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v554 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(2007, 0xD000000000000021, 0x8000000267450A60, v113);
  v114 = *v111;
  *v111 = v554;

  v109(v625, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v555 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(2008, 0xD000000000000022, 0x8000000267450A90, v119);
  v120 = *v117;
  *v117 = v555;

  v115(v625, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v556 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(2009, 0xD000000000000024, 0x8000000267450AC0, v125);
  v126 = *v123;
  *v123 = v556;

  v121(v625, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v557 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(3000, 0xD000000000000020, 0x8000000267450AF0, v131);
  v132 = *v129;
  *v129 = v557;

  v127(v625, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v558 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(3001, 0xD000000000000026, 0x8000000267450B20, v137);
  v138 = *v135;
  *v135 = v558;

  v133(v625, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v559 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(3002, 0xD000000000000023, 0x8000000267450B50, v143);
  v144 = *v141;
  *v141 = v559;

  v139(v625, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v560 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(3003, 0xD00000000000001ELL, 0x8000000267450B80, v149);
  v150 = *v147;
  *v147 = v560;

  v145(v625, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v561 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(3004, 0xD00000000000001ELL, 0x8000000267450BA0, v155);
  v156 = *v153;
  *v153 = v561;

  v151(v625, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v562 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(3005, 0xD000000000000020, 0x8000000267450BC0, v161);
  v162 = *v159;
  *v159 = v562;

  v157(v625, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v563 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(3006, 0xD000000000000027, 0x8000000267450BF0, v167);
  v168 = *v165;
  *v165 = v563;

  v163(v625, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v564 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(3007, 0xD000000000000020, 0x8000000267450C20, v173);
  v174 = *v171;
  *v171 = v564;

  v169(v625, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v565 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(3008, 0xD000000000000021, 0x8000000267450C50, v179);
  v180 = *v177;
  *v177 = v565;

  v175(v625, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v566 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(3009, 0xD000000000000023, 0x8000000267450C80, v185);
  v186 = *v183;
  *v183 = v566;

  v181(v625, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v567 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(4000, 0xD000000000000023, 0x8000000267450CB0, v191);
  v192 = *v189;
  *v189 = v567;

  v187(v625, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v568 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(4001, 0xD000000000000029, 0x8000000267450CE0, v197);
  v198 = *v195;
  *v195 = v568;

  v193(v625, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v569 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(4002, 0xD000000000000026, 0x8000000267450D10, v203);
  v204 = *v201;
  *v201 = v569;

  v199(v625, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v570 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(4003, 0xD000000000000021, 0x8000000267450D40, v209);
  v210 = *v207;
  *v207 = v570;

  v205(v625, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v571 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(4004, 0xD000000000000021, 0x8000000267450D70, v215);
  v216 = *v213;
  *v213 = v571;

  v211(v625, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v572 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(4005, 0xD000000000000023, 0x8000000267450DA0, v221);
  v222 = *v219;
  *v219 = v572;

  v217(v625, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v573 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(4006, 0xD00000000000002ALL, 0x8000000267450DD0, v227);
  v228 = *v225;
  *v225 = v573;

  v223(v625, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v574 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(4007, 0xD000000000000023, 0x8000000267450E00, v233);
  v234 = *v231;
  *v231 = v574;

  v229(v625, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v575 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(4008, 0xD000000000000024, 0x8000000267450E30, v239);
  v240 = *v237;
  *v237 = v575;

  v235(v625, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v576 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(4009, 0xD000000000000026, 0x8000000267450E60, v245);
  v246 = *v243;
  *v243 = v576;

  v241(v625, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v577 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(5000, 0xD00000000000002CLL, 0x8000000267450E90, v251);
  v252 = *v249;
  *v249 = v577;

  v247(v625, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v578 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(5001, 0xD000000000000032, 0x8000000267450EC0, v257);
  v258 = *v255;
  *v255 = v578;

  v253(v625, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v579 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(5002, 0xD00000000000002FLL, 0x8000000267450F00, v263);
  v264 = *v261;
  *v261 = v579;

  v259(v625, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v580 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(5003, 0xD00000000000002ALL, 0x8000000267450F30, v269);
  v270 = *v267;
  *v267 = v580;

  v265(v625, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v581 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(5004, 0xD00000000000002ALL, 0x8000000267450F60, v275);
  v276 = *v273;
  *v273 = v581;

  v271(v625, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v582 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(5005, 0xD00000000000002CLL, 0x8000000267450F90, v281);
  v282 = *v279;
  *v279 = v582;

  v277(v625, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v583 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(5006, 0xD000000000000033, 0x8000000267450FC0, v287);
  v288 = *v285;
  *v285 = v583;

  v283(v625, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v584 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(5007, 0xD00000000000002CLL, 0x8000000267451000, v293);
  v294 = *v291;
  *v291 = v584;

  v289(v625, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v585 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(5008, 0xD00000000000002DLL, 0x8000000267451030, v299);
  v300 = *v297;
  *v297 = v585;

  v295(v625, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v586 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(5009, 0xD00000000000002FLL, 0x8000000267451060, v305);
  v306 = *v303;
  *v303 = v586;

  v301(v625, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v587 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(6000, 0xD000000000000024, 0x8000000267451090, v311);
  v312 = *v309;
  *v309 = v587;

  v307(v625, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v588 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(6001, 0xD00000000000002ALL, 0x80000002674510C0, v317);
  v318 = *v315;
  *v315 = v588;

  v313(v625, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v589 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(6002, 0xD000000000000027, 0x80000002674510F0, v323);
  v324 = *v321;
  *v321 = v589;

  v319(v625, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v590 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(6003, 0xD000000000000022, 0x8000000267451120, v329);
  v330 = *v327;
  *v327 = v590;

  v325(v625, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v591 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(6004, 0xD000000000000022, 0x8000000267451150, v335);
  v336 = *v333;
  *v333 = v591;

  v331(v625, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v592 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(6005, 0xD000000000000024, 0x8000000267451180, v341);
  v342 = *v339;
  *v339 = v592;

  v337(v625, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v593 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(6006, 0xD00000000000002BLL, 0x80000002674511B0, v347);
  v348 = *v345;
  *v345 = v593;

  v343(v625, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v594 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(6007, 0xD000000000000024, 0x80000002674511E0, v353);
  v354 = *v351;
  *v351 = v594;

  v349(v625, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v595 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(6008, 0xD000000000000025, 0x8000000267451210, v359);
  v360 = *v357;
  *v357 = v595;

  v355(v625, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v596 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(6009, 0xD000000000000027, 0x8000000267451240, v365);
  v366 = *v363;
  *v363 = v596;

  v361(v625, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v597 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(7000, 0xD000000000000034, 0x8000000267451270, v371);
  v372 = *v369;
  *v369 = v597;

  v367(v625, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v598 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(7001, 0xD00000000000003ALL, 0x80000002674512B0, v377);
  v378 = *v375;
  *v375 = v598;

  v373(v625, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v599 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(7002, 0xD000000000000037, 0x80000002674512F0, v383);
  v384 = *v381;
  *v381 = v599;

  v379(v625, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v600 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(7003, 0xD000000000000032, 0x8000000267451330, v389);
  v390 = *v387;
  *v387 = v600;

  v385(v625, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v601 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(7004, 0xD000000000000032, 0x8000000267451370, v395);
  v396 = *v393;
  *v393 = v601;

  v391(v625, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v602 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(7005, 0xD000000000000034, 0x80000002674513B0, v401);
  v402 = *v399;
  *v399 = v602;

  v397(v625, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v603 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(7006, 0xD00000000000003BLL, 0x80000002674513F0, v407);
  v408 = *v405;
  *v405 = v603;

  v403(v625, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v604 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(7007, 0xD000000000000034, 0x8000000267451430, v413);
  v414 = *v411;
  *v411 = v604;

  v409(v625, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v605 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(7008, 0xD000000000000034, 0x8000000267451470, v419);
  v420 = *v417;
  *v417 = v605;

  v415(v625, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v606 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(7009, 0xD000000000000037, 0x80000002674514B0, v425);
  v426 = *v423;
  *v423 = v606;

  v421(v625, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v607 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(8000, 0xD000000000000024, 0x80000002674514F0, v431);
  v432 = *v429;
  *v429 = v607;

  v427(v625, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v608 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(8001, 0xD000000000000021, 0x8000000267451520, v437);
  v438 = *v435;
  *v435 = v608;

  v433(v625, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v609 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(8002, 0xD000000000000029, 0x8000000267451550, v443);
  v444 = *v441;
  *v441 = v609;

  v439(v625, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v610 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(8003, 0xD000000000000023, 0x8000000267451580, v449);
  v450 = *v447;
  *v447 = v610;

  v445(v625, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v611 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(8004, 0xD000000000000020, 0x80000002674515B0, v455);
  v456 = *v453;
  *v453 = v611;

  v451(v625, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v612 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(8005, 0xD000000000000021, 0x80000002674515E0, v461);
  v462 = *v459;
  *v459 = v612;

  v457(v625, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v613 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(8006, 0xD000000000000020, 0x8000000267451610, v467);
  v468 = *v465;
  *v465 = v613;

  v463(v625, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v614 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(8007, 0xD000000000000023, 0x8000000267451640, v473);
  v474 = *v471;
  *v471 = v614;

  v469(v625, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v615 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(8008, 0xD000000000000024, 0x8000000267451670, v479);
  v480 = *v477;
  *v477 = v615;

  v475(v625, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v616 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(8009, 0xD000000000000021, 0x80000002674516A0, v485);
  v486 = *v483;
  *v483 = v616;

  v481(v625, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v617 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(8010, 0xD00000000000002CLL, 0x80000002674516D0, v491);
  v492 = *v489;
  *v489 = v617;

  v487(v625, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v618 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(8011, 0xD000000000000028, 0x8000000267451700, v497);
  v498 = *v495;
  *v495 = v618;

  v493(v625, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v619 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(8012, 0xD000000000000023, 0x8000000267451730, v503);
  v504 = *v501;
  *v501 = v619;

  v499(v625, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v620 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(8013, 0xD00000000000002ELL, 0x8000000267451760, v509);
  v510 = *v507;
  *v507 = v620;

  v505(v625, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v621 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(8014, 0xD00000000000002CLL, 0x8000000267451790, v515);
  v516 = *v513;
  *v513 = v621;

  v511(v625, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v622 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(8015, 0xD00000000000002BLL, 0x80000002674517C0, v521);
  v522 = *v519;
  *v519 = v622;

  v517(v625, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v623 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(8016, 0xD000000000000026, 0x80000002674517F0, v527);
  v528 = *v525;
  *v525 = v623;

  v523(v625, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v624 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(8017, 0xD000000000000020, 0x8000000267451820, v533);
  v534 = *v531;
  *v531 = v624;

  return v529(v625, 0);
}

uint64_t sub_267085774(uint64_t a1)
{
  v2 = sub_267085878(&qword_2800F3B38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670857DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267085878(&qword_2800F3B38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267085878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JRSchemaJRParameterSubType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static JRSchemaJRTokenConfidence.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6353727361, 0xE900000000000073);
  return v10(v12, 0);
}

uint64_t sub_267085B0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267085B70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267085BD4()
{
  result = qword_2800F3B00;
  if (!qword_2800F3B00)
  {
    sub_267085C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3B00);
  }

  return result;
}

unint64_t sub_267085C2C()
{
  result = qword_2800F3AF8;
  if (!qword_2800F3AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3AF8);
  }

  return result;
}

uint64_t static JRSchemaRanking.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B40, 0x277D584B8);
  sub_266ECAF2C(&qword_2800F3B48, &qword_2800F3B40, 0x277D584B8);
  v16[1] = a1;
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v16[0] = *(v7 + 56);
  (v16[0])(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x4D676E696B6E6172, 0xEF73656369727461);
  v8(v18, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v17, 0x4D676E696B6E6172, 0xEF73656369727461);
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    sub_266ECB128(&unk_287887D30);
    sub_26738115C();
  }

  (v10)(v17, 0);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800F3B50, 0x277D584C0);
  sub_266ECAF2C(&qword_2800F3B58, &qword_2800F3B50, 0x277D584C0);
  sub_26738120C();
  v12 = v16[0];
  (v16[0])(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674518A0);
  v13(v18, 0);
  sub_266ECB294(0, &qword_2800F3B60, 0x277D584A8);
  sub_266ECAF2C(&qword_2800F3B68, &qword_2800F3B60, 0x277D584A8);
  sub_26738120C();
  v12(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674518C0);
  return v14(v18, 0);
}

uint64_t sub_2670860DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267086140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRankingCandidateMatrix.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B70, 0x277D584B0);
  sub_266ECAF2C(&qword_2800F3B78, &qword_2800F3B70, 0x277D584B0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEF73656C70755465);
  return v5(v7, 0);
}

uint64_t sub_2670863C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B70, 0x277D584B0);
  sub_266ECAF2C(&qword_2800F3B78, &qword_2800F3B70, 0x277D584B0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEF73656C70755465);
  return v5(v7, 0);
}

uint64_t sub_26708656C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670865D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRankingCandidateTuple.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEC00000073644965);
  return v5(v7, 0);
}

uint64_t sub_267086850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEC00000073644965);
  return v5(v7, 0);
}

uint64_t sub_2670869F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267086A58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRankingMatrix.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B80, 0x277D584D0);
  sub_266ECAF2C(&qword_2800F3B88, &qword_2800F3B80, 0x277D584D0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287887D58);
  return sub_2673811CC();
}

uint64_t sub_267086CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267086D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRankingScoreMatrix.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B90, 0x277D584C8);
  sub_266ECAF2C(&qword_2800F3B98, &qword_2800F3B90, 0x277D584C8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x70755465726F6373, 0xEB0000000073656CLL);
  return v5(v7, 0);
}

uint64_t sub_267086FDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3B90, 0x277D584C8);
  sub_266ECAF2C(&qword_2800F3B98, &qword_2800F3B90, 0x277D584C8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x70755465726F6373, 0xEB0000000073656CLL);
  return v5(v7, 0);
}

uint64_t sub_267087180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670871E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRankingScoreTuple.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365726F6373, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_2670874D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267087534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267087598()
{
  result = qword_2800F3B98;
  if (!qword_2800F3B98)
  {
    sub_2670875F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3B98);
  }

  return result;
}

unint64_t sub_2670875F0()
{
  result = qword_2800F3B90;
  if (!qword_2800F3B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3B90);
  }

  return result;
}

uint64_t static JRSchemaRankingTuple.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365726F6373, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287887D80);
  return sub_2673811CC();
}

uint64_t sub_26708789C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267087900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267087964()
{
  result = qword_2800F3B88;
  if (!qword_2800F3B88)
  {
    sub_2670879BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3B88);
  }

  return result;
}

unint64_t sub_2670879BC()
{
  result = qword_2800F3B80;
  if (!qword_2800F3B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3B80);
  }

  return result;
}

uint64_t static JRSchemaRiskProfile.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3BA0, 0x277D584E0);
  sub_266ECAF2C(&qword_2800F3BA8, &qword_2800F3BA0, 0x277D584E0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267087BD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3BA0, 0x277D584E0);
  sub_266ECAF2C(&qword_2800F3BA8, &qword_2800F3BA0, 0x277D584E0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267087D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267087DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaRiskTuple.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x736B736972, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_2670880C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267088124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267088188()
{
  result = qword_2800F3BA8;
  if (!qword_2800F3BA8)
  {
    sub_2670881E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3BA8);
  }

  return result;
}

unint64_t sub_2670881E0()
{
  result = qword_2800F3BA0;
  if (!qword_2800F3BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3BA0);
  }

  return result;
}

uint64_t static JRSchemaSegmentedCandidateCount.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x74616469646E6163, 0xEB00000000644965);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E756F63, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_267088564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670885C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaSegmentedTupleCount.makeTypeManifestAndEnsureFields(in:)()
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
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6143656C707574, 0xEF73657461646964);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E756F63, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_2670889A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267088A0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaUserHistory.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_26738113C();
  v33 = *(v31 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v28 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v29 = *(v11 + 56);
  v29(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v12(v35, 0);
  v32 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v34, 0x64496C6F6F74, 0xE600000000000000);
  v27 = *(v11 + 48);
  if (!v27(v15, 1, v10))
  {
    sub_266ECB128(&unk_287887DA8);
    sub_26738115C();
  }

  (v14)(v34, 0);
  v13(v35, 0);
  v16 = *MEMORY[0x277D3E500];
  v17 = *(v33 + 104);
  v33 += 104;
  v26 = v17;
  v17(v30, v16, v31);
  v35[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267451AF0);
  v18(v35, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v34, 0xD000000000000011, 0x8000000267451AF0);
  if (!v27(v21, 1, v10))
  {
    sub_266ECB128(&unk_287887DD8);
    sub_26738115C();
  }

  (v20)(v34, 0);
  v19(v35, 0);
  v26(v30, v16, v31);
  v35[0] = 1;
  sub_26738114C();
  v22 = v29;
  v29(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267451B10);
  v23(v35, 0);
  sub_266ECB294(0, &qword_2800F3958, 0x277D583E8);
  sub_266ECAF2C(&qword_2800F3950, &qword_2800F3958, 0x277D583E8);
  sub_26738122C();
  v22(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267451B30);
  return v24(v35, 0);
}

uint64_t sub_2670890D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708913C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LCServiceApplicationConfiguration.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v23 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v22 = v2 + 104;
  v24 = v11;
  v20 = v5;
  v11(v5, v10, v1);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267451B90);
  v14(v25, 0);
  sub_266ECB294(0, &qword_2800F3BB0, 0x277D58538);
  sub_266ECAF2C(&qword_2800F3BB8, &qword_2800F3BB0, 0x277D58538);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267451BB0);
  v15(v25, 0);
  sub_266ECB294(0, &qword_2800F3BC0, 0x277D58518);
  sub_266ECAF2C(&qword_2800F3BC8, &qword_2800F3BC0, 0x277D58518);
  sub_26738122C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x69726F6765746163, 0xEA00000000007365);
  v16(v25, 0);
  v24(v20, *MEMORY[0x277D3E508], v23);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267451BD0);
  return v17(v25, 0);
}

uint64_t sub_2670896CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267089730(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LCServiceBlackListedField.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267451C20);
  return v10(v12, 0);
}

uint64_t sub_267089A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267089A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267089AEC()
{
  result = qword_2800F3BE0;
  if (!qword_2800F3BE0)
  {
    sub_267089B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3BE0);
  }

  return result;
}

unint64_t sub_267089B44()
{
  result = qword_2800F3BE8;
  if (!qword_2800F3BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3BE8);
  }

  return result;
}

uint64_t static LCServiceBlacklistedFields.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3BE8, 0x277D58508);
  sub_266ECAF2C(&qword_2800F3BE0, &qword_2800F3BE8, 0x277D58508);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267451C70);
  return v5(v7, 0);
}

uint64_t sub_267089D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267089DEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LCServiceCategoryConfiguration.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x707954746E657665, 0xE900000000000065);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800F3BB0, 0x277D58538);
  sub_266ECAF2C(&qword_2800F3BB8, &qword_2800F3BB0, 0x277D58538);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267451CD0);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F3BF8, 0x277D58510);
  sub_266ECAF2C(&qword_2800F3BF0, &qword_2800F3BF8, 0x277D58510);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x73696C6B63616C62, 0xE900000000000074);
  return v13(v15, 0);
}

uint64_t sub_26708A2A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708A304(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LCServiceConfigurationRequest.makeTypeManifestAndEnsureFields(in:)()
{
  sub_266EC679C(MEMORY[0x277D84F90]);

  return sub_26738119C();
}

uint64_t sub_26708A430()
{
  sub_266EC679C(MEMORY[0x277D84F90]);

  return sub_26738119C();
}

uint64_t sub_26708A480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708A4E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26708A548()
{
  result = qword_2800F3C00;
  if (!qword_2800F3C00)
  {
    sub_26708A5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3C00);
  }

  return result;
}

unint64_t sub_26708A5A0()
{
  result = qword_2800F3C08;
  if (!qword_2800F3C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3C08);
  }

  return result;
}

uint64_t static LCServiceConfigurationResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3C10, 0x277D58530);
  sub_266ECAF2C(&qword_2800F3C18, &qword_2800F3C10, 0x277D58530);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x72756769666E6F63, 0xED00006E6F697461);
  v10(v19, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v0);
  return v11(v19, 0);
}

uint64_t sub_26708A960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708A9C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LCServiceLoggingConfiguration.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v21 = v1;
  v22 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3BB0, 0x277D58538);
  sub_266ECAF2C(&qword_2800F3BB8, &qword_2800F3BB0, 0x277D58538);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267451DB0);
  v12(v23, 0);
  v13 = *MEMORY[0x277D3E508];
  v14 = *(v22 + 104);
  v22 += 104;
  v20[0] = v14;
  v14(v5, v13, v21);
  v23[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267451DD0);
  v15(v23, 0);
  sub_266ECB294(0, &qword_2800F3BD8, 0x277D58500);
  sub_266ECAF2C(&qword_2800F3BD0, &qword_2800F3BD8, 0x277D58500);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x746163696C707061, 0xEC000000736E6F69);
  v16(v23, 0);
  (v20[0])(v5, *MEMORY[0x277D3E530], v21);
  v23[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267451DF0);
  v17(v23, 0);
  type metadata accessor for SISchemaAnyEventType(0);
  sub_26708B0A0();
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267451E10);
  return v18(v23, 0);
}

uint64_t sub_26708AFDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708B040(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26708B0A0()
{
  result = qword_2800F3C30;
  if (!qword_2800F3C30)
  {
    type metadata accessor for SISchemaAnyEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3C30);
  }

  return result;
}

uint64_t static LCServiceLoggingParameters.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_26738113C();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for LCServiceQOSClass(0);
  sub_26708BB28(&qword_2800F3C38, type metadata accessor for LCServiceQOSClass);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v48 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 7565169, 0xE300000000000000);
  v14(v51, 0);
  v44 = "onfigservice.LoggingParameters";
  v15 = *MEMORY[0x277D3E508];
  v16 = v2 + 104;
  v47 = *(v2 + 104);
  v17 = v50;
  v47(v5, v15, v50);
  v49 = v16;
  v51[0] = 1;
  sub_26738114C();
  v43 = v10;
  v12(v9, 0, 1, v10);
  v18 = v12;
  v46 = a1;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v44 | 0x8000000000000000);
  v19(v51, 0);
  v44 = "messageSizeQuotaInBytes";
  v20 = v47;
  v47(v5, v15, v17);
  v51[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v44 | 0x8000000000000000);
  v21(v51, 0);
  v41 = "totalDiskSizeQuotaInBytes";
  LODWORD(v44) = *MEMORY[0x277D3E4E8];
  v45 = v5;
  v22 = v50;
  v23 = v20;
  (v20)(v5);
  v51[0] = 1;
  sub_26738114C();
  v24 = v43;
  v18(v9, 0, 1, v43);
  v42 = v18;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v41 | 0x8000000000000000);
  v25(v51, 0);
  v41 = "optOutOfCompression";
  v26 = *MEMORY[0x277D3E500];
  v23(v45, v26, v22);
  v51[0] = 1;
  sub_26738114C();
  v27 = v24;
  v18(v9, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v41 | 0x8000000000000000);
  v28(v51, 0);
  v29 = v45;
  v30 = v22;
  v31 = v47;
  v47(v45, v26, v30);
  v51[0] = 1;
  sub_26738114C();
  v32 = v42;
  v42(v9, 0, 1, v24);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267451EE0);
  v33(v51, 0);
  v34 = v50;
  v31(v29, *MEMORY[0x277D3E4F8], v50);
  v51[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v24);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x79706F72746E65, 0xE700000000000000);
  v35(v51, 0);
  v36 = v34;
  v37 = v47;
  v47(v29, v44, v36);
  v51[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v24);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267451F00);
  v38(v51, 0);
  v37(v29, *MEMORY[0x277D3E530], v50);
  v51[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267451F20);
  return v39(v51, 0);
}

uint64_t sub_26708BA1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708BA80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26708BB28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26708BB70()
{
  result = qword_2800F3BB0;
  if (!qword_2800F3BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3BB0);
  }

  return result;
}

uint64_t static LCServiceQOSClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x7373616C43534F51, 0xEB00000000776F4CLL, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x7373616C43534F51, 0xEE006D756964654DLL, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x7373616C43534F51, 0xEC00000068676948, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26708BDCC(uint64_t a1)
{
  v2 = sub_26708BED0(&qword_2800F3C40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26708BE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_26708BED0(&qword_2800F3C40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26708BED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LCServiceQOSClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LINKSchemaLINKActionPresentationStyle.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267451FB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267451FE0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267452010, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267452040, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26708C198(uint64_t a1)
{
  v2 = sub_26708C29C(&qword_2800F3C48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26708C200(uint64_t a1, uint64_t a2)
{
  v4 = sub_26708C29C(&qword_2800F3C48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26708C29C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LINKSchemaLINKActionPresentationStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LINKSchemaLINKParameterType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674520A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v146;

  v1(v170, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x80000002674520C0, v11);
  v12 = *v9;
  *v9 = v147;

  v7(v170, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674520E0, v17);
  v18 = *v15;
  *v15 = v148;

  v13(v170, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267452100, v23);
  v24 = *v21;
  *v21 = v149;

  v19(v170, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267452130, v29);
  v30 = *v27;
  *v27 = v150;

  v25(v170, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267452150, v35);
  v36 = *v33;
  *v33 = v151;

  v31(v170, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267452170, v41);
  v42 = *v39;
  *v39 = v152;

  v37(v170, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x80000002674521A0, v47);
  v48 = *v45;
  *v45 = v153;

  v43(v170, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x80000002674521C0, v53);
  v54 = *v51;
  *v51 = v154;

  v49(v170, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000016, 0x80000002674521E0, v59);
  v60 = *v57;
  *v57 = v155;

  v55(v170, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267452200, v65);
  v66 = *v63;
  *v63 = v156;

  v61(v170, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000015, 0x8000000267452220, v71);
  v72 = *v69;
  *v69 = v157;

  v67(v170, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267452240, v77);
  v78 = *v75;
  *v75 = v158;

  v73(v170, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x8000000267452260, v83);
  v84 = *v81;
  *v81 = v159;

  v79(v170, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ELL, 0x8000000267452280, v89);
  v90 = *v87;
  *v87 = v160;

  v85(v170, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000026, 0x80000002674522A0, v95);
  v96 = *v93;
  *v93 = v161;

  v91(v170, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000016, 0x80000002674522D0, v101);
  v102 = *v99;
  *v99 = v162;

  v97(v170, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x80000002674522F0, v107);
  v108 = *v105;
  *v105 = v163;

  v103(v170, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000018, 0x8000000267452310, v113);
  v114 = *v111;
  *v111 = v164;

  v109(v170, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001FLL, 0x8000000267452330, v119);
  v120 = *v117;
  *v117 = v165;

  v115(v170, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000024, 0x8000000267452350, v125);
  v126 = *v123;
  *v123 = v166;

  v121(v170, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000018, 0x8000000267452380, v131);
  v132 = *v129;
  *v129 = v167;

  v127(v170, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000017, 0x80000002674523A0, v137);
  v138 = *v135;
  *v135 = v168;

  v133(v170, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000015, 0x80000002674523C0, v143);
  v144 = *v141;
  *v141 = v169;

  return v139(v170, 0);
}

uint64_t sub_26708CE40(uint64_t a1)
{
  v2 = sub_26708CF44(&qword_2800F3C50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26708CEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26708CF44(&qword_2800F3C50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26708CF44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LINKSchemaLINKParameterType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LINKSchemaLINKSystemActionProtocol.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267452420, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v164;

  v1(v191, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267452450, v11);
  v12 = *v9;
  *v9 = v165;

  v7(v191, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267452480, v17);
  v18 = *v15;
  *v15 = v166;

  v13(v191, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674524C0, v23);
  v24 = *v21;
  *v21 = v167;

  v19(v191, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x80000002674524F0, v29);
  v30 = *v27;
  *v27 = v168;

  v25(v191, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x8000000267452520, v35);
  v36 = *v33;
  *v33 = v169;

  v31(v191, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x8000000267452550, v41);
  v42 = *v39;
  *v39 = v170;

  v37(v191, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267452580, v47);
  v48 = *v45;
  *v45 = v171;

  v43(v191, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x80000002674525B0, v53);
  v54 = *v51;
  *v51 = v172;

  v49(v191, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002DLL, 0x80000002674525E0, v59);
  v60 = *v57;
  *v57 = v173;

  v55(v191, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000030, 0x8000000267452610, v65);
  v66 = *v63;
  *v63 = v174;

  v61(v191, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002CLL, 0x8000000267452650, v71);
  v72 = *v69;
  *v69 = v175;

  v67(v191, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002BLL, 0x8000000267452680, v77);
  v78 = *v75;
  *v75 = v176;

  v73(v191, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002FLL, 0x80000002674526B0, v83);
  v84 = *v81;
  *v81 = v177;

  v79(v191, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002CLL, 0x80000002674526E0, v89);
  v90 = *v87;
  *v87 = v178;

  v85(v191, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000030, 0x8000000267452710, v95);
  v96 = *v93;
  *v93 = v179;

  v91(v191, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000035, 0x8000000267452750, v101);
  v102 = *v99;
  *v99 = v180;

  v97(v191, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002BLL, 0x8000000267452790, v107);
  v108 = *v105;
  *v105 = v181;

  v103(v191, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000025, 0x80000002674527C0, v113);
  v114 = *v111;
  *v111 = v182;

  v109(v191, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000039, 0x80000002674527F0, v119);
  v120 = *v117;
  *v117 = v183;

  v115(v191, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000026, 0x8000000267452830, v125);
  v126 = *v123;
  *v123 = v184;

  v121(v191, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000002BLL, 0x8000000267452860, v131);
  v132 = *v129;
  *v129 = v185;

  v127(v191, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000026, 0x8000000267452890, v137);
  v138 = *v135;
  *v135 = v186;

  v133(v191, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000026, 0x80000002674528C0, v143);
  v144 = *v141;
  *v141 = v187;

  v139(v191, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000025, 0x80000002674528F0, v149);
  v150 = *v147;
  *v147 = v188;

  v145(v191, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000024, 0x8000000267452920, v155);
  v156 = *v153;
  *v153 = v189;

  v151(v191, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000024, 0x8000000267452950, v161);
  v162 = *v159;
  *v159 = v190;

  return v157(v191, 0);
}

uint64_t sub_26708DC3C(uint64_t a1)
{
  v2 = sub_26708DD40(&qword_2800F3C58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26708DCA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26708DD40(&qword_2800F3C58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26708DD40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LINKSchemaLINKSystemActionProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LRSchemaLRClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3C60, 0x277D58560);
  sub_266ECAF2C(&qword_2800F3C68, &qword_2800F3C60, 0x277D58560);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674529B0);
  v10(v19, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v0);
  v11(v19, 0);
  sub_266ECB128(&unk_287887E08);
  return sub_2673811CC();
}

uint64_t sub_26708E0D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26708E16C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26708E238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708E29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26708E2FC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3C70, &qword_2800F2000, 0x277D58540);
  a1[2] = sub_266ECAF2C(&qword_2800F3C78, &qword_2800F2000, 0x277D58540);
  result = sub_266ECAF2C(&qword_2800F3C80, &qword_2800F2000, 0x277D58540);
  a1[3] = result;
  return result;
}

uint64_t static LRSchemaLRComponentIdentifierRedactionSignal.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3C88, 0x277D5A9E0);
  sub_266ECAF2C(&qword_2800F3C90, &qword_2800F3C88, 0x277D5A9E0);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656E6F706D6F63, 0xEB00000000644974);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267452A10);
  return v11(v15, 0);
}

uint64_t sub_26708E738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708E79C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LRSchemaLRPreprocessorInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19[1] = a2;
  sub_26738119C();
  v20 = "edaction.LRPreprocessorInfo";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E540], v3);
  v22[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002BLL, v20 | 0x8000000000000000);
  v15(v22, 0);
  v12(v7, *MEMORY[0x277D3E4E8], v3);
  v22[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x8000000267452A90);
  v16(v22, 0);
  type metadata accessor for LRSchemaLRPreProcessorTriggerReason(0);
  sub_26708ED48(&qword_2800F3CA8, type metadata accessor for LRSchemaLRPreProcessorTriggerReason);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267452AB0);
  return v17(v22, 0);
}

uint64_t sub_26708EC3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708ECA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26708ED48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26708ED90()
{
  result = qword_2800F3CB8;
  if (!qword_2800F3CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3CB8);
  }

  return result;
}

uint64_t static LRSchemaLRPreProcessorTriggerReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267452B10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267452B40, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267452B70, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267452BA0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26708F060(uint64_t a1)
{
  v2 = sub_26708F164(&qword_2800F3CC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26708F0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26708F164(&qword_2800F3CC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26708F164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LRSchemaLRPreProcessorTriggerReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LRSchemaLRRedactionSignal.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v3 = sub_26738118C();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_26738113C();
  v40 = *(v35 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34[1] = a2;
  sub_26738119C();
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  sub_26708F960();
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v12, 0, 1, v13);
  v34[0] = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000010, 0x8000000267452C00);
  v17(v41, 0);
  v18 = *MEMORY[0x277D3E540];
  v19 = *(v40 + 104);
  v40 += 104;
  v20 = v35;
  v19(v8, v18, v35);
  v41[0] = 1;
  sub_26738114C();
  v15(v12, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001ELL, 0x8000000267452C20);
  v21(v41, 0);
  v19(v8, *MEMORY[0x277D3E4E8], v20);
  v41[0] = 0;
  sub_26738114C();
  v15(v12, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x8000000267452C40);
  v22(v41, 0);
  sub_266ECB294(0, &qword_2800F3CD0, 0x277D58568);
  sub_266ECAF2C(&qword_2800F3CD8, &qword_2800F3CD0, 0x277D58568);
  sub_26738121C();
  v15(v12, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E617053656D6974, 0xE800000000000000);
  v23(v41, 0);
  sub_266ECB294(0, &qword_2800F3CA0, 0x277D58548);
  sub_266ECAF2C(&qword_2800F3C98, &qword_2800F3CA0, 0x277D58548);
  sub_26738121C();
  v15(v12, 0, 1, v13);
  v24 = v37;
  v25 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E656E6F706D6F63, 0xEB00000000644974);
  v25(v41, 0);
  sub_26738117C();
  v26 = sub_2673811BC();
  v28 = v27;
  v29 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_266ECAD54(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_266ECAD54(v31 > 1, v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  (*(v38 + 32))(v29 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v24, v39);
  return v26(v41, 0);
}

uint64_t sub_26708F89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26708F900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26708F960()
{
  result = qword_2800F3CC8;
  if (!qword_2800F3CC8)
  {
    type metadata accessor for SISchemaDeviceSensitivityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3CC8);
  }

  return result;
}

uint64_t static LRSchemaLRRedactionSummaryReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v35 = v2 + 104;
  v36 = v1;
  v33 = v11;
  v11(v5, v10, v1);
  v39[0] = 1;
  v34 = v5;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267452CA0);
  v15(v39, 0);
  sub_266ECB294(0, &qword_2800F3CF0, 0x277D58570);
  sub_266ECAF2C(&qword_2800F3CF8, &qword_2800F3CF0, 0x277D58570);
  sub_26738122C();
  v32 = v14;
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267452CC0);
  v16(v39, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v38, 0xD000000000000010, 0x8000000267452CC0);
  v31 = *(v13 + 48);
  if (!v31(v19, 1, v12))
  {
    sub_266ECB128(&unk_287887E40);
    sub_26738115C();
  }

  (v18)(v38, 0);
  v17(v39, 0);
  sub_266ECB294(0, &qword_2800F3CE8, 0x277D58558);
  sub_266ECAF2C(&qword_2800F3CE0, &qword_2800F3CE8, 0x277D58558);
  sub_26738122C();
  v20 = v32;
  v32(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267452CE0);
  v21(v39, 0);
  v33(v34, *MEMORY[0x277D3E540], v36);
  v39[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267452D00);
  v22(v39, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v38, 0xD00000000000001CLL, 0x8000000267452D00);
  if (!v31(v25, 1, v12))
  {
    sub_266ECB128(&unk_287887E68);
    sub_26738115C();
  }

  (v24)(v38, 0);
  v23(v39, 0);
  sub_266ECB294(0, &qword_2800F3CB8, 0x277D58550);
  sub_266ECAF2C(&qword_2800F3CB0, &qword_2800F3CB8, 0x277D58550);
  sub_26738120C();
  v26 = v32;
  v32(v9, 0, 1, v12);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267452D20);
  v27(v39, 0);
  v33(v34, *MEMORY[0x277D3E518], v36);
  v39[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v12);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267452D40);
  return v28(v39, 0);
}

uint64_t sub_2670901B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267090218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LRSchemaLRTimespanRedactionSignal.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D69547472617473, 0xED0000734E6E4965);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  return v16(v20, 0);
}

uint64_t sub_2670905F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267090654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670906B8()
{
  result = qword_2800F3CD8;
  if (!qword_2800F3CD8)
  {
    sub_267090710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3CD8);
  }

  return result;
}

unint64_t sub_267090710()
{
  result = qword_2800F3CD0;
  if (!qword_2800F3CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3CD0);
  }

  return result;
}