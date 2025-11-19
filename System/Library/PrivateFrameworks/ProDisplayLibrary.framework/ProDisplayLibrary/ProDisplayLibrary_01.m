void sub_25F764C40()
{
  v1 = v0;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v133 = *(v124 - 8);
  v2 = MEMORY[0x28223BE20](v124);
  v140 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v141 = &v122 - v4;
  v139 = type metadata accessor for Preset(0);
  v131 = *(v139 - 8);
  v5 = MEMORY[0x28223BE20](v139);
  v134 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = &v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v130 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v122 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v122 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v122 - v20;
  v22 = sub_25F8221EC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_presets;
  swift_beginAccess();
  if (*(v1 + v26))
  {
    return;
  }

  v142 = v25;
  v123 = v1;
  v144 = v23;
  v145 = v21;
  v137 = v19;
  v138 = v26;
  v132 = v16;
  if (qword_27FDAF828 != -1)
  {
LABEL_75:
    swift_once();
  }

  v27 = __swift_project_value_buffer(v22, qword_27FDAFEB8);
  v28 = sub_25F8221CC();
  v29 = sub_25F8226AC();
  v30 = os_log_type_enabled(v28, v29);
  v127 = v13;
  v31 = v132;
  v32 = v123;
  if (v30)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_25F74E000, v28, v29, "load all HID data", v33, 2u);
    MEMORY[0x25F8E88D0](v33, -1, -1);
  }

  v34 = sub_25F7CA6A0(MEMORY[0x277D84F90]);
  *(v32 + v138) = v34;

  v35 = v32 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_userPresetCapacity;
  *v35 = 0;
  v129 = v35;
  *(v35 + 8) = 0;
  v36 = v32 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_applePresetCapacity;
  *v36 = 0;
  v128 = v36;
  *(v36 + 8) = 0;
  memcpy(v150, (v32 + 16), sizeof(v150));
  v37 = *(v32 + 272);
  v162 = *(v32 + 256);
  v163 = v37;
  v164 = *(v32 + 288);
  v165 = *(v32 + 304);
  v38 = *(v32 + 208);
  v158 = *(v32 + 192);
  v159 = v38;
  v39 = *(v32 + 240);
  v160 = *(v32 + 224);
  v161 = v39;
  v40 = *(v32 + 144);
  v154 = *(v32 + 128);
  v155 = v40;
  v41 = *(v32 + 176);
  v156 = *(v32 + 160);
  v157 = v41;
  v42 = *(v32 + 80);
  v151[0] = *(v32 + 64);
  v151[1] = v42;
  v43 = *(v32 + 112);
  v152 = *(v32 + 96);
  v153 = v43;
  v44 = sub_25F76E230(v151);
  v45 = v137;
  v46 = v144;
  if (v44 == 1)
  {
    sub_25F76E040(v150, v149);
    v47 = v142;
    sub_25F8221DC();
    v48 = sub_25F8221CC();
    v49 = sub_25F82268C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v122 = v27;
      v52 = v51;
      v149[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82CE10, v149);
      _os_log_impl(&dword_25F74E000, v48, v49, "%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x25F8E88D0](v52, -1, -1);
      MEMORY[0x25F8E88D0](v50, -1, -1);
    }

    (v46[1])(v47, v22);
    sub_25F76E244();
    v53 = swift_allocError();
    *v54 = 0;
    *(v54 + 8) = 0;
    *(v54 + 16) = 5;
    swift_willThrow();
    sub_25F76E09C(v150);
    goto LABEL_62;
  }

  v55 = v27;
  v56 = v152 + 1;
  if (__OFADD__(v152, 1))
  {
    goto LABEL_77;
  }

  v57 = v139;
  v58 = v131;
  if ((v56 & 0x8000000000000000) != 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (HIDWORD(v56))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v122 = v55;
  v136 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  v126 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_emptyWritableSlots;
  swift_beginAccess();
  if (v56)
  {
    v22 = 0;
    v13 = 0;
    v144 = (v58 + 48);
    v125 = (v58 + 56);
    v135 = v56;
    while (1)
    {
      memcpy(v149, (v32 + 16), sizeof(v149));
      memcpy(v148, (v32 + 16), sizeof(v148));
      sub_25F76E040(v149, v147);
      AppleDisplayHIDDevice.getPreset(at:)(v45, v22);
      if (v13)
      {
        memcpy(v147, v148, sizeof(v147));
        sub_25F76E09C(v147);
        v53 = v13;
        goto LABEL_62;
      }

      v62 = v61;
      v142 = 0;
      memcpy(v147, v148, sizeof(v147));
      sub_25F76E09C(v147);
      sub_25F760FA4(v45, v145, &qword_27FDAFBE0);
      if (v62)
      {
        if (v129[1])
        {
          goto LABEL_82;
        }

        v63 = v145;
        if (__OFADD__(*v129, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        ++*v129;
        if ((*v144)(v63, 1, v57) == 1)
        {
          v64 = v126;
          v65 = *(v32 + v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + v64) = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_25F75BF5C(0, *(v65 + 2) + 1, 1, v65);
            *(v32 + v126) = v65;
          }

          v68 = *(v65 + 2);
          v67 = *(v65 + 3);
          if (v68 >= v67 >> 1)
          {
            v65 = sub_25F75BF5C((v67 > 1), v68 + 1, 1, v65);
          }

          *(v65 + 2) = v68 + 1;
          *&v65[4 * v68 + 32] = v22;
          *(v32 + v126) = v65;
          v57 = v139;
          v45 = v137;
          v63 = v145;
        }
      }

      else
      {
        if (v128[1])
        {
          goto LABEL_81;
        }

        v63 = v145;
        if (__OFADD__(*v128, 1))
        {
          goto LABEL_71;
        }

        ++*v128;
      }

      sub_25F76183C(v63, v31, &qword_27FDAFBE0);
      v69 = *v144;
      if ((*v144)(v31, 1, v57) == 1)
      {
        sub_25F760F44(v63, &qword_27FDAFBE0);
        v59 = v31;
        goto LABEL_15;
      }

      v70 = v31;
      v71 = v143;
      sub_25F76E298(v70, v143, type metadata accessor for Preset);
      sub_25F76183C(v71, v141, &qword_27FDAFBB0);
      v72 = v127;
      sub_25F76E0F8(v71, v127, type metadata accessor for Preset);
      (*v125)(v72, 0, 1, v57);
      v73 = v138;
      swift_beginAccess();
      if (!*(v32 + v73))
      {
        goto LABEL_83;
      }

      if (v69(v72, 1, v57) != 1)
      {
        break;
      }

      sub_25F760F44(v72, &qword_27FDAFBE0);
      v74 = v130;
      v75 = v141;
      sub_25F761908(v141);
      sub_25F760F44(v74, &qword_27FDAFBE0);
      v76 = v75;
      v13 = &qword_27FDAFBB0;
      sub_25F760F44(v76, &qword_27FDAFBB0);
      v77 = v143;
      v31 = v132;
LABEL_45:
      swift_endAccess();
      v93 = v140;
      sub_25F76183C(v77, v140, &qword_27FDAFBB0);
      v94 = v136;
      swift_beginAccess();
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v146 = *(v32 + v94);
      v96 = v146;
      *(v32 + v94) = 0x8000000000000000;
      v97 = sub_25F75D8B4(v93);
      v99 = v96[2];
      v100 = (v98 & 1) == 0;
      v91 = __OFADD__(v99, v100);
      v101 = v99 + v100;
      if (v91)
      {
        goto LABEL_72;
      }

      v102 = v98;
      if (v96[3] >= v101)
      {
        if ((v95 & 1) == 0)
        {
          v109 = v97;
          sub_25F75E2A8();
          v97 = v109;
        }
      }

      else
      {
        sub_25F75EF58(v101, v95);
        v97 = sub_25F75D8B4(v140);
        if ((v102 & 1) != (v103 & 1))
        {
          goto LABEL_86;
        }
      }

      v57 = v139;
      v104 = v146;
      if (v102)
      {
        *(v146[7] + 4 * v97) = v22;
        sub_25F760F44(v140, &qword_27FDAFBB0);
      }

      else
      {
        v146[(v97 >> 6) + 8] |= 1 << v97;
        v105 = v97;
        v106 = v140;
        sub_25F76183C(v140, v104[6] + *(v133 + 72) * v97, &qword_27FDAFBB0);
        *(v104[7] + 4 * v105) = v22;
        sub_25F760F44(v106, &qword_27FDAFBB0);
        v107 = v104[2];
        v91 = __OFADD__(v107, 1);
        v108 = v107 + 1;
        if (v91)
        {
          goto LABEL_74;
        }

        v104[2] = v108;
        v57 = v139;
      }

      *(v32 + v136) = v104;

      swift_endAccess();
      sub_25F76E300(v143, type metadata accessor for Preset);
      v59 = v145;
      v45 = v137;
LABEL_15:
      v60 = v135;
      v22 = (v22 + 1);
      sub_25F760F44(v59, &qword_27FDAFBE0);
      v13 = v142;
      if (v60 == v22)
      {
        goto LABEL_57;
      }
    }

    sub_25F76E298(v72, v134, type metadata accessor for Preset);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v146 = *(v32 + v73);
    v79 = v146;
    *(v32 + v73) = 0x8000000000000000;
    v81 = sub_25F75D8B4(v141);
    v82 = v79[2];
    v83 = (v80 & 1) == 0;
    v84 = v82 + v83;
    v13 = &qword_27FDAFBB0;
    if (__OFADD__(v82, v83))
    {
      goto LABEL_73;
    }

    v85 = v80;
    if (v79[3] < v84)
    {
      sub_25F75E660(v84, v78);
      v86 = sub_25F75D8B4(v141);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_86;
      }

      v81 = v86;
      v88 = v146;
      if ((v85 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_40:
      sub_25F764230(v134, v88[7] + *(v131 + 72) * v81, type metadata accessor for Preset);
      sub_25F760F44(v141, &qword_27FDAFBB0);
LABEL_44:
      v77 = v143;
      v31 = v132;
      *(v32 + v138) = v88;

      goto LABEL_45;
    }

    if (v78)
    {
      v88 = v146;
      if (v80)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_25F75DC88();
      v88 = v146;
      if (v85)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    v88[(v81 >> 6) + 8] |= 1 << v81;
    v89 = v141;
    sub_25F76183C(v141, v88[6] + *(v133 + 72) * v81, &qword_27FDAFBB0);
    sub_25F76E298(v134, v88[7] + *(v131 + 72) * v81, type metadata accessor for Preset);
    sub_25F760F44(v89, &qword_27FDAFBB0);
    v90 = v88[2];
    v91 = __OFADD__(v90, 1);
    v92 = v90 + 1;
    if (v91)
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v88[2] = v92;
    goto LABEL_44;
  }

  v60 = 0;
LABEL_57:
  if (v129[1])
  {
    goto LABEL_84;
  }

  if (v128[1])
  {
    goto LABEL_85;
  }

  if (!__OFADD__(*v129, *v128))
  {
    if (v60 == *v129 + *v128)
    {
      goto LABEL_65;
    }

    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    v53 = swift_allocError();
    *v110 = 0xD00000000000002ALL;
    v110[1] = 0x800000025F82CE50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_62:
    v111 = v53;
    v112 = sub_25F8221CC();
    v113 = sub_25F82268C();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      v116 = v53;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v117;
      *v115 = v117;
      _os_log_impl(&dword_25F74E000, v112, v113, "HIDDataStore failed to load required data with error (%@)", v114, 0xCu);
      sub_25F760F44(v115, &qword_27FDAFF60);
      MEMORY[0x25F8E88D0](v115, -1, -1);
      MEMORY[0x25F8E88D0](v114, -1, -1);
    }

    else
    {
    }

LABEL_65:
    v118 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_emptyWritableSlots;
    swift_beginAccess();
    sub_25F76B368((v32 + v118));
    swift_endAccess();
    v119 = sub_25F8221CC();
    v120 = sub_25F8226AC();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_25F74E000, v119, v120, "loading data done", v121, 2u);
      MEMORY[0x25F8E88D0](v121, -1, -1);
    }

    return;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_25F822D2C();
  __break(1u);
}

uint64_t sub_25F765C20(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v158 = v2;
  v124 = v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v119 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v127 = &v110 - v4;
  v5 = sub_25F8221EC();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v116 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v126 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v110 - v10;
  v125 = type metadata accessor for UserAdjustment();
  v123 = *(v125 - 8);
  v11 = MEMORY[0x28223BE20](v125);
  v122 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v110 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v110 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v110 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v110 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v110 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v110 - v31;
  MEMORY[0x28223BE20](v30);
  v128 = &v110 - v33;
  memcpy(v157, (v1 + 16), 0x1D0uLL);
  v34 = v1;
  memcpy(v156, (v1 + 16), sizeof(v156));
  sub_25F76E040(v157, v155);
  v35.defaultIdx = AppleDisplayHIDDevice.getActivePreset()().defaultIdx;
  if (v36)
  {
    memcpy(v155, v156, sizeof(v155));
    return sub_25F76E09C(v155);
  }

  v158 = v32;
  v113 = v22;
  v114 = v29;
  v111 = v19;
  v112 = v26;
  v110 = v17;
  v37 = v35;
  memcpy(v154, v156, sizeof(v154));
  sub_25F76E09C(v154);
  memcpy(v155, (v1 + 16), sizeof(v155));
  memcpy(v153, (v1 + 16), sizeof(v153));
  sub_25F76E040(v155, v152);
  v38 = v128;
  activeIdx = v37.activeIdx;
  AppleDisplayHIDDevice.getPreset(at:)(v128, v37.defaultIdx);
  memcpy(v151, v153, sizeof(v151));
  sub_25F76E09C(v151);
  v40 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_defaultPresetData;
  swift_beginAccess();
  sub_25F76E160(v38, v1 + v40);
  swift_endAccess();
  memcpy(v152, (v1 + 16), sizeof(v152));
  memcpy(v150, (v1 + 16), sizeof(v150));
  sub_25F76E040(v152, v149);
  v41 = v158;
  AppleDisplayHIDDevice.getPreset(at:)(v158, activeIdx);
  v128 = 0;
  memcpy(v149, v150, sizeof(v149));
  sub_25F76E09C(v149);
  v43 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_activePresetData;
  swift_beginAccess();
  sub_25F76E160(v41, v1 + v43);
  swift_endAccess();
  v44 = v114;
  sub_25F76183C(v1 + v40, v114, &qword_27FDAFBE0);
  v45 = type metadata accessor for Preset(0);
  v46 = *(*(v45 - 8) + 48);
  if (v46(v44, 1, v45) == 1)
  {
    goto LABEL_48;
  }

  sub_25F76183C(v44, v113, &qword_27FDAFBB0);
  v47 = v112;
  sub_25F76183C(v34 + v43, v112, &qword_27FDAFBE0);
  if (v46(v47, 1, v45) == 1)
  {
    goto LABEL_49;
  }

  v48 = v152[57];
  v49 = type metadata accessor for ProData();
  v50 = v124;
  sub_25F76183C(v47, v124 + v49[5], &qword_27FDAFBB0);
  v51 = MEMORY[0x277D84F90];
  v52 = sub_25F7C9F08(MEMORY[0x277D84F90]);
  v53 = v49[6];
  swift_retain_n();
  sub_25F7C9F08(v51);
  *(v50 + v49[7]) = 0;
  v54 = v50 + v49[8];
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = v50 + v49[9];
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_25F760FA4(v113, v50, &qword_27FDAFBB0);

  v158 = v53;
  *(v50 + v53) = v52;
  v56 = v48;
  v57 = v50;
  v58 = (v50 + v49[10]);
  *v58 = sub_25F76E1D0;
  v58[1] = v34;
  v59 = (v50 + v49[11]);
  *v59 = sub_25F76E1D8;
  v59[1] = v34;
  v60 = (v50 + v49[12]);
  *v60 = sub_25F76E1E4;
  v60[1] = v34;
  sub_25F76E300(v47, type metadata accessor for Preset);
  sub_25F76E300(v114, type metadata accessor for Preset);
  v61 = v34;
  if (sub_25F761900(2, v56))
  {
    memcpy(v133, (v34 + 16), sizeof(v133));
    memcpy(v132, (v34 + 16), sizeof(v132));
    sub_25F76E040(v133, v131);
    v62 = v120;
    v63 = v128;
    AppleDisplayHIDDevice.getUserAdjustment()(v120);
    v64 = v63;
    v66 = v126;
    v65 = v127;
    v67 = v125;
    if (v63)
    {
      memcpy(v131, v132, sizeof(v131));
      v68 = v131;
LABEL_41:
      sub_25F76E09C(v68);
      return sub_25F76E300(v57, type metadata accessor for ProData);
    }

    v56 = v133[57];
    memcpy(v131, v132, sizeof(v131));
    sub_25F76E09C(v131);
    if ((*(v123 + 48))(v62, 1, v67) == 1)
    {
      sub_25F760F44(v62, &qword_27FDAFC28);
    }

    else
    {
      v120 = v56;
      v70 = v111;
      sub_25F76E298(v62, v111, type metadata accessor for UserAdjustment);
      v71 = v110;
      sub_25F76E0F8(v70, v110, type metadata accessor for UserAdjustment);
      v72 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130[0] = *(v57 + v72);
      v128 = 0;
      sub_25F760544(v71, v70, isUniquelyReferenced_nonNull_native);
      v64 = v128;
      v74 = v70;
      v56 = v120;
      sub_25F76E300(v74, type metadata accessor for UserAdjustment);
      *(v57 + v72) = v130[0];
    }

    v69 = v123;
  }

  else
  {
    v65 = v127;
    v64 = v128;
    v69 = v123;
    v66 = v126;
  }

  result = sub_25F761900(3, v56);
  if (result)
  {
    memcpy(v133, (v61 + 16), sizeof(v133));
    v75 = *(v61 + 272);
    v145 = *(v61 + 256);
    v146 = v75;
    v147 = *(v61 + 288);
    v148 = *(v61 + 304);
    v76 = *(v61 + 208);
    v141 = *(v61 + 192);
    v142 = v76;
    v77 = *(v61 + 240);
    v143 = *(v61 + 224);
    v144 = v77;
    v78 = *(v61 + 144);
    v137 = *(v61 + 128);
    v138 = v78;
    v79 = *(v61 + 176);
    v139 = *(v61 + 160);
    v140 = v79;
    v80 = *(v61 + 80);
    v134[0] = *(v61 + 64);
    v134[1] = v80;
    v81 = *(v61 + 112);
    v135 = *(v61 + 96);
    v136 = v81;
    result = sub_25F76E230(v134);
    if (result == 1)
    {
      sub_25F76E040(v133, v132);
      v82 = v116;
      sub_25F8221DC();
      v83 = sub_25F8221CC();
      v84 = sub_25F82268C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v132[0] = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82CE10, v132);
        _os_log_impl(&dword_25F74E000, v83, v84, "%s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v86);
        v87 = v86;
        v57 = v124;
        MEMORY[0x25F8E88D0](v87, -1, -1);
        MEMORY[0x25F8E88D0](v85, -1, -1);
      }

      (*(v117 + 8))(v82, v118);
      sub_25F76E244();
      swift_allocError();
      *v88 = 0;
      *(v88 + 8) = 0;
      *(v88 + 16) = 5;
      swift_willThrow();
      v68 = v133;
      goto LABEL_41;
    }

    v89 = v69;
    v90 = v135 + 1;
    if (!__OFADD__(v135, 1))
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (HIDWORD(v90))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        result = sub_25F822D2C();
        __break(1u);
        return result;
      }

      if (v135 == -1)
      {
        return result;
      }

      v120 = v61;
      v91 = 0;
      v92 = (v89 + 48);
      while (v90 != v91)
      {
        memcpy(v132, (v120 + 16), sizeof(v132));
        memcpy(v131, (v120 + 16), sizeof(v131));
        sub_25F76E040(v132, v130);
        AppleDisplayHIDDevice.getUserAdjustment(at:)(v91, v66);
        if (v64)
        {
          memcpy(v130, v131, sizeof(v130));
          v68 = v130;
          goto LABEL_41;
        }

        memcpy(v130, v131, sizeof(v130));
        sub_25F76E09C(v130);
        if ((*v92)(v66, 1, v125) == 1)
        {
          result = sub_25F760F44(v66, &qword_27FDAFC28);
        }

        else
        {
          v128 = 0;
          v93 = v121;
          sub_25F76E298(v66, v121, type metadata accessor for UserAdjustment);
          sub_25F76183C(v93, v65, &qword_27FDAFC18);
          sub_25F76E0F8(v93, v122, type metadata accessor for UserAdjustment);
          v94 = v158;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v96 = *(v57 + v94);
          v129 = v96;
          v98 = sub_25F75DA30(v65);
          v99 = v96[2];
          v100 = (v97 & 1) == 0;
          v101 = v99 + v100;
          if (__OFADD__(v99, v100))
          {
            goto LABEL_43;
          }

          v102 = v97;
          if (v96[3] >= v101)
          {
            if ((v95 & 1) == 0)
            {
              sub_25F75DF98();
            }
          }

          else
          {
            sub_25F75EADC(v101, v95);
            v103 = sub_25F75DA30(v127);
            if ((v102 & 1) != (v104 & 1))
            {
              goto LABEL_50;
            }

            v98 = v103;
          }

          v66 = v126;
          v105 = v129;
          if (v102)
          {
            sub_25F764230(v122, v129[7] + *(v123 + 72) * v98, type metadata accessor for UserAdjustment);
            v65 = v127;
            sub_25F760F44(v127, &qword_27FDAFC18);
            result = sub_25F76E300(v121, type metadata accessor for UserAdjustment);
            v57 = v124;
            *&v158[v124] = v105;
            v64 = v128;
          }

          else
          {
            v129[(v98 >> 6) + 8] |= 1 << v98;
            v106 = v127;
            sub_25F76183C(v127, v105[6] + *(v119 + 72) * v98, &qword_27FDAFC18);
            sub_25F76E298(v122, v105[7] + *(v123 + 72) * v98, type metadata accessor for UserAdjustment);
            v65 = v106;
            sub_25F760F44(v106, &qword_27FDAFC18);
            result = sub_25F76E300(v121, type metadata accessor for UserAdjustment);
            v107 = v105[2];
            v108 = __OFADD__(v107, 1);
            v109 = v107 + 1;
            if (v108)
            {
              goto LABEL_44;
            }

            v105[2] = v109;
            v57 = v124;
            *&v158[v124] = v105;
            v64 = v128;
            v66 = v126;
          }
        }

        if (v90 == ++v91)
        {
          return result;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_25F766B24(uint64_t a1)
{
  sub_25F764C40();
  v2 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_presets;
  swift_beginAccess();
  result = *(a1 + v2);
  if (result)
  {
  }

  __break(1u);
  return result;
}

void sub_25F766B7C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32[-v7];
  v9 = type metadata accessor for Preset(0);
  v34 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v32[-v13];
  sub_25F764C40();
  v15 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (!*(v16 + 16))
  {
    goto LABEL_9;
  }

  v17 = sub_25F75D8B4(a1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = *(*(v16 + 56) + 4 * v17);

  if (a2)
  {
    sub_25F764C40();
    v20 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_presets;
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      if (!*(v21 + 16))
      {
LABEL_9:
        type metadata accessor for HIDDataStore.Error(0);
        sub_25F769C80();
        swift_allocError();
        sub_25F76183C(a1, v26, &qword_27FDAFBB0);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      v22 = sub_25F75D8B4(a1);
      if (v23)
      {
        v24 = v34;
        sub_25F76E0F8(*(v21 + 56) + *(v34 + 72) * v22, v12, type metadata accessor for Preset);

        sub_25F76E298(v12, v14, type metadata accessor for Preset);
        sub_25F76E298(v14, v8, type metadata accessor for Preset);
        (*(v24 + 56))(v8, 0, 1, v9);
        v25 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_activePresetData;
        swift_beginAccess();
        sub_25F76E160(v8, v3 + v25);
        swift_endAccess();
        return;
      }

LABEL_8:

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    if (qword_27FDAF820 != -1)
    {
      v19 = swift_once();
    }

    v8 = *(off_27FDAFEB0 + 2);
    v27 = MEMORY[0x28223BE20](v19);
    *&v32[-32] = v28;
    *&v32[-24] = 0xD000000000000011;
    *&v32[-16] = v29;
    MEMORY[0x28223BE20](v27);
    *&v32[-16] = sub_25F76E5D8;
    *&v32[-8] = v30;
    os_unfair_lock_lock(v8 + 4);
    v31 = v38;
    sub_25F76E5F0();
    if (!v31)
    {
      os_unfair_lock_unlock(v8 + 4);
      memcpy(v37, (v3 + 16), sizeof(v37));
      memcpy(v36, (v3 + 16), sizeof(v36));
      sub_25F76E040(v37, v35);
      AppleDisplayHIDDevice.setActivePreset(index:)(v33);
      memcpy(v35, v36, sizeof(v35));
      sub_25F76E09C(v35);
      return;
    }
  }

  os_unfair_lock_unlock(v8 + 4);
  __break(1u);
}

void sub_25F766FC4(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  sub_25F764C40();
  v8 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_emptyWritableSlots;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
    v11 = sub_25F76DD44(0, 1);
    if (qword_27FDAF820 != -1)
    {
      v11 = swift_once();
    }

    v12 = *(off_27FDAFEB0 + 2);
    v13 = MEMORY[0x28223BE20](v11);
    *&v19[-32] = v14;
    *&v19[-24] = 0x7365727020746573;
    *&v19[-16] = 0xEA00000000007465;
    MEMORY[0x28223BE20](v13);
    *&v19[-16] = sub_25F76E5D8;
    *&v19[-8] = v15;
    os_unfair_lock_lock(v12 + 4);
    sub_25F76E5F0();
    os_unfair_lock_unlock(v12 + 4);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      memcpy(v22, (v3 + 16), sizeof(v22));
      memcpy(v21, (v3 + 16), sizeof(v21));
      sub_25F76E0F8(a1, v7, type metadata accessor for Preset);
      v16 = type metadata accessor for Preset(0);
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
      sub_25F76E040(v22, v20);
      AppleDisplayHIDDevice.setPreset(_:at:)(v7, v10);
      sub_25F760F44(v7, &qword_27FDAFBE0);
      memcpy(v20, v21, sizeof(v20));
      sub_25F76E09C(v20);
      v17 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v3 + v17);
      *(v3 + v17) = 0x8000000000000000;
      sub_25F7609B8(v10, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v17) = v23;
      swift_endAccess();
    }
  }

  else
  {
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_25F767320(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25[-v6];
  sub_25F764C40();
  v8 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_25F75D8B4(a1);
  if ((v11 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    sub_25F76183C(a1, v19, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v12 = *(*(v9 + 56) + 4 * v10);

  if (qword_27FDAF820 != -1)
  {
    v13 = swift_once();
  }

  v29 = v25;
  v14 = *(off_27FDAFEB0 + 2);
  v15 = MEMORY[0x28223BE20](v13);
  *&v25[-32] = v16;
  strcpy(&v25[-24], "remove preset");
  *&v25[-10] = -4864;
  MEMORY[0x28223BE20](v15);
  *&v25[-16] = sub_25F76E5D8;
  *&v25[-8] = v17;
  os_unfair_lock_lock(v14 + 4);
  sub_25F76E5F0();
  if (v2)
  {
    os_unfair_lock_unlock(v14 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v14 + 4);
    memcpy(v28, (v3 + 16), sizeof(v28));
    memcpy(v27, (v3 + 16), sizeof(v27));
    v18 = type metadata accessor for Preset(0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_25F76E040(v28, v26);
    AppleDisplayHIDDevice.setPreset(_:at:)(v7, v12);
    sub_25F760F44(v7, &qword_27FDAFBE0);
    memcpy(v26, v27, sizeof(v26));
    sub_25F76E09C(v26);
    swift_beginAccess();
    sub_25F754070(a1);
    swift_endAccess();
    v20 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_emptyWritableSlots;
    swift_beginAccess();
    v21 = *(v3 + v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_25F75BF5C(0, *(v21 + 2) + 1, 1, v21);
      *(v3 + v20) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_25F75BF5C((v23 > 1), v24 + 1, 1, v21);
    }

    *(v21 + 2) = v24 + 1;
    *&v21[4 * v24 + 32] = v12;
    *(v3 + v20) = v21;
    sub_25F76B368((v3 + v20));
    swift_endAccess();
  }
}

uint64_t sub_25F767720()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_25F764C40();
  v11 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v28 = v1;
    v14 = sub_25F769D54(v13, 0);
    v29 = v4;
    v30 = sub_25F76D228(&v33, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v13, v12);
    swift_bridgeObjectRetain_n();
    sub_25F76E0F0();
    if (v30 != v13)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = v28;
    v4 = v29;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v33 = v14;
  sub_25F76B4A0(&v33);
  v13 = v2;
  if (v2)
  {
LABEL_15:

    __break(1u);
    return result;
  }

  v15 = v33;
  v16 = v33[2];
  if (v16)
  {
    v29 = 0;
    v33 = MEMORY[0x277D84F90];
    sub_25F817C48(0, v16, 0);
    v17 = v33;
    v18 = *(v4 + 80);
    v28 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v30 = *(v4 + 72);
    do
    {
      v20 = v32;
      sub_25F76183C(v19, v32, &qword_27FDAFF48);
      v21 = v20;
      v22 = v34;
      sub_25F760FA4(v21, v34, &qword_27FDAFF48);
      sub_25F760FA4(v22, v10, &qword_27FDAFBB0);
      v33 = v17;
      v23 = v10;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_25F817C48(v24 > 1, v25 + 1, 1);
        v17 = v33;
      }

      v17[2] = v25 + 1;
      sub_25F760FA4(v23, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, &qword_27FDAFBB0);
      v19 += v30;
      --v16;
      v10 = v23;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v17;
}

void sub_25F767AD4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6];
  if (qword_27FDAF820 != -1)
  {
    v5 = swift_once();
  }

  v8 = *(off_27FDAFEB0 + 2);
  v9 = MEMORY[0x28223BE20](v5);
  *&v14[-32] = v10;
  *&v14[-24] = 0xD000000000000013;
  *&v14[-16] = v11;
  MEMORY[0x28223BE20](v9);
  *&v14[-16] = sub_25F76E5D8;
  *&v14[-8] = v12;
  os_unfair_lock_lock(v8 + 4);
  sub_25F76E5F0();
  os_unfair_lock_unlock(v8 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    memcpy(v16, (v1 + 16), sizeof(v16));
    memcpy(v15, (v1 + 16), sizeof(v15));
    sub_25F76E0F8(a1, v7, type metadata accessor for UserAdjustment);
    v13 = type metadata accessor for UserAdjustment();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    sub_25F76E040(v16, v14);
    AppleDisplayHIDDevice.setUserAdjustment(_:)(v7);
    sub_25F760F44(v7, &qword_27FDAFC28);
    memcpy(v14, v15, sizeof(v14));
    sub_25F76E09C(v14);
  }
}

void sub_25F767D2C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-v4];
  if (qword_27FDAF820 != -1)
  {
    v3 = swift_once();
  }

  v6 = *(off_27FDAFEB0 + 2);
  v7 = MEMORY[0x28223BE20](v3);
  *&v12[-32] = v8;
  *&v12[-24] = 0xD000000000000016;
  *&v12[-16] = v9;
  MEMORY[0x28223BE20](v7);
  *&v12[-16] = sub_25F76E5D8;
  *&v12[-8] = v10;
  os_unfair_lock_lock(v6 + 4);
  sub_25F76E5F0();
  os_unfair_lock_unlock(v6 + 4);
  if (v1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v14, (v0 + 16), sizeof(v14));
    memcpy(v13, (v0 + 16), sizeof(v13));
    v11 = type metadata accessor for UserAdjustment();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_25F76E040(v14, v12);
    AppleDisplayHIDDevice.setUserAdjustment(_:)(v5);
    sub_25F760F44(v5, &qword_27FDAFC28);
    memcpy(v12, v13, sizeof(v12));
    sub_25F76E09C(v12);
  }
}

void sub_25F767F58(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-v10];
  sub_25F764C40();
  v12 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_25F75D8B4(a2);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    sub_25F76183C(a2, v24, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v16 = *(*(v13 + 56) + 4 * v14);

  if (qword_27FDAF820 != -1)
  {
    v17 = swift_once();
  }

  v28 = v25;
  v18 = *(off_27FDAFEB0 + 2);
  v19 = MEMORY[0x28223BE20](v17);
  *&v25[-32] = v20;
  *&v25[-24] = 0xD000000000000013;
  *&v25[-16] = v21;
  MEMORY[0x28223BE20](v19);
  *&v25[-16] = sub_25F76E5D8;
  *&v25[-8] = v22;
  os_unfair_lock_lock(v18 + 4);
  sub_25F76E5F0();
  os_unfair_lock_unlock(v18 + 4);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    memcpy(v27, (v5 + 16), sizeof(v27));
    memcpy(v26, (v5 + 16), sizeof(v26));
    sub_25F76E0F8(a1, v11, type metadata accessor for UserAdjustment);
    v23 = type metadata accessor for UserAdjustment();
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
    sub_25F76E040(v27, v25);
    AppleDisplayHIDDevice.setUserAdjustment(_:at:live:)(v11, v16, a3 & 1);
    sub_25F760F44(v11, &qword_27FDAFC28);
    memcpy(v25, v26, sizeof(v25));
    sub_25F76E09C(v25);
  }
}

void sub_25F768280(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  sub_25F764C40();
  v10 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = sub_25F75D8B4(a1);
  if ((v13 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    sub_25F76183C(a1, v22, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v14 = *(*(v11 + 56) + 4 * v12);

  if (qword_27FDAF820 != -1)
  {
    v15 = swift_once();
  }

  v16 = *(off_27FDAFEB0 + 2);
  v17 = MEMORY[0x28223BE20](v15);
  *&v23[-32] = v18;
  *&v23[-24] = 0xD000000000000016;
  *&v23[-16] = v19;
  MEMORY[0x28223BE20](v17);
  *&v23[-16] = sub_25F76E020;
  *&v23[-8] = v20;
  os_unfair_lock_lock(v16 + 4);
  sub_25F76E5F0();
  os_unfair_lock_unlock(v16 + 4);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    memcpy(v25, (v4 + 16), sizeof(v25));
    memcpy(v24, (v4 + 16), sizeof(v24));
    v21 = type metadata accessor for UserAdjustment();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    sub_25F76E040(v25, v23);
    AppleDisplayHIDDevice.setUserAdjustment(_:at:live:)(v9, v14, a2 & 1);
    sub_25F760F44(v9, &qword_27FDAFC28);
    memcpy(v23, v24, sizeof(v23));
    sub_25F76E09C(v23);
  }
}

uint64_t sub_25F768580@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_25F761900(4, *(v3 + 472)) & 1) == 0)
  {
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    *v16 = 0xD00000000000002BLL;
    v16[1] = 0x800000025F82CE80;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v8 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_indexMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
LABEL_8:
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    swift_allocError();
    sub_25F76183C(a1, v17, &qword_27FDAFBB0);
    goto LABEL_9;
  }

  v10 = sub_25F75D8B4(a1);
  if ((v11 & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = *(*(v9 + 56) + 4 * v10);

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(__src, (v3 + 16), sizeof(__src));
  v13 = a2[3];
  v23[2] = a2[2];
  v23[3] = v13;
  v24[0] = a2[4];
  *(v24 + 9) = *(a2 + 73);
  v14 = a2[1];
  v23[0] = *a2;
  v23[1] = v14;
  sub_25F76E040(__dst, v22);
  AppleDisplayHIDDevice.setUARangeInput(_:for:)(v23, v12);
  if (v4)
  {
    memcpy(v22, __src, sizeof(v22));
    v15 = v22;
  }

  else
  {
    memcpy(v21, __src, sizeof(v21));
    sub_25F76E09C(v21);
    memcpy(v22, (v3 + 16), sizeof(v22));
    memcpy(v20, (v3 + 16), sizeof(v20));
    sub_25F76E040(v22, v19);
    AppleDisplayHIDDevice.getUARange(for:)(v12, a3);
    memcpy(v19, v20, sizeof(v19));
    v15 = v19;
  }

  return sub_25F76E09C(v15);
}

void sub_25F7687F0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (qword_27FDAF820 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(off_27FDAFEB0 + 2);
  v3 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock(v2 + 4);
  sub_25F76E5F0();
  if (v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  *&v10[40] = 0;
  if (HIDDisplayDeviceManagementGetSecurityToken())
  {
    sub_25F768A38(0, 2);
    if (HIDDisplayDeviceManagementSetFactoryResetData())
    {
      return;
    }

    CFErrorInfo.init(error:)(v10, *&v10[40]);
    v8 = *v10;
    v9 = *&v10[16];
    v4 = *&v10[32];
    v5 = "ManagementGetSecurityToken";
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    CFErrorInfo.init(error:)(v10, *&v10[40]);
    v8 = *v10;
    v9 = *&v10[16];
    v4 = *&v10[32];
    v5 = "reset custom presets";
    v6 = 0xD00000000000002ALL;
  }

  type metadata accessor for HIDDataStore.Error(0);
  sub_25F769C80();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = v5 | 0x8000000000000000;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  *(v7 + 48) = v4;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_25F768A38(uint64_t a1, char a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v54 = xmmword_25F824200;
  v44[1] = sub_25F82215C();
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v48 = v7;
  v49 = v8;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  sub_25F821FBC();
  v43[0] = a1;
  sub_25F821FBC();
  v53 = a2;
  sub_25F821FBC();
  v12 = sub_25F82253C();
  *(v12 + 16) = 32;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  v44[0] = v12;
  v13 = *(&v54 + 1);
  v14 = v54;
  v15 = *(&v54 + 1) >> 62;
  if ((*(&v54 + 1) >> 62) <= 1)
  {
    if (!v15)
    {
      v43[0] = v54;
      LODWORD(v43[1]) = DWORD2(v54);
      WORD2(v43[1]) = WORD6(v54);
      v16 = v43 + BYTE14(v54);
LABEL_23:
      sub_25F768E18(v43, v16, &v54, v44);
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v15 != 2)
  {
    memset(v43, 0, 14);
    v16 = v43;
    goto LABEL_23;
  }

  v17 = *(v54 + 16);
  v18 = *(v54 + 24);

  v19 = sub_25F821E4C();
  if (v19)
  {
    v20 = sub_25F821E7C();
    if (__OFSUB__(v17, v20))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v19 += v17 - v20;
  }

  v21 = __OFSUB__(v18, v17);
  v22 = v18 - v17;
  if (v21)
  {
    __break(1u);
LABEL_11:
    v22 = (v54 >> 32) - v54;
    if (v54 >> 32 < v54)
    {
      __break(1u);
      goto LABEL_39;
    }

    v19 = sub_25F821E4C();
    if (v19)
    {
      v23 = sub_25F821E7C();
      if (__OFSUB__(v54, v23))
      {
        goto LABEL_43;
      }

      v19 += v54 - v23;
    }
  }

  v24 = sub_25F821E6C();
  if (v24 >= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v24;
  }

  v26 = &v19[v25];
  if (v19)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_25F768E18(v19, v27, &v54, v44);
  sub_25F76D178(v14, v13);
LABEL_24:

  v29 = sub_25F7BEE3C(v28);
  v31 = v30;

  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
LABEL_31:
    if (v32 != 2)
    {
      v33 = 0;
      goto LABEL_37;
    }

    v38 = *(v29 + 16);
    v39 = sub_25F821E4C();
    if (!v39)
    {
      sub_25F821E6C();
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v40 = v39;
    v41 = sub_25F821E7C();
    if (!__OFSUB__(v38, v41))
    {
      v37 = (v38 - v41 + v40);
      sub_25F821E6C();
      if (v37)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v33 = v29;
  if (!v32)
  {
LABEL_37:
    sub_25F76D178(v29, v31);

    sub_25F76D178(v54, *(&v54 + 1));
    return v33;
  }

  if (v29 > v29 >> 32)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = sub_25F821E4C();
  if (v34)
  {
    v35 = v34;
    v36 = sub_25F821E7C();
    if (__OFSUB__(v29, v36))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v37 = (v29 - v36 + v35);
    sub_25F821E6C();
    if (v37)
    {
LABEL_35:
      v33 = *v37;
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_46:
  result = sub_25F821E6C();
  __break(1u);
  return result;
}

unsigned __int8 *sub_25F768E18(unsigned __int8 *result, uint64_t a2, uint64_t *a3, char **a4)
{
  v5 = result;
  v6 = *a3;
  v7 = a3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v10 = *(v11 + 8);
    v9 = v10 - v6;
    if (!__OFSUB__(v10, v6))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v13 = HIDWORD(v6) - v6;
    if (v12)
    {
      goto LABEL_18;
    }

    v9 = v13;
LABEL_10:
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v9))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v9) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  LODWORD(v9) = BYTE6(v7);
LABEL_14:
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25F75BD48(0, *(v14 + 2), 0, v14);
  }

  *a4 = v14;
  return CC_SHA256(v5, v9, v14 + 32);
}

uint64_t sub_25F768EF4()
{
  type metadata accessor for HIDDataStore.PowerAssertion();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF40);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  off_27FDAFEB0 = v0;
  return result;
}

void sub_25F768F5C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = IOPMAssertionRelease(v2);
    if (v3)
    {
      v4 = v3;
      if (qword_27FDAF828 != -1)
      {
        swift_once();
      }

      v5 = sub_25F8221EC();
      __swift_project_value_buffer(v5, qword_27FDAFEB8);
      v6 = sub_25F8221CC();
      v7 = sub_25F82268C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        *(v8 + 4) = v4;
        _os_log_impl(&dword_25F74E000, v6, v7, "IOPMAssertionRelease failed with code %d", v8, 8u);
        MEMORY[0x25F8E88D0](v8, -1, -1);
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_25F769088()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 4);
  sub_25F769CF4();
  os_unfair_lock_unlock(v1 + 4);

  return swift_deallocClassInstance();
}

void sub_25F769114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF30);
    inited = swift_initStackObject();
    *(inited + 32) = 0x614E747265737341;
    *(inited + 16) = xmmword_25F824210;
    v16 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000028;
    *(inited + 56) = 0x800000025F82CD60;
    *(inited + 72) = v16;
    *(inited + 80) = 0x7954747265737341;
    *(inited + 88) = 0xEA00000000006570;
    *(inited + 96) = 0xD000000000000012;
    *(inited + 104) = 0x800000025F82CD90;
    *(inited + 120) = v16;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x800000025F82CD40;
    v17 = MEMORY[0x277D839B0];
    *(inited + 144) = 1;
    *(inited + 168) = v17;
    *(inited + 176) = 0x736C6961746544;
    *(inited + 184) = 0xE700000000000000;
    *(inited + 192) = a2;
    *(inited + 200) = a3;
    *(inited + 216) = v16;
    strcpy((inited + 224), "TimeoutSeconds");
    *(inited + 264) = MEMORY[0x277D83B88];
    *(inited + 239) = -18;
    *(inited + 240) = 30;

    sub_25F7C9DD8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF38);
    swift_arrayDestroy();
    v18 = sub_25F82228C();

    swift_beginAccess();
    v19 = IOPMAssertionCreateWithProperties(v18, (a1 + 24));
    swift_endAccess();

    if (!v19)
    {
      return;
    }

    if (qword_27FDAF828 != -1)
    {
      swift_once();
    }

    v20 = sub_25F8221EC();
    __swift_project_value_buffer(v20, qword_27FDAFEB8);
    v11 = sub_25F8221CC();
    v12 = sub_25F82268C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v19;
    v14 = "IOPMAssertionCreateWithProperties failed with code %d";
    goto LABEL_17;
  }

  v7 = sub_25F82235C();
  v8 = sub_25F82235C();
  v9 = IOPMAssertionSetProperty(v6, v7, v8);

  if (v9)
  {
    if (qword_27FDAF828 != -1)
    {
      swift_once();
    }

    v10 = sub_25F8221EC();
    __swift_project_value_buffer(v10, qword_27FDAFEB8);
    v11 = sub_25F8221CC();
    v12 = sub_25F82268C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    v14 = "IOPMAssertionSetProperty kIOPMAssertionDetailsKey failed with code %d";
    goto LABEL_17;
  }

  v21 = *(a1 + 24);
  v22 = sub_25F82235C();
  v23 = sub_25F82265C();
  v24 = IOPMAssertionSetProperty(v21, v22, v23);

  if (!v24)
  {
    return;
  }

  if (qword_27FDAF828 != -1)
  {
    swift_once();
  }

  v25 = sub_25F8221EC();
  __swift_project_value_buffer(v25, qword_27FDAFEB8);
  v11 = sub_25F8221CC();
  v12 = sub_25F82268C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v24;
    v14 = "IOPMAssertionSetProperty kIOPMAssertionTimeoutKey failed with code %d";
LABEL_17:
    _os_log_impl(&dword_25F74E000, v11, v12, v14, v13, 8u);
    MEMORY[0x25F8E88D0](v13, -1, -1);
  }

LABEL_18:
}

uint64_t sub_25F7695E4()
{
  v0 = sub_25F8221EC();
  __swift_allocate_value_buffer(v0, qword_27FDAFEB8);
  __swift_project_value_buffer(v0, qword_27FDAFEB8);
  return sub_25F8221DC();
}

uint64_t sub_25F769664()
{
  memcpy(v4, (v0 + 16), sizeof(v4));
  sub_25F76E09C(v4);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_container;
  v2 = sub_25F82217C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_25F760F44(v0 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_activePresetData, &qword_27FDAFBE0);
  sub_25F760F44(v0 + OBJC_IVAR____TtC17ProDisplayLibrary12HIDDataStore_defaultPresetData, &qword_27FDAFBE0);
  return v0;
}

uint64_t sub_25F769764()
{
  sub_25F769664();

  return swift_deallocClassInstance();
}

void sub_25F7697E4()
{
  sub_25F82217C();
  if (v0 <= 0x3F)
  {
    sub_25F76E578(319, &qword_27FDAFF20, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_25F769AB4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *v2;
  v9 = *a1;
  swift_beginAccess();
  sub_25F76183C(v8 + v9, v7, &qword_27FDAFBE0);
  v10 = type metadata accessor for Preset(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
  {
    return sub_25F76E298(v7, a2, type metadata accessor for Preset);
  }

  sub_25F760F44(v7, &qword_27FDAFBE0);
  type metadata accessor for HIDDataStore.Error(0);
  sub_25F769C80();
  swift_allocError();
  *v11 = 0xD000000000000021;
  v11[1] = 0x800000025F82CCF0;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_25F769C80()
{
  result = qword_27FDAFF28;
  if (!qword_27FDAFF28)
  {
    type metadata accessor for HIDDataStore.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFF28);
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

size_t sub_25F769D54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF50);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48) - 8);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_25F769EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25F769FFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFB0);
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

void *sub_25F76A108(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F76A250(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F76A398(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F76A528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F76A648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25F76A768(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCB0);
  v10 = *(type metadata accessor for Preset(0) - 8);
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
  v15 = *(type metadata accessor for Preset(0) - 8);
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

size_t sub_25F76A940(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25F76AB3C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_25F76AC28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F76AD5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F76AEA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_25F76AFFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F76B140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25F76B26C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

uint64_t sub_25F76B368(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F7BD8B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25F822C6C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25F82253C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F76B90C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25F76B4A0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F76D1CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25F76B554(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25F76B554(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F822C6C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
        v6 = sub_25F82253C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25F76BE58(v8, v9, a1, v4);
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
    return sub_25F76B698(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F76B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v42 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v38 = -v17;
    v39 = v16;
    v19 = a1 - a3;
    v32 = v17;
    v20 = v16 + v17 * a3;
    v21 = &qword_27FDAFF48;
    v41 = v8;
LABEL_5:
    v36 = v18;
    v37 = a3;
    v34 = v20;
    v35 = v19;
    while (1)
    {
      v22 = v42;
      sub_25F76183C(v20, v42, v21);
      v23 = v21;
      v24 = v43;
      sub_25F76183C(v18, v43, v23);
      v25 = *(v8 + 48);
      v26 = *(v22 + v25);
      v27 = *(v24 + v25);
      v28 = v24;
      v21 = v23;
      sub_25F760F44(v28, v23);
      result = sub_25F760F44(v22, v23);
      v29 = v26 >= v27;
      v8 = v41;
      if (v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v18 = v36 + v32;
        v19 = v35 - 1;
        v20 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_25F760FA4(v20, v40, v23);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25F760FA4(v30, v18, v23);
      v18 += v38;
      v20 += v38;
      v29 = __CFADD__(v19++, 1);
      if (v29)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F76B90C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F76CF90(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25F76C7EC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
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
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F75C060(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25F75C060((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25F76C7EC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25F76BE58(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v107 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v117 = *(v123 - 8);
  v7 = MEMORY[0x28223BE20](v123);
  v110 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v120 = &v104 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v104 - v12;
  result = MEMORY[0x28223BE20](v11);
  v121 = &v104 - v14;
  v15 = *(a3 + 8);
  v108 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_98:
    a4 = *v107;
    if (!*v107)
    {
      goto LABEL_137;
    }

    v4 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
LABEL_101:
      v124 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (1)
        {
          v100 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *(result + 16 * v4);
          v101 = result;
          v102 = *(result + 16 * (v4 - 1) + 40);
          sub_25F76C9E0(v100 + *(v117 + 72) * a3, v100 + *(v117 + 72) * *(result + 16 * (v4 - 1) + 32), v100 + *(v117 + 72) * v102, a4);
          if (v33)
          {
          }

          if (v102 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_25F76CF90(v101);
          }

          if (v4 - 2 >= *(v101 + 2))
          {
            goto LABEL_125;
          }

          v103 = &v101[16 * v4];
          *v103 = a3;
          *(v103 + 1) = v102;
          v124 = v101;
          sub_25F76CF04(v4 - 1);
          result = v124;
          v4 = *(v124 + 16);
          a3 = v108;
          if (v4 <= 1)
          {
          }
        }
      }
    }

LABEL_131:
    result = sub_25F76CF90(v4);
    goto LABEL_101;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v106 = a4;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v111 = v17;
    if (v19 >= v15)
    {
      v32 = v19;
      v33 = v113;
    }

    else
    {
      v20 = *a3;
      v21 = *(v117 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v121;
      v4 = &qword_27FDAFF48;
      sub_25F76183C(v22, v121, &qword_27FDAFF48);
      v24 = v122;
      sub_25F76183C(v20 + v21 * v18, v122, &qword_27FDAFF48);
      v25 = *(v123 + 48);
      LODWORD(v116) = *(v23 + v25);
      LODWORD(v115) = *(v24 + v25);
      sub_25F760F44(v24, &qword_27FDAFF48);
      result = sub_25F760F44(v23, &qword_27FDAFF48);
      v105 = v18;
      v26 = v18 + 2;
      v118 = v21;
      v27 = v20 + v21 * v26;
      while (v15 != v26)
      {
        LODWORD(v119) = v116 < v115;
        v28 = v121;
        sub_25F76183C(v27, v121, &qword_27FDAFF48);
        v29 = v122;
        sub_25F76183C(v22, v122, &qword_27FDAFF48);
        v30 = *(v123 + 48);
        v31 = *(v28 + v30);
        v4 = *(v29 + v30);
        sub_25F760F44(v29, &qword_27FDAFF48);
        result = sub_25F760F44(v28, &qword_27FDAFF48);
        ++v26;
        v27 += v118;
        v22 += v118;
        if (((v119 ^ (v31 >= v4)) & 1) == 0)
        {
          v32 = v26 - 1;
          goto LABEL_11;
        }
      }

      v32 = v15;
LABEL_11:
      v18 = v105;
      a4 = v106;
      a3 = v108;
      v33 = v113;
      if (v116 < v115)
      {
        if (v32 < v105)
        {
          goto LABEL_128;
        }

        if (v105 < v32)
        {
          v4 = v118 * (v32 - 1);
          v34 = v32 * v118;
          v116 = v32;
          v35 = v32;
          v36 = v105 * v118;
          do
          {
            if (v18 != --v35)
            {
              v113 = v33;
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_25F760FA4(v37 + v36, v110, &qword_27FDAFF48);
              if (v36 < v4 || v37 + v36 >= (v37 + v34))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25F760FA4(v110, v37 + v4, &qword_27FDAFF48);
              v33 = v113;
            }

            ++v18;
            v4 -= v118;
            v34 -= v118;
            v36 += v118;
          }

          while (v18 < v35);
          v18 = v105;
          a4 = v106;
          v32 = v116;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v32 >= v38)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v32, v18))
    {
      goto LABEL_127;
    }

    if (v32 - v18 >= a4)
    {
LABEL_34:
      v40 = v32;
      if (v32 < v18)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_129;
    }

    if ((v18 + a4) >= v38)
    {
      v39 = *(a3 + 8);
    }

    else
    {
      v39 = v18 + a4;
    }

    if (v39 < v18)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v32 == v39)
    {
      goto LABEL_34;
    }

    v112 = v39;
    v113 = v33;
    v86 = *a3;
    v87 = *(v117 + 72);
    v88 = *a3 + v87 * (v32 - 1);
    v89 = -v87;
    v105 = v18;
    v90 = v18 - v32;
    v119 = v86;
    v109 = v87;
    a4 = v86 + v32 * v87;
    v91 = v123;
LABEL_88:
    v115 = v90;
    v116 = v32;
    v114 = a4;
    v118 = v88;
    v92 = v88;
LABEL_89:
    v4 = v121;
    sub_25F76183C(a4, v121, &qword_27FDAFF48);
    v93 = v122;
    sub_25F76183C(v92, v122, &qword_27FDAFF48);
    v94 = *(v91 + 48);
    v95 = *(v4 + v94);
    v96 = *(v93 + v94);
    sub_25F760F44(v93, &qword_27FDAFF48);
    result = sub_25F760F44(v4, &qword_27FDAFF48);
    if (v95 < v96)
    {
      break;
    }

    v91 = v123;
LABEL_87:
    v32 = v116 + 1;
    v88 = v118 + v109;
    v90 = v115 - 1;
    a4 = v114 + v109;
    v40 = v112;
    if (v116 + 1 != v112)
    {
      goto LABEL_88;
    }

    v33 = v113;
    a3 = v108;
    v18 = v105;
    if (v112 < v105)
    {
      goto LABEL_126;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v111;
    }

    else
    {
      result = sub_25F75C060(0, *(v111 + 2) + 1, 1, v111);
      v17 = result;
    }

    v4 = *(v17 + 2);
    v41 = *(v17 + 3);
    a4 = v4 + 1;
    if (v4 >= v41 >> 1)
    {
      result = sub_25F75C060((v41 > 1), v4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a4;
    v42 = &v17[16 * v4];
    *(v42 + 4) = v18;
    *(v42 + 5) = v40;
    v43 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    v112 = v40;
    if (v4)
    {
      v44 = v43;
      while (1)
      {
        v45 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v46 = *(v17 + 4);
          v47 = *(v17 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_115;
          }

          v62 = &v17[16 * a4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_118;
          }

          v68 = &v17[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_122;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v17[16 * a4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_117;
        }

        v75 = &v17[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v45 - 1;
        if (v45 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v83 = v17;
        a4 = *&v17[16 * v4 + 32];
        v84 = *&v17[16 * v45 + 40];
        sub_25F76C9E0(*a3 + *(v117 + 72) * a4, *a3 + *(v117 + 72) * *&v17[16 * v45 + 32], *a3 + *(v117 + 72) * v84, v44);
        if (v33)
        {
        }

        if (v84 < a4)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_25F76CF90(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_112;
        }

        v85 = &v83[16 * v4];
        *(v85 + 4) = a4;
        *(v85 + 5) = v84;
        v124 = v83;
        v4 = &v124;
        result = sub_25F76CF04(v45);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v17[16 * a4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_113;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_114;
      }

      v57 = &v17[16 * a4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_116;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_119;
      }

      if (v61 >= v53)
      {
        v79 = &v17[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_123;
        }

        if (v48 < v82)
        {
          v45 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v113 = v33;
    v15 = *(a3 + 8);
    v16 = v112;
    a4 = v106;
    if (v112 >= v15)
    {
      goto LABEL_98;
    }
  }

  if (v119)
  {
    v97 = v120;
    sub_25F760FA4(a4, v120, &qword_27FDAFF48);
    v91 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_25F760FA4(v97, v92, &qword_27FDAFF48);
    v92 += v89;
    a4 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_25F76C7EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_25F76C9E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v29 = a4 + v17;
    }

    else
    {
      v27 = -v13;
      v28 = a4 + v17;
      v29 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = v27;
      do
      {
        v37 = v29;
        v30 = a2 + v27;
        v42 = a2;
        v43 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v37;
            goto LABEL_58;
          }

          v31 = a3;
          v38 = v29;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_25F76183C(v28 + v27, v45, &qword_27FDAFF48);
          v34 = v46;
          sub_25F76183C(v30, v46, &qword_27FDAFF48);
          v35 = *(v47 + 48);
          LODWORD(v44) = *(v33 + v35);
          v36 = *(v34 + v35);
          sub_25F760F44(v34, &qword_27FDAFF48);
          sub_25F760F44(v33, &qword_27FDAFF48);
          if (v44 < v36)
          {
            break;
          }

          v29 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v43;
            v27 = v39;
            a1 = v40;
          }

          else
          {
            v30 = v43;
            v27 = v39;
            a1 = v40;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v42;
          if (v32 <= v41)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v39;
          a1 = v40;
          v29 = v38;
        }

        else
        {
          a2 = v43;
          v27 = v39;
          a1 = v40;
          v29 = v38;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_56:
    v50 = a2;
    v48 = v29;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v45;
        v20 = a2;
        sub_25F76183C(a2, v45, &qword_27FDAFF48);
        v21 = v46;
        sub_25F76183C(a4, v46, &qword_27FDAFF48);
        v22 = *(v47 + 48);
        v23 = *(v19 + v22);
        v24 = *(v21 + v22);
        sub_25F760F44(v21, &qword_27FDAFF48);
        sub_25F760F44(v19, &qword_27FDAFF48);
        if (v23 >= v24)
        {
          v25 = v42;
          v26 = a4 + v42;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_25F76CFA4(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_25F76CF04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F76CF90(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25F76CFA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25F76D094(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Preset(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25F76D178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25F76D228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF48);
  v36 = *(v39 - 8);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v37 = (&v32 - v11);
  v41 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_19:
    v24 = 0;
    a3 = 0;
LABEL_26:
    *a1 = v41;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v13 - 32);
    v34 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v35 = a3;
    while (v17)
    {
      v40 = v20;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v41;
      v27 = *(v41 + 48);
      v28 = v27 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0) - 8) + 72) * v25;
      v29 = v38;
      sub_25F76183C(v28, v38, &qword_27FDAFBB0);
      *(v29 + *(v39 + 48)) = *(*(v26 + 56) + 4 * v25);
      v30 = v29;
      a1 = v37;
      sub_25F760FA4(v30, v37, &qword_27FDAFF48);
      sub_25F760FA4(a1, a2, &qword_27FDAFF48);
      a3 = v35;
      if (v40 == v35)
      {
        goto LABEL_24;
      }

      a2 += *(v36 + 72);
      result = v40;
      v20 = v40 + 1;
      v18 = v24;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v40 = v20;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v31 = v18 + 1;
    }

    else
    {
      v31 = v19;
    }

    v24 = v31 - 1;
    a3 = result;
LABEL_24:
    v15 = v33;
    a1 = v34;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25F76D4E8(uint64_t a1, unint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  existing = 0;
  v2 = IOServiceMatching("IOHIDDevice");
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F824220;
  v5 = MEMORY[0x277D837E0];
  sub_25F8228DC();
  v6 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 65280;
  sub_25F8228DC();
  *(inited + 168) = v6;
  *(inited + 144) = 2;
  v52 = 0x4449726F646E6556;
  v53 = 0xE800000000000000;
  sub_25F8228DC();
  *(inited + 240) = MEMORY[0x277D84CC0];
  *(inited + 216) = 1452;
  sub_25F7C9C9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0008);
  swift_arrayDestroy();
  v7 = sub_25F82228C();

  [(__CFDictionary *)v3 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277CD2890];
  v9 = v3;
  if (IOServiceGetMatchingServices(v8, v9, &existing))
  {
    type metadata accessor for HIDDataStore.Error(0);
    sub_25F769C80();
    v5 = swift_allocError();
    v11 = v10;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_25F82292C();

    v52 = 0xD000000000000023;
    v53 = 0x800000025F82CFD0;
    v12 = [(__CFDictionary *)v9 description];
    v13 = v9;
    v14 = sub_25F82236C();
    v16 = v15;

    MEMORY[0x25F8E7510](v14, v16);

    v17 = v53;
    *v11 = v52;
    v11[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v5;
  }

  v48 = v9;
  v18 = a2;
  while (1)
  {
    v20 = IOIteratorNext(existing);
    if (!v20)
    {
      if (qword_27FDAF828 != -1)
      {
        swift_once();
      }

      v38 = sub_25F8221EC();
      __swift_project_value_buffer(v38, qword_27FDAFEB8);
      v39 = sub_25F8221CC();
      v40 = sub_25F82268C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_25F74E000, v39, v40, "reached the end of the IO Service iterator", v41, 2u);
        MEMORY[0x25F8E88D0](v41, -1, -1);
      }

      type metadata accessor for HIDDataStore.Error(0);
      sub_25F769C80();
      swift_allocError();
      v43 = v42;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_25F82292C();

      v52 = 0xD00000000000002DLL;
      v53 = 0x800000025F82D090;
      MEMORY[0x25F8E7510](a1, v18);
      v44 = v53;
      *v43 = v52;
      v43[1] = v44;
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    }

    v5 = v20;
    if (!HIDDisplayCreatePresetInterfaceWithService())
    {
      type metadata accessor for HIDDataStore.Error(0);
      sub_25F769C80();
      swift_allocError();
      *v45 = 0xD00000000000004ALL;
      *(v45 + 8) = 0x800000025F82D000;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 0;
      swift_storeEnumTagMultiPayload();
LABEL_22:
      swift_willThrow();

      return v5;
    }

    ContainerID = HIDDisplayGetContainerID();
    if (!ContainerID)
    {
      type metadata accessor for HIDDataStore.Error(0);
      sub_25F769C80();
      swift_allocError();
      *v46 = 0xD000000000000038;
      *(v46 + 8) = 0x800000025F82D050;
      *(v46 + 16) = 0u;
      *(v46 + 32) = 0u;
      *(v46 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      swift_unknownObjectRelease();
      return v5;
    }

    v22 = ContainerID;
    v23 = qword_27FDAF828;
    v24 = ContainerID;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_25F8221EC();
    __swift_project_value_buffer(v25, qword_27FDAFEB8);

    v26 = v24;
    v27 = sub_25F8221CC();
    v28 = sub_25F8226AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v29 = 136315650;
      *(v29 + 4) = sub_25F75CA94(a1, a2, &v52);
      *(v29 + 12) = 1024;
      *(v29 + 14) = v5;
      *(v29 + 18) = 2112;
      *(v29 + 20) = v26;
      *v30 = v22;
      v32 = v26;
      _os_log_impl(&dword_25F74E000, v27, v28, "looking for container %s. Found service %u w/ container %@", v29, 0x1Cu);
      sub_25F760F44(v30, &qword_27FDAFF60);
      v33 = v30;
      v18 = a2;
      MEMORY[0x25F8E88D0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x25F8E88D0](v31, -1, -1);
      MEMORY[0x25F8E88D0](v29, -1, -1);
    }

    sub_25F82236C();
    v34 = sub_25F8223FC();
    v36 = v35;

    if (v34 == sub_25F8223FC() && v36 == v37)
    {
      break;
    }

    v19 = sub_25F822CBC();

    swift_unknownObjectRelease();

    if (v19)
    {
      goto LABEL_25;
    }
  }

  swift_unknownObjectRelease();

LABEL_25:
  return v5;
}

unint64_t sub_25F76DC9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25F76DD44(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_25F75BF5C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25F76DC9C(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *sub_25F76DE04(char *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = &result[v10 + 32];
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = &v11[a3];
  v15 = (v10 + 32 + a2);
  if (&v11[a3] != v15 || result >= &v15[v14])
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return memcpy(v11, (a5 + a6), a3);
}

char *sub_25F76DF18(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_25F75BD48(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_25F76DE04(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_25F76E0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F76E160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25F76E1F0(void *a1)
{
  sub_25F764C40();
  if (*(v1 + *a1 + 8) == 1)
  {
    __break(1u);
  }
}

uint64_t sub_25F76E230(uint64_t a1)
{
  v1 = *(a1 + 50);
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F76E244()
{
  result = qword_27FDAFF58;
  if (!qword_27FDAFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAFF58);
  }

  return result;
}

uint64_t sub_25F76E298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F76E300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F76E360(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_25F76E378()
{
  sub_25F76E43C();
  if (v0 <= 0x3F)
  {
    sub_25F76E46C();
    if (v1 <= 0x3F)
    {
      sub_25F76E4E4();
      if (v2 <= 0x3F)
      {
        sub_25F76E578(319, &qword_27FDAFC88, type metadata accessor for Identifier);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25F76E43C()
{
  result = qword_27FDB0028;
  if (!qword_27FDB0028)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27FDB0028);
  }

  return result;
}

void sub_25F76E46C()
{
  if (!qword_27FDB0030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0038);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FDB0030);
    }
  }
}

void sub_25F76E4E4()
{
  if (!qword_27FDB0040)
  {
    v0 = sub_25F76E52C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB0040);
    }
  }
}

unint64_t sub_25F76E52C()
{
  result = qword_27FDB0048;
  if (!qword_27FDB0048)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FDB0048);
  }

  return result;
}

void sub_25F76E578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Preset(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DisplayID.DisplayParametersDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_25F76E658(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t DisplayID.DisplayParametersDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  sub_25F7E2E2C(a1, a2);
  if (v2)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5;
}

uint64_t DisplayID.DisplayParametersDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25F7E2E2C(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return v2;
}

uint64_t DisplayID.DisplayParametersDataBlock.__allocating_init(horizontalImageSize:verticalImageSize:horizontalPixelCount:verticalPixelCount:scanOrientation:luminanceInformation:colorInformation:displayContainsIntegratedSpeakers:primaries:whitePoint:nativeFullScreenLuminance:nativeMaximumLuminance:nativeMinimumLuminance:gamma:nativeColorDepth:displayDeviceTechnology:darkThemePreferred:)(unint64_t a1, unint64_t a2, Swift::Double a3, Swift::Double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ProDisplayLibrary::Chromaticity *a9, Swift::Double *a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, double a21, char a22, int a23, Swift::Bool a24)
{
  v47 = *MEMORY[0x277D85DE8];
  v22 = swift_allocObject();
  v40 = *a9;
  v41 = a9[1];
  x = a9[2].x;
  y = a9[2].y;
  v25 = *a10;
  v26 = a10[1];
  v27 = v22;
  sub_25F821E8C();
  swift_allocObject();
  *&v44.red.x = 0x2000000000;
  *&v44.red.y = sub_25F821E5C();
  sub_25F7BDB2C(&v44, 0);
  v45 = *&v44.red.x;
  v46 = *&v44.red.y | 0x4000000000000000;
  sub_25F821FEC();
  sub_25F821FEC();
  sub_25F821FEC();
  v29 = v45;
  v28 = v46;
  *(v27 + 16) = v45;
  *(v27 + 24) = v28;
  sub_25F76E658(v29, v28);
  DisplayID.DisplayParametersDataBlock.horizontalImageSize(_:)(a3);
  if (v30)
  {
    v31 = v29;
    v32 = v28;
LABEL_5:
    sub_25F76D178(v31, v32);

    return v27;
  }

  DisplayID.DisplayParametersDataBlock.verticalImageSize(_:)(a4);
  if (v33)
  {
    v31 = v29;
    v32 = v28;
    goto LABEL_5;
  }

  if (a1 >> 16)
  {
    v35 = 0x800000025F82D100;
    sub_25F773C1C();
    swift_allocError();
    v37 = 0xD00000000000002ALL;
LABEL_11:
    *v36 = v37;
    *(v36 + 8) = v35;
    *(v36 + 16) = 1;
    swift_willThrow();

    sub_25F76D178(v45, v46);
    return v27;
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  if (a2 >> 16)
  {
    v35 = 0x800000025F82D0D0;
    sub_25F773C1C();
    swift_allocError();
    v37 = 0xD000000000000028;
    goto LABEL_11;
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  sub_25F821FEC();
  swift_endAccess();
  v44.red = v40;
  v44.green = v41;
  v44.blue.x = x;
  v44.blue.y = y;
  DisplayID.DisplayParametersDataBlock.primaries(_:)(&v44);
  v44.red.x = v25;
  v44.red.y = v26;
  DisplayID.DisplayParametersDataBlock.whitePoint(_:)(__PAIR128__(v39, v38));
  if ((a18 & 1) == 0)
  {
    sub_25F7F2044(a17);
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  if ((a20 & 1) == 0)
  {
    sub_25F7F2044(a19);
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  if ((a22 & 1) == 0)
  {
    sub_25F7F2044(a21);
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
  v48.is_nil = a24;
  DisplayID.DisplayParametersDataBlock.gamma(_:)(v48);
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FDC();
  sub_25F821FEC();
  swift_endAccess();
  sub_25F76D178(v29, v28);
  return v27;
}

uint64_t DisplayID.DisplayParametersDataBlock.init(horizontalImageSize:verticalImageSize:horizontalPixelCount:verticalPixelCount:scanOrientation:luminanceInformation:colorInformation:displayContainsIntegratedSpeakers:primaries:whitePoint:nativeFullScreenLuminance:nativeMaximumLuminance:nativeMinimumLuminance:gamma:nativeColorDepth:displayDeviceTechnology:darkThemePreferred:)(unint64_t a1, unint64_t a2, Swift::Double a3, Swift::Double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ProDisplayLibrary::Chromaticity *a9, Swift::Double *a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, double a21, char a22, int a23, Swift::Bool a24)
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = *a9;
  v40 = a9[1];
  x = a9[2].x;
  y = a9[2].y;
  v23 = *a10;
  v24 = a10[1];
  sub_25F821E8C();
  swift_allocObject();
  *&v43.red.x = 0x2000000000;
  *&v43.red.y = sub_25F821E5C();
  sub_25F7BDB2C(&v43, 0);
  v44 = v43.red.x;
  v45 = *&v43.red.y | 0x4000000000000000;
  sub_25F821FEC();
  sub_25F821FEC();
  sub_25F821FEC();
  v26 = *&v44;
  v25 = v45;
  *(v18 + 16) = v44;
  *(v18 + 24) = v25;
  sub_25F76E658(v26, v25);
  DisplayID.DisplayParametersDataBlock.horizontalImageSize(_:)(a3);
  if (!v27)
  {
    v38 = v25;
    DisplayID.DisplayParametersDataBlock.verticalImageSize(_:)(a4);
    v28 = v18;
    if (v29)
    {
      sub_25F76D178(v26, v38);

      return v28;
    }

    if (a1 < 0x10000)
    {
      swift_beginAccess();
      sub_25F821FAC();
      swift_endAccess();
      if (a2 < 0x10000)
      {
        swift_beginAccess();
        sub_25F821FAC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FEC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FEC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FEC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        sub_25F821FEC();
        swift_endAccess();
        v43.red = v39;
        v43.green = v40;
        v43.blue.x = x;
        v43.blue.y = y;
        DisplayID.DisplayParametersDataBlock.primaries(_:)(&v43);
        v43.red.x = v23;
        v43.red.y = v24;
        DisplayID.DisplayParametersDataBlock.whitePoint(_:)(__PAIR128__(v36, v35));
        if ((a18 & 1) == 0)
        {
          sub_25F7F2044(a17);
        }

        swift_beginAccess();
        sub_25F821FAC();
        swift_endAccess();
        if ((a20 & 1) == 0)
        {
          sub_25F7F2044(a19);
        }

        swift_beginAccess();
        sub_25F821FAC();
        swift_endAccess();
        if ((a22 & 1) == 0)
        {
          sub_25F7F2044(a21);
        }

        swift_beginAccess();
        sub_25F821FAC();
        swift_endAccess();
        v47.is_nil = a24;
        DisplayID.DisplayParametersDataBlock.gamma(_:)(v47);
        swift_beginAccess();
        sub_25F821FDC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FEC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FEC();
        swift_endAccess();
        swift_beginAccess();
        sub_25F821FDC();
        sub_25F821FEC();
        swift_endAccess();
        v33 = v26;
        v34 = v38;
        goto LABEL_17;
      }

      v30 = 0x800000025F82D0D0;
      sub_25F773C1C();
      swift_allocError();
      v32 = 0xD000000000000028;
    }

    else
    {
      v30 = 0x800000025F82D100;
      sub_25F773C1C();
      swift_allocError();
      v32 = 0xD00000000000002ALL;
    }

    *v31 = v32;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    swift_willThrow();

    v33 = *&v44;
    v34 = v45;
LABEL_17:
    sub_25F76D178(v33, v34);
    return v28;
  }

  sub_25F76D178(v26, v25);

  return v18;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.DisplayParametersDataBlock.horizontalImageSize(_:)(Swift::Double a1)
{
  if (a1 < 0.1 || a1 > 6553.5)
  {
    sub_25F773C1C();
    swift_allocError();
    *v2 = 0xD000000000000035;
    *(v2 + 8) = 0x800000025F82D130;
    *(v2 + 16) = 1;
    swift_willThrow();
    return;
  }

  v3 = round(a1 * 10.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v3 >= 65536.0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.DisplayParametersDataBlock.verticalImageSize(_:)(Swift::Double a1)
{
  if (a1 < 0.1 || a1 > 6553.5)
  {
    sub_25F773C1C();
    swift_allocError();
    *v2 = 0xD000000000000033;
    *(v2 + 8) = 0x800000025F82D170;
    *(v2 + 16) = 1;
    swift_willThrow();
    return;
  }

  v3 = round(a1 * 10.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v3 >= 65536.0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_25F821FAC();
  swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.DisplayParametersDataBlock.horizontalPixelCount(_:)(Swift::UInt a1)
{
  if (a1 >> 16)
  {
    sub_25F773C1C();
    swift_allocError();
    *v1 = 0xD00000000000002ALL;
    *(v1 + 8) = 0x800000025F82D100;
    *(v1 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.DisplayParametersDataBlock.verticalPixelCount(_:)(Swift::UInt a1)
{
  if (a1 >> 16)
  {
    sub_25F773C1C();
    swift_allocError();
    *v1 = 0xD000000000000028;
    *(v1 + 8) = 0x800000025F82D0D0;
    *(v1 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
  }
}

uint64_t DisplayID.DisplayParametersDataBlock.luminanceInformation(_:)()
{
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  return swift_endAccess();
}

uint64_t DisplayID.DisplayParametersDataBlock.colorInformation(_:)()
{
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  return swift_endAccess();
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.displayContainsIntegratedSpeakers(_:)(Swift::Bool a1)
{
  swift_beginAccess();
  sub_25F821FDC();
  sub_25F821FEC();
  swift_endAccess();
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.primaries(_:)(ProDisplayLibrary::Primaries *a1)
{
  y = a1->red.y;
  x = a1->green.x;
  v2 = a1->green.y;
  v5 = a1->blue.x;
  v4 = a1->blue.y;
  sub_25F772F7C(0, 12, v12, a1->red.x);
  if (v13)
  {
    goto LABEL_20;
  }

  v6 = v12[0];
  sub_25F772F7C(0, 12, v12, y);
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v12[0];
  sub_25F772F7C(0, 12, v12, x);
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v12[0];
  sub_25F772F7C(0, 12, v12, v2);
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v12[0];
  sub_25F772F7C(0, 12, v12, v5);
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = v12[0];
  sub_25F772F7C(0, 12, v12, v4);
  if ((v13 & 1) == 0)
  {
    v11 = v12[0];
    swift_beginAccess();
    sub_25F821FEC();
    if (v6 >> 16)
    {
      __break(1u);
    }

    else
    {
      sub_25F821FEC();
      if (v7 <= 0xFFF)
      {
        sub_25F821FEC();
        sub_25F821FEC();
        if (!(v8 >> 16))
        {
          sub_25F821FEC();
          if (v9 <= 0xFFF)
          {
            sub_25F821FEC();
            sub_25F821FEC();
            if (!(v10 >> 16))
            {
              sub_25F821FEC();
              if (v11 <= 0xFFF)
              {
                sub_25F821FEC();
                swift_endAccess();
                return;
              }

              goto LABEL_19;
            }

LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.whitePoint(_:)(ProDisplayLibrary::Chromaticity a1)
{
  v2 = v1[1];
  sub_25F772F7C(0, 12, v5, *v1);
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v5[0];
  sub_25F772F7C(0, 12, v5, v2);
  if ((v6 & 1) == 0)
  {
    v4 = v5[0];
    swift_beginAccess();
    sub_25F821FEC();
    if (v3 >> 16)
    {
      __break(1u);
    }

    else
    {
      sub_25F821FEC();
      if (v4 <= 0xFFF)
      {
        sub_25F821FEC();
        swift_endAccess();
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.nativeFullScreenLuminance(_:)(Swift::Double_optional a1)
{

  sub_25F770070(*&a1.is_nil, v1);
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.nativeMaximumLuminance(_:)(Swift::Double_optional a1)
{

  sub_25F770070(*&a1.is_nil, v1);
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.minimumLuminance(_:)(Swift::Double_optional a1)
{

  sub_25F770070(*&a1.is_nil, v1);
}

uint64_t sub_25F770070(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_25F7F2044(*&a1);
  }

  swift_beginAccess();
  sub_25F821FAC();
  return swift_endAccess();
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.gamma(_:)(Swift::Double_optional a1)
{
  if (v1)
  {
    goto LABEL_5;
  }

  v2 = round(*&a1.is_nil * 100.0 + -100.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 < 256.0)
  {
LABEL_5:
    swift_beginAccess();
    sub_25F821FEC();
    swift_endAccess();
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_25F7701F8()
{
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  return swift_endAccess();
}

uint64_t DisplayID.DisplayParametersDataBlock.displayDeviceTechnology(_:)()
{
  swift_beginAccess();
  sub_25F821FDC();
  swift_endAccess();
  swift_beginAccess();
  sub_25F821FEC();
  return swift_endAccess();
}

Swift::Void __swiftcall DisplayID.DisplayParametersDataBlock.darkThemePreferred(_:)(Swift::Bool a1)
{
  swift_beginAccess();
  sub_25F821FDC();
  sub_25F821FEC();
  swift_endAccess();
}

uint64_t DisplayID.DisplayParametersDataBlock.hierarchicalDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F77193C(sub_25F7E56A0);
  v5 = MEMORY[0x277D84F90];
  sub_25F802E24(v4, v6, MEMORY[0x277D84F90], a1);
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000017, 0x800000025F82D1B0);
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  sub_25F76E658(*(v2 + 16), v8);
  v9 = sub_25F82205C();
  v11 = v10;
  sub_25F76D178(v7, v8);
  sub_25F7FF968(0, v9, v11, v12);
  sub_25F76D178(v9, v11);
  sub_25F8225FC();
  MEMORY[0x25F8E7510](7171360, 0xE300000000000000);
  sub_25F802E24(0, 0xE000000000000000, v5, &v197);
  x = v197.red.x;
  v179 = *&v197.red.y;
  v14 = a1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F75C38C(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F75C38C((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  *(v17 + 4) = x;
  *(v17 + 40) = v179;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000015, 0x800000025F82D1D0);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  sub_25F76E658(v18, v19);
  v20 = sub_25F82205C();
  v22 = v21;
  sub_25F76D178(v18, v19);
  sub_25F7FF968(0, v20, v22, v23);
  sub_25F76D178(v20, v22);
  sub_25F8225FC();
  MEMORY[0x25F8E7510](7171360, 0xE300000000000000);
  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v24 = v197.red.x;
  v25 = *&v197.red.y;
  v27 = *(v14 + 2);
  v26 = *(v14 + 3);
  if (v27 >= v26 >> 1)
  {
    v180 = *&v197.red.y;
    v164 = sub_25F75C38C((v26 > 1), v27 + 1, 1, v14);
    v25 = v180;
    v14 = v164;
  }

  *(v14 + 2) = v27 + 1;
  v28 = &v14[24 * v27];
  *(v28 + 4) = v24;
  *(v28 + 40) = v25;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D1F0;
  v29 = *(v2 + 16);
  v30 = *(v2 + 24);
  sub_25F76E658(v29, v30);
  v31 = sub_25F82205C();
  v33 = v32;
  sub_25F76D178(v29, v30);
  v34 = sub_25F7FFA4C(0, v31, v33);
  sub_25F76D178(v31, v33);
  *&v196.red.x = v34;
  v35 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v35);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v36 = v197.red.x;
  v37 = *&v197.red.y;
  v39 = *(v14 + 2);
  v38 = *(v14 + 3);
  if (v39 >= v38 >> 1)
  {
    v181 = *&v197.red.y;
    v165 = sub_25F75C38C((v38 > 1), v39 + 1, 1, v14);
    v37 = v181;
    v14 = v165;
  }

  *(v14 + 2) = v39 + 1;
  v40 = &v14[24 * v39];
  *(v40 + 4) = v36;
  *(v40 + 40) = v37;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D210;
  v41 = *(v2 + 16);
  v42 = *(v2 + 24);
  sub_25F76E658(v41, v42);
  v43 = sub_25F82205C();
  v45 = v44;
  sub_25F76D178(v41, v42);
  v46 = sub_25F7FFA4C(0, v43, v45);
  sub_25F76D178(v43, v45);
  *&v196.red.x = v46;
  v47 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v47);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v48 = v197.red.x;
  v49 = *&v197.red.y;
  v51 = *(v14 + 2);
  v50 = *(v14 + 3);
  if (v51 >= v50 >> 1)
  {
    v182 = *&v197.red.y;
    v166 = sub_25F75C38C((v50 > 1), v51 + 1, 1, v14);
    v49 = v182;
    v14 = v166;
  }

  *(v14 + 2) = v51 + 1;
  v52 = &v14[24 * v51];
  *(v52 + 4) = v48;
  *(v52 + 40) = v49;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D230;

  DisplayID.DisplayParametersDataBlock.scanOrientation()(&v196);
  x_low = LOBYTE(v196.red.x);
  v196.red.x = 0.0;
  v196.red.y = -2.68156159e154;
  LOBYTE(v198) = x_low;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](*&v196.red.x, *&v196.red.y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v54 = v197.red.x;
  v55 = *&v197.red.y;
  v57 = *(v14 + 2);
  v56 = *(v14 + 3);
  if (v57 >= v56 >> 1)
  {
    v183 = *&v197.red.y;
    v167 = sub_25F75C38C((v56 > 1), v57 + 1, 1, v14);
    v55 = v183;
    v14 = v167;
  }

  *(v14 + 2) = v57 + 1;
  v58 = &v14[24 * v57];
  *(v58 + 4) = v54;
  *(v58 + 40) = v55;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D250;

  DisplayID.DisplayParametersDataBlock.luminanceInformation()(&v196);
  v59 = LOBYTE(v196.red.x);
  v196.red.x = 0.0;
  v196.red.y = -2.68156159e154;
  LOBYTE(v198) = v59;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](*&v196.red.x, *&v196.red.y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v60 = v197.red.x;
  v61 = *&v197.red.y;
  v63 = *(v14 + 2);
  v62 = *(v14 + 3);
  if (v63 >= v62 >> 1)
  {
    v184 = *&v197.red.y;
    v168 = sub_25F75C38C((v62 > 1), v63 + 1, 1, v14);
    v61 = v184;
    v14 = v168;
  }

  *(v14 + 2) = v63 + 1;
  v64 = &v14[24 * v63];
  *(v64 + 4) = v60;
  *(v64 + 40) = v61;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D270;

  DisplayID.DisplayParametersDataBlock.colorInformation()(&v196);
  v65 = LOBYTE(v196.red.x);
  v196.red.x = 0.0;
  v196.red.y = -2.68156159e154;
  LOBYTE(v198) = v65;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](*&v196.red.x, *&v196.red.y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v66 = v197.red.x;
  v67 = *&v197.red.y;
  v69 = *(v14 + 2);
  v68 = *(v14 + 3);
  if (v69 >= v68 >> 1)
  {
    v185 = *&v197.red.y;
    v169 = sub_25F75C38C((v68 > 1), v69 + 1, 1, v14);
    v67 = v185;
    v14 = v169;
  }

  *(v14 + 2) = v69 + 1;
  v70 = &v14[24 * v69];
  *(v70 + 4) = v66;
  *(v70 + 40) = v67;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v196.red.x = -2.31584178e77;
  *&v196.red.y = 0x800000025F82D290;
  swift_beginAccess();
  v71 = sub_25F821FDC();
  swift_endAccess();
  if (v71 < 0)
  {
    v72 = 0x65736C6166;
  }

  else
  {
    v72 = 1702195828;
  }

  if (v71 < 0)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  MEMORY[0x25F8E7510](v72, v73);

  sub_25F802E24(*&v196.red.x, *&v196.red.y, MEMORY[0x277D84F90], &v197);
  v74 = v197.red.x;
  v75 = *&v197.red.y;
  v77 = *(v14 + 2);
  v76 = *(v14 + 3);
  if (v77 >= v76 >> 1)
  {
    v186 = *&v197.red.y;
    v170 = sub_25F75C38C((v76 > 1), v77 + 1, 1, v14);
    v75 = v186;
    v14 = v170;
  }

  *(v14 + 2) = v77 + 1;
  v78 = &v14[24 * v77];
  *(v78 + 4) = v74;
  *(v78 + 40) = v75;
  a1[2] = v14;
  v198 = 3.29974654e180;
  v199 = 0xEB00000000203A73;
  DisplayID.DisplayParametersDataBlock.primaries()(&v197);
  v196 = v197;
  v79 = Primaries.description.getter();
  MEMORY[0x25F8E7510](v79);

  sub_25F802E24(*&v198, v199, MEMORY[0x277D84F90], &v197);
  v80 = v197.red.x;
  v81 = *&v197.red.y;
  v83 = *(v14 + 2);
  v82 = *(v14 + 3);
  if (v83 >= v82 >> 1)
  {
    v187 = *&v197.red.y;
    v171 = sub_25F75C38C((v82 > 1), v83 + 1, 1, v14);
    v81 = v187;
    v14 = v171;
  }

  *(v14 + 2) = v83 + 1;
  v84 = &v14[24 * v83];
  *(v84 + 4) = v80;
  *(v84 + 40) = v81;
  a1[2] = v14;
  strcpy(&v197, "White Point: ");
  HIWORD(v197.red.y) = -4864;
  DisplayID.DisplayParametersDataBlock.whitePoint()();
  red = v196.red;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_25F824480;
  v87 = MEMORY[0x277D839F8];
  v88 = MEMORY[0x277D83A80];
  *(v86 + 56) = MEMORY[0x277D839F8];
  *(v86 + 64) = v88;
  *(v86 + 32) = red.x;
  *(v86 + 96) = v87;
  *(v86 + 104) = v88;
  *(v86 + 72) = red.y;
  v89 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v89);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v90 = v197.red.x;
  v91 = *&v197.red.y;
  v93 = *(v14 + 2);
  v92 = *(v14 + 3);
  if (v93 >= v92 >> 1)
  {
    v188 = *&v197.red.y;
    v172 = sub_25F75C38C((v92 > 1), v93 + 1, 1, v14);
    v91 = v188;
    v14 = v172;
  }

  *(v14 + 2) = v93 + 1;
  v94 = &v14[24 * v93];
  *(v94 + 4) = v90;
  *(v94 + 40) = v91;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D2C0;
  v95 = *(v2 + 16);
  v96 = *(v2 + 24);

  sub_25F76E658(v95, v96);
  v97 = sub_25F82205C();
  v99 = v98;
  sub_25F76D178(v95, v96);
  sub_25F7FFA98(0, v97, v99);
  LOBYTE(v96) = v100;
  sub_25F76D178(v97, v99);
  if (v96)
  {

    y = -4.94660803e173;
    v102 = 1701736270;
  }

  else
  {
    v196.red.x = 0.0;
    v196.red.y = -2.68156159e154;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    y = v196.red.y;
    v102 = *&v196.red.x;
  }

  MEMORY[0x25F8E7510](v102, *&y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v103 = v197.red.x;
  v104 = *&v197.red.y;
  v106 = *(v14 + 2);
  v105 = *(v14 + 3);
  if (v106 >= v105 >> 1)
  {
    v189 = *&v197.red.y;
    v173 = sub_25F75C38C((v105 > 1), v106 + 1, 1, v14);
    v104 = v189;
    v14 = v173;
  }

  *(v14 + 2) = v106 + 1;
  v107 = &v14[24 * v106];
  *(v107 + 4) = v103;
  *(v107 + 40) = v104;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D2E0;
  v108 = *(v2 + 16);
  v109 = *(v2 + 24);

  sub_25F76E658(v108, v109);
  v110 = sub_25F82205C();
  v112 = v111;
  sub_25F76D178(v108, v109);
  sub_25F7FFA98(0, v110, v112);
  LOBYTE(v109) = v113;
  sub_25F76D178(v110, v112);
  if (v109)
  {

    v114 = -4.94660803e173;
    v115 = 1701736270;
  }

  else
  {
    v196.red.x = 0.0;
    v196.red.y = -2.68156159e154;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    v114 = v196.red.y;
    v115 = *&v196.red.x;
  }

  MEMORY[0x25F8E7510](v115, *&v114);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v116 = v197.red.x;
  v117 = *&v197.red.y;
  v119 = *(v14 + 2);
  v118 = *(v14 + 3);
  if (v119 >= v118 >> 1)
  {
    v190 = *&v197.red.y;
    v174 = sub_25F75C38C((v118 > 1), v119 + 1, 1, v14);
    v117 = v190;
    v14 = v174;
  }

  *(v14 + 2) = v119 + 1;
  v120 = &v14[24 * v119];
  *(v120 + 4) = v116;
  *(v120 + 40) = v117;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D300;
  v121 = *(v2 + 16);
  v122 = *(v2 + 24);

  sub_25F76E658(v121, v122);
  v123 = sub_25F82205C();
  v125 = v124;
  sub_25F76D178(v121, v122);
  sub_25F7FFA98(0, v123, v125);
  LOBYTE(v122) = v126;
  sub_25F76D178(v123, v125);
  if (v122)
  {

    v127 = -4.94660803e173;
    v128 = 1701736270;
  }

  else
  {
    v196.red.x = 0.0;
    v196.red.y = -2.68156159e154;
    sub_25F8225FC();
    MEMORY[0x25F8E7510](0x7374696E20, 0xE500000000000000);

    v127 = v196.red.y;
    v128 = *&v196.red.x;
  }

  MEMORY[0x25F8E7510](v128, *&v127);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v129 = v197.red.x;
  v130 = *&v197.red.y;
  v132 = *(v14 + 2);
  v131 = *(v14 + 3);
  if (v132 >= v131 >> 1)
  {
    v191 = *&v197.red.y;
    v175 = sub_25F75C38C((v131 > 1), v132 + 1, 1, v14);
    v130 = v191;
    v14 = v175;
  }

  *(v14 + 2) = v132 + 1;
  v133 = &v14[24 * v132];
  *(v133 + 4) = v129;
  *(v133 + 40) = v130;
  a1[2] = v14;
  v196.red.x = 4.51357599e-308;
  v196.red.y = -1.39234638e188;
  swift_beginAccess();

  v134 = ~sub_25F821FDC();
  swift_endAccess();
  if (v134)
  {
    swift_beginAccess();
    v135 = sub_25F821FDC();
    swift_endAccess();
    v197.red.x = 0.0;
    v197.red.y = -2.68156159e154;
    v198 = (v135 + 100.0) / 100.0;
    sub_25F8229FC();

    v136 = *&v197.red.x;
    v137 = v197.red.y;
  }

  else
  {

    v137 = -4.94660803e173;
    v136 = 1701736270;
  }

  MEMORY[0x25F8E7510](v136, *&v137);

  sub_25F802E24(*&v196.red.x, *&v196.red.y, MEMORY[0x277D84F90], &v197);
  v138 = v197.red.x;
  v139 = *&v197.red.y;
  v141 = *(v14 + 2);
  v140 = *(v14 + 3);
  if (v141 >= v140 >> 1)
  {
    v192 = *&v197.red.y;
    v176 = sub_25F75C38C((v140 > 1), v141 + 1, 1, v14);
    v139 = v192;
    v14 = v176;
  }

  *(v14 + 2) = v141 + 1;
  v142 = &v14[24 * v141];
  *(v142 + 4) = v138;
  *(v142 + 40) = v139;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D320;

  DisplayID.DisplayParametersDataBlock.nativeColorDepth()(&v196);
  v143 = LOBYTE(v196.red.x);
  v196.red.x = 0.0;
  v196.red.y = -2.68156159e154;
  LOBYTE(v198) = v143;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](*&v196.red.x, *&v196.red.y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v144 = v197.red.x;
  v145 = *&v197.red.y;
  v147 = *(v14 + 2);
  v146 = *(v14 + 3);
  if (v147 >= v146 >> 1)
  {
    v193 = *&v197.red.y;
    v177 = sub_25F75C38C((v146 > 1), v147 + 1, 1, v14);
    v145 = v193;
    v14 = v177;
  }

  *(v14 + 2) = v147 + 1;
  v148 = &v14[24 * v147];
  *(v148 + 4) = v144;
  *(v148 + 40) = v145;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v197.red.x = -2.31584178e77;
  *&v197.red.y = 0x800000025F82D340;

  DisplayID.DisplayParametersDataBlock.displayDeviceTechnology()(&v196);
  v149 = LOBYTE(v196.red.x);
  v196.red.x = 0.0;
  v196.red.y = -2.68156159e154;
  LOBYTE(v198) = v149;
  sub_25F8229FC();

  MEMORY[0x25F8E7510](*&v196.red.x, *&v196.red.y);

  sub_25F802E24(*&v197.red.x, *&v197.red.y, MEMORY[0x277D84F90], &v197);
  v150 = v197.red.x;
  v151 = *&v197.red.y;
  v153 = *(v14 + 2);
  v152 = *(v14 + 3);
  if (v153 >= v152 >> 1)
  {
    v194 = *&v197.red.y;
    v178 = sub_25F75C38C((v152 > 1), v153 + 1, 1, v14);
    v151 = v194;
    v14 = v178;
  }

  *(v14 + 2) = v153 + 1;
  v154 = &v14[24 * v153];
  *(v154 + 4) = v150;
  *(v154 + 40) = v151;
  a1[2] = v14;
  v197.red.x = 0.0;
  v197.red.y = -2.68156159e154;
  sub_25F82292C();

  v196.red.x = -2.31584178e77;
  *&v196.red.y = 0x800000025F82D360;
  swift_beginAccess();
  v155 = sub_25F821FDC();
  swift_endAccess();
  if (v155 < 0)
  {
    v156 = 1702195828;
  }

  else
  {
    v156 = 0x65736C6166;
  }

  if (v155 < 0)
  {
    v157 = 0xE400000000000000;
  }

  else
  {
    v157 = 0xE500000000000000;
  }

  MEMORY[0x25F8E7510](v156, v157);

  result = sub_25F802E24(*&v196.red.x, *&v196.red.y, MEMORY[0x277D84F90], &v197);
  v159 = v197.red.x;
  v160 = *&v197.red.y;
  v162 = *(v14 + 2);
  v161 = *(v14 + 3);
  if (v162 >= v161 >> 1)
  {
    v195 = *&v197.red.y;
    result = sub_25F75C38C((v161 > 1), v162 + 1, 1, v14);
    v160 = v195;
    v14 = result;
  }

  *(v14 + 2) = v162 + 1;
  v163 = &v14[24 * v162];
  *(v163 + 4) = v159;
  *(v163 + 40) = v160;
  a1[2] = v14;
  return result;
}

uint64_t sub_25F77193C(void (*a1)(void *__return_ptr))
{
  v2 = v1;
  v15 = 0;
  v16 = 0xE000000000000000;
  a1(v14);
  if (LOBYTE(v14[0]) > 2u)
  {
    if (LOBYTE(v14[0]) == 3)
    {
      v6 = 0xEC00000044492072;
      v5 = 0x656E6961746E6F43;
    }

    else if (LOBYTE(v14[0]) == 4)
    {
      v6 = 0x800000025F82D490;
      v5 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x800000025F82D470;
      v5 = 0xD000000000000017;
    }
  }

  else
  {
    v3 = 0x800000025F82D4D0;
    v4 = 0xD000000000000012;
    if (LOBYTE(v14[0]) != 1)
    {
      v4 = 0xD000000000000016;
      v3 = 0x800000025F82D4B0;
    }

    if (LOBYTE(v14[0]))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (LOBYTE(v14[0]))
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000025F82D4F0;
    }
  }

  MEMORY[0x25F8E7510](v5, v6);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  swift_beginAccess();
  v8 = *(v1 + 16);
  v7 = *(v2 + 24);
  sub_25F76E658(v8, v7);
  sub_25F821FDC();
  sub_25F76D178(v8, v7);
  sub_25F773C70();
  v9 = sub_25F8224AC();
  v11 = v10;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_25F82249C();
    MEMORY[0x25F8E7510](v13);

    MEMORY[0x25F8E7510](v9, v11);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    return v15;
  }

  return result;
}

double sub_25F771BD0(uint64_t a1, uint64_t a2, double (*a3)(void, uint64_t, unint64_t))
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_25F76E658(v6, v5);
  v7 = sub_25F82205C();
  v9 = v8;
  sub_25F76D178(v6, v5);
  v10 = a3(0, v7, v9);
  sub_25F76D178(v7, v9);
  return v10;
}

uint64_t sub_25F771CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t))
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_25F76E658(v6, v5);
  v7 = sub_25F82205C();
  v9 = v8;
  sub_25F76D178(v6, v5);
  v10 = a3(0, v7, v9);
  sub_25F76D178(v7, v9);
  return v10;
}

uint64_t DisplayID.DisplayParametersDataBlock.scanOrientation()@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  swift_endAccess();
  result = DisplayID.DisplayParametersDataBlock.ScanOrientation.init(rawValue:)(v2 & 7, &v11);
  if (v11 == 8)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_25F82292C();
    LOBYTE(v11) = v2 & 7;
    sub_25F773C70();
    v4 = sub_25F8224AC();
    v6 = v5;
    result = sub_25F82243C();
    if (__OFSUB__(2, result))
    {
      __break(1u);
    }

    else
    {
      v7 = sub_25F82249C();
      v11 = 30768;
      v12 = 0xE200000000000000;
      MEMORY[0x25F8E7510](v7);

      MEMORY[0x25F8E7510](v4, v6);

      MEMORY[0x25F8E7510](0xD00000000000001FLL, 0x800000025F82D380);
      v8 = v11;
      v9 = v12;
      sub_25F773C1C();
      swift_allocError();
      *v10 = v8;
      *(v10 + 8) = v9;
      *(v10 + 16) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    *a1 = v11;
  }

  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.luminanceInformation()@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  result = swift_endAccess();
  v4 = (v2 >> 3) & 3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:
    *a1 = v5;
    return result;
  }

  sub_25F82292C();
  sub_25F773C70();
  v6 = sub_25F8224AC();
  v8 = v7;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_25F82249C();
    MEMORY[0x25F8E7510](v9);

    MEMORY[0x25F8E7510](v6, v8);

    MEMORY[0x25F8E7510](0xD000000000000024, 0x800000025F82D3A0);
    sub_25F773C1C();
    swift_allocError();
    *v10 = 30768;
    *(v10 + 8) = 0xE200000000000000;
    *(v10 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.colorInformation()@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  result = swift_endAccess();
  *a1 = (v2 & 0x40) != 0;
  return result;
}

Swift::Bool __swiftcall DisplayID.DisplayParametersDataBlock.displayContainsIntegratedSpeakers()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  return (v0 & 0x80) == 0;
}

void __swiftcall DisplayID.DisplayParametersDataBlock.primaries()(ProDisplayLibrary::Primaries *__return_ptr retstr)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_25F76E658(v3, v4);
  v5 = sub_25F82205C();
  v7 = v6;
  sub_25F76D178(v3, v4);
  v38 = sub_25F7FF9B4(0, v5, v7);
  sub_25F76D178(v5, v7);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_25F76E658(v8, v9);
  v10 = sub_25F82205C();
  v12 = v11;
  sub_25F76D178(v8, v9);
  v13 = sub_25F7FFA00(0, v10, v12);
  sub_25F76D178(v10, v12);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  sub_25F76E658(v14, v15);
  v16 = sub_25F82205C();
  v18 = v17;
  sub_25F76D178(v14, v15);
  v19 = sub_25F7FF9B4(0, v16, v18);
  sub_25F76D178(v16, v18);
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  sub_25F76E658(v20, v21);
  v22 = sub_25F82205C();
  v24 = v23;
  sub_25F76D178(v20, v21);
  v25 = sub_25F7FFA00(0, v22, v24);
  sub_25F76D178(v22, v24);
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  sub_25F76E658(v26, v27);
  v28 = sub_25F82205C();
  v30 = v29;
  sub_25F76D178(v26, v27);
  v31 = sub_25F7FF9B4(0, v28, v30);
  sub_25F76D178(v28, v30);
  v33 = *(v1 + 16);
  v32 = *(v1 + 24);
  sub_25F76E658(v33, v32);
  v34 = sub_25F82205C();
  v36 = v35;
  sub_25F76D178(v33, v32);
  v37 = sub_25F7FFA00(0, v34, v36);
  sub_25F76D178(v34, v36);
  if (v38 > 0xFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 > 0xFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 > 0xFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 > 0xFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v31 > 0xFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v37 <= 0xFFF)
  {
    retstr->red.x = vcvtd_n_f64_u64(v38, 0xCuLL);
    retstr->red.y = vcvtd_n_f64_u64(v13, 0xCuLL);
    retstr->green.x = vcvtd_n_f64_u64(v19, 0xCuLL);
    retstr->green.y = vcvtd_n_f64_u64(v25, 0xCuLL);
    retstr->blue.x = vcvtd_n_f64_u64(v31, 0xCuLL);
    retstr->blue.y = vcvtd_n_f64_u64(v37, 0xCuLL);
    return;
  }

LABEL_13:
  __break(1u);
}

ProDisplayLibrary::Chromaticity __swiftcall DisplayID.DisplayParametersDataBlock.whitePoint()()
{
  v2 = v0;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_25F76E658(v3, v4);
  v5 = sub_25F82205C();
  v7 = v6;
  sub_25F76D178(v3, v4);
  v8 = sub_25F7FF9B4(0, v5, v7);
  sub_25F76D178(v5, v7);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_25F76E658(v10, v9);
  v11 = sub_25F82205C();
  v13 = v12;
  sub_25F76D178(v10, v9);
  v14 = sub_25F7FFA00(0, v11, v13);
  sub_25F76D178(v11, v13);
  if (v8 > 0xFFF)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v14 > 0xFFF)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v15 = vcvtd_n_f64_u64(v8, 0xCuLL);
  v16 = vcvtd_n_f64_u64(v14, 0xCuLL);
  *v2 = v15;
  v2[1] = v16;
LABEL_6:
  result.y = v16;
  result.x = v15;
  return result;
}

Swift::Double_optional __swiftcall DisplayID.DisplayParametersDataBlock.nativeFullScreenLuminance()()
{
  v0 = sub_25F772608(24, 26, sub_25F7FFA98);
  result.value = v1;
  result.is_nil = v0;
  return result;
}

Swift::Double_optional __swiftcall DisplayID.DisplayParametersDataBlock.nativeMaximumLuminance()()
{
  v0 = sub_25F772608(26, 28, sub_25F7FFA98);
  result.value = v1;
  result.is_nil = v0;
  return result;
}

Swift::Double_optional __swiftcall DisplayID.DisplayParametersDataBlock.nativeMinimumLuminance()()
{
  v0 = sub_25F772608(28, 30, sub_25F7FFA98);
  result.value = v1;
  result.is_nil = v0;
  return result;
}

uint64_t sub_25F772608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t))
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_25F76E658(v6, v5);
  v7 = sub_25F82205C();
  v9 = v8;
  sub_25F76D178(v6, v5);
  v10 = a3(0, v7, v9);
  sub_25F76D178(v7, v9);
  return v10;
}

Swift::Double_optional __swiftcall DisplayID.DisplayParametersDataBlock.gamma()()
{
  swift_beginAccess();
  v0 = ~sub_25F821FDC();
  swift_endAccess();
  if (v0)
  {
    swift_beginAccess();
    v2 = sub_25F821FDC();
    swift_endAccess();
    v1 = (v2 + 100.0) / 100.0;
    *&v3 = v1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  result.value = v1;
  result.is_nil = v3;
  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.nativeColorDepth()@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  result = swift_endAccess();
  if ((v2 & 7u) >= 6)
  {
    sub_25F82292C();
    sub_25F773C70();
    v4 = sub_25F8224AC();
    v6 = v5;
    result = sub_25F82243C();
    if (__OFSUB__(2, result))
    {
      __break(1u);
    }

    else
    {
      v7 = sub_25F82249C();
      MEMORY[0x25F8E7510](v7);

      MEMORY[0x25F8E7510](v4, v6);

      MEMORY[0x25F8E7510](0xD000000000000021, 0x800000025F82D3D0);
      sub_25F773C1C();
      swift_allocError();
      *v8 = 30768;
      *(v8 + 8) = 0xE200000000000000;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    *a1 = v2 & 7;
  }

  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.displayDeviceTechnology()@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_25F821FDC();
  result = swift_endAccess();
  v4 = (v2 >> 4) & 3;
  if (v4 == 3)
  {
    sub_25F82292C();
    sub_25F773C70();
    v5 = sub_25F8224AC();
    v7 = v6;
    result = sub_25F82243C();
    if (__OFSUB__(2, result))
    {
      __break(1u);
    }

    else
    {
      v8 = sub_25F82249C();
      MEMORY[0x25F8E7510](v8);

      MEMORY[0x25F8E7510](v5, v7);

      MEMORY[0x25F8E7510](0xD000000000000028, 0x800000025F82D400);
      sub_25F773C1C();
      swift_allocError();
      *v9 = 30768;
      *(v9 + 8) = 0xE200000000000000;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

Swift::Bool __swiftcall DisplayID.DisplayParametersDataBlock.darkThemePreferred()()
{
  swift_beginAccess();
  v0 = sub_25F821FDC();
  swift_endAccess();
  return (v0 >> 7) & 1;
}

uint64_t DisplayID.DisplayParametersDataBlock.ScanOrientation.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xF8) != 0)
  {
    v2 = 8;
  }

  *a2 = v2;
  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.ColorInformation.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_25F772BA8@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_25F772BC8()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F772C10()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t DisplayID.DisplayParametersDataBlock.NativeColorDepth.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.DisplayDeviceTechnology.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25F772C9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
  }

  else if ((v4 - 1) < 0x10 && (v4 == 16 || !(result >> v4)))
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 24) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 1;
  }

  return result;
}

unint64_t sub_25F772CEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82D530);
    MEMORY[0x25F8E7510](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x25F8E7510](0xD00000000000002ELL, 0x800000025F82D550);
    result = sub_25F822A3C();
    __break(1u);
    return result;
  }

  if (result + a2 - 1 >= 0x20)
  {
    goto LABEL_30;
  }

  if (a2 < 0)
  {
    goto LABEL_33;
  }

  v4 = -a2;
  v5 = 1.0;
  v6 = -3066;
  if (a2 != 3066 && -a2 >= 0xFFFFFFFFFFFFF406)
  {
    v6 = -a2;
  }

  v7 = v6 + 1022;
  v8 = v6 + 2044;
  v9 = __CFADD__(v4, 2044);
  if (v4 >= 0xFFFFFFFFFFFFF804)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = 2.22507386e-308;
  if (!v9)
  {
    v11 = 0.0;
  }

  if (a2 < 0x3FF)
  {
    v11 = 1.0;
    v10 = -a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v12 = ((v10 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000;
  v13 = result;
  if (result >= 0x400)
  {
    v13 = 3069;
    if (result < 0xBFD)
    {
      v13 = result;
    }

    do
    {
      v13 -= 1023;
      v5 = v5 * 8.98846567e307;
    }

    while (v13 > 0x3FF);
  }

  v14 = v11 * *&v12;
  v15 = v5 * COERCE_DOUBLE((v13 << 52) + 0x3FF0000000000000);
  v16 = 0.0 - v15;
  if (0.0 - v15 != INFINITY)
  {
    *&v16 += (*&v16 >> 63) | 1;
  }

  v17 = v15 - v14;
  if (v17 > -v16)
  {
    v17 = -v16;
  }

  if (a4 >= 0.0 && v17 >= a4)
  {
    v18 = result;
    v20 = 1.0;
    v21 = a2;
    if (a2 >= 1024)
    {
      v21 = 3069;
      if (a2 < 0xBFD)
      {
        v21 = a2;
      }

      do
      {
        v21 -= 1023;
        v20 = v20 * 8.98846567e307;
      }

      while (v21 > 0x3FF);
    }

    result = sub_25F773638(v23, round(v20 * COERCE_DOUBLE(((v21 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000) * a4));
    if ((v23[0] & 0x100000000) == 0)
    {
      *a3 = LODWORD(v23[0]);
      *(a3 + 8) = v18;
      *(a3 + 16) = a2;
      *(a3 + 24) = 0;
      return result;
    }

    goto LABEL_35;
  }

LABEL_30:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

unint64_t sub_25F772F7C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82D530);
    MEMORY[0x25F8E7510](1953384789, 0xE400000000000000);
    MEMORY[0x25F8E7510](0xD00000000000002ELL, 0x800000025F82D550);
    result = sub_25F822A3C();
    __break(1u);
    return result;
  }

  if (result + a2 - 1 >= 0x40)
  {
    goto LABEL_30;
  }

  if (a2 < 0)
  {
    goto LABEL_33;
  }

  v4 = -a2;
  v5 = 1.0;
  v6 = -3066;
  if (a2 != 3066 && -a2 >= 0xFFFFFFFFFFFFF406)
  {
    v6 = -a2;
  }

  v7 = v6 + 1022;
  v8 = v6 + 2044;
  v9 = __CFADD__(v4, 2044);
  if (v4 >= 0xFFFFFFFFFFFFF804)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = 2.22507386e-308;
  if (!v9)
  {
    v11 = 0.0;
  }

  if (a2 < 0x3FF)
  {
    v11 = 1.0;
    v10 = -a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v12 = ((v10 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000;
  v13 = result;
  if (result >= 0x400)
  {
    v13 = 3069;
    if (result < 0xBFD)
    {
      v13 = result;
    }

    do
    {
      v13 -= 1023;
      v5 = v5 * 8.98846567e307;
    }

    while (v13 > 0x3FF);
  }

  v14 = v11 * *&v12;
  v15 = v5 * COERCE_DOUBLE((v13 << 52) + 0x3FF0000000000000);
  v16 = 0.0 - v15;
  if (0.0 - v15 != INFINITY)
  {
    *&v16 += (*&v16 >> 63) | 1;
  }

  v17 = v15 - v14;
  if (v17 > -v16)
  {
    v17 = -v16;
  }

  if (a4 >= 0.0 && v17 >= a4)
  {
    v18 = result;
    v20 = 1.0;
    v21 = a2;
    if (a2 >= 1024)
    {
      v21 = 3069;
      if (a2 < 0xBFD)
      {
        v21 = a2;
      }

      do
      {
        v21 -= 1023;
        v20 = v20 * 8.98846567e307;
      }

      while (v21 > 0x3FF);
    }

    result = sub_25F7737A8(&v23, round(v20 * COERCE_DOUBLE(((v21 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000) * a4));
    if ((v24 & 1) == 0)
    {
      *a3 = v23;
      *(a3 + 8) = v18;
      *(a3 + 16) = a2;
      *(a3 + 24) = 0;
      return result;
    }

    goto LABEL_35;
  }

LABEL_30:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

unint64_t sub_25F773208@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82D530);
    MEMORY[0x25F8E7510](0x3631746E4955, 0xE600000000000000);
    MEMORY[0x25F8E7510](0xD00000000000002ELL, 0x800000025F82D550);
    result = sub_25F822A3C();
    __break(1u);
    return result;
  }

  if (result + a2 - 1 >= 0x10)
  {
    goto LABEL_30;
  }

  if (a2 < 0)
  {
    goto LABEL_33;
  }

  v4 = -a2;
  v5 = 1.0;
  v6 = -3066;
  if (a2 != 3066 && -a2 >= 0xFFFFFFFFFFFFF406)
  {
    v6 = -a2;
  }

  v7 = v6 + 1022;
  v8 = v6 + 2044;
  v9 = __CFADD__(v4, 2044);
  if (v4 >= 0xFFFFFFFFFFFFF804)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = 2.22507386e-308;
  if (!v9)
  {
    v11 = 0.0;
  }

  if (a2 < 0x3FF)
  {
    v11 = 1.0;
    v10 = -a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v12 = ((v10 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000;
  v13 = result;
  if (result >= 0x400)
  {
    v13 = 3069;
    if (result < 0xBFD)
    {
      v13 = result;
    }

    do
    {
      v13 -= 1023;
      v5 = v5 * 8.98846567e307;
    }

    while (v13 > 0x3FF);
  }

  v14 = v11 * *&v12;
  v15 = v5 * COERCE_DOUBLE((v13 << 52) + 0x3FF0000000000000);
  v16 = 0.0 - v15;
  if (0.0 - v15 != INFINITY)
  {
    *&v16 += (*&v16 >> 63) | 1;
  }

  v17 = v15 - v14;
  if (v17 > -v16)
  {
    v17 = -v16;
  }

  if (a4 >= 0.0 && v17 >= a4)
  {
    v18 = result;
    v20 = 1.0;
    v21 = a2;
    if (a2 >= 1024)
    {
      v21 = 3069;
      if (a2 < 0xBFD)
      {
        v21 = a2;
      }

      do
      {
        v21 -= 1023;
        v20 = v20 * 8.98846567e307;
      }

      while (v21 > 0x3FF);
    }

    result = sub_25F7738E8(v23, round(v20 * COERCE_DOUBLE(((v21 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000) * a4));
    if ((v23[0] & 0x10000) == 0)
    {
      *a3 = LOWORD(v23[0]);
      *(a3 + 8) = v18;
      *(a3 + 16) = a2;
      *(a3 + 24) = 0;
      return result;
    }

    goto LABEL_35;
  }

LABEL_30:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t DisplayID.DisplayParametersDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F7734F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = sub_25F7E2E2C(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_25F773588()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_25F76E658(v2, *(v1 + 24));
  return v2;
}

BOOL sub_25F773638(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25F82260C();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25F8225EC();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_25F7737A8(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = sub_25F82260C();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = sub_25F8225EC();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_25F7738E8(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25F82260C();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25F8225EC();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v6 < -16 || v6 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOWORD(v13) = 0;
LABEL_24:
          v7 = 0;
          LOWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

uint64_t sub_25F773A5C()
{
  sub_25F773C70();
  v0 = sub_25F8224AC();
  v2 = v1;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_25F82249C();
    MEMORY[0x25F8E7510](v4);

    MEMORY[0x25F8E7510](v0, v2);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  return result;
}

double sub_25F773B70(char a1, uint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 >= -1022)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

unint64_t sub_25F773C1C()
{
  result = qword_27FDB0050;
  if (!qword_27FDB0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0050);
  }

  return result;
}

unint64_t sub_25F773C70()
{
  result = qword_27FDB0060;
  if (!qword_27FDB0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0060);
  }

  return result;
}

unint64_t sub_25F773CC8()
{
  result = qword_27FDB0068;
  if (!qword_27FDB0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0068);
  }

  return result;
}

unint64_t sub_25F773D20()
{
  result = qword_27FDB0070;
  if (!qword_27FDB0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0070);
  }

  return result;
}

unint64_t sub_25F773D78()
{
  result = qword_27FDB0078;
  if (!qword_27FDB0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0078);
  }

  return result;
}

unint64_t sub_25F773DD0()
{
  result = qword_27FDB0080;
  if (!qword_27FDB0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0080);
  }

  return result;
}

unint64_t sub_25F773E28()
{
  result = qword_27FDB0088;
  if (!qword_27FDB0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0088);
  }

  return result;
}

unint64_t sub_25F773E7C(uint64_t a1)
{
  result = sub_25F773EA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F773EA4()
{
  result = qword_27FDB0090;
  if (!qword_27FDB0090)
  {
    type metadata accessor for DisplayID.DisplayParametersDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0090);
  }

  return result;
}

uint64_t _s26DisplayParametersDataBlockC15ScanOrientationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s26DisplayParametersDataBlockC15ScanOrientationOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDisplayHIDDevice.PresetInterface.PresetDetailsReport.Blocks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for AppleDisplayHIDDevice.PresetInterface.PresetDetailsReport.Blocks(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s26DisplayParametersDataBlockC16NativeColorDepthOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s26DisplayParametersDataBlockC16NativeColorDepthOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDReportType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDReportType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}