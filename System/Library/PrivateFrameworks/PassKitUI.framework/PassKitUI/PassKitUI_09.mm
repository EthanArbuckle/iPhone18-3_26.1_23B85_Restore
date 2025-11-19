void PassLocationWeatherManager.fetchWeatherDisplayInformation(forEntry:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = [a1 metadata];
  v16 = [v15 eventMetadata];

  if (v16)
  {
    v17 = [v16 venueLocation];
    v22 = [v17 CLLocation];

    v18 = [v16 date];
    if (v18)
    {
      v19 = v18;
      sub_1BE04AEE4();

      (*(v7 + 32))(v14, v11, v6);
      PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(v14, v22, a2, a3);

      (*(v7 + 8))(v14, v6);
    }

    else
    {
      a2();

      v20 = v22;
    }
  }

  else
  {
    (a2)(0);
  }
}

void sub_1BD13707C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1BD137110(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    (a2)(a1);
  }

  else
  {
    a2();
  }
}

uint64_t sub_1BD1372C4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v87 = a7;
  v88 = a8;
  v81 = a4;
  v82 = a5;
  v91 = a2;
  v89 = sub_1BE04AF64();
  v83 = *(v89 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v89, v14);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B494();
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A058);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A060);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v70 - v27;
  v29 = sub_1BE04B4C4();
  v85 = *(v29 - 8);
  v86 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A068);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v90 = &v70 - v37;
  if (!a1)
  {
    return v91(0);
  }

  v78 = v36;
  v79 = v35;
  v80 = a3;
  v38 = a1;
  v39 = [v38 locality];
  if (!v39)
  {

    return v91(0);
  }

  v40 = v39;
  v41 = sub_1BE052434();
  v74 = v42;
  v75 = v41;

  sub_1BE04B4E4();
  v43 = [v38 ISOcountryCode];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1BE052434();
    v72 = v46;
    v73 = v45;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  LODWORD(v82) = a10;
  LODWORD(v81) = a9;
  v48 = [v38 timeZone];
  v76 = v38;
  v77 = a6;
  if (v48)
  {
    v49 = v48;
    sub_1BE04B394();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = sub_1BE04B3B4();
  (*(*(v51 - 8) + 56))(v28, v50, 1, v51);
  v52 = sub_1BE04B4D4();
  (*(*(v52 - 8) + 56))(v24, 1, 1, v52);
  v53 = sub_1BE04B4A4();
  (*(*(v53 - 8) + 56))(v20, 1, 1, v53);
  v92 = MEMORY[0x1E69E7CC0];
  sub_1BD13A2E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A078);
  sub_1BD13A340();
  sub_1BE053664();
  v71 = v32;
  sub_1BE04B4B4();
  sub_1BE04B524();
  v73 = sub_1BE04B514();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v83;
  v56 = v84;
  v57 = v89;
  (*(v83 + 16))(v84, v88, v89);
  v58 = (*(v55 + 80) + 40) & ~*(v55 + 80);
  v59 = (v13 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v91;
  *(v61 + 2) = v54;
  *(v61 + 3) = v62;
  *(v61 + 4) = v80;
  (*(v55 + 32))(&v61[v58], v56, v57);
  *&v61[v59] = v73;
  v63 = &v61[v60];
  v64 = v74;
  *v63 = v75;
  v63[1] = v64;
  v65 = &v61[(v60 + 23) & 0xFFFFFFFFFFFFFFF8];
  v66 = v77;
  *v65 = v77;
  v65[8] = v81 & 1;
  v65[9] = v82 & 1;
  sub_1BE048964();
  sub_1BE048964();
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A088);
  v68 = v90;
  v69 = v71;
  sub_1BE04B4F4();

  (*(v85 + 8))(v69, v86);
  return (*(v78 + 8))(v68, v79);
}

void sub_1BD1379A0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v129 = a8;
  v128 = a7;
  v127 = a6;
  v130 = a5;
  v14 = sub_1BE04D214();
  v136 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1BE04AA64();
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v18);
  v143 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090);
  v131 = *(v144 - 8);
  v21 = MEMORY[0x1EEE9AC00](v144, v20);
  v142 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v141 = &v117 - v24;
  v125 = sub_1BE04B564();
  v146 = *(v125 - 8);
  v26 = MEMORY[0x1EEE9AC00](v125, v25);
  v124 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v117 - v29;
  v31 = sub_1BE0521E4();
  v134 = *(v31 - 8);
  v135 = v31;
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v140 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v139 = &v117 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v126 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v123 = &v117 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v147 = &v117 - v45;
  v46 = sub_1BE04B484();
  v137 = *(v46 - 8);
  v138 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v117 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A088);
  v150 = *(v50 - 8);
  v151 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v149 = &v117 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A098);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = (&v117 - v55);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a3();
    return;
  }

  v58 = Strong;
  v132 = a4;
  v133 = a3;
  sub_1BD0DE19C(a1, v56, &qword_1EBD3A098);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v150 + 32))(v149, v56, v151);
    v69 = sub_1BE04B574();
    if (!*(v69 + 16))
    {

      v79 = 0;
LABEL_19:
      (v133)(v79);

      (*(v150 + 8))(v149, v151);
      return;
    }

    v136 = a9;
    (*(v137 + 16))(v49, v69 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v138);

    (*(v145 + 56))(v147, 1, 1, v148);
    sub_1BE04B474();
    v70 = v139;
    sub_1BE04B534();
    v71 = v146 + 8;
    v72 = *(v146 + 1);
    v73 = v125;
    v72(v30, v125);
    sub_1BE04B474();
    v74 = v140;
    sub_1BE04B534();
    v146 = v71;
    v121 = v72;
    v72(v30, v73);
    v75 = sub_1BE0521C4();
    v77 = v76;
    if (v75 == sub_1BE0521C4() && v77 == v78)
    {
    }

    else
    {
      v80 = sub_1BE053B84();

      if ((v80 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v81 = sub_1BE0521D4();
    if (v81 >> 62)
    {
      v112 = sub_1BE053704();

      if (v112)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v82)
    {
LABEL_15:
      (*(v134 + 24))(v74, v70, v135);
    }

LABEL_16:
    v122 = v58;
    v119 = a11;
    v120 = a10;
    sub_1BE0521C4();
    sub_1BE0521D4();
    v83 = objc_allocWithZone(PKPassWeatherSymbol);
    v84 = sub_1BE052404();

    sub_1BD0E5E8C(0, &qword_1EBD43100);
    v85 = sub_1BE052724();

    v86 = [v83 initWithSymbolName:v84 colorPalette:v85];

    v118 = v86;
    sub_1BE0521C4();
    sub_1BE0521D4();
    v87 = objc_allocWithZone(PKPassWeatherSymbol);
    v88 = sub_1BE052404();

    v89 = sub_1BE052724();

    v90 = [v87 initWithSymbolName:v88 colorPalette:v89];

    sub_1BD0E5E8C(0, &qword_1EBD3A0A0);
    v117 = v90;
    v91 = v123;
    sub_1BE052F54();
    v92 = v147;
    sub_1BD0DE53C(v147, &unk_1EBD3CF70);
    sub_1BD0DE204(v91, v92, &unk_1EBD3CF70);
    v93 = v124;
    sub_1BE04B474();
    sub_1BE04B544();
    v121(v93, v73);
    sub_1BE04B464();
    v146 = v49;
    sub_1BE04B454();
    sub_1BE04B504();
    v94 = v126;
    sub_1BD0DE19C(v92, v126, &unk_1EBD3CF70);
    v129 = sub_1BE052404();
    v130 = sub_1BE04AE64();
    v128 = sub_1BE052404();

    v127 = sub_1BE04A1C4();
    v95 = sub_1BE04A1C4();
    v96 = sub_1BE04A9C4();
    v97 = v145;
    v98 = v148;
    v99 = 0;
    if ((*(v145 + 48))(v94, 1, v148) != 1)
    {
      v99 = sub_1BE04A9C4();
      (*(v97 + 8))(v94, v98);
    }

    v100 = objc_allocWithZone(PKPassWeatherInformation);
    BYTE1(v116) = v119 & 1;
    LOBYTE(v116) = v120 & 1;
    v115 = v96;
    v113 = v95;
    v114 = v136;
    v101 = v129;
    v102 = v130;
    v103 = v118;
    v104 = v117;
    v105 = v95;
    v106 = v128;
    v136 = v96;
    v107 = v127;
    v79 = [v100 initWithCityName:v129 date:v130 lightSymbol:v118 darkSymbol:v117 weatherDescription:v128 highTemperature:v127 lowTemperature:v113 rawLocation:v114 attributionURL:v115 weatherURL:v99 isHistoricalEstimate:v116 isForPastDate:?];

    (*(v97 + 8))(v143, v148);
    v108 = *(v131 + 8);
    v109 = v144;
    v108(v142, v144);
    v108(v141, v109);
    v110 = v135;
    v111 = *(v134 + 8);
    v111(v140, v135);
    v111(v139, v110);
    sub_1BD0DE53C(v147, &unk_1EBD3CF70);
    (*(v137 + 8))(v146, v138);
    v58 = v122;
    goto LABEL_19;
  }

  v59 = *v56;
  sub_1BE04D1F4();
  v60 = v59;
  v61 = sub_1BE04D204();
  v62 = sub_1BE052C34();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v133;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = v59;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_1BD026000, v61, v62, "PassLocationWeatherManager: Failed to get weather forecast with error: %@", v65, 0xCu);
    sub_1BD0DE53C(v66, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v66, -1, -1);
    MEMORY[0x1BFB45F20](v65, -1, -1);
  }

  (*(v136 + 1))(v17, v14);
  (v64)(0);
}

void sub_1BD138774(unint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1BE04D1F4();
    v13 = a2;
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_1BD026000, v14, v15, "PassLocationWeatherManager: Failed to get placemark with error: %@", v16, 0xCu);
      sub_1BD0DE53C(v17, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v17, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    (a3)(0);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(a1 + 32);
  }

  v22 = v11;
  a3();
  v12 = v22;
}

uint64_t sub_1BD1389F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3A050);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v6 = a3;
  v5(v4, a3);
}

id PassLocationWeatherManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassLocationWeatherManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassLocationWeatherManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD138BB0(char *a1, void *a2, void *a3, void (**a4)(const void *, void))
{
  v145 = a3;
  v151 = a2;
  v160 = a1;
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1BE04B2F4();
  v10 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v11);
  v13 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v159 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v158 = &v137 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v152 = &v137 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v156 = &v137 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v173 = &v137 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v165 = &v137 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v137 - v34;
  v163 = sub_1BE04AF64();
  v174 = *(v163 - 8);
  v37 = MEMORY[0x1EEE9AC00](v163, v36);
  v150 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v149 = &v137 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v148 = &v137 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v161 = &v137 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v154 = &v137 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v146 = &v137 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v57 = &v137 - v56;
  v144 = v58;
  MEMORY[0x1EEE9AC00](v55, v59);
  v61 = &v137 - v60;
  v172 = swift_allocObject();
  *(v172 + 16) = a4;
  v164 = a4;
  _Block_copy(a4);
  sub_1BE04AF54();
  v155 = objc_opt_self();
  v62 = [v155 currentCalendar];
  sub_1BE04B1F4();

  v63 = *(v6 + 104);
  v162 = *MEMORY[0x1E6969A48];
  v166 = v63;
  v63(v9);
  sub_1BE04B224();
  v64 = *(v6 + 8);
  v157 = v9;
  v65 = v9;
  v66 = v5;
  v67 = v163;
  v68 = v66;
  v171 = v6 + 8;
  v167 = v64;
  (v64)(v65);
  v69 = *(v10 + 8);
  v169 = v13;
  v170 = v10 + 8;
  v168 = v69;
  v69(v13, v175);
  v70 = v174;
  v71 = v174 + 48;
  v72 = *(v174 + 48);
  if (v72(v35, 1, v67) != 1)
  {
    v140 = v72;
    v147 = v71;
    v73 = *(v70 + 32);
    v143 = v70 + 32;
    v139 = v73;
    v73(v57, v35, v67);
    v141 = v57;
    v74 = v160;
    v142 = sub_1BE04AF04();
    v75 = v169;
    sub_1BE04B2A4();
    v76 = v70;
    v77 = v157;
    v166(v157, v162, v68);
    v153 = v61;
    v78 = v68;
    v138 = sub_1BE04B294();
    v167(v77, v68);
    v168(v75, v175);
    v79 = v67;
    v80 = *(v76 + 56);
    v80(v165, 1, 1, v79);
    v80(v173, 1, 1, v79);
    v81 = v155;
    v82 = [v155 currentCalendar];
    sub_1BE04B1F4();

    if (v142 == 1)
    {
      v83 = v81;
      v166(v77, *MEMORY[0x1E6969A68], v78);
      v84 = v156;
      v85 = v169;
      sub_1BE04B224();
      v167(v77, v78);
      v168(v85, v175);
      v86 = v173;
      sub_1BD0DE53C(v173, &unk_1EBD39970);
      sub_1BD0DE204(v84, v86, &unk_1EBD39970);
      v87 = v86;
      v88 = v152;
      sub_1BD0DE19C(v87, v152, &unk_1EBD39970);
      v89 = v140;
      if (v140(v88, 1, v79) == 1)
      {
        sub_1BD0DE53C(v88, &unk_1EBD39970);
        v90 = v165;
      }

      else
      {
        v98 = v146;
        v139(v146, v88, v79);
        v99 = [v83 currentCalendar];
        v100 = v84;
        v101 = v169;
        sub_1BE04B1F4();

        v166(v77, v162, v78);
        sub_1BE04B224();
        v167(v77, v78);
        v168(v101, v175);
        (*(v174 + 8))(v98, v79);
        v90 = v165;
        sub_1BD0DE53C(v165, &unk_1EBD39970);
        sub_1BD0DE204(v100, v90, &unk_1EBD39970);
      }

      v93 = v173;
      v95 = v153;
      v96 = v164;
      v97 = v158;
    }

    else
    {
      v166(v77, v162, v78);
      v91 = v156;
      v92 = v169;
      sub_1BE04B224();
      v167(v77, v78);
      v168(v92, v175);
      v93 = v173;
      sub_1BD0DE53C(v173, &unk_1EBD39970);
      v94 = v165;
      sub_1BD0DE53C(v165, &unk_1EBD39970);
      sub_1BD0DE204(v91, v93, &unk_1EBD39970);
      (*(v174 + 16))(v94, v74, v79);
      v80(v94, 0, 1, v79);
      v90 = v94;
      v95 = v153;
      v96 = v164;
      v97 = v158;
      v89 = v140;
    }

    sub_1BD0DE19C(v90, v97, &unk_1EBD39970);
    v102 = v89(v97, 1, v79);
    v103 = v161;
    v104 = v159;
    if (v102 == 1)
    {
      sub_1BD0DE53C(v97, &unk_1EBD39970);
      v105 = v174;
    }

    else
    {
      v106 = v154;
      v107 = v139;
      v139(v154, v97, v79);
      sub_1BD0DE19C(v93, v104, &unk_1EBD39970);
      v108 = v89(v104, 1, v79);
      v109 = v104;
      v105 = v174;
      if (v108 == 1)
      {
        (*(v174 + 8))(v106, v79);
        sub_1BD0DE53C(v109, &unk_1EBD39970);
      }

      else
      {
        v107(v103, v109, v79);
        if (v151)
        {
          LODWORD(v171) = v138 == 1;
          LODWORD(v170) = v142 == 1;
          v110 = swift_allocObject();
          v175 = v110;
          v111 = v172;
          *(v110 + 16) = sub_1BD139BD4;
          *(v110 + 24) = v111;
          v112 = v105;
          v113 = *(v105 + 16);
          v113(v148, v154, v79);
          v114 = v107;
          v113(v149, v103, v79);
          v113(v150, v160, v79);
          v115 = *(v112 + 80);
          v116 = (v115 + 32) & ~v115;
          v117 = (v144 + v115 + v116) & ~v115;
          v118 = (v144 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
          v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
          v120 = (v115 + v119 + 8) & ~v115;
          v121 = v120 + v144;
          v122 = swift_allocObject();
          v123 = v175;
          *(v122 + 16) = sub_1BD13A488;
          *(v122 + 24) = v123;
          v114(v122 + v116, v148, v79);
          v114(v122 + v117, v149, v79);
          v124 = v151;
          *(v122 + v118) = v151;
          v125 = v145;
          *(v122 + v119) = v145;
          v114(v122 + v120, v150, v79);
          v126 = (v122 + v121);
          *v126 = v170;
          v126[1] = v171;
          v127 = objc_allocWithZone(MEMORY[0x1E695FBC8]);
          v128 = v124;
          sub_1BE048964();
          sub_1BE048964();
          v129 = v125;
          v130 = [v127 init];
          v131 = swift_allocObject();
          *(v131 + 16) = sub_1BD13A484;
          *(v131 + 24) = v122;
          aBlock[4] = sub_1BD13A47C;
          aBlock[5] = v131;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD1389F0;
          aBlock[3] = &block_descriptor_25;
          v132 = _Block_copy(aBlock);
          sub_1BE048964();

          [v130 reverseGeocodeLocation:v128 completionHandler:v132];
          _Block_release(v132);

          v133 = *(v174 + 8);
          v133(v161, v79);
          v133(v154, v79);
          sub_1BD0DE53C(v173, &unk_1EBD39970);
          sub_1BD0DE53C(v165, &unk_1EBD39970);
          v133(v141, v79);
          v133(v153, v79);
        }

        v134 = *(v105 + 8);
        v134(v103, v79);
        v134(v154, v79);
        v96 = v164;
      }

      v95 = v153;
    }

    v96[2](v96, 0);
    sub_1BD0DE53C(v93, &unk_1EBD39970);
    sub_1BD0DE53C(v90, &unk_1EBD39970);
    v135 = *(v105 + 8);
    v135(v141, v79);
    v135(v95, v79);
  }

  sub_1BD0DE53C(v35, &unk_1EBD39970);
  v164[2](v164, 0);
  (*(v70 + 8))(v61, v67);
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  v9(v0 + ((v3 + v8 + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD139D34(void *a1)
{
  v3 = *(sub_1BE04AF64() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + ((v4 + v9 + 8) & ~v4);
  return sub_1BD1372C4(a1, *(v1 + 16), *(v1 + 24), v1 + v5, v1 + v7, *(v1 + v8), *(v1 + v9), v10, *(v10 + v6), *(v10 + v6 + 1));
}

void sub_1BD139E10(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v22 - v17;
  _Block_copy(a3);
  v19 = [a1 eventLocation];
  v20 = [v19 CLLocation];

  sub_1BE04AF54();
  sub_1BD1354CC(a1, v18, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD39970);
    a3[2](a3, 0);

    (*(v11 + 8))(v18, v10);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    _Block_copy(a3);
    sub_1BD138BB0(v15, v20, a2, a3);
    _Block_release(a3);

    v21 = *(v11 + 8);
    v21(v15, v10);
    v21(v18, v10);
  }

  _Block_release(a3);
}

void sub_1BD13A088(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  _Block_copy(a3);
  v15 = [a1 metadata];
  v16 = [v15 eventMetadata];

  if (v16)
  {
    v17 = [v16 venueLocation];
    v18 = [v17 CLLocation];

    v19 = [v16 date];
    if (v19)
    {
      v20 = v19;
      sub_1BE04AEE4();

      (*(v7 + 32))(v14, v11, v6);
      _Block_copy(a3);
      sub_1BD138BB0(v14, v18, a2, a3);
      _Block_release(a3);

      (*(v7 + 8))(v14, v6);
      _Block_release(a3);
      return;
    }

    a3[2](a3, 0);
  }

  else
  {
    a3[2](a3, 0);
  }

  _Block_release(a3);
}

unint64_t sub_1BD13A2E8()
{
  result = qword_1EBD3A070;
  if (!qword_1EBD3A070)
  {
    sub_1BE04B494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A070);
  }

  return result;
}

unint64_t sub_1BD13A340()
{
  result = qword_1EBD3A080;
  if (!qword_1EBD3A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A080);
  }

  return result;
}

void sub_1BD13A3A4(uint64_t a1)
{
  v3 = *(sub_1BE04AF64() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD1379A0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9));
}

uint64_t sub_1BD13A4C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BE051E44();
}

uint64_t sub_1BD13A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE0534B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1BD13A700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04F994();
  MEMORY[0x1EEE9AC00](v4, v5);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BE04F9A4();
}

uint64_t sub_1BD13A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE04F994();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BE04F9A4();
}

uint64_t sub_1BD13A8F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04CBF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD13A948()
{
  type metadata accessor for AuthenticatorModel();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);

  return sub_1BE04E964();
}

uint64_t sub_1BD13A9D0(uint64_t a1)
{
  sub_1BD0DE19C(a1, v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  return sub_1BD0DE53C(a1, &qword_1EBD51EC0);
}

uint64_t sub_1BD13AA50(uint64_t a1)
{
  sub_1BD0DE19C(a1, v3, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();
  return sub_1BD0DE53C(a1, &qword_1EBD51EC0);
}

uint64_t sub_1BD13AAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &qword_1EBD3D520);
  sub_1BE051694();
  return sub_1BD0DE53C(a1, &qword_1EBD3D520);
}

BOOL sub_1BD13AB9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  sub_1BE0516A4();
  v4 = sub_1BE04C614();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) == 1;
  sub_1BD0DE53C(v3, &qword_1EBD3D520);
  return v5;
}

uint64_t sub_1BD13ACA0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v33 = a10;
  v34 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v33 - v19;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a8[4] = sub_1BE04EEC4();
  a8[5] = v21;
  memset(v39, 0, sizeof(v39));
  sub_1BD13A9D0(v39);
  *v39 = a9;
  *&v39[8] = v33;
  *&v39[24] = v34;
  v40 = a12;
  v41 = a13;
  v22 = type metadata accessor for AuthenticatedTransactionSheet();
  v23 = sub_1BE04C614();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1BD13AAD4(v20);
  v24 = *(v22 + 108);
  *(a8 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v25 = a8 + *(v22 + 112);
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  a8[1] = v26;
  sub_1BD0EE8CC(a1, (a8 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v27 = sub_1BE04E954();
  v29 = v28;

  a8[2] = v27;
  a8[3] = v29;
  a8[11] = a2;
  a8[12] = a3;
  v30 = v36;
  a8[13] = v35;
  a8[14] = v30;
  v31 = v38;
  a8[15] = v37;
  a8[16] = v31;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD13AF94@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v187 = a2;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A218);
  v186 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v3);
  v185 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A220);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v184 = &v152 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A228);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v182 = &v152 - v11;
  v215 = *(a1 - 1);
  v212 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v202 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
  v198 = a1[5];
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_1BE051854();
  v188 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  *&v211 = &v152 - v16;
  v199 = a1[4];
  v216 = a1[7];
  v17 = sub_1BE04C674();
  v206 = v17;
  v18 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  *&v210 = &v152 - v20;
  v21 = a1[3];
  v193 = a1;
  v194 = v21;
  v213 = a1[6];
  v22 = type metadata accessor for PaymentSheetHeader();
  v209 = v22;
  v23 = swift_getWitnessTable();
  v207 = v23;
  v24 = swift_getWitnessTable();
  v166 = v24;
  v165 = swift_getWitnessTable();
  *&v221 = v22;
  *(&v221 + 1) = v17;
  *&v222 = v14;
  *(&v222 + 1) = v23;
  *&v223 = v24;
  *(&v223 + 1) = v165;
  v25 = type metadata accessor for PaymentRequestView();
  v176 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v196 = &v152 - v27;
  v204 = v25;
  v28 = sub_1BE04EBD4();
  v180 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v197 = &v152 - v30;
  v31 = sub_1BE04C614();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A230);
  v205 = swift_getWitnessTable();
  v234 = v205;
  v235 = MEMORY[0x1E69805D0];
  v208 = MEMORY[0x1E697E858];
  v33 = swift_getWitnessTable();
  v34 = sub_1BD145DD8(&qword_1EBD3A238, MEMORY[0x1E69BC8F0]);
  v183 = MEMORY[0x1E697C278];
  v35 = sub_1BD0DE4F4(&qword_1EBD3A240, &qword_1EBD3A230);
  *&v221 = v28;
  v159 = v28;
  v160 = v31;
  *(&v221 + 1) = v31;
  v161 = v32;
  *&v222 = v32;
  *(&v222 + 1) = v33;
  v157 = v34;
  v158 = v33;
  *&v223 = v34;
  *(&v223 + 1) = v35;
  v156 = v35;
  v189 = MEMORY[0x1E697D530];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v36);
  v201 = &v152 - v37;
  v190 = sub_1BE04CB04();
  sub_1BE04C864();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  v191 = sub_1BE04F9B4();
  *&v221 = v28;
  *(&v221 + 1) = v31;
  *&v222 = v32;
  *(&v222 + 1) = v33;
  *&v223 = v34;
  *(&v223 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1BD145DD8(&qword_1EBD3A248, MEMORY[0x1E69BCAC0]);
  v40 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
  v41 = swift_getWitnessTable();
  v232 = v40;
  v233 = v41;
  v230 = swift_getWitnessTable();
  v231 = MEMORY[0x1E6981E60];
  v42 = v191;
  v43 = swift_getWitnessTable();
  v44 = OpaqueTypeMetadata2;
  *&v221 = OpaqueTypeMetadata2;
  v45 = v190;
  *(&v221 + 1) = v190;
  *&v222 = v42;
  v154 = v39;
  v155 = OpaqueTypeConformance2;
  *(&v222 + 1) = OpaqueTypeConformance2;
  *&v223 = v39;
  *(&v223 + 1) = v43;
  v46 = v43;
  v153 = v43;
  v172 = swift_getOpaqueTypeMetadata2();
  v177 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v47);
  v200 = &v152 - v48;
  type metadata accessor for SecondarySheet();
  v195 = sub_1BE04EBD4();
  v178 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v49);
  v168 = &v152 - v50;
  *&v221 = v44;
  *(&v221 + 1) = v45;
  *&v222 = v42;
  *(&v222 + 1) = OpaqueTypeConformance2;
  *&v223 = v39;
  *(&v223 + 1) = v46;
  v51 = swift_getOpaqueTypeConformance2();
  v164 = v51;
  v52 = swift_getWitnessTable();
  v228 = v51;
  v229 = v52;
  v53 = v195;
  v54 = swift_getWitnessTable();
  *&v221 = v53;
  *(&v221 + 1) = v54;
  v55 = v54;
  v162 = v54;
  v56 = swift_getOpaqueTypeMetadata2();
  v170 = v56;
  v179 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v57);
  v163 = &v152 - v58;
  v59 = sub_1BD0DE4F4(&qword_1EBD3A250, &qword_1EBD3A218);
  v173 = v59;
  *&v221 = v53;
  *(&v221 + 1) = v55;
  v171 = swift_getOpaqueTypeConformance2();
  *&v221 = v203;
  *(&v221 + 1) = v56;
  *&v222 = v59;
  *(&v222 + 1) = v171;
  v60 = sub_1BE04EE14();
  v174 = *(v60 - 8);
  v175 = v60;
  v62 = MEMORY[0x1EEE9AC00](v60, v61);
  v167 = &v152 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v64);
  v169 = &v152 - v65;
  v66 = v193;
  v67 = v194;
  v189 = v193[2];
  v208 = v193[8];
  v68 = v214;
  v69 = v198;
  v70 = v213;
  v71 = v216;
  v72 = sub_1BD13C3F0(v214, v189, v194, v199, v198, v213, v216, v208);
  sub_1BD13C710(v72, v73, &v221);

  v219[4] = v225;
  v219[5] = v226;
  v220 = v227;
  v219[0] = v221;
  v219[1] = v222;
  v219[2] = v223;
  v219[3] = v224;
  sub_1BD13C92C(v66, v74, v210);
  sub_1BD13CC10();
  v75 = *(v68 + 24);
  v152 = *(v68 + 72);
  v76 = v152;
  v77 = __swift_project_boxed_opaque_existential_1((v68 + 48), v152);
  v218 = v152;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v217);
  (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v77, v76);
  sub_1BE048964();
  v79 = v66;
  LOBYTE(v76) = sub_1BD13AB9C();
  v80 = v67;
  v81 = v199;
  v82 = v208;
  v83 = sub_1BD13CD68(v68, v189, v80, v199, v69, v70, v71, v208);
  *(&v151 + 1) = v166;
  *&v151 = v207;
  sub_1BD9E7C68(v219, v210, v211, 0, 1, v75, v217, v76 & 1, v196, v83, v84, v209, v206, v188, v151, v165);
  v85 = v215;
  v206 = *(v215 + 16);
  v207 = v215 + 16;
  v86 = v202;
  v87 = v79;
  v206(v202, v68, v79);
  v209 = *(v85 + 80);
  v88 = (v209 + 72) & ~v209;
  v89 = swift_allocObject();
  *&v90 = v189;
  *(&v90 + 1) = v194;
  *&v91 = v81;
  *(&v91 + 1) = v198;
  v210 = v91;
  v211 = v90;
  *(v89 + 16) = v90;
  *(v89 + 32) = v91;
  v92 = v213;
  v93 = v216;
  *(v89 + 48) = v213;
  *(v89 + 56) = v93;
  *(v89 + 64) = v82;
  v199 = *(v85 + 32);
  v215 = v85 + 32;
  v199(v89 + v88, v86, v79);
  v94 = v196;
  v95 = v204;
  sub_1BE051054();

  (*(v176 + 8))(v94, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v96 = v214;
  v97 = v182;
  sub_1BE0516C4();
  v206(v86, v96, v87);
  v98 = v88;
  v188 = v88;
  v99 = swift_allocObject();
  v100 = v210;
  *(v99 + 16) = v211;
  *(v99 + 32) = v100;
  v101 = v216;
  *(v99 + 48) = v92;
  *(v99 + 56) = v101;
  v102 = v208;
  *(v99 + 64) = v208;
  v103 = v99 + v98;
  v104 = v86;
  v105 = v199;
  v199(v103, v86, v87);
  v106 = v159;
  v107 = v197;
  sub_1BE050F74();

  sub_1BD0DE53C(v97, &qword_1EBD3A228);
  (*(v180 + 8))(v107, v106);
  v108 = v214;
  sub_1BD13A948();
  swift_getKeyPath();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v109 = v184;
  sub_1BE04E974();

  v110 = v193;
  v206(v104, v108, v193);
  v111 = v188;
  v112 = swift_allocObject();
  v113 = v210;
  *(v112 + 16) = v211;
  *(v112 + 32) = v113;
  v114 = v216;
  *(v112 + 48) = v213;
  *(v112 + 56) = v114;
  *(v112 + 64) = v102;
  v115 = v104;
  v116 = v104;
  v117 = v110;
  v118 = v110;
  v119 = v105;
  v105(v112 + v111, v115, v117);
  swift_checkMetadataState();
  swift_checkMetadataState();
  v120 = OpaqueTypeMetadata2;
  v121 = v201;
  sub_1BE050F74();

  sub_1BD0DE53C(v109, &qword_1EBD3A220);
  (*(v181 + 8))(v121, v120);
  v122 = v214;
  sub_1BD13A948();
  swift_getKeyPath();
  sub_1BE04E974();

  v123 = v221;
  LOBYTE(v121) = v222;
  v124 = v122;
  v125 = v118;
  v206(v116, v124, v118);
  v126 = v188;
  v127 = swift_allocObject();
  v128 = v210;
  *(v127 + 16) = v211;
  *(v127 + 32) = v128;
  v129 = v216;
  *(v127 + 48) = v213;
  *(v127 + 56) = v129;
  *(v127 + 64) = v208;
  v119(v127 + v126, v116, v125);
  v130 = v168;
  v131 = v121;
  v132 = v172;
  v133 = v200;
  sub_1BD644A30(v123, *(&v123 + 1), v131, sub_1BD1465BC, v127, v172, v204, v164);

  (*(v177 + 8))(v133, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  v134 = v214;
  sub_1BE0516C4();
  v135 = v163;
  v136 = v195;
  sub_1BE050704();
  sub_1BD0DE53C(&v221, &qword_1EBD51FA0);
  (*(v178 + 8))(v130, v136);
  sub_1BE048964();
  v137 = v185;
  sub_1BE04C924();

  v138 = v202;
  v206(v202, v134, v125);
  v139 = swift_allocObject();
  v140 = v210;
  *(v139 + 16) = v211;
  *(v139 + 32) = v140;
  v141 = v216;
  *(v139 + 48) = v213;
  *(v139 + 56) = v141;
  *(v139 + 64) = v208;
  v199(v139 + v126, v138, v125);
  v142 = v167;
  v143 = v170;
  v144 = v203;
  sub_1BE051154();

  (*(v186 + 8))(v137, v144);
  (*(v179 + 8))(v135, v143);
  v145 = v175;
  swift_getWitnessTable();
  v146 = v174;
  v147 = *(v174 + 16);
  v148 = v169;
  v147(v169, v142, v145);
  v149 = *(v146 + 8);
  v149(v142, v145);
  v147(v187, v148, v145);
  return (v149)(v148, v145);
}

uint64_t (*sub_1BD13C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

uint64_t sub_1BD13C568()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1[3] + qword_1EBDAADA8 + 32) paymentRequest];
  if (v7)
  {
    v8 = v7;
    sub_1BD6B50F8(1, v7);
  }

  else
  {
    sub_1BE04D084();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  return sub_1BE04CC74();
}

uint64_t sub_1BD13C710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  sub_1BE048964();
  v7 = sub_1BE04C8C4();
  v9 = v8;

  sub_1BE048964();
  sub_1BE048964();
  v10 = sub_1BE04CAE4();

  v11 = *(v3 + 88);
  v12 = *(v4 + 96);
  sub_1BD0D44B8(v11);
  sub_1BD1A0BB0(v7, v9, 0x796150656C707041, 0xEC0000006F676F4CLL, a1, a2, v10 & 1, v11, &v30, v12);
  v13 = type metadata accessor for PaymentSheetHeader();
  swift_getWitnessTable();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(v26, &v30, v13);
  v28[4] = v34;
  v28[5] = v35;
  v29 = v36;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  v16 = *(v14 + 8);
  v16(v28, v13);
  v23 = v26[4];
  v24 = v26[5];
  v25 = v27;
  v19 = v26[0];
  v20 = v26[1];
  v21 = v26[2];
  v22 = v26[3];
  v15(a3, &v19, v13);
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  return v16(&v30, v13);
}

uint64_t sub_1BD13C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v30 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v30 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v30 - v21;
  v23 = *(v3 + 104);
  if (v23)
  {
    v32 = a3;
    v23(v20);
    v31 = *(v7 + 32);
    v31(v22, v18, v6);
    v24 = *(v7 + 16);
    v24(v14, v22, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A278);
    if (!swift_dynamicCast())
    {
      v24(v10, v22, v6);
      v26 = (*(v7 + 80) + 72) & ~*(v7 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = *(a1 + 16);
      *(v27 + 32) = v6;
      *(v27 + 40) = *(a1 + 40);
      v30 = *(a1 + 56);
      *(v27 + 56) = v30;
      v31((v27 + v26), v10, v6);
      a3 = v32;
      sub_1BE04C664();
      (*(v7 + 8))(v22, v6);
      v25 = 0;
      goto LABEL_6;
    }

    (*(v7 + 8))(v22, v6);
    a3 = v32;
  }

  v25 = 1;
LABEL_6:
  v28 = sub_1BE04C674();
  return (*(*(v28 - 8) + 56))(a3, v25, 1, v28);
}

uint64_t sub_1BD13CC10()
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1BE051844();
}

uint64_t (*sub_1BD13CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

double sub_1BD13CEE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v77 = a6;
  v78 = a8;
  v72 = a7;
  v73 = a4;
  v80 = a3;
  v81 = a5;
  v71 = a2;
  v69 = a9;
  v82 = a10;
  v84 = a3;
  v85 = a4;
  v86 = a5;
  v87 = a6;
  v88 = a7;
  v89 = a8;
  v90 = a10;
  v11 = type metadata accessor for AuthenticatedTransactionSheet();
  v59 = v11;
  v12 = *(v11 - 8);
  v79 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - v14;
  v63 = &v56 - v14;
  v16 = sub_1BE04C614();
  v58 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v70 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  sub_1BD13D3E8(a1, v83);
  v66 = *(v17 + 16);
  v66(&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = *(v12 + 16);
  v75 = v12 + 16;
  v76 = v20;
  v20(v15, v71, v11);
  v21 = *(v17 + 80);
  v68 = *(v12 + 80);
  v62 = (v21 + 72) & ~v21;
  v74 = v68 | 7;
  v22 = (v18 + v68 + v62) & ~v68;
  v57 = v22;
  v23 = swift_allocObject();
  v24 = v81;
  v25 = v73;
  *(v23 + 2) = v80;
  *(v23 + 3) = v25;
  v26 = v77;
  *(v23 + 4) = v24;
  *(v23 + 5) = v26;
  v27 = v78;
  *(v23 + 6) = v72;
  *(v23 + 7) = v27;
  *(v23 + 8) = v82;
  v28 = *(v17 + 32);
  v60 = v17 + 32;
  v61 = v28;
  v29 = v70;
  v30 = v58;
  v28(&v23[(v21 + 72) & ~v21], v70, v58);
  v32 = v12 + 32;
  v31 = *(v12 + 32);
  v33 = &v23[v22];
  v34 = v63;
  v35 = v59;
  v31(v33, v63, v59);
  v64 = v31;
  v65 = v32;
  v66(v29, v67, v30);
  v36 = v34;
  v37 = v34;
  v38 = v71;
  v76(v36, v71, v35);
  v39 = v57;
  v40 = swift_allocObject();
  v41 = v81;
  *(v40 + 2) = v80;
  *(v40 + 3) = v25;
  v43 = v77;
  v42 = v78;
  *(v40 + 4) = v41;
  *(v40 + 5) = v43;
  v44 = v72;
  *(v40 + 6) = v72;
  *(v40 + 7) = v42;
  *(v40 + 8) = v82;
  v61(&v40[v62], v70, v30);
  v45 = v37;
  v31(&v40[v39], v37, v35);
  v46 = v38;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A230);
  sub_1BE048964();
  v48 = v69;
  sub_1BE04CA34();

  v76(v37, v46, v35);
  v49 = (v68 + 72) & ~v68;
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 2) = v80;
  *(v50 + 3) = v51;
  v53 = v77;
  v52 = v78;
  *(v50 + 4) = v81;
  *(v50 + 5) = v53;
  *(v50 + 6) = v44;
  *(v50 + 7) = v52;
  *(v50 + 8) = v82;
  v64(v50 + v49, v45, v35);
  *v48 = v83[0];
  *(v48 + 1) = v84;
  *(v48 + 4) = *(&v84 + 3);
  *(v48 + 8) = sub_1BD146840;
  *(v48 + 16) = v23;
  result = 0.0;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 0u;
  *(v48 + 56) = sub_1BD146AFC;
  *(v48 + 64) = v40;
  v55 = (v48 + *(v47 + 56));
  *v55 = sub_1BD146C40;
  v55[1] = v50;
  return result;
}

uint64_t sub_1BD13D3E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1BE04C614();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69BC8C0])
  {
    v11[12] = 0;
    result = sub_1BE04F9A4();
    v10 = v11[13];
  }

  else
  {
    v11[14] = 1;
    sub_1BE04F9A4();
    v10 = v11[15];
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1BD13D568(uint64_t a1, void *a2)
{
  type metadata accessor for AuthenticatedTransactionSheet();
  v4 = *(a2[3] + qword_1EBDAADA8 + 32);
  v5 = 0;
  if ([v4 mode] == 1)
  {
    v5 = [v4 pass];
  }

  v6 = [v4 fundingMode];
  v7 = [v4 paymentOffersController];
  v8 = [v4 selectedPaymentOffer];
  sub_1BD6B39C8(a1, v6, v7, v8, v5);

  result = sub_1BE04C5F4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    return sub_1BE04CC84();
  }

  return result;
}

void sub_1BD13D6BC(uint64_t a1, void *a2)
{
  type metadata accessor for AuthenticatedTransactionSheet();
  v4 = *(a2[3] + qword_1EBDAADA8 + 32);
  v5 = [v4 fundingMode];
  v6 = [v4 selectedPaymentOffer];
  sub_1BD6B4058(a1, v5, v6);

  if (sub_1BE04C5F4())
  {
    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    sub_1BE04CC94();
  }

  sub_1BD13D7B4();
}

void sub_1BD13D7B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  sub_1BE048C84();
  sub_1BD146D0C(v9);
  if (*(&v2 + 1))
  {
    v0 = *MEMORY[0x1E69DD888];
    v1 = sub_1BE052404();

    UIAccessibilityPostNotification(v0, v1);
  }
}

uint64_t sub_1BD13D8A0(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    v4 = type metadata accessor for AuthenticatedTransactionSheet();
    return sub_1BD13D964(v4);
  }

  return result;
}

uint64_t sub_1BD13D964(uint64_t a1)
{
  v3 = sub_1BE04C614();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A258);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v47 = &v40 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v42 = &v40 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v40 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v40 - v27;
  v29 = *(a1 + 104);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);
  v49 = v1;
  v45 = v30;
  v46 = v29;
  sub_1BE0516A4();
  (*(v4 + 104))(v25, *MEMORY[0x1E69BC8B8], v3);
  v43 = *(v4 + 56);
  v44 = v4 + 56;
  v43(v25, 0, 1, v3);
  v31 = *(v8 + 56);
  sub_1BD0DE19C(v28, v11, &qword_1EBD3D520);
  sub_1BD0DE19C(v25, &v11[v31], &qword_1EBD3D520);
  v32 = *(v4 + 48);
  if (v32(v11, 1, v3) == 1)
  {
    sub_1BD0DE53C(v25, &qword_1EBD3D520);
    sub_1BD0DE53C(v28, &qword_1EBD3D520);
    if (v32(&v11[v31], 1, v3) == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD3D520);
      v33 = 3;
      goto LABEL_10;
    }

LABEL_6:
    sub_1BD0DE53C(v11, &qword_1EBD3A258);
    v33 = 2;
    goto LABEL_10;
  }

  sub_1BD0DE19C(v11, v42, &qword_1EBD3D520);
  if (v32(&v11[v31], 1, v3) == 1)
  {
    sub_1BD0DE53C(v25, &qword_1EBD3D520);
    sub_1BD0DE53C(v28, &qword_1EBD3D520);
    (*(v4 + 8))(v42, v3);
    goto LABEL_6;
  }

  v34 = v41;
  (*(v4 + 32))(v41, &v11[v31], v3);
  sub_1BD145DD8(&qword_1EBD3A260, MEMORY[0x1E69BC8F0]);
  v35 = v42;
  v36 = sub_1BE052334();
  v37 = *(v4 + 8);
  v37(v34, v3);
  sub_1BD0DE53C(v25, &qword_1EBD3D520);
  sub_1BD0DE53C(v28, &qword_1EBD3D520);
  v37(v35, v3);
  sub_1BD0DE53C(v11, &qword_1EBD3D520);
  if (v36)
  {
    v33 = 3;
  }

  else
  {
    v33 = 2;
  }

LABEL_10:
  sub_1BD6B2184(1, v33, 0);
  v38 = v47;
  v43(v47, 1, 1, v3);
  sub_1BD0DE19C(v38, v48, &qword_1EBD3D520);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v38, &qword_1EBD3D520);
}

uint64_t sub_1BD13DE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &unk_1EBD52000);
  return sub_1BE04CB24();
}

uint64_t sub_1BD13DF48@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v30 = a6;
  v31 = a8;
  v29 = a5;
  v32 = a1;
  v33 = a2;
  v34 = a9;
  sub_1BE04C864();
  type metadata accessor for PaymentSheetHeader();
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  v13 = sub_1BE04F9B4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v28 - v20;
  v39 = a3;
  v40 = a4;
  v41 = v29;
  v42 = v30;
  v43 = a7;
  v44 = v31;
  v45 = a10;
  v22 = type metadata accessor for AuthenticatedTransactionSheet();
  sub_1BD13E1F0(v32, v22, v18);
  v23 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
  WitnessTable = swift_getWitnessTable();
  v37 = v23;
  v38 = WitnessTable;
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v25 = *(v14 + 16);
  v25(v21, v18, v13);
  v26 = *(v14 + 8);
  v26(v18, v13);
  v25(v34, v21, v13);
  return (v26)(v21, v13);
}

uint64_t sub_1BD13E1F0@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v56 = a3;
  v4 = sub_1BE04C864();
  v5 = *(a2 + 24);
  v47 = *(a2 + 48);
  type metadata accessor for PaymentSheetHeader();
  WitnessTable = swift_getWitnessTable();
  v55 = sub_1BE04F6A4();
  v6 = sub_1BE04EBD4();
  v49 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v50 = &v46 - v13;
  v54 = v4;
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04CB04();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04F9B4();
  v52 = *(v23 - 8);
  v53 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v57 = &v46 - v25;
  (*(v19 + 16))(v22, v51, v18);
  if ((*(v19 + 88))(v22, v18) == *MEMORY[0x1E69BCAB8])
  {
    (*(v19 + 96))(v22, v18);
    v26 = *(v14 + 32);
    v46 = v17;
    v27 = v26(v17, v22, v54);
    v51 = &v46;
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v46 - 8) = *(a2 + 16);
    *(&v46 - 7) = v5;
    *(&v46 - 3) = *(a2 + 32);
    *(&v46 - 4) = v47;
    *(&v46 - 3) = *(a2 + 56);
    sub_1BE04F7B4();
    v29 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
    v44 = v29;
    v45 = WitnessTable;
    sub_1BE050A44();
    v30 = swift_getWitnessTable();
    v58 = v29;
    v59 = v30;
    swift_getWitnessTable();
    v31 = v49;
    v32 = *(v49 + 16);
    v33 = v50;
    v32(v50, v10, v6);
    v34 = *(v31 + 8);
    v34(v10, v6);
    v32(v10, v33, v6);
    sub_1BD13A700(v10, v6);
    v34(v10, v6);
    v34(v33, v6);
    (*(v14 + 8))(v46, v54);
  }

  else
  {
    v35 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
    v36 = swift_getWitnessTable();
    v64 = v35;
    v65 = v36;
    v37 = swift_getWitnessTable();
    sub_1BD13A7F8(v37, v6, MEMORY[0x1E6981E70]);
    (*(v19 + 8))(v22, v18);
  }

  v38 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8]);
  v39 = swift_getWitnessTable();
  v62 = v38;
  v63 = v39;
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x1E6981E60];
  v40 = v53;
  swift_getWitnessTable();
  v41 = v52;
  v42 = v57;
  (*(v52 + 16))(v56, v57, v40);
  return (*(v41 + 8))(v42, v40);
}

uint64_t sub_1BD13E8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a8;
  v51 = a1;
  v59 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v58 = sub_1BE051854();
  MEMORY[0x1EEE9AC00](v58, v16);
  v55 = &v50 - v17;
  v18 = a4;
  v19 = a7;
  v57 = sub_1BE04C674();
  v20 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v60 = &v50 - v22;
  v23 = a1;
  v24 = a2;
  v52 = a3;
  v53 = a2;
  v25 = a2;
  v54 = a5;
  v26 = a6;
  v27 = v56;
  v28 = sub_1BD13ECB0(v23, v25, a3, v18, a5, a6, v19, v56);
  v30 = v29;
  *&v65 = v24;
  *(&v65 + 1) = a3;
  *&v66 = v18;
  *(&v66 + 1) = a5;
  *&v67 = v26;
  *(&v67 + 1) = v19;
  *&v68 = v27;
  v31 = type metadata accessor for AuthenticatedTransactionSheet();
  v32 = v51;
  sub_1BD13C710(v28, v30, &v65);

  v63[4] = v69;
  v63[5] = v70;
  v64 = v71;
  v63[0] = v65;
  v63[1] = v66;
  v63[2] = v67;
  v63[3] = v68;
  sub_1BD13C92C(v31, v33, v60);
  v34 = v55;
  sub_1BD13CC10();
  v35 = *(v32 + 24);
  v50 = *(v32 + 72);
  v36 = v50;
  v37 = __swift_project_boxed_opaque_existential_1((v32 + 48), v50);
  v62 = v50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);
  v39 = sub_1BD13EE28(v32, v53, v52, v18, v54, v26, v19, v27);
  v41 = v40;
  v42 = type metadata accessor for PaymentSheetHeader();
  sub_1BE048964();
  v43 = swift_getWitnessTable();
  v44 = v57;
  v45 = swift_getWitnessTable();
  v46 = v58;
  v47 = swift_getWitnessTable();
  *(&v49 + 1) = v45;
  *&v49 = v43;
  return sub_1BD9E7C68(v63, v60, v34, 0, 1, v35, v61, 1, v59, v39, v41, v42, v44, v46, v49, v47);
}

uint64_t (*sub_1BD13ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

uint64_t (*sub_1BD13EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD146760;
}

uint64_t sub_1BD13EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1BD0DE19C(a1, &v17, &qword_1EBD51EC0);
  if (v19)
  {
    sub_1BD0EF554(&v17, &v23);
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v23, v16);
      *&v17 = a3;
      *(&v17 + 1) = a4;
      v18 = a5;
      v19 = a6;
      v20 = a7;
      v21 = a8;
      v22 = a9;
      type metadata accessor for AuthenticatedTransactionSheet();
      sub_1BD13AA50(v16);
      return __swift_destroy_boxed_opaque_existential_0(&v23);
    }

    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1BD0DE53C(&v17, &qword_1EBD51EC0);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  type metadata accessor for AuthenticatedTransactionSheet();
  return sub_1BD13AA50(&v23);
}

uint64_t sub_1BD13F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_1BD13F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v144 = a1;
  v142 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
  swift_getTupleTypeMetadata2();
  v17 = sub_1BE051E34();
  v145 = sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  v146 = sub_1BE051E34();
  v143 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v18);
  v136 = a7;
  v137 = &v108 - v19;
  v130 = a2;
  v131 = a3;
  *&v166 = a2;
  *(&v166 + 1) = a3;
  v133 = a4;
  *&v167 = a4;
  *(&v167 + 1) = a5;
  v135 = a6;
  *&v168 = a6;
  *(&v168 + 1) = a7;
  v139 = a8;
  *&v169 = a8;
  v20 = type metadata accessor for AuthenticatedTransactionSheet();
  v128 = *(v20 - 8);
  v129 = v20;
  v126 = *(v128 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v127 = &v108 - v23;
  v141 = v17;
  v125 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v122 = &v108 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  v27 = MEMORY[0x1EEE9AC00](v116, v26);
  v115 = &v108 - v28;
  v124 = v16;
  v121 = *(v16 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v120 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v118 = &v108 - v34;
  v134 = a5;
  v119 = *(a5 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v117 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v138 = &v108 - v40;
  v132 = *(v145 - 8);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v140 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v108 - v45;
  v47 = v146;
  v48 = sub_1BE0534B4();
  v49 = *(v48 - 8);
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v53 = &v108 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v108 - v55;
  v57 = v144;
  sub_1BE048964();
  LOBYTE(a6) = sub_1BE04C8A4();

  if (a6)
  {
    v111 = v53;
    v112 = v49;
    v113 = v56;
    v114 = v48;
    v58 = *(v57 + 120);
    v59 = v57;
    v123 = v46;
    if (v58)
    {
      v110 = *(v57 + 128);
      sub_1BE048964();
      v60 = v117;
      v58();
      v61 = v119;
      v108 = *(v119 + 16);
      v62 = v138;
      v63 = v134;
      v108(v138, v60, v134);
      v119 = *(v61 + 8);
      (v119)(v60, v63);
      sub_1BE051C64();
      v64 = MEMORY[0x1E6981CD0];
      v65 = MEMORY[0x1E6981CD8];
      v109 = v58;
      sub_1BE04F694();
      *&v166 = v65;
      *(&v166 + 1) = v64;
      swift_getOpaqueTypeConformance2();
      sub_1BD0EEEE0();
      v66 = v118;
      sub_1BE051C84();
      v108(v60, v62, v63);
      *&v166 = v60;
      v67 = v60;
      v69 = v120;
      v68 = v121;
      v70 = v124;
      (*(v121 + 16))(v120, v66, v124);
      *(&v166 + 1) = v69;
      *&v159 = v63;
      *(&v159 + 1) = v70;
      *&v151 = v139;
      *(&v151 + 1) = sub_1BD146EE8();
      v71 = v122;
      sub_1BD13A4C4(&v166, 2uLL, &v159);
      sub_1BD0D4744(v109);
      v72 = *(v68 + 8);
      v72(v66, v70);
      v73 = v119;
      (v119)(v138, v63);
      v72(v69, v70);
      v59 = v144;
      v74 = v63;
      v73(v67, v63);
      v75 = v125;
      v76 = v140;
      v77 = v141;
      (*(v125 + 32))(v140, v71, v141);
      (*(v75 + 56))(v76, 0, 1, v77);
      swift_getWitnessTable();
      v78 = sub_1BE0534B4();
      (*(*(v78 - 8) + 16))(v123, v76, v78);
      v79 = v132;
      v80 = *(v132 + 8);
      v138 = ((v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v81 = v145;
      v80(v76, v145);
    }

    else
    {
      v84 = v140;
      (*(v125 + 56))(v140, 1, 1, v141);
      swift_getWitnessTable();
      v85 = sub_1BE0534B4();
      (*(*(v85 - 8) + 16))(v46, v84, v85);
      v79 = v132;
      v86 = *(v132 + 8);
      v138 = ((v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v81 = v145;
      v86(v84, v145);
      v74 = v134;
    }

    v88 = v127;
    v87 = v128;
    v89 = v129;
    (*(v128 + 16))(v127, v59, v129);
    v90 = (*(v87 + 80) + 72) & ~*(v87 + 80);
    v91 = swift_allocObject();
    v92 = v131;
    *(v91 + 2) = v130;
    *(v91 + 3) = v92;
    *(v91 + 4) = v133;
    *(v91 + 5) = v74;
    v93 = v136;
    *(v91 + 6) = v135;
    *(v91 + 7) = v93;
    *(v91 + 8) = v139;
    (*(v87 + 32))(&v91[v90], v88, v89);
    LOBYTE(v158[0]) = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v150[0]) = 0;
    sub_1BE04CDA4();
    sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE048964();
    v95 = sub_1BE04EEC4();
    v97 = v96;
    type metadata accessor for AuthenticatorModel();
    sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    *&v159 = sub_1BE04E954();
    *(&v159 + 1) = v98;
    *&v160 = sub_1BD31FF5C;
    *(&v160 + 1) = 0;
    LOBYTE(v161) = v158[0];
    *(&v161 + 1) = v166;
    DWORD1(v161) = *(&v166 + 3);
    *(&v161 + 1) = KeyPath;
    LOBYTE(v162) = v150[0];
    *(&v162 + 1) = v151;
    DWORD1(v162) = *(&v151 + 3);
    *(&v162 + 1) = v95;
    *&v163 = v97;
    *(&v163 + 1) = sub_1BD146DD0;
    v164 = v91;
    *&v165 = 0;
    *(&v165 + 1) = 0x4014000000000000;
    v99 = v140;
    v100 = v123;
    (*(v79 + 16))(v140, v123, v81);
    v155 = v163;
    v156 = v164;
    v157 = v165;
    v151 = v159;
    v152 = v160;
    v153 = v161;
    v154 = v162;
    v158[0] = v99;
    v158[1] = &v151;
    sub_1BD0EEF94(&v159, &v166);
    v150[0] = v81;
    v150[1] = &type metadata for PaymentSheetFooter;
    WitnessTable = swift_getWitnessTable();
    v148 = swift_getWitnessTable();
    v149 = sub_1BD146E94();
    v101 = v137;
    sub_1BD13A4C4(v158, 2uLL, v150);
    sub_1BD0EEFF0(&v159);
    v102 = *(v79 + 8);
    v102(v100, v81);
    v170 = v155;
    v171 = v156;
    v172 = v157;
    v166 = v151;
    v167 = v152;
    v168 = v153;
    v169 = v154;
    sub_1BD0EEFF0(&v166);
    v102(v99, v81);
    v103 = v143;
    v104 = v111;
    v105 = v146;
    (*(v143 + 32))(v111, v101, v146);
    (*(v103 + 56))(v104, 0, 1, v105);
    swift_getWitnessTable();
    v106 = v112;
    v56 = v113;
    v82 = *(v112 + 16);
    v48 = v114;
    v82(v113, v104, v114);
    v83 = *(v106 + 8);
    v83(v104, v48);
  }

  else
  {
    (*(v143 + 56))(v53, 1, 1, v47);
    swift_getWitnessTable();
    v82 = *(v49 + 16);
    v82(v56, v53, v48);
    v83 = *(v49 + 8);
    v83(v53, v48);
  }

  v173 = swift_getWitnessTable();
  swift_getWitnessTable();
  v82(v142, v56, v48);
  return (v83)(v56, v48);
}

uint64_t sub_1BD13FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v29 = a7;
  v30 = a8;
  v27 = a1;
  v28 = a6;
  v31 = a5;
  v32 = a9;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  *&v46 = a6;
  *(&v46 + 1) = a7;
  *&v47 = a8;
  v13 = type metadata accessor for AuthenticatedTransactionSheet();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - v16;
  (*(v14 + 16))(&v27 - v16, a1, v13);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v31;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  v21 = v29;
  *(v19 + 6) = v28;
  *(v19 + 7) = v21;
  *(v19 + 8) = v30;
  (*(v14 + 32))(&v19[v18], v17, v13);
  sub_1BD13C710(sub_1BD146778, v19, &v44);

  v37 = v48;
  v38 = v49;
  v39 = v50;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v22 = type metadata accessor for PaymentSheetHeader();
  swift_getWitnessTable();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(v40, &v33, v22);
  v42[4] = v37;
  v42[5] = v38;
  v43 = v39;
  v42[0] = v33;
  v42[1] = v34;
  v42[2] = v35;
  v42[3] = v36;
  v25 = *(v23 + 8);
  v25(v42, v22);
  v37 = v40[4];
  v38 = v40[5];
  v39 = v41;
  v33 = v40[0];
  v34 = v40[1];
  v35 = v40[2];
  v36 = v40[3];
  v24(v32, &v33, v22);
  v48 = v37;
  v49 = v38;
  v50 = v39;
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  return v25(&v44, v22);
}

uint64_t sub_1BD140224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v21 - v17;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  type metadata accessor for AuthenticatedTransactionSheet();
  v19 = sub_1BE04CB04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1BE048964();
  sub_1BE04CB24();
}

uint64_t sub_1BD140350@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a8[4] = sub_1BE04EEC4();
  a8[5] = v19;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1BD13A9D0(&v35);
  *&v35 = a6;
  *(&v35 + 1) = a7;
  *&v36 = MEMORY[0x1E6981E70];
  *(&v36 + 1) = a9;
  v37 = a10;
  v38 = MEMORY[0x1E6981E60];
  v39 = a11;
  v20 = type metadata accessor for AuthenticatedTransactionSheet();
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  a8[1] = v24;
  sub_1BD0EE8CC(a1, (a8 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v25 = sub_1BE04E954();
  v27 = v26;

  a8[2] = v25;
  a8[3] = v27;
  v28 = v32;
  a8[11] = v31;
  a8[12] = v28;
  a8[13] = 0;
  a8[14] = 0;
  v29 = v34;
  a8[15] = v33;
  a8[16] = v29;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD140644@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a8[4] = sub_1BE04EEC4();
  a8[5] = v19;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1BD13A9D0(&v35);
  *&v35 = a6;
  *(&v35 + 1) = MEMORY[0x1E6981E70];
  *&v36 = a7;
  *(&v36 + 1) = a9;
  v37 = MEMORY[0x1E6981E60];
  v38 = a10;
  v39 = a11;
  v20 = type metadata accessor for AuthenticatedTransactionSheet();
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  a8[1] = v24;
  sub_1BD0EE8CC(a1, (a8 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v25 = sub_1BE04E954();
  v27 = v26;

  a8[2] = v25;
  a8[3] = v27;
  a8[11] = 0;
  a8[12] = 0;
  v28 = v32;
  a8[13] = v31;
  a8[14] = v28;
  v29 = v34;
  a8[15] = v33;
  a8[16] = v29;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD140938@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a8[4] = sub_1BE04EEC4();
  a8[5] = v19;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1BD13A9D0(&v35);
  *&v35 = a6;
  *(&v35 + 1) = a7;
  *&v36 = a9;
  *(&v36 + 1) = MEMORY[0x1E6981E70];
  v37 = a10;
  v38 = a11;
  v39 = MEMORY[0x1E6981E60];
  v20 = type metadata accessor for AuthenticatedTransactionSheet();
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  a8[1] = v24;
  sub_1BD0EE8CC(a1, (a8 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v25 = sub_1BE04E954();
  v27 = v26;

  a8[2] = v25;
  a8[3] = v27;
  v28 = v32;
  a8[11] = v31;
  a8[12] = v28;
  v29 = v34;
  a8[13] = v33;
  a8[14] = v29;
  a8[15] = 0;
  a8[16] = 0;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD140C2C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v28 - v16;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a7[4] = sub_1BE04EEC4();
  a7[5] = v18;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1BD13A9D0(&v28);
  *&v28 = a4;
  *(&v28 + 1) = MEMORY[0x1E6981E70];
  *&v29 = a5;
  *(&v29 + 1) = MEMORY[0x1E6981E70];
  v30 = MEMORY[0x1E6981E60];
  v31 = a6;
  v32 = MEMORY[0x1E6981E60];
  v19 = type metadata accessor for AuthenticatedTransactionSheet();
  v20 = sub_1BE04C614();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_1BD13AAD4(v17);
  v21 = *(v19 + 108);
  *(a7 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v22 = a7 + *(v19 + 112);
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a7 = sub_1BE04E954();
  a7[1] = v23;
  sub_1BD0EE8CC(a1, (a7 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v24 = sub_1BE04E954();
  v26 = v25;

  a7[2] = v24;
  a7[3] = v26;
  a7[11] = 0;
  a7[12] = 0;
  a7[13] = a2;
  a7[14] = a3;
  a7[15] = 0;
  a7[16] = 0;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD140F14@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v28 - v16;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a7 + 32) = sub_1BE04EEC4();
  *(a7 + 40) = v18;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1BD13A9D0(&v28);
  *&v28 = a4;
  *(&v28 + 1) = MEMORY[0x1E6981E70];
  *&v29 = MEMORY[0x1E6981E70];
  *(&v29 + 1) = a5;
  v30 = MEMORY[0x1E6981E60];
  v31 = MEMORY[0x1E6981E60];
  v32 = a6;
  v19 = type metadata accessor for AuthenticatedTransactionSheet();
  v20 = sub_1BE04C614();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_1BD13AAD4(v17);
  v21 = *(v19 + 108);
  *(a7 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v22 = a7 + *(v19 + 112);
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a7 = sub_1BE04E954();
  *(a7 + 8) = v23;
  sub_1BD0EE8CC(a1, a7 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v24 = sub_1BE04E954();
  v26 = v25;

  *(a7 + 16) = v24;
  *(a7 + 24) = v26;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0u;
  *(a7 + 120) = a2;
  *(a7 + 128) = a3;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD141200@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v28 - v16;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a7 + 32) = sub_1BE04EEC4();
  *(a7 + 40) = v18;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1BD13A9D0(&v28);
  *&v28 = a4;
  *(&v28 + 1) = a5;
  *&v29 = MEMORY[0x1E6981E70];
  *(&v29 + 1) = MEMORY[0x1E6981E70];
  v30 = a6;
  v31 = MEMORY[0x1E6981E60];
  v32 = MEMORY[0x1E6981E60];
  v19 = type metadata accessor for AuthenticatedTransactionSheet();
  v20 = sub_1BE04C614();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_1BD13AAD4(v17);
  v21 = *(v19 + 108);
  *(a7 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v22 = a7 + *(v19 + 112);
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a7 = sub_1BE04E954();
  *(a7 + 8) = v23;
  sub_1BD0EE8CC(a1, a7 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v24 = sub_1BE04E954();
  v26 = v25;

  *(a7 + 16) = v24;
  *(a7 + 24) = v26;
  *(a7 + 88) = a2;
  *(a7 + 96) = a3;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD1414EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23[-v10 - 8];
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a2 + 32) = sub_1BE04EEC4();
  *(a2 + 40) = v12;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1BD0DE19C(v24, v23, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v24, &qword_1EBD51EC0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A0F8);
  v14 = sub_1BE04C614();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1BD0DE19C(v11, v8, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v11, &qword_1EBD3D520);
  v15 = *(v13 + 108);
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v16 = a2 + *(v13 + 112);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  sub_1BE04C944();
  sub_1BD145DD8(&qword_1EBD3A288, MEMORY[0x1E69BCA18]);
  sub_1BE048964();
  *a2 = sub_1BE04E954();
  *(a2 + 8) = v17;
  sub_1BD0EE8CC(a1, a2 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v18 = sub_1BE04E954();
  v20 = v19;

  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD141854@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11 - 8];
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a3 + 32) = sub_1BE04EEC4();
  *(a3 + 40) = v13;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1BD0DE19C(v25, v24, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v25, &qword_1EBD51EC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D630);
  v15 = sub_1BE04C614();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_1BD0DE19C(v12, v8, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v12, &qword_1EBD3D520);
  v16 = *(v14 + 108);
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + *(v14 + 112);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_1BD145DD8(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
  sub_1BE048964();
  *a3 = sub_1BE04E954();
  *(a3 + 8) = v18;
  sub_1BD0EE8CC(a1, a3 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v19 = sub_1BE04E954();
  v21 = v20;

  *(a3 + 16) = v19;
  *(a3 + 24) = v21;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static AuthenticatedTransactionSheetMock.create(header:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v505 = a8;
  v498 = a6;
  v507 = a5;
  v501 = a4;
  v516 = a3;
  v500 = a2;
  v502 = a1;
  v496 = a9;
  v525 = a13;
  v503 = a12;
  v526 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A0B0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v484 = &v429 - v16;
  v17 = sub_1BE04C944();
  v18 = MEMORY[0x1E6981E70];
  v791 = v17;
  v792 = MEMORY[0x1E6981E70];
  v793 = MEMORY[0x1E6981E70];
  v794 = a10;
  v19 = MEMORY[0x1E6981E60];
  v795 = MEMORY[0x1E6981E60];
  v796 = MEMORY[0x1E6981E60];
  v797 = a13;
  v20 = type metadata accessor for AuthenticatedTransactionSheet();
  v444 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v483 = &v429 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B8);
  v521 = v20;
  v23 = sub_1BE04EBD4();
  v445 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v438 = &v429 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DFD0);
  v522 = v23;
  v27 = sub_1BE04EBD4();
  v448 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27, v27);
  v447 = &v429 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v446 = &v429 - v31;
  v515 = v32;
  v449 = v14;
  v33 = sub_1BE04F9B4();
  v451 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v450 = &v429 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v481 = &v429 - v38;
  v791 = v17;
  v792 = a7;
  v506 = a7;
  v793 = v18;
  v794 = v18;
  v504 = a11;
  v795 = a11;
  v796 = v19;
  v797 = v19;
  v39 = type metadata accessor for AuthenticatedTransactionSheet();
  v439 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v39);
  v437 = &v429 - v40;
  v520 = v41;
  v42 = sub_1BE04EBD4();
  v441 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v42);
  v440 = &v429 - v43;
  v524 = v44;
  v527 = v26;
  v45 = sub_1BE04EBD4();
  v443 = *(v45 - 8);
  v47 = MEMORY[0x1EEE9AC00](v45, v46);
  v442 = &v429 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v49);
  v472 = &v429 - v50;
  v791 = v17;
  v792 = a7;
  v793 = v18;
  v51 = v18;
  v52 = v526;
  v794 = v526;
  v795 = a11;
  v53 = v525;
  v796 = v19;
  v797 = v525;
  v54 = type metadata accessor for AuthenticatedTransactionSheet();
  v466 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v54);
  v482 = (&v429 - v55);
  v517 = v56;
  v57 = sub_1BE04EBD4();
  v468 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v57);
  v467 = &v429 - v58;
  v523 = v59;
  v60 = sub_1BE04EBD4();
  v471 = *(v60 - 8);
  v61 = MEMORY[0x1EEE9AC00](v60, v60);
  v470 = &v429 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v63);
  v469 = &v429 - v64;
  v540 = v65;
  v518 = v45;
  v66 = sub_1BE04F9B4();
  v477 = *(v66 - 8);
  v67 = MEMORY[0x1EEE9AC00](v66, v66);
  v476 = &v429 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v69);
  v475 = &v429 - v70;
  v514 = v71;
  v519 = v33;
  v538 = sub_1BE04F9B4();
  v485 = *(v538 - 8);
  v73 = MEMORY[0x1EEE9AC00](v538, v72);
  v490 = &v429 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v75);
  v497 = (&v429 - v76);
  v791 = v17;
  v792 = v51;
  v77 = v51;
  v78 = v505;
  v793 = v505;
  v794 = v77;
  v79 = v19;
  v795 = v19;
  v80 = v503;
  v796 = v503;
  v797 = v79;
  v81 = type metadata accessor for AuthenticatedTransactionSheet();
  v431 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v81);
  v430 = (&v429 - v82);
  v536 = v83;
  v84 = sub_1BE04EBD4();
  v433 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v84);
  v432 = &v429 - v85;
  v535 = v86;
  v87 = sub_1BE04EBD4();
  v436 = *(v87 - 8);
  v89 = MEMORY[0x1EEE9AC00](v87, v88);
  v435 = &v429 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89, v91);
  v434 = &v429 - v92;
  v791 = v17;
  v792 = MEMORY[0x1E6981E70];
  v793 = v78;
  v794 = v52;
  v795 = v79;
  v796 = v80;
  v797 = v53;
  v93 = type metadata accessor for AuthenticatedTransactionSheet();
  v460 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v93);
  v459 = (&v429 - v94);
  v530 = v95;
  v96 = sub_1BE04EBD4();
  v462 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v96);
  v461 = &v429 - v97;
  v533 = v98;
  v99 = sub_1BE04EBD4();
  v465 = *(v99 - 8);
  v100 = MEMORY[0x1EEE9AC00](v99, v99);
  v464 = &v429 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v102);
  v463 = &v429 - v103;
  v529 = v104;
  v534 = v87;
  v105 = sub_1BE04F9B4();
  v474 = *(v105 - 8);
  v107 = MEMORY[0x1EEE9AC00](v105, v106);
  v473 = &v429 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107, v109);
  v487 = &v429 - v110;
  v791 = v17;
  v111 = v17;
  v112 = v506;
  v792 = v506;
  v793 = v78;
  v113 = v504;
  v794 = MEMORY[0x1E6981E70];
  v795 = v504;
  v796 = v80;
  v797 = v79;
  v114 = type metadata accessor for AuthenticatedTransactionSheet();
  v453 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v114);
  v452 = (&v429 - v115);
  v532 = v116;
  v117 = sub_1BE04EBD4();
  v455 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v117);
  v454 = &v429 - v118;
  v528 = v119;
  v120 = sub_1BE04EBD4();
  v458 = *(v120 - 8);
  v122 = MEMORY[0x1EEE9AC00](v120, v121);
  v457 = &v429 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122, v124);
  v456 = &v429 - v125;
  v491 = v111;
  v791 = v111;
  v792 = v112;
  v793 = v78;
  v794 = v526;
  v795 = v113;
  v796 = v80;
  v797 = v525;
  v126 = type metadata accessor for AuthenticatedTransactionSheet();
  v478 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = (&v429 - v128);
  v130 = sub_1BE04EBD4();
  v480 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v130);
  v479 = &v429 - v131;
  v539 = v132;
  v133 = sub_1BE04EBD4();
  v134 = *(v133 - 8);
  v135 = MEMORY[0x1EEE9AC00](v133, v133);
  v137 = (&v429 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v135, v138);
  v140 = &v429 - v139;
  v527 = v141;
  v531 = v120;
  v142 = sub_1BE04F9B4();
  v143 = *(v142 - 8);
  v144 = MEMORY[0x1EEE9AC00](v142, v142);
  v486 = &v429 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v144, v146);
  v499 = &v429 - v147;
  v512 = v148;
  v508 = v105;
  v149 = sub_1BE04F9B4();
  v489 = *(v149 - 8);
  v151 = MEMORY[0x1EEE9AC00](v149, v150);
  v488 = &v429 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v151, v153);
  v509 = &v429 - v154;
  v495 = sub_1BE04F9B4();
  v494 = *(v495 - 8);
  MEMORY[0x1EEE9AC00](v495, v155);
  v157 = &v429 - v156;
  v511 = [objc_allocWithZone(MEMORY[0x1E69B8E80]) init];
  v492 = sub_1BE04CDA4();
  swift_allocObject();
  v510 = sub_1BE04CD94();
  sub_1BE04CCF4();
  v513 = v157;
  v493 = v149;
  v537 = v126;
  if (v516)
  {
    v497 = v143;
    v158 = v502;
    if (v502)
    {
      v159 = v507;
      if (v507)
      {
        v160 = v516;
        v161 = v501;
        sub_1BD0D44B8(v516);
        v490 = v134;
        v162 = v500;
        sub_1BD0D44B8(v158);
        v163 = v498;
        sub_1BD0D44B8(v159);
        v164 = sub_1BD145C58();
        v485 = v137;
        v165 = v159;
        v166 = v164;
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v166;
        v487 = v140;
        v167 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BD0D44B8(v160);
        sub_1BD0D44B8(v158);
        sub_1BD0D44B8(v165);
        *(&v428 + 1) = v504;
        *&v428 = v526;
        *(&v427 + 1) = v505;
        *&v427 = v506;
        sub_1BD13ACA0(&v791, v158, v162, v160, v161, v165, v163, v129, v167, v427, v428, v503, v525);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v168 = v537;
        WitnessTable = swift_getWitnessTable();
        sub_1BD0EE33C();
        v170 = v479;
        sub_1BE050BE4();
        (*(v478 + 8))(v129, v168);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v547 = WitnessTable;
        v548 = v525;
        v171 = v539;
        v172 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v173 = v485;
        sub_1BE050BE4();
        (*(v480 + 8))(v170, v171);
        v174 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v545 = v172;
        v546 = v174;
        v175 = v527;
        v506 = swift_getWitnessTable();
        v176 = v490;
        v177 = *(v490 + 16);
        v178 = v487;
        v177(v487, v173, v175);
        v179 = *(v176 + 8);
        v179(v173, v175);
        v177(v173, v178, v175);
        v543 = swift_getWitnessTable();
        v544 = v525;
        v541 = swift_getWitnessTable();
        v542 = v174;
        swift_getWitnessTable();
        sub_1BD13A700(v173, v175);
        sub_1BD0D4744(v507);
        v179(v173, v175);
        v179(v178, v175);
      }

      else
      {
        v227 = v516;
        v228 = v501;
        sub_1BD0D44B8(v516);
        v229 = v500;
        sub_1BD0D44B8(v158);
        v230 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v230;
        v231 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BD0D44B8(v227);
        sub_1BD0D44B8(v158);
        v232 = v452;
        sub_1BD140938(&v791, v158, v229, v227, v228, v231, v506, v452, v505, v504, v503);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v233 = v532;
        v234 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v235 = v454;
        sub_1BE050BE4();
        (*(v453 + 8))(v232, v233);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v575 = v234;
        v576 = v525;
        v505 = MEMORY[0x1E697E858];
        v236 = v528;
        v237 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v238 = v457;
        sub_1BE050BE4();
        (*(v455 + 8))(v235, v236);
        v506 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v573 = v237;
        v574 = v506;
        v239 = v531;
        v507 = swift_getWitnessTable();
        v240 = v458;
        v241 = *(v458 + 16);
        v242 = v456;
        v241(v456, v238, v239);
        v243 = *(v240 + 8);
        v243(v238, v239);
        v241(v238, v242, v239);
        v571 = swift_getWitnessTable();
        v572 = v525;
        v569 = swift_getWitnessTable();
        v570 = v506;
        v244 = v527;
        swift_getWitnessTable();
        sub_1BD13A7F8(v238, v244, v239);
        v243(v238, v239);
        v243(v242, v239);
      }

      v245 = swift_getWitnessTable();
      v246 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
      v567 = v245;
      v568 = v246;
      v247 = swift_getWitnessTable();
      v248 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
      v565 = v247;
      v566 = v248;
      v249 = swift_getWitnessTable();
      v563 = swift_getWitnessTable();
      v564 = v246;
      v561 = swift_getWitnessTable();
      v562 = v248;
      v250 = swift_getWitnessTable();
      v559 = v249;
      v560 = v250;
      v251 = v512;
      v526 = swift_getWitnessTable();
      v252 = v497;
      v253 = v486;
      v497[2](v486, v499, v251);
      v557 = swift_getWitnessTable();
      v558 = v246;
      v555 = swift_getWitnessTable();
      v556 = v248;
      v254 = swift_getWitnessTable();
      v553 = swift_getWitnessTable();
      v554 = v246;
      v551 = swift_getWitnessTable();
      v552 = v248;
      v255 = swift_getWitnessTable();
      v549 = v254;
      v550 = v255;
      swift_getWitnessTable();
      sub_1BD13A700(v253, v251);
      sub_1BD0D4744(v502);
      v256 = v252[1];
      (v256)(v253, v251);
      (v256)(v499, v251);
    }

    else
    {
      v205 = v507;
      v206 = v516;
      v207 = v501;
      if (v507)
      {
        sub_1BD0D44B8(v516);
        v208 = v498;
        sub_1BD0D44B8(v205);
        v209 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v209;
        v210 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BD0D44B8(v206);
        sub_1BD0D44B8(v205);
        v211 = v459;
        sub_1BD140644(&v791, v206, v207, v205, v208, v210, v505, v459, v526, v503, v525);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v212 = v530;
        v213 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v214 = v461;
        sub_1BE050BE4();
        (*(v460 + 8))(v211, v212);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v583 = v213;
        v584 = v525;
        v215 = v533;
        v216 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v217 = v464;
        sub_1BE050BE4();
        (*(v462 + 8))(v214, v215);
        v218 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v581 = v216;
        v582 = v218;
        v219 = v529;
        v506 = swift_getWitnessTable();
        v220 = v465;
        v221 = *(v465 + 16);
        v222 = v463;
        v221(v463, v217, v219);
        v223 = *(v220 + 8);
        v223(v217, v219);
        v221(v217, v222, v219);
        v579 = swift_getWitnessTable();
        v580 = v525;
        v577 = swift_getWitnessTable();
        v578 = v218;
        swift_getWitnessTable();
        v224 = v487;
        sub_1BD13A700(v217, v219);
        sub_1BD0D4744(v507);
        v223(v217, v219);
        v225 = v222;
        v226 = v219;
      }

      else
      {
        sub_1BD0D44B8(v516);
        v309 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v309;
        v310 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BE048964();
        v311 = v430;
        sub_1BD140C2C(&v791, v206, v207, v310, v505, v503, v430);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v312 = v536;
        v313 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v314 = v432;
        sub_1BE050BE4();
        (*(v431 + 8))(v311, v312);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v651 = v313;
        v652 = v525;
        v506 = MEMORY[0x1E697E858];
        v315 = v535;
        v316 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v317 = v435;
        sub_1BE050BE4();
        (*(v433 + 8))(v314, v315);
        v318 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v649 = v316;
        v650 = v318;
        v319 = v534;
        v507 = swift_getWitnessTable();
        v320 = v436;
        v321 = *(v436 + 16);
        v322 = v434;
        v321(v434, v317, v319);
        v223 = *(v320 + 8);
        v223(v317, v319);
        v321(v317, v322, v319);
        v647 = swift_getWitnessTable();
        v648 = v525;
        v645 = swift_getWitnessTable();
        v646 = v318;
        v323 = v529;
        swift_getWitnessTable();
        v224 = v487;
        sub_1BD13A7F8(v317, v323, v319);
        v223(v317, v319);
        v225 = v322;
        v226 = v319;
      }

      v223(v225, v226);
      v324 = swift_getWitnessTable();
      v325 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
      v643 = v324;
      v644 = v325;
      v326 = swift_getWitnessTable();
      v327 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
      v641 = v326;
      v642 = v327;
      v328 = swift_getWitnessTable();
      v639 = swift_getWitnessTable();
      v640 = v325;
      v637 = swift_getWitnessTable();
      v638 = v327;
      v329 = swift_getWitnessTable();
      v635 = v328;
      v636 = v329;
      v525 = MEMORY[0x1E697F968];
      v330 = v508;
      v526 = swift_getWitnessTable();
      v332 = v473;
      v331 = v474;
      (*(v474 + 16))(v473, v224, v330);
      v633 = swift_getWitnessTable();
      v634 = v325;
      v631 = swift_getWitnessTable();
      v632 = v327;
      v333 = swift_getWitnessTable();
      v629 = swift_getWitnessTable();
      v630 = v325;
      v627 = swift_getWitnessTable();
      v628 = v327;
      v334 = swift_getWitnessTable();
      v625 = v333;
      v626 = v334;
      v335 = v512;
      swift_getWitnessTable();
      sub_1BD13A7F8(v332, v335, v330);
      v336 = *(v331 + 8);
      v336(v332, v330);
      v336(v487, v330);
    }

    v337 = swift_getWitnessTable();
    v338 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
    v623 = v337;
    v624 = v338;
    v339 = swift_getWitnessTable();
    v340 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
    v621 = v339;
    v622 = v340;
    v341 = swift_getWitnessTable();
    v619 = swift_getWitnessTable();
    v620 = v338;
    v617 = swift_getWitnessTable();
    v618 = v340;
    v342 = swift_getWitnessTable();
    v615 = v341;
    v616 = v342;
    v343 = swift_getWitnessTable();
    v613 = swift_getWitnessTable();
    v614 = v338;
    v611 = swift_getWitnessTable();
    v612 = v340;
    v344 = swift_getWitnessTable();
    v609 = swift_getWitnessTable();
    v610 = v338;
    v607 = swift_getWitnessTable();
    v608 = v340;
    v345 = swift_getWitnessTable();
    v605 = v344;
    v606 = v345;
    v346 = swift_getWitnessTable();
    v603 = v343;
    v604 = v346;
    v347 = v493;
    v526 = swift_getWitnessTable();
    v349 = v488;
    v348 = v489;
    (*(v489 + 16))(v488, v509, v347);
    v601 = swift_getWitnessTable();
    v602 = v338;
    v599 = swift_getWitnessTable();
    v600 = v340;
    v350 = swift_getWitnessTable();
    v597 = swift_getWitnessTable();
    v598 = v338;
    v595 = swift_getWitnessTable();
    v596 = v340;
    v351 = swift_getWitnessTable();
    v593 = v350;
    v594 = v351;
    v352 = swift_getWitnessTable();
    v591 = swift_getWitnessTable();
    v592 = v338;
    v589 = swift_getWitnessTable();
    v590 = v340;
    v353 = swift_getWitnessTable();
    v354 = sub_1BD145E20();
    v587 = v353;
    v588 = v354;
    v355 = swift_getWitnessTable();
    v585 = v352;
    v586 = v355;
    swift_getWitnessTable();
    sub_1BD13A700(v349, v347);

    sub_1BD0D4744(v516);
    v356 = *(v348 + 8);
    (v356)(v349, v347);
    v357 = v509;
    v358 = v347;
  }

  else
  {
    v181 = v482;
    v180 = v483;
    v182 = v484;
    v183 = v502;
    if (v502)
    {
      v184 = v507;
      if (v507)
      {
        v185 = v500;
        sub_1BD0D44B8(v502);
        v186 = v498;
        sub_1BD0D44B8(v184);
        v187 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v187;
        v188 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BD0D44B8(v183);
        sub_1BD0D44B8(v184);
        v189 = v181;
        sub_1BD140350(&v791, v183, v185, v184, v186, v188, v506, v181, v526, v504, v525);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v190 = v517;
        v191 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v192 = v467;
        sub_1BE050BE4();
        (*(v466 + 8))(v189, v190);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v659 = v191;
        v660 = v525;
        v193 = v523;
        v194 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v195 = v470;
        sub_1BE050BE4();
        (*(v468 + 8))(v192, v193);
        v196 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v657 = v194;
        v658 = v196;
        v516 = swift_getWitnessTable();
        v197 = v471;
        v198 = *(v471 + 16);
        v199 = v469;
        v198(v469, v195, v540);
        v200 = *(v197 + 8);
        v200(v195, v540);
        v198(v195, v199, v540);
        v201 = v540;
        v655 = swift_getWitnessTable();
        v656 = v525;
        v653 = swift_getWitnessTable();
        v654 = v196;
        swift_getWitnessTable();
        v202 = v475;
        sub_1BD13A700(v195, v201);
        sub_1BD0D4744(v507);
        v203 = v195;
        v204 = v202;
        v200(v203, v201);
        v200(v199, v201);
      }

      else
      {
        v277 = v500;
        sub_1BD0D44B8(v502);
        v278 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v278;
        v279 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BE048964();
        v280 = v437;
        sub_1BD141200(&v791, v183, v277, v279, v506, v504, v437);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v526 = &unk_1BE0BA140;
        v281 = v520;
        v282 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v283 = v440;
        sub_1BE050BE4();
        (*(v439 + 8))(v280, v281);
        v525 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v683 = v282;
        v684 = v525;
        v284 = v524;
        v285 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v286 = v442;
        sub_1BE050BE4();
        (*(v441 + 8))(v283, v284);
        v287 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v681 = v285;
        v682 = v287;
        v288 = v518;
        v516 = swift_getWitnessTable();
        v289 = v443;
        v290 = *(v443 + 16);
        v291 = v472;
        v290(v472, v286, v288);
        v292 = *(v289 + 8);
        v292(v286, v288);
        v290(v286, v291, v288);
        v293 = v540;
        v679 = swift_getWitnessTable();
        v680 = v525;
        v677 = swift_getWitnessTable();
        v678 = v287;
        v294 = v288;
        swift_getWitnessTable();
        v204 = v475;
        sub_1BD13A7F8(v286, v293, v294);
        v292(v286, v294);
        v292(v472, v294);
      }

      v295 = swift_getWitnessTable();
      v296 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
      v675 = v295;
      v676 = v296;
      v297 = swift_getWitnessTable();
      v298 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
      v673 = v297;
      v674 = v298;
      v299 = swift_getWitnessTable();
      v671 = swift_getWitnessTable();
      v672 = v296;
      v669 = swift_getWitnessTable();
      v670 = v298;
      v300 = swift_getWitnessTable();
      v667 = v299;
      v668 = v300;
      v301 = v514;
      v526 = swift_getWitnessTable();
      v302 = v476;
      v303 = v477;
      (*(v477 + 16))(v476, v204, v301);
      v665 = swift_getWitnessTable();
      v666 = v296;
      v663 = swift_getWitnessTable();
      v664 = v298;
      v304 = swift_getWitnessTable();
      v305 = sub_1BD145E20();
      v661 = v304;
      v662 = v305;
      swift_getWitnessTable();
      sub_1BD13A700(v302, v301);
      sub_1BD0D4744(v502);
      v306 = *(v303 + 8);
      v306(v302, v301);
      v307 = v204;
      v308 = v301;
    }

    else
    {
      v257 = v521;
      v258 = v507;
      if (v507)
      {
        v259 = v498;
        sub_1BD0D44B8(v507);
        v260 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v260;
        v261 = v491;
        swift_allocObject();
        sub_1BE04C934();
        sub_1BE048964();
        v262 = v180;
        sub_1BD140F14(&v791, v258, v259, v261, v526, v525, v180);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        v263 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v264 = v438;
        sub_1BE050BE4();
        (*(v444 + 8))(v262, v257);
        v265 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v687 = v263;
        v688 = v265;
        v266 = v522;
        v267 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v268 = v447;
        sub_1BE050BE4();
        (*(v445 + 8))(v264, v266);
        v269 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v685 = v267;
        v686 = v269;
        v270 = v515;
        swift_getWitnessTable();
        v271 = v448;
        v272 = *(v448 + 16);
        v273 = v446;
        v272(v446, v268, v270);
        v274 = *(v271 + 8);
        v274(v268, v270);
        v272(v268, v273, v270);
        sub_1BD145E20();
        v275 = v481;
        sub_1BD13A700(v268, v270);
        v276 = v275;
        sub_1BD0D4744(v507);
        v274(v268, v270);
        v274(v273, v270);
      }

      else
      {
        v359 = sub_1BD145C58();
        v794 = &type metadata for PreviewStateMachineMock;
        v795 = sub_1BD145D84();
        v791 = v359;
        swift_allocObject();
        sub_1BE04C934();
        v360 = v182;
        sub_1BD1414EC(&v791, v182);
        sub_1BD0E5E8C(0, &qword_1EBD35E30);
        sub_1BD0EE33C();
        v361 = sub_1BE04D804();
        v362 = (v182 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A0C8) + 36));
        v363 = v511;
        *v362 = v361;
        v362[1] = v363;
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v364 = v363;
        v365 = sub_1BE04D804();
        v366 = v449;
        v367 = (v360 + *(v449 + 36));
        *v367 = v365;
        v367[1] = v510;
        sub_1BE048964();
        v368 = swift_getWitnessTable();
        v369 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
        v789 = v368;
        v790 = v369;
        v370 = swift_getWitnessTable();
        v371 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
        v787 = v370;
        v788 = v371;
        v372 = v515;
        swift_getWitnessTable();
        sub_1BD145E20();
        v276 = v481;
        sub_1BD13A7F8(v360, v372, v366);
        sub_1BD0DE53C(v360, &qword_1EBD3A0B0);
      }

      v373 = swift_getWitnessTable();
      v374 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
      v785 = v373;
      v786 = v374;
      v375 = swift_getWitnessTable();
      v376 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
      v783 = v375;
      v784 = v376;
      v377 = swift_getWitnessTable();
      v378 = sub_1BD145E20();
      v781 = v377;
      v782 = v378;
      v379 = v519;
      v526 = swift_getWitnessTable();
      v380 = v450;
      v381 = v451;
      (*(v451 + 16))(v450, v276, v379);
      v779 = swift_getWitnessTable();
      v780 = v374;
      v777 = swift_getWitnessTable();
      v778 = v376;
      v382 = swift_getWitnessTable();
      v775 = swift_getWitnessTable();
      v776 = v374;
      v773 = swift_getWitnessTable();
      v774 = v376;
      v383 = swift_getWitnessTable();
      v771 = v382;
      v772 = v383;
      v384 = v514;
      swift_getWitnessTable();
      sub_1BD13A7F8(v380, v384, v379);
      v306 = *(v381 + 8);
      v306(v380, v379);
      v307 = v481;
      v308 = v379;
    }

    v306(v307, v308);
    v385 = swift_getWitnessTable();
    v386 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
    v769 = v385;
    v770 = v386;
    v387 = swift_getWitnessTable();
    v388 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
    v767 = v387;
    v768 = v388;
    v389 = swift_getWitnessTable();
    v765 = swift_getWitnessTable();
    v766 = v386;
    v763 = swift_getWitnessTable();
    v764 = v388;
    v390 = swift_getWitnessTable();
    v761 = v389;
    v762 = v390;
    v391 = swift_getWitnessTable();
    v759 = swift_getWitnessTable();
    v760 = v386;
    v757 = swift_getWitnessTable();
    v758 = v388;
    v392 = swift_getWitnessTable();
    v393 = sub_1BD145E20();
    v755 = v392;
    v756 = v393;
    v394 = swift_getWitnessTable();
    v753 = v391;
    v754 = v394;
    v395 = v538;
    v526 = swift_getWitnessTable();
    v396 = v485;
    v485[2](v490, v497, v395);
    v751 = swift_getWitnessTable();
    v752 = v386;
    v749 = swift_getWitnessTable();
    v750 = v388;
    v397 = swift_getWitnessTable();
    v747 = swift_getWitnessTable();
    v748 = v386;
    v745 = swift_getWitnessTable();
    v746 = v388;
    v398 = swift_getWitnessTable();
    v743 = v397;
    v744 = v398;
    v399 = swift_getWitnessTable();
    v741 = swift_getWitnessTable();
    v742 = v386;
    v739 = swift_getWitnessTable();
    v740 = v388;
    v400 = swift_getWitnessTable();
    v737 = swift_getWitnessTable();
    v738 = v386;
    v735 = swift_getWitnessTable();
    v736 = v388;
    v401 = swift_getWitnessTable();
    v733 = v400;
    v734 = v401;
    v402 = swift_getWitnessTable();
    v731 = v399;
    v732 = v402;
    v403 = v493;
    swift_getWitnessTable();
    v404 = v490;
    sub_1BD13A7F8(v490, v403, v395);

    v356 = v396[1];
    (v356)(v404, v395);
    v357 = v497;
    v358 = v395;
  }

  (v356)(v357, v358);
  v405 = swift_getWitnessTable();
  v406 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
  v729 = v405;
  v730 = v406;
  v407 = swift_getWitnessTable();
  v408 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
  v727 = v407;
  v728 = v408;
  v409 = swift_getWitnessTable();
  v725 = swift_getWitnessTable();
  v726 = v406;
  v723 = swift_getWitnessTable();
  v724 = v408;
  v410 = swift_getWitnessTable();
  v721 = v409;
  v722 = v410;
  v411 = swift_getWitnessTable();
  v719 = swift_getWitnessTable();
  v720 = v406;
  v717 = swift_getWitnessTable();
  v718 = v408;
  v412 = swift_getWitnessTable();
  v715 = swift_getWitnessTable();
  v716 = v406;
  v713 = swift_getWitnessTable();
  v714 = v408;
  v413 = swift_getWitnessTable();
  v711 = v412;
  v712 = v413;
  v414 = swift_getWitnessTable();
  v709 = v411;
  v710 = v414;
  v415 = swift_getWitnessTable();
  v707 = swift_getWitnessTable();
  v708 = v406;
  v705 = swift_getWitnessTable();
  v706 = v408;
  v416 = swift_getWitnessTable();
  v703 = swift_getWitnessTable();
  v704 = v406;
  v701 = swift_getWitnessTable();
  v702 = v408;
  v417 = swift_getWitnessTable();
  v699 = v416;
  v700 = v417;
  v418 = swift_getWitnessTable();
  v697 = swift_getWitnessTable();
  v698 = v406;
  v695 = swift_getWitnessTable();
  v696 = v408;
  v419 = swift_getWitnessTable();
  v420 = sub_1BD145E20();
  v693 = v419;
  v694 = v420;
  v421 = swift_getWitnessTable();
  v691 = v418;
  v692 = v421;
  v422 = swift_getWitnessTable();
  v689 = v415;
  v690 = v422;
  v423 = v495;
  swift_getWitnessTable();
  v424 = v494;
  v425 = v513;
  (*(v494 + 16))(v496, v513, v423);
  return (*(v424 + 8))(v425, v423);
}

uint64_t sub_1BD145A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFC4();
  *a1 = result & 1;
  return result;
}

__n128 sub_1BD145AE4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD145B94(_OWORD *a1)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v10[5] = v2;
  v10[6] = a1[6];
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[5];
  v9[11] = a1[4];
  v9[12] = v5;
  v9[13] = a1[6];
  v6 = a1[1];
  v9[7] = *a1;
  v9[8] = v6;
  v7 = a1[3];
  v9[9] = a1[2];
  v9[10] = v7;
  sub_1BE048964();
  sub_1BD146D60(v10, v9);
  return sub_1BE04D8C4();
}

id sub_1BD145C58()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8D70]) init];
  [v1 setPaymentRequest_];

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v3 = v1;
  v4 = sub_1BE052D54();
  type metadata accessor for AddressManager();
  swift_allocObject();
  v6 = v0;
  v7 = xmmword_1BE0BA010;
  v8 = 0;
  v9 = v3;
  v10 = sub_1BD0E6090(v3, v4);
  type metadata accessor for AuthenticatorModel();
  swift_allocObject();
  return sub_1BD83D0D4(&v6, 2, 0, 1);
}

unint64_t sub_1BD145D84()
{
  result = qword_1EBD3A0C0;
  if (!qword_1EBD3A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0C0);
  }

  return result;
}

uint64_t sub_1BD145DD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD145E20()
{
  result = qword_1EBD3A0E0;
  if (!qword_1EBD3A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B0);
    sub_1BD145ED8();
    sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0E0);
  }

  return result;
}

unint64_t sub_1BD145ED8()
{
  result = qword_1EBD3A0E8;
  if (!qword_1EBD3A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0C8);
    sub_1BD0DE4F4(&qword_1EBD3A0F0, qword_1EBD3A0F8);
    sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountResolutionInfo.Resolution(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccountResolutionInfo.Resolution(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1BD1460C4()
{
  swift_getWitnessTable();
  sub_1BE04E984();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDF50();
    if (v1 <= 0x3F)
    {
      sub_1BD0EDFE4();
      if (v2 <= 0x3F)
      {
        sub_1BD1462CC();
        if (v3 <= 0x3F)
        {
          sub_1BD146338(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD146338(319, &qword_1EBD388E0, &qword_1EBD51EC0, &unk_1BE0B7120, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BD146338(319, &qword_1EBD3A210, &qword_1EBD3D520, &unk_1BE0C12E0, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD14639C();
                if (v7 <= 0x3F)
                {
                  sub_1BD1463F4();
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

unint64_t sub_1BD1462CC()
{
  result = qword_1EBD3A208;
  if (!qword_1EBD3A208)
  {
    type metadata accessor for AuthenticatorModel();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD3A208);
  }

  return result;
}

void sub_1BD146338(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BD14639C()
{
  if (!qword_1EBD388F8)
  {
    sub_1BE04C884();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD388F8);
    }
  }
}

void sub_1BD1463F4()
{
  if (!qword_1EBD59660)
  {
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59660);
    }
  }
}

uint64_t sub_1BD1464E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v11 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  return a2(a1, &v2[(*(v11 + 80) + 72) & ~*(v11 + 80)], v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD1465BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  v11 = v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80));

  return sub_1BD13E8C0(v11, v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t sub_1BD146694(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  return sub_1BD13EFA0(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BD146778()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  v9 = v0 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_1BD140224(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = sub_1BE04C614();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AuthenticatedTransactionSheet();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = (v0 + v6);

  __swift_destroy_boxed_opaque_existential_0((v8 + 48));
  if (*(v8 + 11))
  {
  }

  if (*(v8 + 13))
  {
  }

  if (*(v8 + 15))
  {
  }

  if (*(v8 + 20))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 136));
  }

  v9 = &v8[v5[26]];
  if (!(*(v2 + 48))(v9, 1, v1))
  {
    v7(v9, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);

  v10 = v5[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04C884();
    (*(*(v11 - 8) + 8))(&v8[v10], v11);
  }

  else
  {
  }

  sub_1BD0D4604(*&v8[v5[28]], v8[v5[28] + 8]);
  return swift_deallocObject();
}

uint64_t sub_1BD146B14(uint64_t (*a1)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = *(sub_1BE04C614() - 8);
  v10 = *(v9 + 64);
  v11 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v12 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  return a1(&v1[v11], &v1[(v11 + v10 + *(v12 + 80)) & ~*(v12 + 80)], v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD146DE8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for AuthenticatedTransactionSheet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));
  v5 = v4[9];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v5);
  return a1(v5, v6);
}

unint64_t sub_1BD146E94()
{
  result = qword_1EBD3A268;
  if (!qword_1EBD3A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A268);
  }

  return result;
}

unint64_t sub_1BD146EE8()
{
  result = qword_1EBD3A270;
  if (!qword_1EBD3A270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48);
    swift_getOpaqueTypeConformance2();
    sub_1BD0EEEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A270);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for AuthenticatedTransactionSheet();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_0((v2 + 48));
  if (*(v2 + 11))
  {
  }

  if (*(v2 + 13))
  {
  }

  if (*(v2 + 15))
  {
  }

  if (*(v2 + 20))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  }

  v3 = &v2[v1[26]];
  v4 = sub_1BE04C614();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180);

  v6 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BE04C884();
    (*(*(v7 - 8) + 8))(&v2[v6], v7);
  }

  else
  {
  }

  sub_1BD0D4604(*&v2[v1[28]], v2[v1[28] + 8]);
  return swift_deallocObject();
}

uint64_t sub_1BD14724C()
{
  type metadata accessor for AuthenticatedTransactionSheet();
  type metadata accessor for AuthenticatedTransactionSheet();
  return sub_1BD13C568();
}

void ProvisioningContinuityCarKeyHostViewController.init(handle:userInfo:parent:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_alertParent;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService;
  *&v3[v27] = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary;
  *&v3[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary] = v8;
  v10 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService;
  *&v3[v10] = [objc_opt_self() sharedService];
  v25 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession;
  v26 = v10;
  *&v3[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession] = 0;
  v3[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid] = 1;
  v11 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle;
  *&v3[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle] = a1;
  swift_unknownObjectWeakAssign();
  v12 = sub_1BE052434();
  v14 = v13;
  if (*(a2 + 16))
  {
    v15 = v12;
    v24 = ObjectType;
    v16 = a1;
    v17 = sub_1BD148F70(v15, v14);
    v19 = v18;

    if (v19)
    {
      v29 = *(*(a2 + 56) + 8 * v17);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v20 = *&v3[v9];
        v21 = sub_1BE052404();
        v22 = [v20 passWithUniqueID_];

        if (v22)
        {

          v23 = [v22 secureElementPass];

          if (v23)
          {
            *&v3[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass] = v23;
            v28.receiver = v3;
            v28.super_class = v24;
            objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);

            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_10:

  sub_1BD0D4534(&v3[v7]);
  swift_deallocPartialClassInstance();
}

Swift::Void __swiftcall ProvisioningContinuityCarKeyHostViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1);
  v3 = *&v1[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1BD148FE8;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BD126964;
  v6[3] = &block_descriptor_8;
  v5 = _Block_copy(v6);

  [v3 setInvalidationHandler_];
  _Block_release(v5);
  sub_1BD14797C();
}

void sub_1BD14782C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD147884(1);
  }
}

void *sub_1BD147884(void *result)
{
  if (*(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) == 1)
  {
    v2 = result;
    *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) = 0;
    v3 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession;
    v4 = *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v1 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v1 + v3) = 0;

    v6 = *(v1 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle);
    [v6 setInvalidationHandler_];
    if (v2)
    {
      [v6 closeWithCompletion_];
    }

    [v6 invalidate];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result invalidate];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD14797C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v5 = [v4 _sceneIdentifier];

      v6 = sub_1BE052434();
      v35 = v7;
      v36 = v6;

      v8 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v34 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService];
      v10 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass];
      v11 = *&v0[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService];
      sub_1BD14BE3C();
      v12 = v10;
      v13 = sub_1BE052D54();
      v14 = [objc_allocWithZone(MEMORY[0x1E69B9268]) initWithPass:v12 webService:v11 paymentServiceProvider:0 queue:v13];

      if (v14)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v42 = sub_1BD14BE88;
        v43 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v39 = 1107296256;
        v40 = sub_1BD3B2110;
        v41 = &block_descriptor_10;
        v16 = _Block_copy(&aBlock);
        v17 = v14;

        [v8 addOperation_];
        _Block_release(v16);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        v20 = v8;
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = v17;
        v22[4] = v36;
        v22[5] = v35;
        v22[6] = v34;
        v22[7] = v18;
        v22[8] = v19;
        v22[9] = v9;
        v42 = sub_1BD14BE90;
        v43 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v39 = 1107296256;
        v40 = sub_1BD3B2110;
        v41 = &block_descriptor_23_0;
        v23 = _Block_copy(&aBlock);
        v37 = v17;
        v24 = v34;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();

        [v20 addOperation_];
        _Block_release(v23);
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = v18;
        v26[4] = v9;
        v42 = sub_1BD14BEC8;
        v43 = v26;
        aBlock = MEMORY[0x1E69E9820];
        v39 = 1107296256;
        v40 = sub_1BD3B2110;
        v41 = &block_descriptor_30;
        v27 = _Block_copy(&aBlock);
        sub_1BE048964();
        sub_1BE048964();

        [v20 addOperation_];
        _Block_release(v27);
        v28 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = v9;
        v30[4] = v19;
        v30[5] = v37;
        v42 = sub_1BD14BED4;
        v43 = v30;
        aBlock = MEMORY[0x1E69E9820];
        v39 = 1107296256;
        v40 = sub_1BD3B21E4;
        v41 = &block_descriptor_37;
        v31 = _Block_copy(&aBlock);
        v32 = v37;
        sub_1BE048964();
        sub_1BE048964();

        v33 = [v20 evaluateWithInput:v28 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_1BD147884(1);
}

void sub_1BD147F88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v12[4] = sub_1BD14BF54;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BD126964;
  v12[3] = &block_descriptor_72_0;
  v10 = _Block_copy(v12);
  sub_1BE048964();
  v11 = a2;

  [a5 updateSharesWithCompletion_];
  _Block_release(v10);
}

void sub_1BD148080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a8;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v50 = a4;
    v51 = a2;
    sub_1BE04D0A4();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Requesting auth for invite", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    v49 = a3;

    (*(v17 + 8))(v20, v16);
    v26 = [a6 baseShareForPassTransferWithIsForCompanion_];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_allocWithZone(MEMORY[0x1E69B8A18]) initWithShare:v26 pass:*&v22[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_pass]];
      [v28 setSharingInvitationFlow_];
      v48 = PKShareTransferAuthorizationPaymentRequest();
      v47 = objc_opt_self();
      v52 = sub_1BE052404();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = a9;
      v30[4] = v28;
      v30[5] = a10;
      v30[6] = a11;
      v30[7] = a12;
      v57 = sub_1BD14BEEC;
      v58 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v46 = v27;
      v55 = sub_1BD148854;
      v56 = &block_descriptor_50;
      v31 = _Block_copy(&aBlock);
      v32 = v22;
      v33 = a9;
      v45 = v28;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = a10;
      v36 = v49;
      v37 = v50;
      v35[4] = a11;
      v35[5] = v36;
      v38 = v51;
      v35[6] = v37;
      v35[7] = v38;
      v57 = sub_1BD14BF1C;
      v58 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1BD976224;
      v56 = &block_descriptor_57_0;
      v39 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v40 = v38;

      v41 = v48;
      v42 = v52;
      v43 = [v47 authorizeForRequest:v48 presentationSceneIdentifier:v52 authHandler:v31 completion:v39];

      _Block_release(v39);
      _Block_release(v31);

      v44 = *&v32[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession];
      *&v32[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession] = v43;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD1484DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [*(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle) transportIdentifier];
    if (!v17)
    {
      sub_1BE052434();
      v17 = sub_1BE052404();
    }

    v18 = sub_1BE04AAB4();
    v19 = swift_allocObject();
    v19[2] = a8;
    v19[3] = a9;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a10;
    aBlock[4] = sub_1BD14BF44;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_66;
    v20 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    [a6 createShareInvitationForPartialShareInvitation:a7 existingTransportIdentifier:v17 authorization:v18 completion:v20];
    _Block_release(v20);
  }
}

void sub_1BD14869C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    swift_beginAccess();
    v14 = *(a4 + 16);
    *(a4 + 16) = a1;
    v15 = a1;
    v16 = a2;

    swift_beginAccess();
    v17 = *(a5 + 16);
    *(a5 + 16) = a2;
    v18 = v16;

    a6(1);
  }

  else
  {
    swift_beginAccess();
    v20 = *(a8 + 16);
    *(a8 + 16) = a3;
    v21 = a3;

    a6(0);
  }
}

void sub_1BD1487AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1BD148854(uint64_t a1, void *a2, const void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a2;
  v7 = sub_1BE04AAC4();
  v9 = v8;

  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v5(v7, v9, sub_1BD14BF2C, v11);

  sub_1BD1245AC(v7, v9);
}

void sub_1BD148934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BOOL8), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession);
    *(Strong + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession) = 0;

    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_beginAccess();
      v14 = *(a4 + 16) == 0;
    }

    else
    {
      v14 = 1;
    }

    a5(a7, v14);
  }
}

void sub_1BD148A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    v14 = *(a6 + 16);
    if (v14)
    {
      v15 = *&v13[OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_handle];
      v16 = swift_allocObject();
      v16[2] = a7;
      v16[3] = a3;
      v16[4] = a4;
      v16[5] = a2;
      v21[4] = sub_1BD14BEE0;
      v21[5] = v16;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1BD3CC8C0;
      v21[3] = &block_descriptor_43_0;
      v17 = _Block_copy(v21);
      v18 = v14;
      v19 = v15;
      sub_1BE048964();
      sub_1BE048964();
      v20 = a2;

      [v19 sendMessage:v18 completion:v17];
      _Block_release(v17);

      v13 = v19;
    }
  }
}

uint64_t sub_1BD148B8C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a2;

  v11 = a2;
  return a4(a6, a2 != 0);
}

void sub_1BD148C14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (*(a5 + 16) || (v13 = [a3 isCanceled], v13))
    {
      swift_beginAccess();
      v14 = *(a6 + 16);
      if (v14)
      {
        [a7 revokeShare:v14 shouldCascade:0 withCompletion:0];
      }

      v13 = 1;
    }

    sub_1BD147884(v13);
  }
}

id ProvisioningContinuityCarKeyHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ProvisioningContinuityCarKeyHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD148E9C(uint64_t a1)
{
  sub_1BE049B04();
  v2 = MEMORY[0x1E6967AD0];
  sub_1BD14BDF4(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E6967AD0], &qword_1EBD3A340, v2, MEMORY[0x1E6967AE8]);
}

unint64_t sub_1BD148F70(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE052524();
  v4 = sub_1BE053D64();

  return sub_1BD149B0C(a1, a2, v4);
}

unint64_t sub_1BD149040(uint64_t a1)
{
  v2 = sub_1BE0537A4();

  return sub_1BD149BC4(a1, v2);
}

unint64_t sub_1BD1490C0(uint64_t a1)
{
  sub_1BE04C974();
  v2 = MEMORY[0x1E69BCA90];
  sub_1BD14BDF4(&qword_1EBD369F8, MEMORY[0x1E69BCA90]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E69BCA90], &qword_1EBD369F0, v2, MEMORY[0x1E69BCAA0]);
}

unint64_t sub_1BD149194(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE053D24();
  if (a2)
  {
    sub_1BE052524();
  }

  v4 = sub_1BE053D64();

  return sub_1BD149EDC(a1, a2, v4);
}

unint64_t sub_1BD149228(unsigned __int8 a1)
{
  v2 = sub_1BDA27B24();

  return sub_1BD149FA8(a1, v2);
}

unint64_t sub_1BD14926C(uint64_t a1)
{
  sub_1BE052434();
  sub_1BE053D04();
  sub_1BE052524();
  v2 = sub_1BE053D64();

  return sub_1BD14A7EC(a1, v2);
}

unint64_t sub_1BD1492FC(uint64_t a1)
{
  sub_1BE0492B4();
  v2 = MEMORY[0x1E6967728];
  sub_1BD14BDF4(&qword_1EBD3A378, MEMORY[0x1E6967728]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E6967728], &qword_1EBD3A380, v2, MEMORY[0x1E6967738]);
}

unint64_t sub_1BD1493D0(uint64_t a1)
{
  sub_1BE053D04();
  type metadata accessor for CFString(0);
  sub_1BD14BDF4(&qword_1EBD3A370, type metadata accessor for CFString);
  sub_1BE04CDC4();
  v2 = sub_1BE053D64();

  return sub_1BD14A24C(a1, v2);
}

unint64_t sub_1BD1494B0(char a1)
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1 & 1);
  v2 = sub_1BE053D64();

  return sub_1BD14A70C(a1 & 1, v2);
}

unint64_t sub_1BD14951C(uint64_t a1)
{
  sub_1BE04AFE4();
  v2 = MEMORY[0x1E69695A8];
  sub_1BD14BDF4(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  v3 = sub_1BE052284();
  return sub_1BD149D3C(a1, v3, MEMORY[0x1E69695A8], &unk_1EBD36A30, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1BD1495F0(unsigned __int8 a1)
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1);
  v2 = sub_1BE053D64();

  return sub_1BD14A77C(a1, v2);
}

unint64_t sub_1BD14965C(uint64_t a1)
{
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD14B538(a1, v10);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v12);
    goto LABEL_9;
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD14BDF4(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  (*(v3 + 8))(v6, v2);
LABEL_9:
  v13 = sub_1BE053D64();
  return sub_1BD14A8F0(a1, v13);
}

unint64_t sub_1BD14986C(char a1)
{
  sub_1BE053D04();
  sub_1BE052524();

  v2 = sub_1BE053D64();

  return sub_1BD14ADC8(a1 & 1, v2);
}

unint64_t sub_1BD149920(unsigned __int8 a1)
{
  sub_1BE053D04();
  sub_1BE052524();

  v2 = sub_1BE053D64();

  return sub_1BD14AF20(a1, v2);
}

unint64_t sub_1BD149A00(char a1)
{
  sub_1BE053D04();
  sub_1BE052524();

  v2 = sub_1BE053D64();

  return sub_1BD14B0D8(a1 & 1, v2);
}

unint64_t sub_1BD149A9C(unsigned __int8 a1)
{
  v2 = sub_1BDA27EC4();

  return sub_1BD14B20C(a1, v2);
}

unint64_t sub_1BD149B0C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BE053B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BD149BC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BD149C8C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB40840](v9, a1);
      sub_1BD149CE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BD149D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1BD14BDF4(v24, v25);
      v20 = sub_1BE052334();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1BD149EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1BE053B84() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1BD149FA8(unsigned __int8 a1, uint64_t a2)
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
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE800000000000000;
            v11 = 0x7365636976726573;
          }

          else
          {
            v12 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x726F70736E617274;
          }

          else
          {
            v11 = 0x6C6576617274;
          }

          if (v6 == 4)
          {
            v12 = 0xE900000000000074;
          }

          else
          {
            v12 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x44646E41646F6F66;
        }

        else
        {
          v7 = 0x68746C616568;
        }

        if (v6 == 2)
        {
          v8 = 0xED0000736B6E6972;
        }

        else
        {
          v8 = 0xE600000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x676E6970706F6873;
        }

        else
        {
          v9 = 7239014;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0xE800000000000000;
        }

        else
        {
          v10 = 0xE300000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x7365636976726573;
      if (v5 != 6)
      {
        v13 = 0x6E776F6E6B6E75;
      }

      v14 = 0xE700000000000000;
      if (v5 == 6)
      {
        v14 = 0xE800000000000000;
      }

      v15 = 0x726F70736E617274;
      if (v5 != 4)
      {
        v15 = 0x6C6576617274;
      }

      v16 = 0xE900000000000074;
      if (v5 != 4)
      {
        v16 = 0xE600000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x44646E41646F6F66;
      }

      else
      {
        v17 = 0x68746C616568;
      }

      if (v5 == 2)
      {
        v18 = 0xED0000736B6E6972;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (v5)
      {
        v19 = 0x676E6970706F6873;
      }

      else
      {
        v19 = 7239014;
      }

      if (v5)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1BE053B84();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BD14A24C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BD14BDF4(&qword_1EBD3A370, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BE04CDB4();

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

unint64_t sub_1BD14A358(unsigned __int8 a1, uint64_t a2)
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
      if (v7 <= 5)
      {
        break;
      }

      if (*(*(v2 + 48) + v4) <= 8u)
      {
        if (v7 == 6)
        {
          v9 = 0xD000000000000014;
          v12 = 0x80000001BE117490;
          if (v6 <= 5)
          {
            goto LABEL_17;
          }

          goto LABEL_53;
        }

        v8 = v7 == 7;
        v9 = 0xD00000000000001BLL;
        v11 = 0x80000001BE1174B0;
        v10 = 0x80000001BE1174D0;
LABEL_13:
        if (v8)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }

        if (v6 <= 5)
        {
LABEL_17:
          v13 = 0xD000000000000019;
          if (v6 == 4)
          {
            v13 = 0xD000000000000012;
          }

          v14 = 0x80000001BE117470;
          if (v6 == 4)
          {
            v14 = 0x80000001BE117450;
          }

          if (v6 == 3)
          {
            v13 = 0xD000000000000012;
            v14 = 0x80000001BE117430;
          }

          if (v6 == 1)
          {
            v15 = 0xD000000000000012;
          }

          else
          {
            v15 = 0xD000000000000010;
          }

          v16 = 0x80000001BE117410;
          if (v6 == 1)
          {
            v16 = 0x80000001BE1173F0;
          }

          if (!v6)
          {
            v15 = 0x6E776F6E6B6E75;
            v16 = 0xE700000000000000;
          }

          if (v6 <= 2)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (v6 <= 2)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (v9 != v17)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        goto LABEL_53;
      }

      if (v7 == 9)
      {
        v9 = 0xD00000000000001BLL;
        v12 = 0x80000001BE1174F0;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

      else if (v7 == 10)
      {
        v9 = 0xD000000000000019;
        v12 = 0x80000001BE117510;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = 0xD00000000000001CLL;
        v12 = 0x80000001BE117530;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

LABEL_53:
      v19 = 0xD00000000000001BLL;
      v20 = 0xD000000000000019;
      if (v6 != 10)
      {
        v20 = 0xD00000000000001CLL;
      }

      v21 = 0x80000001BE117530;
      if (v6 == 10)
      {
        v21 = 0x80000001BE117510;
      }

      if (v6 == 9)
      {
        v20 = 0xD00000000000001BLL;
        v21 = 0x80000001BE1174F0;
      }

      v22 = 0x80000001BE1174D0;
      if (v6 == 7)
      {
        v22 = 0x80000001BE1174B0;
      }

      if (v6 == 6)
      {
        v19 = 0xD000000000000014;
      }

      v23 = 0x80000001BE117490;
      if (v6 != 6)
      {
        v23 = v22;
      }

      if (v6 <= 8)
      {
        v24 = v19;
      }

      else
      {
        v24 = v20;
      }

      if (v6 <= 8)
      {
        v18 = v23;
      }

      else
      {
        v18 = v21;
      }

      if (v9 != v24)
      {
        goto LABEL_73;
      }

LABEL_72:
      if (v12 == v18)
      {

        return v4;
      }

LABEL_73:
      v25 = sub_1BE053B84();

      if ((v25 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    if (*(*(v2 + 48) + v4) > 2u)
    {
      if (v7 == 3)
      {
        v9 = 0xD000000000000012;
        v12 = 0x80000001BE117430;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

      else if (v7 == 4)
      {
        v9 = 0xD000000000000012;
        v12 = 0x80000001BE117450;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = 0xD000000000000019;
        v12 = 0x80000001BE117470;
        if (v6 <= 5)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_53;
    }

    if (!*(*(v2 + 48) + v4))
    {
      v12 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
      if (v6 <= 5)
      {
        goto LABEL_17;
      }

      goto LABEL_53;
    }

    v8 = v7 == 1;
    if (v7 == 1)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    v11 = 0x80000001BE1173F0;
    v10 = 0x80000001BE117410;
    goto LABEL_13;
  }

  return v4;
}

unint64_t sub_1BD14A70C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BD14A77C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BD14A7EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BE052434();
      v8 = v7;
      if (v6 == sub_1BE052434() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BE053B84();

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

unint64_t sub_1BD14A8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_1BE04C164();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0) - 8;
  MEMORY[0x1EEE9AC00](v13, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v32 - v19;
  v21 = v3 + 64;
  v22 = -1 << *(v3 + 32);
  v23 = a2 & ~v22;
  if (((*(v3 + 64 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return v23;
  }

  v40 = v18;
  v41 = ~v22;
  v42 = *(v17 + 72);
  v24 = (v6 + 48);
  v38 = v3 + 64;
  v39 = (v6 + 8);
  v34 = v3;
  v35 = (v6 + 32);
  v33 = v9;
  while (1)
  {
    sub_1BD14B538(*(v3 + 48) + v42 * v23, v20);
    v25 = *(v9 + 48);
    sub_1BD14B538(v20, v12);
    sub_1BD14B538(v43, &v12[v25]);
    v26 = *v24;
    v27 = (*v24)(v12, 3, v5);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        sub_1BD14B59C(v20);
        if (v26(&v12[v25], 3, v5) == 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1BD14B59C(v20);
        if (v26(&v12[v25], 3, v5) == 3)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_13;
    }

    if (v27)
    {
      sub_1BD14B59C(v20);
      if (v26(&v12[v25], 3, v5) == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v28 = v40;
    sub_1BD14B538(v12, v40);
    if (v26(&v12[v25], 3, v5))
    {
      sub_1BD14B59C(v20);
      (*v39)(v28, v5);
      v21 = v38;
LABEL_13:
      sub_1BD14B5F8(v12);
      goto LABEL_14;
    }

    (*v35)(v37, &v12[v25], v5);
    sub_1BD14BDF4(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    if (v46 == v44 && v47 == v45)
    {
      break;
    }

    v36 = sub_1BE053B84();
    v29 = *v39;
    (*v39)(v37, v5);
    sub_1BD14B59C(v20);

    v29(v40, v5);
    v9 = v33;
    v3 = v34;
    v21 = v38;
    if (v36)
    {
      goto LABEL_22;
    }

    sub_1BD14B59C(v12);
LABEL_14:
    v23 = (v23 + 1) & v41;
    if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return v23;
    }
  }

  v30 = *v39;
  (*v39)(v37, v5);
  sub_1BD14B59C(v20);

  v30(v40, v5);
LABEL_22:
  sub_1BD14B59C(v12);
  return v23;
}

unint64_t sub_1BD14ADC8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7761726468746977;
    }

    else
    {
      v6 = 0x79656E6F4D646461;
    }

    if (a1)
    {
      v7 = 0xED000079656E6F4DLL;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7761726468746977 : 0x79656E6F4D646461;
      v9 = *(*(v2 + 48) + v4) ? 0xED000079656E6F4DLL : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1BE053B84();

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

unint64_t sub_1BD14AF20(unsigned __int8 a1, uint64_t a2)
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
        v7 = 0x506D756D696E696DLL;
        v8 = 0xEE00746E656D7961;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0x796150726568746FLL;
          v8 = 0xEC000000746E656DLL;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x80000001BE117CF0;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000013;
        v8 = 0x80000001BE117CF0;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x506D756D696E696DLL;
      }

      else
      {
        v10 = 0x796150726568746FLL;
      }

      if (v9 == 1)
      {
        v11 = 0xEE00746E656D7961;
      }

      else
      {
        v11 = 0xEC000000746E656DLL;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = sub_1BE053B84();

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

unint64_t sub_1BD14B0D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7173491;
    }

    else
    {
      v6 = 0x746E756F63;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7173491 : 0x746E756F63;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE500000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1BE053B84();

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

unint64_t sub_1BD14B20C(unsigned __int8 a1, uint64_t a2)
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
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE800000000000000;
            v11 = 0x726165597473616CLL;
          }

          else
          {
            v12 = 0xE600000000000000;
            v11 = 0x6D6F74737563;
          }
        }

        else
        {
          v11 = v6 == 4 ? 0x746E6F4D7473616CLL : 0x59746E6572727563;
          v12 = v6 == 4 ? 0xE900000000000068 : 0xEB00000000726165;
        }
      }

      else
      {
        v7 = 0xE900000000000079;
        if (v6 == 2)
        {
          v8 = 0x6164726574736579;
        }

        else
        {
          v8 = 0x4D746E6572727563;
        }

        if (v6 != 2)
        {
          v7 = 0xEC00000068746E6FLL;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x7961646F74 : 0x656D69546C6C61;
        v10 = *(*(v27 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
        v11 = *(*(v27 + 48) + v4) <= 1u ? v9 : v8;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v7;
      }

      v13 = 0x726165597473616CLL;
      if (v5 != 6)
      {
        v13 = 0x6D6F74737563;
      }

      v14 = 0xE800000000000000;
      if (v5 != 6)
      {
        v14 = 0xE600000000000000;
      }

      v15 = 0x746E6F4D7473616CLL;
      if (v5 != 4)
      {
        v15 = 0x59746E6572727563;
      }

      v16 = 0xEB00000000726165;
      if (v5 == 4)
      {
        v16 = 0xE900000000000068;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0xE900000000000079;
      if (v5 == 2)
      {
        v18 = 0x6164726574736579;
      }

      else
      {
        v18 = 0x4D746E6572727563;
      }

      if (v5 != 2)
      {
        v17 = 0xEC00000068746E6FLL;
      }

      if (v5)
      {
        v19 = 0x7961646F74;
      }

      else
      {
        v19 = 0x656D69546C6C61;
      }

      if (v5)
      {
        v20 = 0xE500000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v19;
        v17 = v20;
      }

      v21 = v5 <= 3 ? v18 : v13;
      v22 = v5 <= 3 ? v17 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1BE053B84();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BD14B4CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1BD14B538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD14B59C(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD14B5F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD14B660(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6573616863727570;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x646E75666572;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x7469736E617274;
          break;
        case 3:
          v9 = 1919247728;
          goto LABEL_23;
        case 4:
          v7 = 0xE300000000000000;
          v8 = 6645094;
          break;
        case 5:
          v8 = 0x6172646874646977;
          v7 = 0xEB000000006C6177;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x7055706F74;
          break;
        case 7:
          v8 = 0x656D7473756A6461;
          v7 = 0xEA0000000000746ELL;
          break;
        case 8:
          v8 = 0x6573727562736964;
          v7 = 0xEC000000746E656DLL;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x73647261776572;
          break;
        case 0xA:
          v9 = 1819044194;
LABEL_23:
          v8 = v9 | 0x6D79615000000000;
          v7 = 0xEB00000000746E65;
          break;
        case 0xB:
          v8 = 0x7473657265746E69;
          break;
        case 0xC:
          v8 = 0x4173647261776572;
          v7 = 0xEC00000064656464;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x80000001BE1181C0;
          break;
        case 0xE:
          v8 = 0x6D6C6C6174736E69;
          v7 = 0xEF6E616C50746E65;
          break;
        case 0xF:
          v8 = 0x646E656469766964;
          break;
        case 0x10:
          v7 = 0xE400000000000000;
          v8 = 1851879276;
          break;
        case 0x11:
          v8 = 0x676E69646E617473;
          v7 = 0xED0000726564724FLL;
          break;
        case 0x12:
          v7 = 0xEB00000000746962;
          v8 = 0x6544746365726964;
          break;
        case 0x13:
          v8 = 0x726566736E617274;
          break;
        case 0x14:
          v7 = 0xE500000000000000;
          v8 = 0x6B63656863;
          break;
        case 0x15:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x6573616863727570;
      switch(a1)
      {
        case 1:
          v10 = 0xE600000000000000;
          if (v8 == 0x646E75666572)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        case 2:
          v10 = 0xE700000000000000;
          if (v8 != 0x7469736E617274)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 3:
          v12 = 1919247728;
          goto LABEL_62;
        case 4:
          v10 = 0xE300000000000000;
          if (v8 != 6645094)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 5:
          v13 = 0x6172646874646977;
          v14 = 7102839;
          goto LABEL_63;
        case 6:
          v10 = 0xE500000000000000;
          if (v8 != 0x7055706F74)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 7:
          v10 = 0xEA0000000000746ELL;
          if (v8 != 0x656D7473756A6461)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 8:
          v11 = 0x6573727562736964;
          v10 = 0xEC000000746E656DLL;
          goto LABEL_66;
        case 9:
          v10 = 0xE700000000000000;
          if (v8 != 0x73647261776572)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 10:
          v12 = 1819044194;
LABEL_62:
          v13 = v12 | 0x6D79615000000000;
          v14 = 7630437;
LABEL_63:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 11:
          if (v8 != 0x7473657265746E69)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 12:
          v10 = 0xEC00000064656464;
          if (v8 != 0x4173647261776572)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 13:
          v10 = 0x80000001BE1181C0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 14:
          v10 = 0xEF6E616C50746E65;
          if (v8 != 0x6D6C6C6174736E69)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 15:
          if (v8 != 0x646E656469766964)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 16:
          v10 = 0xE400000000000000;
          if (v8 != 1851879276)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 17:
          v10 = 0xED0000726564724FLL;
          if (v8 != 0x676E69646E617473)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 18:
          v10 = 0xEB00000000746962;
          if (v8 != 0x6544746365726964)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 19:
          if (v8 != 0x726566736E617274)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 20:
          v10 = 0xE500000000000000;
          if (v8 != 0x6B63656863)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 21:
          v10 = 0xE700000000000000;
          if (v8 != 0x6E776F6E6B6E75)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        default:
LABEL_66:
          if (v8 != v11)
          {
            goto LABEL_68;
          }

LABEL_67:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_68:
          v15 = sub_1BE053B84();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1BD14BC7C()
{
  sub_1BE053D04();
  sub_1BE052524();
  v0 = sub_1BE053D64();

  return sub_1BD14BC50(v0);
}

void sub_1BD14BCE0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_paymentService;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_passLibrary) = v2;
  v3 = OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_webService;
  *(v0 + v3) = [objc_opt_self() sharedService];
  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_authorizationSession) = 0;
  *(v0 + OBJC_IVAR___PKProvisioningContinuityCarKeyHostViewController_isValid) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD14BDF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD14BE3C()
{
  result = qword_1EBD35E90;
  if (!qword_1EBD35E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35E90);
  }

  return result;
}

uint64_t sub_1BD14BFD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006572756C6961;
  v3 = 0x466C616974696E69;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001BE117EB0;
    v12 = 0xD000000000000017;
    if (a1 != 6)
    {
      v12 = 0x7369447465656873;
      v11 = 0xEE0064657373696DLL;
    }

    v13 = 0x46676E6964616F6CLL;
    if (a1 == 4)
    {
      v14 = 0xEE006572756C6961;
    }

    else
    {
      v13 = 0x6D73694472657375;
      v14 = 0xED00006465737369;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001BE117E60;
    if (a1 != 2)
    {
      v5 = 0xD000000000000011;
      v6 = 0x80000001BE117E80;
    }

    v7 = 0xD000000000000014;
    v8 = 0x80000001BE117E40;
    if (!a1)
    {
      v7 = 0x466C616974696E69;
      v8 = 0xEE006572756C6961;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001BE117EB0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEE0064657373696DLL;
        if (v9 != 0x7369447465656873)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 0x46676E6964616F6CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0xED00006465737369;
      if (v9 != 0x6D73694472657375)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = "presentedLoadingView";
LABEL_33:
        v2 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v2 = 0x80000001BE117E80;
      v3 = 0xD000000000000011;
    }

    else if (a2)
    {
      v15 = "startedSilentLoading";
      goto LABEL_33;
    }

    if (v9 != v3)
    {
LABEL_45:
      v16 = sub_1BE053B84();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1BD14C284(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x647261436E6FLL;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x656572635366666FLL;
  v7 = 0xE90000000000006ELL;
  if (a1 == 2)
  {
    v8 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0x726143776F6C6562;
    v8 = 0xE900000000000064;
  }

  v9 = 0x72614365766F6261;
  if (a1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v9 = 0x647261436E6FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v8;
  }

  v12 = 0x656572635366666FLL;
  if (a2 != 2)
  {
    v12 = 0x726143776F6C6562;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = 0x72614365766F6261;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v7;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
  }

  return v15 & 1;
}

uint64_t sub_1BD14C3B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7365636976726573;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = 0x726F70736E617274;
  v7 = 0xE900000000000074;
  if (a1 != 4)
  {
    v6 = 0x6C6576617274;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x44646E41646F6F66;
  v9 = 0xED0000736B6E6972;
  if (a1 != 2)
  {
    v8 = 0x68746C616568;
    v9 = 0xE600000000000000;
  }

  v10 = 0x676E6970706F6873;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 7239014;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x7365636976726573)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v14 = sub_1BE053B84();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x726F70736E617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C6576617274)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED0000736B6E6972;
      if (v11 != 0x44646E41646F6F66)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x68746C616568)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x676E6970706F6873)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7239014)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1BD14C634(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x80000001BE117FC0;
      v5 = 0xD00000000000002ALL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000028;
      }

      else
      {
        v5 = 0xD000000000000017;
      }

      if (v2 == 4)
      {
        v6 = 0x80000001BE117FF0;
      }

      else
      {
        v6 = 0x80000001BE118020;
      }
    }
  }

  else
  {
    v3 = 0x80000001BE117FA0;
    if (a1 == 1)
    {
      v4 = 0x616C696176616E75;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v3 = 0xEF73736150656C62;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000001BE117F70;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x80000001BE117FC0;
      if (v5 != 0xD00000000000002ALL)
      {
        goto LABEL_42;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x80000001BE117FF0;
      if (v5 != 0xD000000000000028)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v8 = 0x80000001BE118020;
      if (v5 != 0xD000000000000017)
      {
LABEL_42:
        v9 = sub_1BE053B84();
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x616C696176616E75;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v8 = 0xEF73736150656C62;
    }

    else
    {
      v8 = 0x80000001BE117FA0;
    }

    if (v5 != v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v8 = 0x80000001BE117F70;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_42;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_42;
  }

  v9 = 1;
LABEL_43:

  return v9 & 1;
}

uint64_t sub_1BD14C814(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x676E6964616F6CLL;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x45676E6964616F6CLL;
    v4 = 0xEC000000726F7272;
  }

  else if (a1 == 3)
  {
    v3 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C626967696C65;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676E6964616F6CLL;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x626967696C656E69;
    v6 = 0xEA0000000000656CLL;
    if (a2 != 3)
    {
      v5 = 0x656C626967696C65;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x45676E6964616F6CLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEC000000726F7272;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1BE053B84();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1BD14C9B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x31746565727473;
  v3 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6F436C6174736F70;
    v10 = 0xEA00000000006564;
    if (a1 != 6)
    {
      v9 = 0x7972746E756F63;
      v10 = 0xE700000000000000;
    }

    v11 = 0xD000000000000015;
    v12 = 0x80000001BE1173C0;
    if (a1 != 4)
    {
      v11 = 0x6574617473;
      v12 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v3 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v4 = 0x6C61636F4C627573;
    v5 = 0xEB00000000797469;
    if (a1 != 2)
    {
      v4 = 2037672291;
      v5 = 0xE400000000000000;
    }

    v6 = 0x32746565727473;
    if (!a1)
    {
      v6 = 0x31746565727473;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000006564;
        if (v7 != 0x6F436C6174736F70)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x7972746E756F63)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000001BE1173C0;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x6574617473)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEB00000000797469;
        if (v7 != 0x6C61636F4C627573)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v13 = 0xE400000000000000;
      v2 = 2037672291;
    }

    else
    {
      v13 = 0xE700000000000000;
      if (a2)
      {
        if (v7 != 0x32746565727473)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    if (v7 != v2)
    {
LABEL_44:
      v14 = sub_1BE053B84();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v8 != v13)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

uint64_t sub_1BD14CC1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6C6C6174736E69;
    }

    else
    {
      v4 = 0x73647261776572;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000073746E65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C75466E49796170;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE90000000000006CLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6D6C6C6174736E69;
  v8 = 0xEC00000073746E65;
  if (a2 != 2)
  {
    v7 = 0x73647261776572;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C75466E49796170;
    v6 = 0xE90000000000006CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

uint64_t sub_1BD14CD78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x726165597473616CLL;
  if (a1 != 6)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = 0x746E6F4D7473616CLL;
  if (a1 == 4)
  {
    v7 = 0xE900000000000068;
  }

  else
  {
    v6 = 0x59746E6572727563;
    v7 = 0xEB00000000726165;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6164726574736579;
  v9 = 0xE900000000000079;
  if (a1 != 2)
  {
    v8 = 0x4D746E6572727563;
    v9 = 0xEC00000068746E6FLL;
  }

  v10 = 0x7961646F74;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 0x656D69546C6C61;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x726165597473616CLL)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x6D6F74737563)
        {
LABEL_46:
          v14 = sub_1BE053B84();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000068;
      if (v11 != 0x746E6F4D7473616CLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xEB00000000726165;
      if (v11 != 0x59746E6572727563)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000079;
      if (v11 != 0x6164726574736579)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xEC00000068746E6FLL;
      if (v11 != 0x4D746E6572727563)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x7961646F74)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x656D69546C6C61)
    {
      goto LABEL_46;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_1BD14D018(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  if (a2 <= 1)
  {
    if (a2 <= 1)
    {
      goto LABEL_10;
    }

LABEL_6:
    v8 = a1;
    v9 = a2;
    if (a4 <= 1)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (a4 != 2 && a4 != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (a2 != 2 && a2 != 3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v8 = sub_1BE052434();
  v9 = v10;
  if (a4 > 1)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (a4 >= 2)
  {
LABEL_12:
    v11 = a3;
    v12 = a4;
    goto LABEL_14;
  }

LABEL_13:
  v11 = sub_1BE052434();
  v12 = v13;
LABEL_14:
  if (v8 == v11 && v9 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
  }

  sub_1BD14ED40(a1, a2);
  sub_1BD14ED40(a3, a4);

  return v15 & 1;
}

uint64_t sub_1BD14D190(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000001BE117300;
    v10 = 0xD000000000000019;
    if (a1 != 6)
    {
      v10 = 0x797469746E656469;
      v9 = 0xE800000000000000;
    }

    v11 = 0x614365676E616863;
    v12 = 0xEA00000000006472;
    if (a1 != 4)
    {
      v11 = 0xD000000000000010;
      v12 = 0x80000001BE1172E0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x80000001BE117290;
    v5 = 0xD00000000000001CLL;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x80000001BE1172B0;
    }

    v6 = 0xD000000000000013;
    if (a1)
    {
      v3 = 0x80000001BE117270;
    }

    else
    {
      v6 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001BE117300;
        if (v7 != 0xD000000000000019)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x797469746E656469)
        {
LABEL_48:
          v14 = sub_1BE053B84();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000006472;
      if (v7 != 0x614365676E616863)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x80000001BE1172E0;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x80000001BE117290;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x80000001BE1172B0;
      if (v7 != 0xD00000000000001CLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000001BE117270;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x636972656E6567)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1BD14D414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x676E6964616572;
    }

    else
    {
      v5 = 1701602409;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69737365636F7270;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64656E6E616373;
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x676E6964616572;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x69737365636F7270;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE700000000000000;
    v8 = 0x64656E6E616373;
    if (a2 != 3)
    {
      v8 = 0x64656873696E6966;
      v7 = 0xE800000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BE053B84();
  }

  return v12 & 1;
}

uint64_t ProvisioningCardReaderAnimationView.AnimationState.EducationState.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

char *ProvisioningCardReaderAnimationView.init(state:)(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state;
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state] = 7;
  v7 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion] = 0;
  v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled] = 1;
  v9 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderCardView());
  v10 = sub_1BD786C24(0);
  if (v10)
  {
    *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView] = v10;
    v11 = v10;
    v12 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderPhoneAnimationView());
    v13 = v11;
    *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView] = sub_1BD84D6A8(2u);
    v2[v6] = 7;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    v16 = v5;
    v14 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    ProvisioningCardReaderAnimationView.set(state:animated:)(&v16, 0);
    [v14 addSubview_];
    [v14 addSubview_];
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

void ProvisioningCardReaderAnimationView.set(state:animated:)(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state);
  if (v5 == 7)
  {
    if (v6 == 7)
    {
      return;
    }

    v7 = 7;
LABEL_4:
    *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v7;
    v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_19:
    v9 = 1;
    goto LABEL_20;
  }

  if (v6 == 7)
  {
LABEL_6:
    v9 = 0;
    *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v5;
    v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
    if (v5 <= 3)
    {
      if (v5 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v5 == 4)
    {
      goto LABEL_20;
    }

    if (v5 != 5)
    {
      if (v5 != 6)
      {
        goto LABEL_19;
      }

LABEL_17:
      v9 = 4;
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  if (*a1 <= 3u)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (v6 == 3)
        {
          return;
        }

        v7 = 3;
        goto LABEL_4;
      }

LABEL_63:
      if ((v6 - 2) >= 5 && ((v6 ^ v5) & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v6 == 2)
    {
      return;
    }
  }

  else
  {
    if (v5 != 4)
    {
      if (v5 == 5)
      {
        if (v6 == 5)
        {
          return;
        }

        *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 5;
        v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_60:
        v9 = 3;
        goto LABEL_20;
      }

      if (v5 == 6)
      {
        if (v6 == 6)
        {
          return;
        }

        *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 6;
        v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
        goto LABEL_17;
      }

      goto LABEL_63;
    }

    if (v6 == 4)
    {
      return;
    }
  }

  v9 = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = v5;
  v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
LABEL_20:
  if ((sub_1BD14D414(*(v8 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state), v9) & 1) == 0)
  {
    sub_1BD788BA4(v9, 0, 0);
  }

  if ((v5 - 2) >= 5)
  {
    sub_1BD84CE98((v5 & 1) == 0, a2 & 1, 0, 0);
    sub_1BD14E264();
    if (v6 <= 4)
    {
      goto LABEL_32;
    }

LABEL_26:
    switch(v6)
    {
      case 5:
        if (v5 == 5)
        {
          return;
        }

        goto LABEL_51;
      case 6:
        if (v5 == 6)
        {
          return;
        }

        goto LABEL_51;
      case 7:
        return;
    }

    goto LABEL_45;
  }

  sub_1BD84CE98(0x202030003uLL >> (8 * ((v5 - 2) & 0x1Fu)), a2 & 1, 0, 0);
  v10 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  v11 = *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v3 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v3 + v10) = 0;

  if (v6 > 4)
  {
    goto LABEL_26;
  }

LABEL_32:
  if (v6 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      if (v5 == 4)
      {
        return;
      }

      goto LABEL_51;
    }

LABEL_45:
    if ((v5 - 2) >= 5u && ((v6 ^ v5) & 1) == 0)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v5 == 3)
  {
    return;
  }

LABEL_51:
  if (*(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled) == 1 && (v5 - 4) <= 2)
  {
    v13 = dword_1BE0BA54C[(v5 - 4)];

    AudioServicesPlaySystemSound(v13);
  }
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView];
  [v0 bounds];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView];
  [v0 bounds];
  [v2 setFrame_];
}

CGSize __swiftcall ProvisioningCardReaderAnimationView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  PKFloatRoundToPixel();
  v3 = v2;
  v4 = width;
  result.height = v3;
  result.width = v4;
  return result;
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.setCardImage(_:)(UIImage_optional a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = a1.value.super.isa;
  v3 = a1.value.super.isa;
}

Swift::Void __swiftcall ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(Swift::Bool shouldMonitor)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) != shouldMonitor)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = shouldMonitor;
    v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);
    if (shouldMonitor)
    {
      v3 = [objc_opt_self() mainQueue];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_1BD14E904;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1BD14E1D8;
      v7[3] = &block_descriptor_9;
      v5 = _Block_copy(v7);

      [v2 startDeviceMotionUpdatesToQueue:v3 withHandler:v5];
      _Block_release(v5);
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);

      [v6 stopDeviceMotionUpdates];
    }
  }
}

void sub_1BD14DEDC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = [a1 attitude];
      if (v4)
      {
        v5 = v4;
        [v4 quaternion];
        sub_1BD14DF6C(v6, v7, v8, v9);

        v3 = v5;
      }
    }
  }
}

void sub_1BD14DF6C(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  v5 = -a1.f64[0];
  a1.f64[1] = a2;
  v6 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3), xmmword_1BE0BA420);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vrev64q_s32(v6);
  v9.i32[0] = v7.i32[1];
  v9.i32[3] = v7.i32[2];
  v10 = -a2;
  v11 = *(v4 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
  v12 = MEMORY[0x1BFB3FCF0](vaddq_f32(vmlaq_f32(vmulq_f32(v6, vdupq_n_s32(0x3F74C5EFu)), 0, v9), vmlaq_f32(vmulq_f32(vextq_s8(v6, v7, 8uLL), 0), vdupq_n_s32(0x3E95F619u), vextq_s8(v8, v8, 8uLL))));
  v16 = [objc_opt_self() valueWithVFXMatrix4_];
  v26[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v26[0] = v16;
  sub_1BD787F88(3, v26);
  sub_1BD14EC0C(v26);
  v17 = &v11[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation];
  *v17 = v10;
  v17[1] = v5;
  if (v11[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] <= 2u)
  {
    [v11 setNeedsLayout];
    [v11 layoutIfNeeded];
  }

  v18 = *(*(*(v4 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_phoneView) + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView) + OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews);
  if (v18 >> 62)
  {
    v19 = sub_1BE053704();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB40900](i, v18);
      }

      else
      {
        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      type metadata accessor for ProvisioningCardReaderPhoneAnimationView.PhoneGradientView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = &v23[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
        *v24 = v10;
        v24[1] = v5;
        v25 = v23;
        [v23 setNeedsLayout];
        [v25 layoutIfNeeded];
      }
    }
  }
}

void sub_1BD14E1D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1BD14E264()
{
  v1 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer))
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_1BD14EC74;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BD198918;
    v7[3] = &block_descriptor_15;
    v4 = _Block_copy(v7);

    v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

uint64_t sub_1BD14E37C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1BD14EC7C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v13);
  _Block_release(v13);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1BD14E638()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer;
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer);
    if (v3)
    {
      v4 = v1[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state];
      if ((v4 - 2) < 6)
      {
        [v3 invalidate];
        v5 = *&v1[v2];
        *&v1[v2] = 0;

        return;
      }

      v6 = (v4 & 1) == 0;
      ProvisioningCardReaderAnimationView.set(state:animated:)(&v6, 1);
    }
  }
}

id ProvisioningCardReaderAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProvisioningCardReaderAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s9PassKitUI35ProvisioningCardReaderAnimationViewC0G5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return v3 == 4;
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
    }
  }

  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1BD14E910()
{
  result = qword_1EBD3A3C0;
  if (!qword_1EBD3A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A3C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningCardReaderAnimationView.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningCardReaderAnimationView.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD14EB0C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD14EB20(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1BD14EB50()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state) = 7;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_animationTimer) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD14EC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD14EC84()
{
  result = qword_1EBD366B0;
  if (!qword_1EBD366B0)
  {
    sub_1BE051F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366B0);
  }

  return result;
}

unint64_t sub_1BD14ECDC()
{
  result = qword_1EBD35F20;
  if (!qword_1EBD35F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD387F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F20);
  }

  return result;
}

uint64_t sub_1BD14ED40(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    return sub_1BE048C84();
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferRewardsIntentSummaryView()
{
  result = qword_1EBD3A3C8;
  if (!qword_1EBD3A3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}