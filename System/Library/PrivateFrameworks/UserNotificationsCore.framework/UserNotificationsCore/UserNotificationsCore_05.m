void sub_1DA86AC10(uint64_t a1)
{
  v2 = sub_1DA9408C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 56);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1DA9408F4();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v10 = sub_1DA8AD06C(v9);

    v11 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
    swift_beginAccess();

    v12 = sub_1DA87D154(a1 + v11, v10);
    swift_endAccess();
    swift_bridgeObjectRelease_n();
    v13 = *(v12 + 16);

    if (v13)
    {
      sub_1DA86A66C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA86ADC0(uint64_t a1)
{
  v3 = sub_1DA9408C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v1;
  v8 = *(v1 + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1DA9408F4();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v10 = sub_1DA9405A4();
    v11 = __swift_project_value_buffer(v10, qword_1ECBE3DD0);

    v44 = v11;
    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136315138;
      v16 = MEMORY[0x1E1271CD0](a1, MEMORY[0x1E69E6158]);
      v18 = sub_1DA7AE6E8(v16, v17, &v49);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Processing notification setting changes: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12739F0](v15, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    v19 = sub_1DA848FF8(MEMORY[0x1E69E7CC0]);
    v21 = *(a1 + 16);
    if (!v21)
    {
      break;
    }

    v22 = 0;
    v23 = 0;
    v46 = *(v45 + 40);
    v24 = a1 + 40;
    *&v20 = 136315138;
    v43 = v20;
    v47 = v21;
    v48 = v19;
    v41 = a1 + 40;
LABEL_7:
    v42 = v22;
    v25 = (v24 + 16 * v23);
    while (v23 < v21)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_29;
      }

      a1 = *(v25 - 1);
      v27 = *v25;
      v28 = *(v46 + 16);
      MEMORY[0x1EEE9AC00](v19);
      *(&v41 - 4) = v29;
      *(&v41 - 3) = a1;
      *(&v41 - 2) = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();
      v30 = v49;
      if (v49)
      {
        v31 = v48;
        if (*(v48 + 16) && (v32 = sub_1DA85A4B4(a1, v27), (v33 & 1) != 0))
        {
          v34 = *(*(v31 + 56) + 8 * v32);
          v35 = v34;
        }

        else
        {
          v34 = 0;
        }

        v36 = sub_1DA8725AC(a1, v27, v34, v30);

        if (v36)
        {
          v22 = 1;
          ++v23;
          v21 = v47;
          v24 = v41;
          if (v26 != v47)
          {
            goto LABEL_7;
          }

LABEL_25:
          sub_1DA86A66C();
          return;
        }
      }

      else
      {

        v37 = sub_1DA940584();
        v38 = sub_1DA940F14();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v49 = v40;
          *v39 = v43;
          a1 = sub_1DA7AE6E8(a1, v27, &v49);

          *(v39 + 4) = a1;
          _os_log_impl(&dword_1DA7A9000, v37, v38, "Could not find notification source settings for bundle identifier: %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x1E12739F0](v40, -1, -1);
          MEMORY[0x1E12739F0](v39, -1, -1);
        }

        else
        {
        }
      }

      ++v23;
      v25 += 2;
      v21 = v47;
      if (v26 == v47)
      {

        if ((v42 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_1DA86B2B4()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 56);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1ECBD47C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBE3DD0);
  v9 = sub_1DA940584();
  v10 = sub_1DA940F34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "Processing notification system setting changes", v11, 2u);
    MEMORY[0x1E12739F0](v11, -1, -1);
  }
}

void sub_1DA86B468(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, id a4@<X3>, uint64_t a5@<X8>)
{
  v233 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BA8, &qword_1DA95CD08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v224 - v11;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  v13 = *(*(v248 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v248);
  v237 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v244 = &v224 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v238 = &v224 - v18;
  v239 = sub_1DA93FAF4();
  v231 = *(v239 - 8);
  v19 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v230 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_1DA940294();
  v21 = *(v253 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v253);
  v228 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v229 = &v224 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v245 = &v224 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v236 = &v224 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v235 = &v224 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v234 = &v224 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v241 = &v224 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v251 = &v224 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v224 - v39;
  v41 = sub_1DA9401F4();
  v255 = *(v41 - 8);
  v42 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = *a2;
  v45 = sub_1DA93FF84();
  v46 = [v45 request];

  v47 = [v46 content];
  v246 = v47;

  v48 = [v47 topicIdentifiers];
  v49 = sub_1DA940E94();

  v50 = *(v49 + 16);

  v51 = MEMORY[0x1E69E7CC0];
  if (v50 && *(a3 + 2) == 1 && (a3[40] & 1) == 0)
  {
    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v65 = sub_1DA9405A4();
    __swift_project_value_buffer(v65, qword_1ECBE3DD0);
    v66 = v255;
    (*(v255 + 16))(v44, a1, v41);
    v67 = sub_1DA940584();
    v68 = sub_1DA940F14();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v51;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v256 = v71;
      *v70 = 136315138;
      sub_1DA7ACFF0(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v72 = sub_1DA941614();
      v74 = v73;
      (*(v66 + 8))(v44, v41);
      v75 = sub_1DA7AE6E8(v72, v74, &v256);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_1DA7A9000, v67, v68, "Ignoring notification published with topics that do not exist: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1E12739F0](v71, -1, -1);
      v76 = v70;
      v51 = v69;
      MEMORY[0x1E12739F0](v76, -1, -1);
    }

    else
    {

      (*(v66 + 8))(v44, v41);
    }

    v256 = v51;
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA9411D4();

    return;
  }

  v240 = a3;
  v225 = v12;
  v242 = v21;
  v256 = MEMORY[0x1E69E7CC0];
  v52 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
  v54 = sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88);
  v252 = v40;
  v227 = v53;
  v226 = v54;
  v249 = v52;
  sub_1DA9411D4();
  if ((v243 & 2) == 0)
  {
    goto LABEL_23;
  }

  if ([v246 interruptionLevel] == 3)
  {
    v55 = v241;
    sub_1DA940284();
    v56 = v251;
    sub_1DA86CDCC(v251, v55);
  }

  else
  {
    v57 = *(v240 + 2);
    if (!v57)
    {
      goto LABEL_23;
    }

    v58 = (v240 + 40);
    while (1)
    {
      v59 = *v58;
      v60 = *(v58 - 1);
      v61 = v60;
      v62 = (v59 ? &selRef_topicSettings : &selRef_notificationSettings);
      v63 = [v60 *v62];
      v64 = [v63 notificationCenterSetting];

      if (v64 == 2)
      {
        break;
      }

      v58 += 2;
      if (!--v57)
      {
        goto LABEL_23;
      }
    }

    v55 = v241;
    sub_1DA940284();
    v56 = v251;
    sub_1DA86CDCC(v251, v55);
  }

  v77 = *(v242 + 8);
  v78 = v55;
  v79 = v253;
  v77(v78, v253);
  v77(v56, v79);
LABEL_23:
  v80 = v251;
  sub_1DA940284();
  v82 = v252;
  v81 = v253;
  v83 = sub_1DA941164();
  v84 = *(v242 + 8);
  v250 = v242 + 8;
  v84(v80, v81);
  if ((v83 & 1) != 0 && (v243 & 0x400) != 0)
  {
    v85 = v241;
    sub_1DA940234();
    sub_1DA86CDCC(v80, v85);
    v86 = v253;
    v84(v85, v253);
    v84(v80, v86);
  }

  v87 = *(v240 + 2);
  v247 = v84;
  v255 = v87;
  if (!v87)
  {
    v254 = a4;
    v232 = &selRef_notificationSettings;
    v105 = v246;
    goto LABEL_48;
  }

  v89 = v240 + 32;
  v88 = *(v240 + 4);
  v90 = v240[40];
  v91 = v88;
  v92 = a4;
  v93 = 0;
  v94 = 0;
  v95 = 1;
  if (v90)
  {
    goto LABEL_30;
  }

LABEL_33:
  while ((v93 & 0x8000000000000000) == 0)
  {
    while (1)
    {

      if (v95 == v255)
      {
        v254 = a4;
        goto LABEL_45;
      }

      v102 = &v89[16 * v95];
      v88 = *v102;
      v101 = v102[8];
      ++v95;
      if ((v94 & 1) == 0)
      {
        break;
      }

      while (2)
      {
        v96 = v88;
        v97 = [a4 topic];
        v93 = [v97 priority];

        v94 = 1;
        if ((v101 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_30:
        v98 = [v88 topic];
        v99 = [v98 priority];

        if (v93 < v99)
        {
          v254 = v88;

          if (v95 == v255)
          {
            v94 = 1;
            goto LABEL_45;
          }

          v100 = &v89[16 * v95];
          v88 = *v100;
          v101 = v100[8];
          ++v95;
          a4 = v254;
          continue;
        }

        break;
      }
    }

LABEL_39:
    v104 = v88;
    v93 = 0;
    v94 = 0;
    if (v101)
    {
      goto LABEL_30;
    }
  }

  v254 = v88;

  if (v95 != v255)
  {
    v103 = &v89[16 * v95];
    v88 = *v103;
    v101 = v103[8];
    ++v95;
    a4 = v254;
    goto LABEL_39;
  }

  v94 = 0;
LABEL_45:
  v106 = &selRef_notificationSettings;
  if (v94)
  {
    v106 = &selRef_topicSettings;
  }

  v232 = v106;
  v105 = v246;
  v84 = v247;
  v82 = v252;
LABEL_48:
  v107 = [v105 threadIdentifier];
  sub_1DA940A14();

  if ([v105 interruptionLevel] <= 1 && (v108 = objc_msgSend(v254, sel_muteAssertion)) != 0)
  {
    v109 = v108;
    v110 = sub_1DA940A04();
    v111 = v230;
    sub_1DA93FAC4();
    v112 = sub_1DA93FA44();
    (*(v231 + 8))(v111, v239);
    v113 = [v109 isActiveForThreadIdentifier:v110 currentDate:v112];

    if (v113)
    {
      v256 = MEMORY[0x1E69E7CC0];
      v114 = v253;
      sub_1DA9411D4();

      v84(v82, v114);
      return;
    }
  }

  else
  {
  }

  if (!v255)
  {
LABEL_60:
    v123 = 0;
    v124 = 0;
    v125 = v251;
    v126 = v243;
    v127 = v247;
    v128 = v245;
    if ((v243 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_97;
  }

  v115 = (v240 + 40);
  v116 = v255;
  while (1)
  {
    v117 = *v115;
    v118 = *(v115 - 1);
    v119 = v118;
    v120 = (v117 ? &selRef_topicSettings : &selRef_notificationSettings);
    v121 = [v118 *v120];
    v122 = [v121 scheduledDeliverySetting];

    if (v122 == 2)
    {
      break;
    }

    v115 += 2;
    if (!--v116)
    {
      goto LABEL_60;
    }
  }

  if (v117)
  {
    v129 = &selRef_topicSettings;
  }

  else
  {
    v129 = &selRef_notificationSettings;
  }

  v130 = [v119 *v129];
  v131 = [v130 criticalAlertSetting];

  LODWORD(v239) = v131 == 2 && [v246 interruptionLevel] == 3;
  v132 = v251;
  v128 = v245;
  if (v117)
  {
    v133 = &selRef_topicSettings;
  }

  else
  {
    v133 = &selRef_notificationSettings;
  }

  v134 = [v119 *v133];
  v135 = [v134 timeSensitiveSetting];

  LODWORD(v231) = v135 == 2 && [v246 interruptionLevel] == 2;
  if (v117)
  {
    v136 = &selRef_topicSettings;
  }

  else
  {
    v136 = &selRef_notificationSettings;
  }

  v137 = [v119 *v136];
  v138 = [v137 directMessagesSetting];

  if (v138 != 2)
  {
    v127 = v247;
    v125 = v132;
    if ((v239 & 1) == 0)
    {
      if ((v231 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_83;
    }

LABEL_95:

LABEL_96:
    v123 = 0;
    v124 = 0;
    v126 = v243;
    if ((v243 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_97;
  }

  v139 = [v246 contentType];
  v140 = *MEMORY[0x1E6983460];
  v141 = sub_1DA940A14();
  v143 = v142;
  v144 = sub_1DA940A14();
  v146 = v247;
  v125 = v132;
  if (v141 == v144 && v143 == v145)
  {
LABEL_80:

    goto LABEL_85;
  }

  v147 = sub_1DA941684();

  if ((v147 & 1) == 0)
  {
    v139 = [v246 contentType];
    v148 = *MEMORY[0x1E6983470];
    v149 = sub_1DA940A14();
    v151 = v150;
    if (v149 == sub_1DA940A14() && v151 == v152)
    {
      goto LABEL_80;
    }

    v153 = sub_1DA941684();

    v127 = v146;
    if ((v239 & 1) == 0)
    {
      if ((v231 & 1) == 0 && (v153 & 1) == 0)
      {
LABEL_94:
        if ([v246 interruptionLevel] != 3)
        {
          v126 = v243;
          if ((v243 & 4) != 0)
          {
            v222 = v241;
            sub_1DA940264();
            sub_1DA86CDCC(v125, v222);

            v223 = v253;
            v127(v222, v253);
            v127(v125, v223);
          }

          else
          {
          }

          v123 = 1;
          v124 = 1;
          if ((v126 & 8) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_97;
        }

        goto LABEL_95;
      }

LABEL_83:

      v126 = v243;
      goto LABEL_87;
    }

    goto LABEL_95;
  }

LABEL_85:

  v127 = v146;
  if (v239)
  {
    goto LABEL_96;
  }

  v126 = v243;
LABEL_87:
  v123 = 0;
  v124 = 0;
  if ((v126 & 8) != 0)
  {
LABEL_97:
    v154 = [v246 interruptionLevel];
    if (v154)
    {
      v124 = 1;
    }

    else
    {
      v124 = v123;
    }

    if ((v123 & 1) != 0 || !v154)
    {
      goto LABEL_127;
    }

    v155 = v238;
    if (!v255)
    {
LABEL_119:
      if ([v246 interruptionLevel] == 3)
      {
        v186 = v241;
        sub_1DA940214();
        sub_1DA86CDCC(v125, v186);
        v187 = v186;
        v188 = v253;
        v127(v187, v253);
        v127(v125, v188);
      }

      sub_1DA940214();
      v189 = v253;
      v190 = sub_1DA941164();
      v127(v125, v189);
      v126 = v243;
      v191 = v229;
      if (v190)
      {
        sub_1DA940254();
        v192 = v242;
        (*(v242 + 16))(v125, v252, v253);
        v193 = v228;
        sub_1DA941174();
        if (sub_1DA941184())
        {
          v194 = v253;
          v127(v193, v253);
          v127(v191, v194);
          v195 = 1;
          v196 = v225;
        }

        else
        {
          v197 = v253;
          sub_1DA941194();
          v127(v191, v197);
          v198 = v193;
          v196 = v225;
          (*(v192 + 32))(v225, v198, v197);
          v195 = 0;
        }

        (*(v192 + 56))(v196, v195, 1, v253);
        sub_1DA7BA120(v196, &qword_1ECBD5BA8, &qword_1DA95CD08);
      }

      v124 = 0;
      goto LABEL_127;
    }

    v231 = v242 + 32;
    v156 = (v240 + 40);
    v239 = v242 + 16;
    while (1)
    {
      v162 = *v156;
      v163 = *(v156 - 1);
      v164 = v163;
      v165 = &selRef_topicSettings;
      if (!v162)
      {
        v165 = &selRef_notificationSettings;
      }

      v166 = [v163 *v165];
      v167 = [v166 alertStyle];

      if (v167 == 2)
      {
        v174 = v125;
        v175 = v127;
        v176 = v236;
        sub_1DA940214();
        v177 = *v239;
        (*v239)(v174, v252, v253);
        sub_1DA941174();
        sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0]);
        v178 = sub_1DA9409F4();
        v179 = *(v248 + 48);
        v180 = v237;
        *v237 = (v178 & 1) == 0;
        if (v178)
        {
          v181 = v253;
          v175(v176, v253);

          (*v231)(v180 + v179, v128, v181);
        }

        else
        {
          v182 = v128;
          v183 = v253;
          v247(v182, v253);
          (v177)(v180 + v179, v176, v183);
          (v177)(v251, v176, v183);
          v175 = v247;
          sub_1DA9411A4();

          v184 = v183;
          v128 = v245;
          v175(v176, v184);
        }

        v185 = v244;
        sub_1DA87F660(v180, v244);
        v175((v185 + *(v248 + 48)), v253);
        v155 = v238;
        v127 = v175;
      }

      else
      {
        if (v167 != 1)
        {

          goto LABEL_107;
        }

        v168 = v253;
        v169 = v125;
        v170 = v234;
        sub_1DA940254();
        v240 = *v239;
        (v240)(v169, v252, v168);
        v171 = v235;
        sub_1DA941174();
        sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0]);
        v172 = sub_1DA9409F4();
        v173 = *(v248 + 48);
        *v155 = (v172 & 1) == 0;
        if (v172)
        {
          v127 = v247;
          v247(v170, v168);

          (*v231)(&v155[v173], v171, v168);
        }

        else
        {
          v157 = v171;
          v158 = v247;
          v247(v157, v168);
          v159 = &v155[v173];
          v160 = v240;
          (v240)(v159, v170, v168);
          v160(v169, v170, v168);
          v127 = v158;
          sub_1DA9411A4();

          v158(v170, v168);
        }

        v161 = v244;
        sub_1DA87F660(v155, v244);
        v127(v161 + *(v248 + 48), v253);
        v128 = v245;
      }

      v125 = v251;
LABEL_107:
      v156 += 2;
      if (!--v255)
      {
        goto LABEL_119;
      }
    }
  }

LABEL_127:
  v199 = [v254 *v232];
  v200 = [v199 lockScreenSetting];

  if ((v124 & 1) == 0 && v200 == 2 || [v246 interruptionLevel] == 3)
  {
    if ((v126 & 4) != 0)
    {
      v201 = v241;
      sub_1DA940204();
      sub_1DA86CDCC(v125, v201);
      v202 = v253;
      v127(v201, v253);
      v127(v125, v202);
    }

    sub_1DA940254();
    v203 = v253;
    v204 = sub_1DA941164();
    v127(v125, v203);
    if (v204)
    {
      v205 = v241;
      sub_1DA940204();
      sub_1DA86CDCC(v125, v205);
      v206 = v205;
      v207 = v253;
      v127(v206, v253);
      v127(v125, v207);
    }

    sub_1DA940214();
    v208 = v253;
    v209 = sub_1DA941164();
    v127(v125, v208);
    if (v209)
    {
      v210 = v241;
      sub_1DA940244();
      sub_1DA86CDCC(v125, v210);
      v211 = v253;
      v127(v210, v253);
      v127(v125, v211);
    }
  }

  sub_1DA940224();
  v212 = v253;
  v213 = sub_1DA941164();
  v127(v125, v212);
  if (v213)
  {
    v214 = v246;
    v215 = [v246 shouldSuppressScreenLightUp];
    v216 = v254;
    if (v215)
    {

      goto LABEL_140;
    }

    v218 = [v214 interruptionLevel];
    v219 = v233;
    if (v218 && (v124 & 1) == 0)
    {
      v220 = v241;
      sub_1DA940274();
      sub_1DA86CDCC(v125, v220);

      v221 = v253;
      v127(v220, v253);
      v127(v125, v221);
      v217 = v219;
    }

    else
    {

      v217 = v219;
    }
  }

  else
  {

LABEL_140:
    v217 = v233;
  }

  (*(v242 + 32))(v217, v252, v253);
}

uint64_t sub_1DA86CDCC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1DA940294();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x1E69DF1B0];
  v27 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
  sub_1DA941174();
  v19 = v18;
  v20 = v30;
  sub_1DA7ACFF0(&qword_1ECBD5B08, v19);
  v28 = a2;
  v21 = sub_1DA9409F4();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_1DA9411A4();
  }

  v24 = v31;
  sub_1DA87F660(v8, v31);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_1DA86D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1DA9407F4();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_1DA940854();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = sub_1DA86D21C;

  return sub_1DA8D7E78();
}

uint64_t sub_1DA86D21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v8 = v4[12];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[17] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DA86D37C, 0, 0);
  }
}

uint64_t sub_1DA86D37C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v13 = v0[14];
  v14 = v0[13];
  v10 = v0[10];
  v11 = *(v0[9] + 56);
  v12 = v0[11];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[6] = sub_1DA880698;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_126;
  v6 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v2, v3, v6);
  _Block_release(v6);
  (*(v12 + 8))(v3, v10);
  (*(v13 + 8))(v2, v14);
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

void sub_1DA86D5F4(unint64_t a1)
{
  v88 = sub_1DA93F844();
  v3 = *(v88 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v88);
  v99 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v1;
  v11 = *(v1 + 56);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1DA9408F4();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (!(a1 >> 62))
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
LABEL_49:
    __break(1u);
  }

  v14 = sub_1DA941264();
  if (!v14)
  {
    return;
  }

LABEL_4:
  v82 = 0;
  v15 = 0;
  v95 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v16 = a1 & 0xC000000000000001;
  v89 = (a1 + 32);
  v90 = a1 & 0xFFFFFFFFFFFFFF8;
  v84 = (v3 + 1);
  v3 = &selRef_bulletinGroupingSetting;
  *&v13 = 136446723;
  v83 = v13;
  v86 = v14;
  v85 = a1 & 0xC000000000000001;
  v87 = a1;
  while (1)
  {
LABEL_6:
    if (v16)
    {
      v17 = MEMORY[0x1E1272460](v15, a1);
    }

    else
    {
      if (v15 >= *(v90 + 16))
      {
        goto LABEL_48;
      }

      v17 = v89[v15];
    }

    v18 = v17;
    if (__OFADD__(v15++, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ([v17 v3[371]])
    {
      v20 = [v18 content];
      if (v20)
      {
        break;
      }
    }

    if (v15 == v14)
    {
      goto LABEL_43;
    }
  }

  v93 = v20;
  v21 = [v18 bundleIdentifier];
  v98 = sub_1DA940A14();
  v23 = v22;

  v24 = [v18 threadIdentifier];
  if (v24)
  {
    v25 = v24;
    v97 = sub_1DA940A14();
    v27 = v26;
  }

  else
  {
    v97 = 0;
    v27 = 0;
  }

  v94 = v18;
  v28 = [v18 requestIdentifiers];
  v3 = sub_1DA940BE4();

  v29 = v3[2];
  v100 = v27;
  v101 = v23;
  if (v29)
  {
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, v29, 0);
    v30 = v102;
    v31 = (v3 + 5);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;

      v34 = sub_1DA940A04();
      v35 = [v34 un_logDigest];

      if (v35)
      {
        v36 = sub_1DA940A14();
        v38 = v37;
      }

      else
      {

        v38 = 0xE400000000000000;
        v36 = 1061109567;
      }

      v102 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1DA82A778((v39 > 1), v40 + 1, 1);
        v30 = v102;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v31 += 2;
      --v29;
    }

    while (v29);
    v27 = v100;
    v23 = v101;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v42 = sub_1DA9405A4();
  v43 = __swift_project_value_buffer(v42, qword_1ECBE3DD0);

  v44 = sub_1DA940584();
  v45 = sub_1DA940F34();

  v46 = os_log_type_enabled(v44, v45);
  v91 = v43;
  v92 = v15;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v104[0] = v48;
    *v47 = v83;
    *(v47 + 4) = sub_1DA7AE6E8(v98, v23, v104);
    *(v47 + 12) = 2081;
    v102 = v97;
    v103 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v49 = sub_1DA940A74();
    v51 = sub_1DA7AE6E8(v49, v50, v104);

    *(v47 + 14) = v51;
    *(v47 + 22) = 2082;
    v52 = MEMORY[0x1E1271CD0](v30, MEMORY[0x1E69E6158]);
    v54 = sub_1DA7AE6E8(v52, v53, v104);

    *(v47 + 24) = v54;
    _os_log_impl(&dword_1DA7A9000, v44, v45, "Processing group summary: %{public}s, %{private}s, %{public}s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v48, -1, -1);
    MEMORY[0x1E12739F0](v47, -1, -1);
  }

  v93 = v93;
  sub_1DA93F854();
  v55 = [v94 spotlightIdentifier];
  v56 = sub_1DA940A14();
  v58 = v57;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v59 = *(sub_1DA940464() + 16);

  v60 = 0;
  while (v59 != v60)
  {
    v61 = sub_1DA940454();
    a1 = v62;
    v63 = *v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_1DA884B48(v63);
      *a1 = v63;
    }

    if (v60 >= v63[2])
    {
      __break(1u);
      goto LABEL_47;
    }

    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v66 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v60;
    LOBYTE(v66) = sub_1DA876D70(v99, v98, v101, v97, v100, v3, v56, v58);
    v61(&v102, 0);
    ++v60;
    if (v66)
    {
      swift_endAccess();

      (*v84)(v99, v88);

      v82 = 1;
      v14 = v86;
      v15 = v92;
      a1 = v87;
      v16 = v85;
      v3 = &selRef_bulletinGroupingSetting;
      if (v92 == v86)
      {
        goto LABEL_44;
      }

      goto LABEL_6;
    }
  }

  swift_endAccess();

  (*v84)(v99, v88);
  v67 = v101;

  v68 = v100;

  v69 = sub_1DA940584();
  v70 = sub_1DA940F14();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v104[0] = v72;
    *v71 = v83;
    v73 = sub_1DA7AE6E8(v98, v67, v104);

    *(v71 + 4) = v73;
    *(v71 + 12) = 2081;
    v102 = v97;
    v103 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v74 = sub_1DA940A74();
    v76 = sub_1DA7AE6E8(v74, v75, v104);

    *(v71 + 14) = v76;
    *(v71 + 22) = 2082;
    v77 = MEMORY[0x1E1271CD0](v30, MEMORY[0x1E69E6158]);
    v79 = v78;

    v80 = sub_1DA7AE6E8(v77, v79, v104);

    *(v71 + 24) = v80;
    _os_log_impl(&dword_1DA7A9000, v69, v70, "Could not find group for group summary: %{public}s, %{private}s, %{public}s", v71, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v72, -1, -1);
    MEMORY[0x1E12739F0](v71, -1, -1);
  }

  else
  {
  }

  a1 = v87;
  v14 = v86;
  v15 = v92;
  v16 = v85;
  v3 = &selRef_bulletinGroupingSetting;
  if (v92 != v86)
  {
    goto LABEL_6;
  }

LABEL_43:
  if (v82)
  {
LABEL_44:
    sub_1DA86E1BC();
  }
}

uint64_t sub_1DA86E078()
{
  v0 = sub_1DA9408C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 56);
    *v4 = v6;
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8020], v0);
    v7 = v6;
    LOBYTE(v6) = sub_1DA9408F4();
    result = (*(v1 + 8))(v4, v0);
    if (v6)
    {
      sub_1DA8688D4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DA86E1BC()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  *&v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DA940854();
  v43 = *(v54 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = sub_1DA9402B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();
  v21 = v1 + v20;
  v22 = v7;
  (*(v9 + 16))(v12, v21, v8);
  sub_1DA9402A4();
  v40 = *(v1 + 64);
  v41 = sub_1DA87AC2C();
  v23 = v41[2];
  if (v23)
  {
    v24 = (v41 + 4);
    v48 = *(v1 + 48);
    v47 = *(v14 + 16);
    v49 = v14 + 16;
    v46 = v14 + 32;
    v45 = v59;
    v44 = (v56 + 8);
    v43 += 8;
    v50 = v14;
    v51 = v19;
    v42 = v13;
    do
    {
      v25 = *v24++;
      v56 = v25;
      v26 = v52;
      v47(v52, v19, v13);
      v27 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v56;
      (*(v14 + 32))(v28 + v27, v26, v13);
      v59[2] = sub_1DA88067C;
      v59[3] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v59[0] = sub_1DA7AF1D0;
      v59[1] = &block_descriptor_77;
      v29 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      sub_1DA940824();
      v57 = MEMORY[0x1E69E7CC0];
      sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
      sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
      v30 = v22;
      v31 = v55;
      sub_1DA9411D4();
      MEMORY[0x1E12720D0](0, v30, v31, v29);
      _Block_release(v29);
      v13 = v42;
      v14 = v50;
      v19 = v51;
      swift_unknownObjectRelease();
      v32 = v31;
      v22 = v30;
      (*v44)(v32, v2);
      (*v43)(v30, v54);

      --v23;
    }

    while (v23);
  }

  v33 = v40;
  swift_beginAccess();
  v34 = *(*(v33 + 16) + 16);
  sub_1DA87AD60();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA9405A4();
  __swift_project_value_buffer(v35, qword_1ECBE3DD0);
  v36 = sub_1DA940584();
  v37 = sub_1DA940F34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v34;
    _os_log_impl(&dword_1DA7A9000, v36, v37, "Emitted list for %ld observers", v38, 0xCu);
    MEMORY[0x1E12739F0](v38, -1, -1);
  }

  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_1DA86E858@<X0>(uint64_t a1@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B60, &qword_1DA95CCC0);
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v11 = sub_1DA940464();
  v12 = *(v11 + 16);
  if (v12)
  {
    v21[1] = a1;
    v21[2] = v11;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v22 = *(v13 + 56);
    v23 = v14;
    v24 = v13;
    v16 = (v13 - 8);
    v21[3] = v2 + 32;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      v23(v10, v15, v6);
      sub_1DA8782BC(v5);
      (*v16)(v10, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DA8861E0(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1DA8861E0(v18 > 1, v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      (*(v2 + 32))(v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19, v5, v25);
      v15 += v22;
      --v12;
    }

    while (v12);
  }

  return sub_1DA940444();
}

uint64_t sub_1DA86EB28(char **a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v144 = v3;
  v136 = v6;
  v7 = sub_1DA940294();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v135 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA93FF94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1DA9400B4();
  v131 = *(v133 - 8);
  v13 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA93FEC4();
  v140 = *(v15 - 8);
  v141 = v15;
  v16 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA9401F4();
  v19 = *(v18 - 1);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v137 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v129 = &v125 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v125 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v125 - v28;
  v130 = *a2;
  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v30 = sub_1DA9405A4();
    v31 = __swift_project_value_buffer(v30, qword_1ECBE3DD0);
    v146 = v19[2];
    v147 = (v19 + 2);
    (v146)(v29, a1, v18);
    v142 = v31;
    v32 = sub_1DA940584();
    v33 = sub_1DA940F34();
    v34 = os_log_type_enabled(v32, v33);
    v145 = v19;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v128 = v35;
      v143 = swift_slowAlloc();
      v148[0] = v143;
      *v35 = 136315138;
      v36 = v139;
      sub_1DA940124();
      sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
      v37 = a1;
      v38 = v141;
      v39 = sub_1DA941614();
      v138 = v27;
      v40 = v18;
      v42 = v41;
      v43 = v38;
      a1 = v37;
      (*(v140 + 8))(v36, v43);
      v44 = v19[1];
      (v44)(v29, v40);
      v45 = sub_1DA7AE6E8(v39, v42, v148);
      v18 = v40;
      v27 = v138;

      v46 = v128;
      *(v128 + 4) = v45;
      v47 = v46;
      _os_log_impl(&dword_1DA7A9000, v32, v33, "Adding notification: %s", v46, 0xCu);
      v48 = v143;
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1E12739F0](v48, -1, -1);
      MEMORY[0x1E12739F0](v47, -1, -1);

      v49 = v44;
    }

    else
    {

      v49 = v19[1];
      (v49)(v29, v18);
    }

    (v146)(v27, a1, v18);
    v50 = sub_1DA940014();
    v52 = v51;
    v53 = v144[5];
    v54 = *(v53 + 16);
    v55 = MEMORY[0x1EEE9AC00](v50);
    *(&v125 - 4) = v53;
    *(&v125 - 3) = v55;
    *(&v125 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
    sub_1DA940FE4();
    v143 = v148[0];
    if (!v148[0])
    {

      v77 = sub_1DA940584();
      v78 = sub_1DA940F14();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = v18;
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v148[0] = v81;
        *v80 = 136315138;
        v82 = sub_1DA7AE6E8(v50, v52, v148);

        *(v80 + 4) = v82;
        _os_log_impl(&dword_1DA7A9000, v77, v78, "Could not find notification source settings for bundle identifier: %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1E12739F0](v81, -1, -1);
        MEMORY[0x1E12739F0](v80, -1, -1);

        v83 = v27;
        v84 = v79;
LABEL_28:
        (v49)(v83, v84);
        return 0;
      }

LABEL_27:
      v83 = v27;
      v84 = v18;
      goto LABEL_28;
    }

    v57 = *(v53 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B98, &unk_1DA95CCF0);
    sub_1DA940FE4();
    v58 = v148[0];
    if (!v148[0])
    {
      v85 = sub_1DA940584();
      v86 = sub_1DA940F14();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_1DA7A9000, v85, v86, "Could not find notification system settings", v87, 2u);
        MEMORY[0x1E12739F0](v87, -1, -1);
      }

      goto LABEL_27;
    }

    if ((sub_1DA93FF74() & 1) == 0)
    {
      (v49)(v27, v18);

      return 0;
    }

    v128 = v58;
    v59 = sub_1DA93FF84();
    v60 = [v59 request];

    v61 = [v60 content];
    v62 = [v61 topicIdentifiers];

    v63 = sub_1DA940E94();
    v29 = sub_1DA87BF98(v63, v143);

    v64 = sub_1DA9400F4();
    v127 = v18;
    if (v64)
    {
      v65 = sub_1DA940064();
      if (v65)
      {
        v66 = v65;
        v67 = [v65 options];

        if ((v67 & 0x20000) != 0)
        {
          (*(v131 + 104))(v132, *MEMORY[0x1E69DF158], v133);
          goto LABEL_32;
        }
      }
    }

    v125 = a1;
    v126 = v49;
    v138 = v27;
    v68 = *(v29 + 2);
    if (!v68)
    {
      break;
    }

    v69 = 0;
    v70 = (v29 + 40);
    v27 = &selRef_topicSettings;
    a1 = &selRef_bulletinGroupingSetting;
    v19 = &selRef_notificationSettings;
    while (v69 < *(v29 + 2))
    {
      v71 = *v70;
      v72 = *(v70 - 1);
      v73 = v72;
      if (v71)
      {
        v74 = &selRef_topicSettings;
      }

      else
      {
        v74 = &selRef_notificationSettings;
      }

      v75 = [v72 *v74];
      v18 = [v75 criticalAlertSetting];

      if (v18 == 2)
      {
        v76 = MEMORY[0x1E69DF158];
        goto LABEL_31;
      }

      ++v69;
      v70 += 2;
      if (v68 == v69)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

LABEL_19:
  v76 = MEMORY[0x1E69DF160];
LABEL_31:
  (*(v131 + 104))(v132, *v76, v133);
  v18 = v127;
  v27 = v138;
  v49 = v126;
  a1 = v125;
LABEL_32:
  sub_1DA9400D4();
  sub_1DA86F9CC(v134);
  sub_1DA940034();
  v148[0] = v130;
  v89 = v143;
  sub_1DA86B468(v27, v148, v29, v143, v135);

  sub_1DA93FEF4();
  v90 = v144[3];
  swift_beginAccess();
  v91 = v128;
  v92 = sub_1DA86FCC0(v27, v89, v128, v90);
  swift_endAccess();
  v93 = v137;
  if ((v92 & 1) == 0)
  {
    (v146)(v137, a1, v18);
    v110 = sub_1DA940584();
    v111 = v18;
    v112 = sub_1DA940F34();
    if (os_log_type_enabled(v110, v112))
    {
      v113 = swift_slowAlloc();
      v146 = v113;
      v147 = swift_slowAlloc();
      v148[0] = v147;
      *v113 = 136315138;
      v114 = v139;
      sub_1DA940124();
      sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
      v115 = v141;
      v116 = sub_1DA941614();
      v117 = v93;
      v119 = v118;
      (*(v140 + 8))(v114, v115);
      v120 = v117;
      v121 = v127;
      (v49)(v120, v127);
      v122 = sub_1DA7AE6E8(v116, v119, v148);

      v123 = v146;
      *(v146 + 4) = v122;
      _os_log_impl(&dword_1DA7A9000, v110, v112, "Did not add notification: %s", v123, 0xCu);
      v124 = v147;
      __swift_destroy_boxed_opaque_existential_1(v147);
      MEMORY[0x1E12739F0](v124, -1, -1);
      MEMORY[0x1E12739F0](v123, -1, -1);

      (v49)(v27, v121);
    }

    else
    {

      (v49)(v93, v111);
      (v49)(v27, v111);
    }

    return 0;
  }

  v94 = v129;
  (v146)(v129, a1, v18);
  v95 = sub_1DA940584();
  v96 = v18;
  v97 = sub_1DA940F34();
  if (os_log_type_enabled(v95, v97))
  {
    v98 = swift_slowAlloc();
    v146 = v98;
    v147 = swift_slowAlloc();
    v148[0] = v147;
    *v98 = 136315138;
    v99 = v139;
    sub_1DA940124();
    sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
    v100 = v141;
    v101 = sub_1DA941614();
    v102 = v94;
    v104 = v103;
    (*(v140 + 8))(v99, v100);
    v105 = v102;
    v106 = v127;
    (v49)(v105, v127);
    v107 = sub_1DA7AE6E8(v101, v104, v148);

    v108 = v146;
    *(v146 + 4) = v107;
    _os_log_impl(&dword_1DA7A9000, v95, v97, "Added notification: %s", v108, 0xCu);
    v109 = v147;
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x1E12739F0](v109, -1, -1);
    MEMORY[0x1E12739F0](v108, -1, -1);

    (v49)(v27, v106);
  }

  else
  {

    (v49)(v94, v96);
    (v49)(v27, v96);
  }

  return 1;
}

void sub_1DA86F9CC(uint64_t a1@<X8>)
{
  v2 = sub_1DA940064();
  if (!v2)
  {
    v8 = *MEMORY[0x1E69DF130];
    goto LABEL_13;
  }

  v15 = v2;
  v3 = [v2 listPriority];
  if (v3 == 1)
  {
    v11 = MEMORY[0x1E69DF128];
  }

  else
  {
    if (v3 == 2)
    {
      v5 = sub_1DA940014();
      v6 = v4;
      if (v5 == 0xD00000000000002CLL && 0x80000001DA952D10 == v4 || (sub_1DA941684() & 1) != 0 || v5 == 0xD000000000000013 && 0x80000001DA9505A0 == v6 || (sub_1DA941684() & 1) != 0)
      {

        v7 = MEMORY[0x1E69DF118];
      }

      else if (v5 == 0xD00000000000001FLL && 0x80000001DA952D40 == v6 || (sub_1DA941684() & 1) != 0)
      {

        v7 = MEMORY[0x1E69DF108];
      }

      else if (v5 == 0xD000000000000016 && 0x80000001DA952D60 == v6 || (sub_1DA941684() & 1) != 0)
      {

        v7 = MEMORY[0x1E69DF100];
      }

      else
      {
        if (v5 == 0xD000000000000029 && 0x80000001DA952D80 == v6)
        {
        }

        else
        {
          v14 = sub_1DA941684();

          if ((v14 & 1) == 0)
          {
            v7 = MEMORY[0x1E69DF120];
            goto LABEL_11;
          }
        }

        v7 = MEMORY[0x1E69DF110];
      }

LABEL_11:
      v8 = *v7;
LABEL_13:
      v9 = sub_1DA93FF94();
      v10 = *(*(v9 - 8) + 104);

      v10(a1, v8, v9);
      return;
    }

    v11 = MEMORY[0x1E69DF130];
  }

  v12 = *v11;
  v13 = sub_1DA93FF94();
  (*(*(v13 - 8) + 104))(a1, v12, v13);
}

size_t sub_1DA86FCC0(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v111 = a4;
  v110 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v93 - v8;
  v100 = sub_1DA9401F4();
  v109 = *(v100 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1DA93FEC4();
  v106 = *(v114 - 8);
  v11 = *(v106 + 64);
  v12 = MEMORY[0x1EEE9AC00](v114);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v105 = &v93 - v18;
  v104 = sub_1DA940294();
  v103 = *(v104 - 8);
  v19 = *(v103 + 64);
  v20 = MEMORY[0x1EEE9AC00](v104);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BA0, &qword_1DA95CD00);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v113 = &v93 - v37;
  LODWORD(v98) = sub_1DA87C4F4(a1, v110);
  v38 = [a2 notificationSettings];
  v110 = [v38 groupingSetting];

  v39 = *(v111 + 16);
  v116 = v111;
  v117 = a1;
  sub_1DA940FE4();
  v111 = v32[6];
  if ((v111)(v28, 1, v31) != 1)
  {
    v49 = v32[4];
    v49(v36, v28, v31);
    v49(v30, v36, v31);
    v50 = 0;
    v51 = v32;
    v52 = a1;
    goto LABEL_19;
  }

  v96 = v32 + 6;
  v97 = v30;
  v107 = v32;
  v108 = v31;
  sub_1DA7BA120(v28, &qword_1ECBD5BA0, &qword_1DA95CD00);
  v40 = v102;
  v41 = a1;
  sub_1DA93FEE4();
  sub_1DA940264();
  v42 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
  v43 = v104;
  sub_1DA941164();
  v44 = *(v103 + 8);
  v44(v22, v43);
  sub_1DA940204();
  v95 = v42;
  sub_1DA941164();
  v103 = v44;
  v44(v22, v43);
  v45 = v105;
  v112 = v41;
  sub_1DA940044();
  v46 = sub_1DA940004();
  v47 = *(v46 - 8);
  v48 = v40;
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_1DA7BA120(v45, &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    v53 = sub_1DA93FFA4();
    (*(v47 + 8))(v45, v46);
    v48 = v40;
    if (v53 != 2 && (v53 & 1) != 0)
    {
      (v103)(v40, v43);
      v51 = v107;
      v30 = v97;
      v31 = v108;
      (v107[13])(v97, *MEMORY[0x1E69DF210], v108);
      v50 = 0;
      v52 = v112;
      goto LABEL_19;
    }
  }

  sub_1DA940204();
  v54 = sub_1DA941164();
  v55 = v103;
  (v103)(v22, v43);
  if (v54)
  {
    v55(v48, v43);
    v51 = v107;
    v56 = v107[13];
    v52 = v112;
    if (v98)
    {
      v57 = MEMORY[0x1E69DF238];
    }

    else
    {
      v57 = MEMORY[0x1E69DF248];
    }

    v60 = *v57;
    goto LABEL_18;
  }

  sub_1DA940234();
  v58 = sub_1DA941164();
  v55(v22, v43);
  v52 = v112;
  if (v58)
  {
    v55(v48, v43);
    v59 = MEMORY[0x1E69DF220];
LABEL_17:
    v60 = *v59;
    v51 = v107;
    v56 = v107[13];
LABEL_18:
    v30 = v97;
    v31 = v108;
    v56(v97, v60, v108);
    v50 = 0;
    goto LABEL_19;
  }

  sub_1DA940284();
  v61 = sub_1DA941164();
  v55(v22, v43);
  v55(v48, v43);
  if (v61)
  {
    v59 = MEMORY[0x1E69DF240];
    goto LABEL_17;
  }

  v50 = 1;
  v31 = v108;
  v51 = v107;
  v30 = v97;
LABEL_19:
  v62 = v111;
  (v51[7])(v30, v50, 1, v31);
  v63 = v62(v30, 1, v31);
  v64 = v63;
  if (v63 == 1)
  {
    sub_1DA7BA120(v30, &qword_1ECBD5BA0, &qword_1DA95CD00);
    return v64 != 1;
  }

  LODWORD(v97) = v63;
  (v51[4])(v113, v30, v31);
  sub_1DA940124();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v66 = *(sub_1DA940464() + 16);

  v94 = v66;
  if (v66)
  {
    v67 = 0;
    v68 = (v106 + 8);
    v112 = v52;
    v108 = v31;
    v107 = v51;
    v96 = v65;
    while (1)
    {
      v69 = sub_1DA940454();
      v71 = v70;
      v72 = *v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v71 = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_1DA884B48(v72);
        *v71 = v72;
      }

      if (v67 >= v72[2])
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v98 = v69;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
      v75 = v72 + ((*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80));
      v76 = *(*(v74 - 8) + 72);
      v95 = v67;
      v105 = v74;
      v104 = &v75[v76 * v67];
      v77 = *(sub_1DA940424() + 16);

      v102 = v77;
      if (v77)
      {
        break;
      }

LABEL_36:
      v67 = v95 + 1;
      v98(v120, 0);
      v31 = v108;
      v51 = v107;
      v65 = v96;
      if (v67 == v94)
      {
        goto LABEL_40;
      }
    }

    v78 = 0;
    while (1)
    {
      v69 = sub_1DA940414();
      v72 = v79;
      v71 = *v79;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v71;
      if ((v80 & 1) == 0)
      {
        v71 = sub_1DA884B34(v71);
        *v72 = v71;
      }

      if (v78 >= v71[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      v111 = v69;
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68) - 8);
      v103 = v71 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78;
      v82 = sub_1DA940394();
      v31 = v82;
      v51 = *(v82 + 16);
      if (v51)
      {
        break;
      }

LABEL_27:
      ++v78;

      (v111)(v119, 0);
      v52 = v112;
      if (v78 == v102)
      {
        goto LABEL_36;
      }
    }

    v83 = 0;
    v84 = v82 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v85 = *(v109 + 72);
    while (1)
    {
      sub_1DA940124();
      v65 = sub_1DA93FEA4();
      (*v68)(v14, v114);
      if (v65)
      {
        break;
      }

      ++v83;
      v84 += v85;
      if (v51 == v83)
      {
        goto LABEL_27;
      }
    }

    v86 = sub_1DA940384();
    v87 = v99;
    sub_1DA8765F4(v83, sub_1DA884B20, MEMORY[0x1E69DF180], v99);
    (*(v109 + 8))(v87, v100);
    v86(v118, 0);
    v88 = sub_1DA93F844();
    (*(*(v88 - 8) + 56))(v101, 1, 1, v88);
    sub_1DA9403F4();
    (v111)(v119, 0);
    v98(v120, 0);
    v52 = v112;
    v31 = v108;
    v51 = v107;
  }

LABEL_40:
  (*(v106 + 8))(v115, v114);
  v69 = sub_1DA874D94(v113);
  v72 = sub_1DA940454();
  v65 = v89;
  v71 = *v89;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v65 = v71;
  if (result)
  {
    if ((v69 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  result = sub_1DA884B48(v71);
  v71 = result;
  *v65 = result;
  if ((v69 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_42:
  if (v69 < v71[2])
  {
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v92 = v71 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v69;
    sub_1DA875120(v52, v110);
    (v72)(v120, 0);
    (v51[1])(v113, v31);
    v64 = v97;
    return v64 != 1;
  }

LABEL_50:
  __break(1u);
  return result;
}

size_t sub_1DA870C38(uint64_t a1, char a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v27 = *(sub_1DA940464() + 16);

  v7 = 0;
  do
  {
    v8 = v7;
    if (v27 == v7)
    {
      return v27 != v8;
    }

    v9 = sub_1DA940454();
    v11 = v10;
    v12 = *v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v12);
      v12 = result;
      *v11 = result;
    }

    if (v8 >= v12[2])
    {
      __break(1u);
      goto LABEL_13;
    }

    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = *(v4 + 72) * v8;
    v16 = sub_1DA875E24(a1, a2 & 1);
    v9(v28, 0);
    v7 = v8 + 1;
  }

  while ((v16 & 1) == 0);
  if (a2)
  {
    return v27 != v8;
  }

  result = sub_1DA940464();
  if (v8 < *(result + 16))
  {
    v17 = result + v14 + v15;
    v19 = v25;
    v18 = v26;
    (*(v4 + 16))(v25, v17, v26);

    v20 = sub_1DA940434();
    v21 = *(v4 + 8);
    v21(v19, v18);
    if (v20)
    {
      v22 = sub_1DA940454();
      v23 = v25;
      sub_1DA8764AC(v8, sub_1DA884B48, &qword_1ECBD5AC0, &qword_1DA95CC48, v25);
      v21(v23, v26);
      v22(v28, 0);
    }

    return v27 != v8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1DA870EF0()
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v16 = *(result + 56);
  *v13 = v16;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v17 = v16;
  LOBYTE(v16) = sub_1DA9408F4();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_1ECBD47C8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v18 = sub_1DA9405A4();
  __swift_project_value_buffer(v18, qword_1ECBE3DD0);
  v19 = sub_1DA940584();
  v20 = sub_1DA940F34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DA7A9000, v19, v20, "Processing updates", v21, 2u);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  sub_1DA871288();
  v22 = *(v15 + 32);
  v23 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();
  (*(v5 + 16))(v8, v15 + v23, v4);
  sub_1DA86E858(v3);
  (*(v5 + 8))(v8, v4);
  SummaryService.update(listState:)(v3);
  (*(v0 + 8))(v3, v25);
  sub_1DA86E1BC();
}

uint64_t sub_1DA871288()
{
  v1 = v0;
  v2 = sub_1DA93FEC4();
  v165 = *(v2 - 8);
  v3 = *(v165 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v192 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v182 = &v147 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v147 - v8;
  v198 = sub_1DA9401F4();
  v178 = *(v198 - 8);
  v9 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v181 = *(v12 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v147 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v15 = *(v167 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v167);
  v150 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v147 - v19;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v166 = *(v171 - 8);
  v20 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v147 - v21;
  v22 = sub_1DA9408C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 56);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22);
  v28 = v27;
  LOBYTE(v27) = sub_1DA9408F4();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    goto LABEL_110;
  }

  v29 = sub_1DA847DA8(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v30 = sub_1DA940464();
  swift_endAccess();
  v31 = v30;
  v154 = *(v30 + 16);
  if (!v154)
  {
    goto LABEL_97;
  }

  v148 = v29;
  v194 = v2;
  v149 = v1;
  v32 = 0;
  v163 = v30 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
  v162 = v166 + 16;
  v161 = (v15 + 88);
  v160 = *MEMORY[0x1E69DF238];
  v159 = *MEMORY[0x1E69DF248];
  v158 = *MEMORY[0x1E69DF230];
  v157 = *MEMORY[0x1E69DF218];
  v156 = *MEMORY[0x1E69DF228];
  v155 = *MEMORY[0x1E69DF210];
  v152 = (v166 + 8);
  v151 = (v15 + 8);
  v33 = v181;
  v185 = v181 + 16;
  v179 = (v181 + 8);
  v191 = (v165 + 16);
  v190 = (v165 + 32);
  v164 = MEMORY[0x1E69E7CC0];
  v180 = v12;
  v34 = v183;
  v35 = v167;
  v153 = v30;
  v175 = v178 + 16;
  v174 = (v165 + 8);
  v173 = v11;
  v172 = (v178 + 8);
  while (1)
  {
    if (v32 >= *(v31 + 16))
    {
      goto LABEL_105;
    }

    v36 = *(v166 + 72);
    v169 = v32;
    v37 = v170;
    v38 = v171;
    (*(v166 + 16))(v170, v163 + v36 * v32, v171);
    sub_1DA940364();
    v39 = v168;
    v40 = (*v161)(v168, v35);
    v41 = v40 == v160 || v40 == v159;
    v42 = v41 || v40 == v158;
    v43 = v42 || v40 == v157;
    v44 = v43 || v40 == v156;
    if (v44 || v40 == v155)
    {
      break;
    }

    (*v152)(v37, v38);
    (*v151)(v39, v35);
LABEL_4:
    v32 = v169 + 1;
    v31 = v153;
    if (v169 + 1 == v154)
    {

      v1 = v149;
      v29 = v148;
      v144 = v164;
      goto LABEL_98;
    }
  }

  v188 = sub_1DA84900C(MEMORY[0x1E69E7CC0]);
  v46 = sub_1DA940424();
  v47 = v46;
  v187 = *(v46 + 16);
  if (v187)
  {
    v48 = 0;
    v186 = v46 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v49 = v179;
    v50 = v188;
    v177 = v46;
    while (1)
    {
      if (v48 >= *(v47 + 16))
      {
        goto LABEL_101;
      }

      (*(v33 + 16))(v34, v186 + *(v33 + 72) * v48, v12);
      v193 = sub_1DA9403C4();
      v195 = v51;
      if (v51)
      {
        break;
      }

      (*v49)(v34, v12);
LABEL_26:
      if (++v48 == v187)
      {
        v188 = v50;

        v35 = v167;
        goto LABEL_51;
      }
    }

    if (v50[2] && (v52 = sub_1DA85A4B4(v193, v195), (v53 & 1) != 0))
    {
      v54 = *(v50[7] + 8 * v52);
      v200 = v54;
    }

    else
    {
      v54 = MEMORY[0x1E69E7CD0];
      v200 = MEMORY[0x1E69E7CD0];
    }

    v189 = v48;
    v55 = sub_1DA940394();
    v56 = *(v55 + 16);
    if (v56)
    {
      v188 = v50;
      v57 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      i = v55;
      v58 = v55 + v57;
      v59 = *(v178 + 72);
      v196 = *(v178 + 16);
      v197 = v59;
      v60 = v194;
      v61 = v198;
      v62 = v182;
      v63 = v174;
      v64 = v173;
      v65 = v172;
      v66 = v176;
      do
      {
        v196(v64, v58, v61);
        sub_1DA940124();
        sub_1DA8A93F0(v66, v62);
        v61 = v198;
        (*v63)(v66, v60);
        (*v65)(v64, v61);
        v58 += v197;
        --v56;
      }

      while (v56);

      v54 = v200;
      v12 = v180;
      v33 = v181;
      v49 = v179;
      v50 = v188;
      v47 = v177;
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v199 = v50;
    v68 = sub_1DA85A4B4(v193, v195);
    v70 = v50[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_102;
    }

    v74 = v69;
    if (v50[3] >= v73)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v68;
        sub_1DA860D40();
        v68 = v78;
        v50 = v199;
        if (v74)
        {
          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    else
    {
      sub_1DA85C9C0(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_1DA85A4B4(v193, v195);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_111;
      }
    }

    v50 = v199;
    if (v74)
    {
LABEL_44:
      v76 = v50[7];
      v77 = *(v76 + 8 * v68);
      *(v76 + 8 * v68) = v54;

LABEL_48:
      v34 = v183;
      (*v49)(v183, v12);
      v48 = v189;
      goto LABEL_26;
    }

LABEL_46:
    v50[(v68 >> 6) + 8] |= 1 << v68;
    v79 = (v50[6] + 16 * v68);
    v80 = v195;
    *v79 = v193;
    v79[1] = v80;
    *(v50[7] + 8 * v68) = v54;
    v81 = v50[2];
    v72 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v72)
    {
      goto LABEL_103;
    }

    v50[2] = v82;
    goto LABEL_48;
  }

LABEL_51:
  v83 = sub_1DA849020(MEMORY[0x1E69E7CC0]);
  v84 = v188 + 64;
  v85 = 1 << *(v188 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & *(v188 + 64);
  v88 = (v85 + 63) >> 6;

  v89 = 0;
  v90 = v182;
  v186 = v84;
  for (i = v88; ; v88 = i)
  {
    if (!v87)
    {
      while (1)
      {
        v95 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          break;
        }

        if (v95 >= v88)
        {

          v134 = v150;
          sub_1DA940364();
          v135 = sub_1DA940354();
          v137 = v136;
          (*v151)(v134, v35);
          v138 = v164;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_1DA8863EC(0, *(v138 + 2) + 1, 1, v138);
          }

          v139 = v138;
          v140 = *(v138 + 2);
          v164 = v139;
          v141 = *(v139 + 3);
          if (v140 >= v141 >> 1)
          {
            v164 = sub_1DA8863EC((v141 > 1), v140 + 1, 1, v164);
          }

          (*v152)();
          v142 = v164;
          *(v164 + 2) = v140 + 1;
          v143 = &v142[24 * v140];
          *(v143 + 4) = v135;
          *(v143 + 5) = v137;
          *(v143 + 6) = v83;

          v34 = v183;
          goto LABEL_4;
        }

        v87 = *(v84 + 8 * v95);
        ++v89;
        if (v87)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      result = sub_1DA9416E4();
      __break(1u);
      return result;
    }

    v95 = v89;
LABEL_62:
    v189 = v95;
    v96 = __clz(__rbit64(v87)) | (v95 << 6);
    v97 = *(v188 + 56);
    v98 = (*(v188 + 48) + 16 * v96);
    v100 = *v98;
    v99 = v98[1];
    v195 = v100;
    v196 = v99;
    v197 = *(v97 + 8 * v96);
    v101 = *(v197 + 16);
    v193 = v87;
    if (!v101)
    {
      v187 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B88, &qword_1DA95D4D0);
    v102 = *(v165 + 72);
    v103 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v29 = swift_allocObject();
    v104 = _swift_stdlib_malloc_size(v29);
    if (!v102)
    {
      goto LABEL_106;
    }

    if (v104 - v103 == 0x8000000000000000 && v102 == -1)
    {
      goto LABEL_109;
    }

    v177 = v83;
    v106 = 0;
    v107 = v101;
    v108 = 0;
    v109 = v107;
    v29[2] = v107;
    v29[3] = 2 * ((v104 - v103) / v102);
    v1 = v197 + 56;
    v110 = 1 << *(v197 + 32);
    v111 = v110 < 64 ? ~(-1 << v110) : -1;
    v112 = v111 & *(v197 + 56);
    v187 = v29;
    v113 = v29 + v103;
    v114 = (v110 + 63) >> 6;
    if (!v112)
    {
      break;
    }

    while (1)
    {
      v115 = v106;
LABEL_76:
      ++v108;
      v116 = v192;
      v29 = v194;
      (*v191)(v192, *(v197 + 48) + (__clz(__rbit64(v112)) | (v115 << 6)) * v102, v194);
      (*v190)(v113, v116, v29);
      if (v108 == v109)
      {
        break;
      }

      v112 &= v112 - 1;
      v113 += v102;
      v106 = v115;
      if (!v112)
      {
        goto LABEL_73;
      }
    }

    v90 = v182;
    v12 = v180;
    v33 = v181;
    v35 = v167;
    v83 = v177;
LABEL_81:
    v117 = v196;

    v118 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v83;
    v119 = sub_1DA85A4B4(v195, v117);
    v121 = v83[2];
    v122 = (v120 & 1) == 0;
    v72 = __OFADD__(v121, v122);
    v123 = v121 + v122;
    if (v72)
    {
      goto LABEL_104;
    }

    if (v83[3] >= v123)
    {
      v126 = v193;
      if ((v118 & 1) == 0)
      {
        v131 = v90;
        v132 = v119;
        v133 = v120;
        sub_1DA860D2C();
        v120 = v133;
        v119 = v132;
        v90 = v131;
      }

      v84 = v186;
    }

    else
    {
      v124 = v120;
      sub_1DA85C9AC(v123, v118);
      v119 = sub_1DA85A4B4(v195, v196);
      if ((v124 & 1) != (v125 & 1))
      {
        goto LABEL_111;
      }

      v120 = v124;
      v84 = v186;
      v126 = v193;
    }

    v87 = (v126 - 1) & v126;
    if (v120)
    {
      v91 = v90;
      v92 = v119;

      v83 = v200;
      v93 = v200[7];
      v94 = *(v93 + 8 * v92);
      *(v93 + 8 * v92) = v187;
      v90 = v91;
    }

    else
    {
      v83 = v200;
      v200[(v119 >> 6) + 8] |= 1 << v119;
      v127 = (v83[6] + 16 * v119);
      v128 = v196;
      *v127 = v195;
      v127[1] = v128;
      *(v83[7] + 8 * v119) = v187;
      v129 = v83[2];
      v72 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v72)
      {
        goto LABEL_107;
      }

      v83[2] = v130;
    }

    v89 = v189;
  }

LABEL_73:
  while (1)
  {
    v115 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v115 >= v114)
    {
      goto LABEL_108;
    }

    v112 = *(v1 + 8 * v115);
    ++v106;
    if (v112)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_97:

  v144 = MEMORY[0x1E69E7CC0];
LABEL_98:
  v145 = *(v1 + 24);
  sub_1DA92AA04(1, v144, v29);
}

uint64_t sub_1DA8722E0()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940854();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v0 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1DA87E018;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_86;
  v11 = _Block_copy(aBlock);

  sub_1DA940824();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_1DA8725AC(void (*a1)(uint64_t, size_t, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v108 = a4;
  v103 = a1;
  v90 = sub_1DA93FAF4();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v104 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v83 - v13;
  v14 = sub_1DA9408C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + 56);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1DA9408F4();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE8, &qword_1DA95CC80);
  v22 = *(v11 + 72);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DA95CAF0;
  v101 = v24;
  v25 = v24 + v23;
  v27 = v11 + 104;
  v26 = *(v11 + 104);
  (v26)(v25, *MEMORY[0x1E69DF210], v10);
  (v26)(v25 + v22, *MEMORY[0x1E69DF238], v10);
  (v26)(v25 + 2 * v22, *MEMORY[0x1E69DF248], v10);
  v92 = 2 * v22;
  v91 = v22;
  v28 = *MEMORY[0x1E69DF230];
  v105 = v26;
  v106 = v25;
  v93 = 3 * v22;
  (v26)(v25 + 3 * v22, v28, v10);
  v29 = &qword_1ECBD5000;
  v109 = a2;
  v110 = v5;
  v102 = a3;
  if (a3)
  {
    v30 = v11;
    v31 = a3;
    v32 = [v31 notificationSettings];
    v33 = [v32 lockScreenSetting];

    v34 = [v108 notificationSettings];
    v35 = [v34 lockScreenSetting];

    if (v33 == v35)
    {

      v100 = 0;
      a3 = v102;
      v5 = v110;
LABEL_9:
      v36 = v109;
      v29 = &qword_1ECBD5000;
      goto LABEL_10;
    }

    v37 = [v108 notificationSettings];
    v38 = [v37 lockScreenSetting];

    v5 = v110;
    if (v38 != 1)
    {

      v100 = 0;
      a3 = v102;
      goto LABEL_9;
    }

    v39 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
    v40 = *(v110 + 40);
    v100 = *MEMORY[0x1E69DF240];
    v41 = v94;
    v42 = v105;
    (v105)(v94);
    swift_beginAccess();
    v98 = v31;
    v87 = sub_1DA880680;
    v43 = v106;
    v86 = v40;
    LODWORD(v97) = sub_1DA8730F0(v106, v41, v40, v5 + v39, sub_1DA879D9C, sub_1DA880680);
    swift_endAccess();
    v107 = v30;
    v85 = *(v30 + 8);
    v85(v41, v10);
    v44 = v100;
    (v42)(v41, v100, v10);
    swift_beginAccess();
    v45 = v87;
    LODWORD(v96) = sub_1DA8730F0(v43 + v91, v41, v40, v110 + v39, sub_1DA879D9C, v87);
    swift_endAccess();
    v46 = v85;
    v85(v41, v10);
    (v42)(v41, v44, v10);
    swift_beginAccess();
    v47 = v86;
    v88 = sub_1DA8730F0(v106 + v92, v41, v86, v110 + v39, sub_1DA879D9C, v45);
    swift_endAccess();
    v46(v41, v10);
    (v42)(v41, v100, v10);
    swift_beginAccess();
    v11 = v107;
    v48 = v110 + v39;
    v29 = &qword_1ECBD5000;
    LODWORD(v43) = sub_1DA8730F0(v106 + v93, v41, v47, v48, sub_1DA879D9C, v45);
    swift_endAccess();
    v46(v41, v10);
    v5 = v110;

    v100 = v43 | v88 | v96 | v97;
    a3 = v102;
    v36 = v109;
  }

  else
  {
    v100 = 0;
    v36 = a2;
  }

LABEL_10:
  v49 = [v108 muteAssertion];
  v50 = v103;
  if (v49)
  {
    v51 = v49;
    v107 = v11;
    v99 = v27;
    v52 = v10;
    v53 = v104;
    sub_1DA93FAC4();
    v54 = v29[333];
    v96 = *(v5 + 40);
    LODWORD(v98) = *MEMORY[0x1E69DF240];
    v55 = v36;
    v56 = v94;
    v57 = (v105)(v94);
    v97 = &v83;
    MEMORY[0x1EEE9AC00](v57);
    *(&v83 - 4) = v50;
    *(&v83 - 3) = v55;
    *(&v83 - 2) = v51;
    *(&v83 - 1) = v53;
    v85 = v54;
    swift_beginAccess();
    v87 = sub_1DA87BF8C;
    v58 = v96;
    v88 = sub_1DA873B24(v106, v56, v96, sub_1DA87BF8C, (&v83 - 6));
    swift_endAccess();
    v97 = *(v107 + 8);
    v107 += 8;
    (v97)(v56, v52);
    v59 = v98;
    v60 = v105;
    v61 = (v105)(v56, v98, v52);
    v84 = &v83;
    MEMORY[0x1EEE9AC00](v61);
    v62 = v109;
    *(&v83 - 4) = v50;
    *(&v83 - 3) = v62;
    *(&v83 - 2) = v51;
    *(&v83 - 1) = v53;
    swift_beginAccess();
    v63 = v106;
    v64 = v58;
    v65 = v87;
    LODWORD(v91) = sub_1DA873B24(v106 + v91, v56, v64, v87, (&v83 - 6));
    swift_endAccess();
    v95 = v52;
    v66 = v51;
    v86 = v51;
    v67 = v97;
    (v97)(v56, v52);
    v68 = (v60)(v56, v59, v52);
    v84 = &v83;
    MEMORY[0x1EEE9AC00](v68);
    v70 = v103;
    v69 = v104;
    v71 = v109;
    *(&v83 - 4) = v103;
    *(&v83 - 3) = v71;
    *(&v83 - 2) = v66;
    *(&v83 - 1) = v69;
    swift_beginAccess();
    v72 = v63 + v92;
    v73 = v96;
    LODWORD(v92) = sub_1DA873B24(v72, v56, v96, v65, (&v83 - 6));
    swift_endAccess();
    v74 = v95;
    (v67)(v56, v95);
    v75 = (v105)(v56, v98, v74);
    v105 = &v83;
    MEMORY[0x1EEE9AC00](v75);
    v76 = v109;
    *(&v83 - 4) = v70;
    *(&v83 - 3) = v76;
    v77 = v86;
    *(&v83 - 2) = v86;
    *(&v83 - 1) = v69;
    swift_beginAccess();
    a3 = v102;
    v78 = v65;
    v79 = v109;
    LODWORD(v74) = sub_1DA873B24(v106 + v93, v56, v73, v78, (&v83 - 6));
    swift_endAccess();
    v80 = v56;
    v36 = v79;
    (v97)(v80, v95);
    v29 = &qword_1ECBD5000;

    v81 = v74 | v92 | v91 | v88 | v100;
    (*(v89 + 8))(v104, v90);
  }

  else
  {

    v70 = v50;
    v81 = v100;
  }

  v82 = v29[333];
  swift_beginAccess();
  LODWORD(v82) = sub_1DA87462C(v70, v36, a3, v108);
  swift_endAccess();
  return (v82 | v81) & 1;
}

size_t sub_1DA8730F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *), uint64_t a6)
{
  v95 = a6;
  v96 = a3;
  v97 = a5;
  v9 = sub_1DA9401F4();
  v98 = *(v9 - 8);
  v10 = *(v98 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - v19;
  v80 = sub_1DA940294();
  v82 = *(v80 - 8);
  v21 = *(v82 + 64);
  v22 = MEMORY[0x1EEE9AC00](v80);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v75 - v25;
  v26 = sub_1DA8779F8(a1);
  if (v27)
  {
    return 0;
  }

  v28 = v26;
  v85 = v13;
  v94 = a2;
  v89 = sub_1DA874D94(a2);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v83 = a4;
  v29 = sub_1DA940454();
  v31 = v30;
  v32 = *v30;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  for (; (v28 & 0x8000000000000000) == 0; *v31 = result)
  {
    if (v28 >= v32[2])
    {
      goto LABEL_36;
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v87 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v35 = v32 + v87;
    v36 = *(v34 + 72);
    v37 = sub_1DA8767B0(&v35[v36 * v28], v97);
    (v29)(v99, 0);
    if (!*(v37 + 16))
    {

      return 0;
    }

    v91 = v36;
    v77 = v37;
    v99[0] = MEMORY[0x1E69E7CC0];
    v38 = v17;
    v39 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88);
    v93 = v40;
    v41 = v80;
    v97 = v39;
    sub_1DA9411D4();
    (*(v38 + 16))(v20, v94, v16);
    if ((*(v38 + 88))(v20, v16) == *MEMORY[0x1E69DF240])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
      v42 = v82;
      v43 = *(v82 + 72);
      v44 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v45 = swift_allocObject();
      v45[1] = xmmword_1DA9596E0;
      sub_1DA940284();
      v99[0] = v45;
      v46 = v41;
      sub_1DA9411D4();
      v47 = v81;
      (*(v42 + 40))(v81, v24, v41);
      v16 = v83;
    }

    else
    {
      (*(v38 + 8))(v20, v16);
      v16 = v83;
      v46 = v41;
      v42 = v82;
      v47 = v81;
    }

    sub_1DA9411C4();
    sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0]);
    v48 = sub_1DA9409F4();
    v76 = *(v42 + 8);
    v76(v24, v46);
    v82 = v42 + 8;
    if (v48)
    {
      v24 = 0;
      v50 = v77;
      v17 = *(v77 + 16);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = 0;
      v50 = sub_1DA87C7EC(v77, v47);

      v17 = *(v50 + 16);
      if (!v17)
      {
LABEL_30:

LABEL_31:
        v76(v47, v46);
        return 1;
      }
    }

    v97 = *(v98 + 16);
    v51 = *(v98 + 80);
    v93 = *(v96 + 16);
    v77 = v50;
    v20 = (v50 + ((v51 + 32) & ~v51));
    v52 = *(v98 + 72);
    v86 = v91 * v89;
    v98 += 16;
    v91 = (v98 - 8);
    v92 = v52;
    *&v49 = 136315138;
    v79 = v49;
    v94 = v9;
    v78 = v15;
    (v97)(v15, v20, v9);
    while (1)
    {
      v54 = sub_1DA940014();
      v55 = MEMORY[0x1EEE9AC00](v54);
      *(&v75 - 4) = v96;
      *(&v75 - 3) = v55;
      *(&v75 - 2) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();

      v28 = v99[0];
      if (!v99[0])
      {
        v90 = v24;
        v61 = v15;
        if (qword_1ECBD47C8 != -1)
        {
          swift_once();
        }

        v62 = sub_1DA9405A4();
        __swift_project_value_buffer(v62, qword_1ECBE3DD0);
        v63 = v85;
        (v97)(v85, v61, v9);
        v64 = sub_1DA940584();
        v65 = sub_1DA940F14();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v99[0] = v67;
          *v66 = v79;
          v84 = sub_1DA940014();
          v69 = v68;
          v70 = *v91;
          (*v91)(v63, v94);
          v71 = v70;
          v72 = sub_1DA7AE6E8(v84, v69, v99);
          v16 = v83;

          *(v66 + 4) = v72;
          _os_log_impl(&dword_1DA7A9000, v64, v65, "Could not find notification source settings for bundle identifier: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          v73 = v67;
          v9 = v94;
          MEMORY[0x1E12739F0](v73, -1, -1);
          MEMORY[0x1E12739F0](v66, -1, -1);

          v74 = v78;
          v71(v78, v9);
          v15 = v74;
        }

        else
        {

          v53 = *v91;
          (*v91)(v63, v9);
          v53(v61, v9);
          v15 = v61;
        }

        v24 = v90;
        goto LABEL_16;
      }

      v57 = [v99[0] notificationSettings];
      v32 = [v57 groupingSetting];

      v31 = sub_1DA940454();
      v59 = v58;
      v29 = *v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v59 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1DA884B48(v29);
        *v59 = v29;
      }

      v9 = v94;
      if ((v89 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v89 >= *(v29 + 16))
      {
        goto LABEL_33;
      }

      sub_1DA875120(v15, v32);
      (v31)(v99, 0);

      (*v91)(v15, v9);
LABEL_16:
      v20 += v92;
      if (!--v17)
      {

        v46 = v80;
        v47 = v81;
        goto LABEL_31;
      }

      (v97)(v15, v20, v9);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_1DA884B48(v32);
    v32 = result;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

size_t sub_1DA873B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), void (*a5)(void, void, void))
{
  v94 = a4;
  v95 = a5;
  v83 = a3;
  v8 = sub_1DA9401F4();
  v96 = *(v8 - 1);
  v9 = *(v96 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  v80 = sub_1DA940294();
  v81 = *(v80 - 8);
  v20 = *(v81 + 64);
  v21 = MEMORY[0x1EEE9AC00](v80);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v74 - v24;
  v90 = v5;
  v25 = sub_1DA8779F8(a1);
  if (v26)
  {
    return 0;
  }

  v28 = v25;
  v84 = v12;
  v93 = a2;
  v88 = sub_1DA874D94(a2);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v29 = sub_1DA940454();
  v31 = v30;
  v32 = *v30;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v28 >= v32[2])
    {
      goto LABEL_36;
    }

    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v86 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v34 = *(v33 + 72);
    v35 = sub_1DA876A88(v94, v95);
    v29(v97, 0);
    if (!*(v35 + 16))
    {

      return 0;
    }

    v94 = v34;
    v95 = v23;
    v76 = v35;
    v97[0] = MEMORY[0x1E69E7CC0];
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88);
    v37 = v79;
    v92 = v36;
    v38 = v80;
    sub_1DA9411D4();
    (*(v16 + 16))(v19, v93, v15);
    if ((*(v16 + 88))(v19, v15) == *MEMORY[0x1E69DF240])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
      v39 = v81;
      v40 = *(v81 + 72);
      v41 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v42 = swift_allocObject();
      v42[1] = xmmword_1DA9596E0;
      v37 = v79;
      v38 = v80;
      sub_1DA940284();
      v97[0] = v42;
      v43 = v95;
      sub_1DA9411D4();
      (*(v39 + 40))(v37, v43, v38);
      v15 = v83;
    }

    else
    {
      (*(v16 + 8))(v19, v15);
      v15 = v83;
      v39 = v81;
      v43 = v95;
    }

    sub_1DA9411C4();
    sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0]);
    v44 = sub_1DA9409F4();
    v46 = *(v39 + 8);
    v45 = v39 + 8;
    v75 = v46;
    v46(v43, v38);
    v48 = v94;
    if (v44)
    {
      v28 = 0;
      v49 = v76;
      v16 = *(v76 + 16);
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v28 = 0;
      v49 = sub_1DA87C7EC(v76, v37);

      v16 = *(v49 + 16);
      if (!v16)
      {
LABEL_30:

LABEL_31:
        v75(v37, v38);
        return 1;
      }
    }

    v81 = v45;
    v95 = *(v96 + 16);
    v50 = *(v96 + 80);
    v93 = *(v15 + 16);
    v76 = v49;
    v19 = (v49 + ((v50 + 32) & ~v50));
    v51 = *(v96 + 72);
    v85 = v48 * v88;
    v96 += 16;
    v91 = (v96 - 8);
    v92 = v51;
    *&v47 = 136315138;
    v78 = v47;
    v94 = v8;
    v77 = v14;
    v95(v14, v19, v8);
    while (1)
    {
      v53 = sub_1DA940014();
      v54 = MEMORY[0x1EEE9AC00](v53);
      *(&v74 - 4) = v15;
      *(&v74 - 3) = v54;
      *(&v74 - 2) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();

      v23 = v97[0];
      if (v97[0])
      {
        v56 = [v97[0] notificationSettings];
        v29 = [v56 groupingSetting];

        v31 = sub_1DA940454();
        v58 = v57;
        v32 = *v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v58 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1DA884B48(v32);
          *v58 = v32;
        }

        v8 = v94;
        if ((v88 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          result = sub_1DA884B48(v32);
          v32 = result;
          *v31 = result;
          if ((v28 & 0x8000000000000000) != 0)
          {
            break;
          }

          goto LABEL_5;
        }

        if (v88 >= v32[2])
        {
          goto LABEL_33;
        }

        sub_1DA875120(v14, v29);
        (v31)(v97, 0);

        (*v91)(v14, v8);
      }

      else
      {
        v89 = v28;
        v60 = v14;
        if (qword_1ECBD47C8 != -1)
        {
          swift_once();
        }

        v61 = sub_1DA9405A4();
        __swift_project_value_buffer(v61, qword_1ECBE3DD0);
        v62 = v84;
        v95(v84, v60, v8);
        v63 = sub_1DA940584();
        v64 = sub_1DA940F14();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v97[0] = v66;
          *v65 = v78;
          v82 = sub_1DA940014();
          v68 = v67;
          v69 = *v91;
          (*v91)(v62, v94);
          v70 = v69;
          v71 = sub_1DA7AE6E8(v82, v68, v97);
          v15 = v83;

          *(v65 + 4) = v71;
          _os_log_impl(&dword_1DA7A9000, v63, v64, "Could not find notification source settings for bundle identifier: %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          v72 = v66;
          v8 = v94;
          MEMORY[0x1E12739F0](v72, -1, -1);
          MEMORY[0x1E12739F0](v65, -1, -1);

          v73 = v77;
          v70(v77, v8);
          v14 = v73;
        }

        else
        {

          v52 = *v91;
          (*v91)(v62, v8);
          v52(v60, v8);
          v14 = v60;
        }

        v28 = v89;
      }

      v19 += v92;
      if (!--v16)
      {

        v38 = v80;
        v37 = v79;
        goto LABEL_31;
      }

      v95(v14, v19, v8);
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_1DA87454C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_1DA940014() == a2 && v6 == a3)
  {
  }

  else
  {
    v7 = sub_1DA941684();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8;
    }
  }

  sub_1DA940094();
  if (v9)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1DA93FA44();
  v8 = [a4 isActiveForThreadIdentifier:v10 currentDate:v11];

  return v8;
}

size_t sub_1DA87462C(void (*a1)(uint64_t, size_t, uint64_t), uint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v6 = *(sub_1DA940464() + 16);

  v7 = 0;
  if (!v6)
  {
    return v7 & 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_1DA940454();
    v11 = v10;
    v12 = *v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v12);
      v12 = result;
      *v11 = result;
    }

    if (v8 >= v12[2])
    {
      break;
    }

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8;
    LOBYTE(v15) = sub_1DA877D04(a1, a2, a3, a4);
    v9(v18, 0);
    v7 |= v15;
    if (v6 == ++v8)
    {
      return v7 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA8747D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = v3[13];
  v10(&v16 - v8, *MEMORY[0x1E69DF248], v2);
  v10(v7, *MEMORY[0x1E69DF240], v2);
  v11 = *(a1 + 40);
  v12 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();

  v14 = sub_1DA8AD2F4(v13);

  sub_1DA87EA0C(v9, v7, v11, a1 + v12, v14);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  v15 = v3[1];
  v15(v7, v2);
  v15(v9, v2);
  sub_1DA86A66C();
}

Swift::Void __swiftcall NotificationGroupService.summaryServiceDidReceiveGroupSummaries(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 56);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2]._rawValue = v12;
  v13[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_1DA87BBFC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_55;
  v14 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1DA874CBC(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DA86D5F4(a2);
  }

  return result;
}

uint64_t sub_1DA874D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  result = sub_1DA8779F8(a1);
  if (v16)
  {
    (*(v3 + 16))(v6, a1, v2);
    sub_1DA9401F4();
    v17 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v17);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v17);
    sub_1DA940404();
    (*(v8 + 16))(v12, v14, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
    v27 = sub_1DA940454();
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1DA886044(0, v20[2] + 1, 1, v20);
      *v19 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DA886044(v22 > 1, v23 + 1, 1, v20);
      *v19 = v20;
    }

    v20[2] = v23 + 1;
    (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v12, v7);
    v27(v28, 0);
    v24 = sub_1DA940464();
    (*(v8 + 8))(v14, v7);
    v25 = *(v24 + 16);

    return v25 - 1;
  }

  return result;
}

uint64_t sub_1DA875120(uint64_t a1, uint64_t a2)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v4 = *(v97 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v7 = (&v95 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v9 = *(v8 - 8);
  v98 = v8;
  v99 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v95 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v95 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v95 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v95 - v25;
  v100 = a1;
  v26 = sub_1DA940014();
  v28 = v27;
  if (a2 == 1)
  {
    goto LABEL_18;
  }

  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
    v50 = sub_1DA9401F4();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1DA9596E0;
    (*(v51 + 16))(v54 + v53, v100, v50);
    (*(v4 + 104))(v7, *MEMORY[0x1E69DF250], v97);
    v55 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v55);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v55);
    sub_1DA940374();
    v57 = v98;
    v56 = v99;
    (*(v99 + 16))(v13, v16, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v58 = sub_1DA940414();
    v60 = v59;
    v61 = *v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_1DA886020(0, v61[2] + 1, 1, v61);
      *v60 = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      v61 = sub_1DA886020(v63 > 1, v64 + 1, 1, v61);
      *v60 = v61;
    }

    v61[2] = v64 + 1;
    (*(v56 + 32))(v61 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v64, v13, v57);
    v58(v102, 0);
    (*(v56 + 8))(v16, v57);
    goto LABEL_28;
  }

  v29 = sub_1DA940094();
  if (!v30)
  {
LABEL_18:
    v65 = sub_1DA8788B4(v26, v28, 0, 0);
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
      v67 = sub_1DA9401F4();
      v68 = *(v67 - 8);
      v69 = *(v68 + 72);
      v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1DA9596E0;
      (*(v68 + 16))(v71 + v70, v100, v67);
      *v7 = v26;
      v7[1] = v28;
      (*(v4 + 104))(v7, *MEMORY[0x1E69DF258], v97);
      v72 = MEMORY[0x1E69DF180];
      sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
      sub_1DA7ACFF0(&qword_1ECBD5A78, v72);
      sub_1DA7ACFF0(&qword_1ECBD5A80, v72);
      sub_1DA940374();
      v74 = v98;
      v73 = v99;
      (*(v99 + 16))(v19, v22, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
      v75 = sub_1DA940414();
      v77 = v76;
      v78 = *v76;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      *v77 = v78;
      if ((v79 & 1) == 0)
      {
        v78 = sub_1DA886020(0, v78[2] + 1, 1, v78);
        *v77 = v78;
      }

      v81 = v78[2];
      v80 = v78[3];
      if (v81 >= v80 >> 1)
      {
        v78 = sub_1DA886020(v80 > 1, v81 + 1, 1, v78);
        *v77 = v78;
      }

      v78[2] = v81 + 1;
      (*(v73 + 32))(v78 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v81, v19, v74);
      v75(v102, 0);
      (*(v73 + 8))(v22, v74);
      goto LABEL_28;
    }

    v43 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v45 = sub_1DA940414();
    v83 = v82;
    v46 = *v82;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *v83 = v46;
    if (v84)
    {
      v85 = v99;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v46 = sub_1DA884B34(v46);
      *v83 = v46;
      v85 = v99;
      if ((v43 & 0x8000000000000000) == 0)
      {
LABEL_26:
        if (v43 < v46[2])
        {
          v86 = v46 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v43;
          sub_1DA878E84(v100);
          (v45)(v102, 0);
LABEL_28:
          v101 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
          v87 = sub_1DA940414();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B20, &qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B28, &qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA87CBC8();
          sub_1DA9409E4();
          return v87(v102, 0);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v31 = v29;
  v32 = v30;
  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_18;
  }

  v34 = sub_1DA8788B4(v26, v28, v31, v32);
  v36 = v35;

  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
    v37 = sub_1DA9401F4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DA9596E0;
    (*(v38 + 16))(v41 + v40, v100, v37);
    *v7 = v31;
    v7[1] = v32;
    v7[2] = v26;
    v7[3] = v28;
    (*(v4 + 104))(v7, *MEMORY[0x1E69DF260], v97);
    v42 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v42);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v42);
    v19 = v96;
    sub_1DA940374();
    v22 = v98;
    v4 = v99;
    v26 = v95;
    (*(v99 + 16))(v95, v19, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v43 = sub_1DA940414();
    v45 = v44;
    v46 = *v44;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *v45 = v46;
    if (v47)
    {
LABEL_9:
      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        v46 = sub_1DA886020(v48 > 1, v49 + 1, 1, v46);
        *v45 = v46;
      }

      v46[2] = v49 + 1;
      (*(v4 + 32))(v46 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v49, v26, v22);
      (v43)(v102, 0);
      (*(v4 + 8))(v19, v22);
      goto LABEL_28;
    }

LABEL_36:
    v46 = sub_1DA886020(0, v46[2] + 1, 1, v46);
    *v45 = v46;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v89 = sub_1DA940414();
  v91 = v90;
  v92 = *v90;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v91 = v92;
  if (result)
  {
    v93 = v99;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = sub_1DA884B34(v92);
  v92 = result;
  *v91 = result;
  v93 = v99;
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (v34 < v92[2])
  {
    v94 = v92 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v34;
    sub_1DA878E84(v100);
    v89(v102, 0);
    goto LABEL_28;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1DA875E24(uint64_t a1, int a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - v9;
  v50 = sub_1DA9401F4();
  v57 = *(v50 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA93FEC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v18 = *(sub_1DA940424() + 16);

  v54 = v18;
  if (v18)
  {
    v47 = v10;
    v58 = v4;
    v59 = v3;
    v19 = 0;
    v20 = (v14 + 8);
    v53 = v2;
    while (1)
    {
      v21 = sub_1DA940414();
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1DA884B34(v24);
        *v23 = v24;
      }

      result = v59;
      if (v19 >= v24[2])
      {
        break;
      }

      v62 = v21;
      v52 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v27 = *(v58 + 72);
      v60 = v19;
      v55 = v24 + v52;
      v56 = v27 * v19;
      v28 = sub_1DA940394();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = 0;
        v31 = v28 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
        v32 = *(v57 + 72);
        while (1)
        {
          sub_1DA940124();
          v33 = sub_1DA93FEA4();
          (*v20)(v17, v13);
          if (v33)
          {
            break;
          }

          ++v30;
          v31 += v32;
          if (v29 == v30)
          {
            goto LABEL_3;
          }
        }

        v34 = v56;
        v35 = v59;
        v36 = sub_1DA940384();
        v37 = v49;
        sub_1DA8765F4(v30, sub_1DA884B20, MEMORY[0x1E69DF180], v49);
        (*(v57 + 8))(v37, v50);
        v36(v63, 0);
        v38 = sub_1DA93F844();
        v39 = 1;
        (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
        sub_1DA9403F4();
        v62(v64, 0);
        if (v51)
        {
          return v39;
        }

        result = sub_1DA940424();
        if (v60 < *(result + 16))
        {
          v40 = v58;
          v41 = v48;
          (*(v58 + 16))(v48, result + v52 + v34, v35);

          v42 = sub_1DA9403E4();
          v43 = *(v40 + 8);
          v43(v41, v35);
          if (v42)
          {
            v44 = sub_1DA940414();
            sub_1DA8764AC(v60, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v41);
            v43(v41, v35);
            v44(v64, 0);
          }

          v63[0] = 0;
          v45 = sub_1DA940414();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B20, &qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B28, &qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA87CBC8();
          sub_1DA9409E4();
          v45(v64, 0);
          return 1;
        }

LABEL_20:
        __break(1u);
        return result;
      }

LABEL_3:
      v19 = v60 + 1;

      v62(v64, 0);
      if (v19 == v54)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1DA8764AC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v17 * a1;
    result = (*(v16 + 32))(a5, v18, v15);
    if (v17 > 0 || v18 >= v18 + v17 + v17 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1DA8765F4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_1DA87670C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DA884BE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 24 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    memmove(v6, v6 + 3, 24 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

size_t sub_1DA8767B0(uint64_t a1, uint64_t (*a2)(char *))
{
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v29 = MEMORY[0x1E69E7CC0];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v7 = *(sub_1DA940424() + 16);

  HIDWORD(v23) = 0;
  v8 = v7 - 1;
  v24 = (v3 + 16);
  v25 = v3;
  v9 = (v3 + 8);
  while (1)
  {
    v10 = v8;
    if (v8-- < 1)
    {
      if ((v10 != 0) | BYTE4(v23) & 1)
      {
        return v29;
      }

      v8 = 0;
      HIDWORD(v23) = 1;
    }

    v12 = sub_1DA940414();
    v14 = v13;
    v15 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v15);
      v15 = result;
      *v14 = result;
    }

    if (v10 >= *(v15 + 2))
    {
      break;
    }

    v17 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v18 = *(v25 + 72) * v10;
    v19 = v26(&v15[v17 + v18]);
    v12(v28, 0);
    sub_1DA84BFA0(v19);
    result = sub_1DA940424();
    if (v10 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v24)(v6, result + v17 + v18, v2);

    v20 = sub_1DA9403E4();
    v21 = *v9;
    (*v9)(v6, v2);
    if (v20)
    {
      v22 = sub_1DA940414();
      sub_1DA8764AC(v10, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v6);
      v21(v6, v2);
      v22(v28, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

size_t sub_1DA876A88(uint64_t (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v32 = MEMORY[0x1E69E7CC0];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v9 = *(sub_1DA940424() + 16);

  HIDWORD(v24) = 0;
  v10 = v9 - 1;
  v25 = (v5 + 16);
  v26 = v5;
  v29 = (v5 + 8);
  while (1)
  {
    v11 = v10;
    if (v10 <= 0)
    {
      if ((v10 != 0) | BYTE4(v24) & 1)
      {
        return v32;
      }

      v10 = 0;
      HIDWORD(v24) = 1;
    }

    else
    {
      --v10;
    }

    v12 = v3;
    v13 = sub_1DA940414();
    v15 = v14;
    v16 = *v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v16);
      v16 = result;
      *v15 = result;
    }

    if (v11 >= v16[2])
    {
      break;
    }

    v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v19 = *(v26 + 72) * v11;
    v20 = sub_1DA87A0A0(v27, v28);
    v13(v31, 0);
    sub_1DA84BFA0(v20);
    v3 = v12;
    result = sub_1DA940424();
    if (v11 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v25)(v8, result + v18 + v19, v4);

    v21 = sub_1DA9403E4();
    v22 = *v29;
    (*v29)(v8, v4);
    if (v21)
    {
      v23 = sub_1DA940414();
      sub_1DA8764AC(v11, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v8);
      v22(v8, v4);
      v23(v31, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

size_t sub_1DA876D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v89 = a8;
  v88 = a7;
  v98 = a6;
  v105 = a5;
  v93 = a4;
  v97 = a3;
  v99 = a2;
  v90 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v84 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v17 = *(v104 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v104);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v84 - v22;
  v120 = sub_1DA9401F4();
  v23 = *(v120 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v84 - v29;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v31 = *(sub_1DA940424() + 16);

  v109 = v31;
  if (!v31)
  {
    return 0;
  }

  v92 = v21;
  v86 = v16;
  v85 = v14;
  v32 = 0;
  v111 = v27 + 16;
  v117 = (v23 + 8);
  v118 = v23 + 16;
  v100 = (v17 + 11);
  v96 = *MEMORY[0x1E69DF260];
  v112 = v27;
  v110 = (v27 + 8);
  v95 = (v17 + 1);
  v94 = (v17 + 12);
  v91 = *MEMORY[0x1E69DF258];
  v87 = v98 + 5;
  v33 = v108;
  v34 = v23;
  v106 = v23;
  v103 = v26;
  v102 = v30;
  v101 = v9;
  while (1)
  {
    v35 = v9;
    v36 = sub_1DA940424();
    if (v32 >= *(v36 + 16))
    {
      __break(1u);
      __break(1u);
      goto LABEL_68;
    }

    v107 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v37 = *(v112 + 16);
    v113 = *(v112 + 72) * v32;
    v37(v30, v36 + v107 + v113, v26);

    v23 = sub_1DA940394();
    v38 = *(v23 + 16);
    if (v38)
    {
      v115 = v32;
      v121 = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v38, 0);
      v17 = v121;
      v39 = *(v34 + 80);
      v114 = v23;
      v40 = v23 + ((v39 + 32) & ~v39);
      v23 = *(v34 + 72);
      v41 = *(v34 + 16);
      do
      {
        v42 = v119;
        v43 = v120;
        v41(v119, v40, v120);
        v44 = sub_1DA9400A4();
        v46 = v45;
        (*v117)(v42, v43);
        v121 = v17;
        v48 = v17[2];
        v47 = v17[3];
        if (v48 >= v47 >> 1)
        {
          sub_1DA82A778((v47 > 1), v48 + 1, 1);
          v17 = v121;
        }

        v17[2] = v48 + 1;
        v49 = &v17[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v40 += v23;
        --v38;
      }

      while (v38);

      v26 = v103;
      v30 = v102;
      v9 = v101;
      v32 = v115;
      v33 = v108;
      if (!v17[2])
      {
        goto LABEL_3;
      }
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_3;
      }
    }

    if (!v105)
    {
      v54 = v92;
      sub_1DA9403B4();
      v23 = v104;
      v55 = (*v100)(v54, v104);
      if (v55 != v91)
      {
        (*v110)(v30, v26);

        (*v95)(v54, v23);
        goto LABEL_4;
      }

      (*v94)(v54, v23);
      if (*v54 == v99 && v54[1] == v97)
      {
        v56 = v54[1];

LABEL_42:
        v23 = v17[2];
        if (v23 != v98[2])
        {
LABEL_53:

          (*v110)(v30, v26);
          goto LABEL_4;
        }

        if (!v23 || v17 == v98)
        {
          goto LABEL_61;
        }

        v65 = v17 + 5;
        v66 = v87;
        while (1)
        {
          v67 = *(v65 - 1) == *(v66 - 1) && *v65 == *v66;
          if (!v67 && (sub_1DA941684() & 1) == 0)
          {
            goto LABEL_3;
          }

          v65 += 2;
          v66 += 2;
          if (!--v23)
          {
            goto LABEL_61;
          }
        }
      }

      v63 = v54[1];
      v64 = sub_1DA941684();

      if (v64)
      {
        goto LABEL_42;
      }

      goto LABEL_3;
    }

    sub_1DA9403B4();
    v23 = v104;
    v50 = (*v100)(v33, v104);
    if (v50 != v96)
    {
      (*v110)(v30, v26);

      (*v95)(v33, v23);
      goto LABEL_4;
    }

    (*v94)(v33, v23);
    v52 = *v33;
    v51 = v33[1];
    if (v33[2] == v99 && v33[3] == v97)
    {
      v53 = v33[3];
    }

    else
    {
      v57 = v33[3];
      v58 = sub_1DA941684();

      if ((v58 & 1) == 0)
      {
        (*v110)(v30, v26);

        v33 = v108;
        goto LABEL_4;
      }
    }

    if (v52 == v93 && v51 == v105)
    {
      break;
    }

    v59 = sub_1DA941684();

    v33 = v108;
    if (v59)
    {
      goto LABEL_30;
    }

LABEL_3:
    (*v110)(v30, v26);

LABEL_4:
    v34 = v106;
    if (++v32 == v109)
    {
      return 0;
    }
  }

  v33 = v108;
LABEL_30:
  v23 = v17[2];
  if (v23 != v98[2])
  {
    goto LABEL_53;
  }

  if (v23 && v17 != v98)
  {
    v60 = v17 + 5;
    v61 = v87;
    do
    {
      v62 = *(v60 - 1) == *(v61 - 1) && *v60 == *v61;
      if (!v62 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_3;
      }

      v60 += 2;
      v61 += 2;
    }

    while (--v23);
  }

  v69 = sub_1DA93F844();
  v70 = *(v69 - 8);
  v71 = v86;
  (*(v70 + 16))(v86, v90, v69);
  (*(v70 + 56))(v71, 0, 1, v69);
  v23 = sub_1DA940414();
  v17 = v72;
  v35 = *v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v35;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_57;
  }

LABEL_68:
  v35 = sub_1DA884B34(v35);
  *v17 = v35;
LABEL_57:
  if (v32 >= v35[2])
  {
    __break(1u);
  }

  else
  {
    sub_1DA9403F4();
    (v23)(&v121, 0);
    v23 = sub_1DA940414();
    v17 = v74;
    v35 = *v74;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v35;
    if (v75)
    {
      goto LABEL_59;
    }
  }

  v35 = sub_1DA884B34(v35);
  *v17 = v35;
LABEL_59:
  if (v32 < v35[2])
  {
    goto LABEL_66;
  }

  __break(1u);
LABEL_61:

  v76 = sub_1DA93F844();
  v77 = *(v76 - 8);
  v78 = v85;
  (*(v77 + 16))(v85, v90, v76);
  (*(v77 + 56))(v78, 0, 1, v76);
  v23 = sub_1DA940414();
  v80 = v79;
  v81 = *v79;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v80 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1DA884B34(v81);
    *v80 = v81;
  }

  if (v32 >= v81[2])
  {
    __break(1u);
  }

  else
  {
    sub_1DA9403F4();
    (v23)(&v121, 0);
    v23 = sub_1DA940414();
    v80 = v83;
    v81 = *v83;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v80 = v81;
    if (result)
    {
      goto LABEL_65;
    }
  }

  result = sub_1DA884B34(v81);
  v81 = result;
  *v80 = result;
LABEL_65:
  if (v32 < v81[2])
  {
LABEL_66:

    sub_1DA9403D4();
    (v23)(&v121, 0);
    (*v110)(v30, v26);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8779F8(uint64_t a1)
{
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v20 = v1;
  v21 = *(sub_1DA940464() + 16);

  v11 = 0;
  v16[1] = v7 + 8;
  v16[2] = v7 + 16;
  v16[0] = v2 + 8;
  while (1)
  {
    v12 = v11;
    if (v21 == v11)
    {
      return 0;
    }

    result = sub_1DA940464();
    if (v11 >= *(result + 16))
    {
      break;
    }

    ++v11;
    (*(v7 + 16))(v10, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6);

    sub_1DA940364();
    (*(v7 + 8))(v10, v6);
    sub_1DA9401F4();
    v14 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v14);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v14);
    v15 = sub_1DA940334();
    (*v16[0])(v5, v17);
    if (v15)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA877D04(void (*a1)(uint64_t, size_t, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v9 = sub_1DA9401F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  v44 = v11;
  v45 = a1;
  v43 = v13;
  v14 = a3;
  v15 = [v14 notificationSettings];
  v16 = [v15 notificationCenterSetting];

  v17 = [a4 notificationSettings];
  v18 = [v17 notificationCenterSetting];

  if (v16 == v18 || (v19 = [a4 notificationSettings], v20 = objc_msgSend(v19, sel_notificationCenterSetting), v19, v20 != 1))
  {
    v21 = v9;

    v24 = 0;
  }

  else
  {
    v21 = v9;

    v22 = sub_1DA87DCF0(v4, v45, a2);

    v23 = *(v22 + 16);

    v24 = v23 != 0;
  }

  v25 = v14;
  v26 = [v25 notificationSettings];
  v27 = [v26 groupingSetting];

  v28 = a4;
  v29 = [a4 notificationSettings];
  v30 = [v29 &selRef_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_protectionClass_forBundleID_options_completionHandler_ + 4];

  if (v27 == v30)
  {
LABEL_13:

    return v24;
  }

  v31 = sub_1DA87DCF0(v4, v45, a2);

  v32 = v31;
  v33 = *(v31 + 16);
  if (!v33)
  {

    goto LABEL_13;
  }

  v41[1] = v31;
  v42 = v25;
  v34 = v43;
  v36 = v44 + 16;
  v35 = *(v44 + 16);
  v37 = v32 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v44 = *(v44 + 72);
  v45 = v35;
  do
  {
    v45(v34, v37, v21);
    v38 = [v28 notificationSettings];
    v39 = [v38 groupingSetting];

    sub_1DA875120(v34, v39);
    (*(v36 - 8))(v34, v21);
    v37 += v44;
    --v33;
  }

  while (v33);

  return 1;
}

uint64_t sub_1DA878030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v5 = sub_1DA940424();
  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v1 + 16);
  v7 = v1 + 16;
  v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v10 = *(v7 + 56);
  v27 = v5;
  v28 = v10;
  v29 = (v7 - 8);
  v30 = v8;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v7;
    v30(v4, v9, v0);
    v14 = sub_1DA940394();
    result = (*v29)(v4, v0);
    v15 = *(v14 + 16);
    v16 = v11[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v11[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v11 = sub_1DA885FF8(isUniquelyReferenced_nonNull_native, v19, 1, v11);
      if (*(v14 + 16))
      {
LABEL_14:
        v20 = (v11[3] >> 1) - v11[2];
        result = sub_1DA9401F4();
        v21 = *(result - 8);
        if (v20 < v15)
        {
          goto LABEL_23;
        }

        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = *(v21 + 72);
        swift_arrayInitWithCopy();

        v7 = v13;
        if (v15)
        {
          v24 = v11[2];
          v25 = __OFADD__(v24, v15);
          v26 = v24 + v15;
          if (v25)
          {
            goto LABEL_24;
          }

          v11[2] = v26;
        }

        goto LABEL_4;
      }
    }

    v7 = v13;
    if (v15)
    {
      goto LABEL_22;
    }

LABEL_4:
    v9 += v28;
    if (!--v6)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DA8782BC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B68, &qword_1DA95CCC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v58 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B78, &qword_1DA95CCD8);
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  sub_1DA940364();
  sub_1DA940354();
  (*(v14 + 8))(v17, v13);
  v48 = v23;
  sub_1DA940344();
  v24 = sub_1DA940424();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v64 + 16);
    v27 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v46 = v24;
    v28 = v24 + v27;
    v60 = *(v64 + 72);
    v61 = v26;
    v64 += 16;
    v29 = (v64 - 8);
    v30 = v57;
    v31 = (v56 + 48);
    v59 = (v56 + 32);
    v52 = v56 + 8;
    v53 = (v56 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v58;
    v54 = v10;
    v55 = v8;
    do
    {
      v34 = v62;
      v61(v62, v28, v10);
      sub_1DA87A488(v33);
      (*v29)(v34, v10);
      if ((*v31)(v33, 1, v30) == 1)
      {
        sub_1DA7BA120(v33, &qword_1ECBD5B68, &qword_1DA95CCC8);
      }

      else
      {
        v35 = v30;
        v36 = *v59;
        v37 = v63;
        (*v59)(v63, v33, v35);
        (*v53)(v8, v37, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1DA8861BC(0, v32[2] + 1, 1, v32);
        }

        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          v32 = sub_1DA8861BC(v38 > 1, v39 + 1, 1, v32);
        }

        v40 = v56;
        v30 = v57;
        (*(v56 + 8))(v63, v57);
        v32[2] = v39 + 1;
        v41 = v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
        v8 = v55;
        v36(v41, v55, v30);
        v33 = v58;
        v10 = v54;
      }

      v28 += v60;
      --v25;
    }

    while (v25);
  }

  v42 = v50;
  v44 = v48;
  v43 = v49;
  (*(v49 + 16))(v47, v48, v50);
  sub_1DA940404();
  return (*(v43 + 8))(v44, v42);
}

uint64_t sub_1DA8788B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v52 = a2;
  v54 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v56 - 8);
  v10 = (v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v44 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v44 - v19;
  v53 = v4;
  v47 = a4;
  if (!a4)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v35 = *(sub_1DA940424() + 16);

    v50 = v35;
    if (v35)
    {
      v23 = 0;
      v49 = v14 + 16;
      v36 = (v6 + 88);
      LODWORD(v48) = *MEMORY[0x1E69DF258];
      v55 = (v14 + 8);
      v37 = v6;
      v38 = (v6 + 8);
      v39 = (v37 + 96);
      do
      {
        result = sub_1DA940424();
        if (v23 >= *(result + 16))
        {
          goto LABEL_32;
        }

        (*(v14 + 16))(v18, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v13);

        sub_1DA9403B4();
        v40 = v56;
        v41 = (*v36)(v10, v56);
        if (v41 == v48)
        {
          (*v39)(v10, v40);
          if (*v10 == v54 && v10[1] == v52)
          {
            v20 = v18;
LABEL_29:

            (*v55)(v20, v13);
            return v23;
          }

          v42 = v10[1];
          v43 = sub_1DA941684();

          (*v55)(v18, v13);
          if (v43)
          {
            return v23;
          }
        }

        else
        {
          (*v55)(v18, v13);
          (*v38)(v10, v40);
        }

        ++v23;
      }

      while (v50 != v23);
    }

    return 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v22 = *(sub_1DA940424() + 16);

  v51 = v22;
  if (!v22)
  {
    return 0;
  }

  v23 = 0;
  v50 = v14 + 16;
  v24 = v6;
  v25 = (v6 + 88);
  LODWORD(v49) = *MEMORY[0x1E69DF260];
  v55 = (v14 + 8);
  v45 = (v24 + 96);
  v46 = (v24 + 8);
  v44[1] = v21;
  while (1)
  {
    result = sub_1DA940424();
    if (v23 >= *(result + 16))
    {
      break;
    }

    (*(v14 + 16))(v20, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v13);

    sub_1DA9403B4();
    v27 = v56;
    v28 = (*v25)(v12, v56);
    if (v28 == v49)
    {
      (*v45)(v12, v27);
      v30 = v12[2];
      v29 = v12[3];
      if (*v12 == v48 && v12[1] == v47)
      {
        v31 = v12[1];
      }

      else
      {
        v32 = v12[1];
        v33 = sub_1DA941684();

        if ((v33 & 1) == 0)
        {
          (*v55)(v20, v13);

          goto LABEL_5;
        }
      }

      if (v30 == v54 && v29 == v52)
      {
        goto LABEL_29;
      }

      v34 = sub_1DA941684();

      (*v55)(v20, v13);
      if (v34)
      {
        return v23;
      }
    }

    else
    {
      (*v55)(v20, v13);
      (*v46)(v12, v27);
    }

LABEL_5:
    if (v51 == ++v23)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DA878E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v20 = &v20 - v4;
  v5 = sub_1DA9401F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v10 = sub_1DA940384();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1DA885FF8(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DA885FF8(v15 > 1, v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, v5);
  v10(v22, 0);
  v21 = 0;
  v17 = sub_1DA940384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B38, &qword_1DA95CCA8);
  sub_1DA7AD11C(&qword_1ECBD5B40, &qword_1ECBD5B38, &qword_1DA95CCA8);
  sub_1DA7AD11C(&qword_1ECBD5B48, &qword_1ECBD5B38, &qword_1DA95CCA8);
  sub_1DA87CC1C();
  sub_1DA9409E4();
  v17(v22, 0);
  v18 = sub_1DA93F844();
  (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
  return sub_1DA9403F4();
}

void *sub_1DA8791BC(uint64_t a1)
{
  v2 = sub_1DA9400B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v59 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = v46 - v7;
  v8 = sub_1DA9401F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v60 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = v46 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v22 = sub_1DA940394();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46[2] = v21;
    v47 = v20;
    v48 = a1;
    v25 = *(v9 + 16);
    v24 = v9 + 16;
    v62 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v46[1] = v22;
    v57 = v26;
    v27 = v22 + v26;
    v56 = *(v24 + 56);
    v54 = (v3 + 8);
    v55 = (v3 + 104);
    v53 = (v24 - 8);
    v52 = (v24 + 16);
    v51 = *MEMORY[0x1E69DF160];
    v50 = MEMORY[0x1E69E7CC0];
    v61 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = v24;
      v62(v16, v27, v8);
      v31 = v58;
      sub_1DA9400C4();
      v32 = v59;
      (*v55)(v59, v51, v2);
      sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168]);
      sub_1DA940B74();
      sub_1DA940B74();
      v33 = *v54;
      (*v54)(v32, v2);
      v33(v31, v2);
      if (v64 == v63 && (v34 = sub_1DA93FF84(), v35 = [v34 request], v34, v36 = objc_msgSend(v35, sel_content), v35, v37 = objc_msgSend(v36, sel_interruptionLevel), v36, v37 != 2))
      {
        v62(v49, v16, v8);
        v38 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DA885FF8(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v43 = v38[3];
        v41 = v40 + 1;
        if (v40 >= v43 >> 1)
        {
          v38 = sub_1DA885FF8(v43 > 1, v40 + 1, 1, v38);
          v42 = v49;
          v50 = v38;
        }

        else
        {
          v50 = v38;
          v42 = v49;
        }
      }

      else
      {
        v62(v60, v16, v8);
        v38 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DA885FF8(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1DA885FF8(v39 > 1, v40 + 1, 1, v38);
        }

        v42 = v60;
        v61 = v38;
      }

      (*v53)(v16, v8);
      v38[2] = v41;
      v29 = v56;
      (*v52)(v38 + v57 + v40 * v56, v42, v8);
      v27 += v29;
      --v23;
      v24 = v30;
    }

    while (v23);

    v20 = v47;
    v28 = v50;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v28[2])
  {
    v44 = sub_1DA93F844();
    (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
    sub_1DA9403F4();
  }

  return v28;
}

void *sub_1DA87979C(uint64_t a1)
{
  v58 = sub_1DA9400B4();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v58);
  v57 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v49 - v6;
  v7 = sub_1DA9401F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v61 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v60 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v20 = sub_1DA940394();
  v21 = *(v20 + 16);
  if (!v21)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v49[2] = v19;
  v50 = v18;
  v51 = a1;
  v23 = *(v8 + 16);
  v22 = v8 + 16;
  v67 = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v49[1] = v20;
  v65 = v24;
  v25 = v20 + v24;
  v64 = *(v22 + 56);
  v54 = *MEMORY[0x1E69DF158];
  v52 = (v2 + 8);
  v53 = (v2 + 104);
  v62 = (v22 + 16);
  v63 = (v22 - 8);
  v59 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v27 = v60;
  v26 = v61;
  v23(v60, (v20 + v24), v7);
  while (1)
  {
    v30 = sub_1DA93FF84();
    v31 = [v30 request];

    v32 = [v31 content];
    if ([v32 interruptionLevel] == 3)
    {

LABEL_9:
      v67(v26, v27, v7);
      v41 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1DA885FF8(0, v41[2] + 1, 1, v41);
      }

      v43 = v41[2];
      v42 = v41[3];
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1DA885FF8(v42 > 1, v43 + 1, 1, v41);
      }

      v45 = v26;
      v66 = v41;
      goto LABEL_4;
    }

    v33 = v7;
    v34 = v22;
    v35 = v56;
    sub_1DA9400C4();
    v36 = v57;
    v37 = v58;
    (*v53)(v57, v54, v58);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168]);
    sub_1DA940B74();
    sub_1DA940B74();

    v38 = *v52;
    v39 = v36;
    v27 = v60;
    (*v52)(v39, v37);
    v40 = v35;
    v22 = v34;
    v7 = v33;
    v26 = v61;
    v38(v40, v37);
    if (v69 == v68)
    {
      goto LABEL_9;
    }

    v67(v55, v27, v7);
    v41 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DA885FF8(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v46 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v46 >> 1)
    {
      v41 = sub_1DA885FF8(v46 > 1, v43 + 1, 1, v41);
      v45 = v55;
      v59 = v41;
    }

    else
    {
      v59 = v41;
      v45 = v55;
    }

LABEL_4:
    (*v63)(v27, v7);
    v41[2] = v44;
    v29 = v64;
    (*v62)(v41 + v65 + v43 * v64, v45, v7);
    v25 += v29;
    if (!--v21)
    {
      break;
    }

    v67(v27, v25, v7);
  }

  v18 = v50;
  v28 = v59;
LABEL_20:
  sub_1DA9403A4();
  if (v28[2])
  {
    v47 = sub_1DA93F844();
    (*(*(v47 - 8) + 56))(v18, 1, 1, v47);
    sub_1DA9403F4();
  }

  return v28;
}

void *sub_1DA879D9C(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v36 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v14 = sub_1DA940394();
  v15 = *(v14 + 16);
  if (v15)
  {
    v28[1] = v13;
    v29 = v12;
    v30 = a1;
    v31 = v14;
    v17 = *(v3 + 16);
    v16 = v3 + 16;
    v33 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v34 = v17;
    v18 = v14 + v33;
    v32 = *(v16 + 56);
    v19 = MEMORY[0x1E69E7CC0];
    v35 = v16;
    v20 = v36;
    do
    {
      v21 = v34;
      v34(v8, v18, v2);
      v21(v20, v8, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DA885FF8(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_1DA885FF8(v22 > 1, v23 + 1, 1, v19);
      }

      (*(v16 - 8))(v8, v2);
      v19[2] = v23 + 1;
      v24 = v32;
      v25 = v19 + v33 + v23 * v32;
      v20 = v36;
      (*(v16 + 16))(v25, v36, v2);
      v18 += v24;
      --v15;
    }

    while (v15);

    v12 = v29;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v19[2])
  {
    v26 = sub_1DA93F844();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    sub_1DA9403F4();
  }

  return v19;
}

void *sub_1DA87A0A0(uint64_t (*a1)(char *), uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v38 - v5;
  v7 = sub_1DA9401F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v48 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v17 = sub_1DA940394();
  v18 = *(v17 + 16);
  if (v18)
  {
    v38[1] = v16;
    v39 = v6;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v38[0] = v17;
    v44 = v22;
    v23 = v17 + v22;
    v24 = *(v20 + 56);
    v42 = (v20 - 8);
    v43 = v24;
    v40 = v2;
    v41 = (v20 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v45 = v21;
    v46 = v20;
    v21(v15, (v17 + v22), v7);
    while (1)
    {
      if (v49(v15))
      {
        v19(v47, v15, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1DA885FF8(0, v25[2] + 1, 1, v25);
        }

        v32 = v25[2];
        v31 = v25[3];
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v27 = sub_1DA885FF8(v31 > 1, v32 + 1, 1, v25);
          v28 = v47;
          v34 = v27;
        }

        else
        {
          v34 = v25;
          v27 = v25;
          v28 = v47;
        }
      }

      else
      {
        v19(v48, v15, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DA885FF8(0, v26[2] + 1, 1, v26);
        }

        v34 = v25;
        v32 = v26[2];
        v35 = v26[3];
        v33 = v32 + 1;
        if (v32 >= v35 >> 1)
        {
          v27 = sub_1DA885FF8(v35 > 1, v32 + 1, 1, v26);
          v28 = v48;
          v26 = v27;
        }

        else
        {
          v27 = v26;
          v28 = v48;
        }
      }

      (*v42)(v15, v7);
      *(v27 + 16) = v33;
      v29 = v27 + v44;
      v30 = v43;
      (*v41)(v29 + v32 * v43, v28, v7);
      v23 += v30;
      --v18;
      v19 = v45;
      v25 = v34;
      if (!v18)
      {
        break;
      }

      v45(v15, v23, v7);
    }

    v6 = v39;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v25[2])
  {
    v36 = sub_1DA93F844();
    (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
    sub_1DA9403F4();
  }

  return v25;
}

uint64_t sub_1DA87A488@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DA9401F4();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B80, &unk_1DA95CCE0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v46 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  sub_1DA9403B4();
  v17 = (*(v7 + 88))(v10, v6);
  v18 = v17;
  if (v17 == *MEMORY[0x1E69DF260])
  {
    (*(v7 + 96))(v10, v6);
    v20 = *(v10 + 2);
    v19 = *(v10 + 3);
    *v16 = *v10;
    *(v16 + 2) = v20;
    v21 = 24;
LABEL_5:
    *&v16[v21] = v19;
    goto LABEL_6;
  }

  if (v17 == *MEMORY[0x1E69DF258])
  {
    (*(v7 + 96))(v10, v6);
    v19 = *(v10 + 1);
    *v16 = *v10;
    v21 = 8;
    goto LABEL_5;
  }

  if (v17 != *MEMORY[0x1E69DF250])
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
    (*(*(v45 - 8) + 56))(a1, 1, 1, v45);
    return (*(v7 + 8))(v10, v6);
  }

LABEL_6:
  v22 = *(v51 + 104);
  v49 = v16;
  v22(v16, v18, v11);
  v23 = sub_1DA940394();
  v24 = *(v23 + 16);
  if (v24)
  {
    v47 = v11;
    v48 = a1;
    v26 = v53 + 16;
    v25 = *(v53 + 16);
    v27 = *(v53 + 80);
    v46[1] = v23;
    v28 = v23 + ((v27 + 32) & ~v27);
    v52 = *(v53 + 72);
    v53 = v25;
    v29 = (v26 - 8);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = v54;
      (v53)(v5, v28, v54);
      v32 = sub_1DA93FF84();
      (*v29)(v5, v31);
      v33 = [v32 request];

      v34 = [v33 identifier];
      v35 = sub_1DA940A14();
      v37 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DA7B6928(0, *(v30 + 2) + 1, 1, v30);
      }

      v39 = *(v30 + 2);
      v38 = *(v30 + 3);
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1DA7B6928((v38 > 1), v39 + 1, 1, v30);
      }

      *(v30 + 2) = v39 + 1;
      v40 = &v30[16 * v39];
      *(v40 + 4) = v35;
      *(v40 + 5) = v37;
      v28 += v52;
      --v24;
    }

    while (v24);

    v11 = v47;
    a1 = v48;
  }

  else
  {
  }

  v41 = v51;
  v42 = v49;
  (*(v51 + 16))(v50, v49, v11);
  sub_1DA940374();
  (*(v41 + 8))(v42, v11);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  return (*(*(v43 - 8) + 56))(a1, 0, 1, v43);
}

uint64_t sub_1DA87AA34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA941764();
  sub_1DA93FB44();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87AA8C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA93FB44();

  return sub_1DA93FB44();
}

uint64_t sub_1DA87AAD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA941764();
  sub_1DA93FB44();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87AB24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((sub_1DA93FB34() & 1) == 0)
  {
    return 0;
  }

  return sub_1DA93FB34();
}

uint64_t sub_1DA87AB8C()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87ABDC()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87AC20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DA93FB34();
}

void *sub_1DA87AC2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1 + 32;
  v4 = *(v0 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DA87BF04(v3, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1DA886198(0, v5[2] + 1, 1, v5);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1DA886198((v9 > 1), v10 + 1, 1, v5);
      }

      sub_1DA87BF3C(v13);
      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
    }

    else
    {
      sub_1DA87BF3C(v13);
    }

    v3 += 16;
    --v2;
  }

  while (v2);

  return v5;
}

uint64_t sub_1DA87AD60()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(*(v0 + 16) + 16);
  v4 = v3 - 1;
  v5 = v3 == 1;
  if (v3 - 1 > 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v6 = !v5;
  if (((v6 | v2) & 1) == 0)
  {
    v7 = 0;
    v2 = 1;
    while (1)
    {
      v8 = *(v0 + 16);
      if (v4 >= *(v8 + 16))
      {
        break;
      }

      sub_1DA87BF04(v8 + 16 * v4 + 32, v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1DA87BF3C(v13);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        swift_beginAccess();
        v10 = *(v0 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 16) = v10;
        if ((result & 1) == 0)
        {
          result = sub_1DA884B5C(v10);
          v10 = result;
          *(v0 + 16) = result;
        }

        v11 = v10[2];
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        v12 = v11 - 1;
        sub_1DA87BF3C(&v10[2 * v4 + 4]);
        swift_arrayInitWithTakeFrontToBack();
        v10[2] = v12;
        *(v0 + 16) = v10;
        result = swift_endAccess();
      }

      v4 = v7;
      v5 = v7 == 0;
      if (v7 <= 0)
      {
        goto LABEL_2;
      }

LABEL_7:
      v7 = v4 - 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA87AEC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v18 = sub_1DA940FC4();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940F74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DA940854();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v17[1] = "7WeakObserverArray";
  v17[2] = v14;
  sub_1DA940824();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v18);
  *(v4 + 48) = sub_1DA941004();
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 16) = a4;
  v15 = v20;
  *(v4 + 24) = v19;
  *(v4 + 32) = v15;
  *(v4 + 40) = v21;
  return v4;
}

void sub_1DA87B16C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    if (!*(v0 + 56))
    {
      v9 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
      v10 = sub_1DA940A04();
      v11 = [v9 initWithIdentifier_];

      v12 = *(v0 + 16);
      if (v12 / 10.0 <= 0.1)
      {
        v13 = v12 / 10.0;
      }

      else
      {
        v13 = 0.1;
      }

      v14 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1DA87E040;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_92;
      v15 = _Block_copy(aBlock);

      [v11 scheduleWithFireInterval:v7 leewayInterval:v15 queue:v12 handler:v13];
      _Block_release(v15);
      v16 = *(v0 + 56);
      *(v0 + 56) = v11;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA87B3B8()
{
  v0 = sub_1DA9407F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940854();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(result + 48);
    *v13 = v16;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
    v17 = v16;
    LOBYTE(v16) = sub_1DA9408F4();
    result = (*(v10 + 8))(v13, v9);
    if (v16)
    {
      v18 = *(v15 + 56);
      if (v18)
      {
        [v18 invalidate];
        v19 = *(v15 + 56);
      }

      else
      {
        v19 = 0;
      }

      *(v15 + 56) = 0;

      if ((*(v15 + 64) & 1) == 0)
      {
        v24 = *(v15 + 24);
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        aBlock[4] = sub_1DA87E048;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA7AF1D0;
        aBlock[3] = &block_descriptor_98;
        v21 = _Block_copy(aBlock);

        sub_1DA940824();
        v26 = MEMORY[0x1E69E7CC0];
        sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
        v23 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
        sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
        sub_1DA9411D4();
        MEMORY[0x1E12720D0](0, v8, v4, v21);
        _Block_release(v21);
        (*(v1 + 8))(v4, v0);
        (*(v25 + 8))(v8, v23);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DA87B80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9407F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(a2 + 16);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = &off_1F5634440;
  aBlock[4] = sub_1DA87F7E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_137;
  v14 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

id sub_1DA87BAF8@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1DA87BB5C()
{
  if (!*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer))
  {
    return sub_1DA8688D4();
  }

  return result;
}

void sub_1DA87BB80()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1DA868EF0(v1);
}

void sub_1DA87BBD0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1DA86ADC0(v1);
}

uint64_t type metadata accessor for NotificationGroupService()
{
  result = qword_1ECBD5AA8;
  if (!qword_1ECBD5AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA87BC6C()
{
  sub_1DA87BD64();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA87BD64()
{
  if (!qword_1ECBD5AB8)
  {
    sub_1DA9401F4();
    v0 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v0);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v0);
    v1 = sub_1DA940474();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBD5AB8);
    }
  }
}

uint64_t sub_1DA87BE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA87BEB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1DA87BF98(uint64_t a1, id a2)
{
  v3 = [a2 topicSettings];
  sub_1DA7AF3EC(0, &qword_1ECBD5BB8, 0x1E69DF290);
  v4 = sub_1DA940BE4();

  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v5; i = v4)
  {
    v6 = 0;
    v33 = v4 & 0xC000000000000001;
    v30 = v4 + 32;
    v31 = v4 & 0xFFFFFFFFFFFFFF8;
    v7 = a1 + 56;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v33)
      {
        v9 = MEMORY[0x1E1272460](v6, i);
      }

      else
      {
        if (v6 >= *(v31 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v30 + 8 * v6);
      }

      v10 = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v12 = [v9 topic];
      v4 = [v12 identifier];

      v13 = sub_1DA940A14();
      v15 = v14;

      if (*(a1 + 16) && (v16 = *(a1 + 40), sub_1DA941764(), sub_1DA940AB4(), v17 = sub_1DA941794(), v18 = -1 << *(a1 + 32), v4 = v17 & ~v18, ((*(v7 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
      {
        v19 = ~v18;
        while (1)
        {
          v20 = (*(a1 + 48) + 16 * v4);
          v21 = *v20 == v13 && v20[1] == v15;
          if (v21 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v4 = (v4 + 1) & v19;
          if (((*(v7 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DA885EEC(0, *(v8 + 2) + 1, 1, v8);
        }

        v4 = *(v8 + 2);
        v22 = *(v8 + 3);
        if (v4 >= v22 >> 1)
        {
          v8 = sub_1DA885EEC((v22 > 1), v4 + 1, 1, v8);
        }

        *(v8 + 2) = v4 + 1;
        v23 = &v8[16 * v4];
        *(v23 + 4) = v10;
        v23[40] = 1;
        if (v6 == v5)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_4:

        if (v6 == v5)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v5 = sub_1DA941264();
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (!*(v8 + 2))
  {
    v24 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DA885EEC(0, 1, 1, v8);
    }

    v26 = *(v8 + 2);
    v25 = *(v8 + 3);
    if (v26 >= v25 >> 1)
    {
      v8 = sub_1DA885EEC((v25 > 1), v26 + 1, 1, v8);
    }

    *(v8 + 2) = v26 + 1;
    v27 = &v8[16 * v26];
    *(v27 + 4) = v24;
    v27[40] = 0;
  }

  return v8;
}

BOOL sub_1DA87C2E8()
{
  v0 = sub_1DA9400B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = sub_1DA93FF84();
  v9 = [v8 request];

  v10 = [v9 content];
  if ([v10 interruptionLevel] == 3)
  {

    return 1;
  }

  else
  {
    sub_1DA9400C4();
    (*(v1 + 104))(v5, *MEMORY[0x1E69DF158], v0);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168]);
    sub_1DA940B74();
    sub_1DA940B74();

    v12 = *(v1 + 8);
    v12(v5, v0);
    v12(v7, v0);
    return v13[1] == v13[0];
  }
}

BOOL sub_1DA87C4F4(uint64_t a1, void *a2)
{
  result = 1;
  if (!sub_1DA87C2E8())
  {
    if ([a2 notificationListDisplayStyleSetting] != 2)
    {
      return 0;
    }

    v3 = sub_1DA93FF84();
    v4 = [v3 request];

    v5 = [v4 content];
    v6 = [v5 interruptionLevel];

    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA87C5A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 32; ; i += 16)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1DA87C648(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1DA87C5A4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_29;
  }

  v11 = v5 + 2;
  v10 = v5[2];
  if (v9 == v10)
  {
    return v8;
  }

  v12 = 16 * result + 48;
  while (v9 < v10)
  {
    sub_1DA87BF04(v5 + v12, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      swift_unknownObjectRelease();
      result = sub_1DA87BF3C(v17);
      if (v14 == a2)
      {
        goto LABEL_10;
      }

      if (v9 != v8)
      {
LABEL_17:
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        v15 = *v11;
        if (v8 >= *v11)
        {
          goto LABEL_26;
        }

        result = sub_1DA87BF04(&v5[2 * v8 + 4], v17);
        if (v9 >= v15)
        {
          goto LABEL_27;
        }

        sub_1DA87BF04(v5 + v12, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1DA884B5C(v5);
        }

        result = sub_1DA87F464(v16, &v5[2 * v8 + 4]);
        if (v9 >= v5[2])
        {
          goto LABEL_28;
        }

        result = sub_1DA87F464(v17, v5 + v12);
        *a1 = v5;
      }
    }

    else
    {
      result = sub_1DA87BF3C(v17);
      if (v9 != v8)
      {
        goto LABEL_17;
      }
    }

    ++v8;
LABEL_10:
    ++v9;
    v11 = v5 + 2;
    v10 = v5[2];
    v12 += 16;
    if (v9 == v10)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DA87C7EC(uint64_t a1, uint64_t a2)
{
  v47 = sub_1DA940294();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v47);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v34 - v9;
  v35 = sub_1DA9401F4();
  v10 = *(*(v35 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v35);
  v46 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(v13 + 16);
  v17 = v13 + 16;
  v43 = v18;
  v19 = *(v17 + 56);
  v37 = (*(v17 + 64) + 32) & ~*(v17 + 64);
  v20 = a1 + v37;
  v40 = (v4 + 8);
  v41 = (v4 + 16);
  v36 = (v17 - 8);
  v39 = (v17 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v44 = v17;
  v45 = a2;
  v38 = v8;
  v21 = v35;
  v42 = v19;
  do
  {
    v50 = v16;
    v43(v15, v20, v21);
    v23 = v48;
    sub_1DA93FEE4();
    v24 = v15;
    v25 = v47;
    (*v41)(v8, a2, v47);
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
    v26 = sub_1DA941164();
    v27 = *v40;
    (*v40)(v8, v25);
    v27(v23, v25);
    if (v26)
    {
      v28 = *v39;
      (*v39)(v46, v24, v21);
      v29 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v29;
      v15 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DA82AAAC(0, *(v29 + 16) + 1, 1);
        v21 = v35;
        v29 = v51;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1DA82AAAC(v31 > 1, v32 + 1, 1);
        v21 = v35;
        v29 = v51;
      }

      *(v29 + 16) = v32 + 1;
      v49 = v29;
      v22 = v42;
      v28((v29 + v37 + v32 * v42), v46, v21);
      a2 = v45;
      v8 = v38;
    }

    else
    {
      (*v36)(v24, v21);
      v15 = v24;
      a2 = v45;
      v22 = v42;
    }

    v20 += v22;
    v16 = v50 - 1;
  }

  while (v50 != 1);
  return v49;
}

unint64_t sub_1DA87CBC8()
{
  result = qword_1ECBD5B30;
  if (!qword_1ECBD5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5B30);
  }

  return result;
}

unint64_t sub_1DA87CC1C()
{
  result = qword_1ECBD5B50;
  if (!qword_1ECBD5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5B50);
  }

  return result;
}

void *sub_1DA87CC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v57 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v49 = v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v18 = sub_1DA940394();
  v56 = *(v18 + 16);
  if (v56)
  {
    v46[2] = v17;
    v47 = v16;
    v48 = a1;
    v19 = 0;
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v59 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v46[1] = v18;
    v55 = v22;
    v54 = v18 + v22;
    v23 = *(v20 + 56);
    v24 = a2 + 56;
    v51 = (v20 + 16);
    v52 = (v20 - 8);
    v50 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v53 = v23;
    do
    {
      v25 = v20;
      v59(v12, v54 + v23 * v19, v4);
      v26 = sub_1DA940014();
      v28 = v27;
      if (*(a2 + 16) && (v29 = v26, v30 = *(a2 + 40), sub_1DA941764(), sub_1DA940AB4(), v31 = sub_1DA941794(), v32 = -1 << *(a2 + 32), v33 = v31 & ~v32, ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(a2 + 48) + 16 * v33);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v59(v49, v12, v4);
        v37 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1DA885FF8(0, v37[2] + 1, 1, v37);
        }

        v39 = v37[2];
        v42 = v37[3];
        v40 = v39 + 1;
        if (v39 >= v42 >> 1)
        {
          v37 = sub_1DA885FF8(v42 > 1, v39 + 1, 1, v37);
          v41 = v49;
          v50 = v37;
        }

        else
        {
          v50 = v37;
          v41 = v49;
        }
      }

      else
      {
LABEL_14:

        v59(v57, v12, v4);
        v37 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1DA885FF8(0, v37[2] + 1, 1, v37);
        }

        v39 = v37[2];
        v38 = v37[3];
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v37 = sub_1DA885FF8(v38 > 1, v39 + 1, 1, v37);
        }

        v41 = v57;
        v58 = v37;
      }

      ++v19;
      (*v52)(v12, v4);
      v37[2] = v40;
      v23 = v53;
      (*v51)(v37 + v55 + v39 * v53, v41, v4);
      v20 = v25;
    }

    while (v19 != v56);

    v16 = v47;
    v43 = v50;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v43[2])
  {
    v44 = sub_1DA93F844();
    (*(*(v44 - 8) + 56))(v16, 1, 1, v44);
    sub_1DA9403F4();
  }

  return v43;
}

size_t sub_1DA87D154(uint64_t a1, uint64_t a2)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v74 = &v67[-v6];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v67[-v9];
  v92 = MEMORY[0x1E69E7CC0];
  v83 = a2;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v11 = *(sub_1DA940464() + 16);

  v68 = 0;
  v12 = v11 - 1;
  v80 = (v7 + 16);
  v82 = v7;
  v84 = (v7 + 8);
  v69 = (v4 + 16);
  v72 = v4;
  v73 = (v4 + 8);
  v71 = a1;
  v70 = v10;
  while (1)
  {
    if (v12 <= 0)
    {
      if ((v12 != 0) | v68 & 1)
      {
LABEL_50:

        return v92;
      }

      v13 = 0;
      v68 = 1;
    }

    else
    {
      v13 = v12 - 1;
    }

    v14 = sub_1DA940454();
    v16 = v15;
    v17 = *v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v17);
      v17 = result;
      *v16 = result;
    }

    if (v12 >= v17[2])
    {
      break;
    }

    v77 = v14;
    v76 = v13;
    v75 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v19 = v17 + v75;
    v20 = *(v72 + 72);
    v78 = v12;
    v21 = v20 * v12;
    swift_bridgeObjectRetain_n();
    v87 = v19;
    v88 = v21;
    v22 = *(sub_1DA940424() + 16);

    v79 = 0;
    v86 = v22 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = v86;
      v25 = v86 - 1;
      if (v86 >= 1)
      {
        goto LABEL_15;
      }

      if ((v86 != 0) | v79 & 1)
      {
        break;
      }

      v25 = 0;
      v79 = 1;
LABEL_15:
      v26 = sub_1DA940414();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1DA884B34(v29);
        *v28 = v29;
      }

      if (v24 >= v29[2])
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v31 = v83;
      v32 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v33 = *(v82 + 72);
      v34 = v33 * v24;

      v35 = sub_1DA87CC70(v29 + v32 + v33 * v24, v31);

      v26(v90, 0);
      v36 = v35[2];
      v37 = v23[2];
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        goto LABEL_44;
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      if (v39 && v38 <= v23[3] >> 1)
      {
        if (!v35[2])
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v47 = v37 + v36;
        }

        else
        {
          v47 = v37;
        }

        v23 = sub_1DA885FF8(v39, v47, 1, v23);
        if (!v35[2])
        {
LABEL_30:

          if (v36)
          {
            goto LABEL_45;
          }

          goto LABEL_31;
        }
      }

      v40 = (v23[3] >> 1) - v23[2];
      v41 = *(sub_1DA9401F4() - 8);
      if (v40 < v36)
      {
        goto LABEL_47;
      }

      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = *(v41 + 72);
      swift_arrayInitWithCopy();

      if (v36)
      {
        v44 = v23[2];
        v45 = __OFADD__(v44, v36);
        v46 = v44 + v36;
        if (v45)
        {
          goto LABEL_49;
        }

        v23[2] = v46;
      }

LABEL_31:
      v48 = sub_1DA940424();
      if (v24 >= *(v48 + 16))
      {
        goto LABEL_46;
      }

      v86 = v25;
      v49 = v81;
      v50 = v85;
      (*v80)(v81, v48 + v32 + v34, v85);

      v51 = sub_1DA9403E4();
      v52 = *v84;
      (*v84)(v49, v50);
      if (v51)
      {
        v53 = sub_1DA940414();
        v55 = v54;
        v56 = *v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1DA884B34(v56);
        }

        v57 = v56[2];
        if (v24 >= v57)
        {
          goto LABEL_48;
        }

        v58 = v57 - 1;
        v59 = v56 + v32 + v34;
        v52(v59, v85);
        if (v33 > 0 || v59 >= &v59[v33 + (v58 - v24) * v33])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v33)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56[2] = v58;
        *v55 = v56;
        v53(v90, 0);
      }
    }

    swift_bridgeObjectRelease_n();
    v77(v91, 0);
    sub_1DA84BFA0(v23);
    result = sub_1DA940464();
    v60 = v78;
    if (v78 >= *(result + 16))
    {
      goto LABEL_52;
    }

    v61 = v89;
    v62 = v74;
    (*v69)(v74, result + v75 + v88, v89);

    v63 = sub_1DA940434();
    v64 = *v73;
    (*v73)(v62, v61);
    v12 = v76;
    if (v63)
    {
      v65 = sub_1DA940454();
      v66 = v74;
      sub_1DA8764AC(v60, sub_1DA884B48, &qword_1ECBD5AC0, &qword_1DA95CC48, v74);
      v64(v66, v89);
      v65(v91, 0);
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void *sub_1DA87D8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v52 = a2;
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v43 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v18 = sub_1DA940394();
  v19 = *(v18 + 16);
  if (!v19)
  {

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v40[1] = v17;
  v41 = v16;
  v42 = a1;
  v22 = *(v5 + 16);
  v20 = v5 + 16;
  v21 = v22;
  v23 = (*(v20 + 64) + 32) & ~*(v20 + 64);
  v40[0] = v18;
  v47 = v23;
  v24 = v18 + v23;
  v25 = *(v20 + 56);
  v45 = (v20 - 8);
  v46 = v25;
  v26 = (v20 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v48 = v22;
  v49 = v20;
  v22(v12, (v18 + v23), v4);
  while (1)
  {
    if (sub_1DA940014() == v52 && v32 == v50)
    {

LABEL_11:
      v21(v51, v12, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DA885FF8(0, v27[2] + 1, 1, v27);
      }

      v35 = v27[2];
      v34 = v27[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v28 = sub_1DA885FF8(v34 > 1, v35 + 1, 1, v27);
        v29 = v51;
        v27 = v28;
      }

      else
      {
        v28 = v27;
        v29 = v51;
      }

      goto LABEL_5;
    }

    v33 = sub_1DA941684();

    if (v33)
    {
      goto LABEL_11;
    }

    v21(v43, v12, v4);
    v28 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DA885FF8(0, v28[2] + 1, 1, v28);
    }

    v35 = v28[2];
    v37 = v28[3];
    v36 = v35 + 1;
    if (v35 >= v37 >> 1)
    {
      v28 = sub_1DA885FF8(v37 > 1, v35 + 1, 1, v28);
    }

    v29 = v43;
    v44 = v28;
LABEL_5:
    (*v45)(v12, v4);
    v28[2] = v36;
    v30 = v28 + v47;
    v31 = v46;
    (*v26)(&v30[v35 * v46], v29, v4);
    v24 += v31;
    --v19;
    v21 = v48;
    if (!v19)
    {
      break;
    }

    v48(v12, v24, v4);
  }

  v16 = v41;
LABEL_21:
  sub_1DA9403A4();
  if (v27[2])
  {
    v38 = sub_1DA93F844();
    (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
    sub_1DA9403F4();
  }

  return v27;
}

size_t sub_1DA87DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v30 - v7;
  v38 = MEMORY[0x1E69E7CC0];
  v34 = a3;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v10 = *(sub_1DA940424() + 16);

  HIDWORD(v30) = 0;
  v11 = v10 - 1;
  v31 = (v5 + 16);
  v32 = v5;
  v36 = (v5 + 8);
  while (1)
  {
    v12 = v11;
    if (v11-- < 1)
    {
      if ((v12 != 0) | BYTE4(v30) & 1)
      {

        return v38;
      }

      v11 = 0;
      HIDWORD(v30) = 1;
    }

    v14 = sub_1DA940414();
    v16 = v15;
    v17 = *v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v17);
      v17 = result;
      *v16 = result;
    }

    if (v12 >= v17[2])
    {
      break;
    }

    v19 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v20 = v17 + v19;
    v21 = *(v32 + 72) * v12;
    v22 = v9;
    v23 = a1;
    v24 = v34;

    v25 = sub_1DA87D8D0(&v20[v21], v33, v24);
    a1 = v23;
    v9 = v22;

    v14(v37, 0);
    sub_1DA84BFA0(v25);
    result = sub_1DA940424();
    if (v12 >= *(result + 16))
    {
      goto LABEL_14;
    }

    v26 = v35;
    (*v31)(v8, result + v19 + v21, v35);

    v27 = sub_1DA9403E4();
    v28 = *v36;
    (*v36)(v8, v26);
    if (v27)
    {
      v29 = sub_1DA940414();
      sub_1DA8764AC(v12, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v8);
      v28(v8, v35);
      v29(v37, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DA87E048()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  return (*(v1 + 32))();
}

void *sub_1DA87E07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = v53 - v10;
  v72 = sub_1DA9401F4();
  v11 = *(v72 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v65 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v24 = sub_1DA940394();
  v64 = *(v24 + 16);
  if (v64)
  {
    v53[2] = v23;
    v54 = v22;
    v55 = a1;
    v25 = 0;
    v27 = *(v11 + 16);
    v26 = v11 + 16;
    v69 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v53[1] = v24;
    v63 = v28;
    v62 = v24 + v28;
    v29 = *(v26 + 56);
    v73 = v5 + 16;
    v74 = a2 + 56;
    v56 = v5;
    v30 = (v5 + 8);
    v59 = (v26 + 16);
    v60 = (v26 - 8);
    v58 = MEMORY[0x1E69E7CC0];
    v66 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = v26;
    v33 = v72;
    v70 = v18;
    v71 = v32;
    v61 = v29;
    do
    {
      v68 = v25;
      v69(v18, v62 + v29 * v25, v33);
      sub_1DA940124();
      if (*(a2 + 16) && (v36 = *(v31 + 40), sub_1DA7ACFF0(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]), v37 = v31, v38 = sub_1DA9409A4(), v39 = -1 << *(v31 + 32), v40 = v38 & ~v39, ((*(v74 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        v42 = *(v56 + 72);
        v43 = *(v56 + 16);
        while (1)
        {
          v43(v9, *(v37 + 48) + v42 * v40, v4);
          sub_1DA7ACFF0(&qword_1ECBD5948, MEMORY[0x1E69DF0D0]);
          v44 = sub_1DA9409F4();
          v45 = *v30;
          (*v30)(v9, v4);
          if (v44)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v37 = v31;
          if (((*(v74 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v45(v75, v4);
        v69(v57, v70, v72);
        v46 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1DA885FF8(0, v46[2] + 1, 1, v46);
        }

        v48 = v46[2];
        v50 = v46[3];
        v67 = v48 + 1;
        if (v48 >= v50 >> 1)
        {
          v46 = sub_1DA885FF8(v50 > 1, v48 + 1, 1, v46);
          v49 = v57;
          v58 = v46;
        }

        else
        {
          v58 = v46;
          v49 = v57;
        }
      }

      else
      {
LABEL_10:
        (*v30)(v75, v4);
        v69(v65, v70, v72);
        v46 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1DA885FF8(0, v46[2] + 1, 1, v46);
        }

        v48 = v46[2];
        v47 = v46[3];
        v67 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1DA885FF8(v47 > 1, v48 + 1, 1, v46);
        }

        v49 = v65;
        v66 = v46;
      }

      v25 = v68 + 1;
      v18 = v70;
      v33 = v72;
      (*v60)(v70, v72);
      v46[2] = v67;
      v35 = v46 + v63 + v48 * v61;
      v29 = v61;
      (*v59)(v35, v49, v33);
      a2 = v31;
    }

    while (v25 != v64);

    v22 = v54;
    v34 = v58;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v34[2])
  {
    v51 = sub_1DA93F844();
    (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
    sub_1DA9403F4();
  }

  return v34;
}

size_t sub_1DA87E6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v35 = MEMORY[0x1E69E7CC0];
  v31 = a2;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v10 = *(sub_1DA940424() + 16);

  v28 = 0;
  v11 = v10 - 1;
  v29 = (v5 + 16);
  v30 = v5;
  v32 = (v5 + 8);
  while (1)
  {
    v12 = v11;
    if (v11 < 1)
    {
      if ((v11 != 0) | v28 & 1)
      {

        return v35;
      }

      v33 = 0;
      v28 = 1;
    }

    else
    {
      v33 = v11 - 1;
    }

    v13 = sub_1DA940414();
    v15 = v14;
    v16 = *v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v16);
      v16 = result;
      *v15 = result;
    }

    if (v12 >= v16[2])
    {
      break;
    }

    v18 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v19 = *(v30 + 72) * v12;
    v20 = v9;
    v21 = a1;
    v22 = v31;

    v23 = sub_1DA87E07C(v16 + v18 + v19, v22);
    a1 = v21;
    v9 = v20;

    v13(v34, 0);
    sub_1DA84BFA0(v23);
    result = sub_1DA940424();
    if (v12 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v29)(v8, result + v18 + v19, v4);

    v24 = sub_1DA9403E4();
    v25 = *v32;
    (*v32)(v8, v4);
    v11 = v33;
    if (v24)
    {
      v26 = sub_1DA940414();
      sub_1DA8764AC(v12, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v8);
      v25(v8, v4);
      v26(v34, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

size_t sub_1DA87EA0C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v80 = a3;
  v9 = sub_1DA9401F4();
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v92 = *(v15 - 1);
  v16 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - v17;
  v19 = sub_1DA940294();
  v78 = *(v19 - 8);
  v20 = *(v78 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v72 - v24;

  v85 = a4;
  v25 = sub_1DA8779F8(a1);
  if (v26)
  {
LABEL_9:

    return 0;
  }

  else
  {
    v27 = v25;
    v91 = v13;
    v75 = a5;
    v90 = a2;
    v84 = sub_1DA874D94(a2);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
    v28 = sub_1DA940454();
    v30 = v29;
    v31 = *v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((result & 1) == 0)
    {
      goto LABEL_33;
    }

    for (; (v27 & 0x8000000000000000) == 0; *v30 = result)
    {
      if (v27 >= v31[2])
      {
        goto LABEL_35;
      }

      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
      v82 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v34 = v31 + v82;
      v35 = *(v33 + 72);
      v36 = &v34[v35 * v27];
      v37 = v75;

      v38 = sub_1DA87E6E8(v36, v37);

      (v28)(v94, 0);
      if (!*(v38 + 16))
      {

        goto LABEL_9;
      }

      v88 = v35;
      v74 = v38;
      v94[0] = MEMORY[0x1E69E7CC0];
      sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
      sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88);
      v39 = v77;
      sub_1DA9411D4();
      v40 = v92;
      (*(v92 + 16))(v18, v90, v15);
      if ((*(v40 + 88))(v18, v15) == *MEMORY[0x1E69DF240])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
        v41 = v78;
        v42 = *(v78 + 72);
        v43 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v44 = swift_allocObject();
        v44[1] = xmmword_1DA9596E0;
        sub_1DA940284();
        v94[0] = v44;
        sub_1DA9411D4();
        (*(v41 + 40))(v39, v23, v19);
        v18 = v80;
        v45 = v91;
      }

      else
      {
        (*(v40 + 8))(v18, v15);
        v18 = v80;
        v45 = v91;
        v41 = v78;
      }

      sub_1DA9411C4();
      sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0]);
      v46 = sub_1DA9409F4();
      v47 = *(v41 + 8);
      v47(v23, v19);
      v49 = v74;
      v78 = v41 + 8;
      if (v46)
      {
        v27 = 0;
        v50 = *(v74 + 16);
        if (!v50)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v27 = 0;
        v49 = sub_1DA87C7EC(v74, v39);

        v50 = *(v49 + 16);
        if (!v50)
        {
LABEL_29:

          v47(v39, v19);
LABEL_30:

          return 1;
        }
      }

      v72 = v47;
      v73 = v19;
      v92 = *(v93 + 16);
      v51 = *(v93 + 80);
      v87 = *(v18 + 2);
      v74 = v49;
      v23 = (v49 + ((v51 + 32) & ~v51));
      v86 = *(v93 + 72);
      v81 = v88 * v84;
      v93 += 16;
      v90 = (v93 - 8);
      *&v48 = 136315138;
      v76 = v48;
      v88 = v9;
      v19 = v89;
      (v92)(v89, v23, v9);
      while (1)
      {
        v53 = sub_1DA940014();
        v54 = MEMORY[0x1EEE9AC00](v53);
        *(&v72 - 4) = v18;
        *(&v72 - 3) = v54;
        *(&v72 - 2) = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
        sub_1DA940FE4();

        v15 = v94[0];
        if (!v94[0])
        {
          if (qword_1ECBD47C8 != -1)
          {
            swift_once();
          }

          v60 = sub_1DA9405A4();
          __swift_project_value_buffer(v60, qword_1ECBE3DD0);
          v19 = v89;
          (v92)(v45, v89, v9);
          v61 = sub_1DA940584();
          v62 = sub_1DA940F14();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v94[0] = v64;
            *v63 = v76;
            v65 = sub_1DA940014();
            v67 = v66;
            v79 = v27;
            v68 = *v90;
            (*v90)(v91, v88);
            v69 = sub_1DA7AE6E8(v65, v67, v94);
            v18 = v80;

            *(v63 + 4) = v69;
            _os_log_impl(&dword_1DA7A9000, v61, v62, "Could not find notification source settings for bundle identifier: %s", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v64);
            v70 = v64;
            v9 = v88;
            MEMORY[0x1E12739F0](v70, -1, -1);
            v71 = v63;
            v45 = v91;
            MEMORY[0x1E12739F0](v71, -1, -1);

            v68(v19, v9);
            v27 = v79;
          }

          else
          {

            v52 = *v90;
            (*v90)(v45, v9);
            v52(v19, v9);
          }

          goto LABEL_15;
        }

        v56 = [v94[0] notificationSettings];
        v31 = [v56 groupingSetting];

        v30 = sub_1DA940454();
        v58 = v57;
        v28 = *v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v58 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_1DA884B48(v28);
          *v58 = v28;
        }

        v9 = v88;
        if ((v84 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v84 >= *(v28 + 16))
        {
          goto LABEL_32;
        }

        v19 = v89;
        sub_1DA875120(v89, v31);
        (v30)(v94, 0);

        (*v90)(v19, v9);
        v45 = v91;
LABEL_15:
        v23 += v86;
        if (!--v50)
        {

          v72(v77, v73);
          goto LABEL_30;
        }

        (v92)(v19, v23, v9);
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      result = sub_1DA884B48(v31);
      v31 = result;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_1DA9402B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA87F59C()
{
  v1 = *(sub_1DA9402B4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 8))(v0 + v2, ObjectType, v4);
}

uint64_t sub_1DA87F660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA87F6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA86D0C0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DA87F814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA87F85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for UserNotificationGroupSortComparator(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UserNotificationGroupSortComparator(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA87FA24()
{
  result = qword_1ECBD5BC0;
  if (!qword_1ECBD5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BC0);
  }

  return result;
}

unint64_t sub_1DA87FA7C()
{
  result = qword_1ECBD5BC8;
  if (!qword_1ECBD5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BC8);
  }

  return result;
}

unint64_t sub_1DA87FAD4()
{
  result = qword_1ECBD5BD0;
  if (!qword_1ECBD5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BD0);
  }

  return result;
}

unint64_t sub_1DA87FB2C()
{
  result = qword_1ECBD5BD8;
  if (!qword_1ECBD5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BD8);
  }

  return result;
}

uint64_t sub_1DA87FB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v60 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v58 - v8;
  v67 = sub_1DA9400B4();
  v65 = *(v67 - 8);
  v9 = *(v65 + 8);
  v10 = MEMORY[0x1EEE9AC00](v67);
  v64 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v58 - v15;
  v17 = sub_1DA93FF94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v58 - v23;
  v25 = a1;
  sub_1DA940024();
  v26 = a2;
  sub_1DA940024();
  sub_1DA7ACFF0(&qword_1ECBD5BE0, MEMORY[0x1E69DF138]);
  LOBYTE(a1) = sub_1DA9409F4();
  v27 = *(v18 + 8);
  v27(v22, v17);
  v27(v24, v17);
  if (a1)
  {
    v58[2] = v25;
    sub_1DA9400C4();
    v61 = v14;
    v58[1] = v26;
    sub_1DA9400C4();
    v28 = *MEMORY[0x1E69DF150];
    v30 = v64;
    v29 = v65;
    v31 = *(v65 + 13);
    v32 = v67;
    v31(v64, v28, v67);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168]);
    v66 = v16;
    sub_1DA940B74();
    sub_1DA940B74();
    v33 = *(v29 + 1);
    v33(v30, v32);
    if (v69 == v68)
    {
      v34 = v66;
      v33(v66, v32);
      v31(v34, *MEMORY[0x1E69DF160], v32);
    }

    v31(v30, v28, v32);
    v35 = v61;
    sub_1DA940B74();
    sub_1DA940B74();
    v33(v30, v32);
    if (v69 == v68)
    {
      v33(v35, v32);
      v31(v35, *MEMORY[0x1E69DF160], v32);
    }

    v65 = v33;
    sub_1DA7ACFF0(&unk_1ECBD5BF0, MEMORY[0x1E69DF168]);
    v36 = v66;
    if (sub_1DA9409F4())
    {
      v37 = sub_1DA93FF84();
      v38 = [v37 date];

      v39 = v59;
      sub_1DA93FAB4();

      v40 = sub_1DA93FF84();
      v41 = [v40 date];

      v42 = v60;
      sub_1DA93FAB4();

      v43 = v39;
      LOBYTE(v40) = sub_1DA93FA54();
      v44 = v63;
      v45 = *(v62 + 8);
      v45(v42, v63);
      v45(v43, v44);
      if (v40)
      {
        v46 = v67;
        v47 = v65;
        v65(v61, v67);
        v47(v66, v46);
        return -1;
      }

      else
      {
        v51 = sub_1DA93FF84();
        v52 = v43;
        v53 = [v51 date];

        sub_1DA93FAB4();
        v54 = sub_1DA93FF84();
        v55 = [v54 date];

        sub_1DA93FAB4();
        LOBYTE(v54) = sub_1DA93FA64();
        v45(v42, v44);
        v45(v52, v44);
        v56 = v67;
        v57 = v65;
        v65(v61, v67);
        v57(v66, v56);
        return v54 & 1;
      }
    }

    else
    {
      v31(v30, *MEMORY[0x1E69DF158], v32);
      sub_1DA940B74();
      sub_1DA940B74();
      v50 = v65;
      v65(v30, v32);
      v50(v35, v32);
      v50(v36, v32);
      if (v69 == v68)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1DA940024();
    sub_1DA940024();
    sub_1DA7ACFF0(&qword_1ECBD5BE8, MEMORY[0x1E69DF138]);
    v49 = sub_1DA9409D4();
    v27(v22, v17);
    v27(v24, v17);
    if (v49)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1DA880378(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v26 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v16 = sub_1DA940394();
  if (*(v16 + 16))
  {
    v29 = v7;
    v30 = v10;
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v18 = *(v3 + 16);
    v26[1] = a1;
    v27 = v17;
    v28 = v18;
    v18(v13, v16 + v17, v2);

    v19 = *(v3 + 32);
    v19(v15, v13, v2);
    v20 = sub_1DA940394();
    if (*(v20 + 16))
    {
      v21 = v29;
      v28(v29, v20 + v27, v2);

      v22 = v30;
      v19(v30, v21, v2);
      v23 = sub_1DA87FB80(v15, v22);
      v24 = *(v3 + 8);
      v24(v22, v2);
      v24(v15, v2);
      return v23;
    }

    (*(v3 + 8))(v15, v2);
  }

  else
  {
  }

  if (sub_1DA9403E4() & 1) != 0 && (sub_1DA9403E4())
  {
    return 0;
  }

  if (sub_1DA9403E4())
  {
    return 1;
  }

  return -1;
}

id NotificationPipelineAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationPipelineAssertion.init()()
{
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  *&v0[OBJC_IVAR___UNCNotificationPipelineAssertionImpl_assertion] = sub_1DA898C10(0xD000000000000030, 0x80000001DA952DF0, 15.0);
  result = os_transaction_create();
  if (result)
  {
    *&v0[OBJC_IVAR___UNCNotificationPipelineAssertionImpl_transaction] = result;
    v2.receiver = v0;
    v2.super_class = type metadata accessor for NotificationPipelineAssertion();
    return objc_msgSendSuper2(&v2, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NotificationPipelineAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationPipelineAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA880904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA940854();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Cancellable();
  swift_allocObject();
  v15 = sub_1DA82B1E4(sub_1DA883A04, v14);
  v19 = *(v3 + 32);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_1DA883A0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);

  sub_1DA940824();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v17);
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);

  return v15;
}

uint64_t sub_1DA880C44()
{
  type metadata accessor for SpotlightIndexListener();
  v0 = swift_allocObject();
  result = sub_1DA880C80();
  qword_1EE11AEB0 = v0;
  return result;
}

uint64_t sub_1DA880C80()
{
  v1 = v0;
  v25 = sub_1DA940FC4();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for SpotlightDaemonClient()) init];
  v10 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v24[0] = "Client";
  v24[1] = v10;
  sub_1DA940824();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v25);
  *(v0 + 32) = sub_1DA941004();
  v11 = sub_1DA8480CC(MEMORY[0x1E69E7CC0]);
  v12 = MEMORY[0x1E69E7CD0];
  *(v0 + 40) = v11;
  *(v0 + 48) = v12;
  *(v0 + 56) = 0;
  v13 = *(v0 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = &v13[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler];
  v16 = *&v13[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler];
  v17 = *&v13[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler + 8];
  *v15 = sub_1DA883A20;
  v15[1] = v14;
  v18 = v13;

  sub_1DA7B5220(v16);

  v19 = *(v1 + 24);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 sharedInstance];
  [v22 addObserver_];

  return v1;
}

uint64_t sub_1DA880FE4(uint64_t a1)
{
  v2 = sub_1DA9407F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 32);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    v19 = v13;
    aBlock[4] = sub_1DA883A28;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_55_0;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    sub_1DA940824();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    v18 = v7;
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v11, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v15 + 8))(v11, v18);
  }

  return result;
}

uint64_t sub_1DA8812E8(unint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v62 - v10;
  result = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v64 = result;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  v15 = (result + 16);
  v76 = v14;
  if (a1 >> 62)
  {
    result = sub_1DA941264();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_47:
    v55 = MEMORY[0x1E69E7CC0];
    v56 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v58 = v64;
    v57 = v65;
    if (v55 >> 62)
    {
      if (!sub_1DA941264())
      {
LABEL_51:
        if (v56 >> 62)
        {
          if (!sub_1DA941264())
          {
            goto LABEL_54;
          }
        }

        else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
        }

        sub_1DA881EE0(v56);
        goto LABEL_54;
      }
    }

    else if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v59 = sub_1DA940D34();
    v60 = v63;
    (*(*(v59 - 8) + 56))(v63, 1, 1, v59);
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v61[4] = v57;
    v61[5] = v58;

    sub_1DA8DB00C(0, 0, v60, &unk_1DA95D1B8, v61);

    goto LABEL_51;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_47;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v73 = 0x80000001DA950720;
    v74 = a1 & 0xC000000000000001;
    v67 = 0x80000001DA950740;
    v66 = MEMORY[0x1E69E7CC0];
    *&v13 = 136315138;
    v68 = v13;
    v70 = v9;
    v71 = v16;
    v69 = v11;
    v72 = v15;
    while (1)
    {
      if (v74)
      {
        v18 = MEMORY[0x1E1272460](v17, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 domainIdentifier];
      if (!v20)
      {
        goto LABEL_25;
      }

      v21 = v20;
      v22 = sub_1DA940A14();
      v24 = v23;

      v25 = v22 == 0xD00000000000001BLL && v73 == v24;
      if (!v25 && (sub_1DA941684() & 1) == 0)
      {
        break;
      }

      v26 = v19;
      MEMORY[0x1E1271CA0]();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DA940C04();
      }

      sub_1DA940C14();

LABEL_7:
      if (v16 == ++v17)
      {
        v55 = *v15;
        v56 = v66;
        goto LABEL_48;
      }
    }

    if (v22 == 0xD000000000000022 && v67 == v24)
    {

LABEL_32:
      v41 = v19;
      MEMORY[0x1E1271CA0]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DA940C04();
      }

      sub_1DA940C14();

      v66 = v76;
      goto LABEL_7;
    }

    v28 = sub_1DA941684();

    if (v28)
    {
      goto LABEL_32;
    }

LABEL_25:
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v29 = sub_1DA9405A4();
    __swift_project_value_buffer(v29, qword_1EE11AFA0);
    v30 = v19;
    v31 = sub_1DA940584();
    v32 = sub_1DA940F14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = v68;
      v36 = [v30 domainIdentifier];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1DA940A14();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v42 = sub_1DA7AE6E8(v38, v40, v75);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_1DA7A9000, v31, v32, "SpotlightIndexListener handler received unknown domain: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12739F0](v35, -1, -1);
      MEMORY[0x1E12739F0](v34, -1, -1);

      a1 = v33;
      v11 = v69;
      v9 = v70;
    }

    else
    {
    }

    v43 = sub_1DA940D34();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v11, 1, 1, v43);
    v45 = swift_allocObject();
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 10;
    sub_1DA81D458(v11, v9);
    v46 = (*(v44 + 48))(v9, 1, v43);

    if (v46 == 1)
    {
      sub_1DA7BA120(v9, &qword_1ECBD4FA0, &unk_1DA958730);
    }

    else
    {
      sub_1DA940D24();
      (*(v44 + 8))(v9, v43);
    }

    v48 = *(v45 + 16);
    v47 = *(v45 + 24);
    swift_unknownObjectRetain();

    if (v48)
    {
      swift_getObjectType();
      v49 = sub_1DA940C34();
      v51 = v50;
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v16 = v71;
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
    v52 = swift_allocObject();
    *(v52 + 16) = &unk_1DA95D1A0;
    *(v52 + 24) = v45;
    if (v51 | v49)
    {
      v75[1] = 0;
      v75[2] = 0;
      v75[3] = v49;
      v75[4] = v51;
    }

    v15 = v72;
    swift_task_create();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}