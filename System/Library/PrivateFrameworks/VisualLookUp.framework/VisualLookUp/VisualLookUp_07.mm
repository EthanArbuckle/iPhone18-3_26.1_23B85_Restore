uint64_t sub_1D9A12900(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v181 = a4;
  v7 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v192 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v178 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v178 - v12;
  v199 = sub_1D9C7D8DC();
  v13 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v15 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v178 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v197 = &v178 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v179 = &v178 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v178 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v184 = &v178 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v178 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v183 = &v178 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v194 = &v178 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v187 = &v178 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v188 = &v178 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v186 = &v178 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v193 = &v178 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v178 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v178 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v178 - v48;
  v185 = *a2;
  v50 = sub_1D9B6834C(a1);
  v198 = a3;
  v201 = a3;
  v196 = sub_1D9B0923C(sub_1D9A14250, v200, v50);
  v52 = v51;
  v54 = v53;

  if (!v52)
  {
    goto LABEL_12;
  }

  if (!*(v54 + 16))
  {

LABEL_12:
    static Logger.argos.getter(v18);
    sub_1D9A3E0E0(v15);
    v93 = *(v13 + 8);
    v94 = v199;
    v93(v18, v199);
    v95 = sub_1D9C7D8BC();
    v96 = sub_1D9C7E09C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1D9962000, v95, v96, "Missing classification result. Consider as satisfied to be conservative.", v97, 2u);
      MEMORY[0x1DA7405F0](v97, -1, -1);
    }

    v93(v15, v94);
    return 1;
  }

  v178 = 0;
  static Logger.argos.getter(v49);
  sub_1D9A3E0E0(v46);
  v57 = *(v13 + 8);
  v56 = v13 + 8;
  v55 = v57;
  v57(v49, v199);

  v58 = sub_1D9C7D8BC();
  v59 = sub_1D9C7E09C();

  v60 = os_log_type_enabled(v58, v59);
  v180 = v57;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v202[0] = v62;
    *v61 = 136315138;

    v63 = sub_1D9A0E224(v196, v52, v202);

    *(v61 + 4) = v63;
    _os_log_impl(&dword_1D9962000, v58, v59, "ClassificationInfo ModelURN: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v64 = v62;
    v55 = v180;
    MEMORY[0x1DA7405F0](v64, -1, -1);
    MEMORY[0x1DA7405F0](v61, -1, -1);
  }

  v55(v46, v199);
  v65 = v193;
  static Logger.argos.getter(v43);
  sub_1D9A3E0E0(v65);
  v55(v43, v199);

  v66 = sub_1D9C7D8BC();
  v67 = sub_1D9C7E09C();

  v68 = os_log_type_enabled(v66, v67);
  v190 = v56;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v202[0] = v70;
    *v69 = 136315138;

    v72 = MEMORY[0x1DA73E110](v71, &type metadata for ClassificationItem);
    v74 = v73;

    v75 = sub_1D9A0E224(v72, v74, v202);
    v55 = v180;

    *(v69 + 4) = v75;
    _os_log_impl(&dword_1D9962000, v66, v67, "ClassificationInfo Results: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    MEMORY[0x1DA7405F0](v70, -1, -1);
    MEMORY[0x1DA7405F0](v69, -1, -1);
  }

  v55(v65, v199);
  v76 = v198;
  v78 = v194;
  v77 = v195;
  v79 = *(v198 + 16);
  if (*(v79 + 16))
  {
    if (sub_1D9A60A78(v79, v196, v52, v54))
    {
      v80 = v186;
      static Logger.argos.getter(v186);
      v81 = v188;
      sub_1D9A3E0E0(v188);
      v55(v80, v199);
      sub_1D9A14310(v76, v77, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      v82 = sub_1D9C7D8BC();
      v83 = sub_1D9C7E09C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v202[0] = v85;
        *v84 = 136315138;
        v86 = *(v77 + 16);
        v87 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
        v88 = MEMORY[0x1DA73E110](v86, v87);
        v90 = v89;
        sub_1D9A14378(v77, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
        v91 = sub_1D9A0E224(v88, v90, v202);
        v55 = v180;

        *(v84 + 4) = v91;
        v76 = v198;
        _os_log_impl(&dword_1D9962000, v82, v83, "Has satisfied label for %s ", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        v92 = v199;
        MEMORY[0x1DA7405F0](v85, -1, -1);
        MEMORY[0x1DA7405F0](v84, -1, -1);

        v55(v81, v92);
      }

      else
      {

        v55(v81, v199);
        sub_1D9A14378(v77, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      }

      v98 = 1;
      v109 = *(v54 + 16);
      if (!v109)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }

    v99 = v187;
    static Logger.argos.getter(v187);
    sub_1D9A3E0E0(v78);
    v55(v99, v199);
    v100 = v189;
    sub_1D9A14310(v76, v189, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
    v101 = sub_1D9C7D8BC();
    v102 = sub_1D9C7E09C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = v100;
      v105 = swift_slowAlloc();
      v202[0] = v105;
      *v103 = 136315138;
      v106 = *v104;
      v107 = v104[1];

      sub_1D9A14378(v104, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      v108 = sub_1D9A0E224(v106, v107, v202);
      v55 = v180;

      *(v103 + 4) = v108;
      v76 = v198;
      _os_log_impl(&dword_1D9962000, v101, v102, "No satisfied labels for %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v105);
      MEMORY[0x1DA7405F0](v105, -1, -1);
      MEMORY[0x1DA7405F0](v103, -1, -1);

      v55(v78, v199);
    }

    else
    {

      sub_1D9A14378(v100, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
      v55(v78, v199);
    }
  }

  v98 = 0;
  v109 = *(v54 + 16);
  if (!v109)
  {
LABEL_20:

    v196 = 0;
    v110 = 0;
LABEL_31:
    v118 = *(v76 + 24);
    v119 = *(v76 + 32);
    v120 = HIBYTE(v119) & 0xF;
    if ((v119 & 0x2000000000000000) == 0)
    {
      v120 = v118 & 0xFFFFFFFFFFFFLL;
    }

    v121 = v197;
    v123 = v191;
    v122 = v192;
    if (v120)
    {
      if (v110 && (v118 == v196 && v110 == v119 || (sub_1D9C7E7DC() & 1) != 0))
      {

        v124 = v183;
        static Logger.argos.getter(v183);
        sub_1D9A3E0E0(v123);
        v55(v124, v199);
        sub_1D9A14310(v76, v122, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);

        v125 = sub_1D9C7D8BC();
        v126 = sub_1D9C7E09C();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v202[0] = v128;
          *v127 = 136315394;
          v129 = sub_1D9A0E224(v196, v110, v202);

          *(v127 + 4) = v129;
          *(v127 + 12) = 2080;
          v130 = *(v122 + 24);
          v131 = *(v122 + 32);

          sub_1D9A14378(v122, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
          v132 = sub_1D9A0E224(v130, v131, v202);
          v55 = v180;

          *(v127 + 14) = v132;
          v76 = v198;
          _os_log_impl(&dword_1D9962000, v125, v126, "Most confident item is %s required %s", v127, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v128, -1, -1);
          MEMORY[0x1DA7405F0](v127, -1, -1);
        }

        else
        {

          sub_1D9A14378(v122, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
        }

        v55(v123, v199);
        v142 = v184;
        if (*(v76 + 40) != 1)
        {
          v98 = 1;
          goto LABEL_52;
        }

        static Logger.argos.getter(v184);
        v143 = sub_1D9C7D8BC();
        v144 = sub_1D9C7E09C();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v202[0] = v146;
          *v145 = 136315138;
          v147 = sub_1D9A15C94(v185);
          v149 = sub_1D9A0E224(v147, v148, v202);
          v76 = v198;

          *(v145 + 4) = v149;
          v55 = v180;
          _os_log_impl(&dword_1D9962000, v143, v144, "Reject %s because it meets requirements but reject_domain is set.", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v146);
          MEMORY[0x1DA7405F0](v146, -1, -1);
          MEMORY[0x1DA7405F0](v145, -1, -1);
        }

        v141 = v142;
LABEL_50:
        v55(v141, v199);
        v98 = 0;
LABEL_52:
        v121 = v197;
        goto LABEL_53;
      }

      v98 = *(v76 + 40);
    }

    else if ((v98 & *(v76 + 40)) == 1)
    {
      v133 = v182;
      static Logger.argos.getter(v182);
      v134 = sub_1D9C7D8BC();
      v135 = sub_1D9C7E09C();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v202[0] = v137;
        *v136 = 136315138;
        v138 = sub_1D9A15C94(v185);
        v140 = sub_1D9A0E224(v138, v139, v202);
        v76 = v198;

        *(v136 + 4) = v140;
        v55 = v180;
        _os_log_impl(&dword_1D9962000, v134, v135, "Reject %s because it meets requirements but reject_domain is set.", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v137);
        MEMORY[0x1DA7405F0](v137, -1, -1);
        MEMORY[0x1DA7405F0](v136, -1, -1);
      }

      v141 = v133;
      goto LABEL_50;
    }

LABEL_53:
    if (*(v76 + 64) != 1)
    {

      return v98;
    }

    if ((v98 & 1) == 0)
    {

      return 0;
    }

    if (v110)
    {

      sub_1D9B62C60(v196, v110, v202);

      v150 = v202[0];
      if (LOBYTE(v202[0]) == 27)
      {
        static Logger.argos.getter(v121);

        v151 = sub_1D9C7D8BC();
        v152 = v121;
        v153 = sub_1D9C7E09C();

        if (os_log_type_enabled(v151, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v202[0] = v155;
          *v154 = 136315394;
          v156 = sub_1D9A15C94(v185);
          v158 = v55;
          v159 = sub_1D9A0E224(v156, v157, v202);

          *(v154 + 4) = v159;
          *(v154 + 12) = 2080;
          v160 = sub_1D9A0E224(v196, v110, v202);

          *(v154 + 14) = v160;
          _os_log_impl(&dword_1D9962000, v151, v153, "Reject %s because most confident item %s failed to map to a valid domain.", v154, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v155, -1, -1);
          MEMORY[0x1DA7405F0](v154, -1, -1);

          v158(v152, v199);
          return 0;
        }

LABEL_69:

        v55(v152, v199);
        return 0;
      }

      v161 = sub_1D9A15C94(v202[0]);
      v163 = v162;
      if (v161 == sub_1D9A15C94(v185) && v163 == v164)
      {
      }

      else
      {
        v165 = sub_1D9C7E7DC();

        if ((v165 & 1) == 0)
        {
          v152 = v179;
          static Logger.argos.getter(v179);

          v166 = sub_1D9C7D8BC();
          v167 = sub_1D9C7E09C();

          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v202[0] = v169;
            *v168 = 136315650;
            v170 = sub_1D9A15C94(v185);
            v171 = v55;
            v173 = sub_1D9A0E224(v170, v172, v202);

            *(v168 + 4) = v173;
            *(v168 + 12) = 2080;
            v174 = sub_1D9A0E224(v196, v110, v202);

            *(v168 + 14) = v174;
            *(v168 + 22) = 2080;
            v175 = sub_1D9A15C94(v150);
            v177 = sub_1D9A0E224(v175, v176, v202);

            *(v168 + 24) = v177;
            _os_log_impl(&dword_1D9962000, v166, v167, "Reject %s because most confident item %s is mapped to %s", v168, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1DA7405F0](v169, -1, -1);
            MEMORY[0x1DA7405F0](v168, -1, -1);

            v171(v152, v199);
            return 0;
          }

          goto LABEL_69;
        }
      }
    }

    return 1;
  }

LABEL_24:
  v110 = *(v54 + 40);
  v196 = *(v54 + 32);
  v111 = *(v54 + 48);

  v113 = 1;
LABEL_25:
  v114 = 24 * v113;
  while (1)
  {
    if (v109 == v113)
    {

      v76 = v198;
      goto LABEL_31;
    }

    if (v113 >= *(v54 + 16))
    {
      break;
    }

    ++v113;
    v115 = v114 + 24;
    v116 = *(v54 + v114 + 48);
    v114 += 24;
    if (v111 < v116)
    {
      v117 = *(v54 + v115 + 16);
      v196 = *(v54 + v115 + 8);

      v111 = v116;
      v110 = v117;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A13C84(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v51 = a4;
  v7 = sub_1D9C7D8DC();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a3;
  sub_1D99AB100(a2, v14, &qword_1ECB51B70);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D99A6AE0(v14, &qword_1ECB51B70);
    return 0;
  }

  sub_1D9A142A8(v14, v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  v20 = sub_1D9B6834C(a1);
  MEMORY[0x1EEE9AC00](v20);
  *(&v47 - 2) = v18;
  sub_1D9B0923C(sub_1D9A141A0, (&v47 - 4), v20);
  v22 = v21;
  v24 = v23;

  if (!v22)
  {
LABEL_25:
    sub_1D9A14378(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
    return 0;
  }

  if (sub_1D9A15C94(v19) == 1937006947 && v25 == 0xE400000000000000)
  {
  }

  else
  {
    v26 = sub_1D9C7E7DC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (*(v24 + 16) >= 5uLL)
  {
    v24 = sub_1D9A11748(4, v24);
  }

LABEL_10:
  v27 = *(v24 + 16);
  if (!v27)
  {
LABEL_24:

    goto LABEL_25;
  }

  v29 = *(v24 + 32);
  v28 = *(v24 + 40);
  v30 = *(v24 + 48);

  v32 = v30;
  v33 = 1;
LABEL_12:
  v34 = 24 * v33;
  while (v27 != v33)
  {
    if (v33 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    ++v33;
    v35 = v34 + 24;
    v36 = *(v24 + v34 + 48);
    v34 += 24;
    if (v32 < v36)
    {
      v29 = *(v24 + v35 + 8);
      v37 = *(v24 + v35 + 16);

      v32 = v36;
      v28 = v37;
      goto LABEL_12;
    }
  }

  if (!v51 || (v38 = v32, v39 = v18[8], , v40 = sub_1D99AEB38(v29, v28, v39), , (v40 & 0x100000000) != 0))
  {

    static Logger.argos.getter(v11);
    v41 = v48;
    sub_1D9A3E0E0(v48);
    v42 = v50;
    v43 = *(v49 + 8);
    v43(v11, v50);
    v44 = sub_1D9C7D8BC();
    v45 = sub_1D9C7E09C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D9962000, v44, v45, "Error getting threshold", v46, 2u);
      MEMORY[0x1DA7405F0](v46, -1, -1);
    }

    v43(v41, v42);
    goto LABEL_25;
  }

  if (v38 < *&v40)
  {
    goto LABEL_24;
  }

  sub_1D9A14378(v18, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  return v29;
}

uint64_t sub_1D9A141A0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *(v2 + 8) && a1[1] == *(v2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9C7E7DC() & 1;
  }
}

unint64_t sub_1D9A141F8()
{
  result = qword_1EDD2EBF0;
  if (!qword_1EDD2EBF0)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2EBF0);
  }

  return result;
}

uint64_t sub_1D9A14250(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9C7E7DC() & 1;
  }
}

uint64_t sub_1D9A142A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A14310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A14378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D9A143D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v76 - v5;
  v7 = *(v0 + 8);
  v8 = type metadata accessor for ObjectKnowledge();
  sub_1D99AB100(v0 + v8[6], v6, &qword_1ECB51FD0);
  v9 = *(v0 + v8[7]);
  v10 = (v0 + v8[8]);
  v12 = *v10;
  v11 = v10[1];
  v79 = v12;
  v78 = v11;
  v13 = v8[10];
  v14 = (v0 + v8[9]);
  v16 = *v14;
  v15 = v14[1];
  v77 = v16;
  v76 = v15;
  sub_1D99AB100(v0 + v13, v3, &qword_1ECB51FD0);
  sub_1D9A149E4(*(v0 + v8[11]));
  v17 = (v0 + v8[13]);
  v18 = (v0 + v8[14]);
  v19 = *v18;
  v20 = v18[1];
  if (v20 >> 60 == 15)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v96[2] = 0;
  }

  else
  {
    v23 = MEMORY[0x1E6969080];
    v21 = v19;
    v22 = v20;
  }

  v80 = *v17;
  v24 = *(v17 + 8);
  v96[0] = v21;
  v96[1] = v22;
  v97 = v23;
  v25 = (v0 + v8[15]);
  v95 = *v25;
  v94 = *(v25 + 4);
  v26 = v25[3];
  v82 = v25[2];
  v81 = v26;
  v27 = v25[4];
  v28 = *(v25 + 5);
  v93 = *(v25 + 48);
  v30 = v25[7];
  v29 = v25[8];
  v84 = v27;
  v85 = v29;
  v32 = v25[9];
  v31 = v25[10];
  v86 = v30;
  v87 = v31;
  v33 = v25[11];
  v88 = v32;
  v89 = v33;
  v34 = *(v25 + 12);
  v35 = *(v25 + 13);
  v91 = *(v25 + 28);
  sub_1D99DF410(v19, v20);
  if (v7)
  {
    v92 = sub_1D9C7DC4C();
  }

  else
  {
    v92 = 0;
  }

  v90 = sub_1D9C7DC4C();
  v36 = sub_1D9C7B80C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = 0;
  if (v38(v6, 1, v36) != 1)
  {
    v39 = sub_1D9C7B77C();
    (*(v37 + 8))(v6, v36);
  }

  v79 = sub_1D9C7DC4C();
  v78 = sub_1D9C7DC4C();
  v40 = v38(v3, 1, v36);
  v83 = v39;
  if (v40 == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_1D9C7B77C();
    (*(v37 + 8))(v3, v36);
  }

  sub_1D9A0835C(0, &qword_1EDD2A660);
  v41 = sub_1D9C7DF1C();

  v42 = v97;
  if (v97)
  {
    v43 = __swift_project_boxed_opaque_existential_1(v96, v97);
    v44 = *(v42 - 8);
    v45 = MEMORY[0x1EEE9AC00](v43);
    v47 = &v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v47, v45);
    v48 = sub_1D9C7E7CC();
    (*(v44 + 8))(v47, v42);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
  }

  else
  {
    v48 = 0;
  }

  if (v24)
  {
    v49 = 0;
  }

  else
  {
    v49 = v80;
  }

  v50 = objc_allocWithZone(VIObjectKnowledge);
  v51 = sub_1D9C7DC4C();
  v82 = v51;
  sub_1D9C7B98C();
  sub_1D9A15B44();
  v52 = sub_1D9C7DB3C();
  v84 = v52;
  v53 = sub_1D9C7DC4C();
  v86 = v53;
  v54 = sub_1D9C7DC4C();
  v88 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51358);
  v55 = sub_1D9C7DB3C();
  LODWORD(v75) = v91;
  v74 = v54;
  v73 = v53;
  LOBYTE(v72) = v93;
  v71 = v51;
  LOWORD(v70) = v94;
  v69 = v48;
  v67 = v41;
  v68 = v49;
  v56 = v50;
  LODWORD(v57) = v9;
  v58 = v92;
  v59 = v90;
  v60 = v83;
  v61 = v41;
  v62 = v79;
  v63 = v78;
  v64 = v77;
  v65 = [v56 initWithKnowledgeGraphID:v92 title:v90 thumbnailURL:v83 thumbnailAspectRatio:v79 shortDescription:v78 detailedDescription:v77 webURL:v57 knowledgeProperties:v28 serializedDomainType:v34 serializedDomainResponse:v35 csuQid:v67 csuIdType:v68 csuLocalizedLabel:v69 csuLocalizedLabelDictionary:v95 csuConfidence:v70 csuSensitiveLocation:v71 csuCategory:v52 csuVertical:v72 csuLocalizedSynonyms:v73 csuLongitute:v74 csuLatitute:v55 csuVersion:v75];

  swift_unknownObjectRelease();
  return v65;
}

uint64_t sub_1D9A149E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D9C7E4AC();
    v4 = a1 + 48;
    do
    {
      v5 = objc_allocWithZone(VIObjectKnowledgeProperty);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v6 = sub_1D9C7DC4C();

      v7 = sub_1D9C7DC4C();

      [v5 initWithName:v6 value:v7];

      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      v4 += 64;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void __swiftcall VisualUnderstanding.ImageRegion.toVIImageRegion()(VIImageRegion *__return_ptr retstr)
{
  v2 = VisualUnderstanding.ImageRegion.domainInfo.getter();
  v3 = *(v2 + 16);
  if (!v3)
  {

    goto LABEL_19;
  }

  v27 = v1;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D9C7E4AC();
  v4 = v3 - 1;
  v5 = 32;
  v28 = v2;
  while (1)
  {
    v29 = v5;
    v6 = (v2 + v5);
    v7 = v6[1];
    v31 = *v6;
    v32 = v7;
    v8 = v6[2];
    v9 = v6[3];
    v10 = v6[5];
    v35 = v6[4];
    v36 = v10;
    v33 = v8;
    v34 = v9;
    v11 = v6[6];
    v12 = v6[7];
    v13 = v6[8];
    *&v39[13] = *(v6 + 141);
    v38 = v12;
    *v39 = v13;
    v37 = v11;
    v14 = v10;
    v30[159] = v31;
    VisualDomain.mappedDomainKey.getter();
    if (*(&v14 + 1))
    {
    }

    sub_1D99AE054(&v31, v30);
    v15 = sub_1D9C7DC4C();

    if (*(&v14 + 1))
    {
      v16 = sub_1D9C7DC4C();

      if (v33)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = 0;
      if (v33)
      {
LABEL_7:
        v17 = sub_1D9C7DC4C();
        if (*(&v34 + 1))
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      }
    }

    v17 = 0;
    if (*(&v34 + 1))
    {
LABEL_8:
      v18 = sub_1D9C7DC4C();
      goto LABEL_12;
    }

LABEL_11:
    v18 = 0;
LABEL_12:
    v19 = *(&v35 + 1) ? sub_1D9C7DC4C() : 0;
    BYTE4(v26) = BYTE8(v33);
    BYTE3(v26) = v39[28];
    *(&v26 + 1) = *v39;
    LOBYTE(v26) = BYTE14(v38);
    [objc_allocWithZone(VIImageRegionDomainInfo) initWithDomainKey:v15 labelName:v16 glyphName:v17 displayLabel:v18 displayMessage:v19 hasFocalPoint:1 focalPoint:*(&v31 + 1) isCornerGlyph:*&v32 ocrResultsRequired:v26 barcodeResultsRequired:? isLowConfidence:? shouldShowDynamicGlyph:?];

    sub_1D99AE0B0(&v31);
    sub_1D9C7E48C();
    sub_1D9C7E4BC();
    sub_1D9C7E4CC();
    sub_1D9C7E49C();
    if (!v4)
    {
      break;
    }

    --v4;
    v2 = v28;
    v5 = v29 + 160;
  }

  v1 = v27;
LABEL_19:
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[2];
  v23 = v1[3];
  v24 = objc_allocWithZone(VIImageRegion);
  sub_1D9A0835C(0, &qword_1EDD2A680);
  v25 = sub_1D9C7DF1C();

  [v24 initWithRegionOfInterest:v25 domainInfo:{v20, v21, v22, v23}];
}

id sub_1D9A14E50()
{
  v1 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[9];
  v39 = v0[8];
  v40 = v5;
  v41 = v0[10];
  v42 = *(v0 + 22);
  v6 = v0[5];
  v35 = v0[4];
  v36 = v6;
  v7 = v0[7];
  v37 = v0[6];
  v38 = v7;
  v8 = v0[1];
  v31 = *v0;
  v9 = v0[2];
  v10 = v0[3];
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v11 = VisualUnderstanding.imageRegions.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v30[1] = MEMORY[0x1E69E7CC0];
    sub_1D9C7E4AC();
    v13 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1D9A15B9C(v13, v4, type metadata accessor for VisualUnderstanding.ImageRegion);
      VisualUnderstanding.ImageRegion.toVIImageRegion()(v15);
      sub_1D9A15C04(v4, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  sub_1D9C7B59C();
  swift_allocObject();
  sub_1D9C7B58C();
  v16 = v0[9];
  v39 = v0[8];
  v40 = v16;
  v41 = v0[10];
  v42 = *(v0 + 22);
  v17 = v0[5];
  v35 = v0[4];
  v36 = v17;
  v18 = v0[7];
  v37 = v0[6];
  v38 = v18;
  v19 = v0[1];
  v31 = *v0;
  v20 = v0[2];
  v21 = v0[3];
  v32 = v19;
  v33 = v20;
  v34 = v21;
  sub_1D9A0EBFC();
  v22 = sub_1D9C7B57C();
  v24 = v23;

  v25 = objc_allocWithZone(VIVisualUnderstanding);
  sub_1D9A0835C(0, &qword_1EDD2A6B8);
  v26 = sub_1D9C7DF1C();

  v27 = sub_1D9C7B86C();
  sub_1D99A5748(v22, v24);
  v28 = [v25 initWithImageRegions:v26 payload:v27];

  return v28;
}

id sub_1D9A15160()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v42 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v14 = *(type metadata accessor for RegionSearchResult.ResultItem(0) + 28);
  sub_1D99AB100(&v1[v14], v13, &qword_1ECB51510);
  v15 = type metadata accessor for ObjectKnowledge();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v16 + 48;
  if (v17(v13, 1, v15) == 1)
  {
    sub_1D99A6AE0(v13, &qword_1ECB51510);
  }

  else
  {
    v19 = *(v13 + 1);

    sub_1D9A15C04(v13, type metadata accessor for ObjectKnowledge);
    if (v19)
    {

      goto LABEL_10;
    }
  }

  sub_1D99AB100(&v1[v14], v10, &qword_1ECB51510);
  if (v17(v10, 1, v15) == 1)
  {
    sub_1D99A6AE0(v10, &qword_1ECB51510);
    return 0;
  }

  v20 = &v10[*(v15 + 56)];
  v21 = *v20;
  v22 = v20[1];
  sub_1D99DF410(*v20, v22);
  sub_1D9A15C04(v10, type metadata accessor for ObjectKnowledge);
  if (v22 >> 60 == 15)
  {
    return 0;
  }

  sub_1D99B3C44(v21, v22);
LABEL_10:
  v52 = *v1;
  v45 = VisualDomain.mappedDomainKey.getter();
  v46 = v24;
  v25 = *(v1 + 1);
  sub_1D99AB100(&v1[v14], v7, &qword_1ECB51510);
  if (v17(v7, 1, v15) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51510);
LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  v26 = &v7[*(v15 + 48)];
  v27 = *(v26 + 1);
  v48 = *v26;
  v49 = v27;
  v28 = *(v26 + 3);
  v50 = *(v26 + 2);
  v51 = v28;
  sub_1D99AB100(&v48, v53, &qword_1ECB51B80);
  sub_1D9A15C04(v7, type metadata accessor for ObjectKnowledge);
  if (!*(&v48 + 1))
  {
    goto LABEL_14;
  }

  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  v53[3] = v51;
  v29 = sub_1D9A156C8();
  sub_1D99A6AE0(&v48, &qword_1ECB51B80);
LABEL_15:
  v47 = v18;
  v30 = *(v1 + 4);
  if (v30)
  {
    v42[2] = v25;
    v42[1] = *(v1 + 5);
    v43 = v17;
    v42[0] = *(v1 + 3);
    v44 = objc_allocWithZone(VIOntologyNode);

    v31 = v14;
    v32 = v4;
    v33 = sub_1D9C7DC4C();
    v34 = v29;
    v35 = sub_1D9C7DC4C();
    v44 = [v44 initWithKnowledgeGraphID:v33 labelDebugDescription:v35];

    v4 = v32;
    v14 = v31;

    v29 = v34;
    v17 = v43;
    sub_1D99FEF84(v42[0], v30);
  }

  else
  {
    v44 = 0;
  }

  sub_1D99AB100(&v1[v14], v4, &qword_1ECB51510);
  if (v17(v4, 1, v15) == 1)
  {
    sub_1D99A6AE0(v4, &qword_1ECB51510);
    v36 = 0;
  }

  else
  {
    v36 = sub_1D9A143D8();
    sub_1D9A15C04(v4, type metadata accessor for ObjectKnowledge);
  }

  v37 = objc_allocWithZone(VIRegionOfInterestResultItem);
  v38 = sub_1D9C7DC4C();

  v39 = sub_1D9C7DC4C();
  v40 = v44;
  v41 = [v37 initWithDomain:v38 caption:v39 thirdPartyObject:v29 ontologyNode:v44 objectKnowledge:v36];

  return v41;
}

id sub_1D9A156C8()
{
  v1 = v0[3];
  v2 = sub_1D9C7DC4C();
  if (v1)
  {
    v1 = sub_1D9C7DC4C();
  }

  if (v0[5])
  {
    v3 = sub_1D9C7DC4C();
  }

  else
  {
    v3 = 0;
  }

  if (v0[7] >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D9C7B86C();
  }

  v5 = [objc_allocWithZone(VIThirdPartyObject) initWithObjectIdentifier:v2 imageURL:v1 thumbnailURL:v3 metadata:v4];

  return v5;
}

id sub_1D9A15798()
{
  v1 = type metadata accessor for RegionSearchResult.ResultItem(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = *(v0 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D9A15B9C(v11, v4, type metadata accessor for RegionSearchResult.ResultItem);
      v13 = sub_1D9A15160();
      v14 = sub_1D9A15C04(v4, type metadata accessor for RegionSearchResult.ResultItem);
      if (v13)
      {
        MEMORY[0x1DA73E0E0](v14);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  v15 = objc_allocWithZone(VIRegionOfInterestResult);
  v16 = sub_1D9C7DC4C();
  sub_1D9A0835C(0, &qword_1EDD2A658);
  v17 = sub_1D9C7DF1C();

  sub_1D9A0835C(0, &qword_1EDD2A6B0);
  v18 = sub_1D9C7DF1C();
  v19 = [v15 initWithNormalizedBoundingBox:v16 glyphName:v17 resultItems:v18 searchSections:{v5, v6, v7, v8}];

  return v19;
}

id sub_1D9A159F4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 200);
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_1D9C7E4AC();
    v4 = v1 + 32;
    do
    {
      sub_1D9A15798();
      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      v4 += 72;
      --v3;
    }

    while (v3);
  }

  sub_1D9A0835C(0, &qword_1EDD2A668);
  v5 = sub_1D9C7DF1C();

  v6 = 0;
  if (v2 >> 60 != 15)
  {
    v6 = sub_1D9C7B86C();
  }

  v7 = [objc_allocWithZone(VISearchResult) initWithRegionOfInterestResults:v5 userFeedbackPayload:v6];

  return v7;
}

unint64_t sub_1D9A15B44()
{
  result = qword_1EDD2C2F8;
  if (!qword_1EDD2C2F8)
  {
    sub_1D9C7B98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2F8);
  }

  return result;
}

uint64_t sub_1D9A15B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A15C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

VisualLookUp::VisualDomain_optional __swiftcall VisualDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  result.value.domain = sub_1D9A163E0();
  v2->value.domain = result.value.domain;
  return result;
}

uint64_t sub_1D9A15C94(char a1)
{
  result = 7631457;
  switch(a1)
  {
    case 1:
      return 0x65727574616ELL;
    case 2:
      return 0x6B72616D646E616CLL;
    case 3:
      return 0x4C6C61727574616ELL;
    case 4:
      return 0x616964656DLL;
    case 5:
      return 1802465122;
    case 6:
      return 0x6D75626C61;
    case 7:
      return 1937006947;
    case 8:
      return 1936158564;
    case 9:
      v3 = 1835626081;
      return v3 | 0x736C6100000000;
    case 10:
      return 0x7364726962;
    case 11:
      return 0x73746365736E69;
    case 12:
      return 0x73656C6974706572;
    case 13:
      v3 = 1835884909;
      return v3 | 0x736C6100000000;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x6C657261707061;
    case 16:
      return 0x726F737365636361;
    case 17:
      return 1685024614;
    case 18:
      return 0x6F726665726F7473;
    case 19:
      v4 = 1852270963;
      goto LABEL_27;
    case 20:
      return 0xD000000000000011;
    case 21:
      v4 = 1869903201;
LABEL_27:
      result = v4 | 0x626D795300000000;
      break;
    case 22:
      result = 0x676F4C646E617262;
      break;
    case 23:
      result = 0x65646F63726162;
      break;
    case 24:
      result = 0x727574706C756373;
      break;
    case 25:
      result = 0x656E696C796B73;
      break;
    case 26:
      result = 0x44327463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9A161E0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D9A15C94(*a1);
  v5 = v4;
  if (v3 == sub_1D9A15C94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9A16268()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A15C94(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A162CC()
{
  sub_1D9A15C94(*v0);
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A16320()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A15C94(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t static VisualDomain.allVisualSearchDomains.getter()
{
  v0 = VIAllVisualSearchDomains();
  v1 = sub_1D9C7E03C();

  v2 = Set<>.toVisualDomains()(v1);

  return v2;
}

uint64_t sub_1D9A163E0()
{
  v0 = sub_1D9C7E81C();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D9A16438()
{
  result = qword_1EDD34DE0;
  if (!qword_1EDD34DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD34DE0);
  }

  return result;
}

uint64_t sub_1D9A1649C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D9A1652C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9A165F0()
{
  result = qword_1ECB51B88;
  if (!qword_1ECB51B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51B88);
  }

  return result;
}

unint64_t sub_1D9A16658()
{
  result = qword_1ECB51B98;
  if (!qword_1ECB51B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51B98);
  }

  return result;
}

unint64_t sub_1D9A166AC()
{
  result = qword_1ECB51BA0;
  if (!qword_1ECB51BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51BA0);
  }

  return result;
}

unint64_t sub_1D9A16700()
{
  result = qword_1EDD2C0E8;
  if (!qword_1EDD2C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C0E8);
  }

  return result;
}

unint64_t sub_1D9A16778(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x646E49616964656DLL;
      break;
    case 4:
      result = 0x4C65736F62726576;
      break;
    case 5:
      result = 0x626173694452434FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9A16970(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D9A16778(*a1);
  v5 = v4;
  if (v3 == sub_1D9A16778(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9A169F8()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A16778(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A16A5C()
{
  sub_1D9A16778(*v0);
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A16AB0()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A16778(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A16B10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9A180D8();
  *a1 = result;
  return result;
}

unint64_t sub_1D9A16B40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9A16778(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9A16B7C()
{
  v1 = sub_1D9C7D8DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = *(v0 + 32);
  v21 = sub_1D9C7DC4C();
  LODWORD(v20) = [v20 BOOLForKey_];

  if (v20)
  {
    static Logger.argos.getter(v19);
    sub_1D9A3E0E0(v16);
    v22 = *(v2 + 8);
    v22(v19, v1);
    v23 = sub_1D9C7D8BC();
    v24 = sub_1D9C7E08C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D9962000, v23, v24, "cameraDomainsLocationFilterEnabled: true", v25, 2u);
      MEMORY[0x1DA7405F0](v25, -1, -1);
    }

    v22(v16, v1);
    return 1;
  }

  v26 = (v2 + 8);
  if (!os_variant_has_internal_ui())
  {
    static Logger.argos.getter(v7);
    sub_1D9A3E0E0(v4);
    v32 = *v26;
    (*v26)(v7, v1);
    v33 = sub_1D9C7D8BC();
    v34 = sub_1D9C7E08C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D9962000, v33, v34, "cameraDomainsLocationFilterEnabled: true", v35, 2u);
      MEMORY[0x1DA7405F0](v35, -1, -1);
    }

    v32(v4, v1);
    return 1;
  }

  static Logger.argos.getter(v13);
  sub_1D9A3E0E0(v10);
  v27 = *v26;
  (*v26)(v13, v1);
  v28 = sub_1D9C7D8BC();
  v29 = sub_1D9C7E08C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D9962000, v28, v29, "cameraDomainsLocationFilterEnabled: false", v30, 2u);
    MEMORY[0x1DA7405F0](v30, -1, -1);
  }

  v27(v10, v1);
  return 0;
}

void sub_1D9A16F4C()
{
  v1 = *(v0 + 32);
  v2 = sub_1D9C7DC4C();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_1D9C7DC7C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    v8 = v4 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v9 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v36 = 0;
        sub_1D9B63060(v4, v6, 10);
        goto LABEL_64;
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        v35[0] = v4;
        v35[1] = v6 & 0xFFFFFFFFFFFFFFLL;
        if (v4 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v24 = 0;
              v25 = v35 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v7)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_72;
        }

        if (v4 != 45)
        {
          if (v7)
          {
            v31 = 0;
            v32 = v35;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v7)
        {
          if (--v7)
          {
            v16 = 0;
            v17 = v35 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v10 = sub_1D9C7E47C();
        }

        v11 = *v10;
        if (v11 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v20 = 0;
              if (v10)
              {
                v21 = v10 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_62;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v20 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_62;
                  }

                  ++v21;
                  if (!--v7)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        if (v11 != 45)
        {
          if (v8)
          {
            v28 = 0;
            if (v10)
            {
              while (1)
              {
                v29 = *v10 - 48;
                if (v29 > 9)
                {
                  goto LABEL_62;
                }

                v30 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_62;
                }

                v28 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v8)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          LOBYTE(v7) = 1;
          goto LABEL_63;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v13 = v10 + 1;
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_62;
                }

                v15 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_62;
                }

                v12 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_62;
                }

                ++v13;
                if (!--v7)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v7) = 0;
LABEL_63:
            v36 = v7;
LABEL_64:

            return;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1D9A172AC()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v1 = *(v0 + 32);
  v2 = sub_1D9C7DC4C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1D9C7DC7C();

  return v4;
}

uint64_t sub_1D9A17354()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_1D9A173FC(0xD00000000000001CLL, 0x80000001D9CA5A10);
  qword_1EDD355A8 = result;
  return result;
}

void *sub_1D9A173A8()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_1D9A173FC(0xD000000000000024, 0x80000001D9CA5970);
  off_1ECB51BA8 = result;
  return result;
}

uint64_t sub_1D9A173FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1D9C7DC4C();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v2[2] = a1;
    v2[3] = a2;
    v2[4] = v11;
    v12 = v11;
    sub_1D9A17790();

    return v2;
  }

  else
  {
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_17;
    }

    if (sub_1D9A75D94())
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v14 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v14 = &qword_1EDD355A8;
    }

    v15 = *(*v14 + 32);

    v16 = sub_1D9C7DC4C();
    LODWORD(v15) = [v15 BOOLForKey_];

    if (v15)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDD2C990;
    }

    else
    {
LABEL_17:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDD354D8;
    }

    v18 = __swift_project_value_buffer(v5, v17);
    (*(v6 + 16))(v8, v18, v5);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "NSUserDefaults.init(suiteName:) unexpectedly returned nil", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    result = sub_1D9C7E4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9A17790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C86430;
  *(inited + 32) = 2;
  v1 = MEMORY[0x1E69E6370];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  *(inited + 72) = 4;
  *(inited + 104) = v1;
  *(inited + 80) = 0;
  *(inited + 112) = 5;
  *(inited + 144) = v1;
  *(inited + 120) = 0;
  *(inited + 152) = 7;
  *(inited + 184) = v1;
  *(inited + 160) = 0;
  *(inited + 192) = 8;
  *(inited + 224) = v1;
  *(inited + 200) = 0;
  v2 = sub_1D9A4312C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52260);
  swift_arrayDestroy();
  sub_1D9A17894(v2);
}

void sub_1D9A17894(uint64_t a1)
{
  v2 = sub_1D9A43254(MEMORY[0x1E69E7CC0]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v29 = sub_1D9C7DB3C();

      [v30 registerDefaults_];

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(a1 + 48) + v12);
        sub_1D99A579C(*(a1 + 56) + 32 * v12, &v35);
        v34[0] = v13;
        v14 = 0xEE0079654B4C5255;
        v15 = 0x746E696F70646E65;
        switch(v13)
        {
          case 1:
            v15 = 0xD000000000000012;
            v14 = 0x80000001D9CA2BD0;
            break;
          case 2:
            v15 = 0xD000000000000012;
            v14 = 0x80000001D9CA2BF0;
            break;
          case 3:
            v14 = 0xEA00000000007865;
            v15 = 0x646E49616964656DLL;
            break;
          case 4:
            v15 = 0x4C65736F62726576;
            v14 = 0xEE00676E6967676FLL;
            break;
          case 5:
            v15 = 0x626173694452434FLL;
            v14 = 0xEB0000000064656CLL;
            break;
          case 6:
            v15 = 0xD00000000000001ELL;
            v14 = 0x80000001D9CA2C30;
            break;
          case 7:
            v15 = 0xD000000000000019;
            v14 = 0x80000001D9CA2C50;
            break;
          case 8:
            v15 = 0xD000000000000015;
            v14 = 0x80000001D9CA2C70;
            break;
          case 9:
            v15 = 0xD000000000000021;
            v14 = 0x80000001D9CA2C90;
            break;
          case 10:
            v15 = 0xD000000000000023;
            v14 = 0x80000001D9CA2CC0;
            break;
          case 11:
            v15 = 0xD000000000000022;
            v14 = 0x80000001D9CA2CF0;
            break;
          case 12:
            v15 = 0xD000000000000011;
            v14 = 0x80000001D9CA2D20;
            break;
          case 13:
            v15 = 0xD000000000000016;
            v14 = 0x80000001D9CA2D40;
            break;
          case 14:
            v15 = 0xD000000000000018;
            v14 = 0x80000001D9CA2D60;
            break;
          default:
            break;
        }

        sub_1D9A17DE0(v34, v32);
        sub_1D9A17E50(&v33, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1D99ED894(v15, v14);
        v19 = v2[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_38;
        }

        v23 = v18;
        if (v2[3] < v22)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_30;
        }

        v28 = v17;
        sub_1D9C13174();
        v17 = v28;
        if (v23)
        {
LABEL_5:
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0Tm(v9);
          sub_1D9A17E50(v31, v9);
          sub_1D9A17E60(v34);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

LABEL_31:
        v2[(v17 >> 6) + 8] |= 1 << v17;
        v25 = (v2[6] + 16 * v17);
        *v25 = v15;
        v25[1] = v14;
        sub_1D9A17E50(v31, (v2[7] + 32 * v17));
        sub_1D9A17E60(v34);
        v26 = v2[2];
        v21 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v21)
        {
          goto LABEL_39;
        }

        v2[2] = v27;
        v7 = v10;
        if (!v5)
        {
          goto LABEL_7;
        }

LABEL_6:
        v10 = v7;
      }

      sub_1D9C0785C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1D99ED894(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_40;
      }

LABEL_30:
      if (v23)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1D9C7E84C();
  __break(1u);
}

uint64_t sub_1D9A17D7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9A17DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D9A17E50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D9A17E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for InternalSettings.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalSettings.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9A1801C()
{
  result = qword_1ECB51BC0;
  if (!qword_1ECB51BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51BC0);
  }

  return result;
}

unint64_t sub_1D9A18084()
{
  result = qword_1EDD355B0;
  if (!qword_1EDD355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD355B0);
  }

  return result;
}

uint64_t sub_1D9A180D8()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9A18124(uint64_t result, uint64_t a2, uint64_t a3)
{
  v33 = result;
  v3 = 0;
  v4 = *(a3 + 16);
  v5 = a3 + 48;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v9 = *v7;
    v7 += 6;
    v10 = v9;
    ++v3;
    if (v9 >= 0.01)
    {
      v12 = *(v7 - 5);
      v11 = *(v7 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D99FE278(0, *(v6 + 16) + 1, 1);
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D99FE278((v13 > 1), v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 24 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      *(v15 + 48) = v10;
      v3 = v8;
      goto LABEL_2;
    }
  }

  v16 = *(v6 + 16);
  if (v16)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D99FE164(0, v16, 0);
    v17 = v35;
    v18 = (v6 + 48);
    v19 = MEMORY[0x1E69E64A8];
    do
    {
      v21 = *(v18 - 2);
      v20 = *(v18 - 1);
      v22 = *v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D9C85EA0;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1D99D2A60();
      *(v23 + 32) = v21;
      *(v23 + 40) = v20;
      *(v23 + 96) = MEMORY[0x1E69E6448];
      *(v23 + 104) = v19;
      *(v23 + 72) = v22;
      swift_bridgeObjectRetain_n();
      v24 = sub_1D9C7DCAC();
      v26 = v25;

      v28 = *(v35 + 16);
      v27 = *(v35 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D99FE164((v27 > 1), v28 + 1, 1);
      }

      *(v35 + 16) = v28 + 1;
      v29 = v35 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v18 += 6;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D9C7E40C();

  MEMORY[0x1DA73DF90](v33, a2);
  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
  v30 = MEMORY[0x1DA73E110](v17, MEMORY[0x1E69E6158]);
  v32 = v31;

  MEMORY[0x1DA73DF90](v30, v32);

  return 0x4E52556C65646F6DLL;
}

uint64_t sub_1D9A1842C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF8CE0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18524(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF8E00(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18618(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF8F0C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18764(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D9AF84B8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18900(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D9AF8AB8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A189EC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF9728(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18B50(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D9A18C94(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF94C0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18D98(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF85D0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D9A18E90(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AFA0B8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B50);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A18FB0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D9C7E50C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D9C7E50C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D9A1B02C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D9A190A8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D9AFA350(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 40 * v7 + 32), (v6 + 32), 40 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A1919C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF9E64(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D9A19294(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D9AF8728(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D9A19388(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = _s14DetectedResultVMa();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1D99CC070(a3 + v14 + v15 * v12, v11, _s14DetectedResultVMa);
      v16 = a1(v11);
      if (v3)
      {
        sub_1D9A1D640(v11, _s14DetectedResultVMa);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1D99CC158(v11, v23, _s14DetectedResultVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE238(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D99FE238(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_1D99CC158(v23, v13 + v14 + v19 * v15, _s14DetectedResultVMa);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1D9A1D640(v11, _s14DetectedResultVMa);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1D9A19614(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = *(a3 + 16);
  if (v18)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 48);
    v8 = MEMORY[0x1E69E7CC0];
    v16 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;
      v19[0] = v10;
      v19[1] = v9;
      v20 = v11;

      v12 = v5(v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D99FE278(0, *(v8 + 16) + 1, 1);
          v8 = v21;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1D99FE278((v13 > 1), v14 + 1, 1);
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 24 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        *(v15 + 48) = v11;
        v4 = a3;
        v5 = v16;
      }

      else
      {
      }

      ++v6;
      v7 += 6;
      if (v18 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1D9A197A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 40);
    v9 = MEMORY[0x1E69E7CC0];
    v20 = *(a3 + 16);
    v21 = result;
    while (v7 < *(v4 + 16))
    {
      v10 = *(v8 + 2);
      v11 = *v8;
      v25 = *(v8 - 1);
      v26 = v11;
      v27 = v10;
      v12 = *(v8 + 2);
      v28 = *(v8 + 1);
      v29 = v12;

      v13 = v6(&v25);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = v25;
        v15 = v26;
        v16 = v27;
        v23 = v29;
        v24 = v28;
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1D99FE458(0, *(v9 + 16) + 1, 1);
          v9 = v30;
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1D99FE458((v17 > 1), v18 + 1, 1);
          v9 = v30;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 56 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v15;
        *(v19 + 48) = v16;
        *(v19 + 72) = v23;
        *(v19 + 56) = v24;
        v4 = a3;
        v5 = v20;
        v6 = v21;
      }

      else
      {
      }

      ++v7;
      v8 += 7;
      if (v5 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v9;
  }

  return result;
}

double sub_1D9A19958@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *v3;
  switch(v11)
  {
    case 1:
      LOBYTE(v11) = 5;
      goto LABEL_27;
    case 2:
      LOBYTE(v11) = 17;
      goto LABEL_27;
    case 3:
      LOBYTE(v11) = 18;
      goto LABEL_27;
    case 4:
      LOBYTE(v11) = 13;
      goto LABEL_27;
    case 5:
      LOBYTE(v11) = 16;
      goto LABEL_27;
    case 6:
      LOBYTE(v11) = 14;
      goto LABEL_27;
    case 7:
      LOBYTE(v11) = 8;
      goto LABEL_27;
    case 8:
      LOBYTE(v11) = 7;
      goto LABEL_27;
    case 9:
      LOBYTE(v11) = 6;
      goto LABEL_27;
    case 10:
      LOBYTE(v11) = 9;
      goto LABEL_27;
    case 11:
      LOBYTE(v11) = 10;
      goto LABEL_27;
    case 12:
      LOBYTE(v11) = 11;
      goto LABEL_27;
    case 13:
      LOBYTE(v11) = 12;
      goto LABEL_27;
    case 14:
      LOBYTE(v11) = 2;
      goto LABEL_27;
    case 15:
      LOBYTE(v11) = 3;
      goto LABEL_27;
    case 16:
      LOBYTE(v11) = 29;
      goto LABEL_27;
    case 17:
      LOBYTE(v11) = 27;
      goto LABEL_27;
    case 18:
      LOBYTE(v11) = 30;
      goto LABEL_27;
    case 19:
      LOBYTE(v11) = 31;
      goto LABEL_27;
    case 20:
      LOBYTE(v11) = 34;
      goto LABEL_27;
    case 21:
      LOBYTE(v11) = 35;
      goto LABEL_27;
    case 22:
      LOBYTE(v11) = 33;
      goto LABEL_27;
    case 23:
      LOBYTE(v11) = 19;
      goto LABEL_27;
    case 24:
      LOBYTE(v11) = 26;
      goto LABEL_27;
    case 25:
      LOBYTE(v11) = 28;
      goto LABEL_27;
    case 26:
      goto LABEL_36;
    default:
LABEL_27:
      v12 = sub_1D9A72740(v11);
      if (*(v10 + 16))
      {
        v14 = sub_1D99ED894(v12, v13);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v10 + 56) + 8 * v14);
          v18 = v17[3];
          v19 = v17[4];
          v20 = v17[5];
          *a2 = v17[2];
          a2[1] = v18;
          a2[2] = v19;
          a2[3] = v20;

          return result;
        }
      }

      else
      {
      }

      static Logger.argos.getter(v9);
      v22 = sub_1D9C7D8BC();
      v23 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        v26 = sub_1D9A72740(v11);
        v28 = sub_1D9A0E224(v26, v27, &v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1D9962000, v22, v23, "trying to access node with kgid %s not present in default ontology graph", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x1DA7405F0](v25, -1, -1);
        MEMORY[0x1DA7405F0](v24, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
LABEL_36:
      result = 0.0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      return result;
  }
}

char *sub_1D9A19C84(uint64_t a1)
{
  *&v29 = a1;

  sub_1D9A1A4D4(&v29);
  v1 = v29;
  v2 = *(v29 + 16);
  if (!v2)
  {

    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v3 = v2 - 1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CD0];
  for (i = 32; ; i += 160)
  {
    v7 = *(v1 + i + 16);
    v29 = *(v1 + i);
    v30 = v7;
    v8 = *(v1 + i + 32);
    v9 = *(v1 + i + 48);
    v10 = *(v1 + i + 80);
    v33 = *(v1 + i + 64);
    v34 = v10;
    v31 = v8;
    v32 = v9;
    v11 = *(v1 + i + 96);
    v12 = *(v1 + i + 112);
    v13 = *(v1 + i + 128);
    *(v37 + 13) = *(v1 + i + 141);
    v36 = v12;
    v37[0] = v13;
    v35 = v11;
    v14 = v29;
    sub_1D99AE054(&v29, v28);
    if ((sub_1D9B66654(v14, v5) & 1) == 0)
    {
      break;
    }

    sub_1D99AE0B0(&v29);
    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_11:
    --v3;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v5;
  sub_1D9A1B0CC(v14, isUniquelyReferenced_nonNull_native, &v27);
  v5 = v28[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D9AF8974(0, *(v4 + 2) + 1, 1, v4);
  }

  v17 = *(v4 + 2);
  v16 = *(v4 + 3);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1D9AF8974((v16 > 1), v17 + 1, 1, v4);
  }

  *(v4 + 2) = v17 + 1;
  v18 = &v4[160 * v17];
  v19 = v30;
  *(v18 + 2) = v29;
  *(v18 + 3) = v19;
  v20 = v31;
  v21 = v32;
  v22 = v34;
  *(v18 + 6) = v33;
  *(v18 + 7) = v22;
  *(v18 + 4) = v20;
  *(v18 + 5) = v21;
  v23 = v35;
  v24 = v36;
  v25 = v37[0];
  *(v18 + 173) = *(v37 + 13);
  *(v18 + 9) = v24;
  *(v18 + 10) = v25;
  *(v18 + 8) = v23;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:

LABEL_14:

  return v4;
}

uint64_t sub_1D9A19E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = (a3 + 136); ; i += 20)
  {
    if (*(i - 2))
    {
      v7 = *(i - 1) == a1 && *i == a2;
      if (v7 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D9A19EFC(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  while (1)
  {
    sub_1D99CC070(v10, v4, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v4[104] == 1)
    {
      break;
    }

    sub_1D9A1D640(v4, type metadata accessor for VisualUnderstanding.ImageRegion);
    v10 += v11;
    if (!--v9)
    {
      return 0;
    }
  }

  sub_1D99CC158(v4, v8, type metadata accessor for VisualUnderstanding.ImageRegion);
  v13 = *(v8 + 10);
  sub_1D99CB864(v13, *(v8 + 11));
  sub_1D9A1D640(v8, type metadata accessor for VisualUnderstanding.ImageRegion);
  return v13;
}

uint64_t sub_1D9A1A0A0(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D99CC070(v7, v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    v11 = *(v5 + 7);

    result = sub_1D9A1D640(v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    v12 = *(v11 + 16);
    v13 = v9[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v9[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v9 = sub_1D9AF9018(isUniquelyReferenced_nonNull_native, v16, 1, v9);
      if (*(v11 + 16))
      {
LABEL_14:
        v17 = (v9[3] >> 1) - v9[2];
        result = _s14DetectedResultVMa();
        if (v17 < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v9[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_23;
          }

          v9[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v7 += v8;
    if (!--v6)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_1D9A1A2D4(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D99CC070(v7, v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    v11 = *(v5 + 8);

    result = sub_1D9A1D640(v5, type metadata accessor for VisualUnderstanding.ImageRegion);
    v12 = *(v11 + 16);
    v13 = *(v9 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v9 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_1D9AF8E00(result, v15, 1, v9);
      v9 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v9 + 3) >> 1) - *(v9 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v9 + 2);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_23;
          }

          *(v9 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v7 += v8;
    if (!--v6)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D9A1A4D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E91D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D9A1A540(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D9A1A540(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9C7E79C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D9C7DF5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D9A1A73C(v7, v8, a1, v4);
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
    return sub_1D9A1A638(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D9A1A638(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 160 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 - 44) + *(v8 - 40)) >= (*(v8 + 116) + *(v8 + 120)))
      {
LABEL_4:
        ++a3;
        v5 += 160;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v9 = (v8 - 160);
      v22 = *(v8 + 96);
      v23 = *(v8 + 112);
      *v24 = *(v8 + 128);
      *&v24[13] = *(v8 + 141);
      v18 = *(v8 + 32);
      v19 = *(v8 + 48);
      v20 = *(v8 + 64);
      v21 = *(v8 + 80);
      v16 = *v8;
      v17 = *(v8 + 16);
      v10 = *(v8 - 48);
      *(v8 + 96) = *(v8 - 64);
      *(v8 + 112) = v10;
      v11 = *(v8 - 16);
      *(v8 + 128) = *(v8 - 32);
      *(v8 + 144) = v11;
      v12 = *(v8 - 112);
      *(v8 + 32) = *(v8 - 128);
      *(v8 + 48) = v12;
      v13 = *(v8 - 80);
      *(v8 + 64) = *(v8 - 96);
      *(v8 + 80) = v13;
      v14 = *(v8 - 144);
      *v8 = *(v8 - 160);
      *(v8 + 16) = v14;
      v9[6] = v22;
      v9[7] = v23;
      v9[8] = *v24;
      *(v9 + 141) = *&v24[13];
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v20;
      v9[5] = v21;
      v8 -= 160;
      *v9 = v16;
      v9[1] = v17;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9A1A73C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D99E8FDC(v8);
      v8 = result;
    }

    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v8[16 * v80];
        v82 = *&v8[16 * v80 + 24];
        sub_1D9A1ADEC((*a3 + 160 * v81), (*a3 + 160 * *&v8[16 * v80 + 16]), (*a3 + 160 * v82), v5);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D99E8FDC(v8);
        }

        if (v80 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v8[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_1D99E8F50(v80 - 1);
        v80 = *(v8 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3 + 160 * v7;
      v11 = *(v10 + 116);
      v12 = *(v10 + 120);
      v13 = 160 * v9;
      v14 = *a3 + 160 * v9;
      v15 = v11 + v12;
      v16 = *(v14 + 116) + *(v14 + 120);
      v17 = v9 + 2;
      v18 = (v14 + 440);
      while (v6 != v17)
      {
        v19 = (*(v18 - 41) + *(v18 - 40)) >= (*(v18 - 1) + *v18);
        ++v17;
        v18 += 40;
        if ((((v16 < v15) ^ v19) & 1) == 0)
        {
          v7 = v17 - 1;
          if (v16 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v16 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v20 = 160 * v7 - 160;
        v5 = v7;
        v84 = v9;
        do
        {
          if (v9 != --v5)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v21 = (v22 + v20);
            v99 = *(v22 + v13 + 96);
            v101 = *(v22 + v13 + 112);
            *v103 = *(v22 + v13 + 128);
            *&v103[13] = *(v22 + v13 + 141);
            v91 = *(v22 + v13 + 32);
            v93 = *(v22 + v13 + 48);
            v95 = *(v22 + v13 + 64);
            v97 = *(v22 + v13 + 80);
            v87 = *(v22 + v13);
            v89 = *(v22 + v13 + 16);
            result = memmove((v22 + v13), (v22 + v20), 0xA0uLL);
            v21[6] = v99;
            v21[7] = v101;
            v21[8] = *v103;
            *(v21 + 141) = *&v103[13];
            v21[2] = v91;
            v21[3] = v93;
            v21[4] = v95;
            v21[5] = v97;
            *v21 = v87;
            v21[1] = v89;
          }

          ++v9;
          v20 -= 160;
          v13 += 160;
        }

        while (v9 < v5);
        v6 = a3[1];
        v9 = v84;
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 2);
    v35 = *(v8 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1D99E8FF0((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v36;
    v37 = &v8[16 * v5];
    *(v37 + 4) = v9;
    *(v37 + 5) = v7;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_107;
          }

          v62 = &v8[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v66 = &v8[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_71:
        if (v61)
        {
          goto LABEL_106;
        }

        v69 = &v8[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_78:
        v5 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v77 = *&v8[16 * v5 + 32];
        v78 = *&v8[16 * v39 + 40];
        sub_1D9A1ADEC((*a3 + 160 * v77), (*a3 + 160 * *&v8[16 * v39 + 32]), (*a3 + 160 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D99E8FDC(v8);
        }

        if (v5 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v79 = &v8[16 * v5];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_1D99E8F50(v39);
        v36 = *(v8 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v8[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_108;
      }

      if (v55 >= v47)
      {
        v73 = &v8[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 160 * v7;
  v25 = v9 - v7;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if ((*(v27 - 44) + *(v27 - 40)) >= (*(v27 + 116) + *(v27 + 120)))
    {
LABEL_29:
      ++v7;
      v24 += 160;
      --v25;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 160);
    v100 = *(v27 + 96);
    v102 = *(v27 + 112);
    *v104 = *(v27 + 128);
    *&v104[13] = *(v27 + 141);
    v92 = *(v27 + 32);
    v94 = *(v27 + 48);
    v96 = *(v27 + 64);
    v98 = *(v27 + 80);
    v88 = *v27;
    v90 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 96) = *(v27 - 64);
    *(v27 + 112) = v29;
    v30 = *(v27 - 16);
    *(v27 + 128) = *(v27 - 32);
    *(v27 + 144) = v30;
    v31 = *(v27 - 112);
    *(v27 + 32) = *(v27 - 128);
    *(v27 + 48) = v31;
    v32 = *(v27 - 80);
    *(v27 + 64) = *(v27 - 96);
    *(v27 + 80) = v32;
    v33 = *(v27 - 144);
    *v27 = *(v27 - 160);
    *(v27 + 16) = v33;
    v28[6] = v100;
    v28[7] = v102;
    v28[8] = *v104;
    *(v28 + 141) = *&v104[13];
    v28[2] = v92;
    v28[3] = v94;
    v28[4] = v96;
    v28[5] = v98;
    v27 -= 160;
    *v28 = v88;
    v28[1] = v90;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D9A1ADEC(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 160;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 160;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 160)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if ((v4[29] + v4[30]) < (v6[29] + v6[30]))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0xA0uLL);
    goto LABEL_9;
  }

  v16 = 40 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 160 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 160 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = v5 + 40;
      if ((*(v6 - 11) + *(v6 - 10)) < (*(v13 - 11) + *(v13 - 10)))
      {
        v19 = v6 - 40;
        if (v17 != v6)
        {
          memmove(v5, v6 - 40, 0xA0uLL);
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 40);
      if (v17 != v13)
      {
        memmove(v5, v13 - 40, 0xA0uLL);
      }

      v5 -= 40;
      v13 -= 40;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 40 * ((v13 - v4) / 160);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 4);
  }

  return 1;
}

uint64_t sub_1D9A1B02C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D9C7E50C();
LABEL_9:
  result = sub_1D9C7E44C();
  *v1 = result;
  return result;
}

uint64_t sub_1D9A1B0CC@<X0>(char a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a1);
  sub_1D9C7DD6C();

  v8 = sub_1D9C7E93C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = 0xE300000000000000;
      v13 = 7631457;
      switch(*(*(v7 + 48) + v10))
      {
        case 1:
          v12 = 0xE600000000000000;
          v13 = 0x65727574616ELL;
          break;
        case 2:
          v12 = 0xE800000000000000;
          v13 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v13 = 0x4C6C61727574616ELL;
          v12 = 0xEF6B72616D646E61;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v13 = 0x616964656DLL;
          break;
        case 5:
          v12 = 0xE400000000000000;
          v13 = 1802465122;
          break;
        case 6:
          v12 = 0xE500000000000000;
          v13 = 0x6D75626C61;
          break;
        case 7:
          v12 = 0xE400000000000000;
          v13 = 1937006947;
          break;
        case 8:
          v12 = 0xE400000000000000;
          v13 = 1936158564;
          break;
        case 9:
          v12 = 0xE700000000000000;
          v14 = 1835626081;
          goto LABEL_22;
        case 0xA:
          v12 = 0xE500000000000000;
          v13 = 0x7364726962;
          break;
        case 0xB:
          v12 = 0xE700000000000000;
          v13 = 0x73746365736E69;
          break;
        case 0xC:
          v12 = 0xE800000000000000;
          v13 = 0x73656C6974706572;
          break;
        case 0xD:
          v12 = 0xE700000000000000;
          v14 = 1835884909;
LABEL_22:
          v13 = v14 | 0x736C6100000000;
          break;
        case 0xE:
          v13 = 0xD000000000000010;
          v12 = 0x80000001D9CA2910;
          break;
        case 0xF:
          v12 = 0xE700000000000000;
          v13 = 0x6C657261707061;
          break;
        case 0x10:
          v13 = 0x726F737365636361;
          v12 = 0xEB00000000736569;
          break;
        case 0x11:
          v12 = 0xE400000000000000;
          v13 = 1685024614;
          break;
        case 0x12:
          v13 = 0x6F726665726F7473;
          v12 = 0xEA0000000000746ELL;
          break;
        case 0x13:
          v15 = 1852270963;
          goto LABEL_29;
        case 0x14:
          v13 = 0xD000000000000011;
          v12 = 0x80000001D9CA2950;
          break;
        case 0x15:
          v15 = 1869903201;
LABEL_29:
          v13 = v15 | 0x626D795300000000;
          v12 = 0xEA00000000006C6FLL;
          break;
        case 0x16:
          v13 = 0x676F4C646E617262;
          v12 = 0xEF6C6F626D79536FLL;
          break;
        case 0x17:
          v12 = 0xE700000000000000;
          v13 = 0x65646F63726162;
          break;
        case 0x18:
          v13 = 0x727574706C756373;
          v12 = 0xE900000000000065;
          break;
        case 0x19:
          v12 = 0xE700000000000000;
          v13 = 0x656E696C796B73;
          break;
        case 0x1A:
          v12 = 0xE800000000000000;
          v13 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      v16 = 0xE300000000000000;
      v17 = 7631457;
      switch(a1)
      {
        case 1:
          v16 = 0xE600000000000000;
          if (v13 == 0x65727574616ELL)
          {
            goto LABEL_83;
          }

          goto LABEL_84;
        case 2:
          v16 = 0xE800000000000000;
          if (v13 != 0x6B72616D646E616CLL)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 3:
          v16 = 0xEF6B72616D646E61;
          if (v13 != 0x4C6C61727574616ELL)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 4:
          v16 = 0xE500000000000000;
          if (v13 != 0x616964656DLL)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 5:
          v16 = 0xE400000000000000;
          if (v13 != 1802465122)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 6:
          v16 = 0xE500000000000000;
          if (v13 != 0x6D75626C61)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 7:
          v16 = 0xE400000000000000;
          if (v13 != 1937006947)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 8:
          v16 = 0xE400000000000000;
          if (v13 != 1936158564)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 9:
          v16 = 0xE700000000000000;
          v19 = 1835626081;
          goto LABEL_65;
        case 10:
          v16 = 0xE500000000000000;
          if (v13 != 0x7364726962)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 11:
          v16 = 0xE700000000000000;
          v18 = 0x746365736E69;
          goto LABEL_66;
        case 12:
          v16 = 0xE800000000000000;
          if (v13 != 0x73656C6974706572)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 13:
          v16 = 0xE700000000000000;
          v19 = 1835884909;
LABEL_65:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_66:
          if (v13 != (v18 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 14:
          v16 = 0x80000001D9CA2910;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 15:
          v16 = 0xE700000000000000;
          if (v13 != 0x6C657261707061)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 16:
          v16 = 0xEB00000000736569;
          if (v13 != 0x726F737365636361)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 17:
          v16 = 0xE400000000000000;
          if (v13 != 1685024614)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 18:
          v16 = 0xEA0000000000746ELL;
          if (v13 != 0x6F726665726F7473)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 19:
          v20 = 1852270963;
          goto LABEL_79;
        case 20:
          v16 = 0x80000001D9CA2950;
          if (v13 != 0xD000000000000011)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 21:
          v20 = 1869903201;
LABEL_79:
          v16 = 0xEA00000000006C6FLL;
          if (v13 != (v20 | 0x626D795300000000))
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 22:
          v16 = 0xEF6C6F626D79536FLL;
          if (v13 != 0x676F4C646E617262)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 23:
          v16 = 0xE700000000000000;
          v17 = 0x65646F63726162;
          goto LABEL_82;
        case 24:
          v16 = 0xE900000000000065;
          if (v13 != 0x727574706C756373)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 25:
          v16 = 0xE700000000000000;
          if (v13 != 0x656E696C796B73)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 26:
          v16 = 0xE800000000000000;
          if (v13 != 0x44327463656A626FLL)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        default:
LABEL_82:
          if (v13 != v17)
          {
            goto LABEL_84;
          }

LABEL_83:
          if (v12 == v16)
          {

            v22 = 0;
            v21 = 1;
            goto LABEL_93;
          }

LABEL_84:
          v21 = sub_1D9C7E7DC();

          if (v21)
          {
            v22 = 0;
            goto LABEL_93;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_90;
          }

          break;
      }
    }
  }

  v21 = 0;
LABEL_90:
  v22 = 1;
LABEL_93:
  v23 = *(v7 + 16);
  result = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v25 = *(v7 + 24);
  if (v25 >= result && (a2 & 1) != 0)
  {
    if (v21)
    {
      goto LABEL_197;
    }

    goto LABEL_193;
  }

  if (a2)
  {
    sub_1D9B92E2C();
  }

  else
  {
    if (v25 >= result)
    {
      result = sub_1D9B9D490();
      if (v21)
      {
        goto LABEL_197;
      }

LABEL_193:
      v39 = *v4;
      *(*v4 + 8 * (v10 >> 6) + 56) |= 1 << v10;
      *(*(v39 + 48) + v10) = a1;
      v40 = *(v39 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        *(v39 + 16) = v42;
        *a3 = 27;
        return result;
      }

      goto LABEL_200;
    }

    sub_1D9B94978();
  }

  v26 = *v4;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a1);
  sub_1D9C7DD6C();

  result = sub_1D9C7E93C();
  v27 = -1 << *(v26 + 32);
  v10 = result & ~v27;
  if (((*(v26 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_192:
    if (v21)
    {
LABEL_201:
      result = sub_1D9C7E83C();
      __break(1u);
      return result;
    }

    goto LABEL_193;
  }

  v28 = ~v27;
  while (2)
  {
    v29 = 0xE300000000000000;
    v30 = 7631457;
    switch(*(*(v26 + 48) + v10))
    {
      case 1:
        v29 = 0xE600000000000000;
        v30 = 0x65727574616ELL;
        break;
      case 2:
        v29 = 0xE800000000000000;
        v30 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v30 = 0x4C6C61727574616ELL;
        v29 = 0xEF6B72616D646E61;
        break;
      case 4:
        v29 = 0xE500000000000000;
        v30 = 0x616964656DLL;
        break;
      case 5:
        v29 = 0xE400000000000000;
        v30 = 1802465122;
        break;
      case 6:
        v29 = 0xE500000000000000;
        v30 = 0x6D75626C61;
        break;
      case 7:
        v29 = 0xE400000000000000;
        v30 = 1937006947;
        break;
      case 8:
        v29 = 0xE400000000000000;
        v30 = 1936158564;
        break;
      case 9:
        v29 = 0xE700000000000000;
        v31 = 1835626081;
        goto LABEL_125;
      case 0xA:
        v29 = 0xE500000000000000;
        v30 = 0x7364726962;
        break;
      case 0xB:
        v29 = 0xE700000000000000;
        v30 = 0x73746365736E69;
        break;
      case 0xC:
        v29 = 0xE800000000000000;
        v30 = 0x73656C6974706572;
        break;
      case 0xD:
        v29 = 0xE700000000000000;
        v31 = 1835884909;
LABEL_125:
        v30 = v31 | 0x736C6100000000;
        break;
      case 0xE:
        v30 = 0xD000000000000010;
        v29 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v29 = 0xE700000000000000;
        v30 = 0x6C657261707061;
        break;
      case 0x10:
        v30 = 0x726F737365636361;
        v29 = 0xEB00000000736569;
        break;
      case 0x11:
        v29 = 0xE400000000000000;
        v30 = 1685024614;
        break;
      case 0x12:
        v30 = 0x6F726665726F7473;
        v29 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v32 = 1852270963;
        goto LABEL_132;
      case 0x14:
        v30 = 0xD000000000000011;
        v29 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v32 = 1869903201;
LABEL_132:
        v30 = v32 | 0x626D795300000000;
        v29 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v30 = 0x676F4C646E617262;
        v29 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v29 = 0xE700000000000000;
        v30 = 0x65646F63726162;
        break;
      case 0x18:
        v30 = 0x727574706C756373;
        v29 = 0xE900000000000065;
        break;
      case 0x19:
        v29 = 0xE700000000000000;
        v30 = 0x656E696C796B73;
        break;
      case 0x1A:
        v29 = 0xE800000000000000;
        v30 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v33 = 0xE300000000000000;
    v34 = 7631457;
    switch(a1)
    {
      case 1:
        v33 = 0xE600000000000000;
        if (v30 == 0x65727574616ELL)
        {
          goto LABEL_186;
        }

        goto LABEL_187;
      case 2:
        v33 = 0xE800000000000000;
        if (v30 != 0x6B72616D646E616CLL)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 3:
        v33 = 0xEF6B72616D646E61;
        if (v30 != 0x4C6C61727574616ELL)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 4:
        v33 = 0xE500000000000000;
        if (v30 != 0x616964656DLL)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 5:
        v33 = 0xE400000000000000;
        if (v30 != 1802465122)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 6:
        v33 = 0xE500000000000000;
        if (v30 != 0x6D75626C61)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 7:
        v33 = 0xE400000000000000;
        if (v30 != 1937006947)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 8:
        v33 = 0xE400000000000000;
        if (v30 != 1936158564)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 9:
        v33 = 0xE700000000000000;
        v36 = 1835626081;
        goto LABEL_168;
      case 10:
        v33 = 0xE500000000000000;
        if (v30 != 0x7364726962)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 11:
        v33 = 0xE700000000000000;
        v35 = 0x746365736E69;
        goto LABEL_169;
      case 12:
        v33 = 0xE800000000000000;
        if (v30 != 0x73656C6974706572)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 13:
        v33 = 0xE700000000000000;
        v36 = 1835884909;
LABEL_168:
        v35 = v36 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_169:
        if (v30 != (v35 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 14:
        v33 = 0x80000001D9CA2910;
        if (v30 != 0xD000000000000010)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 15:
        v33 = 0xE700000000000000;
        if (v30 != 0x6C657261707061)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 16:
        v33 = 0xEB00000000736569;
        if (v30 != 0x726F737365636361)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 17:
        v33 = 0xE400000000000000;
        if (v30 != 1685024614)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 18:
        v33 = 0xEA0000000000746ELL;
        if (v30 != 0x6F726665726F7473)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 19:
        v37 = 1852270963;
        goto LABEL_182;
      case 20:
        v33 = 0x80000001D9CA2950;
        if (v30 != 0xD000000000000011)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 21:
        v37 = 1869903201;
LABEL_182:
        v33 = 0xEA00000000006C6FLL;
        if (v30 != (v37 | 0x626D795300000000))
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 22:
        v33 = 0xEF6C6F626D79536FLL;
        if (v30 != 0x676F4C646E617262)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 23:
        v33 = 0xE700000000000000;
        v34 = 0x65646F63726162;
        goto LABEL_185;
      case 24:
        v33 = 0xE900000000000065;
        if (v30 != 0x727574706C756373)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 25:
        v33 = 0xE700000000000000;
        if (v30 != 0x656E696C796B73)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      case 26:
        v33 = 0xE800000000000000;
        if (v30 != 0x44327463656A626FLL)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      default:
LABEL_185:
        if (v30 != v34)
        {
          goto LABEL_187;
        }

LABEL_186:
        if (v29 != v33)
        {
LABEL_187:
          v38 = sub_1D9C7E7DC();

          if (v38)
          {
            goto LABEL_196;
          }

          v10 = (v10 + 1) & v28;
          if (((*(v26 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_192;
          }

          continue;
        }

LABEL_196:
        if ((v21 & 1) == 0)
        {
          goto LABEL_201;
        }

LABEL_197:
        v43 = *(*v4 + 48);
        *a3 = *(v43 + v10);
        *(v43 + v10) = a1;
        return result;
    }
  }
}

uint64_t sub_1D9A1BF4C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v5 = v4;
  v9 = *v4;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a1);
  sub_1D9C7DD6C();

  sub_1D9C7E91C();
  v10 = sub_1D9C7E93C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  v54 = v4;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    v26 = 0;
    v27 = 1;
    goto LABEL_95;
  }

  v13 = ~v11;
  while (2)
  {
    v14 = *(v9 + 48) + 8 * v12;
    v15 = *(v14 + 4);
    v16 = 0xE300000000000000;
    v17 = 7631457;
    switch(*v14)
    {
      case 1:
        v16 = 0xE600000000000000;
        v17 = 0x65727574616ELL;
        break;
      case 2:
        v16 = 0xE800000000000000;
        v17 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v17 = 0x4C6C61727574616ELL;
        v16 = 0xEF6B72616D646E61;
        break;
      case 4:
        v16 = 0xE500000000000000;
        v17 = 0x616964656DLL;
        break;
      case 5:
        v16 = 0xE400000000000000;
        v17 = 1802465122;
        break;
      case 6:
        v16 = 0xE500000000000000;
        v17 = 0x6D75626C61;
        break;
      case 7:
        v16 = 0xE400000000000000;
        v17 = 1937006947;
        break;
      case 8:
        v16 = 0xE400000000000000;
        v17 = 1936158564;
        break;
      case 9:
        v16 = 0xE700000000000000;
        v18 = 1835626081;
        goto LABEL_25;
      case 0xA:
        v16 = 0xE500000000000000;
        v17 = 0x7364726962;
        break;
      case 0xB:
        v16 = 0xE700000000000000;
        v17 = 0x73746365736E69;
        break;
      case 0xC:
        v16 = 0xE800000000000000;
        v17 = 0x73656C6974706572;
        break;
      case 0xD:
        v16 = 0xE700000000000000;
        v18 = 1835884909;
LABEL_25:
        v17 = v18 | 0x736C6100000000;
        break;
      case 0xE:
        v17 = 0xD000000000000010;
        v16 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v16 = 0xE700000000000000;
        v17 = 0x6C657261707061;
        break;
      case 0x10:
        v17 = 0x726F737365636361;
        v16 = 0xEB00000000736569;
        break;
      case 0x11:
        v16 = 0xE400000000000000;
        v17 = 1685024614;
        break;
      case 0x12:
        v16 = 0xEA0000000000746ELL;
        v17 = 0x6F726665726F7473;
        break;
      case 0x13:
        v19 = 1852270963;
        goto LABEL_32;
      case 0x14:
        v17 = 0xD000000000000011;
        v16 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v19 = 1869903201;
LABEL_32:
        v17 = v19 | 0x626D795300000000;
        v16 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v17 = 0x676F4C646E617262;
        v16 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v16 = 0xE700000000000000;
        v17 = 0x65646F63726162;
        break;
      case 0x18:
        v17 = 0x727574706C756373;
        v16 = 0xE900000000000065;
        break;
      case 0x19:
        v16 = 0xE700000000000000;
        v17 = 0x656E696C796B73;
        break;
      case 0x1A:
        v16 = 0xE800000000000000;
        v17 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v20 = 0xE300000000000000;
    v21 = 7631457;
    switch(a1)
    {
      case 1:
        v20 = 0xE600000000000000;
        if (v17 == 0x65727574616ELL)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      case 2:
        v20 = 0xE800000000000000;
        if (v17 != 0x6B72616D646E616CLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 3:
        v20 = 0xEF6B72616D646E61;
        if (v17 != 0x4C6C61727574616ELL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 4:
        v20 = 0xE500000000000000;
        if (v17 != 0x616964656DLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 5:
        v20 = 0xE400000000000000;
        if (v17 != 1802465122)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 6:
        v20 = 0xE500000000000000;
        if (v17 != 0x6D75626C61)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 7:
        v20 = 0xE400000000000000;
        if (v17 != 1937006947)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 8:
        v20 = 0xE400000000000000;
        if (v17 != 1936158564)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 9:
        v20 = 0xE700000000000000;
        v23 = 1835626081;
        goto LABEL_68;
      case 10:
        v20 = 0xE500000000000000;
        if (v17 != 0x7364726962)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 11:
        v20 = 0xE700000000000000;
        v22 = 0x746365736E69;
        goto LABEL_69;
      case 12:
        v20 = 0xE800000000000000;
        if (v17 != 0x73656C6974706572)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 13:
        v20 = 0xE700000000000000;
        v23 = 1835884909;
LABEL_68:
        v22 = v23 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_69:
        if (v17 != (v22 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 14:
        v20 = 0x80000001D9CA2910;
        if (v17 != 0xD000000000000010)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 15:
        v20 = 0xE700000000000000;
        if (v17 != 0x6C657261707061)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 16:
        v20 = 0xEB00000000736569;
        if (v17 != 0x726F737365636361)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 17:
        v20 = 0xE400000000000000;
        if (v17 != 1685024614)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 18:
        v20 = 0xEA0000000000746ELL;
        if (v17 != 0x6F726665726F7473)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 19:
        v24 = 1852270963;
        goto LABEL_82;
      case 20:
        v20 = 0x80000001D9CA2950;
        if (v17 != 0xD000000000000011)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 21:
        v24 = 1869903201;
LABEL_82:
        v20 = 0xEA00000000006C6FLL;
        if (v17 != (v24 | 0x626D795300000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 22:
        v20 = 0xEF6C6F626D79536FLL;
        if (v17 != 0x676F4C646E617262)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 23:
        v20 = 0xE700000000000000;
        v21 = 0x65646F63726162;
        goto LABEL_85;
      case 24:
        v20 = 0xE900000000000065;
        if (v17 != 0x727574706C756373)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 25:
        v20 = 0xE700000000000000;
        if (v17 != 0x656E696C796B73)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 26:
        v20 = 0xE800000000000000;
        if (v17 != 0x44327463656A626FLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      default:
LABEL_85:
        if (v17 != v21)
        {
          goto LABEL_87;
        }

LABEL_86:
        if (v16 == v20)
        {
        }

        else
        {
LABEL_87:
          v25 = sub_1D9C7E7DC();

          if ((v25 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v15 != a4)
        {
LABEL_5:
          v12 = (v12 + 1) & v13;
          if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            v26 = 0;
            v27 = 1;
            goto LABEL_94;
          }

          continue;
        }

        v27 = 0;
        v26 = 1;
LABEL_94:
        v5 = v54;
LABEL_95:
        v28 = *(v9 + 16);
        result = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

        v30 = *(v9 + 24);
        if (v30 >= result && (a2 & 1) != 0)
        {
          if (v26)
          {
            goto LABEL_200;
          }

          goto LABEL_197;
        }

        if (a2)
        {
          sub_1D9B93594();
        }

        else
        {
          if (v30 >= result)
          {
            result = sub_1D9B9D868();
            if (v26)
            {
              goto LABEL_200;
            }

            goto LABEL_197;
          }

          sub_1D9B95050();
        }

        v31 = *v5;
        sub_1D9C7E8DC();
        sub_1D9A15C94(a1);
        sub_1D9C7DD6C();

        sub_1D9C7E91C();
        result = sub_1D9C7E93C();
        v32 = -1 << *(v31 + 32);
        v12 = result & ~v32;
        if (((*(v31 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
LABEL_196:
          v5 = v54;
          if (v26)
          {
            goto LABEL_203;
          }

LABEL_197:
          v46 = *v5;
          *(*v5 + 8 * (v12 >> 6) + 56) |= 1 << v12;
          v47 = *(v46 + 48) + 8 * v12;
          *v47 = a1;
          *(v47 + 4) = a4;
          v48 = *(v46 + 16);
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (!v49)
          {
            *(v46 + 16) = v50;
            *a3 = 27;
            return result;
          }

          goto LABEL_202;
        }

        v33 = ~v32;
        while (2)
        {
          v34 = *(v31 + 48) + 8 * v12;
          v35 = *(v34 + 4);
          v36 = 0xE300000000000000;
          v37 = 7631457;
          switch(*v34)
          {
            case 1:
              v36 = 0xE600000000000000;
              v37 = 0x65727574616ELL;
              break;
            case 2:
              v36 = 0xE800000000000000;
              v37 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v37 = 0x4C6C61727574616ELL;
              v36 = 0xEF6B72616D646E61;
              break;
            case 4:
              v36 = 0xE500000000000000;
              v37 = 0x616964656DLL;
              break;
            case 5:
              v36 = 0xE400000000000000;
              v37 = 1802465122;
              break;
            case 6:
              v36 = 0xE500000000000000;
              v37 = 0x6D75626C61;
              break;
            case 7:
              v36 = 0xE400000000000000;
              v37 = 1937006947;
              break;
            case 8:
              v36 = 0xE400000000000000;
              v37 = 1936158564;
              break;
            case 9:
              v36 = 0xE700000000000000;
              v38 = 1835626081;
              goto LABEL_130;
            case 0xA:
              v36 = 0xE500000000000000;
              v37 = 0x7364726962;
              break;
            case 0xB:
              v36 = 0xE700000000000000;
              v37 = 0x73746365736E69;
              break;
            case 0xC:
              v36 = 0xE800000000000000;
              v37 = 0x73656C6974706572;
              break;
            case 0xD:
              v36 = 0xE700000000000000;
              v38 = 1835884909;
LABEL_130:
              v37 = v38 | 0x736C6100000000;
              break;
            case 0xE:
              v37 = 0xD000000000000010;
              v36 = 0x80000001D9CA2910;
              break;
            case 0xF:
              v36 = 0xE700000000000000;
              v37 = 0x6C657261707061;
              break;
            case 0x10:
              v37 = 0x726F737365636361;
              v36 = 0xEB00000000736569;
              break;
            case 0x11:
              v36 = 0xE400000000000000;
              v37 = 1685024614;
              break;
            case 0x12:
              v36 = 0xEA0000000000746ELL;
              v37 = 0x6F726665726F7473;
              break;
            case 0x13:
              v39 = 1852270963;
              goto LABEL_137;
            case 0x14:
              v37 = 0xD000000000000011;
              v36 = 0x80000001D9CA2950;
              break;
            case 0x15:
              v39 = 1869903201;
LABEL_137:
              v37 = v39 | 0x626D795300000000;
              v36 = 0xEA00000000006C6FLL;
              break;
            case 0x16:
              v37 = 0x676F4C646E617262;
              v36 = 0xEF6C6F626D79536FLL;
              break;
            case 0x17:
              v36 = 0xE700000000000000;
              v37 = 0x65646F63726162;
              break;
            case 0x18:
              v37 = 0x727574706C756373;
              v36 = 0xE900000000000065;
              break;
            case 0x19:
              v36 = 0xE700000000000000;
              v37 = 0x656E696C796B73;
              break;
            case 0x1A:
              v36 = 0xE800000000000000;
              v37 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v40 = 0xE300000000000000;
          v41 = 7631457;
          switch(a1)
          {
            case 1:
              v40 = 0xE600000000000000;
              if (v37 == 0x65727574616ELL)
              {
                goto LABEL_191;
              }

              goto LABEL_192;
            case 2:
              v40 = 0xE800000000000000;
              if (v37 != 0x6B72616D646E616CLL)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 3:
              v40 = 0xEF6B72616D646E61;
              if (v37 != 0x4C6C61727574616ELL)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 4:
              v40 = 0xE500000000000000;
              if (v37 != 0x616964656DLL)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 5:
              v40 = 0xE400000000000000;
              if (v37 != 1802465122)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 6:
              v40 = 0xE500000000000000;
              if (v37 != 0x6D75626C61)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 7:
              v40 = 0xE400000000000000;
              if (v37 != 1937006947)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 8:
              v40 = 0xE400000000000000;
              if (v37 != 1936158564)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 9:
              v40 = 0xE700000000000000;
              v43 = 1835626081;
              goto LABEL_173;
            case 10:
              v40 = 0xE500000000000000;
              if (v37 != 0x7364726962)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 11:
              v40 = 0xE700000000000000;
              v42 = 0x746365736E69;
              goto LABEL_174;
            case 12:
              v40 = 0xE800000000000000;
              if (v37 != 0x73656C6974706572)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 13:
              v40 = 0xE700000000000000;
              v43 = 1835884909;
LABEL_173:
              v42 = v43 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_174:
              if (v37 != (v42 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 14:
              v40 = 0x80000001D9CA2910;
              if (v37 != 0xD000000000000010)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 15:
              v40 = 0xE700000000000000;
              if (v37 != 0x6C657261707061)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 16:
              v40 = 0xEB00000000736569;
              if (v37 != 0x726F737365636361)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 17:
              v40 = 0xE400000000000000;
              if (v37 != 1685024614)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 18:
              v40 = 0xEA0000000000746ELL;
              if (v37 != 0x6F726665726F7473)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 19:
              v44 = 1852270963;
              goto LABEL_187;
            case 20:
              v40 = 0x80000001D9CA2950;
              if (v37 != 0xD000000000000011)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 21:
              v44 = 1869903201;
LABEL_187:
              v40 = 0xEA00000000006C6FLL;
              if (v37 != (v44 | 0x626D795300000000))
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 22:
              v40 = 0xEF6C6F626D79536FLL;
              if (v37 != 0x676F4C646E617262)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 23:
              v40 = 0xE700000000000000;
              v41 = 0x65646F63726162;
              goto LABEL_190;
            case 24:
              v40 = 0xE900000000000065;
              if (v37 != 0x727574706C756373)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 25:
              v40 = 0xE700000000000000;
              if (v37 != 0x656E696C796B73)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            case 26:
              v40 = 0xE800000000000000;
              if (v37 != 0x44327463656A626FLL)
              {
                goto LABEL_192;
              }

              goto LABEL_191;
            default:
LABEL_190:
              if (v37 != v41)
              {
                goto LABEL_192;
              }

LABEL_191:
              if (v36 == v40)
              {
              }

              else
              {
LABEL_192:
                v45 = sub_1D9C7E7DC();

                if ((v45 & 1) == 0)
                {
                  goto LABEL_110;
                }
              }

              if (v35 != a4)
              {
LABEL_110:
                v12 = (v12 + 1) & v33;
                if (((*(v31 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
                {
                  goto LABEL_196;
                }

                continue;
              }

              v5 = v54;
              if (v26)
              {
LABEL_200:
                v51 = *(*v5 + 48) + 8 * v12;
                v52 = *(v51 + 4);
                *a3 = *v51;
                *(a3 + 4) = v52;
                *v51 = a1;
                *(v51 + 4) = a4;
                return result;
              }

LABEL_203:
              result = sub_1D9C7E83C();
              __break(1u);
              return result;
          }
        }
    }
  }
}

uint64_t (*sub_1D9A1CE54(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA73E610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D9A1CED4;
  }

  __break(1u);
  return result;
}

void (*sub_1D9A1CEDC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA73E610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D9A1CF5C;
  }

  __break(1u);
  return result;
}

void (*sub_1D9A1CF64(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA73E610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D9A1D6F4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A1CFE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D9C7E50C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D9C7E50C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D9A1D6A0(&qword_1ECB51C08, &qword_1ECB51C00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51C00);
            v9 = sub_1D9A1CE54(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EspressoRequest(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A1D174(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D9C7E50C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D9C7E50C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D9A1D6A0(&qword_1ECB51BE8, &qword_1ECB51BE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BE0);
            v9 = sub_1D9A1CEDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D9A0835C(0, &qword_1EDD2A6B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A1D314(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D9C7E50C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D9C7E50C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D9A1D6A0(&qword_1ECB51BD8, &qword_1ECB51BD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BD0);
            v9 = sub_1D9A1CF64(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D9A0835C(0, &qword_1EDD2A698);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1D9A1D4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1D99A85E0(a1, &v13 - v3);
  Context = type metadata accessor for VisualQueryContext();
  if ((*(*(Context - 8) + 48))(v4, 1, Context) == 1)
  {
    sub_1D99A8650(v4);
    sub_1D9C7DC7C();
LABEL_10:

    return 0;
  }

  v7 = *(v4 + 5);
  v6 = *(v4 + 6);

  sub_1D9A1D640(v4, type metadata accessor for VisualQueryContext);
  v8 = sub_1D9C7DC7C();
  if (!v6)
  {
    goto LABEL_10;
  }

  if (v7 == v8 && v6 == v9)
  {

    return 1;
  }

  v11 = sub_1D9C7E7DC();

  return (v11 & 1) != 0;
}

uint64_t sub_1D9A1D640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A1D6A0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9A1D6F8(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  if (*(a2 + 8) != 1)
  {
    return 0;
  }

  v7 = a1[9];
  v74 = a1[8];
  v75 = v7;
  v76 = a1[10];
  v77 = *(a1 + 22);
  v8 = a1[5];
  v70 = a1[4];
  v71 = v8;
  v9 = a1[7];
  v72 = a1[6];
  v73 = v9;
  v10 = a1[1];
  v66 = *a1;
  v67 = v10;
  v11 = a1[3];
  v68 = a1[2];
  v69 = v11;
  v12 = sub_1D9B67A68();
  v49 = *(v12 + 16);
  if (!v49)
  {
LABEL_22:

    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(v54 + 80);
  v47 = v6;
  v48 = v12 + ((v15 + 32) & ~v15);
  v46 = v12;
  while (v13 < *(v12 + 16))
  {
    sub_1D9A1E3F4(v48 + *(v54 + 72) * v13, v6, type metadata accessor for VisualUnderstanding.ImageRegion);
    v16 = *(v6 + 6);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      v20 = v17 - 1;
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = (v19 + 160 * v18);
        v23 = v18;
        while (1)
        {
          if (v23 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v24 = v22[1];
          v56 = *v22;
          v57 = v24;
          v25 = v22[2];
          v26 = v22[3];
          v27 = v22[5];
          v60 = v22[4];
          v61 = v27;
          v58 = v25;
          v59 = v26;
          v28 = v22[6];
          v29 = v22[7];
          v30 = v22[8];
          *(v64 + 13) = *(v22 + 141);
          v63 = v29;
          v64[0] = v30;
          v62 = v28;
          v18 = v23 + 1;
          if (HIBYTE(v29))
          {
            break;
          }

          v22 += 10;
          ++v23;
          if (v17 == v18)
          {
            goto LABEL_19;
          }
        }

        v53 = v20;
        sub_1D99AE054(&v56, &v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v21;
        v51 = v19;
        v52 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE2D8(0, *(v21 + 16) + 1, 1);
          v21 = v65;
        }

        v20 = v53;
        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D99FE2D8((v32 > 1), v33 + 1, 1);
          v20 = v53;
          v21 = v65;
        }

        *(v21 + 16) = v33 + 1;
        v34 = (v21 + 160 * v33);
        v35 = v57;
        v34[2] = v56;
        v34[3] = v35;
        v36 = v58;
        v37 = v59;
        v38 = v61;
        v34[6] = v60;
        v34[7] = v38;
        v34[4] = v36;
        v34[5] = v37;
        v39 = v62;
        v40 = v63;
        v41 = v64[0];
        *(v34 + 173) = *(v64 + 13);
        v34[9] = v40;
        v34[10] = v41;
        v34[8] = v39;
        v19 = v51;
        v14 = v52;
      }

      while (v20 != v23);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

LABEL_19:
    *&v56 = v21;

    sub_1D9B698EC(&v56);
    if (v14)
    {
      goto LABEL_27;
    }

    v43 = v56;
    MEMORY[0x1EEE9AC00](v42);
    *(&v46 - 2) = v50;
    v44 = sub_1D9BC1744(sub_1D9A1E4BC, (&v46 - 4), v43);

    v6 = v47;
    sub_1D9A1E45C(v47, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v44)
    {

      return 1;
    }

    ++v13;
    v12 = v46;
    if (v13 == v49)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t sub_1D9A1DAB0(__int128 *a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[9];
  v73 = a1[8];
  v74 = v7;
  v75 = a1[10];
  v76 = *(a1 + 22);
  v8 = a1[5];
  v69 = a1[4];
  v70 = v8;
  v9 = a1[7];
  v71 = a1[6];
  v72 = v9;
  v10 = a1[1];
  v65 = *a1;
  v66 = v10;
  v11 = a1[3];
  v67 = a1[2];
  v68 = v11;
  v12 = sub_1D9B67A68();
  v49 = *(v12 + 16);
  if (v49)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(v4 + 80);
    v47 = v6;
    v48 = v12 + ((v15 + 32) & ~v15);
    v45 = v4;
    v46 = v12;
    while (v13 < *(v12 + 16))
    {
      v53 = 0;
      sub_1D9A1E3F4(v48 + *(v4 + 72) * v13, v6, type metadata accessor for VisualUnderstanding.ImageRegion);
      v16 = *(v6 + 6);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        v14 = (v16 + 32);
        v19 = v17 - 1;
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          v21 = &v14[160 * v18];
          v22 = v18;
          while (1)
          {
            if (v22 >= *(v16 + 16))
            {
              __break(1u);
              goto LABEL_24;
            }

            v23 = *(v21 + 1);
            v55 = *v21;
            v56 = v23;
            v24 = *(v21 + 2);
            v25 = *(v21 + 3);
            v26 = *(v21 + 5);
            v59 = *(v21 + 4);
            v60 = v26;
            v57 = v24;
            v58 = v25;
            v27 = *(v21 + 6);
            v28 = *(v21 + 7);
            v29 = *(v21 + 8);
            *(v63 + 13) = *(v21 + 141);
            v62 = v28;
            v63[0] = v29;
            v61 = v27;
            v18 = v22 + 1;
            if (HIBYTE(v28))
            {
              break;
            }

            v21 += 160;
            ++v22;
            if (v17 == v18)
            {
              goto LABEL_18;
            }
          }

          sub_1D99AE054(&v55, &v54);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v20;
          v51 = v19;
          v52 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE2D8(0, *(v20 + 16) + 1, 1);
            v20 = v64;
          }

          v32 = *(v20 + 16);
          v31 = *(v20 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D99FE2D8((v31 > 1), v32 + 1, 1);
            v20 = v64;
          }

          *(v20 + 16) = v32 + 1;
          v33 = (v20 + 160 * v32);
          v34 = v56;
          v33[2] = v55;
          v33[3] = v34;
          v35 = v57;
          v36 = v58;
          v37 = v60;
          v33[6] = v59;
          v33[7] = v37;
          v33[4] = v35;
          v33[5] = v36;
          v38 = v61;
          v39 = v62;
          v40 = v63[0];
          *(v33 + 173) = *(v63 + 13);
          v33[9] = v39;
          v33[10] = v40;
          v33[8] = v38;
          v19 = v51;
          v14 = v52;
        }

        while (v51 != v22);
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

LABEL_18:
      *&v55 = v20;

      v14 = v53;
      sub_1D9B698EC(&v55);
      if (v14)
      {
        goto LABEL_25;
      }

      v42 = v55;
      MEMORY[0x1EEE9AC00](v41);
      *(&v45 - 2) = v50;
      v43 = sub_1D9BC1744(sub_1D9A1E3D4, (&v45 - 4), v42);

      v6 = v47;
      sub_1D9A1E45C(v47, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v43)
      {

        return 1;
      }

      ++v13;
      v4 = v45;
      v12 = v46;
      if (v13 == v49)
      {
        goto LABEL_21;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
  }

  else
  {
LABEL_21:

    return 0;
  }

  return result;
}

uint64_t sub_1D9A1DE4C(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = sub_1D9A15C94(*a1);
  if (*(v8 + 16))
  {
    v11 = sub_1D99ED894(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1D9A1E3F4(*(v8 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v14 = *v7;
      sub_1D9A1E45C(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      return v14;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D9A1DF84(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = sub_1D9A15C94(*a1);
  if (*(v8 + 16))
  {
    v11 = sub_1D99ED894(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1D9A1E3F4(*(v8 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v14 = v7[1];
      sub_1D9A1E45C(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      return v14;
    }
  }

  else
  {
  }

  return 0;
}

void *sub_1D9A1E0BC(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  if (*(a1 + *(v8 + 64)) == 1 && (v9 = *(a1 + 112), (v10 = *(v9 + 16)) != 0))
  {
    v26 = *(a1 + 48);
    v11 = (v9 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    v25 = xmmword_1D9C85660;
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = *(v11 - 5);
      v15 = *(v11 - 4);
      v16 = *(v11 - 3);
      v17 = *(v11 - 2);
      v18 = *(v11 - 1);
      v19 = *v11;

      sub_1D9C7B92C();
      *v7 = v14;
      *(v7 + 1) = v15;
      *(v7 + 2) = v16;
      *(v7 + 3) = v17;
      v7[32] = 1;
      *(v7 + 5) = v12;
      *(v7 + 7) = v12;
      *(v7 + 8) = v12;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      v7[104] = 0;
      v7[*(v2 + 64)] = 0;
      *&v7[*(v2 + 68)] = v12;
      *(v7 + 6) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B0);
      v20 = swift_allocObject();
      *(v20 + 16) = v25;
      *(v20 + 32) = v14;
      *(v20 + 40) = v15;
      *(v20 + 48) = v16;
      *(v20 + 56) = v17;
      *(v20 + 64) = v18;
      *(v20 + 72) = v19;
      *(v7 + 14) = v20;
      sub_1D9A1E3F4(v7, v4, type metadata accessor for VisualUnderstanding.ImageRegion);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D9AF8A90(0, v13[2] + 1, 1, v13);
      }

      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        v13 = sub_1D9AF8A90(v21 > 1, v22 + 1, 1, v13);
      }

      v13[2] = v22 + 1;
      sub_1D99B1CE4(v4, v13 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22);
      sub_1D9A1E45C(v7, type metadata accessor for VisualUnderstanding.ImageRegion);
      v11 += 6;
      --v10;
    }

    while (v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51698);
    v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_1D9C85660;
    sub_1D9A1E3F4(a1, v13 + v23, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  return v13;
}

uint64_t sub_1D9A1E3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A1E45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D9A1E4DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1D9C8A470[a1];
  }

  if (a4)
  {
    a3 = qword_1D9C8A470[a3];
  }

  return a1 == a3;
}

uint64_t sub_1D9A1E50C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6874646977;
    }

    else
    {
      v3 = 0x746867696568;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 121;
    }

    else
    {
      v3 = 120;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 120;
  v6 = 0xE500000000000000;
  v7 = 0x6874646977;
  if (a2 != 2)
  {
    v7 = 0x746867696568;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 121;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D9C7E7DC();
  }

  return v10 & 1;
}

uint64_t sub_1D9A1E620(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "reportAnIssueEnvironment";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "VISUAL_INTELLIGENCE_NATURE";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "VISUAL_INTELLIGENCE_PETS";
      v4 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v3)
    {
      v5 = "VISUAL_INTELLIGENCE_POC";
    }

    else
    {
      v5 = "reportAnIssueEnvironment";
    }
  }

  if (a2 > 1u)
  {
    v2 = "VISUAL_INTELLIGENCE_NATURE";
    v6 = "VISUAL_INTELLIGENCE_PETS";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v6 = "VISUAL_INTELLIGENCE_POC";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001ALL;
    }

    else
    {
      v8 = 0xD000000000000017;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D9C7E7DC();
  }

  return v10 & 1;
}

uint64_t sub_1D9A1E740(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E6F6974636574;
  v3 = 0x65447463656A626FLL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x80000001D9CA29D0;
    v14 = 0xD000000000000019;
    if (a1 != 2)
    {
      v14 = 0x64656966696E75;
      v13 = 0xE700000000000000;
    }

    v15 = 0xD000000000000010;
    v16 = 0x80000001D9CA29B0;
    if (!a1)
    {
      v15 = 0x65447463656A626FLL;
      v16 = 0xEF6E6F6974636574;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x6F7765727574616ELL;
    v6 = 0xED00003276646C72;
    v7 = 0xE400000000000000;
    v8 = 1685024614;
    if (a1 != 7)
    {
      v8 = 0x626D79536E676973;
      v7 = 0xEA00000000006C6FLL;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x766432736F677261;
    v10 = 0xE900000000000032;
    if (a1 != 4)
    {
      v9 = 0x6F7765727574616ELL;
      v10 = 0xEB00000000646C72;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001D9CA29D0;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x64656966696E75)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0x80000001D9CA29B0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000032;
        if (v11 != 0x766432736F677261)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEB00000000646C72;
        if (v11 != 0x6F7765727574616ELL)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xED00003276646C72;
      if (v11 != 0x6F7765727574616ELL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1685024614)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x626D79536E676973;
    v2 = 0xEA00000000006C6FLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_1D9C7E7DC();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_1D9A1EA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 4) != *(v6 + 4) || v10[20] != v6[20])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v17 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
    goto LABEL_17;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D9A1ECA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_18:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) == 0 || *(v10 + 4) != *(v6 + 4) || v10[20] != v6[20] || v10[21] != v6[21])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v17 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_18;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D9A1EF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D9C7E7DC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9A1EF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = (&v61 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E48);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v76 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v12 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = (&v61 - v15);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v61 - v16;
  v74 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  MEMORY[0x1EEE9AC00](v74);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v61 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_46:
    v58 = 0;
    return v58 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v67 = a1 + v25;
  v68 = v4;
  v26 = 0;
  v65 = a2 + v25;
  v63 = v9;
  v64 = (v12 + 48);
  v27 = (v5 + 48);
  v66 = *(v21 + 72);
  v28 = v76;
  v29 = v74;
  v70 = v24;
  v62 = v27;
  v73 = v19;
  while (1)
  {
    v30 = v66 * v26;
    result = sub_1D9A31B30(v67 + v66 * v26, v23, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    if (v26 == v70)
    {
      break;
    }

    v69 = v26;
    sub_1D9A31B30(v65 + v30, v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    if (*v23 != *v19)
    {
      goto LABEL_45;
    }

    v32 = *(v29 + 28);
    v33 = *(v75 + 48);
    sub_1D99AB100(v23 + v32, v17, &qword_1ECB51248);
    sub_1D99AB100(v19 + v32, &v17[v33], &qword_1ECB51248);
    v34 = *v64;
    if ((*v64)(v17, 1, v28) == 1)
    {
      if (v34(&v17[v33], 1, v28) != 1)
      {
        goto LABEL_40;
      }

      sub_1D99A6AE0(v17, &qword_1ECB51248);
      v35 = v62;
      v36 = v63;
      v19 = v73;
    }

    else
    {
      sub_1D99AB100(v17, v78, &qword_1ECB51248);
      if (v34(&v17[v33], 1, v28) == 1)
      {
        sub_1D9A31B98(v78, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_40:
        v59 = &qword_1ECB51E50;
LABEL_41:
        v60 = v17;
LABEL_44:
        sub_1D99A6AE0(v60, v59);
        v19 = v73;
        goto LABEL_45;
      }

      v37 = v72;
      sub_1D9A31AC8(&v17[v33], v72, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      if (*v78 != *v37 || v78[1] != v37[1] || v78[2] != v37[2] || v78[3] != v37[3])
      {
        sub_1D9A31B98(v37, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        sub_1D9A31B98(v78, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        v59 = &qword_1ECB51248;
        goto LABEL_41;
      }

      v38 = v11;
      v39 = v78;
      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v40 = sub_1D9C7DC2C();
      v41 = v37;
      v42 = v39;
      v11 = v38;
      v29 = v74;
      sub_1D9A31B98(v41, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D9A31B98(v42, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D99A6AE0(v17, &qword_1ECB51248);
      v35 = v62;
      v36 = v63;
      v19 = v73;
      if ((v40 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v43 = *(v29 + 32);
    v44 = *(v36 + 48);
    sub_1D99AB100(v23 + v43, v11, &qword_1ECB51240);
    sub_1D99AB100(v19 + v43, &v11[v44], &qword_1ECB51240);
    v45 = *v35;
    v46 = v68;
    if ((*v35)(v11, 1, v68) == 1)
    {
      if (v45(&v11[v44], 1, v46) != 1)
      {
        goto LABEL_43;
      }

      sub_1D99A6AE0(v11, &qword_1ECB51240);
      v28 = v76;
      v19 = v73;
    }

    else
    {
      v47 = v71;
      sub_1D99AB100(v11, v71, &qword_1ECB51240);
      if (v45(&v11[v44], 1, v46) == 1)
      {
        sub_1D9A31B98(v47, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
LABEL_43:
        v59 = &qword_1ECB51E48;
        v60 = v11;
        goto LABEL_44;
      }

      v48 = v77;
      sub_1D9A31AC8(&v11[v44], v77, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v49 = *v47;
      v50 = *v48;
      v51 = *(*v47 + 16);
      v19 = v73;
      if (v51 != *(*v48 + 16))
      {
        goto LABEL_37;
      }

      if (v51 && v49 != v50)
      {
        v52 = (v49 + 32);
        v53 = (v50 + 32);
        while (*v52 == *v53)
        {
          ++v52;
          ++v53;
          if (!--v51)
          {
            goto LABEL_26;
          }
        }

LABEL_37:
        sub_1D9A31B98(v77, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        sub_1D9A31B98(v47, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        sub_1D99A6AE0(v11, &qword_1ECB51240);
LABEL_45:
        sub_1D9A31B98(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        sub_1D9A31B98(v23, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        goto LABEL_46;
      }

LABEL_26:
      v54 = v47[1] == *(v77 + 8) && v47[2] == *(v77 + 16);
      if (!v54 && (sub_1D9C7E7DC() & 1) == 0)
      {
        goto LABEL_37;
      }

      v55 = v47;
      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v56 = v77;
      v57 = sub_1D9C7DC2C();
      sub_1D9A31B98(v56, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      sub_1D9A31B98(v55, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      sub_1D99A6AE0(v11, &qword_1ECB51240);
      v28 = v76;
      if ((v57 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (v23[1] != v19[1])
    {
      goto LABEL_45;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v58 = sub_1D9C7DC2C();
    sub_1D9A31B98(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    sub_1D9A31B98(v23, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    if (v58)
    {
      v26 = v69 + 1;
      if (v69 + 1 != v70)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A1F940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v35 - v9);
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_58:
    v34 = 0;
    return v34 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = a1 + v20;
  v38 = v11;
  v39 = a2 + v20;
  v22 = *(v15 + 72);
  v36 = a1 + v20;
  v37 = v18;
  v35 = v22;
  while (1)
  {
    v23 = v22 * v19;
    result = sub_1D9A31B30(v21 + v22 * v19, v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
    if (v19 == v18)
    {
      break;
    }

    v40 = v19;
    result = sub_1D9A31B30(v39 + v23, v13, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
    if (*v17 != *v13 || (v25 = *(v17 + 1), v26 = *(v13 + 1), v27 = *(v25 + 16), v27 != *(v26 + 16)))
    {
LABEL_57:
      sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      sub_1D9A31B98(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      goto LABEL_58;
    }

    if (v27 && v25 != v26)
    {
      v28 = 0;
      v29 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v41 = v26 + v29;
      v42 = v25 + v29;
      while (v28 < *(v25 + 16))
      {
        v30 = *(v44 + 72) * v28;
        result = sub_1D9A31B30(v42 + v30, v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_61;
        }

        sub_1D9A31B30(v41 + v30, v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
        v31 = *v10;
        v32 = *v7;
        if (*(v7 + 8) == 1)
        {
          switch(v32)
          {
            case 10:
              if (v31 != 10)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 11:
              if (v31 != 11)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 12:
              if (v31 != 12)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 13:
              if (v31 != 13)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 14:
              if (v31 != 14)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 15:
              if (v31 != 15)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 16:
              if (v31 != 16)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 17:
              if (v31 != 17)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 18:
              if (v31 != 18)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 19:
              if (v31 != 19)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 20:
              if (v31 != 20)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 21:
              if (v31 != 21)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 22:
              if (v31 != 22)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 23:
              if (v31 != 23)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 24:
              if (v31 != 24)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            case 25:
              if (v31 != 25)
              {
                goto LABEL_56;
              }

              goto LABEL_16;
            default:
              break;
          }
        }

        if (v31 != v32)
        {
LABEL_56:
          sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
          sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
          goto LABEL_57;
        }

LABEL_16:
        if (v10[3] != v7[3])
        {
          goto LABEL_56;
        }

        sub_1D9C7D3CC();
        sub_1D9A31A70();
        v33 = sub_1D9C7DC2C();
        sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
        result = sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
        if ((v33 & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v27 == ++v28)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      break;
    }

LABEL_52:
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v34 = sub_1D9C7DC2C();
    sub_1D9A31B98(v13, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
    sub_1D9A31B98(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
    if (v34)
    {
      v19 = v40 + 1;
      v21 = v36;
      v18 = v37;
      v22 = v35;
      if (v40 + 1 != v37)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A1FE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v55 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v55 - v10;
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v55 - v25);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_37:
    v53 = 0;
    return v53 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v53 = 1;
    return v53 & 1;
  }

  v66 = v9;
  v67 = v23;
  v28 = 0;
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = a1 + v29;
  v63 = a2 + v29;
  v64 = (&v55 - v25);
  v59 = (v69 + 48);
  v60 = v11;
  v31 = *(v24 + 72);
  v61 = v4;
  v56 = v6;
  v57 = v31;
  v65 = v21;
  v68 = v27;
  v58 = a1 + v29;
  while (1)
  {
    v69 = v28;
    v32 = v31 * v28;
    result = sub_1D9A31B30(v30 + v31 * v28, v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    if (v69 == v68)
    {
      goto LABEL_41;
    }

    result = sub_1D9A31B30(v63 + v32, v21, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v34 = *v26;
    v35 = *v21;
    v36 = *(v34 + 16);
    if (v36 != *(*v21 + 16))
    {
      goto LABEL_36;
    }

    if (v36 && v34 != v35)
    {
      break;
    }

LABEL_16:
    v43 = *(v67 + 24);
    v44 = *(v70 + 48);
    v26 = v64;
    v45 = v60;
    sub_1D99AB100(v64 + v43, v60, &qword_1ECB51248);
    v21 = v65;
    v62 = v44;
    sub_1D99AB100(&v65[v43], v45 + v44, &qword_1ECB51248);
    v46 = *v59;
    v47 = v61;
    if ((*v59)(v45, 1, v61) == 1)
    {
      if (v46(v45 + v62, 1, v47) != 1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_1D99AB100(v45, v66, &qword_1ECB51248);
      v48 = v62;
      v49 = v46(v45 + v62, 1, v47);
      v50 = v56;
      if (v49 == 1)
      {
        sub_1D9A31B98(v66, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_34:
        v54 = &qword_1ECB51E50;
        goto LABEL_35;
      }

      sub_1D9A31AC8(v45 + v48, v56, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      v51 = v66;
      if (*v66 != *v50 || v66[1] != v50[1] || v66[2] != v50[2] || v66[3] != v50[3])
      {
        sub_1D9A31B98(v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_32:
        sub_1D9A31B98(v51, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
        v54 = &qword_1ECB51248;
LABEL_35:
        sub_1D99A6AE0(v45, v54);
LABEL_36:
        sub_1D9A31B98(v65, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
        sub_1D9A31B98(v64, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
        goto LABEL_37;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v51 = v66;
      v52 = sub_1D9C7DC2C();
      sub_1D9A31B98(v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      if ((v52 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_1D9A31B98(v51, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    }

    sub_1D99A6AE0(v45, &qword_1ECB51248);
    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v53 = sub_1D9C7DC2C();
    sub_1D9A31B98(v21, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    sub_1D9A31B98(v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    if (v53)
    {
      v28 = v69 + 1;
      v31 = v57;
      v30 = v58;
      if (v69 + 1 != v68)
      {
        continue;
      }
    }

    return v53 & 1;
  }

  v37 = 0;
  v38 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v39 = v34 + v38;
  v40 = v35 + v38;
  while (v37 < *(v34 + 16))
  {
    v41 = *(v72 + 72) * v37;
    result = sub_1D9A31B30(v39 + v41, v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    if (v37 >= *(v35 + 16))
    {
      goto LABEL_40;
    }

    sub_1D9A31B30(v40 + v41, v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    if (*v18 != *v15 || (sub_1D9A20878(*(v18 + 1), *(v15 + 1)) & 1) == 0)
    {
      sub_1D9A31B98(v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      goto LABEL_36;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v42 = sub_1D9C7DC2C();
    sub_1D9A31B98(v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    result = sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    if ((v42 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v36 == ++v37)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1D9A20648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      if (*v10 != *v6 || (sub_1D9A20878(*(v10 + 1), *(v6 + 1)) & 1) == 0)
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v16 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D9A20878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v42 - v9);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E48);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v42 - v11;
  v51 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  MEMORY[0x1EEE9AC00](v51);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v42 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_34:
    v40 = 0;
    return v40 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v49 = v4;
  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v45 = v14;
  v46 = a2 + v21;
  v23 = (v5 + 48);
  v47 = *(v16 + 72);
  v48 = v22;
  v43 = v19;
  v44 = (&v42 - v17);
  while (1)
  {
    v24 = v47 * v20;
    result = sub_1D9A31B30(v48 + v47 * v20, v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    if (v20 == v19)
    {
      break;
    }

    v26 = v7;
    sub_1D9A31B30(v46 + v24, v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    v27 = *(v51 + 24);
    v28 = *(v50 + 48);
    sub_1D99AB100(v18 + v27, v12, &qword_1ECB51240);
    sub_1D99AB100(v14 + v27, &v12[v28], &qword_1ECB51240);
    v29 = *v23;
    v30 = v49;
    if ((*v23)(v12, 1, v49) == 1)
    {
      v31 = v29(&v12[v28], 1, v30);
      v7 = v26;
      v19 = v43;
      v18 = v44;
      v14 = v45;
      if (v31 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_1D99AB100(v12, v10, &qword_1ECB51240);
      if (v29(&v12[v28], 1, v30) == 1)
      {
        sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v18 = v44;
        v14 = v45;
LABEL_31:
        v41 = &qword_1ECB51E48;
        goto LABEL_32;
      }

      v7 = v26;
      sub_1D9A31AC8(&v12[v28], v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v32 = *v10;
      v33 = *v26;
      v34 = *(*v10 + 16);
      v35 = *(*v26 + 16);
      v19 = v43;
      if (v34 != v35)
      {
        goto LABEL_28;
      }

      if (v34 && v32 != v33)
      {
        v36 = (v32 + 32);
        v37 = (v33 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v34)
          {
            goto LABEL_16;
          }
        }

LABEL_28:
        sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v18 = v44;
        v14 = v45;
LABEL_29:
        sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v41 = &qword_1ECB51240;
LABEL_32:
        sub_1D99A6AE0(v12, v41);
LABEL_33:
        sub_1D9A31B98(v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
        sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
        goto LABEL_34;
      }

LABEL_16:
      v38 = v10[1] == *(v7 + 1) && v10[2] == *(v7 + 2);
      if (!v38 && (sub_1D9C7E7DC() & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v39 = sub_1D9C7DC2C();
      sub_1D9A31B98(v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v18 = v44;
      v14 = v45;
      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    }

    sub_1D99A6AE0(v12, &qword_1ECB51240);
    if (*v18 != *v14)
    {
      goto LABEL_33;
    }

    sub_1D9C7D3CC();
    sub_1D9A31A70();
    v40 = sub_1D9C7DC2C();
    sub_1D9A31B98(v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    sub_1D9A31B98(v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    if ((v40 & 1) != 0 && ++v20 != v19)
    {
      continue;
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A20E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
      return v18 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D9A31B30(v13, v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
      sub_1D9A31B30(v14, v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
      v16 = *v10;
      v17 = *v6;
      if (*(v6 + 8) == 1)
      {
        switch(v17)
        {
          case 10:
            if (v16 != 10)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 11:
            if (v16 != 11)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 12:
            if (v16 != 12)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 13:
            if (v16 != 13)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 14:
            if (v16 != 14)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 15:
            if (v16 != 15)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 16:
            if (v16 != 16)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 17:
            if (v16 != 17)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 18:
            if (v16 != 18)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 19:
            if (v16 != 19)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 20:
            if (v16 != 20)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 21:
            if (v16 != 21)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 22:
            if (v16 != 22)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 23:
            if (v16 != 23)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 24:
            if (v16 != 24)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          case 25:
            if (v16 != 25)
            {
              goto LABEL_43;
            }

            goto LABEL_8;
          default:
            break;
        }
      }

      if (v16 != v17)
      {
        break;
      }

LABEL_8:
      if (v10[3] != v6[3])
      {
        break;
      }

      sub_1D9C7D3CC();
      sub_1D9A31A70();
      v18 = sub_1D9C7DC2C();
      sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
      sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_43:
    sub_1D9A31B98(v6, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
    sub_1D9A31B98(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
  }

  v18 = 0;
  return v18 & 1;
}