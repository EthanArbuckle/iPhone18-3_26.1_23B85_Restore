uint64_t sub_1DAD7D898(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAD7D8E0(void *a1)
{
  v2 = v1;
  v4 = [a1 widgetConfigurationIdentifier];
  if (!v4)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v24 = sub_1DAECEDEC();
    __swift_project_value_buffer(v24, qword_1EE011748);
    v25 = a1;
    v26 = v1;
    v27 = sub_1DAECEDCC();
    v28 = sub_1DAED200C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v211[0] = v30;
      *v29 = 136446210;
      v31 = *&v26[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v31)
      {
        v32 = (v31 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v34 = *v32;
        v33 = v32[1];
      }

      else
      {
        v60 = v2;
        v61 = v25;
        v34 = sub_1DAD8CE78(v61);
        v33 = v62;

        v2 = v60;
      }

      v63 = sub_1DAD6482C(v34, v33, v211);

      *(v29 + 4) = v63;
      _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] config validation: Can't validate configuration against scene settings, no widgetConfigurationIdentifier", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E127F100](v30, -1, -1);
      MEMORY[0x1E127F100](v29, -1, -1);
    }

    v64 = 1;
    goto LABEL_100;
  }

  v5 = v4;
  v6 = sub_1DAED1CEC();
  v8 = v7;

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE011BD8;
  swift_beginAccess();
  sub_1DAD6495C(v9 + 16, v209, &qword_1ECC08380, &unk_1DAED6590);
  if (!v210)
  {
    __break(1u);
    return;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v209, v210);
  sub_1DAD648F8(*v10 + 64, v211);

  __swift_destroy_boxed_opaque_existential_1Tm(v209);
  __swift_project_boxed_opaque_existential_1(v211, v211[3]);
  v11 = sub_1DAED11AC();
  v208 = v8;
  if (!v11)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v35 = sub_1DAECEDEC();
    __swift_project_value_buffer(v35, qword_1EE011748);
    v36 = a1;
    v37 = v1;
    v38 = v1;

    v39 = sub_1DAECEDCC();
    v40 = sub_1DAED200C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v209[0] = v42;
      *v41 = 136446466;
      v43 = *&v38[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v46 = *v44;
        v45 = v44[1];
      }

      else
      {
        v65 = v36;
        v46 = sub_1DAD8CE78(v65);
        v45 = v66;
      }

      v67 = sub_1DAD6482C(v46, v45, v209);

      *(v41 + 4) = v67;
      *(v41 + 12) = 2082;
      v68 = sub_1DAD6482C(v6, v208, v209);

      *(v41 + 14) = v68;
      _os_log_impl(&dword_1DAD61000, v39, v40, "[%{public}s] config validation: Can't validate configuration against scene settings, widgetConfigurationIdentifier '%{public}s' not found in any CHSConfiguredWidgetDescriptor", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v42, -1, -1);
      MEMORY[0x1E127F100](v41, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    v64 = 1;
    v2 = v37;
    goto LABEL_100;
  }

  v205 = v6;
  v203 = v9;
  v12 = v11;
  v206 = [v11 container];
  v13 = [a1 metrics];
  v14 = [v13 _stringKeyRepresentation];

  v15 = sub_1DAED1CEC();
  v17 = v16;

  v207 = v12;
  v18 = [v12 metrics];
  v19 = [v18 _stringKeyRepresentation];

  v20 = sub_1DAED1CEC();
  v22 = v21;

  v204 = v2;
  if (v15 == v20 && v17 == v22)
  {

    v23 = 0;
  }

  else
  {
    v47 = sub_1DAED289C();

    v23 = 0;
    if ((v47 & 1) == 0)
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v48 = sub_1DAECEDEC();
      __swift_project_value_buffer(v48, qword_1EE011748);
      v49 = a1;
      v50 = v2;

      v51 = v207;
      v52 = sub_1DAECEDCC();
      v53 = sub_1DAED201C();

      if (os_log_type_enabled(v52, v53))
      {
        v202 = v53;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v209[0] = v55;
        *v54 = 136446978;
        v56 = *&v50[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        v201 = v55;
        if (v56)
        {
          v57 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v59 = *v57;
          v58 = v57[1];
        }

        else
        {
          v69 = v49;
          v59 = sub_1DAD8CE78(v69);
          v58 = v70;
        }

        v71 = sub_1DAD6482C(v59, v58, v209);

        *(v54 + 4) = v71;
        *(v54 + 12) = 2080;
        v72 = [v49 metrics];
        v73 = [v72 _stringKeyRepresentation];

        v74 = sub_1DAED1CEC();
        v76 = v75;

        v77 = sub_1DAD6482C(v74, v76, v209);

        *(v54 + 14) = v77;
        *(v54 + 22) = 2080;
        *(v54 + 24) = sub_1DAD6482C(v205, v208, v209);
        *(v54 + 32) = 2080;
        v78 = [v51 metrics];
        v79 = [v78 _stringKeyRepresentation];

        v80 = sub_1DAED1CEC();
        v82 = v81;

        v83 = sub_1DAD6482C(v80, v82, v209);

        *(v54 + 34) = v83;
        _os_log_impl(&dword_1DAD61000, v52, v202, "[%{public}s] config validation found error: Metrics\n%s don't match CHSConfiguredWidgetDescriptor metrics id %s\n%s.", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v201, -1, -1);
        MEMORY[0x1E127F100](v54, -1, -1);

        v23 = 1;
        v2 = v204;
      }

      else
      {

        v23 = 1;
      }
    }
  }

  v84 = v207;
  v85 = [v207 supportedRenderSchemes];
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v86 = sub_1DAED1E7C();

  v87 = [a1 renderScheme];
  v209[0] = v87;
  MEMORY[0x1EEE9AC00](v87);
  v200[2] = v209;
  v88 = sub_1DAD8DD18(sub_1DAD8DCB0, v200, v86);

  if ((v88 & 1) == 0)
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v89 = sub_1DAECEDEC();
    __swift_project_value_buffer(v89, qword_1EE011748);
    v90 = a1;
    v91 = v2;
    v92 = v208;

    v93 = sub_1DAECEDCC();
    v94 = sub_1DAED201C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v209[0] = v97;
      *v95 = 136446722;
      v98 = *&v91[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v98)
      {
        v99 = (v98 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v101 = *v99;
        v100 = v99[1];
      }

      else
      {
        v102 = v90;
        v101 = sub_1DAD8CE78(v102);
        v100 = v103;

        v92 = v208;
      }

      v104 = sub_1DAD6482C(v101, v100, v209);

      *(v95 + 4) = v104;
      *(v95 + 12) = 2114;
      v105 = [v90 renderScheme];
      *(v95 + 14) = v105;
      *v96 = v105;
      *(v95 + 22) = 2082;
      *(v95 + 24) = sub_1DAD6482C(v205, v92, v209);
      _os_log_impl(&dword_1DAD61000, v93, v94, "[%{public}s] config validation found error: Requested render scheme %{public}@ not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v95, 0x20u);
      sub_1DAD64398(v96, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v96, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v97, -1, -1);
      MEMORY[0x1E127F100](v95, -1, -1);

      v23 = 1;
      v2 = v204;
    }

    else
    {

      v23 = 1;
    }

    v84 = v207;
  }

  v106 = [a1 colorScheme];
  v107 = [v84 supportedColorSchemes];
  if (v106 == 2 || (v107) && (v106 == 1 || (v107 & 2) != 0))
  {
LABEL_55:
    v119 = v206;
    if (v206)
    {
      goto LABEL_59;
    }

    goto LABEL_67;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v108 = sub_1DAECEDEC();
  __swift_project_value_buffer(v108, qword_1EE011748);
  v109 = a1;
  v110 = v2;

  v111 = sub_1DAECEDCC();
  v112 = sub_1DAED201C();

  if (!os_log_type_enabled(v111, v112))
  {

    v23 = 1;
    goto LABEL_55;
  }

  v113 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  v209[0] = v114;
  *v113 = 136446722;
  v115 = *&v110[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v115)
  {
    v116 = (v115 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
    v118 = *v116;
    v117 = v116[1];
  }

  else
  {
    v120 = v109;
    v118 = sub_1DAD8CE78(v120);
    v117 = v121;
  }

  v122 = sub_1DAD6482C(v118, v117, v209);

  *(v113 + 4) = v122;
  *(v113 + 12) = 2082;
  [v109 colorScheme];
  v123 = NSStringFromCHSColorScheme();
  v124 = sub_1DAED1CEC();
  v126 = v125;

  v127 = sub_1DAD6482C(v124, v126, v209);

  *(v113 + 14) = v127;
  *(v113 + 22) = 2082;
  *(v113 + 24) = sub_1DAD6482C(v205, v208, v209);
  _os_log_impl(&dword_1DAD61000, v111, v112, "[%{public}s] config validation found error: Requested color scheme %{public}s not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v113, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E127F100](v114, -1, -1);
  MEMORY[0x1E127F100](v113, -1, -1);

  v23 = 1;
  v2 = v204;
  v84 = v207;
  v119 = v206;
  if (v206)
  {
LABEL_59:
    v128 = v119;
    if (([v128 canAppearInSecureEnvironment] & 1) != 0 || (objc_msgSend(a1, sel_canAppearInSecureEnvironment) & 1) == 0)
    {
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v129 = sub_1DAECEDEC();
      __swift_project_value_buffer(v129, qword_1EE011748);
      v130 = a1;
      v131 = v2;

      v132 = sub_1DAECEDCC();
      v133 = sub_1DAED201C();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v209[0] = v135;
        *v134 = 136446466;
        v136 = *&v131[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v136)
        {
          v137 = (v136 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v139 = *v137;
          v138 = v137[1];
        }

        else
        {
          v197 = v130;
          v139 = sub_1DAD8CE78(v197);
          v138 = v198;
        }

        v199 = sub_1DAD6482C(v139, v138, v209);

        *(v134 + 4) = v199;
        *(v134 + 12) = 2082;
        *(v134 + 14) = sub_1DAD6482C(v205, v208, v209);
        _os_log_impl(&dword_1DAD61000, v132, v133, "[%{public}s] config validation found error: scene 'canAppearInSecureEnvironment' but CHSConfiguredWidgetDescriptor id %{public}s says it can't.", v134, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v135, -1, -1);
        MEMORY[0x1E127F100](v134, -1, -1);

        v23 = 1;
        v2 = v204;
        v84 = v207;
      }

      else
      {

        v23 = 1;
      }
    }
  }

LABEL_67:
  v140 = [a1 _FBSScene];
  v141 = [v140 settings];

  v142 = [v141 displayConfiguration];
  if (v142)
  {
    v143 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    v144 = [v84 displayProperties];
    sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
    v145 = sub_1DAED228C();

    if (v145)
    {
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v146 = sub_1DAECEDEC();
      __swift_project_value_buffer(v146, qword_1EE011748);
      v147 = a1;
      v148 = v2;

      v149 = sub_1DAECEDCC();
      v150 = sub_1DAED201C();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v209[0] = v152;
        *v151 = 136446466;
        v153 = *&v148[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v153)
        {
          v154 = (v153 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v156 = *v154;
          v155 = v154[1];
        }

        else
        {
          v157 = v147;
          v156 = sub_1DAD8CE78(v157);
          v155 = v158;
        }

        v159 = sub_1DAD6482C(v156, v155, v209);

        *(v151 + 4) = v159;
        *(v151 + 12) = 2082;
        *(v151 + 14) = sub_1DAD6482C(v205, v208, v209);
        _os_log_impl(&dword_1DAD61000, v149, v150, "[%{public}s] config validation found error: Requested CHSWidgetDisplayProperties not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v151, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v152, -1, -1);
        MEMORY[0x1E127F100](v151, -1, -1);

        v23 = 1;
        v2 = v204;
        v84 = v207;
      }

      else
      {

        v23 = 1;
        v2 = v204;
      }
    }
  }

  v160 = [a1 supportsLowLuminance];
  if (v160 != [v84 supportsLowLuminance])
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v161 = sub_1DAECEDEC();
    __swift_project_value_buffer(v161, qword_1EE011748);
    v162 = a1;
    v163 = v2;

    v164 = sub_1DAECEDCC();
    v165 = sub_1DAED201C();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v209[0] = v167;
      *v166 = 136446722;
      v168 = *&v163[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v168)
      {
        v169 = (v168 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v171 = *v169;
        v170 = v169[1];
      }

      else
      {
        v172 = v162;
        v171 = sub_1DAD8CE78(v172);
        v170 = v173;
      }

      v174 = sub_1DAD6482C(v171, v170, v209);

      *(v166 + 4) = v174;
      *(v166 + 12) = 1026;
      v175 = [v162 supportsLowLuminance];

      *(v166 + 14) = v175;
      *(v166 + 18) = 2082;
      *(v166 + 20) = sub_1DAD6482C(v205, v208, v209);
      _os_log_impl(&dword_1DAD61000, v164, v165, "[%{public}s] config validation found error: Request for supportsLowLuminance (%{BOOL,public}d) not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v166, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v167, -1, -1);
      MEMORY[0x1E127F100](v166, -1, -1);

      v23 = 1;
      v2 = v204;
      v84 = v207;
    }

    else
    {

      v23 = 1;
    }
  }

  v176 = [a1 showsWidgetLabel];
  if (v176 == [v84 showsWidgetLabel])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    if (v23)
    {
      v64 = 2;
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v177 = sub_1DAECEDEC();
    __swift_project_value_buffer(v177, qword_1EE011748);
    v178 = a1;
    v179 = v2;

    v180 = sub_1DAECEDCC();
    v181 = sub_1DAED201C();

    if (os_log_type_enabled(v180, v181))
    {
      v182 = v2;
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v209[0] = v184;
      *v183 = 136446722;
      v185 = *&v179[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v185)
      {
        v186 = (v185 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v188 = *v186;
        v187 = v186[1];
      }

      else
      {
        v189 = v178;
        v188 = sub_1DAD8CE78(v189);
        v187 = v190;
      }

      v191 = sub_1DAD6482C(v188, v187, v209);

      *(v183 + 4) = v191;
      *(v183 + 12) = 1026;
      v192 = [v178 showsWidgetLabel];

      *(v183 + 14) = v192;
      *(v183 + 18) = 2082;
      v193 = sub_1DAD6482C(v205, v208, v209);

      *(v183 + 20) = v193;
      _os_log_impl(&dword_1DAD61000, v180, v181, "[%{public}s] config validation found error: Request for showsWidgetLabel (%{BOOL,public}d) not in matching CHSConfiguredWidgetDescriptor id %{public}s.", v183, 0x1Cu);
      v64 = 2;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v184, -1, -1);
      MEMORY[0x1E127F100](v183, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      v2 = v182;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      v64 = 2;
    }
  }

LABEL_100:
  v194 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v194)
  {
    v195 = *(v194 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController);
    *(v195 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_validationState) = v64;
    v196 = *(v195 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
    v196[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = v64;
    [v196 setNeedsLayout];
  }
}

void sub_1DAD7F078(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v2 + 40);

  v7 = sub_1DAD84884(v6);

  os_unfair_lock_unlock(*(v3 + 16));

  if (v7 >> 62)
  {
LABEL_33:
    v8 = sub_1DAED247C();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_3:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v27 = v7 + 32;
  v28 = v7 & 0xFFFFFFFFFFFFFF8;
  v30 = v7;
  v29 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v11 = MEMORY[0x1E127E1F0](v9, v7);
      goto LABEL_9;
    }

    if (v9 >= *(v28 + 16))
    {
      break;
    }

    v11 = *(v27 + 8 * v9);
LABEL_9:
    v7 = v11;
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (v12)
    {
      goto LABEL_32;
    }

    v14 = [v11 widgets];
    sub_1DAD674D4(0, &unk_1EE005500, 0x1E6994238);
    v15 = sub_1DAED1E7C();

    v31 = v13;
    v32 = v7;
    if (v15 >> 62)
    {
      v16 = sub_1DAED247C();
      if (v16)
      {
LABEL_12:
        v17 = 0;
        v7 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1E127E1F0](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v21 = [v18 uniqueIdentifier];
          v22 = sub_1DAED1CEC();
          v24 = v23;

          if (v22 == a1 && v24 == a2)
          {

            goto LABEL_29;
          }

          v26 = sub_1DAED289C();

          if (v26)
          {

            goto LABEL_29;
          }

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_4:

    v7 = v30;
    v9 = v31;
    v10 = v29;
    if (v31 == v8)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_1DAD7F350(uint64_t a1)
{
  v2 = sub_1DAED15DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750]);
  result = MEMORY[0x1E127DBF0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1DAD7F4EC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1DAD7F4EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DAED15DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750]);
  v36 = a2;
  v13 = sub_1DAED1C5C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1DAD7CB5C(&qword_1EE005710, MEMORY[0x1E6985750]);
      v23 = sub_1DAED1CAC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1DAD7F7CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1DAD7F7CC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1DAED15DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DAE8852C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DAE89068();
      goto LABEL_12;
    }

    sub_1DAE896B4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750]);
  v15 = sub_1DAED1C5C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1DAD7CB5C(&qword_1EE005710, MEMORY[0x1E6985750]);
      v23 = sub_1DAED1CAC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DAED28EC();
  __break(1u);
  return result;
}

uint64_t sub_1DAD7FA70(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
    v5 = sub_1DAE8A564(&qword_1EE005538, &qword_1EE005540, 0x1E69943A0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69943A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &qword_1EE005540, 0x1E69943A0, &qword_1ECC0A2F0, &qword_1DAEDD848);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DAD7FBFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DAED0DDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DAD805B0(a2);
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
      sub_1DADDB9D8();
      goto LABEL_7;
    }

    sub_1DAD80034(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1DAD805B0(a2);
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
      return sub_1DAD7FDEC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DAED28FC();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1DAD7FDEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DAED0DDC();
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

uint64_t sub_1DAD7FEC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection);

  if (sub_1DAED101C())
  {

    v2 = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t sub_1DAD7FF28(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload);

  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (v4 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
    os_unfair_lock_lock(*(v5 + 16));
    v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

    v7 = sub_1DAD84F7C(a1, v6);

    os_unfair_lock_unlock(*(v5 + 16));
    return v7;
  }

  else
  {
    sub_1DADA5978();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1DAD80034(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DAED0DDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C0, &qword_1DAED6248);
  v43 = a2;
  result = sub_1DAED277C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1DAD888A8(&qword_1EE0057E0, MEMORY[0x1E6993D98]);
      result = sub_1DAED1C5C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1DAD80410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
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
      sub_1DAD8E95C(v24, v25);
      v20 = sub_1DAED1CAC();
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

unint64_t sub_1DAD805B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DAED0DDC();
  v5 = MEMORY[0x1E6993D98];
  sub_1DAD8E95C(&qword_1EE0057E0, MEMORY[0x1E6993D98]);
  v6 = sub_1DAED1C5C();
  return sub_1DAD80410(a1, v6, MEMORY[0x1E6993D98], &qword_1EE0057D8, v5, MEMORY[0x1E6993DA8]);
}

void sub_1DAD80684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED0DDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock) + 16));
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews) & 1) == 0)
  {
    v38 = v8;
    v39 = v9;
    v40 = v5;
    v41 = v4;
    v36 = *(v13 + 16);
    v37 = a1;
    v36(v17, a1, v12);
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED200C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v20 = 136446210;
      v34 = sub_1DAED0D8C();
      v22 = v21;
      (*(v13 + 8))(v17, v12);
      v23 = sub_1DAD6482C(v34, v22, aBlock);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1DAD61000, v18, v19, "Attempting to load content for key: %{public}s", v20, 0xCu);
      v24 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E127F100](v24, -1, -1);
      MEMORY[0x1E127F100](v20, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    v25 = *(v2 + 32);
    v26 = v42;
    v36(v42, v37, v12);
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    (*(v13 + 32))(v28 + v27, v26, v12);
    aBlock[4] = sub_1DAD84E14;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_78;
    v29 = _Block_copy(aBlock);
    v30 = v25;

    v31 = v43;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DAD722E0(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    v32 = v38;
    v33 = v41;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v31, v32, v29);
    _Block_release(v29);

    (*(v40 + 8))(v32, v33);
    (*(v44 + 8))(v31, v39);
  }
}

uint64_t sub_1DAD80BE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DAED0DDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED0DBC();
  v13 = [v12 widgetByReplacingIntent_];

  v14 = [v13 widgetByRemovingPersona];
  v15 = v14;
  sub_1DAED0DCC();
  sub_1DAED0DAC();
  v16 = *(v3 + 72);
  v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v18 = *(v17 + 16);

  os_unfair_lock_lock(v18);
  sub_1DAD72328(v16, v11, a1, a2, a3);
  os_unfair_lock_unlock(*(v17 + 16));

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1DAD80D9C(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1DAD80EFC(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_1DAD7C4F4(v13, a2 & 1);
      v17 = *v4;
      result = sub_1DAD80EFC(a1);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1DADDB87C();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a3;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a1;
  *(v19[7] + 8 * result) = a3;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a1;
}

unint64_t sub_1DAD80EFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DAED227C();
  return sub_1DAD6A49C(a1, v5, &qword_1EE005628, 0x1E6994548);
}

uint64_t sub_1DAD80F4C(uint64_t result)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction))
  {
    if (result)
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction) = 0;
  }

  else
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_hasBeenActive) = 1;
    sub_1DAED112C();
    v3 = v1;
    sub_1DAED256C();

    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
    v5 = [v4 widget];
    v6 = sub_1DAED22BC();
    v8 = v7;

    MEMORY[0x1E127DA50](v6, v8);

    MEMORY[0x1E127DA50](0x3A656E6563732820, 0xE900000000000020);
    v9 = sub_1DAD8CE78(v4);
    MEMORY[0x1E127DA50](v9);

    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    v10 = sub_1DAED111C();
    v11 = *(v3 + v2);
    *(v3 + v2) = v10;
  }
}

uint64_t sub_1DAD810E0(void *a1, void *a2, void *a3)
{
  v307 = a3;
  v286 = a1;
  v287 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v274 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v274 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v274 - v11;
  v300 = sub_1DAECEDEC();
  v279 = *(v300 - 8);
  v13 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v15 = &v274 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08358, &qword_1DAED6568);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v302 = &v274 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v295 = &v274 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v294 = &v274 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v293 = &v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v292 = &v274 - v28;
  v29 = sub_1DAECF0AC();
  v288 = *(v29 - 8);
  v289 = v29;
  v30 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v280 = &v274 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v291 = &v274 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v290 = &v274 - v36;
  v37 = sub_1DAED10DC();
  v284 = *(v37 - 8);
  v285 = v37;
  v38 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v283 = &v274 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DAECDD3C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v274 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08378, &qword_1DAEDA7F0);
  v303 = *(v45 - 8);
  v304 = v45;
  v46 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v274 - v47;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v49 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v49 + 16, v320, &qword_1ECC08380, &unk_1DAED6590);
  if (!v321)
  {
    __break(1u);
    goto LABEL_70;
  }

  v51 = __swift_project_boxed_opaque_existential_1(v320, v321);
  sub_1DAD648F8(*v51 + 64, v322);

  __swift_destroy_boxed_opaque_existential_1Tm(v320);
  result = sub_1DAD6495C(v49 + 16, v320, &qword_1ECC08380, &unk_1DAED6590);
  if (!v321)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v306 = *(*__swift_project_boxed_opaque_existential_1(v320, v321) + 104);

  __swift_destroy_boxed_opaque_existential_1Tm(v320);
  result = sub_1DAD6495C(v49 + 16, v318, &qword_1ECC08380, &unk_1DAED6590);
  if (!v319)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v52 = __swift_project_boxed_opaque_existential_1(v318, v319);
  sub_1DAD648F8(*v52 + 16, v320);
  __swift_destroy_boxed_opaque_existential_1Tm(v318);
  result = sub_1DAD6495C(v49 + 16, v318, &qword_1ECC08380, &unk_1DAED6590);
  if (!v319)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v276 = v7;
  v296 = v12;
  v305 = *(*__swift_project_boxed_opaque_existential_1(v318, v319) + 56);

  __swift_destroy_boxed_opaque_existential_1Tm(v318);
  sub_1DAD648F8(v49 + 144, v318);
  sub_1DAD648F8(v49 + 104, v317);
  result = sub_1DAD6495C(v49 + 16, &v314, &qword_1ECC08380, &unk_1DAED6590);
  if (!v316)
  {
LABEL_73:
    __break(1u);
    return result;
  }

  v53 = __swift_project_boxed_opaque_existential_1(&v314, v316);
  v54 = *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter);
  *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter) = *(*v53 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm(&v314);
  v55 = [v307 hostIdentifier];
  v282 = v49;
  v277 = v10;
  v278 = v15;
  if (v55)
  {
    v56 = v55;
    sub_1DAED1CEC();
  }

  v301 = v48;
  sub_1DAECE24C();
  v314 = 0;
  v315 = 0xE000000000000000;
  sub_1DAED256C();

  v314 = 0xD000000000000014;
  v315 = 0x80000001DAEE0E50;
  sub_1DAECDD2C();
  v57 = sub_1DAECDD1C();
  (*(v41 + 8))(v44, v40);
  v313[0] = v57;
  v58 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v58);

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  v59 = v307;
  v60 = [v307 _FBSScene];
  v61 = [v60 identifier];

  v62 = sub_1DAED1CEC();
  v64 = v63;

  MEMORY[0x1E127DA50](v62, v64);

  v65 = v314;
  v66 = v315;
  v281 = [v59 contentType];
  sub_1DAD648F8(v320, &v314);
  sub_1DAD648F8(v318, v313);
  sub_1DAD648F8(v317, v312);
  v67 = type metadata accessor for WidgetRendererSession();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  *(v70 + 56) = 0;
  v71 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  v72 = *MEMORY[0x1E6993F90];
  v73 = sub_1DAECE20C();
  (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
  v74 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
  v75 = sub_1DAECE55C();
  v275 = *(v75 - 8);
  v76 = *(v275 + 56);
  v298 = v275 + 56;
  v299 = v75;
  v297 = v76;
  (v76)(v70 + v74, 1, 1);
  *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) = 0;
  v77 = v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
  *v77 = 0;
  *(v77 + 8) = 1;
  v78 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
  v79 = sub_1DAECDCEC();
  (*(*(v79 - 8) + 56))(v70 + v78, 1, 1, v79);
  *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
  *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
  v80 = (v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  *v80 = 0;
  v80[1] = 0xE000000000000000;
  v81 = objc_allocWithZone(WRWidgetRendererSessionKey);
  v82 = v305;

  v83 = sub_1DAED1CBC();
  v85 = v286;
  v84 = v287;
  v86 = [v81 initWithIdentifier:v83 widget:v286 metrics:v287];

  *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID) = v86;
  sub_1DAD648F8(&v314, v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
  *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) = v82;
  sub_1DAD648F8(v313, v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider);
  sub_1DAD648F8(v312, v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor);
  *(v70 + 16) = v65;
  *(v70 + 24) = v66;
  *(v70 + 32) = v85;
  *(v70 + 40) = v84;
  v87 = *(v70 + 56);
  *(v70 + 48) = v281;
  *(v70 + 56) = 0;

  v88 = v85;
  v89 = v84;

  v90 = v283;
  sub_1DAED10CC();
  (*(v284 + 32))(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers, v90, v285);
  v91 = sub_1DAD7D2C8(v70);
  v92 = (v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  v93 = *(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);
  *v92 = v91;
  v92[1] = v94;

  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v300, qword_1EE0117D8);

  v95 = sub_1DAECEDCC();
  v96 = sub_1DAED203C();

  v97 = os_log_type_enabled(v95, v96);
  v286 = v88;
  if (v97)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v309 = v99;
    *v98 = 136446210;
    v100 = *v92;
    v101 = v92[1];

    v102 = sub_1DAD6482C(v100, v101, &v309);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_1DAD61000, v95, v96, "[%{public}s] Created", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1E127F100](v99, -1, -1);
    MEMORY[0x1E127F100](v98, -1, -1);
  }

  v103 = (v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
  sub_1DAD648F8(v70 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, &v309);
  v104 = v311;
  __swift_project_boxed_opaque_existential_1(&v309, *(&v310 + 1));
  v105 = *(v104 + 64);
  v106 = *(v70 + 32);
  v107 = v105();

  v108 = *(v70 + 56);
  *(v70 + 56) = v107;

  __swift_destroy_boxed_opaque_existential_1Tm(&v309);
  v109 = v103[3];
  v110 = v103[4];
  v111 = __swift_project_boxed_opaque_existential_1(v103, v109);
  v112 = *(v109 - 8);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v274 - v114;
  (*(v112 + 16))(&v274 - v114);
  v116 = (*(v110 + 48))(v109, v110);
  (*(v112 + 8))(v115, v109);
  *&v309 = v116;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v312);
  __swift_destroy_boxed_opaque_existential_1Tm(v313);
  __swift_destroy_boxed_opaque_existential_1Tm(&v314);
  v117 = *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession);
  *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession) = v70;
  if (v117)
  {

    sub_1DADD52BC();
  }

  v118 = v307;
  sub_1DAD83970(v307);
  sub_1DAD83EA8(v118);
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v120 = swift_allocObject();
  v120[2] = v119;
  v120[3] = v70;
  v120[4] = v118;

  v121 = v118;
  v122 = sub_1DAD8E484();
  swift_getKeyPath();
  swift_getKeyPath();
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1DADE6300;
  *(v123 + 24) = v120;
  v314 = sub_1DADE630C;
  v315 = v123;
  v287 = v120;

  sub_1DAECEF4C();
  v124 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v125 = swift_allocObject();
  swift_weakInit();
  v126 = swift_allocObject();
  *(v126 + 16) = v124;
  *(v126 + 24) = v125;
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = swift_allocObject();
  v128[2] = v127;
  v128[3] = sub_1DADE6314;
  v128[4] = v126;
  swift_getKeyPath();
  swift_getKeyPath();
  v129 = swift_allocObject();
  *(v129 + 16) = sub_1DADE631C;
  *(v129 + 24) = v128;
  v314 = sub_1DADE6328;
  v315 = v129;
  swift_retain_n();
  sub_1DAECEF4C();
  LOBYTE(v127) = [v121 canAppearInSecureEnvironment];
  v130 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  v131 = *(v122 + v130);
  *(v122 + v130) = v127;
  sub_1DAD95310(v131);
  LOBYTE(v127) = [v121 supportsLowLuminance];
  v132 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  v133 = *(v122 + v132);
  *(v122 + v132) = v127;
  sub_1DAD956A0(v133);
  LOBYTE(v127) = [v121 contentType] == 2;
  v134 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  v135 = *(v122 + v134);
  *(v122 + v134) = v127;
  sub_1DAD9590C(v135);
  LOBYTE(v127) = [v121 prefersUnredactedContentInLowLuminanceEnvironment];
  v136 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  v137 = *(v122 + v136);
  *(v122 + v136) = v127;
  sub_1DAD95AA0(v137);
  v138 = [v121 _FBSScene];
  v139 = [v138 settings];

  v140 = [v139 displayConfiguration];
  if (v140)
  {
    if ([v140 isCarDisplay])
    {
      v141 = 1;
    }

    else
    {
      v141 = [v140 isCarInstrumentsDisplay];
    }

    v142 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
    swift_beginAccess();
    v143 = *(v122 + v142);
    *(v122 + v142) = v141;
    sub_1DAE9CDC4(v143);
    v144 = [v140 identity];
    LOBYTE(v142) = [v144 isContinuityDisplay];

    v145 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
    swift_beginAccess();
    v146 = *(v122 + v145);
    *(v122 + v145) = v142;
    sub_1DAE9D090(v146);
    v147 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    v148 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
    swift_beginAccess();
    v149 = *(v122 + v148);
    *(v122 + v148) = v147;
    v150 = v147;
    sub_1DAD996A0(v149);
  }

  v151 = [v121 tintParameters];
  v152 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  v153 = 1;
  swift_beginAccess();
  v154 = *(v122 + v152);
  *(v122 + v152) = v151;
  v155 = v151;
  sub_1DAD95C3C(v154);

  v156 = [v121 inlineTextParameters];
  v157 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v158 = *(v122 + v157);
  *(v122 + v157) = v156;
  v159 = v156;
  sub_1DAD95EE8(v158);

  v160 = [v121 colorScheme];
  if (v160 == 1)
  {
    v164 = MEMORY[0x1E697DBB8];
    v161 = v289;
    v162 = v290;
    v163 = v288;
  }

  else
  {
    v161 = v289;
    v162 = v290;
    v163 = v288;
    if (v160 != 2)
    {
      goto LABEL_26;
    }

    v164 = MEMORY[0x1E697DBA8];
  }

  v165 = v280;
  (*(v163 + 104))(v280, *v164, v161);
  (*(v163 + 32))(v162, v165, v161);
  v153 = 0;
LABEL_26:
  (*(v163 + 56))(v162, v153, 1, v161);
  v166 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  v167 = v291;
  sub_1DAD6495C(v122 + v166, v291, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v162, v122 + v166, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAD99B74(v167);
  sub_1DAD64398(v167, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v162, &qword_1ECC08370, &unk_1DAED6580);
  LOBYTE(v166) = [v121 showsWidgetLabel];
  v168 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  v169 = *(v122 + v168);
  *(v122 + v168) = v166;
  sub_1DAD9A040(v169);
  v170 = [v121 clipBehavior] == 1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v314) = v170;

  sub_1DAECEF4C();
  LOBYTE(v166) = [v121 isInteractionDisabled];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v314) = v166;

  sub_1DAECEF4C();
  LOBYTE(v166) = [v121 isContentPaused];
  v171 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v172 = *(v122 + v171);
  *(v122 + v171) = v166;
  BSDispatchQueueAssertMain();
  if (v172 != *(v122 + v171))
  {
    v173 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v122 + v173) & v172 & 1);
  }

  v174 = [v121 widgetPriority] == 1;
  v175 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  v176 = 1;
  swift_beginAccess();
  *(v122 + v175) = v174;
  v177 = [v121 renderScheme];
  v178 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v179 = *(v122 + v178);
  *(v122 + v178) = v177;
  v180 = v177;
  sub_1DAD9A058();

  [v121 proximity];
  v181 = v292;
  sub_1DAED170C();
  v182 = sub_1DAED16FC();
  (*(*(v182 - 8) + 56))(v181, 0, 1, v182);
  v183 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v184 = v293;
  sub_1DAD6495C(v122 + v183, v293, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_beginAccess();
  sub_1DAD901C4(v181, v122 + v183, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_endAccess();
  sub_1DAD9A254(v184);
  sub_1DAD64398(v184, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD64398(v181, &qword_1ECC08368, &unk_1DAEDE2B0);
  v185 = [v121 idealizedDateComponents];
  v186 = v294;
  if (v185)
  {
    v187 = v185;
    sub_1DAECDA4C();

    v176 = 0;
  }

  v188 = v295;
  v189 = sub_1DAECDA5C();
  (*(*(v189 - 8) + 56))(v186, v176, 1, v189);
  v190 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  sub_1DAD6495C(v122 + v190, v188, &qword_1ECC08360, &unk_1DAED6570);
  swift_beginAccess();
  sub_1DAD901C4(v186, v122 + v190, &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  sub_1DAD9A5B0(v188);
  sub_1DAD64398(v188, &qword_1ECC08360, &unk_1DAED6570);
  sub_1DAD64398(v186, &qword_1ECC08360, &unk_1DAED6570);
  LOBYTE(v190) = [v121 areAnimationsPaused];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v314) = v190;

  sub_1DAECEF4C();
  sub_1DAD9AB3C();
  LOBYTE(v190) = *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene) != 0;
  v191 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  v192 = *(v122 + v191);
  *(v122 + v191) = v190;
  sub_1DAD9B9DC(v192);
  v193 = [v121 remoteViewControllerClassName];
  if (!v193)
  {
    goto LABEL_40;
  }

  v194 = v193;
  v195 = sub_1DAED1CEC();
  v197 = v196;

  v314 = v195;
  v315 = v197;
  v313[0] = 0x6F436F6E6F726843;
  v313[1] = 0xEA00000000006572;
  strcpy(v312, "WidgetRenderer");
  HIBYTE(v312[1]) = -18;
  sub_1DADE6330();
  v198 = sub_1DAED236C();
  v200 = v199;

  v201 = sub_1DAED1CBC();
  v202 = NSClassFromString(v201);

  if (!v202 || (swift_getObjCClassMetadata(), type metadata accessor for WidgetSceneContentViewController(), (v203 = swift_dynamicCastMetatype()) == 0))
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v300, qword_1EE011748);

    v205 = sub_1DAECEDCC();
    v206 = sub_1DAED201C();

    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v314 = v208;
      *v207 = 136446210;
      v209 = sub_1DAD6482C(v198, v200, &v314);

      *(v207 + 4) = v209;
      _os_log_impl(&dword_1DAD61000, v205, v206, "Failed to load custom vc class %{public}s", v207, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v208);
      MEMORY[0x1E127F100](v208, -1, -1);
      MEMORY[0x1E127F100](v207, -1, -1);
    }

    else
    {
    }

LABEL_40:
    v204 = type metadata accessor for WidgetSceneContentViewController();
    goto LABEL_41;
  }

  v204 = v203;

LABEL_41:
  v210 = *(v204 + 800);
  v211 = v121;

  v212 = v210(v211, v122);
  sub_1DAD648F8(v322, &v314);
  v213 = v212;
  v214 = [v211 widgetConfigurationIdentifier];
  v307 = v211;
  if (v214)
  {
    v215 = v214;
    v216 = sub_1DAED1CEC();
    v294 = v217;
    v295 = v216;
  }

  else
  {
    v294 = 0;
    v295 = 0;
  }

  v218 = v302;
  v219 = v303;
  v220 = v304;
  (*(v303 + 16))(v302, v301, v304);
  v221 = *(v219 + 56);
  v221(v218, 0, 1, v220);
  v222 = type metadata accessor for WidgetSceneContentViewController();
  v313[4] = &protocol witness table for BaseWidgetContentViewController;
  v313[3] = v222;
  v313[0] = v213;
  v312[3] = sub_1DAED12AC();
  v312[4] = sub_1DAD8E1BC(&qword_1EE005768, MEMORY[0x1E6993EF8]);
  v312[0] = v306;
  v223 = type metadata accessor for WidgetMetricsAggregator();
  v224 = *(v223 + 48);
  v225 = *(v223 + 52);
  v226 = swift_allocObject();
  swift_weakInit();
  *(v226 + 64) = 0;
  *(v226 + 72) = 0;
  v221(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier, 1, 1, v220);
  *(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = 0;
  *(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration) = 0;
  v227 = v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  *(v227 + 32) = 0;
  *v227 = 0u;
  *(v227 + 16) = 0u;
  v228 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  v229 = sub_1DAED12CC();
  (*(*(v229 - 8) + 56))(v226 + v228, 1, 1, v229);
  *(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = 0;
  v230 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  v231 = sub_1DAED11EC();
  (*(*(v231 - 8) + 56))(v226 + v230, 1, 1, v231);
  *(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  v297(v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility, 1, 1, v299);
  sub_1DAD648F8(v313, v226 + 16);
  v232 = v294;
  *(v226 + 64) = v295;
  *(v226 + 72) = v232;
  v233 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier;
  swift_beginAccess();
  swift_retain_n();

  v234 = v213;
  sub_1DAD901C4(v218, v226 + v233, &qword_1ECC08358, &qword_1DAED6568);
  swift_endAccess();
  sub_1DAD648F8(&v314, v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
  sub_1DAD648F8(v312, &v309);
  v235 = v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  swift_beginAccess();
  v236 = *(&v310 + 1);
  if (*(v235 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
  }

  v237 = v307;
  if (v236)
  {
    sub_1DAD657D8(&v309, v235);
  }

  else
  {
    v238 = v310;
    *v235 = v309;
    *(v235 + 16) = v238;
    *(v235 + 32) = v311;
  }

  swift_endAccess();
  v239 = sub_1DAED120C();
  v240 = sub_1DAED11FC();
  v241 = MEMORY[0x1E6993EE0];
  v242 = (v226 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder);
  v242[3] = v239;
  v242[4] = v241;
  *v242 = v240;
  swift_weakAssign();

  sub_1DADB2FF8(v226);

  sub_1DAD64398(v302, &qword_1ECC08358, &qword_1DAED6568);
  __swift_destroy_boxed_opaque_existential_1Tm(&v314);
  __swift_destroy_boxed_opaque_existential_1Tm(v312);
  __swift_destroy_boxed_opaque_existential_1Tm(v313);
  v243 = [v237 contentType];
  v244 = v296;
  if (!v243)
  {
    v245 = qword_1EE005E48;

    if (v245 != -1)
    {
      swift_once();
    }

    v246 = v300;
    v247 = __swift_project_value_buffer(v300, qword_1EE011748);
    v248 = v278;
    (*(v279 + 16))(v278, v247, v246);
    v249 = type metadata accessor for VisibilityPolicyController();
    v250 = *(v249 + 48);
    v251 = *(v249 + 52);
    swift_allocObject();
    v252 = sub_1DADB3BFC(v70, v122, v226, v248);

    v253 = (v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController);
    v254 = *(v308 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController);
    *v253 = v252;
    v253[1] = &off_1F56B2178;
    if (v254)
    {

      sub_1DAE0CC08();

      swift_unknownObjectRelease();
    }

    v255 = [v307 visibility];
    if (v255)
    {
      v256 = v255;
      [v256 isSettled];
      [v256 isFocal];
      [v256 visibleBounds];
      sub_1DAECE52C();

      v257 = 0;
    }

    else
    {
      v257 = 1;
    }

    v258 = v299;
    v297(v244, v257, 1, v299);
    if (*v253)
    {
      v259 = v277;
      sub_1DAD6495C(v244, v277, &qword_1ECC07CD0, &qword_1DAED6560);
      swift_unknownObjectRetain();
      sub_1DAD6D8C0(v259);
      swift_unknownObjectRelease();
      v258 = v299;
      sub_1DAD64398(v259, &qword_1ECC07CD0, &qword_1DAED6560);
    }

    if ([v307 widgetPriority])
    {
      v260 = v244;
    }

    else
    {
      v261 = v244;
      v262 = v276;
      sub_1DAD6495C(v261, v276, &qword_1ECC07CD0, &qword_1DAED6560);
      v263 = v275;
      if ((*(v275 + 48))(v262, 1, v258) == 1)
      {
        sub_1DAD64398(v262, &qword_1ECC07CD0, &qword_1DAED6560);
        v264 = 0;
      }

      else
      {
        v264 = sub_1DAECE51C();
        (*(v263 + 8))(v262, v258);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v314) = v264 & 1;

      sub_1DAECEF4C();
      v260 = v296;
    }

    sub_1DAD64398(v260, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  *(v234 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) = *(v70 + 48) != 1;
  v265 = qword_1EE008AC0;
  v266 = v234;
  if (v265 != -1)
  {
    swift_once();
  }

  v267 = qword_1EE008AD0;
  v268 = [v286 extensionIdentity];
  v269 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v270 = sub_1DAECE26C();
  v272 = v271;
  swift_endAccess();

  LOBYTE(v270) = sub_1DADB410C(v270, v272, v267);

  v273 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  v266[v273] = v270 & 1;
  sub_1DADB4204(v266[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting]);
  sub_1DAEC7848();

  (*(v303 + 8))(v301, v304);
  __swift_destroy_boxed_opaque_existential_1Tm(v317);
  __swift_destroy_boxed_opaque_existential_1Tm(v318);
  __swift_destroy_boxed_opaque_existential_1Tm(v320);
  __swift_destroy_boxed_opaque_existential_1Tm(v322);
  return v266;
}

uint64_t sub_1DAD836B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD836F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD83740()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD83780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DAD837C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD83820()
{
  v1 = sub_1DAED12BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection);

  if (sub_1DAED101C())
  {

    os_unfair_lock_unlock(*(v6 + 16));
  }

  else
  {
    os_unfair_lock_unlock(*(v6 + 16));
    if (v7)
    {
      sub_1DAED0F7C();
      sub_1DAED0FEC();

      (*(v2 + 8))(v5, v1);
      return v9[1];
    }
  }

  return 0;
}

uint64_t sub_1DAD83970(void *a1)
{
  v3 = sub_1DAECE20C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = *(v4 + 104);
  v13(&v45 - v11, *MEMORY[0x1E6993F90], v3);
  if (*&v1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
  {
    v14 = [a1 widgetPriority];
    (*(v4 + 8))(v12, v3);
    v15 = MEMORY[0x1E6993F98];
    if (v14 != 1)
    {
      v15 = MEMORY[0x1E6993FA0];
    }

    v13(v12, *v15, v3);
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE011748);
  v17 = a1;
  v18 = v1;
  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED200C();

  if (os_log_type_enabled(v19, v20))
  {
    v46 = v20;
    v47 = v8;
    v21 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49[0] = v45;
    *v21 = 136446722;
    v22 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = (v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v25 = *v23;
      v24 = v23[1];
    }

    else
    {
      v26 = v17;
      v25 = sub_1DAD8CE78(v26);
      v24 = v27;
    }

    v28 = sub_1DAD6482C(v25, v24, v49);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    swift_beginAccess();
    sub_1DAD8E1BC(&qword_1ECC083B8, MEMORY[0x1E6993FA8]);
    v29 = sub_1DAED287C();
    v31 = sub_1DAD6482C(v29, v30, v49);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2082;
    v32 = [v17 widgetPriority];
    v33 = v32 == 1;
    if (v32 == 1)
    {
      v34 = 0xD000000000000017;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = 0x80000001DAEE0E70;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v36 = sub_1DAD6482C(v34, v35, v49);

    *(v21 + 24) = v36;
    _os_log_impl(&dword_1DAD61000, v19, v46, "[%{public}s] Task priority changed to %{public}s %{public}s", v21, 0x20u);
    v37 = v45;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v37, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);

    v8 = v47;
  }

  else
  {
  }

  v38 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
  if (!v38)
  {
    return (*(v4 + 8))(v12, v3);
  }

  swift_beginAccess();
  v39 = *(v4 + 16);
  v40 = v48;
  v39(v48, v12, v3);
  v41 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v39(v8, (v38 + v41), v3);
  swift_beginAccess();
  v42 = *(v4 + 24);

  v42(v38 + v41, v40, v3);
  swift_endAccess();
  sub_1DAD7D4B8();

  v43 = *(v4 + 8);
  v43(v8, v3);
  v43(v40, v3);
  return (v43)(v12, v3);
}

size_t sub_1DAD83EA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v76 - v6;
  v7 = sub_1DAED167C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = sub_1DAED15DC();
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED10DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - v17;
  BSDispatchQueueAssertMain();
  sub_1DAED10CC();
  [a1 canAppearInSecureEnvironment];
  sub_1DAED104C();
  if ([a1 supportedColorSchemes])
  {
    [a1 supportedColorSchemes];
  }

  else
  {
    [a1 colorScheme];
  }

  sub_1DAED107C();
  v19 = [a1 supportedRenderSchemes];
  v84 = v13;
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v79 = v18;
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v21 = sub_1DAED1E7C();

  v22 = v21;
  if (v21 >> 62)
  {
    if (sub_1DAED247C())
    {
      v37 = sub_1DAED247C();
      v22 = v21;
      v23 = v37;
      if (!v37)
      {

        v36 = a1;
        v27 = MEMORY[0x1E69E7CC0];
        v18 = v79;
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_19:

    v18 = v79;
LABEL_20:
    v38 = [a1 renderScheme];
    v39 = [v38 renderingMode];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083A8, &unk_1DAEDF6A0);
    v40 = *(v9 + 72);
    v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v36 = a1;
    v27 = swift_allocObject();
    if (v39)
    {
      *(v27 + 16) = xmmword_1DAED64C0;
      v42 = [v36 renderScheme];
      sub_1DAED15EC();
      sub_1DAED166C();
      v43 = [v36 renderScheme];
      [v43 backgroundViewPolicy];

      sub_1DAED15BC();
    }

    else
    {
      *(v27 + 16) = xmmword_1DAED6200;
      v44 = [v36 renderScheme];
      sub_1DAED15EC();
    }

    goto LABEL_23;
  }

LABEL_7:
  v24 = v22;
  v86[0] = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021A4(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    return result;
  }

  v85 = v23;
  v76 = a1;
  v77 = v2;
  v78 = v12;
  v26 = 0;
  v27 = v86[0];
  v28 = v24;
  v29 = v24 & 0xC000000000000001;
  v31 = v80;
  v30 = v81;
  v32 = v24;
  do
  {
    if (v29)
    {
      MEMORY[0x1E127E1F0](v26, v28);
    }

    else
    {
      v33 = *(v28 + 8 * v26 + 32);
    }

    sub_1DAED15EC();
    v86[0] = v27;
    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1DAE021A4(v34 > 1, v35 + 1, 1);
      v30 = v81;
      v27 = v86[0];
    }

    ++v26;
    *(v27 + 16) = v35 + 1;
    (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v35, v31, v30);
    v28 = v32;
  }

  while (v85 != v26);

  v12 = v78;
  v18 = v79;
  v36 = v76;
  v2 = v77;
LABEL_23:
  sub_1DAD7D8E0(v36);
  sub_1DAD7F350(v27);

  sub_1DAED108C();
  [v36 supportsLowLuminance];
  sub_1DAED10AC();
  [v36 showsWidgetLabel];
  sub_1DAED105C();
  if ([v36 supportedProximities])
  {
    [v36 supportedProximities];
  }

  else
  {
    [v36 proximity];
    sub_1DAED212C();
  }

  sub_1DAED106C();
  v45 = [v36 _FBSScene];
  v46 = [v45 settings];

  v47 = [v46 displayConfiguration];
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    sub_1DAD7FA70(inited);
    swift_setDeallocating();
    v49 = *(inited + 16);
    swift_arrayDestroy();
    sub_1DAED10BC();
  }

  v50 = [v36 idealizedDateComponents];
  if (v50)
  {
    v51 = v83;
    v52 = v50;
    sub_1DAECDA4C();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v51 = v83;
  }

  v54 = sub_1DAECDA5C();
  (*(*(v54 - 8) + 56))(v51, v53, 1, v54);
  sub_1DAED109C();
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v55 = sub_1DAECEDEC();
  __swift_project_value_buffer(v55, qword_1EE0117D8);
  v56 = v36;
  v57 = v2;
  v58 = sub_1DAECEDCC();
  v59 = sub_1DAED203C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = v18;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v86[0] = v62;
    *v61 = 136446466;
    v63 = *&v57[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v63)
    {
      v64 = (v63 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v66 = *v64;
      v65 = v64[1];
    }

    else
    {
      v67 = v56;
      v66 = sub_1DAD8CE78(v67);
      v65 = v68;
    }

    v69 = sub_1DAD6482C(v66, v65, v86);

    *(v61 + 4) = v69;
    *(v61 + 12) = 2082;
    swift_beginAccess();
    sub_1DAD8E1BC(&qword_1EE005780, MEMORY[0x1E6993E88]);
    v70 = sub_1DAED287C();
    v72 = sub_1DAD6482C(v70, v71, v86);

    *(v61 + 14) = v72;
    _os_log_impl(&dword_1DAD61000, v58, v59, "[%{public}s] Environment modifiers changed to: %{public}s", v61, 0x16u);
    swift_arrayDestroy();
    v73 = v62;
    v18 = v60;
    MEMORY[0x1E127F100](v73, -1, -1);
    MEMORY[0x1E127F100](v61, -1, -1);
  }

  v74 = v84;
  if (*&v57[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
  {
    swift_beginAccess();
    v75 = v82;
    (*(v74 + 16))(v82, v18, v12);

    sub_1DAD8E294(v75);
  }

  return (*(v74 + 8))(v18, v12);
}

uint64_t sub_1DAD84884(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v38 = v6;
  v39 = v2;
  v36 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = [v11 containerDescriptors];
    sub_1DAD674D4(0, &qword_1EE0054C8, 0x1E6994230);
    v13 = sub_1DAED1E7C();

    v14 = v13 >> 62;
    v44 = v13;
    if (v13 >> 62)
    {
      v15 = sub_1DAED247C();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_1DAED247C();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_22:
        sub_1DAED247C();
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v20 = *(v19 + 16);
      }

      result = sub_1DAED258C();
      v41 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v16)
    {
      goto LABEL_22;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v41 = v9;
LABEL_24:
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v14)
    {
      v24 = v1;
      v25 = v19;
      result = sub_1DAED247C();
      v19 = v25;
      v1 = v24;
      v23 = result;
    }

    else
    {
      v23 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v22 >> 1) - v21) < v42)
      {
        goto LABEL_43;
      }

      v26 = v19 + 8 * v21 + 32;
      v40 = v5;
      v37 = v19;
      if (v14)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_1DAD64B94(&qword_1EE005680, &qword_1ECC08D58, &unk_1DAED7E60);
        v27 = 0;
        v28 = v44;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D58, &unk_1DAED7E60);
          v29 = v26;
          v30 = sub_1DAD8DE4C(v43, v27, v28);
          v32 = v23;
          v33 = *v31;
          (v30)(v43, 0);
          v26 = v29;
          *(v29 + 8 * v27) = v33;
          v23 = v32;
          ++v27;
        }

        while (v32 != v27);
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v41;
      v1 = v36;
      v6 = v38;
      v2 = v39;
      v5 = v40;
      if (v42 >= 1)
      {
        v34 = *(v37 + 16);
        v17 = __OFADD__(v34, v42);
        v35 = v34 + v42;
        if (v17)
        {
          goto LABEL_44;
        }

        *(v37 + 16) = v35;
      }
    }

    else
    {

      v6 = v38;
      v2 = v39;
      v9 = v41;
      if (v42 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_1DAD84C40()
{
  result = qword_1EE00AA30;
  if (!qword_1EE00AA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00AA30);
  }

  return result;
}

uint64_t sub_1DAD84C8C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

unint64_t sub_1DAD84D0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DAED227C();

  return sub_1DAD84D50(a1, v5);
}

unint64_t sub_1DAD84D50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DAED21EC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DAED228C();

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

uint64_t sub_1DAD84E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_71Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void *sub_1DAD84F7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1DAED26FC();

    if (v4)
    {
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1DAD84D0C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1DAD85040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v66 = a4;
  v61 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v55 - v11;
  v12 = sub_1DAED18CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v20 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  result = swift_beginAccess();
  v22 = *(a1 + v20);
  if (*(v22 + 16))
  {

    v59 = a2;
    v23 = sub_1DAD805B0(a2);
    if (v24)
    {
      v56 = a5;
      v58 = v5;
      v25 = *(*(v22 + 56) + 8 * v23);

      v57 = a1;
      v26 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
      sub_1DAED127C();
      swift_beginAccess();
      v60 = v25;
      v27 = *(v25 + 16);
      sub_1DAED0B9C();

      sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
      LOBYTE(v27) = sub_1DAED1C9C();
      v30 = *(v13 + 8);
      v28 = v13 + 8;
      v29 = v30;
      v30(v17, v12);
      if (v27)
      {
        *&v63[0] = 0;
        *(&v63[0] + 1) = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](91, 0xE100000000000000);
        v31 = sub_1DAED0D8C();
        MEMORY[0x1E127DA50](v31);

        MEMORY[0x1E127DA50](0xD000000000000043, 0x80000001DAEE1980);
        v32 = v60;
        v33 = *(v60 + 16);
        sub_1DAED0B9C();

        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v34 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v34);

        v66 = v28;
        v29(v17, v12);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v35 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v35);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v36 = v63[0];
        v37 = *(v32 + 16);
        v64 = 0;
        memset(v63, 0, sizeof(v63));
        v38 = v37;
        sub_1DAED0C6C();

        swift_beginAccess();
        *(v32 + 24) = 1;
        v39 = *(v32 + 16);

        sub_1DAED0BCC();

        v40 = sub_1DAECEDCC();
        v41 = sub_1DAED201C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v65 = v43;
          *v42 = 136446210;
          v44 = sub_1DAD6482C(v36, *(&v36 + 1), &v65);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_1DAD61000, v40, v41, "%{public}s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1E127F100](v43, -1, -1);
          MEMORY[0x1E127F100](v42, -1, -1);
        }

        else
        {
        }

        return (v29)(v19, v12);
      }

      else
      {
        v45 = v29;
        v46 = v60;
        swift_beginAccess();
        *(v46 + 24) = 256;
        v47 = *(v46 + 16);
        sub_1DAD6495C(v61, v63, &unk_1ECC08880, &unk_1DAED6F50);
        v48 = v47;
        sub_1DAED0C6C();

        v49 = v62;
        sub_1DAD6495C(v66, v62, &qword_1ECC07CE8, &qword_1DAED6F60);
        v50 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1DAD84E40(v49, v46 + v50);
        swift_endAccess();
        v51 = *(v46 + 16);
        v52 = *v56;
        v53 = v56[1];

        v54 = v51;
        sub_1DAED0BCC();

        return v45(v19, v12);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DAD85694(uint64_t a1)
{
  v2 = sub_1DAED09DC();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECDCEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DAD84C40();
  v13 = sub_1DAED20EC();
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1DADB93E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD722E0(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v2);
  return (*(v19 + 8))(v9, v20);
}

uint64_t sub_1DAD85A80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v8 = *a3;

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v6 + 8 * j + 32);
      }

      v11 = v10;
      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a3 = *(a2 + v8);
      sub_1DAECEE6C();

      if (v12 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_1DAD85BA0(void **a1)
{
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [v7 widget];
    v11 = [v7 metrics];
    sub_1DAED0DAC();
    v12 = *(v9 + 72);
    sub_1DAD85CEC(v6);
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1DAD85CEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {

    sub_1DAD805B0(a1);
    v8 = v7;

    if (v8)
    {
      sub_1DAD80684(a1);
    }
  }

  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1DAD85DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08138, &qword_1DAED6448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DAD85E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RBImageSnapshotter(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v9 = *(*(v104 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v104);
  v105 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v97 - v12;
  v110 = sub_1DAECEDEC();
  v114 = *(v110 - 1);
  v13 = v114[8];
  v14 = MEMORY[0x1EEE9AC00](v110);
  v109 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - v19;
  v21 = type metadata accessor for CALayer.SnapshotFormat(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1DAED0D3C();
  v101 = *(v102 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 184);
  v128 = sub_1DAECE30C();
  v129 = MEMORY[0x1E6994130];
  *&v127 = v27;
  v28 = type metadata accessor for WidgetRendererClient();
  v29 = objc_allocWithZone(v28);
  v30 = v27;
  v31 = sub_1DAD87190(&v127);
  v116 = a1;
  if (*(a1 + 200) == 1)
  {
    v128 = v28;
    v129 = sub_1DAD88900(&unk_1EE008178, type metadata accessor for WidgetRendererClient);
    *&v127 = v31;
    v28 = type metadata accessor for XcodePreviewWidgetRendererClient();
    v32 = swift_allocObject();
    sub_1DAD657D8(&v127, v32 + 16);
    v33 = sub_1DAD88900(&qword_1ECC08170, type metadata accessor for XcodePreviewWidgetRendererClient);
  }

  else
  {
    v33 = sub_1DAD88900(&unk_1EE008178, type metadata accessor for WidgetRendererClient);
    v32 = v31;
  }

  v128 = v28;
  v129 = v33;
  *&v127 = v32;
  sub_1DAD648F8(&v127, (v3 + 2));
  sub_1DAD648F8(&v127, &v124);
  v34 = type metadata accessor for ConfigurationService();
  swift_allocObject();
  v106 = v31;
  v35 = sub_1DAD87DAC(&v124);
  v3[11] = v34;
  v36 = sub_1DAD88900(qword_1EE006EE0, type metadata accessor for ConfigurationService);
  v3[8] = v35;
  v3[12] = v36;
  v111 = a2;
  sub_1DAD85DAC(a2, &v122);
  v113 = v20;
  v112 = v24;
  v108 = v18;
  if (v123)
  {
    sub_1DAD657D8(&v122, &v124);
  }

  else
  {
    v37 = v128;
    v38 = v129;
    v39 = __swift_project_boxed_opaque_existential_1(&v127, v128);
    v125 = v37;
    v126 = *(v38 + 24);
    v40 = __swift_allocate_boxed_opaque_existential_1(&v124);
    (*(*(v37 - 8) + 16))(v40, v39, v37);
    if (v123)
    {
      sub_1DAD64398(&v122, &qword_1ECC08138, &qword_1DAED6448);
    }
  }

  v99 = sub_1DAECE6CC();
  v3[14] = sub_1DAECE6AC();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08140, &unk_1DAED6450);
  v41 = v116;
  v42 = *(v116 + 96);
  v125 = sub_1DAED140C();
  v126 = MEMORY[0x1E6993F48];
  v124 = v42;
  sub_1DAED0DDC();
  sub_1DAED0D7C();
  sub_1DAD88900(&qword_1EE0057C8, MEMORY[0x1E6993D98]);

  v43 = sub_1DAED13CC();
  v44 = MEMORY[0x1E127D030](0xD000000000000010, 0x80000001DAEE0A30, &v124, v43);
  v97 = type metadata accessor for WidgetArchiveService();
  sub_1DAD648F8(&v127, &v124);
  sub_1DAD648F8((v3 + 8), &v122);
  v45 = v3[14];
  v46 = v128;
  v47 = v129;
  v48 = __swift_project_boxed_opaque_existential_1(&v127, v128);
  v49 = sub_1DAD648F8(v41 + 104, v121);
  v120 = 0;
  memset(v119, 0, sizeof(v119));
  v50 = *(v41 + 200);
  v118 = v45;
  v51 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v53, v48, v46);
  v117 = v44;
  v55 = sub_1DAD88900(qword_1EE00AC78, MEMORY[0x1E6994480]);
  v56 = *(v47 + 16);
  v57 = sub_1DAD64B94(&qword_1EE005750, &qword_1ECC08140, &unk_1DAED6450);

  v103 = v44;

  *(&v96 + 1) = v56;
  *&v96 = v55;
  v3[7] = sub_1DAD88A98(&v124, &v122, &v118, v53, v121, &v117, v119, v50, v97, v99, v46, v98, v96, v57);
  sub_1DAED12AC();
  (*(v101 + 104))(v100, *MEMORY[0x1E6993D70], v102);
  v58 = sub_1DAED129C();
  v102 = v3;
  v3[13] = v58;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  LOBYTE(v46) = sub_1DAECE11C();

  if (v46)
  {
    v59 = v110;
    v60 = v115;
    v61 = v113;
    v62 = v112;
    if (qword_1ECC07A28 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v64 = __swift_project_value_buffer(v63, qword_1ECC09BD8);
    sub_1DAD93268(v64, v62, type metadata accessor for CAMLSnapshotter.CAMLOptions);
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  }

  else
  {
    v65 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    (*(*(v65 - 8) + 56))(v112, 1, 1, v65);
    v59 = v110;
    v60 = v115;
    v61 = v113;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v59, qword_1EE011748);
  v67 = v114[2];
  v67(v61, v66, v59);
  sub_1DAD648F8(v116 + 104, &v124);
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v104, qword_1EE00A948);
  sub_1DAD93268(v68, v60, type metadata accessor for RBLayer.SnapshotFormat);
  v110 = [objc_opt_self() sharedManager];
  v69 = v105;
  sub_1DAD93268(v60, v105, type metadata accessor for RBLayer.SnapshotFormat);
  v70 = v107;
  sub_1DAD93338(v69, v107, type metadata accessor for RBImageSnapshotter.RBImageOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08148, &unk_1DAEDB950);
  v71 = swift_allocObject();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08150, &unk_1DAED6460);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  sub_1DAD93338(v70, v75 + *(*v75 + 128), type metadata accessor for RBImageSnapshotter);
  *(v71 + 16) = v75;
  v76 = sub_1DAD93568();
  v77 = v108;
  v67(v108, v61, v59);
  sub_1DAD648F8(&v124, &v122);
  v78 = v59;
  if (qword_1EE00B1D0 != -1)
  {
    swift_once();
  }

  v79 = qword_1EE011BC8;
  v80 = type metadata accessor for LayerSnapshotter(0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  *(v83 + 5) = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v84 = swift_allocObject();
  v85 = v79;
  v86 = swift_slowAlloc();
  *v86 = 0;
  *(v84 + 16) = v86;
  *(v83 + 6) = v84;
  v87 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08158, &unk_1DAEDB960);
  v88 = swift_allocObject();
  *(v88 + 16) = v71;
  *(v87 + 16) = v88;
  *(v83 + 3) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
  v89 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08168, &unk_1DAEDB970);
  v90 = swift_allocObject();
  *(v90 + 16) = v76;
  *(v89 + 16) = v90;
  *(v83 + 2) = v89;
  v67(&v83[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger], v77, v78);
  v67(v109, v77, v78);
  sub_1DAECED4C();
  v91 = v114[1];
  v91(v77, v78);
  sub_1DAD93B48(v115, type metadata accessor for RBLayer.SnapshotFormat);
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  v91(v113, v78);
  sub_1DAD93B48(v112, type metadata accessor for CALayer.SnapshotFormat);
  *(v83 + 4) = v110;
  sub_1DAD657D8(&v122, &v83[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor]);
  *(v83 + 7) = v85;
  v92 = v102;
  *(v102 + 120) = v83;
  v93 = v92[5];
  v94 = v92[6];
  __swift_project_boxed_opaque_existential_1(v92 + 2, v93);
  (*(v94 + 160))(v93, v94);

  sub_1DAD64398(v111, &qword_1ECC08138, &qword_1DAED6448);
  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  return v92;
}

uint64_t sub_1DAD86CEC()
{
  result = type metadata accessor for RBImageSnapshotter.RBImageOptions(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAD86D6C()
{
  if (!qword_1EE00AA68)
  {
    type metadata accessor for RBColorMode(255);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AA68);
    }
  }
}

void sub_1DAD86DC4()
{
  sub_1DAD86D6C();
  if (v0 <= 0x3F)
  {
    sub_1DAD86E60();
    if (v1 <= 0x3F)
    {
      sub_1DAECDFCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DAD86E60()
{
  if (!qword_1EE00AA88)
  {
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AA88);
    }
  }
}

uint64_t sub_1DAD86EF0()
{
  v0 = type metadata accessor for CAMLSnapshotter.CAMLOptions(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1DAD86F68()
{
  sub_1DAECDFCC();
  if (v0 <= 0x3F)
  {
    sub_1DAD86FFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAD86FFC()
{
  if (!qword_1EE00AAA8)
  {
    v0 = sub_1DAED1C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AAA8);
    }
  }
}

uint64_t type metadata accessor for WidgetRendererClient()
{
  result = qword_1EE008168;
  if (!qword_1EE008168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD870A4()
{
  result = sub_1DAECF8EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DAD87190(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v57 = sub_1DAED20DC();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED208C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DAED0A3C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue;
  v11 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v54[5] = "idgetRendererClient";
  v54[6] = v11;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v54[3] = sub_1DAD649C4(&qword_1EE00AA50, 255, MEMORY[0x1E69E8030]);
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v54[4] = sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAED23CC();
  v12 = *MEMORY[0x1E69E8098];
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v54[1] = v13;
  v14(v6, v12, v57);
  *&v1[v55] = sub_1DAED210C();
  v55 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  v14(v6, v12, v57);
  *&v1[v55] = sub_1DAED210C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection] = 0;
  v15 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *&v2[v15] = v16;
  v18 = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions] = MEMORY[0x1E69E7CC8];
  v19 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_extensionsDidChangePublisher;
  v57 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_extensionsDidChangePublisher;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09928, &qword_1DAEDF150);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v2[v19] = sub_1DAECEE7C();
  v23 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9D0, &qword_1DAEDF158);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 0;
  *&v2[v23] = v24;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity] = v18;
  v25 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  sub_1DAD87A90(MEMORY[0x1E69E7CC0]);
  *&v2[v25] = sub_1DAED100C();
  v26 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_configurationsDidChangePublisher;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09920, &unk_1DAEDA730);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v2[v26] = sub_1DAECEE7C();
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier] = v18;
  v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment] = 0;
  v30 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  v55 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *&v2[v30] = sub_1DAECEE7C();
  sub_1DAECF8DC();
  v34 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_timelineReloadedPublisher;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9D8, &unk_1DAEDF160);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *&v2[v34] = sub_1DAECEE7C();
  v38 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_snapshotReloadedPublisher;
  v39 = *(v35 + 48);
  v40 = *(v35 + 52);
  swift_allocObject();
  *&v2[v38] = sub_1DAECEE7C();
  v41 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_placeholderReloadedPublisher;
  v42 = *(v35 + 48);
  v43 = *(v35 + 52);
  swift_allocObject();
  *&v2[v41] = sub_1DAECEE7C();
  aBlock[0] = *&v2[v26];
  sub_1DAD64B94(&unk_1EE005C20, &qword_1ECC09920, &unk_1DAEDA730);
  v44 = v56;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_configurationsDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v57];
  sub_1DAD64B94(&unk_1EE005C10, &qword_1ECC09928, &qword_1DAEDF150);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v55];
  sub_1DAD64B94(&unk_1EE00ABE0, &unk_1ECC0A3E0, &qword_1DAEDA740);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_systemEnvironmentDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v34];
  sub_1DAD64B94(&unk_1EE005BF8, &qword_1ECC0A9D8, &unk_1DAEDF160);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_timelineReloadedPublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v38];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_snapshotReloadedPublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v41];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_placeholderReloadedPublisher] = sub_1DAECEF6C();
  v45 = type metadata accessor for WidgetRendererClient();
  v63.receiver = v2;
  v63.super_class = v45;
  v46 = objc_msgSendSuper2(&v63, sel_init);
  sub_1DAD6495C(v44, aBlock, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v60)
  {
    __swift_project_boxed_opaque_existential_1(aBlock, v60);
    v58[3] = v45;
    v58[4] = sub_1DAD649C4(&unk_1EE0081A8, 255, type metadata accessor for WidgetRendererClient);
    v58[0] = v46;
    v47 = v46;
    sub_1DAECE35C();
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_1DAD64398(aBlock, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v48 = *&v46[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  v61 = sub_1DAEBB198;
  v62 = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  v60 = &block_descriptor_211;
  v50 = _Block_copy(aBlock);
  v51 = v46;
  v52 = v48;

  WRRegisterForChronodStartup(v52, v50);
  _Block_release(v50);

  sub_1DAD64398(v44, &qword_1ECC0A9E0, &qword_1DAED7570);
  return v51;
}

uint64_t sub_1DAD87A54()
{

  return swift_deallocObject();
}

unint64_t sub_1DAD87A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A0, &qword_1DAED6230);
    v3 = sub_1DAED279C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1DAD84D0C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DAD87B88()
{
  v1 = *v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A948, &qword_1DAEDF0E8);
  return sub_1DAED1D4C();
}

void WRRegisterForChronodStartup(NSObject *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E69941D8];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __WRRegisterForChronodStartup_block_invoke;
  handler[3] = &unk_1E85EB028;
  v7 = v3;
  v5 = v3;
  notify_register_dispatch(v4, _serverStartupToken, a1, handler);
}

uint64_t sub_1DAD87C84(void *a1)
{
  a1[1] = sub_1DAD649C4(&qword_1EE008190, 255, type metadata accessor for WidgetRendererClient);
  a1[2] = sub_1DAD649C4(&qword_1EE008198, 255, type metadata accessor for WidgetRendererClient);
  result = sub_1DAD649C4(&qword_1EE0081A0, 255, type metadata accessor for WidgetRendererClient);
  a1[3] = result;
  return result;
}

void *sub_1DAD87DAC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[2] = sub_1DAECEE7C();
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  v2[4] = v7;
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[6] = 0;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 80))(v9, v10);
  swift_beginAccess();
  v12 = v2[5];
  v2[5] = v11;

  v18 = v2[2];
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  v2[3] = sub_1DAECEF6C();
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 72))(v13, v14);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D60, &unk_1DAED7E70);
  sub_1DAD64B94(&qword_1EE005CA8, &qword_1ECC08D60, &unk_1DAED7E70);
  v15 = sub_1DAECF00C();

  v16 = v2[6];
  v2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_1DAD88004()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD8803C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 16);

  os_unfair_lock_unlock(v5);
  return v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DAD88188()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DAED18CC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1DAD8830C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  BSDispatchQueueAssertMain();
  v10 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v11 = *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v11)
  {
    if (!*&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter])
    {
      goto LABEL_5;
    }

    v12 = v11;

    v13 = sub_1DAD8C688(a1, v11, 1);
  }

  else
  {
    if (a2)
    {
      *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = a2;
      v14 = a2;
LABEL_9:
      v15 = v14;
      sub_1DAD80F4C(1);
      sub_1DAE09410();
      if (qword_1EE008AC0 != -1)
      {
        swift_once();
      }

      v16 = qword_1EE008AD0;
      v17 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene;
      v18 = [*&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] widget];
      v19 = [v18 extensionIdentity];

      v20 = *MEMORY[0x1E69941B8];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
      v21 = sub_1DAECE26C();
      v23 = v22;
      swift_endAccess();

      LOBYTE(v21) = sub_1DADB410C(v21, v23, v16);

      if (v21)
      {
        v24 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
        v25 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
        if (v25)
        {
          if (*(v25 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) == 1)
          {
            if (!*&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter])
            {
              __break(1u);
              return;
            }

            v26 = v25;

            sub_1DADC8A98(v9);
            v27 = sub_1DADE5DD8(v9);

            sub_1DAD64398(v9, &qword_1ECC08338, &unk_1DAEDB980);
            if (v27)
            {
              v28 = *&v15[v24];
              if (v28)
              {
                v29 = v28;
                sub_1DADB4204(1);
              }

              v30 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
              *(v30 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting) = 1;
              v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
              v31[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 1;
              [v31 setNeedsLayout];
              v32 = swift_allocObject();
              v32[2] = v3;
              v32[3] = a1;
              v32[4] = v15;
              aBlock[4] = sub_1DADE6384;
              aBlock[5] = v32;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1DAD751C0;
              aBlock[3] = &block_descriptor_132;
              v33 = _Block_copy(aBlock);
              v34 = v15;
              v35 = v3;
              v36 = a1;

              BSRunLoopPerformAfterCACommit();
              _Block_release(v33);
            }
          }
        }
      }

      v37 = *&v15[v17];
      sub_1DAD6B5EC(v37);

      return;
    }

    v13 = *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter];
    if (v13)
    {
      v38 = *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter];

      v39 = sub_1DAD8C688(a1, 0, 1);

      v13 = *&v3[v10];
      *&v3[v10] = v39;
    }

    else
    {
      *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = 0;
    }
  }

LABEL_5:
  v14 = *&v3[v10];
  if (v14)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1DAD88724()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD8878C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAD88828()
{
  result = qword_1EE00AA40;
  if (!qword_1EE00AA40)
  {
    sub_1DAD674D4(255, &qword_1EE00AA30, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AA40);
  }

  return result;
}

uint64_t sub_1DAD888A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD88900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD88948(uint64_t a1)
{
  result = type metadata accessor for RBImageSnapshotter.RBImageOptions(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1DAD889F0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1DAECF8EC();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

void *sub_1DAD88A98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v60 = a8;
  v58 = a5;
  v59 = a7;
  v51 = a4;
  v52 = a6;
  v56 = a1;
  v57 = a2;
  v55 = a13;
  v54 = a14;
  v50 = a12;
  v14 = *(a12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v46 = &v45 - v19;
  v21 = *(a11 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v49 = (&v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v45 - v26;
  v28 = *(a10 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v25);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v45 - v33;
  (*(v28 + 32))(&v45 - v33, v35, a10);
  v47 = v27;
  v48 = v21;
  v36 = v27;
  (*(v21 + 32))(v27, v51, a11);
  v37 = v20;
  v38 = v50;
  (*(v14 + 32))(v37, v52, v50);
  type metadata accessor for WidgetArchiveService();
  v52 = swift_allocObject();
  v39 = *(v28 + 16);
  v45 = a10;
  v39(v32, v34, a10);
  v40 = v49;
  (*(v21 + 16))(v49, v36, a11);
  v41 = v53;
  v42 = v46;
  (*(v14 + 16))(v53, v46, v38);
  v43 = sub_1DAD88E38(v56, v57, v32, v40, v58, v41, v59, v60, v52, a10, a11, v38, v55, *(&v55 + 1), v54);
  (*(v14 + 8))(v42, v38);
  (*(v48 + 8))(v47, a11);
  (*(v28 + 8))(v34, v45);
  return v43;
}

void *sub_1DAD88E38(uint64_t *a1, uint64_t *a2, char *a3, void (*a4)(char *), uint64_t *a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  LODWORD(v244) = a8;
  v247 = a7;
  v241 = a4;
  v242 = a6;
  v227 = a5;
  v239 = a3;
  v240 = a15;
  v238 = a14;
  v232 = a13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v202 = &v195 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5C8, &qword_1DAEDDF18);
  v203 = *(v20 - 8);
  v204 = v20;
  v21 = *(v203 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v197 = &v195 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v196 = &v195 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v208 = &v195 - v26;
  v237 = sub_1DAED208C();
  v27 = *(*(v237 - 8) + 64);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1DAED20DC();
  v243 = *(v234 - 8);
  v29 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v235 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DAED0A3C();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v233 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_1DAECEDEC();
  v245 = *(v250 - 8);
  v34 = *(v245 + 64);
  v35 = MEMORY[0x1EEE9AC00](v250);
  v224 = &v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v223 = &v195 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v205 = &v195 - v39;
  v40 = sub_1DAED18CC();
  v249 = *(v40 - 8);
  v41 = v249[8];
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v195 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_1DAED16DC();
  v226 = *(v246 - 8);
  v44 = *(v226 + 64);
  v45 = MEMORY[0x1EEE9AC00](v246);
  v230 = &v195 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v195 - v47;
  v274[3] = a10;
  v274[4] = v232;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v274);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, v239, a10);
  v273[3] = a11;
  v273[4] = v238;
  v50 = __swift_allocate_boxed_opaque_existential_1(v273);
  (*(*(a11 - 8) + 32))(v50, v241, a11);
  v272[3] = a12;
  v272[4] = v240;
  v51 = __swift_allocate_boxed_opaque_existential_1(v272);
  (*(*(a12 - 8) + 32))(v51, v242, a12);
  v231 = type metadata accessor for UnfairLock();
  v52 = swift_allocObject();
  v53 = swift_slowAlloc();
  *v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  *(v52 + 16) = v53;
  *(a9 + 288) = v52;
  *(a9 + 296) = v54;
  *(a9 + 304) = MEMORY[0x1E69E7CD0];
  sub_1DAD648F8(a1, a9 + 16);
  v200 = a2;
  sub_1DAD648F8(a2, a9 + 80);
  sub_1DAD648F8(v274, a9 + 120);
  sub_1DAD648F8(v273, a9 + 160);
  sub_1DAD648F8(v227, a9 + 200);
  sub_1DAD648F8(v272, a9 + 240);
  LODWORD(v232) = v244 & 1;
  *(a9 + 280) = v244;
  v55 = a1[3];
  v56 = a1[4];
  v57 = __swift_project_boxed_opaque_existential_1(a1, v55);
  v270 = v55;
  v271 = *(v56 + 8);
  v58 = __swift_allocate_boxed_opaque_existential_1(v269);
  (*(*(v55 - 8) + 16))(v58, v57, v55);
  sub_1DAED16CC();
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  v59 = sub_1DAED0EBC();
  sub_1DAED0EAC();
  sub_1DAED0E9C();
  v240 = v59;
  v60 = sub_1DAED0E8C();
  v61 = sub_1DAED13AC();
  v62 = *MEMORY[0x1E6985998];
  v63 = v249[13];
  v248 = v40;
  v241 = v63;
  v242 = v249 + 13;
  (v63)(v43, v62, v40);
  v64 = a1[3];
  v65 = a1[4];
  v201 = a1;
  v66 = a1;
  v67 = v61;
  v68 = __swift_project_boxed_opaque_existential_1(v66, v64);
  v270 = v64;
  v271 = *(v65 + 8);
  v69 = __swift_allocate_boxed_opaque_existential_1(v269);
  (*(*(v64 - 8) + 16))(v69, v68, v64);
  v244 = v43;
  v70 = sub_1DAED139C();
  v71 = sub_1DAED0F4C();
  sub_1DAD648F8(a9 + 240, v269);
  v268 = MEMORY[0x1E6993F30];
  v267 = v67;
  v266[0] = v70;

  sub_1DAED0F2C();
  v220 = v71;
  v72 = sub_1DAED0F1C();
  v73 = *(v226 + 16);
  v239 = v48;
  v74 = v72;
  v218 = v73;
  v219 = v226 + 16;
  v73(v230, v48, v246);
  v238 = v74;
  sub_1DAED0F3C();
  if (qword_1EE005DC0 != -1)
  {
    swift_once();
  }

  v75 = v250;
  v76 = __swift_project_value_buffer(v250, qword_1EE011658);
  v77 = v245 + 16;
  v78 = *(v245 + 16);
  v79 = v205;
  v78(v205, v76, v75);
  sub_1DAD648F8(v274, v269);
  sub_1DAD648F8(v273, v266);
  v265 = MEMORY[0x1E6993E28];
  *(&v264 + 1) = v240;
  *&v263 = v60;
  v228 = a9;
  sub_1DAD648F8(a9 + 200, v262);
  sub_1DAD6495C(v247, v261, &qword_1ECC0A9E0, &qword_1DAED7570);
  v260 = MEMORY[0x1E6993F30];
  v198 = v67;
  v259 = v67;
  v258[0] = v70;
  v80 = type metadata accessor for WidgetArchiveServiceStore(0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v240 = v80;
  v83 = swift_allocObject();
  v84 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v85 = swift_allocObject();
  v225 = v70;

  v199 = v60;

  v86 = swift_slowAlloc();
  *v86 = 0;
  *(v85 + 16) = v86;
  *&v83[v84] = v85;
  *&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v83 + 5) = 0x656E696C656D6974;
  *(v83 + 6) = 0xE900000000000073;
  v221 = v78;
  v222 = v77;
  v78(&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger], v79, v75);
  v229 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v255 = 0;
  v256 = 0xE000000000000000;
  sub_1DAED256C();
  v217 = "_lock_configLifetimeAssertions";
  MEMORY[0x1E127DA50](0xD000000000000034, 0x80000001DAEE57F0);
  MEMORY[0x1E127DA50](0x656E696C656D6974, 0xE900000000000073);
  sub_1DAED0A0C();
  v87 = *(v243 + 104);
  v216 = *MEMORY[0x1E69E8098];
  v243 += 104;
  v215 = v87;
  v87(v235);
  v255 = MEMORY[0x1E69E7CC0];
  v88 = sub_1DAD8878C(&qword_1EE00AA50, MEMORY[0x1E69E8030]);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v212 = sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  v213 = v89;
  v214 = v88;
  sub_1DAED23CC();
  *(v83 + 4) = sub_1DAED210C();
  sub_1DAD648F8(v269, &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v266, &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider]);
  sub_1DAD6495C(&v263, &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v258, &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v262, &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor]);
  v211 = *MEMORY[0x1E6985988];
  v90 = v248;
  v241(&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel]);
  v91 = sub_1DAD8878C(&qword_1EE005798, MEMORY[0x1E6993E58]);
  *(v83 + 2) = v238;
  *(v83 + 3) = v91;
  v209 = v91;
  v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews] = v232;
  v92 = sub_1DAED13EC();
  sub_1DAD648F8(v266, &v255);
  v93 = sub_1DAED13DC();
  v94 = &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver];
  v95 = MEMORY[0x1E6993F40];
  v210 = v92;
  v94[3] = v92;
  v94[4] = v95;
  *v94 = v93;
  sub_1DAD6495C(&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &v255, &qword_1ECC087A8, &unk_1DAED71F0);
  v96 = v250;
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v252[0] = sub_1DAED0F6C();
    v97 = sub_1DAED20EC();
    v251 = v97;
    v98 = sub_1DAED20AC();
    v99 = v202;
    (*(*(v98 - 8) + 56))(v202, 1, 1, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD88828();
    v100 = v208;
    sub_1DAECEFBC();
    v101 = v248;
    sub_1DAD64398(v99, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18);
    v102 = v204;
    sub_1DAECF00C();

    v103 = v100;
    v96 = v250;
    (*(v203 + 8))(v103, v102);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    v101 = v90;
    sub_1DAD64398(&v255, &qword_1ECC087A8, &unk_1DAED71F0);
  }

  v104 = &v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor];
  v105 = *&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32];
  __swift_project_boxed_opaque_existential_1(&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor], *&v83[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24]);
  v106 = v244;
  sub_1DAED127C();
  v107 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v108 = v249[5];
  v249 += 5;
  v207 = v108;
  v108(&v83[v107], v106, v101);
  swift_endAccess();
  v109 = *(v104 + 4);
  __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
  v255 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  v111 = sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488);
  v208 = v110;
  v206 = v111;
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v261, &v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  v112 = v205;
  v113 = MEMORY[0x1E6993F30];
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v253 = v240;
    v254 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore);
    v252[0] = v83;
    v114 = *(v83 + 5);
    v115 = *(v83 + 6);

    sub_1DAECE35C();
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    (*(v245 + 8))(v112, v96);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    __swift_destroy_boxed_opaque_existential_1Tm(v252);
    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
  }

  else
  {
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    (*(v245 + 8))(v112, v96);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    sub_1DAD64398(&v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v116 = v228;
  v228[7] = v83;
  sub_1DAD648F8((v116 + 30), v269);
  v268 = v113;
  v117 = v198;
  v267 = v198;
  v118 = v225;
  v266[0] = v225;
  swift_retain_n();
  sub_1DAED0F2C();
  v119 = sub_1DAED0F1C();
  v218(v230, v239, v246);
  sub_1DAED0F3C();
  if (qword_1EE005DC8 != -1)
  {
    swift_once();
  }

  v120 = v250;
  v121 = __swift_project_value_buffer(v250, qword_1EE011670);
  v122 = v223;
  v123 = v221;
  v221(v223, v121, v120);
  sub_1DAD648F8(v274, v269);
  sub_1DAD648F8(v273, v266);
  v265 = 0;
  v263 = 0u;
  v264 = 0u;
  sub_1DAD648F8((v116 + 25), v262);
  sub_1DAD6495C(v247, v261, &qword_1ECC0A9E0, &qword_1DAED7570);
  v260 = MEMORY[0x1E6993F30];
  v259 = v117;
  v258[0] = v118;
  v124 = *(v240 + 48);
  v125 = *(v240 + 52);
  v126 = swift_allocObject();
  v127 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v128 = swift_allocObject();

  v129 = swift_slowAlloc();
  *v129 = 0;
  *(v128 + 16) = v129;
  *&v126[v127] = v128;
  *&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v126 + 5) = 0x746F687370616E73;
  *(v126 + 6) = 0xE900000000000073;
  v123(&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger], v122, v120);
  v255 = 0;
  v256 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, v217 | 0x8000000000000000);
  MEMORY[0x1E127DA50](0x746F687370616E73, 0xE900000000000073);
  sub_1DAED0A0C();
  v215(v235, v216, v234);
  v255 = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  *(v126 + 4) = sub_1DAED210C();
  sub_1DAD648F8(v269, &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v266, &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider]);
  sub_1DAD6495C(&v263, &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v258, &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v262, &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor]);
  v130 = v248;
  (v241)(&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel], v211, v248);
  v205 = v119;
  v131 = v209;
  *(v126 + 2) = v119;
  *(v126 + 3) = v131;
  v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews] = v232;
  sub_1DAD648F8(v266, &v255);
  v132 = v210;
  v133 = sub_1DAED13DC();
  v134 = &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver];
  v134[3] = v132;
  v134[4] = MEMORY[0x1E6993F40];
  *v134 = v133;
  sub_1DAD6495C(&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &v255, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v252[0] = sub_1DAED0F6C();
    v135 = sub_1DAED20EC();
    v251 = v135;
    v136 = sub_1DAED20AC();
    v137 = v202;
    (*(*(v136 - 8) + 56))(v202, 1, 1, v136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD88828();
    v138 = v196;
    sub_1DAECEFBC();
    v139 = v248;
    sub_1DAD64398(v137, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18);
    v140 = v204;
    sub_1DAECF00C();

    (*(v203 + 8))(v138, v140);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    sub_1DAD64398(&v255, &qword_1ECC087A8, &unk_1DAED71F0);
    v139 = v130;
  }

  v141 = &v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor];
  v142 = *&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32];
  __swift_project_boxed_opaque_existential_1(&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor], *&v126[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24]);
  v143 = v244;
  sub_1DAED127C();
  v144 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v207(&v126[v144], v143, v139);
  swift_endAccess();
  v145 = *(v141 + 4);
  __swift_project_boxed_opaque_existential_1(v141, *(v141 + 3));
  v255 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v261, &v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v253 = v240;
    v254 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore);
    v252[0] = v126;
    v146 = *(v126 + 5);
    v147 = *(v126 + 6);

    sub_1DAECE35C();
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    v148 = v250;
    (*(v245 + 8))(v223, v250);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    __swift_destroy_boxed_opaque_existential_1Tm(v252);
    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
  }

  else
  {
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    v148 = v250;
    (*(v245 + 8))(v223, v250);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    sub_1DAD64398(&v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v149 = v228;
  v228[8] = v126;
  v150 = sub_1DAED130C();
  (v241)(v244, *MEMORY[0x1E69859A0], v139);
  v151 = sub_1DAED131C();
  sub_1DAD648F8((v149 + 30), v269);
  v268 = MEMORY[0x1E6993F28];
  v267 = v150;
  v266[0] = v151;

  sub_1DAED0F2C();
  v152 = sub_1DAED0F1C();
  v218(v230, v239, v246);
  v230 = v152;
  sub_1DAED0F3C();
  if (qword_1EE005E50 != -1)
  {
    swift_once();
  }

  v153 = __swift_project_value_buffer(v148, qword_1EE011760);
  v154 = v224;
  v155 = v221;
  v221(v224, v153, v148);
  sub_1DAD648F8(v274, v269);
  sub_1DAD648F8(v273, v266);
  v265 = 0;
  v263 = 0u;
  v264 = 0u;
  sub_1DAD648F8((v149 + 25), v262);
  sub_1DAD6495C(v247, v261, &qword_1ECC0A9E0, &qword_1DAED7570);
  v260 = MEMORY[0x1E6993F28];
  v259 = v150;
  v258[0] = v151;
  v156 = *(v240 + 48);
  v157 = *(v240 + 52);
  v158 = swift_allocObject();
  v159 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v160 = swift_allocObject();
  v231 = v151;

  v161 = v230;

  v162 = swift_slowAlloc();
  *v162 = 0;
  *(v160 + 16) = v162;
  *(v158 + v159) = v160;
  *(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage) = MEMORY[0x1E69E7CC8];
  *(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  strcpy((v158 + 40), "placeholders");
  *(v158 + 53) = 0;
  *(v158 + 54) = -5120;
  v155(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger, v154, v148);
  v255 = 0;
  v256 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, v217 | 0x8000000000000000);
  MEMORY[0x1E127DA50](0x6C6F686563616C70, 0xEC00000073726564);
  sub_1DAED0A0C();
  v215(v235, v216, v234);
  v255 = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  *(v158 + 32) = sub_1DAED210C();
  sub_1DAD648F8(v269, v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory);
  sub_1DAD648F8(v266, v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider);
  sub_1DAD6495C(&v263, v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v258, v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider);
  sub_1DAD648F8(v262, v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor);
  v163 = v248;
  (v241)(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel, v211, v248);
  v164 = v209;
  *(v158 + 16) = v161;
  *(v158 + 24) = v164;
  *(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews) = v232;
  sub_1DAD648F8(v266, &v255);
  v165 = v210;
  v166 = sub_1DAED13DC();
  v167 = (v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver);
  v167[3] = v165;
  v167[4] = MEMORY[0x1E6993F40];
  *v167 = v166;
  sub_1DAD6495C(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &v255, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v252[0] = sub_1DAED0F6C();
    v168 = sub_1DAED20EC();
    v251 = v168;
    v169 = sub_1DAED20AC();
    v170 = v202;
    (*(*(v169 - 8) + 56))(v202, 1, 1, v169);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD88828();
    v171 = v197;
    sub_1DAECEFBC();
    v172 = v248;
    sub_1DAD64398(v170, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18);
    v173 = v204;
    sub_1DAECF00C();

    (*(v203 + 8))(v171, v173);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    v172 = v163;
    sub_1DAD64398(&v255, &qword_1ECC087A8, &unk_1DAED71F0);
  }

  v174 = v245;
  v175 = (v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor);
  v176 = *(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32);
  __swift_project_boxed_opaque_existential_1((v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v158 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
  v177 = v244;
  sub_1DAED127C();
  v178 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v207((v158 + v178), v177, v172);
  swift_endAccess();
  v179 = v175[4];
  __swift_project_boxed_opaque_existential_1(v175, v175[3]);
  v255 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v261, &v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v257)
  {
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v253 = v240;
    v254 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore);
    v252[0] = v158;
    v180 = *(v158 + 40);
    v181 = *(v158 + 48);

    sub_1DAECE35C();
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    (*(v174 + 8))(v224, v250);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    __swift_destroy_boxed_opaque_existential_1Tm(v252);
    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
  }

  else
  {
    sub_1DAD64398(v261, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v262);
    sub_1DAD64398(&v263, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v266);
    __swift_destroy_boxed_opaque_existential_1Tm(v269);
    (*(v174 + 8))(v224, v250);
    __swift_destroy_boxed_opaque_existential_1Tm(v258);
    sub_1DAD64398(&v255, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v182 = v228;
  v228[9] = v158;
  v183 = v182[5];
  v184 = v182[6];
  __swift_project_boxed_opaque_existential_1(v182 + 2, v183);
  v269[0] = (*(v184 + 48))(v183, v184);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v185 = v182[5];
  v186 = v182[6];
  __swift_project_boxed_opaque_existential_1(v182 + 2, v185);
  v269[0] = (*(v186 + 104))(v185, v186);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5D0, &unk_1DAEDDF28);
  sub_1DAD64B94(&qword_1EE005C60, &qword_1ECC0A5D0, &unk_1DAEDDF28);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v187 = v182[5];
  v188 = v182[6];
  __swift_project_boxed_opaque_existential_1(v182 + 2, v187);
  v269[0] = (*(v188 + 96))(v187, v188);
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v189 = v182[5];
  v190 = v182[6];
  __swift_project_boxed_opaque_existential_1(v182 + 2, v189);
  v269[0] = (*(v190 + 88))(v189, v190);
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v191 = v182[14];
  __swift_project_boxed_opaque_existential_1(v182 + 10, v182[13]);
  v269[0] = sub_1DAED11CC();
  v192 = swift_allocObject();
  swift_weakInit();

  v193 = swift_allocObject();
  *(v193 + 16) = sub_1DADC0140;
  *(v193 + 24) = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD64398(v247, &qword_1ECC0A9E0, &qword_1DAED7570);
  __swift_destroy_boxed_opaque_existential_1Tm(v227);
  __swift_destroy_boxed_opaque_existential_1Tm(v200);
  (*(v226 + 8))(v239, v246);
  __swift_destroy_boxed_opaque_existential_1Tm(v272);
  __swift_destroy_boxed_opaque_existential_1Tm(v273);
  __swift_destroy_boxed_opaque_existential_1Tm(v274);
  __swift_destroy_boxed_opaque_existential_1Tm(v201);
  return v182;
}

uint64_t sub_1DAD8B828()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD8B860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD8B8BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A950, &unk_1DAEDF0F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAED136C();
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAECEF8C();

  sub_1DAD64B94(&qword_1EE005D98, &unk_1ECC0A950, &unk_1DAEDF0F0);
  v6 = sub_1DAECEF6C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1DAD8BA88()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BC8, &qword_1DAEDB940);
    sub_1DAD64B94(&qword_1EE00ABC8, &qword_1ECC09BC8, &qword_1DAEDB940);
    v3 = v0;
    v2 = sub_1DAECEF6C();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DAD8BB88(uint64_t a1)
{
  v2 = sub_1DAED18CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v6, a1, v2);
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED200C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v21 = a1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v14 = sub_1DAED287C();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_1DAD6482C(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v9, v10, "Protection Type changed to %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      v18 = v12;
      a1 = v21;
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v19 = *(v8 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    sub_1DAD8BE48(v8, a1);
    os_unfair_lock_unlock(*(v19 + 16));
  }

  return result;
}

uint64_t sub_1DAD8BE48(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = sub_1DAED0DDC();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v49 = a1;
  v14 = *(a1 + v13);
  v15 = *(v14 + 64);
  v43 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v42 = (v16 + 63) >> 6;
  v44 = v3 + 16;
  v52 = (v3 + 32);
  v47 = v3;
  v48 = v14;
  v50 = (v3 + 8);

  v20 = 0;
  v21 = &unk_1ECC08788;
  v45 = v12;
  v46 = v10;
  if (v18)
  {
    while (1)
    {
      v22 = v20;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v28 = v47;
      v27 = v48;
      v29 = v53;
      v30 = v54;
      (*(v47 + 16))(v53, *(v48 + 48) + *(v47 + 72) * v26, v54);
      v31 = *(*(v27 + 56) + 8 * v26);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &qword_1DAED71C8);
      v33 = v21;
      v34 = *(v32 + 48);
      v35 = *(v28 + 32);
      v10 = v46;
      v35(v46, v29, v30);
      *&v10[v34] = v31;
      v21 = v33;
      (*(*(v32 - 8) + 56))(v10, 0, 1, v32);

      v24 = v22;
      v12 = v45;
LABEL_13:
      sub_1DAD8C374(v10, v12);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &qword_1DAED71C8);
      if ((*(*(v36 - 8) + 48))(v12, 1, v36) == 1)
      {
      }

      v37 = *&v12[*(v36 + 48)];
      v38 = v53;
      v39 = v54;
      (*v52)(v53, v12, v54);
      sub_1DADBD3C0(v38, v37, v51);

      result = (*v50)(v38, v39);
      v20 = v24;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v42 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v42;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v42)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &qword_1DAED71C8);
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v43 + 8 * v22);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1DAD8C264()
{
  sub_1DAD8C31C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAD8C31C()
{
  if (!qword_1EE00C278)
  {
    sub_1DAECDCEC();
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00C278);
    }
  }
}

uint64_t sub_1DAD8C374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD8C3E4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1DAED248C();

    if (v17)
    {

      sub_1DAD674D4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1DAED247C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1DAE87ED4(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1DADAAF4C(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_1DAE88E64(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1DAD674D4(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1DAED227C();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1DAED228C();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1DAD8E02C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

char *sub_1DAD8C688(void *a1, char *a2, char a3)
{
  v6 = v3;
  v10 = sub_1DAECDB3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v15 = *(v6 + 16);

  v16 = sub_1DAD8DA44(a1, v15);

  if (v16)
  {
    __break(1u);
    goto LABEL_37;
  }

  v15 = &selRef__registerSceneActionsHandlerArray_forKey_;
  if ([*(v6 + 24) containsObject_])
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
LABEL_31:
    v45 = v4 * v5;
    v46 = sub_1DAECEDEC();
    __swift_project_value_buffer(v46, qword_1EE011B58);
    v47 = v15;
    v48 = sub_1DAECEDCC();
    v49 = sub_1DAED203C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v67 = v51;
      *v50 = 136446466;
      v52 = [v47 *(v16 + 3432)];
      v53 = [v52 identifier];

      v54 = sub_1DAED1CEC();
      v56 = v55;

      v57 = sub_1DAD6482C(v54, v56, &v67);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2050;
      *(v50 + 14) = v45;
      _os_log_impl(&dword_1DAD61000, v48, v49, "Add existing foreground content: %{public}s %{public}f", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E127F100](v51, -1, -1);
      MEMORY[0x1E127F100](v50, -1, -1);
    }

    [*(v6 + 32) addObject_];
    swift_beginAccess();
    v58 = *(v6 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66[0] = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1DAD80D9C(v47, isUniquelyReferenced_nonNull_native, v45);
    *(v6 + 40) = *&v66[0];
    swift_endAccess();
    goto LABEL_35;
  }

  if ([*(v6 + 32) containsObject_])
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v15 = a1;
  sub_1DAD8DAE0(v66, v15);
  swift_endAccess();

  if (sub_1DAD8DB4C())
  {
    goto LABEL_29;
  }

  v61 = v11;
  v62 = v10;
  v63 = a2;
  if (a3)
  {
    v17 = *(v6 + 64);
    if (v17)
    {
      v18 = *(v6 + 72);

      v17(v15);
      sub_1DAD660D8(v17);
    }
  }

  v64 = v15;
  v19 = *(v6 + 32);
  sub_1DAED1FEC();

  sub_1DAECDB2C();
  if (!v68)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1DADDC968(&v67, v66);
    sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v20 = qword_1EE005478;
    v21 = v65;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = [qword_1EE005480 objectForKey_];
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = v22;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      break;
    }

    v24 = *&v23[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
    swift_unknownObjectRelease();
    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_10:
    sub_1DAECDB2C();
    if (!v68)
    {
      goto LABEL_28;
    }
  }

  swift_unknownObjectRelease();
LABEL_19:
  if (qword_1EE00AC50 != -1)
  {
    swift_once();
  }

  v25 = sub_1DAECEDEC();
  __swift_project_value_buffer(v25, qword_1EE011B58);
  v26 = v21;
  v27 = sub_1DAECEDCC();
  v28 = sub_1DAED203C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v66[0] = v30;
    *v29 = 136446210;
    v31 = [v26 _FBSScene];
    v32 = [v31 identifier];

    v33 = sub_1DAED1CEC();
    v35 = v34;

    v36 = sub_1DAD6482C(v33, v35, v66);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_1DAD61000, v27, v28, "No current content availability, revoking content for older scene to make room: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E127F100](v30, -1, -1);
    MEMORY[0x1E127F100](v29, -1, -1);
  }

  [*(v6 + 32) removeObject_];
  swift_beginAccess();
  v37 = v26;
  sub_1DADC7B44(0, 1, v37);
  swift_endAccess();
  [*(v6 + 24) addObject_];
  v38 = qword_1EE005480;
  v39 = [v38 objectForKey_];

  if (v39)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1DADE615C();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_28:
  (*(v61 + 8))(v14, v62);
  a2 = v63;
  v15 = v64;
LABEL_29:
  if (a2)
  {
    a2 = a2;
    v16 = &off_1E85EB000;
    v40 = [v15 _FBSScene];
    v41 = [v40 settings];

    [v41 frame];
    v4 = v42;
    v5 = v43;

    v44 = [v15 widget];
    [v44 family];

    CHSWidgetFamilyIsAccessory();
    if (qword_1EE00AC50 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  a2 = sub_1DAD7CD98(v15);
LABEL_35:
  sub_1DAD7C75C();
  return a2;
}

uint64_t sub_1DAD8CE78(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 identifier];

  v4 = sub_1DAED1CEC();
  v6 = v5;

  v33 = 45;
  v34 = 0xE100000000000000;
  v32[2] = &v33;
  v7 = sub_1DAD8D150(sub_1DAD8D274, v32, v4, v6);
  if ((v8 & 1) == 0)
  {
    v9 = sub_1DAD8D2CC(v7, v4, v6);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v4 = MEMORY[0x1E127DA00](v9, v11, v13, v15);
    v6 = v16;
  }

  [a1 contentType];
  v17 = NSStringFromCHSWidgetContentType();
  if (!v17)
  {
    sub_1DAED1CEC();
    v17 = sub_1DAED1CBC();
  }

  v18 = [a1 _FBSScene];
  v19 = [v18 hostHandle];

  if (v19)
  {
    v20 = [v19 auditToken];

    v21 = [v20 pid];
    LODWORD(v33) = v21;
    sub_1DAD8D318();
    v22 = sub_1DAED237C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = [a1 widget];
  v26 = [a1 metrics];
  v27 = [v25 _loggingIdentifierWithMetrics_prefix_];

  v28 = sub_1DAED1CEC();
  v30 = v29;

  v33 = v28;
  v34 = v30;
  MEMORY[0x1E127DA50](0x3A6469702DLL, 0xE500000000000000);
  MEMORY[0x1E127DA50](v22, v24);

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](v4, v6);

  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  return v33;
}

unint64_t sub_1DAD8D150(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
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

    v8 = sub_1DAED1DBC();
    v13[0] = sub_1DAED1E1C();
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

uint64_t sub_1DAD8D274(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DAED289C() & 1;
  }
}

uint64_t sub_1DAD8D2CC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

unint64_t sub_1DAD8D318()
{
  result = qword_1EE005428;
  if (!qword_1EE005428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005428);
  }

  return result;
}

void sub_1DAD8D36C()
{
  v0 = sub_1DAECE20C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1DADD5988(319, &qword_1EE005EB0, MEMORY[0x1E6994460]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_1DAED10DC();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1DADD5988(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1DAD8D568()
{
  if (!qword_1EE005EB0)
  {
    sub_1DAECE55C();
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005EB0);
    }
  }
}

uint64_t sub_1DAD8D5C0()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117D8);
  __swift_project_value_buffer(v0, qword_1EE0117D8);
  return sub_1DAECEDDC();
}

void sub_1DAD8D644()
{
  if (!qword_1EE005698)
  {
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005698);
    }
  }
}

uint64_t sub_1DAD8D6A4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAD674D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAD8D6E8(void *a1)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v31 = a1;
    v5 = [v4 nullableWidget];
    if (v5)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v6 = sub_1DAECEDEC();
      __swift_project_value_buffer(v6, qword_1EE011748);
      v7 = v31;
      v8 = v1;
      v9 = sub_1DAECEDCC();
      v10 = sub_1DAED203C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32 = v12;
        *v11 = 136446210;
        v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v13)
        {
          v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = v7;
            v20 = sub_1DAD8CE78(v18);
          }

          else
          {
            v22 = [v7 _FBSScene];
            v19 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v16 = v20;
          v15 = v21;
        }

        v23 = sub_1DAD6482C(v16, v15, &v32);

        *(v11 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Will foreground", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E127F100](v12, -1, -1);
        MEMORY[0x1E127F100](v11, -1, -1);
      }

      v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 0;
      v24 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene];
      *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = v4;
      v25 = v7;

      v26 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
        if (v27)
        {
          if ((v27[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated] & 1) == 0)
          {
            v28 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
            swift_beginAccess();
            v29 = v27[v28];
            v27[v28] = 1;
            v30 = v27;
            sub_1DADC68E4(v29);
          }
        }
      }

      sub_1DAD8830C(v4, 0);
      sub_1DAD83970(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1DAD8DB4C()
{
  v1 = [*(v0 + 32) count];
  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if (v1 == *(v3 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = 0.0;
    if (v7)
    {
      while (1)
      {
        v10 = v4;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v9 = v9 + *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_10;
      }
    }

    return v9 < *(v0 + 48) && *(*(v0 + 40) + 16) < *(v0 + 56);
  }

  else
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAD8DCB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  return sub_1DAED228C() & 1;
}

uint64_t sub_1DAD8DD18(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E127E1F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1DAED247C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t (*sub_1DAD8DE4C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E127E1F0](a2, a3);
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
    return sub_1DAD8DE48;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAD8DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  if (v4 == 2)
  {
    return sub_1DAD648F8(a2, a4);
  }

  v7 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);
  if (v4 == 1)
  {
    v15 = *(v7 + 64);
    v10 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
    v16 = *(v10 + 16);
    v17 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);

    os_unfair_lock_lock(v16);
    v13 = a4;
    v14 = v15;
  }

  else
  {
    v9 = *(v7 + 56);
    v10 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
    v11 = *(v10 + 16);
    v12 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);

    os_unfair_lock_lock(v11);
    v13 = a4;
    v14 = v9;
  }

  sub_1DAD72328(v14, a3, 0x4D7765695677656ELL, 0xEC0000006C65646FLL, v13);
  os_unfair_lock_unlock(*(v10 + 16));
}

void sub_1DAD8E02C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1DADAAF4C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DAE89574(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1DADA65C8(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1DAED227C();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1DAD674D4(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1DAED228C();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DAED28EC();
  __break(1u);
}

uint64_t sub_1DAD8E1BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD8E204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD8E24C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD8E294(uint64_t a1)
{
  v3 = sub_1DAED10DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) != 1)
  {
    return (*(v4 + 8))(a1, v3);
  }

  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v16);
  v9 = v17;
  v10 = v18;
  v15 = __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v4 + 16))(v7, v1 + v8, v3);
  v11 = *(v10 + 152);
  v12 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
  v11(v7, v12, v9, v10);

  v13 = *(v4 + 8);
  v13(a1, v3);
  v13(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1DAD8E484()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0DDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v12 = *(v0 + 40);
  v13 = *(v0 + 32);
  v14 = v12;
  sub_1DAED0DAC();
  v15 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);

  sub_1DAD80BE4(0x4D7765695677656ELL, 0xEC0000006C65646FLL, v59);

  sub_1DAD648F8(v59, v57);
  v16 = v58;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;

  v24 = sub_1DADD721C(v23, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_1DAD8DECC(v1, v59, v11, v57);
  v25 = *(v1 + 48);
  if (v25 == 2)
  {
    v26 = type metadata accessor for PlaceholderWidgetEntrySource();

    v27 = v24;
  }

  else
  {
    sub_1DAD648F8(v57, v55);
    v28 = v56;
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v49 = v3;
    v48[1] = v48;
    v30 = *(*(v28 - 8) + 64);
    MEMORY[0x1EEE9AC00](v29);
    v32 = v24;
    v33 = v2;
    v34 = v6;
    v35 = v8;
    v36 = v7;
    v37 = (v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    v7 = v36;
    v8 = v35;
    v6 = v34;
    v2 = v33;
    v24 = v32;

    v27 = sub_1DADD7008(v40, v39, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v3 = v49;
    v26 = type metadata accessor for LiveWidgetEntrySource();
  }

  v53 = v26;
  v54 = &off_1F56B6798;
  *&v52 = v27;
  sub_1DAD657D8(&v52, v55);
  sub_1DAD648F8(v55, &v52);
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v2, qword_1EE011730);
  (*(v3 + 16))(v6, v41, v2);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider, v51);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor, v50);
  v42 = type metadata accessor for LiveWidgetEntryViewModel(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = sub_1DAD96130(&v52, v24, v6, v51, v50, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  (*(v8 + 8))(v11, v7);
  return v46;
}

uint64_t sub_1DAD8E95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for TintedWidgetViewModel()
{
  result = qword_1EE00BCB8;
  if (!qword_1EE00BCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD8EAF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DAECDCEC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DAED157C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1DAD8EC1C(unsigned __int8 *a1)
{
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v3 = *(*(v136 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v136);
  v132 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v131 = &v125 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v135 = (&v125 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v134 = &v125 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v125 - v12;
  v13 = sub_1DAECDCEC();
  v137 = *(v13 - 8);
  v14 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v125 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v125 - v29;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing))
  {
    return;
  }

  v31 = *a1;
  v32 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch);
  v130 = v1;
  if (v32 == 1)
  {
    v33 = v31;
    v34 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
    swift_beginAccess();
    v35 = *(v1 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v34) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1DAEB1F7C(0, *(v35 + 2) + 1, 1, v35);
      *(v130 + v34) = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      v124 = sub_1DAEB1F7C((v37 > 1), v38 + 1, 1, v35);
      v39 = v33;
      v35 = v124;
    }

    else
    {
      v39 = v33;
    }

    *(v35 + 2) = v38 + 1;
    v35[v38 + 32] = v39;
    *(v130 + v34) = v35;
    swift_endAccess();
    return;
  }

  v129 = v31;
  v141[0] = v31;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x646E456863746162 && v40 == 0xEA00000000006465)
  {

LABEL_13:
    v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
    v43 = v130;
    swift_beginAccess();
    v128 = *(v43 + v42);

    goto LABEL_15;
  }

  v41 = sub_1DAED289C();

  if (v41)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A660, &unk_1DAEDE850);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1DAED6200;
  v128 = v44;
  *(v44 + 32) = v129;
  v43 = v130;
LABEL_15:
  BSDispatchQueueAssertMain();
  v45 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v125 = v45;
  sub_1DAD6495C(v43 + v45, v30, &qword_1ECC07CE8, &qword_1DAED6F60);
  v126 = *(v137 + 48);
  v127 = v137 + 48;
  LODWORD(v45) = v126(v30, 1, v13);
  sub_1DAD64398(v30, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v45 != 1)
  {
    v47 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    if (*(v43 + v47) != 1)
    {
      v46 = 1;
      goto LABEL_26;
    }

    sub_1DADC9D74(v28);
    v48 = *(v17 + 48);
    sub_1DAD6495C(v28, v20, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD6495C(v43 + v125, &v20[v48], &qword_1ECC07CE8, &qword_1DAED6F60);
    v49 = v126;
    if (v126(v20, 1, v13) == 1)
    {
      sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
      v50 = v49(&v20[v48], 1, v13);
      v43 = v130;
      if (v50 == 1)
      {
        sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAD6495C(v20, v25, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v49(&v20[v48], 1, v13) != 1)
      {
        v51 = v137;
        (*(v137 + 32))(v16, &v20[v48], v13);
        sub_1DAD900EC(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
        v52 = sub_1DAED1CAC();
        v53 = *(v51 + 8);
        v53(v16, v13);
        sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
        v53(v25, v13);
        sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
        v46 = v52 ^ 1;
        v43 = v130;
        goto LABEL_26;
      }

      sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v137 + 8))(v25, v13);
      v43 = v130;
    }

    sub_1DAD64398(v20, &qword_1ECC087B0, qword_1DAEDCBF0);
    v46 = 1;
    goto LABEL_26;
  }

LABEL_16:
  v46 = 0;
LABEL_26:
  v54 = v128;
  v55 = *(v43 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce);
  v137 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce;
  if (v55 != 1 || *(v43 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) != 1)
  {
    goto LABEL_35;
  }

  v141[0] = v129;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x6C616974696E69 && v56 == 0xE700000000000000)
  {

LABEL_35:
    v60 = 1;
    goto LABEL_36;
  }

  v57 = sub_1DAED289C();

  if (v57)
  {
    goto LABEL_35;
  }

  if (sub_1DADC1344(6, v54))
  {
    goto LABEL_35;
  }

  v58 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v43 + v58) != 1)
  {
    goto LABEL_35;
  }

  v59 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v60 = *(v43 + v59) ^ 1 | v46;
LABEL_36:
  v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  v62 = v130;
  swift_beginAccess();
  v63 = *(v62 + v61);
  v141[0] = v129;
  v65 = &_serverStartupToken[892];
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0xD00000000000001CLL && 0x80000001DAEE0300 == v64)
  {
  }

  else
  {
    v66 = sub_1DAED289C();

    if ((v66 & 1) == 0)
    {
      v73 = 0;
      goto LABEL_45;
    }
  }

  v67 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  v68 = v130;
  swift_beginAccess();
  v69 = v68 + v67;
  v70 = v68;
  v71 = v133;
  sub_1DAD6495C(v69, v133, &unk_1ECC07D30, &unk_1DAED57E0);
  v72 = v134;
  sub_1DAD7C48C(v71, v134, &unk_1ECC07D30, &unk_1DAED57E0);
  LODWORD(v71) = swift_getEnumCaseMultiPayload();
  sub_1DAD64398(v72, &unk_1ECC07D30, &unk_1DAED57E0);
  if (v71)
  {
    v73 = 0;
  }

  else
  {
    sub_1DAD648F8(v70 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v138);
    v74 = v139;
    v75 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v76 = (*(v75 + 16))(v74, v75);
    sub_1DAED0C5C();

    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    v73 = v142 == 0;
    sub_1DAD64398(v141, &unk_1ECC08880, &unk_1DAED6F50);
  }

  v65 = _serverStartupToken + 3568;
LABEL_45:
  v141[0] = v129;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x7265646E6572 && v77 == 0xE600000000000000)
  {

    goto LABEL_49;
  }

  v78 = sub_1DAED289C();

  if (((v78 | v73 | v63 & v60) & 1) == 0)
  {
    v109 = v130;
    *(v130 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 1;
    swift_retain_n();

    v110 = sub_1DAECEDCC();
    v111 = sub_1DAED203C();

    if (!os_log_type_enabled(v110, v111))
    {

      return;
    }

    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v143 = v113;
    *v112 = 136446978;
    *(v112 + 4) = sub_1DAD6482C(*(v109 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v109 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v143);
    *(v112 + 12) = 2082;
    v114 = MEMORY[0x1E127DB00](v54, &type metadata for LiveWidgetViewChangeReason);
    v116 = v115;

    v117 = sub_1DAD6482C(v114, v116, &v143);

    *(v112 + 14) = v117;
    *(v112 + 22) = 1026;
    v118 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    v119 = v130;
    if (*(v130 + v118) == 1)
    {
      v120 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      LOBYTE(v120) = *(v119 + v120);

      if (v120)
      {
        v121 = 1;
LABEL_79:
        *(v112 + 24) = v121;
        v122 = v130;

        *(v112 + 28) = 1026;
        v123 = *(v122 + v61);

        *(v112 + 30) = v123;

        _os_log_impl(&dword_1DAD61000, v110, v111, "[%{public}s] Ignored view update for reason: %{public}s, (content paused: %{BOOL,public}d, foreground: %{BOOL,public}d)", v112, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v113, -1, -1);
        MEMORY[0x1E127F100](v112, -1, -1);

        return;
      }
    }

    else
    {
    }

    v121 = 0;
    goto LABEL_79;
  }

LABEL_49:
  v79 = v135;
  v80 = v130;
  sub_1DAD9022C(v135);
  v81 = *(v65 + 353);
  swift_beginAccess();
  sub_1DAD901C4(v79, v80 + v81, &unk_1ECC07D30, &unk_1DAED57E0);
  swift_endAccess();
  sub_1DAD64398(v79, &unk_1ECC07D30, &unk_1DAED57E0);
  v82 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v83 = *(v80 + v82);
  v84 = __OFADD__(v83, 1);
  v85 = v83 + 1;
  if (v84)
  {
    __break(1u);
  }

  else
  {
    *(v80 + v82) = v85;
    swift_retain_n();

    v86 = sub_1DAECEDCC();
    v87 = sub_1DAED203C();

    if (os_log_type_enabled(v86, v87))
    {
      LODWORD(v135) = v87;
      v88 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v138[0] = v134;
      *v88 = 136446978;
      *(v88 + 4) = sub_1DAD6482C(*(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v138);
      *(v88 + 12) = 2082;
      v89 = v131;
      sub_1DAD6495C(v80 + v81, v131, &unk_1ECC07D30, &unk_1DAED57E0);
      v90 = v132;
      sub_1DAD6495C(v89, v132, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v92 = v89;
      }

      else
      {
        v92 = v90;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v93 = v90;
      }

      else
      {
        v93 = v89;
      }

      v94 = EnumCaseMultiPayload == 0;
      if (EnumCaseMultiPayload)
      {
        v95 = v92;
      }

      else
      {
        v95 = v89;
      }

      if (v94)
      {
        v96 = v90;
      }

      else
      {
        v96 = v93;
      }

      sub_1DAD64398(v95, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD64398(v96, &unk_1ECC07D30, &unk_1DAED57E0);
      v97 = sub_1DAED1D6C();
      v99 = v98;

      v100 = sub_1DAD6482C(v97, v99, v138);

      *(v88 + 14) = v100;
      *(v88 + 22) = 2050;
      v101 = *(v80 + v82);

      *(v88 + 24) = v101;

      *(v88 + 32) = 2082;
      v54 = v128;
      v102 = MEMORY[0x1E127DB00](v128, &type metadata for LiveWidgetViewChangeReason);
      v104 = sub_1DAD6482C(v102, v103, v138);

      *(v88 + 34) = v104;
      _os_log_impl(&dword_1DAD61000, v86, v135, "[%{public}s] Evaluated inner view with result: %{public}s - view sequence number: %{public}lld, reasons: %{public}s", v88, 0x2Au);
      v105 = v134;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v105, -1, -1);
      MEMORY[0x1E127F100](v88, -1, -1);
    }

    else
    {
    }

    v106 = v137;
    if (*(v80 + v137) != 1 || (*(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) & 1) == 0)
    {

      *(v80 + v106) = 1;
      sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);

      sub_1DAED22FC();

      v54 = &unk_1F56AF988;
    }

    *(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (LOBYTE(v138[0]) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138[0]) = 0;

      sub_1DAECEF4C();
    }

    v107 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher);
    v138[0] = v54;

    sub_1DAECEE6C();

    v108 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher);
    v138[0] = v54;

    sub_1DAECEE6C();
  }
}

unint64_t LiveWidgetViewChangeReason.rawValue.getter()
{
  result = 0x6C616974696E69;
  switch(*v0)
  {
    case 1:
      return 0x7265646E6572;
    case 2:
      return 0x756F726765726F66;
    case 3:
    case 4:
    case 8:
      return 0xD00000000000001CLL;
    case 5:
    case 0x1B:
      v2 = 5;
      goto LABEL_16;
    case 6:
      return 0x7269766E4577656ELL;
    case 7:
    case 0x1A:
    case 0x1C:
      return 0xD000000000000016;
    case 9:
    case 0xE:
    case 0x18:
      return 0xD000000000000017;
    case 0xA:
      return 0xD000000000000010;
    case 0xB:
      return 0x61726150746E6974;
    case 0xC:
    case 0x17:
      return 0xD000000000000014;
    case 0xD:
      return 0x656469727265766FLL;
    case 0xF:
      return 0xD000000000000011;
    case 0x10:
      return 0xD000000000000010;
    case 0x11:
      return 0x41676E6974697865;
    case 0x12:
      v2 = 33;
      goto LABEL_16;
    case 0x13:
      return 0x63537265646E6572;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x646E456863746162;
    case 0x16:
      return 0xD000000000000010;
    case 0x19:
      v2 = 9;
LABEL_16:
      result = v2 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAD900A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD900EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD90134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD9017C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD901C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD9022C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy;
    swift_beginAccess();
    sub_1DAD648F8(v2 + v5, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16[3] = type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
    v16[4] = sub_1DAD900EC(qword_1EE008FB8, type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource);
    v16[0] = v4;
    v8 = *(v7 + 8);
    v9 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    v10 = sub_1DAD900EC(&qword_1EE008CE0, type metadata accessor for DefaultWidgetLiveViewEntry);

    v8(v16, v9, v10, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED202C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v17);
      _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Could not evaluate inner view because the viewSecurityDataSource is nil.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    *a1 = sub_1DAED087C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1DAD904D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v302 = a4;
  v304 = a3;
  v6 = type metadata accessor for WidgetViewSecurityPolicyResult();
  v301 = *(v6 - 8);
  v7 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v285 - v8;
  v309 = sub_1DAED18CC();
  v299 = *(v309 - 8);
  v10 = *(v299 + 64);
  v11 = MEMORY[0x1EEE9AC00](v309);
  v317 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v318 = &v285 - v14;
  v321 = *(a2 - 8);
  v15 = v321[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v292 = &v285 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v287 = &v285 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v286 = &v285 - v20;
  v327 = a2;
  v21 = sub_1DAED233C();
  v22 = *(v21 - 8);
  v322 = v21;
  v323 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v291 = &v285 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v308 = &v285 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v296 = &v285 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v297 = &v285 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v288 = &v285 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v316 = &v285 - v34;
  v315 = sub_1DAECF32C();
  v306 = *(v315 - 8);
  v35 = *(v306 + 64);
  v36 = MEMORY[0x1EEE9AC00](v315);
  v319 = &v285 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v314 = &v285 - v38;
  v324 = sub_1DAECF8EC();
  v328 = *(v324 - 8);
  v39 = *(v328 + 64);
  v40 = MEMORY[0x1EEE9AC00](v324);
  v313 = &v285 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v303 = &v285 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v312 = &v285 - v44;
  v45 = sub_1DAECEDEC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v298 = &v285 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v290 = &v285 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v289 = &v285 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v295 = &v285 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v285 = &v285 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v310 = &v285 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v285 - v60;
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  (*(v63 + 24))(v62, v63);
  sub_1DAD648F8(a1, &v331);
  v64 = sub_1DAECEDCC();
  v65 = sub_1DAED200C();
  v66 = os_log_type_enabled(v64, v65);
  v326 = v45;
  v320 = v46;
  v305 = v6;
  v300 = v9;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v330 = v68;
    *v67 = 136446210;
    v69 = v333;
    v70 = v334;
    __swift_project_boxed_opaque_existential_1(&v331, v333);
    v71 = (*(v70 + 32))(v69, v70);
    v73 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v74 = sub_1DAD6482C(v71, v73, &v330);

    *(v67 + 4) = v74;
    _os_log_impl(&dword_1DAD61000, v64, v65, "[%{public}s] viewEvaluate: begin", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E127F100](v68, -1, -1);
    MEMORY[0x1E127F100](v67, -1, -1);

    v325 = *(v46 + 8);
    v325(v61, v326);
  }

  else
  {

    v325 = *(v46 + 8);
    v325(v61, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
  }

  v330 = MEMORY[0x1E69E7CC0];
  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  v311 = (*(v76 + 48))(v75, v76);
  v77 = a1[3];
  v78 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v77);
  LODWORD(v294) = (*(v78 + 56))(v77, v78);
  v79 = a1[3];
  v80 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v79);
  v81 = v312;
  (*(v80 + 40))(v79, v80);
  v82 = v314;
  sub_1DAECF46C();
  v84 = v328 + 8;
  v83 = *(v328 + 8);
  v85 = v324;
  v83(v81, v324);
  v86 = v319;
  sub_1DAECF31C();
  v87 = sub_1DAD90134(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  v88 = v315;
  v307 = v87;
  LODWORD(v293) = sub_1DAED23AC();
  v89 = *(v306 + 8);
  v89(v86, v88);
  v89(v82, v88);
  v90 = a1[3];
  v91 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v90);
  (*(v91 + 40))(v90, v91);
  v92 = sub_1DAECF4BC();
  v328 = v84;
  v319 = v83;
  v83(v81, v85);
  v93 = sub_1DAD9BBC0(v92 & 1, a1, &v330, v293 & 1, v311 & 1, v294 & 1);
  v94 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v94);
  v96 = v310;
  (*(v95 + 24))(v94, v95);
  sub_1DAD648F8(a1, &v331);
  v97 = sub_1DAECEDCC();
  v98 = sub_1DAED200C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v329 = v100;
    *v99 = 136446466;
    v101 = v333;
    v102 = v334;
    __swift_project_boxed_opaque_existential_1(&v331, v333);
    v103 = (*(v102 + 32))(v101, v102);
    v105 = v104;
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v106 = sub_1DAD6482C(v103, v105, &v329);

    *(v99 + 4) = v106;
    *(v99 + 12) = 1026;
    *(v99 + 14) = v93 & 1;
    _os_log_impl(&dword_1DAD61000, v97, v98, "[%{public}s] viewEvaluate: securityAllowsLiveContent = %{BOOL,public}d", v99, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x1E127F100](v100, -1, -1);
    MEMORY[0x1E127F100](v99, -1, -1);

    v325(v96, v326);
  }

  else
  {

    v325(v96, v326);
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
  }

  v107 = v322;
  v108 = v316;
  v109 = v303;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v110 = sub_1DAECE0EC();

  if (v110 & 1) != 0 || (v111 = a1[3], v112 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v111), v113 = v93, ((*(v112 + 72))(v111, v112)))
  {
    v114 = v330;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_1DAD9BF68(0, *(v114 + 2) + 1, 1, v114);
    }

    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_1DAD9BF68((v115 > 1), v116 + 1, 1, v114);
    }

    v93 = 0;
    *(v114 + 2) = v116 + 1;
    v117 = &v114[16 * v116];
    *(v117 + 4) = 0xD00000000000006CLL;
    *(v117 + 5) = 0x80000001DAEE6160;
    v330 = v114;
    v113 = 1;
  }

  v118 = v321;
  v119 = v321[7];
  v294 = (v321 + 7);
  v293 = v119;
  v119(v108, 1, 1, v327);
  LODWORD(v310) = v93;
  if ((v113 & 1) == 0 && ((v311 ^ 1) & 1) == 0)
  {
    v120 = a1[3];
    v121 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v120);
    (*(v121 + 40))(v120, v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v122 = *(v306 + 72);
    v123 = (*(v306 + 80) + 32) & ~*(v306 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v331 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAED23CC();
    sub_1DAECF47C();
    v125 = a1[3];
    v126 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v125);
    v127 = v288;
    (*(v126 + 96))(v109, v125, v126);
    (*(v323 + 40))(v108, v127, v107);
    v128 = v327;
    if ((v118[6])(v108, 1, v327) || (v129 = v286, (v118[2])(v286, v108, v128), v130 = (*(v304 + 40))(v128), (v118[1])(v129, v128), (v130 & 1) == 0))
    {
      (v319)(v109, v324);
    }

    else
    {
      v131 = a1[3];
      v132 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v131);
      v133 = v285;
      (*(v132 + 24))(v131, v132);
      sub_1DAD648F8(a1, &v331);
      v134 = sub_1DAECEDCC();
      v135 = sub_1DAED200C();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v329 = v137;
        *v136 = 136446210;
        v138 = v333;
        v139 = v334;
        __swift_project_boxed_opaque_existential_1(&v331, v333);
        v140 = (*(v139 + 32))(v138, v139);
        v142 = v141;
        __swift_destroy_boxed_opaque_existential_1Tm(&v331);
        v143 = sub_1DAD6482C(v140, v142, &v329);

        *(v136 + 4) = v143;
        _os_log_impl(&dword_1DAD61000, v134, v135, "[%{public}s] viewEvaluate: liveContentContainsPrivacyRedactions = true", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
        v144 = v137;
        v109 = v303;
        MEMORY[0x1E127F100](v144, -1, -1);
        MEMORY[0x1E127F100](v136, -1, -1);

        v325(v285, v326);
      }

      else
      {

        v325(v133, v326);
        __swift_destroy_boxed_opaque_existential_1Tm(&v331);
      }

      v145 = v330;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_1DAD9BF68(0, *(v145 + 2) + 1, 1, v145);
      }

      v147 = *(v145 + 2);
      v146 = *(v145 + 3);
      if (v147 >= v146 >> 1)
      {
        v145 = sub_1DAD9BF68((v146 > 1), v147 + 1, 1, v145);
      }

      (v319)(v109, v324);
      *(v145 + 2) = v147 + 1;
      v148 = &v145[16 * v147];
      *(v148 + 4) = 0xD000000000000021;
      *(v148 + 5) = 0x80000001DAEE6130;
      v330 = v145;
      LODWORD(v310) = 1;
    }
  }

  v149 = a1[3];
  v150 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v149);
  (*(v150 + 88))(v149, v150);
  v151 = a1[3];
  v152 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v151);
  (*(v152 + 80))(v151, v152);
  if ((sub_1DAED18AC() & 1) == 0)
  {
    v331 = 0;
    v332 = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD00000000000001ELL, 0x80000001DAEE6040);
    sub_1DAD90134(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
    v153 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v153);

    MEMORY[0x1E127DA50](0xD000000000000026, 0x80000001DAEE6060);
    v154 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v154);

    v155 = v331;
    v156 = v332;
    v157 = v330;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = sub_1DAD9BF68(0, *(v157 + 2) + 1, 1, v157);
    }

    v159 = *(v157 + 2);
    v158 = *(v157 + 3);
    if (v159 >= v158 >> 1)
    {
      v157 = sub_1DAD9BF68((v158 > 1), v159 + 1, 1, v157);
    }

    LODWORD(v310) = 0;
    *(v157 + 2) = v159 + 1;
    v160 = &v157[16 * v159];
    *(v160 + 4) = v155;
    *(v160 + 5) = v156;
    v330 = v157;
  }

  v161 = a1[3];
  v162 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v161);
  v163 = v295;
  (*(v162 + 24))(v161, v162);
  sub_1DAD648F8(a1, &v331);
  v164 = sub_1DAECEDCC();
  v165 = sub_1DAED200C();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v329 = v167;
    *v166 = 136446466;
    v168 = v333;
    v169 = v334;
    __swift_project_boxed_opaque_existential_1(&v331, v333);
    v170 = (*(v169 + 32))(v168, v169);
    v172 = v171;
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v173 = sub_1DAD6482C(v170, v172, &v329);

    *(v166 + 4) = v173;
    *(v166 + 12) = 1026;
    v174 = v310;
    *(v166 + 14) = v310 & 1;
    _os_log_impl(&dword_1DAD61000, v164, v165, "[%{public}s] viewEvaluate: allowedToFetchLiveContent = %{BOOL,public}d", v166, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v167);
    MEMORY[0x1E127F100](v167, -1, -1);
    MEMORY[0x1E127F100](v166, -1, -1);

    v325(v163, v326);
    v175 = v297;
  }

  else
  {

    v325(v163, v326);
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v175 = v297;
    v174 = v310;
  }

  v176 = a1[3];
  v177 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v176);
  (*(v177 + 40))(v176, v177);
  v331 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAED23CC();
  sub_1DAECF47C();
  v178 = v296;
  if (v174)
  {
    v180 = v322;
    v179 = v323;
    (*(v323 + 16))(v296, v316, v322);
    v181 = v321;
    v182 = v321[6];
    v183 = v327;
    if (v182(v178, 1, v327) == 1)
    {
      v184 = a1[3];
      v185 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v184);
      v186 = *(v185 + 96);
      v187 = v185;
      v183 = v327;
      v186(v313, v184, v187);
      v179 = v323;
      v188 = v182(v178, 1, v183);
      v189 = v300;
      if (v188 != 1)
      {
        (*(v179 + 8))(v178, v180);
      }
    }

    else
    {
      (v181[4])(v175, v178, v183);
      v293(v175, 0, 1, v183);
      v189 = v300;
    }

    if (v182(v175, 1, v183) != 1)
    {
      v256 = v321[4];
      v257 = v287;
      v256(v287, v175, v183);
      v256(v189, v257, v183);
LABEL_62:
      v264 = v298;
      v242 = v305;
      goto LABEL_65;
    }

    (*(v179 + 8))(v175, v180);
    v190 = v330;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = sub_1DAD9BF68(0, *(v190 + 2) + 1, 1, v190);
    }

    v192 = *(v190 + 2);
    v196 = *(v190 + 3);
    v193 = v192 + 1;
    v194 = "placeholder to show";
    v195 = 0xD00000000000003DLL;
    if (v192 >= v196 >> 1)
    {
      v190 = sub_1DAD9BF68((v196 > 1), v192 + 1, 1, v190);
    }
  }

  else
  {
    v190 = v330;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = sub_1DAD9BF68(0, *(v190 + 2) + 1, 1, v190);
    }

    v189 = v300;
    v192 = *(v190 + 2);
    v191 = *(v190 + 3);
    v193 = v192 + 1;
    v194 = " available protection ";
    if (v192 >= v191 >> 1)
    {
      v190 = sub_1DAD9BF68((v191 > 1), v192 + 1, 1, v190);
    }

    v195 = 0xD000000000000024;
  }

  *(v190 + 2) = v193;
  v197 = &v190[16 * v192];
  *(v197 + 4) = v195;
  *(v197 + 5) = v194 | 0x8000000000000000;
  v330 = v190;
  v198 = a1[3];
  v199 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v198);
  v200 = a1[3];
  v201 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v200);
  v202 = v312;
  (*(v201 + 40))(v200, v201);
  v203 = v308;
  (*(v199 + 104))(v202, v198, v199);
  (v319)(v202, v324);
  v180 = v322;
  v204 = v323;
  v205 = v291;
  (*(v323 + 16))(v291, v203, v322);
  v206 = v321;
  v207 = v327;
  if ((v321[6])(v205, 1, v327) == 1)
  {
    v208 = *(v204 + 8);
    v327 = v204 + 8;
    v321 = v208;
    (v208)(v205, v180);
    v210 = *(v190 + 2);
    v209 = *(v190 + 3);
    if (v210 >= v209 >> 1)
    {
      v190 = sub_1DAD9BF68((v209 > 1), v210 + 1, 1, v190);
    }

    *(v190 + 2) = v210 + 1;
    v211 = &v190[16 * v210];
    *(v211 + 4) = 0xD000000000000023;
    *(v211 + 5) = 0x80000001DAEE60C0;
    v330 = v190;
    v331 = v190;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
    sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
    v212 = sub_1DAED1C8C();
    v214 = v213;

    v215 = a1[3];
    v216 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v215);
    v217 = v290;
    (*(v216 + 24))(v215, v216);
    sub_1DAD648F8(a1, &v331);

    v218 = sub_1DAECEDCC();
    v219 = sub_1DAED201C();

    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v315 = v212;
      v222 = v221;
      v329 = v221;
      *v220 = 136446466;
      v223 = v189;
      v224 = v333;
      v225 = v334;
      __swift_project_boxed_opaque_existential_1(&v331, v333);
      v226 = *(v225 + 32);
      v227 = v225;
      v189 = v223;
      v228 = v226(v224, v227);
      v230 = v229;
      __swift_destroy_boxed_opaque_existential_1Tm(&v331);
      v231 = sub_1DAD6482C(v228, v230, &v329);
      v180 = v322;

      *(v220 + 4) = v231;
      *(v220 + 12) = 2082;
      v232 = sub_1DAD6482C(v315, v214, &v329);

      *(v220 + 14) = v232;
      _os_log_impl(&dword_1DAD61000, v218, v219, "[%{public}s] Security policy determined view will be empty: %{public}s.", v220, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v222, -1, -1);
      MEMORY[0x1E127F100](v220, -1, -1);

      v325(v290, v326);
    }

    else
    {

      v325(v217, v326);
      __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    }

    v258 = a1[3];
    v259 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v258);
    v260 = a1[3];
    v261 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v260);
    v262 = v312;
    (*(v261 + 40))(v260, v261);
    v263 = (*(v259 + 112))(v262, v258, v259);
    (v319)(v262, v324);
    (v321)(v308, v180);
    *v189 = v263;
    goto LABEL_62;
  }

  v233 = v206[4];
  v321 = v206 + 4;
  v233(v292, v205, v207);
  v331 = v190;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
  v315 = sub_1DAED1C8C();
  v235 = v234;

  v236 = a1[3];
  v237 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v236);
  v238 = v289;
  (*(v237 + 24))(v236, v237);
  sub_1DAD648F8(a1, &v331);

  v239 = sub_1DAECEDCC();
  v240 = sub_1DAED203C();

  v241 = os_log_type_enabled(v239, v240);
  v242 = v305;
  if (v241)
  {
    v243 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v329 = v244;
    *v243 = 136446466;
    v314 = v233;
    v245 = v189;
    v246 = v333;
    v247 = v334;
    __swift_project_boxed_opaque_existential_1(&v331, v333);
    v248 = *(v247 + 32);
    v249 = v247;
    v189 = v245;
    v250 = v248(v246, v249);
    v252 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v253 = sub_1DAD6482C(v250, v252, &v329);
    v233 = v314;

    *(v243 + 4) = v253;
    *(v243 + 12) = 2082;
    v254 = sub_1DAD6482C(v315, v235, &v329);

    *(v243 + 14) = v254;
    _os_log_impl(&dword_1DAD61000, v239, v240, "[%{public}s] Security policy yielding placeholder content: %{public}s.", v243, 0x16u);
    swift_arrayDestroy();
    v255 = v244;
    v242 = v305;
    MEMORY[0x1E127F100](v255, -1, -1);
    MEMORY[0x1E127F100](v243, -1, -1);

    v325(v289, v326);
    v180 = v322;
    (*(v323 + 8))(v308, v322);
  }

  else
  {

    v325(v238, v326);
    v180 = v322;
    (*(v323 + 8))(v308, v322);
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
  }

  v264 = v298;
  v233(v189, v292, v327);
LABEL_65:
  swift_storeEnumTagMultiPayload();
  v265 = a1[3];
  v266 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v265);
  (*(v266 + 24))(v265, v266);
  sub_1DAD648F8(a1, &v331);
  v267 = sub_1DAECEDCC();
  v268 = sub_1DAED200C();
  if (os_log_type_enabled(v267, v268))
  {
    v269 = swift_slowAlloc();
    v270 = v264;
    v271 = swift_slowAlloc();
    v329 = v271;
    *v269 = 136446210;
    v272 = v333;
    v273 = v334;
    __swift_project_boxed_opaque_existential_1(&v331, v333);
    v274 = *(v273 + 32);
    v275 = v273;
    v180 = v322;
    v276 = v274(v272, v275);
    v278 = v277;
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
    v279 = sub_1DAD6482C(v276, v278, &v329);

    *(v269 + 4) = v279;
    _os_log_impl(&dword_1DAD61000, v267, v268, "[%{public}s] viewEvaluate: end", v269, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v271);
    MEMORY[0x1E127F100](v271, -1, -1);
    MEMORY[0x1E127F100](v269, -1, -1);

    v325(v270, v326);
    (v319)(v313, v324);
    v280 = *(v299 + 8);
    v281 = v309;
    v280(v317, v309);
    v280(v318, v281);
  }

  else
  {

    v325(v264, v326);
    (v319)(v313, v324);
    v282 = *(v299 + 8);
    v283 = v309;
    v282(v317, v309);
    v282(v318, v283);
    __swift_destroy_boxed_opaque_existential_1Tm(&v331);
  }

  (*(v301 + 32))(v302, v189, v242);
  return (*(v323 + 8))(v316, v180);
}

void sub_1DAD92868()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection])
  {
    return;
  }

  v3 = "com.apple.chrono.widgetRenderer";
  v4 = sub_1DAED1CBC();
  v5 = sub_1DAED1CBC();
  v17 = [objc_opt_self() endpointForMachName:v4 service:v5 instance:0];

  if (!v17)
  {
    goto LABEL_7;
  }

  v6 = [objc_opt_self() connectionWithEndpoint_];
  if (v6)
  {
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v8 = v6;

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1DAD93F60;
    *(v3 + 24) = v9;
    aBlock[4] = sub_1DAD93F90;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD93F0C;
    aBlock[3] = &block_descriptor_133_0;
    v10 = _Block_copy(aBlock);
    v11 = v0;

    [v8 configureConnection_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v13 = sub_1DAECEDEC();
    __swift_project_value_buffer(v13, qword_1EE0117F0);
    v17 = sub_1DAECEDCC();
    v14 = sub_1DAED202C();
    if (os_log_type_enabled(v17, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1DAD6482C(0xD000000000000018, v3 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_1DAD61000, v17, v14, "Unable to get endpoint for mach-service: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);

      return;
    }
  }
}

uint64_t sub_1DAD92C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECDFCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAD92D24(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1DAECEDFC();
}

uint64_t sub_1DAD92DB0()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B38 = result;
  return result;
}

uint64_t sub_1DAD92E18()
{
  v0 = type metadata accessor for RBLayer.SnapshotFormat(0);
  __swift_allocate_value_buffer(v0, qword_1EE00A948);
  v1 = __swift_project_value_buffer(v0, qword_1EE00A948);
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  return sub_1DAD932D0(v3, v1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t sub_1DAD92EE0()
{
  v0 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EE00B178);
  v1 = __swift_project_value_buffer(v0, qword_1EE00B178);
  return sub_1DAD92F2C(v1);
}

uint64_t sub_1DAD92F2C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1DAECDF7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-1] - v7;
  v9 = sub_1DAECDFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAECDF9C();
  v14 = *(v10 + 104);
  v14(v13, *MEMORY[0x1E6993F60], v9);
  if ((sub_1DAECDFAC() & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
    *v13 = 0x3FE999999999999ALL;
    v14(v13, *MEMORY[0x1E6993F68], v9);
  }

  sub_1DAECE37C();
  sub_1DAECE36C();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1DAECE28C();
  (*(v2 + 104))(v6, *MEMORY[0x1E6993F58], v1);
  v15 = sub_1DAECDF6C();
  v16 = *(v2 + 8);
  v16(v6, v1);
  v16(v8, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (v15)
  {
    v17 = 0x40000000;
  }

  else
  {
    v17 = 1065353216;
  }

  v18 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v19 = v21;
  result = (*(v10 + 32))(v21 + *(v18 + 24), v13, v9);
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v19 + 8) = v17;
  *(v19 + 12) = 0;
  return result;
}

uint64_t sub_1DAD93200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD932D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD933A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93484(uint64_t a1)
{
  v1 = *(a1 + 112);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAD93568()
{
  v1 = v0;
  v2 = type metadata accessor for CAMLSnapshotter(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CALayer.SnapshotFormat(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD932D0(v1, v14, type metadata accessor for CALayer.SnapshotFormat);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C08, &qword_1DAEDBB98);
    v16 = swift_allocObject();
    v16[2] = 0xD00000000000001FLL;
    v16[3] = 0x80000001DAEE3D10;
  }

  else
  {
    sub_1DAD933A0(v14, v10, type metadata accessor for CAMLSnapshotter.CAMLOptions);
    sub_1DAD933A0(v10, v5 + *(v2 + 20), type metadata accessor for CAMLSnapshotter.CAMLOptions);
    *v5 = 0xD00000000000001BLL;
    v5[1] = 0x80000001DAEE3D30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
    v15 = swift_allocObject();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C10, qword_1DAEDBBA0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v16 = swift_allocObject();
    sub_1DAD933A0(v5, v16 + *(*v16 + 128), type metadata accessor for CAMLSnapshotter);
  }

  *(v15 + 16) = v16;
  return v15;
}

uint64_t sub_1DAD9384C()
{
  result = type metadata accessor for CAMLSnapshotter.CAMLOptions(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAD938DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECDFCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1DAD939AC()
{
  v0 = objc_opt_self();
  v1 = sub_1DAED1CBC();
  v2 = [v0 createWorkLoopWithLabel:v1 qos:9];

  qword_1EE011BC8 = v2;
}

uint64_t sub_1DAD93A48()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DAECED6C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DAD93B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAD93BA8()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DAD93D34;
  *(v4 + 24) = v3;
  v8[4] = sub_1DAD93D0C;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DAD93EDC;
  v8[3] = &block_descriptor_20;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAD93D0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAD93D58(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_1DAED24CC();
  }

  else if (*(a2 + 16) && (a3(0), v6 = *(a2 + 40), v7 = sub_1DAED227C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v5 = sub_1DAED228C();

      if (v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAD93F0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAD93F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DAD93FB8(void *a1, char *a2)
{
  v4 = sub_1DAED1CBC();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EE00B5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE00B600;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EE00B5E0 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EE00B5C8 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1DAD69B50;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_136;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_1DAEBB02C;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_142;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_1DAEB6260;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_145_0;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

id sub_1DAD94364()
{
  result = [objc_opt_self() userInteractive];
  qword_1EE00B5D0 = result;
  return result;
}

uint64_t sub_1DAD943B8()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117F0);
  __swift_project_value_buffer(v0, qword_1EE0117F0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DAD94438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD94560()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08858, &qword_1DAED7288);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = sub_1DAED18CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1E127E800]("application(_:didFinishLaunchingWithOptions:)"))
  {
    v28 = v7;
    v29 = v6;
    if (qword_1EE00B438 != -1)
    {
      swift_once();
    }

    sub_1DAD648F8(qword_1EE011BD8 + 104, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08860, &unk_1DAED7290);
    type metadata accessor for DataProtectionSuspensionMonitor();
    swift_dynamicCast();
    v16 = v30;
    v17 = *&v30[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher];
    sub_1DAECEE9C();
    v18 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
    swift_beginAccess();
    (*(v12 + 40))(&v1[v18], v15, v11);
    swift_endAccess();
    v31[0] = sub_1DAD8BA88();
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v19 = sub_1DAED20EC();
    v30 = v19;
    v20 = sub_1DAED20AC();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
    sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488);
    sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
    sub_1DAECEFBC();
    sub_1DAD64398(v5, &unk_1ECC07D20, &unk_1DAED57D0);

    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v16;
    sub_1DAD64B94(&qword_1EE00AC38, &qword_1ECC08858, &qword_1DAED7288);
    v22 = v1;
    v23 = v16;
    v24 = v29;
    v25 = sub_1DAECF00C();

    (*(v28 + 8))(v10, v24);
    v26 = *&v22[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_dataProtectionMonitorSubscription];
    *&v22[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_dataProtectionMonitorSubscription] = v25;
  }

  return 1;
}

uint64_t sub_1DAD949E4()
{

  return swift_deallocObject();
}

void sub_1DAD94A54(uint64_t a1)
{
  sub_1DAD674D4(319, &unk_1EE005648, 0x1E69943E0);
  if (v2 <= 0x3F)
  {
    sub_1DAD674D4(319, &qword_1EE0054D8, 0x1E6994350);
    if (v3 <= 0x3F)
    {
      sub_1DAD8D644();
      if (v4 <= 0x3F)
      {
        sub_1DAED18CC();
        if (v5 <= 0x3F)
        {
          sub_1DAECED2C();
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            swift_checkMetadataState();
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

uint64_t sub_1DAD94B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECF8EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DAD94C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DAD94CC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAD94D08()
{
  v1 = v0;
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v25);
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (v13)
  {
    sub_1DAD648F8(v1 + v9, v25);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = (*(v15 + 16))(v14, v15);
    sub_1DAED0C3C();

    v17 = sub_1DAED0DBC();
    (*(v3 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v18 = [v17 family];

    LODWORD(v17) = [v13 isTransparentForFamily_];
    if (v17)
    {
      if (v8)
      {
        return;
      }

      v19 = *(v1 + v7);
      *(v1 + v7) = 1;
      if (v19)
      {
        return;
      }

LABEL_8:
      v24 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAECEEEC();

      return;
    }
  }

  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v21 = [*(v1 + v20) backgroundViewPolicy];
  if (v8 != (v21 != 0))
  {
    v22 = v21 != 0;
    v23 = *(v1 + v7);
    *(v1 + v7) = v22;
    if (v22 != v23)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1DAD94FD8()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1DAECF0AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v18, v9, &qword_1ECC08370, &unk_1DAED6580);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DAD64398(v9, &qword_1ECC08370, &unk_1DAED6580);
    v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v2 + 16))(v5, v0 + v19, v1);
    v20 = v0;
    sub_1DAECF39C();
    (*(v2 + 8))(v5, v1);
    v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v11 + 40))(v20 + v21, v15, v10);
  }

  else
  {
    v22 = *(v11 + 32);
    v22(v17, v9, v10);
    v22(v15, v17, v10);
    v23 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v11 + 40))(v0 + v23, v15, v10);
  }

  return swift_endAccess();
}

void sub_1DAD95310(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = sub_1DAECF8EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  if (*(v2 + v17) != v3)
  {
    v31 = v9;

    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED200C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v29 = v5;
      v23 = v22;
      v33[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v33);
      *(v21 + 12) = 1026;
      *(v21 + 14) = *(v2 + v17);

      _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] canAppearInSecureEnvironment changed %{BOOL,public}d)", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v24 = v23;
      v5 = v29;
      MEMORY[0x1E127F100](v24, -1, -1);
      v25 = v21;
      v4 = v30;
      MEMORY[0x1E127F100](v25, -1, -1);
    }

    else
    {
    }

    v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v13 + 16))(v16, v2 + v26, v12);
    sub_1DAECF46C();
    (*(v13 + 8))(v16, v12);
    v27 = v31;
    sub_1DAECF31C();
    sub_1DAD900EC(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
    LOBYTE(v26) = sub_1DAED23AC();
    v28 = *(v5 + 8);
    v28(v27, v4);
    v28(v11, v4);
    if (v26)
    {
      v32 = 8;
      sub_1DAD8EC1C(&v32);
    }
  }
}

void sub_1DAD956A0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  if (*(v2 + v9) != v3)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v18);
      *(v12 + 12) = 1026;
      *(v12 + 14) = *(v2 + v9);

      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] supports low luminance changed (%{BOOL,public}d)", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    else
    {
    }

    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v14, v4);
    LOBYTE(v14) = sub_1DAECF4BC();
    (*(v5 + 8))(v8, v4);
    if (v14)
    {
      if (*(v2 + v9))
      {
        v15 = 16;
      }

      else
      {
        v15 = 17;
      }

      v17 = v15;
      sub_1DAD8EC1C(&v17);
    }
  }
}

void sub_1DAD95924(char a1, uint64_t *a2, const char *a3, char a4)
{
  v8 = a1 & 1;
  BSDispatchQueueAssertMain();
  v9 = *a2;
  swift_beginAccess();
  if (*(v4 + v9) != v8)
  {

    v10 = v4;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED200C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1DAD6482C(*(v10 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v10 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v15);
      *(v13 + 12) = 1026;
      *(v13 + 14) = *(v10 + v9);

      _os_log_impl(&dword_1DAD61000, v11, v12, a3, v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    else
    {
    }

    LOBYTE(v15) = a4;
    sub_1DAD8EC1C(&v15);
  }
}

void sub_1DAD95AA0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v11);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] prefersUnredactedContentInLowLuminanceEnvironment changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    if (*(v2 + v9) == 1)
    {
      v10 = 18;
      sub_1DAD8EC1C(&v10);
    }
  }
}

void sub_1DAD95C3C(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED203C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v21);
    *(v11 + 12) = 2082;
    v13 = *(v2 + v4);
    if (v13)
    {
      v14 = [v13 description];
      v15 = sub_1DAED1CEC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1DAD6482C(v15, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] tintParameters changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  if (sub_1DAD998A4())
  {
    v19 = *(v2 + v4);
    if (v19)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = v19;
      v20 = v19;
      sub_1DAECEF4C();
    }

    else
    {
    }
  }

  if ((a1 == 0) != (*(v2 + v4) == 0))
  {
    LOBYTE(v21) = 11;
    sub_1DAD8EC1C(&v21);
  }
}

void sub_1DAD95EE8(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &unk_1EE005578, 0x1E69942B8);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED200C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v19);
    *(v11 + 12) = 2082;
    v13 = *(v2 + v4);
    if (v13)
    {
      v14 = [v13 description];
      v15 = sub_1DAED1CEC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1DAD6482C(v15, v17, &v19);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] inlineTextParameters changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  LOBYTE(v19) = 12;
  sub_1DAD8EC1C(&v19);
}

uint64_t sub_1DAD96130(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v324 = a5;
  v325 = a4;
  v326 = a3;
  v331 = a1;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF8, &qword_1DAED57A8);
  v306 = *(v307 - 8);
  v8 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v307);
  v305 = &v278 - v9;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D00, &unk_1DAED57B0);
  v309 = *(v310 - 8);
  v10 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v310);
  v308 = &v278 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v322 = &v278 - v14;
  v323 = sub_1DAED22EC();
  v330 = *(v323 - 8);
  v15 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v321 = &v278 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v300 = *(v301 - 8);
  v17 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v299 = &v278 - v18;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v303 = *(v304 - 8);
  v19 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v302 = &v278 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v315 = &v278 - v23;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v329 = *(v317 - 8);
  v24 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v317);
  v316 = &v278 - v25;
  v313 = sub_1DAECDCEC();
  v312 = *(v313 - 8);
  v26 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v313);
  v281 = &v278 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v28 = *(*(v311 - 8) + 64);
  MEMORY[0x1EEE9AC00](v311);
  v291 = (&v278 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v294 = &v278 - v32;
  v293 = sub_1DAED0DDC();
  v327 = *(v293 - 8);
  v33 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v292 = &v278 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_1DAECF8EC();
  v319 = *(v320 - 8);
  v35 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v318 = &v278 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v296 = *(v297 - 8);
  v37 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v290 = &v278 - v38;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  v287 = *(v288 - 8);
  v39 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v286 = &v278 - v40;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  v284 = *(v285 - 8);
  v41 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v278 - v42;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  v43 = *(v282 - 1);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v46 = &v278 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v328 = *(v47 - 8);
  v48 = v328;
  v49 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v278 - v50;
  v340[3] = type metadata accessor for PlaceholderWidgetEntrySource();
  v340[4] = &off_1F56B6798;
  v298 = a2;
  v340[0] = a2;
  v52 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53 = *(v48 + 32);
  v295 = v52;
  v53(a6 + v52, v51, v47);
  v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53(a6 + v54, v51, v47);
  v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v289 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53(a6 + v55, v51, v47);
  v56 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53(a6 + v56, v51, v47);
  v57 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53(a6 + v57, v51, v47);
  v58 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v337 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D68, &unk_1DAEDE610);
  sub_1DAECEEFC();
  (*(v43 + 32))(a6 + v58, v46, v282);
  v59 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
  v337 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D70, &unk_1DAED5820);
  v60 = v283;
  sub_1DAECEEFC();
  (*(v284 + 32))(a6 + v59, v60, v285);
  v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v314 = v47;
  v53(a6 + v61, v51, v47);
  v62 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v337 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D78, &unk_1DAEDE620);
  v63 = v286;
  sub_1DAECEEFC();
  (*(v287 + 32))(a6 + v62, v63, v288);
  v64 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  *&v337 = 0;
  BYTE8(v337) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D80, &unk_1DAED5830);
  v65 = v290;
  sub_1DAECEEFC();
  (*(v296 + 32))(a6 + v64, v65, v297);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber) = 0;
  v66 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  LOBYTE(v337) = 0;
  sub_1DAECEEFC();
  v53(a6 + v66, v51, v47);
  v67 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  v290 = v68;
  swift_allocObject();
  *(a6 + v67) = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent) = 2;
  v71 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  v72 = *MEMORY[0x1E697DBB8];
  v73 = sub_1DAECF0AC();
  v74 = *(v73 - 8);
  (*(v74 + 104))(a6 + v71, v72, v73);
  (*(v74 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, 1, 1, v73);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused) = 1;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment) = 0;
  v75 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  v76 = *MEMORY[0x1E6994040];
  v77 = sub_1DAECE21C();
  (*(*(v77 - 8) + 104))(a6 + v75, v76, v77);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay) = 0;
  v287 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers) = 1;
  (*(v312 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, 1, 1, v313);
  v78 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v286 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v284 = sub_1DAECDA5C();
  v79 = *(v284 - 8);
  v283 = *(v79 + 56);
  v285 = v79 + 56;
  (v283)(a6 + v78, 1, 1, v284);
  v80 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel) = 0;
  v288 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = 0;
  v81 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v82 = sub_1DAED16FC();
  (*(*(v82 - 8) + 56))(a6 + v81, 1, 1, v82);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation) = 0;
  v83 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  v84 = sub_1DAECDBFC();
  (*(*(v84 - 8) + 56))(a6 + v83, 1, 1, v84);
  v280 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest) = 1;
  v85 = a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  *(v85 + 32) = 0;
  *v85 = 0u;
  *(v85 + 16) = 0u;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 0;
  v86 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons) = MEMORY[0x1E69E7CC0];
  *(a6 + v86) = 1;
  v87 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  v88 = v331;
  sub_1DAD648F8(v331, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  sub_1DAD648F8(v340, &v337);
  swift_beginAccess();
  sub_1DAD94438(&v337, v85, &unk_1ECC07D90, &unk_1DAED5840);
  swift_endAccess();
  v89 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v90 = sub_1DAECEDEC();
  v296 = *(v90 - 8);
  v91 = *(v296 + 16);
  v297 = v90;
  v91(a6 + v89, v326);
  sub_1DAD648F8(v325, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider);
  sub_1DAD648F8(v324, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor);
  v92 = type metadata accessor for LiveWidgetEntryViewableEntryCache(0);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache) = sub_1DAD99324();
  v95 = v88;
  v96 = v88[3];
  v97 = v95[4];
  v98 = v95;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v99 = (*(v97 + 16))(v96, v97);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v337, v338);
  v100 = v318;
  sub_1DAED10EC();
  (*(v319 + 32))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues, v100, v320);
  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  v101 = v98[3];
  v102 = v98[4];
  __swift_project_boxed_opaque_existential_1(v98, v101);
  v103 = (*(v102 + 16))(v101, v102);
  v104 = v292;
  sub_1DAED0C3C();

  v105 = sub_1DAED0DBC();
  v106 = *(v327 + 8);
  v327 += 8;
  v107 = v293;
  v106(v104, v293);
  v108 = [v105 _loggingIdentifierWithoutMetrics];

  v109 = sub_1DAED1CEC();
  v111 = v110;

  v112 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  *v112 = v109;
  v112[1] = v111;
  v113 = v289;
  swift_beginAccess();
  v114 = *(v328 + 8);
  v328 += 8;
  v282 = v114;
  v114(a6 + v113, v314);
  v336 = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  v115 = v287;
  swift_beginAccess();
  *(a6 + v115) = 0;
  swift_beginAccess();
  v116 = *(a6 + v80);
  *(a6 + v80) = 0;

  v117 = v294;
  (v283)(v294, 1, 1, v284);
  v118 = v286;
  swift_beginAccess();
  sub_1DAD94438(v117, &v118[a6], &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  v119 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v120 = swift_allocObject();
  v121 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy);
  v121[3] = v119;
  v121[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v121 = v120;
  v122 = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme) = v122;
  swift_beginAccess();
  v123 = sub_1DAECF79C();
  swift_endAccess();
  v124 = v288;
  swift_beginAccess();
  v125 = *(a6 + v124);
  *(a6 + v124) = v123;

  v126 = v87[3];
  v127 = v87[4];
  v128 = __swift_project_boxed_opaque_existential_1(v87, v126);
  v129 = *(v126 - 8);
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v132 = &v278 - v131;
  (*(v129 + 16))(&v278 - v131);
  v133 = (*(v127 + 16))(v126, v127);
  (*(v129 + 8))(v132, v126);
  sub_1DAED0C3C();

  v134 = sub_1DAED0DBC();
  v106(v104, v107);
  v135 = [v134 family];

  v136 = v87[3];
  v137 = v87[4];
  v138 = __swift_project_boxed_opaque_existential_1(v87, v136);
  v139 = *(v136 - 8);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v142 = &v278 - v141;
  (*(v139 + 16))(&v278 - v141);
  v143 = (*(v137 + 16))(v136, v137);
  (*(v139 + 8))(v142, v136);
  v144 = sub_1DAED0B8C();

  [v144 enablesMultipleTapTargets];
  v338 = &type metadata for FeatureFlags.Widgets;
  v339 = sub_1DAD7C1DC();
  LOBYTE(v337) = 4;
  LOBYTE(v144) = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  if (v144)
  {
    v145 = v295;
    swift_beginAccess();
    v282(a6 + v145, v314);
    LOBYTE(v335) = 1;
  }

  else
  {
    v146 = (v135 != 1) & ~CHSWidgetFamilyIsAccessory();
    v147 = v295;
    swift_beginAccess();
    v282(a6 + v147, v314);
    LOBYTE(v335) = v146;
  }

  sub_1DAECEEFC();
  swift_endAccess();
  v148 = v87[3];
  v149 = v87[4];
  v150 = __swift_project_boxed_opaque_existential_1(v87, v148);
  v151 = *(v148 - 8);
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v154 = &v278 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v151 + 16))(v154);
  v155 = (*(v149 + 16))(v148, v149);
  (*(v151 + 8))(v154, v148);
  v156 = sub_1DAED0B8C();

  if (v156)
  {
    v157 = [v156 supportsInteraction];

    if ((v157 & 1) == 0)
    {
      *(a6 + v280) = 0;
    }
  }

  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DA0, &unk_1DAEDE7D0);
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  swift_allocObject();
  v161 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher) = v161;
  *&v337 = v161;
  sub_1DAD64B94(&qword_1EE005C08, &unk_1ECC07DA0, &unk_1DAEDE7D0);
  v295 = v161;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher) = sub_1DAECEF6C();
  v162 = *(v158 + 48);
  v163 = *(v158 + 52);
  swift_allocObject();
  v164 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher) = v164;
  *&v337 = v164;
  v294 = v164;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  v165 = v290;
  v166 = *(v290 + 12);
  v167 = *(v290 + 26);
  swift_allocObject();
  v168 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher) = v168;
  *&v337 = v168;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  v293 = v168;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  v169 = *(v165 + 12);
  v170 = *(v165 + 26);
  swift_allocObject();
  v171 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher) = v171;
  *&v337 = v171;
  v292 = v171;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher) = sub_1DAECEF6C();
  *&v337 = sub_1DAED064C();
  v172 = sub_1DAED087C();
  v173 = v291;
  *v291 = v172;
  swift_storeEnumTagMultiPayload();
  sub_1DAD7C48C(v173, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
  type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
  v174 = swift_allocObject();
  *(v174 + 16) = a6;
  v175 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = v174;

  sub_1DAD94D08();
  sub_1DAEA1F7C();
  sub_1DAD94FD8();

  v176 = sub_1DAECEDCC();
  v177 = sub_1DAED200C();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v335 = v179;
    *v178 = 136446466;
    v180 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v181 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v182 = sub_1DAD6482C(v180, v181, &v335);

    *(v178 + 4) = v182;
    *(v178 + 12) = 2082;
    v183 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 24);
    v184 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 32);
    v185 = __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource), v183);
    v186 = *(v183 - 8);
    v187 = *(v186 + 64);
    MEMORY[0x1EEE9AC00](v185);
    v189 = &v278 - v188;
    (*(v186 + 16))(&v278 - v188);
    v190 = (*(v184 + 16))(v183, v184);
    (*(v186 + 8))(v189, v183);
    sub_1DAED0B4C();

    if (v338)
    {
      __swift_project_boxed_opaque_existential_1(&v337, v338);
      v191 = v281;
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v192 = qword_1EE00A708;
      v193 = sub_1DAECDC5C();
      v194 = [v192 stringFromDate_];

      v195 = sub_1DAED1CEC();
      v197 = v196;

      (*(v312 + 8))(v191, v313);
      __swift_destroy_boxed_opaque_existential_1Tm(&v337);
    }

    else
    {
      sub_1DAD64398(&v337, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v197 = 0xE900000000000064;
      v195 = 0x6E756F6620746F6ELL;
    }

    v198 = sub_1DAD6482C(v195, v197, &v335);

    *(v178 + 14) = v198;
    _os_log_impl(&dword_1DAD61000, v176, v177, "[%{public}s] initial entry: %{public}s", v178, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v179, -1, -1);
    MEMORY[0x1E127F100](v178, -1, -1);
  }

  sub_1DAD648F8(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v337);
  v199 = v338;
  v200 = v339;
  __swift_project_boxed_opaque_existential_1(&v337, v338);
  v201 = (*(v200 + 16))(v199, v200);
  v202 = sub_1DAED0C0C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  *&v337 = v202;
  v285 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v203 = sub_1DAED20EC();
  v335 = v203;
  v328 = sub_1DAED20AC();
  v204 = *(v328 - 8);
  v327 = *(v204 + 56);
  v314 = v204 + 56;
  v205 = v315;
  (v327)(v315, 1, 1, v328);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v312 = MEMORY[0x1E695BED8];
  v289 = sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  v313 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
  v206 = v316;
  sub_1DAECEFBC();
  sub_1DAD64398(v205, &unk_1ECC07D20, &unk_1DAED57D0);

  v207 = swift_allocObject();
  swift_weakInit();
  v208 = swift_allocObject();
  *(v208 + 16) = sub_1DADC4FF8;
  *(v208 + 24) = v207;
  v286 = MEMORY[0x1E695BE98];
  v288 = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);

  v209 = v317;
  v210 = sub_1DAECF00C();

  v211 = *(v329 + 8);
  v329 += 8;
  v287 = v211;
  v211(v206, v209);
  v212 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = v210;

  v213 = swift_allocObject();
  v214 = v331;
  v215 = v331[3];
  v216 = v331[4];
  __swift_project_boxed_opaque_existential_1(v331, v215);
  v217 = (*(v216 + 8))(v215, v216);
  swift_beginAccess();
  LOBYTE(v215) = *(v217 + 24);

  *(v213 + 16) = v215;
  v218 = v214[3];
  v219 = v214[4];
  __swift_project_boxed_opaque_existential_1(v214, v218);
  v220 = (*(v219 + 16))(v218, v219);
  v221 = sub_1DAED0BDC();

  v334 = v221;
  v222 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v214, &v337);
  v223 = swift_allocObject();
  *(v223 + 16) = v222;
  *(v223 + 24) = v213;
  v291 = v213;
  sub_1DAD657D8(&v337, v223 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAD64B94(&qword_1EE005CB8, &unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAECF00C();

  v224 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v225 = *(*__swift_project_boxed_opaque_existential_1(v298 + 2, v298[5]) + 16);
  swift_beginAccess();
  v226 = *(v225 + 16);
  v227 = sub_1DAED0BDC();

  v332 = v227;
  v228 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v340, &v337);
  v229 = swift_allocObject();
  *(v229 + 16) = v228;
  sub_1DAD657D8(&v337, v229 + 24);
  sub_1DAECF00C();

  v311 = v224;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v230 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v278 = sub_1DAECE2AC();
  *&v337 = v278;
  v231 = v321;
  sub_1DAED22DC();
  v298 = objc_opt_self();
  v232 = [v298 mainRunLoop];
  v332 = v232;
  v283 = sub_1DAED22CC();
  v233 = *(v283 - 1);
  v282 = *(v233 + 56);
  v284 = v233 + 56;
  v234 = v322;
  (v282)(v322, 1, 1, v283);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  v281 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860);
  v280 = sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0);
  v235 = v299;
  sub_1DAECEFCC();
  sub_1DAD64398(v234, &qword_1ECC07D08, &qword_1DAEDCB80);

  v236 = *(v330 + 8);
  v330 += 8;
  v279 = v236;
  v236(v231, v323);

  v237 = sub_1DAED20EC();
  *&v337 = v237;
  v238 = v315;
  (v327)(v315, 1, 1, v328);
  v312 = MEMORY[0x1E695BE50];
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0);
  v239 = v302;
  v240 = v301;
  sub_1DAECEFBC();
  sub_1DAD64398(v238, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v300 + 8))(v235, v240);
  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8);
  v241 = v304;
  sub_1DAECF00C();

  (*(v303 + 8))(v239, v241);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v303 = swift_allocObject();
  swift_weakInit();

  v242 = swift_allocObject();
  *(v242 + 16) = 0;
  v243 = v331[3];
  v244 = v331[4];
  v245 = v331;
  __swift_project_boxed_opaque_existential_1(v331, v243);
  v246 = (*(v244 + 16))(v243, v244);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v337, v338);
  v332 = sub_1DAED10FC();
  v247 = sub_1DAED20EC();
  v333 = v247;
  (v327)(v238, 1, 1, v328);
  v248 = v316;
  sub_1DAECEFBC();
  sub_1DAD64398(v238, &unk_1ECC07D20, &unk_1DAED57D0);

  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  v249 = swift_allocObject();
  v304 = v242;
  v249[2] = v242;
  v249[3] = sub_1DADC46D8;
  v250 = v303;
  v249[4] = v303;
  v249[5] = a6;
  v251 = swift_allocObject();
  *(v251 + 16) = sub_1DADC4614;
  *(v251 + 24) = v249;

  v252 = v250;

  v253 = v317;
  v254 = sub_1DAECF00C();

  (v287)(v248, v253);
  v255 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = v254;

  v256 = v245;
  v257 = v245[3];
  v258 = v245[4];
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v259 = (*(v258 + 16))(v257, v258);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v337, v338);
  v332 = sub_1DAED10FC();
  v260 = v305;
  sub_1DAECEFEC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  v261 = v321;
  sub_1DAED22DC();
  v262 = [v298 mainRunLoop];
  *&v337 = v262;
  v263 = v322;
  (v282)(v322, 1, 1, v283);
  sub_1DAD64B94(&qword_1EE005D70, &qword_1ECC07CF8, &qword_1DAED57A8);
  v264 = v308;
  v265 = v307;
  sub_1DAECEFCC();
  sub_1DAD64398(v263, &qword_1ECC07D08, &qword_1DAEDCB80);

  v279(v261, v323);
  (*(v306 + 8))(v260, v265);
  v266 = swift_allocObject();
  *(v266 + 16) = sub_1DADC46D8;
  *(v266 + 24) = v252;
  v267 = swift_allocObject();
  *(v267 + 16) = sub_1DAD93D04;
  *(v267 + 24) = v266;
  sub_1DAD64B94(&qword_1EE005D48, &qword_1ECC07D00, &unk_1DAED57B0);

  v268 = v310;
  sub_1DAECF00C();

  (*(v309 + 8))(v264, v268);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v269 = v331;
  v270 = v331[3];
  v271 = v331[4];
  __swift_project_boxed_opaque_existential_1(v331, v270);
  v272 = (*(v271 + 16))(v270, v271);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v337, v338);
  v273 = v318;
  sub_1DAED10EC();
  v274 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v319 + 40))(a6 + v274, v273, v320);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v337);
  swift_beginAccess();
  v275 = sub_1DAECF79C();
  swift_endAccess();
  v276 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = v275;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  LOBYTE(v337) = 0;
  sub_1DAD8EC1C(&v337);

  __swift_destroy_boxed_opaque_existential_1Tm(v324);
  __swift_destroy_boxed_opaque_existential_1Tm(v325);
  (*(v296 + 8))(v326, v297);

  __swift_destroy_boxed_opaque_existential_1Tm(v340);
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  return a6;
}