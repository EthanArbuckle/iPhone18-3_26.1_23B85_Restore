uint64_t sub_188E46C04@<X0>(uint64_t a1@<X0>, double (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v9 = v8;
  v192 = a3;
  v191 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v180 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v154 - v19;
  v187 = sub_18A4A3EB8();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v154 - v22;
  v179 = sub_18A4A3CD8();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v176 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v154 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v172 = &v154 - v27;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  v170 = *(v167 - 8);
  v28 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v171 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v175 = &v154 - v30;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  v169 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v154 - v31;
  v166 = sub_18A4A3E48();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v182 = &v154 - v34;
  v190 = sub_18A4A3E68();
  v189 = *(v190 - 8);
  v35 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v168 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v188 = &v154 - v37;
  v38 = sub_18A4A3CC8();
  v200 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v194 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v154 - v41;
  v197 = sub_18A4A3BA8();
  v198 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v183 = &v154 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v154 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v193 = &v154 - v48;
  v196 = sub_18A4A4088();
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18A4A33E8();
  v51 = [v50 containsObject_];

  if ((v51 & 1) == 0)
  {
    v163 = v38;
    v55 = sub_18A4A33E8();
    [v55 addObject_];

    if (([v9 isHidden] & 1) != 0 || (objc_msgSend(v9, sel_alpha), _UIViewIsFullyTransparentGivenAlpha(v56)) || (v57 = objc_msgSend(v9, sel_layer), v162 = v9, v58 = v57, v59 = objc_msgSend(v57, sel_disableUpdateMask), v58, (v59 & 0x10) != 0))
    {
      v52 = *(v200 + 56);
      v53 = a4;
      v54 = v163;
      goto LABEL_10;
    }

    v161 = a4;
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(&v203, v204);
    v60 = v199;
    sub_18A4A3E88();
    __swift_destroy_boxed_opaque_existential_0Tm(&v203);
    if (sub_18A4A4028())
    {
      v207.origin.x = a5;
      v207.origin.y = a6;
      v207.size.width = a7;
      v207.size.height = a8;
      if (CGRectIsEmpty(v207))
      {
        (*(v195 + 8))(v60, v196);
        v61 = *(v200 + 56);
        v62 = v161;
LABEL_15:
        v68 = 1;
        v69 = v163;
        return v61(v62, v68, 1, v69);
      }
    }

    sub_188DE55B8(a1, v42, a5, a6, a7, a8);
    v64 = v198;
    v65 = v197;
    v66 = (*(v198 + 48))(v42, 1, v197);
    v67 = v161;
    if (v66 == 1)
    {
      (*(v195 + 8))(v60, v196);
      sub_188A3F5FC(v42, &unk_1EA93EE80);
      v61 = *(v200 + 56);
      v62 = v67;
      goto LABEL_15;
    }

    v155 = a1;
    v70 = v193;
    (*(v64 + 32))(v193, v42, v65);
    if (sub_18A4A3FC8())
    {
      v71 = v162;
      [v162 bounds];
      v72 = v71;
      v64 = v198;
      v159 = v191(v72);
      v158 = v73;
      v157 = v74;
      v156 = v75;
    }

    else
    {
      v76 = *(MEMORY[0x1E695F050] + 8);
      v159 = *MEMORY[0x1E695F050];
      v158 = v76;
      v77 = *(MEMORY[0x1E695F050] + 24);
      v157 = *(MEMORY[0x1E695F050] + 16);
      v156 = v77;
    }

    if (sub_18A4A3FC8())
    {
      v78.n128_f64[0] = (v191)(v162, a5, a6, a7, a8);
    }

    v160 = *(v64 + 16);
    v160(v46, v70, v65, v78);
    v79 = MEMORY[0x1E69E7CC0];
    sub_18A4A3738();
    v205 = v79;
    v80 = v182;
    sub_18A4A3E98();
    v81 = v80;
    v82 = v189;
    v83 = v80;
    v84 = v190;
    if ((*(v189 + 48))(v83, 1, v190) == 1)
    {
      v85 = &unk_1EA9340C0;
      v86 = v81;
    }

    else
    {
      v87 = *(v82 + 32);
      v88 = v188;
      v182 = (v82 + 32);
      v159 = *&v87;
      v87(v188, v81, v84);
      v89 = UIView._appIntentsIntelligenceProvider.getter(&v201);
      if (v202)
      {
        sub_188E4DA48(&v201, &v203);
        __swift_project_boxed_opaque_existential_0(&v203, v204);
        v90 = sub_18A4A41E8();
        v92 = v194;
        if (v91 >> 60 != 15)
        {
          v93 = v91;
          v94 = v90;
          sub_188DBF7D8(v90, v91);
          v95 = v164;
          v158 = v94;
          sub_18A4A3E38();
          if (sub_18A4A3E58())
          {
            __swift_project_boxed_opaque_existential_0(&v203, v204);
            sub_18A4A41F8();
            sub_18A4A3E28();
          }

          v96 = v165;
          v97 = v95;
          v98 = v175;
          v99 = v166;
          (*(v165 + 16))(v175, v97, v166);
          (*(v96 + 56))(v98, 0, 1, v99);
          sub_18A4A3848();
          sub_18A4A3978();
          sub_188DBF840(v158, v93);
          v100 = v97;
          v92 = v194;
          (*(v96 + 8))(v100, v99);
        }

        __swift_project_boxed_opaque_existential_0(&v203, v204);
        v101 = v188;
        if (sub_18A4A4218())
        {
          v102 = v173;
          sub_18A4A3968();
          v103 = v175;
          v104 = v174;
          sub_18A4A3828();
          (*(v169 + 8))(v102, v104);
          v173 = "Element type\nExpected ";
          v105 = sub_18A4A6E88();
          v106 = v172;
          (*(*(v105 - 8) + 56))(v172, 1, 1, v105);
          sub_188E4DA78(&v203, &v201);
          v107 = v189 + 16;
          v108 = v168;
          v109 = v190;
          (*(v189 + 16))(v168, v188, v190);
          v110 = v171;
          sub_188A3F29C(v103, v171, &unk_1EA9340B0);
          v111 = (*(v107 + 64) + 64) & ~*(v107 + 64);
          v112 = (v35 + *(v170 + 80) + v111) & ~*(v170 + 80);
          v113 = swift_allocObject();
          sub_188E4DA48(&v201, (v113 + 16));
          (*&v159)(v113 + v111, v108, v109);
          sub_188A3F704(v110, v113 + v112, &unk_1EA9340B0);
          v114 = sub_18A4A3958();
          sub_18A4A3818();
          v115 = v106;
          v101 = v188;
          sub_188A3F5FC(v115, &unk_1EA93C110);
          v114(&v201, 0);
          v70 = v193;
          sub_188A3F5FC(v175, &unk_1EA9340B0);
        }

        __swift_project_boxed_opaque_existential_0(&v203, v204);
        v116 = v162;
        [v162 bounds];
        sub_18A4A4108();
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v118 = v192;
        *(&v154 - 4) = v191;
        *(&v154 - 3) = v118;
        *(&v154 - 2) = v116;
        v119 = sub_18A4A75A8();

        sub_188DFA234(v119);
        (*(v189 + 8))(v101, v190);
        __swift_destroy_boxed_opaque_existential_0Tm(&v203);
        v65 = v197;
        v64 = v198;
        goto LABEL_33;
      }

      (*(v82 + 8))(v88, v84, v89);
      v85 = &qword_1EA934060;
      v86 = &v201;
    }

    sub_188A3F5FC(v86, v85);
    v92 = v194;
LABEL_33:
    v120 = v183;
    (v160)(v183, v70, v65);
    v121 = (*(v64 + 88))(v120, v65);
    v122 = v163;
    if (v121 == *MEMORY[0x1E69DBBE0])
    {
      (*(v64 + 96))(v120, v65);
      v123 = v178;
      v124 = v177;
      v125 = v179;
      (*(v178 + 32))(v177, v120, v179);
      (*(v123 + 16))(v176, v124, v125);
      v126 = objc_allocWithZone(sub_18A4A3498());
      v127 = sub_18A4A3488();
      [v162 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];

      (*(v123 + 8))(v124, v125);
    }

    else
    {
      v128 = (*(v64 + 8))(v120, v65);
      MEMORY[0x1EEE9AC00](v128);
      *(&v154 - 8) = v162;
      *(&v154 - 7) = a5;
      *(&v154 - 6) = a6;
      *(&v154 - 5) = a7;
      *(&v154 - 4) = a8;
      v129 = v191;
      *(&v154 - 3) = v155;
      *(&v154 - 2) = v129;
      *(&v154 - 1) = v192;
      v130 = sub_18A4A33D8();
      sub_188DFA234(v130);
    }

    v131 = v161;
    sub_18A4A3798();
    if (sub_18A4A4018())
    {
      v204 = sub_188A34624(0, &qword_1ED48F680);
      *&v203 = v162;
      v132 = v162;
      [v132 _intelligenceBaseClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_188E4D924(&v203, ObjCClassMetadata);
      __swift_destroy_boxed_opaque_existential_0Tm(&v203);
      sub_18A4A3898();
      v134 = [(UIView *)v132 __viewDelegate];
      if (v134)
      {
        v135 = v134;
        v136 = sub_188A34624(0, &qword_1ED48D5A0);
        v204 = v136;
        *&v203 = v135;
        v137 = v135;
        sub_188E4D924(&v203, v136);
        __swift_destroy_boxed_opaque_existential_0Tm(&v203);
        sub_18A4A3948();
      }
    }

    if (sub_18A4A4048())
    {
      v138 = _UIGetAccessibilityLabelSafe(v162);
      if (v138)
      {
        v139 = v138;
        sub_18A4A7288();
      }

      sub_18A4A38B8();
    }

    v140 = v184;
    sub_18A4A3F88();
    v141 = v186;
    v142 = v185;
    v143 = v187;
    (*(v186 + 104))(v185, *MEMORY[0x1E69DBCB8], v187);
    v144 = sub_18A4A3EA8();
    v145 = *(v141 + 8);
    v145(v142, v143);
    v145(v140, v143);
    if (v144)
    {
      v146 = [(UIView *)v162 __viewDelegate];
      if (v146)
      {
        v147 = v146;
        v148 = [v146 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }

      v149 = v180;
      sub_18A4A37C8();
      v150 = sub_18A4A3CF8();
      v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
      sub_188A3F5FC(v149, &unk_1EA9340A0);
      if (v151 == 1)
      {
        v152 = [v162 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }
    }

    v153 = v199;
    if (sub_18A4A3FE8())
    {
      sub_18A4A3B88();
      (*(v200 + 8))(v92, v122);
      (*(v198 + 8))(v193, v197);
      return (*(v195 + 8))(v153, v196);
    }

    (*(v198 + 8))(v193, v197);
    (*(v195 + 8))(v153, v196);
    (*(v200 + 32))(v131, v92, v122);
    v61 = *(v200 + 56);
    v62 = v131;
    v68 = 0;
    v69 = v122;
    return v61(v62, v68, 1, v69);
  }

  v52 = *(v200 + 56);
  v53 = a4;
  v54 = v38;
LABEL_10:

  return v52(v53, 1, 1, v54);
}

uint64_t UIView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21[-1] - v10;
  v12 = sub_18A4A3CC8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4148();
  sub_18A4A4138();
  sub_18A4A4128();

  v21[3] = sub_18A4A3CD8();
  v21[4] = MEMORY[0x1E69DBC28];
  __swift_allocate_boxed_opaque_existential_0(v21);
  sub_18A4A3478();
  v16 = objc_allocWithZone(sub_18A4A3468());
  v17 = sub_18A4A3458();
  v18 = v4;
  sub_188E4530C(v17, v18, v18, &unk_1EFABDFF8, &unk_18A64BF70, sub_188E4DF20, sub_188E4DF80, v11, a1, a2, a3, a4, sub_188DE7DC8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_188A3F5FC(v11, &unk_1EA934040);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_18A4A4098();

    (*(v13 + 8))(v15, v12);
  }

  sub_18A4A4138();
  sub_18A4A4118();
}

uint64_t sub_188E48788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_188E487AC, 0, 0);
}

uint64_t sub_188E487AC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_188E4886C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x1EEE4BDC0](v7, v5, v6, v2, v3);
}

uint64_t sub_188E4886C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void (*UIView._appIntentsIntelligenceProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  *a1 = v3;
  *(v3 + 192) = v1;
  UIView._appIntentsIntelligenceProvider.getter(v3);
  return sub_188E489D8;
}

void sub_188E489D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 48, &qword_1EA934060);
    sub_188A3F29C(v2 + 48, v2 + 96, &qword_1EA934060);
    v3 = *(v2 + 120);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_0((v2 + 96), *(v2 + 120));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_18A4A86A8();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 96);
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 192) _setInternalAppIntentsIntelligenceProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 48, &qword_1EA934060);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 144, &qword_1EA934060);
    v10 = *(v2 + 168);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_18A4A86A8();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 144);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 192) _setInternalAppIntentsIntelligenceProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &qword_1EA934060);
  free(v2);
}

uint64_t sub_188E48DB4(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  sub_188A34624(0, a3);
  if (a2 >> 62)
  {
    v5 = sub_18A4A8448();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v5;
    }

LABEL_10:
    sub_18A4A80E8();
    v7 = 0xD000000000000046;
    v6 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v5;
  }

  sub_18A4A80E8();
  v6 = 0x800000018A68B680;
  v7 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v7, v6);
  v9 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E48FB0(unint64_t a1, unint64_t a2, void (*a3)(void))
{
  a3(0);
  if (a2 >> 62)
  {
    v5 = sub_18A4A8448();
    if (swift_dynamicCastClass())
    {
      return v5;
    }

LABEL_10:
    sub_18A4A80E8();
    v7 = 0xD000000000000046;
    v6 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v5;
  }

  sub_18A4A80E8();
  v6 = 0x800000018A68B680;
  v7 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v7, v6);
  v9 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49160(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for GlassGroupLayerView(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for GlassGroupLayerView(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000003ALL, 0x800000018A68B7C0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49314(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMaterialDefinitionView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMaterialDefinitionView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A68B8F0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E494E8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIGenieAnimator.Vertex();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIGenieAnimator.Vertex();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000002DLL, 0x800000018A68B8C0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49688(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMagicMorphAnimation.Item();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMagicMorphAnimation.Item();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000002BLL, 0x800000018A68B970);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E498AC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for PlatterItemView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PlatterItemView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A68B800);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49B68(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIOrbitalColorView.SpokeLayer();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIOrbitalColorView.SpokeLayer();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000031, 0x800000018A68B9A0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49D5C(unint64_t a1, unint64_t a2, void (*a3)(void))
{
  a3(0);
  if (a2 >> 62)
  {
    v5 = sub_18A4A8448();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v5;
    }

LABEL_10:
    sub_18A4A80E8();
    v7 = 0xD000000000000046;
    v6 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v5;
  }

  sub_18A4A80E8();
  v6 = 0x800000018A68B680;
  v7 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v7, v6);
  v9 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49F3C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A68B9E0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A0E4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMagicMorphAnimation();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMagicMorphAnimation();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A68B7A0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A2D4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for ScrollEdgeEffectView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ScrollEdgeEffectView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A68B910);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A488(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for NavigationBarLayout.InsertLayoutData();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for NavigationBarLayout.InsertLayoutData();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000037, 0x800000018A68B880);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A628(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for HostedViewWrapper();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for HostedViewWrapper();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000038, 0x800000018A68B840);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A830(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v7 = sub_18A4A8448();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v7;
    }

LABEL_10:
    sub_18A4A80E8();
    v9 = 0xD000000000000046;
    v8 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v7;
  }

  sub_18A4A80E8();
  v8 = 0x800000018A68B680;
  v9 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v9, v8);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v11);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4AA14(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for ShadowLayer();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ShadowLayer();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A68B930);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4ABDC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for UIPromptSuggestionView(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for UIPromptSuggestionView(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A68BA40);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4ADD0(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v8 = sub_18A4A8448();
    a3(0);
    if (swift_dynamicCastUnknownClass())
    {
      return v8;
    }

LABEL_10:
    sub_18A4A80E8();
    v10 = 0xD000000000000046;
    v9 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastUnknownClass())
  {
    return v8;
  }

  sub_18A4A80E8();
  v9 = 0x800000018A68B680;
  v10 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v10, v9);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v12 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v12);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4B0FC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A68BA00);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4B314(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v8 = sub_18A4A8448();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    sub_18A4A80E8();
    v10 = 0xD000000000000046;
    v9 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  sub_18A4A80E8();
  v9 = 0x800000018A68B680;
  v10 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v10, v9);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v12 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v12);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

char *sub_188E4B53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4B6D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4B7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188E4B8F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_188E4BA14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4BB80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188E4BC84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934228);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4BDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4BEF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4C030(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_188E4C13C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_188E4C2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4C3E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_188E4C538(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C668(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C774(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4C8D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_188E4CA1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_188E4CB78(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_188E4CD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4CEE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934070);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t (*sub_188E4CFEC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for _UITabButton, 0x754262615449555FLL, 0xEC0000006E6F7474);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D09C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1ED48DBD0);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D130(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4ADD0(a2, a3, type metadata accessor for CGColor, 0x52726F6C6F434743, 0xEA00000000006665);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D1DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, _s11GroupLayoutCMa, 0x79614C70756F7247, 0xEB0000000074756FLL);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D28C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48FC30);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D320(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48D5A0);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D3B4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1EA931120);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D448(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA9342A8);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D4DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for _UITimeline.Action, 0x6E6F69746341, 0xE600000000000000);
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
    return sub_188E4D580;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D588(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48CFF0);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D61C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1EA92FD90);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

void (*sub_188E4D6B0(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, _s4ItemCMa, 1835365449, 0xE400000000000000);
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
    return sub_188BB47D8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D750(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA930340);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D7E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA930850);
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
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D878(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for InProcessAnimationManager.TickEntry, 0x72746E456B636954, 0xE900000000000079);
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
    return sub_188E4DF98;
  }

  __break(1u);
  return result;
}

char *sub_188E4D924(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_18A4A86A8();
  Class = object_getClass(v3);
  swift_unknownObjectRelease();
  if (!Class)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = MEMORY[0x1E69E7CC0];
  if (ObjCClassMetadata != a2)
  {
    do
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      class_getName(ObjCClassFromMetadata);
      v8 = sub_18A4A7398();
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_188C8D8B4(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_188C8D8B4((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (class_getSuperclass(ObjCClassFromMetadata) && swift_getObjCClassMetadata() != a2);
  }

  return v6;
}

_OWORD *sub_188E4DA48(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_188E4DA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_188E4DADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_18A4A3E68() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_188C48500;

  return sub_188E48788(a1, v1 + 16, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_4Tm_1()
{
  v1 = sub_18A4A3E68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_18A4A3E48();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_188E4DDCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_18A4A3E68() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_188C482B4;

  return sub_188E48788(a1, v1 + 16, v1 + v6, v1 + v9);
}

void sub_188E4DF28(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(v2 + 16))(*(v2 + 32), *a1, a1[1], a1[2], a1[3]);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t sub_188E4DFA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_188E4E0CC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  sub_188E4DFA0(v3);
  sub_188BADB78();
  sub_18A4A4668();
}

void sub_188E4E1BC(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_188AF1874(&selRef_bounds, &selRef_setBounds_, a2, a3, a4, a5);
}

double sub_188E4E248@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  sub_188E4E2A4(v12);

  result = *v12;
  v5 = v12[1];
  v6 = v12[2];
  v7 = v12[3];
  v8 = v12[4];
  v9 = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *a2 = v12[0];
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  return result;
}

double sub_188E4E2A4@<D0>(uint64_t a1@<X8>)
{
  v8[0].receiver = v1;
  v8[0].super_class = type metadata accessor for UICoreHostingView();
  [(objc_super *)v8 transform3D];
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[2];
  *a1 = v8[1];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

void sub_188E4E344(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v8[0] = *a3;
  v8[1] = v3;
  v4 = a3[3];
  v8[2] = a3[2];
  v8[3] = v4;
  v5 = a3[5];
  v8[4] = a3[4];
  v8[5] = v5;
  v6 = a3[7];
  v8[6] = a3[6];
  v8[7] = v6;
  v7 = a1;
  sub_188E4E3B4(v8);
}

void sub_188E4E3B4(_OWORD *a1)
{
  v3 = type metadata accessor for UICoreHostingView();
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, sel_transform3D);
  v9.receiver = v1;
  v9.super_class = v3;
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v5 = a1[7];
  v8[6] = a1[6];
  v8[7] = v5;
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v7 = a1[3];
  v8[2] = a1[2];
  v8[3] = v7;
  objc_msgSendSuper2(&v9, sel_setTransform3D_, v8);
  sub_188E4E480(v11);
}

void sub_188E4E480(_OWORD *a1)
{
  v2 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_18A4A46F8())
    {
      [v4 transform3D];
      v5 = a1[5];
      *&v9.m31 = a1[4];
      *&v9.m33 = v5;
      v6 = a1[7];
      *&v9.m41 = a1[6];
      *&v9.m43 = v6;
      v7 = a1[1];
      *&v9.m11 = *a1;
      *&v9.m13 = v7;
      v8 = a1[3];
      *&v9.m21 = a1[2];
      *&v9.m23 = v8;
      if (!CATransform3DEqualToTransform(&a, &v9))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

double sub_188E4E584@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  sub_188E4E5D0(v7);

  result = *v7;
  v5 = v7[1];
  v6 = v7[2];
  *a2 = v7[0];
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

double sub_188E4E5D0@<D0>(_OWORD *a1@<X8>)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UICoreHostingView();
  objc_msgSendSuper2(&v7, sel_transform);
  result = *&v4;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

void sub_188E4E660(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  v4 = a1;
  sub_188E4E6C0(v5);
}

void sub_188E4E6C0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UICoreHostingView();
  v11.receiver = v1;
  v11.super_class = v5;
  objc_msgSendSuper2(&v11, sel_transform);
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v6;
  v8 = v3;
  v9 = v4;
  objc_msgSendSuper2(&v10, sel_setTransform_, v7);
  sub_188E4E784();
}

void sub_188E4E784()
{
  v0 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_18A4A46F8())
    {
      [v2 transform];
      if ((sub_18A4A7A08() & 1) == 0)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_188E4E868(void *a1)
{
  v1 = a1;
  v2 = sub_188E4E89C();

  return v2 & 1;
}

id sub_188E4E89C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICoreHostingView();
  return objc_msgSendSuper2(&v2, sel_clipsToBounds);
}

void sub_188E4E90C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_188E4E960(a3);
}

void sub_188E4E960(char a1)
{
  v3 = type metadata accessor for UICoreHostingView();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_clipsToBounds);
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, sel_setClipsToBounds_, a1 & 1);
  sub_188E4EA0C(v4);
}

void sub_188E4EA0C(char a1)
{
  v2 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_18A4A46F8())
    {
      if ([v4 clipsToBounds] != (a1 & 1))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_188E4EAE8()
{
  v4 = sub_188AF0DAC();
  if (sub_18A4A46F8())
  {
    v0 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    if (*&v4[v0] || (sub_18A4A6CD8(), (sub_18A4A53A8() & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFA0;
      v2 = sub_18A4A5578();
      *(inited + 32) = v2;
      v3 = sub_18A4A5548();
      *(inited + 34) = v3;
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v2)
      {
        sub_18A4A5568();
      }

      sub_18A4A5568();
      if (sub_18A4A5568() != v3)
      {
        sub_18A4A5568();
      }

      swift_getObjectType();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_188E4EC7C(void *a1)
{
  v1 = a1;
  sub_188E4ECAC();

  return 1;
}

void sub_188E4ECCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_188E4F644(a3);
}

double sub_188E4ED38(double a1, double a2)
{
  v4 = sub_188AF0DAC();
  v5 = UIHostingViewBase._baselineOffsets(at:)(a1, a2);

  return v5;
}

double sub_188E4ED8C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4ED38(a2, a3);

  return v6;
}

double sub_188E4EDE0(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4EE34(a2, a3);

  return v6;
}

double sub_188E4EE34(double a1, double a2)
{
  v4 = sub_188AF0DAC();
  _s5UIKit17UIHostingViewBaseC19_layoutSizeThatFits_9fixedAxesSo6CGSizeVAG_So09_UILayoutJ0VtF_0(a1, a2);
  v6 = v5;

  return v6;
}

double sub_188E4EE88(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4EE34(a2, a3);

  return v6;
}

void sub_188E4EF50()
{
  v0 = sub_188AF0DAC();
  UIHostingViewBase._setNeedsUpdate()();
}

uint64_t sub_188E4EFE8@<X0>(uint64_t a1@<X8>)
{
  sub_18A4A53D8();
  v2 = sub_18A4A5C58();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_18A4A5DB8();
  sub_18A4A6C08();
  sub_18A4A45B8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  sub_188E4F8D0(v2, v4, v6 & 1);

  sub_188E4F8E0(v2, v4, v6 & 1);
}

double sub_188E4F130@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_18A4A5438();
  v15 = 1;
  sub_188E4EFE8(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_188E4F7F8(&v16, v7);
  sub_188E4F868(v22);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

id sub_188E4F224()
{
  v0 = [objc_allocWithZone(UITextField) initWithFrame_];
  v1 = sub_18A4A7258();
  [v0 setPlaceholder_];

  return v0;
}

uint64_t sub_188E4F2A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344E8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9344F0);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA9344E0, &qword_1EA9344D8);
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_188E4F434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344D8);
  sub_188A34360(&qword_1EA9344E0, &qword_1EA9344D8);
  return sub_18A4A5618();
}

id sub_188E4F584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICoreHostingViewForUIKitTester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188E4F644(uint64_t a1)
{
  v2 = sub_188AF0DAC();
  if (a1)
  {
    v6 = v2;
    if (sub_18A4A46F8())
    {
      v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
      swift_beginAccess();
      if (v6[v3])
      {
        v4 = sub_18A4A5588();
        sub_18A4A5568();
        sub_18A4A5568();
        if (sub_18A4A5568() != v4)
        {
          sub_18A4A5568();
        }

        sub_18A4A6CD8();
        if (sub_18A4A53A8())
        {
          v5 = sub_18A4A5578();
          sub_18A4A5568();
          if (sub_18A4A5568() != v5)
          {
            sub_18A4A5568();
          }
        }

        swift_getObjectType();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188E4F7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188E4F868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188E4F8D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_188E4F8E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_188E4F90C(uint64_t a1)
{
  result = sub_188E4F934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188E4F934()
{
  result = qword_1EA9344D0;
  if (!qword_1EA9344D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9344D0);
  }

  return result;
}

uint64_t sub_188E4F990(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E4F9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_188E4FA28(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_188E4FB94(a2, &v15);
  v7 = v15;
  v8 = v16;
  if (a2)
  {
    v13 = v16;
    v14 = v15;
    v9 = [a1 customView];
    if (v9)
    {

      v8 = v13;
      v7 = v14;
      v10 = *&v13;
    }

    else
    {
      if ([a1 hasImage])
      {
        v11 = 0.0;
        if (*v3 == 1)
        {
          v8 = v13;
          if ((v3[3] & 1) == 0)
          {
            v11 = 5.0;
            if (v3[4] < 2u)
            {
              v11 = 4.0;
            }
          }
        }

        else
        {
          v8 = v13;
        }

        v12 = 6.0;
      }

      else
      {
        if (![a1 hasTitle])
        {
          v10 = dbl_18A64C350[v3[4]];
          v8 = v13;
          v7 = v14;
          goto LABEL_23;
        }

        v11 = 0.0;
        v8 = v13;
        if (*v3 == 1 && (v3[3] & 1) == 0)
        {
          v11 = 5.0;
          if (v3[4] < 2u)
          {
            v11 = 4.0;
          }
        }

        v12 = 16.0;
      }

      v10 = v12 - v11;
      v7 = v14;
    }
  }

  else
  {
    v10 = 0.0;
    if (*v3 == 1)
    {
      v10 = 12.0;
      if ((v3[3] & 1) == 0)
      {
        v10 = dbl_18A64C368[v3[4]];
      }
    }
  }

LABEL_23:
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = v10;
}

void sub_188E4FB94(char a1@<W1>, double *a2@<X8>)
{
  if (*v2 == 1)
  {
    v3 = v2[4];
    v4 = 5.0;
    if (v3 < 2)
    {
      v4 = 4.0;
    }

    v5 = 0.0;
    if ((v2[3] & 1) == 0)
    {
      v5 = v4;
    }

    v6 = dbl_18A64C380[v3] - (v5 + v5);
    if (a1)
    {
      v7 = 12.0;
      v8 = 16.0 - v5;
      v9 = 10.0 - v5;
      if (v2[3])
      {
        v10 = 12.0;
      }

      else
      {
        v10 = 6.0 - v5;
      }

      if (v2[3])
      {
        v11 = 12.0;
      }

      else
      {
        v11 = v8;
      }

      if ((v2[3] & 1) == 0)
      {
        v7 = v9;
      }
    }

    else
    {
      v10 = 12.0;
      v11 = 12.0;
      v7 = 12.0;
      if ((v2[3] & 1) == 0)
      {
        v10 = dbl_18A64C368[v3];
        v11 = v10;
        v7 = v10;
      }
    }

    *a2 = v10;
    a2[1] = v11;
    a2[2] = v7;
    a2[3] = v6;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

void sub_188E4FC48(void *a1, uint64_t a2)
{
  sub_188BAD9B4(a1);
  sub_188BADE8C(a1);
  if (_UIUseMiniHeightInLandscape(1u))
  {
    [a1 bounds];
    v5 = CGRectGetHeight(v9) < dbl_18A64C380[v2[4]];
  }

  else
  {
    v5 = 0;
  }

  v2[2] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 _barPlattersHidden];

  v2[3] = v7;

  sub_188E4FD18(a1, a2);
}

void sub_188E4FD18(void *a1, uint64_t a2)
{
  if (*v2 == 1)
  {
    if (*(v2 + 1))
    {
      [a1 _contentMargin];
      v5 = v4;
      [a1 directionalLayoutMargins];
      if (v5 <= v6)
      {
        v5 = v6;
      }

      [a1 _contentMargin];
      v8 = v7;
      [a1 directionalLayoutMargins];
      if (v8 > v9)
      {
        v9 = v8;
      }

      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_188E4FDF0(a1, a2);
      v5 = v12;
    }

    *(v2 + 40) = v10;
    *(v2 + 48) = v5;
    *(v2 + 56) = v11;
    *(v2 + 64) = v9;
  }
}

void sub_188E4FDF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = [a1 traitCollection];
  sub_18A4A5C08();
  sub_18A4A5C08();
  v132 = &unk_1EFE7D0C8;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    v9 = v5;
    v10 = [v8 _edgesRequiringContentMargin];
    sub_18A4A5C08();
    if (v10)
    {
      v11 = sub_18A4A5BD8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v11)
      {
        sub_18A4A5C08();
      }
    }

    if ((v10 & 2) != 0)
    {
      v12 = sub_18A4A5BF8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v12)
      {
        sub_18A4A5C08();
      }
    }

    if ((v10 & 4) != 0)
    {
      v13 = sub_18A4A5BE8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v13)
      {
        sub_18A4A5C08();
      }
    }

    if ((v10 & 8) != 0)
    {
      v14 = sub_18A4A5C18();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v14)
      {
        sub_18A4A5C08();
      }
    }

    v15 = [v8 _adjacentBarEdges];
    sub_18A4A5C08();
    if (v15)
    {
      v16 = sub_18A4A5BD8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v16)
      {
        sub_18A4A5C08();
      }
    }

    if ((v15 & 2) != 0)
    {
      v17 = sub_18A4A5BF8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v17)
      {
        sub_18A4A5C08();
      }
    }

    if ((v15 & 4) != 0)
    {
      v18 = sub_18A4A5BE8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v18)
      {
        sub_18A4A5C08();
      }
    }

    if ((v15 & 8) != 0)
    {
      v19 = sub_18A4A5C18();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v19)
      {
        sub_18A4A5C08();
      }
    }

    swift_getKeyPath();
    v128 = a2;
    sub_188AF0C98();
    sub_18A4A2C08();

    v20 = *(a2 + 129);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v6 userInterfaceIdiom];
  if (v21 == 5)
  {
    if ([v6 _barPlattersHidden])
    {
      goto LABEL_45;
    }

    type metadata accessor for _UIToolbarSettingsDomain();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v127.receiver = ObjCClassFromMetadata;
    v127.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v58 = objc_msgSendSuper2(&v127, sel_rootSettings);
    if (v58)
    {
      v59 = v58;
      type metadata accessor for _UIToolbarSpec();
      v60 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v61 = *&v60[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
      v126.receiver = ObjCClassFromMetadata;
      v126.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v62 = objc_msgSendSuper2(&v126, sel_rootSettings);
      if (!v62)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v63 = v62;
      v64 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v65 = *&v64[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides];
      v125.receiver = ObjCClassFromMetadata;
      v125.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v66 = objc_msgSendSuper2(&v125, sel_rootSettings);
      if (!v66)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v67 = v66;
      v68 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v69 = *&v68[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides];
      v128 = v61;
      v129 = v65;
      v131 = v69;
      [v5 _contentMargin];
      sub_188FEB69C(v70);
      [v5 safeAreaInsets];
      v124.receiver = ObjCClassFromMetadata;
      v124.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v71 = objc_msgSendSuper2(&v124, sel_rootSettings);
      if (!v71)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v72 = v71;
      v73 = swift_dynamicCastClassUnconditional();

      v56 = *(v73 + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
      goto LABEL_52;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v21 == 1)
  {
    if ([v6 _barPlattersHidden])
    {
      goto LABEL_45;
    }

    type metadata accessor for _UIToolbarSettingsDomain();
    v39 = swift_getObjCClassFromMetadata();
    v123.receiver = v39;
    v123.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v40 = objc_msgSendSuper2(&v123, sel_rootSettings);
    if (v40)
    {
      v41 = v40;
      type metadata accessor for _UIToolbarSpec();
      v42 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v43 = *&v42[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
      v122.receiver = v39;
      v122.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v44 = objc_msgSendSuper2(&v122, sel_rootSettings);
      if (!v44)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v45 = v44;
      v46 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v47 = *&v46[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides];
      v121.receiver = v39;
      v121.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v48 = objc_msgSendSuper2(&v121, sel_rootSettings);
      if (!v48)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v49 = v48;
      v50 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v51 = *&v50[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides];
      v128 = v43;
      v129 = v47;
      v131 = v51;
      [v5 _contentMargin];
      sub_188FEB69C(v52);
      [v5 safeAreaInsets];
      v120.receiver = v39;
      v120.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v53 = objc_msgSendSuper2(&v120, sel_rootSettings);
      if (!v53)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v54 = v53;
      v55 = swift_dynamicCastClassUnconditional();

      v56 = *(v55 + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
LABEL_52:

      return;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (v21)
  {
LABEL_45:
    sub_188E50C24(v3, v5, v6);
    goto LABEL_46;
  }

  if ((*(v3 + 2) & 1) == 0)
  {
    type metadata accessor for _UIToolbarSettingsDomain();
    v5 = swift_getObjCClassFromMetadata();
    v119.receiver = v5;
    v119.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v74 = objc_msgSendSuper2(&v119, sel_rootSettings);
    if (!v74)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v75 = v74;
    type metadata accessor for _UIToolbarSpec();
    v22 = &OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding;
    v76 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

    v27 = *&v76[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
    if (v20)
    {
      v115.receiver = v5;
      v115.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v77 = objc_msgSendSuper2(&v115, sel_rootSettings);
      if (!v77)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v78 = v77;
      v79 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v23 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard;
      v114.receiver = v5;
      v114.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v80 = objc_msgSendSuper2(&v114, sel_rootSettings);
      if (!v80)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v81 = v80;
      v82 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v113.receiver = v5;
      v113.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v83 = objc_msgSendSuper2(&v113, sel_rootSettings);
      if (!v83)
      {
        __break(1u);
LABEL_59:
        v111.receiver = v22;
        v111.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
        v84 = objc_msgSendSuper2(&v111, v23 + 3818);
        if (v84)
        {
          v85 = v84;
          v86 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

          v32 = *&v86[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides];
          v110.receiver = v22;
          v110.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
          v87 = objc_msgSendSuper2(&v110, v23 + 3818);
          if (v87)
          {
            v88 = v87;
            v89 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

            v36 = *&v89[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightBottom];
            v109.receiver = v22;
            v109.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
            v90 = objc_msgSendSuper2(&v109, sel_rootSettings);
            if (v90)
            {
              v38 = v90;
              v31 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides;
              goto LABEL_63;
            }

            goto LABEL_94;
          }

          goto LABEL_91;
        }

        goto LABEL_87;
      }
    }

    else
    {
      v118.receiver = v5;
      v118.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v99 = objc_msgSendSuper2(&v118, sel_rootSettings);
      if (!v99)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v100 = v99;
      v101 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v117.receiver = v5;
      v117.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v102 = objc_msgSendSuper2(&v117, sel_rootSettings);
      if (!v102)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v103 = v102;
      v104 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v116.receiver = v5;
      v116.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v83 = objc_msgSendSuper2(&v116, sel_rootSettings);
      if (!v83)
      {
LABEL_95:
        __break(1u);
        return;
      }
    }

    v105 = v83;

    v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
LABEL_46:

    return;
  }

  type metadata accessor for _UIToolbarSettingsDomain();
  v22 = swift_getObjCClassFromMetadata();
  v112.receiver = v22;
  v112.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v23 = &selRef_resetInputModeInMainThread;
  v24 = objc_msgSendSuper2(&v112, sel_rootSettings);
  if (!v24)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v25 = v24;
  type metadata accessor for _UIToolbarSpec();
  v26 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v27 = *&v26[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
  if (!v20)
  {
    goto LABEL_59;
  }

  v108.receiver = v22;
  v108.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v28 = objc_msgSendSuper2(&v108, &selRef_rtiInputViewInfo + 2);
  if (!v28)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v29 = v28;
  v30 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v31 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard;
  v32 = *&v30[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard];

  v107.receiver = v22;
  v107.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v33 = objc_msgSendSuper2(&v107, sel_rootSettings);
  if (!v33)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = v33;
  v35 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v36 = *&v35[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard];
  v106.receiver = v22;
  v106.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v37 = objc_msgSendSuper2(&v106, sel_rootSettings);
  if (!v37)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v38 = v37;
LABEL_63:
  v91 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v92 = *&v91[*v31];
  v128 = v27;
  v129 = v32;
  v130 = v36;
  v131 = v92;
  if ([v6 _barPlattersHidden])
  {
    [v5 _contentMargin];
    v94 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    v96 = sub_18A4A5BF8();
    *(inited + 32) = v96;
    v97 = sub_18A4A5C18();
    *(inited + 33) = v97;
    sub_18A4A5C08();
    sub_18A4A5C08();
    if (sub_18A4A5C08() != v96)
    {
      sub_18A4A5C08();
    }

    sub_18A4A5C08();
    if (sub_18A4A5C08() != v97)
    {
      sub_18A4A5C08();
    }

    v98 = v94;
  }

  else
  {
    sub_188FEB69C(10.0);
    [v5 _contentMargin];
  }

  sub_188FEB69C(v98);
}

id sub_188E50C24(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for _UIToolbarSettingsDomain();
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  result = objc_msgSendSuper2(&v8, sel_rootSettings);
  if (result)
  {
    v6 = result;
    type metadata accessor for _UIToolbarSpec();
    v7 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

    [a2 _contentMargin];
    [a2 _contentMargin];
    return [a3 _barPlattersHidden];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E50DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_188E50E10(v7, v9) & 1;
}

uint64_t sub_188E50E10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || ((a1[2] ^ a2[2]) & 1) != 0 || ((a1[3] ^ a2[3]) & 1) != 0 || a1[4] != a2[4] || (sub_18A4A43B8() & 1) == 0)
  {
    return 0;
  }

  return sub_18A4A43B8();
}

unint64_t sub_188E50ED0()
{
  result = qword_1EA934570[0];
  if (!qword_1EA934570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA934570);
  }

  return result;
}

uint64_t sub_188E50F24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_188E50FB8(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return v4 == v1;
    }
  }

  else
  {
    sub_188A553EC(v5);
  }

  return 0;
}

uint64_t sub_188E5107C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, &v1[*((v5 & v4) + 0x58)], v2, v3);
  return sub_18A4A72F8();
}

uint64_t sub_188E51200()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_188E51294(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = *(*((*MEMORY[0x1E69E7D40] & v4) + 0x50) - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v9 = &v13 - v8;
  sub_188C85D28(a1, v15);
  if (!v16)
  {
    sub_188A553EC(v15);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  v10 = v14;
  (*(v7 + 16))(v9, v14 + *((*v14 & *v5) + 0x60), v6);
  v11 = sub_18A4A7248();

  (*(v7 + 8))(v9, v6);
  return v11 & 1;
}

uint64_t sub_188E514A0(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, &v1[*((v5 & v4) + 0x60)], v2, v3);
  return sub_18A4A72F8();
}

BOOL sub_188E51690(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v6);
  if (!v7)
  {
    sub_188A553EC(v6);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (v3)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v3;
    }

    goto LABEL_9;
  }

  if (v3)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_188E5179C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id sub_188E5183C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t sub_188E518AC()
{
  swift_unknownObjectWeakLoadStrong();
  sub_18A4A7D38();
  return sub_18A4A72F8();
}

id sub_188E51968()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188E51AF0(unint64_t a1, unint64_t a2, int a3)
{
  LODWORD(v5) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v432 = &v420 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v443 = &v420 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v420 - v13;
  v15 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters;
  v16 = *(v3 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters);

  v17 = sub_188B49C6C(a1, v16);

  v18 = 0;
  if (v17)
  {
    return sub_188A55B8C(v18);
  }

  v420 = v14;
  *(v3 + v15) = a1;

  v19 = MEMORY[0x1E69E7CC0];
  v523 = sub_188E8D568(MEMORY[0x1E69E7CC0]);
  v429 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews;
  v20 = *(v3 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews);

  isUniquelyReferenced_nonNull_native = sub_188E8D8EC(v19);
  if (v20 >> 62)
  {
    goto LABEL_248;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  LODWORD(v457) = v5;
  v434 = a1;
  v456 = a2;
  v459 = v3;
  if (v22)
  {
    a2 = 0;
    v458 = v20 & 0xC000000000000001;
    v4 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v458)
      {
        v24 = sub_188E49A4C(a2, v20);
      }

      else
      {
        if (a2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_233;
        }

        v24 = *(v20 + 8 * a2 + 32);
      }

      v3 = v24;
      v25 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        v22 = sub_18A4A7F68();
        goto LABEL_4;
      }

      sub_188C46270(v24 + OBJC_IVAR____UINavigationBarPlatterView_id, &v514);
      a1 = v3;
      v3 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v506 = v3;
      v26 = sub_188C479E4(&v514);
      v28 = *(v3 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_234;
      }

      LODWORD(v5) = v27;
      if (*(v3 + 24) < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v35 = v26;
      sub_188FA13A0();
      v26 = v35;
      isUniquelyReferenced_nonNull_native = v506;
      if (v5)
      {
LABEL_6:
        v23 = *(isUniquelyReferenced_nonNull_native + 56);
        v3 = *(v23 + 8 * v26);
        *(v23 + 8 * v26) = a1;

        sub_188C4D06C(&v514);
        goto LABEL_7;
      }

LABEL_18:
      *(isUniquelyReferenced_nonNull_native + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v3 = v26;
      sub_188C46270(&v514, *(isUniquelyReferenced_nonNull_native + 48) + 40 * v26);
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v3) = a1;

      sub_188C4D06C(&v514);
      v33 = *(isUniquelyReferenced_nonNull_native + 16);
      v30 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v30)
      {
        goto LABEL_242;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v34;
LABEL_7:
      ++a2;
      if (v25 == v22)
      {
        goto LABEL_23;
      }
    }

    sub_1890BB1FC(v31, isUniquelyReferenced_nonNull_native);
    v26 = sub_188C479E4(&v514);
    if ((v5 & 1) != (v32 & 1))
    {
      goto LABEL_262;
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v506;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_23:

  v36 = *&v459[v429];
  if (v36 >> 62)
  {
    v37 = sub_18A4A7F68();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v434;
  v455 = isUniquelyReferenced_nonNull_native;
  if (v37)
  {
    v476[0] = MEMORY[0x1E69E7CC0];
    isEscapingClosureAtFileLocation = v37 & ~(v37 >> 63);

    v3 = v476;
    sub_188C46250(0, isEscapingClosureAtFileLocation, 0);
    if (v37 < 0)
    {
      goto LABEL_252;
    }

    a2 = 0;
    v40 = v476[0];
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v41 = sub_188E49A4C(a2, v36);
      }

      else
      {
        v41 = *(v36 + 8 * a2 + 32);
      }

      v42 = v41;
      v43 = OBJC_IVAR____UINavigationBarPlatterView_platter;
      swift_beginAccess();
      sub_188C45F1C(v42 + v43, &v514);
      sub_188C46270(&v514, &v496);
      if (*&v517[16])
      {
        v477 = *&v517[8];
        v44 = v42;

        sub_18A4A8048();
      }

      else
      {
        v494 = 0;
        v492 = 0u;
        v493 = 0u;
        v45 = v42;
      }

      sub_188BBA230(&v517[24], &v508[3]);
      v46 = BYTE8(v521);
      v47 = v522;
      v48 = v522;
      sub_188C460F0(&v514);
      v506 = v496;
      v507 = v497;
      *(v508 + 8) = v492;
      *&v508[0] = v498;
      *(&v508[1] + 8) = v493;
      *(&v508[2] + 1) = v494;
      v510[40] = v46;
      v511 = v47;
      v49 = [v42 layer];
      v50 = [v49 presentationLayer];

      if (v50)
      {
        [v50 frame];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
      }

      else
      {
        [v42 frame];
        v52 = v59;
        v54 = v60;
        v56 = v61;
        v58 = v62;
        v50 = v42;
      }

      *&v510[8] = v52;
      *&v510[16] = v54;
      *&v510[24] = v56;
      *&v510[32] = v58;
      v476[0] = v40;
      a1 = v40[2];
      v63 = v40[3];
      if (a1 >= v63 >> 1)
      {
        sub_188C46250((v63 > 1), a1 + 1, 1);
        v40 = v476[0];
      }

      ++a2;
      v40[2] = (a1 + 1);
      v64 = &v40[22 * a1];
      v65 = v506;
      v66 = v508[0];
      *(v64 + 3) = v507;
      *(v64 + 4) = v66;
      *(v64 + 2) = v65;
      v67 = v508[1];
      v68 = v508[2];
      v69 = v509;
      *(v64 + 7) = v508[3];
      *(v64 + 8) = v69;
      *(v64 + 5) = v67;
      *(v64 + 6) = v68;
      v70 = *v510;
      v71 = *&v510[16];
      v72 = v511;
      *(v64 + 11) = *&v510[32];
      *(v64 + 12) = v72;
      *(v64 + 9) = v70;
      *(v64 + 10) = v71;
    }

    while (v37 != a2);
    v441 = v40;

    isUniquelyReferenced_nonNull_native = v455;
    v38 = v434;
  }

  else
  {
    v441 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v38 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v74 = v38;
    v476[0] = MEMORY[0x1E69E7CC0];
    sub_188C46250(0, v4, 0);
    v75 = v476[0];
    v76 = v74 + 32;
    a2 = 176;
    v77 = v4;
    do
    {
      sub_188C45F1C(v76, &v514);
      sub_188C46270(&v514, &v496);
      if (*&v517[16])
      {
        v477 = *&v517[8];

        sub_18A4A8048();
      }

      else
      {
        v494 = 0;
        v492 = 0u;
        v493 = 0u;
      }

      sub_188BBA230(&v517[24], &v508[3]);
      v506 = v496;
      v507 = v497;
      *(v508 + 8) = v492;
      *&v508[0] = v498;
      *(&v508[1] + 8) = v493;
      *(&v508[2] + 1) = v494;
      *&v510[8] = *(v516 + 8);
      *&v510[24] = *(&v516[1] + 8);
      v510[40] = BYTE8(v521);
      v511 = v522;
      v78 = v522;
      sub_188C460F0(&v514);
      v476[0] = v75;
      a1 = *(v75 + 16);
      v79 = *(v75 + 24);
      if (a1 >= v79 >> 1)
      {
        sub_188C46250((v79 > 1), a1 + 1, 1);
        v75 = v476[0];
      }

      *(v75 + 16) = a1 + 1;
      v80 = (v75 + 176 * a1);
      v81 = v506;
      v82 = v508[0];
      v80[3] = v507;
      v80[4] = v82;
      v80[2] = v81;
      v83 = v508[1];
      v84 = v508[2];
      v85 = v509;
      v80[7] = v508[3];
      v80[8] = v85;
      v80[5] = v83;
      v80[6] = v84;
      v86 = *v510;
      v87 = *&v510[16];
      v88 = v511;
      v80[11] = *&v510[32];
      v80[12] = v88;
      v80[9] = v86;
      v80[10] = v87;
      v76 += 192;
      --v77;
      isUniquelyReferenced_nonNull_native = v455;
    }

    while (v77);
    v452 = v75;
    v73 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v452 = MEMORY[0x1E69E7CC0];
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v453 = UIAccessibilityPrefersCrossFadeTransitions();
  v513 = v73;
  if (v4)
  {
    v450 = 0;
    v451 = 0;
    v89 = v434 + 32;
    v20 = &v497;
    LODWORD(v458) = v457 & 1;
    v454 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_188C45F1C(v89, &v514);
      v90 = sub_188C479E4(&v514);
      if (v91)
      {
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *&v506 = isUniquelyReferenced_nonNull_native;
        if (!v93)
        {
          sub_188FA13A0();
          isUniquelyReferenced_nonNull_native = v506;
        }

        sub_188C4D06C(*(isUniquelyReferenced_nonNull_native + 48) + 40 * v92);
        v94 = isUniquelyReferenced_nonNull_native;
        v95 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v92);
        a1 = v94;
        sub_188F9CB64(v92, v94);
        v96 = v456;
        if (v456)
        {
          sub_188C45F1C(&v514, &v506);
          v97 = swift_allocObject();
          v98 = *&v510[32];
          *(v97 + 144) = *&v510[16];
          *(v97 + 160) = v98;
          v99 = v512;
          *(v97 + 176) = v511;
          *(v97 + 192) = v99;
          v100 = v508[3];
          *(v97 + 80) = v508[2];
          *(v97 + 96) = v100;
          v101 = *v510;
          *(v97 + 112) = v509;
          *(v97 + 128) = v101;
          v102 = v507;
          *(v97 + 16) = v506;
          *(v97 + 32) = v102;
          v103 = v508[1];
          *(v97 + 48) = v508[0];
          *(v97 + 64) = v103;
          *(v97 + 208) = v95;
          *(v97 + 216) = v96;
          *(v97 + 224) = v453;
          *(v97 + 225) = v458;
          v104 = v459;
          *(v97 + 232) = v459;
          swift_retain_n();
          v105 = v95;
          v106 = v104;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v107 = v454;
          }

          else
          {
            v107 = sub_188E4B518(0, v454[2] + 1, 1, v454);
          }

          v109 = v107[2];
          v108 = v107[3];
          a2 = v109 + 1;
          if (v109 >= v108 >> 1)
          {
            v454 = sub_188E4B518((v108 > 1), v109 + 1, 1, v107);
          }

          else
          {
            v454 = v107;
          }

          v110 = v454;
          v454[2] = a2;
          v111 = &v110[2 * v109];
          v111[4] = sub_188E5C2C4;
          v111[5] = v97;
        }

        else
        {
          v105 = v95;
          sub_18918584C(&v514);
        }

        isUniquelyReferenced_nonNull_native = a1;
      }

      else
      {
        v112 = isUniquelyReferenced_nonNull_native;
        *&v492 = 0;
        v5 = objc_opt_self();
        sub_188C45F1C(&v514, &v506);
        v3 = swift_allocObject();
        v113 = *&v510[32];
        *(v3 + 152) = *&v510[16];
        *(v3 + 168) = v113;
        v114 = v512;
        *(v3 + 184) = v511;
        *(v3 + 200) = v114;
        v115 = v508[3];
        *(v3 + 88) = v508[2];
        *(v3 + 104) = v115;
        v116 = *v510;
        *(v3 + 120) = v509;
        *(v3 + 136) = v116;
        v117 = v507;
        *(v3 + 24) = v506;
        *(v3 + 40) = v117;
        v118 = v508[1];
        *(v3 + 56) = v508[0];
        *(v3 + 16) = &v492;
        *(v3 + 72) = v118;
        sub_188A55B8C(v451);
        a2 = swift_allocObject();
        *(a2 + 16) = sub_188E5A7D0;
        *(a2 + 24) = v3;
        *&v498 = sub_188A4B574;
        *(&v498 + 1) = a2;
        *&v496 = MEMORY[0x1E69E9820];
        *(&v496 + 1) = 1107296256;
        *&v497 = sub_188A4A968;
        *(&v497 + 1) = &block_descriptor_4;
        a1 = _Block_copy(&v496);

        [v5 performWithoutAnimation_];
        _Block_release(a1);
        isUniquelyReferenced_nonNull_native = swift_isEscapingClosureAtFileLocation();

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_241;
        }

        if (!v492)
        {
          goto LABEL_261;
        }

        v105 = v492;
        v450 = v3;
        v451 = sub_188E5A7D0;
        isUniquelyReferenced_nonNull_native = v112;
      }

      MEMORY[0x18CFE2450]();
      if (*((v513 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v513 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      sub_188C460F0(&v514);
      v89 += 192;
      --v4;
    }

    while (v4);
    v119 = v513;
  }

  else
  {
    v450 = 0;
    v451 = 0;
    v454 = v73;
    v119 = v73;
  }

  v4 = v459;
  *&v459[v429] = v119;

  v3 = v452;
  v448 = (v119 & 0xFFFFFFFFFFFFFF8);
  if (v119 >> 62)
  {
    v20 = sub_18A4A7F68();
  }

  else
  {
    v20 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v455 = isUniquelyReferenced_nonNull_native;

  v120 = "_UIMonochromaticTreatment";
  v449 = v119;
  if (!v20)
  {
    v425 = 0;
    v426 = 0;
    v421 = 0;
    v422 = 0;
    v5 = 0;
    v458 = 0;
    v431 = 0;
    goto LABEL_129;
  }

  v121 = 0;
  v421 = 0;
  v422 = 0;
  v425 = 0;
  v426 = 0;
  v458 = 0;
  v5 = 0;
  v431 = 0;
  v446 = v119 & 0xC000000000000001;
  v447 = &v515;
  v439 = &v493;
  v440 = &v497;
  v444 = xmmword_18A64C520;
  v122 = 0.04;
  *&v123 = 0.4;
  v124 = 0.08;
  *&v125 = 0.1;
  v445 = v20;
  do
  {
    isUniquelyReferenced_nonNull_native = v121;
    while (1)
    {
      if (v446)
      {
        v126 = sub_188E49A4C(isUniquelyReferenced_nonNull_native, v119);
        v127 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_235;
        }
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native >= v448[2])
        {
          goto LABEL_236;
        }

        v126 = *(v119 + 8 * isUniquelyReferenced_nonNull_native + 32);
        v127 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_235;
        }
      }

      v457 = v127;
      v128 = v126;
      v129 = [v128 superview];
      if (v129)
      {
        v130 = v129;

        v131 = v130 == v4;
      }

      else
      {
        v131 = 0;
      }

      v20 = objc_opt_self();
      a1 = swift_allocObject();
      *(a1 + 16) = v4;
      *(a1 + 24) = v128;
      *(a1 + 32) = isUniquelyReferenced_nonNull_native;
      v132 = v4;
      a2 = v128;
      sub_188A55B8C(v5);
      v3 = swift_allocObject();
      *(v3 + 16) = sub_188E5A7DC;
      *(v3 + 24) = a1;
      *&v516[0] = sub_188E3FE50;
      *(&v516[0] + 1) = v3;
      *&v514 = MEMORY[0x1E69E9820];
      *(&v514 + 1) = 1107296256;
      *&v515 = sub_188A4A968;
      *(&v515 + 1) = &block_descriptor_15;
      v5 = _Block_copy(&v514);
      v4 = *(&v516[0] + 1);

      [v20 performWithoutAnimation_];
      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        goto LABEL_237;
      }

      v133 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

      sub_188E56D00();

      if (v131)
      {
        v134 = a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
        v135 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
        v136 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
        *v134 = v444;
        *(v134 + 16) = 0;
        sub_188E5B1D4(v135, v136);
        sub_189185D18();
      }

      v458 = a1;
      v4 = v459;
      if (!v453)
      {
        break;
      }

      sub_188E56E5C(a2, !v131);
      v3 = v452;
LABEL_81:

      ++isUniquelyReferenced_nonNull_native;
      v5 = sub_188E5A7DC;
      v20 = v445;
      v119 = v449;
      if (v457 == v445)
      {
        v120 = "_UIMonochromaticTreatment";
        goto LABEL_129;
      }
    }

    v3 = v452;
    if (!v456 || v131)
    {

      goto LABEL_81;
    }

    v137 = _s11PlatterViewCMa();
    v505.receiver = a2;
    v505.super_class = v137;

    objc_msgSendSuper2(&v505, sel_bounds);
    v139 = v138;
    v141 = v140;
    [a2 center];
    v143 = v142;
    v438 = v144;

    sub_189182E00(&v496);
    sub_188FE348C(v441, &v514);
    sub_188C4F518(&v496);
    v436 = v122;
    v437 = *&v125;
    if (!*(&v515 + 1))
    {
      sub_188A3F5FC(&v514, &qword_1EA934730);
      v152 = swift_allocObject();
      *(v152 + 16) = a2;
      v153 = a2;
      sub_188A55B8C(v422);
      v154 = swift_allocObject();
      v422 = sub_188E5C7F0;
      *(v154 + 16) = sub_188E5C7F0;
      *(v154 + 24) = v152;
      *&v516[0] = sub_188E3FE50;
      *(&v516[0] + 1) = v154;
      *&v514 = MEMORY[0x1E69E9820];
      *(&v514 + 1) = 1107296256;
      *&v515 = sub_188A4A968;
      *(&v515 + 1) = &block_descriptor_25_0;
      v155 = _Block_copy(&v514);

      [v20 performWithoutAnimation_];
      _Block_release(v155);
      LOBYTE(v155) = swift_isEscapingClosureAtFileLocation();

      if ((v155 & 1) == 0)
      {
        v156 = 0.0;
        v421 = v152;
        v157 = v456;
        goto LABEL_118;
      }

      goto LABEL_260;
    }

    v430 = v141;
    v435 = v124;
    v433 = *&v123;
    *&v510[16] = v519;
    *&v510[32] = v520;
    v511 = v521;
    v508[2] = v516[2];
    v508[3] = *v517;
    *v510 = v518;
    v509 = *&v517[16];
    v506 = v514;
    v507 = v515;
    v508[1] = v516[1];
    v508[0] = v516[0];
    v145 = *(&v518 + 1);
    v147 = *(&v519 + 1);
    v146 = *&v519;
    v148 = *&v520;
    v524.origin.x = *(&v518 + 1);
    *&v524.origin.y = v519;
    *&v524.size.height = v520;
    MidX = CGRectGetMidX(v524);
    v150 = sub_188E574F4(&v506, v143 - MidX);
    MEMORY[0x1EEE9AC00](v150);
    v151 = v431;
    sub_18905B7FC(sub_188E5C80C, v434, &v514);
    v431 = v151;
    if (*(&v515 + 1))
    {
      v145 = *(v516 + 1);
      v147 = *(&v516[1] + 1);
      v146 = *&v516[1];
      v148 = *&v516[2];
      sub_188C460F0(&v514);
    }

    else
    {
      sub_188A3F5FC(&v514, &qword_1EA934738);
    }

    v158 = IsReduceMotionEnabled;
    v159 = v139;
    v525.origin.x = v145;
    v525.origin.y = v146;
    v525.size.width = v147;
    v525.size.height = v148;
    v160 = CGRectGetMidX(v525);
    sub_188E5B14C(&v506, &v514);
    v161 = swift_allocObject();
    *(v161 + 16) = a2;
    *(v161 + 24) = v158;
    v162 = v520;
    *(v161 + 160) = v519;
    *(v161 + 176) = v162;
    *(v161 + 192) = v521;
    v163 = *v517;
    *(v161 + 96) = v516[2];
    *(v161 + 112) = v163;
    v164 = v518;
    *(v161 + 128) = *&v517[16];
    *(v161 + 144) = v164;
    v165 = v515;
    *(v161 + 32) = v514;
    *(v161 + 48) = v165;
    v166 = v516[1];
    *(v161 + 64) = v516[0];
    *(v161 + 80) = v166;
    v167 = a2;
    sub_188A55B8C(v426);
    v168 = swift_allocObject();
    *(v168 + 16) = sub_188E5B1A8;
    *(v168 + 24) = v161;
    *&v498 = sub_188E3FE50;
    *(&v498 + 1) = v168;
    *&v496 = MEMORY[0x1E69E9820];
    *(&v496 + 1) = 1107296256;
    *&v497 = sub_188A4A968;
    *(&v497 + 1) = &block_descriptor_82;
    v169 = _Block_copy(&v496);

    [v20 performWithoutAnimation_];
    _Block_release(v169);
    LOBYTE(v169) = swift_isEscapingClosureAtFileLocation();

    if (v169)
    {
      goto LABEL_258;
    }

    v170 = vabdd_f64(v160, v143);
    [v132 bounds];
    Width = CGRectGetWidth(v526);
    if (Width <= 1.0)
    {
      Width = 1.0;
    }

    *&v172 = v433;
    v173 = v170 / Width * v433;
    v174 = *(a2 + v133);
    v175 = v435;
    v176 = v173 + v435;
    sub_188E5B14C(&v506, &v514);
    sub_188E5B14C(&v514, &v496);
    v177 = swift_allocObject();
    v178 = v438;
    *(v177 + 16) = v143;
    *(v177 + 24) = v178;
    v179 = v520;
    *(v177 + 160) = v519;
    *(v177 + 176) = v179;
    *(v177 + 192) = v521;
    v180 = *v517;
    *(v177 + 96) = v516[2];
    *(v177 + 112) = v180;
    v181 = v518;
    *(v177 + 128) = *&v517[16];
    *(v177 + 144) = v181;
    v182 = v515;
    *(v177 + 32) = v514;
    *(v177 + 48) = v182;
    v183 = v516[1];
    *(v177 + 64) = v516[0];
    *(v177 + 80) = v183;
    *(v177 + 208) = v167;
    v184 = *(v174 + 2);
    *(v174 + 2) = v184 + 1;
    if (v176 == 0.0)
    {
      v185 = *(&v501 + 1);
      v186 = v502;
      v187 = *&v503;
      v188 = v167;
      v527.origin.x = v185;
      *&v527.origin.y = v186;
      v527.size.height = v187;
      if (v143 >= CGRectGetMidX(v527))
      {
        sub_18A4A6D18();
      }

      else
      {
        sub_18A4A6D28();
      }

      v157 = v456;
      v122 = v436;
      sub_189182F94(0, v189, v190);
      *&v172 = v433;
      v175 = v435;
    }

    else
    {
      v427 = v184;
      v191 = sub_18A4A76C8();
      v192 = *(*(v191 - 8) + 56);
      v428 = v167;
      v193 = v420;
      v192(v420, 1, 1, v191);
      v194 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v426 = v174;
      v195 = v428;

      v425 = sub_18A4A7698();
      v196 = swift_allocObject();
      *(v196 + 16) = v425;
      *(v196 + 24) = MEMORY[0x1E69E85E0];
      *(v196 + 32) = v194;
      *(v196 + 40) = v176;
      *(v196 + 48) = v427;
      *(v196 + 56) = sub_188E5B1B8;
      *(v196 + 64) = v177;

      v197 = v193;
      v167 = v428;
      v198 = sub_188E59CB0(0, 0, v197, &unk_18A64C640, v196);
      v199 = v426;
      swift_beginAccess();

      v200 = swift_isUniquelyReferenced_nonNull_native();
      *&v477 = *(v199 + 3);
      *(v199 + 3) = 0x8000000000000000;
      sub_188E9DE78(v198, v427, v200);
      *(v426 + 3) = v477;
      swift_endAccess();

      v157 = v456;
      v122 = v436;
    }

    sub_188C4F518(&v496);
    sub_188E5B14C(&v506, &v514);
    v201 = swift_allocObject();
    v202 = v520;
    *(v201 + 144) = v519;
    *(v201 + 160) = v202;
    *(v201 + 176) = v521;
    v203 = *v517;
    *(v201 + 80) = v516[2];
    *(v201 + 96) = v203;
    v204 = v518;
    *(v201 + 112) = *&v517[16];
    *(v201 + 128) = v204;
    v205 = v515;
    *(v201 + 16) = v514;
    *(v201 + 32) = v205;
    v206 = v516[1];
    *(v201 + 48) = v516[0];
    *(v201 + 64) = v206;
    *(v201 + 192) = v167;
    v207 = v167;
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v437;
    if ((v208 & 1) == 0)
    {
      v454 = sub_188E4B518(0, v454[2] + 1, 1, v454);
    }

    v210 = v454;
    v212 = v454[2];
    v211 = v454[3];
    if (v212 >= v211 >> 1)
    {
      v210 = sub_188E4B518((v211 > 1), v212 + 1, 1, v454);
    }

    v210[2] = v212 + 1;
    v454 = v210;
    v213 = &v210[2 * v212];
    v213[4] = sub_188E5B1C8;
    v213[5] = v201;
    v156 = v173 + v209;
    sub_188C4F518(&v506);
    v425 = v161;
    v426 = sub_188E5B1A8;
    v139 = v159;
    v123 = v172;
    v124 = v175;
    v141 = v430;
LABEL_118:
    v214 = *(a2 + v133);
    v215 = swift_allocObject();
    *(v215 + 16) = v157;
    *(v215 + 24) = a2;
    v216 = v438;
    *(v215 + 32) = v143;
    *(v215 + 40) = v216;
    *(v215 + 48) = v139;
    *(v215 + 56) = v141;
    v217 = IsReduceMotionEnabled;
    *(v215 + 64) = IsReduceMotionEnabled;
    v218 = *(v214 + 16);
    *(v214 + 16) = v218 + 1;
    if (v156 == 0.0)
    {
      v219 = v156;
      v220 = v124;
      v221 = v123;
      v222 = v216;
      v223 = COERCE_DOUBLE(swift_allocObject());
      *(*&v223 + 16) = a2;
      *(*&v223 + 24) = v143;
      *(*&v223 + 32) = v222;
      *(*&v223 + 40) = v139;
      *(*&v223 + 48) = v141;
      *(*&v223 + 56) = v217;
      v224 = v223;
      v435 = v223;
      sub_188C3DF9C(v157 + 16, &v514);
      sub_188C3DF9C(v157 + 16, &v506);
      v225 = swift_allocObject();
      v226 = v508[1];
      *(v225 + 48) = v508[0];
      *(v225 + 64) = v226;
      *(v225 + 80) = v508[2];
      *(v225 + 89) = *(&v508[2] + 9);
      v227 = v507;
      *(v225 + 16) = v506;
      *(v225 + 32) = v227;
      *(v225 + 112) = signpost_c2_entryLock_start;
      *(v225 + 120) = 0;
      v228 = swift_allocObject();
      *(v228 + 16) = 0;
      v229 = v228;
      v230 = swift_allocObject();
      v430 = v230;
      v230[3] = 0;
      v230[4] = 0;
      v230[2] = v229;
      v231 = swift_allocObject();
      *(v231 + 2) = sub_188E5B13C;
      v231[3] = v224;
      *&v498 = sub_188E3FE50;
      *(&v498 + 1) = v231;
      v438 = v215;
      v428 = v231;
      *&v496 = MEMORY[0x1E69E9820];
      *(&v496 + 1) = 1107296256;
      *&v497 = sub_188A4A968;
      *(&v497 + 1) = &block_descriptor_63_0;
      v433 = COERCE_DOUBLE(_Block_copy(&v496));
      v232 = a2;

      v233 = v232;

      sub_188C3DFF8(&v514, &v496);
      v234 = swift_allocObject();
      v235 = v499;
      *(v234 + 56) = v498;
      *(v234 + 72) = v235;
      *(v234 + 88) = v500[0];
      *(v234 + 97) = *(v500 + 9);
      v236 = v497;
      *(v234 + 24) = v496;
      *(v234 + 16) = v229;
      v427 = v229;
      *(v234 + 40) = v236;
      *(v234 + 113) = 0;
      *(v234 + 120) = sub_188E5B140;
      *(v234 + 128) = v225;
      v494 = sub_188C5745C;
      v495 = v234;
      *&v492 = MEMORY[0x1E69E9820];
      *(&v492 + 1) = 1107296256;
      *&v493 = sub_188A4A8F0;
      *(&v493 + 1) = &block_descriptor_69;
      v237 = _Block_copy(&v492);

      *&v498 = sub_188ABBADC;
      *(&v498 + 1) = v430;
      *&v496 = MEMORY[0x1E69E9820];
      *(&v496 + 1) = 1107296256;
      *&v497 = sub_188ABD010;
      *(&v497 + 1) = &block_descriptor_72_0;
      v238 = _Block_copy(&v496);

      v239 = v433;
      [v20 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v238);
      _Block_release(v237);
      _Block_release(*&v239);

      sub_188C3E234(&v514);

      LOBYTE(v239) = swift_isEscapingClosureAtFileLocation();

      if ((LOBYTE(v239) & 1) == 0)
      {
        v4 = v459;
        v123 = v221;
        v124 = v220;
        v156 = v219;
        v122 = v436;
        goto LABEL_122;
      }

LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      sub_18A4A87A8();
      __break(1u);
LABEL_263:
      _s11PlatterViewCMa();
      sub_18A4A87A8();
      __break(1u);
LABEL_264:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }

    v240 = sub_18A4A76C8();
    (*(*(v240 - 8) + 56))(v420, 1, 1, v240);
    v241 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();

    v242 = a2;

    v243 = sub_18A4A7698();
    v244 = swift_allocObject();
    *(v244 + 16) = v243;
    *(v244 + 24) = MEMORY[0x1E69E85E0];
    *(v244 + 32) = v241;
    *(v244 + 40) = v156;
    *(v244 + 48) = v218;
    *(v244 + 56) = sub_188E5A7F0;
    *(v244 + 64) = v215;

    v245 = sub_188E59CB0(0, 0, v420, &unk_18A66CF70, v244);
    swift_beginAccess();

    v246 = swift_isUniquelyReferenced_nonNull_native();
    *&v506 = *(v214 + 24);
    *(v214 + 24) = 0x8000000000000000;
    sub_188E9DE78(v245, v218, v246);
    *(v214 + 24) = v506;
    swift_endAccess();

    v4 = v459;
LABEL_122:
    v247 = *(a2 + v133);
    v248 = swift_allocObject();
    *(v248 + 16) = v132;
    *(v248 + 24) = a2;
    a1 = *(v247 + 16);
    *(v247 + 16) = a1 + 1;
    v3 = v452;
    if (v156 + v122 == 0.0)
    {
      v249 = v132;
      sub_188E5AB60(a2);
    }

    else
    {
      v250 = sub_18A4A76C8();
      v251 = v420;
      (*(*(v250 - 8) + 56))(v420, 1, 1, v250);
      v252 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v253 = v132;
      v254 = a2;

      v255 = sub_18A4A7698();
      v256 = swift_allocObject();
      *(v256 + 16) = v255;
      *(v256 + 24) = MEMORY[0x1E69E85E0];
      *(v256 + 32) = v252;
      *(v256 + 40) = v156 + v122;
      *(v256 + 48) = a1;
      *(v256 + 56) = sub_188E5A804;
      *(v256 + 64) = v248;

      v257 = sub_188E59CB0(0, 0, v251, &unk_18A64C630, v256);
      swift_beginAccess();

      v258 = swift_isUniquelyReferenced_nonNull_native();
      *&v506 = *(v247 + 24);
      *(v247 + 24) = 0x8000000000000000;
      sub_188E9DE78(v257, a1, v258);
      v3 = v452;
      *(v247 + 24) = v506;
      swift_endAccess();
    }

    *&v125 = v437;

    v5 = sub_188E5A7DC;
    v20 = v445;
    v121 = v457;
    v119 = v449;
    v120 = "_UIMonochromaticTreatment";
  }

  while (v457 != v445);
LABEL_129:
  v427 = v5;

  if (!v456)
  {

    v3 = v455 + 64;
    v396 = 1 << *(v455 + 32);
    v397 = -1;
    if (v396 < 64)
    {
      v397 = ~(-1 << v396);
    }

    v398 = v397 & *(v455 + 64);
    isUniquelyReferenced_nonNull_native = (v396 + 63) >> 6;

    v399 = 0;
    v20 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
    if (v398)
    {
      while (1)
      {
        v400 = v399;
LABEL_203:
        v401 = __clz(__rbit64(v398));
        v398 &= v398 - 1;
        [*(*(v455 + 56) + ((v400 << 9) | (8 * v401))) removeFromSuperview];
        if (!v398)
        {
          goto LABEL_199;
        }
      }
    }

    while (1)
    {
LABEL_199:
      v400 = v399 + 1;
      if (__OFADD__(v399, 1))
      {
        goto LABEL_240;
      }

      if (v400 >= isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v398 = *(v3 + 8 * v400);
      ++v399;
      if (v398)
      {
        v399 = v400;
        goto LABEL_203;
      }
    }

LABEL_206:
    isUniquelyReferenced_nonNull_native = v454[2];
    if (isUniquelyReferenced_nonNull_native)
    {
      v20 = v523;
      v402 = v454 + 5;
      do
      {
        v403 = *(v402 - 1);
        *&v514 = v20;

        v403(&v514);

        v402 += 2;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);
    }

    v404 = *(v4 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_assistant);
    if (v404)
    {
      v405 = v455 + 64;
      v406 = 1 << *(v455 + 32);
      v407 = -1;
      if (v406 < 64)
      {
        v407 = ~(-1 << v406);
      }

      v5 = v407 & *(v455 + 64);
      a2 = (v406 + 63) >> 6;

      v3 = v404;
      a1 = 0;
      v4 = &selRef_setArtworkView_;
      while (v5)
      {
        v408 = a1;
        v409 = v455;
LABEL_219:
        v410 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v411 = *(*(v409 + 56) + ((v408 << 9) | (8 * v410)));
        v20 = *&v411[OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID + 8];
        v412 = v411;

        isUniquelyReferenced_nonNull_native = sub_18A4A7258();

        [v3 setAssistedView:0 identifier:isUniquelyReferenced_nonNull_native];
      }

      v409 = v455;
      while (1)
      {
        v408 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_238;
        }

        if (v408 >= a2)
        {

          isEscapingClosureAtFileLocation = *&v459[v429];
          if (isEscapingClosureAtFileLocation >> 62)
          {
            goto LABEL_253;
          }

          v413 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
          v414 = v427;
          if (!v413)
          {
            goto LABEL_254;
          }

          goto LABEL_223;
        }

        v5 = *(v405 + 8 * v408);
        ++a1;
        if (v5)
        {
          a1 = v408;
          goto LABEL_219;
        }
      }
    }

    goto LABEL_230;
  }

  v3 = v455;
  a2 = v455 + 64;
  v259 = 1 << *(v455 + 32);
  if (v259 < 64)
  {
    v260 = ~(-1 << v259);
  }

  else
  {
    v260 = -1;
  }

  a1 = v120;
  isUniquelyReferenced_nonNull_native = v260 & *(v455 + 64);
  v457 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_disappearingPlatterViews;
  v261 = (v259 + 63) >> 6;
  v447 = &v467;
  v435 = COERCE_DOUBLE(&v462);

  v262 = 0;
  v20 = &qword_1EA934730;
  v263 = *(a1 + 1864);
  v423 = v261;
  v424 = a2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    while (1)
    {
LABEL_135:
      v5 = (v262 + 1);
      if (__OFADD__(v262, 1))
      {
        goto LABEL_239;
      }

      if (v5 >= v261)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = *(a2 + 8 * v5);
      ++v262;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_138;
      }
    }

    goto LABEL_206;
  }

  while (2)
  {
    while (1)
    {
      v5 = v262;
LABEL_138:
      *&v433 = (isUniquelyReferenced_nonNull_native - 1) & isUniquelyReferenced_nonNull_native;
      v264 = *(*(v3 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)))));
      sub_189182E00(&v514);
      sub_188FE348C(v452, &v506);
      sub_188C4F518(&v514);
      a1 = swift_allocObject();
      *(a1 + 16) = v4;
      *(a1 + 24) = v264;
      sub_188A3F29C(&v506, &v514, &qword_1EA934730);
      if (*(&v515 + 1))
      {
        break;
      }

      v272 = v4;
      v273 = v264;
      sub_188A3F5FC(&v514, &qword_1EA934730);
      v274 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

      sub_188E56D00();

      v275 = *&v273[v274];
      v20 = &qword_1EA934730;
      ++*(v275 + 16);
      sub_188E5BAC0(v273, sub_188E5B1E4, a1);

      sub_188A3F5FC(&v506, &qword_1EA934730);

      v262 = v5;
      v3 = v455;
      isUniquelyReferenced_nonNull_native = *&v433;
      if (v433 == 0.0)
      {
        goto LABEL_135;
      }
    }

    v430 = a1;
    v428 = v5;
    v502 = v519;
    v503 = v520;
    v504 = v521;
    v500[0] = v516[2];
    v500[1] = *v517;
    v501 = v518;
    v500[2] = *&v517[16];
    v496 = v514;
    v497 = v515;
    v499 = v516[1];
    v498 = v516[0];
    v265 = v4;
    v266 = v264;
    v267 = sub_188E574F4(&v496, 0.0);
    MEMORY[0x1EEE9AC00](v267);
    isUniquelyReferenced_nonNull_native = v431;
    sub_18905B7FC(sub_188E5C0F8, v434, &v514);
    if (*(&v515 + 1))
    {
      v268 = *(v516 + 1);
      v270 = *(&v516[1] + 1);
      v269 = *&v516[1];
      v271 = *&v516[2];
      sub_188C460F0(&v514);
    }

    else
    {
      sub_188A3F5FC(&v514, &qword_1EA934738);
      v268 = *(&v501 + 1);
      v270 = *(&v502 + 1);
      v269 = *&v502;
      v271 = *&v503;
    }

    v528.origin.x = v268;
    v528.origin.y = v269;
    v528.size.width = v270;
    v528.size.height = v271;
    v276 = CGRectGetMidX(v528);
    [v266 center];
    v278 = vabdd_f64(v276, v277);
    sub_188C46270(&v496, &v514);
    v279 = v457;
    swift_beginAccess();
    v5 = v266;
    sub_188F283E4(&v514, v5);
    swift_endAccess();
    [v265 bounds];
    v281 = CGRectGetWidth(v529);
    if (v281 <= 1.0)
    {
      v281 = 1.0;
    }

    v282 = v278 / v281 * v263 + v263;
    v3 = *(v4 + v279);
    MEMORY[0x1EEE9AC00](v280);

    sub_188E5B358(v283, sub_188E5C128);
    v20 = v284;
    v431 = isUniquelyReferenced_nonNull_native;

    a2 = 0;
    v286 = v20 + 64;
    v285 = *(v20 + 64);
    v446 = v20;
    v287 = 1 << *(v20 + 32);
    if (v287 < 64)
    {
      v288 = ~(-1 << v287);
    }

    else
    {
      v288 = -1;
    }

    v4 = v288 & v285;
    v289 = (v287 + 63) >> 6;
    v436 = *&v289;
    *&v437 = v20 + 64;
    v438 = v5;
    while (2)
    {
      if (v4)
      {
LABEL_158:
        v291 = *(*(v446 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v4)))));
        v20 = v459;
        v292 = v457;
        swift_beginAccess();
        sub_188C46270(&v496, &v514);
        isUniquelyReferenced_nonNull_native = v291;
        v293 = swift_isUniquelyReferenced_nonNull_native();
        *&v477 = *(v20 + v292);
        v3 = v477;
        *(v20 + v292) = 0x8000000000000000;
        v294 = sub_188E8B7E4(isUniquelyReferenced_nonNull_native);
        v296 = *(v3 + 16);
        v297 = (v295 & 1) == 0;
        v30 = __OFADD__(v296, v297);
        v298 = v296 + v297;
        if (v30)
        {
          goto LABEL_243;
        }

        v20 = v295;
        if (*(v3 + 24) >= v298)
        {
          if ((v293 & 1) == 0)
          {
            v300 = v294;
            sub_188FA1210();
            v294 = v300;
            v3 = v477;
            if (v20)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }
        }

        else
        {
          sub_1890BAF68(v298, v293);
          v294 = sub_188E8B7E4(isUniquelyReferenced_nonNull_native);
          if ((v20 & 1) != (v299 & 1))
          {
            goto LABEL_263;
          }
        }

        v3 = v477;
        if (v20)
        {
LABEL_164:
          sub_188E5C248(&v514, *(v3 + 56) + 40 * v294);

LABEL_168:
          v4 &= v4 - 1;
          *&v459[v457] = v3;
          swift_endAccess();
          v306 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler);
          sub_188E5B14C(&v496, &v514);
          sub_188E5B14C(&v514, &v492);
          v5 = swift_allocObject();
          v307 = *&v517[16];
          *(v5 + 152) = v518;
          v308 = v520;
          *(v5 + 168) = v519;
          *(v5 + 184) = v308;
          *(v5 + 200) = v521;
          v309 = v516[0];
          *(v5 + 88) = v516[1];
          v310 = *v517;
          *(v5 + 104) = v516[2];
          *(v5 + 120) = v310;
          *(v5 + 136) = v307;
          v311 = v515;
          *(v5 + 40) = v514;
          *(v5 + 56) = v311;
          v312 = v456;
          *(v5 + 16) = v456;
          v313 = IsReduceMotionEnabled;
          *(v5 + 24) = IsReduceMotionEnabled;
          *(v5 + 32) = isUniquelyReferenced_nonNull_native;
          *(v5 + 72) = v309;
          v314 = *(v306 + 16);
          *(v306 + 16) = v314 + 1;
          if (v282 == 0.0)
          {
            sub_188E5B14C(&v492, &v477);
            v3 = swift_allocObject();
            *(v3 + 16) = v313;
            *(v3 + 24) = isUniquelyReferenced_nonNull_native;
            v315 = v486;
            *(v3 + 160) = v485;
            *(v3 + 176) = v315;
            *(v3 + 192) = v487;
            v316 = v482;
            *(v3 + 96) = v481;
            *(v3 + 112) = v316;
            v317 = v484;
            *(v3 + 128) = v483;
            *(v3 + 144) = v317;
            v318 = v478;
            *(v3 + 32) = v477;
            *(v3 + 48) = v318;
            v319 = v480;
            *(v3 + 64) = v479;
            *(v3 + 80) = v319;
            sub_188C3DF9C(v312 + 16, v476);
            sub_188C3DF9C(v312 + 16, &v471);
            v320 = swift_allocObject();
            v321 = v474;
            *(v320 + 48) = v473;
            *(v320 + 64) = v321;
            *(v320 + 80) = v475[0];
            *(v320 + 89) = *(v475 + 9);
            v322 = v472;
            *(v320 + 16) = v471;
            *(v320 + 32) = v322;
            *(v320 + 112) = signpost_c2_entryLock_start;
            *(v320 + 120) = 0;
            v323 = swift_allocObject();
            v323[2] = 0;
            v324 = v323;
            v448 = v323;
            v325 = swift_allocObject();
            v439 = v325;
            *(v325 + 3) = 0;
            *(v325 + 4) = 0;
            *(v325 + 2) = v324;
            *&v444 = objc_opt_self();
            v326 = swift_allocObject();
            v326[2] = sub_188E5C238;
            v326[3] = v3;
            *&v468 = sub_188E3FE50;
            *(&v468 + 1) = v326;
            v441 = v326;
            *&v466 = MEMORY[0x1E69E9820];
            *(&v466 + 1) = 1107296256;
            *&v467 = sub_188A4A968;
            *(&v467 + 1) = &block_descriptor_125;
            v440 = _Block_copy(&v466);
            v327 = isUniquelyReferenced_nonNull_native;

            v445 = v327;
            v328 = v448;

            sub_188C3DFF8(v476, &v466);
            v329 = swift_allocObject();
            v330 = v469;
            *(v329 + 56) = v468;
            *(v329 + 72) = v330;
            *(v329 + 88) = v470[0];
            *(v329 + 97) = *(v470 + 9);
            v331 = v467;
            *(v329 + 24) = v466;
            *(v329 + 16) = v328;
            *(v329 + 40) = v331;
            *(v329 + 113) = 0;
            *(v329 + 120) = sub_188E5C7FC;
            *(v329 + 128) = v320;
            v464 = sub_188E5C800;
            v465 = v329;
            v460 = MEMORY[0x1E69E9820];
            v461 = 1107296256;
            v462 = sub_188A4A8F0;
            v463 = &block_descriptor_132;
            v332 = _Block_copy(&v460);

            *&v468 = sub_188E5C82C;
            *(&v468 + 1) = v439;
            *&v466 = MEMORY[0x1E69E9820];
            *(&v466 + 1) = 1107296256;
            *&v467 = sub_188ABD010;
            *(&v467 + 1) = &block_descriptor_135;
            v333 = _Block_copy(&v466);

            a1 = v440;
            [v444 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
            _Block_release(v333);
            _Block_release(v332);
            _Block_release(a1);

            sub_188C3E234(v476);
            sub_188C4F518(&v492);

            v20 = v441;
            isUniquelyReferenced_nonNull_native = swift_isEscapingClosureAtFileLocation();

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_244;
            }

            v5 = v438;
          }

          else
          {
            v334 = sub_18A4A76C8();
            v441 = *(v334 - 8);
            v441[7](v443, 1, 1, v334);
            v335 = swift_allocObject();
            *&v444 = v306;
            swift_weakInit();
            sub_18A4A76A8();
            v336 = v334;

            v440 = isUniquelyReferenced_nonNull_native;

            v337 = sub_18A4A7698();
            v338 = swift_allocObject();
            *(v338 + 16) = v337;
            *(v338 + 24) = MEMORY[0x1E69E85E0];
            *(v338 + 32) = v335;
            *(v338 + 40) = v282;
            v448 = v314;
            *(v338 + 48) = v314;
            *(v338 + 56) = sub_188E5C144;
            v445 = v5;
            *(v338 + 64) = v5;
            v339 = v441;

            v340 = v432;
            sub_188A3F29C(v443, v432, &qword_1EA934728);
            LODWORD(v337) = (v339[6])(v340, 1, v336);

            if (v337 == 1)
            {
              sub_188A3F5FC(v340, &qword_1EA934728);
              a1 = 7168;
            }

            else
            {
              v341 = sub_18A4A76B8();
              (v339[1])(v340, v336);
              a1 = v341 | 0x1C00;
            }

            v342 = *(v338 + 16);
            swift_unknownObjectRetain();

            v343 = v444;
            if (v342)
            {
              swift_getObjectType();
              v344 = sub_18A4A7678();
              v346 = v345;
              swift_unknownObjectRelease();
            }

            else
            {
              v344 = 0;
              v346 = 0;
            }

            sub_188A3F5FC(v443, &qword_1EA934728);
            if (v346 | v344)
            {
              v489 = 0;
              v488 = 0;
              v490 = v344;
              v491 = v346;
            }

            v20 = swift_task_create();
            swift_beginAccess();

            LODWORD(v5) = swift_isUniquelyReferenced_nonNull_native();
            v476[0] = *(v343 + 24);
            v3 = v476[0];
            *(v343 + 24) = 0x8000000000000000;
            isUniquelyReferenced_nonNull_native = v448;
            v347 = sub_188B85570(v448);
            v349 = *(v3 + 16);
            v350 = (v348 & 1) == 0;
            v30 = __OFADD__(v349, v350);
            v351 = v349 + v350;
            if (v30)
            {
              goto LABEL_246;
            }

            a1 = v348;
            if (*(v3 + 24) >= v351)
            {
              if ((v5 & 1) == 0)
              {
                v355 = v347;
                sub_188FA0D8C();
                v347 = v355;
                isUniquelyReferenced_nonNull_native = v448;
              }
            }

            else
            {
              sub_1890BAA00(v351, v5);
              v347 = sub_188B85570(isUniquelyReferenced_nonNull_native);
              if ((a1 & 1) != (v352 & 1))
              {
                goto LABEL_264;
              }
            }

            v5 = v438;
            v3 = v476[0];
            if (a1)
            {
              *(*(v476[0] + 56) + 8 * v347) = v20;
            }

            else
            {
              *(v476[0] + 8 * (v347 >> 6) + 64) |= 1 << v347;
              *(*(v3 + 48) + 8 * v347) = isUniquelyReferenced_nonNull_native;
              *(*(v3 + 56) + 8 * v347) = v20;
              v353 = *(v3 + 16);
              v30 = __OFADD__(v353, 1);
              v354 = v353 + 1;
              if (v30)
              {
                goto LABEL_247;
              }

              *(v3 + 16) = v354;
            }

            *(v343 + 24) = v3;
            swift_endAccess();

            sub_188C4F518(&v492);
          }

          *&v289 = v436;
          v286 = *&v437;
          continue;
        }

LABEL_166:
        *(v3 + 8 * (v294 >> 6) + 64) |= 1 << v294;
        *(*(v3 + 48) + 8 * v294) = isUniquelyReferenced_nonNull_native;
        v301 = *(v3 + 56) + 40 * v294;
        v302 = v514;
        v303 = v515;
        *(v301 + 32) = *&v516[0];
        *v301 = v302;
        *(v301 + 16) = v303;
        v304 = *(v3 + 16);
        v30 = __OFADD__(v304, 1);
        v305 = v304 + 1;
        if (v30)
        {
          goto LABEL_245;
        }

        *(v3 + 16) = v305;
        goto LABEL_168;
      }

      break;
    }

    while (1)
    {
      v290 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
        goto LABEL_232;
      }

      if (v290 >= v289)
      {
        break;
      }

      v4 = *(v286 + 8 * v290);
      ++a2;
      if (v4)
      {
        a2 = v290;
        goto LABEL_158;
      }
    }

    v356 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

    sub_188E56D00();

    ++*(*(v5 + v356) + 16);

    v357 = v453;
    sub_188E5B4D8(v453, v5);

    v358 = *(v5 + v356);
    sub_188E5B14C(&v496, &v514);
    sub_188E5B14C(&v514, &v492);
    v359 = swift_allocObject();
    v360 = *&v517[16];
    *(v359 + 152) = v518;
    v361 = v520;
    *(v359 + 168) = v519;
    *(v359 + 184) = v361;
    *(v359 + 200) = v521;
    v362 = v516[0];
    *(v359 + 88) = v516[1];
    v363 = *v517;
    *(v359 + 104) = v516[2];
    *(v359 + 120) = v363;
    *(v359 + 136) = v360;
    v364 = v515;
    *(v359 + 40) = v514;
    *(v359 + 56) = v364;
    v365 = v456;
    *(v359 + 16) = v456;
    *(v359 + 24) = v357;
    v366 = IsReduceMotionEnabled;
    *(v359 + 25) = IsReduceMotionEnabled;
    *(v359 + 32) = v5;
    *(v359 + 72) = v362;
    v367 = v430;
    *(v359 + 216) = sub_188E5B1E4;
    *(v359 + 224) = v367;
    v368 = *(v358 + 16);
    *(v358 + 16) = v368 + 1;
    if (v282 != 0.0)
    {
      v388 = sub_18A4A76C8();
      v389 = v5;
      v390 = v420;
      (*(*(v388 - 8) + 56))(v420, 1, 1, v388);
      v391 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();

      v392 = v389;

      v393 = sub_18A4A7698();
      a1 = swift_allocObject();
      *(a1 + 16) = v393;
      *(a1 + 24) = MEMORY[0x1E69E85E0];
      *(a1 + 32) = v391;
      *(a1 + 40) = v282;
      *(a1 + 48) = v368;
      *(a1 + 56) = sub_188E5C2A4;
      *(a1 + 64) = v359;

      v394 = sub_188E59CB0(0, 0, v390, &unk_18A64C650, a1);
      swift_beginAccess();

      v395 = swift_isUniquelyReferenced_nonNull_native();
      v476[0] = *(v358 + 24);
      *(v358 + 24) = 0x8000000000000000;
      sub_188E9DE78(v394, v368, v395);
      *(v358 + 24) = v476[0];
      swift_endAccess();

      sub_188C4F518(&v492);
      v20 = &qword_1EA934730;
      sub_188A3F5FC(&v506, &qword_1EA934730);

LABEL_192:
      sub_188C4F518(&v496);
      v262 = v428;
      v4 = v459;
      v3 = v455;
      v261 = v423;
      a2 = v424;
      isUniquelyReferenced_nonNull_native = *&v433;
      if (v433 == 0.0)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

  sub_188E5B14C(&v492, &v477);
  v3 = swift_allocObject();
  *(v3 + 16) = v357;
  *(v3 + 17) = v366;
  *(v3 + 24) = v5;
  v369 = v486;
  *(v3 + 160) = v485;
  *(v3 + 176) = v369;
  *(v3 + 192) = v487;
  v370 = v482;
  *(v3 + 96) = v481;
  *(v3 + 112) = v370;
  v371 = v484;
  *(v3 + 128) = v483;
  *(v3 + 144) = v371;
  v372 = v478;
  *(v3 + 32) = v477;
  *(v3 + 48) = v372;
  v373 = v480;
  *(v3 + 64) = v479;
  *(v3 + 80) = v373;
  v374 = swift_allocObject();
  *(v374 + 16) = sub_188E5B1E4;
  *(v374 + 24) = v367;
  v375 = v374;
  *&v444 = v374;
  sub_188C3DF9C(v365 + 16, v476);
  sub_188C3DF9C(v365 + 16, &v471);
  v376 = swift_allocObject();
  v377 = v474;
  *(v376 + 48) = v473;
  *(v376 + 64) = v377;
  *(v376 + 80) = v475[0];
  *(v376 + 89) = *(v475 + 9);
  v378 = v472;
  *(v376 + 16) = v471;
  *(v376 + 32) = v378;
  *(v376 + 112) = signpost_c2_entryLock_start;
  *(v376 + 120) = 0;
  v379 = swift_allocObject();
  *(v379 + 16) = 0;
  v380 = swift_allocObject();
  v380[2] = v379;
  v380[3] = sub_188A4A9DC;
  v380[4] = v375;
  v448 = objc_opt_self();
  v381 = swift_allocObject();
  *(v381 + 16) = sub_188E5C2C0;
  *(v381 + 24) = v3;
  *&v468 = sub_188E3FE50;
  *(&v468 + 1) = v381;
  v446 = v381;
  *&v466 = MEMORY[0x1E69E9820];
  *(&v466 + 1) = 1107296256;
  *&v467 = sub_188A4A968;
  *(&v467 + 1) = &block_descriptor_166;
  v445 = _Block_copy(&v466);
  v382 = v5;
  swift_retain_n();

  v441 = v382;

  v4 = v444;

  sub_188C3DFF8(v476, &v466);
  v383 = swift_allocObject();
  v384 = v469;
  *(v383 + 56) = v468;
  *(v383 + 72) = v384;
  *(v383 + 88) = v470[0];
  *(v383 + 97) = *(v470 + 9);
  v385 = v467;
  *(v383 + 24) = v466;
  *(v383 + 16) = v379;
  *(v383 + 40) = v385;
  *(v383 + 113) = 0;
  *(v383 + 120) = sub_188E5C7FC;
  *(v383 + 128) = v376;
  v464 = sub_188E5C800;
  v465 = v383;
  v460 = MEMORY[0x1E69E9820];
  v461 = 1107296256;
  v462 = sub_188A4A8F0;
  v463 = &block_descriptor_173;
  v386 = _Block_copy(&v460);

  *&v468 = sub_188E5C82C;
  *(&v468 + 1) = v380;
  *&v466 = MEMORY[0x1E69E9820];
  *(&v466 + 1) = 1107296256;
  *&v467 = sub_188ABD010;
  *(&v467 + 1) = &block_descriptor_176;
  v387 = _Block_copy(&v466);

  a1 = v445;
  [v448 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v387);
  _Block_release(v386);
  _Block_release(a1);

  sub_188C3E234(v476);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_188C4F518(&v492);
    v20 = &qword_1EA934730;
    sub_188A3F5FC(&v506, &qword_1EA934730);

    goto LABEL_192;
  }

  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  v413 = sub_18A4A7F68();
  v414 = v427;
  if (v413)
  {
LABEL_223:
    if (v413 < 1)
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    v415 = 0;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v416 = sub_188E49A4C(v415, isEscapingClosureAtFileLocation);
      }

      else
      {
        v416 = *(isEscapingClosureAtFileLocation + 8 * v415 + 32);
      }

      ++v415;
      v417 = v416;

      v418 = sub_18A4A7258();

      [v3 *(v4 + 280)];
    }

    while (v413 != v415);

LABEL_230:

    v414 = v427;
    goto LABEL_255;
  }

LABEL_254:

LABEL_255:
  sub_188A55B8C(v451);
  sub_188A55B8C(v414);
  sub_188A55B8C(v426);
  v18 = v422;
  return sub_188A55B8C(v18);
}

uint64_t sub_188E554E0(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4, int a5, int a6, void (*a7)(uint64_t, uint64_t))
{
  LODWORD(v191) = a6;
  LODWORD(v187) = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v178 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v167 - v15;
  v177 = sub_18A4A5FA8();
  v16 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v173 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_18A4A4C78();
  v18 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v167 - v21;
  v176 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v176);
  v169 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v167 - v24;
  v25 = *a1;
  v26 = *(*a1 + 16);
  v27 = "UICoreHostingViewForUIKitTester";
  v193 = a4;
  v194 = a2;
  v190 = v25;
  v188 = v18;
  v192 = a3;
  if (!v26 || (v28 = sub_188C479E4(a2), (v29 & 1) == 0))
  {
    v185 = a7;
    v36 = a3 + OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    v37 = *(v36 + 18);
    v38 = *(v37 + 2);
    v39 = MEMORY[0x1E69E7CC0];
    v186 = v16;
    if (v38)
    {
      *&v211[0] = MEMORY[0x1E69E7CC0];

      sub_188E6D174(0, v38, 0);
      v39 = *&v211[0];
      v184 = v37;
      v40 = v37 + 136;
      do
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = *v40;
        sub_188C46860(v41, v42, *v40);
        *&v211[0] = v39;
        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_188E6D174((v44 > 1), v45 + 1, 1);
          v39 = *&v211[0];
        }

        v40 += 160;
        *(v39 + 16) = v45 + 1;
        v46 = v39 + 24 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        *(v46 + 48) = v43;
        --v38;
      }

      while (v38);

      a2 = v194;
      v25 = v190;
      v16 = v186;
      v27 = "UICoreHostingViewForUIKitTester";
    }

    v47 = sub_188F98620(v39);

    v48 = *(a2 + 144);
    v49 = *(v48 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v184 = v47;
      *&v211[0] = MEMORY[0x1E69E7CC0];
      sub_188E6D174(0, v49, 0);
      v50 = *&v211[0];
      v51 = (v48 + 136);
      do
      {
        v52 = *(v51 - 2);
        v53 = *(v51 - 1);
        v54 = *v51;
        sub_188C46860(v52, v53, *v51);
        *&v211[0] = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_188E6D174((v55 > 1), v56 + 1, 1);
          v50 = *&v211[0];
        }

        v51 += 160;
        *(v50 + 16) = v56 + 1;
        v57 = v50 + 24 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v53;
        *(v57 + 48) = v54;
        --v49;
      }

      while (v49);
      a2 = v194;
      v25 = v190;
      v16 = v186;
      v27 = "UICoreHostingViewForUIKitTester";
      v47 = v184;
    }

    v58 = sub_188F98620(v50);

    v59 = sub_1891E566C(v47, v58);

    v60 = 0.0;
    a4 = v193;
    v61 = v191;
    if ((v59 & 1) == 0)
    {
      sub_18A4A6D08();
      sub_189182F94(1, v62, v63);
      v60 = *(v27 + 152);
    }

    goto LABEL_28;
  }

  v30 = *(*(v25 + 56) + 8 * v28);

  sub_18A4A6D08();
  sub_189182F94(1, v31, v32);
  v33 = *(v30 + 16);
  if (v33)
  {
    if (v33 > 3)
    {
      v34 = v33 & 0x7FFFFFFFFFFFFFFCLL;
      v65 = (v30 + 48);
      v35 = 0.0;
      v66 = v33 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = v35 + *(v65 - 2) + *(v65 - 1) + *v65 + v65[1];
        v65 += 4;
        v66 -= 4;
      }

      while (v66);
      if (v33 == v34)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0.0;
    }

    v67 = v33 - v34;
    v68 = (v30 + 8 * v34 + 32);
    do
    {
      v69 = *v68++;
      v35 = v35 + v69;
      --v67;
    }

    while (v67);
LABEL_26:

    v64 = v35 / v33;
    goto LABEL_27;
  }

  v64 = 0.0;
LABEL_27:
  v61 = v191;
  v60 = 0.06;
  sub_18918503C(v64 / 6.0, 0.0, 0.06);
LABEL_28:
  v70 = 0.14;
  if ((v187 & 1) == 0)
  {
    v70 = v60;
  }

  sub_1891853C8(a2, a4, v61 & 1, v70);
  v71 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v71);

  sub_188E5B358(v72, sub_188E5C328);
  v74 = v73;

  v75 = v27;
  v76 = 0;
  v77 = v74 + 64;
  v78 = 1 << *(v74 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v74 + 64);
  v81 = (v78 + 63) >> 6;
  v179 = v188 + 8;
  v174 = (v16 + 1);
  v175 = v188 + 16;
  v191 = v74;
  v192 = &v198;
  v180 = v196;
  v82 = *(v75 + 152);
  v181 = v81;
  v182 = v74 + 64;
  while (v80)
  {
LABEL_41:
    v84 = *(v25 + 16);
    v85 = *(*(v191 + 48) + ((v76 << 9) | (8 * __clz(__rbit64(v80)))));
    if (v84)
    {
      v86 = sub_188C479E4(a2);
      if (v87)
      {
        v88 = *(*(v25 + 56) + 8 * v86);
        v89 = *(v88 + 16);
        if (v89)
        {
          if (v89 <= 3)
          {
            v90 = 0;
            v91 = 0.0;
            goto LABEL_51;
          }

          v90 = v89 & 0x7FFFFFFFFFFFFFFCLL;
          v93 = (v88 + 48);
          v91 = 0.0;
          v94 = v89 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v91 = v91 + *(v93 - 2) + *(v93 - 1) + *v93 + v93[1];
            v93 += 4;
            v94 -= 4;
          }

          while (v94);
          if (v89 != v90)
          {
LABEL_51:
            v95 = v89 - v90;
            v96 = (v88 + 8 * v90 + 32);
            do
            {
              v97 = *v96++;
              v91 = v91 + v97;
              --v95;
            }

            while (v95);
          }

          v92 = v91 / v89;
          if (UIAccessibilityIsReduceMotionEnabled())
          {
            goto LABEL_55;
          }

LABEL_54:
          sub_188E56D00();
          v188 = v85;
          v98 = v168;
          sub_188E5A020();
          v99 = *(v176 + 28);
          v187 = *v175;
          v100 = v170;
          v101 = v172;
          v187(v170, v98 + v99, v172);
          sub_188E5C34C(v98);
          v102 = v173;
          sub_18A4A4C28();
          v186 = *v179;
          (v186)(v100, v101);
          sub_18918AC08(v102, v92 / 6.0, 0.0, v82);
          v185 = *v174;
          v185(v102, v177);
          sub_188E5A020();
          v103 = v176;
          v187(v100, v98 + *(v176 + 28), v101);
          v104 = v98;
          v85 = v188;
          sub_188E5C34C(v104);
          sub_18A4A4C48();
          (v186)(v100, v101);
          v105 = v169;
          sub_188E5A020();
          v106 = v171;
          v187(v171, v105 + *(v103 + 28), v101);
          sub_188E5C34C(v105);
          sub_18A4A4C08();
          v108 = v107;
          (v186)(v106, v101);
          a2 = v194;
          sub_18918AC08(v102, 0.0, 0.0, v108 + v82);
          v185(v102, v177);
          a4 = v193;
          goto LABEL_55;
        }

        v92 = 0.0;
        if (!UIAccessibilityIsReduceMotionEnabled())
        {
          goto LABEL_54;
        }
      }
    }

LABEL_55:
    v80 &= v80 - 1;
    v109 = *&v85[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
    sub_188C45F1C(a2, v211);
    sub_188C45F1C(v211, v210);
    v110 = swift_allocObject();
    *(v110 + 16) = a4;
    *(v110 + 24) = v85;
    v111 = v211[9];
    *(v110 + 160) = v211[8];
    *(v110 + 176) = v111;
    v112 = v211[11];
    *(v110 + 192) = v211[10];
    *(v110 + 208) = v112;
    v113 = v211[5];
    *(v110 + 96) = v211[4];
    *(v110 + 112) = v113;
    v114 = v211[7];
    *(v110 + 128) = v211[6];
    *(v110 + 144) = v114;
    v115 = v211[1];
    *(v110 + 32) = v211[0];
    *(v110 + 48) = v115;
    v116 = v211[3];
    *(v110 + 64) = v211[2];
    *(v110 + 80) = v116;
    v117 = *(v109 + 2);
    *(v109 + 2) = v117 + 1;
    if (v60 == 0.0)
    {
      sub_188C45F1C(v210, v205);
      v118 = swift_allocObject();
      v119 = v205[9];
      *(v118 + 152) = v205[8];
      *(v118 + 168) = v119;
      v120 = v205[11];
      *(v118 + 184) = v205[10];
      *(v118 + 200) = v120;
      v121 = v205[5];
      *(v118 + 88) = v205[4];
      *(v118 + 104) = v121;
      v122 = v205[7];
      *(v118 + 120) = v205[6];
      *(v118 + 136) = v122;
      v123 = v205[1];
      *(v118 + 24) = v205[0];
      *(v118 + 40) = v123;
      v124 = v205[3];
      *(v118 + 56) = v205[2];
      *(v118 + 16) = v85;
      *(v118 + 72) = v124;
      sub_188C3DF9C(a4 + 16, v204);
      sub_188C3DF9C(a4 + 16, v202);
      v125 = swift_allocObject();
      v126 = v202[3];
      *(v125 + 48) = v202[2];
      *(v125 + 64) = v126;
      *(v125 + 80) = v203[0];
      *(v125 + 89) = *(v203 + 9);
      v127 = v202[1];
      *(v125 + 16) = v202[0];
      *(v125 + 32) = v127;
      *(v125 + 112) = signpost_c2_entryLock_start;
      *(v125 + 120) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = 0;
      v129 = swift_allocObject();
      v184 = v129;
      *(v129 + 3) = 0;
      *(v129 + 4) = 0;
      *(v129 + 2) = v128;
      v187 = objc_opt_self();
      v130 = swift_allocObject();
      *(v130 + 16) = sub_188E5C340;
      *(v130 + 24) = v118;
      *&v199 = sub_188E3FE50;
      *(&v199 + 1) = v130;
      v186 = v130;
      *&v197 = MEMORY[0x1E69E9820];
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_188A4A968;
      *(&v198 + 1) = &block_descriptor_207;
      v185 = _Block_copy(&v197);
      v188 = v85;

      sub_188C3DFF8(v204, &v197);
      v131 = swift_allocObject();
      v132 = v200;
      *(v131 + 56) = v199;
      *(v131 + 72) = v132;
      *(v131 + 88) = v201[0];
      *(v131 + 97) = *(v201 + 9);
      v133 = v198;
      *(v131 + 24) = v197;
      *(v131 + 16) = v128;
      v183 = v128;
      *(v131 + 40) = v133;
      *(v131 + 113) = 0;
      *(v131 + 120) = sub_188E5C7FC;
      *(v131 + 128) = v125;
      v196[2] = sub_188E5C800;
      v196[3] = v131;
      v195[0] = MEMORY[0x1E69E9820];
      v195[1] = 1107296256;
      v196[0] = sub_188A4A8F0;
      v196[1] = &block_descriptor_214;
      v134 = _Block_copy(v195);

      *&v199 = sub_188E5C82C;
      *(&v199 + 1) = v184;
      *&v197 = MEMORY[0x1E69E9820];
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_188ABD010;
      *(&v198 + 1) = &block_descriptor_217;
      v135 = _Block_copy(&v197);

      v136 = v185;
      [v187 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v135);
      _Block_release(v134);
      _Block_release(v136);

      sub_188C3E234(v204);
      sub_188C460F0(v210);

      LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

      if (v135)
      {
        goto LABEL_77;
      }

      a4 = v193;
    }

    else
    {
      v137 = sub_18A4A76C8();
      v138 = *(v137 - 8);
      v185 = v137;
      v186 = v138;
      (*(v138 + 56))(v189, 1, 1, v137);
      v139 = swift_allocObject();
      v187 = v109;
      swift_weakInit();
      sub_18A4A76A8();
      v184 = v85;

      v140 = sub_18A4A7698();
      v141 = swift_allocObject();
      *(v141 + 16) = v140;
      *(v141 + 24) = MEMORY[0x1E69E85E0];
      *(v141 + 32) = v139;
      *(v141 + 40) = v60;
      v188 = v117;
      *(v141 + 48) = v117;
      v143 = v185;
      v142 = v186;
      *(v141 + 56) = sub_188E5C334;
      *(v141 + 64) = v110;

      v144 = v178;
      sub_188A3F29C(v189, v178, &qword_1EA934728);
      LODWORD(v140) = v142[6](v144, 1, v143);

      if (v140 == 1)
      {
        sub_188A3F5FC(v144, &qword_1EA934728);
      }

      else
      {
        sub_18A4A76B8();
        (v142[1])(v144, v143);
      }

      v145 = *(v141 + 16);
      swift_unknownObjectRetain();

      v146 = v187;
      if (v145)
      {
        swift_getObjectType();
        v147 = sub_18A4A7678();
        v149 = v148;
        swift_unknownObjectRelease();
      }

      else
      {
        v147 = 0;
        v149 = 0;
      }

      v150 = v188;
      sub_188A3F5FC(v189, &qword_1EA934728);
      if (v149 | v147)
      {
        v207 = 0;
        v206 = 0;
        v208 = v147;
        v209 = v149;
      }

      v151 = swift_task_create();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204[0] = *(v146 + 3);
      v153 = v204[0];
      *(v146 + 3) = 0x8000000000000000;
      v154 = sub_188B85570(v150);
      v156 = *(v153 + 16);
      v157 = (v155 & 1) == 0;
      v158 = __OFADD__(v156, v157);
      v159 = v156 + v157;
      if (v158)
      {
        goto LABEL_78;
      }

      v160 = v155;
      if (*(v153 + 24) >= v159)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v165 = v154;
          sub_188FA0D8C();
          v154 = v165;
        }
      }

      else
      {
        sub_1890BAA00(v159, isUniquelyReferenced_nonNull_native);
        v154 = sub_188B85570(v150);
        if ((v160 & 1) != (v161 & 1))
        {
          goto LABEL_80;
        }
      }

      a4 = v193;
      v162 = v204[0];
      if (v160)
      {
        *(*(v204[0] + 56) + 8 * v154) = v151;
      }

      else
      {
        *(v204[0] + 8 * (v154 >> 6) + 64) |= 1 << v154;
        *(v162[6] + 8 * v154) = v150;
        *(v162[7] + 8 * v154) = v151;
        v163 = v162[2];
        v158 = __OFADD__(v163, 1);
        v164 = v163 + 1;
        if (v158)
        {
          goto LABEL_79;
        }

        v162[2] = v164;
      }

      *(v146 + 3) = v162;
      swift_endAccess();

      sub_188C460F0(v210);
    }

    a2 = v194;
    v25 = v190;
    v81 = v181;
    v77 = v182;
  }

  while (1)
  {
    v83 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v83 >= v81)
    {
    }

    v80 = *(v77 + 8 * v83);
    ++v76;
    if (v80)
    {
      v76 = v83;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_188E56714(uint64_t a1, void *a2, uint64_t a3)
{
  sub_188C45F1C(a3, v36);
  v5 = swift_allocObject();
  v6 = v36[9];
  *(v5 + 152) = v36[8];
  *(v5 + 168) = v6;
  v7 = v36[11];
  *(v5 + 184) = v36[10];
  *(v5 + 200) = v7;
  v8 = v36[5];
  *(v5 + 88) = v36[4];
  *(v5 + 104) = v8;
  v9 = v36[7];
  *(v5 + 120) = v36[6];
  *(v5 + 136) = v9;
  v10 = v36[1];
  *(v5 + 24) = v36[0];
  *(v5 + 40) = v10;
  v11 = v36[3];
  *(v5 + 56) = v36[2];
  *(v5 + 16) = a2;
  *(v5 + 72) = v11;
  sub_188C3DF9C(a1 + 16, &v35);
  sub_188C3DF9C(a1 + 16, v33);
  v12 = swift_allocObject();
  v13 = v33[3];
  *(v12 + 48) = v33[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = *v34;
  *(v12 + 89) = *&v34[9];
  v14 = v33[1];
  *(v12 + 16) = v33[0];
  *(v12 + 32) = v14;
  *(v12 + 112) = signpost_c2_entryLock_start;
  *(v12 + 120) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v15;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188E5C828;
  *(v18 + 24) = v5;
  *&v30 = sub_188E3FE50;
  *(&v30 + 1) = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188A4A968;
  *(&v29 + 1) = &block_descriptor_237;
  v19 = _Block_copy(&aBlock);
  v20 = a2;

  sub_188C3DFF8(&v35, &aBlock);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 56) = v30;
  *(v21 + 72) = v22;
  *(v21 + 88) = *v32;
  *(v21 + 97) = *&v32[9];
  v23 = v29;
  *(v21 + 24) = aBlock;
  *(v21 + 16) = v15;
  *(v21 + 40) = v23;
  *(v21 + 113) = 0;
  *(v21 + 120) = sub_188E5C7FC;
  *(v21 + 128) = v12;
  v27[4] = sub_188E5C800;
  v27[5] = v21;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188A4A8F0;
  v27[3] = &block_descriptor_244;
  v24 = _Block_copy(v27);

  *&v30 = sub_188E5C82C;
  *(&v30 + 1) = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188ABD010;
  *(&v29 + 1) = &block_descriptor_247;
  v25 = _Block_copy(&aBlock);

  [v17 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v25);
  _Block_release(v24);
  _Block_release(v19);

  sub_188C3E234(&v35);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

id sub_188E56B84(void *a1, double *a2)
{
  v4 = a2[7];
  v5 = a2[8];
  v6 = _s11PlatterViewCMa();
  v21.receiver = a1;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, sel_bounds);
  v8 = v7;
  v10 = v9;
  v20.receiver = a1;
  v20.super_class = v6;
  objc_msgSendSuper2(&v20, sel_bounds);
  v25.origin.x = v11;
  v25.origin.y = v12;
  v25.size.width = v13;
  v25.size.height = v14;
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v4;
  v22.size.height = v5;
  if (!CGRectEqualToRect(v22, v25))
  {
    v19.receiver = a1;
    v19.super_class = v6;
    objc_msgSendSuper2(&v19, sel_setBounds_, v8, v10, v4, v5);
    sub_189186E20();
  }

  v15 = a2[5];
  v16 = a2[6];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v4;
  v23.size.height = v5;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = v15;
  v24.origin.y = v16;
  v24.size.width = v4;
  v24.size.height = v5;
  return [a1 setCenter_];
}

void sub_188E56CA4(void **a1, uint64_t a2)
{
  sub_188C45F1C(a2, v6);
  v3 = objc_allocWithZone(_s11PlatterViewCMa());
  v4 = sub_189186438(v6);
  v5 = *a1;
  *a1 = v4;
}

uint64_t sub_188E56D00()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934748);
        sub_18A4A76D8();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188E56E5C(char *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  if ((a2 & 1) == 0)
  {
    v15 = *&v2[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters];
    v16 = *(v15 + 16);
    v17 = OBJC_IVAR____UINavigationBarPlatterView_id;

    if (v16)
    {
      v18 = 0;
      v19 = v15 + 32;
      while (1)
      {
        if (v18 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_188C45F1C(v19, v54);
        if (MEMORY[0x18CFE2F70](v54, &a1[v17]))
        {
          break;
        }

        ++v18;
        result = sub_188C460F0(v54);
        v19 += 192;
        if (v16 == v18)
        {
          goto LABEL_9;
        }
      }

      v73 = v61;
      v74 = v62;
      v75 = v63;
      v76 = v64;
      v69 = v57;
      v70 = v58;
      v71 = v59;
      v72 = v60;
      v65 = v54[0];
      v66 = v54[1];
      v67 = v55;
      v68 = v56;
      v32 = *(&v55 + 1);
      v34 = v56;
      v33 = *&v57;
      [a1 frame];
      v78.origin.x = v35;
      v78.origin.y = v36;
      v78.size.width = v37;
      v78.size.height = v38;
      v77.origin.x = v32;
      *&v77.origin.y = v34;
      v77.size.height = v33;
      if (CGRectEqualToRect(v77, v78))
      {
        sub_188C460F0(&v65);
        goto LABEL_10;
      }

      v39 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
      v40 = swift_allocObject();
      *(v40 + 16) = v2;
      *(v40 + 24) = a1;
      v41 = *(v39 + 16);
      *(v39 + 16) = v41 + 1;
      v42 = sub_18A4A76C8();
      (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
      v43 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v44 = a1;
      v45 = v2;

      v46 = sub_18A4A7698();
      v47 = swift_allocObject();
      v47[2] = v46;
      v47[3] = MEMORY[0x1E69E85E0];
      v47[4] = v43;
      v47[5] = 0x3F847AE147AE147BLL;
      v47[6] = v41;
      v47[7] = sub_188E5C458;
      v47[8] = v40;

      v48 = sub_188E59CB0(0, 0, v8, &unk_18A64C668, v47);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v39 + 24);
      *(v39 + 24) = 0x8000000000000000;
      sub_188E9DE78(v48, v41, isUniquelyReferenced_nonNull_native);
      *(v39 + 24) = v53;
      swift_endAccess();

      sub_188C460F0(&v65);
      v52 = 0;
    }

    else
    {
LABEL_9:

LABEL_10:
      v52 = 0;
    }

    goto LABEL_11;
  }

  v51 = &v50 - v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_188E5C7F0;
  *(v11 + 24) = v10;
  *&v67 = sub_188E3FE50;
  *(&v67 + 1) = v11;
  *&v65 = MEMORY[0x1E69E9820];
  *(&v65 + 1) = 1107296256;
  *&v66 = sub_188A4A968;
  *(&v66 + 1) = &block_descriptor_337;
  v12 = _Block_copy(&v65);
  v13 = a1;

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v8 = v51;
    v52 = sub_188E5C7F0;
LABEL_11:
    v20 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = a1;
    v22 = *(v20 + 16);
    *(v20 + 16) = v22 + 1;
    v23 = sub_18A4A76C8();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v24 = v8;
    v25 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();
    v26 = a1;
    v27 = v3;

    v28 = sub_18A4A7698();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = MEMORY[0x1E69E85E0];
    v29[4] = v25;
    v29[5] = 0x3FC1EB851EB851ECLL;
    v29[6] = v22;
    v29[7] = sub_188E5C460;
    v29[8] = v21;

    v30 = sub_188E59CB0(0, 0, v24, &unk_18A64C670, v29);
    swift_beginAccess();

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v54[0] = *(v20 + 24);
    *(v20 + 24) = 0x8000000000000000;
    sub_188E9DE78(v30, v22, v31);
    *(v20 + 24) = *&v54[0];
    swift_endAccess();

    return sub_188A55B8C(v52);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_188E574F4(uint64_t a1, double a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v19[0] = v7;
  v9 = sub_188C479E4(a1);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v7;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_188FA107C();
      v7 = v19[0];
      *v3 = v19[0];
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_188C46270(a1, v19);
    sub_188F15704(v9, v19, MEMORY[0x1E69E7CC0], v7);
    goto LABEL_9;
  }

  sub_1890BACA4(v12, isUniquelyReferenced_nonNull_native);
  v7 = v19[0];
  v14 = sub_188C479E4(a1);
  if ((v13 & 1) != (v15 & 1))
  {
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v9 = v14;
  *v3 = v19[0];
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v3 = *(v7 + 7);
  v7 = v3[v9];
  result = swift_isUniquelyReferenced_nonNull_native();
  v3[v9] = v7;
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_188B8B034(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
    v3[v9] = result;
  }

  v18 = *(v7 + 2);
  v17 = *(v7 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_188B8B034((v17 > 1), v18 + 1, 1, v7);
    v7 = result;
    v3[v9] = result;
  }

  *(v7 + 2) = v18 + 1;
  *&v7[8 * v18 + 32] = a2;
  return result;
}

void sub_188E57690(_BYTE *a1, char a2, uint64_t a3)
{
  v6 = a1[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase];
  a1[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase] = 1;
  sub_189186104(v6);
  if ((a2 & 1) == 0)
  {
    CGAffineTransformMakeScale(&v29, 0.2, 0.2);
    [a1 setTransform_];
  }

  v7 = *(a3 + 136);
  v8 = *(a3 + 144);
  v9 = _s11PlatterViewCMa();
  v28.receiver = a1;
  v28.super_class = v9;
  objc_msgSendSuper2(&v28, sel_bounds);
  v11 = v10;
  v13 = v12;
  v27.receiver = a1;
  v27.super_class = v9;
  objc_msgSendSuper2(&v27, sel_bounds);
  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v16;
  v33.size.height = v17;
  v30.origin.x = v11;
  v30.origin.y = v13;
  v30.size.width = v7;
  v30.size.height = v8;
  if (!CGRectEqualToRect(v30, v33))
  {
    v26.receiver = a1;
    v26.super_class = v9;
    objc_msgSendSuper2(&v26, sel_setBounds_, v11, v13, v7, v8);
    sub_189186E20();
  }

  v18 = *(a3 + 120);
  v19 = *(a3 + 128);
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v7;
  v31.size.height = v8;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v18;
  v32.origin.y = v19;
  v32.size.width = v7;
  v32.size.height = v8;
  [a1 setCenter_];
  v21 = &a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v22 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v23 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  *v21 = *(a3 + 152);
  v24 = *(a3 + 160);
  *(v21 + 8) = v24;
  v25 = v24;
  sub_188E5B1D4(v22, v23);
  sub_189185D18();
}

void sub_188E57864(uint64_t a1, CGFloat a2)
{
  if (CGRectGetMidX(*(a1 + 120)) <= a2)
  {
    sub_18A4A6D18();
  }

  else
  {
    sub_18A4A6D28();
  }

  sub_189182F94(0, v2, v3);
}

unint64_t sub_188E578B8(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_188C479E4(a2);
    if (v3)
    {
      v4 = *(*(v2 + 56) + 8 * result);
      v5 = *(v4 + 16);
      if (!v5)
      {
        v8 = 0.0;
        return sub_18918503C(v8 / 6.0, 0.0, 0.06);
      }

      if (v5 > 3)
      {
        v6 = v5 & 0x7FFFFFFFFFFFFFFCLL;
        v9 = (v4 + 48);
        v7 = 0.0;
        v10 = v5 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v7 = v7 + *(v9 - 2) + *(v9 - 1) + *v9 + v9[1];
          v9 += 4;
          v10 -= 4;
        }

        while (v10);
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0.0;
      }

      v11 = v5 - v6;
      v12 = (v4 + 8 * v6 + 32);
      do
      {
        v13 = *v12++;
        v7 = v7 + v13;
        --v11;
      }

      while (v11);
LABEL_12:
      v8 = v7 / v5;
      return sub_18918503C(v8 / 6.0, 0.0, 0.06);
    }
  }

  return result;
}

uint64_t sub_188E5799C(uint64_t a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = a7;
  *(v14 + 56) = a3;
  sub_188C3DF9C(a1 + 16, v38);
  sub_188C3DF9C(a1 + 16, v36);
  v15 = swift_allocObject();
  v16 = v36[3];
  *(v15 + 48) = v36[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v37[0];
  *(v15 + 89) = *(v37 + 9);
  v17 = v36[1];
  *(v15 + 16) = v36[0];
  *(v15 + 32) = v17;
  *(v15 + 112) = signpost_c2_entryLock_start;
  *(v15 + 120) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v18;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_188E5C808;
  *(v21 + 24) = v14;
  *&v33 = sub_188E3FE50;
  *(&v33 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_188A4A968;
  *(&v32 + 1) = &block_descriptor_512;
  v22 = _Block_copy(&aBlock);
  v23 = a2;

  sub_188C3DFF8(v38, &aBlock);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 56) = v33;
  *(v24 + 72) = v25;
  *(v24 + 88) = v35[0];
  *(v24 + 97) = *(v35 + 9);
  v26 = v32;
  *(v24 + 24) = aBlock;
  *(v24 + 16) = v18;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v15;
  v30[4] = sub_188E5C800;
  v30[5] = v24;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_188A4A8F0;
  v30[3] = &block_descriptor_519;
  v27 = _Block_copy(v30);

  *&v33 = sub_188E5C82C;
  *(&v33 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_188ABD010;
  *(&v32 + 1) = &block_descriptor_522;
  v28 = _Block_copy(&aBlock);

  [v20 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v38);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

id sub_188E57D98(void *a1, char a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  [a1 setCenter_];
  v10 = _s11PlatterViewCMa();
  v23.receiver = a1;
  v23.super_class = v10;
  objc_msgSendSuper2(&v23, sel_bounds);
  v12 = v11;
  v14 = v13;
  v22.receiver = a1;
  v22.super_class = v10;
  objc_msgSendSuper2(&v22, sel_bounds);
  v25.origin.x = v15;
  v25.origin.y = v16;
  v25.size.width = v17;
  v25.size.height = v18;
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = a5;
  v24.size.height = a6;
  result = CGRectEqualToRect(v24, v25);
  if ((result & 1) == 0)
  {
    v21.receiver = a1;
    v21.super_class = v10;
    objc_msgSendSuper2(&v21, sel_setBounds_, v12, v14, a5, a6);
    result = sub_189186E20();
  }

  if ((a2 & 1) == 0)
  {
    v20[0] = 0x3FF0000000000000;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = 0x3FF0000000000000;
    v20[4] = 0;
    v20[5] = 0;
    return [a1 setTransform_];
  }

  return result;
}

void sub_188E57EA0(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
  v3 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
  v4 = *(v2 + 8);
  *v2 = xmmword_18A64C520;
  *(v2 + 16) = 0;
  sub_188E5B1D4(v3, v4);
  sub_189185D18();
  v5 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v5);
}

id sub_188E57F08(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_1891E9650(a2, v4);
  swift_endAccess();
  sub_188A3F5FC(v4, &qword_1EA934740);
  return [a2 removeFromSuperview];
}

void sub_188E57F98(char *a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 136);
  v7 = *(a2 + 144);
  v8 = _s11PlatterViewCMa();
  v28.receiver = a1;
  v28.super_class = v8;
  objc_msgSendSuper2(&v28, sel_bounds);
  v10 = v9;
  v12 = v11;
  v27.receiver = a1;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, sel_bounds);
  v32.origin.x = v13;
  v32.origin.y = v14;
  v32.size.width = v15;
  v32.size.height = v16;
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v6;
  v29.size.height = v7;
  if (!CGRectEqualToRect(v29, v32))
  {
    v26.receiver = a1;
    v26.super_class = v8;
    objc_msgSendSuper2(&v26, sel_setBounds_, v10, v12, v6, v7);
    sub_189186E20();
  }

  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v30.origin.x = v17;
  v30.origin.y = v18;
  v30.size.width = v6;
  v30.size.height = v7;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.width = v6;
  v31.size.height = v7;
  [a1 setCenter_];
  v20 = &a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v21 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v22 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  *v20 = *(a2 + 152);
  v23 = *(a2 + 160);
  *(v20 + 8) = v23;
  v24 = v23;
  sub_188E5B1D4(v21, v22);
  sub_189185D18();

  if ((a3 & 1) == 0)
  {
    CGAffineTransformMakeScale(&v25, 0.5, 0.5);
    [a1 setTransform_];
  }
}

uint64_t sub_188E5814C(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  sub_188E5B14C(a4, v37);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = v37[9];
  *(v7 + 160) = v37[8];
  *(v7 + 176) = v8;
  *(v7 + 192) = v37[10];
  v9 = v37[5];
  *(v7 + 96) = v37[4];
  *(v7 + 112) = v9;
  v10 = v37[7];
  *(v7 + 128) = v37[6];
  *(v7 + 144) = v10;
  v11 = v37[1];
  *(v7 + 32) = v37[0];
  *(v7 + 48) = v11;
  v12 = v37[3];
  *(v7 + 64) = v37[2];
  *(v7 + 80) = v12;
  sub_188C3DF9C(a1 + 16, &v36);
  sub_188C3DF9C(a1 + 16, v34);
  v13 = swift_allocObject();
  v14 = v34[3];
  *(v13 + 48) = v34[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = *v35;
  *(v13 + 89) = *&v35[9];
  v15 = v34[1];
  *(v13 + 16) = v34[0];
  *(v13 + 32) = v15;
  *(v13 + 112) = signpost_c2_entryLock_start;
  *(v13 + 120) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v16;
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188E5C7F4;
  *(v19 + 24) = v7;
  *&v31 = sub_188E3FE50;
  *(&v31 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_188A4A968;
  *(&v30 + 1) = &block_descriptor_482;
  v20 = _Block_copy(&aBlock);
  v21 = a3;

  sub_188C3DFF8(&v36, &aBlock);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 56) = v31;
  *(v22 + 72) = v23;
  *(v22 + 88) = *v33;
  *(v22 + 97) = *&v33[9];
  v24 = v30;
  *(v22 + 24) = aBlock;
  *(v22 + 16) = v16;
  *(v22 + 40) = v24;
  *(v22 + 113) = 0;
  *(v22 + 120) = sub_188E5C7FC;
  *(v22 + 128) = v13;
  v28[4] = sub_188E5C800;
  v28[5] = v22;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_188A4A8F0;
  v28[3] = &block_descriptor_489;
  v25 = _Block_copy(v28);

  *&v31 = sub_188E5C82C;
  *(&v31 + 1) = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_188ABD010;
  *(&v30 + 1) = &block_descriptor_492;
  v26 = _Block_copy(&aBlock);

  [v18 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v26);
  _Block_release(v25);
  _Block_release(v20);

  sub_188C3E234(&v36);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E585A4(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_188E5B14C(a5, v44);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 17) = a3;
  *(v13 + 24) = a4;
  v14 = v44[9];
  *(v13 + 160) = v44[8];
  *(v13 + 176) = v14;
  *(v13 + 192) = v44[10];
  v15 = v44[5];
  *(v13 + 96) = v44[4];
  *(v13 + 112) = v15;
  v16 = v44[7];
  *(v13 + 128) = v44[6];
  *(v13 + 144) = v16;
  v17 = v44[1];
  *(v13 + 32) = v44[0];
  *(v13 + 48) = v17;
  v18 = v44[3];
  *(v13 + 64) = v44[2];
  *(v13 + 80) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  sub_188C3DF9C(a1 + 16, &v43);
  sub_188C3DF9C(a1 + 16, v41);
  v20 = swift_allocObject();
  v21 = v41[3];
  *(v20 + 48) = v41[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = *v42;
  *(v20 + 89) = *&v42[9];
  v22 = v41[1];
  *(v20 + 16) = v41[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_188E5C7F8;
  v24[4] = v19;
  v34 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188E5C804;
  *(v25 + 24) = v13;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_452;
  v26 = _Block_copy(&aBlock);
  v27 = a4;

  sub_188C3DFF8(&v43, &aBlock);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 56) = v38;
  *(v28 + 72) = v29;
  *(v28 + 88) = *v40;
  *(v28 + 97) = *&v40[9];
  v30 = v37;
  *(v28 + 24) = aBlock;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v35[4] = sub_188E5C800;
  v35[5] = v28;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_459;
  v31 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_462;
  v32 = _Block_copy(&aBlock);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(&v43);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E58A50(uint64_t a1, void *a2)
{
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-1] - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v45);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_188C3DF9C(v45, v44);
  sub_188C3DF9C(v45, v42);
  v21 = swift_allocObject();
  v22 = v42[3];
  *(v21 + 48) = v42[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v43[0];
  *(v21 + 89) = *(v43 + 9);
  v23 = v42[1];
  *(v21 + 16) = v42[0];
  *(v21 + 32) = v23;
  *(v21 + 112) = signpost_c2_entryLock_start;
  *(v21 + 120) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v24;
  v35 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188E5C4E8;
  *(v26 + 24) = v20;
  *&v39 = sub_188E3FE50;
  *(&v39 + 1) = v26;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188A4A968;
  *(&v38 + 1) = &block_descriptor_385;
  v27 = _Block_copy(&v37);
  v28 = a2;

  sub_188C3DFF8(v44, &v37);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 56) = v39;
  *(v29 + 72) = v30;
  *(v29 + 88) = v41[0];
  *(v29 + 97) = *(v41 + 9);
  v31 = v38;
  *(v29 + 24) = v37;
  *(v29 + 16) = v24;
  *(v29 + 40) = v31;
  *(v29 + 113) = 0;
  *(v29 + 120) = sub_188E5C7FC;
  *(v29 + 128) = v21;
  v36[4] = sub_188E5C800;
  v36[5] = v29;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_188A4A8F0;
  v36[3] = &block_descriptor_392;
  v32 = _Block_copy(v36);

  *&v39 = sub_188E5C82C;
  *(&v39 + 1) = v25;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188ABD010;
  *(&v38 + 1) = &block_descriptor_395;
  v33 = _Block_copy(&v37);

  [v35 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v33);
  _Block_release(v32);
  _Block_release(v27);

  sub_188C3E234(v44);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    return sub_188AAFF20(v45);
  }

  __break(1u);
  return result;
}

uint64_t sub_188E5902C(uint64_t a1, void *a2)
{
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-1] - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v45);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_188C3DF9C(v45, v44);
  sub_188C3DF9C(v45, v42);
  v21 = swift_allocObject();
  v22 = v42[3];
  *(v21 + 48) = v42[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v43[0];
  *(v21 + 89) = *(v43 + 9);
  v23 = v42[1];
  *(v21 + 16) = v42[0];
  *(v21 + 32) = v23;
  *(v21 + 112) = signpost_c2_entryLock_start;
  *(v21 + 120) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v24;
  v35 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188E5C4B0;
  *(v26 + 24) = v20;
  *&v39 = sub_188E3FE50;
  *(&v39 + 1) = v26;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188A4A968;
  *(&v38 + 1) = &block_descriptor_356;
  v27 = _Block_copy(&v37);
  v28 = a2;

  sub_188C3DFF8(v44, &v37);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 56) = v39;
  *(v29 + 72) = v30;
  *(v29 + 88) = v41[0];
  *(v29 + 97) = *(v41 + 9);
  v31 = v38;
  *(v29 + 24) = v37;
  *(v29 + 16) = v24;
  *(v29 + 40) = v31;
  *(v29 + 113) = 0;
  *(v29 + 120) = sub_188E5C7FC;
  *(v29 + 128) = v21;
  v36[4] = sub_188E5C800;
  v36[5] = v29;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_188A4A8F0;
  v36[3] = &block_descriptor_363;
  v32 = _Block_copy(v36);

  *&v39 = sub_188E5C82C;
  *(&v39 + 1) = v25;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188ABD010;
  *(&v38 + 1) = &block_descriptor_366;
  v33 = _Block_copy(&v37);

  [v35 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v33);
  _Block_release(v32);
  _Block_release(v27);

  sub_188C3E234(v44);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    return sub_188AAFF20(v45);
  }

  __break(1u);
  return result;
}

uint64_t sub_188E596C8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 56) = a6;
  *(v8 + 48) = a1;
  *(v8 + 40) = a5;
  v9 = sub_18A4A8278();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_18A4A76A8();
  *(v8 + 104) = sub_18A4A7698();
  v11 = sub_18A4A7678();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](sub_188E597C8, v11, v10);
}

uint64_t sub_188E597C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    UIAnimationDragCoefficient();
    v2 = sub_18A4A8A38();
    v4 = v3;
    sub_18A4A87D8();
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_188E59944;

    return sub_188E5A288(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_188E59944()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_188E59B74;
  }

  else
  {
    v8 = sub_188E59ADC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_188E59ADC()
{
  v1 = *(v0 + 56);

  if (sub_188E59BEC(v1))
  {
    (*(v0 + 64))();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188E59B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188E59BEC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_188B85570(a1);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 24);
    v11 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA0D8C();
      v9 = v11;
    }

    sub_188F9C838(v7, v9);
    *(v2 + 24) = v9;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return v6 & 1;
}

uint64_t sub_188E59CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_188A3F29C(a3, v22 - v9, &qword_1EA934728);
  v11 = sub_18A4A76C8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_188A3F5FC(v10, &qword_1EA934728);
  }

  else
  {
    sub_18A4A76B8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_18A4A7678();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_18A4A7318() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_188A3F5FC(a3, &qword_1EA934728);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188A3F5FC(a3, &qword_1EA934728);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}