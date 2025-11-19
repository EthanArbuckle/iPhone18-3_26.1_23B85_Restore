uint64_t sub_2691C9254(uint64_t a1)
{
  v2 = sub_2691E1394();
  v126 = *(v2 - 8);
  v3 = *(v126 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v124 = &v119 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v119 - v9;
  v130 = sub_2691E1114();
  v11 = *(v130 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v130);
  v129 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = &v119 - v15;
  v16 = sub_2691E10B4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  if (a1)
  {
    v122 = v10;
    v123 = v11;
    v120 = v24;
    v121 = v23;
    v134 = &v119 - v22;
    v138 = v21;
    v25 = sub_2691B8328(a1);
    v26 = 0;
    v27 = a1 & 0xC000000000000001;
    v136 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = MEMORY[0x277D84F90];
    v125 = v2;
LABEL_3:
    v137 = v28;
    while (v25 != v26)
    {
      if (v27)
      {
        v29 = MEMORY[0x26D632F20](v26, a1);
      }

      else
      {
        if (v26 >= *(v136 + 16))
        {
          goto LABEL_93;
        }

        v29 = *(a1 + 8 * v26 + 32);
      }

      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
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
        goto LABEL_107;
      }

      sub_2691E10C4();
      v6 = v139;
      if (v139)
      {
        v135 = v26 + 1;
        sub_2691E1074();

        v6 = sub_2691E1264();

        if (*(v6 + 2))
        {
          v30 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v31)
          {
            v127 = v27;
            v32 = *(*(v6 + 7) + 8 * v30);

            v33 = sub_2691B8328(v32);
            v34 = 0;
            v132 = (v32 & 0xC000000000000001);
            v133 = v33;
            v131 = v32 & 0xFFFFFFFFFFFFFF8;
            v2 = MEMORY[0x277D84F90];
            while (v133 != v34)
            {
              if (v132)
              {
                MEMORY[0x26D632F20](v34, v32);
              }

              else
              {
                if (v34 >= *(v131 + 16))
                {
                  goto LABEL_100;
                }

                v35 = *(v32 + 8 * v34 + 32);
              }

              if (__OFADD__(v34, 1))
              {
                goto LABEL_99;
              }

              v6 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_2691CB054(0, *(v2 + 16) + 1, 1, v2);
              }

              v37 = *(v2 + 16);
              v36 = *(v2 + 24);
              if (v37 >= v36 >> 1)
              {
                v2 = sub_2691CB054((v36 > 1), v37 + 1, 1, v2);
              }

              *(v2 + 16) = v37 + 1;
              *(v2 + 8 * v37 + 32) = v6;
              ++v34;
            }

            v132 = v29;

            v38 = 0;
            v133 = *(v2 + 16);
            v39 = MEMORY[0x277D84F90];
            v27 = v127;
            while (v133 != v38)
            {
              if (v38 >= *(v2 + 16))
              {
                goto LABEL_101;
              }

              v40 = v2;
              v2 = v25;
              v41 = v17;
              v42 = a1;
              v6 = v40;
              v43 = &v40[8 * v38];
              v44 = *(v43 + 4);
              v45 = *(v44 + 16);
              v46 = *(v39 + 16);
              v47 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_102;
              }

              v48 = *(v43 + 4);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v47 > *(v39 + 24) >> 1)
              {
                if (v46 <= v47)
                {
                  v50 = v46 + v45;
                }

                else
                {
                  v50 = v46;
                }

                v39 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v50, 1, v39);
              }

              a1 = v42;
              v27 = v127;
              v17 = v41;
              if (*(v44 + 16))
              {
                v51 = *(v39 + 16);
                if ((*(v39 + 24) >> 1) - v51 < v45)
                {
                  goto LABEL_105;
                }

                v25 = v2;
                v52 = v39 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v51;
                swift_arrayInitWithCopy();

                v2 = v6;
                if (v45)
                {
                  v53 = *(v39 + 16);
                  v54 = __OFADD__(v53, v45);
                  v55 = v53 + v45;
                  if (v54)
                  {
                    goto LABEL_106;
                  }

                  *(v39 + 16) = v55;
                }
              }

              else
              {

                v25 = v2;
                v2 = v6;
                if (v45)
                {
                  goto LABEL_103;
                }
              }

              ++v38;
            }

            v6 = v39;

            v28 = v137;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_2691CB054(0, v28[2] + 1, 1, v28);
            }

            v57 = v28[2];
            v56 = v28[3];
            if (v57 >= v56 >> 1)
            {
              v59 = sub_2691CB054((v56 > 1), v57 + 1, 1, v28);
              v58 = v6;
              v28 = v59;
            }

            else
            {
              v58 = v6;
            }

            v28[2] = v57 + 1;
            v28[v57 + 4] = v58;
            v26 = v135;
            goto LABEL_3;
          }
        }
      }

      ++v26;
      v28 = v137;
    }

    v60 = 0;
    v61 = v28[2];
    v62 = MEMORY[0x277D84F90];
    while (v61 != v60)
    {
      if (v60 >= v28[2])
      {
        goto LABEL_94;
      }

      v63 = &v28[v60];
      v64 = v63[4];
      v6 = *(v64 + 16);
      v65 = *(v62 + 16);
      v66 = &v6[v65];
      if (__OFADD__(v65, v6))
      {
        goto LABEL_95;
      }

      v67 = v63[4];

      v68 = swift_isUniquelyReferenced_nonNull_native();
      if (!v68 || v66 > *(v62 + 24) >> 1)
      {
        if (v65 <= v66)
        {
          v69 = &v6[v65];
        }

        else
        {
          v69 = v65;
        }

        v62 = sub_2691CAF68(v68, v69, 1, v62);
      }

      if (*(v64 + 16))
      {
        if ((*(v62 + 24) >> 1) - *(v62 + 16) < v6)
        {
          goto LABEL_97;
        }

        v70 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v71 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v72 = *(v62 + 16);
          v54 = __OFADD__(v72, v6);
          v73 = &v6[v72];
          if (v54)
          {
            goto LABEL_98;
          }

          *(v62 + 16) = v73;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_96;
        }
      }

      ++v60;
    }

    v2 = 0;
    v137 = *(v62 + 16);
    LODWORD(v135) = *MEMORY[0x277D5E6B0];
    v132 = (v123 + 8);
    v133 = (v123 + 104);
    v136 = v17 + 8;
    v131 = v17 + 16;
    v74 = v128;
    while (v137 != v2)
    {
      if (v2 >= *(v62 + 16))
      {
        goto LABEL_104;
      }

      v75 = v62 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v2;
      v76 = v17;
      v77 = v134;
      v127 = *(v17 + 16);
      v127(v134, v75, v138);
      sub_2691E1084();
      v79 = v129;
      v78 = v130;
      (*v133)(v129, v135, v130);
      v80 = MEMORY[0x26D632A60](v74, v79);
      v81 = *v132;
      (*v132)(v79, v78);
      v81(v74, v78);
      if ((v80 & 1) != 0 || ((sub_2691E10A4(), v82) ? (v6 = v82) : (v6 = 0xE000000000000000), v83 = sub_2691E1654(), , v83 <= 7))
      {

        if (qword_2802F9378 != -1)
        {
          swift_once();
        }

        v89 = v125;
        v90 = __swift_project_value_buffer(v125, qword_2802FBA28);
        v91 = v126;
        v92 = v122;
        (*(v126 + 16))(v122, v90, v89);
        v93 = v121;
        v94 = v138;
        v95 = v127;
        v127(v121, v134, v138);
        v96 = sub_2691E1384();
        v97 = sub_2691E1534();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v137 = v98;
          v99 = v94;
          v100 = swift_slowAlloc();
          v139 = v100;
          *v98 = 136315138;
          v95(v120, v93, v99);
          v101 = sub_2691E13E4();
          v102 = v91;
          v104 = v103;
          v105 = *v136;
          (*v136)(v93, v99);
          v106 = sub_2691B98CC(v101, v104, &v139);

          v107 = v137;
          *(v137 + 4) = v106;
          v108 = v97;
          v109 = v107;
          _os_log_impl(&dword_2691B1000, v96, v108, "SystemCommandsIntent isMediaPlayerParse | Found MP identifier: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x26D6335B0](v100, -1, -1);
          MEMORY[0x26D6335B0](v109, -1, -1);

          (*(v102 + 8))(v122, v125);
          v105(v134, v99);
        }

        else
        {

          v118 = *v136;
          (*v136)(v93, v94);
          (*(v91 + 8))(v92, v89);
          v118(v134, v94);
        }

        return 1;
      }

      (*v136)(v77, v138);
      ++v2;
      v17 = v76;
    }

    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v110 = v125;
    v111 = __swift_project_value_buffer(v125, qword_2802FBA28);
    v112 = v126;
    v113 = v124;
    (*(v126 + 16))(v124, v111, v110);
    v114 = sub_2691E1384();
    v115 = sub_2691E1534();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_2691B1000, v114, v115, "SystemCommandsIntent isMediaPlayerParse | No MP identifiers found, parse is not MediaPlayer", v116, 2u);
      MEMORY[0x26D6335B0](v116, -1, -1);
    }

    (*(v112 + 8))(v113, v110);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
LABEL_107:
      swift_once();
    }

    v84 = __swift_project_value_buffer(v2, qword_2802FBA28);
    v85 = v126;
    (*(v126 + 16))(v6, v84, v2);
    v86 = sub_2691E1384();
    v87 = sub_2691E1534();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2691B1000, v86, v87, "SystemCommandsIntent isMediaPlayerParse | No UserEntities found", v88, 2u);
      MEMORY[0x26D6335B0](v88, -1, -1);
    }

    (*(v85 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_2691C9F48(uint64_t a1)
{
  v2 = sub_2691E1394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v106 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v106 - v11;
  v13 = sub_2691E10B4();
  v122 = *(v13 - 8);
  v14 = *(v122 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  if (a1)
  {
    v108 = v19;
    v109 = v18;
    v110 = v12;
    v111 = v10;
    v113 = v2;
    v114 = &v106 - v17;
    v112 = v3;
    v20 = sub_2691B8328(a1);
    v21 = 0;
    v120 = a1 & 0xC000000000000001;
    v121 = v20;
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = MEMORY[0x277D84F90];
    v117 = v13;
LABEL_3:
    for (i = v21; v121 != i; ++i)
    {
      if (v120)
      {
        MEMORY[0x26D632F20](i, a1);
      }

      else
      {
        if (i >= *(v119 + 16))
        {
          goto LABEL_88;
        }

        v24 = *(a1 + 8 * i + 32);
      }

      v21 = (i + 1);
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      sub_2691E10C4();
      if (v123)
      {
        sub_2691E1074();

        v25 = sub_2691E1264();

        if (*(v25 + 16))
        {
          v26 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v27)
          {
            v107 = a1;
            v28 = *(*(v25 + 56) + 8 * v26);

            v118 = sub_2691B8328(v28);
            v29 = 0;
            v115 = v28 & 0xFFFFFFFFFFFFFF8;
            v116 = v28 & 0xC000000000000001;
            v30 = MEMORY[0x277D84F90];
            while (v118 != v29)
            {
              if (v116)
              {
                MEMORY[0x26D632F20](v29, v28);
              }

              else
              {
                if (v29 >= *(v115 + 16))
                {
                  goto LABEL_95;
                }

                v31 = *(v28 + 8 * v29 + 32);
              }

              if (__OFADD__(v29, 1))
              {
                goto LABEL_94;
              }

              v32 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_2691CB054(0, v30[2] + 1, 1, v30);
              }

              v34 = v30[2];
              v33 = v30[3];
              if (v34 >= v33 >> 1)
              {
                v30 = sub_2691CB054((v33 > 1), v34 + 1, 1, v30);
              }

              v30[2] = v34 + 1;
              v30[v34 + 4] = v32;
              ++v29;
            }

            v35 = 0;
            v118 = v30[2];
            v36 = MEMORY[0x277D84F90];
            while (v118 != v35)
            {
              if (v35 >= v30[2])
              {
                goto LABEL_96;
              }

              v37 = &v30[v35];
              v38 = v37[4];
              v39 = *(v38 + 16);
              v40 = *(v36 + 16);
              v41 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_97;
              }

              v42 = v37[4];

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v41 > *(v36 + 24) >> 1)
              {
                if (v40 <= v41)
                {
                  v44 = v40 + v39;
                }

                else
                {
                  v44 = v40;
                }

                v36 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v44, 1, v36);
              }

              v13 = v117;
              if (*(v38 + 16))
              {
                if ((*(v36 + 24) >> 1) - *(v36 + 16) < v39)
                {
                  goto LABEL_100;
                }

                v45 = (*(v122 + 80) + 32) & ~*(v122 + 80);
                v46 = *(v122 + 9);
                swift_arrayInitWithCopy();

                if (v39)
                {
                  v47 = *(v36 + 16);
                  v48 = __OFADD__(v47, v39);
                  v49 = v47 + v39;
                  if (v48)
                  {
                    goto LABEL_101;
                  }

                  *(v36 + 16) = v49;
                }
              }

              else
              {

                if (v39)
                {
                  goto LABEL_98;
                }
              }

              ++v35;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_2691CB054(0, v22[2] + 1, 1, v22);
            }

            a1 = v107;
            v51 = v22[2];
            v50 = v22[3];
            if (v51 >= v50 >> 1)
            {
              v22 = sub_2691CB054((v50 > 1), v51 + 1, 1, v22);
            }

            v22[2] = v51 + 1;
            v22[v51 + 4] = v36;
            goto LABEL_3;
          }
        }
      }
    }

    v52 = 0;
    v53 = v22[2];
    v54 = MEMORY[0x277D84F90];
    while (v53 != v52)
    {
      if (v52 >= v22[2])
      {
        goto LABEL_89;
      }

      v55 = &v22[v52];
      v56 = v55[4];
      v57 = *(v56 + 16);
      v58 = *(v54 + 16);
      v59 = v58 + v57;
      if (__OFADD__(v58, v57))
      {
        goto LABEL_90;
      }

      v60 = v55[4];

      v61 = swift_isUniquelyReferenced_nonNull_native();
      if (!v61 || v59 > *(v54 + 24) >> 1)
      {
        if (v58 <= v59)
        {
          v62 = v58 + v57;
        }

        else
        {
          v62 = v58;
        }

        v54 = sub_2691CAF68(v61, v62, 1, v54);
      }

      if (*(v56 + 16))
      {
        if ((*(v54 + 24) >> 1) - *(v54 + 16) < v57)
        {
          goto LABEL_92;
        }

        v63 = (*(v122 + 80) + 32) & ~*(v122 + 80);
        v64 = *(v122 + 9);
        swift_arrayInitWithCopy();

        if (v57)
        {
          v65 = *(v54 + 16);
          v48 = __OFADD__(v65, v57);
          v66 = v65 + v57;
          if (v48)
          {
            goto LABEL_93;
          }

          *(v54 + 16) = v66;
        }
      }

      else
      {

        if (v57)
        {
          goto LABEL_91;
        }
      }

      ++v52;
    }

    v67 = *(v54 + 16);
    v68 = v114;
    if (v67)
    {
      v69 = 0;
      v70 = v54 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v71 = v122 + 4;
      v121 = (v122 + 2);
      while (v69 < *(v54 + 16))
      {
        v72 = *(v122 + 2);
        v73 = v71;
        v72(v68, v70 + *(v122 + 9) * v69, v13);
        sub_2691E10A4();
        v74 = sub_2691E1654();

        if (!v74)
        {

          if (qword_2802F9378 != -1)
          {
            swift_once();
          }

          v87 = v113;
          v88 = __swift_project_value_buffer(v113, qword_2802FBA28);
          v89 = v112;
          v90 = v110;
          (*(v112 + 16))(v110, v88, v87);
          v91 = v109;
          v92 = v117;
          v72(v109, v114, v117);
          v93 = sub_2691E1384();
          v94 = sub_2691E1534();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v122 = v95;
            v96 = swift_slowAlloc();
            v123 = v96;
            *v95 = 136315138;
            v72(v108, v91, v92);
            v97 = sub_2691E13E4();
            v99 = v98;
            v100 = *v121;
            (*v121)(v91, v92);
            v101 = sub_2691B98CC(v97, v99, &v123);

            v102 = v122;
            *(v122 + 1) = v101;
            v103 = v94;
            v104 = v102;
            _os_log_impl(&dword_2691B1000, v93, v103, "SystemCommandsIntent isSettingsParse | Found MP identifier: %s", v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v96);
            MEMORY[0x26D6335B0](v96, -1, -1);
            MEMORY[0x26D6335B0](v104, -1, -1);

            (*(v89 + 8))(v110, v113);
            v100(v114, v92);
          }

          else
          {

            v105 = *v121;
            (*v121)(v91, v92);
            (*(v89 + 8))(v90, v87);
            v105(v114, v92);
          }

          return 1;
        }

        ++v69;
        (*v121)(v68, v13);
        v71 = v73;
        if (v67 == v69)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_99;
    }

LABEL_71:

    if (qword_2802F9378 == -1)
    {
      goto LABEL_72;
    }

LABEL_102:
    swift_once();
LABEL_72:
    v75 = v113;
    v76 = __swift_project_value_buffer(v113, qword_2802FBA28);
    v78 = v111;
    v77 = v112;
    (*(v112 + 16))(v111, v76, v75);
    v79 = sub_2691E1384();
    v80 = sub_2691E1534();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2691B1000, v79, v80, "SystemCommandsIntent isMediaPlayerParse | No MP identifiers found, parse is not MediaPlayer", v81, 2u);
      MEMORY[0x26D6335B0](v81, -1, -1);
    }

    (*(v77 + 8))(v78, v75);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v82 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v3 + 16))(v7, v82, v2);
    v83 = sub_2691E1384();
    v84 = sub_2691E1534();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2691B1000, v83, v84, "SystemCommandsIntent isSettingsParse | No UserEntities found", v85, 2u);
      MEMORY[0x26D6335B0](v85, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

uint64_t sub_2691CAAAC()
{
  sub_2691E1214();
  v0 = v4;
  if (v4)
  {
    v1 = sub_2691C7D84(0);

    if (v1)
    {
      sub_2691CAB20();
      v0 = v2;
    }

    else
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

void sub_2691CAB20()
{
  OUTLINED_FUNCTION_26_0();
  v1 = v0;
  v28 = v2;
  v31 = sub_2691E10B4();
  v3 = OUTLINED_FUNCTION_2(v31);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v9 = v8 - v7;
  v10 = *(v1 + 16);
  if (v10)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = v1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v29 = *(v11 + 56);
    v30 = v12;
    v14 = (v11 - 8);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = v11;
      v30(v9, v13, v31);
      v17 = sub_2691E1094();
      v19 = v18;
      (*v14)(v9, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2691CAE60(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_48_0(v20);
        v15 = sub_2691CAE60(v23, v24, v25, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v13 += v29;
      --v10;
      v11 = v16;
    }

    while (v10);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v32[0] = sub_2691CC548(v28);
  v32[1] = v26;
  MEMORY[0x28223BE20](v32[0]);
  *&v27[-16] = v32;
  sub_2691C4770(sub_2691CB6E4, &v27[-32], v15);

  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691CAD28()
{
  v0 = sub_2691E1654();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2691CAD74()
{
  v0 = sub_2691E1654();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

BOOL sub_2691CADC0()
{
  v0 = sub_2691E1654();

  return v0 != 0;
}

uint64_t sub_2691CAE08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27(v4);
  (*(v5 + 8))(a1);
  return a1;
}

char *sub_2691CAE60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AB0, &qword_2691E3170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2691CAF68(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_2691CB184(v8, v7);
  v10 = *(sub_2691E10B4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2691CB280(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_2691CB054(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC8, &qword_2691E3188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AD0, &unk_2691E3190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2691CB184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA8, &qword_2691E3168);
  v4 = *(sub_2691E10B4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2691CB280(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2691E10B4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_2691E10B4();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_2691CB354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2691E16D4() & 1;
  }
}

size_t sub_2691CB398(size_t a1, int64_t a2, char a3)
{
  result = sub_2691CB3B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2691CB3B8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA8, &qword_2691E3168);
  v10 = *(sub_2691E10B4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2691E10B4() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2691CB280(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2691CB56C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2691E1714();
  sub_2691E1414();
  v6 = sub_2691E1734();

  return sub_2691CB5E4(a1, a2, v6);
}

unint64_t sub_2691CB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2691E16D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

void OUTLINED_FUNCTION_9_2()
{

  JUMPOUT(0x26D6335B0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return type metadata accessor for SystemCommandsIntent();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_0@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  v3 = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return sub_2691E1134();
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return sub_2691CAE08(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_0()
{
}

uint64_t *SystemCommandsFeatureFlags.shared.unsafeMutableAddressor()
{
  if (qword_2802F9368 != -1)
  {
    swift_once();
  }

  return &static SystemCommandsFeatureFlags.shared;
}

const char *sub_2691CBAF8(char a1)
{
  if (a1)
  {
    return "ScreenRecording";
  }

  else
  {
    return "NLX";
  }
}

uint64_t sub_2691CBB34()
{
  type metadata accessor for SystemCommandsFeatureFlags();
  result = swift_initStaticObject();
  static SystemCommandsFeatureFlags.shared = result;
  return result;
}

uint64_t static SystemCommandsFeatureFlags.shared.getter()
{
  type metadata accessor for SystemCommandsFeatureFlags();

  return swift_initStaticObject();
}

uint64_t sub_2691CBBC4(char a1)
{
  v4[3] = &type metadata for SystemCommandsFeatures;
  v4[4] = sub_2691CBC34();
  LOBYTE(v4[0]) = a1;
  v2 = sub_2691E0F44();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_2691CBC34()
{
  result = qword_2802F9AD8;
  if (!qword_2802F9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9AD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemCommandsFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691CBD54);
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

unint64_t sub_2691CBD90()
{
  result = qword_2802F9AE0;
  if (!qword_2802F9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9AE0);
  }

  return result;
}

uint64_t type metadata accessor for RestartShutdownCATsSimple()
{
  result = qword_2802F9AE8;
  if (!qword_2802F9AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691CBE70()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691C3270;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(27);

  return v4(v3);
}

uint64_t sub_2691CBF14()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(28);

  return v4(v3);
}

uint64_t sub_2691CBFB8()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(29);

  return v4(v3);
}

uint64_t sub_2691CC05C()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(28);

  return v4(v3);
}

uint64_t sub_2691CC100()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(29);

  return v4(v3);
}

uint64_t sub_2691CC1A4()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(30);

  return v4(v3);
}

uint64_t sub_2691CC248(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691CC29C(a1, a2);
}

uint64_t sub_2691CC29C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2691E1374();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2691BACA4(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2691E1304();
  (*(v8 + 8))(a2, v2);
  sub_2691BAD14(a1);
  return v16;
}

uint64_t sub_2691CC3F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_2691E1374();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2691E1314();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

unint64_t sub_2691CC548(char a1)
{
  result = 0x61436D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x74416D6574737973;
      break;
    case 2:
      result = 0x7250726577736E61;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    case 4:
      result = 0x656E6F687069;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x656369766564;
      break;
    case 7:
      result = 0x746375646F7270;
      break;
    case 8:
      result = 0x6E6565726373;
      break;
    case 9:
      result = 1801678700;
      break;
    case 10:
      result = 0x6B636F6C6E75;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x73656D616ELL;
      break;
    case 13:
      result = 0x7265776F70;
      break;
    case 14:
      result = 0x6E776F6474756873;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SCSystemQueryFlow.__allocating_init(systemCategory:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SCSystemQueryFlow.init(systemCategory:sharedObjects:)(a1, a2, a3);
  return v6;
}

uint64_t sub_2691CC778(char a1)
{
  if (a1)
  {
    return 0x646C697562;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t SCSystemQueryFlow.init(systemCategory:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_2691B8078(a3 + 40, v3 + 32);
  sub_2691B8078(a3 + 80, v6);
  sub_2691B8A88(a3);
  sub_2691B8ADC(v6, v3 + 72);
  return v3;
}

uint64_t SCSystemQueryFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[25] = v2;
  v1[26] = v0;
  v3 = *(*(sub_2691E0CA4() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v4 = sub_2691E0E64();
  v1[28] = v4;
  v5 = *(v4 - 8);
  v1[29] = v5;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v7 = sub_2691E1394();
  v1[31] = v7;
  v8 = *(v7 - 8);
  v1[32] = v8;
  v9 = *(v8 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v10 = *(*(sub_2691E1374() - 8) + 64) + 15;
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691CC9A4, 0, 0);
}

uint64_t sub_2691CC9A4()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2 == 0x6E6F6973726576 && v3 == 0xE700000000000000)
  {
    goto LABEL_7;
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (sub_2691E16D4())
  {
    v1 = v0[26];
LABEL_7:
    v7 = v0[37];
    type metadata accessor for SystemQueryCATPatternsExecutor(0);
    sub_2691E1294();
    sub_2691B8078(v1 + 32, (v0 + 12));
    sub_2691E1274();
    sub_2691B80DC((v0 + 12));
    sub_2691E1284();

    sub_2691E1364();
    v8 = sub_2691E12C4();
    v0[38] = v8;
    v29 = sub_2691CF114;

    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v10 = sub_2691CCD48;
LABEL_8:
    v9[1] = v10;
    v11 = v0[26];

    return (v29)(0, v8, v11);
  }

  v13 = v2 == 0x646C697562 && v3 == 0xE500000000000000;
  if (v13 || (sub_2691E16D4() & 1) != 0)
  {
    v14 = v0[37];
    v15 = v0[26];
    type metadata accessor for SystemQueryCATPatternsExecutor(0);
    sub_2691E1294();
    sub_2691B8078(v15 + 32, (v0 + 2));
    sub_2691E1274();
    sub_2691B80DC((v0 + 2));
    sub_2691E1284();

    sub_2691E1364();
    v8 = sub_2691E12C4();
    v0[42] = v8;
    v29 = sub_2691CECCC;

    v9 = swift_task_alloc();
    v0[43] = v9;
    *v9 = v0;
    v10 = sub_2691CD068;
    goto LABEL_8;
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = v0[34];
  v17 = v0[32];
  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v18 = OUTLINED_FUNCTION_9_1();
  v19(v18);
  v20 = sub_2691E1384();
  v21 = sub_2691E1544();
  if (OUTLINED_FUNCTION_11_1(v21))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v22, v23, "SCSystemQueryFlow execute | invalid systemCategory");
    OUTLINED_FUNCTION_42();
  }

  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[32];
  v27 = v0[25];

  (*(v26 + 8))(v24, v25);
  sub_2691E0D54();
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v28();
}

uint64_t sub_2691CCD48()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 312);
  *v4 = *v1;
  v3[40] = v7;
  v3[41] = v0;

  if (v0)
  {
    v8 = sub_2691CD388;
  }

  else
  {
    v9 = v3[38];

    v8 = sub_2691CCE58;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2691CCE58()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = v0[36];
  v6 = v0[31];
  __swift_project_value_buffer(v6, qword_2802FBA28);
  v7 = OUTLINED_FUNCTION_9_1();
  v8(v7);
  sub_2691E1384();
  v9 = sub_2691E1534();
  if (OUTLINED_FUNCTION_11_1(v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v10, v11, "SCSystemQueryFlow execute | QueryVersion pattern successfully executed");
    OUTLINED_FUNCTION_42();
  }

  v12 = v0[40];
  v13 = v0[36];
  OUTLINED_FUNCTION_12_3();
  (*(v1 + 8))(v13, v3);
  sub_2691E0C84();
  OUTLINED_FUNCTION_2_5();
  sub_2691B8078(v2 + 72, (v0 + 17));
  v14 = sub_2691E0DA4();
  OUTLINED_FUNCTION_9_3(v14);
  sub_2691E0D94();
  v15 = sub_2691E0B04();
  OUTLINED_FUNCTION_9_3(v15);
  v0[24] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v4 + 8))(v6);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v16();
}

uint64_t sub_2691CD068()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 344);
  *v4 = *v1;
  v3[44] = v7;
  v3[45] = v0;

  if (v0)
  {
    v8 = sub_2691CD590;
  }

  else
  {
    v9 = v3[42];

    v8 = sub_2691CD178;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2691CD178()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = v0[35];
  v6 = v0[31];
  __swift_project_value_buffer(v6, qword_2802FBA28);
  v7 = OUTLINED_FUNCTION_9_1();
  v8(v7);
  sub_2691E1384();
  v9 = sub_2691E1534();
  if (OUTLINED_FUNCTION_11_1(v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v10, v11, "SCSystemQueryFlow execute | QueryBuild pattern successfully executed");
    OUTLINED_FUNCTION_42();
  }

  v12 = v0[44];
  v13 = v0[35];
  OUTLINED_FUNCTION_12_3();
  (*(v1 + 8))(v13, v3);
  sub_2691E0C84();
  OUTLINED_FUNCTION_2_5();
  sub_2691B8078(v2 + 72, (v0 + 7));
  v14 = sub_2691E0DA4();
  OUTLINED_FUNCTION_9_3(v14);
  sub_2691E0D94();
  v15 = sub_2691E0B04();
  OUTLINED_FUNCTION_9_3(v15);
  v0[23] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v4 + 8))(v6);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v16();
}

uint64_t sub_2691CD388()
{
  v25 = v0;
  v1 = v0[41];
  v2 = v0[38];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = v0[32];
  v3 = v0[33];
  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[31];
  if (v9)
  {
    v23 = v0[33];
    v13 = OUTLINED_FUNCTION_72();
    v14 = OUTLINED_FUNCTION_13_2();
    v24 = v14;
    *v13 = 136315138;
    v0[22] = v1;
    MEMORY[0x26D633490](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v24);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_19_0(&dword_2691B1000, v18, v19, "SCSystemQueryFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v10 + 8))(v23, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[25];
  sub_2691E0D54();

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v21();
}

uint64_t sub_2691CD590()
{
  v25 = v0;
  v1 = v0[45];
  v2 = v0[42];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = v0[32];
  v3 = v0[33];
  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[31];
  if (v9)
  {
    v23 = v0[33];
    v13 = OUTLINED_FUNCTION_72();
    v14 = OUTLINED_FUNCTION_13_2();
    v24 = v14;
    *v13 = 136315138;
    v0[22] = v1;
    MEMORY[0x26D633490](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v24);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_19_0(&dword_2691B1000, v18, v19, "SCSystemQueryFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v10 + 8))(v23, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[25];
  sub_2691E0D54();

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v21();
}

uint64_t SCSystemQueryFlow.execute(completion:)()
{
  type metadata accessor for SCSystemQueryFlow();
  sub_2691CE584();
  return sub_2691E0B34();
}

uint64_t sub_2691CD7F4()
{
  v0 = sub_2691E1394();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() processInfo];
  [v8 operatingSystemVersion];
  v9 = v27;
  v10 = v28;
  v11 = v29;

  v27 = v9;
  OUTLINED_FUNCTION_5_4();
  v27 = sub_2691E16C4();
  v28 = v12;
  v25 = 46;
  v26 = 0xE100000000000000;
  v24 = v10;
  OUTLINED_FUNCTION_5_4();
  v13 = sub_2691E16C4();
  MEMORY[0x26D632D90](v13);

  MEMORY[0x26D632D90](v25, v26);

  if (v11)
  {
    v25 = 46;
    v26 = 0xE100000000000000;
    v24 = v11;
    v14 = sub_2691E16C4();
    MEMORY[0x26D632D90](v14);

    MEMORY[0x26D632D90](v25, v26);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v15 = __swift_project_value_buffer(v0, qword_2802FBA28);
  (*(v3 + 16))(v7, v15, v0);

  v16 = sub_2691E1384();
  v17 = sub_2691E1524();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_72();
    v19 = OUTLINED_FUNCTION_13_2();
    v25 = v19;
    *v18 = 136315138;
    v20 = OUTLINED_FUNCTION_5_4();
    *(v18 + 4) = sub_2691B98CC(v20, v21, v22);
    _os_log_impl(&dword_2691B1000, v16, v17, "SCSystemQueryFlow getVersion | version number is %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  (*(v3 + 8))(v7, v0);
  OUTLINED_FUNCTION_5_4();
  return sub_2691E12E4();
}

uint64_t sub_2691CDACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2691E1394();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v47 - v11;
  v13 = [objc_opt_self() processInfo];
  v14 = [v13 operatingSystemVersionString];

  v15 = sub_2691E13D4();
  v17 = v16;

  v51[0] = 32;
  v51[1] = 0xE100000000000000;
  v50 = v51;
  v18 = sub_2691CE5D8(sub_2691CB6C4, v49, v15, v17);
  if (v19)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v5 + 16))(v10, v20, v2);

    v21 = sub_2691E1384();
    v22 = sub_2691E1524();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v2;
      v24 = OUTLINED_FUNCTION_72();
      v25 = OUTLINED_FUNCTION_13_2();
      v51[0] = v25;
      *v24 = 136315138;
      v26 = sub_2691B98CC(v15, v17, v51);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_2691B1000, v21, v22, "SCSystemQueryFlow getBuild | operatingSystemVersionString is in an unexpected format: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v5 + 8))(v10, v23);
    }

    else
    {

      (*(v5 + 8))(v10, v2);
    }
  }

  else
  {
    sub_2691CDF68(v18, v15, v17);
    v27 = OUTLINED_FUNCTION_3_5();
    sub_2691CE00C(v27, v28);
    v29 = OUTLINED_FUNCTION_3_5();
    v32 = sub_2691CE0C8(v29, v30, v31);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v5 + 16))(v12, v33, v2);

    v48 = v12;
    v34 = sub_2691E1384();
    v35 = sub_2691E1524();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_72();
      v47[2] = a1;
      v37 = v36;
      v38 = OUTLINED_FUNCTION_13_2();
      v47[0] = v2;
      v39 = v38;
      v51[0] = v38;
      *v37 = 136315138;

      v40 = OUTLINED_FUNCTION_5_4();
      MEMORY[0x26D632D60](v40);
      v47[1] = v32;

      v41 = OUTLINED_FUNCTION_5_4();
      v44 = sub_2691B98CC(v41, v42, v43);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_2691B1000, v34, v35, "SCSystemQueryFlow getBuild | build number is %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v5 + 8))(v48, v47[0]);
    }

    else
    {

      (*(v5 + 8))(v48, v2);
    }

    v45 = OUTLINED_FUNCTION_5_4();
    MEMORY[0x26D632D60](v45);
  }

  return sub_2691E12E4();
}

unint64_t sub_2691CDF68(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_2691E1464();

    return v4;
  }

  return result;
}

uint64_t sub_2691CE00C(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2691E1584();
    if (v3)
    {
      v4 = a2;
    }

    else
    {
      v4 = result;
    }

    if (v4 >> 14 >= a2 >> 14)
    {
      v5 = sub_2691E1594();

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2691CE0C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2691E1584();
    if (v4)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v5 = sub_2691E1594();

      return v5;
    }
  }

  __break(1u);
  return result;
}

void *SCSystemQueryFlow.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  return v0;
}

uint64_t SCSystemQueryFlow.__deallocating_deinit()
{
  SCSystemQueryFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_2691CE1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2691CE294;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691CE294()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2691CE3A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691CE444;

  return SCSystemQueryFlow.execute()();
}

uint64_t sub_2691CE444()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;

  OUTLINED_FUNCTION_31();

  return v5();
}

uint64_t sub_2691CE528(uint64_t a1, uint64_t a2)
{
  Flow = type metadata accessor for SCSystemQueryFlow();

  return MEMORY[0x2821BA658](Flow, a2);
}

unint64_t sub_2691CE584()
{
  result = qword_2802F9940;
  if (!qword_2802F9940)
  {
    type metadata accessor for SCSystemQueryFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9940);
  }

  return result;
}

unint64_t sub_2691CE5D8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_2691E1424();
    v13[0] = sub_2691E1454();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_1_4()
{
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2691E0E24();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_11_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_3()
{
  v4 = v1[31];
  v3 = v1[32];
  v6 = v1[29];
  v5 = v1[30];
  v7 = v1[27];
  v8 = v1[25];
  v9 = v1[28];
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_19_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2691CE86C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v3 = OUTLINED_FUNCTION_37(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2691E3400;
  *(v11 + 32) = 0x646C697562;
  *(v11 + 40) = 0xE500000000000000;
  sub_2691CF7A0(v1, v10, &qword_2802F9B08, &unk_2691E34B8);
  v12 = sub_2691E12F4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_2691CF804(v10, &qword_2802F9B08, &unk_2691E34B8);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    __swift_allocate_boxed_opaque_existential_1((v11 + 48));
    OUTLINED_FUNCTION_6_3(v12);
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_4_2();
  *(v11 + 80) = v14;
  *(v11 + 88) = v15;
  QueryBuildParameters = type metadata accessor for SystemQueryQueryBuildParameters(0);
  v17 = *(v1 + QueryBuildParameters[5]);
  if (v17)
  {
    sub_2691E1354();
    v18 = v17;
  }

  else
  {
    v18 = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  *(v11 + 96) = v18;
  OUTLINED_FUNCTION_9_4();
  *(v11 + 120) = v19;
  *(v11 + 128) = v20;
  *(v11 + 136) = v21;
  *(v11 + 144) = *(v1 + QueryBuildParameters[6]);
  OUTLINED_FUNCTION_14_1();
  *(v11 + 168) = v23;
  *(v11 + 176) = v22;
  *(v11 + 184) = 0xE700000000000000;
  sub_2691CF7A0(v1 + QueryBuildParameters[7], v8, &qword_2802F9B08, &unk_2691E34B8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {

    sub_2691CF804(v8, &qword_2802F9B08, &unk_2691E34B8);
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
  }

  else
  {
    *(v11 + 216) = v12;
    __swift_allocate_boxed_opaque_existential_1((v11 + 192));
    OUTLINED_FUNCTION_6_3(v12);
    (*(v24 + 32))();
  }

  return v11;
}

uint64_t sub_2691CEB0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v2 = OUTLINED_FUNCTION_37(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2691E3410;
  OUTLINED_FUNCTION_4_2();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = *v0;
  if (*v0)
  {
    sub_2691E1354();
    v12 = v11;
  }

  else
  {
    v12 = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  *(v7 + 48) = v12;
  OUTLINED_FUNCTION_9_4();
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  *(v7 + 88) = v15;
  *(v7 + 96) = *(v0 + 8);
  OUTLINED_FUNCTION_14_1();
  *(v7 + 120) = v17;
  *(v7 + 128) = v16;
  *(v7 + 136) = 0xE700000000000000;
  QueryVersionParameters = type metadata accessor for SystemQueryQueryVersionParameters(0);
  sub_2691CF7A0(v0 + *(QueryVersionParameters + 24), v6, &qword_2802F9B08, &unk_2691E34B8);
  v19 = sub_2691E12F4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v19) == 1)
  {

    sub_2691CF804(v6, &qword_2802F9B08, &unk_2691E34B8);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v19;
    __swift_allocate_boxed_opaque_existential_1((v7 + 144));
    OUTLINED_FUNCTION_6_3(v19);
    (*(v20 + 32))();
  }

  return v7;
}

uint64_t sub_2691CECCC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 128) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  *(v3 + 72) = OUTLINED_FUNCTION_44();
  QueryBuildParameters = type metadata accessor for SystemQueryQueryBuildParameters(0);
  *(v3 + 80) = QueryBuildParameters;
  OUTLINED_FUNCTION_37(QueryBuildParameters);
  v9 = *(v8 + 64);
  *(v3 + 88) = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2691CED80()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 128);
  sub_2691E12F4();
  OUTLINED_FUNCTION_7_2(v1);
  v6 = v2[7];
  OUTLINED_FUNCTION_7_2(v1 + v6);
  v7 = v2[5];
  *(v1 + v7) = 0;
  *(v1 + v2[6]) = v5;
  sub_2691CD7F4();
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v4, v1 + v6);
  sub_2691CDACC(v4);
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v4, v1);
  sub_2691E1354();
  sub_2691B8078(v3 + 32, v0 + 16);
  *(v1 + v7) = sub_2691E1344();
  *(v0 + 96) = sub_2691CE86C();
  v8 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55BE8]);
  *(v0 + 104) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_13_3(v8);

  return v10(0xD000000000000016);
}

uint64_t sub_2691CEEE4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  v9 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v10 = v9;
  *(v4 + 112) = v1;

  if (!v1)
  {
    *(v4 + 120) = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691CF024()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_1_5();

  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t sub_2691CF098()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1();
}

uint64_t sub_2691CF114(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 128) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  *(v3 + 72) = OUTLINED_FUNCTION_44();
  QueryVersionParameters = type metadata accessor for SystemQueryQueryVersionParameters(0);
  *(v3 + 80) = QueryVersionParameters;
  OUTLINED_FUNCTION_37(QueryVersionParameters);
  v9 = *(v8 + 64);
  *(v3 + 88) = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2691CF1C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  v5 = *(*(v0 + 80) + 24);
  sub_2691E12F4();
  OUTLINED_FUNCTION_7_2(v1 + v5);
  *v1 = 0;
  *(v1 + 8) = v4;
  sub_2691CD7F4();
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v3, v1 + v5);
  sub_2691E1354();
  sub_2691B8078(v2 + 32, v0 + 16);
  *v1 = sub_2691E1344();
  *(v0 + 96) = sub_2691CEB0C();
  v6 = OUTLINED_FUNCTION_0_2(MEMORY[0x277D55BE8]);
  *(v0 + 104) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_13_3(v6);

  return v8(0xD000000000000018);
}

uint64_t sub_2691CF2FC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  v9 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v10 = v9;
  *(v4 + 112) = v1;

  if (!v1)
  {
    *(v4 + 120) = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691CF43C()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_0_3();

  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t sub_2691CF4B0()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_0_3();

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1();
}

uint64_t sub_2691CF52C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691CF580(a1, a2);
}

uint64_t sub_2691CF580(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = OUTLINED_FUNCTION_37(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_2691CF7A0(a1, &v16 - v13, &qword_2802F9810, &unk_2691E2660);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691CF804(a1, &qword_2802F9810, &unk_2691E2660);
  return v14;
}

uint64_t sub_2691CF730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691CF7A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_3(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2691CF804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2691CF880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2691CF8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_3_6(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2691CF9B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2691CFA64()
{
  sub_2691CFB44(319, &qword_2802F9B20, MEMORY[0x277D55C48]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2691CFB44(319, &qword_2802F9B28, MEMORY[0x277D55C80]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_2691CFB44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2691E1574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2691CFBAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_3_6(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_2691CFC48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2691CFCD4()
{
  sub_2691CFB44(319, &qword_2802F9B28, MEMORY[0x277D55C80]);
  if (v0 <= 0x3F)
  {
    sub_2691CFB44(319, &qword_2802F9B20, MEMORY[0x277D55C48]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[11];

  return sub_2691CF880(v4, type metadata accessor for SystemQueryQueryVersionParameters);
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[11];

  return sub_2691CF880(v4, type metadata accessor for SystemQueryQueryBuildParameters);
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 56);
  return result;
}

uint64_t SharedObjects.init(aceServiceInvoker:deviceState:outputPublisher:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2691B8ADC(a1, a4);
  sub_2691B8ADC(a2, a4 + 40);

  return sub_2691B8ADC(a3, a4 + 80);
}

uint64_t sub_2691CFF34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2691CFF74(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2691CFFE0()
{
  sub_2691D0138();
  result = sub_2691E1564();
  qword_2802FBA20 = result;
  return result;
}

uint64_t sub_2691D0048()
{
  v0 = sub_2691E1394();
  __swift_allocate_value_buffer(v0, qword_2802FBA28);
  __swift_project_value_buffer(v0, qword_2802FBA28);
  if (qword_2802F9370 != -1)
  {
    swift_once();
  }

  v1 = qword_2802FBA20;
  return sub_2691E13A4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_2691D0138()
{
  result = qword_2802F9B40;
  if (!qword_2802F9B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9B40);
  }

  return result;
}

uint64_t SCScreenshotFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[24] = v2;
  v1[25] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[27] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[28] = v5;
  v7 = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_44();
  v8 = sub_2691E1394();
  v1[30] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[31] = v9;
  v11 = *(v10 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2691D02C8()
{
  sub_2691E0EF4();
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  v2 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v2)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[31];
    v6 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_2691E1384();
    v8 = sub_2691E1524();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2691B1000, v7, v8, "SCScreenshotFlow execute | cannot screenshot on watchOS", v9, 2u);
      OUTLINED_FUNCTION_42();
    }

    v10 = v0[33];
    v11 = v0[30];
    v12 = v0[31];
    v14 = v0[24];
    v13 = v0[25];

    v15 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_35();
    v17(v16);

    sub_2691E0E14();
    v18 = sub_2691E0A74();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v0[23] = sub_2691E0A64();
    sub_2691E0D34();

    OUTLINED_FUNCTION_4_3();

    OUTLINED_FUNCTION_31();

    return v21();
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D47278]) init];
    v0[35] = v23;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = v0[34];
    v25 = v0[30];
    v26 = v0[31];
    v27 = __swift_project_value_buffer(v25, qword_2802FBA28);
    v0[36] = v27;
    v28 = *(v26 + 16);
    v0[37] = v28;
    v0[38] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v24, v27, v25);
    v29 = v23;
    v30 = sub_2691E1384();
    v31 = sub_2691E1524();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[34];
    v34 = v0[30];
    v35 = v0[31];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v36 = 136315138;
      v37 = v29;
      v38 = v29;
      v39 = [v37 description];
      sub_2691E13D4();
      v63 = v33;

      v29 = v38;
      v40 = OUTLINED_FUNCTION_35();
      v43 = sub_2691B98CC(v40, v41, v42);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_2691B1000, v30, v31, "SCScreenshotFlow execute | submitting command: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v44 = *(v35 + 8);
      v44(v63, v34);
    }

    else
    {

      v44 = *(v35 + 8);
      v45 = OUTLINED_FUNCTION_35();
      v44(v45, v46);
    }

    v0[39] = v44;
    v48 = v0[28];
    v47 = v0[29];
    v50 = v0[26];
    v49 = v0[27];
    sub_2691E0B94();
    v51 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v0[40] = sub_2691E0C04();
    v52 = *MEMORY[0x277D5BC10];
    v53 = *(v48 + 104);
    v0[41] = v53;
    v0[42] = (v48 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v47, v52, v49);
    v54 = *MEMORY[0x277D5B950];
    v55 = sub_2691E0BB4();
    v0[43] = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 104);
    v0[44] = v57;
    v0[45] = (v56 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v57(v50, v54, v55);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_8_1();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    sub_2691E0C14();
    v59 = v0[15];
    v58 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v59);
    v60 = *(MEMORY[0x277D5BFB8] + 4);
    v61 = swift_task_alloc();
    v0[46] = v61;
    v62 = sub_2691D102C();
    *v61 = v0;
    v61[1] = sub_2691D085C;

    return MEMORY[0x2821BB6A0](v29, v59, v62, v58);
  }
}

uint64_t sub_2691D085C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691D0964()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 192);
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v2();
}

uint64_t sub_2691D09FC()
{
  v40 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v3(v5, v4, v6);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 376);
    v37 = *(v0 + 312);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    *(v0 + 176) = v9;
    MEMORY[0x26D633490](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v39);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2691B1000, v7, v8, "SCScreenshotFlow execute | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v18 = OUTLINED_FUNCTION_35();
    v37(v18);
  }

  else
  {
    v19 = *(v0 + 312);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);

    v23 = OUTLINED_FUNCTION_35();
    v19(v23);
  }

  v24 = *(v0 + 376);
  v26 = *(v0 + 352);
  v25 = *(v0 + 360);
  v27 = *(v0 + 336);
  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v38 = *(v0 + 320);
  v30 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 216);
  sub_2691E0B94();
  v36 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v29(v30, *MEMORY[0x277D5BC00], v32);
  v26(v31, *MEMORY[0x277D5B8D0], v28);
  OUTLINED_FUNCTION_11_2();
  *(swift_allocObject() + 16) = v24;
  MEMORY[0x26D633490](v24);
  OUTLINED_FUNCTION_8_1();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v33 = *(v0 + 192);
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v34();
}

uint64_t sub_2691D0CF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t sub_2691D0D90(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  MEMORY[0x26D633490](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
  sub_2691E13E4();
  return sub_2691E0BE4();
}

uint64_t SCScreenshotFlow.execute(completion:)()
{
  type metadata accessor for SCScreenshotFlow();
  sub_2691D116C();
  return sub_2691E0B34();
}

uint64_t sub_2691D0E44()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650) - 8) + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v6 = *(v5 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691D0F58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCScreenshotFlow.execute()();
}

uint64_t sub_2691D0FF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCScreenshotFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_2691D102C()
{
  result = qword_2802F9B50;
  if (!qword_2802F9B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9B50);
  }

  return result;
}

uint64_t sub_2691D1070()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D10B0()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0CF8();
}

unint64_t sub_2691D116C()
{
  result = qword_2802F9960;
  if (!qword_2802F9960)
  {
    type metadata accessor for SCScreenshotFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t SCTakePhotoFlow.__allocating_init(captureType:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SCTakePhotoFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[27] = v2;
  v1[28] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588) - 8) + 64);
  v1[29] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[30] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_44();
  v8 = sub_2691E1394();
  v1[33] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[34] = v9;
  v11 = *(v10 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v1[39] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2691D1404()
{
  v88 = v0;
  v1 = v0[42];
  v2 = sub_2691E09A4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_2691E0EF4();
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  LOBYTE(v1) = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if ((v1 & 1) == 0)
  {
    *(v0[28] + 16);
    v22 = v0[41];
    v21 = v0[42];
    sub_2691E0994();
    sub_2691D2168(v22, v21);
    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v27 = v23;
      v28 = v0[40];
      sub_2691BACA4(v0[42], v28);
      if (__swift_getEnumTagSinglePayload(v28, 1, v2) == 1)
      {
        v29 = 0;
      }

      else
      {
        v30 = v0[40];
        v29 = sub_2691E0984();
        (*(*(v2 - 8) + 8))(v30, v2);
      }

      v31 = [v27 openSensitiveURL:v29 withOptions:0];

      if (v31)
      {
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v32 = v0[38];
        v33 = v0[34];
        __swift_project_value_buffer(v0[33], qword_2802FBA28);
        v34 = OUTLINED_FUNCTION_9_1();
        v35(v34);
        v36 = sub_2691E1384();
        v37 = sub_2691E1524();
        if (os_log_type_enabled(v36, v37))
        {
          v39 = v0[41];
          v38 = v0[42];
          v40 = v0[39];
          v86 = v0[38];
          v42 = v0[33];
          v41 = v0[34];
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v87 = v44;
          *v43 = 136315138;
          swift_beginAccess();
          sub_2691BACA4(v38, v39);
          v45 = sub_2691E13E4();
          v47 = sub_2691B98CC(v45, v46, &v87);

          *(v43 + 4) = v47;
          OUTLINED_FUNCTION_11_3(&dword_2691B1000, v48, v49, "SCTakePhotoFlow execute | URL was successfully opened %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v41 + 8))(v86, v42);
        }

        else
        {
          v79 = v0[38];
          v80 = v0[33];
          v81 = v0[34];

          (*(v81 + 8))(v79, v80);
        }

        v82 = v0[42];
        v83 = v0[27];
        sub_2691E0D54();
        v20 = v82;
        goto LABEL_25;
      }

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v50 = v0[37];
      v51 = v0[33];
      v52 = v0[34];
      v53 = __swift_project_value_buffer(v51, qword_2802FBA28);
      v0[43] = v53;
      v54 = *(v52 + 16);
      v0[44] = v54;
      v0[45] = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v54(v50, v53, v51);
      v55 = sub_2691E1384();
      v56 = sub_2691E1524();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2691B1000, v55, v56, "SCTakePhotoFlow execute | fallback using SAAppsLaunchApp", v57, 2u);
        OUTLINED_FUNCTION_42();
      }

      v58 = v0[37];
      v59 = v0[33];
      v60 = v0[34];
      v62 = v0[31];
      v61 = v0[32];
      v63 = v0[29];
      v64 = v0[30];

      v65 = *(v60 + 8);
      v0[46] = v65;
      v65(v58, v59);
      v66 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
      v0[47] = v66;
      v67 = sub_2691E13C4();
      [v66 setLaunchId_];

      sub_2691E0B94();
      v68 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v0[48] = sub_2691E0C04();
      v69 = *MEMORY[0x277D5BC10];
      v70 = *(v62 + 104);
      v0[49] = v70;
      v0[50] = (v62 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v70(v61, v69, v64);
      v71 = *MEMORY[0x277D5B950];
      v72 = sub_2691E0BB4();
      v0[51] = v72;
      v73 = *(v72 - 8);
      v74 = *(v73 + 104);
      v0[52] = v74;
      v0[53] = (v73 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v74(v63, v71, v72);
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v72);
      OUTLINED_FUNCTION_7_3();
      sub_2691E0BF4();
      sub_2691E0BA4();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      sub_2691E0C14();
      v75 = v0[15];
      v76 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v75);
      v77 = *(MEMORY[0x277D5BFB8] + 4);
      v78 = swift_task_alloc();
      v0[54] = v78;
      v25 = sub_2691D102C();
      *v78 = v0;
      v78[1] = sub_2691D1C38;
      v23 = v66;
      v24 = v75;
      v26 = v76;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821BB6A0](v23, v24, v25, v26);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = v0[36];
  v5 = v0[34];
  __swift_project_value_buffer(v0[33], qword_2802FBA28);
  v6 = OUTLINED_FUNCTION_9_1();
  v7(v6);
  v8 = sub_2691E1384();
  v9 = sub_2691E1524();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2691B1000, v8, v9, "SCTakePhotoFlow execute | cannot take photo on watchOS", v10, 2u);
    OUTLINED_FUNCTION_42();
  }

  v11 = v0[42];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[34];
  v16 = v0[27];
  v15 = v0[28];

  (*(v14 + 8))(v12, v13);

  sub_2691E0E14();
  v17 = sub_2691E0A74();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[26] = sub_2691E0A64();
  sub_2691E0D34();

  v20 = v11;
LABEL_25:
  sub_2691C0B44(v20, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v84();
}

uint64_t sub_2691D1C38()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 432);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 440) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691D1D40()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 336);
  v2 = *(v0 + 216);
  sub_2691E0D54();
  sub_2691C0B44(v1, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v3();
}

uint64_t sub_2691D1E24()
{
  v40 = v0;
  v1 = *(v0 + 440);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v3(v5, v4, v6);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  LOBYTE(v6) = sub_2691E1544();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = *(v0 + 440);
    v37 = *(v0 + 368);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = *(v0 + 264);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315138;
    *(v0 + 200) = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v14 = sub_2691E13E4();
    v16 = sub_2691B98CC(v14, v15, &v39);

    *(v12 + 4) = v16;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v17, v18, "SCTakePhotoFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v37(v9, v11);
  }

  else
  {
    v19 = *(v0 + 368);
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);

    v19(v20, v22);
  }

  v23 = *(v0 + 440);
  v25 = *(v0 + 416);
  v24 = *(v0 + 424);
  v26 = *(v0 + 400);
  v27 = *(v0 + 408);
  v28 = *(v0 + 392);
  v38 = *(v0 + 384);
  v29 = *(v0 + 256);
  v30 = *(v0 + 232);
  v31 = *(v0 + 240);
  sub_2691E0B94();
  v36 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v28(v29, *MEMORY[0x277D5BC00], v31);
  v25(v30, *MEMORY[0x277D5B8D0], v27);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v27);
  *(swift_allocObject() + 16) = v23;
  MEMORY[0x26D633490](v23);
  OUTLINED_FUNCTION_7_3();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v32 = *(v0 + 336);
  v33 = *(v0 + 216);
  sub_2691E0D54();
  sub_2691C0B44(v32, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v34();
}

uint64_t sub_2691D2168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691D21D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t SCTakePhotoFlow.execute(completion:)()
{
  type metadata accessor for SCTakePhotoFlow();
  sub_2691D25B8();
  return sub_2691E0B34();
}

uint64_t sub_2691D2310()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCTakePhotoFlow.execute()();
}

uint64_t sub_2691D23AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCTakePhotoFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t CaptureType.hashValue.getter(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691D2480()
{
  v1 = *v0;
  sub_2691E1714();
  CaptureType.hash(into:)(v3, v1);
  return sub_2691E1734();
}

uint64_t sub_2691D24C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D24FC()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D21D8();
}

unint64_t sub_2691D25B8()
{
  result = qword_2802F9998;
  if (!qword_2802F9998)
  {
    type metadata accessor for SCTakePhotoFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9998);
  }

  return result;
}

unint64_t sub_2691D2610()
{
  result = qword_2802F9B58;
  if (!qword_2802F9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptureType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691D2730);
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

uint64_t OUTLINED_FUNCTION_2_6()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[32];
  v10 = v0[29];
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t SCLockFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[24] = v2;
  v1[25] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[27] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[28] = v5;
  v7 = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_44();
  v8 = sub_2691E1394();
  v1[30] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[31] = v9;
  v11 = *(v10 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2691D2914()
{
  sub_2691E0EF4();
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  v2 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v2)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[31];
    v6 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_2691E1384();
    v8 = sub_2691E1524();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2691B1000, v7, v8, "SCLockFlow execute | cannot lock device on watchOS", v9, 2u);
      OUTLINED_FUNCTION_42();
    }

    v10 = v0[33];
    v11 = v0[30];
    v12 = v0[31];
    v14 = v0[24];
    v13 = v0[25];

    v15 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_35();
    v17(v16);

    sub_2691E0E14();
    v18 = sub_2691E0A74();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v0[23] = sub_2691E0A64();
    sub_2691E0D34();

    OUTLINED_FUNCTION_4_3();

    OUTLINED_FUNCTION_31();

    return v21();
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D47260]) init];
    v0[35] = v23;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = v0[34];
    v25 = v0[30];
    v26 = v0[31];
    v27 = __swift_project_value_buffer(v25, qword_2802FBA28);
    v0[36] = v27;
    v28 = *(v26 + 16);
    v0[37] = v28;
    v0[38] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v24, v27, v25);
    v29 = v23;
    v30 = sub_2691E1384();
    v31 = sub_2691E1524();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[34];
    v34 = v0[30];
    v35 = v0[31];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v36 = 136315138;
      v37 = v29;
      v38 = v29;
      v39 = [v37 description];
      sub_2691E13D4();
      v63 = v33;

      v29 = v38;
      v40 = OUTLINED_FUNCTION_35();
      v43 = sub_2691B98CC(v40, v41, v42);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_2691B1000, v30, v31, "SCLockFlow execute | submitting command: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v44 = *(v35 + 8);
      v44(v63, v34);
    }

    else
    {

      v44 = *(v35 + 8);
      v45 = OUTLINED_FUNCTION_35();
      v44(v45, v46);
    }

    v0[39] = v44;
    v48 = v0[28];
    v47 = v0[29];
    v50 = v0[26];
    v49 = v0[27];
    sub_2691E0B94();
    v51 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v0[40] = sub_2691E0C04();
    v52 = *MEMORY[0x277D5BC10];
    v53 = *(v48 + 104);
    v0[41] = v53;
    v0[42] = (v48 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v47, v52, v49);
    v54 = *MEMORY[0x277D5B950];
    v55 = sub_2691E0BB4();
    v0[43] = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 104);
    v0[44] = v57;
    v0[45] = (v56 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v57(v50, v54, v55);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_5();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    sub_2691E0C14();
    v59 = v0[15];
    v58 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v59);
    v60 = *(MEMORY[0x277D5BFB8] + 4);
    v61 = swift_task_alloc();
    v0[46] = v61;
    v62 = sub_2691D102C();
    *v61 = v0;
    v61[1] = sub_2691D2EA0;

    return MEMORY[0x2821BB6A0](v29, v59, v62, v58);
  }
}

uint64_t sub_2691D2EA0()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691D2FA8()
{
  v40 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v3(v5, v4, v6);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 376);
    v37 = *(v0 + 312);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    *(v0 + 176) = v9;
    MEMORY[0x26D633490](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v39);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2691B1000, v7, v8, "SCLockFlow execute | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v18 = OUTLINED_FUNCTION_35();
    v37(v18);
  }

  else
  {
    v19 = *(v0 + 312);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);

    v23 = OUTLINED_FUNCTION_35();
    v19(v23);
  }

  v24 = *(v0 + 376);
  v26 = *(v0 + 352);
  v25 = *(v0 + 360);
  v27 = *(v0 + 336);
  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v38 = *(v0 + 320);
  v30 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 216);
  sub_2691E0B94();
  v36 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v29(v30, *MEMORY[0x277D5BC00], v32);
  v26(v31, *MEMORY[0x277D5B8D0], v28);
  OUTLINED_FUNCTION_11_2();
  *(swift_allocObject() + 16) = v24;
  MEMORY[0x26D633490](v24);
  OUTLINED_FUNCTION_9_5();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v33 = *(v0 + 192);
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v34();
}

uint64_t sub_2691D329C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t SCLockFlow.execute(completion:)()
{
  type metadata accessor for SCLockFlow();
  sub_2691D3594();
  return sub_2691E0B34();
}

uint64_t sub_2691D33CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCLockFlow.execute()();
}

uint64_t sub_2691D3468(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCLockFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691D34A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D34D8()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D329C();
}

unint64_t sub_2691D3594()
{
  result = qword_2802F9958;
  if (!qword_2802F9958)
  {
    type metadata accessor for SCLockFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9958);
  }

  return result;
}

uint64_t SCStartScreenRecordingFlow.__allocating_init(confirmationRequired:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 17) = a1;
  *(result + 24) = sub_2691D366C;
  *(result + 32) = 0;
  return result;
}

uint64_t SCStartScreenRecordingFlow.init(confirmationRequired:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 17) = a1;
  *(v1 + 24) = sub_2691D366C;
  *(v1 + 32) = 0;
  return v1;
}

uint64_t sub_2691D3688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B90, &unk_2691E3A10);
  v0 = sub_2691E0AE4();
  OUTLINED_FUNCTION_1(v0);
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2691E2110;
  sub_2691E0AD4();
  v5 = sub_2691E0A24();

  return v5;
}

uint64_t SCStartScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[34] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0CB4();
  v1[35] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[36] = v7;
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_44();
  v10 = sub_2691E1394();
  v1[38] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[39] = v11;
  v13 = *(v12 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2691D38C8()
{
  v177 = v0;
  sub_2691E0EF4();
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v2 = sub_2691E0C74();
  v3 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v2)
  {
    if (qword_2802F9378 != -1)
    {
      v3 = OUTLINED_FUNCTION_0();
    }

    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v7 = OUTLINED_FUNCTION_1_6(v3, qword_2802FBA28);
    v8(v7);
    v9 = sub_2691E1384();
    v10 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v10))
    {
      v11 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v11);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v12, v13, "SCStartScreenRecordingFlow execute | cannot screen record in Carplay");
      OUTLINED_FUNCTION_11_4();
    }

    v14 = *(v0 + 328);
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);

    v19 = *(v16 + 8);
    v20 = OUTLINED_FUNCTION_35();
    v21(v20);
    *(v17 + 16) = 7;

    sub_2691E0E14();
    v22 = sub_2691E0A74();
    OUTLINED_FUNCTION_36_1(v22);
    *(v0 + 248) = sub_2691E0A64();
LABEL_13:
    sub_2691E0D34();
LABEL_14:

    goto LABEL_15;
  }

  sub_2691E0EF4();
  v23 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_35();
  v24 = sub_2691E0C64();
  v25 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  if (v24)
  {
    if (qword_2802F9378 != -1)
    {
      v25 = OUTLINED_FUNCTION_0();
    }

    v26 = *(v0 + 336);
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);
    v29 = OUTLINED_FUNCTION_1_6(v25, qword_2802FBA28);
    v30(v29);
    v31 = sub_2691E1384();
    v32 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v32))
    {
      v33 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v33);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v34, v35, "SCStartScreenRecordingFlow execute | cannot screen record on watchOS");
      OUTLINED_FUNCTION_11_4();
    }

    v36 = *(v0 + 336);
    v37 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = *(v0 + 256);
    v39 = *(v0 + 264);

    v41 = *(v38 + 8);
    v42 = OUTLINED_FUNCTION_35();
    v43(v42);
    *(v39 + 16) = 7;

    sub_2691E0E14();
    v44 = sub_2691E0A74();
    OUTLINED_FUNCTION_36_1(v44);
    *(v0 + 240) = sub_2691E0A64();
    goto LABEL_13;
  }

  v47 = *(v0 + 264);
  v48 = *(v47 + 16);
  if (v48 == 4)
  {
    v87 = [objc_allocWithZone(MEMORY[0x277D47268]) init];
    *(v0 + 400) = v87;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v88 = *(v0 + 352);
    v89 = *(v0 + 304);
    v90 = *(v0 + 312);
    v91 = __swift_project_value_buffer(v89, qword_2802FBA28);
    *(v0 + 408) = v91;
    v92 = *(v90 + 16);
    *(v0 + 416) = v92;
    *(v0 + 424) = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v92(v88, v91, v89);
    v93 = v87;
    v94 = sub_2691E1384();
    v95 = sub_2691E1524();

    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 352);
    v99 = *(v0 + 304);
    v98 = *(v0 + 312);
    if (v96)
    {
      v175 = *(v0 + 304);
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v176[0] = v101;
      *v100 = 136315138;
      v102 = v93;
      v103 = [v102 description];
      sub_2691E13D4();

      v104 = OUTLINED_FUNCTION_35();
      v107 = sub_2691B98CC(v104, v105, v106);

      *(v100 + 4) = v107;
      _os_log_impl(&dword_2691B1000, v94, v95, "SCStartScreenRecordingFlow execute | submitting command: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v108 = *(v98 + 8);
      v108(v97, v175);
    }

    else
    {

      v108 = *(v98 + 8);
      v108(v97, v99);
    }

    *(v0 + 432) = v108;
    v153 = *(v0 + 288);
    v152 = *(v0 + 296);
    v155 = *(v0 + 272);
    v154 = *(v0 + 280);
    sub_2691E0B94();
    v156 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 440) = sub_2691E0C04();
    v157 = *MEMORY[0x277D5BC10];
    v158 = *(v153 + 104);
    *(v0 + 448) = v158;
    *(v0 + 456) = (v153 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v158(v152, v157, v154);
    v159 = *MEMORY[0x277D5B950];
    v160 = sub_2691E0BB4();
    *(v0 + 464) = v160;
    OUTLINED_FUNCTION_27(v160);
    v162 = *(v161 + 104);
    *(v0 + 472) = v162;
    *(v0 + 480) = (v161 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v162(v155, v159, v160);
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v160);
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    sub_2691E0C14();
    v166 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v167 = *(MEMORY[0x277D5BFB8] + 4);
    v168 = swift_task_alloc();
    *(v0 + 488) = v168;
    sub_2691D102C();
    *v168 = v0;
    v168[1] = sub_2691D488C;
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x2821BB6A0](v169, v170, v171, v172);
  }

  else if (v48 == 2)
  {
    if (*(v47 + 17) == 1)
    {
      if (qword_2802F9378 != -1)
      {
        v25 = OUTLINED_FUNCTION_0();
      }

      v71 = *(v0 + 368);
      v72 = *(v0 + 304);
      v73 = *(v0 + 312);
      v74 = OUTLINED_FUNCTION_1_6(v25, qword_2802FBA28);
      v75(v74);
      v76 = sub_2691E1384();
      v77 = sub_2691E1524();
      if (OUTLINED_FUNCTION_11_1(v77))
      {
        v78 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v78);
        OUTLINED_FUNCTION_12_0(&dword_2691B1000, v79, v80, "SCStartScreenRecordingFlow execute | prompting for confirmation");
        OUTLINED_FUNCTION_11_4();
      }

      v81 = *(v0 + 368);
      v82 = *(v0 + 304);
      v83 = *(v0 + 312);
      v85 = *(v0 + 256);
      v84 = *(v0 + 264);

      (*(v83 + 8))(v81, v82);
      *(v47 + 16) = 3;
      sub_2691E0EF4();
      type metadata accessor for SCSystemCommandsYesNoStrategy();
      swift_allocObject();
      sub_2691B2D50(v176, 2);
      sub_2691E0E14();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B60, &qword_2691E3C20);
      OUTLINED_FUNCTION_36_1(v86);
      sub_2691D6FEC(&qword_2802F93C0, 255, type metadata accessor for SCSystemCommandsYesNoStrategy);
      *(v0 + 232) = sub_2691E0AB4();
      sub_2691D6C00();

      sub_2691E0D24();

      goto LABEL_14;
    }

    if (qword_2802F9378 != -1)
    {
      v25 = OUTLINED_FUNCTION_0();
    }

    v130 = *(v0 + 360);
    v131 = *(v0 + 304);
    v132 = *(v0 + 312);
    v133 = OUTLINED_FUNCTION_1_6(v25, qword_2802FBA28);
    v134(v133);
    v135 = sub_2691E1384();
    v136 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v136))
    {
      v137 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v137);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v138, v139, "SCStartScreenRecordingFlow execute | confirmation is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v140 = *(v0 + 360);
    v141 = *(v0 + 304);
    v142 = *(v0 + 312);

    v143 = *(v142 + 8);
    v144 = OUTLINED_FUNCTION_35();
    v145(v144);
    *(v47 + 16) = 4;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    *(v0 + 392) = v146;
    *v146 = v147;
    v146[1] = sub_2691D4688;
    v148 = *(v0 + 256);
    v149 = *(v0 + 264);
    OUTLINED_FUNCTION_23_0();

    return SCStartScreenRecordingFlow.execute()(v150);
  }

  else
  {
    if (*(v47 + 16))
    {
      v109 = *(v0 + 264);
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
        v174 = *(v0 + 264);
      }

      v110 = *(v0 + 344);
      v111 = *(v0 + 304);
      v112 = *(v0 + 312);
      v113 = __swift_project_value_buffer(v111, qword_2802FBA28);
      (*(v112 + 16))(v110, v113, v111);

      v114 = sub_2691E1384();
      LOBYTE(v112) = sub_2691E1524();

      v115 = os_log_type_enabled(v114, v112);
      v116 = *(v0 + 344);
      v117 = *(v0 + 304);
      v118 = *(v0 + 312);
      if (v115)
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v176[0] = v120;
        *v119 = 136315138;
        *(v0 + 504) = *(v47 + 16);
        v121 = sub_2691E13E4();
        v123 = sub_2691B98CC(v121, v122, v176);

        *(v119 + 4) = v123;
        OUTLINED_FUNCTION_11_3(&dword_2691B1000, v124, v125, "SCStartScreenRecordingFlow execute | flow completed with state: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_42();
      }

      v126 = *(v118 + 8);
      v127 = OUTLINED_FUNCTION_35();
      v128(v127);
      v129 = *(v0 + 256);
      sub_2691E0D54();
LABEL_15:
      OUTLINED_FUNCTION_7_4();

      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    if (qword_2802F9378 != -1)
    {
      v25 = OUTLINED_FUNCTION_0();
    }

    v49 = *(v0 + 376);
    v50 = *(v0 + 304);
    v51 = *(v0 + 312);
    v52 = OUTLINED_FUNCTION_1_6(v25, qword_2802FBA28);
    v53(v52);
    v54 = sub_2691E1384();
    v55 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v55))
    {
      v56 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v56);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v57, v58, "SCStartScreenRecordingFlow execute | checking if device unlock is required");
      OUTLINED_FUNCTION_11_4();
    }

    v59 = *(v0 + 376);
    v60 = *(v0 + 304);
    v61 = *(v0 + 312);

    v62 = *(v61 + 8);
    v63 = OUTLINED_FUNCTION_35();
    v64(v63);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    *(v0 + 384) = v65;
    *v65 = v66;
    v65[1] = sub_2691D4484;
    v67 = *(v0 + 256);
    v68 = *(v0 + 264);
    OUTLINED_FUNCTION_23_0();

    return sub_2691D5904();
  }
}

uint64_t sub_2691D4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();
  v13 = *v12;
  v14 = *(*v12 + 384);
  v15 = *v12;
  OUTLINED_FUNCTION_8();
  *v16 = v15;

  OUTLINED_FUNCTION_31_1();
  v18 = *(v17 + 376);
  v19 = v13[46];
  v20 = v13[45];
  v21 = v13[44];
  v22 = v13[43];
  v23 = v13[42];
  v24 = v13[41];
  v25 = v13[40];
  v38 = v13[37];
  OUTLINED_FUNCTION_31_1();
  v27 = *(v26 + 272);

  v28 = *(v15 + 8);
  OUTLINED_FUNCTION_34_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_2691D4688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();
  v13 = *v12;
  v14 = *(*v12 + 392);
  v15 = *v12;
  OUTLINED_FUNCTION_8();
  *v16 = v15;

  OUTLINED_FUNCTION_31_1();
  v18 = *(v17 + 376);
  v19 = v13[46];
  v20 = v13[45];
  v21 = v13[44];
  v22 = v13[43];
  v23 = v13[42];
  v24 = v13[41];
  v25 = v13[40];
  v38 = v13[37];
  OUTLINED_FUNCTION_31_1();
  v27 = *(v26 + 272);

  v28 = *(v15 + 8);
  OUTLINED_FUNCTION_34_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_2691D488C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 488);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 496) = v0;

  if (v0)
  {
    v9 = sub_2691D4A58;
  }

  else
  {

    v9 = sub_2691D4998;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2691D4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();
  v13 = *(v12 + 256);

  __swift_destroy_boxed_opaque_existential_0Tm((v12 + 136));
  sub_2691E0D54();
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2691D4A58()
{
  v45 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v3(v5, v4, v6);
  MEMORY[0x26D633490](v1);
  v7 = sub_2691E1384();
  LOBYTE(v6) = sub_2691E1544();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = *(v0 + 496);
    v42 = *(v0 + 432);
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    *(v0 + 224) = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v14 = sub_2691E13E4();
    v16 = sub_2691B98CC(v14, v15, &v44);

    *(v12 + 4) = v16;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v17, v18, "SCStartScreenRecordingFlow execute | unable to start recording: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v19 = OUTLINED_FUNCTION_35();
    v42(v19);
  }

  else
  {
    v20 = *(v0 + 432);
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);

    v24 = OUTLINED_FUNCTION_35();
    v20(v24);
  }

  v26 = *(v0 + 472);
  v25 = *(v0 + 480);
  v28 = *(v0 + 456);
  v27 = *(v0 + 464);
  v29 = *(v0 + 448);
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 280);
  v41 = *(v0 + 440);
  v43 = *(v0 + 256);
  v39 = *(v0 + 496);
  *(*(v0 + 264) + 16) = 7;
  sub_2691E0B94();
  v40 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  v29(v30, *MEMORY[0x277D5BC00], v32);
  v26(v31, *MEMORY[0x277D5B8D0], v27);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v27);
  *(swift_allocObject() + 16) = v39;
  MEMORY[0x26D633490](v39);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));

  sub_2691E0E14();
  v36 = sub_2691E0A74();
  OUTLINED_FUNCTION_36_1(v36);
  *(v0 + 216) = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_31();

  return v37();
}

uint64_t sub_2691D4E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691D60FC();
}

uint64_t sub_2691D4EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D60FC();
}

uint64_t sub_2691D4F48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691D64E4();
}

uint64_t SCStartScreenRecordingFlow.execute(completion:)()
{
  type metadata accessor for SCStartScreenRecordingFlow();
  sub_2691D6FEC(&qword_2802F9990, v0, type metadata accessor for SCStartScreenRecordingFlow);
  return sub_2691E0B34();
}

uint64_t sub_2691D506C(uint64_t a1)
{
  v105 = a1;
  v1 = sub_2691E0DF4();
  v2 = OUTLINED_FUNCTION_2(v1);
  v102 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_47();
  v97 = v7 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B78, &qword_2691E39F8);
  v8 = OUTLINED_FUNCTION_27(v103);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v99 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  v14 = &v90[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  v16 = OUTLINED_FUNCTION_37(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v96 = v19;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  v100 = &v90[-v21];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  v101 = &v90[-v23];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  v98 = &v90[-v25];
  OUTLINED_FUNCTION_13();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v90[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v90[-v30];
  v32 = sub_2691E0E84();
  v33 = OUTLINED_FUNCTION_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B80, &qword_2691E3A08);
  v42 = OUTLINED_FUNCTION_2(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v48 = &v90[-v47];
  (*(v44 + 16))(&v90[-v47], v105, v41);
  if ((*(v44 + 88))(v48, v41) != *MEMORY[0x277D5BC38])
  {
    *(v104 + 16) = 6;
    return (*(v44 + 8))(v48, v41);
  }

  (*(v44 + 96))(v48, v41);
  (*(v35 + 32))(v40, v48, v32);
  v95 = v40;
  sub_2691E0E74();
  v49 = *MEMORY[0x277D5BED8];
  v50 = v102;
  v93 = *(v102 + 104);
  v93(v29, v49, v1);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v1);
  v54 = *(v103 + 48);
  sub_2691D6F7C(v31, v14);
  sub_2691D6F7C(v29, &v14[v54]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v1);
  v105 = v1;
  v94 = v35;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_22_1(v29);
    OUTLINED_FUNCTION_22_1(v31);
    if (__swift_getEnumTagSinglePayload(&v14[v54], 1, v105) == 1)
    {
      sub_2691CAE08(v14, &qword_2802F9438, &qword_2691E3A00);
LABEL_16:
      v81 = OUTLINED_FUNCTION_28_1();
      result = v82(v81);
      *(v104 + 16) = 4;
      return result;
    }

    goto LABEL_8;
  }

  v57 = v98;
  sub_2691D6F7C(v14, v98);
  if (__swift_getEnumTagSinglePayload(&v14[v54], 1, v1) == 1)
  {
    OUTLINED_FUNCTION_22_1(v29);
    OUTLINED_FUNCTION_22_1(v31);
    (*(v50 + 8))(v57, v105);
LABEL_8:
    sub_2691CAE08(v14, &qword_2802F9B78, &qword_2691E39F8);
    goto LABEL_9;
  }

  v75 = *(v50 + 32);
  v92 = v32;
  v76 = v97;
  v75(v97, &v14[v54], v1);
  OUTLINED_FUNCTION_10_2();
  sub_2691D6FEC(v77, 255, v78);
  v91 = sub_2691E13B4();
  v79 = *(v50 + 8);
  v80 = v76;
  v32 = v92;
  v79(v80, v1);
  sub_2691CAE08(v29, &qword_2802F9438, &qword_2691E3A00);
  sub_2691CAE08(v31, &qword_2802F9438, &qword_2691E3A00);
  v79(v57, v1);
  sub_2691CAE08(v14, &qword_2802F9438, &qword_2691E3A00);
  if (v91)
  {
    goto LABEL_16;
  }

LABEL_9:
  v58 = v101;
  sub_2691E0E74();
  v59 = v100;
  v60 = v105;
  v93(v100, *MEMORY[0x277D5BED0], v105);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v64 = *(v103 + 48);
  v65 = v99;
  sub_2691D6F7C(v58, v99);
  sub_2691D6F7C(v59, v65 + v64);
  if (__swift_getEnumTagSinglePayload(v65, 1, v60) != 1)
  {
    v70 = v32;
    v71 = v96;
    sub_2691D6F7C(v65, v96);
    v72 = __swift_getEnumTagSinglePayload(v65 + v64, 1, v60);
    v73 = v102;
    v74 = (v102 + 8);
    if (v72 != 1)
    {
      v83 = v65 + v64;
      v84 = v97;
      (*(v102 + 32))(v97, v83, v60);
      OUTLINED_FUNCTION_10_2();
      sub_2691D6FEC(v85, 255, v86);
      v87 = sub_2691E13B4();
      v88 = v94;
      v89 = *(v73 + 8);
      v89(v84, v60);
      sub_2691CAE08(v100, &qword_2802F9438, &qword_2691E3A00);
      sub_2691CAE08(v101, &qword_2802F9438, &qword_2691E3A00);
      (*(v88 + 8))(v95, v70);
      v89(v71, v60);
      result = sub_2691CAE08(v65, &qword_2802F9438, &qword_2691E3A00);
      v69 = v104;
      if ((v87 & 1) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_22_1(v100);
    OUTLINED_FUNCTION_22_1(v101);
    (*(v94 + 8))(v95, v70);
    (*v74)(v71, v60);
    return sub_2691CAE08(v65, &qword_2802F9B78, &qword_2691E39F8);
  }

  OUTLINED_FUNCTION_22_1(v59);
  OUTLINED_FUNCTION_22_1(v58);
  v66 = OUTLINED_FUNCTION_28_1();
  v67(v66);
  v68 = __swift_getEnumTagSinglePayload(v65 + v64, 1, v60);
  v69 = v104;
  if (v68 != 1)
  {
    return sub_2691CAE08(v65, &qword_2802F9B78, &qword_2691E39F8);
  }

  result = sub_2691CAE08(v65, &qword_2802F9438, &qword_2691E3A00);
LABEL_18:
  *(v69 + 16) = 5;
  return result;
}

uint64_t sub_2691D5904()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691D59BC()
{
  v1 = sub_2691D6004();
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0();
    }

    v2 = v0[8];
    v3 = v0[5];
    v4 = v0[6];
    v5 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v6(v5);
    v7 = sub_2691E1384();
    v8 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v8))
    {
      v9 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v9);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v10, v11, "SCStartScreenRecordingFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked");
      OUTLINED_FUNCTION_11_4();
    }

    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v16 = v0[3];
    v15 = v0[4];

    v17 = *(v14 + 8);
    v18 = OUTLINED_FUNCTION_35();
    v20 = v19(v18);
    *(v15 + 16) = 1;
    v21 = *(v15 + 32);
    v0[2] = (*(v15 + 24))(v20);
    sub_2691E0AC4();

    sub_2691E0D24();

    v23 = v0[7];
    v22 = v0[8];

    OUTLINED_FUNCTION_31();

    return v24();
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0();
    }

    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    v29 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v30(v29);
    v31 = sub_2691E1384();
    v32 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v32))
    {
      v33 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v33);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v34, v35, "SCStartScreenRecordingFlow handleUnlockCheck | unlock is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v37 = v0[6];
    v36 = v0[7];
    v39 = v0[4];
    v38 = v0[5];

    v40 = *(v37 + 8);
    v41 = OUTLINED_FUNCTION_35();
    v42(v41);
    *(v39 + 16) = 2;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    v0[9] = v43;
    *v43 = v44;
    v43[1] = sub_2691D5C44;
    v45 = v0[3];
    v46 = v0[4];

    return SCStartScreenRecordingFlow.execute()(v45);
  }
}

uint64_t sub_2691D5C44()
{
  OUTLINED_FUNCTION_34();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_2691D5D64(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2691E1394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  if (*a1 == 1)
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v11, v12, v4);
    v13 = sub_2691E1384();
    v14 = sub_2691E1524();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 7;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2691B1000, v13, v14, "SCStartScreenRecordingFlow processDeviceUnlockResult | unable to unlock device due to error", v15, 2u);
    v16 = 7;
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v9, v17, v4);
    v13 = sub_2691E1384();
    v18 = sub_2691E1524();
    v16 = 2;
    if (!os_log_type_enabled(v13, v18))
    {
      v11 = v9;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2691B1000, v13, v18, "SCStartScreenRecordingFlow processDeviceUnlockResult | unlocked device, authenticated", v15, 2u);
    v11 = v9;
  }

  MEMORY[0x26D6335B0](v15, -1, -1);
LABEL_13:

  result = (*(v5 + 8))(v11, v4);
  *(a2 + 16) = v16;
  return result;
}

BOOL sub_2691D6004()
{
  v0 = sub_2691E0DE4();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  v8 = v7 - v6;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2691E0DD4();
  v9 = sub_2691E0C24();
  (*(v3 + 8))(v8, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return (v9 & 1) == 0;
}

uint64_t sub_2691D60FC()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691D61CC()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 216) = v2;
  *v2 = v3;
  v2[1] = sub_2691D6268;
  v4 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v4, v0 + 16);
}

uint64_t sub_2691D6268()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v7 = sub_2691C04B4;
  }

  else
  {
    v7 = sub_2691D6384;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2691D6384()
{
  OUTLINED_FUNCTION_32_1();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v7 = sub_2691E0D84();
  v8 = OUTLINED_FUNCTION_16_0(v7);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_18_1();
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691D64E4()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  v0[27] = OUTLINED_FUNCTION_44();
  v12 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2691D65D4()
{
  v1 = v0[27];
  type metadata accessor for ScreenRecordingCATs();
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08((v0 + 2), &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  v0[28] = sub_2691E12C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  v0[29] = v2;
  *v2 = v3;
  v2[1] = sub_2691D66E4;
  v4 = v0[26];

  return sub_2691D7EE0();
}

uint64_t sub_2691D66E4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = *(v2 + 232);
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_2691D6964;
  }

  else
  {
    v7 = sub_2691D67E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2691D67E8()
{
  v1 = *(v0 + 224);
  v13 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v8 = sub_2691E0D84();
  v9 = OUTLINED_FUNCTION_16_0(v8);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_18_1();

  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v4, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v3 + 8))(v2, v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v11();
}

uint64_t sub_2691D6964()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];

  OUTLINED_FUNCTION_31();
  v6 = v0[30];

  return v5();
}

uint64_t SCStartScreenRecordingFlow.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SCStartScreenRecordingFlow.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2691D6A68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCStartScreenRecordingFlow.execute()();
}

uint64_t sub_2691D6B04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCStartScreenRecordingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691D6B3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D6B74()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4F48();
}

unint64_t sub_2691D6C00()
{
  result = qword_2802F9B68;
  if (!qword_2802F9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F9B60, &qword_2691E3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B68);
  }

  return result;
}

uint64_t sub_2691D6C64()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4EB0();
}

uint64_t sub_2691D6CEC()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4E18();
}

uint64_t getEnumTagSinglePayload for SCStartScreenRecordingFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SCStartScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x2691D6EECLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691D6F28()
{
  result = qword_2802F9B70;
  if (!qword_2802F9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B70);
  }

  return result;
}

uint64_t sub_2691D6F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691D6FEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[37];
  v11 = v0[34];
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_2691E0D14();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{

  return sub_2691CAE08(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_2691D71AC(char a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *&v6[0] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BA0, ">+");
  *(v2 + 16) = sub_2691E13E4();
  *(v2 + 24) = v4;
  sub_2691B8078(a2 + 40, v2 + 40);
  sub_2691B8078(a2 + 80, v6);
  sub_2691B8A88(a2);
  sub_2691B8ADC(v6, v2 + 80);
  return v2;
}

uint64_t SCGuestModeFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D7318, 0, 0);
}

uint64_t sub_2691D7318()
{
  v23 = v0;
  if (qword_2802F9378 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_2802FBA28);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_2691E1384();
  v6 = sub_2691E1524();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2691B98CC(*(v11 + 16), *(v11 + 24), &v22);
    _os_log_impl(&dword_2691B1000, v5, v6, "#GUM %s execute | guest mode is only on visionOS", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x26D6335B0](v13, -1, -1);
    MEMORY[0x26D6335B0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v14 = v0[7];
  v16 = v0[3];
  v15 = v0[4];

  sub_2691E0E14();
  v17 = sub_2691E0A74();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[2] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_31();

  return v20();
}

uint64_t sub_2691D755C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D76E8();
}

uint64_t sub_2691D75F4()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D755C();
}

uint64_t SCGuestModeFlow.execute(completion:)()
{
  type metadata accessor for SCGuestModeFlow();
  sub_2691D7BF8();
  return sub_2691E0B34();
}

uint64_t sub_2691D76E8()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650) - 8) + 64) + 15;
  v0[23] = swift_task_alloc();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  v4 = *(v3 - 8);
  v0[25] = v4;
  v5 = *(v4 + 64) + 15;
  v0[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D77DC, 0, 0);
}

uint64_t sub_2691D77DC()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_2691D787C;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691D787C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v7 = sub_2691C04B4;
  }

  else
  {
    v7 = sub_2691C0318;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void *SCGuestModeFlow.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 10);
  return v0;
}

uint64_t SCGuestModeFlow.__deallocating_deinit()
{
  SCGuestModeFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2691D7A20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCGuestModeFlow.execute()();
}

uint64_t sub_2691D7ABC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCGuestModeFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t RequestType.hashValue.getter(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691D7B90()
{
  v1 = *v0;
  sub_2691E1714();
  RequestType.hash(into:)(v3, v1);
  return sub_2691E1734();
}

unint64_t sub_2691D7BF8()
{
  result = qword_2802F9950;
  if (!qword_2802F9950)
  {
    type metadata accessor for SCGuestModeFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9950);
  }

  return result;
}

unint64_t sub_2691D7C50()
{
  result = qword_2802F9B98;
  if (!qword_2802F9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691D7DF8);
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

uint64_t type metadata accessor for ScreenRecordingCATs()
{
  result = qword_2802F9BA8;
  if (!qword_2802F9BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691D7EE0()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D7F8C()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D8038()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D80E4;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D80E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2691D81D8()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D8284(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691D82D8(a1, a2);
}

uint64_t sub_2691D82D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691BAD14(a1);
  return v12;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t SCRestartShutdownFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[16] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0CB4();
  v1[17] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[18] = v7;
  v9 = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_44();
  v10 = sub_2691E1394();
  v1[20] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[21] = v11;
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2691D8650()
{
  v116 = v0;
  sub_2691E0EF4();
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v2 = sub_2691E0C74();
  v3 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v2)
  {
    if (qword_2802F9378 != -1)
    {
      v3 = OUTLINED_FUNCTION_0();
    }

    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = OUTLINED_FUNCTION_1_6(v3, qword_2802FBA28);
    v8(v7);
    v9 = sub_2691E1384();
    v10 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v10))
    {
      v11 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v11);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v12, v13, "SCRestartShutdownFlow execute | cannot shutdown in Carplay");
      OUTLINED_FUNCTION_11_4();
    }

    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);

    v19 = *(v15 + 8);
    v20 = OUTLINED_FUNCTION_35();
    v21(v20);
    *(v17 + 16) = 7;

    sub_2691E0E14();
    v22 = sub_2691E0A74();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    *(v0 + 104) = sub_2691E0A64();
    sub_2691E0D34();
LABEL_7:

LABEL_35:
    v107 = *(v0 + 200);
    v106 = *(v0 + 208);
    v109 = *(v0 + 184);
    v108 = *(v0 + 192);
    v110 = *(v0 + 176);
    v111 = *(v0 + 152);
    v112 = *(v0 + 128);

    OUTLINED_FUNCTION_31();

    return v113();
  }

  v25 = *(v0 + 120);
  v26 = *(v25 + 16);
  if (v26 == 4)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
      v25 = *(v0 + 120);
    }

    v63 = *(v0 + 192);
    v64 = *(v0 + 168);
    __swift_project_value_buffer(*(v0 + 160), qword_2802FBA28);
    v65 = OUTLINED_FUNCTION_15_1();
    v66(v65);

    v67 = sub_2691E1384();
    v68 = sub_2691E1524();
    v69 = OUTLINED_FUNCTION_11_1(v68);
    v70 = *(v0 + 120);
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 67109120;
      *(v71 + 4) = *(v70 + 17);

      _os_log_impl(&dword_2691B1000, v67, v25, "SCRestartShutdownFlow execute | isShutdownOnly: %{BOOL}d", v71, 8u);
      OUTLINED_FUNCTION_42();
    }

    else
    {
      v92 = *(v0 + 120);
    }

    v94 = *(v0 + 144);
    v93 = *(v0 + 152);
    v95 = *(v0 + 128);
    v96 = *(v0 + 136);
    v97 = *(v0 + 112);
    v98 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    sub_2691D9184(40000000000000000, 0);
    sub_2691E0B94();
    v99 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_2691E0C04();
    (*(v94 + 104))(v93, *MEMORY[0x277D5BC10], v96);
    v100 = *MEMORY[0x277D5B950];
    v101 = sub_2691E0BB4();
    OUTLINED_FUNCTION_27(v101);
    (*(v102 + 104))(v95, v100, v101);
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v101);
    OUTLINED_FUNCTION_14_2();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    goto LABEL_34;
  }

  if (v26 == 2)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 168);
    __swift_project_value_buffer(*(v0 + 160), qword_2802FBA28);
    v49 = OUTLINED_FUNCTION_15_1();
    v50(v49);
    v51 = sub_2691E1384();
    v52 = sub_2691E1524();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_51();
      *v53 = 0;
      _os_log_impl(&dword_2691B1000, v51, v52, "SCRestartShutdownFlow execute | prompting for confirmation", v53, 2u);
      OUTLINED_FUNCTION_42();
    }

    v54 = *(v0 + 200);
    v55 = *(v0 + 160);
    v56 = *(v0 + 168);
    v58 = *(v0 + 112);
    v57 = *(v0 + 120);

    (*(v56 + 8))(v54, v55);
    *(v25 + 16) = 3;
    sub_2691E0EF4();
    v59 = *(v57 + 17);
    type metadata accessor for SCSystemCommandsYesNoStrategy();
    swift_allocObject();
    sub_2691B2D50(v115, v59);
    sub_2691E0E14();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B60, &qword_2691E3C20);
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_2691DC1A8(&qword_2802F93C0, 255, type metadata accessor for SCSystemCommandsYesNoStrategy);
    *(v0 + 96) = sub_2691E0AB4();
    sub_2691D6C00();

    sub_2691E0D24();

    goto LABEL_7;
  }

  if (*(v25 + 16))
  {
    v72 = *(v0 + 120);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
      v114 = *(v0 + 120);
    }

    v73 = *(v0 + 184);
    v74 = *(v0 + 160);
    v75 = *(v0 + 168);
    v76 = __swift_project_value_buffer(v74, qword_2802FBA28);
    (*(v75 + 16))(v73, v76, v74);

    v77 = sub_2691E1384();
    v78 = sub_2691E1524();

    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 184);
    v81 = *(v0 + 160);
    v82 = *(v0 + 168);
    if (v79)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v115[0] = v84;
      *v83 = 136315138;
      *(v0 + 224) = *(v25 + 16);
      v85 = sub_2691E13E4();
      v87 = sub_2691B98CC(v85, v86, v115);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_2691B1000, v77, v78, "SCRestartShutdownFlow execute | flow completed with state: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
    }

    v88 = *(v82 + 8);
    v89 = OUTLINED_FUNCTION_23_1();
    v90(v89);
    v91 = *(v0 + 112);
LABEL_34:
    sub_2691E0D54();
    goto LABEL_35;
  }

  if (qword_2802F9378 != -1)
  {
    v3 = OUTLINED_FUNCTION_0();
  }

  v27 = *(v0 + 208);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168);
  v30 = OUTLINED_FUNCTION_1_6(v3, qword_2802FBA28);
  v31(v30);
  v32 = sub_2691E1384();
  v33 = sub_2691E1524();
  if (OUTLINED_FUNCTION_11_1(v33))
  {
    v34 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v34);
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v35, v36, "SCRestartShutdownFlow execute | checking if device unlock is required");
    OUTLINED_FUNCTION_11_4();
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 160);
  v39 = *(v0 + 168);

  v40 = *(v39 + 8);
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  v43 = swift_task_alloc();
  *(v0 + 216) = v43;
  *v43 = v0;
  v43[1] = sub_2691D8E98;
  v44 = *(v0 + 112);
  v45 = *(v0 + 120);

  return sub_2691DA7E4();
}

uint64_t sub_2691D8E98()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = v1[26];
  v6 = v1[25];
  v7 = v1[24];
  v8 = v1[23];
  v9 = v1[22];
  v10 = v1[19];
  v11 = v1[16];

  v12 = *(v3 + 8);

  return v12();
}

uint64_t sub_2691D9060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691DB10C();
}

uint64_t SCRestartShutdownFlow.execute(completion:)()
{
  type metadata accessor for SCRestartShutdownFlow();
  sub_2691DC1A8(&qword_2802F9978, v0, type metadata accessor for SCRestartShutdownFlow);
  return sub_2691E0B34();
}

uint64_t sub_2691D9184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  v7 = OUTLINED_FUNCTION_37(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = sub_2691E1394();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v20 = v19 - v18;
  sub_2691DBF20();
  v21 = sub_2691D94B8();
  [v21 setRebootType_];
  [v21 setSource_];
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = __swift_project_value_buffer(v12, qword_2802FBA28);
  (*(v15 + 16))(v20, v22, v12);
  v23 = v21;
  v24 = sub_2691E1384();
  v25 = sub_2691E1524();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v40 = v3;
    v29 = a2;
    v30 = v28;
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v28 = v23;
    v31 = v23;
    _os_log_impl(&dword_2691B1000, v24, v25, "SCRestartShutdownFlow execute | submitting shutdown command with: %@", v27, 0xCu);
    sub_2691CAE08(v30, &qword_2802F9C80, &qword_2691E3DC8);
    a2 = v29;
    v3 = v40;
    OUTLINED_FUNCTION_42();
    a1 = v39;
    OUTLINED_FUNCTION_42();
  }

  (*(v15 + 8))(v20, v12);
  sub_2691E14C4();
  sub_2691E14E4();
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = a1;
  v36[5] = a2;
  v36[6] = v3;
  v36[7] = v23;
  v37 = v23;

  sub_2691D9ADC(0, 0, v11, &unk_2691E3DC0, v36);

  return sub_2691CAE08(v11, &qword_2802F9BC0, &qword_2691E3DB0);
}

id sub_2691D94B8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2691E13C4();

  v2 = [v0 initWithReason_];

  return v2;
}

uint64_t sub_2691D952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2691E1394();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_2691E1614();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D964C, 0, 0);
}

uint64_t sub_2691D964C()
{
  OUTLINED_FUNCTION_53();
  v1 = v0[2];
  v2 = v0[3];
  sub_2691E1784();
  if (sub_2691E1774())
  {
    v3 = v0[11];
    sub_2691E1704();
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2691D9830;
    v5 = v0[11];
    v7 = v0[2];
    v6 = v0[3];

    return sub_2691DB86C(v7, v6, 0, 0, 1);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[5];
    v11 = v9[9];
    __swift_project_boxed_opaque_existential_1(v9 + 5, v9[8]);
    v12 = OUTLINED_FUNCTION_19_1();
    v14 = v13(v12);
    if (qword_2802F9378 != -1)
    {
      v14 = OUTLINED_FUNCTION_0();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v18 = OUTLINED_FUNCTION_1_6(v14, qword_2802FBA28);
    v19(v18);
    v20 = sub_2691E1384();
    v21 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v21))
    {
      v22 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v22);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v23, v24, "SCRestartShutdownFlow execute | submitted command");
      OUTLINED_FUNCTION_11_4();
    }

    v25 = v0[11];
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];

    v29 = *(v27 + 8);
    v30 = OUTLINED_FUNCTION_23_1();
    v31(v30);

    OUTLINED_FUNCTION_31();

    return v32();
  }
}

uint64_t sub_2691D9830()
{
  OUTLINED_FUNCTION_53();
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = OUTLINED_FUNCTION_35();
  v11(v10);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2691D99B0()
{
  OUTLINED_FUNCTION_53();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = OUTLINED_FUNCTION_19_1();
  v6 = v5(v4);
  if (qword_2802F9378 != -1)
  {
    v6 = OUTLINED_FUNCTION_0();
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v10 = OUTLINED_FUNCTION_1_6(v6, qword_2802FBA28);
  v11(v10);
  v12 = sub_2691E1384();
  v13 = sub_2691E1524();
  if (OUTLINED_FUNCTION_11_1(v13))
  {
    v14 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v14);
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v15, v16, "SCRestartShutdownFlow execute | submitted command");
    OUTLINED_FUNCTION_11_4();
  }

  v17 = v0[11];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];

  v21 = *(v19 + 8);
  v22 = OUTLINED_FUNCTION_23_1();
  v23(v22);

  OUTLINED_FUNCTION_31();

  return v24();
}

uint64_t sub_2691D9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2691DC078(a3, v26 - v11, &qword_2802F9BC0, &qword_2691E3DB0);
  v13 = sub_2691E14E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2691CAE08(v12, &qword_2802F9BC0, &qword_2691E3DB0);
  }

  else
  {
    sub_2691E14D4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2691E14B4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2691E13F4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2691D9D80(uint64_t a1)
{
  v133 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v2 = OUTLINED_FUNCTION_37(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v124 = &v116[-v5];
  v6 = sub_2691E0CB4();
  v7 = OUTLINED_FUNCTION_2(v6);
  v121 = v8;
  v122 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v123 = v12 - v11;
  v13 = sub_2691E0DF4();
  v14 = OUTLINED_FUNCTION_2(v13);
  v131 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47();
  v126 = v19 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B78, &qword_2691E39F8);
  v20 = OUTLINED_FUNCTION_27(v132);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6();
  v129 = v23;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  v26 = &v116[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  v28 = OUTLINED_FUNCTION_37(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v125 = v31;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v32);
  v130 = &v116[-v33];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  v128 = &v116[-v35];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  v127 = &v116[-v37];
  OUTLINED_FUNCTION_13();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v116[-v40];
  MEMORY[0x28223BE20](v39);
  v43 = &v116[-v42];
  v44 = sub_2691E0E84();
  v45 = OUTLINED_FUNCTION_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  v52 = v51 - v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B80, &qword_2691E3A08);
  v54 = OUTLINED_FUNCTION_2(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v60 = &v116[-v59];
  (*(v56 + 16))(&v116[-v59], v133, v53);
  if ((*(v56 + 88))(v60, v53) != *MEMORY[0x277D5BC38])
  {
    *(v134 + 16) = 6;
    return (*(v56 + 8))(v60, v53);
  }

  (*(v56 + 96))(v60, v53);
  v120 = v47;
  v61 = *(v47 + 32);
  v133 = v44;
  v61(v52, v60, v44);
  sub_2691E0E74();
  v62 = *MEMORY[0x277D5BED8];
  v63 = v131;
  v119 = *(v131 + 104);
  v119(v41, v62, v13);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v13);
  v67 = *(v132 + 48);
  sub_2691DC078(v43, v26, &qword_2802F9438, &qword_2691E3A00);
  sub_2691DC078(v41, &v26[v67], &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v26);
  if (v79)
  {
    OUTLINED_FUNCTION_24_1();
    sub_2691CAE08(v68, v69, v70);
    OUTLINED_FUNCTION_24_1();
    sub_2691CAE08(v71, v72, v73);
    OUTLINED_FUNCTION_5_6(&v26[v67]);
    if (v79)
    {
      sub_2691CAE08(v26, &qword_2802F9438, &qword_2691E3A00);
      v74 = v120;
LABEL_23:
      result = (*(v74 + 8))(v52, v133);
      *(v134 + 16) = 4;
      return result;
    }

    goto LABEL_11;
  }

  v118 = v43;
  v76 = v26;
  v77 = v26;
  v78 = v127;
  sub_2691DC078(v76, v127, &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v77 + v67);
  if (v79)
  {
    sub_2691CAE08(v41, &qword_2802F9438, &qword_2691E3A00);
    sub_2691CAE08(v118, &qword_2802F9438, &qword_2691E3A00);
    (*(v63 + 8))(v78, v13);
    v26 = v77;
LABEL_11:
    sub_2691CAE08(v26, &qword_2802F9B78, &qword_2691E39F8);
    v74 = v120;
    goto LABEL_12;
  }

  v92 = v126;
  (*(v63 + 32))(v126, v77 + v67, v13);
  OUTLINED_FUNCTION_11_5();
  sub_2691DC1A8(v93, 255, v94);
  v117 = sub_2691E13B4();
  v95 = *(v63 + 8);
  v95(v92, v13);
  sub_2691CAE08(v41, &qword_2802F9438, &qword_2691E3A00);
  sub_2691CAE08(v118, &qword_2802F9438, &qword_2691E3A00);
  v95(v78, v13);
  sub_2691CAE08(v77, &qword_2802F9438, &qword_2691E3A00);
  v74 = v120;
  if (v117)
  {
    goto LABEL_23;
  }

LABEL_12:
  v80 = v63;
  v81 = v128;
  v131 = v52;
  sub_2691E0E74();
  v82 = v130;
  v119(v130, *MEMORY[0x277D5BED0], v13);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v13);
  v86 = *(v132 + 48);
  v87 = v129;
  sub_2691DC078(v81, v129, &qword_2802F9438, &qword_2691E3A00);
  sub_2691DC078(v82, v87 + v86, &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v87);
  v88 = v134;
  if (!v79)
  {
    v90 = v125;
    sub_2691DC078(v87, v125, &qword_2802F9438, &qword_2691E3A00);
    OUTLINED_FUNCTION_5_6(v87 + v86);
    if (!v91)
    {
      v96 = v87 + v86;
      v97 = v126;
      (*(v80 + 32))(v126, v96, v13);
      OUTLINED_FUNCTION_11_5();
      sub_2691DC1A8(v98, 255, v99);
      LODWORD(v132) = sub_2691E13B4();
      v100 = *(v80 + 8);
      v100(v97, v13);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v101, v102, v103);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v104, v105, v106);
      v100(v90, v13);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v107, v108, v109);
      v89 = v133;
      if (v132)
      {
        goto LABEL_25;
      }

      return (*(v74 + 8))(v131, v89);
    }

    OUTLINED_FUNCTION_22_1(v130);
    OUTLINED_FUNCTION_22_1(v81);
    (*(v80 + 8))(v90, v13);
    v89 = v133;
LABEL_20:
    sub_2691CAE08(v87, &qword_2802F9B78, &qword_2691E39F8);
    return (*(v74 + 8))(v131, v89);
  }

  OUTLINED_FUNCTION_22_1(v82);
  OUTLINED_FUNCTION_22_1(v81);
  OUTLINED_FUNCTION_5_6(v87 + v86);
  v89 = v133;
  if (!v79)
  {
    goto LABEL_20;
  }

  sub_2691CAE08(v87, &qword_2802F9438, &qword_2691E3A00);
LABEL_25:
  *(v88 + 16) = 5;
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1(v135, v135[3]);
  sub_2691E0C04();
  (*(v121 + 104))(v123, *MEMORY[0x277D5BC08], v122);
  v110 = *MEMORY[0x277D5B8F8];
  v111 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27(v111);
  (*(v112 + 104))(v124, v110, v111);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v111);
  OUTLINED_FUNCTION_14_2();
  sub_2691E0BF4();
  sub_2691E0BA4();

  (*(v74 + 8))(v131, v89);
  return __swift_destroy_boxed_opaque_existential_0Tm(v135);
}

uint64_t sub_2691DA7E4()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691DA8A0()
{
  OUTLINED_FUNCTION_53();
  v1 = sub_2691DB014();
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0();
    }

    v2 = v0[8];
    v3 = v0[5];
    v4 = v0[6];
    v5 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v6(v5);
    v7 = sub_2691E1384();
    v8 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v8))
    {
      v9 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v9);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v10, v11, "SCRestartShutdownFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked");
      OUTLINED_FUNCTION_11_4();
    }

    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v16 = v0[3];
    v15 = v0[4];

    v17 = *(v14 + 8);
    v18 = OUTLINED_FUNCTION_35();
    v20 = v19(v18);
    *(v15 + 16) = 1;
    v21 = *(v15 + 32);
    v0[2] = (*(v15 + 24))(v20);
    sub_2691E0AC4();

    sub_2691E0D24();

    v23 = v0[7];
    v22 = v0[8];

    OUTLINED_FUNCTION_31();

    return v24();
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0();
    }

    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    v29 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v30(v29);
    v31 = sub_2691E1384();
    v32 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v32))
    {
      v33 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v33);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v34, v35, "SCRestartShutdownFlow handleUnlockCheck | unlock is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v37 = v0[6];
    v36 = v0[7];
    v39 = v0[4];
    v38 = v0[5];

    v40 = *(v37 + 8);
    v41 = OUTLINED_FUNCTION_35();
    v42(v41);
    *(v39 + 16) = 2;
    v43 = swift_task_alloc();
    v0[9] = v43;
    *v43 = v0;
    v43[1] = sub_2691D5C44;
    v44 = v0[3];
    v45 = v0[4];

    return SCRestartShutdownFlow.execute()(v44);
  }
}

uint64_t sub_2691DAB28(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36[-1] - v6;
  v8 = sub_2691E0CB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2691E1394();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-1] - v19;
  if (*a1 == 1)
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, qword_2802FBA28);
    (*(v14 + 16))(v20, v21, v13);
    v22 = sub_2691E1384();
    v23 = sub_2691E1524();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = a2;
      v25 = v8;
      v26 = v24;
      *v24 = 0;
      _os_log_impl(&dword_2691B1000, v22, v23, "SCRestartShutdownFlow processDeviceUnlockResult | unable to unlock device due to error", v24, 2u);
      v27 = v26;
      v8 = v25;
      a2 = v35;
      MEMORY[0x26D6335B0](v27, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    *(a2 + 16) = 7;
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_2691E0C04();
    (*(v9 + 104))(v12, *MEMORY[0x277D5BC00], v8);
    v28 = *MEMORY[0x277D5B8D0];
    v29 = sub_2691E0BB4();
    (*(*(v29 - 8) + 104))(v7, v28, v29);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v29);
    sub_2691E0BF4();
    sub_2691E0BA4();

    return __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v13, qword_2802FBA28);
    (*(v14 + 16))(v18, v31, v13);
    v32 = sub_2691E1384();
    v33 = sub_2691E1524();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2691B1000, v32, v33, "SCRestartShutdownFlow processDeviceUnlockResult | unlocked device, authenticated", v34, 2u);
      MEMORY[0x26D6335B0](v34, -1, -1);
    }

    result = (*(v14 + 8))(v18, v13);
    *(a2 + 16) = 2;
  }

  return result;
}

BOOL sub_2691DB014()
{
  v0 = sub_2691E0DE4();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  v8 = v7 - v6;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2691E0DD4();
  v9 = sub_2691E0C24();
  (*(v3 + 8))(v8, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return (v9 & 1) == 0;
}

uint64_t sub_2691DB10C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691DB1E0()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_2691DB280;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691DB280()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691DB398()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v7 = sub_2691E0D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = sub_2691E0F34();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0D14();
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_23_1();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v13();
}

uint64_t SCRestartShutdownFlow.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t SCRestartShutdownFlow.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2691DB5BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCRestartShutdownFlow.execute()();
}

uint64_t sub_2691DB658(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCRestartShutdownFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691DB690(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2691DB788;

  return v7(a1);
}

uint64_t sub_2691DB788()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_31();

  return v5();
}

uint64_t sub_2691DB86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2691E1604();
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

  return MEMORY[0x2822009F8](sub_2691DB96C, 0, 0);
}

uint64_t sub_2691DB96C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2691E1614();
  v7 = sub_2691DC1A8(&qword_2802F9BD0, 255, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_35();
  sub_2691E16E4();
  sub_2691DC1A8(&qword_2802F9BD8, 255, MEMORY[0x277D858F8]);
  sub_2691E1624();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2691DBB00;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2691DBB00()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  v3[15] = v0;

  v11 = OUTLINED_FUNCTION_23_1();
  v6(v11);
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = v3[10];
    v15 = v3[11];

    OUTLINED_FUNCTION_31();

    return v17();
  }
}

uint64_t sub_2691DBCA0()
{
  OUTLINED_FUNCTION_34();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_31();
  v4 = v0[15];

  return v3();
}

uint64_t sub_2691DBD08()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691B7DC0;

  return sub_2691D9060();
}

_BYTE *storeEnumTagSinglePayload for SCRestartShutdownFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x2691DBE88);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691DBEC4()
{
  result = qword_2802F9BB8;
  if (!qword_2802F9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9BB8);
  }

  return result;
}

unint64_t sub_2691DBF20()
{
  result = qword_2802F9BC8;
  if (!qword_2802F9BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9BC8);
  }

  return result;
}

uint64_t sub_2691DBF64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2691DBFAC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_7(v9);
  *v10 = v11;
  v10[1] = sub_2691B7DC0;

  return sub_2691D952C(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2691DC078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2691DC0D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2691DC110()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_2(v4);

  return v7(v6);
}

uint64_t sub_2691DC1A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_2691DC344(uint64_t a1, void *a2, const char *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2(v7);
  v31 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_14_3();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  __swift_project_value_buffer(v12, qword_2802FBA28);
  v18 = OUTLINED_FUNCTION_11_6(v15);
  v19(v18);
  v20 = a2;
  v21 = sub_2691E1384();
  v22 = sub_2691E1534();

  if (os_log_type_enabled(v21, v22))
  {
    v30 = v4;
    v23 = a3;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v20;
    v26 = v20;
    v27 = v23;
    v4 = v30;
    _os_log_impl(&dword_2691B1000, v21, v22, v27, v24, 0xCu);
    sub_2691DE2A4(v25, &qword_2802F9C80, &qword_2691E3DC8);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  (*(v15 + 8))(v3, v12);
  v28 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  sub_2691E14F4();
  return (*(v31 + 8))(v4, v7);
}

void sub_2691DC75C(uint64_t a1, void *a2, void *a3)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  OUTLINED_FUNCTION_2(v4);
  v65 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  v19 = sub_2691E1394();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v59 - v29;
  if (!a3)
  {
    v62 = v18;
    v63 = v13;
    v59 = v11;
    v60 = v10;
    v42 = v66;
    v61 = v4;
    if (qword_2802F9378 != -1)
    {
      v28 = OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_15_2(v28, qword_2802FBA28);
    v43 = v22;
    (*(v22 + 16))(v27);
    v44 = v42;
    v45 = v42;
    v46 = sub_2691E1384();
    v47 = sub_2691E1534();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v62;
    v50 = v63;
    if (v48)
    {
      v64 = v19;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      if (!v42)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v53 = v52;
      *(v51 + 4) = v45;
      *v52 = v44;
      v54 = v45;
      _os_log_impl(&dword_2691B1000, v46, v47, "SCAppIntentConnectionDelegate finished with result: %@", v51, 0xCu);
      sub_2691DE2A4(v53, &qword_2802F9C80, &qword_2691E3DC8);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
      v19 = v64;
    }

    (*(v43 + 8))(v27, v19);
    v55 = v65;
    v56 = v60;
    v57 = v61;
    (*(v65 + 16))(v60, v67 + OBJC_IVAR____TtC25SiriSystemCommandsIntents29SCAppIntentConnectionDelegate_continuation, v61);
    if (v44)
    {
      v69 = v44;
      v70 = 5;
      v58 = v45;
      sub_2691E14F4();
      (*(v55 + 8))(v56, v57);
      (*(v50 + 8))(v49, v59);
      v69 = 0;
      sub_2691E1504();
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v31 = MEMORY[0x26D633490](a3);
  if (qword_2802F9378 != -1)
  {
    v31 = OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_15_2(v31, qword_2802FBA28);
  v32 = v22;
  v33 = OUTLINED_FUNCTION_11_6(v22);
  v34(v33);
  MEMORY[0x26D633490](a3);
  v35 = sub_2691E1384();
  v36 = sub_2691E1534();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v68 = a3;
    v69 = v38;
    *v37 = 136315138;
    MEMORY[0x26D633490](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v39 = sub_2691E13E4();
    v64 = v19;
    v41 = sub_2691B98CC(v39, v40, &v69);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_2691B1000, v35, v36, "SCAppIntentConnectionDelegate finished with error: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v32 + 8))(v30, v64);
  }

  else
  {

    (*(v32 + 8))(v30, v19);
  }

  v69 = a3;
  MEMORY[0x26D633490](a3);
  sub_2691E1504();
}

uint64_t sub_2691DCD2C()
{
  OUTLINED_FUNCTION_34();
  v1 = sub_2691E1394();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691DCDE4, 0, 0);
}

uint64_t sub_2691DCDE4()
{
  OUTLINED_FUNCTION_61();
  if (qword_2802F9378 != -1)
  {
    v1 = OUTLINED_FUNCTION_0();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  OUTLINED_FUNCTION_15_2(v1, qword_2802FBA28);
  (*(v3 + 16))(v2);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCAppIntentConnectionDelegate executorEnvironmentForViewSnippet", v7, 2u);
    OUTLINED_FUNCTION_42();
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_2691DCFA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2691DD05C;

  return sub_2691DCD2C();
}

uint64_t sub_2691DD05C()
{
  OUTLINED_FUNCTION_61();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691DD1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2691E14E4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2691E3F80;
  v10[5] = v9;
  sub_2691DDC0C(0, 0, v7, &unk_2691E3F90, v10);
}

uint64_t sub_2691DD2BC()
{
  v1 = sub_2691E1394();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    v7 = OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_15_2(v7, qword_2802FBA28);
  v8 = OUTLINED_FUNCTION_11_6(v4);
  v9(v8);
  v10 = sub_2691E1384();
  v11 = sub_2691E1534();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2691B1000, v10, v11, "SCAppIntentConnectionDelegate shouldRunShowOutputAction return false", v12, 2u);
    OUTLINED_FUNCTION_42();
  }

  (*(v4 + 8))(v0, v1);
  return 0;
}

uint64_t sub_2691DD464(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_3();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  __swift_project_value_buffer(v11, qword_2802FBA28);
  v17 = OUTLINED_FUNCTION_11_6(v14);
  v18(v17);
  v19 = sub_2691E1384();
  v20 = sub_2691E1534();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2691B1000, v19, v20, "SCAppIntentConnectionDelegate needsContinueInAppWith request", v21, 2u);
    OUTLINED_FUNCTION_42();
  }

  (*(v14 + 8))(v2, v11);
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  sub_2691E14F4();
  return (*(v7 + 8))(v3, v5);
}

id sub_2691DD768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCAppIntentConnectionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SCAppIntentConnectionDelegate()
{
  result = qword_2802F9C50;
  if (!qword_2802F9C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691DD870()
{
  sub_2691DD90C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2691DD90C()
{
  if (!qword_2802F9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F97D0, qword_2691E2360);
    v0 = sub_2691E1514();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F9C60);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2691DD9A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2691DD9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2691DDA3C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2691B8324;

  return v7();
}

uint64_t sub_2691DDB24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2691B7DC0;

  return v8();
}

uint64_t sub_2691DDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2691DE234(a3, v25 - v11);
  v13 = sub_2691E14E4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2691DE2A4(v12, &qword_2802F9BC0, &qword_2691E3DB0);
  }

  else
  {
    sub_2691E14D4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_2691E14B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2691E13F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2691DE2A4(a3, &qword_2802F9BC0, &qword_2691E3DB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2691DE2A4(a3, &qword_2802F9BC0, &qword_2691E3DB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2691DDF00(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2691DDF74()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2691DDFBC()
{
  OUTLINED_FUNCTION_61();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2691B7DC0;

  return sub_2691DCFA4(v2, v3, v4);
}

uint64_t sub_2691DE06C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2691B8324;

  return sub_2691DDA3C(v2, v3, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2691DE170(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_7(v7);
  *v8 = v9;
  v8[1] = sub_2691B8324;

  return sub_2691DDB24(a1, v3, v4, v6);
}

uint64_t sub_2691DE234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691DE2A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2691DE2F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2691DE330()
{
  OUTLINED_FUNCTION_61();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_2(v4);

  return v7(v6);
}

uint64_t sub_2691DE3C4()
{
  OUTLINED_FUNCTION_61();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_2(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_2691E1394();
}

uint64_t SCStopScreenRecordingFlow.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SCStopScreenRecordingFlow.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t SCStopScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[34] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0CB4();
  v1[35] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[36] = v7;
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_44();
  v10 = sub_2691E1394();
  v1[38] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[39] = v11;
  v13 = *(v12 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2691DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26_1();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  sub_2691E0EF4();
  v31 = *(v28 + 48);
  __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));
  OUTLINED_FUNCTION_35();
  v32 = sub_2691E0C74();
  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 16));
  if (v32)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = *(v28 + 328);
    v34 = *(v28 + 312);
    __swift_project_value_buffer(*(v28 + 304), qword_2802FBA28);
    v35 = OUTLINED_FUNCTION_9_1();
    v36(v35);
    v37 = sub_2691E1384();
    v38 = sub_2691E1524();
    if (os_log_type_enabled(v37, v38))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v39, v40, "SCStopScreenRecordingFlow execute | cannot stop recording in Carplay");
      OUTLINED_FUNCTION_42();
    }

    v41 = *(v28 + 328);
    v42 = *(v28 + 304);
    v43 = *(v28 + 312);
    v45 = *(v28 + 256);
    v44 = *(v28 + 264);

    v46 = *(v43 + 8);
    v47 = OUTLINED_FUNCTION_35();
    v48(v47);
    *(v44 + 16) = 2;

    sub_2691E0E14();
    v49 = sub_2691E0A74();
    OUTLINED_FUNCTION_23_2(v49);
    *(v28 + 248) = OUTLINED_FUNCTION_22_2();
LABEL_13:
    sub_2691E0D34();

LABEL_14:
    OUTLINED_FUNCTION_10_3();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_23_0();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  sub_2691E0EF4();
  v50 = *(v28 + 88);
  __swift_project_boxed_opaque_existential_1((v28 + 56), *(v28 + 80));
  OUTLINED_FUNCTION_35();
  v51 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 56));
  if (v51)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = *(v28 + 336);
    v53 = *(v28 + 312);
    __swift_project_value_buffer(*(v28 + 304), qword_2802FBA28);
    v54 = OUTLINED_FUNCTION_9_1();
    v55(v54);
    v56 = sub_2691E1384();
    v57 = sub_2691E1524();
    if (os_log_type_enabled(v56, v57))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v58, v59, "SCStopScreenRecordingFlow execute | cannot stop recording on watchOS");
      OUTLINED_FUNCTION_42();
    }

    v60 = *(v28 + 336);
    v61 = *(v28 + 304);
    v62 = *(v28 + 312);
    v64 = *(v28 + 256);
    v63 = *(v28 + 264);

    v65 = *(v62 + 8);
    v66 = OUTLINED_FUNCTION_35();
    v67(v66);
    *(v63 + 16) = 2;

    sub_2691E0E14();
    v68 = sub_2691E0A74();
    OUTLINED_FUNCTION_23_2(v68);
    *(v28 + 240) = OUTLINED_FUNCTION_22_2();
    goto LABEL_13;
  }

  v78 = *(v28 + 264);
  if (*(v78 + 16))
  {
    v79 = *(v28 + 264);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
      v130 = *(v28 + 264);
    }

    v80 = *(v28 + 344);
    v81 = *(v28 + 304);
    v82 = *(v28 + 312);
    v83 = __swift_project_value_buffer(v81, qword_2802FBA28);
    (*(v82 + 16))(v80, v83, v81);

    v84 = sub_2691E1384();
    LOBYTE(v82) = sub_2691E1524();

    v85 = os_log_type_enabled(v84, v82);
    v86 = *(v28 + 344);
    v87 = *(v28 + 304);
    v88 = *(v28 + 312);
    if (v85)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      a13 = v90;
      *v89 = 136315138;
      *(v28 + 416) = *(v78 + 16);
      v91 = sub_2691E13E4();
      v93 = sub_2691B98CC(v91, v92, &a13);

      *(v89 + 4) = v93;
      OUTLINED_FUNCTION_11_3(&dword_2691B1000, v94, v95, "SCStopScreenRecordingFlow execute | flow completed with state: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
    }

    v96 = *(v88 + 8);
    v97 = OUTLINED_FUNCTION_35();
    v98(v97);
    v99 = *(v28 + 256);
    sub_2691E0D54();
    goto LABEL_14;
  }

  v100 = [objc_allocWithZone(MEMORY[0x277D47270]) init];
  *(v28 + 360) = v100;
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v101 = *(v28 + 352);
  v102 = *(v28 + 304);
  v103 = *(v28 + 312);
  v104 = __swift_project_value_buffer(v102, qword_2802FBA28);
  *(v28 + 368) = v104;
  v105 = *(v103 + 16);
  *(v28 + 376) = v105;
  *(v28 + 384) = (v103 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v105(v101, v104, v102);
  v106 = v100;
  v107 = sub_2691E1384();
  v108 = sub_2691E1524();

  v109 = os_log_type_enabled(v107, v108);
  v110 = *(v28 + 352);
  v112 = *(v28 + 304);
  v111 = *(v28 + 312);
  if (v109)
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    a13 = v114;
    *v113 = 136315138;
    v115 = v106;
    v116 = [v115 description];
    v131 = v112;
    v132 = v110;
    v117 = sub_2691E13D4();
    v119 = v118;

    v120 = sub_2691B98CC(v117, v119, &a13);

    *(v113 + 4) = v120;
    _os_log_impl(&dword_2691B1000, v107, v108, "SCStopScreenRecordingFlow execute | submitting command: %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v114);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v121 = *(v111 + 8);
    v121(v132, v131);
  }

  else
  {

    v121 = *(v111 + 8);
    v121(v110, v112);
  }

  *(v28 + 392) = v121;
  sub_2691E0C14();
  v122 = *(v28 + 128);
  __swift_project_boxed_opaque_existential_1((v28 + 96), *(v28 + 120));
  v123 = *(MEMORY[0x277D5BFB8] + 4);
  v124 = swift_task_alloc();
  *(v28 + 400) = v124;
  sub_2691D102C();
  *v124 = v28;
  v124[1] = sub_2691DED40;
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821BB6A0](v125, v126, v127, v128);
}

uint64_t sub_2691DED40()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 400);
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v10 + 408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691DEE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26_1();
  v21 = v20[36];
  v22 = v20[37];
  v23 = v20[34];
  v24 = v20[35];
  v39 = v20[33];
  v40 = v20[32];
  v41 = v20[45];
  __swift_destroy_boxed_opaque_existential_0Tm(v20 + 12);
  sub_2691E0B94();
  v25 = v20[26];
  __swift_project_boxed_opaque_existential_1(v20 + 22, v20[25]);
  sub_2691E0C04();
  (*(v21 + 104))(v22, *MEMORY[0x277D5BC10], v24);
  v26 = *MEMORY[0x277D5B950];
  v27 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27(v27);
  (*(v28 + 104))(v23, v26, v27);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm(v20 + 22);

  sub_2691E0E14();
  v29 = sub_2691E0A74();
  OUTLINED_FUNCTION_23_2(v29);
  v20[29] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2691DF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26_1();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 408);
  v33 = *(v28 + 376);
  v32 = *(v28 + 384);
  v34 = *(v28 + 368);
  v35 = *(v28 + 320);
  v36 = *(v28 + 304);

  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 96));
  v33(v35, v34, v36);
  MEMORY[0x26D633490](v31);
  v37 = sub_2691E1384();
  LOBYTE(v36) = sub_2691E1544();

  if (os_log_type_enabled(v37, v36))
  {
    v38 = *(v28 + 408);
    v77 = *(v28 + 392);
    v40 = *(v28 + 312);
    v39 = *(v28 + 320);
    v41 = *(v28 + 304);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    a13 = v43;
    *v42 = 136315138;
    *(v28 + 224) = v38;
    MEMORY[0x26D633490](v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v44 = sub_2691E13E4();
    v46 = sub_2691B98CC(v44, v45, &a13);

    *(v42 + 4) = v46;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v47, v48, "SCStopScreenRecordingFlow execute | unable to stop recording: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v49 = OUTLINED_FUNCTION_35();
    v77(v49);
  }

  else
  {
    v50 = *(v28 + 392);
    v52 = *(v28 + 312);
    v51 = *(v28 + 320);
    v53 = *(v28 + 304);

    v54 = OUTLINED_FUNCTION_35();
    v50(v54);
  }

  v55 = *(v28 + 408);
  v57 = *(v28 + 288);
  v56 = *(v28 + 296);
  v59 = *(v28 + 272);
  v58 = *(v28 + 280);
  v78 = *(v28 + 256);
  *(*(v28 + 264) + 16) = 2;
  sub_2691E0B94();
  v76 = *(v28 + 168);
  v75 = __swift_project_boxed_opaque_existential_1((v28 + 136), *(v28 + 160));
  sub_2691E0C04();
  (*(v57 + 104))(v56, *MEMORY[0x277D5BC00], v58);
  v60 = *MEMORY[0x277D5B8D0];
  v61 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27(v61);
  (*(v62 + 104))(v59, v60, v61);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v61);
  *(swift_allocObject() + 16) = v55;
  MEMORY[0x26D633490](v55);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 136));

  sub_2691E0E14();
  v63 = sub_2691E0A74();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *(v28 + 216) = OUTLINED_FUNCTION_22_2();
  sub_2691E0D34();

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_0();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, v75, v76, v78, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2691DF41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691DF6D8();
}

uint64_t sub_2691DF4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691DF6D8();
}

uint64_t sub_2691DF54C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691DFF00();
}

uint64_t sub_2691DF5E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691DFABC();
}

uint64_t SCStopScreenRecordingFlow.execute(completion:)()
{
  type metadata accessor for SCStopScreenRecordingFlow();
  sub_2691E06C0();
  return sub_2691E0B34();
}

uint64_t sub_2691DF6D8()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691DF7A8()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_2691DF848;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691DF848()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691DF95C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v7 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v7);
  *&v8 = OUTLINED_FUNCTION_17_1();
  *(v0 + 136) = v8;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v10;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D14();
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v11();
}

uint64_t sub_2691DFABC()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  v0[27] = OUTLINED_FUNCTION_44();
  v12 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2691DFBAC()
{
  v1 = v0[27];
  type metadata accessor for ScreenRecordingCATs();
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08((v0 + 2), &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  v0[28] = sub_2691E12C4();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2691DFCC0;
  v3 = v0[26];

  return sub_2691D8038();
}

uint64_t sub_2691DFCC0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691DFDBC()
{
  OUTLINED_FUNCTION_19_2();
  sub_2691E0EF4();
  OUTLINED_FUNCTION_24_2();
  v6 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v6);
  *&v7 = OUTLINED_FUNCTION_17_1();
  *(v2 + 136) = v7;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D14();

  sub_2691CAE08(v2 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v0, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  (*(v3 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691DFF00()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  v0[27] = OUTLINED_FUNCTION_44();
  v12 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2691DFFF0()
{
  v1 = v0[27];
  type metadata accessor for ScreenRecordingCATs();
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08((v0 + 2), &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  v0[28] = sub_2691E12C4();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2691E0104;
  v3 = v0[26];

  return sub_2691D81D8();
}

uint64_t sub_2691E0104()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691E0200()
{
  OUTLINED_FUNCTION_19_2();
  sub_2691E0EF4();
  OUTLINED_FUNCTION_24_2();
  v6 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v6);
  *&v7 = OUTLINED_FUNCTION_17_1();
  *(v2 + 136) = v7;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D04();

  sub_2691CAE08(v2 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v0, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  (*(v3 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691E0380()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCStopScreenRecordingFlow.execute()();
}

uint64_t sub_2691E041C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCStopScreenRecordingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691E0454()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691E048C()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF5E4();
}

uint64_t sub_2691E0510()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF54C();
}

uint64_t sub_2691E0594()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF4B4();
}

uint64_t sub_2691E0618()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF41C();
}

unint64_t sub_2691E06C0()
{
  result = qword_2802F9988;
  if (!qword_2802F9988)
  {
    type metadata accessor for SCStopScreenRecordingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCStopScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691E07E0);
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

unint64_t sub_2691E081C()
{
  result = qword_2802F9C88;
  if (!qword_2802F9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9C88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];
}

double OUTLINED_FUNCTION_17_1()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v2 = v0[28];
  v9 = v0[27];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];

  return sub_2691E0EF4();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_2691E0A64();
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);

  return sub_2691E0C34();
}