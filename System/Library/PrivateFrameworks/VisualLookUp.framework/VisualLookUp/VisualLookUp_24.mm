uint64_t sub_1D9B6A890(float *__dst, float *__src, float *a3, float *a4)
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

      if (v4[28] < v6[28])
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
      if (*(v6 - 12) < *(v13 - 12))
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

id sub_1D9B6AD1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyVIAEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9B6AD84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B6ADE8(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D99E9140(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1D9B6E6D4(v10, a2, a3);
  *a1 = v7;
  return result;
}

void sub_1D9B6AEA8(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v112 = a5;
  v146 = a3;
  v113 = a7;
  v23 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v106 = &v97[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1D9C7D8DC();
  v107 = *(v25 - 8);
  v108 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v111 = &v97[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52528);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v104 = &v97[-v28];
  v110 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  v103 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = &v97[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v109 = &v97[-v31];
  v32 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v33 = *(v32 - 8);
  v100 = v32;
  v101 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v102 = &v97[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = a1[7];
  v143 = a1[6];
  v144 = v35;
  v145[0] = a1[8];
  *(v145 + 13) = *(a1 + 141);
  v36 = a1[1];
  v37 = a1[3];
  v139 = a1[2];
  v140 = v37;
  v38 = a1[5];
  v39 = a1[3];
  v141 = a1[4];
  v142 = v38;
  v40 = a1[1];
  v138[0] = *a1;
  v138[1] = v40;
  v135 = v141;
  v136 = v38;
  v137[0] = a1[6];
  *(v137 + 12) = *(a1 + 108);
  v131 = v138[0];
  v132 = v36;
  v133 = v139;
  v134 = v39;
  v114 = BYTE13(v144);
  v41 = BYTE14(v144);
  v130[0] = *(a1 + 127);
  *(v130 + 14) = *(a1 + 141);
  *&v127 = a8;
  *(&v127 + 1) = a9;
  v128 = a10;
  v129 = a11;
  v42 = a4[1];
  v123 = *a4;
  v124 = v42;
  v43 = a4[3];
  v125 = a4[2];
  v126 = v43;
  v44 = LOBYTE(v138[0]);
  v122 = v138[0];
  v45 = a6;
  v46 = *a6;
  sub_1D99AE054(v138, &v115);

  v47 = a2;
  LOBYTE(a2) = sub_1D9B7415C(a2, &v127, v146, &v123, &v122, v112, v46, a12, a13);

  if (a2)
  {
    LODWORD(v112) = v41;
    v99 = v47;
    v48 = *(v47 + 76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v123 = *v45;
    *v45 = 0x8000000000000000;
    sub_1D9A1BF4C(v44, isUniquelyReferenced_nonNull_native, &v115, v48);
    *v45 = v123;

    v98 = v44;
    v122 = v44;
    v50 = *(v47 + 16);
    v123 = *v47;
    v124 = v50;
    v51 = a4[1];
    v115 = *a4;
    v116 = v51;
    v52 = a4[3];
    v117 = a4[2];
    v118 = v52;
    v53 = *(v146 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
    v54 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
    swift_beginAccess();
    v55 = v109;
    sub_1D99AB100(v53 + v54, v109, &qword_1ECB514C8);
    v56 = v100;
    v57 = *(v101 + 48);
    v58 = v57(v55, 1, v100);
    v59 = MEMORY[0x1E69E7CC0];
    if (v58 == 1)
    {
      v60 = v102;
      *v102 = 0;
      *(v60 + 1) = sub_1D9A441B8(v59);
      *(v60 + 2) = sub_1D9A445A8(v59);
      *(v60 + 3) = v59;
      *(v60 + 4) = v59;
      *(v60 + 5) = v59;
      sub_1D9C7D3BC();
      v61 = v103;
      (*(v103 + 56))(&v60[*(v56 + 48)], 1, 1, v110);
      v62 = v57(v55, 1, v56);
      v63 = v111;
      v65 = v104;
      v64 = v105;
      v66 = v113;
      if (v62 != 1)
      {
        sub_1D99A6AE0(v109, &qword_1ECB514C8);
      }
    }

    else
    {
      v60 = v102;
      sub_1D9B7551C(v55, v102, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
      v63 = v111;
      v65 = v104;
      v64 = v105;
      v66 = v113;
      v61 = v103;
    }

    sub_1D99AB100(&v60[*(v56 + 48)], v65, &qword_1ECB52528);
    v75 = *(v61 + 48);
    v76 = v110;
    if (v75(v65, 1, v110) == 1)
    {
      *v64 = 0;
      *(v64 + 8) = MEMORY[0x1E69E7CC0];
      *(v64 + 16) = 0;
      sub_1D9C7D3BC();
      sub_1D9B754BC(v60, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
      if (v75(v65, 1, v76) != 1)
      {
        sub_1D99A6AE0(v65, &qword_1ECB52528);
      }
    }

    else
    {
      sub_1D9B754BC(v60, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
      sub_1D9B7551C(v65, v64, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    }

    v77 = sub_1D9A63F8C(&v122, &v123, &v115, v64);
    sub_1D9B754BC(v64, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    if (v77)
    {
      v78 = 1;
    }

    else
    {
      v78 = v112;
    }

    static Logger.argos.getter(v63);
    v79 = v106;
    sub_1D9B717A8(v99, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99AE054(v138, &v115);
    v80 = sub_1D9C7D8BC();
    v81 = sub_1D9C7E09C();
    sub_1D99AE0B0(v138);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v123 = v83;
      *v82 = 136315394;
      v84 = v79[1];
      v115 = *v79;
      v116 = v84;
      v85 = NormalizedRect.loggingDescription.getter();
      v86 = v79;
      v88 = v87;
      sub_1D9B754BC(v86, type metadata accessor for VisualUnderstanding.ImageRegion);
      v89 = sub_1D9A0E224(v85, v88, &v123);

      *(v82 + 4) = v89;
      *(v82 + 12) = 2080;
      v90 = sub_1D9A15C94(v98);
      v92 = sub_1D9A0E224(v90, v91, &v123);

      *(v82 + 14) = v92;
      _os_log_impl(&dword_1D9962000, v80, v81, "%s selects %s.", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v83, -1, -1);
      MEMORY[0x1DA7405F0](v82, -1, -1);

      (*(v107 + 8))(v111, v108);
    }

    else
    {

      sub_1D9B754BC(v79, type metadata accessor for VisualUnderstanding.ImageRegion);
      (*(v107 + 8))(v63, v108);
    }

    v119 = v135;
    v120 = v136;
    *v121 = v137[0];
    *&v121[12] = *(v137 + 12);
    v115 = v131;
    v116 = v132;
    v117 = v133;
    v118 = v134;
    v121[28] = 1;
    v121[29] = v114;
    v121[30] = v78;
    *&v121[31] = v130[0];
    *&v121[45] = *(v130 + 14);
    faiss::NormalizationTransform::~NormalizationTransform(&v115);
    v93 = *&v121[16];
    v66[6] = *v121;
    v66[7] = v93;
    v66[8] = *&v121[32];
    *(v66 + 141) = *&v121[45];
    v94 = v118;
    v66[2] = v117;
    v66[3] = v94;
    v95 = v120;
    v66[4] = v119;
    v66[5] = v95;
    v96 = v116;
    *v66 = v115;
    v66[1] = v96;
  }

  else
  {
    v67 = a1[5];
    v119 = a1[4];
    v120 = v67;
    *v121 = a1[6];
    *&v121[12] = *(a1 + 108);
    v68 = a1[1];
    v115 = *a1;
    v116 = v68;
    v69 = a1[3];
    v117 = a1[2];
    v118 = v69;
    v121[28] = 0;
    v121[29] = v114;
    v121[30] = v41;
    *&v121[31] = *(a1 + 127);
    *&v121[45] = *(a1 + 141);
    faiss::NormalizationTransform::~NormalizationTransform(&v115);
    v70 = *&v121[16];
    v71 = v113;
    v113[6] = *v121;
    v71[7] = v70;
    v71[8] = *&v121[32];
    *(v71 + 141) = *&v121[45];
    v72 = v118;
    v71[2] = v117;
    v71[3] = v72;
    v73 = v120;
    v71[4] = v119;
    v71[5] = v73;
    v74 = v116;
    *v71 = v115;
    v71[1] = v74;
  }
}

double sub_1D9B6B878@<D0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  v184 = a6;
  v178 = a5;
  v186 = a4;
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v180 = (&v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v176 = (&v165 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v174 = (&v165 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v167 = (&v165 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v166 = (&v165 - v30);
  v185 = sub_1D9C7D8DC();
  v217 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v179 = &v165 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v177 = &v165 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v175 = &v165 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v169 = &v165 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v168 = &v165 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52778);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v172 = &v165 - v43;
  v44 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  v170 = *(v44 - 8);
  v171 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v173 = (&v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v165 - v47;
  v49 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[7];
  v214 = a1[6];
  v215 = v53;
  v216[0] = a1[8];
  *(v216 + 13) = *(a1 + 141);
  v54 = a1[1];
  v55 = a1[3];
  v210 = a1[2];
  v211 = v55;
  v56 = a1[5];
  v57 = a1[3];
  v212 = a1[4];
  v213 = v56;
  v58 = a1[1];
  v209[0] = *a1;
  v209[1] = v58;
  v206 = v212;
  v207 = v56;
  v208[0] = a1[6];
  *(v208 + 12) = *(a1 + 108);
  v202 = v209[0];
  v203 = v54;
  v204 = v210;
  v205 = v57;
  v59 = *(a1 + 141);
  v200 = *(a1 + 125);
  v201 = v59;
  v182 = LOBYTE(v209[0]);
  v183 = BYTE12(v215);
  v199 = v209[0];
  v60 = a2[1];
  v61 = a2;
  v198[0] = *a2;
  v198[1] = v60;
  v62 = a3[1];
  v194 = *a3;
  v195 = v62;
  v63 = a3[3];
  v196 = a3[2];
  v197 = v63;
  v64 = *&v186[*(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20)];
  v65 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  sub_1D99AB100(v64 + v65, v48, &qword_1ECB514C8);
  v66 = *(v50 + 48);
  if (v66(v48, 1, v49) == 1)
  {
    *v52 = 0;
    sub_1D99AE054(v209, &v187);
    v67 = MEMORY[0x1E69E7CC0];
    *(v52 + 1) = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
    *(v52 + 2) = sub_1D9A445A8(v67);
    *(v52 + 3) = v67;
    *(v52 + 4) = v67;
    *(v52 + 5) = v67;
    sub_1D9C7D3BC();
    v68 = *(v49 + 48);
    v69 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
    (*(*(v69 - 8) + 56))(&v52[v68], 1, 1, v69);
    if (v66(v48, 1, v49) != 1)
    {
      sub_1D99A6AE0(v48, &qword_1ECB514C8);
    }
  }

  else
  {
    sub_1D9B7551C(v48, v52, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
    sub_1D99AE054(v209, &v187);
  }

  sub_1D9A63A2C(&v199, v198, &v194, v52);
  v71 = v70;
  sub_1D9B754BC(v52, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  v72 = v61;
  if ((v71 & 1) == 0)
  {
    v93 = v179;
    static Logger.argos.getter(v179);
    v94 = v181;
    sub_1D9A3E0E0(v181);
    v95 = v217 + 8;
    v96 = v185;
    v186 = *(v217 + 8);
    (v186)(v93, v185);
    v97 = v180;
    sub_1D9B717A8(v72, v180, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99AE054(v209, &v187);
    v98 = sub_1D9C7D8BC();
    v99 = sub_1D9C7E09C();
    sub_1D99AE0B0(v209);
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v217 = v95;
      v101 = v100;
      v102 = v94;
      v103 = swift_slowAlloc();
      *&v194 = v103;
      *v101 = 136315394;
      v104 = v97[1];
      v187 = *v97;
      v188 = v104;
      v105 = NormalizedRect.loggingDescription.getter();
      v107 = v106;
      sub_1D9B754BC(v97, type metadata accessor for VisualUnderstanding.ImageRegion);
      v108 = sub_1D9A0E224(v105, v107, &v194);

      *(v101 + 4) = v108;
      *(v101 + 12) = 2080;
      v109 = sub_1D9A15C94(v182);
      v111 = sub_1D9A0E224(v109, v110, &v194);

      *(v101 + 14) = v111;
      _os_log_impl(&dword_1D9962000, v98, v99, "%s drops %s due to safety", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v103, -1, -1);
      MEMORY[0x1DA7405F0](v101, -1, -1);

      (v186)(v102, v185);
    }

    else
    {

      sub_1D9B754BC(v97, type metadata accessor for VisualUnderstanding.ImageRegion);
      (v186)(v94, v96);
    }

    goto LABEL_24;
  }

  v73 = v182;
  LOBYTE(v198[0]) = v182;
  v74 = v61[1];
  v187 = *v61;
  v188 = v74;
  *&v194 = a9;
  *(&v194 + 1) = a10;
  *&v195 = a11;
  *(&v195 + 1) = a12;
  if (!sub_1D9C1DBFC(v198, &v187, &v194, a7, a8))
  {
    v77 = v177;
    static Logger.argos.getter(v177);
    v78 = v176;
    sub_1D9B717A8(v72, v176, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99AE054(v209, &v187);
    v79 = sub_1D9C7D8BC();
    v112 = sub_1D9C7E09C();
    sub_1D99AE0B0(v209);
    if (os_log_type_enabled(v79, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v194 = v114;
      *v113 = 136315394;
      v115 = v78[1];
      v187 = *v78;
      v188 = v115;
      v116 = NormalizedRect.loggingDescription.getter();
      v118 = v117;
      sub_1D9B754BC(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
      v119 = sub_1D9A0E224(v116, v118, &v194);

      *(v113 + 4) = v119;
      *(v113 + 12) = 2080;
      v120 = sub_1D9A15C94(v73);
      v122 = sub_1D9A0E224(v120, v121, &v194);

      *(v113 + 14) = v122;
      _os_log_impl(&dword_1D9962000, v79, v112, "%s drops %s due to small object size.", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v114, -1, -1);
      MEMORY[0x1DA7405F0](v113, -1, -1);

      v91 = *(v217 + 8);
      v92 = v177;
      goto LABEL_23;
    }

LABEL_22:

    sub_1D9B754BC(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 = *(v217 + 8);
    v92 = v77;
    goto LABEL_23;
  }

  v75 = *v178;
  LOBYTE(v187) = v73;

  v76 = sub_1D9B532F8(&v187, v75);

  if (v76)
  {
    v77 = v175;
    static Logger.argos.getter(v175);
    v78 = v174;
    sub_1D9B717A8(v72, v174, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99AE054(v209, &v187);
    v79 = sub_1D9C7D8BC();
    v80 = sub_1D9C7E09C();
    sub_1D99AE0B0(v209);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v194 = v82;
      *v81 = 136315394;
      v83 = v78[1];
      v187 = *v78;
      v188 = v83;
      v84 = NormalizedRect.loggingDescription.getter();
      v86 = v85;
      sub_1D9B754BC(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
      v87 = sub_1D9A0E224(v84, v86, &v194);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      v88 = sub_1D9A15C94(v73);
      v90 = sub_1D9A0E224(v88, v89, &v194);

      *(v81 + 14) = v90;
      _os_log_impl(&dword_1D9962000, v79, v80, "%s drops %s due to it is already triggered on the regions", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v82, -1, -1);
      MEMORY[0x1DA7405F0](v81, -1, -1);

      v91 = *(v217 + 8);
      v92 = v175;
LABEL_23:
      v91(v92, v185);
LABEL_24:
      v191 = v206;
      v192 = v207;
      v193[0] = v208[0];
      *(v193 + 12) = *(v208 + 12);
      v187 = v202;
      v188 = v203;
      v189 = v204;
      v190 = v205;
      *(&v193[2] + 13) = v201;
      BYTE12(v193[1]) = v183;
      *(&v193[1] + 13) = v200;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v123 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  swift_beginAccess();
  v124 = v172;
  sub_1D99AB100(v64 + v123, v172, &qword_1ECB52778);
  v125 = v171;
  v126 = *(v170 + 48);
  if (v126(v124, 1, v171) == 1)
  {
    v127 = v173;
    *v173 = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    if (v126(v124, 1, v125) != 1)
    {
      sub_1D99A6AE0(v124, &qword_1ECB52778);
    }
  }

  else
  {
    v127 = v173;
    sub_1D9B7551C(v124, v173, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  }

  LOBYTE(v187) = v73;
  v128 = *v178;

  v129 = sub_1D9C208D0(&unk_1F552A820);
  sub_1D9B52D20(&v187, v128, v129);
  v131 = v130;

  sub_1D9B754BC(v127, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  if (v131)
  {
    v77 = v169;
    static Logger.argos.getter(v169);
    v78 = v167;
    sub_1D9B717A8(v72, v167, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99AE054(v209, &v187);
    v79 = sub_1D9C7D8BC();
    v132 = sub_1D9C7E09C();
    sub_1D99AE0B0(v209);
    if (os_log_type_enabled(v79, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&v198[0] = v134;
      *v133 = 136315394;
      v135 = v78[1];
      v187 = *v78;
      v188 = v135;
      v136 = NormalizedRect.loggingDescription.getter();
      v138 = v137;
      sub_1D9B754BC(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
      v139 = sub_1D9A0E224(v136, v138, v198);

      *(v133 + 4) = v139;
      *(v133 + 12) = 2080;
      v140 = sub_1D9A15C94(v73);
      v142 = sub_1D9A0E224(v140, v141, v198);

      *(v133 + 14) = v142;
      _os_log_impl(&dword_1D9962000, v79, v132, "%s drops %s due to incompatible domains.", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v134, -1, -1);
      MEMORY[0x1DA7405F0](v133, -1, -1);

      v91 = *(v217 + 8);
      v92 = v169;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v149 = v168;
  static Logger.argos.getter(v168);
  v150 = v166;
  sub_1D9B717A8(v72, v166, type metadata accessor for VisualUnderstanding.ImageRegion);
  sub_1D99AE054(v209, &v187);
  v151 = sub_1D9C7D8BC();
  v152 = sub_1D9C7E09C();
  sub_1D99AE0B0(v209);
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *&v198[0] = v154;
    *v153 = 136315394;
    v155 = v150[1];
    v187 = *v150;
    v188 = v155;
    v156 = NormalizedRect.loggingDescription.getter();
    v158 = v157;
    sub_1D9B754BC(v150, type metadata accessor for VisualUnderstanding.ImageRegion);
    v159 = sub_1D9A0E224(v156, v158, v198);

    *(v153 + 4) = v159;
    *(v153 + 12) = 2080;
    v160 = sub_1D9A15C94(v73);
    v162 = sub_1D9A0E224(v160, v161, v198);

    *(v153 + 14) = v162;
    _os_log_impl(&dword_1D9962000, v151, v152, "%s selects %s.", v153, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v154, -1, -1);
    MEMORY[0x1DA7405F0](v153, -1, -1);

    (*(v217 + 8))(v168, v185);
  }

  else
  {

    sub_1D9B754BC(v150, type metadata accessor for VisualUnderstanding.ImageRegion);
    (*(v217 + 8))(v149, v185);
  }

  v163 = v178;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v198[0] = *v163;
  *v163 = 0x8000000000000000;
  sub_1D9A1BF4C(v73, isUniquelyReferenced_nonNull_native, &v187, 1.0);
  *v163 = *&v198[0];

  v191 = v206;
  v192 = v207;
  v193[0] = v208[0];
  *(v193 + 12) = *(v208 + 12);
  v187 = v202;
  v188 = v203;
  v189 = v204;
  v190 = v205;
  *(&v193[1] + 13) = v200;
  BYTE12(v193[1]) = 1;
  *(&v193[2] + 13) = v201;
LABEL_25:
  faiss::NormalizationTransform::~NormalizationTransform(&v187);
  v143 = v193[1];
  v144 = v184;
  v184[6] = v193[0];
  v144[7] = v143;
  v144[8] = v193[2];
  *(v144 + 141) = *(&v193[2] + 13);
  v145 = v190;
  v144[2] = v189;
  v144[3] = v145;
  v146 = v192;
  v144[4] = v191;
  v144[5] = v146;
  result = *&v187;
  v148 = v188;
  *v144 = v187;
  v144[1] = v148;
  return result;
}

uint64_t sub_1D9B6CA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9B717A8(a1, v10, type metadata accessor for VisualUnderstanding.ImageRegion);
  v11 = *(v10 + 6);
  v29 = a2;
  v30 = v10;

  v12 = sub_1D9BE77D4(sub_1D9B75584, v28, v11);

  v31 = v12;

  sub_1D9B698EC(&v31);
  if (v3)
  {
LABEL_16:

    __break(1u);
    return result;
  }

  v25[1] = 0;
  v26 = v7;
  v27 = a3;

  v13 = v31;
  v3 = *(v10 + 6);

  *(v10 + 6) = v13;
  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = (v13 + 144);
    v17 = MEMORY[0x1E69E7CC0];
    while (v15 < *(v13 + 2))
    {
      v18 = *v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D9AF84B8(0, *(v17 + 2) + 1, 1, v17);
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1D9AF84B8((v19 > 1), v20 + 1, 1, v17);
      }

      ++v15;
      *(v17 + 2) = v20 + 1;
      *&v17[4 * v20 + 32] = v18;
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_12:

  v21 = sub_1D9BC1BF0(v17);

  v22 = *&v21;
  if ((v21 & 0x100000000) != 0)
  {
    v22 = 0.0;
  }

  *(v10 + 18) = v22;
  v23 = v27;
  sub_1D9B717A8(v10, v27, type metadata accessor for VisualUnderstanding.ImageRegion);
  (*(v8 + 56))(v23, 0, 1, v26);
  return sub_1D9B754BC(v10, type metadata accessor for VisualUnderstanding.ImageRegion);
}

uint64_t sub_1D9B6CD10@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = a1[7];
  v36[6] = a1[6];
  v37 = v8;
  v38[0] = a1[8];
  *(v38 + 13) = *(a1 + 141);
  v9 = a1[3];
  v36[2] = a1[2];
  v36[3] = v9;
  v10 = a1[5];
  v36[4] = a1[4];
  v36[5] = v10;
  v11 = a1[1];
  v36[0] = *a1;
  v36[1] = v11;
  v12 = 0.0;
  if (LOBYTE(v36[0]) <= 0x18u && ((1 << SLOBYTE(v36[0])) & 0x1F7FDEF) != 0)
  {
    v13 = *(a2 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
    swift_beginAccess();
    v12 = *(v13 + 52);
  }

  v14 = *(a2 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v15 = *(&v37 + 1) * v14[11];
  swift_beginAccess();
  v16 = v15 + (*(&v37 + 2) * v14[10]);
  v17 = *(a3 + 76);
  swift_beginAccess();
  v18 = v12 + (v16 + (v17 * v14[12]));
  v19 = a1[5];
  v32 = a1[4];
  v33 = v19;
  v34 = a1[6];
  v20 = a1[1];
  v28 = *a1;
  v29 = v20;
  v21 = a1[3];
  v30 = a1[2];
  v31 = v21;
  *&v35[29] = *(a1 + 141);
  *&v35[20] = *(a1 + 132);
  *&v35[4] = *(a1 + 116);
  *v35 = v18;
  faiss::NormalizationTransform::~NormalizationTransform(&v28);
  v22 = *v35;
  a4[6] = v34;
  a4[7] = v22;
  a4[8] = *&v35[16];
  *(a4 + 141) = *&v35[29];
  v23 = v31;
  a4[2] = v30;
  a4[3] = v23;
  v24 = v33;
  a4[4] = v32;
  a4[5] = v24;
  v25 = v29;
  *a4 = v28;
  a4[1] = v25;
  return sub_1D99AE054(v36, v27);
}

uint64_t sub_1D9B6CEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v8 = swift_allocBox();
  v10 = v9;
  sub_1D9B717A8(a1, v9, type metadata accessor for VisualUnderstanding.ImageRegion);

  v12 = sub_1D9B71468(v11, a2, a3, v8);

  swift_beginAccess();
  *(v10 + 48) = v12;

  v14 = *(v12 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = (v12 + 156);
    v17 = MEMORY[0x1E69E7CC0];
    while (v15 < *(v12 + 2))
    {
      if (*v16)
      {
        v18 = *(v16 - 3);
      }

      else
      {
        v18 = 0.0;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF84B8(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D9AF84B8((v19 > 1), v20 + 1, 1, v17);
        v17 = result;
      }

      ++v15;
      *(v17 + 16) = v20 + 1;
      *(v17 + 4 * v20 + 32) = v18;
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v21 = sub_1D9BC1BF0(v17);

    v22 = *&v21;
    if ((v21 & 0x100000000) != 0)
    {
      v22 = 0.0;
    }

    *(v10 + 72) = v22;
    sub_1D9B717A8(v10, a4, type metadata accessor for VisualUnderstanding.ImageRegion);
    (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }

  return result;
}

void sub_1D9B6D14C(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v60 = a4;
  v62 = a3;
  v8 = sub_1D9C7D8DC();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[7];
  v15 = a1[5];
  v97 = a1[6];
  v98 = v14;
  v16 = a1[7];
  v99[0] = a1[8];
  *(v99 + 13) = *(a1 + 141);
  v17 = a1[3];
  v18 = a1[1];
  v93 = a1[2];
  v94 = v17;
  v19 = a1[3];
  v20 = a1[5];
  v95 = a1[4];
  v96 = v20;
  v21 = a1[1];
  v92[0] = *a1;
  v92[1] = v21;
  v89 = v97;
  v90 = v16;
  v91[0] = a1[8];
  *(v91 + 13) = *(a1 + 141);
  v85 = v93;
  v86 = v19;
  v87 = v95;
  v88 = v15;
  v83 = v92[0];
  v84 = v18;
  v22 = sub_1D9A15C94(v92[0]);
  v24 = v23;
  if (!*(a2 + 16))
  {
    sub_1D99AE054(v92, &v74);

LABEL_16:
    v69 = v89;
    v70 = v90;
    v71[0] = v91[0];
    *(v71 + 13) = *(v91 + 13);
    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    v63 = v83;
    v64 = v84;
    v72[6] = v89;
    v72[7] = v90;
    v73[0] = v91[0];
    *(v73 + 13) = *(v91 + 13);
    v72[2] = v85;
    v72[3] = v86;
    v72[4] = v87;
    v72[5] = v88;
    v72[0] = v83;
    v72[1] = v84;
    sub_1D99AE054(&v63, &v74);
    sub_1D99AE0B0(v72);
    v80 = v69;
    v81 = v70;
    v82[0] = v71[0];
    *(v82 + 13) = *(v71 + 13);
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v79 = v68;
    v74 = v63;
    v75 = v64;
    faiss::NormalizationTransform::~NormalizationTransform(&v74);
    v53 = v81;
    a5[6] = v80;
    a5[7] = v53;
    a5[8] = v82[0];
    *(a5 + 141) = *(v82 + 13);
    v54 = v77;
    a5[2] = v76;
    a5[3] = v54;
    v55 = v79;
    a5[4] = v78;
    a5[5] = v55;
    v56 = v75;
    *a5 = v74;
    a5[1] = v56;
    return;
  }

  v25 = v22;
  v58 = v8;
  sub_1D99AE054(v92, &v74);
  v26 = sub_1D99ED894(v25, v24);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1D9B717A8(*(a2 + 56) + *(v11 + 72) * v26, v13, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  v29 = *&v13[*(v10 + 20)];
  v30 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
  swift_beginAccess();
  v31 = *(v29 + v30);
  sub_1D9B754BC(v13, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  if (v31 < 1)
  {
    goto LABEL_16;
  }

  v32 = v62;
  v33 = *v62;
  v34 = *(*v62 + 16);
  if (v34)
  {
    v35 = sub_1D99EE138(v83);
    if (v36)
    {
      LODWORD(v34) = *(*(v33 + 56) + 4 * v35);
    }

    else
    {
      LODWORD(v34) = 0;
    }
  }

  v37 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    v38 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = *v32;
    *v32 = 0x8000000000000000;
    sub_1D9C12314(v37, v38, isUniquelyReferenced_nonNull_native);
    *v32 = v74;

    if (v31 < v37)
    {
      v40 = v61;
      static Logger.argos.getter(v61);

      v41 = sub_1D9C7D8BC();
      v42 = sub_1D9C7E09C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v72[0] = v62;
        *v43 = 136315650;
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v44 = swift_projectBox();
        swift_beginAccess();
        v45 = v44[1];
        v74 = *v44;
        v75 = v45;
        v46 = NormalizedRect.loggingDescription.getter();
        v48 = sub_1D9A0E224(v46, v47, v72);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        v49 = sub_1D9A15C94(v38);
        v51 = sub_1D9A0E224(v49, v50, v72);

        *(v43 + 14) = v51;
        *(v43 + 22) = 1024;
        *(v43 + 24) = v31;
        _os_log_impl(&dword_1D9962000, v41, v42, "%s unselects %s because reach max region number %d", v43, 0x1Cu);
        v52 = v62;
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v52, -1, -1);
        MEMORY[0x1DA7405F0](v43, -1, -1);

        (*(v59 + 8))(v61, v58);
      }

      else
      {

        (*(v59 + 8))(v40, v58);
      }

      swift_beginAccess();
      BYTE12(v90) = 0;
    }

    swift_beginAccess();
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1D9B6D704(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v81 = a5;
  v84 = a4;
  v78 = a3;
  v10 = sub_1D9C7D8DC();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v78 - v13;
  v14 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v85 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[7];
  v18 = a1[5];
  v136 = a1[6];
  v137 = v17;
  v19 = a1[7];
  v138[0] = a1[8];
  *(v138 + 13) = *(a1 + 141);
  v20 = a1[3];
  v21 = a1[1];
  v132 = a1[2];
  v133 = v20;
  v22 = a1[3];
  v23 = a1[5];
  v134 = a1[4];
  v135 = v23;
  v24 = a1[1];
  v131[0] = *a1;
  v131[1] = v24;
  v128 = v136;
  v129 = v19;
  v130[0] = a1[8];
  *(v130 + 13) = *(a1 + 141);
  v124 = v132;
  v125 = v22;
  v126 = v134;
  v127 = v18;
  v25 = v131[0];
  v122 = v131[0];
  v123 = v21;
  v26 = sub_1D9A15C94(v131[0]);
  v28 = v27;
  if (!*(a2 + 16))
  {
    sub_1D99AE054(v131, &v113);

LABEL_15:
    swift_beginAccess();
    v101 = v128;
    v102 = v129;
    v103[0] = v130[0];
    *(v103 + 13) = *(v130 + 13);
    v97 = v124;
    v98 = v125;
    v99 = v126;
    v100 = v127;
    v95 = v122;
    v96 = v123;
    v110 = v128;
    v111 = v129;
    v112[0] = v130[0];
    *(v112 + 13) = *(v130 + 13);
    v106 = v124;
    v107 = v125;
    v108 = v126;
    v109 = v127;
    v104 = v122;
    v105 = v123;
    sub_1D99AE054(&v95, &v113);
    sub_1D99AE0B0(&v104);
    v119 = v101;
    v120 = v102;
    v121[0] = v103[0];
    *(v121 + 13) = *(v103 + 13);
    v115 = v97;
    v116 = v98;
    v117 = v99;
    v118 = v100;
    v113 = v95;
    v114 = v96;
    faiss::NormalizationTransform::~NormalizationTransform(&v113);
    v74 = v120;
    a6[6] = v119;
    a6[7] = v74;
    a6[8] = v121[0];
    *(a6 + 141) = *(v121 + 13);
    v75 = v116;
    a6[2] = v115;
    a6[3] = v75;
    v76 = v118;
    a6[4] = v117;
    a6[5] = v76;
    v77 = v114;
    *a6 = v113;
    a6[1] = v77;
    return;
  }

  v29 = v26;
  v139 = v6;
  sub_1D99AE054(v131, &v113);
  v30 = sub_1D99ED894(v29, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1D9B717A8(*(a2 + 56) + *(v85 + 72) * v30, v16, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  v33 = *&v16[*(v14 + 20)];
  v34 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
  swift_beginAccess();
  v35 = *(v33 + v34);

  v36 = sub_1D9B754BC(v16, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  if (*(v35 + 16))
  {
    *&v113 = v84;
    v37 = v81;
    *(&v113 + 1) = v81;
    MEMORY[0x1EEE9AC00](v36);
    *(&v78 - 2) = &v113;
    v38 = v139;
    v39 = sub_1D9BC1698(sub_1D99A40D8, (&v78 - 4), v35);

    if ((v39 & 1) == 0)
    {
      v40 = v80;
      static Logger.argos.getter(v80);

      v41 = sub_1D9C7D8BC();
      v42 = sub_1D9C7E09C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v139 = v38;
        v85 = v44;
        *&v104 = v44;
        *v43 = 136315650;
        v45 = v78;
        swift_beginAccess();
        v46 = v45[1];
        v113 = *v45;
        v114 = v46;
        v47 = NormalizedRect.loggingDescription.getter();
        v49 = v37;
        v50 = sub_1D9A0E224(v47, v48, &v104);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2080;
        v51 = sub_1D9A15C94(v25);
        v53 = sub_1D9A0E224(v51, v52, &v104);

        *(v43 + 14) = v53;
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_1D9A0E224(v84, v49, &v104);
        _os_log_impl(&dword_1D9962000, v41, v42, "%s unselects %s because applicationIdentifiers is not supported for domain, applicationIdentifier:  %s", v43, 0x20u);
        v54 = v85;
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v54, -1, -1);
        MEMORY[0x1DA7405F0](v43, -1, -1);

        (*(v82 + 8))(v80, v83);
      }

      else
      {

        (*(v82 + 8))(v40, v83);
      }

      swift_beginAccess();
      BYTE12(v129) = 0;
    }

    goto LABEL_15;
  }

  v55 = v79;
  static Logger.argos.getter(v79);
  v119 = v128;
  v120 = v129;
  v121[0] = v130[0];
  *(v121 + 13) = *(v130 + 13);
  v115 = v124;
  v116 = v125;
  v117 = v126;
  v118 = v127;
  v113 = v122;
  v114 = v123;
  sub_1D99AE054(&v113, &v104);
  v56 = sub_1D9C7D8BC();
  v57 = sub_1D9C7E09C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v55;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v95 = v60;
    *v59 = 136315394;
    v61 = v78;
    swift_beginAccess();
    v62 = v61[1];
    v104 = *v61;
    v105 = v62;
    v63 = NormalizedRect.loggingDescription.getter();
    v65 = sub_1D9A0E224(v63, v64, &v95);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    v66 = sub_1D9A15C94(v113);
    v68 = v67;
    sub_1D99AE0B0(&v113);
    v69 = sub_1D9A0E224(v66, v68, &v95);

    *(v59 + 14) = v69;
    _os_log_impl(&dword_1D9962000, v56, v57, "%s selects %s because applicationIdentifiers is empty", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v60, -1, -1);
    MEMORY[0x1DA7405F0](v59, -1, -1);

    (*(v82 + 8))(v58, v83);
  }

  else
  {
    sub_1D99AE0B0(&v113);

    (*(v82 + 8))(v55, v83);
  }

  swift_beginAccess();
  v92 = v128;
  v93 = v129;
  v94[0] = v130[0];
  *(v94 + 13) = *(v130 + 13);
  v88 = v124;
  v89 = v125;
  v90 = v126;
  v91 = v127;
  v86 = v122;
  v87 = v123;
  v101 = v128;
  v102 = v129;
  v103[0] = v130[0];
  *(v103 + 13) = *(v130 + 13);
  v97 = v124;
  v98 = v125;
  v99 = v126;
  v100 = v127;
  v95 = v122;
  v96 = v123;
  sub_1D99AE054(&v86, &v104);
  sub_1D99AE0B0(&v95);
  v110 = v92;
  v111 = v93;
  v112[0] = v94[0];
  *(v112 + 13) = *(v94 + 13);
  v106 = v88;
  v107 = v89;
  v108 = v90;
  v109 = v91;
  v104 = v86;
  v105 = v87;
  faiss::NormalizationTransform::~NormalizationTransform(&v104);
  v70 = v111;
  a6[6] = v110;
  a6[7] = v70;
  a6[8] = v112[0];
  *(a6 + 141) = *(v112 + 13);
  v71 = v107;
  a6[2] = v106;
  a6[3] = v71;
  v72 = v109;
  a6[4] = v108;
  a6[5] = v72;
  v73 = v105;
  *a6 = v104;
  a6[1] = v73;
}

void sub_1D9B6DFC4(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v86 = a3;
  v9 = sub_1D9C7D8DC();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[7];
  v123[6] = a1[6];
  v124 = v13;
  v125[0] = a1[8];
  *(v125 + 13) = *(a1 + 141);
  v14 = a1[3];
  v123[2] = a1[2];
  v123[3] = v14;
  v15 = a1[5];
  v123[4] = a1[4];
  v123[5] = v15;
  v16 = a1[1];
  v123[0] = *a1;
  v123[1] = v16;
  type metadata accessor for VisualUnderstanding.ImageRegion();
  v79 = a4;
  v17 = swift_projectBox();
  v18 = a1[7];
  v120 = a1[6];
  v121 = v18;
  v122[0] = a1[8];
  *(v122 + 13) = *(a1 + 141);
  v19 = a1[3];
  v116 = a1[2];
  v117 = v19;
  v20 = a1[5];
  v118 = a1[4];
  v119 = v20;
  v21 = a1[1];
  v114 = *a1;
  v115 = v21;
  if (BYTE12(v124))
  {
    v22 = *a2;
    if (*(*a2 + 16))
    {
      v76 = a2;
      v77 = v17;
      v23 = v114;
      sub_1D99AE054(v123, &v105);
      v78 = v23;
      v24 = sub_1D99EE138(v23);
      v25 = a5;
      if (v26)
      {
        v27 = *(*(v22 + 56) + 8 * v24);
        v28 = v27 - 1;
        if (v27 > 1)
        {
          v29 = sub_1D9A15C94(v78);
          if (*(v86 + 16))
          {
            v75 = sub_1D99ED894(v29, v30);
            v32 = v31;

            if (v32)
            {
              v33 = *(v86 + 56) + v83[9].isa * v75;
              v86 = v28;
              v34 = v85;
              sub_1D9B717A8(v33, v85, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
              v35 = (*(v34 + *(v84 + 20)) + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
              swift_beginAccess();
              v36 = *v35;
              sub_1D9B754BC(v34, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
              if (v36 > 0.0)
              {
                v37 = v77;
                swift_beginAccess();
                if (v36 < v37[19])
                {
                  static Logger.argos.getter(v82);

                  v38 = sub_1D9C7D8BC();
                  v39 = sub_1D9C7E09C();

                  LODWORD(v85) = v39;
                  v40 = v39;
                  v41 = v38;
                  if (os_log_type_enabled(v38, v40))
                  {
                    v42 = swift_slowAlloc();
                    v84 = swift_slowAlloc();
                    *&v96 = v84;
                    *v42 = 136315394;
                    v43 = v77;
                    swift_beginAccess();
                    v44 = v43[1];
                    v105 = *v43;
                    v106 = v44;
                    v45 = NormalizedRect.loggingDescription.getter();
                    v47 = sub_1D9A0E224(v45, v46, &v96);
                    v83 = v41;
                    v48 = v47;

                    *(v42 + 4) = v48;
                    *(v42 + 12) = 2080;
                    v49 = sub_1D9A15C94(v78);
                    v51 = sub_1D9A0E224(v49, v50, &v96);

                    *(v42 + 14) = v51;
                    v52 = v76;
                    v53 = v83;
                    _os_log_impl(&dword_1D9962000, v83, v85, "%s unselects %s because this region is too large and this domain exists on multi regions.", v42, 0x16u);
                    v54 = v84;
                    swift_arrayDestroy();
                    MEMORY[0x1DA7405F0](v54, -1, -1);
                    MEMORY[0x1DA7405F0](v42, -1, -1);

                    (*(v80 + 8))(v82, v81);
                  }

                  else
                  {

                    (*(v80 + 8))(v82, v81);
                    v52 = v76;
                  }

                  swift_beginAccess();
                  BYTE12(v121) = 0;
                  v73 = v114;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v105 = *v52;
                  *v52 = 0x8000000000000000;
                  sub_1D9C12438(v86, v73, isUniquelyReferenced_nonNull_native);
                  *v52 = v105;

                  v25 = a5;
                }

                swift_beginAccess();
              }
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
      sub_1D99AE054(v123, &v105);
      v25 = a5;
    }

    v94 = v121;
    v95[0] = v122[0];
    *(v95 + 13) = *(v122 + 13);
    v90 = v117;
    v91 = v118;
    v92 = v119;
    v93 = v120;
    v87 = v114;
    v88 = v115;
    v89 = v116;
    v102 = v120;
    v103 = v121;
    v104[0] = v122[0];
    *(v104 + 13) = *(v122 + 13);
    v98 = v116;
    v99 = v117;
    v100 = v118;
    v101 = v119;
    v96 = v114;
    v97 = v115;
    sub_1D99AE054(&v87, &v105);
    sub_1D99AE0B0(&v96);
    v111 = v93;
    v112 = v94;
    v113[0] = v95[0];
    *(v113 + 13) = *(v95 + 13);
    v107 = v89;
    v108 = v90;
    v109 = v91;
    v110 = v92;
    v105 = v87;
    v106 = v88;
    faiss::NormalizationTransform::~NormalizationTransform(&v105);
    v69 = v112;
    v25[6] = v111;
    v25[7] = v69;
    v25[8] = v113[0];
    *(v25 + 141) = *(v113 + 13);
    v70 = v108;
    v25[2] = v107;
    v25[3] = v70;
    v71 = v110;
    v25[4] = v109;
    v25[5] = v71;
    v72 = v106;
    *v25 = v105;
    v25[1] = v72;
  }

  else
  {
    v55 = a1[6];
    v56 = a1[8];
    v94 = a1[7];
    v95[0] = v56;
    *(v95 + 13) = *(a1 + 141);
    v57 = a1[2];
    v58 = a1[4];
    v90 = a1[3];
    v91 = v58;
    v59 = a1[4];
    v60 = a1[6];
    v92 = a1[5];
    v93 = v60;
    v61 = a1[1];
    v87 = *a1;
    v62 = *a1;
    v63 = a1[1];
    v64 = a1[2];
    v88 = v61;
    v89 = v64;
    v102 = v55;
    v103 = v94;
    v104[0] = a1[8];
    *(v104 + 13) = *(a1 + 141);
    v98 = v57;
    v99 = v90;
    v100 = v59;
    v101 = v92;
    v96 = v62;
    v97 = v63;
    sub_1D99AE054(v123, &v105);
    sub_1D99AE054(&v87, &v105);
    sub_1D99AE0B0(&v96);
    v111 = v93;
    v112 = v94;
    v113[0] = v95[0];
    *(v113 + 13) = *(v95 + 13);
    v107 = v89;
    v108 = v90;
    v109 = v91;
    v110 = v92;
    v105 = v87;
    v106 = v88;
    faiss::NormalizationTransform::~NormalizationTransform(&v105);
    v65 = v112;
    a5[6] = v111;
    a5[7] = v65;
    a5[8] = v113[0];
    *(a5 + 141) = *(v113 + 13);
    v66 = v108;
    a5[2] = v107;
    a5[3] = v66;
    v67 = v110;
    a5[4] = v109;
    a5[5] = v67;
    v68 = v106;
    *a5 = v105;
    a5[1] = v68;
  }
}

uint64_t sub_1D9B6E6D4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1D9C7E79C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v10 = sub_1D9C7DF5C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1D9B6E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9B717A8(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B717A8(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[19];
      v24 = v12[19];
      sub_1D9B754BC(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B754BC(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9B7551C(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9B7551C(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B6EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9B717A8(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B717A8(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[19];
      v24 = v12[19];
      sub_1D9B754BC(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B754BC(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9B7551C(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9B7551C(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B6ECA8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9B6FF00(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9B717A8(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B717A8(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9B717A8(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B717A8(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D9B7551C(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9B7551C(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9B6FF00(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9B717A8(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B717A8(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[19];
    v93 = v14[19];
    sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D9B7551C(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9B7551C(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D9B6F5D4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9B703F8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9B717A8(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B717A8(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9B717A8(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B717A8(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v26 < v27 == v30 >= v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v26 < v27)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D9B7551C(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9B7551C(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9B703F8(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9B717A8(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B717A8(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[19];
    v93 = v14[19];
    sub_1D9B754BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v92 >= v93)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D9B7551C(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9B7551C(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D9B6FF00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9B717A8(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9B717A8(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 76);
          v37 = *(v35 + 76);
          v38 = v35;
          v11 = v34;
          sub_1D9B754BC(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9B754BC(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
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

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9B717A8(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9B717A8(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D9B754BC(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B754BC(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

void sub_1D9B703F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9B717A8(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9B717A8(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 76);
          v37 = *(v35 + 76);
          v38 = v35;
          v11 = v34;
          sub_1D9B754BC(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9B754BC(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v36 < v37)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
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

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9B717A8(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9B717A8(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D9B754BC(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B754BC(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

uint64_t sub_1D9B708F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  v39 = *(v2 + 16);
  while (2)
  {
    v7 = (v5 + 160 * v4);
    v8 = v7[1];
    v45[0] = *v7;
    v45[1] = v8;
    v9 = v7[2];
    v10 = v7[3];
    v11 = v7[5];
    v45[4] = v7[4];
    v45[5] = v11;
    v45[2] = v9;
    v45[3] = v10;
    v12 = v7[6];
    v13 = v7[7];
    v14 = v7[8];
    *&v46[13] = *(v7 + 141);
    v45[7] = v13;
    *v46 = v14;
    v45[6] = v12;
    if (BYTE12(v13) != 1)
    {
      goto LABEL_100;
    }

    v41 = v6;
    v15 = LOBYTE(v45[0]);
    v16 = *(a2 + 48);
    v17 = *(v16 + 16);
    result = sub_1D99AE054(v45, v43);
    if (!v17)
    {
LABEL_94:
      result = sub_1D99AE0B0(v45);
      v5 = v2 + 32;
      v3 = v39;
      v6 = v41;
      goto LABEL_100;
    }

    v18 = 0;
    v19 = (v16 + 32);
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_106;
      }

      v21 = v19[1];
      v43[0] = *v19;
      v43[1] = v21;
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[5];
      v43[4] = v19[4];
      v43[5] = v24;
      v43[2] = v22;
      v43[3] = v23;
      v25 = v19[6];
      v26 = v19[7];
      v27 = v19[8];
      *(v44 + 13) = *(v19 + 141);
      v43[7] = v26;
      v44[0] = v27;
      v43[6] = v25;
      if (BYTE12(v26) == 1)
      {
        break;
      }

LABEL_7:
      ++v18;
      v19 += 10;
      if (v17 == v18)
      {
        goto LABEL_94;
      }
    }

    v28 = 0xE300000000000000;
    v29 = 7631457;
    switch(LOBYTE(v43[0]))
    {
      case 1:
        v28 = 0xE600000000000000;
        v29 = 0x65727574616ELL;
        break;
      case 2:
        v28 = 0xE800000000000000;
        v29 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v29 = 0x4C6C61727574616ELL;
        v28 = 0xEF6B72616D646E61;
        break;
      case 4:
        v28 = 0xE500000000000000;
        v29 = 0x616964656DLL;
        break;
      case 5:
        v28 = 0xE400000000000000;
        v29 = 1802465122;
        break;
      case 6:
        v28 = 0xE500000000000000;
        v29 = 0x6D75626C61;
        break;
      case 7:
        v28 = 0xE400000000000000;
        v29 = 1937006947;
        break;
      case 8:
        v28 = 0xE400000000000000;
        v29 = 1936158564;
        break;
      case 9:
        v28 = 0xE700000000000000;
        v30 = 1835626081;
        goto LABEL_29;
      case 0xA:
        v28 = 0xE500000000000000;
        v29 = 0x7364726962;
        break;
      case 0xB:
        v28 = 0xE700000000000000;
        v29 = 0x73746365736E69;
        break;
      case 0xC:
        v28 = 0xE800000000000000;
        v29 = 0x73656C6974706572;
        break;
      case 0xD:
        v28 = 0xE700000000000000;
        v30 = 1835884909;
LABEL_29:
        v29 = v30 | 0x736C6100000000;
        break;
      case 0xE:
        v29 = 0xD000000000000010;
        v28 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v28 = 0xE700000000000000;
        v29 = 0x6C657261707061;
        break;
      case 0x10:
        v29 = 0x726F737365636361;
        v28 = 0xEB00000000736569;
        break;
      case 0x11:
        v28 = 0xE400000000000000;
        v29 = 1685024614;
        break;
      case 0x12:
        v28 = 0xEA0000000000746ELL;
        v29 = 0x6F726665726F7473;
        break;
      case 0x13:
        v31 = 1852270963;
        goto LABEL_36;
      case 0x14:
        v29 = 0xD000000000000011;
        v28 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v31 = 1869903201;
LABEL_36:
        v29 = v31 | 0x626D795300000000;
        v28 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v29 = 0x676F4C646E617262;
        v28 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v28 = 0xE700000000000000;
        v29 = 0x65646F63726162;
        break;
      case 0x18:
        v29 = 0x727574706C756373;
        v28 = 0xE900000000000065;
        break;
      case 0x19:
        v28 = 0xE700000000000000;
        v29 = 0x656E696C796B73;
        break;
      case 0x1A:
        v28 = 0xE800000000000000;
        v29 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v32 = 0xE300000000000000;
    v33 = 7631457;
    switch(v15)
    {
      case 1:
        v32 = 0xE600000000000000;
        if (v29 == 0x65727574616ELL)
        {
          goto LABEL_90;
        }

        goto LABEL_6;
      case 2:
        v32 = 0xE800000000000000;
        if (v29 != 0x6B72616D646E616CLL)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 3:
        v32 = 0xEF6B72616D646E61;
        if (v29 != 0x4C6C61727574616ELL)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 4:
        v32 = 0xE500000000000000;
        if (v29 != 0x616964656DLL)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 5:
        v32 = 0xE400000000000000;
        if (v29 != 1802465122)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 6:
        v32 = 0xE500000000000000;
        if (v29 != 0x6D75626C61)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 7:
        v32 = 0xE400000000000000;
        if (v29 != 1937006947)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 8:
        v32 = 0xE400000000000000;
        if (v29 != 1936158564)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 9:
        v32 = 0xE700000000000000;
        v35 = 1835626081;
        goto LABEL_72;
      case 10:
        v32 = 0xE500000000000000;
        if (v29 != 0x7364726962)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 11:
        v32 = 0xE700000000000000;
        v34 = 0x746365736E69;
        goto LABEL_73;
      case 12:
        v32 = 0xE800000000000000;
        if (v29 != 0x73656C6974706572)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 13:
        v32 = 0xE700000000000000;
        v35 = 1835884909;
LABEL_72:
        v34 = v35 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_73:
        if (v29 != (v34 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 14:
        v32 = 0x80000001D9CA2910;
        if (v29 != 0xD000000000000010)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 15:
        v32 = 0xE700000000000000;
        if (v29 != 0x6C657261707061)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 16:
        v32 = 0xEB00000000736569;
        if (v29 != 0x726F737365636361)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 17:
        v32 = 0xE400000000000000;
        if (v29 != 1685024614)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 18:
        v32 = 0xEA0000000000746ELL;
        if (v29 != 0x6F726665726F7473)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 19:
        v36 = 1852270963;
        goto LABEL_86;
      case 20:
        v32 = 0x80000001D9CA2950;
        if (v29 != 0xD000000000000011)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 21:
        v36 = 1869903201;
LABEL_86:
        v32 = 0xEA00000000006C6FLL;
        if (v29 != (v36 | 0x626D795300000000))
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 22:
        v32 = 0xEF6C6F626D79536FLL;
        if (v29 != 0x676F4C646E617262)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 23:
        v32 = 0xE700000000000000;
        v33 = 0x65646F63726162;
        goto LABEL_89;
      case 24:
        v32 = 0xE900000000000065;
        if (v29 != 0x727574706C756373)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 25:
        v32 = 0xE700000000000000;
        if (v29 != 0x656E696C796B73)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      case 26:
        v32 = 0xE800000000000000;
        if (v29 != 0x44327463656A626FLL)
        {
          goto LABEL_6;
        }

        goto LABEL_90;
      default:
LABEL_89:
        if (v29 != v33)
        {
          goto LABEL_6;
        }

LABEL_90:
        if (v28 != v32)
        {
LABEL_6:
          v20 = sub_1D9C7E7DC();
          sub_1D99AE054(v43, v42);

          result = sub_1D99AE0B0(v43);
          if (v20)
          {
            goto LABEL_95;
          }

          goto LABEL_7;
        }

        sub_1D99AE054(v43, v42);

        sub_1D99AE0B0(v43);
LABEL_95:
        sub_1D99AE0B0(v45);
        v6 = v41;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AF8AB8(0, *(v41 + 16) + 1, 1, v41);
          v6 = result;
        }

        v5 = v2 + 32;
        v3 = v39;
        v38 = *(v6 + 16);
        v37 = *(v6 + 24);
        if (v38 >= v37 >> 1)
        {
          result = sub_1D9AF8AB8((v37 > 1), v38 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 16) = v38 + 1;
        *(v6 + v38 + 32) = v15;
LABEL_100:
        if (++v4 == v3)
        {
          return v6;
        }

        if (v4 < *(v2 + 16))
        {
          continue;
        }

LABEL_106:
        __break(1u);
        return result;
    }
  }
}

char *sub_1D9B71128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; i += 10)
  {
    v10 = i[7];
    v11 = i[5];
    v74 = i[6];
    v75 = v10;
    v12 = i[7];
    v76[0] = i[8];
    *(v76 + 13) = *(i + 141);
    v13 = i[3];
    v14 = i[1];
    v70 = i[2];
    v71 = v13;
    v15 = i[3];
    v16 = i[5];
    v72 = i[4];
    v73 = v16;
    v17 = i[1];
    v69[0] = *i;
    v69[1] = v17;
    v66 = v74;
    v67 = v12;
    v68[0] = i[8];
    *(v68 + 13) = *(i + 141);
    v62 = v70;
    v63 = v15;
    v64 = v72;
    v65 = v11;
    v60 = v69[0];
    v61 = v14;
    sub_1D99AE054(v69, &v42);
    sub_1D9B6DFC4(&v60, a2, a3, v77, &v51);
    if (v4)
    {
      break;
    }

    v40[6] = v66;
    v40[7] = v67;
    v41[0] = v68[0];
    *(v41 + 13) = *(v68 + 13);
    v40[2] = v62;
    v40[3] = v63;
    v40[4] = v64;
    v40[5] = v65;
    v40[0] = v60;
    v40[1] = v61;
    sub_1D99AE0B0(v40);
    v48 = v57;
    v49 = v58;
    v50[0] = v59[0];
    *(v50 + 13) = *(v59 + 13);
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v42 = v51;
    v43 = v52;
    if (sub_1D99AE104(&v42) == 1)
    {
      v37 = v57;
      v38 = v58;
      v39[0] = v59[0];
      *(v39 + 13) = *(v59 + 13);
      v33 = v53;
      v34 = v54;
      v35 = v55;
      v36 = v56;
      v31 = v51;
      v32 = v52;
      sub_1D99A6AE0(&v31, &qword_1ECB510B8);
    }

    else
    {
      v37 = v57;
      v38 = v58;
      v39[0] = v59[0];
      *(v39 + 13) = *(v59 + 13);
      v33 = v53;
      v34 = v54;
      v35 = v55;
      v36 = v56;
      v31 = v51;
      v32 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D9AF8974(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_1D9AF8974((v18 > 1), v19 + 1, 1, v8);
      }

      v26 = v35;
      v27 = v36;
      v24 = v33;
      v25 = v34;
      *&v30[13] = *(v39 + 13);
      v29 = v38;
      *v30 = v39[0];
      v28 = v37;
      v22 = v31;
      v23 = v32;
      *(v8 + 2) = v19 + 1;
      v20 = &v8[160 * v19];
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      *(v20 + 6) = v26;
      *(v20 + 7) = v27;
      *(v20 + 4) = v24;
      *(v20 + 5) = v25;
      *(v20 + 173) = *&v30[13];
      *(v20 + 9) = v29;
      *(v20 + 10) = *v30;
      *(v20 + 8) = v28;
    }

    if (!--v5)
    {
      return v8;
    }
  }

  v48 = v66;
  v49 = v67;
  v50[0] = v68[0];
  *(v50 + 13) = *(v68 + 13);
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v47 = v65;
  v42 = v60;
  v43 = v61;
  sub_1D99AE0B0(&v42);

  return v8;
}

char *sub_1D9B71468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; i += 10)
  {
    v10 = i[7];
    v11 = i[5];
    v74 = i[6];
    v75 = v10;
    v12 = i[7];
    v76[0] = i[8];
    *(v76 + 13) = *(i + 141);
    v13 = i[3];
    v14 = i[1];
    v70 = i[2];
    v71 = v13;
    v15 = i[3];
    v16 = i[5];
    v72 = i[4];
    v73 = v16;
    v17 = i[1];
    v69[0] = *i;
    v69[1] = v17;
    v66 = v74;
    v67 = v12;
    v68[0] = i[8];
    *(v68 + 13) = *(i + 141);
    v62 = v70;
    v63 = v15;
    v64 = v72;
    v65 = v11;
    v60 = v69[0];
    v61 = v14;
    sub_1D99AE054(v69, &v42);
    sub_1D9B6D14C(&v60, a2, a3, v77, &v51);
    if (v4)
    {
      break;
    }

    v40[6] = v66;
    v40[7] = v67;
    v41[0] = v68[0];
    *(v41 + 13) = *(v68 + 13);
    v40[2] = v62;
    v40[3] = v63;
    v40[4] = v64;
    v40[5] = v65;
    v40[0] = v60;
    v40[1] = v61;
    sub_1D99AE0B0(v40);
    v48 = v57;
    v49 = v58;
    v50[0] = v59[0];
    *(v50 + 13) = *(v59 + 13);
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v42 = v51;
    v43 = v52;
    if (sub_1D99AE104(&v42) == 1)
    {
      v37 = v57;
      v38 = v58;
      v39[0] = v59[0];
      *(v39 + 13) = *(v59 + 13);
      v33 = v53;
      v34 = v54;
      v35 = v55;
      v36 = v56;
      v31 = v51;
      v32 = v52;
      sub_1D99A6AE0(&v31, &qword_1ECB510B8);
    }

    else
    {
      v37 = v57;
      v38 = v58;
      v39[0] = v59[0];
      *(v39 + 13) = *(v59 + 13);
      v33 = v53;
      v34 = v54;
      v35 = v55;
      v36 = v56;
      v31 = v51;
      v32 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D9AF8974(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_1D9AF8974((v18 > 1), v19 + 1, 1, v8);
      }

      v26 = v35;
      v27 = v36;
      v24 = v33;
      v25 = v34;
      *&v30[13] = *(v39 + 13);
      v29 = v38;
      *v30 = v39[0];
      v28 = v37;
      v22 = v31;
      v23 = v32;
      *(v8 + 2) = v19 + 1;
      v20 = &v8[160 * v19];
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      *(v20 + 6) = v26;
      *(v20 + 7) = v27;
      *(v20 + 4) = v24;
      *(v20 + 5) = v25;
      *(v20 + 173) = *&v30[13];
      *(v20 + 9) = v29;
      *(v20 + 10) = *v30;
      *(v20 + 8) = v28;
    }

    if (!--v5)
    {
      return v8;
    }
  }

  v48 = v66;
  v49 = v67;
  v50[0] = v68[0];
  *(v50 + 13) = *(v68 + 13);
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v47 = v65;
  v42 = v60;
  v43 = v61;
  sub_1D99AE0B0(&v42);

  return v8;
}

uint64_t sub_1D9B717A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B71810(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v81 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - v5;
  v9 = MEMORY[0x1E69E7CC8];
  v86 = MEMORY[0x1E69E7CC8];
  v10 = *(a1 + 16);
  v75 = v6;
  v72 = a1;
  v11 = 0;
  if (v10)
  {
    v12 = 0;
    v13 = v84;
    v14 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v77 = v10;
    v78 = &v68 - v5;
    v76 = v14;
    v73 = v15;
    while (1)
    {
      sub_1D9B717A8(v14 + v15 * v12, v8, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((v8[104] & 1) == 0)
      {
        v16 = *(v8 + 6);
        v17 = *(v16 + 16);
        if (v17)
        {
          break;
        }
      }

LABEL_4:
      v12 = (v12 + 1);
      sub_1D9B754BC(v8, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v12 == v10)
      {
        goto LABEL_24;
      }
    }

    v79 = v12;
    v18 = 0;
    v19 = (v16 + 32);
    v20 = v17 - 1;
    v82 = v16;
    while (1)
    {
      v21 = v19[1];
      v84[0] = *v19;
      v84[1] = v21;
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[5];
      v84[4] = v19[4];
      v84[5] = v24;
      v84[2] = v22;
      v84[3] = v23;
      v25 = v19[6];
      v26 = v19[7];
      v27 = v19[8];
      *(v85 + 13) = *(v19 + 141);
      v84[7] = v26;
      v85[0] = v27;
      v84[6] = v25;
      if (BYTE12(v26) == 1)
      {
        break;
      }

LABEL_19:
      if (v20 == v18)
      {
        v86 = v9;
        v10 = v77;
        v8 = v78;
        v12 = v79;
        v14 = v76;
        v15 = v73;
        goto LABEL_4;
      }

      ++v18;
      v19 += 10;
      if (v18 >= *(v16 + 16))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        sub_1D9C7E84C();
        __break(1u);

        __break(1u);
        return result;
      }
    }

    v28 = LOBYTE(v84[0]);
    sub_1D99AE054(v84, &v83);
    sub_1D9979BF4(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v9;
    v30 = sub_1D99EE138(v28);
    v32 = v9[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_54;
    }

    v36 = v31;
    if (v9[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v30;
        sub_1D9C14DDC();
        v30 = v43;
        v9 = v83;
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1D9C0AF58(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1D99EE138(v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_58;
      }
    }

    v9 = v83;
    if ((v36 & 1) == 0)
    {
LABEL_15:
      v9[(v30 >> 6) + 8] |= 1 << v30;
      *(v9[6] + v30) = v28;
      *(v9[7] + 8 * v30) = 0;
      v38 = v9[2];
      v34 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v34)
      {
        goto LABEL_56;
      }

      v9[2] = v39;
    }

LABEL_17:
    v40 = v9[7];
    v41 = *(v40 + 8 * v30);
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_55;
    }

    *(v40 + 8 * v30) = v42;
    sub_1D99AE0B0(v84);
    v11 = sub_1D9AEA550;
    v16 = v82;
    goto LABEL_19;
  }

LABEL_24:
  *&v84[0] = v72;

  sub_1D9B6ADE8(v84, sub_1D9B6ECA8, sub_1D9B6E810);
  v44 = *&v84[0];
  v45 = *(*&v84[0] + 16);
  if (v45)
  {
    v79 = 0;
    v69 = v11;
    v46 = 0;
    v13 = v75;
    v70 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v47 = *&v84[0] + v70;
    v48 = MEMORY[0x1E69E7CC0];
    v72 = v45;
    v73 = *&v84[0];
    v71 = *&v84[0] + v70;
    while (v46 < *(v44 + 16))
    {
      v82 = v13[9];
      v49 = v47 + v82 * v46;
      v50 = swift_allocBox();
      v52 = v51;
      sub_1D9B717A8(v49, v51, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_beginAccess();
      if ((*(v52 + 104) & 1) == 0)
      {
        v76 = v46;
        v77 = v48;
        v53 = v74;

        v78 = v50;
        v13 = v79;
        v55 = sub_1D9B71128(v54, &v86, v53, v50);

        *(v52 + 48) = v55;

        v56 = *(v55 + 2);
        if (v56)
        {
          v57 = 0;
          v58 = (v55 + 156);
          v59 = MEMORY[0x1E69E7CC0];
          while (v57 < *(v55 + 2))
          {
            if (*v58)
            {
              v60 = *(v58 - 3);
            }

            else
            {
              v60 = 0.0;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1D9AF84B8(0, *(v59 + 2) + 1, 1, v59);
            }

            v62 = *(v59 + 2);
            v61 = *(v59 + 3);
            if (v62 >= v61 >> 1)
            {
              v59 = sub_1D9AF84B8((v61 > 1), v62 + 1, 1, v59);
            }

            ++v57;
            *(v59 + 2) = v62 + 1;
            *&v59[4 * v62 + 32] = v60;
            v58 += 40;
            if (v56 == v57)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v59 = MEMORY[0x1E69E7CC0];
LABEL_43:
        v79 = v13;

        v63 = sub_1D9BC1BF0(v59);

        v64 = *&v63;
        if ((v63 & 0x100000000) != 0)
        {
          v64 = 0.0;
        }

        *(v52 + 72) = v64;
        sub_1D9B717A8(v52, v80, type metadata accessor for VisualUnderstanding.ImageRegion);
        v48 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_1D9AF8A90(0, v48[2] + 1, 1, v48);
        }

        v13 = v75;
        v45 = v72;
        v44 = v73;
        v47 = v71;
        v66 = v48[2];
        v65 = v48[3];
        if (v66 >= v65 >> 1)
        {
          v48 = sub_1D9AF8A90(v65 > 1, v66 + 1, 1, v48);
        }

        v48[2] = v66 + 1;
        sub_1D9B7551C(v80, v48 + v70 + v66 * v82, type metadata accessor for VisualUnderstanding.ImageRegion);
        v46 = v76;
      }

      ++v46;

      if (v46 == v45)
      {

        v11 = v69;
        goto LABEL_51;
      }
    }

    goto LABEL_57;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_51:

  sub_1D9979BF4(v11);
  return v48;
}

void *sub_1D9B71EDC(uint64_t a1, uint64_t a2)
{
  v171 = sub_1D9C7D8DC();
  v4 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v6 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v179 = *(v7 - 8);
  v180 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v178 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v172 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v152 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v149 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v149 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v161 = (&v149 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v149 - v23);
  *&v225 = a1;

  v25 = 0;
  sub_1D9B6ADE8(&v225, sub_1D9B6F5D4, sub_1D9B6EA5C);
  v26 = 0;
  v27 = v225;
  v28 = *(v225 + 16);
  v175 = (v17 + 48);
  v176 = (v17 + 56);
  v155 = 0x80000001D9CA2950;
  v154 = 0x80000001D9CA2910;
  v160 = 0x80000001D9CA3A40;
  v163 = (v4 + 16);
  v162 = (v4 + 8);
  v153 = MEMORY[0x1E69E7CC0];
  v166 = v16;
  v167 = a2;
  v177 = v6;
  v169 = v15;
  v150 = v24;
  v151 = v21;
  v193 = v225;
  for (i = v28; ; v28 = i)
  {
    if (v26 == v28)
    {
      v31 = 1;
      v194 = v28;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_152;
      }

      if (v26 >= *(v27 + 16))
      {
        goto LABEL_153;
      }

      v32 = v26 + 1;
      v33 = v27 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v26;
      v34 = *(v16 + 48);
      v35 = v161;
      *v161 = v26;
      sub_1D9B717A8(v33, v35 + v34, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99B1C20(v35, v21, &qword_1ECB510F0);
      v31 = 0;
      v194 = v32;
    }

    (*v176)(v21, v31, 1, v16);
    sub_1D99B1C20(v21, v24, &qword_1ECB510F8);
    if ((*v175)(v24, 1, v16) == 1)
    {

      return v153;
    }

    v25 = *v24;
    sub_1D9B7551C(v24 + *(v16 + 48), v15, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_beginAccess();
    if (*(v15 + 104) == 1)
    {
      goto LABEL_3;
    }

    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_158;
    }

    v37 = v193;
    v38 = *(v193 + 16);
    if (v38 < v36)
    {
      goto LABEL_159;
    }

    if (v36 != v38)
    {
      break;
    }

LABEL_14:
    v39 = *(v15 + 6);
    v40 = *(v39 + 16);

    if (v40)
    {
      v41 = 0;
      v42 = (v39 + 156);
      v25 = MEMORY[0x1E69E7CC0];
      while (v41 < *(v39 + 16))
      {
        if (*v42)
        {
          v43 = *(v42 - 3);
        }

        else
        {
          v43 = 0.0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D9AF84B8(0, *(v25 + 16) + 1, 1, v25);
        }

        v45 = *(v25 + 16);
        v44 = *(v25 + 24);
        if (v45 >= v44 >> 1)
        {
          v25 = sub_1D9AF84B8((v44 > 1), v45 + 1, 1, v25);
        }

        ++v41;
        *(v25 + 16) = v45 + 1;
        *(v25 + 4 * v45 + 32) = v43;
        v42 += 40;
        if (v40 == v41)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_151;
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_142:

    v145 = sub_1D9BC1BF0(v25);

    v146 = *&v145;
    if ((v145 & 0x100000000) != 0)
    {
      v146 = 0.0;
    }

    v15 = v169;
    v169[18] = v146;
    sub_1D9B717A8(v15, v152, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_1D9AF8A90(0, v153[2] + 1, 1, v153);
    }

    v6 = v177;
    v24 = v150;
    v21 = v151;
    v25 = v153[2];
    v147 = v153[3];
    if (v25 >= v147 >> 1)
    {
      v153 = sub_1D9AF8A90(v147 > 1, v25 + 1, 1, v153);
    }

    v29 = v152;
    v30 = v153;
    v153[2] = v25 + 1;
    sub_1D9B7551C(v29, v30 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v25, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_3:
    sub_1D9B754BC(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
    v27 = v193;
    v26 = v194;
  }

  v46 = v193 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
  v47 = v25 + 1;
  v157 = *(v193 + 16);
  v158 = v25 + 1;
  v156 = v46;
  while (1)
  {
    if (v47 >= v38)
    {
      goto LABEL_154;
    }

    if (v36 < 0)
    {
      goto LABEL_155;
    }

    if (v47 >= *(v37 + 16))
    {
      goto LABEL_156;
    }

    v48 = v46 + *(v172 + 72) * v47;
    if ((*(v48 + 104) & 1) == 0)
    {
      break;
    }

LABEL_28:
    if (++v47 == v38)
    {
      goto LABEL_14;
    }
  }

  v164 = v47;
  v25 = v159;
  sub_1D9B717A8(v48, v159, type metadata accessor for VisualUnderstanding.ImageRegion);
  v49 = sub_1D9B708F0(v15, v25);
  sub_1D9B754BC(v25, type metadata accessor for VisualUnderstanding.ImageRegion);
  v198 = *(v49 + 16);
  if (!v198)
  {
LABEL_27:

    v37 = v193;
    v38 = v157;
    v36 = v158;
    v46 = v156;
    v47 = v164;
    goto LABEL_28;
  }

  v173 = v48;
  v25 = 0;
  v197 = v49 + 32;
  v170 = v49;
  while (v25 < *(v49 + 16))
  {
    v50 = *(v197 + v25++);
    v51 = 0xE300000000000000;
    v52 = 7631457;
    switch(v50)
    {
      case 1:
        v51 = 0xE600000000000000;
        v52 = 0x65727574616ELL;
        if (*(a2 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_35;
      case 2:
        v51 = 0xE800000000000000;
        v52 = 0x6B72616D646E616CLL;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 3:
        v51 = 0xEF6B72616D646E61;
        v52 = 0x4C6C61727574616ELL;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 4:
        v51 = 0xE500000000000000;
        v52 = 0x616964656DLL;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 5:
        v51 = 0xE400000000000000;
        v52 = 1802465122;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 6:
        v51 = 0xE500000000000000;
        v52 = 0x6D75626C61;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 7:
        v51 = 0xE400000000000000;
        v52 = 1937006947;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 8:
        v51 = 0xE400000000000000;
        v52 = 1936158564;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 9:
        v51 = 0xE700000000000000;
        v54 = 1835626081;
        goto LABEL_71;
      case 10:
        v51 = 0xE500000000000000;
        v52 = 0x7364726962;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 11:
        v51 = 0xE700000000000000;
        v53 = 0x746365736E69;
        goto LABEL_72;
      case 12:
        v51 = 0xE800000000000000;
        v52 = 0x73656C6974706572;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 13:
        v51 = 0xE700000000000000;
        v54 = 1835884909;
LABEL_71:
        v53 = v54 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_72:
        v52 = v53 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 14:
        v52 = 0xD000000000000010;
        v51 = v154;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 15:
        v51 = 0xE700000000000000;
        v52 = 0x6C657261707061;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 16:
        v51 = 0xEB00000000736569;
        v52 = 0x726F737365636361;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 17:
        v51 = 0xE400000000000000;
        v52 = 1685024614;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 18:
        v51 = 0xEA0000000000746ELL;
        v52 = 0x6F726665726F7473;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 19:
        v55 = 1852270963;
        goto LABEL_85;
      case 20:
        v52 = 0xD000000000000011;
        v51 = v155;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 21:
        v55 = 1869903201;
LABEL_85:
        v52 = v55 | 0x626D795300000000;
        v51 = 0xEA00000000006C6FLL;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 22:
        v51 = 0xEF6C6F626D79536FLL;
        v52 = 0x676F4C646E617262;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 23:
        v51 = 0xE700000000000000;
        v52 = 0x65646F63726162;
        goto LABEL_88;
      case 24:
        v51 = 0xE900000000000065;
        v52 = 0x727574706C756373;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 25:
        v51 = 0xE700000000000000;
        v52 = 0x656E696C796B73;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      case 26:
        v51 = 0xE800000000000000;
        v52 = 0x44327463656A626FLL;
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_89;
      default:
LABEL_88:
        if (!*(a2 + 16))
        {
          goto LABEL_35;
        }

LABEL_89:
        v196 = v50;
        v56 = sub_1D99ED894(v52, v51);
        v58 = v57;

        if ((v58 & 1) == 0)
        {
          goto LABEL_36;
        }

        v59 = *(a2 + 56) + *(v179 + 72) * v56;
        v60 = v178;
        sub_1D9B717A8(v59, v178, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
        v61 = (*(v60 + *(v180 + 20)) + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
        swift_beginAccess();
        v62 = *v61;
        sub_1D9B754BC(v60, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
        *&v195 = v62;
        if (v62 <= 0.0)
        {
          goto LABEL_36;
        }

        v63 = *v15;
        v64 = *(v15 + 1);
        v65 = *(v15 + 2);
        v66 = *(v15 + 3);
        v67 = v173[1];
        v192 = *v173;
        v68 = v173[2];
        v69 = v173[3];
        v234.origin.x = v63;
        v234.origin.y = v64;
        v234.size.width = v65;
        v234.size.height = v66;
        Width = CGRectGetWidth(v234);
        *&v190 = v63;
        v235.origin.x = v63;
        v71 = v64;
        v72 = v192;
        v235.origin.y = v71;
        v235.size.width = v65;
        v235.size.height = v66;
        v73 = Width * CGRectGetHeight(v235);
        v236.origin.x = v72;
        v236.origin.y = v67;
        v236.size.width = v68;
        v236.size.height = v69;
        v191 = CGRectGetWidth(v236);
        v237.origin.x = v72;
        v237.origin.y = v67;
        v237.size.width = v68;
        v237.size.height = v69;
        Height = CGRectGetHeight(v237);
        if (v73 <= 0.0)
        {
          goto LABEL_36;
        }

        v191 = v191 * Height;
        if (v191 <= 0.0)
        {
          goto LABEL_36;
        }

        *&v238.origin.x = v190;
        v238.origin.y = v71;
        v238.size.width = v65;
        v238.size.height = v66;
        v242.origin.x = v72;
        v242.origin.y = v67;
        v242.size.width = v68;
        v242.size.height = v69;
        v239 = CGRectIntersection(v238, v242);
        x = v239.origin.x;
        y = v239.origin.y;
        v77 = v239.size.width;
        v78 = v239.size.height;
        if (CGRectIsNull(v239))
        {
          goto LABEL_36;
        }

        v240.origin.x = x;
        v240.origin.y = y;
        v240.size.width = v77;
        v240.size.height = v78;
        v79 = CGRectGetWidth(v240);
        v241.origin.x = x;
        v241.origin.y = y;
        v241.size.width = v77;
        v241.size.height = v78;
        v80 = v79 * CGRectGetHeight(v241);
        v81 = v191;
        if (v191 >= v73)
        {
          v81 = v73;
        }

        v82 = v80 / v81;
        if (*&v195 >= v82)
        {
          goto LABEL_36;
        }

        v83 = *(v15 + 6);
        v84 = *(v83 + 16);

        v168 = v84;
        if (v84)
        {
          v85 = 0.0;
          v86 = (v83 + 32);
          v195 = MEMORY[0x1E69E7CC0];
          v165 = v83;
          while (1)
          {
            if (*&v85 >= *(v83 + 16))
            {
              goto LABEL_150;
            }

            v192 = v85;
            v87 = v86[1];
            v225 = *v86;
            v226 = v87;
            v88 = v86[2];
            v89 = v86[3];
            v90 = v86[5];
            v229 = v86[4];
            v230 = v90;
            v227 = v88;
            v228 = v89;
            v91 = v86[6];
            v92 = v86[7];
            v93 = v86[8];
            *(v233 + 13) = *(v86 + 141);
            v232 = v92;
            v233[0] = v93;
            v231 = v91;
            v94 = v225;
            v222 = v91;
            v223 = v92;
            v224[0] = v93;
            *(v224 + 13) = *(v233 + 13);
            v218 = v227;
            v219 = v228;
            v220 = v229;
            v221 = v90;
            v216 = v225;
            v217 = v226;
            v95 = sub_1D9A15C94(v225);
            v97 = v96;
            if (v95 == sub_1D9A15C94(v196) && v97 == v98)
            {
              break;
            }

            v99 = sub_1D9C7E7DC();
            sub_1D99AE054(&v225, &v207);
            sub_1D99AE054(&v225, &v207);

            if (v99)
            {
              goto LABEL_104;
            }

            v204 = v222;
            v205 = v223;
            v206[0] = v224[0];
            *(v206 + 13) = *(v224 + 13);
            v200[2] = v218;
            v201 = v219;
            v202 = v220;
            v203 = v221;
            v200[0] = v216;
            v200[1] = v217;
            v213 = v222;
            v214 = v223;
            v215[0] = v224[0];
            *(v215 + 13) = *(v224 + 13);
            v209 = v218;
            v210 = v219;
            v211 = v220;
            v212 = v221;
            v207 = v216;
            v208 = v217;
LABEL_131:
            sub_1D99AE054(v200, &v199);
            sub_1D99AE0B0(&v207);
            sub_1D99AE0B0(&v225);
            LODWORD(v191) = BYTE12(v206[1]);
            v128 = DWORD2(v206[1]);
            v190 = *(v206 + 8);
            v189 = BYTE1(v206[0]);
            v188 = LOBYTE(v206[0]);
            v187 = HIBYTE(v205);
            v129 = BYTE14(v205);
            v130 = BYTE13(v205);
            v131 = BYTE12(v205);
            v132 = DWORD2(v205);
            v133 = v205;
            v185 = v204;
            v186 = v203;
            v183 = v201;
            v184 = v202;
            v134 = BYTE8(v200[2]);
            v181 = *(v200 + 8);
            v182 = *(&v200[1] + 8);
            v135 = v200[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v195 = sub_1D9AF8974(0, *(v195 + 2) + 1, 1, v195);
            }

            v137 = *(v195 + 2);
            v136 = *(v195 + 3);
            v138 = v192;
            if (v137 >= v136 >> 1)
            {
              v144 = sub_1D9AF8974((v136 > 1), v137 + 1, 1, v195);
              v138 = v192;
              v195 = v144;
            }

            v139 = v195;
            *(v195 + 2) = v137 + 1;
            v140 = &v139[160 * v137];
            v140[32] = v135;
            *&v85 = *&v138 + 1;
            LODWORD(v139) = *(&v216 + 3);
            *(v140 + 33) = v216;
            *(v140 + 9) = v139;
            v141 = v182;
            *(v140 + 40) = v181;
            *(v140 + 56) = v141;
            v140[72] = v134;
            LODWORD(v139) = *(&v207 + 3);
            *(v140 + 73) = v207;
            *(v140 + 19) = v139;
            v142 = v184;
            *(v140 + 5) = v183;
            *(v140 + 6) = v142;
            v143 = v185;
            *(v140 + 7) = v186;
            *(v140 + 8) = v143;
            *(v140 + 18) = v133;
            *(v140 + 38) = v132;
            v140[156] = v131;
            v140[157] = v130;
            v140[158] = v129;
            v140[159] = v187;
            v140[160] = v188;
            v140[161] = v189;
            LODWORD(v139) = v200[0];
            *(v140 + 83) = WORD2(v200[0]);
            *(v140 + 162) = v139;
            *(v140 + 168) = v190;
            *(v140 + 46) = v128;
            v140[188] = LOBYTE(v191);
            v86 += 10;
            a2 = v167;
            v6 = v177;
            v15 = v169;
            v49 = v170;
            v83 = v165;
            v16 = v166;
            if (v168 == *&v85)
            {
              goto LABEL_140;
            }
          }

          sub_1D99AE054(&v225, &v207);
          sub_1D99AE054(&v225, &v207);

LABEL_104:
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_123;
          }

          v100 = [objc_opt_self() mainBundle];
          v101 = [v100 bundleIdentifier];

          if (!v101)
          {
            goto LABEL_162;
          }

          v102 = sub_1D9C7DC7C();
          v104 = v103;

          if (v102 == 0xD00000000000002BLL && v160 == v104)
          {

            goto LABEL_113;
          }

          v105 = sub_1D9C7E7DC();

          if (v105)
          {
LABEL_113:
            if (qword_1ECB50988 != -1)
            {
              swift_once();
            }

            v106 = &off_1ECB51BA8;
          }

          else
          {
LABEL_162:
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
            }

            v106 = &qword_1EDD355A8;
          }

          v107 = *(*v106 + 32);

          v108 = sub_1D9C7DC4C();
          LODWORD(v107) = [v107 BOOLForKey_];

          if (v107)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v109 = qword_1EDD2C990;
          }

          else
          {
LABEL_123:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v109 = qword_1EDD354D8;
          }

          v110 = v171;
          v111 = __swift_project_value_buffer(v171, v109);
          (*v163)(v6, v111, v110);
          v112 = v193;

          *&v113 = COERCE_DOUBLE(sub_1D9C7D8BC());
          v114 = sub_1D9C7E09C();

          if (os_log_type_enabled(v113, v114))
          {
            LODWORD(v190) = v114;
            v191 = *&v113;
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *&v200[0] = v116;
            *v115 = 136315650;
            v117 = *(v15 + 1);
            v207 = *v15;
            v208 = v117;
            v118 = NormalizedRect.loggingDescription.getter();
            v120 = sub_1D9A0E224(v118, v119, v200);

            *(v115 + 4) = v120;
            *(v115 + 12) = 2080;
            v121 = sub_1D9A15C94(v94);
            v123 = sub_1D9A0E224(v121, v122, v200);

            *(v115 + 14) = v123;
            *(v115 + 22) = 2080;
            if (v164 >= *(v112 + 16))
            {
              goto LABEL_157;
            }

            v207 = *v173;
            v208 = *(v173 + 1);
            v124 = NormalizedRect.loggingDescription.getter();
            v126 = sub_1D9A0E224(v124, v125, v200);

            *(v115 + 24) = v126;
            v127 = *&v191;
            _os_log_impl(&dword_1D9962000, *&v191, v190, "%s unselects %s because this region overlaps with %s which has same domain.", v115, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1DA7405F0](v116, -1, -1);
            MEMORY[0x1DA7405F0](v115, -1, -1);

            (*v162)(v177, v171);
          }

          else
          {

            (*v162)(v6, v110);
          }

          swift_beginAccess();
          BYTE12(v223) = 0;
          v206[0] = v224[0];
          *(v206 + 13) = *(v224 + 13);
          v200[2] = v218;
          v201 = v219;
          v202 = v220;
          v203 = v221;
          v200[0] = v216;
          v200[1] = v217;
          v204 = v222;
          v205 = v223;
          v213 = v222;
          v214 = v223;
          v215[0] = v224[0];
          *(v215 + 13) = *(v224 + 13);
          v209 = v218;
          v210 = v219;
          v211 = v220;
          v212 = v221;
          v207 = v216;
          v208 = v217;
          goto LABEL_131;
        }

        v195 = MEMORY[0x1E69E7CC0];
LABEL_140:

        *(v15 + 6) = v195;
LABEL_35:

LABEL_36:
        if (v25 == v198)
        {
          goto LABEL_27;
        }

        break;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_1D9B7349C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = sub_1D9B71810(a1, a2);
  v18 = sub_1D9B71EDC(v17, a2);

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v21 = *(v5 + 72);
    v22 = a1 + v20;
    while (1)
    {
      sub_1D9B717A8(v22, v10, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v10[104])
      {
        break;
      }

      sub_1D9B754BC(v10, type metadata accessor for VisualUnderstanding.ImageRegion);
      v22 += v21;
      if (!--v19)
      {
        return v18;
      }
    }

    sub_1D9B7551C(v10, v13, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B7551C(v13, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B717A8(v16, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D9AF8A90(0, v18[2] + 1, 1, v18);
    }

    v24 = v18[2];
    v23 = v18[3];
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1D9AF8A90(v23 > 1, v24 + 1, 1, v18);
    }

    sub_1D9B754BC(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
    v18[2] = v24 + 1;
    sub_1D9B7551C(v7, v18 + v20 + v24 * v21, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  return v18;
}

void *sub_1D9B73740(char *a1, uint64_t a2, __int128 *a3)
{
  v78 = a2;
  v82 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v64 - v5;
  v71 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v76 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_1D9C7D8DC();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1D9A75D94();
  v81 = v7;
  if (v20)
  {
    if (qword_1ECB50988 != -1)
    {
      goto LABEL_40;
    }
  }

  else if (qword_1EDD355A0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {

    v79 = sub_1D9A172AC();
    v22 = v21;

    if (!v22)
    {
      sub_1D99AB100(a3, v15, &unk_1ECB51B10);
      Context = type metadata accessor for VisualQueryContext();
      if ((*(*(Context - 8) + 48))(v15, 1, Context) == 1)
      {
        sub_1D99A6AE0(v15, &unk_1ECB51B10);
      }

      else
      {
        v29 = *(v15 + 1);
        v79 = *v15;

        sub_1D9B754BC(v15, type metadata accessor for VisualQueryContext);
        if (v29)
        {
          v27 = v29;
LABEL_14:
          v15 = v76;
          goto LABEL_15;
        }
      }

      v79 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_14;
    }

    static Logger.argos.getter(v19);

    v23 = sub_1D9C7D8BC();
    v24 = sub_1D9C7E09C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v123[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1D9A0E224(v79, v22, v123);
      _os_log_impl(&dword_1D9962000, v23, v24, "Overriding query context's application identifier to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1DA7405F0](v26, -1, -1);
      MEMORY[0x1DA7405F0](v25, -1, -1);
    }

    (*(v17 + 1))(v19, v16);
    v15 = v76;
    v27 = v22;
LABEL_15:
    v69 = *(v82 + 2);
    if (!v69)
    {
      break;
    }

    v30 = 0;
    v17 = &v114;
    v16 = &v105;
    a3 = &v92;
    v64 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v68 = &v82[v64];
    v72 = *(v81 + 72);
    v65 = (v81 + 48);
    v66 = (v81 + 56);
    v73 = MEMORY[0x1E69E7CC0];
    v67 = v6;
    v77 = v27;
    while (1)
    {
      v74 = v30;
      v31 = v75;
      sub_1D9B717A8(&v68[v72 * v30], v75, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B717A8(v31, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      v32 = *(*(v15 + 6) + 16);

      v80 = v32;
      v81 = v33;
      if (v32)
      {
        break;
      }

      v82 = MEMORY[0x1E69E7CC0];
LABEL_31:
      sub_1D9B754BC(v75, type metadata accessor for VisualUnderstanding.ImageRegion);

      swift_beginAccess();
      *(v15 + 6) = v82;

      v57 = v67;
      sub_1D9B717A8(v15, v67, type metadata accessor for VisualUnderstanding.ImageRegion);
      v58 = v71;
      (*v66)(v57, 0, 1, v71);
      sub_1D9B754BC(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((*v65)(v57, 1, v58) == 1)
      {
        sub_1D99A6AE0(v57, &qword_1ECB51220);
      }

      else
      {
        sub_1D9B7551C(v57, v70, type metadata accessor for VisualUnderstanding.ImageRegion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1D9AF8A90(0, v73[2] + 1, 1, v73);
        }

        v60 = v73[2];
        v59 = v73[3];
        if (v60 >= v59 >> 1)
        {
          v73 = sub_1D9AF8A90(v59 > 1, v60 + 1, 1, v73);
        }

        v61 = v72;
        v62 = v73;
        v73[2] = v60 + 1;
        sub_1D9B7551C(v70, v62 + v64 + v60 * v61, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v30 = v74 + 1;
      if (v74 + 1 == v69)
      {
        goto LABEL_38;
      }
    }

    v6 = 0;
    v19 = (v33 + 32);
    v82 = MEMORY[0x1E69E7CC0];
    v34 = v77;
    while (v6 < *(v81 + 16))
    {
      v35 = v19[1];
      v123[0] = *v19;
      v123[1] = v35;
      v36 = v19[2];
      v37 = v19[3];
      v38 = v19[5];
      v123[4] = v19[4];
      v123[5] = v38;
      v123[2] = v36;
      v123[3] = v37;
      v39 = v19[6];
      v40 = v19[7];
      v41 = v19[8];
      *(v124 + 13) = *(v19 + 141);
      v123[7] = v40;
      v124[0] = v41;
      v123[6] = v39;
      v42 = v19[7];
      v120 = v19[6];
      v121 = v42;
      v122[0] = v19[8];
      *(v122 + 13) = *(v19 + 141);
      v43 = v19[3];
      v116 = v19[2];
      v117 = v43;
      v44 = v19[5];
      v118 = v19[4];
      v119 = v44;
      v45 = v19[1];
      v114 = *v19;
      v115 = v45;
      sub_1D99AE054(v123, &v105);
      sub_1D9B6D704(&v114, v78, v15, v79, v34, &v105);
      v101[6] = v120;
      v101[7] = v121;
      v102[0] = v122[0];
      *(v102 + 13) = *(v122 + 13);
      v101[2] = v116;
      v101[3] = v117;
      v101[4] = v118;
      v101[5] = v119;
      v101[0] = v114;
      v101[1] = v115;
      sub_1D99AE0B0(v101);
      v103[6] = v111;
      v103[7] = v112;
      v104[0] = v113[0];
      *(v104 + 13) = *(v113 + 13);
      v103[2] = v107;
      v103[3] = v108;
      v103[4] = v109;
      v103[5] = v110;
      v103[0] = v105;
      v103[1] = v106;
      if (sub_1D99AE104(v103) == 1)
      {
        v98 = v111;
        v99 = v112;
        v100[0] = v113[0];
        *(v100 + 13) = *(v113 + 13);
        v94 = v107;
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v92 = v105;
        v93 = v106;
        sub_1D99A6AE0(&v92, &qword_1ECB510B8);
      }

      else
      {
        v98 = v111;
        v99 = v112;
        v100[0] = v113[0];
        *(v100 + 13) = *(v113 + 13);
        v94 = v107;
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v92 = v105;
        v93 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D9AF8974(0, *(v82 + 2) + 1, 1, v82);
        }

        v47 = *(v82 + 2);
        v46 = *(v82 + 3);
        if (v47 >= v46 >> 1)
        {
          v82 = sub_1D9AF8974((v46 > 1), v47 + 1, 1, v82);
        }

        v87 = v96;
        v88 = v97;
        v85 = v94;
        v86 = v95;
        *(v91 + 13) = *(v100 + 13);
        v90 = v99;
        v91[0] = v100[0];
        v89 = v98;
        v83 = v92;
        v84 = v93;
        v48 = v82;
        *(v82 + 2) = v47 + 1;
        v49 = &v48[160 * v47];
        v50 = v84;
        *(v49 + 2) = v83;
        *(v49 + 3) = v50;
        v51 = v85;
        v52 = v86;
        v53 = v88;
        *(v49 + 6) = v87;
        *(v49 + 7) = v53;
        *(v49 + 4) = v51;
        *(v49 + 5) = v52;
        v54 = v89;
        v55 = v90;
        v56 = v91[0];
        *(v49 + 173) = *(v91 + 13);
        *(v49 + 9) = v55;
        *(v49 + 10) = v56;
        *(v49 + 8) = v54;
        v15 = v76;
        v34 = v77;
      }

      ++v6;
      v19 += 10;
      if (v80 == v6)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_38:

  return v73;
}

uint64_t sub_1D9B7415C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, double a8, double a9)
{
  v182 = a6;
  v187 = a3;
  v190 = a1;
  v15 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v183 = (&v169 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v185 = (&v169 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v181 = &v169 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v179 = (&v169 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v173 = (&v169 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v169 = (&v169 - v29);
  v188 = sub_1D9C7D8DC();
  v189 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v31 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v184 = &v169 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v186 = &v169 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v180 = &v169 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v169 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v170 = &v169 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52778);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v177 = &v169 - v43;
  v176 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v178 = (&v169 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v169 - v46;
  v48 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a2;
  v171 = a2[1];
  v172 = v52;
  v191 = *a5;
  LOBYTE(v194) = v191;
  v53 = a7;
  if (sub_1D9B532F8(&v194, a7))
  {
    static Logger.argos.getter(v31);
    sub_1D9B717A8(v190, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    v54 = sub_1D9C7D8BC();
    v55 = sub_1D9C7E09C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v198 = v57;
      *v56 = 136315394;
      v58 = v17[1];
      v194 = *v17;
      v195 = v58;
      v59 = NormalizedRect.loggingDescription.getter();
      v61 = v60;
      sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v62 = sub_1D9A0E224(v59, v61, &v198);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      v63 = sub_1D9A15C94(v191);
      v65 = sub_1D9A0E224(v63, v64, &v198);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_1D9962000, v54, v55, "%s drops %s due to duplicated domains in the same region.", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v57, -1, -1);
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    else
    {

      sub_1D9B754BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    (*(v189 + 8))(v31, v188);
    return 0;
  }

  v66 = v190;
  v67 = *(v187 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v68 = *(v67 + 60);
  if (v68 >= 1 && *(a7 + 16) >= v68)
  {
    v103 = v184;
    static Logger.argos.getter(v184);
    v104 = v183;
    sub_1D9B717A8(v66, v183, type metadata accessor for VisualUnderstanding.ImageRegion);
    v105 = sub_1D9C7D8BC();
    v106 = sub_1D9C7E09C();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v198 = v108;
      *v107 = 136315394;
      v109 = v104[1];
      v194 = *v104;
      v195 = v109;
      v110 = NormalizedRect.loggingDescription.getter();
      v112 = v111;
      sub_1D9B754BC(v104, type metadata accessor for VisualUnderstanding.ImageRegion);
      v113 = sub_1D9A0E224(v110, v112, &v198);

      *(v107 + 4) = v113;
      *(v107 + 12) = 2080;
      v114 = sub_1D9A15C94(v191);
      v116 = sub_1D9A0E224(v114, v115, &v198);

      *(v107 + 14) = v116;
      _os_log_impl(&dword_1D9962000, v105, v106, "%s drops %s due to exceeding max number of selected domains per region.", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v108, -1, -1);
      MEMORY[0x1DA7405F0](v107, -1, -1);

LABEL_30:
      (*(v189 + 8))(v103, v188);
      return 0;
    }

    v133 = v104;
LABEL_29:
    sub_1D9B754BC(v133, type metadata accessor for VisualUnderstanding.ImageRegion);
    goto LABEL_30;
  }

  v193[0] = v191;
  v69 = *v66;
  v199 = *(v66 + 16);
  v70 = a4[1];
  v194 = *a4;
  v195 = v70;
  v71 = a4[3];
  v196 = a4[2];
  v197 = v71;
  v198 = v69;
  v72 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  sub_1D99AB100(v67 + v72, v47, &qword_1ECB514C8);
  v73 = *(v49 + 48);
  if (v73(v47, 1, v48) == 1)
  {
    *v51 = 0;
    v74 = MEMORY[0x1E69E7CC0];
    *(v51 + 1) = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
    *(v51 + 2) = sub_1D9A445A8(v74);
    *(v51 + 3) = v74;
    *(v51 + 4) = v74;
    *(v51 + 5) = v74;
    sub_1D9C7D3BC();
    v75 = *(v48 + 48);
    v76 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
    (*(*(v76 - 8) + 56))(&v51[v75], 1, 1, v76);
    if (v73(v47, 1, v48) != 1)
    {
      sub_1D99A6AE0(v47, &qword_1ECB514C8);
    }
  }

  else
  {
    sub_1D9B7551C(v47, v51, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  }

  sub_1D9A63A2C(v193, &v198, &v194, v51);
  v78 = v77;
  sub_1D9B754BC(v51, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  if ((v78 & 1) == 0)
  {
    v88 = v186;
    static Logger.argos.getter(v186);
    v89 = v185;
    sub_1D9B717A8(v66, v185, type metadata accessor for VisualUnderstanding.ImageRegion);
    v90 = sub_1D9C7D8BC();
    v91 = sub_1D9C7E09C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v198 = v93;
      *v92 = 136315394;
      v94 = v89[1];
      v194 = *v89;
      v195 = v94;
      v95 = NormalizedRect.loggingDescription.getter();
      v97 = v96;
      sub_1D9B754BC(v89, type metadata accessor for VisualUnderstanding.ImageRegion);
      v98 = sub_1D9A0E224(v95, v97, &v198);

      *(v92 + 4) = v98;
      *(v92 + 12) = 2080;
      v99 = sub_1D9A15C94(v191);
      v101 = sub_1D9A0E224(v99, v100, &v198);

      *(v92 + 14) = v101;
      v102 = "%s drops %s due to safety";
LABEL_34:
      _os_log_impl(&dword_1D9962000, v90, v91, v102, v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v93, -1, -1);
      MEMORY[0x1DA7405F0](v92, -1, -1);

LABEL_37:
      (*(v189 + 8))(v88, v188);
      return 0;
    }

    v132 = v89;
LABEL_36:
    sub_1D9B754BC(v132, type metadata accessor for VisualUnderstanding.ImageRegion);
    goto LABEL_37;
  }

  v79 = *(v66 + 76);
  LOBYTE(v194) = v191;
  sub_1D9C1DF84(&v194, *(v66 + 40));
  if (v80 >= v79)
  {
    v103 = v180;
    static Logger.argos.getter(v180);
    v117 = v179;
    sub_1D9B717A8(v66, v179, type metadata accessor for VisualUnderstanding.ImageRegion);
    v118 = v181;
    sub_1D9B717A8(v66, v181, type metadata accessor for VisualUnderstanding.ImageRegion);
    v119 = sub_1D9C7D8BC();
    v120 = sub_1D9C7E09C();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v198 = v122;
      *v121 = 136315650;
      v123 = v117[1];
      v194 = *v117;
      v195 = v123;
      v124 = NormalizedRect.loggingDescription.getter();
      v126 = v125;
      sub_1D9B754BC(v117, type metadata accessor for VisualUnderstanding.ImageRegion);
      v127 = sub_1D9A0E224(v124, v126, &v198);

      *(v121 + 4) = v127;
      *(v121 + 12) = 2080;
      v128 = sub_1D9A15C94(v191);
      v130 = sub_1D9A0E224(v128, v129, &v198);

      *(v121 + 14) = v130;
      *(v121 + 22) = 2048;
      v131 = *(v118 + 76);
      sub_1D9B754BC(v118, type metadata accessor for VisualUnderstanding.ImageRegion);
      *(v121 + 24) = v131;
      _os_log_impl(&dword_1D9962000, v119, v120, "%s drops %s due to low box score %f", v121, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v122, -1, -1);
      MEMORY[0x1DA7405F0](v121, -1, -1);

      goto LABEL_30;
    }

    sub_1D9B754BC(v118, type metadata accessor for VisualUnderstanding.ImageRegion);
    v133 = v117;
    goto LABEL_29;
  }

  v81 = v182;
  v82 = *v182;
  v83 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  swift_beginAccess();
  v84 = v177;
  sub_1D99AB100(v67 + v83, v177, &qword_1ECB52778);
  v85 = *(v175 + 48);
  v86 = v176;
  if (v85(v84, 1, v176) == 1)
  {
    v87 = v178;
    *v178 = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    if (v85(v84, 1, v86) != 1)
    {
      sub_1D99A6AE0(v84, &qword_1ECB52778);
    }
  }

  else
  {
    v87 = v178;
    sub_1D9B7551C(v84, v178, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  }

  LOBYTE(v194) = v191;
  v134 = sub_1D9C208D0(&unk_1F552A7B0);
  sub_1D9B52D20(&v194, v82, v134);
  v136 = v135;

  if (v136)
  {
    sub_1D9B754BC(v87, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
LABEL_32:
    v88 = v174;
    static Logger.argos.getter(v174);
    v140 = v173;
    sub_1D9B717A8(v66, v173, type metadata accessor for VisualUnderstanding.ImageRegion);
    v90 = sub_1D9C7D8BC();
    v91 = sub_1D9C7E09C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v198 = v93;
      *v92 = 136315394;
      v141 = v140[1];
      v194 = *v140;
      v195 = v141;
      v142 = NormalizedRect.loggingDescription.getter();
      v144 = v143;
      sub_1D9B754BC(v140, type metadata accessor for VisualUnderstanding.ImageRegion);
      v145 = sub_1D9A0E224(v142, v144, &v198);

      *(v92 + 4) = v145;
      *(v92 + 12) = 2080;
      v146 = sub_1D9A15C94(v191);
      v148 = sub_1D9A0E224(v146, v147, &v198);

      *(v92 + 14) = v148;
      v102 = "%s drops %s due to incompatible domains.";
      goto LABEL_34;
    }

    v132 = v140;
    goto LABEL_36;
  }

  LOBYTE(v194) = v191;
  v137 = sub_1D9C208D0(&unk_1F552A7E0);
  sub_1D9B52D20(&v194, v53, v137);
  v139 = v138;

  sub_1D9B754BC(v87, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  if (v139)
  {
    goto LABEL_32;
  }

  v192 = v191;
  v150 = *(v66 + 16);
  v194 = *v66;
  v195 = v150;
  v199 = v171;
  v198 = v172;
  if (sub_1D9C1DBFC(&v192, &v194, &v198, a8, a9))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v198 = *v81;
    sub_1D9A1BF4C(v191, isUniquelyReferenced_nonNull_native, &v194, v79);
    *v81 = v198;
    return 1;
  }

  else
  {
    v152 = v170;
    static Logger.argos.getter(v170);
    v153 = v66;
    v154 = v169;
    sub_1D9B717A8(v153, v169, type metadata accessor for VisualUnderstanding.ImageRegion);
    v155 = sub_1D9C7D8BC();
    v156 = sub_1D9C7E09C();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = v152;
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v198 = v159;
      *v158 = 136315394;
      v160 = v154[1];
      v194 = *v154;
      v195 = v160;
      v161 = NormalizedRect.loggingDescription.getter();
      v163 = v162;
      sub_1D9B754BC(v154, type metadata accessor for VisualUnderstanding.ImageRegion);
      v164 = sub_1D9A0E224(v161, v163, &v198);

      *(v158 + 4) = v164;
      *(v158 + 12) = 2080;
      v165 = sub_1D9A15C94(v191);
      v167 = sub_1D9A0E224(v165, v166, &v198);

      *(v158 + 14) = v167;
      _os_log_impl(&dword_1D9962000, v155, v156, "%s drops %s due to small object size.", v158, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v159, -1, -1);
      MEMORY[0x1DA7405F0](v158, -1, -1);

      (*(v189 + 8))(v157, v188);
    }

    else
    {

      sub_1D9B754BC(v154, type metadata accessor for VisualUnderstanding.ImageRegion);
      (*(v189 + 8))(v152, v188);
    }

    v168 = swift_isUniquelyReferenced_nonNull_native();
    *&v198 = *v81;
    sub_1D9A1BF4C(v191, v168, &v194, v79);
    result = 0;
    *v81 = v198;
  }

  return result;
}

uint64_t sub_1D9B754BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B7551C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

VisualLookUp::S2Cap __swiftcall S2Cap.init(axis:angle:)(VisualLookUp::S2Point axis, VisualLookUp::S1Angle angle)
{
  v5 = v4;
  v12 = *v2;
  v6 = *(v2 + 2);
  v7 = sin(*v3 * 0.5);
  v9 = v7 + v7;
  v10 = *&v12;
  *v5 = v12;
  v11 = v7 * (v7 + v7);
  *(v5 + 16) = v6;
  *(v5 + 24) = v11;
  result.height = v8;
  result.axis.z = v10;
  result.axis.y = v9;
  result.axis.x = v11;
  return result;
}

VisualLookUp::S2Cap __swiftcall S2Cap.add(point:)(VisualLookUp::S2Point point)
{
  point.z = *v1;
  v5 = *(v1 + 8);
  v6 = *(v3 + 24);
  if (v6 >= 0.0)
  {
    v4.i64[0] = *v3;
    v9 = *(v3 + 8);
    v10 = vsubq_f64(v9, v5);
    v11 = vmulq_f64(v10, v10);
    v12 = (v11.f64[1] + v11.f64[0] + (*v3 - point.z) * (*v3 - point.z)) * 2.22044605e-16;
    if (v6 > v12)
    {
      point.z = *(v3 + 24);
    }

    else
    {
      point.z = v12;
    }

    v8 = vzip1q_s64(v4, v9);
    v7.i64[0] = vdupq_laneq_s64(v9, 1).u64[0];
    v7.i64[1] = *&point.z;
    *v2 = v8;
    v2[1] = v7;
  }

  else
  {
    v7.i64[0] = *(v1 + 16);
    v8 = vzip1q_s64(*&point.z, v5);
    *v2 = v8;
    v2[1] = v7.u64[0];
  }

  result.axis.z = point.z;
  result.height = *v4.i64;
  result.axis.y = *v8.i64;
  result.axis.x = *v7.i64;
  return result;
}

VisualLookUp::S2Cap __swiftcall S2Cap.init(axis:height:)(VisualLookUp::S2Point axis, Swift::Double height)
{
  v4 = v2[2];
  v5 = *v2;
  *v3 = *v2;
  *(v3 + 16) = v4;
  *(v3 + 24) = axis.x;
  result.axis.x = axis.x;
  result.axis.z = *&v5;
  result.height = height;
  result.axis.y = v4;
  return result;
}

VisualLookUp::S2Cap __swiftcall S2Cap.add(cap:)(VisualLookUp::S2Cap cap)
{
  v4 = v2;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v3 + 24);
  if (v9 >= 0.0)
  {
    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    v13 = S2Point.angle(to:)(*&v7);
    if (v8 >= 0.0)
    {
      v15 = sqrt(v8 * 0.5);
      v16 = asin(v15);
      v14 = v16 + v16;
    }

    else
    {
      v14 = -1.0;
    }

    v7 = v13 + v14;
    v8 = 2.0;
    v5 = 3.14159265;
    if (v7 < 3.14159265)
    {
      v17 = sin(v7 * 0.5);
      v5 = v17 * 8.8817842e-16;
      v7 = v17 * (v17 * 8.8817842e-16);
      if (v9 > v7)
      {
        v8 = v9;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  else
  {
    v10 = *v1;
    v11 = *(v1 + 1);
    v12 = *(v1 + 2);
  }

  *v4 = v10;
  *(v4 + 8) = v11;
  *(v4 + 16) = v12;
  *(v4 + 24) = v8;
  cap.axis.z = v6;
  cap.axis.y = v5;
  cap.axis.x = v7;
  return cap;
}

void S2Cap.angle.getter(double *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = -1.0;
  if (v3 >= 0.0)
  {
    v5 = sqrt(v3 * 0.5);
    v6 = asin(v5);
    v4 = v6 + v6;
  }

  *a1 = v4;
}

double S2Cap.axis.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

VisualLookUp::S2Cap __swiftcall S2Cap.init(axis:area:)(VisualLookUp::S2Point axis, Swift::Double area)
{
  v4 = v2[2];
  v5 = 6.28318531;
  v6 = *v2;
  *v3 = *v2;
  v7 = axis.x / 6.28318531;
  *(v3 + 16) = v4;
  *(v3 + 24) = v7;
  result.height = *&v6;
  result.axis.z = v5;
  result.axis.y = v4;
  result.axis.x = v7;
  return result;
}

void sub_1D9B75800()
{
  xmmword_1ECB53A60 = 0x3FF0000000000000uLL;
  qword_1ECB53A70 = 0;
  unk_1ECB53A78 = 0xBFF0000000000000;
}

void sub_1D9B75844()
{
  qword_1ECB53A80 = 0x3FF0000000000000;
  *algn_1ECB53A88 = 0;
  qword_1ECB53A90 = 0;
  unk_1ECB53A98 = 0x4000000000000000;
}

__n128 sub_1D9B75888@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

double S2Cap.area.getter()
{
  v1 = *(v0 + 24);
  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  return v1 * 6.28318531;
}

BOOL S2Cap.isValid.getter()
{
  v1 = vmulq_f64(*(v0 + 8), *(v0 + 8));
  v2 = fabs(*v0 * *v0 + v1.f64[0] + v1.f64[1] + -1.0) <= 1.0e-15;
  return *(v0 + 24) <= 2.0 && v2;
}

double S2Cap.complement.getter@<D0>(float64x2_t *a1@<X8>)
{
  v2 = v1[1].f64[0];
  v3 = v1[1].f64[1];
  v4 = 0.0;
  if (v3 > 0.0)
  {
    v4 = v1[1].f64[1];
  }

  v5 = 2.0 - v4;
  v6 = v3 < 2.0;
  v7 = -1.0;
  if (v6)
  {
    v7 = v5;
  }

  *a1 = vnegq_f64(*v1);
  result = -v2;
  a1[1].f64[0] = result;
  a1[1].f64[1] = v7;
  return result;
}

Swift::Bool __swiftcall S2Cap.contains(other:)(VisualLookUp::S2Cap other)
{
  v3 = v1;
  v4 = *(v2 + 3);
  result = 1;
  if (v4 < 2.0)
  {
    v6 = v3[3];
    if (v6 >= 0.0)
    {
      v7 = *v3;
      v8 = -1.0;
      v9 = *v2;
      if (v4 >= 0.0)
      {
        v14 = *v2;
        v15 = *v3;
        v10 = sqrt(v4 * 0.5);
        v4 = asin(v10);
        *&v9 = v14;
        *&v7 = v15;
        v8 = v4 + v4;
      }

      v11 = S2Point.angle(to:)(*&v4);
      v12 = sqrt(v6 * 0.5);
      v13 = asin(v12);
      return v11 + v13 + v13 <= v8;
    }
  }

  return result;
}

Swift::Bool __swiftcall S2Cap.interiorIntersects(with:)(VisualLookUp::S2Cap with)
{
  v3 = 2.0;
  v4 = *&vnegq_f64(*v2);
  v6 = *(v1 + 1);
  v5 = *v1;
  return !S2Cap.contains(other:)(*(&v3 - 3));
}

Swift::Bool __swiftcall S2Cap.interiorContains(point:)(VisualLookUp::S2Point point)
{
  v3 = *(v2 + 24);
  if (v3 >= 2.0)
  {
    return 1;
  }

  v4 = vsubq_f64(*(v2 + 8), *(v1 + 8));
  v5 = vmulq_f64(v4, v4);
  return v5.f64[1] + v5.f64[0] + (*v2 - *v1) * (*v2 - *v1) < v3 + v3;
}

void S2Cap.intersects(with:vertices:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5[3];
  v7 = 1.0;
  if (v6 >= 1.0)
  {
    return;
  }

  if (v6 < 0.0)
  {
    return;
  }

  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v21 = *a1;
  LOWORD(v22) = *(a1 + 8);
  BYTE2(v22) = *(a1 + 10);
  v23 = *(a1 + 16);
  if (S2Cell.contains(point:)(*(&a4 - 1)))
  {
    return;
  }

  v12 = 0;
  v13 = v6 * (2.0 - v6);
  for (i = (a2 + 48); ; i += 3)
  {
    v15 = v12 + 1;
    S2Cell.getRawEdge(_:)(v12);
    v16 = v9 * v21 + v10 * v22 + v11 * v23;
    if (v16 > 0.0)
    {
      goto LABEL_5;
    }

    if (v13 * (v21 * v21 + v22 * v22 + v23 * v23) < v16 * v16)
    {
      return;
    }

    v17 = *(a2 + 16);
    if (v12 >= v17)
    {
      break;
    }

    v18 = v11 * v22 - v10 * v23;
    v19 = v9 * v23 - v11 * v21;
    v20 = v10 * v21 - v9 * v22;
    if (v18 * *(i - 2) + v19 * *(i - 1) + v20 * *i < 0.0)
    {
      if ((v15 & 3) >= v17)
      {
        goto LABEL_15;
      }

      if (v18 * *(a2 + 32 + 24 * (v15 & 3)) + v19 * *(a2 + 32 + 24 * (v15 & 3) + 8) + v20 * *(a2 + 32 + 24 * (v15 & 3) + 16) > 0.0)
      {
        return;
      }
    }

LABEL_5:
    ++v12;
    if (v15 == 4)
    {
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

Swift::Bool __swiftcall S2Cap.contains(point:)(VisualLookUp::S2Point point)
{
  v3 = v2[1].f64[0] - v1[1].f64[0];
  v4 = vsubq_f64(*v2, *v1);
  return vaddvq_f64(vmulq_f64(v4, v4)) + v3 * v3 <= v2[1].f64[1] + v2[1].f64[1];
}

__n128 S2Cap.capBound.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

void S2Cap.rectBound.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3 >= 0.0)
  {
    v7 = *(v1 + 8);
    v8 = *v1;
    v9 = atan2(*(v1 + 16), sqrt(v7 * v7 + v8 * v8));
    v10 = atan2(v7, v8);
    v11 = sqrt(v3 * 0.5);
    v12 = asin(v11);
    v13 = v12 + v12;
    v14 = v9 - v13;
    v5 = v9 + v13;
    v4 = 0xBFF921FB54442D18;
    v15 = xmmword_1D9C90160;
    if (v9 - v13 <= -1.57079633)
    {
      if (v5 >= 1.57079633)
      {
        v5 = 1.57079633;
      }

      goto LABEL_16;
    }

    if (v5 >= 1.57079633)
    {
      v5 = 1.57079633;
    }

    else
    {
      v16 = sqrt(v3 * (2.0 - v3));
      v17 = cos(v9);
      if (v16 > v17)
      {
        v4 = *&v14;
        v15 = xmmword_1D9C90160;
LABEL_16:
        v20 = vdupq_n_s64(0x400921FB54442D18uLL);
        v21 = vrev64_s32(vmovn_s64(vceqq_f64(v15, v20)));
        v22.i64[0] = v21.i32[0];
        v22.i64[1] = v21.i32[1];
        v6 = vbslq_s8(vceqq_f64(v15, vdupq_n_s64(0xC00921FB54442D18)), vbslq_s8(v22, v15, v20), v15);
        goto LABEL_17;
      }

      v18 = asin(v16 / v17);
      v23 = remainder(v10 - v18, 6.28318531);
      v19 = remainder(v10 + v18, 6.28318531);
      v15.f64[0] = v23;
      v15.f64[1] = v19;
    }

    v4 = *&v14;
    goto LABEL_16;
  }

  if (qword_1ECB50B20 != -1)
  {
    swift_once();
  }

  v5 = *(&xmmword_1ECB52C88 + 1);
  v4 = xmmword_1ECB52C88;
  if (qword_1ECB50AC8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1ECB528D0;
LABEL_17:
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
}

uint64_t S2Cap.contains(cell:)(uint64_t *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = a1[2];
  v27 = *v1;
  v8 = v1[1].f64[0];
  v9 = v1[1].f64[1];
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = v3;
    v32 = v4;
    v33 = v5;
    v34 = v6;
    v35 = v7;
    S2Cell.getRawVertex(_:)(v2);
    v11 = sqrt(vaddvq_f64(vmulq_f64(v29, v29)) + v30 * v30);
    if (v11 != 0.0)
    {
      v11 = 1.0 / v11;
    }

    v12 = vmulq_n_f64(v29, v11);
    v13 = v30 * v11;
    v14 = vsubq_f64(v27, v12);
    if ((v8 - v13) * (v8 - v13) + vaddvq_f64(vmulq_f64(v14, v14)) > v9 + v9)
    {

      v21 = 0;
      return v21 & 1;
    }

    v28 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D9AFA570(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    v18 = v28;
    if (v17 >= v16 >> 1)
    {
      v20 = sub_1D9AFA570((v16 > 1), v17 + 1, 1, v10);
      v18 = v28;
      v10 = v20;
    }

    ++v2;
    *(v10 + 2) = v17 + 1;
    v19 = &v10[24 * v17];
    *(v19 + 2) = v18;
    *(v19 + 6) = v13;
  }

  while (v2 != 4);
  v22 = 0.0;
  if (v9 > 0.0)
  {
    v22 = v9;
  }

  v23 = 2.0 - v22;
  if (v9 >= 2.0)
  {
    v23 = -1.0;
  }

  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  S2Cap.intersects(with:vertices:)(&v31, v10, v23, -v8, v15);
  v25 = v24;

  v21 = v25 ^ 1;
  return v21 & 1;
}

uint64_t S2Cap.mayIntersect(cell:)(uint64_t *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = a1[2];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v24 = v1[3];
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    S2Cell.getRawVertex(_:)(v2);
    v12 = sqrt(v25 * v25 + v26 * v26 + v27 * v27);
    if (v12 != 0.0)
    {
      v12 = 1.0 / v12;
    }

    v13 = v25 * v12;
    v14 = v26 * v12;
    v15 = v27 * v12;
    if ((v10 - v27 * v12) * (v10 - v27 * v12) + (v8 - v25 * v12) * (v8 - v25 * v12) + (v9 - v26 * v12) * (v9 - v26 * v12) <= v24 + v24)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D9AFA570(0, *(v11 + 2) + 1, 1, v11);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1D9AFA570((v18 > 1), v19 + 1, 1, v11);
    }

    ++v2;
    *(v11 + 2) = v19 + 1;
    v20 = &v11[24 * v19];
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    if (v2 == 4)
    {
      v28 = v3;
      v29 = v4;
      v30 = v5;
      v31 = v6;
      v32 = v7;
      S2Cap.intersects(with:vertices:)(&v28, v11, v24, v16, v17);
      v22 = v21;

      return v22 & 1;
    }
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1D9B763C8()
{
  result = sub_1D9C7DC4C();
  qword_1EDD417C8 = result;
  return result;
}

uint64_t sub_1D9B76400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D9B77378(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D9B76440()
{
  *(v0 + 16) = 0;
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDD2C3E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDD417C8;
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1D9B77848;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D9B7697C;
  v7[3] = &block_descriptor_16;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *(v0 + 16) = v5;
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D9B765A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + 16) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D9B7667C()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1EDD2C3E8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDD417C8;
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1D9B773B0;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1D9B7697C;
    v6[3] = &block_descriptor_14;
    v4 = _Block_copy(v6);

    v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
    _Block_release(v4);

    *(v0 + 16) = v5;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D9B767E0()
{
  v0 = sub_1D9C7B60C();
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = v0;
  sub_1D9C7E39C();
  if (!*(v1 + 16) || (v2 = sub_1D99EE414(v6), (v3 & 1) == 0))
  {

    sub_1D99F094C(v6);
LABEL_12:
    v7 = 0u;
    v8 = 0u;
    return sub_1D99A6AE0(&v7, &unk_1ECB53AC0);
  }

  sub_1D99A579C(*(v1 + 56) + 32 * v2, &v7);
  sub_1D99F094C(v6);

  if (!*(&v8 + 1))
  {
    return sub_1D99A6AE0(&v7, &unk_1ECB53AC0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6[0];
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 136))(v5);
    }

    if ((v5 & 0x20) != 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_1D9B76A70();
      }
    }
  }

  return result;
}

uint64_t sub_1D9B7697C(uint64_t a1)
{
  v2 = sub_1D9C7B61C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D9C7B5FC();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9B76A70()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + 16) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D9B76B68()
{
  v0 = sub_1D9C7DA2C();
  v18 = *(v0 - 8);
  v19 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9C7DA4C();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7E19C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9B773D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53AD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9C85660;
  sub_1D9C7E16C();
  aBlock[0] = v10;
  sub_1D9B777F4(&qword_1EDD2C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53AE0);
  sub_1D9B7741C();
  sub_1D9C7E34C();
  v11 = sub_1D9C7E1AC();
  (*(v7 + 8))(v9, v6);
  v12 = v16;
  *(v16 + 16) = v11;
  swift_getObjectType();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D9B77480;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);

  sub_1D9B21710();
  sub_1D9B21714();
  sub_1D9C7E1BC();
  _Block_release(v14);
  (*(v18 + 8))(v2, v19);
  (*(v3 + 8))(v5, v17);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D9C7E1DC();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1D9B76F50()
{
  v0 = sub_1D9C7E19C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1D9C7E21C();
    v4 = sub_1D9B77608(v2);
    if ((v5 & 1) == 0)
    {
      v6 = v4;
      v7 = [objc_opt_self() defaultCenter];
      if (qword_1EDD2C3E8 != -1)
      {
        swift_once();
      }

      v8 = qword_1EDD417C8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9C85660;
      v11[0] = 0xD000000000000016;
      v11[1] = 0x80000001D9CAB240;
      sub_1D9C7E39C();
      *(inited + 96) = &type metadata for MemoryEvent;
      *(inited + 72) = v6;
      sub_1D9A46194(inited);
      swift_setDeallocating();
      sub_1D99A6AE0(inited + 32, &qword_1ECB52048);
      v10 = sub_1D9C7DB3C();

      [v7 postNotificationName:v8 object:0 userInfo:v10];
    }
  }

  return result;
}

uint64_t sub_1D9B7716C()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D9C7E1CC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D9B77218()
{
  result = qword_1ECB53AA0;
  if (!qword_1ECB53AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53AA0);
  }

  return result;
}

unint64_t sub_1D9B77270()
{
  result = qword_1ECB53AA8;
  if (!qword_1ECB53AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53AA8);
  }

  return result;
}

unint64_t sub_1D9B772C8()
{
  result = qword_1ECB53AB0;
  if (!qword_1ECB53AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53AB0);
  }

  return result;
}

unint64_t sub_1D9B77320()
{
  result = qword_1ECB53AB8;
  if (!qword_1ECB53AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53AB8);
  }

  return result;
}

uint64_t sub_1D9B77378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D9B773D0()
{
  result = qword_1EDD2C3B8;
  if (!qword_1EDD2C3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2C3B8);
  }

  return result;
}

unint64_t sub_1D9B7741C()
{
  result = qword_1EDD2C498;
  if (!qword_1EDD2C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB53AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C498);
  }

  return result;
}

void sub_1D9B77488(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDD2C3E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD417C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C85660;
  sub_1D9C7E39C();
  *(inited + 96) = &type metadata for MemoryEvent;
  *(inited + 72) = a1;
  sub_1D9A46194(inited);
  swift_setDeallocating();
  sub_1D99A6AE0(inited + 32, &qword_1ECB52048);
  v5 = sub_1D9C7DB3C();

  [v2 postNotificationName:v3 object:0 userInfo:v5];
}

uint64_t sub_1D9B77608(char *a1)
{
  v2 = sub_1D9C7E19C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, a1, v2, v7);
  sub_1D9C7E17C();
  sub_1D9B777F4(qword_1EDD2C3D0);
  v10 = sub_1D9C7DC2C();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    v12 = 1;
  }

  else
  {
    sub_1D9C7E18C();
    v13 = sub_1D9C7DC2C();
    v11(v5, v2);
    v11(v9, v2);
    if (v13)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  v11(a1, v2);
  return v12;
}

uint64_t sub_1D9B777F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9C7E19C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D9B77870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9B778B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B77924(void *a1)
{
  v3 = sub_1D9C7D8DC();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = *v1;
  v13 = v1[3];
  if (v13 <= *v1)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v1[3];
  }

  v15 = [a1 outputFeatureNames];
  v16 = [v15 count];

  if (v16 >= 1 && v14 < v16)
  {
    result = [a1 outputFeatureNames];
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v24 = result;
      v25 = [result objectAtIndexedSubscript_];

      sub_1D9C7E32C();
      swift_unknownObjectRelease();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:
        static Logger.argos.getter(v5);
        v18 = sub_1D9C7D8BC();
        v27 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v18, v27))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1D9962000, v18, v27, "ModelMetadata and MLModelDescription missmatch: box output name / index missmatch", v20, 2u);
          v11 = v5;
          goto LABEL_20;
        }

        v11 = v5;
LABEL_22:
        v29 = v37;
        v28 = v38;
        goto LABEL_23;
      }

      if (v39 == v1[1] && v40 == v1[2])
      {

        goto LABEL_18;
      }

      v26 = sub_1D9C7E7DC();

      if (v26)
      {
        goto LABEL_18;
      }

      result = [a1 outputFeatureNames];
      if ((v13 & 0x8000000000000000) == 0)
      {
        v30 = result;
        v31 = [result objectAtIndexedSubscript_];

        sub_1D9C7E32C();
        swift_unknownObjectRelease();
        v32 = swift_dynamicCast();
        v11 = v36;
        if (v32)
        {
          if (v39 == v1[4] && v40 == v1[5])
          {
          }

          else
          {
            v33 = sub_1D9C7E7DC();

            if ((v33 & 1) == 0)
            {
              return 1;
            }
          }
        }

        static Logger.argos.getter(v11);
        v18 = sub_1D9C7D8BC();
        v34 = sub_1D9C7E0AC();
        if (!os_log_type_enabled(v18, v34))
        {
          goto LABEL_22;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "ModelMetadata and MLModelDescription missmatch: confidence output name / index missmatch";
        v22 = v34;
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  static Logger.argos.getter(v11);
  v18 = sub_1D9C7D8BC();
  v19 = sub_1D9C7E0AC();
  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_22;
  }

  v20 = swift_slowAlloc();
  *v20 = 0;
  v21 = "ModelMetadata and MLModelDescription missmatch: box / confidence output index out of range";
  v22 = v19;
LABEL_11:
  _os_log_impl(&dword_1D9962000, v18, v22, v21, v20, 2u);
LABEL_20:
  v29 = v37;
  v28 = v38;
  MEMORY[0x1DA7405F0](v20, -1, -1);
LABEL_23:

  (*(v29 + 8))(v11, v28);
  return 0;
}

unint64_t sub_1D9B77D50(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x7074756F5F786F62;
    v6 = 0xD000000000000016;
    if (a1 != 3)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
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
    v1 = 0xD00000000000001DLL;
    if (a1 == 9)
    {
      v1 = 0xD00000000000001ELL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000011;
    v3 = 0x6C6F687365726874;
    if (a1 != 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D9B77ED8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D9B77D50(*a1);
  v5 = v4;
  if (v3 == sub_1D9B77D50(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9B77F60()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9B77D50(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9B77FC4()
{
  sub_1D9B77D50(*v0);
  sub_1D9C7DD6C();
}

uint64_t sub_1D9B78018()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9B77D50(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9B78078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9B785B8();
  *a1 = result;
  return result;
}

unint64_t sub_1D9B780A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9B77D50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9B780F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9B785B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D9B78124(uint64_t a1)
{
  v2 = sub_1D9B78DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B78160(uint64_t a1)
{
  v2 = sub_1D9B78DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D9B7819C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9B78604(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1D9B78208(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B78DE8();
  sub_1D9C7E96C();
  LOBYTE(v10) = 0;
  sub_1D9C7E73C();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1D9C7E6EC();
    LOBYTE(v10) = 2;
    sub_1D9C7E73C();
    LOBYTE(v10) = 3;
    sub_1D9C7E6EC();
    *&v10 = *(v3 + 80);
    BYTE8(v10) = *(v3 + 88);
    v11 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B10);
    sub_1D9B78EA4(&qword_1ECB53B18, &qword_1ECB53B10);
    sub_1D9C7E74C();
    v10 = *(v3 + 96);
    v11 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0);
    sub_1D9B78EA4(&qword_1ECB53B20, &qword_1ECB518F0);
    sub_1D9C7E74C();
    LOBYTE(v10) = 5;
    sub_1D9C7E71C();
    *&v10 = *(v3 + 56);
    v11 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B00);
    sub_1D9B78F0C(&qword_1ECB53B28);
    sub_1D9C7E74C();
    LOBYTE(v10) = 7;
    sub_1D9C7E6FC();
    LOBYTE(v10) = 8;
    sub_1D9C7E73C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9B785B8()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9B78604@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  v4 = sub_1D9C7D8DC();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53AF8);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B78DE8();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v6;
  v42 = v4;
  v43 = a1;
  v11 = v45;
  LOBYTE(v54[0]) = 5;
  v12 = sub_1D9C7E5BC();
  v13 = v7;
  if ((v12 & 0x100000000) != 0)
  {
    v14 = 0.35;
  }

  else
  {
    v14 = *&v12;
  }

  v15 = v10;
  static Logger.argos.getter(v10);
  v16 = sub_1D9C7D8BC();
  v17 = sub_1D9C7E09C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&dword_1D9962000, v16, v17, "ObjectDectionModelInfo init: default threshold loaded %f", v18, 0xCu);
    MEMORY[0x1DA7405F0](v18, -1, -1);
  }

  (*(v44 + 8))(v15, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B00);
  LOBYTE(v47) = 6;
  sub_1D9B78F0C(&qword_1EDD2C5E8);
  sub_1D9C7E65C();
  v19 = v54[0];
  LOBYTE(v54[0]) = 7;
  v20 = sub_1D9C7E60C();
  LOBYTE(v54[0]) = 8;
  v21 = sub_1D9C7E64C();
  LOBYTE(v54[0]) = 0;
  v22 = sub_1D9C7E64C();
  LOBYTE(v54[0]) = 1;
  v42 = sub_1D9C7E5FC();
  v44 = v23;
  LOBYTE(v54[0]) = 2;
  v40 = sub_1D9C7E64C();
  LOBYTE(v54[0]) = 3;
  v39 = sub_1D9C7E5FC();
  v41 = v24;
  LOBYTE(v54[0]) = 9;
  v38 = sub_1D9C7E5DC();
  v67 = v25 & 1;
  v65 = 10;
  v37 = sub_1D9C7E5AC();
  v36 = v26;
  v27 = v20 & 1;
  v35 = v27;
  (*(v46 + 8))(v9, v13);
  *&v47 = v22;
  *(&v47 + 1) = v42;
  *&v48 = v44;
  *(&v48 + 1) = v40;
  *&v49 = v39;
  *(&v49 + 1) = v41;
  *&v50 = v14;
  *(&v50 + 1) = v19;
  LOBYTE(v51) = v27;
  *(&v51 + 1) = *v68;
  DWORD1(v51) = *&v68[3];
  *(&v51 + 1) = v21;
  *&v52 = v38;
  LOBYTE(v27) = v67;
  BYTE8(v52) = v67;
  HIDWORD(v52) = *&v66[3];
  *(&v52 + 9) = *v66;
  v28 = v37;
  v29 = v36;
  *&v53 = v37;
  *(&v53 + 1) = v36;
  sub_1D9B78E3C(&v47, v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  v54[0] = v22;
  v54[1] = v42;
  v54[2] = v44;
  v54[3] = v40;
  v54[4] = v39;
  v54[5] = v41;
  v55 = v14;
  v56 = v19;
  v57 = v35;
  *v58 = *v68;
  *&v58[3] = *&v68[3];
  v59 = v21;
  v60 = v38;
  v61 = v27;
  *v62 = *v66;
  *&v62[3] = *&v66[3];
  v63 = v28;
  v64 = v29;
  result = sub_1D9B78E74(v54);
  v31 = v52;
  v11[4] = v51;
  v11[5] = v31;
  v11[6] = v53;
  v32 = v48;
  *v11 = v47;
  v11[1] = v32;
  v33 = v50;
  v11[2] = v49;
  v11[3] = v33;
  return result;
}

unint64_t sub_1D9B78DE8()
{
  result = qword_1EDD32718[0];
  if (!qword_1EDD32718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD32718);
  }

  return result;
}

uint64_t sub_1D9B78EA4(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D9B78F0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB53B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectDetectionModelInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectDetectionModelInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9B790D0()
{
  result = qword_1ECB53B30;
  if (!qword_1ECB53B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53B30);
  }

  return result;
}

unint64_t sub_1D9B79128()
{
  result = qword_1EDD32708;
  if (!qword_1EDD32708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD32708);
  }

  return result;
}

unint64_t sub_1D9B79180()
{
  result = qword_1EDD32710;
  if (!qword_1EDD32710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD32710);
  }

  return result;
}

uint64_t sub_1D9B791E8(void *a1, void *a2)
{
  v23[4] = *(v2 + OBJC_IVAR____TtC12VisualLookUp23OntologyGraphCompatible_ontologyGraph);

  v5 = [a1 knowledgeGraphID];
  v6 = sub_1D9C7DC7C();
  v8 = v7;

  v9 = [a1 debugDescription];
  v10 = sub_1D9C7DC7C();
  v12 = v11;

  v23[0] = v10;
  v23[1] = v12;
  v23[2] = v6;
  v23[3] = v8;
  v13 = [a2 knowledgeGraphID];
  v14 = sub_1D9C7DC7C();
  v16 = v15;

  v17 = [a2 debugDescription];
  v18 = sub_1D9C7DC7C();
  v20 = v19;

  v22[0] = v18;
  v22[1] = v20;
  v22[2] = v14;
  v22[3] = v16;
  LOBYTE(v17) = sub_1D9A375A8(v23, v22);

  return v17 & 1;
}

id sub_1D9B793A4(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC12VisualLookUp23OntologyGraphCompatible_ontologyGraph) + 16))
  {

    sub_1D99ED894(a1, a2);
    if (v5)
    {

      v6 = objc_allocWithZone(VIOntologyNode);
      v7 = sub_1D9C7DC4C();
      v8 = sub_1D9C7DC4C();
      v9 = [v6 initWithKnowledgeGraphID:v7 labelDebugDescription:v8];

      return v9;
    }
  }

  return 0;
}

id sub_1D9B79540(void *a1, void *a2)
{
  v29[4] = *(v2 + OBJC_IVAR____TtC12VisualLookUp23OntologyGraphCompatible_ontologyGraph);

  v5 = [a1 knowledgeGraphID];
  v6 = sub_1D9C7DC7C();
  v8 = v7;

  v9 = [a1 debugDescription];
  v10 = sub_1D9C7DC7C();
  v12 = v11;

  v29[0] = v10;
  v29[1] = v12;
  v29[2] = v6;
  v29[3] = v8;
  v13 = [a2 knowledgeGraphID];
  v14 = sub_1D9C7DC7C();
  v16 = v15;

  v17 = [a2 debugDescription];
  v18 = sub_1D9C7DC7C();
  v20 = v19;

  v28[0] = v18;
  v28[1] = v20;
  v28[2] = v14;
  v28[3] = v16;
  sub_1D9A37A90(v29, v28, &v30);

  v21 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
    return 0;
  }

  v22 = v30;
  v23 = objc_allocWithZone(VIOntologyNode);
  v24 = sub_1D9C7DC4C();
  v25 = sub_1D9C7DC4C();
  v26 = [v23 initWithKnowledgeGraphID:v24 labelDebugDescription:v25];

  sub_1D99FEF84(v22, v21);
  return v26;
}

id OntologyGraphCompatible.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OntologyGraphCompatible.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OntologyGraphCompatible();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9B79970(uint64_t a1)
{
  v2 = sub_1D9C7CD8C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D9C7CCAC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D9C7CCFC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 144);
  v36 = *(a1 + 128);
  v37 = v7;
  v38 = *(a1 + 160);
  v39 = *(a1 + 176);
  v8 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v8;
  v9 = *(a1 + 112);
  v34 = *(a1 + 96);
  v35 = v9;
  v10 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v10;
  v11 = *(a1 + 48);
  v31[2] = *(a1 + 32);
  v31[3] = v11;
  sub_1D9C7CF2C();
  v12 = *(a1 + 144);
  v29[8] = *(a1 + 128);
  v29[9] = v12;
  v29[10] = *(a1 + 160);
  v30 = *(a1 + 176);
  v13 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v13;
  v14 = *(a1 + 112);
  v29[6] = *(a1 + 96);
  v29[7] = v14;
  v15 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v15;
  v16 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v16;
  v17 = sub_1D9BE8DB0();
  if (v18)
  {
    sub_1D9B79BE4(v17, v18, v19, v6);
    sub_1D9C7CD0C();
  }

  sub_1D9B79DEC(v20);
  sub_1D9C7CCBC();
  v21 = *(&v32 + 1);
  v23 = v33;
  v22 = *&v34;
  sub_1D9C7CD7C();
  v40.origin.x = VIFlipOriginNormalizedRect(v21, *&v23, *(&v23 + 1), v22);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  CGRectGetMinX(v40);
  sub_1D9C7CD3C();
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGRectGetMinY(v41);
  sub_1D9C7CD4C();
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  CGRectGetWidth(v42);
  sub_1D9C7CD5C();
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGRectGetHeight(v43);
  sub_1D9C7CD6C();
  sub_1D9A0009C(v31);
  return sub_1D9C7CD9C();
}

uint64_t sub_1D9B79BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9C7CF1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7CCEC();
  v12 = *(a3 + 16);
  if (v12)
  {
    v21[1] = a1;
    v21[2] = a4;
    v21[3] = a2;

    v13 = (a3 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      sub_1D9B7A0C4(v15, v16, v17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D9AFB9A8(0, v14[2] + 1, 1, v14);
      }

      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1D9AFB9A8(v18 > 1, v19 + 1, 1, v14);
      }

      v14[2] = v19 + 1;
      (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v11, v8);
      v13 += 6;
      --v12;
    }

    while (v12);
  }

  sub_1D9C7CC8C();
  sub_1D9C7CCDC();
}

uint64_t sub_1D9B79DEC(uint64_t a1)
{
  v24 = sub_1D9C7CEDC();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9C7CC9C();
  sub_1D9C7CC8C();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = *(v6 + 72);
    v21[1] = a1;
    v21[2] = v2 + 32;
    do
    {
      v10 = v23;
      sub_1D99CC070(v9, v23, type metadata accessor for VisualUnderstanding.ImageRegion);
      v11 = v4;
      sub_1D9B7A928(v10, v4);
      sub_1D99CC0F8(v10, type metadata accessor for VisualUnderstanding.ImageRegion);
      v12 = sub_1D9C7CC7C();
      v14 = v13;
      v15 = *v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1D9AFB9F8(0, v15[2] + 1, 1, v15);
        *v14 = v15;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1D9AFB9F8(v17 > 1, v18 + 1, 1, v15);
        *v14 = v15;
      }

      v15[2] = v18 + 1;
      v19 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18;
      v4 = v11;
      (*(v2 + 32))(v19, v11, v24);
      v12(v25, 0);
      v9 += v22;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1D9B7A0C4(uint64_t a1, uint64_t a2, float a3)
{
  v6 = sub_1D9C7CEEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD948];
  }

  else if (a1 == 0x6C616D696E61 && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD960];
  }

  else if (a1 == 7631457 && a2 == 0xE300000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD930];
  }

  else if (a1 == 1937006947 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD938];
  }

  else if (a1 == 1936158564 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD940];
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9CA3780 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD928];
  }

  else if (a1 == 0x6E616D7568 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD950];
  }

  else if (a1 == 0x6B72616D646E616CLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD980];
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD958];
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CA37A0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD920];
  }

  else if (a1 == 0x65727574616ELL && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD968];
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE900000000000033 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD998];
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE900000000000032 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD990];
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE900000000000031 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD988];
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEA0000000000746FLL || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD918];
  }

  else if (a1 == 0x727574706C756373 && a2 == 0xE900000000000065 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD9B8];
  }

  else if (a1 == 0x656E696C796B73 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD970];
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE900000000000034 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD9A0];
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE900000000000035 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v10 = MEMORY[0x1E69BD9A8];
  }

  else
  {
    v10 = MEMORY[0x1E69BD9B0];
    if ((a1 != 0x6465767265736572 || a2 != 0xE900000000000037) && (sub_1D9C7E7DC() & 1) == 0)
    {
      v10 = MEMORY[0x1E69BD978];
    }
  }

  (*(v7 + 104))(v9, *v10, v6);
  v11 = sub_1D9C7CF1C();
  MEMORY[0x1EEE9AC00](v11);
  *&v13[-32] = a1;
  *&v13[-24] = a2;
  *&v13[-16] = a3;
  *&v13[-8] = v9;
  sub_1D9B7C5F8(&qword_1ECB53B40, MEMORY[0x1E69BD9C8]);
  sub_1D9C7D6BC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9B7A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9C7CEEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7CDCC();
  (*(v6 + 16))(v8, a4, v5);
  return sub_1D9C7CDDC();
}

uint64_t sub_1D9B7A8C8()
{
  sub_1D9C7CD3C();
  sub_1D9C7CD4C();
  sub_1D9C7CD5C();
  return sub_1D9C7CD6C();
}

uint64_t sub_1D9B7A928@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_1D9C7CE1C();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_1D9C7CD2C();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v49 - v11;
  v12 = sub_1D9C7CEAC();
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v66 = _s14DetectedResultVMa();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9C7CD8C();
  MEMORY[0x1EEE9AC00](v19);
  sub_1D9C7CECC();
  v20 = a1[1];
  v70 = *a1;
  v71 = v20;
  sub_1D9B7C5F8(&qword_1ECB53B50, MEMORY[0x1E69BD800]);
  sub_1D9C7D6BC();
  v69 = 0;
  sub_1D9C7CE5C();
  sub_1D9C7CEBC();
  v62 = a2;
  sub_1D9C7CD1C();
  v52 = a1;
  v21 = *(a1 + 7);
  v22 = v8;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v64 = *(v64 + 72);
    v65 = (v63 + 6);
    v57 = (v63 + 4);
    v56 = (v63 + 2);
    v55 = (v61 + 16);
    v54 = v61 + 32;
    v53 = v63 + 1;
    v63 = (v61 + 8);
    v59 = v7;
    v58 = v22;
    do
    {
      v25 = sub_1D99CC070(v24, v18, _s14DetectedResultVMa);
      MEMORY[0x1EEE9AC00](v25);
      *(&v49 - 2) = v18;
      sub_1D9B7C5F8(&qword_1ECB53B58, MEMORY[0x1E69BD908]);
      v26 = v69;
      sub_1D9C7D6BC();
      v69 = v26;
      sub_1D9B7B17C(*&v18[*(v66 + 28) + 16], *&v18[*(v66 + 28) + 24], v7);
      if ((*v65)(v7, 1, v22) == 1)
      {
        (*v63)(v16, v12);
        sub_1D9B7C4B4(v7);
      }

      else
      {
        v27 = v68;
        (*v57)(v68, v7, v22);
        (*v56)(v60, v27, v22);
        sub_1D9C7CE7C();
        sub_1D9C7CE8C();
        v28 = v16;
        (*v55)(v67, v16, v12);
        v29 = sub_1D9C7CE3C();
        v31 = v30;
        v32 = *v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v31 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1D9AFB9D0(0, v32[2] + 1, 1, v32);
          *v31 = v32;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = sub_1D9AFB9D0(v34 > 1, v35 + 1, 1, v32);
          *v31 = v32;
        }

        v32[2] = v35 + 1;
        v36 = v61;
        (*(v61 + 32))(v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v67, v12);
        v29(v72, 0);
        v22 = v58;
        (*v53)(v68, v58);
        (*(v36 + 8))(v28, v12);
        v16 = v28;
        v7 = v59;
      }

      sub_1D99CC0F8(v18, _s14DetectedResultVMa);
      v24 += v64;
      --v23;
    }

    while (v23);
  }

  v37 = *(v52 + 8);
  v38 = *(v37 + 16);
  if (v38)
  {
    v72[0] = MEMORY[0x1E69E7CC0];
    sub_1D99FE598(0, v38, 0);
    v39 = v72[0];
    v40 = v50;
    v41 = (v37 + 40);
    v42 = v51;
    v43 = v49;
    do
    {
      v44 = *(v41 - 1);
      v45 = *v41;

      sub_1D9B7B814(v44, v45, v43);
      v72[0] = v39;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D99FE598(v46 > 1, v47 + 1, 1);
        v39 = v72[0];
      }

      *(v39 + 16) = v47 + 1;
      (*(v40 + 32))(v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47, v43, v42);
      v41 += 2;
      --v38;
    }

    while (v38);
  }

  return sub_1D9C7CC8C();
}

uint64_t sub_1D9B7B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_1D9C7D8DC();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51260);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51268);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  sub_1D9C7D24C();
  v39 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51270);
  sub_1D9B7C53C();
  sub_1D9C7D2FC();
  v34 = a1;
  v40[0] = a1;
  v40[1] = a2;
  v15 = a2;
  sub_1D99C752C();
  v16 = sub_1D9C7DBFC();
  v38 = v14;
  v17 = sub_1D99BB608(sub_1D9B7C5A0, v37, v16);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (*(v17 + 16))
  {
    v18 = sub_1D9C7CD2C();
    MEMORY[0x1EEE9AC00](v18);
    *(&v31 - 2) = v17;
    sub_1D9B7C5F8(&qword_1ECB53B68, MEMORY[0x1E69BD7F0]);
    v19 = v36;
    sub_1D9C7D6BC();

    return (*(*(v18 - 8) + 56))(v19, 0, 1, v18);
  }

  else
  {
    v22 = v33;
    v21 = v34;
    v23 = v32;

    v24 = v35;
    static Logger.argos.getter(v35);

    v25 = sub_1D9C7D8BC();
    v26 = sub_1D9C7E09C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D9A0E224(v21, v15, v40);
      _os_log_impl(&dword_1D9962000, v25, v26, "Failed to parse OntologyNode %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x1DA7405F0](v28, -1, -1);
      MEMORY[0x1DA7405F0](v27, -1, -1);
    }

    (*(v23 + 8))(v24, v22);
    v29 = v36;
    v30 = sub_1D9C7CD2C();
    return (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  }
}

unint64_t sub_1D9B7B65C(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1D9C7CD8C();
  MEMORY[0x1EEE9AC00](v3);
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v5 = sub_1D9C7CE9C();
    MEMORY[0x1EEE9AC00](v5);
    *(&v6 - 2) = a2;
    sub_1D9B7C5F8(&qword_1ECB53B50, MEMORY[0x1E69BD800]);
    sub_1D9C7D6BC();
    return sub_1D9C7CE6C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B7B7B0()
{
  _s14DetectedResultVMa();
  sub_1D9C7CD3C();
  sub_1D9C7CD4C();
  sub_1D9C7CD5C();
  return sub_1D9C7CD6C();
}

uint64_t sub_1D9B7B814@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D9C7CDEC();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  sub_1D9C7CE0C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(a1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1D9C7CDAC();
  v3 = *(a2 + 16);
  if (v3)
  {
    v10 = sub_1D9B8E220(*(a2 + 16), 0);
    v11 = sub_1D9B8E904(v34, (v10 + 4), v3, a2);
    v31 = v34[4];

    sub_1D99C74D4();
    if (v11 == v3)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v34[0] = v10;
  sub_1D99C59D4(v34);

  v12 = v34[0];
  v13 = v34[0][2];
  if (v13)
  {
    v31 = (v32 + 32);
    v14 = sub_1D9B7C5F8(&qword_1ECB53B60, MEMORY[0x1E69BD818]);
    v30[1] = v12;
    v30[2] = v14;
    v15 = v12 + 6;
    do
    {
      v16 = *(v15 - 1);
      v17 = MEMORY[0x1EEE9AC00](v14);
      LODWORD(v30[-4]) = LODWORD(v17);
      v30[-3] = v18;
      v30[-2] = v16;

      v19 = v9;
      v20 = v7;
      sub_1D9C7D6BC();

      v21 = sub_1D9C7CDBC();
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1D9AFBA20(0, v24[2] + 1, 1, v24);
        *v23 = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1D9AFBA20(v26 > 1, v27 + 1, 1, v24);
        *v23 = v24;
      }

      v24[2] = v27 + 1;
      v28 = v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27;
      v9 = v19;
      v7 = v20;
      (*(v32 + 32))(v28, v19, v20);
      v14 = v21(v34, 0);
      v15 += 3;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D9B7BBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7CDFC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9C7CDCC();
  sub_1D9B7BC6C(a2, a3, v7);
  return sub_1D9C7CDDC();
}

uint64_t sub_1D9B7BC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1 == 0x4E574F4E4B4E55 && a2 == 0xE700000000000000;
  if (v5 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD868];
  }

  else if (a1 == 5526081 && a2 == 0xE300000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8B8];
  }

  else if (a1 == 0x45525554414ELL && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD838];
  }

  else if (a1 == 0x4B52414D444E414CLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD870];
  }

  else if (a1 == 0x414944454DLL && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD828];
  }

  else if (a1 == 1398031696 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8E8];
  }

  else if (a1 == 0x4445565245534552 && a2 == 0xE900000000000031 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD878];
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CA4500 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8A8];
  }

  else if (a1 == 0x534C414D494E41 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD840];
  }

  else if (a1 == 0x525554504C554353 && a2 == 0xE900000000000045 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD880];
  }

  else if (a1 == 0x454E494C594B53 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD860];
  }

  else if (a1 == 1398030659 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8D0];
  }

  else if (a1 == 1397182276 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8D8];
  }

  else if (a1 == 1263488834 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8C8];
  }

  else if (a1 == 0x4D55424C41 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD820];
  }

  else if (a1 == 1146243394 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8C0];
  }

  else if (a1 == 0x53544345534E49 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD850];
  }

  else if (a1 == 0x4C414D4D414DLL && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD830];
  }

  else if (a1 == 0x454C4954504552 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD858];
  }

  else if (a1 == 0x4C455241505041 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD848];
  }

  else if (a1 == 1146048326 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8E0];
  }

  else if (a1 == 0x4F524645524F5453 && a2 == 0xEA0000000000544ELL || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD890];
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9CA4520 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8B0];
  }

  else if (a1 == 0x4D59535F4F545541 && a2 == 0xEB000000004C4F42 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD888];
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9CA4540 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD8A0];
  }

  else if (a1 == 0x524F535345434341 && a2 == 0xEB00000000534549 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v7 = MEMORY[0x1E69BD898];
  }

  else
  {
    *a3 = 100;
    v7 = MEMORY[0x1E69BD8F0];
  }

  v8 = *v7;
  v9 = sub_1D9C7CDFC();
  v10 = *(*(v9 - 8) + 104);

  return v10(a3, v8, v9);
}

uint64_t sub_1D9B7C4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9B7C53C()
{
  result = qword_1EDD2C6B8;
  if (!qword_1EDD2C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C6B8);
  }

  return result;
}

uint64_t sub_1D9B7C5F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9B7C6B0()
{
  result = qword_1ECB53B70;
  if (!qword_1ECB53B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53B70);
  }

  return result;
}

id sub_1D9B7C758(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v7 = sub_1D9C7B86C();
  v8 = [v6 initWithData_];

  v16[0] = 0;
  v9 = [v8 *a4];

  v10 = v16[0];
  if (v9)
  {
    v11 = v16[0];
    v10 = MEMORY[0x1DA73BA10](v9);
  }

  else
  {
    v12 = v16[0];
    v13 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D9B7C6B0();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
  }

  return v10;
}

void sub_1D9B7C904()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9B7C988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B7C988()
{
  if (!qword_1EDD2F830)
  {
    type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(255);
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2F830);
    }
  }
}

uint64_t sub_1D9B7CA28()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9B7CAAC()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41C40);
  __swift_project_value_buffer(v0, qword_1EDD41C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "image_size_config";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B7CC18()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9B7CC8C();
    }
  }

  return result;
}

uint64_t sub_1D9B7CC8C()
{
  type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  sub_1D9B7D860(&unk_1EDD2F880, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9B7CD40()
{
  result = sub_1D9B7CD98(v0);
  if (!v1)
  {
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9B7CD98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  sub_1D99CD30C(a1 + *(v9 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D99A6AE0(v4, &qword_1ECB51310);
  }

  sub_1D9B63F54(v4, v8);
  sub_1D9B7D860(&unk_1EDD2F880, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);
  sub_1D9C7D80C();
  return sub_1D9B63EF8(v8);
}

uint64_t sub_1D9B7CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9C7D3BC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D9B7D03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B7D860(&qword_1ECB53B98, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B7D0DC(uint64_t a1)
{
  v2 = sub_1D9B7D860(&qword_1EDD2F7C8, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B7D148()
{
  sub_1D9B7D860(&qword_1EDD2F7C8, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B7D1C8()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000010, 0x80000001D9CAB370);
  qword_1ECB71500 = 0xD000000000000028;
  *algn_1ECB71508 = 0x80000001D9CAB320;
  return result;
}

uint64_t sub_1D9B7D23C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41C58);
  __swift_project_value_buffer(v0, qword_1EDD41C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "min_image_size";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "min_aspect_ratio";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "max_aspect_ratio";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9B7D44C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9B7D4DC()
{
  if (!*v0 || (result = sub_1D9C7D77C(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D77C(), !v1))
    {
      if (!v0[2] || (result = sub_1D9C7D77C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9B7D5AC()
{
  if (qword_1ECB50CD8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB71500;

  return v0;
}

uint64_t sub_1D9B7D644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B7D860(&qword_1ECB53BA8, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9B7D6E4(uint64_t a1)
{
  v2 = sub_1D9B7D860(&unk_1EDD2F880, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9B7D750()
{
  sub_1D9B7D860(&unk_1EDD2F880, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9B7D860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B7DA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53BA0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0) + 20);
  v16 = *(v12 + 56);
  sub_1D99CD30C(a1 + v15, v14);
  sub_1D99CD30C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1D99CD30C(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      sub_1D9B63F54(&v14[v16], v7);
      if (*v10 == *v7 && v10[1] == v7[1] && v10[2] == v7[2])
      {
        sub_1D9C7D3CC();
        sub_1D9B7D860(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        v20 = sub_1D9C7DC2C();
        sub_1D9B63EF8(v7);
        if (v20)
        {
          sub_1D9B63EF8(v10);
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D9B63EF8(v7);
      }

      sub_1D9B63EF8(v10);
      v19 = &qword_1ECB51310;
LABEL_14:
      sub_1D99A6AE0(v14, v19);
      v18 = 0;
      return v18 & 1;
    }

    sub_1D9B63EF8(v10);
LABEL_6:
    v19 = &qword_1ECB53BA0;
    goto LABEL_14;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D99A6AE0(v14, &qword_1ECB51310);
  sub_1D9C7D3CC();
  sub_1D9B7D860(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v18 = sub_1D9C7DC2C();
  return v18 & 1;
}