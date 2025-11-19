uint64_t VCSettings.removePronunciations(from:)(uint64_t a1)
{
  v142 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v149 = &v127 - v3;
  v147 = sub_2723FE294();
  v144 = *(v147 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x28223BE20](v147);
  v148 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2723FE2D4();
  v141 = *(v6 - 8);
  v7 = *(v141 + 64);
  MEMORY[0x28223BE20](v6);
  v140 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2723FE344();
  v138 = *(v9 - 8);
  v139 = v9;
  v10 = *(v138 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v127 - v14;
  v146 = type metadata accessor for VCVocabularyEntry();
  v136 = *(v146 - 1);
  v15 = *(v136 + 64);
  v16 = MEMORY[0x28223BE20](v146);
  v135 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v127 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v127 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v127 - v27);
  v29 = sub_2723FE434();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v34 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_35;
  }

  v35 = sub_2723E4FAC(8);
  if ((v36 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v33 = sub_2723E4504(0, v33[2] + 1, 1, v33);
    goto LABEL_29;
  }

  v143 = v6;
  sub_2723D9360(v34[7] + *(v25 + 72) * v35, v28, &qword_280893F50, &qword_2723FFCE8);

  v37 = v29;
  (*(v30 + 32))(v33, v28 + *(v24 + 48), v29);
  v38 = v142;
  sub_2723D5C78(v142, v23);
  v39 = v137;
  sub_2723D5C78(v38, v137);
  v40 = sub_2723FE424();
  v41 = sub_2723FE8A4();
  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v131) = v41;
    v132 = v40;
    v133 = v13;
    v42 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v150 = v130;
    *v42 = 141558531;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2085;
    v43 = v146;
    v44 = &v23[v146[5]];
    v45 = *v44;
    v46 = v44[1];

    sub_2723E5038(v23);
    v47 = sub_2723E4A00(v45, v46, &v150);

    *(v42 + 14) = v47;
    *(v42 + 22) = 2082;
    v48 = (v39 + v43[8]);
    if (v48[1])
    {
      v49 = *v48;
      v51 = v140;
      v50 = v141;
      v52 = v143;
      (*(v141 + 104))(v140, *MEMORY[0x277CC9668], v143);
      v53 = sub_2723FE2C4();
      v55 = v54;
      v56 = *(v50 + 8);
      v57 = v51;
      v37 = v29;
      v58 = MEMORY[0x277D837D0];
      v56(v57, v52);
      v155 = v53;
      v156 = v55;
      v153 = 45;
      v154 = 0xE100000000000000;
      v151 = 95;
      v152 = 0xE100000000000000;
      v125 = sub_2723CD24C();
      v126 = v125;
      v123 = v58;
      v124 = v125;
      sub_2723FE984();

      v59 = v134;
      v60 = sub_2723FE2A4();
      v13 = v133;
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v129 = qword_280894080;
      v128 = sub_2723EC124();
      v63 = v62;
      v13 = v133;
      v59 = v134;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v127 = qword_280894088;
      v64 = [objc_opt_self() sharedPreferences];
      v65 = [v64 languageCode];

      if (v65)
      {
        v66 = sub_2723FE5B4();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v127, v128, v63, v66, v68, v59);
    }

    v69 = MEMORY[0x2743C6F10](v60);
    v71 = v70;
    (*(v138 + 8))(v59, v139);
    sub_2723E5038(v137);
    v72 = sub_2723E4A00(v69, v71, &v150);

    *(v42 + 24) = v72;
    v73 = v132;
    _os_log_impl(&dword_2723CB000, v132, v131, "VCSettings.removePronunciations textOfEntry: %{sensitive,mask.hash}s, localeOfEntry: %{public}s", v42, 0x20u);
    v74 = v130;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v74, -1, -1);
    MEMORY[0x2743C8040](v42, -1, -1);

    v61 = (*(v30 + 8))(v33, v37);
    v38 = v142;
  }

  else
  {

    sub_2723E5038(v23);
    (*(v30 + 8))(v33, v29);
    v61 = sub_2723E5038(v39);
  }

  MEMORY[0x28223BE20](v61);
  v125 = v38;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E6380, &v123);
  v75 = v144;
  v76 = *(v144 + 16);
  v77 = v147;
  v134 = (v144 + 16);
  v133 = v76;
  (v76)(v148, v38, v147);
  v78 = v149;
  sub_2723FE284();
  v132 = *(v75 + 56);
  (v132)(v78, 0, 1, v77);
  v79 = (v38 + v146[8]);
  v81 = v140;
  v80 = v141;
  if (v79[1])
  {
    v82 = *v79;
    v83 = *(v141 + 104);
    LODWORD(v137) = *MEMORY[0x277CC9668];
    v84 = v143;
    v83(v140);
    v85 = sub_2723FE2C4();
    v87 = v86;
    (*(v80 + 8))(v81, v84);
    v155 = v85;
    v156 = v87;
    v153 = 45;
    v154 = 0xE100000000000000;
    v151 = 95;
    v152 = 0xE100000000000000;
    v125 = sub_2723CD24C();
    v126 = v125;
    v124 = v125;
    v88 = MEMORY[0x277D837D0];
    v123 = MEMORY[0x277D837D0];
    sub_2723FE984();

    sub_2723FE2A4();
    v89 = v13;
    v90 = v80;
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v91 = sub_2723EC124();
    v93 = v92;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v94 = qword_280894088;
    v95 = [objc_opt_self() sharedPreferences];
    v96 = [v95 languageCode];

    if (v96)
    {
      v97 = sub_2723FE5B4();
      v99 = v98;
    }

    else
    {
      v97 = 0;
      v99 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v94, v91, v93, v97, v99, v13);

    LODWORD(v137) = *MEMORY[0x277CC9668];
    v89 = v13;
    v90 = v141;
    v38 = v142;
    v81 = v140;
    v88 = MEMORY[0x277D837D0];
  }

  v100 = v146;
  v101 = v146[6];
  v102 = (v38 + v146[5]);
  v103 = v102[1];
  v141 = *v102;
  v142 = v101;
  v131 = v103;
  v104 = v146[7];
  v105 = v145;
  v106 = v147;
  (v132)(v145 + v104, 1, 1, v147);
  v107 = v100[8];
  *(v105 + v100[9]) = 2;
  v140 = (v105 + v107);
  *(v105 + v100[10]) = xmmword_2723FFC50;
  (v133)(v105, v148, v106);

  sub_2723E50B8(v149, v105 + v104);
  v108 = v89;
  sub_2723FE2B4();
  v109 = v143;
  (*(v90 + 104))(v81, v137, v143);
  v110 = sub_2723FE2C4();
  v112 = v111;

  (*(v90 + 8))(v81, v109);
  v155 = v110;
  v156 = v112;
  v153 = 45;
  v154 = 0xE100000000000000;
  v151 = 95;
  v152 = 0xE100000000000000;
  v125 = sub_2723CD24C();
  v126 = v125;
  v123 = v88;
  v124 = v125;
  v113 = sub_2723FE984();
  v115 = v114;

  (*(v138 + 8))(v108, v139);
  sub_2723D9188(v149, &qword_280893EB0, &unk_2723FFC80);
  (*(v144 + 8))(v148, v147);
  v116 = v140;
  v117 = v141;
  *v140 = v113;
  v116[1] = v115;
  v118 = (v105 + v100[5]);
  v119 = v131;
  *v118 = v117;
  v118[1] = v119;
  *(v105 + v142) = 0;
  v13 = v135;
  sub_2723D5C78(v105, v135);
  v33 = sub_2723E6C70();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  v121 = v33[2];
  v120 = v33[3];
  if (v121 >= v120 >> 1)
  {
    v33 = sub_2723E4504(v120 > 1, v121 + 1, 1, v33);
  }

  v33[2] = v121 + 1;
  sub_2723D8978(v13, v33 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v121);
  sub_2723E7238(v33);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return sub_2723E5038(v145);
}

uint64_t sub_2723E2270(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE344();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v72 = 0;
  v73 = 0xE000000000000000;
  v65 = type metadata accessor for VCVocabularyEntry();
  v15 = *(v65 + 32);
  v60 = a1;
  v16 = (a1 + v15);
  v17 = v16[1];
  v63 = v8;
  if (v17)
  {
    v18 = *v16;
    (*(v4 + 104))(v7, *MEMORY[0x277CC9668], v3);
    v19 = sub_2723FE2C4();
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v70 = v19;
    v71 = v21;
    v68 = 45;
    v69 = 0xE100000000000000;
    v66 = 95;
    v67 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
    v22 = v62;
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v64 = v9;
    v59 = sub_2723EC124();
    v24 = v23;
    v25 = v62;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v58 = qword_280894088;
    v26 = [objc_opt_self() sharedPreferences];
    v27 = [v26 languageCode];

    if (v27)
    {
      v28 = sub_2723FE5B4();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v58, v59, v24, v28, v30, v14);

    v22 = v25;
    v8 = v63;
    v9 = v64;
  }

  v31 = sub_2723FE2B4();
  v33 = v32;
  v34 = v9 + 8;
  v35 = *(v9 + 8);
  v64 = v34;
  v35(v14, v8);
  MEMORY[0x2743C7290](v31, v33);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  v36 = v65;
  MEMORY[0x2743C7290](*(v60 + *(v65 + 20)), *(v60 + *(v65 + 20) + 8));
  v38 = v72;
  v37 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  v39 = (v22 + *(v36 + 32));
  if (v39[1])
  {
    v40 = *v39;
    (*(v4 + 104))(v7, *MEMORY[0x277CC9668], v3);
    v41 = sub_2723FE2C4();
    v43 = v42;
    (*(v4 + 8))(v7, v3);
    v70 = v41;
    v71 = v43;
    v68 = 45;
    v69 = 0xE100000000000000;
    v66 = 95;
    v67 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    v44 = v61;
    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v60 = sub_2723EC124();
    v46 = v45;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v47 = qword_280894088;
    v48 = [objc_opt_self() sharedPreferences];
    v49 = [v48 languageCode];

    if (v49)
    {
      v50 = sub_2723FE5B4();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    sub_2723FE2F4();
    v44 = v61;
    sub_2723EB6EC(v47, v60, v46, v50, v52, v61);

    v22 = v62;
  }

  v53 = sub_2723FE2B4();
  v55 = v54;
  v35(v44, v63);
  MEMORY[0x2743C7290](v53, v55);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  MEMORY[0x2743C7290](*(v22 + *(v65 + 20)), *(v22 + *(v65 + 20) + 8));
  if (v38 == v72 && v37 == v73)
  {
    v56 = 1;
  }

  else
  {
    v56 = sub_2723FEC44();
  }

  return v56 & 1;
}

Swift::Void __swiftcall VCSettings._removeAllVocabularyEntriesFromCloud()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v17 - v3);
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v10 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = sub_2723E4FAC(8);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_2723D9360(v10[7] + *(v1 + 72) * v11, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v6 + 32))(v9, v4 + *(v0 + 48), v5);
  v13 = sub_2723FE424();
  v14 = sub_2723FE8A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2723CB000, v13, v14, "VCSettings._removeAllVocabularyEntriesFromCloud()", v15, 2u);
    MEMORY[0x2743C8040](v15, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v16 = *MEMORY[0x277CBED28];
  RXObjectSetProperty();
}

uint64_t VCSettings.removeVocabularyEntries(texts:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-v7];
  v9 = sub_2723FE434();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v15 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(8);
  if ((v16 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v15[7] + *(v5 + 72) * result, v8, &qword_280893F50, &qword_2723FFCE8);

  (*(v10 + 32))(v14, v8 + *(v4 + 48), v9);
  v17 = sub_2723FE424();
  v18 = sub_2723FE8A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2723CB000, v17, v18, "VCSettings(ObjC).removeVocabularyEntries", v19, 2u);
    MEMORY[0x2743C8040](v19, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
  v20 = sub_2723E6C70();
  MEMORY[0x28223BE20](v20);
  *&v24[-16] = a1;
  *&v24[-8] = a2;
  v22 = sub_2723D277C(sub_2723E6320, &v24[-32], v21);
  v23 = VCSettings.removeVocabularyEntries(_:)(v22);

  return v23;
}

uint64_t sub_2723E2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v6 = sub_2723FE2D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2723FE344();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VCVocabularyEntry();
  v16 = (a1 + *(v15 + 20));
  v18 = *v16;
  v17 = v16[1];
  v43 = v18;
  v44 = v17;
  v38 = &v43;
  if (sub_2723E718C(sub_2723CE15C, v37, a2))
  {
    v35 = v3;
    v19 = (a1 + *(v15 + 32));
    if (v19[1])
    {
      v20 = *v19;
      (*(v7 + 104))(v10, *MEMORY[0x277CC9668], v6);
      v21 = sub_2723FE2C4();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v43 = v21;
      v44 = v23;
      v41 = 45;
      v42 = 0xE100000000000000;
      v39 = 95;
      v40 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v25 = sub_2723EC124();
      v27 = v26;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v28 = qword_280894088;
      v29 = [objc_opt_self() sharedPreferences];
      v30 = [v29 languageCode];

      if (v30)
      {
        v31 = sub_2723FE5B4();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v28, v25, v27, v31, v33, v14);
    }

    v24 = MEMORY[0x2743C6F40](v14, v45);
    (*(v11 + 8))(v14, v36);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t VCSettings.setPronunciations(pronunciations:forText:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v32 = a1;
  v33 = a2;
  v4 = type metadata accessor for VCVocabularyEntry();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - v14);
  v16 = sub_2723FE434();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v22 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2723E4FAC(8);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2723D9360(v22[7] + *(v12 + 72) * result, v15, &qword_280893F50, &qword_2723FFCE8);

  (*(v17 + 32))(v21, v15 + *(v11 + 48), v16);
  v24 = sub_2723FE424();
  v25 = sub_2723FE8A4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2723CB000, v24, v25, "VCSettings(ObjC).setPronunciations", v26, 2u);
    MEMORY[0x2743C8040](v26, -1, -1);
  }

  (*(v17 + 8))(v21, v16);
  v27 = sub_2723E6C70();
  MEMORY[0x28223BE20](v27);
  v28 = v34;
  *(&v31 - 4) = v33;
  *(&v31 - 3) = v28;
  *(&v31 - 2) = v35;
  v30 = sub_2723D277C(sub_2723E6340, (&v31 - 6), v29);
  if (!*(v30 + 16))
  {
  }

  sub_2723D5C78(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v8);

  sub_2723D8978(v8, v10);
  VCSettings.setPronunciations(pronunciations:for:)(v32, v10);
  return sub_2723E5038(v10);
}

uint64_t VCSettings.removePronunciations(fromText:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v3 = type metadata accessor for VCVocabularyEntry();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v30 - v13);
  v15 = sub_2723FE434();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v21 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2723E4FAC(8);
  if ((v22 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2723D9360(v21[7] + *(v11 + 72) * result, v14, &qword_280893F50, &qword_2723FFCE8);

  (*(v16 + 32))(v20, v14 + *(v10 + 48), v15);
  v23 = sub_2723FE424();
  v24 = sub_2723FE8A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2723CB000, v23, v24, "VCSettings(ObjC).removePronunciations", v25, 2u);
    MEMORY[0x2743C8040](v25, -1, -1);
  }

  (*(v16 + 8))(v20, v15);
  v26 = sub_2723E6C70();
  MEMORY[0x28223BE20](v26);
  v27 = v33;
  *(&v30 - 4) = v32;
  *(&v30 - 3) = v27;
  *(&v30 - 2) = v34;
  v29 = sub_2723D277C(sub_2723E6364, (&v30 - 6), v28);
  if (!*(v29 + 16))
  {
  }

  sub_2723D5C78(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v7);

  sub_2723D8978(v7, v9);
  VCSettings.removePronunciations(from:)(v9);
  return sub_2723E5038(v9);
}

uint64_t sub_2723E39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = sub_2723FE2D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2723FE344();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VCVocabularyEntry();
  v17 = (a1 + *(v16 + 20));
  v18 = *v17 == a2 && v17[1] == a3;
  if (v18 || (v19 = 0, (sub_2723FEC44() & 1) != 0))
  {
    v20 = (a1 + *(v16 + 32));
    if (v20[1])
    {
      v21 = *v20;
      (*(v8 + 104))(v11, *MEMORY[0x277CC9668], v7);
      v22 = sub_2723FE2C4();
      v24 = v23;
      (*(v8 + 8))(v11, v7);
      v41 = v22;
      v42 = v24;
      v39 = 45;
      v40 = 0xE100000000000000;
      v37 = 95;
      v38 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v25 = sub_2723EC124();
      v27 = v26;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v28 = qword_280894088;
      v29 = [objc_opt_self() sharedPreferences];
      v30 = [v29 languageCode];

      if (v30)
      {
        v31 = sub_2723FE5B4();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v28, v25, v27, v31, v33, v15);
    }

    v19 = MEMORY[0x2743C6F40](v15, v36);
    (*(v12 + 8))(v15, v35);
  }

  return v19 & 1;
}

unint64_t VCSettings.brokderdGetRawVocabularyEntries()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v17 - v3);
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2723E6C70();
  v11 = result;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v12 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v13 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v12[7] + *(v1 + 72) * result, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v6 + 32))(v9, v4 + *(v0 + 48), v5);

  v14 = sub_2723FE424();
  v15 = sub_2723FE884();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = *(v11 + 16);

    _os_log_impl(&dword_2723CB000, v14, v15, "brokderdGetRawVocabularyEntries count: %{public}ld", v16, 0xCu);
    MEMORY[0x2743C8040](v16, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
  return v11;
}

Swift::Void __swiftcall VCSettings.brokderdSetRawVocabularyEntries(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - v5);
  v7 = sub_2723FE434();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v12 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_2723E4FAC(8);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_2723D9360(v12[7] + *(v3 + 72) * v13, v6, &qword_280893F50, &qword_2723FFCE8);

  (*(v8 + 32))(v11, v6 + *(v2 + 48), v7);

  v15 = sub_2723FE424();
  v16 = sub_2723FE884();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = *(a1._rawValue + 2);

    _os_log_impl(&dword_2723CB000, v15, v16, "brokderdSetRawVocabularyEntries count: %{public}ld", v17, 0xCu);
    MEMORY[0x2743C8040](v17, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);

  sub_2723E7238(v18);
}

char *sub_2723E42F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894060, &qword_2724009B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2723E43F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2723E4504(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894078, &qword_272400068);
  v10 = *(type metadata accessor for VCVocabularyEntry() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for VCVocabularyEntry() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2723E46DC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2723E48CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894068, &qword_272400060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2723E4A00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2723E4ACC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2723D9230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2723E4ACC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2723E4BD8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2723FEA94();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2723E4BD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2723E4C24(a1, a2);
  sub_2723E4D54(&unk_28819F700);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2723E4C24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2723ED4E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2723FEA94();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2723FE684();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2723ED4E0(v10, 0);
        result = sub_2723FEA34();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2723E4D54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2723E4E40(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2723E4E40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894070, &qword_272400420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2723E4F34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2723FEC94();
  sub_2723FE634();
  v6 = sub_2723FECB4();

  return sub_2723E5130(a1, a2, v6);
}

unint64_t sub_2723E4FAC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  v4 = sub_2723FECB4();

  return sub_2723E51E8(a1, v4);
}

uint64_t sub_2723E5038(uint64_t a1)
{
  v2 = type metadata accessor for VCVocabularyEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723E50B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723E5130(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2723FEC44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2723E51E8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    while (1)
    {
      v15 = *(*(v6 + 48) + v5);
      v8 = VCLogging.Category.rawValue.getter();
      v10 = v9;
      if (v8 == VCLogging.Category.rawValue.getter() && v10 == v11)
      {
        break;
      }

      v13 = sub_2723FEC44();

      if ((v13 & 1) == 0)
      {
        v5 = (v5 + 1) & v7;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_2723E5304(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for VCVocabularyEntry() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_2723E5404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for VCVocabularyEntry();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v17 - v3);
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v11 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(8);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v11[7] + *(v1 + 72) * result, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v6 + 32))(v10, v4 + *(v0 + 48), v5);
  v13 = sub_2723FE424();
  v14 = sub_2723FE8A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2723CB000, v13, v14, "VCSettings.triggerVocabularySyncIfNecessary()", v15, 2u);
    MEMORY[0x2743C8040](v15, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  v16 = *MEMORY[0x277CBED28];
  return RXObjectSetProperty();
}

uint64_t sub_2723E57E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2723E5848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = v83 - v6;
  v97 = sub_2723FE2D4();
  v7 = *(v97 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2723FE344();
  v10 = *(v107 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v107);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v84 = *(v86 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = (v83 - v15);
  v89 = sub_2723FE434();
  v88 = *(v89 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VCVocabularyEntry();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v108 = v83 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v83 - v26;
  v28 = sub_2723E6C70();
  v29 = *(v28 + 16);
  if (v29)
  {
    v106 = v13;
    v83[2] = a1;
    v30 = v27;
    v31 = 0;
    v109 = 0;
    v32 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v83[1] = v28;
    v102 = v32;
    v33 = v10;
    v34 = v28 + v32;
    v35 = (v30 + *(v18 + 32));
    v91 = v18;
    v36 = *(v18 + 20);
    v110 = v30;
    v104 = (v30 + v36);
    v95 = (v7 + 104);
    v94 = (v7 + 8);
    v100 = *(v19 + 72);
    v93 = *MEMORY[0x277CC9668];
    v103 = (v33 + 8);
    v37 = MEMORY[0x277D84F90];
    v105 = v23;
    v38 = v108;
    v101 = v35;
    v90 = a2;
    do
    {
      v39 = v110;
      sub_2723D5C78(v34, v110);
      sub_2723D5C78(v39, v38);
      v117[0] = 0;
      v117[1] = 0xE000000000000000;
      if (v35[1])
      {
        v40 = *v35;
        v41 = v96;
        v42 = v97;
        (*v95)(v96, v93, v97);
        v43 = sub_2723FE2C4();
        v45 = v44;
        (*v94)(v41, v42);
        v115 = v43;
        v116 = v45;
        v113 = 45;
        v114 = 0xE100000000000000;
        v111 = 95;
        v112 = 0xE100000000000000;
        v81 = sub_2723CD24C();
        v82 = v81;
        v80[1] = v81;
        v80[0] = MEMORY[0x277D837D0];
        sub_2723FE984();

        v46 = a2;
        v47 = v106;
        sub_2723FE2A4();
      }

      else
      {
        if (qword_280893DC8 != -1)
        {
          swift_once();
        }

        v99 = v31;
        v98 = sub_2723EC124();
        v49 = v48;
        if (qword_280893E00 != -1)
        {
          swift_once();
        }

        v50 = qword_280894088;
        v51 = [objc_opt_self() sharedPreferences];
        v52 = [v51 languageCode];

        if (v52)
        {
          v53 = sub_2723FE5B4();
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        sub_2723FE2F4();
        v47 = v106;
        sub_2723EB6EC(v50, v98, v49, v53, v55, v106);

        v46 = v90;
        v31 = v99;
      }

      v56 = v107;
      v57 = sub_2723FE2B4();
      v59 = v58;
      (*v103)(v47, v56);
      MEMORY[0x2743C7290](v57, v59);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      v60 = MEMORY[0x2743C7290](*v104, v104[1]);
      MEMORY[0x28223BE20](v60);
      v81 = v117;
      v61 = v109;
      LOBYTE(v59) = sub_2723E718C(sub_2723CE180, v80, v46);
      v109 = v61;

      sub_2723E5038(v110);
      a2 = v46;
      if (v59)
      {
        v62 = v91;
        v38 = v108;
        v108[*(v91 + 36)] = 1;
        v63 = v92;
        sub_2723FE284();
        v64 = sub_2723FE294();
        (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
        sub_2723E6290(v63, v38 + *(v62 + 28));
        v65 = __OFADD__(v31++, 1);
        v66 = v105;
        if (v65)
        {
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v66 = v105;
        v38 = v108;
      }

      sub_2723D5C78(v38, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2723E4504(0, v37[2] + 1, 1, v37);
      }

      v68 = v37[2];
      v67 = v37[3];
      if (v68 >= v67 >> 1)
      {
        v37 = sub_2723E4504(v67 > 1, v68 + 1, 1, v37);
      }

      v37[2] = v68 + 1;
      v69 = v100;
      sub_2723D8978(v66, v37 + v102 + v68 * v100);
      sub_2723E5038(v38);
      v34 += v69;
      --v29;
      v35 = v101;
    }

    while (v29);
  }

  else
  {

    v31 = 0;
    v37 = MEMORY[0x277D84F90];
  }

  sub_2723E7238(v37);
  if (qword_280893E18 != -1)
  {
LABEL_31:
    swift_once();
  }

  v70 = off_280894260;
  v71 = v89;
  v72 = v88;
  v73 = v87;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_33;
  }

  v74 = sub_2723E4FAC(8);
  if ((v75 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v76 = v85;
  sub_2723D9360(v70[7] + *(v84 + 72) * v74, v85, &qword_280893F50, &qword_2723FFCE8);

  (*(v72 + 32))(v73, v76 + *(v86 + 48), v71);
  v77 = sub_2723FE424();
  v78 = sub_2723FE8A4();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 134349056;
    *(v79 + 4) = v31;
    _os_log_impl(&dword_2723CB000, v77, v78, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v79, 0xCu);
    MEMORY[0x2743C8040](v79, -1, -1);
  }

  (*(v72 + 8))(v73, v71);
}

uint64_t sub_2723E6290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VCSettings.activeLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2723EC124();
  v4 = v3;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v5 = qword_280894088;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    v8 = sub_2723FE5B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v5, v2, v4, v8, v10, a1);
}

uint64_t sub_2723E64B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657243;
  v4 = a1;
  v5 = 0x6574656C65447349;
  v6 = 0xE900000000000064;
  if (a1 != 5)
  {
    v5 = 0x6E6F697469646441;
    v6 = 0xEE006F666E496C61;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047316;
  if (a1 != 3)
  {
    v8 = 0x7341504974786554;
    v7 = 0xE800000000000000;
  }

  if (a1 > 4u)
  {
    v8 = v5;
    v7 = v6;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000272400A30;
  if (a1 != 1)
  {
    v9 = 0xD000000000000010;
    v10 = 0x8000000272400A50;
  }

  if (!a1)
  {
    v9 = 0x6E6F697461657243;
    v10 = 0xEC00000065746144;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000272400A30;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x8000000272400A50;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6574656C65447349)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEE006F666E496C61;
        if (v11 != 0x6E6F697469646441)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047316)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x7341504974786554;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_2723FEC44();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_2723E66D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v7 = 0xE400000000000000;
    v8 = 0x656C4564656D614ELL;
    v9 = 0xED000073746E656DLL;
    if (a1 != 2)
    {
      v8 = 0x64657265626D754ELL;
      v9 = 0xEC00000064697247;
    }

    v10 = 0xD000000000000010;
    if (a1)
    {
      v7 = 0x8000000272400C10;
    }

    else
    {
      v10 = 1701736270;
    }

    if (a1 <= 1u)
    {
      v5 = v10;
    }

    else
    {
      v5 = v8;
    }

    if (v2 <= 1)
    {
      v6 = v7;
    }

    else
    {
      v6 = v9;
    }
  }

  else if (a1 <= 5u)
  {
    v5 = 0x64657265626D754ELL;
    if (v2 == 4)
    {
      v6 = 0xED00007364726F57;
    }

    else
    {
      v6 = 0xED000073656E694CLL;
    }
  }

  else
  {
    v3 = 0x8000000272400C80;
    v4 = 0xD000000000000011;
    if (a1 != 7)
    {
      v4 = 0xD000000000000012;
      v3 = 0x8000000272400CA0;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 6)
    {
      v6 = 0x8000000272400C60;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v11 = 0x8000000272400C10;
        if (v5 != 0xD000000000000010)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        if (v5 != 1701736270)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v11 = 0xEC00000064697247;
      if (v5 != 0x64657265626D754ELL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v12 = 0x656C4564656D614ELL;
    v13 = 1953391981;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "NumberedCharacters";
      }

      else
      {
        if (a2 == 7)
        {
          v11 = 0x8000000272400C80;
          if (v5 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        v14 = "NumberedParagraphs";
      }

      v11 = (v14 - 32) | 0x8000000000000000;
      if (v5 != 0xD000000000000012)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v12 = 0x64657265626D754ELL;
    if (a2 == 4)
    {
      v13 = 1685221207;
    }

    else
    {
      v13 = 1701734732;
    }
  }

  v11 = v13 | 0xED00007300000000;
  if (v5 != v12)
  {
LABEL_51:
    v15 = sub_2723FEC44();
    goto LABEL_52;
  }

LABEL_49:
  if (v6 != v11)
  {
    goto LABEL_51;
  }

  v15 = 1;
LABEL_52:

  return v15 & 1;
}

uint64_t sub_2723E69CC()
{
  sub_2723FE634();
}

uint64_t VCSettings.bestSupportedLocale(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v6 = qword_280894088;
  v7 = [objc_opt_self() sharedPreferences];
  v8 = [v7 languageCode];

  if (v8)
  {
    v9 = sub_2723FE5B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v6, a1, a2, v9, v11, a3);
}

uint64_t sub_2723E6C70()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36[-v4];
  v6 = sub_2723FE434();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
  if (!v11)
  {
    v39 = 0u;
    v40 = 0u;
LABEL_9:
    sub_2723EF760(&v39);
LABEL_11:
    result = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_2723FE574();
  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    goto LABEL_9;
  }

  sub_2723D5A74(&v39, v41);
  v15 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v16 = sub_2723FEC34();
  *&v39 = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:&v39];
  swift_unknownObjectRelease();
  v18 = v39;
  if (!v17)
  {
    v25 = v18;
    v26 = sub_2723FE164();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v41);
    goto LABEL_11;
  }

  v19 = sub_2723FE224();
  v21 = v20;

  v22 = sub_2723FE054();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_2723FE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894128, &qword_272400430);
  sub_2723F0414(&qword_280894138, qword_280894140);
  sub_2723FE034();

  v29 = v39;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v30 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v31 = sub_2723E4FAC(8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2723D9360(v30[7] + *(v2 + 72) * v31, v5, &qword_280893F50, &qword_2723FFCE8);

  (*(v7 + 32))(v10, v5 + *(v1 + 48), v6);

  v33 = sub_2723FE424();
  v34 = sub_2723FE884();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134349056;
    *(v35 + 4) = *(v29 + 16);

    _os_log_impl(&dword_2723CB000, v33, v34, "VCSettings._rawVocabularyEntries getter called. Count: %{public}ld", v35, 0xCu);
    MEMORY[0x2743C8040](v35, -1, -1);
    sub_2723CE0C0(v19, v21);
  }

  else
  {
    sub_2723CE0C0(v19, v21);
  }

  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v41);
  result = v29;
LABEL_12:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2723E718C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2723E7238(uint64_t a1)
{
  v2 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36[-1] - v7);
  v9 = sub_2723FE434();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v14 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = sub_2723E4FAC(8);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2723D9360(v14[7] + *(v5 + 72) * v15, v8, &qword_280893F50, &qword_2723FFCE8);

  (*(v10 + 32))(v13, v8 + *(v4 + 48), v9);

  v17 = sub_2723FE424();
  v18 = sub_2723FE884();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = *(a1 + 16);

    _os_log_impl(&dword_2723CB000, v17, v18, "VCSettings._rawVocabularyEntries setter called. Count: %{public}ld", v19, 0xCu);
    MEMORY[0x2743C8040](v19, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v13, v9);
  v20 = sub_2723FE084();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_2723FE074();
  *&v38[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894128, &qword_272400430);
  sub_2723F0414(&qword_280894130, &qword_280893EB8);
  v23 = sub_2723FE064();
  v25 = v24;

  v26 = objc_opt_self();
  v27 = sub_2723FE214();
  v36[0] = 0;
  v28 = [v26 JSONObjectWithData:v27 options:0 error:v36];

  v29 = v36[0];
  if (v28)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
    sub_2723D5A74(v37, v38);
    v30 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
    if (v30)
    {
      sub_2723D9230(v38, v37);
      v31 = v30;
      sub_2723E88C8(v37, 7u);
      sub_2723CE0C0(v23, v25);

      sub_2723EF760(v37);
    }

    else
    {
      sub_2723CE0C0(v23, v25);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v32 = v29;
    v33 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v23, v25);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2723E76D4(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        if (qword_280893D98 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894018;
        goto LABEL_35;
      }

      if (a1 == 8)
      {
        if (qword_280893D90 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894010;
        goto LABEL_35;
      }
    }

    else
    {
      if (a1 == 5)
      {
        if (qword_280893D88 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894008;
        goto LABEL_35;
      }

      if (a1 == 6)
      {
        if (qword_280893DB8 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894038;
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        if (qword_280893DA8 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894028;
      }

      else
      {
        if (qword_280893DA0 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894020;
      }

LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (a1 == 2)
    {
      if (qword_280893DB0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280894030;
      goto LABEL_35;
    }

    if (a1 == 3)
    {
      if (qword_280893DC0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280894040;
      goto LABEL_35;
    }
  }

  return v1;
}

unint64_t sub_2723E7934(unsigned __int8 a1)
{
  v1 = 0xD000000000000014;
  if (a1 <= 4u)
  {
    v5 = 0xD00000000000001BLL;
    v6 = 0xD000000000000018;
    if (a1 != 3)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    v3 = 0xD000000000000017;
    if (a1 != 9)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

VoiceControl::VCEngine_optional __swiftcall VCEngine.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VCEngine.rawValue.getter()
{
  if (*v0)
  {
    return 0x726173617571;
  }

  else
  {
    return 0x79636167656CLL;
  }
}

uint64_t sub_2723E7AF8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726173617571;
  }

  else
  {
    v2 = 0x79636167656CLL;
  }

  if (*a2)
  {
    v3 = 0x726173617571;
  }

  else
  {
    v3 = 0x79636167656CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2723FEC44();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2723E7B78()
{
  v1 = *v0;
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723E7BE8()
{
  *v0;
  sub_2723FE634();
}

uint64_t sub_2723E7C3C()
{
  v1 = *v0;
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723E7CA8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2723FEB64();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2723E7D08(uint64_t *a1@<X8>)
{
  v2 = 0x79636167656CLL;
  if (*v1)
  {
    v2 = 0x726173617571;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

VoiceControl::RXDebugAutomationMode_optional __swiftcall RXDebugAutomationMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

VoiceControl::VCOverlayType_optional __swiftcall VCOverlayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCOverlayType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 1701736270;
    v6 = 0x656C4564656D614ELL;
    if (v1 != 2)
    {
      v6 = 0x64657265626D754ELL;
    }

    if (*v0)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000011;
    if (v1 != 7)
    {
      v3 = 0xD000000000000012;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    if (*v0 <= 5u)
    {
      return 0x64657265626D754ELL;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2723E8008()
{
  v1 = *v0;
  sub_2723FEC94();
  sub_2723E69CC();
  return sub_2723FECB4();
}

uint64_t sub_2723E8058()
{
  v1 = *v0;
  sub_2723FEC94();
  sub_2723E69CC();
  return sub_2723FECB4();
}

uint64_t sub_2723E80A8@<X0>(uint64_t *a1@<X8>)
{
  result = VCOverlayType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2723E80E0(id result, uint64_t a2)
{
  if (a2)
  {
    v3 = &v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain];
    *v3 = result;
    v3[1] = a2;
    v4 = objc_opt_self();

    v5 = [v4 processInfo];
    v6 = *v3;
    v7 = v3[1];

    LOBYTE(v6) = _sSo13NSProcessInfoC12VoiceControlE23canReadPreferenceDomainySbSSF_0(v6, v7);

    v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_canReadDomain] = v6 & 1;
    v8 = [v4 processInfo];
    v9 = *v3;
    v10 = v3[1];

    LOBYTE(v9) = _sSo13NSProcessInfoC12VoiceControlE24canWritePreferenceDomainySbSSF_0(v9, v10);

    v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_canWriteDomain] = v9 & 1;
    v11 = sub_2723FE574();

    v13.receiver = v2;
    v13.super_class = type metadata accessor for VCUserDefaults();
    v12 = objc_msgSendSuper2(&v13, sel_initWithSuiteName_, v11);

    if (v12)
    {
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2723E842C(unsigned __int8 a1)
{
  sub_2723E7934(a1);
  v2 = sub_2723FE574();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2723EF760(v34);
      return v30;
    }
  }

  else
  {
    sub_2723EF760(&v32);
  }

  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2723EF760(v34);
      return v30 == 1;
    }
  }

  else
  {
    sub_2723EF760(&v32);
  }

  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (!*(&v33 + 1))
  {
    sub_2723EF760(v34);
    v13 = &v32;
LABEL_35:
    sub_2723EF760(v13);
    return 2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = v34;
    goto LABEL_35;
  }

  result = v30;
  v5 = HIBYTE(v31) & 0xF;
  v6 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v7 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    sub_2723EF760(v34);

    return 0;
  }

  if ((v31 & 0x1000000000000000) == 0)
  {
    if ((v31 & 0x2000000000000000) != 0)
    {
      *&v32 = v30;
      *(&v32 + 1) = v31 & 0xFFFFFFFFFFFFFFLL;
      if (v30 == 43)
      {
        if (v5)
        {
          if (--v5)
          {
            v9 = 0;
            v20 = &v32 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v5)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_88:
        __break(1u);
        return result;
      }

      if (v30 != 45)
      {
        if (v5)
        {
          v9 = 0;
          v25 = &v32;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v5)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v5)
      {
        if (--v5)
        {
          v9 = 0;
          v14 = &v32 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v5)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        result = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2723FEA94();
      }

      v8 = *result;
      if (v8 == 43)
      {
        if (v6 >= 1)
        {
          v5 = v6 - 1;
          if (v6 != 1)
          {
            v9 = 0;
            if (result)
            {
              v17 = (result + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_77;
                }

                v19 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_77;
                }

                v9 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_77;
                }

                ++v17;
                if (!--v5)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_87;
      }

      if (v8 != 45)
      {
        if (v6)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_77;
              }

              v24 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_77;
              }

              v9 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v6)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v9 = 0;
        LOBYTE(v5) = 1;
        goto LABEL_78;
      }

      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_77;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_77;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_77;
              }

              ++v10;
              if (!--v5)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v5) = 0;
LABEL_78:
          v28 = v5;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v9 = sub_2723EDE18(v30, v31, 10);
  v28 = v29;
LABEL_79:
  sub_2723EF760(v34);

  return (v28 & 1) == 0 && v9 == 1;
}

void sub_2723E88C8(uint64_t a1, unsigned __int8 a2)
{
  sub_2723D9360(a1, v12, &qword_280893F40, &unk_272400070);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_2723FEC34();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  sub_2723E7934(a2);
  v11 = sub_2723FE574();

  [v2 setObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

void sub_2723E8A40(uint64_t a1)
{
  sub_2723D9360(a1, v16, &qword_280893F40, &unk_272400070);
  v2 = v17;
  if (v17)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_2723FEC34();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2723FE574();
  v10 = type metadata accessor for VCUserDefaults();
  v15.receiver = v1;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel_setObject_forKey_, v8, v9);
  swift_unknownObjectRelease();

  v11 = sub_2723F02F8();
  if (v11 != 11)
  {
    v12 = sub_2723E76D4(v11);
    if (v12)
    {
      v13 = v12;
      v14 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v14, v13, 0, 0, 1u);
    }
  }
}

id sub_2723E8CEC()
{
  result = [objc_allocWithZone(type metadata accessor for VCSettings()) init];
  qword_280894080 = result;
  return result;
}

id static VCSettings.shared.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_280894080;

  return v1;
}

void sub_2723E8E04(char a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = 0x747365742ELL;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x2743C7290](v4, v5);
  v6 = type metadata accessor for VCUserDefaults();
  v7 = objc_allocWithZone(v6);
  v8 = sub_2723FE574();

  v9 = [v7 initWithSuiteName_];

  v10 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
  v11 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain) = v9;

  MEMORY[0x2743C7290](v4, v5);
  v12 = objc_allocWithZone(v6);
  v13 = sub_2723FE574();

  v14 = [v12 initWithSuiteName_];

  v15 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon;
  v16 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon) = v14;

  MEMORY[0x2743C7290](v4, v5);
  v17 = objc_allocWithZone(v6);
  v18 = sub_2723FE574();

  v19 = [v17 initWithSuiteName_];

  v20 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary;
  v21 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary) = v19;

  if ((a1 & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = *(v2 + v10);
  if (v22)
  {
    v23 = *&v22[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain];
    v24 = *&v22[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain + 8];
    v25 = v22;

    v26 = sub_2723FE574();

    [v25 removePersistentDomainForName_];
  }

  v27 = *(v2 + v15);
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = *&v27[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain];
  v29 = *&v27[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain + 8];
  v30 = v27;

  v31 = sub_2723FE574();

  [v30 removePersistentDomainForName_];

  v32 = *(v2 + v15);
  if (v32)
  {
    v33 = *(v2 + v20);
    if (v33)
    {
      v34 = v32;
      v35 = v33;

      v36 = *&v35[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain];
      v37 = *&v35[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain + 8];

      v38 = sub_2723FE574();

      [v34 removePersistentDomainForName_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_16:
  }
}

id sub_2723E920C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_2723E92A0()
{
  result = sub_2723E92C0();
  qword_280895EC0 = result;
  return result;
}

char *sub_2723E92C0()
{
  v24 = sub_2723FE2D4();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x277D84F90];
  v4 = 13;
  sub_2723D6BE8(0, 13, 0);
  v5 = v30;
  v22 = *MEMORY[0x277CC9668];
  v21 = *(v0 + 104);
  v6 = &unk_28819F548;
  v23 = v0 + 104;
  v7 = (v0 + 8);
  do
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = v24;
    v21(v3, v22, v24);

    v11 = sub_2723FE2C4();
    v13 = v12;
    (*v7)(v3, v10);
    v29[0] = v11;
    v29[1] = v13;
    v27 = 45;
    v28 = 0xE100000000000000;
    v25 = 95;
    v26 = 0xE100000000000000;
    sub_2723CD24C();
    v14 = sub_2723FE984();
    v16 = v15;

    v30 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2723D6BE8((v17 > 1), v18 + 1, 1);
      v5 = v30;
    }

    *(v5 + 16) = v18 + 1;
    v19 = v5 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    v6 += 2;
    --v4;
  }

  while (v4);
  swift_arrayDestroy();
  v29[0] = v5;

  sub_2723D61B0(v29);

  return v29[0];
}

char *sub_2723E9548()
{
  result = sub_2723E9568();
  qword_280895EC8 = result;
  return result;
}

char *sub_2723E9568()
{
  v29 = sub_2723FE2D4();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DD0 != -1)
  {
    swift_once();
  }

  v25 = qword_280895EC0;
  v35 = MEMORY[0x277D84F90];
  v4 = 8;
  sub_2723D6BE8(0, 8, 0);
  v5 = v35;
  v28 = *MEMORY[0x277CC9668];
  v7 = *(v0 + 104);
  v6 = v0 + 104;
  v8 = &unk_28819F638;
  v26 = (v6 - 96);
  v27 = v7;
  do
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = v29;
    v12 = v6;
    v27(v3, v28, v29);

    v13 = sub_2723FE2C4();
    v15 = v14;
    (*v26)(v3, v11);
    v34[0] = v13;
    v34[1] = v15;
    v32 = 45;
    v33 = 0xE100000000000000;
    v30 = 95;
    v31 = 0xE100000000000000;
    sub_2723CD24C();
    v16 = sub_2723FE984();
    v18 = v17;

    v35 = v5;
    v20 = *(v5 + 16);
    v19 = *(v5 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2723D6BE8((v19 > 1), v20 + 1, 1);
      v5 = v35;
    }

    *(v5 + 16) = v20 + 1;
    v21 = v5 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v8 += 2;
    --v4;
    v6 = v12;
  }

  while (v4);
  swift_arrayDestroy();
  v34[0] = v5;

  sub_2723D61B0(v34);

  v22 = v34[0];
  v34[0] = v25;

  sub_2723DD0F4(v22);
  return v34[0];
}

uint64_t sub_2723E9850()
{
  result = sub_2723E9870();
  qword_280895ED0 = result;
  return result;
}

uint64_t sub_2723E9870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = (&v45 - v3);
  v5 = sub_2723FE434();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2723FE2D4();
  v9 = *(v55 - 8);
  v10 = *(v9 + 8);
  MEMORY[0x28223BE20]();
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = AFPreferencesSupportedLanguages();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v49 = v1;
  v15 = sub_2723FE744();

  v16 = sub_2723E9E50(v15);

  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v51 = v8;
  if (v17)
  {
    v46 = v4;
    v47 = v0;
    v48 = v5;
    v61 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v17, 0);
    v18 = v61;
    v53 = *MEMORY[0x277CC9668];
    v52 = *(v9 + 13);
    v54 = v9 + 104;
    v19 = (v9 + 8);
    v45 = v16;
    v20 = (v16 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = v55;
      v52(v12, v53, v55);

      v24 = sub_2723FE2C4();
      v26 = v25;
      (*v19)(v12, v23);
      v60[0] = v24;
      v60[1] = v26;
      v58 = 45;
      v59 = 0xE100000000000000;
      v56 = 95;
      v57 = 0xE100000000000000;
      sub_2723CD24C();
      v27 = sub_2723FE984();
      v29 = v28;

      v61 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2723D6BE8((v30 > 1), v31 + 1, 1);
        v18 = v61;
      }

      *(v18 + 16) = v31 + 1;
      v32 = v18 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v20 += 2;
      --v17;
    }

    while (v17);
    v0 = v47;
    v5 = v48;
    v8 = v51;
    v4 = v46;
  }

  v60[0] = v18;

  sub_2723D61B0(v60);

  v9 = v60[0];
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v33 = off_280894260;
  v34 = v50;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v35 = sub_2723E4FAC(6);
  if ((v36 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2723D9360(v33[7] + *(v49 + 72) * v35, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v34 + 32))(v8, v4 + *(v0 + 48), v5);

  v37 = sub_2723FE424();
  v38 = sub_2723FE874();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60[0] = v40;
    *v39 = 136446210;
    v58 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30);
    v41 = sub_2723FE524();
    v43 = sub_2723E4A00(v41, v42, v60);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_2723CB000, v37, v38, "Siri supported locales: [%{public}s]", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x2743C8040](v40, -1, -1);
    MEMORY[0x2743C8040](v39, -1, -1);

    (*(v34 + 8))(v51, v5);
  }

  else
  {

    (*(v34 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_2723E9E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_2723D9230(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2723D6BE8((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2723E9F54()
{
  result = sub_2723E9F74();
  qword_280895ED8 = result;
  return result;
}

uint64_t sub_2723E9F74()
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v72 = *(v74 - 8);
  v0 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = (v71 - v1);
  v2 = sub_2723FE434();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v77 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2723FE2D4();
  v84 = *(v82 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2723FE344();
  v8 = *(v83 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v83);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DD8 != -1)
  {
    swift_once();
  }

  v13 = sub_2723D8614(v12);

  v91 = v13;
  v14 = objc_opt_self();
  v15 = [v14 enabledLocaleIdentifiers];
  v16 = sub_2723FE744();

  sub_2723EFFE0(v16);

  v17 = [v14 disabledLocaleIdentifiers];
  v18 = sub_2723FE744();

  sub_2723EA888(v18);

  v19 = sub_2723FD81C();
  v20 = v19[2];
  v76 = v2;
  v75 = v3;
  if (v20)
  {
    v90[0] = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v20, 0);
    v21 = v90[0];
    v23 = *(v8 + 16);
    v22 = v8 + 16;
    v79 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v71[1] = v19;
    v25 = v19 + v24;
    v78 = *(v22 + 56);
    v80 = v22;
    v26 = (v22 - 8);
    do
    {
      v27 = v83;
      (v79)(v11, v25, v83);
      v28 = sub_2723FE2B4();
      v30 = v29;
      (*v26)(v11, v27);
      v90[0] = v21;
      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_2723D6BE8((v31 > 1), v32 + 1, 1);
        v21 = v90[0];
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
      v25 += v78;
      --v20;
    }

    while (v20);

    v2 = v76;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v34 = sub_2723EE818(v21, v91);

  if (qword_280893DE0 != -1)
  {
    swift_once();
  }

  v35 = sub_2723EE818(qword_280895ED0, v34);
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = sub_2723D612C(*(v35 + 16), 0);
    v39 = sub_2723D7A68(v90, v38 + 4, v37, v36);
    sub_2723D8970();
    if (v39 != v37)
    {
LABEL_32:
      __break(1u);

      __break(1u);
      return result;
    }

    v40 = *(v38 + 2);
    if (v40)
    {
      goto LABEL_15;
    }

LABEL_21:

    v41 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v38 = MEMORY[0x277D84F90];
  v40 = *(MEMORY[0x277D84F90] + 16);
  if (!v40)
  {
    goto LABEL_21;
  }

LABEL_15:
  v89 = MEMORY[0x277D84F90];
  sub_2723D6BE8(0, v40, 0);
  v41 = v89;
  v83 = *(v84 + 104);
  v84 += 104;
  v42 = (v84 - 96);
  LODWORD(v80) = *MEMORY[0x277CC9668];
  v79 = v38;
  v43 = (v38 + 40);
  do
  {
    v44 = *(v43 - 1);
    v45 = *v43;
    v47 = v81;
    v46 = v82;
    (v83)(v81, v80, v82);

    v48 = sub_2723FE2C4();
    v50 = v49;
    (*v42)(v47, v46);
    v90[0] = v48;
    v90[1] = v50;
    v87 = 45;
    v88 = 0xE100000000000000;
    v85 = 95;
    v86 = 0xE100000000000000;
    sub_2723CD24C();
    v51 = sub_2723FE984();
    v53 = v52;

    v89 = v41;
    v55 = *(v41 + 16);
    v54 = *(v41 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_2723D6BE8((v54 > 1), v55 + 1, 1);
      v41 = v89;
    }

    *(v41 + 16) = v55 + 1;
    v56 = v41 + 16 * v55;
    *(v56 + 32) = v51;
    *(v56 + 40) = v53;
    v43 += 2;
    --v40;
  }

  while (v40);

  v2 = v76;
LABEL_22:
  v90[0] = v41;

  sub_2723D61B0(v90);
  v57 = v75;
  v58 = v77;

  v38 = v90[0];
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v59 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v60 = sub_2723E4FAC(6);
  if ((v61 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62 = v73;
  sub_2723D9360(v59[7] + *(v72 + 72) * v60, v73, &qword_280893F50, &qword_2723FFCE8);

  (*(v57 + 32))(v58, v62 + *(v74 + 48), v2);

  v63 = sub_2723FE424();
  v64 = sub_2723FE874();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v90[0] = v66;
    *v65 = 136446210;
    v87 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30);
    v67 = sub_2723FE524();
    v69 = sub_2723E4A00(v67, v68, v90);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_2723CB000, v63, v64, "Quasar locales: [%{public}s]", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x2743C8040](v66, -1, -1);
    MEMORY[0x2743C8040](v65, -1, -1);

    (*(v57 + 8))(v77, v2);
  }

  else
  {

    (*(v57 + 8))(v58, v2);
  }

  return v38;
}

uint64_t sub_2723EA888(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_2723EF3EC(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_2723EA904()
{
  result = sub_2723EA924();
  qword_280895EE0 = result;
  return result;
}

uint64_t sub_2723EA924()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v21 - v3);
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v11 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(6);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v11[7] + *(v1 + 72) * result, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v6 + 32))(v10, v4 + *(v0 + 48), v5);
  v13 = sub_2723FE424();
  v14 = sub_2723FE874();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = MEMORY[0x277D84F90];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v15;
    v22 = v17;
    *v16 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30);
    v18 = sub_2723FE524();
    v20 = sub_2723E4A00(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2723CB000, v13, v14, "Legacy locales: [%{public}s]", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2743C8040](v17, -1, -1);
    MEMORY[0x2743C8040](v16, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  return MEMORY[0x277D84F90];
}

char *sub_2723EAC4C()
{
  result = sub_2723EAC6C();
  qword_280895EE8 = result;
  return result;
}

char *sub_2723EAC6C()
{
  v28 = sub_2723FE2D4();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2723F0050(1005);
  v5 = *(v4 + 2);
  if (v5)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v5, 0);
    v6 = v34;
    v27 = *MEMORY[0x277CC9668];
    v8 = *(v0 + 104);
    v7 = v0 + 104;
    v25 = (v7 - 96);
    v26 = v8;
    v24[1] = v4;
    v9 = (v4 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = v28;
      v13 = v7;
      v26(v3, v27, v28);

      v14 = sub_2723FE2C4();
      v16 = v15;
      (*v25)(v3, v12);
      v33[0] = v14;
      v33[1] = v16;
      v31 = 45;
      v32 = 0xE100000000000000;
      v29 = 95;
      v30 = 0xE100000000000000;
      sub_2723CD24C();
      v17 = sub_2723FE984();
      v19 = v18;

      v34 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2723D6BE8((v20 > 1), v21 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v9 += 2;
      --v5;
      v7 = v13;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v33[0] = v6;

  sub_2723D61B0(v33);

  return v33[0];
}

uint64_t VCSettings.supportedLocales.getter()
{
  if (qword_280893E00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2723EAF6C()
{
  result = sub_2723EAF8C();
  qword_280894088 = result;
  return result;
}

uint64_t sub_2723EAF8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v56 - v3);
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE2D4();
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v65 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DE8 != -1)
  {
    swift_once();
  }

  v15 = sub_2723D8614(v14);

  if (qword_280893DF8 != -1)
  {
    swift_once();
  }

  v17 = sub_2723D8614(v16);

  v18 = sub_2723EEC28(v17, v15);

  v74 = v18;
  if (qword_280893DF0 != -1)
  {
    swift_once();
  }

  sub_2723EFFE0(v19);

  v20 = v74;
  v21 = *(v74 + 16);
  v60 = v1;
  v61 = v6;
  if (v21)
  {
    v22 = sub_2723D612C(v21, 0);
    v23 = sub_2723D7A68(v73, v22 + 4, v21, v20);
    sub_2723D8970();
    if (v23 == v21)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_11:
  v24 = v22[2];
  v62 = v9;
  if (v24)
  {
    v57 = v4;
    v58 = v0;
    v59 = v5;
    v72 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v24, 0);
    v25 = v72;
    v64 = *MEMORY[0x277CC9668];
    v63 = *(v67 + 104);
    v67 += 104;
    v26 = (v67 - 96);
    v56[1] = v22;
    v27 = v22 + 5;
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v31 = v65;
      v30 = v66;
      v63(v65, v64, v66);

      v32 = sub_2723FE2C4();
      v34 = v33;
      (*v26)(v31, v30);
      v73[0] = v32;
      v73[1] = v34;
      v70 = 45;
      v71 = 0xE100000000000000;
      v68 = 95;
      v69 = 0xE100000000000000;
      sub_2723CD24C();
      v35 = sub_2723FE984();
      v37 = v36;

      v72 = v25;
      v39 = *(v25 + 16);
      v38 = *(v25 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2723D6BE8((v38 > 1), v39 + 1, 1);
        v25 = v72;
      }

      *(v25 + 16) = v39 + 1;
      v40 = v25 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v27 += 2;
      --v24;
    }

    while (v24);

    v5 = v59;
    v9 = v62;
    v0 = v58;
    v4 = v57;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v73[0] = v25;

  sub_2723D61B0(v73);
  v41 = v61;

  v42 = v73[0];
  v43 = qword_280893E18;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v45 = sub_2723E4FAC(6);
  if ((v46 & 1) == 0)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2723D9360(v44[7] + *(v60 + 72) * v45, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v41 + 32))(v9, v4 + *(v0 + 48), v5);
  v47 = sub_2723FE424();
  v48 = sub_2723FE874();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73[0] = v50;
    *v49 = 136446210;
    v70 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30);
    v51 = sub_2723FE524();
    v53 = v52;

    v54 = sub_2723E4A00(v51, v53, v73);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_2723CB000, v47, v48, "Supported locales: [%{public}s]", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x2743C8040](v50, -1, -1);
    MEMORY[0x2743C8040](v49, -1, -1);

    (*(v41 + 8))(v62, v5);
  }

  else
  {

    (*(v41 + 8))(v9, v5);
  }

  return v42;
}

uint64_t sub_2723EB6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v77 = a5;
  v75 = a4;
  v10 = sub_2723FE2D4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  if (a3)
  {
    v15 = objc_opt_self();

    v16 = sub_2723FE734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2723FFC60;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v18 = sub_2723FE734();

    v19 = [v15 preferredLocalizationsFromArray:v16 forPreferences:v18];

    v20 = sub_2723FE744();
    if (v20[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = objc_opt_self();
    v40 = sub_2723FE734();
    v41 = sub_2723FE734();
    v42 = [v39 preferredLocalizationsFromArray:v40 forPreferences:v41];

    v20 = sub_2723FE744();
    if (v20[2])
    {
LABEL_3:
      v79 = a3;
      v80 = a6;
      v21 = v20[4];
      v22 = v20[5];

      v23 = *MEMORY[0x277CC9668];
      v24 = v11[13];
      v78 = (v11 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v24(v14, v23, v10);
      v25 = sub_2723FE2C4();
      v27 = v26;

      v28 = v11[1];
      v28(v14, v10);
      v87 = v25;
      v88 = v27;
      v85 = 45;
      v86 = 0xE100000000000000;
      v83 = 95;
      v84 = 0xE100000000000000;
      sub_2723CD24C();
      v81 = sub_2723FE984();
      v82 = v29;

      v30 = MEMORY[0x277D837D0];
      v74 = v23;
      v73 = v24;
      v24(v14, v23, v10);
      v31 = sub_2723FE2C4();
      v33 = v32;
      v70 = v14;
      v71 = v10;
      v72 = v28;
      v28(v14, v10);
      v87 = v31;
      v88 = v33;
      v85 = 45;
      v86 = 0xE100000000000000;
      v83 = 95;
      v84 = 0xE100000000000000;
      v34 = sub_2723CD24C();
      v67 = v34;
      v68 = v34;
      v65 = v30;
      v66 = v34;
      v35 = sub_2723FE984();
      v37 = v36;

      if (v79)
      {
LABEL_4:

        return sub_2723FE2A4();
      }

      v79 = v35;
      v69 = v37;
      v44 = v70;
      v43 = v71;
      v73(v70, v74, v71);
      v45 = sub_2723FE2C4();
      v47 = v46;
      v72(v44, v43);
      v87 = v45;
      v88 = v47;
      v85 = 45;
      v86 = 0xE100000000000000;
      v83 = 95;
      v84 = 0xE100000000000000;
      v67 = v34;
      v68 = v34;
      v65 = v30;
      v66 = v34;
      v48 = sub_2723FE984();
      v50 = v49;

      if (v81 == v48 && v82 == v50)
      {

        v52 = v69;
        v53 = v79;
      }

      else
      {
        v54 = sub_2723FEC44();

        v52 = v69;
        v53 = v79;
        if ((v54 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v87 = v53;
      v88 = v52;
      MEMORY[0x28223BE20](v51);
      v67 = &v87;
      if ((sub_2723E718C(sub_2723F0544, &v65, v76) & 1) != 0 && v77)
      {
        v56 = v70;
        v55 = v71;
        v73(v70, v74, v71);
        v57 = sub_2723FE2C4();
        v59 = v58;
        v60 = v56;
        v61 = v79;
        v72(v60, v55);
        v87 = v57;
        v88 = v59;
        v85 = 45;
        v86 = 0xE100000000000000;
        v83 = 95;
        v84 = 0xE100000000000000;
        v67 = v34;
        v68 = v34;
        v65 = v30;
        v66 = v34;
        v62 = sub_2723FE984();
        v64 = v63;

        if (v62 == v61 && v64 == v52)
        {
        }

        else
        {
          sub_2723FEC44();
        }
      }

      goto LABEL_4;
    }
  }

  return sub_2723FE2A4();
}

VoiceControl::VCEngine_optional __swiftcall VCSettings.engine(forLocale:)(Swift::String forLocale)
{
  object = forLocale._object;
  countAndFlagsBits = forLocale._countAndFlagsBits;
  v39 = v1;
  v4 = sub_2723FE2D4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DE8 != -1)
  {
    swift_once();
  }

  v9 = qword_280895ED8;
  v10 = v5[13];
  v36 = *MEMORY[0x277CC9668];
  v35 = v10;
  v10(v8);
  v37 = countAndFlagsBits;
  v38 = object;
  v11 = sub_2723FE2C4();
  v13 = v12;
  v34 = v5[1];
  v34(v8, v4);
  v44 = v11;
  v45 = v13;
  v42 = 45;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  v14 = sub_2723CD24C();
  v32 = v14;
  v29 = MEMORY[0x277D837D0];
  v30 = v14;
  v15 = 1;
  v16 = sub_2723FE984();
  v18 = v17;

  v44 = v16;
  v45 = v18;
  MEMORY[0x28223BE20](v19);
  v31 = &v44;
  LOBYTE(v16) = sub_2723E718C(sub_2723EF744, &v29, v9);

  if ((v16 & 1) == 0)
  {
    if (qword_280893DF0 != -1)
    {
      swift_once();
    }

    v21 = qword_280895EE0;
    v35(v8, v36, v4);
    v22 = sub_2723FE2C4();
    v24 = v23;
    v34(v8, v4);
    v44 = v22;
    v45 = v24;
    v42 = 45;
    v43 = 0xE100000000000000;
    v40 = 95;
    v41 = 0xE100000000000000;
    v31 = v14;
    v32 = v14;
    v30 = v14;
    v29 = MEMORY[0x277D837D0];
    v25 = sub_2723FE984();
    v27 = v26;

    v44 = v25;
    v45 = v27;
    MEMORY[0x28223BE20](v28);
    v31 = &v44;
    LOBYTE(v21) = sub_2723E718C(sub_2723F0544, &v29, v21);

    if (v21)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }
  }

  *v39 = v15;
  return result;
}

uint64_t sub_2723EC124()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_2723EF760(&v8);
    return 0;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall VCSettings.setPreferredLocale(_:)(Swift::String_optional a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    if (a1.value._object)
    {
      v3 = MEMORY[0x277D837D0];
      object = a1.value._object;
    }

    else
    {
      a1.value._countAndFlagsBits = 0;
      object = 0;
      v3 = 0;
      v6[2] = 0;
    }

    v6[0] = a1.value._countAndFlagsBits;
    v6[1] = object;
    v6[3] = v3;
    v5 = v2;

    sub_2723E88C8(v6, 1u);

    sub_2723EF760(v6);
  }
}

char VCSettings.alwaysShowOverlayType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v3)
  {
    v11 = 0;
    v12 = 0u;
LABEL_11:
    result = sub_2723EF760(&v11);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2723FE574();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    countAndFlagsBits = 0;
    goto LABEL_13;
  }

  result = VCOverlayType.init(rawValue:)(v9).value;
  countAndFlagsBits = v11._countAndFlagsBits;
  if (LOBYTE(v11._countAndFlagsBits) == 9)
  {
    countAndFlagsBits = 0;
  }

LABEL_13:
  *a1 = countAndFlagsBits;
  return result;
}

_BYTE *VCSettings.alwaysShowOverlayType.setter(_BYTE *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = *result;
    if (v3 <= 3)
    {
      v10 = 0xE400000000000000;
      v11 = 1701736270;
      v12 = 0xED000073746E656DLL;
      v13 = 0x656C4564656D614ELL;
      if (v3 != 2)
      {
        v13 = 0x64657265626D754ELL;
        v12 = 0xEC00000064697247;
      }

      if (*result)
      {
        v11 = 0xD000000000000010;
        v10 = 0x8000000272400C10;
      }

      if (*result <= 1u)
      {
        v9 = v11;
      }

      else
      {
        v9 = v13;
      }

      if (*result > 1u)
      {
        v10 = v12;
      }
    }

    else
    {
      v4 = 0xD000000000000012;
      v5 = 0x8000000272400C60;
      v6 = 0x8000000272400C80;
      v7 = 0xD000000000000011;
      if (v3 != 7)
      {
        v7 = 0xD000000000000012;
        v6 = 0x8000000272400CA0;
      }

      if (v3 != 6)
      {
        v4 = v7;
        v5 = v6;
      }

      v8 = 0xED00007364726F57;
      if (v3 != 4)
      {
        v8 = 0xED000073656E694CLL;
      }

      if (*result <= 5u)
      {
        v9 = 0x64657265626D754ELL;
      }

      else
      {
        v9 = v4;
      }

      if (*result <= 5u)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }
    }

    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v14 = v2;
    sub_2723E88C8(v15, 0);

    return sub_2723EF760(v15);
  }

  return result;
}

_BYTE *(*VCSettings.alwaysShowOverlayType.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  VCSettings.alwaysShowOverlayType.getter((a1 + 8));
  return sub_2723EC618;
}

_BYTE *sub_2723EC618(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return VCSettings.alwaysShowOverlayType.setter(v4);
}

uint64_t VCSettings.showTextResponseUponRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 1;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

void (*VCSettings.showTextResponseUponRecognition.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.showTextResponseUponRecognition.getter() & 1;
  return sub_2723EC7F0;
}

uint64_t VCSettings.playSoundUponRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 0;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v6;
  }

  return result;
}

void (*VCSettings.playSoundUponRecognition.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.playSoundUponRecognition.getter() & 1;
  return sub_2723EC988;
}

uint64_t sub_2723EC990()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_2723EF760(&v8);
    return 3;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v6 >= 4)
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

uint64_t VCSettings.showUserHints.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = 3;
    if ((result & 1) == 0)
    {
      v3 = 0;
    }

    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v3;
    v4 = v2;
    sub_2723E88C8(v5, 6u);

    return sub_2723EF760(v5);
  }

  return result;
}

void (*VCSettings.showUserHints.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_2723EC990() == 3;
  return sub_2723ECBC0;
}

void sub_2723ECBC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = 3;
    if (!v1[40])
    {
      v3 = 0;
    }

    *(v1 + 3) = MEMORY[0x277D83B88];
    *v1 = v3;
    v4 = v2;
    sub_2723E88C8(v1, 6u);

    sub_2723EF760(v1);
  }

  free(v1);
}

uint64_t VCSettings.syncVocabularyEntries.getter()
{
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v2)
    {
      v3 = v2;
      v4 = sub_2723FE574();
      v5 = [v3 objectForKey_];

      if (v5)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v6 = 0u;
        v7 = 0u;
      }

      v8 = v6;
      v9 = v7;
      if (*(&v7 + 1))
      {
        if (swift_dynamicCast())
        {
          return v6;
        }

        return 1;
      }
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    sub_2723EF760(&v8);
    return 1;
  }

  return result;
}

id VCSettings.syncVocabularyEntries.setter(char a1)
{
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v4)
    {
      v7 = MEMORY[0x277D839B0];
      v6[0] = a1 & 1;
      v5 = v4;
      sub_2723E88C8(v6, 8u);

      return sub_2723EF760(v6);
    }
  }

  return result;
}

void (*VCSettings.syncVocabularyEntries.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.syncVocabularyEntries.getter() & 1;
  return sub_2723ECE74;
}

void sub_2723ECE74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  if ([objc_opt_self() vocabularySyncEnabled])
  {
    v3 = *(v1[4] + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v3)
    {
      v1[3] = MEMORY[0x277D839B0];
      *v1 = v2;
      v4 = v3;
      sub_2723E88C8(v1, 8u);

      sub_2723EF760(v1);
    }
  }

  free(v1);
}

uint64_t VCSettings.persistentSleepState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 1;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

char *sub_2723ED020(char *result, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = *(*a2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v5)
  {
    v7 = *result;
    v10 = MEMORY[0x277D839B0];
    v9[0] = v7;
    v8 = v5;
    sub_2723E88C8(v9, a5);

    return sub_2723EF760(v9);
  }

  return result;
}

uint64_t sub_2723ED09C(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    v7 = MEMORY[0x277D839B0];
    v6[0] = result & 1;
    v5 = v3;
    sub_2723E88C8(v6, a2);

    return sub_2723EF760(v6);
  }

  return result;
}

void (*VCSettings.persistentSleepState.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.persistentSleepState.getter() & 1;
  return sub_2723ED184;
}

void sub_2723ED18C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *a1;
  v4 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v4)
  {
    v6 = v3[40];
    *(v3 + 3) = MEMORY[0x277D839B0];
    *v3 = v6;
    v7 = v4;
    sub_2723E88C8(v3, a3);

    sub_2723EF760(v3);
  }

  free(v3);
}

uint64_t VCSettings.carPlayDebugOverlayUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2723E842C(0xAu);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t VCSettings.automationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_11:
    result = sub_2723EF760(&v11);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2723FE574();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v9 >= 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

LABEL_13:
  *a1 = v8;
  return result;
}

unsigned __int8 *VCSettings.automationMode.setter(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (v2)
  {
    v3 = *result;
    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v3;
    v4 = v2;
    sub_2723E88C8(v5, 4u);

    return sub_2723EF760(v5);
  }

  return result;
}

void (*VCSettings.automationMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  VCSettings.automationMode.getter((v3 + 40));
  return sub_2723ED464;
}

void sub_2723ED464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (v2)
  {
    v3 = *(v1 + 40);
    v1[3] = MEMORY[0x277D83B88];
    *v1 = v3;
    v4 = v2;
    sub_2723E88C8(v1, 4u);

    sub_2723EF760(v1);
  }

  free(v1);
}

void *sub_2723ED4E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894070, &qword_272400420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2723ED554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2723FEC94();
  sub_2723FE634();
  v9 = sub_2723FECB4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2723FEC44() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2723ED904(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2723ED6A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA14();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2723FEC94();
      sub_2723FE634();
      result = sub_2723FECB4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2723ED904(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2723ED6A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2723EDA84();
      goto LABEL_16;
    }

    sub_2723EDBE0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2723FEC94();
  sub_2723FE634();
  result = sub_2723FECB4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2723FEC44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2723FEC74();
  __break(1u);
  return result;
}

void *sub_2723EDA84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  v2 = *v0;
  v3 = sub_2723FEA04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2723EDBE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA14();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2723FEC94();

      sub_2723FE634();
      result = sub_2723FECB4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unsigned __int8 *sub_2723EDE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2723FE6E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2723EE3A4();
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
      result = sub_2723FEA94();
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

uint64_t sub_2723EE3A4()
{
  v0 = sub_2723FE6F4();
  v4 = sub_2723EE424(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2723EE424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2723FE624();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2723FE954();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2723ED4E0(v9, 0);
  v12 = sub_2723EE57C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2723FE624();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2723FEA94();
LABEL_4:

  return sub_2723FE624();
}

unint64_t sub_2723EE57C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2723EE79C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2723FE6B4();
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
          result = sub_2723FEA94();
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

    result = sub_2723EE79C(v12, a6, a7);
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

    result = sub_2723FE694();
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

uint64_t sub_2723EE79C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2723FE6C4();
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
    v5 = MEMORY[0x2743C72D0](15, a1 >> 16);
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

uint64_t sub_2723EE818(uint64_t a1, uint64_t a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = a1;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    MEMORY[0x28223BE20]();
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2723EE9B8(v9, v7, a1, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2723F03E0(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2743C8040](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2723EE9B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_2723FEC94();

          sub_2723FE634();
          v14 = sub_2723FECB4();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_2723FEC44() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2723EF1C8(v26, a2, v25, a4);
}

void *sub_2723EEB98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2723EEDEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2723EEC28(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2723EEDEC(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2723EEB98(v12, v6, a2, a1);

    MEMORY[0x2743C8040](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2723EEDEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_2723FEC94();

      sub_2723FE634();
      v27 = sub_2723FECB4();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_2723FEC44() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2723EF1C8(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_2723FEC94();

      sub_2723FE634();
      v41 = sub_2723FECB4();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_2723FEC44() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2723EF1C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA24();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2723FEC94();

    sub_2723FE634();
    result = sub_2723FECB4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2723EF3EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2723FEC94();
  sub_2723FE634();
  v7 = sub_2723FECB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2723FEC44() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2723EDA84();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2723EF528(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_2723EF528(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2723FE9D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2723FEC94();

        sub_2723FE634();
        v15 = sub_2723FECB4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2723EF6EC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2723FEC44() & 1;
  }
}

uint64_t sub_2723EF760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F40, &unk_272400070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2723EF7CC()
{
  result = qword_2808940A0;
  if (!qword_2808940A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940A0);
  }

  return result;
}

unint64_t sub_2723EF868()
{
  result = qword_2808940B8;
  if (!qword_2808940B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940B8);
  }

  return result;
}

unint64_t sub_2723EF904()
{
  result = qword_2808940D0;
  if (!qword_2808940D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940D0);
  }

  return result;
}

uint64_t sub_2723EF99C@<X0>(BOOL *a1@<X8>)
{
  result = _AXSCommandAndControlEnabled();
  *a1 = result != 0;
  return result;
}

uint64_t sub_2723EF9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.alwaysShowOverlayType.getter(&v5);
  *a2 = v5;
  return result;
}

_BYTE *sub_2723EFA10(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return VCSettings.alwaysShowOverlayType.setter(&v4);
}

uint64_t sub_2723EFA48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.showTextResponseUponRecognition.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2723EFA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.playSoundUponRecognition.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2723EFAE0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  result = sub_2723EC990();
  *a2 = result == 3;
  return result;
}

uint64_t sub_2723EFB40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.syncVocabularyEntries.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2723EFB98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.persistentSleepState.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2723EFBE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = VCSettings.automationMode.getter(&v5);
  *a2 = v5;
  return result;
}

unsigned __int8 *sub_2723EFC20(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return VCSettings.automationMode.setter(&v4);
}

uint64_t getEnumTagSinglePayload for RXDebugAutomationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RXDebugAutomationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCOverlayType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCOverlayType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2723EFFE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_2723ED554(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

char *sub_2723F0050(uint64_t a1)
{
  v30 = sub_2723FE2D4();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2723FD1B8(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v7, 0);
    v8 = v36;
    v29 = *MEMORY[0x277CC9668];
    v10 = *(v2 + 104);
    v9 = v2 + 104;
    v27 = (v9 - 96);
    v28 = v10;
    v26[1] = v6;
    v11 = (v6 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v30;
      v15 = v9;
      v28(v5, v29, v30);

      v16 = sub_2723FE2C4();
      v18 = v17;
      (*v27)(v5, v14);
      v35[0] = v16;
      v35[1] = v18;
      v33 = 45;
      v34 = 0xE100000000000000;
      v31 = 95;
      v32 = 0xE100000000000000;
      sub_2723CD24C();
      v19 = sub_2723FE984();
      v21 = v20;

      v36 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2723D6BE8((v22 > 1), v23 + 1, 1);
        v8 = v36;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v11 += 2;
      --v7;
      v9 = v15;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v35[0] = v8;

  sub_2723D61B0(v35);

  return v35[0];
}

uint64_t sub_2723F02F8()
{
  v0 = sub_2723FEB64();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2723F0344()
{
  result = qword_280894110;
  if (!qword_280894110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894110);
  }

  return result;
}

uint64_t sub_2723F0398(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723F03E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2723EE9B8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2723F0414(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280894128, &qword_272400430);
    sub_2723F049C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723F049C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VCVocabularyEntry();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723F04E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2723FEC44() & 1;
  }
}

uint64_t VCArrayMergeResult.caseName.getter(uint64_t a1)
{
  v3 = sub_2723FECE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_2723FECC4();
  v9 = sub_2723FECD4();
  (*(v4 + 8))(v7, v3);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_2723FEA54();
  swift_getObjectType();
  result = sub_2723FEA54();
  if (v14 == result)
  {
    v16 = sub_2723FEA64();
    swift_unknownObjectRelease();
    if (v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2723FEAE4();
      swift_unknownObjectRelease();

      v17 = v19[4];
      v18 = v19[5];
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v18)
      {
        return v17;
      }
    }

    return 7104878;
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t VCElementMergeResult.hashValue.getter()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723F0868()
{
  sub_2723FEC94();
  VCElementMergeResult.hash(into:)();
  return sub_2723FECB4();
}

uint64_t Array<A>.merge(_:trimCutoffDate:maxNumberOfIsDeletedElements:)@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v216 = a4;
  v210 = a3;
  v250 = a2;
  v271 = a1;
  v215 = a8;
  v258 = a7;
  v10 = *(a7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v274 = sub_2723FE934();
  v217 = *(v274 - 8);
  v12 = *(v217 + 64);
  v13 = MEMORY[0x28223BE20](v274);
  v272 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v273 = &v209 - v15;
  v16 = sub_2723FE934();
  v262 = swift_getTupleTypeMetadata2();
  v266 = *(v262 - 8);
  v17 = v266[8];
  v18 = MEMORY[0x28223BE20](v262);
  v249 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v246 = &v209 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v245 = &v209 - v23;
  v248 = sub_2723FE294();
  v264 = *(v248 - 8);
  v24 = *(v264 + 8);
  MEMORY[0x28223BE20](v248);
  v235 = &v209 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2723FE934();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v255 = &v209 - v29;
  v237 = v16;
  v30 = v16;
  v31 = a5;
  v263 = *(v30 - 8);
  v32 = *(v263 + 8);
  v33 = MEMORY[0x28223BE20](v28);
  v209 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v234 = &v209 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v247 = &v209 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v233 = &v209 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v232 = &v209 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v259 = &v209 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v270 = &v209 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v268 = &v209 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v267 = &v209 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v281 = &v209 - v52;
  v238 = *(AssociatedTypeWitness - 8);
  v53 = *(v238 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v265 = &v209 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v209 - v57;
  v277 = *(a6 - 8);
  v59 = *(v277 + 8);
  v60 = MEMORY[0x28223BE20](v56);
  v222 = &v209 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v231 = &v209 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v221 = &v209 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v224 = &v209 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v230 = &v209 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v275 = (&v209 - v71);
  v261 = v72;
  MEMORY[0x28223BE20](v70);
  v74 = &v209 - v73;
  v269 = swift_getTupleTypeMetadata2();
  v75 = sub_2723FE784();
  v278 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v282 = AssociatedTypeWitness;
  v280 = AssociatedConformanceWitness;
  v77 = sub_2723F2FDC(v75, AssociatedTypeWitness, a6, AssociatedConformanceWitness);

  v288 = v77;
  v78 = sub_2723FE7B4();
  v279 = v58;
  if (v78)
  {
    v79 = 0;
    v276 = (v277 + 16);
    v80 = (v277 + 56);
    v81 = (v277 + 8);
    do
    {
      v82 = sub_2723FE7A4();
      sub_2723FE764();
      if (v82)
      {
        v83 = v31;
        v84 = v31 + ((v277[80] + 32) & ~v277[80]) + *(v277 + 9) * v79;
        v85 = *(v277 + 2);
        v85(v74, v84, a6);
        v86 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v83 = v31;
        v88 = sub_2723FEA74();
        if (v261 != 8)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          result = sub_2723FEAF4();
          __break(1u);
          return result;
        }

        v289[0] = v88;
        v85 = *v276;
        (*v276)(v74, v289, a6);
        swift_unknownObjectRelease();
        v86 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      sub_2723FEA44();
      v87 = v281;
      v85(v281, v74, a6);
      (*v80)(v87, 0, 1, a6);
      sub_2723FE4E4();
      sub_2723FE504();
      (*v81)(v74, a6);
      v31 = v83;
      ++v79;
    }

    while (v86 != sub_2723FE7B4());
  }

  v89 = sub_2723FE784();
  v90 = sub_2723F2FDC(v89, v282, a6, v280);

  v287 = v90;
  v91 = v271;
  v92 = sub_2723FE7B4();
  v93 = v281;
  if (!v92)
  {
    goto LABEL_21;
  }

  v94 = 0;
  v276 = (v277 + 16);
  v95 = (v277 + 56);
  v96 = (v277 + 8);
  while (1)
  {
    v97 = sub_2723FE7A4();
    sub_2723FE764();
    if (v97)
    {
      v98 = v91 + ((v277[80] + 32) & ~v277[80]) + *(v277 + 9) * v94;
      v99 = *(v277 + 2);
      v99(v275, v98, a6);
      v100 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      goto LABEL_15;
    }

    v102 = sub_2723FEA74();
    if (v261 != 8)
    {
      goto LABEL_94;
    }

    v289[0] = v102;
    v99 = *v276;
    (*v276)(v275, v289, a6);
    swift_unknownObjectRelease();
    v100 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      break;
    }

LABEL_15:
    v101 = v275;
    sub_2723FEA44();
    v99(v93, v101, a6);
    (*v95)(v93, 0, 1, a6);
    sub_2723FE4E4();
    sub_2723FE504();
    (*v96)(v101, a6);
    v91 = v271;
    ++v94;
    if (v100 == sub_2723FE7B4())
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v103 = sub_2723FE784();
  v104 = v282;
  v105 = v280;
  v106 = sub_2723F2FDC(v103, v282, a6, v280);

  v286 = v106;
  v107 = sub_2723FE784();
  v108 = sub_2723F2FDC(v107, v104, a6, v105);

  v285 = v108;
  v109 = v288;
  v289[0] = v288;
  sub_2723FE4B4();
  v253 = v109;

  swift_getWitnessTable();
  v110 = sub_2723FE854();
  v289[0] = v287;
  v252 = v287;

  v111 = sub_2723FE854();
  v289[0] = v111;
  sub_2723FE844();

  swift_getWitnessTable();
  v112 = sub_2723FE824();
  v214 = v110;
  v213 = v111;
  v212 = v112;
  if ((v112 & 0xC000000000000001) != 0)
  {

    sub_2723FE9E4();
    sub_2723FE834();
    v113 = v289[0];
    v223 = v289[1];
    v114 = v289[2];
    v244 = v289[3];
    v115 = v289[4];
  }

  else
  {
    v116 = -1 << *(v112 + 32);
    v117 = *(v112 + 56);
    v223 = v112 + 56;
    v114 = ~v116;
    v118 = -v116;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    else
    {
      v119 = -1;
    }

    v115 = v119 & v117;

    v244 = 0;
    v113 = v120;
  }

  v121 = v237;
  v122 = v255;
  v123 = v259;
  v124 = v266;
  v125 = v264;
  v225 = 0;
  v256 = 0;
  v254 = (v238 + 56);
  v211 = v114;
  v126 = (v114 + 64) >> 6;
  v251 = (v238 + 16);
  v275 = (v238 + 32);
  v278 = (v277 + 56);
  v264 = v263 + 16;
  v271 = (v277 + 48);
  v276 = (v277 + 32);
  v220 = v258 + 24;
  v257 = (v277 + 8);
  v266 = v263 + 8;
  v242 = (v125 + 48);
  v229 = (v125 + 32);
  v219 = v258 + 32;
  v228 = (v125 + 8);
  v227 = v258 + 40;
  v226 = (v277 + 16);
  v236 = (v124 + 1);
  v241 = (v238 + 8);
  v127 = v270;
  v243 = v113;
  v240 = v126;
  while ((v113 & 0x8000000000000000) == 0)
  {
    if (!v115)
    {
      v129 = v244;
      while (1)
      {
        v128 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          break;
        }

        if (v128 >= v126)
        {
          goto LABEL_72;
        }

        v115 = *(v223 + 8 * v128);
        ++v129;
        if (v115)
        {
          v244 = v128;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v128 = v244;
LABEL_38:
    v130 = __clz(__rbit64(v115));
    v115 &= v115 - 1;
    (*(v238 + 16))(v122, *(v113 + 48) + *(v238 + 72) * (v130 | (v128 << 6)), v104);
LABEL_39:
    (*v254)(v122, 0, 1, v104);
    (*v275)(v265, v122, v104);
    v131 = v267;
    sub_2723FE4F4();
    sub_2723FE4F4();
    v261 = *v278;
    v261(v127, 1, 1, a6);
    v132 = *v264;
    (*v264)(v123, v131, v121);
    v133 = *v271;
    v134 = (*v271)(v123, 1, a6);
    v269 = v133;
    v277 = v132;
    if (v134 == 1)
    {
      v135 = *v266;
      (*v266)(v127, v121);
      v263 = v135;
      (v135)(v123, v121);
      (v132)(v127, v268, v121);
      v136 = v276;
      v137 = v132;
      v138 = v127;
      v139 = v245;
    }

    else
    {
      v140 = v230;
      v141 = v123;
      v136 = v276;
      v239 = *v276;
      v239(v230, v141, a6);
      v142 = v232;
      (v132)(v232, v268, v121);
      if ((v133)(v142, 1, a6) == 1)
      {
        v143 = v136;
        v144 = *v266;
        v138 = v270;
        (*v266)(v270, v121);
        v263 = v144;
        (v144)(v142, v121);
        v136 = v143;
        v239(v138, v140, a6);
        v261(v138, 0, 1, a6);
        v139 = v245;
      }

      else
      {
        v145 = v224;
        v146 = v142;
        v147 = v239;
        v239(v224, v146, a6);
        (*(v258 + 24))(v284, v145, a6);
        v148 = v145;
        v149 = v140;
        v150 = v266;
        v138 = v270;
        if (LOBYTE(v284[0]) >= 2u)
        {
          v148 = v140;
          v149 = v224;
          if (LOBYTE(v284[0]) != 2)
          {
            goto LABEL_95;
          }
        }

        (*v257)(v148, a6);
        v263 = *v150;
        (v263)(v138, v121);
        v147(v138, v149, a6);
        v261(v138, 0, 1, a6);
        v139 = v245;
      }

      v137 = v277;
    }

    sub_2723F32E8(v250, v139);
    v151 = v248;
    if ((*v242)(v139, 1, v248) == 1)
    {
      sub_2723F3358(v139);
    }

    else
    {
      v152 = v235;
      (*v229)(v235, v139, v151);
      v153 = v138;
      v154 = v233;
      (v137)(v233, v153, v121);
      v155 = v151;
      if (v269(v154, 1, a6) == 1)
      {
        (*v228)(v152, v151);
        (v263)(v154, v121);
        v138 = v270;
        v136 = v276;
      }

      else
      {
        v156 = v276;
        v157 = v221;
        (*v276)(v221, v154, a6);
        v158 = (*(v258 + 32))(v152, a6);
        (*v257)(v157, a6);
        v159 = v152;
        v136 = v156;
        (*v228)(v159, v155);
        v138 = v270;
        if (v158)
        {
          (v263)(v270, v121);
          v261(v138, 1, 1, a6);
        }
      }
    }

    v160 = v247;
    (v137)(v247, v138, v121);
    v161 = v269;
    v162 = v269(v160, 1, a6);
    v260 = v115;
    if (v162 == 1)
    {
      v163 = v263;
      (v263)(v160, v121);
      v164 = v246;
    }

    else
    {
      v165 = v231;
      (*v136)(v231, v160, a6);
      (*(v258 + 40))(a6);
      (*v251)(v279, v265, v282);
      v166 = v281;
      (*v226)(v281, v165, a6);
      v261(v166, 0, 1, a6);
      sub_2723FE4E4();
      sub_2723FE504();
      (*v257)(v165, a6);
      v121 = v237;
      v164 = v246;
      v138 = v270;
      v163 = v263;
      v161 = v269;
    }

    v167 = *(v262 + 48);
    v168 = v277;
    (v277)(v164, v267, v121);
    v168(&v164[v167], v138, v121);
    if (v161(v164, 1, a6) == 1)
    {
      if (v161(&v164[v167], 1, a6) == 1)
      {
        v163(v164, v121);
        v169 = v268;
        v170 = v262;
        goto LABEL_64;
      }
    }

    else
    {
      v171 = v234;
      v168(v234, v164, v121);
      if (v161(&v164[v167], 1, a6) != 1)
      {
        v172 = v222;
        (*v276)(v222, &v164[v167], a6);
        v173 = *(v258 + 8);
        v174 = sub_2723FE534();
        v175 = *v257;
        (*v257)(v172, a6);
        v175(v171, a6);
        v163(v164, v121);
        v176 = v174 ^ 1;
        v161 = v269;
        v170 = v262;
        v256 |= v176;
        goto LABEL_63;
      }

      (*v257)(v171, a6);
    }

    v170 = v262;
    (*v236)(v164, v262);
    v256 = 1;
LABEL_63:
    v169 = v268;
LABEL_64:
    v177 = *(v170 + 48);
    v178 = v249;
    v179 = v277;
    (v277)(v249, v169, v121);
    v180 = v270;
    v179(&v178[v177], v270, v121);
    if (v161(v178, 1, a6) == 1)
    {
      v163(v180, v121);
      v163(v169, v121);
      v163(v267, v121);
      (*v241)(v265, v282);
      v181 = v161(&v178[v177], 1, a6);
      v122 = v255;
      v113 = v243;
      v115 = v260;
      if (v181 != 1)
      {
        goto LABEL_70;
      }

      v163(v178, v121);
      goto LABEL_67;
    }

    v182 = v209;
    v179(v209, v178, v121);
    if (v161(&v178[v177], 1, a6) == 1)
    {
      v163(v270, v121);
      v163(v268, v121);
      v163(v267, v121);
      (*v241)(v265, v282);
      (*v257)(v182, a6);
      v122 = v255;
      v113 = v243;
      v115 = v260;
LABEL_70:
      (*v236)(v178, v262);
      v225 = 1;
LABEL_67:
      v123 = v259;
      v127 = v270;
      v126 = v240;
      v104 = v282;
      continue;
    }

    v183 = v222;
    (*v276)(v222, &v178[v177], a6);
    v184 = *(v258 + 8);
    v185 = sub_2723FE534();
    v186 = *v257;
    (*v257)(v183, a6);
    v187 = v270;
    v163(v270, v121);
    v163(v268, v121);
    v163(v267, v121);
    v188 = v163;
    v104 = v282;
    (*v241)(v265, v282);
    v186(v209, a6);
    v127 = v187;
    v188(v178, v121);
    v225 |= v185 ^ 1;
    v122 = v255;
    v123 = v259;
    v113 = v243;
    v126 = v240;
    v115 = v260;
  }

  if (sub_2723FE9F4())
  {
    sub_2723FEC24();
    swift_unknownObjectRelease();
    v123 = v259;
    goto LABEL_39;
  }

LABEL_72:

  (*v254)(v122, 1, 1, v104);
  v189 = sub_2723D8970();
  if ((v216 & 1) == 0)
  {
    v189 = sub_2723FE4C4();
    v190 = v189 > v210;
    v225 |= v190;
    v256 |= v190;
  }

  v284[0] = v285;
  MEMORY[0x28223BE20](v189);
  v277 = a6;
  v191 = sub_2723FE4E4();

  swift_getWitnessTable();
  v270 = v191;
  v192 = sub_2723FE704();
  swift_bridgeObjectRelease_n();
  v283 = v192;
  v193 = TupleTypeMetadata2;
  sub_2723FE7E4();
  swift_getWitnessTable();
  sub_2723FE864();
  v194 = v284[1];
  v195 = v284[2];
  v196 = v284[3];
  swift_unknownObjectRetain();
  v197 = sub_2723FE9A4();
  v269 = (v196 >> 1);
  v271 = (v217 + 32);
  while (1)
  {
    if (v197 == sub_2723FE9C4())
    {
      v198 = *(v193 - 8);
      (*(v198 + 56))(v272, 1, 1, v193);
    }

    else
    {
      sub_2723FE9B4();
      if (v197 < v195 || v269 <= v197)
      {
        goto LABEL_92;
      }

      v198 = *(v193 - 8);
      v199 = v272;
      (*(v198 + 16))(v272, v194 + *(v198 + 72) * v197++, v193);
      (*(v198 + 56))(v199, 0, 1, v193);
    }

    v200 = v273;
    (*v271)();
    if ((*(v198 + 48))(v200, 1, v193) == 1)
    {
      break;
    }

    v201 = *(v193 + 48);
    (*v275)(v279, v200, v282);
    v202 = &v200[v201];
    v203 = v281;
    v204 = v277;
    (*v276)(v281, v202, v277);
    (*v278)(v203, 0, 1, v204);
    sub_2723FE504();
  }

  swift_unknownObjectRelease();
  v284[0] = v286;
  sub_2723FE4D4();

  swift_getWitnessTable();
  v205 = sub_2723FE7F4();
  swift_unknownObjectRelease();

  if (v256)
  {
    v207 = v215;
    *v215 = v205;
    if ((v225 & 1) == 0)
    {
      *(v207 + 8) = 0;
      return result;
    }

    v208 = 2;
  }

  else if (v225)
  {
    v207 = v215;
    *v215 = v205;
    v208 = 1;
  }

  else
  {

    v207 = v215;
    *v215 = 0;
    v208 = 3;
  }

  *(v207 + 8) = v208;
  return result;
}

uint64_t sub_2723F2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = sub_2723FE294();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(a4 + 48);
  v17 = a1 + *(TupleTypeMetadata2 + 48);
  v16(a3, a4);
  v18 = v22 + *(TupleTypeMetadata2 + 48);
  v16(a3, a4);
  LOBYTE(v18) = sub_2723FE254();
  v19 = *(v7 + 8);
  v20 = v23;
  v19(v11, v23);
  v19(v13, v20);
  return v18 & 1;
}

unint64_t sub_2723F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2723FE514();

  return sub_2723F2E54(a1, v9, a2, a3);
}

unint64_t sub_2723F2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2723FE534();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2723F2FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2723FE7B4())
  {
    sub_2723FEB44();
    v13 = sub_2723FEB34();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2723FE7B4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2723FE7A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2723FEA74();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2723F2DF8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2723F32E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}