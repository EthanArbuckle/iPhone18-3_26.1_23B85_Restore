uint64_t sub_23250B4A0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(v4 + 456) = v1;

  v7 = *(v4 + 440);
  v8 = *(v4 + 176);
  if (v1)
  {

    v9 = sub_2325118D4;
  }

  else
  {

    *(v4 + 649) = a1 & 1;
    v9 = sub_23250B610;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_23250B610()
{
  v260 = v0;
  v244 = v0 + 2;
  v1 = *(v0 + 649);
  sub_2324DB438(v0[51], v0[52]);
  v245 = v0[57];
  v246 = v0;
LABEL_2:
  v2 = v0[54];
  if (v2 >> 60 != 15)
  {
    v3 = v0[46];
    v4 = v0[22];
    sub_2324DB3E4(v0[53], v2);
    v5 = sub_232545888();
    v6 = sub_2325461D8();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[53];
    v8 = v0[54];
    if (v7)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v10, 2u);
      MEMORY[0x238386450](v10, -1, -1);
    }

    sub_2324DB438(v9, v8);
  }

  v11 = 1;
LABEL_7:
  v12 = v246;
  v13 = v246[22] + v246[46];
  v14 = sub_232545888();
  v15 = sub_232546208();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v259 = v17;
    *v16 = 136315394;
    if (v11)
    {
      v18 = 7233874;
    }

    else
    {
      v18 = 0x20746F6E20646944;
    }

    if (v11)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xEB000000006E7572;
    }

    v20 = sub_2324C2220(v18, v19, &v259);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = 1702195828;
    if ((v1 & 1) == 0)
    {
      v21 = 0x65736C6166;
    }

    v22 = 0xE500000000000000;
    if (v1)
    {
      v22 = 0xE400000000000000;
    }

    if (v1 == 2)
    {
      v23 = 0x6E776F6E6B6E75;
    }

    else
    {
      v23 = v21;
    }

    if (v1 == 2)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = v22;
    }

    v25 = sub_2324C2220(v23, v24, &v259);
    v12 = v246;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2324C0000, v14, v15, "%s Bonjour probe, network restricts multicast traffic: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v17, -1, -1);
    MEMORY[0x238386450](v16, -1, -1);
  }

  v26 = *(v12 + 648);
  if (v1 != 2)
  {
    if (v26 != 2 && ((v26 ^ v1) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_30:
    v27 = v12[22] + v12[46];
    v28 = sub_232545888();
    v29 = sub_2325461D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v12[38];
      v31 = v12[23];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v259 = v33;
      *v32 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v34 = sub_232546608();
      v36 = sub_2324C2220(v34, v35, &v259);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = 1702195828;
      if ((v1 & 1) == 0)
      {
        v37 = 0x65736C6166;
      }

      v38 = 0xE500000000000000;
      if (v1)
      {
        v38 = 0xE400000000000000;
      }

      if (v1 == 2)
      {
        v39 = 7104878;
      }

      else
      {
        v39 = v37;
      }

      if (v1 == 2)
      {
        v40 = 0xE300000000000000;
      }

      else
      {
        v40 = v38;
      }

      v41 = sub_2324C2220(v39, v40, &v259);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_2324C0000, v28, v29, "About to update multicastTrafficBlocked property for %s to %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v33, -1, -1);
      MEMORY[0x238386450](v32, -1, -1);
    }

    v42 = v1;
    v44 = v12[37];
    v43 = v12[38];
    v46 = v12[32];
    v45 = v12[33];
    v47 = v12[30];
    v48 = v12[31];
    v49 = v12[29];
    v243 = v12[25];
    v50 = v12[24];
    v249 = v12[23];
    v253 = v12[26];
    v51 = v12[22];
    *(v43 + *(v46 + 60)) = v42;
    sub_232545668();
    (*(v47 + 40))(v43 + *(v46 + 20), v48, v49);
    sub_2324CE250(v43, v44);
    swift_beginAccess();
    sub_2324F6DD8(v44);
    swift_endAccess();
    sub_23251FC44(v44, type metadata accessor for NDFDevice);
    (*(v50 + 16))(v243, v43, v249);
    sub_2324CE250(v43, v253);
    (*(v45 + 56))(v253, 0, 1, v46);
    v52 = (*(*v51 + 184))(v244);
    sub_2324FCF78(v253, v243);
    v52(v244, 0);
    goto LABEL_43;
  }

  if (v26 != 2)
  {
    goto LABEL_30;
  }

LABEL_43:
  v53 = v12[53];
  v54 = v12[54];
  sub_2324DB438(v12[51], v12[52]);
  sub_2324DB438(v53, v54);
  while (2)
  {
    v12[61] = v245;
    v55 = v12[49];
    v56 = v12[38];
    v57 = v12[36];
    swift_beginAccess();
    sub_2324CE250(v56, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v12[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_2324E1E80(0, v59[2] + 1, 1, v12[49]);
    }

    v61 = v59[2];
    v60 = v59[3];
    if (v61 >= v60 >> 1)
    {
      v59 = sub_2324E1E80(v60 > 1, v61 + 1, 1, v59);
    }

    v12[62] = v59;
    v62 = v12[50];
    v63 = *(v12 + 640);
    v64 = v12[36];
    v65 = *(v12 + 322);
    v59[2] = v61 + 1;
    sub_23251FBDC(v64, v59 + ((v63 + 32) & ~v63) + v62 * v61, type metadata accessor for NDFDevice);
    v66 = v12[48];
    if (v65 > 0xFF || (v65 & 1) != 0)
    {
      sub_2324CE250(v12[38], v12[35]);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v12[48];
      if ((v67 & 1) == 0)
      {
        v66 = sub_2324E1E80(0, v66[2] + 1, 1, v12[48]);
      }

      v69 = v66[2];
      v68 = v66[3];
      if (v69 >= v68 >> 1)
      {
        v66 = sub_2324E1E80(v68 > 1, v69 + 1, 1, v66);
      }

      v70 = v12[50];
      v71 = *(v12 + 640);
      v72 = v12[35];
      v66[2] = v69 + 1;
      sub_23251FBDC(v72, v66 + ((v71 + 32) & ~v71) + v70 * v69, type metadata accessor for NDFDevice);
    }

    v12[63] = v66;
    v73 = *(v12 + 646);
    (*(*v12[22] + 368))(v12[38]);
    v254 = v66;
    if (v73 == 1)
    {
      v74 = v12[22] + v12[46];
      v75 = sub_232545888();
      v76 = sub_2325461D8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2324C0000, v75, v76, "Post-update actions for this local device", v77, 2u);
        MEMORY[0x238386450](v77, -1, -1);
      }

      v78 = *sub_2324C8418();
      v79 = v12[46];
      v80 = v12[22];
      if (v78)
      {
        v221 = *(v78 + 152);
        v12[64] = v221;

        v222 = sub_232545888();
        v223 = sub_232546208();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = v12[38];
          v225 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v259 = v226;
          *v225 = 136315138;
          v227 = sub_2324F6270();
          v229 = sub_2324C2220(v227, v228, &v259);

          *(v225 + 4) = v229;
          _os_log_impl(&dword_2324C0000, v222, v223, "Submitting CK device update: %s", v225, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v226);
          MEMORY[0x238386450](v226, -1, -1);
          v230 = v225;
          v12 = v246;
          MEMORY[0x238386450](v230, -1, -1);
        }

        v231 = *(*v221 + 344);
        v258 = (v231 + *v231);
        v232 = v231[1];
        v233 = swift_task_alloc();
        v12[65] = v233;
        *v233 = v12;
        v233[1] = sub_23250EC64;
        v207 = v12[38];
        v208 = v258;

        return v208(v207);
      }

      v81 = sub_232545888();
      v82 = sub_2325461F8();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v12[40];
      v85 = v12[38];
      v86 = v12[28];
      if (v83)
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_2324C0000, v81, v82, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v87, 2u);
        v88 = v87;
        v66 = v254;
        MEMORY[0x238386450](v88, -1, -1);
      }
    }

    else
    {
      v84 = v12[40];
      v85 = v12[38];
      v86 = v12[28];
    }

    sub_2324C28AC(v86, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v84, type metadata accessor for NDFDevice);
    sub_23251FC44(v85, type metadata accessor for NDFDevice);
    v89 = v12[47] + 1;
    v250 = v59;
    if (v89 != v12[45])
    {
      while (1)
      {
        v12[48] = v66;
        v12[49] = v59;
        v12[47] = v89;
        v97 = v12[44];
        if (v89 >= *(v97 + 16))
        {
          __break(1u);
LABEL_122:
          v234 = *(v89 + 136);
          v246[58] = v234;
          v235 = *(*v234 + 104);

          v252 = (v235 + *v235);
          v236 = v235[1];
          v237 = swift_task_alloc();
          v246[59] = v237;
          *v237 = v246;
          v238 = sub_23250D070;
          goto LABEL_123;
        }

        v98 = v12[46];
        v99 = v12[39];
        v100 = v12[40];
        v101 = v12[22];
        v102 = v97 + ((*(v12 + 640) + 32) & ~*(v12 + 640));
        v103 = *(v12[33] + 72);
        v12[50] = v103;
        sub_2324CE250(v102 + v103 * v89, v100);
        sub_2324CE250(v100, v99);
        v104 = sub_232545888();
        v105 = sub_2325461D8();
        v106 = os_log_type_enabled(v104, v105);
        v107 = v12[39];
        if (v106)
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v259 = v109;
          *v108 = 136315138;
          v110 = sub_2324F6270();
          v112 = v111;
          sub_23251FC44(v107, type metadata accessor for NDFDevice);
          v113 = sub_2324C2220(v110, v112, &v259);

          *(v108 + 4) = v113;
          _os_log_impl(&dword_2324C0000, v104, v105, "Obtained device update %s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v109);
          MEMORY[0x238386450](v109, -1, -1);
          MEMORY[0x238386450](v108, -1, -1);
        }

        else
        {

          sub_23251FC44(v107, type metadata accessor for NDFDevice);
        }

        v114 = v12[32];
        v115 = v12[33];
        v117 = v12[27];
        v116 = v12[28];
        v118 = v12[22];
        v119 = sub_2325083A8(v116, v12[40]);
        *(v12 + 322) = v119;
        sub_2324CF3C4(v116, v117, &qword_27DD93578, &unk_2325480F0);
        if ((*(v115 + 48))(v117, 1, v114) != 1)
        {
          break;
        }

        v120 = v12[46];
        v121 = v12[40];
        v122 = v12[34];
        v123 = v12[22];
        sub_2324C28AC(v12[27], &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v121, v122);
        v124 = sub_232545888();
        v125 = sub_2325461E8();
        v126 = os_log_type_enabled(v124, v125);
        v127 = v12[40];
        v128 = v12[34];
        v129 = v12[28];
        if (v126)
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v259 = v91;
          *v90 = 136315138;
          v92 = sub_2324F6270();
          v94 = v93;
          sub_23251FC44(v128, type metadata accessor for NDFDevice);
          v95 = sub_2324C2220(v92, v94, &v259);

          *(v90 + 4) = v95;
          _os_log_impl(&dword_2324C0000, v124, v125, "No updates to device %s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v91);
          v96 = v91;
          v12 = v246;
          MEMORY[0x238386450](v96, -1, -1);
          MEMORY[0x238386450](v90, -1, -1);
        }

        else
        {

          sub_23251FC44(v128, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v129, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v127, type metadata accessor for NDFDevice);
        v59 = v250;
        v66 = v254;
        v89 = v12[47] + 1;
        if (v89 == v12[45])
        {
          goto LABEL_88;
        }
      }

      v130 = *(v12 + 646);
      sub_23251FBDC(v12[27], v12[38], type metadata accessor for NDFDevice);
      if (v130 != 1 || v119 < 0x100u)
      {
        continue;
      }

      v131 = v12[22] + v12[46];
      v132 = sub_232545888();
      v133 = sub_232546208();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_2324C0000, v132, v133, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v134, 2u);
        MEMORY[0x238386450](v134, -1, -1);
      }

      v135 = v12[38];
      v136 = v12[32];

      swift_beginAccess();
      v137 = (v135 + v136[8]);
      v138 = *v137;
      v12[51] = *v137;
      v139 = v137[1];
      v12[52] = v139;
      v140 = (v135 + v136[9]);
      v141 = *v140;
      v12[53] = *v140;
      v142 = v12;
      v143 = v140[1];
      v142[54] = v143;
      *(v142 + 648) = *(v135 + v136[15]);
      if (v139 >> 60 == 15)
      {
        sub_2324DB3D0(v141, v143);
        v1 = 2;
        v11 = v143 >> 60 != 15;
        if (v143 >> 60 == 15)
        {
          goto LABEL_7;
        }

        v144 = v246[46];
        v145 = v246[22];
        sub_2324DB3D0(v141, v143);
        sub_2324DB3E4(v141, v143);
        v146 = sub_232545888();
        v147 = sub_2325461E8();
        sub_2324DB438(v141, v143);
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v259 = v149;
          *v148 = 136315138;
          sub_2324DB3E4(v141, v143);
          v150 = sub_2325455B8();
          v152 = v151;
          sub_2324DB438(v141, v143);
          v153 = sub_2324C2220(v150, v152, &v259);

          *(v148 + 4) = v153;
          _os_log_impl(&dword_2324C0000, v146, v147, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v148, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v149);
          MEMORY[0x238386450](v149, -1, -1);
          MEMORY[0x238386450](v148, -1, -1);
        }

        v89 = *sub_2324C8418();
        if (!v89)
        {
          sub_2324DB438(v141, v143);
          v1 = 2;
          goto LABEL_7;
        }

        goto LABEL_122;
      }

      v154 = v246[46];
      v155 = v246[22];
      sub_2324DB3D0(v138, v139);
      sub_2324DB3D0(v138, v139);
      sub_2324DB3D0(v141, v143);
      sub_2324DB3D0(v138, v139);
      v156 = sub_232545888();
      v157 = sub_2325461E8();
      sub_2324DB438(v138, v139);
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v259 = v159;
        *v158 = 136315138;
        sub_2324DB3E4(v138, v139);
        v160 = sub_2325455B8();
        v162 = v161;
        sub_2324DB438(v138, v139);
        v163 = sub_2324C2220(v160, v162, &v259);

        *(v158 + 4) = v163;
        _os_log_impl(&dword_2324C0000, v156, v157, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v158, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v159);
        MEMORY[0x238386450](v159, -1, -1);
        MEMORY[0x238386450](v158, -1, -1);
      }

      v164 = *sub_2324C8418();
      v0 = v246;
      if (!v164)
      {
        sub_2324DB438(v138, v139);
        v1 = 2;
        goto LABEL_2;
      }

      v239 = *(v164 + 136);
      v246[55] = v239;
      v240 = *(*v239 + 104);

      v252 = (v240 + *v240);
      v241 = v240[1];
      v237 = swift_task_alloc();
      v246[56] = v237;
      *v237 = v246;
      v238 = sub_23250B4A0;
LABEL_123:
      v237[1] = v238;
      v202 = v252;

      return v202();
    }

    break;
  }

LABEL_88:
  v12[68] = v59;
  v12[67] = v66;
  v12[66] = v245;
  v165 = v12[22];
  v166 = *(v12 + 647);
  sub_23251BB00();
  if (v166 == 1)
  {
    v167 = v12[21];
    v168 = v12[22];
    v12[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v169 = sub_232545888();
    v170 = sub_232546208();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = v246[43];
      v172 = v246[21];
      v173 = swift_slowAlloc();
      *v173 = 134218240;
      *(v173 + 4) = v59[2];

      *(v173 + 12) = 2048;
      *(v173 + 14) = v171;
      v12 = v246;

      _os_log_impl(&dword_2324C0000, v169, v170, "Ready to process %ld changed (of %ld total) incoming device updates", v173, 0x16u);
      MEMORY[0x238386450](v173, -1, -1);
    }

    else
    {
      v174 = v12[21];
    }

    if (v59[2])
    {
      v175 = sub_2324C8418();
      v176 = *v175;
      v12[70] = *v175;
      if (v176)
      {
        v177 = *v176 + 168;
        v12[71] = *v177;
        v12[72] = v177 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v176, 0);
      }

      v178 = v12[22] + v12[69];
      v179 = sub_232545888();
      v180 = sub_2325461F8();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&dword_2324C0000, v179, v180, "No persistence controller available", v181, 2u);
        MEMORY[0x238386450](v181, -1, -1);
      }

      v59 = v12[68];
    }
  }

  v12[77] = v59;
  v182 = v12[67];
  if (*(v182 + 16))
  {
    v183 = v12[22];
    v184 = v12[67];

    v185 = sub_232545888();
    v186 = sub_232546208();
    v187 = os_log_type_enabled(v185, v186);
    v188 = v12;
    v189 = v12[67];
    v190 = v188[44];
    if (v187)
    {
      v191 = swift_slowAlloc();
      *v191 = 134217984;
      *(v191 + 4) = *(v182 + 16);

      _os_log_impl(&dword_2324C0000, v185, v186, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v191, 0xCu);
      MEMORY[0x238386450](v191, -1, -1);
    }

    else
    {
    }

    v203 = *(*v246[22] + 512);
    v256 = (v203 + *v203);
    v204 = v203[1];
    v205 = swift_task_alloc();
    v246[78] = v205;
    *v205 = v246;
    v205[1] = sub_232511298;
    v206 = v246[22];
    v207 = v246[67];
    v208 = v256;

    return v208(v207);
  }

  v192 = v12[44];

  v194 = *((*(*v12[22] + 192))(v193) + 16);

  v195 = v12[77];
  v196 = v12[67];
  if (v194)
  {
    v197 = *(v12[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v197 & 1) == 0)
    {
      v198 = *(*v12[22] + 304);
      v255 = (v198 + *v198);
      v199 = v198[1];
      v200 = swift_task_alloc();
      v12[79] = v200;
      *v200 = v12;
      v200[1] = sub_232511624;
      v201 = v12[22];
      v202 = v255;

      return v202();
    }
  }

  else
  {
  }

  v210 = v12[41];
  v209 = v12[42];
  v211 = v12[39];
  v212 = v12[40];
  v214 = v12[37];
  v213 = v12[38];
  v215 = v12;
  v216 = v12[36];
  v218 = v215[34];
  v217 = v215[35];
  v219 = v215[31];
  v247 = v215[28];
  v248 = v215[27];
  v251 = v215[26];
  v257 = v215[25];

  v220 = v215[1];

  return v220();
}

uint64_t sub_23250D070(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(v4 + 480) = v1;

  v7 = *(v4 + 464);
  v8 = *(v4 + 176);
  if (v1)
  {

    v9 = sub_232513278;
  }

  else
  {

    *(v4 + 650) = a1 & 1;
    v9 = sub_23250D1E0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_23250D1E0()
{
  v260 = v0;
  v244 = v0 + 16;
  v1 = *(v0 + 650);
  sub_2324DB438(*(v0 + 424), *(v0 + 432));
  v2 = 1;
  v245 = *(v0 + 480);
  v247 = v0;
LABEL_2:
  v3 = *(v0 + 176) + *(v0 + 368);
  v4 = sub_232545888();
  v5 = sub_232546208();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v259 = v7;
    *v6 = 136315394;
    if (v2)
    {
      v8 = 7233874;
    }

    else
    {
      v8 = 0x20746F6E20646944;
    }

    if (v2)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xEB000000006E7572;
    }

    v10 = sub_2324C2220(v8, v9, &v259);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = 1702195828;
    if ((v1 & 1) == 0)
    {
      v11 = 0x65736C6166;
    }

    v12 = 0xE500000000000000;
    if (v1)
    {
      v12 = 0xE400000000000000;
    }

    if (v1 == 2)
    {
      v13 = 0x6E776F6E6B6E75;
    }

    else
    {
      v13 = v11;
    }

    if (v1 == 2)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_2324C2220(v13, v14, &v259);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_2324C0000, v4, v5, "%s Bonjour probe, network restricts multicast traffic: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v7, -1, -1);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v16 = v247;
  v17 = *(v247 + 648);
  if (v1 != 2)
  {
    if (v17 != 2 && ((v17 ^ v1) & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    v18 = *(v247 + 176) + *(v247 + 368);
    v19 = sub_232545888();
    v20 = sub_2325461D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v247 + 304);
      v22 = *(v247 + 184);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v259 = v24;
      *v23 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v25 = sub_232546608();
      v27 = sub_2324C2220(v25, v26, &v259);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = 1702195828;
      if ((v1 & 1) == 0)
      {
        v28 = 0x65736C6166;
      }

      v29 = 0xE500000000000000;
      if (v1)
      {
        v29 = 0xE400000000000000;
      }

      if (v1 == 2)
      {
        v30 = 7104878;
      }

      else
      {
        v30 = v28;
      }

      if (v1 == 2)
      {
        v31 = 0xE300000000000000;
      }

      else
      {
        v31 = v29;
      }

      v32 = sub_2324C2220(v30, v31, &v259);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_2324C0000, v19, v20, "About to update multicastTrafficBlocked property for %s to %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v24, -1, -1);
      MEMORY[0x238386450](v23, -1, -1);
    }

    v33 = v1;
    v35 = *(v247 + 296);
    v34 = *(v247 + 304);
    v37 = *(v247 + 256);
    v36 = *(v247 + 264);
    v38 = *(v247 + 240);
    v39 = *(v247 + 248);
    v40 = *(v247 + 232);
    v243 = *(v247 + 200);
    v41 = *(v247 + 192);
    v249 = *(v247 + 184);
    v253 = *(v247 + 208);
    v42 = *(v247 + 176);
    *(v34 + *(v37 + 60)) = v33;
    sub_232545668();
    (*(v38 + 40))(v34 + *(v37 + 20), v39, v40);
    sub_2324CE250(v34, v35);
    swift_beginAccess();
    sub_2324F6DD8(v35);
    swift_endAccess();
    sub_23251FC44(v35, type metadata accessor for NDFDevice);
    (*(v41 + 16))(v243, v34, v249);
    sub_2324CE250(v34, v253);
    (*(v36 + 56))(v253, 0, 1, v37);
    v43 = (*(*v42 + 184))(v244);
    sub_2324FCF78(v253, v243);
    v43(v244, 0);
    goto LABEL_38;
  }

  if (v17 != 2)
  {
    goto LABEL_25;
  }

LABEL_38:
  v44 = *(v247 + 424);
  v45 = *(v247 + 432);
  sub_2324DB438(*(v247 + 408), *(v247 + 416));
  sub_2324DB438(v44, v45);
  while (2)
  {
    *(v16 + 488) = v245;
    v46 = *(v16 + 392);
    v47 = *(v16 + 304);
    v48 = *(v16 + 288);
    swift_beginAccess();
    sub_2324CE250(v47, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v16 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_2324E1E80(0, v50[2] + 1, 1, *(v16 + 392));
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_2324E1E80(v51 > 1, v52 + 1, 1, v50);
    }

    *(v16 + 496) = v50;
    v53 = *(v16 + 400);
    v54 = *(v16 + 640);
    v55 = *(v16 + 288);
    v56 = *(v16 + 644);
    v50[2] = v52 + 1;
    sub_23251FBDC(v55, v50 + ((v54 + 32) & ~v54) + v53 * v52, type metadata accessor for NDFDevice);
    v57 = *(v16 + 384);
    if (v56 > 0xFF || (v56 & 1) != 0)
    {
      sub_2324CE250(*(v16 + 304), *(v16 + 280));
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v16 + 384);
      if ((v58 & 1) == 0)
      {
        v57 = sub_2324E1E80(0, v57[2] + 1, 1, *(v16 + 384));
      }

      v60 = v57[2];
      v59 = v57[3];
      if (v60 >= v59 >> 1)
      {
        v57 = sub_2324E1E80(v59 > 1, v60 + 1, 1, v57);
      }

      v61 = *(v16 + 400);
      v62 = *(v16 + 640);
      v63 = *(v16 + 280);
      v57[2] = v60 + 1;
      sub_23251FBDC(v63, v57 + ((v62 + 32) & ~v62) + v61 * v60, type metadata accessor for NDFDevice);
    }

    *(v16 + 504) = v57;
    v64 = *(v16 + 646);
    (*(**(v16 + 176) + 368))(*(v16 + 304));
    v254 = v57;
    if (v64 == 1)
    {
      v65 = *(v16 + 176) + *(v16 + 368);
      v66 = sub_232545888();
      v67 = sub_2325461D8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_2324C0000, v66, v67, "Post-update actions for this local device", v68, 2u);
        MEMORY[0x238386450](v68, -1, -1);
      }

      v69 = *sub_2324C8418();
      v70 = *(v16 + 368);
      v71 = *(v16 + 176);
      if (v69)
      {
        v221 = *(v69 + 152);
        *(v16 + 512) = v221;

        v222 = sub_232545888();
        v223 = sub_232546208();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = *(v16 + 304);
          v225 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v259 = v226;
          *v225 = 136315138;
          v227 = sub_2324F6270();
          v229 = sub_2324C2220(v227, v228, &v259);

          *(v225 + 4) = v229;
          _os_log_impl(&dword_2324C0000, v222, v223, "Submitting CK device update: %s", v225, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v226);
          MEMORY[0x238386450](v226, -1, -1);
          v230 = v225;
          v16 = v247;
          MEMORY[0x238386450](v230, -1, -1);
        }

        v231 = *(*v221 + 344);
        v258 = (v231 + *v231);
        v232 = v231[1];
        v233 = swift_task_alloc();
        *(v16 + 520) = v233;
        *v233 = v16;
        v233[1] = sub_23250EC64;
        v207 = *(v16 + 304);
        v208 = v258;

        return v208(v207);
      }

      v72 = sub_232545888();
      v73 = sub_2325461F8();
      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v16 + 320);
      v76 = *(v16 + 304);
      v77 = *(v16 + 224);
      if (v74)
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2324C0000, v72, v73, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v78, 2u);
        v79 = v78;
        v57 = v254;
        MEMORY[0x238386450](v79, -1, -1);
      }
    }

    else
    {
      v75 = *(v16 + 320);
      v76 = *(v16 + 304);
      v77 = *(v16 + 224);
    }

    sub_2324C28AC(v77, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v75, type metadata accessor for NDFDevice);
    sub_23251FC44(v76, type metadata accessor for NDFDevice);
    v80 = *(v16 + 376) + 1;
    v250 = v50;
    if (v80 != *(v16 + 360))
    {
      while (1)
      {
        *(v16 + 384) = v57;
        *(v16 + 392) = v50;
        *(v16 + 376) = v80;
        v88 = *(v16 + 352);
        if (v80 >= *(v88 + 16))
        {
          __break(1u);
LABEL_122:
          v234 = *(v80 + 136);
          *(v247 + 440) = v234;
          v235 = *(*v234 + 104);

          v252 = (v235 + *v235);
          v236 = v235[1];
          v237 = swift_task_alloc();
          *(v247 + 448) = v237;
          *v237 = v247;
          v238 = sub_23250B4A0;
          goto LABEL_124;
        }

        v89 = *(v16 + 368);
        v90 = *(v16 + 312);
        v91 = *(v16 + 320);
        v92 = *(v16 + 176);
        v93 = v88 + ((*(v16 + 640) + 32) & ~*(v16 + 640));
        v94 = *(*(v16 + 264) + 72);
        *(v16 + 400) = v94;
        sub_2324CE250(v93 + v94 * v80, v91);
        sub_2324CE250(v91, v90);
        v95 = sub_232545888();
        v96 = sub_2325461D8();
        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v16 + 312);
        if (v97)
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v259 = v100;
          *v99 = 136315138;
          v101 = sub_2324F6270();
          v103 = v102;
          sub_23251FC44(v98, type metadata accessor for NDFDevice);
          v104 = sub_2324C2220(v101, v103, &v259);

          *(v99 + 4) = v104;
          _os_log_impl(&dword_2324C0000, v95, v96, "Obtained device update %s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v100);
          MEMORY[0x238386450](v100, -1, -1);
          MEMORY[0x238386450](v99, -1, -1);
        }

        else
        {

          sub_23251FC44(v98, type metadata accessor for NDFDevice);
        }

        v105 = *(v16 + 256);
        v106 = *(v16 + 264);
        v108 = *(v16 + 216);
        v107 = *(v16 + 224);
        v109 = *(v16 + 176);
        v110 = sub_2325083A8(v107, *(v16 + 320));
        *(v16 + 644) = v110;
        sub_2324CF3C4(v107, v108, &qword_27DD93578, &unk_2325480F0);
        if ((*(v106 + 48))(v108, 1, v105) != 1)
        {
          break;
        }

        v111 = *(v16 + 368);
        v112 = *(v16 + 320);
        v113 = *(v16 + 272);
        v114 = *(v16 + 176);
        sub_2324C28AC(*(v16 + 216), &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v112, v113);
        v115 = sub_232545888();
        v116 = sub_2325461E8();
        v117 = os_log_type_enabled(v115, v116);
        v118 = *(v16 + 320);
        v119 = *(v16 + 272);
        v120 = *(v16 + 224);
        if (v117)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v259 = v82;
          *v81 = 136315138;
          v83 = sub_2324F6270();
          v85 = v84;
          sub_23251FC44(v119, type metadata accessor for NDFDevice);
          v86 = sub_2324C2220(v83, v85, &v259);

          *(v81 + 4) = v86;
          _os_log_impl(&dword_2324C0000, v115, v116, "No updates to device %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          v87 = v82;
          v16 = v247;
          MEMORY[0x238386450](v87, -1, -1);
          MEMORY[0x238386450](v81, -1, -1);
        }

        else
        {

          sub_23251FC44(v119, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v120, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v118, type metadata accessor for NDFDevice);
        v50 = v250;
        v57 = v254;
        v80 = *(v16 + 376) + 1;
        if (v80 == *(v16 + 360))
        {
          goto LABEL_88;
        }
      }

      v121 = *(v16 + 646);
      sub_23251FBDC(*(v16 + 216), *(v16 + 304), type metadata accessor for NDFDevice);
      if (v121 != 1 || v110 < 0x100u)
      {
        continue;
      }

      v122 = *(v16 + 176) + *(v16 + 368);
      v123 = sub_232545888();
      v124 = sub_232546208();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_2324C0000, v123, v124, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v125, 2u);
        MEMORY[0x238386450](v125, -1, -1);
      }

      v126 = *(v16 + 304);
      v127 = *(v16 + 256);

      swift_beginAccess();
      v128 = (v126 + v127[8]);
      v129 = *v128;
      *(v16 + 408) = *v128;
      v0 = v16;
      v130 = v128[1];
      *(v0 + 416) = v130;
      v131 = (v126 + v127[9]);
      v132 = *v131;
      *(v0 + 424) = *v131;
      v133 = v131[1];
      *(v0 + 432) = v133;
      *(v0 + 648) = *(v126 + v127[15]);
      if (v130 >> 60 != 15)
      {
        v134 = *(v0 + 368);
        v135 = *(v0 + 176);
        sub_2324DB3D0(v129, v130);
        sub_2324DB3D0(v129, v130);
        sub_2324DB3D0(v132, v133);
        sub_2324DB3D0(v129, v130);
        v136 = sub_232545888();
        v137 = sub_2325461E8();
        sub_2324DB438(v129, v130);
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v259 = v139;
          *v138 = 136315138;
          sub_2324DB3E4(v129, v130);
          v140 = sub_2325455B8();
          v142 = v141;
          sub_2324DB438(v129, v130);
          v143 = sub_2324C2220(v140, v142, &v259);

          *(v138 + 4) = v143;
          _os_log_impl(&dword_2324C0000, v136, v137, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v139);
          MEMORY[0x238386450](v139, -1, -1);
          MEMORY[0x238386450](v138, -1, -1);
        }

        v80 = *sub_2324C8418();
        if (!v80)
        {
          sub_2324DB438(v129, v130);
          v0 = v247;
          v144 = *(v247 + 432);
          v2 = 1;
          v1 = 2;
          if (v144 >> 60 != 15)
          {
            v145 = *(v247 + 368);
            v146 = *(v247 + 176);
            sub_2324DB3E4(*(v247 + 424), v144);
            v147 = sub_232545888();
            v148 = sub_2325461D8();
            v149 = os_log_type_enabled(v147, v148);
            v151 = *(v247 + 424);
            v150 = *(v247 + 432);
            if (v149)
            {
              v1 = 2;
              v152 = swift_slowAlloc();
              *v152 = 0;
              _os_log_impl(&dword_2324C0000, v147, v148, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v152, 2u);
              MEMORY[0x238386450](v152, -1, -1);
              sub_2324DB438(v151, v150);

              v2 = 1;
            }

            else
            {
              sub_2324DB438(*(v247 + 424), *(v247 + 432));

              v2 = 1;
              v1 = 2;
            }

            v0 = v247;
          }

          goto LABEL_2;
        }

        goto LABEL_122;
      }

      sub_2324DB3D0(v132, v133);
      v2 = 0;
      v1 = 2;
      if (v133 >> 60 == 15)
      {
        goto LABEL_2;
      }

      v153 = *(v0 + 368);
      v154 = *(v0 + 176);
      sub_2324DB3D0(v132, v133);
      sub_2324DB3E4(v132, v133);
      v155 = sub_232545888();
      v156 = sub_2325461E8();
      sub_2324DB438(v132, v133);
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v259 = v158;
        *v157 = 136315138;
        sub_2324DB3E4(v132, v133);
        v159 = sub_2325455B8();
        v161 = v160;
        sub_2324DB438(v132, v133);
        v162 = sub_2324C2220(v159, v161, &v259);

        *(v157 + 4) = v162;
        v163 = v247;
        _os_log_impl(&dword_2324C0000, v155, v156, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v158);
        MEMORY[0x238386450](v158, -1, -1);
        MEMORY[0x238386450](v157, -1, -1);
      }

      else
      {
        v163 = v0;
      }

      v164 = *sub_2324C8418();
      if (!v164)
      {
        sub_2324DB438(v132, v133);
        v0 = v163;
        v2 = 1;
        v1 = 2;
        goto LABEL_2;
      }

      v239 = *(v164 + 136);
      *(v163 + 464) = v239;
      v240 = *(*v239 + 104);

      v252 = (v240 + *v240);
      v241 = v240[1];
      v237 = swift_task_alloc();
      *(v163 + 472) = v237;
      *v237 = v163;
      v238 = sub_23250D070;
LABEL_124:
      v237[1] = v238;
      v202 = v252;

      return v202();
    }

    break;
  }

LABEL_88:
  *(v16 + 544) = v50;
  *(v16 + 536) = v57;
  *(v16 + 528) = v245;
  v165 = *(v16 + 176);
  v166 = *(v16 + 647);
  sub_23251BB00();
  if (v166 == 1)
  {
    v167 = *(v16 + 168);
    v168 = *(v16 + 176);
    *(v16 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v169 = sub_232545888();
    v170 = sub_232546208();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = *(v247 + 344);
      v172 = *(v247 + 168);
      v173 = swift_slowAlloc();
      *v173 = 134218240;
      *(v173 + 4) = v50[2];

      *(v173 + 12) = 2048;
      *(v173 + 14) = v171;
      v16 = v247;

      _os_log_impl(&dword_2324C0000, v169, v170, "Ready to process %ld changed (of %ld total) incoming device updates", v173, 0x16u);
      MEMORY[0x238386450](v173, -1, -1);
    }

    else
    {
      v174 = *(v16 + 168);
    }

    if (v50[2])
    {
      v175 = sub_2324C8418();
      v176 = *v175;
      *(v16 + 560) = *v175;
      if (v176)
      {
        v177 = *v176 + 168;
        *(v16 + 568) = *v177;
        *(v16 + 576) = v177 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v176, 0);
      }

      v178 = *(v16 + 176) + *(v16 + 552);
      v179 = sub_232545888();
      v180 = sub_2325461F8();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&dword_2324C0000, v179, v180, "No persistence controller available", v181, 2u);
        MEMORY[0x238386450](v181, -1, -1);
      }

      v50 = *(v16 + 544);
    }
  }

  *(v16 + 616) = v50;
  v182 = *(v16 + 536);
  if (*(v182 + 16))
  {
    v183 = *(v16 + 176);
    v184 = *(v16 + 536);

    v185 = sub_232545888();
    v186 = sub_232546208();
    v187 = os_log_type_enabled(v185, v186);
    v188 = v16;
    v189 = *(v16 + 536);
    v190 = *(v188 + 352);
    if (v187)
    {
      v191 = swift_slowAlloc();
      *v191 = 134217984;
      *(v191 + 4) = *(v182 + 16);

      _os_log_impl(&dword_2324C0000, v185, v186, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v191, 0xCu);
      MEMORY[0x238386450](v191, -1, -1);
    }

    else
    {
    }

    v203 = *(**(v247 + 176) + 512);
    v256 = (v203 + *v203);
    v204 = v203[1];
    v205 = swift_task_alloc();
    *(v247 + 624) = v205;
    *v205 = v247;
    v205[1] = sub_232511298;
    v206 = *(v247 + 176);
    v207 = *(v247 + 536);
    v208 = v256;

    return v208(v207);
  }

  v192 = *(v16 + 352);

  v194 = *((*(**(v16 + 176) + 192))(v193) + 16);

  v195 = *(v16 + 616);
  v196 = *(v16 + 536);
  if (v194)
  {
    v197 = *(*(v16 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v197 & 1) == 0)
    {
      v198 = *(**(v16 + 176) + 304);
      v255 = (v198 + *v198);
      v199 = v198[1];
      v200 = swift_task_alloc();
      *(v16 + 632) = v200;
      *v200 = v16;
      v200[1] = sub_232511624;
      v201 = *(v16 + 176);
      v202 = v255;

      return v202();
    }
  }

  else
  {
  }

  v210 = *(v16 + 328);
  v209 = *(v16 + 336);
  v211 = *(v16 + 312);
  v212 = *(v16 + 320);
  v214 = *(v16 + 296);
  v213 = *(v16 + 304);
  v215 = v16;
  v216 = *(v16 + 288);
  v218 = v215[34];
  v217 = v215[35];
  v219 = v215[31];
  v246 = v215[28];
  v248 = v215[27];
  v251 = v215[26];
  v257 = v215[25];

  v220 = v215[1];

  return v220();
}

uint64_t sub_23250EC64()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23250ED74, v2, 0);
}

uint64_t sub_23250ED74()
{
  v254 = v0;
  v1 = v0;
  v2 = v0[64];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[28];

  sub_2324C28AC(v5, &qword_27DD93578, &unk_2325480F0);
  sub_23251FC44(v3, type metadata accessor for NDFDevice);
  sub_23251FC44(v4, type metadata accessor for NDFDevice);
  v7 = v0[62];
  v6 = v0[63];
  v240 = v0[61];
  v8 = v0[47] + 1;
  if (v8 == v0[45])
  {
    goto LABEL_2;
  }

  v239 = v0 + 2;
  v241 = v0;
  while (2)
  {
    v243 = v6;
    v247 = v7;
    while (1)
    {
      v1[48] = v6;
      v1[49] = v7;
      v1[47] = v8;
      v25 = v1[44];
      if (v8 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      v26 = v1[46];
      v27 = v1[39];
      v28 = v1[40];
      v29 = v1[22];
      v30 = v25 + ((*(v1 + 640) + 32) & ~*(v1 + 640));
      v31 = *(v1[33] + 72);
      v1[50] = v31;
      sub_2324CE250(v30 + v31 * v8, v28);
      sub_2324CE250(v28, v27);
      v32 = sub_232545888();
      v33 = sub_2325461D8();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v1[39];
      if (v34)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v253 = v37;
        *v36 = 136315138;
        v38 = sub_2324F6270();
        v40 = v39;
        sub_23251FC44(v35, type metadata accessor for NDFDevice);
        v41 = sub_2324C2220(v38, v40, &v253);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_2324C0000, v32, v33, "Obtained device update %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x238386450](v37, -1, -1);
        MEMORY[0x238386450](v36, -1, -1);
      }

      else
      {

        sub_23251FC44(v35, type metadata accessor for NDFDevice);
      }

      v42 = v1[32];
      v43 = v1[33];
      v45 = v1[27];
      v44 = v1[28];
      v46 = v1[22];
      v47 = sub_2325083A8(v44, v1[40]);
      *(v1 + 322) = v47;
      sub_2324CF3C4(v44, v45, &qword_27DD93578, &unk_2325480F0);
      if ((*(v43 + 48))(v45, 1, v42) != 1)
      {
        break;
      }

      v48 = v1[46];
      v49 = v1[40];
      v50 = v1[34];
      v51 = v1[22];
      sub_2324C28AC(v1[27], &qword_27DD93578, &unk_2325480F0);
      sub_2324CE250(v49, v50);
      v52 = sub_232545888();
      v53 = sub_2325461E8();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v1[40];
      v56 = v1[34];
      v57 = v1[28];
      if (v54)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v253 = v19;
        *v18 = 136315138;
        v20 = sub_2324F6270();
        v22 = v21;
        sub_23251FC44(v56, type metadata accessor for NDFDevice);
        v23 = v20;
        v1 = v241;
        v24 = sub_2324C2220(v23, v22, &v253);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_2324C0000, v52, v53, "No updates to device %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x238386450](v19, -1, -1);
        MEMORY[0x238386450](v18, -1, -1);
      }

      else
      {

        sub_23251FC44(v56, type metadata accessor for NDFDevice);
      }

      sub_2324C28AC(v57, &qword_27DD93578, &unk_2325480F0);
      sub_23251FC44(v55, type metadata accessor for NDFDevice);
      v6 = v243;
      v7 = v247;
      v8 = v1[47] + 1;
      if (v8 == v1[45])
      {
        goto LABEL_2;
      }
    }

    v58 = *(v1 + 646);
    sub_23251FBDC(v1[27], v1[38], type metadata accessor for NDFDevice);
    if (v58 != 1 || v47 < 0x100u)
    {
      goto LABEL_49;
    }

    v59 = v1[22] + v1[46];
    v60 = sub_232545888();
    v61 = sub_232546208();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2324C0000, v60, v61, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v62, 2u);
      MEMORY[0x238386450](v62, -1, -1);
    }

    v63 = v1[38];
    v64 = v1[32];

    swift_beginAccess();
    v65 = (v63 + v64[8]);
    v66 = *v65;
    v1[51] = *v65;
    v67 = v65[1];
    v1[52] = v67;
    v68 = (v63 + v64[9]);
    v69 = *v68;
    v1[53] = *v68;
    v70 = v1;
    v71 = v68[1];
    v70[54] = v71;
    *(v70 + 648) = *(v63 + v64[15]);
    if (v67 >> 60 == 15)
    {
      sub_2324DB3D0(v69, v71);
      if (v71 >> 60 == 15)
      {
        v92 = 0;
      }

      else
      {
        v93 = v241[46];
        v94 = v241[22];
        sub_2324DB3D0(v69, v71);
        sub_2324DB3E4(v69, v71);
        v95 = sub_232545888();
        v96 = sub_2325461E8();
        sub_2324DB438(v69, v71);
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v253 = v98;
          *v97 = 136315138;
          sub_2324DB3E4(v69, v71);
          v99 = sub_2325455B8();
          v101 = v100;
          sub_2324DB438(v69, v71);
          v102 = sub_2324C2220(v99, v101, &v253);

          *(v97 + 4) = v102;
          _os_log_impl(&dword_2324C0000, v95, v96, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x238386450](v98, -1, -1);
          MEMORY[0x238386450](v97, -1, -1);
        }

        v103 = *sub_2324C8418();
        if (v103)
        {
          v235 = *(v103 + 136);
          v241[58] = v235;
          v236 = *(*v235 + 104);

          v246 = (v236 + *v236);
          v237 = v236[1];
          v233 = swift_task_alloc();
          v241[59] = v233;
          *v233 = v241;
          v234 = sub_23250D070;
LABEL_103:
          v233[1] = v234;
          v197 = v246;

          return v197();
        }

        sub_2324DB438(v69, v71);
        v92 = 1;
      }

      v1 = v241;
      goto LABEL_36;
    }

    v72 = v70[46];
    v73 = v70[22];
    sub_2324DB3D0(v66, v67);
    sub_2324DB3D0(v66, v67);
    sub_2324DB3D0(v69, v71);
    sub_2324DB3D0(v66, v67);
    v74 = sub_232545888();
    v75 = sub_2325461E8();
    sub_2324DB438(v66, v67);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v253 = v77;
      *v76 = 136315138;
      sub_2324DB3E4(v66, v67);
      v78 = sub_2325455B8();
      v80 = v79;
      sub_2324DB438(v66, v67);
      v81 = sub_2324C2220(v78, v80, &v253);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_2324C0000, v74, v75, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x238386450](v77, -1, -1);
      MEMORY[0x238386450](v76, -1, -1);
    }

    v82 = *sub_2324C8418();
    v1 = v241;
    if (v82)
    {
      v230 = *(v82 + 136);
      v241[55] = v230;
      v231 = *(*v230 + 104);

      v246 = (v231 + *v231);
      v232 = v231[1];
      v233 = swift_task_alloc();
      v241[56] = v233;
      *v233 = v241;
      v234 = sub_23250B4A0;
      goto LABEL_103;
    }

    sub_2324DB438(v66, v67);
    v83 = v241[54];
    if (v83 >> 60 != 15)
    {
      v84 = v241[46];
      v85 = v241[22];
      sub_2324DB3E4(v241[53], v83);
      v86 = sub_232545888();
      v87 = sub_2325461D8();
      v88 = os_log_type_enabled(v86, v87);
      v90 = v241[53];
      v89 = v241[54];
      if (v88)
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2324C0000, v86, v87, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v91, 2u);
        MEMORY[0x238386450](v91, -1, -1);
      }

      sub_2324DB438(v90, v89);
    }

    v92 = 1;
LABEL_36:
    v104 = v1[22] + v1[46];
    v105 = sub_232545888();
    v106 = sub_232546208();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v253 = v108;
      *v107 = 136315394;
      if (v92)
      {
        v109 = 7233874;
      }

      else
      {
        v109 = 0x20746F6E20646944;
      }

      if (v92)
      {
        v110 = 0xE300000000000000;
      }

      else
      {
        v110 = 0xEB000000006E7572;
      }

      v111 = sub_2324C2220(v109, v110, &v253);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      v112 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v253);

      *(v107 + 14) = v112;
      _os_log_impl(&dword_2324C0000, v105, v106, "%s Bonjour probe, network restricts multicast traffic: %s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v108, -1, -1);
      MEMORY[0x238386450](v107, -1, -1);
    }

    if (*(v1 + 648) != 2)
    {
      v113 = v1[22] + v1[46];
      v114 = sub_232545888();
      v115 = sub_2325461D8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = v1[38];
        v117 = v1[23];
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v253 = v119;
        *v118 = 136315394;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
        v120 = sub_232546608();
        v122 = sub_2324C2220(v120, v121, &v253);

        *(v118 + 4) = v122;
        *(v118 + 12) = 2080;
        v123 = sub_2324C2220(7104878, 0xE300000000000000, &v253);

        *(v118 + 14) = v123;
        _os_log_impl(&dword_2324C0000, v114, v115, "About to update multicastTrafficBlocked property for %s to %s", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v119, -1, -1);
        MEMORY[0x238386450](v118, -1, -1);
      }

      v125 = v1[37];
      v124 = v1[38];
      v127 = v1[32];
      v126 = v1[33];
      v128 = v1[30];
      v129 = v1[31];
      v130 = v1[29];
      v131 = v1[25];
      v132 = v1[26];
      v133 = v241[24];
      v244 = v131;
      v248 = v241[23];
      v134 = v241[22];
      *(v124 + *(v127 + 60)) = 2;
      sub_232545668();
      (*(v128 + 40))(v124 + *(v127 + 20), v129, v130);
      sub_2324CE250(v124, v125);
      swift_beginAccess();
      sub_2324F6DD8(v125);
      swift_endAccess();
      sub_23251FC44(v125, type metadata accessor for NDFDevice);
      (*(v133 + 16))(v244, v124, v248);
      v1 = v241;
      sub_2324CE250(v124, v132);
      (*(v126 + 56))(v132, 0, 1, v127);
      v135 = (*(*v134 + 184))(v239);
      sub_2324FCF78(v132, v244);
      v135(v239, 0);
    }

    v136 = v1[53];
    v137 = v1[54];
    sub_2324DB438(v1[51], v1[52]);
    sub_2324DB438(v136, v137);
LABEL_49:
    v1[61] = v240;
    v138 = v1[49];
    v139 = v1[38];
    v140 = v1[36];
    swift_beginAccess();
    sub_2324CE250(v139, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2324E1E80(0, v7[2] + 1, 1, v1[49]);
    }

    v143 = v7[2];
    v142 = v7[3];
    if (v143 >= v142 >> 1)
    {
      v7 = sub_2324E1E80(v142 > 1, v143 + 1, 1, v7);
    }

    v1[62] = v7;
    v144 = v1[50];
    v145 = *(v1 + 640);
    v146 = v1[36];
    v147 = *(v1 + 322);
    v7[2] = v143 + 1;
    sub_23251FBDC(v146, v7 + ((v145 + 32) & ~v145) + v144 * v143, type metadata accessor for NDFDevice);
    v6 = v1[48];
    if (v147 > 0xFF || (v147 & 1) != 0)
    {
      sub_2324CE250(v1[38], v1[35]);
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v6 = v1[48];
      if ((v148 & 1) == 0)
      {
        v6 = sub_2324E1E80(0, v6[2] + 1, 1, v1[48]);
      }

      v150 = v6[2];
      v149 = v6[3];
      if (v150 >= v149 >> 1)
      {
        v6 = sub_2324E1E80(v149 > 1, v150 + 1, 1, v6);
      }

      v151 = v1[50];
      v152 = *(v1 + 640);
      v153 = v1[35];
      v6[2] = v150 + 1;
      sub_23251FBDC(v153, v6 + ((v152 + 32) & ~v152) + v151 * v150, type metadata accessor for NDFDevice);
    }

    v1[63] = v6;
    v154 = *(v1 + 646);
    (*(*v1[22] + 368))(v1[38]);
    if (v154 == 1)
    {
      v155 = v1[22] + v1[46];
      v156 = sub_232545888();
      v157 = sub_2325461D8();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_2324C0000, v156, v157, "Post-update actions for this local device", v158, 2u);
        MEMORY[0x238386450](v158, -1, -1);
      }

      v8 = *sub_2324C8418();
      v159 = v1[46];
      v160 = v1[22];
      if (!v8)
      {
        v161 = sub_232545888();
        v162 = sub_2325461F8();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v1[40];
        v165 = v1[38];
        v166 = v1[28];
        if (v163)
        {
          v167 = v6;
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&dword_2324C0000, v161, v162, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v168, 2u);
          v169 = v168;
          v6 = v167;
          MEMORY[0x238386450](v169, -1, -1);
        }

        goto LABEL_68;
      }

LABEL_96:
      v218 = *(v8 + 152);
      v1[64] = v218;

      v219 = sub_232545888();
      v220 = sub_232546208();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = v1[38];
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v253 = v223;
        *v222 = 136315138;
        v224 = sub_2324F6270();
        v226 = sub_2324C2220(v224, v225, &v253);

        *(v222 + 4) = v226;
        _os_log_impl(&dword_2324C0000, v219, v220, "Submitting CK device update: %s", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v223);
        MEMORY[0x238386450](v223, -1, -1);
        MEMORY[0x238386450](v222, -1, -1);
      }

      v227 = *(*v218 + 344);
      v252 = (v227 + *v227);
      v228 = v227[1];
      v229 = swift_task_alloc();
      v1[65] = v229;
      *v229 = v1;
      v229[1] = sub_23250EC64;
      v203 = v1[38];
      v204 = v252;

      return v204(v203);
    }

    v164 = v1[40];
    v165 = v1[38];
    v166 = v1[28];
LABEL_68:
    sub_2324C28AC(v166, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v164, type metadata accessor for NDFDevice);
    sub_23251FC44(v165, type metadata accessor for NDFDevice);
    v8 = v1[47] + 1;
    if (v8 != v1[45])
    {
      continue;
    }

    break;
  }

LABEL_2:
  v1[68] = v7;
  v1[67] = v6;
  v1[66] = v240;
  v9 = v1[22];
  v10 = *(v1 + 647);
  sub_23251BB00();
  if (v10 == 1)
  {
    v11 = v1[21];
    v12 = v1[22];
    v1[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v13 = sub_232545888();
    v14 = sub_232546208();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v1[43];
      v16 = v1[21];
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v7[2];

      *(v17 + 12) = 2048;
      *(v17 + 14) = v15;

      _os_log_impl(&dword_2324C0000, v13, v14, "Ready to process %ld changed (of %ld total) incoming device updates", v17, 0x16u);
      MEMORY[0x238386450](v17, -1, -1);
    }

    else
    {
      v170 = v1[21];
    }

    if (v7[2])
    {
      v171 = sub_2324C8418();
      v172 = *v171;
      v1[70] = *v171;
      if (v172)
      {
        v173 = *v172 + 168;
        v1[71] = *v173;
        v1[72] = v173 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v172, 0);
      }

      v174 = v1[22] + v1[69];
      v175 = sub_232545888();
      v176 = sub_2325461F8();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        *v177 = 0;
        _os_log_impl(&dword_2324C0000, v175, v176, "No persistence controller available", v177, 2u);
        MEMORY[0x238386450](v177, -1, -1);
      }

      v7 = v1[68];
    }
  }

  v1[77] = v7;
  v178 = v1[67];
  if (!*(v178 + 16))
  {
    v187 = v1[44];

    v189 = *((*(*v1[22] + 192))(v188) + 16);

    v190 = v1[77];
    v191 = v1[67];
    if (v189)
    {
      v192 = *(v1[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

      if ((v192 & 1) == 0)
      {
        v193 = *(*v1[22] + 304);
        v249 = (v193 + *v193);
        v194 = v193[1];
        v195 = swift_task_alloc();
        v1[79] = v195;
        *v195 = v1;
        v195[1] = sub_232511624;
        v196 = v1[22];
        v197 = v249;

        return v197();
      }
    }

    else
    {
    }

    v206 = v1[41];
    v205 = v1[42];
    v207 = v1[39];
    v208 = v1[40];
    v210 = v1[37];
    v209 = v1[38];
    v212 = v1[35];
    v211 = v1[36];
    v213 = v1[34];
    v214 = v1[31];
    v215 = v1;
    v216 = v1[28];
    v242 = v215[27];
    v245 = v215[26];
    v251 = v215[25];

    v217 = v215[1];

    return v217();
  }

  v179 = v1[22];
  v180 = v1[67];

  v181 = sub_232545888();
  v182 = sub_232546208();
  v183 = os_log_type_enabled(v181, v182);
  v184 = v1[67];
  v185 = v1[44];
  if (v183)
  {
    v186 = swift_slowAlloc();
    *v186 = 134217984;
    *(v186 + 4) = *(v178 + 16);

    _os_log_impl(&dword_2324C0000, v181, v182, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v186, 0xCu);
    MEMORY[0x238386450](v186, -1, -1);
  }

  else
  {
    v198 = v1[67];
  }

  v199 = *(*v1[22] + 512);
  v250 = (v199 + *v199);
  v200 = v199[1];
  v201 = swift_task_alloc();
  v1[78] = v201;
  *v201 = v1;
  v201[1] = sub_232511298;
  v202 = v1[22];
  v203 = v1[67];
  v204 = v250;

  return v204(v203);
}

uint64_t sub_2325107BC()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 176);
  *(v0 + 584) = (*(v0 + 568))();

  return MEMORY[0x2822009F8](sub_23251083C, v3, 0);
}

uint64_t sub_23251083C()
{
  v1 = v0[73];
  if (v1)
  {
    v2 = *v1 + 144;
    v0[74] = *v2;
    v0[75] = v2 & 0xFFFFFFFFFFFFLL | 0x5820000000000000;

    return MEMORY[0x2822009F8](sub_232510D8C, v1, 0);
  }

  v3 = v0[22] + v0[69];
  v4 = sub_232545888();
  v5 = sub_2325461F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2324C0000, v4, v5, "No persistence controller available", v6, 2u);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v0[77] = v0[68];
  v7 = v0[67];
  if (*(v7 + 16))
  {
    v8 = v0[22];
    v9 = v0[67];

    v10 = sub_232545888();
    v11 = sub_232546208();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[67];
    v14 = v0[44];
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(v7 + 16);

      _os_log_impl(&dword_2324C0000, v10, v11, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v15, 0xCu);
      MEMORY[0x238386450](v15, -1, -1);
    }

    else
    {
      v26 = v0[67];
    }

    v27 = *(*v0[22] + 512);
    v48 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[78] = v29;
    *v29 = v0;
    v29[1] = sub_232511298;
    v30 = v0[67];
    v31 = v0[22];

    return v48(v30);
  }

  v16 = v0[44];

  v18 = *((*(*v0[22] + 192))(v17) + 16);

  v19 = v0[77];
  v20 = v0[67];
  if (v18)
  {
    v21 = *(v0[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v21 & 1) == 0)
    {
      v22 = *(*v0[22] + 304);
      v47 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      v0[79] = v24;
      *v24 = v0;
      v24[1] = sub_232511624;
      v25 = v0[22];

      return v47();
    }
  }

  else
  {
  }

  v33 = v0[41];
  v32 = v0[42];
  v35 = v0[39];
  v34 = v0[40];
  v37 = v0[37];
  v36 = v0[38];
  v39 = v0[35];
  v38 = v0[36];
  v40 = v0[34];
  v41 = v0[31];
  v44 = v0[28];
  v45 = v0[27];
  v46 = v0[26];
  v49 = v0[25];

  v42 = v0[1];

  return v42();
}

uint64_t sub_232510D8C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 584);
  v3 = *(v0 + 528);
  (*(v0 + 592))(*(v0 + 544));
  *(v0 + 608) = v3;
  v4 = *(v0 + 176);
  if (v3)
  {
    v5 = sub_232514C5C;
  }

  else
  {
    v5 = sub_232510E24;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232510E24()
{
  v1 = v0[73];

  v0[77] = v0[68];
  v2 = v0[67];
  if (*(v2 + 16))
  {
    v3 = v0[22];
    v4 = v0[67];

    v5 = sub_232545888();
    v6 = sub_232546208();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[67];
    v9 = v0[44];
    if (v7)
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v2 + 16);

      _os_log_impl(&dword_2324C0000, v5, v6, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v10, 0xCu);
      MEMORY[0x238386450](v10, -1, -1);
    }

    else
    {
      v22 = v0[67];
    }

    v23 = *(*v0[22] + 512);
    v43 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[78] = v25;
    *v25 = v0;
    v25[1] = sub_232511298;
    v26 = v0[67];
    v27 = v0[22];

    return v43(v26);
  }

  v11 = v0[44];

  v13 = *((*(*v0[22] + 192))(v12) + 16);

  v14 = v0[77];
  v15 = v0[67];
  if (v13)
  {
    v16 = *(v0[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v16 & 1) == 0)
    {
      v17 = *(*v0[22] + 304);
      v42 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      v0[79] = v19;
      *v19 = v0;
      v19[1] = sub_232511624;
      v20 = v0[22];

      return v42();
    }
  }

  else
  {
  }

  v29 = v0[41];
  v28 = v0[42];
  v31 = v0[39];
  v30 = v0[40];
  v33 = v0[37];
  v32 = v0[38];
  v35 = v0[35];
  v34 = v0[36];
  v36 = v0[34];
  v37 = v0[31];
  v39 = v0[28];
  v40 = v0[27];
  v41 = v0[26];
  v44 = v0[25];

  v38 = v0[1];

  return v38();
}

uint64_t sub_232511298()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2325113A8, v2, 0);
}

uint64_t sub_2325113A8()
{
  v1 = *((*(**(v0 + 176) + 192))() + 16);

  v2 = *(v0 + 616);
  v3 = *(v0 + 536);
  if (v1)
  {
    v4 = *(*(v0 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v4 & 1) == 0)
    {
      v5 = *(**(v0 + 176) + 304);
      v24 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      *(v0 + 632) = v7;
      *v7 = v0;
      v7[1] = sub_232511624;
      v8 = *(v0 + 176);

      return v24();
    }
  }

  else
  {
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v18 = *(v0 + 272);
  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v22 = *(v0 + 216);
  v23 = *(v0 + 208);
  v25 = *(v0 + 200);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_232511624()
{
  v1 = *v0;
  v2 = *(*v0 + 632);
  v19 = *v0;

  v3 = v1[42];
  v4 = v1[41];
  v5 = v1[40];
  v6 = v1[39];
  v7 = v1[38];
  v8 = v1[37];
  v9 = v1[36];
  v10 = v1[35];
  v14 = v1[34];
  v15 = v1[31];
  v16 = v1[28];
  v17 = v1[27];
  v18 = v1[26];
  v11 = v1[25];

  v12 = *(v19 + 8);

  return v12();
}

uint64_t sub_2325118D4()
{
  v247 = v0;
  v232 = v0 + 2;
  sub_2324DB438(v0[51], v0[52]);
  v233 = v0;
LABEL_2:
  v1 = v0[54];
  if (v1 >> 60 != 15)
  {
    v2 = v0[46];
    v3 = v0[22];
    sub_2324DB3E4(v0[53], v1);
    v4 = sub_232545888();
    v5 = sub_2325461D8();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[53];
    v7 = v0[54];
    if (v6)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v9, 2u);
      MEMORY[0x238386450](v9, -1, -1);
    }

    sub_2324DB438(v8, v7);
  }

  v10 = 1;
LABEL_7:
  v11 = v233;
  v12 = v233[22] + v233[46];
  v13 = sub_232545888();
  v14 = sub_232546208();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v246 = v16;
    *v15 = 136315394;
    if (v10)
    {
      v17 = 7233874;
    }

    else
    {
      v17 = 0x20746F6E20646944;
    }

    if (v10)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xEB000000006E7572;
    }

    v19 = sub_2324C2220(v17, v18, &v246);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v246);

    *(v15 + 14) = v20;
    v11 = v233;
    _os_log_impl(&dword_2324C0000, v13, v14, "%s Bonjour probe, network restricts multicast traffic: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v16, -1, -1);
    MEMORY[0x238386450](v15, -1, -1);
  }

  if (*(v11 + 648) != 2)
  {
    v21 = v11[22] + v11[46];
    v22 = sub_232545888();
    v23 = sub_2325461D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v11[38];
      v25 = v11[23];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v246 = v27;
      *v26 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v28 = sub_232546608();
      v30 = sub_2324C2220(v28, v29, &v246);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_2324C2220(7104878, 0xE300000000000000, &v246);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_2324C0000, v22, v23, "About to update multicastTrafficBlocked property for %s to %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v27, -1, -1);
      MEMORY[0x238386450](v26, -1, -1);
    }

    v33 = v11[37];
    v32 = v11[38];
    v35 = v11[32];
    v34 = v11[33];
    v36 = v11[30];
    v37 = v11[31];
    v38 = v11[29];
    v231 = v11[25];
    v39 = v11[24];
    v236 = v11[23];
    v240 = v11[26];
    v40 = v11[22];
    *(v32 + *(v35 + 60)) = 2;
    sub_232545668();
    (*(v36 + 40))(v32 + *(v35 + 20), v37, v38);
    sub_2324CE250(v32, v33);
    swift_beginAccess();
    sub_2324F6DD8(v33);
    swift_endAccess();
    sub_23251FC44(v33, type metadata accessor for NDFDevice);
    (*(v39 + 16))(v231, v32, v236);
    sub_2324CE250(v32, v240);
    (*(v34 + 56))(v240, 0, 1, v35);
    v41 = (*(*v40 + 184))(v232);
    sub_2324FCF78(v240, v231);
    v41(v232, 0);
  }

  v42 = v11[53];
  v43 = v11[54];
  sub_2324DB438(v11[51], v11[52]);
  sub_2324DB438(v42, v43);
  while (2)
  {
    v11[61] = 0;
    v44 = v11[49];
    v45 = v11[38];
    v46 = v11[36];
    swift_beginAccess();
    sub_2324CE250(v45, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v11[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_2324E1E80(0, v48[2] + 1, 1, v11[49]);
    }

    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = sub_2324E1E80(v49 > 1, v50 + 1, 1, v48);
    }

    v11[62] = v48;
    v51 = v11[50];
    v52 = *(v11 + 640);
    v53 = v11[36];
    v54 = *(v11 + 322);
    v48[2] = v50 + 1;
    sub_23251FBDC(v53, v48 + ((v52 + 32) & ~v52) + v51 * v50, type metadata accessor for NDFDevice);
    v55 = v11[48];
    if (v54 > 0xFF || (v54 & 1) != 0)
    {
      sub_2324CE250(v11[38], v11[35]);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v11[48];
      if ((v56 & 1) == 0)
      {
        v55 = sub_2324E1E80(0, v55[2] + 1, 1, v11[48]);
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_2324E1E80(v57 > 1, v58 + 1, 1, v55);
      }

      v59 = v11[50];
      v60 = *(v11 + 640);
      v61 = v11[35];
      v55[2] = v58 + 1;
      sub_23251FBDC(v61, v55 + ((v60 + 32) & ~v60) + v59 * v58, type metadata accessor for NDFDevice);
    }

    v11[63] = v55;
    v62 = *(v11 + 646);
    (*(*v11[22] + 368))(v11[38]);
    v241 = v55;
    if (v62 == 1)
    {
      v63 = v11[22] + v11[46];
      v64 = sub_232545888();
      v65 = sub_2325461D8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_2324C0000, v64, v65, "Post-update actions for this local device", v66, 2u);
        MEMORY[0x238386450](v66, -1, -1);
      }

      v67 = *sub_2324C8418();
      v68 = v11[46];
      v69 = v11[22];
      if (v67)
      {
        v209 = *(v67 + 152);
        v11[64] = v209;

        v210 = sub_232545888();
        v211 = sub_232546208();
        if (os_log_type_enabled(v210, v211))
        {
          v212 = v11[38];
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v246 = v214;
          *v213 = 136315138;
          v215 = sub_2324F6270();
          v217 = sub_2324C2220(v215, v216, &v246);

          *(v213 + 4) = v217;
          _os_log_impl(&dword_2324C0000, v210, v211, "Submitting CK device update: %s", v213, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v214);
          MEMORY[0x238386450](v214, -1, -1);
          v218 = v213;
          v11 = v233;
          MEMORY[0x238386450](v218, -1, -1);
        }

        v219 = *(*v209 + 344);
        v245 = (v219 + *v219);
        v220 = v219[1];
        v221 = swift_task_alloc();
        v11[65] = v221;
        *v221 = v11;
        v221[1] = sub_23250EC64;
        v195 = v11[38];
        v196 = v245;

        return v196(v195);
      }

      v70 = sub_232545888();
      v71 = sub_2325461F8();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v11[40];
      v74 = v11[38];
      v75 = v11[28];
      if (v72)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2324C0000, v70, v71, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v76, 2u);
        MEMORY[0x238386450](v76, -1, -1);
      }

      v55 = v241;
    }

    else
    {
      v73 = v11[40];
      v74 = v11[38];
      v75 = v11[28];
    }

    sub_2324C28AC(v75, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v73, type metadata accessor for NDFDevice);
    sub_23251FC44(v74, type metadata accessor for NDFDevice);
    v77 = v11[47] + 1;
    v237 = v48;
    if (v77 != v11[45])
    {
      while (1)
      {
        v11[48] = v55;
        v11[49] = v48;
        v11[47] = v77;
        v85 = v11[44];
        if (v77 >= *(v85 + 16))
        {
          __break(1u);
LABEL_98:
          v222 = *(v77 + 136);
          v233[58] = v222;
          v223 = *(*v222 + 104);

          v239 = (v223 + *v223);
          v224 = v223[1];
          v225 = swift_task_alloc();
          v233[59] = v225;
          *v225 = v233;
          v226 = sub_23250D070;
          goto LABEL_99;
        }

        v86 = v11[46];
        v87 = v11[39];
        v88 = v11[40];
        v89 = v11[22];
        v90 = v85 + ((*(v11 + 640) + 32) & ~*(v11 + 640));
        v91 = *(v11[33] + 72);
        v11[50] = v91;
        sub_2324CE250(v90 + v91 * v77, v88);
        sub_2324CE250(v88, v87);
        v92 = sub_232545888();
        v93 = sub_2325461D8();
        v94 = os_log_type_enabled(v92, v93);
        v95 = v11[39];
        if (v94)
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v246 = v97;
          *v96 = 136315138;
          v98 = sub_2324F6270();
          v100 = v99;
          sub_23251FC44(v95, type metadata accessor for NDFDevice);
          v101 = sub_2324C2220(v98, v100, &v246);

          *(v96 + 4) = v101;
          _os_log_impl(&dword_2324C0000, v92, v93, "Obtained device update %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x238386450](v97, -1, -1);
          MEMORY[0x238386450](v96, -1, -1);
        }

        else
        {

          sub_23251FC44(v95, type metadata accessor for NDFDevice);
        }

        v102 = v11[32];
        v103 = v11[33];
        v105 = v11[27];
        v104 = v11[28];
        v106 = v11[22];
        v107 = sub_2325083A8(v104, v11[40]);
        *(v11 + 322) = v107;
        sub_2324CF3C4(v104, v105, &qword_27DD93578, &unk_2325480F0);
        if ((*(v103 + 48))(v105, 1, v102) != 1)
        {
          break;
        }

        v108 = v11[46];
        v109 = v11[40];
        v110 = v11[34];
        v111 = v11[22];
        sub_2324C28AC(v11[27], &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v109, v110);
        v112 = sub_232545888();
        v113 = sub_2325461E8();
        v114 = os_log_type_enabled(v112, v113);
        v115 = v11[40];
        v116 = v11[34];
        v117 = v11[28];
        if (v114)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v246 = v79;
          *v78 = 136315138;
          v80 = sub_2324F6270();
          v82 = v81;
          sub_23251FC44(v116, type metadata accessor for NDFDevice);
          v83 = v80;
          v11 = v233;
          v84 = sub_2324C2220(v83, v82, &v246);

          *(v78 + 4) = v84;
          _os_log_impl(&dword_2324C0000, v112, v113, "No updates to device %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x238386450](v79, -1, -1);
          MEMORY[0x238386450](v78, -1, -1);
        }

        else
        {

          sub_23251FC44(v116, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v117, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v115, type metadata accessor for NDFDevice);
        v48 = v237;
        v55 = v241;
        v77 = v11[47] + 1;
        if (v77 == v11[45])
        {
          goto LABEL_64;
        }
      }

      v118 = *(v11 + 646);
      sub_23251FBDC(v11[27], v11[38], type metadata accessor for NDFDevice);
      if (v118 != 1 || v107 < 0x100u)
      {
        continue;
      }

      v119 = v11[22] + v11[46];
      v120 = sub_232545888();
      v121 = sub_232546208();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_2324C0000, v120, v121, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v122, 2u);
        MEMORY[0x238386450](v122, -1, -1);
      }

      v123 = v11[38];
      v124 = v11[32];

      swift_beginAccess();
      v125 = (v123 + v124[8]);
      v126 = *v125;
      v11[51] = *v125;
      v127 = v125[1];
      v11[52] = v127;
      v128 = (v123 + v124[9]);
      v129 = *v128;
      v11[53] = *v128;
      v130 = v11;
      v131 = v128[1];
      v130[54] = v131;
      *(v130 + 648) = *(v123 + v124[15]);
      if (v127 >> 60 == 15)
      {
        sub_2324DB3D0(v129, v131);
        v10 = v131 >> 60 != 15;
        if (v131 >> 60 == 15)
        {
          goto LABEL_7;
        }

        v132 = v233[46];
        v133 = v233[22];
        sub_2324DB3D0(v129, v131);
        sub_2324DB3E4(v129, v131);
        v134 = sub_232545888();
        v135 = sub_2325461E8();
        sub_2324DB438(v129, v131);
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v246 = v137;
          *v136 = 136315138;
          sub_2324DB3E4(v129, v131);
          v138 = sub_2325455B8();
          v140 = v139;
          sub_2324DB438(v129, v131);
          v141 = sub_2324C2220(v138, v140, &v246);

          *(v136 + 4) = v141;
          _os_log_impl(&dword_2324C0000, v134, v135, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v136, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v137);
          MEMORY[0x238386450](v137, -1, -1);
          MEMORY[0x238386450](v136, -1, -1);
        }

        v77 = *sub_2324C8418();
        if (!v77)
        {
          sub_2324DB438(v129, v131);
          goto LABEL_7;
        }

        goto LABEL_98;
      }

      v142 = v233[46];
      v143 = v233[22];
      sub_2324DB3D0(v126, v127);
      sub_2324DB3D0(v126, v127);
      sub_2324DB3D0(v129, v131);
      sub_2324DB3D0(v126, v127);
      v144 = sub_232545888();
      v145 = sub_2325461E8();
      sub_2324DB438(v126, v127);
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v246 = v147;
        *v146 = 136315138;
        sub_2324DB3E4(v126, v127);
        v148 = sub_2325455B8();
        v150 = v149;
        sub_2324DB438(v126, v127);
        v151 = sub_2324C2220(v148, v150, &v246);

        *(v146 + 4) = v151;
        _os_log_impl(&dword_2324C0000, v144, v145, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x238386450](v147, -1, -1);
        MEMORY[0x238386450](v146, -1, -1);
      }

      v152 = *sub_2324C8418();
      v0 = v233;
      if (!v152)
      {
        sub_2324DB438(v126, v127);
        goto LABEL_2;
      }

      v227 = *(v152 + 136);
      v233[55] = v227;
      v228 = *(*v227 + 104);

      v239 = (v228 + *v228);
      v229 = v228[1];
      v225 = swift_task_alloc();
      v233[56] = v225;
      *v225 = v233;
      v226 = sub_23250B4A0;
LABEL_99:
      v225[1] = v226;
      v190 = v239;

      return v190();
    }

    break;
  }

LABEL_64:
  v11[68] = v48;
  v11[67] = v55;
  v11[66] = 0;
  v153 = v11[22];
  v154 = *(v11 + 647);
  sub_23251BB00();
  if (v154 == 1)
  {
    v155 = v11[21];
    v156 = v11[22];
    v11[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v157 = sub_232545888();
    v158 = sub_232546208();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v233[43];
      v160 = v233[21];
      v161 = swift_slowAlloc();
      *v161 = 134218240;
      *(v161 + 4) = v48[2];

      *(v161 + 12) = 2048;
      *(v161 + 14) = v159;
      v11 = v233;

      _os_log_impl(&dword_2324C0000, v157, v158, "Ready to process %ld changed (of %ld total) incoming device updates", v161, 0x16u);
      MEMORY[0x238386450](v161, -1, -1);
    }

    else
    {
      v162 = v11[21];
    }

    if (v48[2])
    {
      v163 = sub_2324C8418();
      v164 = *v163;
      v11[70] = *v163;
      if (v164)
      {
        v165 = *v164 + 168;
        v11[71] = *v165;
        v11[72] = v165 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v164, 0);
      }

      v166 = v11[22] + v11[69];
      v167 = sub_232545888();
      v168 = sub_2325461F8();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_2324C0000, v167, v168, "No persistence controller available", v169, 2u);
        MEMORY[0x238386450](v169, -1, -1);
      }

      v48 = v11[68];
    }
  }

  v11[77] = v48;
  v170 = v11[67];
  if (*(v170 + 16))
  {
    v171 = v11[22];
    v172 = v11[67];

    v173 = sub_232545888();
    v174 = sub_232546208();
    v175 = os_log_type_enabled(v173, v174);
    v176 = v11;
    v177 = v11[67];
    v178 = v176[44];
    if (v175)
    {
      v179 = swift_slowAlloc();
      *v179 = 134217984;
      *(v179 + 4) = *(v170 + 16);

      _os_log_impl(&dword_2324C0000, v173, v174, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v179, 0xCu);
      MEMORY[0x238386450](v179, -1, -1);
    }

    else
    {
    }

    v191 = *(*v233[22] + 512);
    v243 = (v191 + *v191);
    v192 = v191[1];
    v193 = swift_task_alloc();
    v233[78] = v193;
    *v193 = v233;
    v193[1] = sub_232511298;
    v194 = v233[22];
    v195 = v233[67];
    v196 = v243;

    return v196(v195);
  }

  v180 = v11[44];

  v182 = *((*(*v11[22] + 192))(v181) + 16);

  v183 = v11[77];
  v184 = v11[67];
  if (v182)
  {
    v185 = *(v11[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v185 & 1) == 0)
    {
      v186 = *(*v11[22] + 304);
      v242 = (v186 + *v186);
      v187 = v186[1];
      v188 = swift_task_alloc();
      v11[79] = v188;
      *v188 = v11;
      v188[1] = sub_232511624;
      v189 = v11[22];
      v190 = v242;

      return v190();
    }
  }

  else
  {
  }

  v198 = v11[41];
  v197 = v11[42];
  v199 = v11[39];
  v200 = v11[40];
  v202 = v11[37];
  v201 = v11[38];
  v203 = v11;
  v204 = v11[36];
  v206 = v203[34];
  v205 = v203[35];
  v207 = v203[31];
  v234 = v203[28];
  v235 = v203[27];
  v238 = v203[26];
  v244 = v203[25];

  v208 = v203[1];

  return v208();
}

uint64_t sub_232513278()
{
  v248 = v0;
  v1 = v0;
  v233 = v0 + 2;
  sub_2324DB438(v0[53], v0[54]);
  v2 = 1;
  v234 = v1;
LABEL_2:
  v3 = v1[22] + v1[46];
  v4 = sub_232545888();
  v5 = sub_232546208();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v247 = v7;
    *v6 = 136315394;
    if (v2)
    {
      v8 = 7233874;
    }

    else
    {
      v8 = 0x20746F6E20646944;
    }

    if (v2)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xEB000000006E7572;
    }

    v10 = sub_2324C2220(v8, v9, &v247);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v247);

    *(v6 + 14) = v11;
    v1 = v234;
    _os_log_impl(&dword_2324C0000, v4, v5, "%s Bonjour probe, network restricts multicast traffic: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v7, -1, -1);
    MEMORY[0x238386450](v6, -1, -1);
  }

  if (*(v1 + 648) != 2)
  {
    v12 = v1[22] + v1[46];
    v13 = sub_232545888();
    v14 = sub_2325461D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v1[38];
      v16 = v1[23];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v247 = v18;
      *v17 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v19 = sub_232546608();
      v21 = sub_2324C2220(v19, v20, &v247);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_2324C2220(7104878, 0xE300000000000000, &v247);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_2324C0000, v13, v14, "About to update multicastTrafficBlocked property for %s to %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v18, -1, -1);
      MEMORY[0x238386450](v17, -1, -1);
    }

    v24 = v1[37];
    v23 = v1[38];
    v26 = v1[32];
    v25 = v1[33];
    v27 = v1[30];
    v28 = v1[31];
    v29 = v1[29];
    v232 = v1[25];
    v30 = v1[24];
    v237 = v1[23];
    v241 = v1[26];
    v31 = v1[22];
    *(v23 + *(v26 + 60)) = 2;
    sub_232545668();
    (*(v27 + 40))(v23 + *(v26 + 20), v28, v29);
    sub_2324CE250(v23, v24);
    swift_beginAccess();
    sub_2324F6DD8(v24);
    swift_endAccess();
    sub_23251FC44(v24, type metadata accessor for NDFDevice);
    (*(v30 + 16))(v232, v23, v237);
    sub_2324CE250(v23, v241);
    (*(v25 + 56))(v241, 0, 1, v26);
    v32 = (*(*v31 + 184))(v233);
    sub_2324FCF78(v241, v232);
    v32(v233, 0);
  }

  v33 = v1[53];
  v34 = v1[54];
  sub_2324DB438(v1[51], v1[52]);
  sub_2324DB438(v33, v34);
  while (2)
  {
    v1[61] = 0;
    v35 = v1[49];
    v36 = v1[38];
    v37 = v1[36];
    swift_beginAccess();
    sub_2324CE250(v36, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v1[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_2324E1E80(0, v39[2] + 1, 1, v1[49]);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_2324E1E80(v40 > 1, v41 + 1, 1, v39);
    }

    v1[62] = v39;
    v42 = v1[50];
    v43 = *(v1 + 640);
    v44 = v1[36];
    v45 = *(v1 + 322);
    v39[2] = v41 + 1;
    sub_23251FBDC(v44, v39 + ((v43 + 32) & ~v43) + v42 * v41, type metadata accessor for NDFDevice);
    v46 = v1[48];
    if (v45 > 0xFF || (v45 & 1) != 0)
    {
      sub_2324CE250(v1[38], v1[35]);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v1[48];
      if ((v47 & 1) == 0)
      {
        v46 = sub_2324E1E80(0, v46[2] + 1, 1, v1[48]);
      }

      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        v46 = sub_2324E1E80(v48 > 1, v49 + 1, 1, v46);
      }

      v50 = v1[50];
      v51 = *(v1 + 640);
      v52 = v1[35];
      v46[2] = v49 + 1;
      sub_23251FBDC(v52, v46 + ((v51 + 32) & ~v51) + v50 * v49, type metadata accessor for NDFDevice);
    }

    v1[63] = v46;
    v53 = *(v1 + 646);
    (*(*v1[22] + 368))(v1[38]);
    v242 = v46;
    if (v53 == 1)
    {
      v54 = v1[22] + v1[46];
      v55 = sub_232545888();
      v56 = sub_2325461D8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2324C0000, v55, v56, "Post-update actions for this local device", v57, 2u);
        MEMORY[0x238386450](v57, -1, -1);
      }

      v58 = *sub_2324C8418();
      v59 = v1[46];
      v60 = v1[22];
      if (v58)
      {
        v210 = *(v58 + 152);
        v1[64] = v210;

        v211 = sub_232545888();
        v212 = sub_232546208();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = v1[38];
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v247 = v215;
          *v214 = 136315138;
          v216 = sub_2324F6270();
          v218 = sub_2324C2220(v216, v217, &v247);

          *(v214 + 4) = v218;
          _os_log_impl(&dword_2324C0000, v211, v212, "Submitting CK device update: %s", v214, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v215);
          MEMORY[0x238386450](v215, -1, -1);
          v219 = v214;
          v1 = v234;
          MEMORY[0x238386450](v219, -1, -1);
        }

        v220 = *(*v210 + 344);
        v246 = (v220 + *v220);
        v221 = v220[1];
        v222 = swift_task_alloc();
        v1[65] = v222;
        *v222 = v1;
        v222[1] = sub_23250EC64;
        v196 = v1[38];
        v197 = v246;

        return v197(v196);
      }

      v61 = sub_232545888();
      v62 = sub_2325461F8();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v1[40];
      v65 = v1[38];
      v66 = v1[28];
      if (v63)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2324C0000, v61, v62, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v67, 2u);
        MEMORY[0x238386450](v67, -1, -1);
      }

      v46 = v242;
    }

    else
    {
      v64 = v1[40];
      v65 = v1[38];
      v66 = v1[28];
    }

    sub_2324C28AC(v66, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v64, type metadata accessor for NDFDevice);
    sub_23251FC44(v65, type metadata accessor for NDFDevice);
    v68 = v1[47] + 1;
    v238 = v39;
    if (v68 != v1[45])
    {
      while (1)
      {
        v1[48] = v46;
        v1[49] = v39;
        v1[47] = v68;
        v76 = v1[44];
        if (v68 >= *(v76 + 16))
        {
          __break(1u);
LABEL_96:
          v223 = *(v68 + 136);
          v234[55] = v223;
          v224 = *(*v223 + 104);

          v240 = (v224 + *v224);
          v225 = v224[1];
          v226 = swift_task_alloc();
          v234[56] = v226;
          *v226 = v234;
          v227 = sub_23250B4A0;
          goto LABEL_98;
        }

        v77 = v1[46];
        v78 = v1[39];
        v79 = v1[40];
        v80 = v1[22];
        v81 = v76 + ((*(v1 + 640) + 32) & ~*(v1 + 640));
        v82 = *(v1[33] + 72);
        v1[50] = v82;
        sub_2324CE250(v81 + v82 * v68, v79);
        sub_2324CE250(v79, v78);
        v83 = sub_232545888();
        v84 = sub_2325461D8();
        v85 = os_log_type_enabled(v83, v84);
        v86 = v1[39];
        if (v85)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v247 = v88;
          *v87 = 136315138;
          v89 = sub_2324F6270();
          v91 = v90;
          sub_23251FC44(v86, type metadata accessor for NDFDevice);
          v92 = sub_2324C2220(v89, v91, &v247);

          *(v87 + 4) = v92;
          _os_log_impl(&dword_2324C0000, v83, v84, "Obtained device update %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x238386450](v88, -1, -1);
          MEMORY[0x238386450](v87, -1, -1);
        }

        else
        {

          sub_23251FC44(v86, type metadata accessor for NDFDevice);
        }

        v93 = v1[32];
        v94 = v1[33];
        v96 = v1[27];
        v95 = v1[28];
        v97 = v1[22];
        v98 = sub_2325083A8(v95, v1[40]);
        *(v1 + 322) = v98;
        sub_2324CF3C4(v95, v96, &qword_27DD93578, &unk_2325480F0);
        if ((*(v94 + 48))(v96, 1, v93) != 1)
        {
          break;
        }

        v99 = v1[46];
        v100 = v1[40];
        v101 = v1[34];
        v102 = v1[22];
        sub_2324C28AC(v1[27], &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v100, v101);
        v103 = sub_232545888();
        v104 = sub_2325461E8();
        v105 = os_log_type_enabled(v103, v104);
        v106 = v1[40];
        v107 = v1[34];
        v108 = v1[28];
        if (v105)
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v247 = v70;
          *v69 = 136315138;
          v71 = sub_2324F6270();
          v73 = v72;
          sub_23251FC44(v107, type metadata accessor for NDFDevice);
          v74 = v71;
          v1 = v234;
          v75 = sub_2324C2220(v74, v73, &v247);

          *(v69 + 4) = v75;
          _os_log_impl(&dword_2324C0000, v103, v104, "No updates to device %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x238386450](v70, -1, -1);
          MEMORY[0x238386450](v69, -1, -1);
        }

        else
        {

          sub_23251FC44(v107, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v108, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v106, type metadata accessor for NDFDevice);
        v39 = v238;
        v46 = v242;
        v68 = v1[47] + 1;
        if (v68 == v1[45])
        {
          goto LABEL_62;
        }
      }

      v109 = *(v1 + 646);
      sub_23251FBDC(v1[27], v1[38], type metadata accessor for NDFDevice);
      if (v109 != 1 || v98 < 0x100u)
      {
        continue;
      }

      v110 = v1[22] + v1[46];
      v111 = sub_232545888();
      v112 = sub_232546208();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_2324C0000, v111, v112, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v113, 2u);
        MEMORY[0x238386450](v113, -1, -1);
      }

      v114 = v1[38];
      v115 = v1[32];

      swift_beginAccess();
      v116 = (v114 + v115[8]);
      v117 = *v116;
      v1[51] = *v116;
      v118 = v1;
      v119 = v116[1];
      v118[52] = v119;
      v120 = (v114 + v115[9]);
      v121 = *v120;
      v118[53] = *v120;
      v122 = v120[1];
      v118[54] = v122;
      *(v118 + 648) = *(v114 + v115[15]);
      if (v119 >> 60 != 15)
      {
        v123 = v118[46];
        v124 = v118[22];
        sub_2324DB3D0(v117, v119);
        sub_2324DB3D0(v117, v119);
        sub_2324DB3D0(v121, v122);
        sub_2324DB3D0(v117, v119);
        v125 = sub_232545888();
        v126 = sub_2325461E8();
        sub_2324DB438(v117, v119);
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v247 = v128;
          *v127 = 136315138;
          sub_2324DB3E4(v117, v119);
          v129 = sub_2325455B8();
          v131 = v130;
          sub_2324DB438(v117, v119);
          v132 = sub_2324C2220(v129, v131, &v247);

          *(v127 + 4) = v132;
          _os_log_impl(&dword_2324C0000, v125, v126, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x238386450](v128, -1, -1);
          MEMORY[0x238386450](v127, -1, -1);
        }

        v68 = *sub_2324C8418();
        if (!v68)
        {
          sub_2324DB438(v117, v119);
          v1 = v234;
          v133 = v234[54];
          v2 = 1;
          if (v133 >> 60 != 15)
          {
            v134 = v234[46];
            v135 = v234[22];
            sub_2324DB3E4(v234[53], v133);
            v136 = sub_232545888();
            v137 = sub_2325461D8();
            v138 = os_log_type_enabled(v136, v137);
            v140 = v234[53];
            v139 = v234[54];
            if (v138)
            {
              v141 = swift_slowAlloc();
              *v141 = 0;
              _os_log_impl(&dword_2324C0000, v136, v137, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v141, 2u);
              v142 = v141;
              v1 = v234;
              MEMORY[0x238386450](v142, -1, -1);
            }

            sub_2324DB438(v140, v139);

            v2 = 1;
          }

          goto LABEL_2;
        }

        goto LABEL_96;
      }

      sub_2324DB3D0(v121, v122);
      v2 = 0;
      v1 = v118;
      if (v122 >> 60 == 15)
      {
        goto LABEL_2;
      }

      v143 = v118[46];
      v144 = v118[22];
      sub_2324DB3D0(v121, v122);
      sub_2324DB3E4(v121, v122);
      v145 = sub_232545888();
      v146 = sub_2325461E8();
      sub_2324DB438(v121, v122);
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v247 = v148;
        *v147 = 136315138;
        sub_2324DB3E4(v121, v122);
        v149 = sub_2325455B8();
        v151 = v150;
        sub_2324DB438(v121, v122);
        v152 = sub_2324C2220(v149, v151, &v247);

        *(v147 + 4) = v152;
        v1 = v234;
        _os_log_impl(&dword_2324C0000, v145, v146, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v148);
        MEMORY[0x238386450](v148, -1, -1);
        MEMORY[0x238386450](v147, -1, -1);
      }

      v153 = *sub_2324C8418();
      if (!v153)
      {
        sub_2324DB438(v121, v122);
        v2 = 1;
        goto LABEL_2;
      }

      v228 = *(v153 + 136);
      v1[58] = v228;
      v229 = *(*v228 + 104);

      v240 = (v229 + *v229);
      v230 = v229[1];
      v226 = swift_task_alloc();
      v1[59] = v226;
      *v226 = v1;
      v227 = sub_23250D070;
LABEL_98:
      v226[1] = v227;
      v191 = v240;

      return v191();
    }

    break;
  }

LABEL_62:
  v1[68] = v39;
  v1[67] = v46;
  v1[66] = 0;
  v154 = v1[22];
  v155 = *(v1 + 647);
  sub_23251BB00();
  if (v155 == 1)
  {
    v156 = v1[21];
    v157 = v1[22];
    v1[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v158 = sub_232545888();
    v159 = sub_232546208();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = v234[43];
      v161 = v234[21];
      v162 = swift_slowAlloc();
      *v162 = 134218240;
      *(v162 + 4) = v39[2];

      *(v162 + 12) = 2048;
      *(v162 + 14) = v160;
      v1 = v234;

      _os_log_impl(&dword_2324C0000, v158, v159, "Ready to process %ld changed (of %ld total) incoming device updates", v162, 0x16u);
      MEMORY[0x238386450](v162, -1, -1);
    }

    else
    {
      v163 = v1[21];
    }

    if (v39[2])
    {
      v164 = sub_2324C8418();
      v165 = *v164;
      v1[70] = *v164;
      if (v165)
      {
        v166 = *v165 + 168;
        v1[71] = *v166;
        v1[72] = v166 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v165, 0);
      }

      v167 = v1[22] + v1[69];
      v168 = sub_232545888();
      v169 = sub_2325461F8();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_2324C0000, v168, v169, "No persistence controller available", v170, 2u);
        MEMORY[0x238386450](v170, -1, -1);
      }

      v39 = v1[68];
    }
  }

  v1[77] = v39;
  v171 = v1[67];
  if (*(v171 + 16))
  {
    v172 = v1[22];
    v173 = v1[67];

    v174 = sub_232545888();
    v175 = sub_232546208();
    v176 = os_log_type_enabled(v174, v175);
    v177 = v1;
    v178 = v1[67];
    v179 = v177[44];
    if (v176)
    {
      v180 = swift_slowAlloc();
      *v180 = 134217984;
      *(v180 + 4) = *(v171 + 16);

      _os_log_impl(&dword_2324C0000, v174, v175, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v180, 0xCu);
      MEMORY[0x238386450](v180, -1, -1);
    }

    else
    {
    }

    v192 = *(*v234[22] + 512);
    v244 = (v192 + *v192);
    v193 = v192[1];
    v194 = swift_task_alloc();
    v234[78] = v194;
    *v194 = v234;
    v194[1] = sub_232511298;
    v195 = v234[22];
    v196 = v234[67];
    v197 = v244;

    return v197(v196);
  }

  v181 = v1[44];

  v183 = *((*(*v1[22] + 192))(v182) + 16);

  v184 = v1[77];
  v185 = v1[67];
  if (v183)
  {
    v186 = *(v1[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v186 & 1) == 0)
    {
      v187 = *(*v1[22] + 304);
      v243 = (v187 + *v187);
      v188 = v187[1];
      v189 = swift_task_alloc();
      v1[79] = v189;
      *v189 = v1;
      v189[1] = sub_232511624;
      v190 = v1[22];
      v191 = v243;

      return v191();
    }
  }

  else
  {
  }

  v199 = v1[41];
  v198 = v1[42];
  v200 = v1[39];
  v201 = v1[40];
  v203 = v1[37];
  v202 = v1[38];
  v204 = v1;
  v205 = v1[36];
  v207 = v204[34];
  v206 = v204[35];
  v208 = v204[31];
  v235 = v204[28];
  v236 = v204[27];
  v239 = v204[26];
  v245 = v204[25];

  v209 = v204[1];

  return v209();
}

uint64_t sub_232514C5C()
{
  v1 = v0[76];
  v2 = v0[69];
  v3 = v0[22];
  v4 = v1;
  v5 = sub_232545888();
  v6 = sub_2325461F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[76];
  v9 = v0[73];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2324C0000, v5, v6, "Failed to persist updated devices: %@", v10, 0xCu);
    sub_2324C28AC(v11, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v11, -1, -1);
    MEMORY[0x238386450](v10, -1, -1);
  }

  else
  {
  }

  v0[77] = v0[68];
  v14 = v0[67];
  if (*(v14 + 16))
  {
    v15 = v0[22];
    v16 = v0[67];

    v17 = sub_232545888();
    v18 = sub_232546208();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[67];
    v21 = v0[44];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(v14 + 16);

      _os_log_impl(&dword_2324C0000, v17, v18, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v22, 0xCu);
      MEMORY[0x238386450](v22, -1, -1);
    }

    else
    {
      v34 = v0[67];
    }

    v35 = *(*v0[22] + 512);
    v55 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    v0[78] = v37;
    *v37 = v0;
    v37[1] = sub_232511298;
    v38 = v0[67];
    v39 = v0[22];

    return v55(v38);
  }

  v23 = v0[44];

  v25 = *((*(*v0[22] + 192))(v24) + 16);

  v26 = v0[77];
  v27 = v0[67];
  if (v25)
  {
    v28 = *(v0[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v28 & 1) == 0)
    {
      v29 = *(*v0[22] + 304);
      v54 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      v0[79] = v31;
      *v31 = v0;
      v31[1] = sub_232511624;
      v32 = v0[22];

      return v54();
    }
  }

  else
  {
  }

  v41 = v0[41];
  v40 = v0[42];
  v43 = v0[39];
  v42 = v0[40];
  v45 = v0[37];
  v44 = v0[38];
  v47 = v0[35];
  v46 = v0[36];
  v48 = v0[34];
  v49 = v0[31];
  v51 = v0[28];
  v52 = v0[27];
  v53 = v0[26];
  v56 = v0[25];

  v50 = v0[1];

  return v50();
}

uint64_t sub_2325151DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for NDFDevice() - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325152A4, v1, 0);
}

void sub_2325152A4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v33 = v0[4];
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    v35 = v0[3];
    v32 = v4;
    do
    {
      v34 = v5;
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        sub_232545A48();
        sub_2324DB3E4(v9, v8);
        v10 = sub_232545948();
        if (v10)
        {
          break;
        }

        v11 = sub_232545888();
        v12 = sub_2325461F8();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2324C0000, v11, v12, "Failed to decode NDFDevicePayload obtained from symptomsd-distributed", v13, 2u);
          MEMORY[0x238386450](v13, -1, -1);
        }

        sub_2324DB44C(v9, v8);

        ++v7;
        v6 += 2;
        if (v3 == v2)
        {
          v5 = v34;
          goto LABEL_18;
        }
      }

      v15 = v0[5];
      v14 = v0[6];
      v31 = v10;
      sub_2324F4A50(v14);
      sub_2324CE250(v14, v15);
      v16 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2324E1E80(0, v34[2] + 1, 1, v34);
      }

      v18 = v16[2];
      v17 = v16[3];
      v19 = v16;
      v20 = v31;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_2324E1E80(v17 > 1, v18 + 1, 1, v16);
        v20 = v31;
      }

      v22 = v0[5];
      v21 = v0[6];

      sub_2324DB44C(v9, v8);
      sub_23251FC44(v21, type metadata accessor for NDFDevice);
      *(v19 + 16) = v18 + 1;
      v5 = v19;
      sub_23251FBDC(v22, v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v18, type metadata accessor for NDFDevice);
      v4 = v32;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v0[7] = v5;

  v23 = sub_232545888();
  v24 = sub_232546208();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v5[2];

    _os_log_impl(&dword_2324C0000, v23, v24, "About to process %ld NDFDevice records from CloudKit payloads", v25, 0xCu);
    MEMORY[0x238386450](v25, -1, -1);
  }

  else
  {
  }

  v26 = v0[3];

  v27 = *(*v26 + 464);
  v36 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  v0[8] = v29;
  *v29 = v0;
  v29[1] = sub_232515738;
  v30 = v0[3];

  (v36)(v5, 0, 1);
}

uint64_t sub_232515738()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_23251588C, v4, 0);
  }

  else
  {
    v6 = v3[6];
    v5 = v3[7];
    v7 = v3[5];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_23251588C()
{
  v1 = v0[7];

  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_232515900(uint64_t a1, uint64_t a2)
{
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  v4 = *(*(sub_232545688() - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v6 = type metadata accessor for NDFDevice();
  v3[71] = v6;
  v7 = *(v6 - 8);
  v3[72] = v7;
  v8 = *(v7 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v10 = sub_2325456F8();
  v3[78] = v10;
  v11 = *(v10 - 8);
  v3[79] = v11;
  v12 = *(v11 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93588, &qword_2325481C0) - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232515B4C, v2, 0);
}

void sub_232515B4C()
{
  v270 = v0;
  v1 = v0;
  v2 = sub_232517800(v0[66]);
  v3 = v0[68];
  if (!v2)
  {
    v22 = sub_232545888();
    v23 = sub_2325461F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Received self device state is not of type Dictionary";
LABEL_11:
      _os_log_impl(&dword_2324C0000, v22, v23, v25, v24, 2u);
      MEMORY[0x238386450](v24, -1, -1);
    }

LABEL_12:

    v26 = v0[85];
    v27 = v0[84];
    v28 = v0[83];
    v29 = v0[82];
    v30 = v0[81];
    v31 = v0[80];
    v32 = v0[77];
    v33 = v0[76];
    v34 = v0[75];
    v35 = v0[73];
    v260 = v0[74];
    v262 = v0[70];
    v265 = v0[69];

    v36 = v0[1];

    v36();
    return;
  }

  v4 = v2;
  v0[86] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

  v5 = sub_232545888();
  v6 = sub_2325461D8();

  v232 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[78];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v269[0] = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93598, qword_2325481D0);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    v10 = sub_232545EF8();
    v12 = sub_2324C2220(v10, v11, v269);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2324C0000, v5, v6, "Received self device state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x238386450](v9, -1, -1);
    MEMORY[0x238386450](v8, -1, -1);
  }

  v13 = sub_232517F58(v0[67]);
  if (!v13)
  {

    v22 = sub_232545888();
    v23 = sub_2325461F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Removal keys are not of type String";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v236 = v13;
  v14 = sub_232545888();
  v15 = sub_2325461D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v269[0] = v17;
    *v16 = 136315138;
    v18 = v236;
    v19 = MEMORY[0x238385650](v236, MEMORY[0x277D837D0]);
    v21 = sub_2324C2220(v19, v20, v269);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2324C0000, v14, v15, "Keys to remove: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x238386450](v17, -1, -1);
    MEMORY[0x238386450](v16, -1, -1);
  }

  else
  {

    v18 = v236;
  }

  v37 = 0;
  v38 = -1;
  v39 = -1 << *(v232 + 32);
  v40 = v0[79];
  v41 = v0[72];
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v42 = v38 & *(v232 + 64);
  v252 = v0[71];
  v228 = (63 - v39) >> 6;
  v261 = (v40 + 16);
  v246 = (v40 + 32);
  v256 = (v40 + 56);
  v238 = v0[72];
  v230 = (v41 + 48);
  v231 = v0[79];
  v233 = (v40 + 48);
  v234 = (v41 + 56);
  v259 = (v40 + 8);
  v43 = MEMORY[0x277D84F90];
  v44 = (v18 + 40);
  v45 = v232 + 64;
  v229 = v44;
  v254 = v0;
  while (1)
  {
    v1[87] = v43;
    v244 = v43;
    if (v42)
    {
      v243 = v37;
      v46 = v37;
      goto LABEL_29;
    }

    v47 = v228 <= v37 + 1 ? v37 + 1 : v228;
    v48 = v47 - 1;
    do
    {
      v46 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return;
      }

      if (v46 >= v228)
      {
        v218 = v1[84];
        v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
        (*(*(v219 - 8) + 56))(v218, 1, 1, v219);
        v242 = 0;
        v243 = v48;
        goto LABEL_30;
      }

      v42 = *(v45 + 8 * v46);
      ++v37;
    }

    while (!v42);
    v243 = v46;
LABEL_29:
    v49 = v1[84];
    v50 = v1[83];
    v51 = v1[78];
    v242 = (v42 - 1) & v42;
    v52 = __clz(__rbit64(v42)) | (v46 << 6);
    (*(v231 + 16))(v50, *(v232 + 48) + *(v231 + 72) * v52, v51);
    v53 = *(*(v232 + 56) + 8 * v52);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
    v55 = *(v54 + 48);
    (*(v231 + 32))(v49, v50, v51);
    *(v49 + v55) = v53;
    (*(*(v54 - 8) + 56))(v49, 0, 1, v54);

LABEL_30:
    v56 = v1[85];
    sub_2324F1C98(v1[84], v56, &qword_27DD93588, &qword_2325481C0);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      break;
    }

    v58 = v1[78];
    v59 = *(v1[85] + *(v57 + 48));
    v241 = *v246;
    (*v246)(v1[82]);
    v60 = sub_23254510C();
    v253 = v60;
    if (*(v59 + 16) && (v61 = *v60, v62 = v60[1], , v63 = sub_2324EF34C(v61, v62), v65 = v64, , (v65 & 1) != 0))
    {
      v66 = v1[78];
      v67 = v1[77];
      sub_2324C26D8(*(v59 + 56) + 32 * v63, (v1 + 2));
      v68 = swift_dynamicCast();
      v69 = *v256;
      v70 = v68 ^ 1u;
      v71 = v67;
      v72 = v66;
    }

    else
    {
      v72 = v1[78];
      v71 = v1[77];
      v69 = *v256;
      v70 = 1;
    }

    v255 = v69;
    v69(v71, v70, 1, v72);
    v73 = sub_232545134();
    v251 = v73;
    if (*(v59 + 16) && (v74 = *v73, v75 = v73[1], , v76 = sub_2324EF34C(v74, v75), v78 = v77, , (v78 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v76, (v1 + 6));
      v79 = swift_dynamicCast();
      v80 = v1[64];
      if (!v79)
      {
        v80 = 0;
      }

      v248 = v80;
      v81 = 0xF000000000000000;
      if (v79)
      {
        v81 = v1[65];
      }
    }

    else
    {
      v248 = 0;
      v81 = 0xF000000000000000;
    }

    v250 = v81;
    v82 = sub_232545164();
    v245 = v82;
    if (*(v59 + 16) && (v83 = *v82, v84 = v82[1], , v85 = sub_2324EF34C(v83, v84), v87 = v86, , (v87 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v85, (v1 + 10));
      v88 = swift_dynamicCast();
      v89 = v1[62];
      if (!v88)
      {
        v89 = 0;
      }

      v247 = v89;
      v90 = 0xF000000000000000;
      if (v88)
      {
        v90 = v1[63];
      }
    }

    else
    {
      v247 = 0;
      v90 = 0xF000000000000000;
    }

    v249 = v90;
    v91 = sub_232545194();
    v237 = v91;
    if (*(v59 + 16) && (v92 = *v91, v93 = v91[1], , v94 = sub_2324EF34C(v92, v93), v96 = v95, , (v96 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v94, (v1 + 14));
      v97 = swift_dynamicCast();
      v98 = v1[60];
      if (!v97)
      {
        v98 = 0;
      }

      v257 = v98;
      if (v97)
      {
        v99 = v1[61];
      }

      else
      {
        v99 = 0;
      }
    }

    else
    {
      v257 = 0;
      v99 = 0;
    }

    v100 = sub_2325451C0();
    if (*(v59 + 16) && (v101 = *v100, v102 = v100[1], , v103 = sub_2324EF34C(v101, v102), v105 = v104, , (v105 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v103, (v1 + 18));
      v106 = swift_dynamicCast();
      v107 = *(v1 + 723);
      if (!v106)
      {
        v107 = 2;
      }
    }

    else
    {
      v107 = 2;
    }

    v266 = v107;
    v108 = sub_2325451E8();
    if (*(v59 + 16) && (v109 = *v108, v110 = v108[1], , v111 = sub_2324EF34C(v109, v110), v113 = v112, , (v113 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v111, (v1 + 22));
      v114 = swift_dynamicCast();
      v115 = *(v1 + 722);
      if (!v114)
      {
        v115 = 2;
      }
    }

    else
    {
      v115 = 2;
    }

    v263 = v115;
    v116 = sub_232545210();
    v235 = v116;
    if (*(v59 + 16) && (v117 = *v116, v118 = v116[1], , v119 = sub_2324EF34C(v117, v118), v121 = v120, , (v121 & 1) != 0))
    {
      sub_2324C26D8(*(v59 + 56) + 32 * v119, (v1 + 26));

      v122 = swift_dynamicCast();
      v123 = *(v1 + 360);
      if (!v122)
      {
        v123 = 0;
      }

      v240 = v123;
      v124 = v122 ^ 1;
    }

    else
    {

      v240 = 0;
      v124 = 1;
    }

    v125 = (*(*v1[68] + 168))();
    if (*(v125 + 16) && (v126 = sub_2324E6CD4(v1[82]), (v127 & 1) != 0))
    {
      v128 = v1[74];
      v129 = v1[71];
      v130 = v1[70];
      sub_2324CE250(*(v125 + 56) + *(v238 + 72) * v126, v130);

      (*(v238 + 56))(v130, 0, 1, v129);
      sub_23251FBDC(v130, v128, type metadata accessor for NDFDevice);
      v131 = v252;
    }

    else
    {
      v132 = v1[83];
      v133 = v1[82];
      v134 = v1[78];
      v135 = v1[76];
      v239 = v1[74];
      v136 = v1[71];
      v137 = v254[70];
      v138 = v254[69];

      (*v234)(v137, 1, 1, v136);
      (*v261)(v132, v133, v134);
      v139 = v255(v135, 1, 1, v134);
      sub_2324FBCE4(v139);
      sub_2324FA5C0(v132, v138, 0, 0, v135, 0, 0xF000000000000000, 0, v239, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
      v140 = v137;
      v1 = v254;
      v131 = v252;
      if ((*v230)(v140, 1, v136) != 1)
      {
        sub_2324C28AC(v254[70], &qword_27DD93578, &unk_2325480F0);
      }
    }

    v141 = v1[78];
    v142 = v1[75];
    sub_2324CF3C4(v1[77], v142, &unk_27DD932E0, qword_2325472E0);
    if ((*v233)(v142, 1, v141) == 1)
    {
      sub_2324C28AC(v1[75], &unk_27DD932E0, qword_2325472E0);
    }

    else
    {
      v143 = v1[81];
      v144 = v1[78];
      v145 = v1[76];
      v146 = v1[74];
      (v241)(v143, v1[75], v144);
      (v241)(v145, v143, v144);
      v255(v145, 0, 1, v144);
      swift_beginAccess();
      sub_2324F503C(v145, v146 + v131[7]);
    }

    v147 = v253;
    if (v250 >> 60 != 15)
    {
      v148 = v1[74];
      swift_beginAccess();
      v149 = (v148 + v131[8]);
      v151 = *v149;
      v150 = v149[1];
      *v149 = v248;
      v149[1] = v250;
      sub_2324DB3E4(v248, v250);
      sub_2324DB438(v151, v150);
    }

    if (v249 >> 60 != 15)
    {
      v152 = v1[74];
      swift_beginAccess();
      v153 = (v152 + v131[9]);
      v155 = *v153;
      v154 = v153[1];
      *v153 = v247;
      v153[1] = v249;
      sub_2324DB3E4(v247, v249);
      sub_2324DB438(v155, v154);
    }

    if (v99)
    {
      v156 = v1[74];
      swift_beginAccess();
      v157 = (v156 + v131[10]);
      v158 = v157[1];
      *v157 = v257;
      v157[1] = v99;
    }

    if (v263 == 2)
    {
      if (v266 == 2)
      {
        goto LABEL_91;
      }

LABEL_131:
      v217 = v1[74];
      swift_beginAccess();
      *(v217 + v131[11]) = v266;
      if (v124)
      {
        goto LABEL_93;
      }

LABEL_92:
      v159 = v1[74];
      swift_beginAccess();
      v160 = v159 + v131[14];
      *v160 = v240;
      *(v160 + 2) = 0;
      goto LABEL_93;
    }

    v216 = v1[74];
    swift_beginAccess();
    *(v216 + v131[12]) = v263;
    if (v266 != 2)
    {
      goto LABEL_131;
    }

LABEL_91:
    if ((v124 & 1) == 0)
    {
      goto LABEL_92;
    }

LABEL_93:
    v161 = *(v236 + 16);
    if (v161)
    {
      v162 = v1[74];
      swift_beginAccess();
      v258 = *v261;
      v163 = v229;
      do
      {
        v264 = v163;
        v267 = v161;
        v167 = *(v163 - 1);
        v168 = *v163;
        v258(v1[80], v1[82], v1[78]);
        swift_bridgeObjectRetain_n();
        v169 = sub_232545888();
        v170 = sub_2325461D8();

        v171 = os_log_type_enabled(v169, v170);
        v172 = v1[80];
        v173 = v1[78];
        if (v171)
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v269[0] = v175;
          *v174 = 136315394;
          *(v174 + 4) = sub_2324C2220(v167, v168, v269);
          *(v174 + 12) = 2080;
          sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
          v176 = sub_232546608();
          v178 = v177;
          (*v259)(v172, v173);
          v179 = sub_2324C2220(v176, v178, v269);
          v131 = v252;

          *(v174 + 14) = v179;
          _os_log_impl(&dword_2324C0000, v169, v170, "Removing value for key %s from device %s", v174, 0x16u);
          swift_arrayDestroy();
          v180 = v175;
          v1 = v254;
          MEMORY[0x238386450](v180, -1, -1);
          v181 = v174;
          v147 = v253;
          MEMORY[0x238386450](v181, -1, -1);
        }

        else
        {

          (*v259)(v172, v173);
        }

        if (*v147 == v167 && v147[1] == v168 || (sub_232546628() & 1) != 0)
        {
          v164 = v1[78];
          v165 = v1[76];
          v166 = v1[74];

          v255(v165, 1, 1, v164);
          sub_2324F503C(v165, v166 + v131[7]);
        }

        else
        {
          if (*v251 == v167 && v251[1] == v168 || (sub_232546628() & 1) != 0)
          {
            v182 = v1[74];

            v183 = v131[8];
          }

          else
          {
            if ((*v245 != v167 || v245[1] != v168) && (sub_232546628() & 1) == 0)
            {
              if (*v237 == v167 && v237[1] == v168 || (sub_232546628() & 1) != 0)
              {
                v187 = v1[74];

                v188 = (v187 + v131[10]);
                v189 = v188[1];
                *v188 = 0;
                v188[1] = 0;
              }

              else if (*v235 == v167 && v235[1] == v168 || (sub_232546628() & 1) != 0)
              {
                v190 = v1[74];

                v191 = v190 + v131[14];
                *v191 = 0;
                *(v191 + 2) = 1;
              }

              else
              {

                v192 = sub_232545888();
                v193 = sub_2325461F8();

                if (os_log_type_enabled(v192, v193))
                {
                  v194 = swift_slowAlloc();
                  v195 = swift_slowAlloc();
                  v269[0] = v195;
                  *v194 = 136315138;
                  v196 = sub_2324C2220(v167, v168, v269);

                  *(v194 + 4) = v196;
                  _os_log_impl(&dword_2324C0000, v192, v193, "Unhandled removal key: %s", v194, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v195);
                  v197 = v195;
                  v147 = v253;
                  MEMORY[0x238386450](v197, -1, -1);
                  MEMORY[0x238386450](v194, -1, -1);
                }

                else
                {
                }
              }

              goto LABEL_96;
            }

            v182 = v1[74];

            v183 = v131[9];
          }

          v184 = (v182 + v183);
          v185 = *v184;
          v186 = v184[1];
          *v184 = xmmword_232547F00;
          sub_2324DB438(v185, v186);
        }

LABEL_96:
        v163 = v264 + 2;
        v161 = v267 - 1;
      }

      while (v267 != 1);
    }

    v198 = sub_232545888();
    v199 = sub_232546208();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = v1[74];
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v269[0] = v202;
      *v201 = 136315138;
      swift_beginAccess();
      v203 = sub_2324F6270();
      v205 = sub_2324C2220(v203, v204, v269);

      *(v201 + 4) = v205;
      _os_log_impl(&dword_2324C0000, v198, v199, "Device from dictionary: %s", v201, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v202);
      MEMORY[0x238386450](v202, -1, -1);
      MEMORY[0x238386450](v201, -1, -1);
    }

    v206 = v1[74];
    v207 = v1[73];
    swift_beginAccess();
    sub_2324CE250(v206, v207);
    v208 = v244;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_2324E1E80(0, v244[2] + 1, 1, v244);
    }

    v210 = v208[2];
    v209 = v208[3];
    if (v210 >= v209 >> 1)
    {
      v208 = sub_2324E1E80(v209 > 1, v210 + 1, 1, v208);
    }

    v211 = v1[82];
    v212 = v1[78];
    v213 = v1[77];
    v214 = v1[74];
    v215 = v1[73];
    sub_2324DB438(v247, v249);
    sub_2324DB438(v248, v250);
    (*v259)(v211, v212);
    v43 = v208;
    v208[2] = v210 + 1;
    sub_23251FBDC(v215, v208 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v210, type metadata accessor for NDFDevice);
    sub_23251FC44(v214, type metadata accessor for NDFDevice);
    sub_2324C28AC(v213, &unk_27DD932E0, qword_2325472E0);
    v45 = v232 + 64;
    v42 = v242;
    v37 = v243;
  }

  v220 = sub_232545888();
  v221 = sub_2325461E8();
  if (os_log_type_enabled(v220, v221))
  {
    v222 = swift_slowAlloc();
    *v222 = 134217984;
    *(v222 + 4) = v244[2];

    _os_log_impl(&dword_2324C0000, v220, v221, "About to process %ld changed NDFDevice records", v222, 0xCu);
    MEMORY[0x238386450](v222, -1, -1);
  }

  else
  {
  }

  v223 = v1[68];

  v224 = *(*v223 + 464);
  v268 = (v224 + *v224);
  v225 = v224[1];
  v226 = swift_task_alloc();
  v1[88] = v226;
  *v226 = v1;
  v226[1] = sub_232517390;
  v227 = v1[68];

  (v268)(v244, 1, 1);
}

uint64_t sub_232517390()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v9 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = *(v2 + 544);
    v5 = sub_2325175D8;
  }

  else
  {
    v6 = *(v2 + 696);
    v7 = *(v2 + 544);

    v5 = sub_2325174B8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2325174B8()
{
  v1 = v0[68];
  sub_23251BB00();
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2325175D8()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[68];

  v5 = v1;
  v6 = sub_232545888();
  v7 = sub_2325461F8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[89];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2324C0000, v6, v7, "Error processing local device update: %@", v10, 0xCu);
    sub_2324C28AC(v11, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v11, -1, -1);
    MEMORY[0x238386450](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[68];
  sub_23251BB00();
  v15 = v0[85];
  v16 = v0[84];
  v17 = v0[83];
  v18 = v0[82];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[75];
  v24 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[69];

  v25 = v0[1];

  return v25();
}

uint64_t sub_232517800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v49 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935A8, &qword_2325482D0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - v9;
  v10 = sub_2325456F8();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v54 = &v49 - v17;
  v62 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935B0, &qword_2325482D8);
    v18 = sub_2325464B8();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = v62 + 64;
  v20 = 1 << *(v62 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v62 + 64);
  v23 = (v20 + 63) >> 6;
  v58 = (v60 + 56);
  v64 = (v60 + 32);
  v53 = v18 + 8;

  v25 = 0;
  v52 = v16;
  v51 = v19;
  v50 = v23;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v23)
        {

          return v18;
        }

        v22 = *(v19 + 8 * v27);
        ++v25;
        if (v22)
        {
          v25 = v27;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:
    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    v29 = v62;
    sub_23251FF88(*(v62 + 48) + 40 * v28, v70);
    sub_2324C26D8(*(v29 + 56) + 32 * v28, v71 + 8);
    v68[0] = v71[0];
    v68[1] = v71[1];
    v69 = v72;
    v67[0] = v70[0];
    v67[1] = v70[1];
    sub_23251FF88(v67, v66);
    v30 = v59;
    if (!swift_dynamicCast())
    {
      sub_2324C28AC(v67, &qword_27DD935B8, &qword_2325482E0);

      (*v58)(v30, 1, 1, v10);
      sub_2324C28AC(v30, &unk_27DD932E0, qword_2325472E0);
      goto LABEL_29;
    }

    (*v58)(v30, 0, 1, v10);
    v31 = *v64;
    (*v64)(v16, v30, v10);
    sub_2324C26D8(v68 + 8, v66);
    sub_2324C28AC(v67, &qword_27DD935B8, &qword_2325482E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93598, qword_2325481D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v61 = v65;
    v32 = v10;
    v33 = v57;
    v31(v57, v16, v32);
    v34 = v56;
    v35 = *(v56 + 48);
    v36 = v18;
    v37 = v55;
    v38 = v33;
    v10 = v32;
    v31(v55, v38, v32);
    *&v37[v35] = v61;
    v39 = *(v34 + 48);
    v40 = v54;
    v31(v54, v37, v10);
    v61 = *&v37[v39];
    v18 = v36;
    v31(v63, v40, v10);
    v41 = v36[5];
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    result = sub_232545F08();
    v42 = -1 << *(v36 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~v53[v43 >> 6]) == 0)
    {
      v45 = 0;
      v46 = (63 - v42) >> 6;
      v16 = v52;
      v19 = v51;
      v23 = v50;
      while (++v44 != v46 || (v45 & 1) == 0)
      {
        v47 = v44 == v46;
        if (v44 == v46)
        {
          v44 = 0;
        }

        v45 |= v47;
        v48 = v53[v44];
        if (v48 != -1)
        {
          v26 = __clz(__rbit64(~v48)) + (v44 << 6);
          goto LABEL_9;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v26 = __clz(__rbit64((-1 << v43) & ~v53[v43 >> 6])) | v43 & 0x7FFFFFFFFFFFFFC0;
    v16 = v52;
    v19 = v51;
    v23 = v50;
LABEL_9:
    v22 &= v22 - 1;
    *(v53 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v31)(v18[6] + *(v60 + 72) * v26, v63, v10);
    *(v18[7] + 8 * v26) = v61;
    ++v18[2];
  }

  (*(v60 + 8))(v16, v10);

LABEL_29:

  return 0;
}

uint64_t sub_232517F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2324E8668(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2324C26D8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2324E8668((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_23251806C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23251808C, v1, 0);
}

uint64_t sub_23251808C()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v3 = *(type metadata accessor for NDFDevice() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = xmmword_232547150;
  sub_2324CE250(v1, v6 + v5);
  v11 = (*v2 + 464);
  v12 = (*v11 + **v11);
  v7 = (*v11)[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_232518270;
  v9 = v0[3];

  return (v12)(v6, 0, 1);
}

uint64_t sub_232518270()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_2325183AC, v4, 0);
  }

  else
  {
    v5 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2325183AC()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v1;
  v5 = sub_232545888();
  v6 = sub_2325461F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2324C0000, v5, v6, "Error processing device update from DA: %@", v9, 0xCu);
    sub_2324C28AC(v10, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v10, -1, -1);
    MEMORY[0x238386450](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23251853C()
{
  v1 = *(**sub_2324C4D38() + 416);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v4 = (*(**(v0 + 16) + 328))(v3);
    *(v0 + 24) = v4;
    v5 = sub_232545888();
    v6 = sub_232546208();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v4 + 16);
      _os_log_impl(&dword_2324C0000, v5, v6, "About to trigger misconfig detection on all known devices (count: %ld)", v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v8 = *(v0 + 16);

    v9 = *(*v8 + 512);
    v18 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 32) = v11;
    *v11 = v0;
    v11[1] = sub_23251882C;
    v12 = *(v0 + 16);

    return v18(v4);
  }

  else
  {
    v14 = sub_232545888();
    v15 = sub_2325461E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2324C0000, v14, v15, "Skip misconfig detect: Not allowed on this platform", v16, 2u);
      MEMORY[0x238386450](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_23251882C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23251893C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_232545688();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = sub_2325456F8();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = type metadata accessor for NDFDevice();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v2[21] = *(v12 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232518B80, v1, 0);
}

uint64_t sub_232518B80()
{
  v122 = v0;
  v1 = sub_2324C4D38();
  *(v0 + 216) = v1;
  v2 = *(**v1 + 416);

  LOBYTE(v2) = v2(v3);

  if ((v2 & 1) == 0)
  {
    v93 = *(v0 + 56) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v94 = sub_232545888();
    v95 = sub_2325461E8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2324C0000, v94, v95, "Skip misconfig detect: Not allowed on this platform", v96, 2u);
      MEMORY[0x238386450](v96, -1, -1);
    }

    goto LABEL_37;
  }

  v4 = *(*(v0 + 48) + 16);
  *(v0 + 224) = v4;
  if (!v4)
  {
LABEL_37:
    v98 = *(v0 + 200);
    v97 = *(v0 + 208);
    v100 = *(v0 + 184);
    v99 = *(v0 + 192);
    v101 = *(v0 + 176);
    v102 = *(v0 + 144);
    v104 = *(v0 + 112);
    v103 = *(v0 + 120);
    v106 = *(v0 + 96);
    v105 = *(v0 + 104);
    v116 = *(v0 + 72);
    v119 = *(v0 + 64);

    v107 = *(v0 + 8);

    return v107();
  }

  v5 = 0;
  v6 = *(v0 + 160);
  *(v0 + 232) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  *(v0 + 264) = *(v6 + 80);
  *(v0 + 240) = *(v6 + 72);
  while (1)
  {
    *(v0 + 248) = v5;
    v7 = *(v0 + 208);
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 120);
    sub_2324CE250(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 240) * v5, v7);
    sub_2324CF3C4(v7 + *(v8 + 28), v11, &unk_27DD932E0, qword_2325472E0);
    v12 = *(v10 + 48);
    if (v12(v11, 1, v9) != 1)
    {
      break;
    }

    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 176);
    v16 = *(v0 + 56);
    sub_2324C28AC(*(v0 + 120), &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v14, v15);
    v17 = sub_232545888();
    v18 = sub_2325461F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 208);
    v21 = *(v0 + 176);
    if (v19)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v121 = v23;
      *v22 = 136315138;
      v24 = sub_2324F6270();
      v26 = v25;
      sub_23251FC44(v21, type metadata accessor for NDFDevice);
      v27 = sub_2324C2220(v24, v26, &v121);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2324C0000, v17, v18, "Skipping device update for device %s as it lacks a groupUUID", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x238386450](v23, -1, -1);
      MEMORY[0x238386450](v22, -1, -1);
    }

    else
    {

      sub_23251FC44(v21, type metadata accessor for NDFDevice);
    }

    sub_23251FC44(v20, type metadata accessor for NDFDevice);
LABEL_6:
    v5 = *(v0 + 248) + 1;
    if (v5 == *(v0 + 224))
    {
      goto LABEL_37;
    }
  }

  v29 = *(v0 + 136);
  v28 = *(v0 + 144);
  v30 = *(v0 + 128);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 56);
  (*(v29 + 32))(v28, *(v0 + 120), v30);
  (*(v29 + 16))(v32, v28, v30);
  (*(v29 + 56))(v32, 0, 1, v30);
  (*(*v33 + 352))(v32);
  sub_2324C28AC(v32, &unk_27DD932E0, qword_2325472E0);
  if (v12(v31, 1, v30) == 1)
  {
    sub_2324C28AC(*(v0 + 112), &unk_27DD932E0, qword_2325472E0);
    v34 = 0xE300000000000000;
    v35 = 7104878;
  }

  else
  {
    v36 = *(v0 + 128);
    v37 = *(v0 + 136);
    v38 = *(v0 + 112);
    v35 = sub_2325456A8();
    v34 = v39;
    (*(v37 + 8))(v38, v36);
  }

  v40 = *(v0 + 232);
  v41 = *(v0 + 208);
  v42 = *(v0 + 192);
  v43 = *(v0 + 56);
  sub_2324CE250(v41, *(v0 + 200));
  sub_2324CE250(v41, v42);

  v44 = sub_232545888();
  v45 = sub_2325461D8();

  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 192);
  v48 = *(v0 + 200);
  if (v46)
  {
    v114 = *(v0 + 152);
    v117 = v45;
    v49 = *(v0 + 128);
    v50 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v121 = v115;
    *v50 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v51 = sub_232546608();
    v53 = v52;
    sub_23251FC44(v48, type metadata accessor for NDFDevice);
    v54 = sub_2324C2220(v51, v53, &v121);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v55 = sub_2324C2220(v35, v34, &v121);

    *(v50 + 14) = v55;
    *(v50 + 22) = 2080;
    v56 = *(v47 + *(v114 + 48));
    v57 = 1702195828;
    if ((v56 & 1) == 0)
    {
      v57 = 0x65736C6166;
    }

    v58 = 0xE500000000000000;
    if (v56)
    {
      v58 = 0xE400000000000000;
    }

    if (v56 == 2)
    {
      v59 = 7104878;
    }

    else
    {
      v59 = v57;
    }

    if (v56 == 2)
    {
      v60 = 0xE300000000000000;
    }

    else
    {
      v60 = v58;
    }

    sub_23251FC44(v47, type metadata accessor for NDFDevice);
    v61 = sub_2324C2220(v59, v60, &v121);

    *(v50 + 24) = v61;
    _os_log_impl(&dword_2324C0000, v44, v117, "Attempt triggering misconfig detection for DOI: %s, primary: %s, canReach: %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v115, -1, -1);
    MEMORY[0x238386450](v50, -1, -1);
  }

  else
  {

    sub_23251FC44(v47, type metadata accessor for NDFDevice);
    v62 = sub_23251FC44(v48, type metadata accessor for NDFDevice);
  }

  v63 = *(v0 + 216);
  v65 = *(v0 + 88);
  v64 = *(v0 + 96);
  v66 = *(v0 + 80);
  (*(**(v0 + 56) + 240))(v62);
  sub_232545638();
  v68 = v67;
  (*(v65 + 8))(v64, v66);
  v69 = *(**v63 + 464);

  v71 = v69(v70);

  v72 = v68 + v71;
  if (v72 > 0.0)
  {
    v73 = *(v0 + 208);
    v74 = *(v0 + 184);
    v118 = *(v0 + 168);
    v75 = *(v0 + 64);
    v76 = *(v0 + 72);
    v77 = *(v0 + 56);
    v78 = (*(v0 + 264) + 56) & ~*(v0 + 264);
    v79 = sub_2325460F8();
    v80 = *(v79 - 8);
    (*(v80 + 56))(v76, 1, 1, v79);
    sub_2324CE250(v73, v74);
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    *(v81 + 32) = v77;
    *(v81 + 40) = v72;
    *(v81 + 48) = v68;
    sub_23251FBDC(v74, v81 + v78, type metadata accessor for NDFDevice);
    sub_2324CF3C4(v76, v75, &qword_27DD93630, &qword_232547550);
    LODWORD(v73) = (*(v80 + 48))(v75, 1, v79);

    v82 = *(v0 + 64);
    if (v73 == 1)
    {
      sub_2324C28AC(*(v0 + 64), &qword_27DD93630, &qword_232547550);
    }

    else
    {
      sub_2325460E8();
      (*(v80 + 8))(v82, v79);
    }

    v83 = *(v81 + 16);
    v84 = *(v81 + 24);
    swift_unknownObjectRetain();

    if (v83)
    {
      swift_getObjectType();
      v85 = sub_232546098();
      v87 = v86;
      swift_unknownObjectRelease();
      if (v87 | v85)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v85;
        *(v0 + 40) = v87;
      }
    }

    v88 = *(v0 + 208);
    v90 = *(v0 + 136);
    v89 = *(v0 + 144);
    v91 = *(v0 + 128);
    v92 = *(v0 + 72);
    swift_task_create();
    sub_2324C28AC(v92, &qword_27DD93630, &qword_232547550);
    (*(v90 + 8))(v89, v91);
    sub_23251FC44(v88, type metadata accessor for NDFDevice);

    goto LABEL_6;
  }

  v109 = *(**(v0 + 56) + 520);
  v120 = (v109 + *v109);
  v110 = v109[1];
  v111 = swift_task_alloc();
  *(v0 + 256) = v111;
  *v111 = v0;
  v111[1] = sub_232519794;
  v112 = *(v0 + 208);
  v113 = *(v0 + 56);

  return v120(v112);
}

uint64_t sub_232519794()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2325198A4, v2, 0);
}

uint64_t sub_2325198A4()
{
  v114 = v0;
  v1 = *(v0 + 208);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  sub_23251FC44(v1, type metadata accessor for NDFDevice);
  v2 = *(v0 + 248) + 1;
  if (v2 == *(v0 + 224))
  {
LABEL_2:
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = *(v0 + 144);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v107 = *(v0 + 72);
    v109 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13();
  }

  while (1)
  {
    *(v0 + 248) = v2;
    v15 = *(v0 + 208);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    sub_2324CE250(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 240) * v2, v15);
    sub_2324CF3C4(v15 + *(v16 + 28), v19, &unk_27DD932E0, qword_2325472E0);
    v20 = *(v18 + 48);
    if (v20(v19, 1, v17) != 1)
    {
      break;
    }

    v21 = *(v0 + 232);
    v22 = *(v0 + 208);
    v23 = *(v0 + 176);
    v24 = *(v0 + 56);
    sub_2324C28AC(*(v0 + 120), &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v22, v23);
    v25 = sub_232545888();
    v26 = sub_2325461F8();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 208);
    v29 = *(v0 + 176);
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v113 = v31;
      *v30 = 136315138;
      v32 = sub_2324F6270();
      v34 = v33;
      sub_23251FC44(v29, type metadata accessor for NDFDevice);
      v35 = sub_2324C2220(v32, v34, &v113);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2324C0000, v25, v26, "Skipping device update for device %s as it lacks a groupUUID", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x238386450](v31, -1, -1);
      MEMORY[0x238386450](v30, -1, -1);
    }

    else
    {

      sub_23251FC44(v29, type metadata accessor for NDFDevice);
    }

    sub_23251FC44(v28, type metadata accessor for NDFDevice);
LABEL_8:
    v2 = *(v0 + 248) + 1;
    if (v2 == *(v0 + 224))
    {
      goto LABEL_2;
    }
  }

  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v38 = *(v0 + 128);
  v40 = *(v0 + 104);
  v39 = *(v0 + 112);
  v41 = *(v0 + 56);
  (*(v37 + 32))(v36, *(v0 + 120), v38);
  (*(v37 + 16))(v40, v36, v38);
  (*(v37 + 56))(v40, 0, 1, v38);
  (*(*v41 + 352))(v40);
  sub_2324C28AC(v40, &unk_27DD932E0, qword_2325472E0);
  if (v20(v39, 1, v38) == 1)
  {
    sub_2324C28AC(*(v0 + 112), &unk_27DD932E0, qword_2325472E0);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    v44 = *(v0 + 128);
    v45 = *(v0 + 136);
    v46 = *(v0 + 112);
    v43 = sub_2325456A8();
    v42 = v47;
    (*(v45 + 8))(v46, v44);
  }

  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v50 = *(v0 + 192);
  v51 = *(v0 + 56);
  sub_2324CE250(v49, *(v0 + 200));
  sub_2324CE250(v49, v50);

  v52 = sub_232545888();
  v53 = sub_2325461D8();

  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 192);
  v56 = *(v0 + 200);
  if (v54)
  {
    v106 = *(v0 + 152);
    v110 = v53;
    v57 = *(v0 + 128);
    v58 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v113 = v108;
    *v58 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v59 = sub_232546608();
    v61 = v60;
    sub_23251FC44(v56, type metadata accessor for NDFDevice);
    v62 = sub_2324C2220(v59, v61, &v113);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = sub_2324C2220(v43, v42, &v113);

    *(v58 + 14) = v63;
    *(v58 + 22) = 2080;
    v64 = *(v55 + *(v106 + 48));
    v65 = 1702195828;
    if ((v64 & 1) == 0)
    {
      v65 = 0x65736C6166;
    }

    v66 = 0xE500000000000000;
    if (v64)
    {
      v66 = 0xE400000000000000;
    }

    if (v64 == 2)
    {
      v67 = 7104878;
    }

    else
    {
      v67 = v65;
    }

    if (v64 == 2)
    {
      v68 = 0xE300000000000000;
    }

    else
    {
      v68 = v66;
    }

    sub_23251FC44(v55, type metadata accessor for NDFDevice);
    v69 = sub_2324C2220(v67, v68, &v113);

    *(v58 + 24) = v69;
    _os_log_impl(&dword_2324C0000, v52, v110, "Attempt triggering misconfig detection for DOI: %s, primary: %s, canReach: %s", v58, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v108, -1, -1);
    MEMORY[0x238386450](v58, -1, -1);
  }

  else
  {

    sub_23251FC44(v55, type metadata accessor for NDFDevice);
    v70 = sub_23251FC44(v56, type metadata accessor for NDFDevice);
  }

  v71 = *(v0 + 216);
  v73 = *(v0 + 88);
  v72 = *(v0 + 96);
  v74 = *(v0 + 80);
  (*(**(v0 + 56) + 240))(v70);
  sub_232545638();
  v76 = v75;
  (*(v73 + 8))(v72, v74);
  v77 = *(**v71 + 464);

  v79 = v77(v78);

  v80 = v76 + v79;
  if (v80 > 0.0)
  {
    v81 = *(v0 + 208);
    v82 = *(v0 + 184);
    v111 = *(v0 + 168);
    v83 = *(v0 + 64);
    v84 = *(v0 + 72);
    v85 = *(v0 + 56);
    v86 = (*(v0 + 264) + 56) & ~*(v0 + 264);
    v87 = sub_2325460F8();
    v88 = *(v87 - 8);
    (*(v88 + 56))(v84, 1, 1, v87);
    sub_2324CE250(v81, v82);
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    *(v89 + 24) = 0;
    *(v89 + 32) = v85;
    *(v89 + 40) = v80;
    *(v89 + 48) = v76;
    sub_23251FBDC(v82, v89 + v86, type metadata accessor for NDFDevice);
    sub_2324CF3C4(v84, v83, &qword_27DD93630, &qword_232547550);
    LODWORD(v81) = (*(v88 + 48))(v83, 1, v87);

    v90 = *(v0 + 64);
    if (v81 == 1)
    {
      sub_2324C28AC(*(v0 + 64), &qword_27DD93630, &qword_232547550);
    }

    else
    {
      sub_2325460E8();
      (*(v88 + 8))(v90, v87);
    }

    v91 = *(v89 + 16);
    v92 = *(v89 + 24);
    swift_unknownObjectRetain();

    if (v91)
    {
      swift_getObjectType();
      v93 = sub_232546098();
      v95 = v94;
      swift_unknownObjectRelease();
      if (v95 | v93)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v93;
        *(v0 + 40) = v95;
      }
    }

    v96 = *(v0 + 208);
    v98 = *(v0 + 136);
    v97 = *(v0 + 144);
    v99 = *(v0 + 128);
    v100 = *(v0 + 72);
    swift_task_create();
    sub_2324C28AC(v100, &qword_27DD93630, &qword_232547550);
    (*(v98 + 8))(v97, v99);
    sub_23251FC44(v96, type metadata accessor for NDFDevice);

    goto LABEL_8;
  }

  v101 = *(**(v0 + 56) + 520);
  v112 = (v101 + *v101);
  v102 = v101[1];
  v103 = swift_task_alloc();
  *(v0 + 256) = v103;
  *v103 = v0;
  v103[1] = sub_232519794;
  v104 = *(v0 + 208);
  v105 = *(v0 + 56);

  return v112(v104);
}

uint64_t sub_23251A404(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a7;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 16) = a6;
  v8 = sub_232546458();
  *(v7 + 48) = v8;
  v9 = *(v8 - 8);
  *(v7 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23251A4CC, 0, 0);
}

uint64_t sub_23251A4CC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = -v4;
    _os_log_impl(&dword_2324C0000, v2, v3, "Waiting for %f sec before triggering misconfig detection, elapsedSincePrimaryChanged: %f sec", v6, 0x16u);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v7 = *(v0 + 64);
  v8 = *(v0 + 24);

  v9 = sub_232546768();
  v11 = v10;
  sub_232546698();
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_23251A658;
  v13 = *(v0 + 64);

  return sub_23251CB30(v9, v11, 0, 0, 1);
}

uint64_t sub_23251A658()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);

    return MEMORY[0x2822009F8](sub_23251A9B8, 0, 0);
  }

  else
  {
    v4 = v3[2];
    (*(v3[7] + 8))(v3[8], v3[6]);
    v10 = (*v4 + 520);
    v11 = (*v10 + **v10);
    v5 = (*v10)[1];
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v3;
    v6[1] = sub_23251A8A4;
    v7 = v3[2];
    v8 = v3[5];

    return v11(v8);
  }
}

uint64_t sub_23251A8A4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23251A9B8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23251AA1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for NDFDevice();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_2325456F8();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23251ABF0, v1, 0);
}

uint64_t sub_23251ABF0()
{
  v148 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_2324CF3C4(v0[2] + *(v0[5] + 28), v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    v5 = v0[2];
    v6 = v0[3];
    sub_2324C28AC(v0[14], &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v5, v4);
    v7 = sub_232545888();
    v8 = sub_2325461F8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[7];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v147 = v12;
      *v11 = 136315138;
      v13 = sub_2324F6270();
      v15 = v14;
      sub_23251FC44(v10, type metadata accessor for NDFDevice);
      v16 = sub_2324C2220(v13, v15, &v147);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2324C0000, v7, v8, "Skip misconfig detect: Cannot get groupUUID for target %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x238386450](v12, -1, -1);
      MEMORY[0x238386450](v11, -1, -1);

      goto LABEL_41;
    }

    v42 = v10;
LABEL_40:
    sub_23251FC44(v42, type metadata accessor for NDFDevice);
    goto LABEL_41;
  }

  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  v20 = v0[13];
  v21 = v0[5];
  v22 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  (*(v18 + 32))(v17, v0[14], v19);
  (*(v18 + 16))(v20, v17, v19);
  (*(v18 + 56))(v20, 0, 1, v19);
  (*(*v24 + 344))(v20);
  sub_2324C28AC(v20, &unk_27DD932E0, qword_2325472E0);
  v25 = (*(v22 + 48))(v23, 1, v21);
  v26 = v0[2];
  if (v25 == 1)
  {
    v27 = v0[8];
    v28 = v0[3];
    sub_2324C28AC(v0[4], &qword_27DD93578, &unk_2325480F0);
    sub_2324CE250(v26, v27);
    v29 = sub_232545888();
    v30 = sub_2325461F8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[16];
    v33 = v0[17];
    v34 = v0[15];
    v35 = v0[8];
    if (v31)
    {
      v143 = v0[17];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v147 = v37;
      *v36 = 136315138;
      v38 = sub_2324F6270();
      v40 = v39;
      sub_23251FC44(v35, type metadata accessor for NDFDevice);
      v41 = sub_2324C2220(v38, v40, &v147);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2324C0000, v29, v30, "Skip misconfig detect: Cannot get primary for target %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x238386450](v37, -1, -1);
      MEMORY[0x238386450](v36, -1, -1);

      (*(v32 + 8))(v143, v34);
    }

    else
    {

      sub_23251FC44(v35, type metadata accessor for NDFDevice);
      (*(v32 + 8))(v33, v34);
    }

LABEL_41:
    v126 = v0[17];
    v127 = v0[13];
    v128 = v0[14];
    v130 = v0[11];
    v129 = v0[12];
    v132 = v0[9];
    v131 = v0[10];
    v134 = v0[7];
    v133 = v0[8];
    v135 = v0[4];

    v136 = v0[1];

    return v136();
  }

  v43 = v0[5];
  sub_23251FBDC(v0[4], v0[12], type metadata accessor for NDFDevice);
  v44 = *(v26 + *(v43 + 48));
  if (v44 == 2)
  {
    v45 = v0[12];
    v46 = v0[9];
    v47 = v0[3];
    sub_2324CE250(v0[2], v0[10]);
    sub_2324CE250(v45, v46);
    v48 = sub_232545888();
    v49 = sub_2325461D8();
    v50 = os_log_type_enabled(v48, v49);
    v52 = v0[16];
    v51 = v0[17];
    v53 = v0[15];
    v55 = v0[9];
    v54 = v0[10];
    if (v50)
    {
      v144 = v0[15];
      v56 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v147 = v140;
      *v56 = 136315394;
      v57 = sub_2324F6270();
      v59 = v58;
      sub_23251FC44(v54, type metadata accessor for NDFDevice);
      v60 = sub_2324C2220(v57, v59, &v147);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = sub_2324F6270();
      v63 = v62;
      sub_23251FC44(v55, type metadata accessor for NDFDevice);
      v64 = sub_2324C2220(v61, v63, &v147);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_2324C0000, v48, v49, "Skip misconfig detect: No valid reachability state for target %s to primary %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v140, -1, -1);
      MEMORY[0x238386450](v56, -1, -1);

      (*(v52 + 8))(v51, v144);
    }

    else
    {

      sub_23251FC44(v55, type metadata accessor for NDFDevice);
      sub_23251FC44(v54, type metadata accessor for NDFDevice);
      (*(v52 + 8))(v51, v53);
    }

LABEL_39:
    v42 = v0[12];
    goto LABEL_40;
  }

  v65 = sub_2324C8418();
  if (!*v65)
  {
    v86 = v0[3];
    sub_2324CE250(v0[2], v0[11]);
    v87 = sub_232545888();
    v88 = sub_2325461F8();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v0[16];
    v91 = v0[17];
    v92 = v0[15];
    v93 = v0[11];
    if (v89)
    {
      v146 = v0[17];
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v147 = v95;
      *v94 = 136315138;
      v96 = sub_2324F6270();
      v98 = v97;
      sub_23251FC44(v93, type metadata accessor for NDFDevice);
      v99 = sub_2324C2220(v96, v98, &v147);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_2324C0000, v87, v88, "Skip misconfig detect: Cannot get detection manager, target %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x238386450](v95, -1, -1);
      MEMORY[0x238386450](v94, -1, -1);

      (*(v90 + 8))(v146, v92);
    }

    else
    {

      sub_23251FC44(v93, type metadata accessor for NDFDevice);
      (*(v90 + 8))(v91, v92);
    }

    goto LABEL_39;
  }

  v66 = v0[12];
  v67 = v0[5];
  v68 = v0[2];
  v69 = *(*v65 + 136);
  v0[18] = v69;
  v70 = *(v67 + 32);
  v71 = *(v67 + 36);
  v73 = *(v68 + v70);
  v72 = *(v68 + v70 + 8);
  v74 = (v68 + v71);
  v75 = *v74;
  v76 = v74[1];
  v77 = (v66 + v70);
  v78 = *v77;
  v79 = v77[1];
  v80 = *(v66 + v71 + 8);
  v141 = v72;
  v145 = *(v66 + v71);
  if (v72 >> 60 == 15 && v76 >> 60 == 15 || v79 >> 60 == 15 && v80 >> 60 == 15)
  {
    v137 = v72 >> 60;
    v138 = v0[3];

    sub_2324DB3D0(v73, v141);
    sub_2324DB3D0(v75, v76);
    sub_2324DB3D0(v78, v79);
    sub_2324DB3D0(v145, v80);
    v139 = sub_232545888();
    v81 = sub_232546208();
    sub_2324DB438(v73, v141);
    sub_2324DB438(v75, v76);
    sub_2324DB438(v78, v79);
    sub_2324DB438(v145, v80);
    if (os_log_type_enabled(v139, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v147 = v83;
      *v82 = 136315906;
      if (v137 <= 0xE)
      {
        v85 = sub_2325455B8();
        v84 = v109;
      }

      else
      {
        v84 = 0xE300000000000000;
        v85 = 7104878;
      }

      v110 = sub_2324C2220(v85, v84, &v147);

      *(v82 + 4) = v110;
      *(v82 + 12) = 2080;
      if (v76 >> 60 == 15)
      {
        v111 = 0xE300000000000000;
        v112 = 7104878;
      }

      else
      {
        v112 = sub_2325455B8();
        v111 = v113;
      }

      v114 = sub_2324C2220(v112, v111, &v147);

      *(v82 + 14) = v114;
      *(v82 + 22) = 2080;
      if (v79 >> 60 == 15)
      {
        v115 = 0xE300000000000000;
        v116 = 7104878;
      }

      else
      {
        v116 = sub_2325455B8();
        v115 = v117;
      }

      v118 = sub_2324C2220(v116, v115, &v147);

      *(v82 + 24) = v118;
      *(v82 + 32) = 2080;
      if (v80 >> 60 == 15)
      {
        v119 = 0xE300000000000000;
        v120 = 7104878;
      }

      else
      {
        v120 = sub_2325455B8();
        v119 = v121;
      }

      v123 = v0[16];
      v122 = v0[17];
      v124 = v0[15];
      v125 = sub_2324C2220(v120, v119, &v147);

      *(v82 + 34) = v125;
      _os_log_impl(&dword_2324C0000, v139, v81, "Skip misconfig detect: Target (v4: %s, v6: %s) and Primary (v4: %s, v6: %s) have no comparable network signatures", v82, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x238386450](v83, -1, -1);
      MEMORY[0x238386450](v82, -1, -1);

      (*(v123 + 8))(v122, v124);
    }

    else
    {
      v101 = v0[16];
      v100 = v0[17];
      v102 = v0[15];

      (*(v101 + 8))(v100, v102);
    }

    goto LABEL_39;
  }

  v103 = *(*v69 + 120);

  v142 = (v103 + *v103);
  v104 = v103[1];
  v105 = swift_task_alloc();
  v0[19] = v105;
  *v105 = v0;
  v105[1] = sub_23251B8D0;
  v106 = v0[12];
  v107 = v0[2];

  return (v142)(v107, v106, v44 & 1);
}

uint64_t sub_23251B8D0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23251B9E0, v2, 0);
}

uint64_t sub_23251B9E0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[12];

  (*(v4 + 8))(v2, v3);
  sub_23251FC44(v5, type metadata accessor for NDFDevice);
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

void sub_23251BB00()
{
  v1 = v0;
  v2 = type metadata accessor for NDFDevice();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - v8;
  v37 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v9 = sub_232545888();
  v10 = sub_2325461E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2324C0000, v9, v10, "All devices >", v11, 2u);
    MEMORY[0x238386450](v11, -1, -1);
  }

  v12 = (*(*v1 + 168))();
  v14 = 0;
  v16 = v12 + 64;
  v15 = *(v12 + 64);
  v39 = v12;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  *&v13 = 136315138;
  v34 = v13;
  v35 = v3;
  v36 = v1;
  v40 = v7;
  if ((v18 & v15) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v21);
    ++v14;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v23 = v38;
        sub_2324CE250(*(v39 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v38);
        sub_23251FBDC(v23, v7, type metadata accessor for NDFDevice);
        v24 = sub_232545888();
        v25 = sub_2325461E8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v41 = v27;
          *v26 = v34;
          v28 = sub_2324F6270();
          v30 = v29;
          sub_23251FC44(v40, type metadata accessor for NDFDevice);
          v31 = sub_2324C2220(v28, v30, &v41);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_2324C0000, v24, v25, "   Known device : %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          v32 = v27;
          v3 = v35;
          MEMORY[0x238386450](v32, -1, -1);
          v33 = v26;
          v7 = v40;
          MEMORY[0x238386450](v33, -1, -1);

          v14 = v21;
          if (!v19)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_23251FC44(v7, type metadata accessor for NDFDevice);
          v14 = v21;
          if (!v19)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v21 = v14;
      }
    }
  }

  __break(1u);
}

void sub_23251BE80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93580, qword_232548148);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v77 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = (v74 - v6);
  MEMORY[0x28223BE20](v5);
  v88 = v74 - v7;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  swift_retain_n();
  v85 = v13;
  v87 = v0;
  v14 = sub_232545888();
  v15 = sub_232546208();
  v16 = os_log_type_enabled(v14, v15);
  v86 = v8;
  v83 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v89[0] = v18;
    *v17 = 136315394;
    v19 = sub_2324C1C94();
    swift_beginAccess();
    if ((*(v9 + 48))(v19, 1, v8))
    {
      v20 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E75;
    }

    else
    {
      (*(v9 + 16))(v12, v19, v8);
      v25 = sub_2325456A8();
      v20 = v26;
      (*(v83 + 8))(v12, v86);
      v21 = v25;
      v9 = v83;
    }

    v27 = sub_2324C2220(v21, v20, v89);

    *(v17 + 4) = v27;
    *(v17 + 12) = 2048;
    v24 = v87 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v29 = *((*(*v87 + 168))(v28) + 16);

    *(v17 + 14) = v29;

    _os_log_impl(&dword_2324C0000, v14, v15, "\tThis Device IDS ID: %s, %ld known devices", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x238386450](v18, -1, -1);
    MEMORY[0x238386450](v17, -1, -1);
  }

  else
  {

    v22 = v87;

    v24 = v22 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  }

  v30 = *v87;
  v74[1] = v24;
  v31 = (*(v30 + 168))(v23);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  v81 = v9 + 16;
  v76 = (v9 + 8);
  v84 = v31;

  v37 = 0;
  *&v38 = 136315138;
  v75 = v38;
  v82 = v1;
  v39 = v80;
  v40 = v86;
  while (v35)
  {
    v41 = v1;
LABEL_18:
    v43 = __clz(__rbit64(v35)) | (v37 << 6);
    v44 = v84;
    v45 = *(v84 + 48) + *(v9 + 72) * v43;
    v46 = *(v9 + 16);
    v47 = v88;
    v46(v88, v45, v40);
    v48 = *(v44 + 56);
    v49 = v48 + *(*(type metadata accessor for NDFDevice() - 8) + 72) * v43;
    sub_2324CE250(v49, v47 + *(v41 + 48));
    sub_2324CF3C4(v47, v39, &qword_27DD93580, qword_232548148);
    v50 = v39;
    v51 = sub_232545888();
    v52 = sub_232546208();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v79 = v53;
      v80 = swift_slowAlloc();
      v89[0] = v80;
      *v53 = v75;
      v54 = v77;
      sub_2324CF3C4(v50, v77, &qword_27DD93580, qword_232548148);
      v55 = *(v41 + 48);
      v78 = v52;
      v56 = v50;
      v57 = sub_2324F6270();
      v59 = v58;
      sub_2324C28AC(v56, &qword_27DD93580, qword_232548148);
      sub_23251FC44(v54 + v55, type metadata accessor for NDFDevice);
      (*v76)(v54, v86);
      v60 = sub_2324C2220(v57, v59, v89);

      v61 = v79;
      *(v79 + 1) = v60;
      _os_log_impl(&dword_2324C0000, v51, v78, "\t\t%s", v61, 0xCu);
      v62 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x238386450](v62, -1, -1);
      v40 = v86;
      MEMORY[0x238386450](v61, -1, -1);

      v39 = v56;
    }

    else
    {

      sub_2324C28AC(v50, &qword_27DD93580, qword_232548148);
      v39 = v50;
      v40 = v86;
    }

    v35 &= v35 - 1;
    sub_2324C28AC(v88, &qword_27DD93580, qword_232548148);
    v1 = v82;
    v9 = v83;
  }

  while (1)
  {
    v42 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    if (v42 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v42);
    ++v37;
    if (v35)
    {
      v41 = v1;
      v37 = v42;
      goto LABEL_18;
    }
  }

  v63 = sub_232545888();
  v64 = sub_232546208();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v89[0] = v66;
    *v65 = 134218242;
    v67 = *(*v87 + 192);
    v68 = *(v67() + 16);

    *(v65 + 4) = v68;

    *(v65 + 12) = 2080;
    (v67)(v69);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    v70 = sub_232545EF8();
    v72 = v71;

    v73 = sub_2324C2220(v70, v72, v89);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_2324C0000, v63, v64, "\t%ld known HomeKit Home(s), [Home ID : Primary Resident ID] => %s", v65, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x238386450](v66, -1, -1);
    MEMORY[0x238386450](v65, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23251C690()
{
  v3 = *(*v0 + 224);

  return v3(v1);
}

void sub_23251C6E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - v11;
  v13 = sub_2325456F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, v13);
  sub_2324CE250(a1, v12);
  (*(v5 + 56))(v12, 0, 1, v4);
  v18 = (*(*v1 + 184))(v34);
  sub_2324FCF78(v12, v16);
  v18(v34, 0);
  sub_2324CE250(a1, v8);

  v19 = sub_232545888();
  v20 = sub_2325461E8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136315394;
    v33[1] = v4;
    v23 = MEMORY[0x277CC95F0];
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v24 = sub_232546608();
    v26 = v25;
    sub_23251FC44(v8, type metadata accessor for NDFDevice);
    v27 = sub_2324C2220(v24, v26, v34);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    (*(*v2 + 168))(v28);
    sub_23251FF40(&qword_2814D62B0, v23);
    v29 = sub_232545EF8();
    v31 = v30;

    v32 = sub_2324C2220(v29, v31, v34);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_2324C0000, v19, v20, "Remembered device with ID %s, all known devices: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v22, -1, -1);
    MEMORY[0x238386450](v21, -1, -1);
  }

  else
  {

    sub_23251FC44(v8, type metadata accessor for NDFDevice);
  }
}

uint64_t sub_23251CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_232546448();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23251CC30, 0, 0);
}

uint64_t sub_23251CC30()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_232546458();
  v7 = sub_23251FF40(&qword_27DD935A0, MEMORY[0x277D85928]);
  sub_232546678();
  sub_23251FF40(&unk_27DD93680, MEMORY[0x277D858F8]);
  sub_232546468();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23251CDC0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_23251CDC0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23251CF7C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_23251CF7C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23251CFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2324E6CD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23251E7D0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2325456F8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for NDFDevice();
    v22 = *(v15 - 8);
    sub_23251FBDC(v14 + *(v22 + 72) * v8, a2, type metadata accessor for NDFDevice);
    sub_23251DBF4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NDFDevice();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23251D184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2324E6CD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23251EB4C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2325456F8();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_23251DF38(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_2325456F8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23251D31C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NDFDevice();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D0, &unk_232548320);
  v48 = a2;
  result = sub_2325464A8();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23251FBDC(v31 + v32 * v28, v52, type metadata accessor for NDFDevice);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2324CE250(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      result = sub_232545F08();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_23251FBDC(v52, *(v16 + 56) + v32 * v24, type metadata accessor for NDFDevice);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23251D7A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C0, &qword_232548308);
  v49 = a2;
  result = sub_2325464A8();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      result = sub_232545F08();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

unint64_t sub_23251DBF4(int64_t a1, uint64_t a2)
{
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_232546398();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      v24 = sub_232545F08();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for NDFDevice() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23251DF38(int64_t a1, uint64_t a2)
{
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_232546398();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      v23 = sub_232545F08();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23251E238(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2324E6CD4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23251E7D0();
      goto LABEL_7;
    }

    sub_23251D31C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2324E6CD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23251E604(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for NDFDevice() - 8) + 72) * v15;

  return sub_23251EAE8(a1, v23);
}

uint64_t sub_23251E420(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2324E6CD4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23251EB4C();
      goto LABEL_9;
    }

    sub_23251D7A8(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_2324E6CD4(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_23251E6F4(v14, v11, a1, v23);
  }
}

uint64_t sub_23251E604(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NDFDevice();
  result = sub_23251FBDC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NDFDevice);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23251E6F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

char *sub_23251E7D0()
{
  v1 = v0;
  v2 = type metadata accessor for NDFDevice();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2325456F8();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D0, &unk_232548320);
  v7 = *v0;
  v8 = sub_232546498();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_2324CE250(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_23251FBDC(v27, *(v29 + 56) + v28, type metadata accessor for NDFDevice);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_23251EAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23251EB4C()
{
  v1 = v0;
  v35 = sub_2325456F8();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C0, &qword_232548308);
  v6 = *v0;
  v7 = sub_232546498();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_23251EE14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2325466F8();
  sub_232545FC8();
  v7 = sub_232546738();
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
    if (v12 || (sub_232546628() & 1) != 0)
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
    sub_23251F480();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_23251F814(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_23251EF50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2325466F8();
  sub_232545FC8();
  v9 = sub_232546738();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_232546628() & 1) != 0)
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

    sub_23251F300(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23251F0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  result = sub_2325463B8();
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
      sub_2325466F8();
      sub_232545FC8();
      result = sub_232546738();
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

uint64_t sub_23251F300(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_23251F0A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23251F480();
      goto LABEL_16;
    }

    sub_23251F5DC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2325466F8();
  sub_232545FC8();
  result = sub_232546738();
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

      result = sub_232546628();
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
  result = sub_232546658();
  __break(1u);
  return result;
}

void *sub_23251F480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  v2 = *v0;
  v3 = sub_2325463A8();
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

uint64_t sub_23251F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  result = sub_2325463B8();
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
      sub_2325466F8();

      sub_232545FC8();
      result = sub_232546738();
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

unint64_t sub_23251F814(unint64_t result)
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

    v9 = sub_232546398();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2325466F8();

        sub_232545FC8();
        v15 = sub_232546738();

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

size_t sub_23251F9D8(size_t a1, int64_t a2, char a3)
{
  result = sub_23251F9F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23251F9F8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v10 = *(type metadata accessor for NDFDevice() - 8);
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
  v15 = *(type metadata accessor for NDFDevice() - 8);
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

uint64_t sub_23251FBD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23251FBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23251FC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NDFDeviceManager()
{
  result = qword_2814D6D50;
  if (!qword_2814D6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23251FD14()
{
  v2 = *(type metadata accessor for NDFDevice() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2324C2910;

  return sub_23251A404(v5, v6, v7, v8, v9, v4, v0 + v3);
}

void sub_23251FE08()
{
  v0 = sub_2325458A8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2324E2460();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_232545688();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23251FF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23251FFE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2324C290C;

  return sub_2325093E4(v2, v3, v4, v5);
}

uint64_t sub_232520094()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2324C2910;

  return sub_2325062A4(v4, v5, v6, v7, v0 + v3);
}

unint64_t sub_2325201A0()
{
  sub_2325463D8();

  v0 = sub_232546608();
  MEMORY[0x2383855C0](v0);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_232520244()
{
  sub_2325466F8();
  MEMORY[0x238385CF0](0);
  return sub_232546738();
}

uint64_t sub_2325202B0()
{
  sub_2325466F8();
  MEMORY[0x238385CF0](0);
  return sub_232546738();
}

uint64_t sub_232520310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726556726F746361 && a2 == 0xEC0000006E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2325203A8(uint64_t a1)
{
  v2 = sub_232520550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325203E4(uint64_t a1)
{
  v2 = sub_232520550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232520420(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D8, &qword_232548360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546758();
  sub_2325465D8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_232520550()
{
  result = qword_27DD941F8[0];
  if (!qword_27DD941F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD941F8);
  }

  return result;
}

uint64_t sub_2325205A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935E0, &unk_232548368);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546748();
  if (!v1)
  {
    v9 = sub_232546538();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2325206F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935E0, &unk_232548368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_232546538();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_232520858(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D8, &qword_232548360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546758();
  sub_2325465D8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_232520990()
{
  v1 = *v0;
  sub_2325463D8();

  v2 = sub_232546608();
  MEMORY[0x2383855C0](v2);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_232520A34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  v4 = sub_232545DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232520ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F44E0();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_232520B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_allocate_value_buffer(v0, qword_2814D7008);
  v1 = __swift_project_value_buffer(v0, qword_2814D7008);
  v2 = sub_2325456F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_232520BCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D7008);
  swift_beginAccess();
  return sub_2324CF3C4(v3, a1, &unk_27DD932E0, qword_2325472E0);
}

uint64_t sub_232520C7C(uint64_t a1)
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D7008);
  swift_beginAccess();
  sub_2324FB16C(a1, v3);
  swift_endAccess();
  return sub_2324C28AC(a1, &unk_27DD932E0, qword_2325472E0);
}

uint64_t (*sub_232520D3C())()
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_project_value_buffer(v0, qword_2814D7008);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_232520DE8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_232520E28(a1);
  return v5;
}

uint64_t sub_232520E28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2325456F8();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2325458A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v46 - v12;
  v13 = sub_232545DA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
  v19 = sub_2324F44E0();
  v58 = v8;
  v49 = *(v8 + 16);
  v50 = v18;
  v61 = v7;
  v49(v2 + v18, v19, v7);
  v55 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem;
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = a1;
  v20 = type metadata accessor for NDFActor();
  v64 = a1;
  v21 = sub_232545CE8();
  v22 = sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58]);
  v23 = sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
  v59 = a1;

  v56 = v21;
  v57 = v20;
  v53 = v23;
  v54 = v22;
  sub_232545738();
  (*(v14 + 32))(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id, v17, v13);
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v51, qword_2814D7008);
  v25 = sub_232545018();
  v26 = v52;
  sub_2324CF3C4(v25, v52, &unk_27DD932E0, qword_2325472E0);
  swift_beginAccess();
  sub_2324F503C(v26, v24);
  swift_endAccess();
  v28 = v60;
  v27 = v61;
  v49(v60, v2 + v50, v61);
  v29 = sub_232545888();
  v30 = sub_232546208();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63 = v32;
    *v31 = 136315394;
    v33 = v47;
    v34 = v48;
    if ((*(v47 + 48))(v24, 1, v48))
    {
      v35 = 0xE90000000000003ELL;
      v36 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v37 = v46;
      (*(v33 + 16))(v46, v24, v34);
      v38 = v33;
      v39 = sub_2325456A8();
      v35 = v40;
      v41 = v37;
      v28 = v60;
      (*(v38 + 8))(v41, v34);
      v27 = v61;
      v36 = v39;
    }

    v42 = sub_2324C2220(v36, v35, &v63);

    *(v31 + 4) = v42;
    *(v31 + 12) = 2080;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_2325463D8();

    v64 = 0xD000000000000010;
    v65 = 0x800000023254CDA0;
    v62 = 1;
    v43 = sub_232546608();
    MEMORY[0x2383855C0](v43);

    MEMORY[0x2383855C0](93, 0xE100000000000000);
    v44 = sub_2324C2220(v64, v65, &v63);

    *(v31 + 14) = v44;
    _os_log_impl(&dword_2324C0000, v29, v30, "Initialized NDFActor for device %s with capabilities (%s)", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);
  }

  (*(v58 + 8))(v28, v27);
  v64 = *(v2 + v55);

  sub_232545718();

  return v2;
}

uint64_t sub_23252147C()
{
  v1[3] = v0;
  v2 = sub_2325457B8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_232545D88();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232521598, 0, 0);
}

uint64_t sub_232521598()
{
  v1 = v0[3];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[9];
  if (is_remote)
  {
    v4 = *(v0[3] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
    v5 = v0[9];
    sub_232545CA8();
    sub_232526900();
    sub_232526954();
    sub_232545D68();
    v6 = v0[9];
    sub_232545D38();
    v11 = v0[6];
    sub_2325457C8();
    v12 = *(MEMORY[0x277CD8E30] + 4);
    v13 = swift_task_alloc();
    v0[10] = v13;
    v14 = type metadata accessor for NDFActor();
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
    *v13 = v0;
    v13[1] = sub_23252181C;
    v15 = v0[9];
    v16 = v0[6];
    v17 = v0[3];
    v18 = MEMORY[0x277D84A98];
    v19 = MEMORY[0x277D84A98];

    return MEMORY[0x282125BC0](v0 + 2, v17, v16, v15, v18, &type metadata for NDFActorCapability, v14, v19);
  }

  else
  {
    v7 = v0[6];
    v8 = v0[9];

    v9 = v0[1];

    return v9(1);
  }
}

uint64_t sub_23252181C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2325219E4;
  }

  else
  {
    v3 = sub_232521930;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232521930()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_2325219E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_232521A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_2325457B8();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for NDFActorRequest(0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935F8, &qword_2325483F0);
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();
  v14 = sub_232545D88();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v16 = *(v15 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232521C4C, 0, 0);
}

uint64_t sub_232521C4C()
{
  v1 = v0[8];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[6];
    v4 = *(v0[8] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
    sub_232545CA8();
    sub_232545D78();
    v12 = v0[16];
    v13 = v0[12];
    sub_232526DB0(v0[5], v0[13], type metadata accessor for NDFActorRequest);
    sub_2325457D8();
    sub_232527474(&qword_27DD93600, type metadata accessor for NDFActorRequest);
    sub_232527474(&qword_27DD93608, type metadata accessor for NDFActorRequest);
    sub_232545D48();
    v14 = v0[19];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    sub_232545D58();
    v16 = v0[19];
    v17 = v0[6];
    v18 = v0[7];
    v19 = type metadata accessor for NDFActorResponse();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_232545D68();
    v20 = v0[19];
    sub_232545D38();
    v21 = v0[11];
    sub_2325457C8();
    v22 = *(MEMORY[0x277CD8E30] + 4);
    v23 = swift_task_alloc();
    v0[20] = v23;
    v24 = type metadata accessor for NDFActor();
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
    *v23 = v0;
    v23[1] = sub_2325220A8;
    v25 = v0[19];
    v26 = v0[11];
    v27 = v0[8];
    v28 = v0[4];

    return MEMORY[0x282125BC0](v28, v27, v26, v25, v15, v19, v24, v15);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_2325222A8;
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];

    return sub_2325225CC(v10, v8, v9, v6, (v0 + 2));
  }
}

uint64_t sub_2325220A8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2325224E0;
  }

  else
  {
    v3 = sub_2325221BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2325221BC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2325222A8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_232522424, 0, 0);
  }

  else
  {
    v5 = *(v2 + 152);
    v6 = *(v2 + 128);
    v7 = *(v2 + 104);
    v8 = *(v2 + 88);

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_232522424()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 184);
  sub_232526CF4();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = v1;
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2325224E0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2325225CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = v5;
  v6[18] = a5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = type metadata accessor for NDFDeviceEventInfo(0);
  v6[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v6[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v11 = *(*(type metadata accessor for NDFEvent(0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v12 = *(*(sub_232545688() - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v13 = type metadata accessor for NDFActorGeneralResponse(0);
  v6[27] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v15 = type metadata accessor for NDFDevice();
  v6[32] = v15;
  v16 = *(v15 - 8);
  v6[33] = v16;
  v17 = *(v16 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v18 = *(*(sub_232546318() - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v19 = type metadata accessor for NDFActorRequest(0);
  v6[43] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v21 = type metadata accessor for NDFActorRequestType(0);
  v6[46] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6[51] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v25 = sub_2325456F8();
  v6[53] = v25;
  v26 = *(v25 - 8);
  v6[54] = v26;
  v27 = *(v26 + 64) + 15;
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325229D0, v5, 0);
}