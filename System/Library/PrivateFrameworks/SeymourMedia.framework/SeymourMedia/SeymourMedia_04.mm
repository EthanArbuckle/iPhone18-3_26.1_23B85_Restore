uint64_t sub_20C4CD59C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v188 = a1;
  v189 = a2;
  v185 = a1 & 0xFFFFFFFFFFLL;
  v186 = sub_20C59ECFC();
  v184 = *(v186 - 8);
  v4 = MEMORY[0x28223BE20](v186);
  v182 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v178 = &v175 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v177 = &v175 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v180 = &v175 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v175 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v175 - v15;
  v190 = sub_20C5A01CC();
  v187 = *(v190 - 8);
  v17 = MEMORY[0x28223BE20](v190);
  v183 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v179 = &v175 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v181 = &v175 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v175 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v175 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v175 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v175 - v36;
  MEMORY[0x28223BE20](v35);
  v42 = &v175 - v41;
  v43 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause;
  v44 = *(v3 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause);
  if ((v44 - 2) >= 3)
  {
    if (v44 != 5)
    {
      v69 = v16;
      v70 = sub_20C59ECDC();
      if ((v44 & 1) == 0)
      {
        LODWORD(v191) = v70;
        BYTE4(v191) = BYTE4(v70) & 1;
        LOBYTE(v192) = 1;
        sub_20C4A24A0();
        sub_20C4A24F4();
        if (sub_20C59DA7C())
        {
          sub_20C59FE3C();
          v124 = sub_20C5A01BC();
          v125 = sub_20C5A088C();
          v126 = os_log_type_enabled(v124, v125);
          v127 = v187;
          v128 = v190;
          if (v126)
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&dword_20C472000, v124, v125, "Playback transitioning to paused for close player is valid.", v129, 2u);
            MEMORY[0x20F2FFF90](v129, -1, -1);
          }

          (*(v127 + 8))(v34, v128);
          return 1;
        }

        sub_20C59FE3C();
        v160 = v184;
        v161 = v14;
        v162 = v186;
        (*(v184 + 16))(v14, v189, v186);
        v163 = sub_20C5A01BC();
        v164 = sub_20C5A088C();
        v165 = os_log_type_enabled(v163, v164);
        v166 = v187;
        v167 = v190;
        if (v165)
        {
          v168 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v191 = v189;
          *v168 = 136315138;
          v169 = sub_20C59ECDC();
          v192 = v169;
          v193 = BYTE4(v169) & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
          sub_20C4E17AC();
          v170 = sub_20C59DA9C();
          v172 = v171;
          (*(v160 + 8))(v161, v162);
          v173 = sub_20C479640(v170, v172, &v191);

          *(v168 + 4) = v173;
          _os_log_impl(&dword_20C472000, v163, v164, "Playback transitioning to %s when expecting paused for close player is not valid.", v168, 0xCu);
          v174 = v189;
          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          MEMORY[0x20F2FFF90](v174, -1, -1);
          MEMORY[0x20F2FFF90](v168, -1, -1);

          (*(v166 + 8))(v31, v190);
        }

        else
        {

          (*(v160 + 8))(v161, v162);
          (*(v166 + 8))(v31, v167);
        }

        return 0;
      }

      LODWORD(v191) = v70;
      BYTE4(v191) = BYTE4(v70) & 1;
      LOBYTE(v192) = 0;
      sub_20C4A24A0();
      sub_20C4A24F4();
      if (sub_20C59DA7C())
      {
        sub_20C59FE3C();
        v71 = sub_20C5A01BC();
        v72 = sub_20C5A088C();
        v73 = os_log_type_enabled(v71, v72);
        v74 = v187;
        v75 = v190;
        if (v73)
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_20C472000, v71, v72, "Playback transitioning from paused for close player to playing is valid.", v76, 2u);
          MEMORY[0x20F2FFF90](v76, -1, -1);
        }

        (*(v74 + 8))(v42, v75);
        return 1;
      }

      sub_20C59FE3C();
      v145 = v184;
      v146 = v16;
      v147 = v186;
      (*(v184 + 16))(v16, v189, v186);
      v148 = sub_20C5A01BC();
      v149 = sub_20C5A088C();
      v150 = os_log_type_enabled(v148, v149);
      v151 = v187;
      v152 = v190;
      if (!v150)
      {

        (*(v145 + 8))(v69, v147);
        (*(v151 + 8))(v37, v152);
        return 0;
      }

      v153 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v191 = v189;
      *v153 = 136315138;
      v154 = sub_20C59ECDC();
      v192 = v154;
      v193 = BYTE4(v154) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
      sub_20C4E17AC();
      v155 = sub_20C59DA9C();
      v157 = v156;
      (*(v145 + 8))(v146, v147);
      v158 = sub_20C479640(v155, v157, &v191);

      *(v153 + 4) = v158;
      _os_log_impl(&dword_20C472000, v148, v149, "Playback transitioning from paused for close player to %s is not valid.", v153, 0xCu);
      v159 = v189;
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      MEMORY[0x20F2FFF90](v159, -1, -1);
      MEMORY[0x20F2FFF90](v153, -1, -1);

      v121 = *(v151 + 8);
      v122 = v37;
LABEL_36:
      v121(v122, v190);
      return 0;
    }

    v175 = v38;
    v176 = v39;
    v55 = v184;
    v56 = v186;
    v53 = v187;
    v58 = v188;
    v57 = v189;
    if (HIDWORD(v185) <= 0xFE)
    {
      v59 = HIDWORD(v185) & 1;
      goto LABEL_22;
    }

LABEL_12:
    v64 = sub_20C59ECDC();
    LODWORD(v191) = v64;
    BYTE4(v191) = BYTE4(v64) & 1;
    v192 = 0;
    v193 = 1;
    sub_20C4A24A0();
    sub_20C4A24F4();
    if (sub_20C59DA6C())
    {
      v65 = v181;
      sub_20C59FE3C();
      v66 = sub_20C5A01BC();
      v67 = sub_20C5A088C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_20C472000, v66, v67, "Playback transitioning from never started to playing is a valid transition", v68, 2u);
        MEMORY[0x20F2FFF90](v68, -1, -1);
      }

      (*(v53 + 8))(v65, v190);
      return 1;
    }

LABEL_33:
    v106 = v183;
    sub_20C59FE3C();
    v107 = v182;
    (*(v55 + 16))(v182, v57, v56);
    v108 = sub_20C5A01BC();
    v109 = sub_20C5A088C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = v107;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v191 = v112;
      *v111 = 136446466;
      v193 = BYTE4(v185);
      v192 = v185;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA0);
      v113 = sub_20C5A0A3C();
      v115 = sub_20C479640(v113, v114, &v191);

      *(v111 + 4) = v115;
      *(v111 + 12) = 2082;
      v116 = sub_20C59ECDC();
      v192 = v116;
      v193 = BYTE4(v116) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
      sub_20C4E17AC();
      v117 = sub_20C59DA9C();
      v119 = v118;
      (*(v55 + 8))(v110, v56);
      v120 = sub_20C479640(v117, v119, &v191);

      *(v111 + 14) = v120;
      _os_log_impl(&dword_20C472000, v108, v109, "Playback update from %{public}s to %{public}s is not a valid transition", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v112, -1, -1);
      MEMORY[0x20F2FFF90](v111, -1, -1);

      v121 = *(v53 + 8);
      v122 = v183;
    }

    else
    {

      (*(v55 + 8))(v107, v56);
      v121 = *(v53 + 8);
      v122 = v106;
    }

    goto LABEL_36;
  }

  v45 = v40;
  v175 = v38;
  v176 = v39;
  sub_20C59FE3C();

  v46 = sub_20C5A01BC();
  v47 = sub_20C5A088C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v191 = v49;
    *v48 = 136315138;
    v50 = sub_20C4C8EE8(*(v3 + v43));
    v52 = sub_20C479640(v50, v51, &v191);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_20C472000, v46, v47, "Expecting pause for reason: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x20F2FFF90](v49, -1, -1);
    MEMORY[0x20F2FFF90](v48, -1, -1);
  }

  v53 = v187;
  v54 = *(v187 + 8);
  v54(v28, v190);
  v55 = v184;
  v56 = v186;
  v58 = v188;
  v57 = v189;
  if (HIDWORD(v185) > 0xFE)
  {
    goto LABEL_12;
  }

  LODWORD(v191) = v188;
  v59 = HIDWORD(v185) & 1;
  BYTE4(v191) = BYTE4(v185) & 1;
  LOBYTE(v192) = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA7C())
  {
    v60 = sub_20C59ECDC();
    LODWORD(v191) = v60;
    BYTE4(v191) = BYTE4(v60) & 1;
    LOBYTE(v192) = 1;
    if (sub_20C59DA7C())
    {
      sub_20C59FE3C();
      v61 = sub_20C5A01BC();
      v62 = sub_20C5A088C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_20C472000, v61, v62, "Playback transitioning from playing to pause is valid", v63, 2u);
        MEMORY[0x20F2FFF90](v63, -1, -1);
      }

      v54(v45, v190);
      return 1;
    }
  }

LABEL_22:
  LODWORD(v191) = v58;
  BYTE4(v191) = v59;
  v192 = 0;
  v193 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA6C())
  {
    v77 = sub_20C59ECDC();
    LODWORD(v191) = v77;
    BYTE4(v191) = BYTE4(v77) & 1;
    v192 = 0;
    v193 = 1;
    if ((sub_20C59DA6C() & 1) == 0)
    {
      v130 = v179;
      sub_20C59FE3C();
      v131 = v180;
      (*(v55 + 16))(v180, v57, v56);
      v132 = sub_20C5A01BC();
      v133 = sub_20C5A088C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v191 = v189;
        *v134 = 136446466;
        v192 = v58;
        v193 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
        sub_20C4E17AC();
        v135 = sub_20C59DA9C();
        v137 = sub_20C479640(v135, v136, &v191);

        *(v134 + 4) = v137;
        *(v134 + 12) = 2082;
        v138 = v180;
        v139 = sub_20C59ECDC();
        v192 = v139;
        v193 = BYTE4(v139) & 1;
        v140 = sub_20C59DA9C();
        v142 = v141;
        (*(v55 + 8))(v138, v186);
        v143 = sub_20C479640(v140, v142, &v191);

        *(v134 + 14) = v143;
        _os_log_impl(&dword_20C472000, v132, v133, "Playback transitioning from %{public}s to %{public}s is a valid transition", v134, 0x16u);
        v144 = v189;
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v144, -1, -1);
        MEMORY[0x20F2FFF90](v134, -1, -1);
      }

      else
      {

        (*(v55 + 8))(v131, v56);
      }

      (*(v53 + 8))(v130, v190);
      return 1;
    }
  }

  LODWORD(v191) = v58;
  BYTE4(v191) = v59;
  v192 = 0;
  v193 = 1;
  if ((sub_20C59DA6C() & 1) != 0 || (v78 = sub_20C59ECDC(), LODWORD(v191) = v78, BYTE4(v191) = BYTE4(v78) & 1, v192 = 0, v193 = 1, (sub_20C59DA6C() & 1) == 0))
  {
    v188 = v58;
    LODWORD(v191) = v58;
    BYTE4(v191) = v59;
    v192 = 3;
    v193 = 1;
    if ((sub_20C59DA6C() & 1) == 0)
    {
      v93 = sub_20C59ECDC();
      LODWORD(v191) = v93;
      BYTE4(v191) = BYTE4(v93) & 1;
      v192 = 3;
      v193 = 1;
      if (sub_20C59DA6C())
      {
        v79 = v175;
        sub_20C59FE3C();
        v94 = v178;
        (*(v55 + 16))(v178, v57, v56);
        v81 = sub_20C5A01BC();
        v95 = sub_20C5A088C();
        if (!os_log_type_enabled(v81, v95))
        {

          (*(v55 + 8))(v94, v56);
          goto LABEL_55;
        }

        v83 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v191 = v189;
        *v83 = 136446466;
        v192 = v188;
        v193 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
        sub_20C4E17AC();
        v96 = sub_20C59DA9C();
        v98 = sub_20C479640(v96, v97, &v191);

        *(v83 + 4) = v98;
        *(v83 + 12) = 2082;
        v99 = v178;
        v100 = sub_20C59ECDC();
        v192 = v100;
        v193 = BYTE4(v100) & 1;
        v101 = sub_20C59DA9C();
        v103 = v102;
        (*(v55 + 8))(v99, v186);
        v104 = sub_20C479640(v101, v103, &v191);

        *(v83 + 14) = v104;
        v92 = v95;
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v79 = v176;
  sub_20C59FE3C();
  v80 = v177;
  (*(v55 + 16))(v177, v57, v56);
  v81 = sub_20C5A01BC();
  v82 = sub_20C5A088C();
  if (!os_log_type_enabled(v81, v82))
  {

    (*(v55 + 8))(v80, v56);
    goto LABEL_55;
  }

  v83 = swift_slowAlloc();
  v189 = swift_slowAlloc();
  v191 = v189;
  *v83 = 136446466;
  v192 = v58;
  v193 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8);
  sub_20C4E17AC();
  LODWORD(v188) = v82;
  v84 = sub_20C59DA9C();
  v86 = sub_20C479640(v84, v85, &v191);

  *(v83 + 4) = v86;
  *(v83 + 12) = 2082;
  v87 = sub_20C59ECDC();
  v192 = v87;
  v193 = BYTE4(v87) & 1;
  v88 = sub_20C59DA9C();
  v90 = v89;
  (*(v55 + 8))(v80, v186);
  v91 = sub_20C479640(v88, v90, &v191);

  *(v83 + 14) = v91;
  v92 = v188;
LABEL_32:
  _os_log_impl(&dword_20C472000, v81, v92, "Playback transitioning from %{public}s to %{public}s is a valid transition", v83, 0x16u);
  v105 = v189;
  swift_arrayDestroy();
  MEMORY[0x20F2FFF90](v105, -1, -1);
  MEMORY[0x20F2FFF90](v83, -1, -1);

LABEL_55:
  (*(v53 + 8))(v79, v190);
  return 1;
}

uint64_t sub_20C4CE9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_20C59E78C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F90);
  v7 = MEMORY[0x28223BE20](v6);
  v58 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v50[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v50[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v50[-v22];
  v52 = a1;
  sub_20C49C928(&v50[-v22]);
  v24 = *MEMORY[0x277D52BB0];
  v62 = v4[13];
  v63 = v4 + 13;
  v62(v21, v24, v3);
  v25 = v4[7];
  v60 = v4 + 7;
  v64 = v25;
  v25(v21, 0, 1, v3);
  v56 = v6;
  v26 = *(v6 + 48);
  v65 = v23;
  sub_20C4775E4(v23, v10, &qword_27C7C4F58);
  sub_20C4775E4(v21, &v10[v26], &qword_27C7C4F58);
  v57 = v4;
  v27 = v4[6];
  if (v27(v10, 1, v3) != 1)
  {
    sub_20C4775E4(v10, v18, &qword_27C7C4F58);
    if (v27(&v10[v26], 1, v3) != 1)
    {
      v32 = v57;
      v33 = v54;
      (v57[4])(v54, &v10[v26], v3);
      sub_20C4E2084(&qword_27C7C4F98, MEMORY[0x277D52BC0]);
      v51 = sub_20C5A033C();
      v34 = v32[1];
      v34(v33, v3);
      sub_20C477B50(v21, &qword_27C7C4F58);
      v34(v18, v3);
      sub_20C477B50(v10, &qword_27C7C4F58);
      v31 = v59;
      v29 = v64;
      v30 = v58;
      if ((v51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_20C477B50(v21, &qword_27C7C4F58);
    (v57[1])(v18, v3);
    v29 = v64;
    v30 = v58;
    v31 = v59;
LABEL_6:
    sub_20C477B50(v10, &qword_27C7C4F90);
    goto LABEL_10;
  }

  sub_20C477B50(v21, &qword_27C7C4F58);
  v28 = v27(&v10[v26], 1, v3);
  v29 = v64;
  v30 = v58;
  v31 = v59;
  if (v28 != 1)
  {
    goto LABEL_6;
  }

  sub_20C477B50(v10, &qword_27C7C4F58);
LABEL_8:
  sub_20C59DE1C();
  v36 = v35;
  sub_20C59EC7C();
  if (v36 - v37 > 0.5)
  {
    v38 = v65;
    sub_20C477B50(v65, &qword_27C7C4F58);
    v62(v38, *MEMORY[0x277D52B80], v3);
    v29(v38, 0, 1, v3);
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58);
  }

LABEL_10:
  v62(v31, *MEMORY[0x277D52BA0], v3);
  v29(v31, 0, 1, v3);
  v39 = *(v56 + 48);
  sub_20C4775E4(v65, v30, &qword_27C7C4F58);
  sub_20C4775E4(v31, v30 + v39, &qword_27C7C4F58);
  if (v27(v30, 1, v3) == 1)
  {
    sub_20C477B50(v31, &qword_27C7C4F58);
    if (v27((v30 + v39), 1, v3) == 1)
    {
      sub_20C477B50(v30, &qword_27C7C4F58);
      goto LABEL_18;
    }

LABEL_15:
    sub_20C477B50(v30, &qword_27C7C4F90);
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58);
  }

  v40 = v53;
  sub_20C4775E4(v30, v53, &qword_27C7C4F58);
  if (v27((v30 + v39), 1, v3) == 1)
  {
    sub_20C477B50(v31, &qword_27C7C4F58);
    (v57[1])(v40, v3);
    goto LABEL_15;
  }

  v42 = v57;
  v43 = v30 + v39;
  v44 = v54;
  (v57[4])(v54, v43, v3);
  sub_20C4E2084(&qword_27C7C4F98, MEMORY[0x277D52BC0]);
  v45 = sub_20C5A033C();
  v46 = v42[1];
  v46(v44, v3);
  sub_20C477B50(v31, &qword_27C7C4F58);
  v46(v40, v3);
  sub_20C477B50(v30, &qword_27C7C4F58);
  if ((v45 & 1) == 0)
  {
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58);
  }

LABEL_18:
  v47 = *(v55 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause);
  if (v47 > 3)
  {
    if (v47 == 4)
    {
      sub_20C477B50(v65, &qword_27C7C4F58);
      v48 = MEMORY[0x277D52B88];
      goto LABEL_27;
    }

    if (v47 == 5)
    {
      return sub_20C4E1800(v65, v61, &qword_27C7C4F58);
    }

LABEL_24:
    sub_20C477B50(v65, &qword_27C7C4F58);
    v48 = MEMORY[0x277D52B80];
    goto LABEL_27;
  }

  if (v47 == 2)
  {
    sub_20C477B50(v65, &qword_27C7C4F58);
    v48 = MEMORY[0x277D52B70];
    goto LABEL_27;
  }

  if (v47 != 3)
  {
    goto LABEL_24;
  }

  sub_20C477B50(v65, &qword_27C7C4F58);
  v48 = MEMORY[0x277D52B98];
LABEL_27:
  v49 = v61;
  v62(v61, *v48, v3);
  return (v64)(v49, 0, 1, v3);
}

uint64_t sub_20C4CF2D0()
{
  v1 = v0;
  v390 = sub_20C59D46C();
  v341 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v389 = &v331 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70);
  MEMORY[0x28223BE20](v3 - 8);
  v388 = &v331 - v4;
  v5 = sub_20C59D7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v436 = &v331 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v402);
  v401 = &v331 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C59E13C();
  MEMORY[0x28223BE20](v9 - 8);
  v400 = &v331 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v11 - 8);
  v399 = &v331 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v13 - 8);
  v398 = &v331 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v15 - 8);
  v397 = &v331 - v16;
  v396 = sub_20C59E18C();
  v407 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v395 = &v331 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_20C59E0BC();
  v406 = *(v394 - 8);
  v18 = MEMORY[0x28223BE20](v394);
  v431 = &v331 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v418 = &v331 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v430 = &v331 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v417 = &v331 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v387 = &v331 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v386 = &v331 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v385 = &v331 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v375 = (&v331 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v377 = &v331 - v35;
  MEMORY[0x28223BE20](v34);
  v371 = (&v331 - v36);
  v393 = sub_20C59E7FC();
  v405 = *(v393 - 8);
  v37 = MEMORY[0x28223BE20](v393);
  v429 = &v331 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v428 = &v331 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v416 = &v331 - v42;
  MEMORY[0x28223BE20](v41);
  v415 = &v331 - v43;
  v392 = sub_20C59E95C();
  v404 = *(v392 - 8);
  v44 = MEMORY[0x28223BE20](v392);
  v427 = &v331 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v414 = (&v331 - v46);
  v413 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  v47 = MEMORY[0x28223BE20](v413);
  v376 = &v331 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v374 = &v331 - v50;
  MEMORY[0x28223BE20](v49);
  v373 = &v331 - v51;
  v364 = sub_20C59D63C();
  v363 = *(v364 - 8);
  v52 = MEMORY[0x28223BE20](v364);
  v362 = &v331 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v361 = &v331 - v55;
  MEMORY[0x28223BE20](v54);
  v368 = &v331 - v56;
  v433 = sub_20C59DEBC();
  v403 = *(v433 - 8);
  v57 = MEMORY[0x28223BE20](v433);
  v384 = &v331 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v391 = &v331 - v60;
  MEMORY[0x28223BE20](v59);
  v345 = &v331 - v61;
  v410 = sub_20C59E80C();
  v337 = *(v410 - 8);
  v62 = MEMORY[0x28223BE20](v410);
  v383 = &v331 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v366 = &v331 - v65;
  MEMORY[0x28223BE20](v64);
  v409 = &v331 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  v68 = MEMORY[0x28223BE20](v67 - 8);
  v382 = &v331 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v365 = (&v331 - v71);
  MEMORY[0x28223BE20](v70);
  v411 = &v331 - v72;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  v358 = *(v422 - 8);
  v73 = MEMORY[0x28223BE20](v422);
  v435 = &v331 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v423 = &v331 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E20);
  MEMORY[0x28223BE20](v76 - 8);
  v357 = &v331 - v77;
  v421 = sub_20C59E1EC();
  v420 = *(v421 - 8);
  MEMORY[0x28223BE20](v421);
  v369 = &v331 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v79 - 8);
  v419 = &v331 - v80;
  v434 = sub_20C5A01CC();
  v432 = *(v434 - 8);
  v81 = MEMORY[0x28223BE20](v434);
  v83 = &v331 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v81);
  v426 = &v331 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v425 = &v331 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v367 = &v331 - v89;
  MEMORY[0x28223BE20](v88);
  v91 = &v331 - v90;
  v344 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v338 = *(v344 - 8);
  v92 = MEMORY[0x28223BE20](v344);
  v360 = &v331 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v412 = (&v331 - v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  v96 = MEMORY[0x28223BE20](v95 - 8);
  v335 = &v331 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x28223BE20](v96);
  v370 = &v331 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v372 = &v331 - v101;
  MEMORY[0x28223BE20](v100);
  v103 = &v331 - v102;
  v104 = sub_20C59ECFC();
  v105 = *(v104 - 8);
  v106 = MEMORY[0x28223BE20](v104);
  v380 = &v331 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x28223BE20](v106);
  v356 = &v331 - v109;
  MEMORY[0x28223BE20](v108);
  v110 = *(v105 + 16);
  v424 = &v331 - v111;
  v378 = v110;
  v110();
  if (v0[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform] == 3 && (sub_20C4C9020() & 1) != 0)
  {
    sub_20C59FE3C();
    v112 = sub_20C5A01BC();
    v113 = sub_20C5A088C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_20C472000, v112, v113, "MetricPlaybackTracker Disabled", v114, 2u);
      MEMORY[0x20F2FFF90](v114, -1, -1);
    }

    (*(v432 + 8))(v83, v434);
    return (*(v105 + 8))(v424, v104);
  }

  v339 = v104;
  v340 = v105;
  v116 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v336 = v116;
  sub_20C4775E4(&v1[v116], v103, &qword_27C7C4E00);
  v117 = v338 + 48;
  v359 = *(v338 + 48);
  if (v359(v103, 1, v344))
  {
    sub_20C477B50(v103, &qword_27C7C4E00);
    v118 = 0xFF00000000;
  }

  else
  {
    v119 = v412;
    sub_20C4E1744(v103, v412, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    sub_20C477B50(v103, &qword_27C7C4E00);
    v120 = *v119;
    v121 = *(v119 + 4);
    sub_20C4E16E4(v119, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    v122 = 0x100000000;
    if (!v121)
    {
      v122 = 0;
    }

    v118 = v122 | v120;
  }

  v123 = v424;
  if ((sub_20C4CD59C(v118, v424) & 1) == 0)
  {
    v140 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition];
    if (v140)
    {

      v140(v141);
      sub_20C490918(v140);
    }

    return (*(v340 + 8))(v123, v339);
  }

  v379 = v5;
  sub_20C59FE3C();
  v124 = sub_20C5A01BC();
  v125 = sub_20C5A08AC();
  v126 = os_log_type_enabled(v124, v125);
  v408 = v6;
  if (v126)
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v444 = v128;
    *v127 = 136446210;
    swift_beginAccess();
    sub_20C4E2084(&qword_27C7C5A90, MEMORY[0x277D53C58]);
    v129 = sub_20C5A0E6C();
    v131 = sub_20C479640(v129, v130, &v444);

    *(v127 + 4) = v131;
    _os_log_impl(&dword_20C472000, v124, v125, "Received playback updated with Playback: %{public}s", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    MEMORY[0x20F2FFF90](v128, -1, -1);
    MEMORY[0x20F2FFF90](v127, -1, -1);
  }

  v132 = *(v432 + 8);
  v132(v91, v434);
  v133 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
  swift_beginAccess();
  v134 = &v1[v133];
  v135 = v419;
  sub_20C4775E4(v134, v419, &qword_27C7C4DA8);
  v136 = v420;
  v137 = v421;
  v138 = v420[6](v135, 1, v421);
  v381 = v132;
  v355 = v117;
  if (v138)
  {
    sub_20C477B50(v135, &qword_27C7C4DA8);
    v139 = v424;
  }

  else
  {
    v142 = v369;
    v136[2](v369, v135, v137);
    sub_20C477B50(v135, &qword_27C7C4DA8);
    v143 = sub_20C59E1BC();
    (v136[1])(v142, v137);
    v139 = v424;
    v144 = v422;
    if ((v143 & 1) == 0)
    {
      swift_beginAccess();
      sub_20C59EC7C();
      if (v145 == 0.0 && (v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedStartTime + 8] & 1) == 0)
      {
        v146 = v357;
        (*(v358 + 56))(v357, 1, 1, v144);
        v147 = v356;
        sub_20C59ECEC();
        sub_20C477B50(v146, &qword_27C7C4E20);
        swift_beginAccess();
        (*(v340 + 40))(v139, v147, v339);
      }
    }
  }

  swift_beginAccess();
  v148 = v423;
  sub_20C59ECAC();
  v149 = *MEMORY[0x277D53C08];
  v150 = sub_20C59EC9C();
  v151 = v435;
  (*(*(v150 - 8) + 104))(v435, v149, v150);
  swift_storeEnumTagMultiPayload();
  v152 = MEMORY[0x277D53C20];
  sub_20C4E2084(&qword_27C7C4F88, MEMORY[0x277D53C20]);
  sub_20C4E2084(&qword_27C7C4F50, v152);
  v153 = sub_20C59DA6C();
  sub_20C477B50(v151, &qword_27C7C4F00);
  sub_20C477B50(v148, &qword_27C7C4F00);
  v123 = v139;
  v154 = sub_20C59ECDC();
  v442 = v154;
  v443 = BYTE4(v154) & 1;
  v440 = 1;
  v441 = 1;
  v155 = sub_20C4A24A0();
  v156 = sub_20C4A24F4();
  v423 = v155;
  v422 = v156;
  v157 = sub_20C59DA6C();
  if (v153 & 1) != 0 && (v157 & 1) != 0 && (v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_isPictureInPictureStopping])
  {
    return (*(v340 + 8))(v123, v339);
  }

  v158 = v380;
  v159 = v339;
  v378(v380, v139, v339);
  v160 = sub_20C59ECDC();
  v442 = v160;
  v443 = BYTE4(v160) & 1;
  LOBYTE(v440) = 0;
  v161 = sub_20C59DA7C();
  v162 = *(v340 + 8);
  v340 += 8;
  v162(v158, v159);
  if (v161)
  {
    v163 = 1;
  }

  else
  {
    v163 = 2;
  }

  sub_20C4CE9EC(v139, v411);
  v164 = sub_20C59ECDC();
  v442 = v164;
  v443 = BYTE4(v164) & 1;
  LOBYTE(v440) = 0;
  v165 = sub_20C59DA7C();
  if (v165)
  {
    v166 = v372;
    sub_20C4775E4(&v1[v336], v372, &qword_27C7C4E00);
    v167 = v359(v166, 1, v344);
    v332 = v162;
    LODWORD(v358) = v163;
    if (v167)
    {
      sub_20C477B50(v166, &qword_27C7C4E00);
      (*(v337 + 104))(v409, *MEMORY[0x277D52E40], v410);
    }

    else
    {
      v176 = v412;
      sub_20C4E1744(v166, v412, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
      sub_20C477B50(v166, &qword_27C7C4E00);
      v177 = *v176;
      v178 = *(v176 + 4);
      sub_20C4E16E4(v176, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
      if (v178 == 1)
      {
        if (v177 > 1u)
        {
          if (v177 == 2)
          {
            v179 = MEMORY[0x277D52E60];
          }

          else
          {
            v179 = MEMORY[0x277D52E38];
          }
        }

        else if (v177)
        {
          v179 = MEMORY[0x277D52E58];
        }

        else
        {
          v179 = MEMORY[0x277D52E40];
        }
      }

      else
      {
        v179 = MEMORY[0x277D52E50];
      }

      (*(v337 + 104))(v409, *v179, v410);
    }

    v356 = 0;
    v359 = 0;
  }

  else
  {
    v168 = v370;
    sub_20C4775E4(&v1[v336], v370, &qword_27C7C4E00);
    v169 = v344;
    if (v359(v168, 1, v344) == 1)
    {
      sub_20C477B50(v168, &qword_27C7C4E00);
      v170 = v367;
      sub_20C59FE3C();
      v171 = sub_20C5A01BC();
      v172 = sub_20C5A089C();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&dword_20C472000, v171, v172, "Fail to detect invalid Playback updated from never started to not playing", v173, 2u);
        MEMORY[0x20F2FFF90](v173, -1, -1);
      }

      v381(v170, v434);
      sub_20C477B50(v411, &qword_27C7C4F58);
      return (v162)(v139, v339);
    }

    LODWORD(v358) = v163;
    v332 = v162;
    v174 = v168;
    v175 = v360;
    sub_20C4E1680(v174, v360);
    v359 = *(v175 + 1);
    (*(v337 + 16))(v409, &v175[*(v169 + 24)], v410);
    v356 = *&v175[*(v169 + 28)];
    sub_20C4E16E4(v175, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
  }

  v180 = v373;
  sub_20C59EC7C();
  sub_20C59EC7C();
  v181 = sub_20C4C96BC();
  v182 = sub_20C4C98D8();
  v183 = v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType];
  v184 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v185 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8];
  v186 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
  swift_beginAccess();
  v348 = v186;
  sub_20C4E1744(&v1[v186], v180, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v357) = v165;
  v360 = v181;
  v355 = v182;
  LODWORD(v354) = v183;
  v353 = v184;
  v352 = v185;
  if (EnumCaseMultiPayload)
  {

    sub_20C4E16E4(v180, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v351 = 0;
    v350 = 0;
  }

  else
  {
    v188 = v363;
    v189 = v368;
    v190 = v180;
    v191 = v364;
    v363[4](v368, v190, v364);
    v351 = sub_20C59D51C();
    v350 = v192;
    v193 = v188[1];

    (v193)(v189, v191);
  }

  LODWORD(v349) = sub_20C4C9020();
  v194 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  v195 = *(v404 + 16);
  v373 = v194;
  v404 += 16;
  v372 = v195;
  (v195)(v414, &v1[v194], v392);
  v435 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v196 = v371;
  sub_20C59DDFC();
  v197 = sub_20C59E49C();
  v334 = *(v197 - 8);
  v199 = v334 + 48;
  v198 = *(v334 + 48);
  LODWORD(v412) = 1;
  LODWORD(v194) = (v198)(v196, 1, v197);
  sub_20C477B50(v196, &qword_27C7C44C0);
  v201 = v405 + 104;
  v200 = *(v405 + 104);
  v380 = v1;
  v202 = *MEMORY[0x277D52E30];
  v203 = *MEMORY[0x277D52E28];
  if (v194 == 1)
  {
    v204 = v202;
  }

  else
  {
    v204 = v203;
  }

  v205 = v393;
  v200(v415, v204, v393);
  v206 = v377;
  sub_20C59DDFC();
  v378 = v197;
  v421 = v199;
  v420 = v198;
  v207 = (v198)(v206, 1, v197);
  sub_20C477B50(v206, &qword_27C7C44C0);
  LODWORD(v419) = v202;
  LODWORD(v370) = v203;
  if (v207 == 1)
  {
    v208 = v202;
  }

  else
  {
    v208 = v203;
  }

  v209 = v380;
  v405 = v201;
  v371 = v200;
  v200(v416, v208, v205);
  v347 = sub_20C59DD5C();
  v346 = v210;
  v211 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  swift_beginAccess();
  sub_20C4775E4(&v209[v211], v417, &qword_27C7C4E10);
  v343 = sub_20C59DD5C();
  v342 = v212;
  v213 = *&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24];
  v369 = &v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator];
  __swift_project_boxed_opaque_existential_1(&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], v213);
  sub_20C59F6EC();
  v214 = sub_20C59E31C();
  v216 = v215;
  if (v214 != sub_20C59E31C() || v216 != v217)
  {
    LODWORD(v412) = sub_20C5A0E9C();
  }

  v218 = *(v406 + 16);
  v368 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v406 += 16;
  v367 = v218;
  (v218)(v418, &v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType], v394);
  sub_20C59DE1C();
  v219 = *&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8];
  v377 = *&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext];

  v220 = v375;
  sub_20C59DDFC();
  v221 = v378;
  v222 = (v420)(v220, 1, v378);
  v223 = v348;
  if (v222 == 1)
  {
    sub_20C477B50(v220, &qword_27C7C44C0);
    v333 = 0;
  }

  else
  {
    sub_20C59E48C();
    v333 = v224;
    (*(v334 + 8))(v220, v221);
  }

  v225 = v374;
  sub_20C4E1744(v223 + v209, v374, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v226 = swift_getEnumCaseMultiPayload();
  v374 = v219;
  if (v226 == 1)
  {
    v227 = v363;
    v228 = v361;
    v229 = v364;
    v363[4](v361, v225, v364);
    sub_20C59D51C();
    (v227[1])(v228, v229);
  }

  else
  {
    sub_20C4E16E4(v225, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v230 = v376;
  v231 = v365;
  v232 = *(v337 + 16);
  v376 = (v337 + 16);
  v375 = v232;
  v232(v366, v409, v410);
  sub_20C4775E4(v411, v231, &qword_27C7C4F58);
  sub_20C4E1744(v223 + v209, v230, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v233 = v363;
    v234 = v362;
    v235 = v364;
    v363[4](v362, v230, v364);
    sub_20C59D51C();
    (v233[1])(v234, v235);
  }

  else
  {
    sub_20C4E16E4(v230, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v236 = v345;
  sub_20C59DE9C();
  v237 = v403;
  v238 = *(v403 + 16);
  v366 = (v403 + 16);
  v365 = v238;
  v238(v391, v236, v433);
  v239 = sub_20C59E40C();
  v240 = *(v239 - 8);
  v241 = *(v240 + 56);
  v364 = v239;
  v363 = v241;
  v362 = (v240 + 56);
  (v241)(v397, 1, 1);
  v242 = v398;
  static MetricEnvironment.current()();
  v243 = sub_20C59E2AC();
  v244 = *(v243 - 8);
  v245 = *(v244 + 56);
  v361 = v243;
  v360 = v245;
  v359 = (v244 + 56);
  (v245)(v242, 0, 1);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
  v247 = *(v246 - 8);
  v248 = *(v247 + 56);
  v358 = v246;
  v357 = v248;
  v356 = (v247 + 56);
  (v248)(v399, 1, 1);
  v249 = sub_20C59E5EC();
  v250 = *(v249 - 8);
  v251 = *(v250 + 56);
  v355 = v249;
  v354 = v251;
  v353 = v250 + 56;
  (v251)(v400, 1, 1);
  v252 = v395;
  sub_20C59E16C();
  v253 = *&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub];
  v254 = *&v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub + 8];
  ObjectType = swift_getObjectType();
  v256 = v407;
  v257 = *(v407 + 16);
  v258 = v401;
  v259 = v396;
  v349 = v407 + 16;
  v348 = v257;
  v257(v401, v252, v396);
  v347 = sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
  v352 = v253;
  v350 = ObjectType;
  v351 = v254;
  sub_20C59F5FC();
  sub_20C4E16E4(v258, type metadata accessor for MetricPlayStreamOccurred);
  v260 = *(v256 + 8);
  v407 = v256 + 8;
  v346 = v260;
  v260(v252, v259);
  v261 = *(v237 + 8);
  v403 = v237 + 8;
  v345 = v261;
  (v261)(v236, v433);
  v262 = v424;
  sub_20C59EC7C();
  result = sub_20C4CD2C0(v263);
  v264 = result;
  v265 = *(result + 16);
  v266 = v379;
  v267 = v408;
  v268 = v436;
  v269 = v381;
  if (v265)
  {
    v270 = 0;
    v342 = &v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap];
    v417 = result + ((*(v408 + 80) + 32) & ~*(v408 + 80));
    v416 = (v408 + 16);
    v415 = (v432 + 8);
    v414 = (v408 + 8);
    v334 += 8;
    ++v341;
    v343 = result;
    v418 = v265;
    while (v270 < *(v264 + 16))
    {
      (*(v267 + 16))(v268, v417 + *(v267 + 72) * v270, v266);
      sub_20C59EC7C();
      sub_20C59D7CC();
      v272 = sub_20C59ECDC();
      v437 = v272;
      v438 = BYTE4(v272) & 1;
      v439 = 0;
      if (sub_20C59DA7C())
      {
        v413 = v270;
        sub_20C59FE3C();
        v273 = sub_20C5A01BC();
        v274 = sub_20C5A08AC();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          *v275 = 0;
          _os_log_impl(&dword_20C472000, v273, v274, "Workout Playback Update triggering music track start event", v275, 2u);
          MEMORY[0x20F2FFF90](v275, -1, -1);
        }

        v269(v425, v434);
        sub_20C59EC7C();
        LODWORD(v412) = sub_20C4C9020();
        (v372)(v427, &v373[v209], v392);
        v276 = v385;
        sub_20C59DDFC();
        LODWORD(v432) = 1;
        v277 = v378;
        v278 = v420;
        v279 = (v420)(v276, 1, v378);
        v280 = v370;
        if (v279 == 1)
        {
          v281 = v419;
        }

        else
        {
          v281 = v370;
        }

        sub_20C477B50(v276, &qword_27C7C44C0);
        v282 = v393;
        v283 = v371;
        v371(v428, v281, v393);
        v284 = v386;
        sub_20C59DDFC();
        if ((v278)(v284, 1, v277) == 1)
        {
          v285 = v419;
        }

        else
        {
          v285 = v280;
        }

        sub_20C477B50(v284, &qword_27C7C44C0);
        v283(v429, v285, v282);
        v286 = sub_20C59E43C();
        (*(*(v286 - 8) + 56))(v430, 1, 1, v286);
        sub_20C59D7AC();
        __swift_project_boxed_opaque_existential_1(v369, *(v369 + 3));
        sub_20C59F6EC();
        v287 = sub_20C59E31C();
        v289 = v288;
        if (v287 != sub_20C59E31C() || v289 != v290)
        {
          LODWORD(v432) = sub_20C5A0E9C();
        }

        (v367)(v431, &v368[v209], v394);
        sub_20C59D7BC();

        v291 = v387;
        sub_20C59DDFC();
        if ((v420)(v291, 1, v277) == 1)
        {
          sub_20C477B50(v291, &qword_27C7C44C0);
        }

        else
        {
          sub_20C59E48C();
          (*v334)(v291, v277);
        }

        v375(v383, v409, v410);
        v303 = sub_20C59E78C();
        (*(*(v303 - 8) + 56))(v382, 1, 1, v303);
        v304 = v384;
        sub_20C59DE9C();
        v305 = v365;
        v365(v391, v304, v433);
        (v363)(v397, 1, 1, v364);
        v306 = v398;
        static MetricEnvironment.current()();
        (v360)(v306, 0, 1, v361);
        (v357)(v399, 1, 1, v358);
        v354(v400, 1, 1, v355);
        v307 = v395;
        sub_20C59E16C();
        v308 = v401;
        v309 = v396;
        v348(v401, v307, v396);
        sub_20C59F5FC();
        sub_20C4E16E4(v308, type metadata accessor for MetricPlayStreamOccurred);
        v268 = v436;
        v432 = sub_20C59D7AC();
        v311 = v310;
        v312 = v388;
        v313 = v433;
        v305(v388, v304, v433);
        v314 = v389;
        sub_20C59D45C();
        sub_20C59D3DC();
        v316 = v315;
        (*v341)(v314, v390);
        started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
        *(v312 + *(started + 20)) = v316;
        (*(*(started - 8) + 56))(v312, 0, 1, started);
        swift_beginAccess();
        sub_20C52651C(v312, v432, v311);
        swift_endAccess();
        v346(v307, v309);
        (v345)(v304, v313);
        v266 = v379;
        v267 = v408;
        v209 = v380;
        v262 = v424;
        v269 = v381;
        v264 = v343;
        v271 = v418;
        v270 = v413;
      }

      else
      {
        sub_20C59FE3C();
        v292 = sub_20C5A01BC();
        v293 = sub_20C5A08AC();
        if (os_log_type_enabled(v292, v293))
        {
          v294 = v266;
          v295 = v262;
          v296 = v264;
          v297 = v269;
          v298 = v268;
          v299 = v209;
          v300 = v270;
          v301 = swift_slowAlloc();
          *v301 = 0;
          _os_log_impl(&dword_20C472000, v292, v293, "Workout Playback Update triggering music track stop event", v301, 2u);
          v302 = v301;
          v270 = v300;
          v209 = v299;
          v268 = v298;
          v269 = v297;
          v264 = v296;
          v262 = v295;
          v266 = v294;
          v267 = v408;
          MEMORY[0x20F2FFF90](v302, -1, -1);
        }

        v269(v426, v434);
        sub_20C59EC7C();
        sub_20C4DB4B0(v268, 2, 0, 0, v411);
        v271 = v418;
      }

      ++v270;
      result = (*v414)(v268, v266);
      if (v271 == v270)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_88:

    v318 = sub_20C59ECDC();
    sub_20C59EC7C();
    v320 = v319;
    v321 = v344;
    v322 = v335;
    v323 = v409;
    v324 = v410;
    v375(&v335[*(v344 + 24)], v409, v410);
    sub_20C59D3EC();
    v326 = v325;
    sub_20C59EC8C();
    v328 = v327;
    sub_20C59ECAC();
    (*(v337 + 8))(v323, v324);
    sub_20C477B50(v411, &qword_27C7C4F58);
    *v322 = v318;
    *(v322 + 4) = BYTE4(v318) & 1;
    *(v322 + 8) = v320;
    *(v322 + *(v321 + 28)) = v326;
    *(v322 + *(v321 + 32)) = v328;
    (*(v338 + 56))(v322, 0, 1, v321);
    v329 = v336;
    swift_beginAccess();
    sub_20C4E20CC(v322, &v209[v329], &qword_27C7C4E00);
    swift_endAccess();
    if ((v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] - 2 < 4) | v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] & 1)
    {
      v330 = 5;
    }

    else
    {
      v330 = 1;
    }

    v209[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] = v330;
    return v332(v262, v339);
  }

  return result;
}

uint64_t sub_20C4D29B8(double a1)
{
  v2 = v1;
  v188 = sub_20C5A01CC();
  v184 = *(v188 - 1);
  MEMORY[0x28223BE20](v188);
  v175 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58);
  MEMORY[0x28223BE20](v5 - 8);
  v168 = &v142 - v6;
  v167 = sub_20C59D7DC();
  v166 = *(v167 - 8);
  v7 = MEMORY[0x28223BE20](v167);
  v164 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = &v142 - v9;
  v197 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v197);
  v196 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59E13C();
  MEMORY[0x28223BE20](v11 - 8);
  v195 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = &v142 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v15 - 8);
  v190 = &v142 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v17 - 8);
  v189 = &v142 - v18;
  v194 = sub_20C59E18C();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v191 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_20C59E80C();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v187 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_20C59E0BC();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v206 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v22 - 8);
  v205 = &v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v177 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v174 = &v142 - v28;
  MEMORY[0x28223BE20](v27);
  v171 = &v142 - v29;
  v173 = sub_20C59E7FC();
  v172 = *(v173 - 8);
  v30 = MEMORY[0x28223BE20](v173);
  v204 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v203 = &v142 - v32;
  v170 = sub_20C59E95C();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v202 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  v34 = MEMORY[0x28223BE20](v201);
  v180 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v176 = &v142 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v142 - v38;
  v199 = sub_20C59D63C();
  v198 = *(v199 - 8);
  v40 = MEMORY[0x28223BE20](v199);
  v162 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v161 = &v142 - v43;
  MEMORY[0x28223BE20](v42);
  v160 = &v142 - v44;
  v207 = sub_20C59DEBC();
  v186 = *(v207 - 8);
  v45 = MEMORY[0x28223BE20](v207);
  v181 = &v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v185 = &v142 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v163 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v200 = &v142 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = (&v142 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v142 - v56;
  v58 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v142 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  sub_20C4775E4(v1 + v62, v57, &qword_27C7C4E00);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_20C477B50(v57, &qword_27C7C4E00);
    v63 = v175;
    sub_20C59FE3C();
    v64 = sub_20C5A01BC();
    v65 = sub_20C5A088C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20C472000, v64, v65, "Playback transitioning from not playing to seek is not a valid transition", v66, 2u);
      MEMORY[0x20F2FFF90](v66, -1, -1);
    }

    return v184[1](v63, v188);
  }

  else
  {
    sub_20C4E1680(v57, v61);
    *(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking) = 1;
    v159 = *(v61 + 1);
    v68 = *(v58 + 28);
    v150 = *(v58 + 24);
    v188 = v61;
    v155 = *&v61[v68];
    v69 = *MEMORY[0x277D52B90];
    v70 = sub_20C59E78C();
    v71 = *(v70 - 8);
    v72 = *(v71 + 104);
    v147 = v69;
    v145 = v71 + 104;
    v144 = v72;
    v72(v54, v69, v70);
    v73 = *(v71 + 56);
    v184 = v54;
    v148 = v70;
    v146 = v71 + 56;
    v143 = v73;
    v73(v54, 0, 1, v70);
    v158 = sub_20C4C96BC();
    v157 = sub_20C4C98D8();
    v156 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType);
    v74 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8);
    v154 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
    v75 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
    swift_beginAccess();
    v76 = v2;
    v175 = v75;
    sub_20C4E1744(v2 + v75, v39, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v153 = v74;
    if (EnumCaseMultiPayload)
    {

      sub_20C4E16E4(v39, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
      v152 = 0;
      v151 = 0;
    }

    else
    {
      v78 = v198;
      v79 = v160;
      v80 = v199;
      (*(v198 + 32))(v160, v39, v199);
      v152 = sub_20C59D51C();
      v151 = v81;
      v82 = *(v78 + 8);

      v82(v79, v80);
    }

    LODWORD(v160) = sub_20C4C9020();
    v83 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v169 + 16))(v202, v76 + v83, v170);
    v84 = v171;
    sub_20C59DDFC();
    v85 = sub_20C59E49C();
    v142 = *(v85 - 8);
    v86 = *(v142 + 48);
    LODWORD(v170) = 1;
    LODWORD(v83) = v86(v84, 1, v85);
    sub_20C477B50(v84, &qword_27C7C44C0);
    v87 = *(v172 + 104);
    v172 = v87;
    v88 = *MEMORY[0x277D52E30];
    LODWORD(v171) = *MEMORY[0x277D52E30];
    v89 = *MEMORY[0x277D52E28];
    if (v83 == 1)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = v173;
    v87(v203, v90, v173);
    v92 = v174;
    sub_20C59DDFC();
    v169 = v85;
    v149 = v86;
    v93 = v86(v92, 1, v85);
    v94 = v92;
    v95 = v76;
    sub_20C477B50(v94, &qword_27C7C44C0);
    if (v93 == 1)
    {
      v96 = v171;
    }

    else
    {
      v96 = v89;
    }

    (v172)(v204, v96, v91);
    v174 = sub_20C59DD5C();
    v173 = v97;
    v98 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
    swift_beginAccess();
    sub_20C4775E4(v76 + v98, v205, &qword_27C7C4E10);
    v172 = sub_20C59DD5C();
    v171 = v99;
    __swift_project_boxed_opaque_existential_1((v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v100 = sub_20C59E31C();
    v102 = v101;
    if (v100 != sub_20C59E31C() || v102 != v103)
    {
      LODWORD(v170) = sub_20C5A0E9C();
    }

    (*(v178 + 16))(v206, v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v179);
    sub_20C59DE1C();
    v179 = *(v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);

    v104 = v177;
    sub_20C59DDFC();
    v105 = v169;
    if (v149(v104, 1, v169) == 1)
    {
      sub_20C477B50(v104, &qword_27C7C44C0);
      v178 = 0;
      v149 = 0;
    }

    else
    {
      v178 = sub_20C59E48C();
      v149 = v106;
      (*(v142 + 8))(v104, v105);
    }

    v107 = v187;
    v108 = v176;
    sub_20C4E1744(&v175[v76], v176, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v109 = v198;
      v110 = v161;
      v111 = v199;
      (*(v198 + 32))(v161, v108, v199);
      sub_20C59D51C();
      (*(v109 + 8))(v110, v111);
    }

    else
    {
      sub_20C4E16E4(v108, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v112 = v184;
    (*(v182 + 16))(v107, &v188[v150], v183);
    sub_20C4775E4(v112, v200, &qword_27C7C4F58);
    v113 = v180;
    sub_20C4E1744(&v175[v76], v180, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v114 = v198;
      v115 = v162;
      v116 = v199;
      (*(v198 + 32))(v162, v113, v199);
      sub_20C59D51C();
      (*(v114 + 8))(v115, v116);
    }

    else
    {
      sub_20C4E16E4(v113, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v117 = v185;
    sub_20C59DE9C();
    v118 = v186;
    (*(v186 + 16))(v181, v117, v207);
    v119 = sub_20C59E40C();
    (*(*(v119 - 8) + 56))(v189, 1, 1, v119);
    v120 = v190;
    static MetricEnvironment.current()();
    v121 = sub_20C59E2AC();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
    (*(*(v122 - 8) + 56))(v192, 1, 1, v122);
    v123 = sub_20C59E5EC();
    (*(*(v123 - 8) + 56))(v195, 1, 1, v123);
    v124 = v191;
    sub_20C59E16C();
    swift_getObjectType();
    v125 = v193;
    v126 = v196;
    v127 = v194;
    (*(v193 + 16))(v196, v124, v194);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v126, type metadata accessor for MetricPlayStreamOccurred);
    (*(v125 + 8))(v124, v127);
    (*(v118 + 8))(v117, v207);
    sub_20C477B50(v184, &qword_27C7C4F58);
    v128 = sub_20C4CD2C0(a1);
    if (*(v128 + 16))
    {
      v129 = v166;
      v130 = v164;
      v131 = v167;
      (*(v166 + 16))(v164, v128 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v167);

      v132 = *(v129 + 32);
      v133 = v165;
      v132(v165, v130, v131);
      sub_20C59D7CC();
      v135 = a1 - v134;
      v136 = v163;
      v137 = v148;
      v144(v163, v147, v148);
      v143(v136, 0, 1, v137);
      sub_20C4DB4B0(v133, 2, 0, 0, v136);
      sub_20C477B50(v136, &qword_27C7C4F58);
      v138 = v168;
      v132(v168, v133, v131);
      (*(v129 + 56))(v138, 0, 1, v131);
      v139 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
      swift_beginAccess();
      sub_20C4E20CC(v138, v95 + v139, &qword_27C7C4E58);
      swift_endAccess();
      *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition) = v135;
    }

    else
    {
    }

    *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition) = a1;
    sub_20C59D3EC();
    v141 = v140;
    result = sub_20C4E16E4(v188, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp) = v141;
  }

  return result;
}

uint64_t sub_20C4D43B8(double a1)
{
  v2 = v1;
  v372 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v326 = &v324 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  v5 = MEMORY[0x28223BE20](v339);
  v325 = &v324 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v369 = &v324 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v367 = &v324 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v370 = (&v324 - v11);
  v337 = sub_20C59D46C();
  v336 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v335 = &v324 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70);
  MEMORY[0x28223BE20](v13 - 8);
  v338 = &v324 - v14;
  v439 = sub_20C59D7DC();
  v438 = *(v439 - 8);
  MEMORY[0x28223BE20](v439 - 8);
  v420 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v368 = &v324 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v364 = &v324 - v20;
  MEMORY[0x28223BE20](v19);
  v437 = &v324 - v21;
  v436 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v436);
  v435 = &v324 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C59E13C();
  MEMORY[0x28223BE20](v23 - 8);
  v433 = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v25 - 8);
  v432 = &v324 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v27 - 8);
  v431 = &v324 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v29 - 8);
  v430 = &v324 - v30;
  v444 = sub_20C59E18C();
  v450 = *(v444 - 8);
  MEMORY[0x28223BE20](v444);
  v434 = &v324 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_20C59E0BC();
  v449 = *(v429 - 8);
  v32 = MEMORY[0x28223BE20](v429);
  v334 = &v324 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v359 = &v324 - v35;
  MEMORY[0x28223BE20](v34);
  v390 = &v324 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v366 = &v324 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v419 = &v324 - v41;
  MEMORY[0x28223BE20](v40);
  v413 = &v324 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v333 = &v324 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v332 = &v324 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v331 = &v324 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v356 = &v324 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v354 = &v324 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v353 = &v324 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v392 = (&v324 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v440 = &v324 - v59;
  MEMORY[0x28223BE20](v58);
  v455 = &v324 - v60;
  v424 = sub_20C59E7FC();
  v447 = *(v424 - 8);
  v61 = MEMORY[0x28223BE20](v424);
  v363 = &v324 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v362 = &v324 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v418 = &v324 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v417 = &v324 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v412 = &v324 - v70;
  MEMORY[0x28223BE20](v69);
  v411 = &v324 - v71;
  v423 = sub_20C59E95C();
  v446 = *(v423 - 8);
  v72 = MEMORY[0x28223BE20](v423);
  v360 = &v324 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v416 = &v324 - v75;
  MEMORY[0x28223BE20](v74);
  v410 = &v324 - v76;
  v77 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  v78 = MEMORY[0x28223BE20](v77);
  v357 = &v324 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v355 = &v324 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v375 = &v324 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v393 = &v324 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v389 = (&v324 - v87);
  MEMORY[0x28223BE20](v86);
  v89 = &v324 - v88;
  v90 = sub_20C59D63C();
  v445 = *(v90 - 8);
  v91 = MEMORY[0x28223BE20](v90);
  v328 = &v324 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x28223BE20](v91);
  v327 = &v324 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v342 = &v324 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v344 = &v324 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v343 = &v324 - v100;
  MEMORY[0x28223BE20](v99);
  v102 = &v324 - v101;
  v454 = sub_20C59DEBC();
  v448 = *(v454 - 8);
  v103 = MEMORY[0x28223BE20](v454);
  v361 = &v324 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x28223BE20](v103);
  v358 = &v324 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v425 = &v324 - v108;
  MEMORY[0x28223BE20](v107);
  v352 = &v324 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  v111 = MEMORY[0x28223BE20](v110 - 8);
  v330 = &v324 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x28223BE20](v111);
  v415 = &v324 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v442 = &v324 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v407 = &v324 - v118;
  MEMORY[0x28223BE20](v117);
  v120 = &v324 - v119;
  v121 = sub_20C59E80C();
  v122 = *(v121 - 8);
  v123 = MEMORY[0x28223BE20](v121);
  v374 = &v324 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x28223BE20](v123);
  v329 = &v324 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v405 = &v324 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v414 = &v324 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v441 = &v324 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v406 = (&v324 - v134);
  MEMORY[0x28223BE20](v133);
  v136 = &v324 - v135;
  v459 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v388 = sub_20C59DD5C();
  v387 = v137;
  v386 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition];
  LODWORD(v137) = *MEMORY[0x277D52E48];
  v443 = v122;
  v138 = *(v122 + 104);
  v408 = v136;
  v427 = v137;
  v456 = v121;
  v428 = v122 + 104;
  v426 = v138;
  v138(v136);
  v365 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp;
  v380 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp];
  v139 = *MEMORY[0x277D52B68];
  v140 = sub_20C59E78C();
  v141 = *(v140 - 8);
  (*(v141 + 104))(v120, v139, v140);
  v142 = *(v141 + 56);
  v409 = v120;
  v143 = v120;
  v144 = v445;
  v404 = v140;
  v403 = v141 + 56;
  v402 = v142;
  v142(v143, 0, 1, v140);
  v385 = sub_20C4C96BC();
  v384 = sub_20C4C98D8();
  v350 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType;
  LODWORD(v383) = v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType];
  v145 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8];
  v382 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v349 = &v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v146 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
  swift_beginAccess();
  v457 = v146;
  sub_20C4E1744(&v2[v146], v89, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v458 = v77;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v421 = v90;
  v381 = v145;
  if (EnumCaseMultiPayload)
  {

    sub_20C4E16E4(v89, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v379 = 0;
    v378 = 0;
  }

  else
  {
    (*(v144 + 32))(v102, v89, v90);
    v379 = sub_20C59D51C();
    v378 = v148;
    v149 = *(v144 + 8);

    v149(v102, v90);
  }

  LODWORD(v377) = sub_20C4C9020();
  v150 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  v151 = *(v446 + 16);
  v400 = v150;
  v446 += 16;
  v398 = v151;
  v151(v410, &v2[v150], v423);
  v152 = v455;
  sub_20C59DDFC();
  v153 = sub_20C59E49C();
  v373 = *(v153 - 8);
  v154 = v373 + 48;
  v155 = *(v373 + 48);
  LODWORD(v391) = 1;
  LODWORD(v150) = v155(v152, 1, v153);
  sub_20C477B50(v152, &qword_27C7C44C0);
  v455 = v2;
  v157 = v447 + 104;
  v156 = *(v447 + 104);
  v158 = *MEMORY[0x277D52E30];
  v159 = *MEMORY[0x277D52E28];
  if (v150 == 1)
  {
    v160 = v158;
  }

  else
  {
    v160 = v159;
  }

  v161 = v424;
  v156(v411, v160, v424);
  v162 = v440;
  sub_20C59DDFC();
  v453 = v153;
  v452 = v154;
  v451 = v155;
  v163 = v155(v162, 1, v153);
  sub_20C477B50(v162, &qword_27C7C44C0);
  v399 = v158;
  v397 = v159;
  if (v163 == 1)
  {
    v164 = v158;
  }

  else
  {
    v164 = v159;
  }

  v447 = v157;
  v401 = v156;
  v156(v412, v164, v161);
  v165 = v455;
  v376 = sub_20C59DD5C();
  v351 = v166;
  v167 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  swift_beginAccess();
  v348 = v167;
  sub_20C4775E4(&v165[v167], v413, &qword_27C7C4E10);
  v347 = sub_20C59DD5C();
  v346 = v168;
  v169 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24];
  v394 = &v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator];
  __swift_project_boxed_opaque_existential_1(&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], v169);
  sub_20C59F6EC();
  v170 = sub_20C59E31C();
  v172 = v171;
  if (v170 != sub_20C59E31C() || v172 != v173)
  {
    LODWORD(v391) = sub_20C5A0E9C();
  }

  v174 = *(v449 + 16);
  v395 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v449 += 16;
  v396 = v174;
  v174(v390, &v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType], v429);
  sub_20C59DE1C();
  v175 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8];
  v422 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext];
  v440 = v175;

  v176 = v392;
  sub_20C59DDFC();
  v177 = v453;
  if (v451(v176, 1, v453) == 1)
  {
    sub_20C477B50(v176, &qword_27C7C44C0);
    v345 = 0;
  }

  else
  {
    v345 = sub_20C59E48C();
    (*(v373 + 8))(v176, v177);
  }

  v178 = v389;
  sub_20C4E1744(&v165[v457], v389, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v179 = v445;
    v180 = v343;
    v181 = v421;
    (*(v445 + 32))(v343, v178, v421);
    sub_20C59D51C();
    (*(v179 + 8))(v180, v181);
  }

  else
  {
    sub_20C4E16E4(v178, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v182 = v393;
  v183 = *(v443 + 16);
  v393 = (v443 + 16);
  v392 = v183;
  v183(v406, v408, v456);
  sub_20C4775E4(v409, v407, &qword_27C7C4F58);
  sub_20C4E1744(&v165[v457], v182, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v184 = v445;
    v185 = v344;
    v186 = v182;
    v187 = v421;
    (*(v445 + 32))(v344, v186, v421);
    sub_20C59D51C();
    (*(v184 + 8))(v185, v187);
  }

  else
  {
    sub_20C4E16E4(v182, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v188 = v352;
  sub_20C59DE9C();
  v189 = v448;
  v190 = *(v448 + 16);
  v413 = v448 + 16;
  v412 = v190;
  (v190)(v425, v188, v454);
  v191 = sub_20C59E40C();
  v192 = *(v191 - 8);
  v193 = *(v192 + 56);
  v407 = v191;
  v406 = v193;
  v391 = v192 + 56;
  (v193)(v430, 1, 1);
  v194 = v431;
  static MetricEnvironment.current()();
  v195 = sub_20C59E2AC();
  v196 = *(v195 - 8);
  v197 = *(v196 + 56);
  v390 = v195;
  v389 = v197;
  v388 = v196 + 56;
  (v197)(v194, 0, 1);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
  v199 = *(v198 - 8);
  v200 = *(v199 + 56);
  v387 = v198;
  v386 = v200;
  v385 = v199 + 56;
  (v200)(v432, 1, 1);
  v201 = sub_20C59E5EC();
  v202 = *(v201 - 8);
  v203 = *(v202 + 56);
  v384 = v201;
  v383 = v203;
  v381 = v202 + 56;
  (v203)(v433, 1, 1);
  v204 = v434;
  sub_20C59E16C();
  v205 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub];
  v206 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub + 8];
  ObjectType = swift_getObjectType();
  v208 = v450;
  v209 = *(v450 + 16);
  v210 = v435;
  v211 = v444;
  v378 = v450 + 16;
  v377 = v209;
  v209(v435, v204, v444);
  v376 = sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
  v380 = v205;
  v379 = ObjectType;
  v382 = v206;
  sub_20C59F5FC();
  sub_20C4E16E4(v210, type metadata accessor for MetricPlayStreamOccurred);
  v212 = *(v208 + 8);
  v450 = v208 + 8;
  v411 = v212;
  (v212)(v204, v211);
  v213 = *(v189 + 8);
  v448 = v189 + 8;
  v410 = v213;
  (v213)(v188, v454);
  sub_20C477B50(v409, &qword_27C7C4F58);
  v214 = *(v443 + 8);
  v215 = v408;
  v216 = v456;
  v409 = (v443 + 8);
  v408 = v214;
  (v214)(v215, v456);
  v217 = sub_20C4CD2C0(a1);
  if (*(v217 + 16))
  {
    v218 = v438;
    v219 = v437;
    v220 = v439;
    (*(v438 + 16))(v437, v217 + ((*(v438 + 80) + 32) & ~*(v438 + 80)), v439);
    v221 = 0;
  }

  else
  {
    v220 = v439;
    v218 = v438;
    v219 = v437;
    v221 = 1;
  }

  v222 = *(v218 + 56);
  v352 = (v218 + 56);
  v351 = v222;
  v222(v219, v221, 1, v220);
  sub_20C4D9BD0(v219);
  v426(v441, v427, v216);
  v402(v442, 1, 1, v404);
  v347 = sub_20C4C96BC();
  v346 = sub_20C4C98D8();
  LODWORD(v350) = v165[v350];
  v223 = v349[1];
  v345 = *v349;
  v224 = v375;
  sub_20C4E1744(&v165[v457], v375, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v225 = swift_getEnumCaseMultiPayload();
  v349 = v223;
  if (v225)
  {

    sub_20C4E16E4(v224, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v344 = 0;
    v343 = 0;
  }

  else
  {
    v226 = v445;
    v227 = v342;
    v228 = v421;
    (*(v445 + 32))(v342, v224, v421);
    v344 = sub_20C59D51C();
    v343 = v229;
    v230 = *(v226 + 8);

    v230(v227, v228);
  }

  LODWORD(v342) = sub_20C4C9020();
  v398(v416, &v165[v400], v423);
  v231 = v353;
  sub_20C59DDFC();
  LODWORD(v375) = 1;
  v232 = v453;
  v233 = v451;
  v234 = v451(v231, 1, v453);
  sub_20C477B50(v231, &qword_27C7C44C0);
  v235 = v399;
  v236 = v397;
  if (v234 == 1)
  {
    v237 = v399;
  }

  else
  {
    v237 = v397;
  }

  v238 = v424;
  v239 = v401;
  v401(v417, v237, v424);
  v240 = v354;
  sub_20C59DDFC();
  v241 = v233(v240, 1, v232);
  sub_20C477B50(v240, &qword_27C7C44C0);
  if (v241 == 1)
  {
    v242 = v235;
  }

  else
  {
    v242 = v236;
  }

  v239(v418, v242, v238);
  v243 = v455;
  v354 = sub_20C59DD5C();
  v353 = v244;
  sub_20C4775E4(&v243[v348], v419, &qword_27C7C4E10);
  v348 = sub_20C59DD5C();
  v341 = v245;
  __swift_project_boxed_opaque_existential_1(v394, *(v394 + 3));
  sub_20C59F6EC();
  v246 = sub_20C59E31C();
  v248 = v247;
  if (v246 != sub_20C59E31C() || v248 != v249)
  {
    LODWORD(v375) = sub_20C5A0E9C();
  }

  v396(v359, &v243[v395], v429);
  sub_20C59DE1C();
  v250 = v356;
  sub_20C59DDFC();
  v251 = v453;
  if (v451(v250, 1, v453) == 1)
  {
    sub_20C477B50(v250, &qword_27C7C44C0);
    v340 = 0;
  }

  else
  {
    v340 = sub_20C59E48C();
    (*(v373 + 8))(v250, v251);
  }

  v252 = v421;
  v253 = v445;
  v254 = v355;
  sub_20C4E1744(&v243[v457], v355, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v255 = v327;
    (*(v253 + 32))(v327, v254, v252);
    sub_20C59D51C();
    (*(v253 + 8))(v255, v252);
  }

  else
  {
    sub_20C4E16E4(v254, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v256 = v357;
  v392(v414, v441, v456);
  sub_20C4775E4(v442, v415, &qword_27C7C4F58);
  sub_20C4E1744(&v243[v457], v256, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v257 = v328;
    (*(v253 + 32))(v328, v256, v252);
    sub_20C59D51C();
    (*(v253 + 8))(v257, v252);
  }

  else
  {
    sub_20C4E16E4(v256, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v258 = v358;
  sub_20C59DE9C();
  v259 = v454;
  (v412)(v425, v258, v454);
  v406(v430, 1, 1, v407);
  v260 = v431;
  static MetricEnvironment.current()();
  (v389)(v260, 0, 1, v390);
  v386(v432, 1, 1, v387);
  v383(v433, 1, 1, v384);
  v261 = v434;
  sub_20C59E16C();
  v262 = v435;
  v263 = v444;
  v377(v435, v261, v444);
  sub_20C59F5FC();
  sub_20C4E16E4(v262, type metadata accessor for MetricPlayStreamOccurred);
  (v411)(v261, v263);
  (v410)(v258, v259);
  sub_20C477B50(v442, &qword_27C7C4F58);
  v264 = v456;
  (v408)(v441, v456);
  v265 = v437;
  v266 = v364;
  sub_20C4775E4(v437, v364, &qword_27C7C4E58);
  v267 = v438;
  v268 = v439;
  if ((*(v438 + 48))(v266, 1, v439) == 1)
  {
    sub_20C477B50(v266, &qword_27C7C4E58);
    v269 = v374;
  }

  else
  {
    (*(v267 + 32))(v420, v266, v268);
    sub_20C59D7CC();
    v426(v405, v427, v264);
    LODWORD(v457) = sub_20C4C9020();
    v398(v360, &v243[v400], v423);
    v270 = v331;
    sub_20C59DDFC();
    LODWORD(v458) = 1;
    v271 = v453;
    v272 = v451;
    v273 = v451(v270, 1, v453);
    sub_20C477B50(v270, &qword_27C7C44C0);
    v274 = v399;
    v275 = v397;
    if (v273 == 1)
    {
      v276 = v399;
    }

    else
    {
      v276 = v397;
    }

    v277 = v424;
    v278 = v401;
    v401(v362, v276, v424);
    v279 = v332;
    sub_20C59DDFC();
    v280 = v272(v279, 1, v271);
    sub_20C477B50(v279, &qword_27C7C44C0);
    if (v280 == 1)
    {
      v281 = v274;
    }

    else
    {
      v281 = v275;
    }

    v278(v363, v281, v277);
    v282 = sub_20C59E43C();
    (*(*(v282 - 8) + 56))(v366, 1, 1, v282);
    sub_20C59D7AC();
    __swift_project_boxed_opaque_existential_1(v394, *(v394 + 3));
    sub_20C59F6EC();
    v283 = sub_20C59E31C();
    v285 = v284;
    if (v283 != sub_20C59E31C() || v285 != v286)
    {
      LODWORD(v458) = sub_20C5A0E9C();
    }

    v243 = v455;
    v396(v334, &v455[v395], v429);
    sub_20C59D7BC();

    v287 = v333;
    sub_20C59DDFC();
    v288 = v453;
    if (v451(v287, 1, v453) == 1)
    {
      sub_20C477B50(v287, &qword_27C7C44C0);
    }

    else
    {
      sub_20C59E48C();
      (*(v373 + 8))(v287, v288);
    }

    v264 = v456;
    v392(v329, v405, v456);
    v402(v330, 1, 1, v404);
    v289 = v361;
    sub_20C59DE9C();
    v290 = v412;
    (v412)(v425, v289, v454);
    v406(v430, 1, 1, v407);
    v291 = v431;
    static MetricEnvironment.current()();
    (v389)(v291, 0, 1, v390);
    v386(v432, 1, 1, v387);
    v383(v433, 1, 1, v384);
    v292 = v434;
    sub_20C59E16C();
    v293 = v435;
    v377(v435, v292, v444);
    sub_20C59F5FC();
    sub_20C4E16E4(v293, type metadata accessor for MetricPlayStreamOccurred);
    v294 = v420;
    v295 = sub_20C59D7AC();
    v458 = v296;
    v459 = v295;
    v297 = v338;
    v298 = v361;
    v299 = v454;
    v290(v338, v361, v454);
    v300 = v335;
    sub_20C59D45C();
    sub_20C59D3DC();
    v302 = v301;
    (*(v336 + 8))(v300, v337);
    started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    *(v297 + *(started + 20)) = v302;
    (*(*(started - 8) + 56))(v297, 0, 1, started);
    swift_beginAccess();
    sub_20C52651C(v297, v459, v458);
    swift_endAccess();
    (v411)(v292, v444);
    (v410)(v298, v299);
    (v408)(v405, v264);
    v268 = v439;
    (*(v438 + 8))(v294, v439);
    v269 = v374;
    v265 = v437;
  }

  v426(v269, v427, v264);
  sub_20C59D3EC();
  v305 = v304;
  sub_20C5A072C();
  v307 = v306;
  sub_20C477B50(v265, &qword_27C7C4E58);
  v308 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v309 = v367;
  sub_20C4775E4(&v243[v308], v367, &qword_27C7C4E00);
  v310 = v371;
  v311 = v372;
  v312 = (*(v371 + 48))(v309, 1, v372);
  v313 = v369;
  if (v312)
  {
    sub_20C477B50(v309, &qword_27C7C4E00);
    v314 = *MEMORY[0x277D53C18];
    v315 = sub_20C59EC9C();
    (*(*(v315 - 8) + 104))(v313, v314, v315);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v316 = v326;
    sub_20C4E1744(v309, v326, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    sub_20C477B50(v309, &qword_27C7C4E00);
    v317 = v325;
    sub_20C4775E4(v316 + v311[9], v325, &qword_27C7C4F00);
    sub_20C4E16E4(v316, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    v318 = v317;
    v264 = v456;
    v269 = v374;
    sub_20C4E1800(v318, v313, &qword_27C7C4F00);
  }

  v319 = v370;
  *v370 = 0;
  *(v319 + 4) = 1;
  *(v319 + 8) = a1;
  (*(v443 + 32))(v319 + v311[6], v269, v264);
  *(v319 + v311[7]) = v305;
  *(v319 + v311[8]) = v307;
  sub_20C4E1800(v313, v319 + v311[9], &qword_27C7C4F00);
  (*(v310 + 56))(v319, 0, 1, v311);
  swift_beginAccess();
  sub_20C4E20CC(v319, &v243[v308], &qword_27C7C4E00);
  swift_endAccess();
  v320 = v368;
  v351(v368, 1, 1, v268);
  v321 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  swift_beginAccess();
  sub_20C4E20CC(v320, &v243[v321], &qword_27C7C4E58);
  result = swift_endAccess();
  *&v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition] = 0;
  *&v243[v365] = 0;
  v323 = &v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition];
  *v323 = a1;
  v323[8] = 0;
  v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking] = 0;
  return result;
}

uint64_t sub_20C4D7A64(uint64_t a1)
{
  v2 = v1;
  v161 = sub_20C59D46C();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70);
  MEMORY[0x28223BE20](v5 - 8);
  v160 = &v133 - v6;
  v157 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v157);
  v156 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59E13C();
  MEMORY[0x28223BE20](v8 - 8);
  v152 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v10 - 8);
  v151 = &v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v12 - 8);
  v150 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v14 - 8);
  v149 = &v133 - v15;
  v155 = sub_20C59E18C();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  MEMORY[0x28223BE20](v17 - 8);
  v147 = &v133 - v18;
  v144 = sub_20C59E0BC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v20 - 8);
  v146 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v140 = &v133 - v27;
  MEMORY[0x28223BE20](v26);
  v137 = &v133 - v28;
  v139 = sub_20C59E7FC();
  v138 = *(v139 - 8);
  v29 = MEMORY[0x28223BE20](v139);
  v165 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v164 = &v133 - v31;
  v136 = sub_20C59E95C();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v163 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_20C59DEBC();
  v167 = *(v168 - 8);
  v33 = MEMORY[0x28223BE20](v168);
  v145 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v148 = &v133 - v35;
  v172 = sub_20C59E80C();
  v171 = *(v172 - 8);
  v36 = MEMORY[0x28223BE20](v172);
  v141 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v170 = &v133 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  MEMORY[0x28223BE20](v39 - 8);
  v177 = &v133 - v40;
  v178 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v181 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C59D7DC();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C5A01CC();
  v179 = *(v46 - 8);
  v180 = v46;
  v47 = MEMORY[0x28223BE20](v46);
  v174 = &v133 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v175 = &v133 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v169 = &v133 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v162 = &v133 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v134 = &v133 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v133 - v57;
  sub_20C59FE3C();
  (*(v43 + 16))(v45, a1, v42);
  v59 = sub_20C5A01BC();
  v60 = sub_20C5A08AC();
  v61 = os_log_type_enabled(v59, v60);
  v142 = v25;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v173 = a1;
    v133 = v63;
    v185 = v63;
    *v62 = 136446210;
    sub_20C4E2084(&qword_27C7C4F80, MEMORY[0x277D4FEC8]);
    v64 = sub_20C5A0E6C();
    v65 = v2;
    v67 = v66;
    (*(v43 + 8))(v45, v42);
    v68 = sub_20C479640(v64, v67, &v185);
    v2 = v65;

    *(v62 + 4) = v68;
    _os_log_impl(&dword_20C472000, v59, v60, "Received musicTrackStarted for track: %{public}s", v62, 0xCu);
    v69 = v133;
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    a1 = v173;
    MEMORY[0x20F2FFF90](v69, -1, -1);
    MEMORY[0x20F2FFF90](v62, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v45, v42);
  }

  v70 = v180;
  v71 = *(v179 + 8);
  v71(v58, v180);
  v72 = v181;
  if (v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform] == 3 && (sub_20C4C9020() & 1) != 0)
  {
    v73 = v174;
    sub_20C59FE3C();
    v74 = sub_20C5A01BC();
    v75 = sub_20C5A088C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "MetricPlaybackTracker Disabled";
LABEL_18:
      _os_log_impl(&dword_20C472000, v74, v75, v77, v76, 2u);
      MEMORY[0x20F2FFF90](v76, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v78 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v79 = &v2[v78];
  v80 = v177;
  sub_20C4775E4(v79, v177, &qword_27C7C4E00);
  if ((*(v176 + 48))(v80, 1, v178) == 1)
  {
    sub_20C477B50(v80, &qword_27C7C4E00);
    goto LABEL_16;
  }

  sub_20C4E1680(v80, v72);
  v81 = *(v72 + 4);
  v183 = *v72;
  v184 = v81;
  v182 = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if ((sub_20C59DA7C() & 1) == 0)
  {
    sub_20C4E16E4(v72, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
LABEL_16:
    v73 = v175;
    sub_20C59FE3C();
    v74 = sub_20C5A01BC();
    v75 = sub_20C5A089C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "Received music track start event before any playback events or last playback state was not playing";
      goto LABEL_18;
    }

LABEL_19:

    return (v71)(v73, v70);
  }

  sub_20C59D7CC();
  if (*(v72 + 8) >= v82)
  {
    v83 = v169;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A088C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Received a music track start event that's beyond the last playback position, skipping it";
      goto LABEL_22;
    }
  }

  else if (v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking])
  {
    v83 = v162;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A08AC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Currently seeking, not posting music track started for timeline event";
LABEL_22:
      _os_log_impl(&dword_20C472000, v84, v85, v87, v86, 2u);
      MEMORY[0x20F2FFF90](v86, -1, -1);
    }
  }

  else
  {
    if ((v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition + 8] & 1) != 0 || (v90 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition], sub_20C59D7CC(), v91 >= v90))
    {
      v92 = &v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap];
      swift_beginAccess();
      v177 = v92;
      if (*(*v92 + 16))
      {
        (*(v171 + 104))(v170, *MEMORY[0x277D52E38], v172);
      }

      else
      {
        (*(v171 + 16))(v170, v72 + *(v178 + 24), v172);
      }

      sub_20C59D7CC();
      LODWORD(v176) = sub_20C4C9020();
      v93 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
      swift_beginAccess();
      (*(v135 + 16))(v163, &v2[v93], v136);
      v179 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
      v94 = v137;
      sub_20C59DDFC();
      v95 = sub_20C59E49C();
      v162 = *(v95 - 8);
      v96 = *(v162 + 6);
      LODWORD(v178) = 1;
      v97 = v96(v94, 1, v95);
      v173 = a1;
      sub_20C477B50(v94, &qword_27C7C44C0);
      v98 = *(v138 + 104);
      v180 = v98;
      v99 = *MEMORY[0x277D52E30];
      v100 = *MEMORY[0x277D52E28];
      if (v97 == 1)
      {
        v101 = v99;
      }

      else
      {
        v101 = v100;
      }

      v102 = v139;
      v98(v164, v101, v139);
      v103 = v140;
      sub_20C59DDFC();
      v174 = v95;
      v169 = v96;
      v104 = v96(v103, 1, v95);
      sub_20C477B50(v103, &qword_27C7C44C0);
      if (v104 == 1)
      {
        v105 = v99;
      }

      else
      {
        v105 = v100;
      }

      v180(v165, v105, v102);
      v106 = sub_20C59E43C();
      (*(*(v106 - 8) + 56))(v146, 1, 1, v106);
      v175 = sub_20C59D7AC();
      v180 = v2;
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24]);
      sub_20C59F6EC();
      v107 = sub_20C59E31C();
      v109 = v108;
      if (v107 != sub_20C59E31C() || v109 != v110)
      {
        LODWORD(v178) = sub_20C5A0E9C();
      }

      (*(v143 + 16))(v166, v180 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v144);
      sub_20C59D7BC();

      v111 = v142;
      sub_20C59DDFC();
      v112 = v174;
      if ((v169)(v111, 1, v174) == 1)
      {
        sub_20C477B50(v111, &qword_27C7C44C0);
      }

      else
      {
        sub_20C59E48C();
        (*(v162 + 1))(v111, v112);
      }

      (*(v171 + 16))(v141, v170, v172);
      v113 = sub_20C59E78C();
      (*(*(v113 - 8) + 56))(v147, 1, 1, v113);
      v114 = v148;
      sub_20C59DE9C();
      v179 = *(v167 + 16);
      (v179)(v145, v114, v168);
      v115 = sub_20C59E40C();
      (*(*(v115 - 8) + 56))(v149, 1, 1, v115);
      v116 = v150;
      static MetricEnvironment.current()();
      v117 = sub_20C59E2AC();
      (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
      (*(*(v118 - 8) + 56))(v151, 1, 1, v118);
      v119 = sub_20C59E5EC();
      (*(*(v119 - 8) + 56))(v152, 1, 1, v119);
      v120 = v153;
      sub_20C59E16C();
      swift_getObjectType();
      v121 = v154;
      v122 = v156;
      v123 = v155;
      (*(v154 + 16))(v156, v120, v155);
      sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
      sub_20C59F5FC();
      sub_20C4E16E4(v122, type metadata accessor for MetricPlayStreamOccurred);
      v124 = sub_20C59D7AC();
      v126 = v125;
      v127 = v160;
      v128 = v168;
      (v179)(v160, v114, v168);
      v129 = v158;
      sub_20C59D45C();
      sub_20C59D3DC();
      v131 = v130;
      (*(v159 + 8))(v129, v161);
      started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      *(v127 + *(started + 20)) = v131;
      (*(*(started - 8) + 56))(v127, 0, 1, started);
      swift_beginAccess();
      sub_20C52651C(v127, v124, v126);
      swift_endAccess();
      (*(v121 + 8))(v120, v123);
      (*(v167 + 8))(v114, v128);
      (*(v171 + 8))(v170, v172);
      v89 = v181;
      return sub_20C4E16E4(v89, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    }

    v83 = v134;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A08AC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Previous seek extended beyond start time of current music track, not posting music track started for timeline event";
      goto LABEL_22;
    }
  }

  v71(v83, v70);
  v89 = v72;
  return sub_20C4E16E4(v89, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t sub_20C4D937C(uint64_t a1)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v66 - v4;
  v5 = sub_20C59D7DC();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A01CC();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v68 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) == 3 && (sub_20C4C9020() & 1) != 0)
  {
    sub_20C59FE3C();
    v26 = sub_20C5A01BC();
    v27 = sub_20C5A088C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20C472000, v26, v27, "MetricPlaybackTracker Disabled", v28, 2u);
      MEMORY[0x20F2FFF90](v28, -1, -1);
    }

    return (*(v73 + 8))(v11, v74);
  }

  v30 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  sub_20C4775E4(v2 + v30, v21, &qword_27C7C4E00);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20C477B50(v21, &qword_27C7C4E00);
LABEL_13:
    sub_20C59FE3C();
    v50 = sub_20C5A01BC();
    v51 = sub_20C5A089C();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v73;
    v53 = v74;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20C472000, v50, v51, "Received music track end event before any plack back events or last playback state was not playing", v55, 2u);
      MEMORY[0x20F2FFF90](v55, -1, -1);
    }

    return (*(v54 + 8))(v14, v53);
  }

  sub_20C4E1680(v21, v25);
  v31 = v25[4];
  LODWORD(v75) = *v25;
  BYTE4(v75) = v31;
  v76 = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if ((sub_20C59DA7C() & 1) == 0)
  {
    sub_20C4E16E4(v25, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    goto LABEL_13;
  }

  v32 = v72;
  sub_20C59D7CC();
  v34 = v33;
  sub_20C59D7BC();
  v36 = v34 + v35;
  sub_20C59DE1C();
  if (v36 < v37)
  {
    sub_20C59FE3C();
    v38 = v70;
    v39 = v71;
    (*(v70 + 16))(v7, v32, v71);
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66 = v42;
      v67 = swift_slowAlloc();
      v75 = v67;
      *v42 = 136446210;
      sub_20C4E2084(&qword_27C7C4F80, MEMORY[0x277D4FEC8]);
      v43 = sub_20C5A0E6C();
      v44 = v39;
      v46 = v45;
      (*(v38 + 8))(v7, v44);
      v47 = sub_20C479640(v43, v46, &v75);

      v48 = v66;
      *(v66 + 1) = v47;
      _os_log_impl(&dword_20C472000, v40, v41, "Received musicTrackStopped for track: %{public}s", v48, 0xCu);
      v49 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x20F2FFF90](v49, -1, -1);
      MEMORY[0x20F2FFF90](v48, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v7, v39);
    }

    v56 = v74;
    v57 = *(v73 + 8);
    v57(v18, v74);
    if (*(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking))
    {
      v58 = v68;
      sub_20C59FE3C();
      v59 = sub_20C5A01BC();
      v60 = sub_20C5A08AC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_20C472000, v59, v60, "Currently seeking, not posting music track stopped for timeline event", v61, 2u);
        MEMORY[0x20F2FFF90](v61, -1, -1);
      }

      v57(v58, v56);
    }

    else
    {
      sub_20C59D7CC();
      sub_20C59D7BC();
      sub_20C59D7BC();
      v62 = *MEMORY[0x277D52B78];
      v63 = sub_20C59E78C();
      v64 = *(v63 - 8);
      v65 = v69;
      (*(v64 + 104))(v69, v62, v63);
      (*(v64 + 56))(v65, 0, 1, v63);
      sub_20C4DB4B0(v32, 2, 0, 0, v65);
      sub_20C477B50(v65, &qword_27C7C4F58);
    }
  }

  return sub_20C4E16E4(v25, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t sub_20C4D9BD0(uint64_t a1)
{
  v186 = a1;
  v176 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v176);
  v175 = v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C59E13C();
  MEMORY[0x28223BE20](v3 - 8);
  v174 = v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v5 - 8);
  v171 = v141 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = v141 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v9 - 8);
  v168 = v141 - v10;
  v173 = sub_20C59E18C();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v170 = v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  MEMORY[0x28223BE20](v12 - 8);
  v164 = v141 - v13;
  v161 = sub_20C59E80C();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v163 = v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_20C59E0BC();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v185 = v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v16 - 8);
  v184 = v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v157 = v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v155 = v141 - v22;
  MEMORY[0x28223BE20](v21);
  v151 = v141 - v23;
  v154 = sub_20C59E7FC();
  v153 = *(v154 - 8);
  v24 = MEMORY[0x28223BE20](v154);
  v183 = v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v182 = v141 - v26;
  v150 = sub_20C59E95C();
  v149 = *(v150 - 1);
  MEMORY[0x28223BE20](v150);
  v181 = v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_20C59DEBC();
  v166 = *(v167 - 8);
  v28 = MEMORY[0x28223BE20](v167);
  v162 = v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v165 = v141 - v30;
  v180 = sub_20C5A01CC();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v156 = v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v177 = v141 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = v141 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F78);
  v40 = v39 - 8;
  MEMORY[0x28223BE20](v39);
  v42 = v141 - v41;
  v43 = sub_20C59D7DC();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v148 = v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v146 = v141 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v147 = v141 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = v141 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = v141 - v55;
  MEMORY[0x28223BE20](v54);
  v188 = v141 - v57;
  v58 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  swift_beginAccess();
  v59 = *(v40 + 56);
  v189 = v1;
  v152 = v58;
  sub_20C4775E4(v1 + v58, v42, &qword_27C7C4E58);
  v190 = v59;
  v60 = &v42[v59];
  v61 = v43;
  v62 = v44;
  sub_20C4775E4(v186, v60, &qword_27C7C4E58);
  v64 = v44 + 48;
  v63 = *(v44 + 48);
  v65 = v63(v42, 1, v61);
  v187 = v61;
  if (v65 != 1)
  {
    sub_20C4775E4(v42, v38, &qword_27C7C4E58);
    if (v63(&v42[v190], 1, v61) == 1)
    {
      (*(v62 + 8))(v38, v61);
      goto LABEL_6;
    }

    v145 = v63;
    v73 = v177;
    sub_20C4775E4(&v42[v190], v177, &qword_27C7C4E58);
    v186 = v62;
    v74 = *(v62 + 16);
    v142 = v38;
    v74(v56, v38, v61);
    v75 = v73;
    v76 = v62 + 16;
    v144 = v74;
    v74(v53, v75, v61);
    v77 = sub_20C59D7AC();
    v79 = v78;
    if (v77 == sub_20C59D7AC() && v79 == v80)
    {
    }

    else
    {
      v81 = sub_20C5A0E9C();

      if ((v81 & 1) == 0)
      {
        v141[1] = v76;
        v128 = v186;
        v129 = v187;
        v130 = *(v186 + 8);
        v130(v53, v187);
        v143 = v130;
        v130(v56, v129);
        v131 = *(v128 + 32);
        v132 = v147;
        v131(v147, v142, v129);
        v133 = v146;
        v131(v146, v177, v129);
        v134 = sub_20C59D7AC();
        v136 = v135;
        if (v134 == sub_20C59D7AC() && v136 == v137)
        {
        }

        else
        {
          v138 = sub_20C5A0E9C();

          if ((v138 & 1) == 0)
          {
            v179 = v64;
            LODWORD(v180) = v65;
            v144(v188, v133, v129);
            sub_20C59D7CC();
            v140 = v143;
            v143(v133, v129);
            v140(v132, v129);
            v67 = v189;
            v178 = *(v189 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition);
            goto LABEL_14;
          }
        }

        v139 = v143;
        v143(v133, v129);
        v139(v132, v129);
        goto LABEL_6;
      }
    }

    v179 = v64;
    LODWORD(v180) = v65;
    v82 = v187;
    v144(v188, v56, v187);
    sub_20C59D7CC();
    v83 = *(v186 + 8);
    v83(v53, v82);
    v83(v56, v82);
    v67 = v189;
    v178 = *(v189 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition);
    v83(v177, v82);
    v143 = v83;
    v83(v142, v82);
LABEL_14:
    sub_20C477B50(&v42[v190], &qword_27C7C4E58);
    goto LABEL_15;
  }

  if (v63(&v42[v190], 1, v61) != 1)
  {
    v145 = v63;
    v179 = v64;
    LODWORD(v180) = 1;
    v66 = v148;
    (*(v62 + 32))(v148, &v42[v190], v61);
    v144 = *(v62 + 16);
    v144(v188, v66, v61);
    sub_20C59D7CC();
    v186 = v62;
    v143 = *(v62 + 8);
    v143(v66, v61);
    v178 = 0;
    v67 = v189;
LABEL_15:
    sub_20C477B50(v42, &qword_27C7C4E58);
    LODWORD(v177) = sub_20C4C9020();
    v84 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v149 + 2))(v181, v67 + v84, v150);
    v85 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
    v86 = v151;
    sub_20C59DDFC();
    v87 = sub_20C59E49C();
    v147 = *(v87 - 8);
    v88 = *(v147 + 6);
    LODWORD(v190) = 1;
    LODWORD(v84) = v88(v86, 1, v87);
    sub_20C477B50(v86, &qword_27C7C44C0);
    v89 = *(v153 + 104);
    v149 = v89;
    v90 = *MEMORY[0x277D52E30];
    v91 = *MEMORY[0x277D52E28];
    if (v84 == 1)
    {
      v92 = v90;
    }

    else
    {
      v92 = v91;
    }

    v93 = v154;
    v89(v182, v92, v154);
    v151 = v85;
    v94 = v155;
    sub_20C59DDFC();
    v153 = v87;
    v150 = v88;
    v95 = v88(v94, 1, v87);
    v96 = v189;
    sub_20C477B50(v94, &qword_27C7C44C0);
    if (v95 == 1)
    {
      v97 = v90;
    }

    else
    {
      v97 = v91;
    }

    v149(v183, v97, v93);
    v98 = sub_20C59E43C();
    (*(*(v98 - 8) + 56))(v184, 1, 1, v98);
    v155 = sub_20C59D7AC();
    v154 = v99;
    __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v96 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v100 = sub_20C59E31C();
    v102 = v101;
    if (v100 != sub_20C59E31C() || v102 != v103)
    {
      LODWORD(v190) = sub_20C5A0E9C();
    }

    (*(v158 + 16))(v185, v96 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v159);
    sub_20C59D7BC();
    v104 = *(v96 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8);
    v159 = *(v96 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
    v158 = v104;

    v105 = v157;
    sub_20C59DDFC();
    v106 = v153;
    if (v150(v105, 1, v153) == 1)
    {
      sub_20C477B50(v105, &qword_27C7C44C0);
      v151 = 0;
      v150 = 0;
    }

    else
    {
      v151 = sub_20C59E48C();
      v150 = v107;
      (*(v147 + 1))(v105, v106);
    }

    v108 = v187;
    v109 = v156;
    sub_20C4775E4(v96 + v152, v156, &qword_27C7C4E58);
    if (v145(v109, 1, v108))
    {
      sub_20C477B50(v109, &qword_27C7C4E58);
    }

    else
    {
      v110 = v186;
      v111 = v148;
      v144(v148, v109, v108);
      sub_20C477B50(v109, &qword_27C7C4E58);
      sub_20C59D7AC();
      v186 = v110;
      v143(v111, v108);
    }

    (*(v160 + 104))(v163, *MEMORY[0x277D52E48], v161);
    v112 = *MEMORY[0x277D52B68];
    v113 = sub_20C59E78C();
    v114 = *(v113 - 8);
    v115 = v164;
    (*(v114 + 104))(v164, v112, v113);
    (*(v114 + 56))(v115, 0, 1, v113);
    v116 = v165;
    sub_20C59DE9C();
    v117 = v166;
    v118 = v167;
    (*(v166 + 16))(v162, v116, v167);
    v119 = sub_20C59E40C();
    (*(*(v119 - 8) + 56))(v168, 1, 1, v119);
    v120 = v169;
    static MetricEnvironment.current()();
    v121 = sub_20C59E2AC();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
    (*(*(v122 - 8) + 56))(v171, 1, 1, v122);
    v123 = sub_20C59E5EC();
    (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
    v124 = v170;
    sub_20C59E16C();
    swift_getObjectType();
    v125 = v172;
    v126 = v175;
    v127 = v173;
    (*(v172 + 16))(v175, v124, v173);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v126, type metadata accessor for MetricPlayStreamOccurred);
    (*(v125 + 8))(v124, v127);
    (*(v117 + 8))(v116, v118);
    return (*(v186 + 8))(v188, v187);
  }

LABEL_6:
  v68 = v178;
  sub_20C59FE3C();
  v69 = sub_20C5A01BC();
  v70 = sub_20C5A08AC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_20C472000, v69, v70, "No music track playing at end of seek, not posting event", v71, 2u);
    MEMORY[0x20F2FFF90](v71, -1, -1);
  }

  (*(v179 + 8))(v68, v180);
  sub_20C477B50(&v42[v190], &qword_27C7C4E58);
  return sub_20C477B50(v42, &qword_27C7C4E58);
}

uint64_t sub_20C4DB4B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v148 = a5;
  v149 = a4;
  v150 = a3;
  v151 = a2;
  v160 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v160);
  v159 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C59E13C();
  MEMORY[0x28223BE20](v9 - 8);
  v155 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v11 - 8);
  v154 = &v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v15 - 8);
  v152 = &v125 - v16;
  v158 = sub_20C59E18C();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  MEMORY[0x28223BE20](v18 - 8);
  v146 = &v125 - v19;
  v143 = sub_20C59E80C();
  v142 = *(v143 - 8);
  v20 = MEMORY[0x28223BE20](v143);
  v126 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v145 = &v125 - v22;
  v139 = sub_20C59E0BC();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v166 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v24 - 8);
  v165 = &v125 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v137 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v130 = &v125 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v125 - v31;
  v129 = sub_20C59E7FC();
  v128 = *(v129 - 8);
  v33 = MEMORY[0x28223BE20](v129);
  v164 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v163 = &v125 - v35;
  v127 = sub_20C59E95C();
  v36 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v162 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C59DEBC();
  v169 = *(v38 - 8);
  v170 = v38;
  v39 = MEMORY[0x28223BE20](v38);
  v144 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v147 = &v125 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F68);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v140 = &v125 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v136 = &v125 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v134 = &v125 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v125 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v141 = &v125 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v125 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v125 - v57;
  v168 = a1;
  v59 = sub_20C59D7AC();
  v61 = v60;
  v62 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap;
  swift_beginAccess();
  v171 = v50;
  v172 = v6;
  v63 = *(v6 + v62);
  v64 = *(v63 + 16);
  v167 = v58;
  if (v64)
  {

    v65 = sub_20C4820C8(v59, v61);
    v67 = v66;

    if (v67)
    {
      v68 = *(v63 + 56);
      started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      v70 = *(started - 8);
      v71 = v68 + *(v70 + 72) * v65;
      v72 = started;
      v58 = v167;
      sub_20C4E1744(v71, v167, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);

      (*(v70 + 56))(v58, 0, 1, v72);
      v50 = v171;
    }

    else
    {

      v72 = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      v58 = v167;
      (*(*(v72 - 8) + 56))(v167, 1, 1, v72);
    }
  }

  else
  {

    v72 = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    (*(*(v72 - 8) + 56))(v58, 1, 1, v72);
  }

  v73 = v170;
  sub_20C4775E4(v58, v56, &qword_27C7C4F70);
  type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  v74 = *(v72 - 8);
  v132 = *(v74 + 48);
  v131 = v74 + 48;
  v75 = v132(v56, 1, v72);
  v135 = v72;
  if (v75 == 1)
  {
    sub_20C477B50(v56, &qword_27C7C4F70);
    v76 = 1;
    v77 = v169;
  }

  else
  {
    v77 = v169;
    (*(v169 + 16))(v50, v56, v73);
    sub_20C4E16E4(v56, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);
    v76 = 0;
  }

  v78 = *(v77 + 56);
  v161 = 1;
  v78(v50, v76, 1, v73);
  v79 = v172;
  v133 = sub_20C4C9020();
  v80 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  (*(v36 + 16))(v162, v79 + v80, v127);
  v81 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  sub_20C59DDFC();
  v82 = sub_20C59E49C();
  v125 = *(v82 - 8);
  v83 = *(v125 + 48);
  LODWORD(v80) = v83(v32, 1, v82);
  sub_20C477B50(v32, &qword_27C7C44C0);
  v84 = *MEMORY[0x277D52E30];
  v85 = *MEMORY[0x277D52E28];
  if (v80 == 1)
  {
    v86 = v84;
  }

  else
  {
    v86 = v85;
  }

  v87 = *(v128 + 104);
  v88 = v129;
  v87(v163, v86, v129);
  v127 = v81;
  v89 = v130;
  sub_20C59DDFC();
  v128 = v82;
  v90 = v83(v89, 1, v82);
  sub_20C477B50(v89, &qword_27C7C44C0);
  if (v90 == 1)
  {
    v91 = v84;
  }

  else
  {
    v91 = v85;
  }

  v87(v164, v91, v88);
  v92 = sub_20C59E43C();
  (*(*(v92 - 8) + 56))(v165, 1, 1, v92);
  v130 = sub_20C59D7AC();
  v129 = v93;
  __swift_project_boxed_opaque_existential_1((v172 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v172 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
  sub_20C59F6EC();
  v94 = sub_20C59E31C();
  v96 = v95;
  if (v94 != sub_20C59E31C() || v96 != v97)
  {
    v161 = sub_20C5A0E9C();
  }

  v98 = v172;
  (*(v138 + 16))(v166, v172 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v139);
  sub_20C59D7BC();
  v139 = *(v98 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);

  v99 = v137;
  sub_20C59DDFC();
  v100 = v128;
  if (v83(v99, 1, v128) == 1)
  {
    sub_20C477B50(v99, &qword_27C7C44C0);
    v138 = 0;
  }

  else
  {
    v138 = sub_20C59E48C();
    (*(v125 + 8))(v99, v100);
  }

  v102 = v169;
  v101 = v170;
  v103 = v134;
  sub_20C4775E4(v171, v134, &qword_27C7C4F68);
  v104 = *(v102 + 48);
  if (v104(v103, 1, v101) == 1)
  {
    sub_20C477B50(v103, &qword_27C7C4F68);
  }

  else
  {
    sub_20C59DE8C();
    (*(v102 + 8))(v103, v101);
  }

  v105 = v136;
  sub_20C4775E4(v171, v136, &qword_27C7C4F68);
  if (v104(v105, 1, v101) == 1)
  {
    sub_20C477B50(v105, &qword_27C7C4F68);
  }

  else
  {
    sub_20C59DEAC();
    (*(v102 + 8))(v105, v101);
  }

  v106 = v140;
  sub_20C4775E4(v171, v140, &qword_27C7C4F68);
  if (v104(v106, 1, v101) == 1)
  {
    sub_20C477B50(v106, &qword_27C7C4F68);
    (*(v142 + 104))(v145, *MEMORY[0x277D52E50], v143);
  }

  else
  {
    v107 = v126;
    sub_20C59DE6C();
    (*(v169 + 8))(v106, v101);
    (*(v142 + 32))(v145, v107, v143);
  }

  v108 = v135;
  v109 = v141;
  sub_20C4775E4(v167, v141, &qword_27C7C4F70);
  if (v132(v109, 1, v108) == 1)
  {
    sub_20C477B50(v109, &qword_27C7C4F70);
  }

  else
  {
    sub_20C4E16E4(v109, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);
  }

  sub_20C4775E4(v148, v146, &qword_27C7C4F58);

  v110 = v147;
  sub_20C59DE9C();
  v111 = v169;
  (*(v169 + 16))(v144, v110, v170);
  v112 = sub_20C59E40C();
  (*(*(v112 - 8) + 56))(v152, 1, 1, v112);
  v113 = v153;
  static MetricEnvironment.current()();
  v114 = sub_20C59E2AC();
  (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
  (*(*(v115 - 8) + 56))(v154, 1, 1, v115);
  v116 = sub_20C59E5EC();
  (*(*(v116 - 8) + 56))(v155, 1, 1, v116);
  v117 = v156;
  sub_20C59E16C();
  swift_getObjectType();
  v118 = v157;
  v119 = v159;
  v120 = v158;
  (*(v157 + 16))(v159, v117, v158);
  sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
  sub_20C59F5FC();
  sub_20C4E16E4(v119, type metadata accessor for MetricPlayStreamOccurred);
  v121 = sub_20C59D7AC();
  v123 = v122;
  swift_beginAccess();
  sub_20C54F224(&v173, v121, v123);
  swift_endAccess();

  (*(v118 + 8))(v117, v120);
  (*(v111 + 8))(v110, v170);
  sub_20C477B50(v171, &qword_27C7C4F68);
  return sub_20C477B50(v167, &qword_27C7C4F70);
}

uint64_t sub_20C4DCA74(uint64_t a1)
{
  v204 = sub_20C59D7DC();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v4 = v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for MetricPlayStreamOccurred();
  MEMORY[0x28223BE20](v230);
  v229 = v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C59E13C();
  MEMORY[0x28223BE20](v6 - 8);
  v228 = v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v8 - 8);
  v227 = v193 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v10 - 8);
  v226 = v193 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v12 - 8);
  v225 = v193 - v13;
  v246 = sub_20C59E18C();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_20C59E80C();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v240 = v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_20C59E0BC();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v239 = v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v17 - 8);
  v238 = v193 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v218 = v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v216 = v193 - v23;
  MEMORY[0x28223BE20](v22);
  v213 = v193 - v24;
  v215 = sub_20C59E7FC();
  v214 = *(v215 - 8);
  v25 = MEMORY[0x28223BE20](v215);
  v237 = v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v236 = v193 - v27;
  v212 = sub_20C59E95C();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v235 = v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  v29 = MEMORY[0x28223BE20](v250);
  v221 = v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v217 = v193 - v32;
  MEMORY[0x28223BE20](v31);
  v210 = v193 - v33;
  v233 = sub_20C59D63C();
  v232 = *(v233 - 8);
  v34 = MEMORY[0x28223BE20](v233);
  v202 = v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v201 = v193 - v37;
  MEMORY[0x28223BE20](v36);
  v200 = v193 - v38;
  v243 = sub_20C59DEBC();
  v242 = *(v243 - 8);
  v39 = MEMORY[0x28223BE20](v243);
  v222 = v193 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v241 = v193 - v41;
  v208 = sub_20C59D96C();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v206 = v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C5A01CC();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v252 = v193 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v249 = v193 - v48;
  MEMORY[0x28223BE20](v47);
  v209 = v193 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v234 = v193 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = v193 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  MEMORY[0x28223BE20](v55 - 8);
  v247 = v193 - v56;
  v248 = sub_20C59ECFC();
  v251 = *(v248 - 8);
  v57 = MEMORY[0x28223BE20](v248);
  v205 = v193 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v231 = (v193 - v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = v193 - v61;
  v63 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v64 = *(v63 - 8);
  result = MEMORY[0x28223BE20](v63);
  v67 = v193 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) == 3)
  {
    v69 = v44;
    v70 = v43;
    v71 = a1;
    v72 = v63;
    v73 = v193 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v54;
    v75 = v68;
    result = sub_20C4C9020();
    v68 = v75;
    v54 = v74;
    v67 = v73;
    v63 = v72;
    a1 = v71;
    v43 = v70;
    v44 = v69;
    if (result)
    {
      v76 = v252;
      sub_20C59FE3C();
      v77 = sub_20C5A01BC();
      v78 = sub_20C5A088C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        v80 = "MetricPlaybackTracker Disabled";
LABEL_9:
        _os_log_impl(&dword_20C472000, v77, v78, v80, v79, 2u);
        MEMORY[0x20F2FFF90](v79, -1, -1);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) != 5)
  {
    return result;
  }

  v252 = v68;
  v81 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v199 = v1;
  sub_20C4775E4(v1 + v81, v62, &qword_27C7C4E00);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_20C477B50(v62, &qword_27C7C4E00);
    v76 = v249;
    sub_20C59FE3C();
    v77 = sub_20C5A01BC();
    v78 = sub_20C5A088C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      v80 = "Playback transitioning from not playing to termination is not a valid transition";
      goto LABEL_9;
    }

LABEL_10:

    return (*(v44 + 8))(v76, v43);
  }

  sub_20C4E1680(v62, v67);
  if (sub_20C59D95C() & 0x100000000) != 0 && ((v194 = v44, v195 = v43, LODWORD(v249) = sub_20C59D93C(), v196 = sub_20C59D93C(), v83 = *v67, v84 = v67[4], v85 = *(v63 + 36), sub_20C4775E4(&v67[v85], v247, &qword_27C7C4F00), LOBYTE(v254) = v84, v193[1] = v83, v86 = v231, sub_20C59EC6C(), v87 = sub_20C59ECDC(), v88 = *(v251 + 8), v251 += 8, v231 = v88, v88(v86, v248), LODWORD(v254) = v87, BYTE4(v254) = BYTE4(v87) & 1, v253 = 0, sub_20C4A24A0(), sub_20C4A24F4(), (sub_20C59DA7C()) || (LODWORD(v254) = v87, BYTE4(v254) = BYTE4(v87) & 1, v253 = 2, v98 = sub_20C59DA7C(), v249 != v196) || (v98))
  {
    v193[0] = v63;
    sub_20C4775E4(&v67[v85], v247, &qword_27C7C4F00);
    LOBYTE(v254) = v84;
    v89 = v205;
    sub_20C59EC6C();
    v90 = a1;
    sub_20C59D92C();
    v92 = v91;
    sub_20C59EC8C();
    v94 = v93;
    v95 = sub_20C59ECDC();
    LODWORD(v254) = v95;
    BYTE4(v254) = BYTE4(v95) & 1;
    v253 = 0;
    if (sub_20C59DA7C())
    {
      sub_20C59EC7C();
      v97 = v92 - v94 + v96;
    }

    else
    {
      sub_20C59EC7C();
      v97 = v99;
    }

    v100 = v199;
    v101 = v207;
    v102 = v206;
    v231(v89, v248);
    v103 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
    sub_20C59DE1C();
    if (v249 == v196 && v104 - v97 > 0.5)
    {
      v105 = *MEMORY[0x277D52B80];
      v106 = sub_20C59E78C();
      v107 = *(v106 - 8);
      (*(v107 + 104))(v54, v105, v106);
      (*(v107 + 56))(v54, 0, 1, v106);
      v108 = v90;
    }

    else
    {
      v108 = v90;
      sub_20C4B22AC(v54);
    }

    v109 = v209;
    v110 = v208;
    sub_20C59FE3C();
    (*(v101 + 16))(v102, v108, v110);
    v111 = v102;
    v112 = sub_20C5A01BC();
    v113 = sub_20C5A08AC();
    v114 = os_log_type_enabled(v112, v113);
    v198 = v54;
    v197 = v67;
    if (v114)
    {
      v115 = swift_slowAlloc();
      v251 = v103;
      v116 = v110;
      v117 = v115;
      v249 = swift_slowAlloc();
      v254 = v249;
      *v117 = 136446210;
      sub_20C4E2084(&qword_27C7C4F60, MEMORY[0x277D50140]);
      v118 = sub_20C5A0E6C();
      v120 = v119;
      (*(v101 + 8))(v111, v116);
      v121 = sub_20C479640(v118, v120, &v254);

      *(v117 + 4) = v121;
      _os_log_impl(&dword_20C472000, v112, v113, "Received session terminated for termination: %{public}s", v117, 0xCu);
      v122 = v249;
      __swift_destroy_boxed_opaque_existential_1Tm(v249);
      MEMORY[0x20F2FFF90](v122, -1, -1);
      MEMORY[0x20F2FFF90](v117, -1, -1);
    }

    else
    {

      (*(v101 + 8))(v111, v110);
    }

    (*(v194 + 8))(v109, v195);
    v123 = v212;
    v124 = v211;
    v125 = v210;
    v249 = sub_20C4C96BC();
    v248 = sub_20C4C98D8();
    LODWORD(v247) = *(v100 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType);
    v126 = *(v100 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8);
    v212 = *(v100 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
    v127 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
    swift_beginAccess();
    sub_20C4E1744(v100 + v127, v125, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v231 = v126;
    v208 = v127;
    if (EnumCaseMultiPayload)
    {

      sub_20C4E16E4(v125, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
      v211 = 0;
      v210 = 0;
    }

    else
    {
      v129 = v232;
      v130 = v200;
      v131 = v125;
      v132 = v233;
      (*(v232 + 32))(v200, v131, v233);
      v211 = sub_20C59D51C();
      v210 = v133;
      v134 = *(v129 + 8);

      v134(v130, v132);
    }

    LODWORD(v209) = sub_20C4C9020();
    v135 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v124 + 16))(v235, v100 + v135, v123);
    v136 = v213;
    sub_20C59DDFC();
    v137 = sub_20C59E49C();
    v200 = *(v137 - 8);
    v138 = *(v200 + 6);
    LODWORD(v251) = 1;
    v139 = v138(v136, 1, v137);
    sub_20C477B50(v136, &qword_27C7C44C0);
    v140 = *(v214 + 104);
    v214 = v140;
    v141 = *MEMORY[0x277D52E30];
    v142 = *MEMORY[0x277D52E28];
    if (v139 == 1)
    {
      v143 = v141;
    }

    else
    {
      v143 = v142;
    }

    v144 = v215;
    v140(v236, v143, v215);
    v145 = v216;
    sub_20C59DDFC();
    v207 = v137;
    v206 = v138;
    v146 = v138(v145, 1, v137);
    sub_20C477B50(v145, &qword_27C7C44C0);
    if (v146 == 1)
    {
      v147 = v141;
    }

    else
    {
      v147 = v142;
    }

    v148 = v199;
    (v214)(v237, v147, v144);
    v216 = sub_20C59DD5C();
    v215 = v149;
    v150 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
    swift_beginAccess();
    sub_20C4775E4(v148 + v150, v238, &qword_27C7C4E10);
    v214 = sub_20C59DD5C();
    v213 = v151;
    __swift_project_boxed_opaque_existential_1((v148 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v148 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v152 = sub_20C59E31C();
    v154 = v153;
    if (v152 != sub_20C59E31C() || v154 != v155)
    {
      LODWORD(v251) = sub_20C5A0E9C();
    }

    (*(v219 + 16))(v239, v148 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v220);
    sub_20C59DE1C();
    v156 = *(v148 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8);
    v220 = *(v148 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
    v219 = v156;

    v157 = v218;
    sub_20C59DDFC();
    v158 = v207;
    v159 = (v206)(v157, 1, v207);
    v160 = v198;
    v161 = v208;
    if (v159 == 1)
    {
      sub_20C477B50(v157, &qword_27C7C44C0);
      v206 = 0;
      v205 = 0;
    }

    else
    {
      v206 = sub_20C59E48C();
      v205 = v162;
      (*(v200 + 1))(v157, v158);
    }

    v163 = v217;
    v164 = v234;
    sub_20C4E1744(v148 + v161, v217, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v165 = v232;
      v166 = v201;
      v167 = v163;
      v168 = v233;
      (*(v232 + 32))(v201, v167, v233);
      sub_20C59D51C();
      (*(v165 + 8))(v166, v168);
    }

    else
    {
      sub_20C4E16E4(v163, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v169 = v228;
    v170 = v227;
    (*(v223 + 16))(v240, &v197[*(v193[0] + 24)], v224);
    sub_20C4775E4(v160, v164, &qword_27C7C4F58);
    v171 = v221;
    sub_20C4E1744(v199 + v161, v221, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v172 = v232;
      v173 = v202;
      v174 = v233;
      (*(v232 + 32))(v202, v171, v233);
      sub_20C59D51C();
      (*(v172 + 8))(v173, v174);
    }

    else
    {
      sub_20C4E16E4(v171, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v175 = v241;
    sub_20C59DE9C();
    (*(v242 + 16))(v222, v175, v243);
    v176 = sub_20C59E40C();
    (*(*(v176 - 8) + 56))(v225, 1, 1, v176);
    v177 = v226;
    static MetricEnvironment.current()();
    v178 = sub_20C59E2AC();
    (*(*(v178 - 8) + 56))(v177, 0, 1, v178);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
    (*(*(v179 - 8) + 56))(v170, 1, 1, v179);
    v180 = sub_20C59E5EC();
    (*(*(v180 - 8) + 56))(v169, 1, 1, v180);
    v181 = v244;
    sub_20C59E16C();
    swift_getObjectType();
    v182 = v229;
    (*(v245 + 16))(v229, v181, v246);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v182, type metadata accessor for MetricPlayStreamOccurred);
    v183 = sub_20C4CD2C0(v97);
    v184 = *(v183 + 16);
    if (v184)
    {
      v185 = *(v203 + 16);
      v186 = *(v203 + 80);
      v251 = v183;
      v187 = v183 + ((v186 + 32) & ~v186);
      v188 = *(v203 + 72);
      v189 = (v203 + 8);
      v190 = v204;
      v191 = v252;
      v192 = v198;
      do
      {
        v185(v191, v187, v190);
        sub_20C59D7CC();
        sub_20C4DB4B0(v252, 2, 0, 0, v192);
        v191 = v252;
        (*v189)(v252, v190);
        v187 += v188;
        --v184;
      }

      while (v184);
    }

    (*(v245 + 8))(v244, v246);
    (*(v242 + 8))(v241, v243);
    sub_20C477B50(v198, &qword_27C7C4F58);
    v82 = v197;
  }

  else
  {
    v82 = v67;
  }

  return sub_20C4E16E4(v82, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t MetricPlaybackTracker.deinit()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v2 = sub_20C59DE3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v4 = sub_20C59E0BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_assetClient);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession, &qword_27C7C4DA8);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric, &qword_27C7C4DC0);
  sub_20C4E16E4(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v5 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  v6 = sub_20C59E95C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection, &qword_27C7C4DE0);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric, &qword_27C7C4DF0);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo, &qword_27C7C4E00);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus, &qword_27C7C4E10);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode, &qword_27C7C4E20);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection, &qword_27C7C4E30);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection, &qword_27C7C4688);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack, &qword_27C7C4E58);
  sub_20C490918(*(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition));
  return v0;
}

uint64_t MetricPlaybackTracker.__deallocating_deinit()
{
  MetricPlaybackTracker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_20C4DECB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C59EA9C();
}

uint64_t sub_20C4DED54(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);

  return sub_20C49B78C(v6, 0);
}

void sub_20C4DEDF0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20C5A0B3C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5058);
      v3 = sub_20C5A0BDC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20C5A0B3C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F2FF0E0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20C5A09AC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_20C4E2140();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_20C5A09BC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_20C5A09AC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_20C4E2140();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_20C5A09BC();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20C4DF0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B10);
    v3 = sub_20C5A0BDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20C5A0FBC();

      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20C5A0E9C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20C4DF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = v9;
  v121 = a8;
  v120 = a7;
  v119 = a6;
  v140 = a5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AB0);
  v128 = *(v130 - 8);
  v16 = MEMORY[0x28223BE20](v130);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v17;
  MEMORY[0x28223BE20](v16);
  v124 = &v114 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v114 - v19;
  v20 = sub_20C59DE3C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v23;
  MEMORY[0x28223BE20](v22);
  v118 = &v114 - v24;
  v117 = sub_20C5A01CC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
  v27 = sub_20C59E1EC();
  (*(*(v27 - 8) + 56))(v10 + v26, 1, 1, v27);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType) = 2;
  v28 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric;
  v30 = sub_20C59DB1C();
  (*(*(v30 - 8) + 56))(v10 + v29, 1, 1, v30);
  type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  swift_storeEnumTagMultiPayload();
  v31 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  v32 = *MEMORY[0x277D53190];
  v33 = sub_20C59E95C();
  (*(*(v33 - 8) + 104))(v10 + v31, v32, v33);
  v34 = v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedStartTime;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 5;
  v35 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection;
  v36 = sub_20C59E7EC();
  (*(*(v36 - 8) + 56))(v10 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric;
  v38 = sub_20C59DF8C();
  (*(*(v38 - 8) + 56))(v10 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  v40 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  (*(*(v40 - 8) + 56))(v10 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  v42 = sub_20C59E43C();
  (*(*(v42 - 8) + 56))(v10 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  (*(*(v44 - 8) + 56))(v10 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection;
  v46 = sub_20C59E6EC();
  (*(*(v46 - 8) + 56))(v10 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection;
  v48 = sub_20C59E73C();
  (*(*(v48 - 8) + 56))(v10 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap;
  *(v10 + v49) = sub_20C5894FC(MEMORY[0x277D84F90]);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_reportedStopMusicIDS) = MEMORY[0x277D84FA0];
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking) = 0;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition) = 0;
  v50 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  v51 = sub_20C59D7DC();
  (*(*(v51 - 8) + 56))(v10 + v50, 1, 1, v51);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition) = 0;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp) = 0;
  v52 = v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition;
  *v52 = 0;
  *(v52 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_isPictureInPictureStopping) = 0;
  v53 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition);
  *v53 = 0;
  v53[1] = 0;
  v139 = v21;
  v54 = *(v21 + 16);
  v54(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout, a1, v20);
  v55 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub);
  *v55 = a2;
  v55[1] = a3;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v136 = a2;
  v137 = a3;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_subscriptionToken) = sub_20C59F75C();
  v135 = a4;
  sub_20C477580(a4, v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator);
  sub_20C477580(v140, v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_assetClient);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) = v119;
  v56 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
  v57 = v121;
  *v56 = v120;
  v56[1] = v57;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_startTime) = a9;
  v58 = sub_20C59DE2C();
  v138 = a1;
  v134 = v20;
  v126 = v21 + 16;
  v125 = v54;
  if ((v60 & 1) == 0)
  {
    sub_20C481884(v58, v59, 0);
    v63 = v115;
    sub_20C59FE2C();
    v64 = v118;
    v54(v118, a1, v20);
    v65 = sub_20C5A01BC();
    v66 = sub_20C5A089C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v143 = v121;
      *v67 = 136446210;
      v68 = sub_20C59DE2C();
      v70 = v69;
      v144[0] = v68;
      v144[1] = v69;
      v72 = v71 & 1;
      v145 = v71 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5028);
      sub_20C59DA4C();
      (*(v139 + 8))(v118, v20);
      sub_20C481884(v68, v70, v72);
      v73 = sub_20C479640(v141, v142, &v143);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_20C472000, v65, v66, "Unexpected media type: %{public}s", v67, 0xCu);
      v74 = v121;
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x20F2FFF90](v74, -1, -1);
      MEMORY[0x20F2FFF90](v67, -1, -1);
    }

    else
    {

      (*(v139 + 8))(v64, v20);
    }

    (*(v116 + 8))(v63, v117);
    goto LABEL_11;
  }

  if (v58 <= 1u)
  {
    v61 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
    v62 = MEMORY[0x277D50BF8];
LABEL_12:
    v80 = *v62;
    v77 = sub_20C59E0BC();
    v78 = *(*(v77 - 8) + 104);
    v81 = v10 + v61;
    v82 = v80;
    goto LABEL_13;
  }

  if (v58 != 2)
  {
LABEL_11:
    v61 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
    v62 = MEMORY[0x277D50C00];
    goto LABEL_12;
  }

  v75 = sub_20C59EC4C();
  v76 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v77 = sub_20C59E0BC();
  v78 = *(*(v77 - 8) + 104);
  if (v75 == 2)
  {
    v79 = MEMORY[0x277D50BF8];
  }

  else
  {
    v79 = MEMORY[0x277D50C00];
  }

  v82 = *v79;
  v81 = v10 + v76;
LABEL_13:
  v78(v81, v82, v77);
  __swift_project_boxed_opaque_existential_1(v140, v140[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  *(inited + 32) = sub_20C59DD5C();
  *(inited + 40) = v84;
  sub_20C4DF0BC(inited);
  swift_setDeallocating();
  sub_20C4E1910(inited + 32);
  v85 = v124;
  sub_20C59F16C();

  v86 = swift_allocObject();
  *(v86 + 16) = sub_20C4E1964;
  *(v86 + 24) = v10;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_20C4E1968;
  *(v87 + 24) = v86;
  v88 = v128;
  v89 = v123;
  v90 = v130;
  (*(v128 + 16))(v123, v85, v130);
  v91 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v92 = (v122 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v88 + 32))(v93 + v91, v89, v90);
  v94 = (v93 + v92);
  *v94 = sub_20C4E1994;
  v94[1] = v87;

  v95 = v127;
  sub_20C59EA9C();
  (*(v88 + 8))(v85, v90);
  v96 = v131;
  v97 = sub_20C59EABC();
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  v97(sub_20C4907D4, v98);

  (*(v129 + 8))(v95, v96);
  ObjectType = swift_getObjectType();
  sub_20C59F5AC();
  v100 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_subscriptionToken;
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1A98();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1B24();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F6DC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F57C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F72C();
  swift_allocObject();
  swift_weakInit();
  v131 = ObjectType;
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FC7C();
  v130 = v100;
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F79C();
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = v133;
  v103 = v134;
  v125(v133, v138, v134);
  v104 = v139;
  v105 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v106 = (v132 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  (*(v104 + 32))(v107 + v105, v102, v103);
  *(v107 + v106) = v101;
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  type metadata accessor for MediaPlayerMediaSelectionChanged(0);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E2084(&qword_27C7C4FF8, type metadata accessor for MediaPlayerMediaSelectionChanged);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FABC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FBFC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1D74();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1DE8();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FB1C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F8DC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1E54();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FD4C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FA2C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1EC0();

  sub_20C59F63C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);

  sub_20C59FCAC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();

  sub_20C4E1F24();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  v108 = objc_opt_self();
  v109 = [v108 defaultCenter];
  [v109 addObserver:v10 selector:sel_handleAppBackground name:*MEMORY[0x277D76660] object:0];

  v110 = [v108 defaultCenter];
  v111 = objc_opt_self();

  v112 = [v111 smm_playbackWasInterruptedNotification];
  [v110 addObserver:v10 selector:sel_handlePlaybackInterrupted name:v112 object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  (*(v139 + 8))(v138, v103);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  return v10;
}

void sub_20C4E0C18()
{
  sub_20C59DE3C();
  if (v0 <= 0x3F)
  {
    sub_20C59E0BC();
    if (v1 <= 0x3F)
    {
      sub_20C4E1174(319, &qword_27C7C4EC8, MEMORY[0x277D50FB0]);
      if (v2 <= 0x3F)
      {
        sub_20C4E1174(319, &qword_27C7C4ED0, MEMORY[0x277D50498]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(319);
          if (v4 <= 0x3F)
          {
            sub_20C59E95C();
            if (v5 <= 0x3F)
            {
              sub_20C4E1174(319, &qword_27C7C4ED8, MEMORY[0x277D52DE8]);
              if (v6 <= 0x3F)
              {
                sub_20C4E1174(319, &qword_27C7C4EE0, MEMORY[0x277D50BD0]);
                if (v7 <= 0x3F)
                {
                  sub_20C4E1174(319, &qword_27C7C4EE8, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
                  if (v8 <= 0x3F)
                  {
                    sub_20C4E1174(319, &qword_27C7C4EF0, MEMORY[0x277D51AC8]);
                    if (v9 <= 0x3F)
                    {
                      sub_20C4E11E8();
                      if (v10 <= 0x3F)
                      {
                        sub_20C4E1174(319, &qword_27C7C4F08, MEMORY[0x277D52940]);
                        if (v11 <= 0x3F)
                        {
                          sub_20C4E1174(319, &qword_27C7C4F10, MEMORY[0x277D529D8]);
                          if (v12 <= 0x3F)
                          {
                            sub_20C4E1174(319, &qword_27C7C4F18, MEMORY[0x277D4FEC8]);
                            if (v13 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
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
        }
      }
    }
  }
}

void sub_20C4E1174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C5A0A4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20C4E11E8()
{
  if (!qword_27C7C4EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C4F00);
    v0 = sub_20C5A0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C4EF8);
    }
  }
}

uint64_t sub_20C4E1294()
{
  result = sub_20C59DEBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlaybackTracker.WorkoutPlaybackPause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for MetricPlaybackTracker.WorkoutPlaybackPause(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20C4E1478(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20C4E1494(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_20C4E14E4()
{
  sub_20C4E1590();
  if (v0 <= 0x3F)
  {
    sub_20C59E80C();
    if (v1 <= 0x3F)
    {
      sub_20C4E15EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C4E1590()
{
  if (!qword_27C7C4F40)
  {
    sub_20C4A24F4();
    v0 = sub_20C59DAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C4F40);
    }
  }
}

void sub_20C4E15EC()
{
  if (!qword_27C7C4F48)
  {
    sub_20C59EC9C();
    sub_20C4E2084(&qword_27C7C4F50, MEMORY[0x277D53C20]);
    v0 = sub_20C59DAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C4F48);
    }
  }
}

uint64_t sub_20C4E1680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4E16E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C4E1744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C4E17AC()
{
  result = qword_27C7C4FB0;
  if (!qword_27C7C4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FB0);
  }

  return result;
}

uint64_t sub_20C4E1800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C4E1868()
{
  result = qword_27C7C4FE0;
  if (!qword_27C7C4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FE0);
  }

  return result;
}

unint64_t sub_20C4E18BC()
{
  result = qword_27C7C4FE8;
  if (!qword_27C7C4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FE8);
  }

  return result;
}

uint64_t sub_20C4E199C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBEC8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20C4E1A98()
{
  result = qword_27C7C4FF0;
  if (!qword_27C7C4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FF0);
  }

  return result;
}

unint64_t sub_20C4E1B24()
{
  result = qword_27C7C60A0;
  if (!qword_27C7C60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C60A0);
  }

  return result;
}

uint64_t sub_20C4E1CA0(uint64_t a1)
{
  sub_20C59DE3C();

  return sub_20C4CBE34(a1);
}

unint64_t sub_20C4E1D74()
{
  result = qword_27C7C5000;
  if (!qword_27C7C5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5000);
  }

  return result;
}

unint64_t sub_20C4E1DE8()
{
  result = qword_27C7C5008;
  if (!qword_27C7C5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5008);
  }

  return result;
}

unint64_t sub_20C4E1E54()
{
  result = qword_27C7C5010;
  if (!qword_27C7C5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5010);
  }

  return result;
}

unint64_t sub_20C4E1EC0()
{
  result = qword_27C7C5018;
  if (!qword_27C7C5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5018);
  }

  return result;
}

unint64_t sub_20C4E1F24()
{
  result = qword_27C7C5020;
  if (!qword_27C7C5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5020);
  }

  return result;
}

unint64_t sub_20C4E1F78()
{
  result = qword_27C7C5030;
  if (!qword_27C7C5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5030);
  }

  return result;
}

unint64_t sub_20C4E1FCC()
{
  result = qword_27C7C5038;
  if (!qword_27C7C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5038);
  }

  return result;
}

uint64_t sub_20C4E2020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4E2084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C4E20CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C4E2140()
{
  result = qword_27C7C4590;
  if (!qword_27C7C4590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C4590);
  }

  return result;
}

uint64_t AudioHintError.hashValue.getter(unsigned __int8 a1)
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](a1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E2224()
{
  result = qword_27C7C5060;
  if (!qword_27C7C5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5060);
  }

  return result;
}

uint64_t sub_20C4E2288(uint64_t a1, unsigned int a2)
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

uint64_t sub_20C4E22D0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SiriUserActivityType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7365536E69676562;
  v2 = 0x7365536573756170;
  if (a1 != 2)
  {
    v2 = 0x6553656D75736572;
  }

  if (a1)
  {
    v1 = 0x6973736553646E65;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C4E23C4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x7365536E69676562;
  v4 = *a1;
  v5 = 0x7365536573756170;
  if (v4 == 2)
  {
    v6 = 0xEC0000006E6F6973;
  }

  else
  {
    v5 = 0x6553656D75736572;
    v6 = 0xED00006E6F697373;
  }

  v7 = 0x6973736553646E65;
  v8 = 0xEA00000000006E6FLL;
  if (!*a1)
  {
    v7 = 0x7365536E69676562;
    v8 = 0xEC0000006E6F6973;
  }

  if (*a1 <= 1u)
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

  v11 = 0x7365536573756170;
  if (*a2 == 2)
  {
    v12 = 0xEC0000006E6F6973;
  }

  else
  {
    v11 = 0x6553656D75736572;
    v12 = 0xED00006E6F697373;
  }

  if (*a2)
  {
    v3 = 0x6973736553646E65;
    v2 = 0xEA00000000006E6FLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C5A0E9C();
  }

  return v15 & 1;
}

uint64_t sub_20C4E2524()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C4E25FC()
{
  sub_20C5A049C();
}

uint64_t sub_20C4E26C0()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C4E2794@<X0>(_BYTE *a1@<X8>)
{
  result = _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_20C4E27C4(uint64_t *a1@<X8>)
{
  v2 = 0x7365536E69676562;
  v3 = 0x7365536573756170;
  v4 = 0xED00006E6F697373;
  if (*v1 == 2)
  {
    v4 = 0xEC0000006E6F6973;
  }

  else
  {
    v3 = 0x6553656D75736572;
  }

  v5 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v2 = 0x6973736553646E65;
  }

  else
  {
    v5 = 0xEC0000006E6F6973;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C5A0D9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20C4E28A8()
{
  result = qword_27C7C5068;
  if (!qword_27C7C5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5068);
  }

  return result;
}

uint64_t sub_20C4E2910@<X0>(void *a1@<X8>)
{
  result = _sSn12SeymourMediaSdRszrlE9canonicalSnySdGyFZ_0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t _sSn12SeymourMediaSdRszrlE9canonicalSnySdGyFZ_0()
{
  sub_20C5A073C();
  sub_20C4E73EC(v0);
  sub_20C4E6AFC(v1, v2);
  v4 = v3;
  sub_20C5A073C();
  sub_20C4E73EC(v5);
  result = sub_20C4E6AFC(v6, v7);
  if (v9 >= v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  if (v4 > v9)
  {
    v11 = v4;
  }

  else
  {
    v11 = v9;
  }

  if (v10 > v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioLanguageSelectionChanged.selectedLanguageIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AudioLanguageSelectionChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4E2A80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C4E2AC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *MarketingItemProvider.__allocating_init(accountProvider:bag:subscriptionClient:queue:clientIdentifier:clientVersion:serviceType:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  sub_20C4780E8(a1, (v18 + 2));
  v18[7] = a2;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = a7;
  v18[11] = a8;
  v18[12] = a4;
  sub_20C4780E8(a3, (v18 + 13));
  v18[18] = a9;
  v18[19] = a10;
  return v18;
}

uint64_t sub_20C4E2BD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v37 = a3;
  v38 = a1;
  v36 = sub_20C5A01CC();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE2C();
  v15 = a5;

  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v34 = a6;
    v23 = v22;
    v39 = v22;
    *v19 = 136446722;
    *(v19 + 4) = sub_20C479640(v38, a2, &v39);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v15;
    *v21 = v35;
    v24 = v15;
    _os_log_impl(&dword_20C472000, v16, v17, "Fetching marketing item with placement = %{public}s, account = %{mask.hash}@", v19, 0x20u);
    sub_20C4A7CD0(v21);
    v25 = v21;
    a4 = v33;
    MEMORY[0x20F2FFF90](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x20F2FFF90](v23, -1, -1);
    v26 = v19;
    a5 = v35;
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v27 = swift_allocObject();
  v28 = v37;
  v29 = v38;
  v27[2] = v7;
  v27[3] = v29;
  v27[4] = a2;
  v27[5] = a5;
  v27[6] = v28;
  v27[7] = a4;
  sub_20C4E4784();

  v30 = v15;

  return sub_20C59EA9C();
}

void sub_20C4E2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v31 = v11;
  swift_unownedRetainStrong();
  v12 = *(a3 + 56);

  swift_unknownObjectRetain();

  swift_unownedRetainStrong();

  swift_unownedRetainStrong();

  swift_unownedRetainStrong();

  v13 = objc_allocWithZone(MEMORY[0x277CEE540]);
  v14 = sub_20C5A036C();

  v15 = sub_20C5A036C();

  v16 = sub_20C5A036C();
  v17 = sub_20C5A036C();

  v18 = [v13 initWithBag:v12 clientIdentifier:v14 clientVersion:v15 placement:v16 serviceType:v17];
  swift_unknownObjectRelease();

  [v18 setAccount_];
  if (a8)
  {
    v19 = sub_20C5A036C();
  }

  else
  {
    v19 = 0;
  }

  [v18 setOfferHints_];

  v20 = [objc_opt_self() currentProcess];
  v21 = sub_20C5A036C();
  [v20 setTreatmentNamespace_];

  [v18 setClientInfo_];
  v22 = [v18 perform];
  v23 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = sub_20C49B6E4;
  v24[7] = v31;
  aBlock[4] = sub_20C4E48A4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C499B34;
  aBlock[3] = &block_descriptor_7;
  v25 = _Block_copy(aBlock);

  v26 = a6;

  [v22 addFinishBlock_];
  _Block_release(v25);
}

uint64_t sub_20C4E31F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v13 = sub_20C5A020C();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C5A023C();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + 96);

    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = a6;
    v21 = v30;
    v20[6] = v29;
    v20[7] = v21;
    v20[8] = a1;
    aBlock[4] = sub_20C4E48DC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20C4F8F74;
    aBlock[3] = &block_descriptor_28;
    v22 = _Block_copy(aBlock);
    v23 = a2;
    v24 = a1;

    v25 = a6;

    sub_20C5A022C();
    v33 = MEMORY[0x277D84F90];
    sub_20C4959D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    v26 = v28;
    MEMORY[0x20F2FEDA0](0, v18, v15, v22);
    _Block_release(v22);

    (*(v32 + 8))(v15, v13);
    (*(v16 + 8))(v18, v31);
  }

  return result;
}

void sub_20C4E34E4(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void, void), void *a6, void *a7)
{
  v14 = sub_20C5A01CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v44 = a2;
    v45 = v16;
    v46 = a6;
    v19 = a1;
    sub_20C59FE2C();
    v20 = a1;
    v21 = a4;

    v22 = sub_20C5A01BC();
    v23 = sub_20C5A089C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v41 = v26;
      v42 = swift_slowAlloc();
      v49 = v42;
      *v25 = 136446978;
      *(v25 + 4) = sub_20C479640(v44, a3, &v49);
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v21;
      *v26 = a4;
      *(v25 + 32) = 2082;
      swift_getErrorValue();
      v27 = v47;
      v28 = v48;
      v29 = v21;
      v30 = MEMORY[0x20F2FF3F0](v27, v28);
      v32 = sub_20C479640(v30, v31, &v49);

      *(v25 + 34) = v32;
      _os_log_impl(&dword_20C472000, v22, v23, "Unable to fetch marketing item with placement = %{public}s, account = %{mask.hash}@ -> %{public}s", v25, 0x2Au);
      v33 = v41;
      sub_20C4A7CD0(v41);
      MEMORY[0x20F2FFF90](v33, -1, -1);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v34, -1, -1);
      v35 = v25;
      a5 = v43;
      MEMORY[0x20F2FFF90](v35, -1, -1);
    }

    (*(v15 + 8))(v18, v45);
    v36 = a1;
    a5(a1, 1);
  }

  else
  {
    if (a7)
    {
      v46 = a7;
      a5(a7, 0);
      v37 = v46;
    }

    else
    {
      sub_20C4E4828();
      v38 = swift_allocError();
      *v39 = 0;
      a5(v38, 1);
      v37 = v38;
    }
  }
}

uint64_t MarketingItemProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);

  return v0;
}

uint64_t MarketingItemProvider.fetchMarketingItem(for:offerHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE2C();
  sub_20C5A01AC();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v14 + 24) = 40;
  *(v14 + 32) = 2;
  *(v14 + 40) = 79;
  *(v14 + 48) = &unk_20C5A5E68;
  *(v14 + 56) = v13;
  sub_20C4E4784();

  return sub_20C59EA9C();
}

uint64_t sub_20C4E3AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = sub_20C5A01CC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5078);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E3BEC, 0, 0);
}

uint64_t sub_20C4E3BEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = Strong[5];
    v2 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v3);
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_20C4E3D48;

    return MEMORY[0x2821AFC58](v3, v2);
  }

  else
  {
    sub_20C4E4828();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E3D48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_20C4E43D8;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_20C4E3E70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C4E3E70()
{
  v1 = v0[30];
  v0[31] = v1;
  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v1;
  sub_20C4E2BD0(v6, v5, v4, v3, v1, v2);

  v8 = swift_task_alloc();
  v0[32] = v8;
  *(v8 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v8 + 24) = 40;
  *(v8 + 32) = 2;
  *(v8 + 40) = 92;
  *(v8 + 48) = v2;
  v9 = swift_task_alloc();
  v0[33] = v9;
  v10 = sub_20C4E4784();
  *v9 = v0;
  v9[1] = sub_20C4E3FD0;

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C4E487C, v8, v10);
}

uint64_t sub_20C4E3FD0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_20C4E41CC;
  }

  else
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];
    v7 = v2[14];
    v8 = v2[11];

    *v7 = v8;
    (*(v5 + 8))(v4, v6);
    v3 = sub_20C4E413C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C4E413C()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C4E41CC()
{
  v20 = v0;
  v1 = v0[34];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_20C59FE2C();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2FF3F0](v0[6], v0[7]);
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C472000, v3, v4, "Failed to fetch marketing item with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[21];

    (*(v15 + 8))(v13, v14);
  }

  v16 = v0[31];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_20C4E43D8()
{
  v23 = v0;
  v1 = *(v0 + 232);
  sub_20C59FE2C();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 168);
    v21 = *(v0 + 176);
    v7 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2FF3F0](*(v0 + 72), *(v0 + 80));
    v12 = sub_20C479640(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C472000, v3, v4, "Failed to fetch current account information: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);

    (*(v14 + 8))(v13, v15);
  }

  *(v0 + 248) = 0;
  v16 = *(v0 + 208);
  sub_20C4E2BD0(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), 0, v16);
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *(v17 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v17 + 24) = 40;
  *(v17 + 32) = 2;
  *(v17 + 40) = 92;
  *(v17 + 48) = v16;
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  v19 = sub_20C4E4784();
  *v18 = v0;
  v18[1] = sub_20C4E3FD0;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C4E487C, v17, v19);
}

uint64_t sub_20C4E4678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C47FCF0;

  return sub_20C4E3AB0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_20C4E4784()
{
  result = qword_2810F3DB0;
  if (!qword_2810F3DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F3DB0);
  }

  return result;
}

unint64_t sub_20C4E4828()
{
  result = qword_27C7C5080;
  if (!qword_27C7C5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5080);
  }

  return result;
}

uint64_t MarketingLinkError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E4984()
{
  result = qword_27C7C5088;
  if (!qword_27C7C5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5088);
  }

  return result;
}

void *sub_20C4E49E8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v36 = type metadata accessor for AudioHint();
  v7 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v30 - v10;
  v11 = *(a3 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v31 = v9;
  v33 = (v9 + 48);
  v34 = v6;
  v12 = (a3 + 80);
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v39 = v12;
    v40 = v11;
    v13 = *(v12 - 6);
    v14 = *(v12 - 5);
    v15 = *(v12 - 4);
    v16 = *(v12 - 3);
    v18 = *(v12 - 2);
    v17 = *(v12 - 1);
    v19 = *v12;
    v41[0] = v13;
    v41[1] = v14;
    v41[2] = v15;
    v41[3] = v16;
    v41[4] = v18;
    v41[5] = v17;
    v42 = v19;
    sub_20C4E6298(v13, v14, v15, v16, v18, v17, v19);
    v20 = v34;
    v21 = v43;
    v37(v41);
    v43 = v21;
    if (v21)
    {
      break;
    }

    sub_20C497EF0(v13, v14, v15, v16, v18, v17, v19);
    if ((*v33)(v20, 1, v36) == 1)
    {
      sub_20C4E6300(v20);
    }

    else
    {
      v22 = v20;
      v23 = v32;
      sub_20C4B0C04(v22, v32);
      sub_20C4B0C04(v23, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_20C4ECCC4(0, v38[2] + 1, 1, v38);
      }

      v25 = v38[2];
      v24 = v38[3];
      v26 = v31;
      if (v25 >= v24 >> 1)
      {
        v28 = sub_20C4ECCC4(v24 > 1, v25 + 1, 1, v38);
        v26 = v31;
        v38 = v28;
      }

      v27 = v38;
      v38[2] = v25 + 1;
      sub_20C4B0C04(v35, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25);
    }

    v12 = v39 + 56;
    v11 = v40 - 1;
    if (v40 == 1)
    {
      return v38;
    }
  }

  sub_20C497EF0(v13, v14, v15, v16, v18, v17, v19);

  return v38;
}

uint64_t static AudioHint.make(videoTextTrackURL:session:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = sub_20C59D63C();
  v6 = *(v34 - 8);
  v33 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59D37C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v31);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = a2;
  sub_20C59EA9C();
  v19 = v32;
  v20 = v34;
  (*(v6 + 16))(v32, v35, v34);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v19, v20);
  v24 = v30;
  v23 = v31;
  (*(v11 + 16))(v30, v15, v31);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  (*(v11 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20C4C0280;
  v27[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0);
  sub_20C59EA9C();
  return (*(v11 + 8))(v15, v23);
}

void sub_20C4E50B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_20C59D30C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20C4E6418;
  *(v8 + 24) = v6;
  v11[4] = sub_20C4E6458;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20C4E528C;
  v11[3] = &block_descriptor_40;
  v9 = _Block_copy(v11);

  v10 = [a3 dataTaskWithURL:v7 completionHandler:v9];
  _Block_release(v9);

  [v10 resume];
}

void sub_20C4E51F8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, unint64_t, void))
{
  sub_20C4E6460(a1, a2);
  v7 = a4;
  sub_20C5A100C();
  a5(v8, v9, v10);
  sub_20C4E6474(v8, v9, v10);
}

uint64_t sub_20C4E528C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_20C59D3CC();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_20C4BFD68(v6, v10);
}

uint64_t sub_20C4E5354(uint64_t *a1, uint64_t a2)
{
  v4 = sub_20C59D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *a1;
  v8 = a1[1];
  sub_20C4B3570();
  v9 = sub_20C5A08EC();
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  (*(v5 + 32))(v11 + v10, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  sub_20C4BFD7C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0);
  return sub_20C59EA9C();
}

uint64_t static AudioHint.make(videoTextTrackData:queue:locale:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_20C59D63C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_20C4BFD7C(a1, a2);
  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0);
  return sub_20C59EA9C();
}

uint64_t sub_20C4E5670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v38 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v40 = sub_20C5A020C();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A023C();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59D63C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_20C5A021C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_20C4B3570();
  (*(v15 + 104))(v17, *MEMORY[0x277D851C8], v14);

  v33 = sub_20C5A090C();
  (*(v15 + 8))(v17, v14);
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v23 = v35;
  v22 = v36;
  *(v21 + 16) = v35;
  *(v21 + 24) = v22;
  (*(v12 + 32))(v21 + v19, &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v24 = v38;
  *(v21 + v20) = v38;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_20C49B6E4;
  v25[1] = v18;
  aBlock[4] = sub_20C4E6150;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_8;
  v26 = _Block_copy(aBlock);
  sub_20C4BFD7C(v23, v22);
  v27 = v24;
  v28 = v37;
  sub_20C5A022C();
  v44 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v30 = v39;
  v29 = v40;
  sub_20C5A0AEC();
  v31 = v33;
  MEMORY[0x20F2FEDA0](0, v28, v30, v26);
  _Block_release(v26);

  (*(v43 + 8))(v30, v29);
  (*(v41 + 8))(v28, v42);
}

uint64_t sub_20C4E5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a4;
  v9 = sub_20C5A020C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C5A023C();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C517048(a1);
  v18 = v17;
  v25 = v10;
  MEMORY[0x28223BE20](v16);
  v24 = a5;
  *(&v23 - 2) = v26;

  v19 = sub_20C4E49E8(sub_20C4E622C, (&v23 - 4), v18);
  swift_bridgeObjectRelease_n();

  v20 = swift_allocObject();
  v20[2] = v24;
  v20[3] = a6;
  v20[4] = v19;
  aBlock[4] = sub_20C495AF4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  sub_20C5A022C();
  v29 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v15, v12, v21);
  _Block_release(v21);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v15, v28);
}

uint64_t sub_20C4E5F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 48))
  {
    v4 = type metadata accessor for AudioHint();
    return (*(*(v4 - 8) + 56))(a3, 1, 1, v4);
  }

  else
  {
    v7 = a1[4];
    v6 = a1[5];
    v9 = a1[2];
    v8 = a1[3];
    v11 = *a1;
    v10 = a1[1];
    v13 = type metadata accessor for AudioHint();
    v14 = *(v13 + 28);
    v15 = sub_20C59D63C();
    (*(*(v15 - 8) + 16))(&a3[v14], a2, v15);
    *a3 = v11;
    *(a3 + 1) = v10;
    *(a3 + 2) = v9;
    *(a3 + 3) = v8;
    *(a3 + 4) = v7;
    *(a3 + 5) = v6;
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }
}

uint64_t sub_20C4E6090(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBDE4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20C4E6150()
{
  v1 = *(sub_20C59D63C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4E5AFC(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_20C4E6298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 1 < 2)
  {
  }

  if (!a7)
  {
  }

  return result;
}

uint64_t sub_20C4E6300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4E6368(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C59D63C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20C4E5670(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t sub_20C4E6418(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_20C4E6460(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20C4BFD7C(a1, a2);
  }

  return a1;
}

void sub_20C4E6474(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_20C4A7C7C(a1, a2);
  }
}

uint64_t PlaybackError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E6528()
{
  result = qword_27C7C5098;
  if (!qword_27C7C5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5098);
  }

  return result;
}

uint64_t AudioHint.description.getter()
{
  v1 = v0;
  sub_20C5A0C0C();

  strcpy(v4, "Identifier: ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  MEMORY[0x20F2FE9A0](*v1, v1[1]);
  MEMORY[0x20F2FE9A0](8236, 0xE200000000000000);
  v2 = v4[0];
  strcpy(v4, "Content: ");
  WORD1(v4[1]) = 0;
  HIDWORD(v4[1]) = -385875968;
  MEMORY[0x20F2FE9A0](v1[4], v1[5]);
  MEMORY[0x20F2FE9A0](44, 0xE100000000000000);

  MEMORY[0x20F2FE9A0](v4[0], v4[1]);

  strcpy(v4, "Time Range: ");
  HIWORD(v4[1]) = -5120;
  sub_20C5A0D0C();
  MEMORY[0x20F2FE9A0](3943982, 0xE300000000000000);
  sub_20C5A0D0C();
  MEMORY[0x20F2FE9A0](0, 0xE000000000000000);

  MEMORY[0x20F2FE9A0](46, 0xE100000000000000);

  MEMORY[0x20F2FE9A0](v4[0], v4[1]);

  return v2;
}

unint64_t static StoreContentOptions.dictionary(backupStreamingURL:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  v1 = [objc_opt_self() smm_iTunesStoreContentHLSAssetURLStringKey];
  v2 = sub_20C5A039C();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = sub_20C59D2FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_20C5896D0(inited);
  swift_setDeallocating();
  sub_20C4E684C(inited + 32);
  return v7;
}

uint64_t sub_20C4E684C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C50A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WheelchairStatusObserver.__allocating_init(eventHub:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  sub_20C477580(a3, v6 + 16);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = *(v8 + 16);
  swift_unknownObjectRetain();

  v9(v10, v7, v8);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v6;
}

uint64_t WheelchairStatusObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WheelchairStatusObserver.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)()
{
  swift_getObjectType();
  sub_20C4E6A00();
  return sub_20C59F5FC();
}

unint64_t sub_20C4E6A00()
{
  result = qword_27C7C50A8;
  if (!qword_27C7C50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C50A8);
  }

  return result;
}

uint64_t sub_20C4E6AFC(uint64_t a1, unint64_t a2)
{
  v5 = sub_20C59D19C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v75 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v74 = &v65 - v12;
  if (a2)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v14 = sub_20C5A036C();
    v71 = a1;
    v15 = v14;
    v16 = [v13 initWithString_];

    [v16 setCharactersToBeSkipped_];
    if (qword_27C7C4110 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v5, qword_27C7CDF38);
    (*(v6 + 16))(v74, v17, v5);
    sub_20C4E7698();
    sub_20C5A0ADC();
    v77 = 48;
    sub_20C5A0ACC();
    v77 = 49;
    sub_20C5A0ACC();
    v77 = 50;
    sub_20C5A0ACC();
    v77 = 51;
    sub_20C5A0ACC();
    v77 = 52;
    sub_20C5A0ACC();
    v77 = 53;
    sub_20C5A0ACC();
    v77 = 54;
    sub_20C5A0ACC();
    v77 = 55;
    sub_20C5A0ACC();
    v77 = 56;
    sub_20C5A0ACC();
    v77 = 57;
    sub_20C5A0ACC();
    v77 = 46;
    sub_20C5A0ACC();
    sub_20C59D17C();
    v19 = *(v6 + 8);
    v18 = v6 + 8;
    v66 = v19;
    v67 = v5;
    v19(v9, v5);
    v20 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v20 = v71 & 0xFFFFFFFFFFFFLL;
    }

    v21 = 7;
    if (((a2 >> 60) & ((v71 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 11;
    }

    v73 = 4 * v20;
    v22 = MEMORY[0x277D84F90];
    v23 = 15;
    v76 = v16;
    v68 = v18;
    v70 = a2;
    v65 = v21 | (v20 << 16);
    while (1)
    {
      v72 = v22;
      v24 = 0;
      v69 = v23;
      v25 = v23 >> 14;
      while (1)
      {
        v26 = sub_20C5A0A0C();
        if (!v27)
        {

          sub_20C5A074C();
          v2 = v49;
          v42 = v72;
          v36 = *(v72 + 2);
          if (v36)
          {
            if (v36 == 1)
            {
LABEL_46:
              v51 = 0;
              v52 = v36;
            }

            else
            {
              v50 = 0;
              v51 = v36 & 0x7FFFFFFFFFFFFFFELL;
              v52 = *(v72 + 2) & 1;
              v53 = &v72[8 * v36 + 24];
              do
              {
                v55 = *(v53 - 1);
                v54 = *v53;
                v56 = pow(60.0, v50);
                v2 = v2 + v54 * v56 + v55 * pow(60.0, (v50 + 1));
                v53 -= 2;
                v50 += 2;
              }

              while (v50 != v51);
              if (v36 == v51)
              {
                goto LABEL_41;
              }
            }

            do
            {
              v57 = *(v42 + 24 + 8 * v52);
              v2 = v2 + v57 * pow(60.0, v51++);
              v16 = v76;
              --v52;
            }

            while (v52);
          }

LABEL_41:

          v59 = v66;
          v58 = v67;
          v66(v75, v67);
          return v59(v74, v58);
        }

        v28 = v26;
        v29 = v27;
        MEMORY[0x28223BE20](v26);
        *(&v65 - 2) = v75;
        swift_bridgeObjectRetain_n();
        v30 = sub_20C4E7710(sub_20C4E76F0, (&v65 - 4), v28, v29);
        v32 = v31;

        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33)
        {

          swift_bridgeObjectRelease_n();
          sub_20C4E760C();
          swift_allocError();
          *v60 = 3;
          swift_willThrow();

          goto LABEL_44;
        }

        v34 = v76;
        if (v28 == 46 && v29 == 0xE100000000000000)
        {

          if (v24)
          {
            goto LABEL_43;
          }

          v24 = 1;
        }

        else
        {
          v35 = sub_20C5A0E9C();

          if (v35 & v24)
          {
LABEL_43:

            sub_20C4E760C();
            swift_allocError();
            *v61 = 3;
            swift_willThrow();

LABEL_44:
            v62 = v67;
            v63 = v66;
            v66(v75, v67);
            return v63(v74, v62);
          }

          v24 |= v35;
        }

        v36 = sub_20C5A09EC();
        MEMORY[0x28223BE20](v36);
        *(&v65 - 2) = v74;

        v37 = sub_20C4E7710(sub_20C4E78E0, (&v65 - 4), v28, v29);
        v39 = v38;
        swift_bridgeObjectRelease_n();

        if (v73 == v36 >> 14)
        {
          break;
        }

        v41 = v37 & 0xFFFFFFFFFFFFLL;
        if ((v39 & 0x2000000000000000) != 0)
        {
          v41 = HIBYTE(v39) & 0xF;
        }

        if (v41)
        {
          goto LABEL_27;
        }

        v16 = v76;
        v42 = sub_20C5A09EC();
        if (v25 > v42 >> 14)
        {
          __break(1u);
          goto LABEL_46;
        }
      }

      if (v73 < v25)
      {
        break;
      }

LABEL_27:
      sub_20C5A059C();
      v43 = sub_20C5A077C();
      v16 = v76;
      if (v44)
      {

        sub_20C4E760C();
        swift_allocError();
        *v64 = 3;
        swift_willThrow();

        goto LABEL_44;
      }

      v45 = v43;
      v22 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_20C4EC738(0, *(v22 + 2) + 1, 1, v22);
      }

      v47 = *(v22 + 2);
      v46 = *(v22 + 3);
      if (v47 >= v46 >> 1)
      {
        v22 = sub_20C4EC738((v46 > 1), v47 + 1, 1, v22);
      }

      *(v22 + 2) = v47 + 1;
      *&v22[8 * v47 + 32] = v45;
      v23 = sub_20C5A09EC();
      if (v73 < v23 >> 14)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  else
  {
    sub_20C4E760C();
    swift_allocError();
    *v48 = 3;
    return swift_willThrow();
  }

  return result;
}

BOOL sub_20C4E73D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

void sub_20C4E73EC(double a1)
{
  v1 = floor(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1 / 3600;
  v3 = v1 % 3600;
  if (!__OFSUB__(v1, 3600 * v2))
  {
    v4 = v3 / 60;
    v5 = a1 - v2 * 60.0 * 60.0 - (v3 / 60) * 60.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B60);
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D83B88];
    *(v6 + 16) = xmmword_20C5A4FE0;
    v8 = MEMORY[0x277D83C10];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v2;
    sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](58, 0xE100000000000000);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C5A4FE0;
    *(v9 + 56) = v7;
    *(v9 + 64) = v8;
    *(v9 + 32) = v4;
    v10 = sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](v10);

    MEMORY[0x20F2FE9A0](58, 0xE100000000000000);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D839F8];
    *(v11 + 16) = xmmword_20C5A4FE0;
    v13 = MEMORY[0x277D83A80];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = v5;
    v14 = sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](v14);

    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_20C4E760C()
{
  result = qword_27C7C5110;
  if (!qword_27C7C5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5110);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_20C4E7698()
{
  result = qword_27C7C5118;
  if (!qword_27C7C5118)
  {
    sub_20C59D19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5118);
  }

  return result;
}

uint64_t sub_20C4E7710(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_20C5A0BFC();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_20C5A0C7C();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        sub_20C5A047C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

uint64_t static MediaPlayerPlaybackReady.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4E79AC(uint64_t a1, uint64_t a2, uint64_t a3, CMTimeValue a4, unint64_t a5, CMTimeEpoch a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v30 = a7;
  v13 = sub_20C5A01CC();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = *(a3 + 56);
  v27 = ObjectType;
  v18 = v17(ObjectType, a3);
  v19 = v18;
  if (*(a1 + 8))
  {
    v20 = 1;
    if (*(a1 + 36))
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_20C5A096C();
    if (!v20 && (result & 1) != 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  v20 = *a1 != v18;
  if ((*(a1 + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 12) = a4;
  *(a1 + 20) = a5;
  *(a1 + 28) = a6;
  *(a1 + 36) = 0;
  CMTime.elapsedTime.getter(a4, a5, a6);
  v23 = v22;
  sub_20C59FE5C();
  swift_unknownObjectRetain();
  v24 = sub_20C5A01BC();
  v25 = sub_20C5A08AC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134349568;
    *(v26 + 4) = (*(a3 + 48))(v27, a3);
    swift_unknownObjectRelease();
    *(v26 + 12) = 2050;
    *(v26 + 14) = v19;
    *(v26 + 22) = 2050;
    *(v26 + 24) = v23;
    _os_log_impl(&dword_20C472000, v24, v25, "Sync Player Status Update: status %{public}ld, timecontrolstatus %{public}ld, elapsedTime: %{public}f", v26, 0x20u);
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v28 + 8))(v15, v29);
  swift_getObjectType();
  v32 = v19;
  v33 = v23;
  sub_20C4E7D0C();
  return sub_20C59F5FC();
}

void sub_20C4E7C68()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 14);
  sub_20C4E7CD8(&v1[4]);
  os_unfair_lock_unlock(v1 + 14);
}

unint64_t sub_20C4E7D0C()
{
  result = qword_27C7C5120;
  if (!qword_27C7C5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5120);
  }

  return result;
}

void *sub_20C4E7D60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(ObjectType, a2);
  if (result)
  {
    v5 = result;
    [result duration];

    swift_getObjectType();
    sub_20C4E7E54();
    return sub_20C59F5FC();
  }

  return result;
}

unint64_t sub_20C4E7E54()
{
  result = qword_27C7C5128;
  if (!qword_27C7C5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5128);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C4E7EBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4E7EDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 37) = v3;
  return result;
}

uint64_t sub_20C4E7F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20C4E7F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AudioSessionCoordinator.State.sessionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_20C4E7FF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v5 = sub_20C5A002C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20C4E8084(uint64_t a1, uint64_t *a2)
{
  v4 = sub_20C5A002C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E819C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v4 = sub_20C5A002C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20C4E8224(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v4 = sub_20C5A002C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E8314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20C4E83AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E84CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20C4E8560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E865C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_20C4E870C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *AudioSessionCoordinator.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C476B90(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_20C4E87F8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C5A01CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C59EBBC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E8914, 0, 0);
}

uint64_t sub_20C4E8914()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C59F67C();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for AudioSessionCoordinator();
    v4 = sub_20C4EB478(&qword_27C7C5158);
    *v2 = v0;
    v2[1] = sub_20C4E8A70;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E8A70()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C4E8C58, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C4E8C58()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_20C59FE4C();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2FF3F0](*(v0 + 48), *(v0 + 56));
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C472000, v3, v4, "AudioSessionCoordinator - Failed to start session on phone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20C4E8E40(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C5A01CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C59EBBC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E8F5C, 0, 0);
}

uint64_t sub_20C4E8F5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C59F7DC();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for AudioSessionCoordinator();
    v4 = sub_20C4EB478(&qword_27C7C5158);
    *v2 = v0;
    v2[1] = sub_20C4E90B8;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E90B8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C4E92A0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C4E92A0()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_20C59FE4C();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2FF3F0](*(v0 + 48), *(v0 + 56));
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C472000, v3, v4, "AudioSessionCoordinator - Failed to end session on phone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_20C4E9488()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v5;
    os_unfair_lock_unlock((v2 + 24));

    sub_20C4EAA6C(*MEMORY[0x277CB8030], *MEMORY[0x277CB80B8]);
  }
}

void sub_20C4E9554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - v4;
  v6 = sub_20C5A01CC();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 category];
  v13 = sub_20C5A039C();
  v15 = v14;
  if (v13 == sub_20C5A039C() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_20C5A0E9C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v19 = [v11 mode];
  v20 = sub_20C5A039C();
  v22 = v21;
  if (v20 == sub_20C5A039C() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_20C5A0E9C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v25 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  v26 = *(v1 + v25);

  os_unfair_lock_lock((v26 + 24));
  v27 = *(v26 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
    return;
  }

  *(v26 + 16) = v29 & ~(v29 >> 63);
  os_unfair_lock_unlock((v26 + 24));

  v30 = *(v1 + v25);

  os_unfair_lock_lock((v30 + 24));
  v31 = *(v30 + 16);
  os_unfair_lock_unlock((v30 + 24));

  sub_20C59FE5C();
  v32 = sub_20C5A01BC();
  v33 = sub_20C5A08AC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v31;
    _os_log_impl(&dword_20C472000, v32, v33, "AudioSessionCoordinator - moviePlaybackCount is %ld", v34, 0xCu);
    MEMORY[0x20F2FFF90](v34, -1, -1);
  }

  (*(v45 + 8))(v10, v46);
LABEL_16:
  v35 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v35, v2);
  LODWORD(v35) = (*(v3 + 88))(v5, v2);
  v36 = *MEMORY[0x277D4F258];
  (*(v3 + 8))(v5, v2);
  if (v35 == v36)
  {
    v37 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
    swift_beginAccess();
    v38 = *(v1 + v37);

    os_unfair_lock_lock((v38 + 24));
    sub_20C4E9AB0((v38 + 16));
    os_unfair_lock_unlock((v38 + 24));

    sub_20C4EAA6C(*MEMORY[0x277CB8020], *MEMORY[0x277CB80A8]);
  }

  else
  {
    v39 = v44;
    sub_20C59FE5C();
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20C472000, v40, v41, "AudioSessionCoordinator - Active workout session exists, refrain from setting AudioSession category to ambient", v42, 2u);
      MEMORY[0x20F2FFF90](v42, -1, -1);
    }

    (*(v45 + 8))(v39, v46);
  }
}

uint64_t sub_20C4E9AB0(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_20C59FE5C();
    v7 = sub_20C5A01BC();
    v8 = sub_20C5A08AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20C472000, v7, v8, "AudioSessionCoordinator - Active video session exists, refrain from setting AudioSession category to ambient", v9, 2u);
      MEMORY[0x20F2FFF90](v9, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t AudioSessionCoordinator.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  v2 = sub_20C5A002C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioSessionCoordinator.startSession(session:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_20C5A01CC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E9E10, v1, 0);
}

uint64_t sub_20C4E9E10()
{
  sub_20C59FE4C();
  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20C472000, v1, v2, "AudioSessionCoordinator - started session", v3, 2u);
    MEMORY[0x20F2FFF90](v3, -1, -1);
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];

  (*(v5 + 8))(v4, v7);
  v11 = sub_20C59EAFC();
  v13 = v12;
  v14 = sub_20C59EAEC();
  *v6 = v11;
  v6[1] = v13;
  v6[2] = v14;
  (*(v9 + 104))(v6, *MEMORY[0x277D4F250], v8);
  v15 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v9 + 40))(v10 + v15, v6, v8);
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t AudioSessionCoordinator.endSession(session:state:)(uint64_t a1, uint64_t *a2)
{
  v3[8] = v2;
  v5 = sub_20C5A01CC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[15] = v7;
  v3[16] = v8;
  v3[17] = v9;

  return MEMORY[0x2822009F8](sub_20C4EA104, v2, 0);
}

uint64_t sub_20C4EA104()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D4F250])
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v0[13] + 96))(v8, v0[12]);
    v9 = *v8 == v7 && v8[1] == v6;
    if (v9 || (sub_20C5A0E9C() & 1) != 0)
    {
      sub_20C59FE4C();
      v10 = sub_20C5A01BC();
      v11 = sub_20C5A08AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_20C472000, v10, v11, "AudioSessionCoordinator - ended session", v12, 2u);
        MEMORY[0x20F2FFF90](v12, -1, -1);
      }

      else
      {
      }

      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[12];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v14 + 104))(v13, *MEMORY[0x277D4F258], v15);
      swift_beginAccess();
      (*(v14 + 40))(v4 + v5, v13, v15);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20C4EA3FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20C47FCEC;

  return AudioSessionCoordinator.startSession(session:)(a1);
}

uint64_t sub_20C4EA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator();
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_20C4EA558(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return AudioSessionCoordinator.endSession(session:state:)(v4, a2);
}

uint64_t sub_20C4EA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator();
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator();
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator();
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator();
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_20C4EA8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator();
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_20C4EA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator();
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

void sub_20C4EAA6C(void *a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v52 = [objc_opt_self() sharedInstance];
  v11 = [v52 category];
  v12 = sub_20C5A039C();
  v14 = v13;
  if (v12 == sub_20C5A039C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v18 = [v52 mode];
  v19 = sub_20C5A039C();
  v21 = v20;
  if (v19 == sub_20C5A039C() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_20C5A0E9C();

    if ((v23 & 1) == 0)
    {
LABEL_17:
      v51 = a2;
      sub_20C59FE5C();
      v25 = a1;
      v26 = sub_20C5A01BC();
      v27 = sub_20C5A08AC();

      v28 = os_log_type_enabled(v26, v27);
      v50 = v8;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v55[0] = v30;
        *v29 = 136315138;
        v31 = sub_20C5A039C();
        v33 = v5;
        v34 = v4;
        v35 = sub_20C479640(v31, v32, v55);

        *(v29 + 4) = v35;
        v4 = v34;
        _os_log_impl(&dword_20C472000, v26, v27, "Updating audio session category to %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x20F2FFF90](v30, -1, -1);
        MEMORY[0x20F2FFF90](v29, -1, -1);

        v36 = v33;
      }

      else
      {

        v36 = v5;
      }

      v37 = *(v36 + 8);
      v37(v10, v4);
      v55[0] = 0;
      if ([v52 setCategory:v25 mode:v51 options:0 error:v55])
      {
        v38 = v55[0];
      }

      else
      {
        v51 = v4;
        v39 = v55[0];
        v40 = sub_20C59D29C();

        swift_willThrow();
        v41 = v50;
        sub_20C59FE2C();
        v42 = v40;
        v43 = sub_20C5A01BC();
        v44 = sub_20C5A089C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v55[0] = v46;
          *v45 = 136446210;
          swift_getErrorValue();
          v47 = MEMORY[0x20F2FF3F0](v53, v54);
          v49 = sub_20C479640(v47, v48, v55);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_20C472000, v43, v44, "Failed to set audio session category: %{public}s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x20F2FFF90](v46, -1, -1);
          MEMORY[0x20F2FFF90](v45, -1, -1);
        }

        else
        {
        }

        v37(v41, v51);
      }

      return;
    }

    v24 = v52;
  }
}

unint64_t sub_20C4EB030()
{
  result = qword_27C7C5140;
  if (!qword_27C7C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5140);
  }

  return result;
}

uint64_t sub_20C4EB2C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C4EB308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4EB348(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C4E87F8(a1, v1);
}

uint64_t sub_20C4EB3E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return sub_20C4E8E40(a1, v1);
}

uint64_t sub_20C4EB478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioSessionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SessionDismissalConfirmationRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_20C4EB548()
{
  result = qword_27C7C5160;
  if (!qword_27C7C5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5160);
  }

  return result;
}

uint64_t sub_20C4EB5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_20C4EB630();
  v5 = sub_20C4EB684();

  return a3(a1, v4, v5);
}

unint64_t sub_20C4EB630()
{
  result = qword_27C7C5168;
  if (!qword_27C7C5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5168);
  }

  return result;
}

unint64_t sub_20C4EB684()
{
  result = qword_27C7C5170;
  if (!qword_27C7C5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5170);
  }

  return result;
}

SeymourMedia::MarketingSubscriptionStatus_optional __swiftcall MarketingSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C5A0D9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MarketingSubscriptionStatus.rawValue.getter()
{
  v1 = 0x7263736275736E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_20C4EB79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7263736275736E75;
  v4 = 0xEC00000064656269;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6269726373627573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0x7263736275736E75;
  v8 = 0xEC00000064656269;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6269726373627573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C5A0E9C();
  }

  return v11 & 1;
}

unint64_t sub_20C4EB8B4()
{
  result = qword_27C7C5178;
  if (!qword_27C7C5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5178);
  }

  return result;
}

uint64_t sub_20C4EB908()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C4EB9B8()
{
  sub_20C5A049C();
}

uint64_t sub_20C4EBA54()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

void sub_20C4EBB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xEC00000064656269;
  v5 = 0x7263736275736E75;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6269726373627573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MarketingArtworkPosition.hashValue.getter()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](0);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4EBBF0()
{
  result = qword_27C7C5180;
  if (!qword_27C7C5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5180);
  }

  return result;
}

uint64_t sub_20C4EBC58(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20C5A0B3C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20C4AB4DC(v3, 0);
  sub_20C4ED2D4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t MarketingOfferTemplate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  MEMORY[0x20F2FF470](2);

  return sub_20C4976B4(a1, v3);
}

uint64_t MarketingOfferTemplate.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x20F2FF470](v2);
      return sub_20C5A0FFC();
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(v4, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4EBE54()
{
  v1 = *v0;
  sub_20C5A0FBC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x20F2FF470](v2);
      return sub_20C5A0FFC();
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(v4, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4EBF00(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  MEMORY[0x20F2FF470](2);

  return sub_20C4976B4(a1, v3);
}

uint64_t sub_20C4EBFA8()
{
  v1 = *v0;
  sub_20C5A0FBC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x20F2FF470](v2);
      return sub_20C5A0FFC();
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(v4, v1);
  return sub_20C5A0FFC();
}

uint64_t static MarketingOfferTemplate.makeHeaderUpsellTemplate(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4530);
  v5 = sub_20C5A02BC();

  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v6 = sub_20C4820C8(0x7475626972747461, 0xEA00000000007365);
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_unknownObjectRetain();

  v55[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_16;
  }

  v9 = sub_20C4820C8(0x79616C70736964, 0xE700000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C479AA8(*(v53 + 56) + 32 * v9, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_20C4820C8(0xD000000000000012, 0x800000020C5AC6E0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C479AA8(*(v53 + 56) + 32 * v11, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v53 + 16) || (v13 = sub_20C4820C8(0xD000000000000010, 0x800000020C5AC700), (v14 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_20C479AA8(*(v53 + 56) + 32 * v13, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v53 != 0x65736C6166 || v54 != 0xE500000000000000)
  {
    goto LABEL_54;
  }

  v15 = 1;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5188);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20C5A4FE0;
    *(v16 + 32) = v15;
    *(v16 + 40) = 1;
    *(v16 + 48) = 0x80;
    v17 = [v2 itemActions];
    v51 = a2;
    if (!v17)
    {
      result = sub_20C4EBC58(MEMORY[0x277D84F90]);
      v26 = v25;
      v21 = v27;
      v29 = v28;
      goto LABEL_31;
    }

    v18 = v17;
    v2 = sub_20C479154(0, &qword_27C7C4550);
    v19 = sub_20C5A061C();

    if (!(v19 >> 62))
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 != 0;
      if (v20 >= v21)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }

    result = sub_20C5A0B3C();
    if (result < 0)
    {
      goto LABEL_57;
    }

    v20 = result;
    v21 = result != 0;
    if (sub_20C5A0B3C() >= v21)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v50 = sub_20C5A0E9C();

    if (v50)
    {
      v15 = 1;
    }

    else
    {
LABEL_17:
      v15 = 0;
    }
  }

  if (sub_20C5A0B3C() < v20)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_21:
  if ((v19 & 0xC000000000000001) != 0)
  {

    if (v20 >= 2)
    {
      v22 = v21;
      do
      {
        v23 = v22 + 1;
        sub_20C5A0C2C();
        v22 = v23;
      }

      while (v20 != v23);
    }
  }

  else
  {
  }

  if (v19 >> 62)
  {
    sub_20C5A0D3C();
    v26 = v30;
    v21 = v31;
    v29 = v32;
  }

  else
  {
    v26 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
    v29 = 2 * v20;
  }

LABEL_31:
  v33 = (v29 >> 1) - v21;
  if (v29 >> 1 == v21)
  {
LABEL_32:
    result = swift_unknownObjectRelease();
    *v51 = v16;
    return result;
  }

  if ((v29 >> 1) > v21)
  {
    v52 = v15;
    v34 = (v26 + 8 * v21);
    while (1)
    {
      v41 = *v34;
      v42 = [v41 type];
      if (!v42)
      {
        break;
      }

      v43 = v42;
      v44 = sub_20C5A039C();
      v46 = v45;
      if (v44 == sub_20C5A039C() && v46 == v47)
      {
      }

      else
      {
        v49 = sub_20C5A0E9C();

        if ((v49 & 1) == 0)
        {
          break;
        }
      }

      v38 = *(v16 + 16);
      v37 = *(v16 + 24);
      v39 = v38 + 1;
      v35 = 0x80;
      if (v38 >= v37 >> 1)
      {
        v36 = v52;
LABEL_48:
        v16 = sub_20C4ECCEC((v37 > 1), v39, 1, v16);
        goto LABEL_36;
      }

      v36 = v52;
LABEL_36:

      *(v16 + 16) = v39;
      v40 = v16 + 24 * v38;
      *(v40 + 32) = v36;
      *(v40 + 40) = 1;
      *(v40 + 48) = v35;
      ++v34;
      if (!--v33)
      {
        goto LABEL_32;
      }
    }

    v35 = 0;
    v36 = 0;
    v38 = *(v16 + 16);
    v37 = *(v16 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}