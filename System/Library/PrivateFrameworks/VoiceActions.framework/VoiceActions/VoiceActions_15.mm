uint64_t sub_27232F834(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VASingleEnrollmentData();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v59 - v9;
  v10 = (a1 + *(v8 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(*v1 + 352);

  v15 = (v13)(v14);
  v16 = *(v15 + 16);
  v63 = v11;
  if (v16 && (v17 = sub_27220038C(v11, v12), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
  }

  else
  {

    type metadata accessor for AVSCommand();
    v19 = swift_allocObject();
    v21 = MEMORY[0x277D84F90];
    v19[3] = v12;
    v19[4] = v21;
    v19[2] = v11;
  }

  v22 = (*(*v2 + 280))(v20);
  v23 = *(v4 + 20);
  v64 = a1;
  v24 = *(a1 + v23);
  v25 = v13();
  v26 = (*((*MEMORY[0x277D85000] & *v22) + 0x60))(v24, v25);
  v28 = v27;

  v30 = *((*(*v19 + 120))(v29) + 16);

  if (v30 < (*(*v2 + 640))(v31) || !*(v26 + 16) || (, sub_27220038C(v63, v12), v33 = v32, , (v33 & 1) == 0))
  {

    goto LABEL_17;
  }

  if (*(v26 + 16))
  {

    v34 = sub_27220038C(v63, v12);
    if (v35)
    {
      v36 = v34;

      v37 = *(*(v26 + 56) + 4 * v36);

      v39 = (*(*v2 + 592))(v38);

      if (v37 < v39 || v28 == -99999.0)
      {

        v41 = v64;
        v42 = v60;
        goto LABEL_20;
      }

LABEL_17:
      v43 = v64;
      v66[0] = *(v64 + *(v4 + 40));
      LOBYTE(v65) = 1;
      if (static VASingleEnrollmentStatus.== infix(_:_:)(v66, &v65))
      {
        (*(*v19 + 152))(v43);
        v44 = *(*v2 + 368);

        v45 = v44(v66);
        v47 = v46;
        v48 = *v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v47;
        *v47 = 0x8000000000000000;
        sub_272331454(v19, v63, v12, isUniquelyReferenced_nonNull_native);

        *v47 = v65;
        v45(v66, 0);
      }

      v41 = v43;
      v42 = v61;
LABEL_20:
      sub_272204F54(v41, v42);
      v50 = (*(*v2 + 584))(v66);
      v52 = v51;
      v53 = *v51;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *v52 = v53;
      if ((v54 & 1) == 0)
      {
        v53 = sub_27227B890(0, v53[2] + 1, 1, v53);
        *v52 = v53;
      }

      v55 = v62;
      v57 = v53[2];
      v56 = v53[3];
      if (v57 >= v56 >> 1)
      {
        v53 = sub_27227B890(v56 > 1, v57 + 1, 1, v53);
        *v52 = v53;
      }

      v53[2] = v57 + 1;
      sub_27227BA68(v42, v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v57);
      v50(v66, 0);
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAAVSVerifierModel.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v181 = type metadata accessor for VASingleEnrollmentData();
  v3 = *(v181 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v181);
  v165 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v164 = &v154 - v7;
  v176 = sub_27237728C();
  v8 = *(v176 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v176);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v157 = &v154 - v14;
  MEMORY[0x28223BE20](v13);
  v184 = &v154 - v15;
  v16 = MEMORY[0x277D84F90];
  (*(*v1 + 336))(MEMORY[0x277D84F90]);
  v17 = MEMORY[0x277D84F98];
  (*(*v1 + 360))(MEMORY[0x277D84F98]);
  (*(*v1 + 576))(v16);
  v18 = *(*v1 + 672);
  v175 = v1;
  v19 = v18(v17);
  v20 = *(enrollments._rawValue + 2);
  v172 = v3;
  v185 = v8;
  if (v20)
  {
    v21 = enrollments._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = (v8 + 16);
    v23 = (v8 + 8);
    v186 = *(v3 + 72);
    v24 = v158;
    do
    {
      v19 = sub_27232F834(v21);
      if (v24)
      {
        v25 = sub_2722C389C();
        (*v22)(v12, v25, v176);
        v26 = sub_27237725C();
        v27 = sub_272377E8C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2721E4000, v26, v27, "Error adding enrollment.", v28, 2u);
          v29 = v28;
          v3 = v172;
          MEMORY[0x2743C69C0](v29, -1, -1);
        }

        v19 = (*v23)(v12, v176);
        v24 = 0;
      }

      v21 += v186;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = v158;
  }

  v158 = v24;
  v30 = (*v175 + 352);
  v160 = *v30;
  v159 = v30;
  v31 = v160(v19);
  v33 = 0;
  v35 = v31 + 64;
  v34 = *(v31 + 64);
  v161 = v31;
  v36 = 1 << *(v31 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34;
  v39 = (v36 + 63) >> 6;
  v179 = (v185 + 16);
  v178 = (v185 + 8);
  *&v32 = 136315650;
  v154 = v32;
  *&v32 = 134217984;
  v169 = v32;
  v40 = MEMORY[0x277D84F90];
  v156 = v31 + 64;
  v155 = v39;
  while (1)
  {
    v41 = v176;
    if (!v38)
    {
      break;
    }

LABEL_17:
    v43 = v38;
    v44 = __clz(__rbit64(v38)) | (v33 << 6);
    v45 = (*(v161 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = *(*(v161 + 56) + 8 * v44);
    swift_bridgeObjectRetain_n();
    v168 = v48;

    v50 = v160(v49);
    if (!*(v50 + 16))
    {
      goto LABEL_94;
    }

    v166 = v47;
    v51 = sub_27220038C(v47, v46);
    v52 = v46;
    v53 = v51;
    v55 = v54;
    v167 = v52;

    if ((v55 & 1) == 0)
    {
      goto LABEL_95;
    }

    v56 = *(*(v50 + 56) + 8 * v53);

    v58 = (*(*v56 + 120))(v57);

    v59 = *(v58 + 16);
    v173 = v58;
    v163 = v33;
    if (v59)
    {
      v60 = sub_272377B5C();
      *(v60 + 16) = v59;
      v174 = v60;
      bzero((v60 + 32), 4 * v59);
      v61 = *(v58 + 16);
    }

    else
    {
      v61 = 0;
      v174 = v40;
    }

    v62 = 0;
    v162 = (v43 - 1) & v43;
    v186 = v40;
    v182 = v40;
    v63 = v173;
    v180 = v61;
LABEL_23:
    v64 = v62;
    while (v61 != v64)
    {
      v66 = v64;
      if (v64 >= v61)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (__OFADD__(v64, 1))
      {
        goto LABEL_86;
      }

      if (v64 >= *(v63 + 16))
      {
        goto LABEL_87;
      }

      v177 = v64 + 1;
      v67 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v183 = *(v3 + 72);
      v68 = *(v181 + 20);
      v185 = v63 + v67 + v183 * v64;
      v69 = *(*(v185 + v68) + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_27220897C(0, *(v186 + 2) + 1, 1, v186);
      }

      v71 = *(v186 + 2);
      v70 = *(v186 + 3);
      if (v71 >= v70 >> 1)
      {
        v186 = sub_27220897C((v70 > 1), v71 + 1, 1, v186);
      }

      v72 = v186;
      *(v186 + 2) = v71 + 1;
      *&v72[8 * v71 + 32] = v69;
      v73 = sub_2722C389C();
      (*v179)(v184, v73, v41);

      v74 = sub_27237725C();
      v75 = sub_272377E7C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = v63;
        *v76 = v169;
        if (v66 >= *(v63 + 16))
        {
          goto LABEL_90;
        }

        v78 = v76;
        *(v76 + 4) = *(*(v185 + v68) + 16);

        _os_log_impl(&dword_2721E4000, v74, v75, "Command length %ld", v78, 0xCu);
        MEMORY[0x2743C69C0](v78, -1, -1);

        v63 = v77;
      }

      else
      {
      }

      (*v178)(v184, v41);
      v65 = *(v63 + 16);
      v64 = v66 + 1;
      v61 = v180;
      if (v65)
      {
        v170 = v174 + 4 * v64;
        v79 = v66;
        v80 = v63 + v67;
        v171 = v66;
        do
        {
          if (v66)
          {
            if (v79 >= *(v63 + 16))
            {
              goto LABEL_88;
            }

            v81 = *(v185 + v68);
            v82 = *(*v175 + 256);

            v82(&v188, v83);
            sub_272243D3C(v81, v189);
            v85 = v84;

            v86 = *(v80 + *(v181 + 20));

            v82(&v188, v87);
            sub_272243D3C(v86, v189);
            v89 = v88;

            sub_272305464(v85, v89);
            v91 = v90;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v182 = sub_2721FF8B4(0, *(v182 + 2) + 1, 1, v182);
            }

            v93 = *(v182 + 2);
            v92 = *(v182 + 3);
            v3 = v172;
            v41 = v176;
            v63 = v173;
            if (v93 >= v92 >> 1)
            {
              v182 = sub_2721FF8B4((v92 > 1), v93 + 1, 1, v182);
            }

            v94 = v182;
            *(v182 + 2) = v93 + 1;
            *&v94[4 * v93 + 32] = -v91;
            v79 = v171;
            if (v171 >= *(v174 + 16))
            {
              goto LABEL_89;
            }

            *(v170 + 28) = *(v170 + 28) - v91;
          }

          v80 += v183;
          --v66;
          --v65;
        }

        while (v65);
        v61 = v180;
        v62 = v177;
        goto LABEL_23;
      }
    }

    v95 = *(v186 + 2);
    v96 = v175;
    if (!v95)
    {
      goto LABEL_92;
    }

    v97 = 0;
    v98 = 0;
    v99 = v174;
    do
    {
      v100 = *&v186[8 * v97 + 32];
      v101 = __OFADD__(v98, v100);
      v98 += v100;
      if (v101)
      {
        goto LABEL_84;
      }

      ++v97;
    }

    while (v95 != v97);
    v102 = sub_2722C9638(v174);
    if ((v102 & 0x100000000) != 0)
    {
      goto LABEL_96;
    }

    v103 = *(v99 + 16);
    if (!v103)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v104 = 0;
    v105 = v98 / v95;
    while (*(v99 + 4 * v104 + 32) != *&v102)
    {
      if (v103 == ++v104)
      {
        goto LABEL_83;
      }
    }

    v106 = (*(*v96 + 400))() * *&v102;
    v107 = (*(*v96 + 496))();
    v108 = *v96;
    if (v107 >= v105)
    {
      v114 = *(v108 + 520);
      if (v106 < v114())
      {
        v106 = v114();
      }

      v115 = (*v96 + 544);
      v116 = *v115;
      if ((*v115)() < v106)
      {
        v113 = v116();
        goto LABEL_67;
      }
    }

    else
    {
      v109 = *(v108 + 424);
      if (v106 < v109())
      {
        v106 = v109();
      }

      v110 = (*v96 + 448);
      v111 = *v110;
      if ((*v110)() < v106)
      {
        v112 = v111();
LABEL_67:
        v106 = v113;
      }
    }

    if ((~LODWORD(v106) & 0x7F800000) == 0 && (LODWORD(v106) & 0x7FFFFF) != 0)
    {
      v106 = (*(*v96 + 472))(v112);
    }

    v118 = sub_2722C389C();
    v119 = v157;
    (*v179)(v157, v118, v176);
    v120 = v167;

    v121 = sub_27237725C();
    v122 = sub_272377E7C();

    LODWORD(v185) = v122;
    v123 = v122;
    v124 = v121;
    if (os_log_type_enabled(v121, v123))
    {
      v125 = swift_slowAlloc();
      v180 = v105;
      v126 = v125;
      v183 = swift_slowAlloc();
      v188 = v183;
      *v126 = v154;

      v127 = v166;
      v128 = sub_2721FFD04(v166, v120, &v188);

      *(v126 + 4) = v128;
      *(v126 + 12) = 2048;
      *(v126 + 14) = v180;
      *(v126 + 22) = 2048;
      *(v126 + 24) = v106;
      v129 = v124;
      _os_log_impl(&dword_2721E4000, v124, v185, "Mean command length for %s was %ld; set to %f", v126, 0x20u);
      v130 = v183;
      sub_2722039C8(v183);
      MEMORY[0x2743C69C0](v130, -1, -1);
      MEMORY[0x2743C69C0](v126, -1, -1);

      (*v178)(v119, v176);
    }

    else
    {

      (*v178)(v119, v176);
      v127 = v166;
    }

    v131 = *(*v96 + 680);

    v132 = v131(&v188);
    v134 = v133;
    v135 = *v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = *v134;
    *v134 = 0x8000000000000000;
    sub_272300A84(v127, v120, isUniquelyReferenced_nonNull_native, v106);

    v137 = *v134;
    *v134 = v187;

    v132(&v188, 0);
    type metadata accessor for AVSCommand();
    v138 = swift_allocObject();
    v138[4] = MEMORY[0x277D84F90];
    v139 = (v138 + 4);
    v138[2] = v127;
    v138[3] = v120;

    if (v104 >= *(v173 + 16))
    {
      goto LABEL_93;
    }

    v140 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v141 = *(v3 + 72);
    v142 = v164;
    sub_272204F54(v173 + v140 + v141 * v104, v164);

    sub_272204F54(v142, v165);
    swift_beginAccess();
    v143 = *v139;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *v139 = v143;
    if ((v144 & 1) == 0)
    {
      v143 = sub_27227B890(0, v143[2] + 1, 1, v143);
      *v139 = v143;
    }

    v40 = MEMORY[0x277D84F90];
    v146 = v143[2];
    v145 = v143[3];
    if (v146 >= v145 >> 1)
    {
      v143 = sub_27227B890(v145 > 1, v146 + 1, 1, v143);
    }

    v143[2] = v146 + 1;
    sub_27227BA68(v165, v143 + v140 + v146 * v141);
    v138[4] = v143;
    swift_endAccess();
    sub_272331740(v164, type metadata accessor for VASingleEnrollmentData);
    v147 = *(*v96 + 392);
    v148 = v167;

    v149 = v147(&v188);
    v151 = v150;
    v152 = *v150;
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v187 = *v151;
    *v151 = 0x8000000000000000;
    sub_272331454(v138, v166, v148, v153);

    *v151 = v187;
    v149(&v188, 0);

    v35 = v156;
    v33 = v163;
    v39 = v155;
    v38 = v162;
  }

  while (1)
  {
    v42 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      return;
    }

    v38 = *(v35 + 8 * v42);
    ++v33;
    if (v38)
    {
      v33 = v42;
      goto LABEL_17;
    }
  }

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
}

char *sub_2723310B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881F40, &unk_2723860C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2723311AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280883088, &qword_2723860B8);
  v38 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_272331454(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2723311AC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2723315D0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_2723315D0()
{
  v1 = v0;
  sub_2721F065C(&qword_280883088, &qword_2723860B8);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_272331740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2723317D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_272331818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_272331C38()
{
  v0 = sub_272291FE0(&unk_28818F940);
  sub_272203A70(&unk_28818F960);
  return v0;
}

id sub_272331C74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_272331E48()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272331F9C(void *a1)
{
  swift_allocObject();
  v2 = sub_272333178(a1);

  return v2;
}

void sub_272331FE4()
{
  type metadata accessor for VABundleUtil();
  static VABundleUtil.bundePathFallback(resource:type:)();
  if (v0)
  {
    sub_272376CAC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_272332068(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_272332228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_272332338(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2723323F8, 0, 0);
}

uint64_t sub_2723323F8()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_272332528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2723325E0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2723326A8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2723326A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2723327F4, 0, 0);
  }
}

uint64_t sub_2723327F4()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_encoder_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272332868(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2723328F4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_encoder_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2723329CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2723329F0, 0, 0);
}

uint64_t sub_2723329F0()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_272332A90;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_272332A90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272332BDC, 0, 0);
  }
}

uint64_t sub_272332BDC()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_encoder_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272332C50(void *a1)
{
  type metadata accessor for aa_encoder_125141826Input();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272332CE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v5 + 16);
  v12(v16 - v10, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v12(v9, v11, v4);
  sub_272292148();
  v13 = sub_272377E5C();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for aa_encoder_125141826Input();
  *(swift_allocObject() + 16) = v13;
  v14 = (*(*v2 + 136))();

  return v14;
}

void sub_272332EB4(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_encoder_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272333178(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2723332D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27233330C(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for aa_encoder_125141826();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_272333404(void *a1)
{
  v2 = swift_allocObject();
  sub_272333454(a1);
  return v2;
}

uint64_t sub_272333454(void *a1)
{
  v3 = v1;
  *(v1 + 72) = 0x7475706E69;
  *(v1 + 80) = 0xE500000000000000;
  strcpy((v1 + 88), "keyword_mask");
  *(v1 + 101) = 0;
  *(v1 + 102) = -5120;
  *(v1 + 104) = 0x6974636964657270;
  *(v1 + 112) = 0xEB00000000736E6FLL;
  *(v1 + 120) = 0x7374657366666FLL;
  *(v1 + 128) = 0xE700000000000000;
  *(v1 + 136) = 0x736874646977;
  *(v1 + 144) = 0xE600000000000000;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *a1) + 0xA0))();
  if (!v6)
  {
    sub_2722032B4();
    swift_allocError();
    *v15 = 0xD000000000000020;
    v15[1] = 0x8000000272390B40;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v7 = v6;
  v8 = (*((*v5 & *a1) + 0xD0))();
  if (!v8)
  {
    sub_2722032B4();
    swift_allocError();
    *v16 = 0xD000000000000031;
    v16[1] = 0x8000000272390B70;
    swift_willThrow();

    goto LABEL_7;
  }

  v156 = v8;
  *(v1 + 16) = a1;
  type metadata accessor for VAEspressoUtilsV2();
  v9 = *((*v5 & *v7) + 0xA0);
  v10 = a1;
  v11 = v9();
  v13 = v12;
  v14 = sub_2721F7EE4();
  sub_2723195D0(v11, v13, v14 & 1, v155);
  if (!v2)
  {

    v28 = v155[1];
    *(v3 + 24) = v155[0];
    *(v3 + 40) = v28;
    *(v3 + 56) = v155[2];
    v29 = MEMORY[0x277D85000];
    v154 = v7;
    v30 = *((*((*MEMORY[0x277D85000] & *v7) + 0xB8))(v27) + 16);

    v152 = *((*v29 & *v10) + 0x88);
    v32 = (v152)(v31);
    v33 = (*((*v29 & *v32) + 0x160))();

    v34 = v156;
    v35 = (*((*v29 & *v156) + 0x138))();
    if (v35)
    {
      if (v33 != 0x8000000000000000 || v35 != -1)
      {
        v37 = *(v3 + 40);
        if (*(v37 + 16))
        {
          v147 = v35;
          v150 = v33;
          v151 = v30;
          v153 = v10;
          v38 = *(v3 + 72);
          v39 = *(v3 + 80);

          v40 = sub_27220038C(v38, v39);
          v42 = v41;

          if (v42)
          {
            v43 = *(*(v37 + 56) + 8 * v40);

            sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_27237AF60;
            *(v44 + 32) = 1;
            v45 = v43;
            v46 = v152();
            v47 = (*((*v29 & *v46) + 0x148))();

            *(v44 + 40) = v47;
            *(v44 + 48) = (*((*v29 & *v154) + 0xE8))();
            *(v44 + 56) = 1;
            v48 = *(*v45 + 200);
            v49 = v48();
            LOBYTE(v47) = sub_27228E488(v49, v44);

            if ((v47 & 1) == 0)
            {
              sub_27237820C();

              v81 = v48;
              v82 = MEMORY[0x2743C4C60](v44, MEMORY[0x277D83B88]);
              v84 = v83;

              MEMORY[0x2743C4AD0](v82, v84);

              v85 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
              (v81)(v85);
              v86 = MEMORY[0x2743C4C60]();
              v88 = v87;

              MEMORY[0x2743C4AD0](v86, v88);

              sub_2722032B4();
              swift_allocError();
              *v89 = 0xD00000000000001FLL;
              v89[1] = 0x8000000272390BD0;
              swift_willThrow();

              goto LABEL_39;
            }

            v50 = *(v3 + 48);
            if (*(v50 + 16))
            {
              v51 = *(v3 + 104);
              v52 = *(v3 + 112);
              v53 = *(v3 + 48);

              v54 = sub_27220038C(v51, v52);
              v56 = v55;

              if (v56)
              {
                v57 = *(*(v50 + 56) + 8 * v54);

                v58 = swift_allocObject();
                *(v58 + 16) = xmmword_27237AF60;
                *(v58 + 32) = 1;
                *(v58 + 40) = v151 + 1;
                v149 = v150 / v147;
                *(v58 + 48) = v149;
                *(v58 + 56) = 1;
                v148 = *(*v57 + 200);
                v59 = v148();
                v60 = sub_27228E488(v59, v58);

                if (v60)
                {

                  v61 = sub_272377B5C();
                  v62 = v61;
                  *(v61 + 16) = v151 + 1;
                  *(v61 + 32) = 0;
                  if (v151)
                  {
                    bzero((v61 + 36), 4 * v151);
                  }

                  v63 = sub_27220392C(v62, v149);

                  *(v3 + 152) = v63;
                  v64 = *(v3 + 48);
                  v65 = v156;
                  if (*(v64 + 16))
                  {
                    v66 = *(v3 + 120);
                    v67 = *(v3 + 128);
                    v68 = *(v3 + 48);

                    v69 = sub_27220038C(v66, v67);
                    v71 = v70;

                    if (v71)
                    {
                      v72 = *(*(v64 + 56) + 8 * v69);

                      v73 = swift_allocObject();
                      *(v73 + 16) = xmmword_27237AF60;
                      *(v73 + 32) = 1;
                      *(v73 + 40) = v151;
                      *(v73 + 48) = v149;
                      *(v73 + 56) = 1;
                      v74 = *(*v72 + 200);
                      v75 = v74();
                      v76 = sub_27228E488(v75, v73);

                      if (v76)
                      {

                        if (v151)
                        {
                          v77 = sub_272377B5C();
                          *(v77 + 16) = v151;
                          bzero((v77 + 32), 4 * v151);
                        }

                        else
                        {
                          v77 = MEMORY[0x277D84F90];
                        }

                        v10 = v153;
                        v121 = v156;
                        v122 = sub_27220392C(v77, v149);

                        *(v3 + 160) = v122;
                        v123 = *(v3 + 48);
                        if (*(v123 + 16))
                        {
                          v124 = *(v3 + 136);
                          v125 = *(v3 + 144);
                          v126 = *(v3 + 48);

                          v127 = sub_27220038C(v124, v125);
                          v129 = v128;

                          if (v129)
                          {
                            v130 = *(*(v123 + 56) + 8 * v127);

                            v131 = swift_allocObject();
                            *(v131 + 16) = xmmword_27237AF60;
                            *(v131 + 32) = 1;
                            *(v131 + 40) = v151;
                            *(v131 + 48) = v149;
                            *(v131 + 56) = 1;
                            v132 = *(*v130 + 200);
                            v133 = v132();
                            LOBYTE(v130) = sub_27228E488(v133, v131);

                            if (v130)
                            {

                              if (v151)
                              {
                                v134 = sub_272377B5C();
                                *(v134 + 16) = v151;
                                bzero((v134 + 32), 4 * v151);
LABEL_58:
                                v146 = sub_27220392C(v134, v149);

                                *(v3 + 168) = v146;
                                return v3;
                              }

LABEL_57:
                              v134 = MEMORY[0x277D84F90];
                              goto LABEL_58;
                            }

                            sub_27237820C();
                            MEMORY[0x2743C4AD0](0xD00000000000002BLL, 0x8000000272390C30);
                            v138 = MEMORY[0x2743C4C60](v131, MEMORY[0x277D83B88]);
                            v140 = v139;

                            MEMORY[0x2743C4AD0](v138, v140);

                            v141 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                            (v132)(v141);
                            v142 = MEMORY[0x2743C4C60]();
                            v144 = v143;

                            MEMORY[0x2743C4AD0](v142, v144);

                            sub_2722032B4();
                            swift_allocError();
                            *v145 = 0;
                            v145[1] = 0xE000000000000000;
                            swift_willThrow();

                            v17 = 1;
                            v18 = 1;
                            goto LABEL_40;
                          }
                        }

                        sub_27237820C();

                        v135 = *(v3 + 136);
                        v136 = *(v3 + 144);

                        MEMORY[0x2743C4AD0](v135, v136);

                        sub_2722032B4();
                        swift_allocError();
                        *v137 = 0xD000000000000015;
                        v137[1] = 0x8000000272390BF0;
                        swift_willThrow();

                        v17 = 1;
                        v18 = 1;
                        goto LABEL_41;
                      }

                      sub_27237820C();

                      v111 = *(v3 + 120);
                      v112 = *(v3 + 128);

                      MEMORY[0x2743C4AD0](v111, v112);

                      MEMORY[0x2743C4AD0](0x746365707865203ALL, 0xEB00000000206465);
                      v113 = MEMORY[0x2743C4C60](v73, MEMORY[0x277D83B88]);
                      v115 = v114;

                      MEMORY[0x2743C4AD0](v113, v115);

                      v116 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                      (v74)(v116);
                      v117 = MEMORY[0x2743C4C60]();
                      v119 = v118;

                      MEMORY[0x2743C4AD0](v117, v119);

                      sub_2722032B4();
                      swift_allocError();
                      *v120 = 0xD00000000000001ALL;
                      v120[1] = 0x8000000272390C10;
                      swift_willThrow();

                      v18 = 0;
                      v17 = 1;
LABEL_40:
                      v10 = v153;
                      goto LABEL_41;
                    }
                  }

                  sub_27237820C();

                  v108 = *(v3 + 120);
                  v109 = *(v3 + 128);

                  MEMORY[0x2743C4AD0](v108, v109);

                  sub_2722032B4();
                  swift_allocError();
                  *v110 = 0xD000000000000015;
                  v110[1] = 0x8000000272390BF0;
                  swift_willThrow();

                  v18 = 0;
                  v17 = 1;
                  goto LABEL_41;
                }

                sub_27237820C();

                v98 = *(v3 + 104);
                v99 = *(v3 + 112);

                MEMORY[0x2743C4AD0](v98, v99);

                MEMORY[0x2743C4AD0](0x746365707865203ALL, 0xEB00000000206465);
                v100 = MEMORY[0x2743C4C60](v58, MEMORY[0x277D83B88]);
                v102 = v101;

                MEMORY[0x2743C4AD0](v100, v102);

                v103 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                (v148)(v103);
                v104 = MEMORY[0x2743C4C60]();
                v106 = v105;

                MEMORY[0x2743C4AD0](v104, v106);

                sub_2722032B4();
                swift_allocError();
                *v107 = 0xD00000000000001ALL;
                v107[1] = 0x8000000272390C10;
                swift_willThrow();

LABEL_39:

                v17 = 0;
                v18 = 0;
                goto LABEL_40;
              }
            }

            sub_27237820C();

            v90 = *(v3 + 104);
            v91 = *(v3 + 112);

            MEMORY[0x2743C4AD0](v90, v91);

            sub_2722032B4();
            swift_allocError();
            *v92 = 0xD000000000000015;
            v92[1] = 0x8000000272390BF0;
            swift_willThrow();

            goto LABEL_39;
          }

          v34 = v156;
        }

        sub_27237820C();

        v78 = *(v3 + 72);
        v79 = *(v3 + 80);

        MEMORY[0x2743C4AD0](v78, v79);

        sub_2722032B4();
        swift_allocError();
        *v80 = 0xD000000000000014;
        v80[1] = 0x8000000272390BB0;
        swift_willThrow();

        v17 = 0;
        v18 = 0;
LABEL_41:

        v93 = *(v3 + 32);
        v94 = *(v3 + 40);
        v95 = *(v3 + 48);
        v96 = *(v3 + 56);
        v97 = *(v3 + 64);

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_8:
  v17 = 0;
  v18 = 0;
LABEL_9:
  v19 = *(v3 + 80);

  v20 = *(v3 + 96);

  v21 = *(v3 + 112);

  v22 = *(v3 + 128);

  v23 = *(v3 + 144);

  if (v17)
  {
    v24 = *(v3 + 152);
  }

  if (v18)
  {
    v25 = *(v3 + 160);
  }

  type metadata accessor for VAKWSModel();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_272334678()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[21];

  return v1;
}

uint64_t sub_2723346C8(uint64_t a1, uint64_t a2)
{
  sub_272256424(a1);
  v6 = v5;
  v16 = *(v2 + 24);
  v17 = *(v2 + 40);
  v18 = *(v2 + 56);
  v7 = sub_272319394(*(v2 + 72), *(v2 + 80));
  if (!v3)
  {
    (*(*v7 + 624))(v6);

    v8 = sub_272319394(*(v2 + 88), *(v2 + 96));
    (*(*v8 + 624))(a2);

    sub_272275B0C();
    v9 = sub_2723194B0(*(v2 + 104), *(v2 + 112));
    v11 = (*(*v9 + 752))(v9);

    v6 = sub_2722565E8(v11);

    v12 = sub_2723194B0(*(v2 + 120), *(v2 + 128));
    v13 = (*(*v12 + 752))(v12);

    sub_2722565E8(v13);

    v14 = sub_2723194B0(*(v2 + 136), *(v2 + 144));
    v15 = (*(*v14 + 752))(v14);

    sub_2722565E8(v15);
  }

  return v6;
}

uint64_t sub_2723349A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 144);

  v11 = *(v0 + 152);

  v12 = *(v0 + 160);

  v13 = *(v0 + 168);

  return v0;
}

uint64_t sub_272334A48()
{
  sub_2723349A0();

  return swift_deallocClassInstance();
}

uint64_t sub_272334ADC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_272334B00, v1, 0);
}

uint64_t sub_272334B00()
{
  (*(**(v0 + 16) + 104))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272334BA4()
{
  v1 = (*(**(v0 + 16) + 96))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_272334D90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_2808821C8, &qword_272386260);
}

uint64_t sub_272334DF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  sub_272334E58(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272334E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808821C8, &qword_272386260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272334F28()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272334F70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272335028()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27233506C(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27233511C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272335160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272335210()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272335254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272335304@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for VARuntimeParametersFactoryDummy();
  result = sub_2722043D8();
  a1[3] = v2;
  a1[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
  *a1 = result;
  return result;
}

id sub_272335390(uint64_t a1, void *a2, uint64_t *a3)
{
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_requestInfo) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_listeningTask) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_strategyLayer) = 0;
  v7 = v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData;
  *(v3 + v8) = sub_27233ED70(MEMORY[0x277D84F90]);
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numFramesForAveraging) = 3;
  v9 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock) = 0;
  v10 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
  type metadata accessor for ThreadSafeBoolActor();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  *(v3 + v10) = v11;
  sub_27221629C(a3, v16);
  swift_beginAccess();
  sub_272334E58(v16, v7);
  swift_endAccess();
  v12 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = *(v3 + v9);
  *(v3 + v9) = v12;

  v14 = VAKeywordSpotter.init(delegate:configuration:)(a1, a2);
  sub_2722039C8(a3);
  return v14;
}

uint64_t sub_272335508()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_requestInfo);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_listeningTask);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_strategyLayer);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory, &qword_2808821C8, &qword_272386260);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool);
}

id VAKeywordSpotterBase.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377EAC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deinit VAKeywordSpotterBase", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_listeningTask;
  swift_beginAccess();
  v12 = *&v1[v11];
  *&v1[v11] = 0;

  v13 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_strategyLayer;
  swift_beginAccess();
  v14 = *&v1[v13];
  *&v1[v13] = 0;

  v15 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_requestInfo;
  swift_beginAccess();
  v16 = *&v1[v15];
  *&v1[v15] = 0;

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v17 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  sub_272334E58(v23, &v1[v17]);
  swift_endAccess();
  v18 = *&v1[OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock];
  *&v1[OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock] = 0;

  v19 = type metadata accessor for VAKeywordSpotterBase();
  v22.receiver = v1;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, sel_dealloc);
}

id static VAKeywordSpotterBase.getDefaultAudioFormat()()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (!result)
  {
    result = sub_27237837C();
    __break(1u);
  }

  return result;
}

uint64_t sub_272335974()
{
  v1[5] = v0;
  v2 = sub_27237728C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272335A70, 0, 0);
}

uint64_t sub_272335A70()
{
  v1 = v0[5];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x120);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 288) & 0xFFFFFFFFFFFFLL | 0x3D45000000000000;
  v0[14] = v2;
  v0[15] = v3;
  if (v2())
  {
    v4 = v0[5];

    v5 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
    v0[16] = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
    v6 = *(v4 + v5);
    v0[17] = v6;
    v7 = *(*v6 + 128);

    v29 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_272335D38;

    return v29();
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = sub_2722C389C();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Called stop() when keyword spotter was not running", v21, 2u);
      MEMORY[0x2743C69C0](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v23 = v0[12];
    v22 = v0[13];
    v25 = v0[10];
    v24 = v0[11];
    v27 = v0[8];
    v26 = v0[9];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_272335D38(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 25) = a1;

  return MEMORY[0x2822009F8](sub_272335E58, 0, 0);
}

uint64_t sub_272335E58()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = sub_2722C389C();
  *(v0 + 152) = v3;
  v4 = *(v2 + 16);
  *(v0 + 160) = v4;
  *(v0 + 168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = *(v0 + 48);
  if (v1 == 1)
  {
    v4(*(v0 + 104), v3, v5);
    v6 = sub_27237725C();
    v7 = sub_272377EAC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v6, v7, "Stop(): Ignoring when already in progress", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v4(*(v0 + 96), v3, v5);
    v21 = sub_27237725C();
    v22 = sub_272377EAC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2721E4000, v21, v22, "Stop(): starting", v23, 2u);
      MEMORY[0x2743C69C0](v23, -1, -1);
    }

    v24 = *(v0 + 128);
    v25 = *(v0 + 96);
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);
    v28 = *(v0 + 40);

    v29 = *(v27 + 8);
    *(v0 + 176) = v29;
    v29(v25, v26);
    v30 = *(v28 + v24);
    *(v0 + 184) = v30;
    v31 = *(*v30 + 120);

    v34 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 192) = v33;
    *v33 = v0;
    v33[1] = sub_272336188;

    return v34(1);
  }
}

uint64_t sub_272336188()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2723362A0, 0, 0);
}

uint64_t sub_2723362A0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = (*(v0 + 112))();
  *(v0 + 200) = v3;
  if (v3)
  {
    v4 = *(*v3 + 360);
    v21 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_2723365F8;

    return v21();
  }

  else
  {
    v8 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x138))();
    *(v0 + 216) = v8;
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 40);
      *(v0 + 224) = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = *(MEMORY[0x277D857D0] + 4);
      v12 = swift_task_alloc();
      *(v0 + 232) = v12;
      v13 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      *(v0 + 240) = v13;
      *v12 = v0;
      v12[1] = sub_27233695C;
      v14 = MEMORY[0x277D839B0];
      v15 = MEMORY[0x277D84950];

      return MEMORY[0x282200440](v0 + 16, v9, v14, v13, v15);
    }

    else
    {
      v16 = *(*(v0 + 40) + *(v0 + 128));
      *(v0 + 256) = v16;
      v17 = *(*v16 + 120);

      v20 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 264) = v19;
      *v19 = v0;
      v19[1] = sub_272336F78;

      return v20(0);
    }
  }
}

uint64_t sub_2723365F8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_272336710, 0, 0);
}

uint64_t sub_272336710()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x138))();
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 40);
    *(v0 + 224) = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(MEMORY[0x277D857D0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    v6 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *(v0 + 240) = v6;
    *v5 = v0;
    v5[1] = sub_27233695C;
    v7 = MEMORY[0x277D839B0];
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 16, v2, v7, v6, v8);
  }

  else
  {
    v9 = *(*(v0 + 40) + *(v0 + 128));
    *(v0 + 256) = v9;
    v10 = *(*v9 + 120);

    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 264) = v12;
    *v12 = v0;
    v12[1] = sub_272336F78;

    return v14(0);
  }
}

uint64_t sub_27233695C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_272336A58, 0, 0);
}

uint64_t sub_272336A58()
{
  v1 = *(v0 + 16);
  *(v0 + 248) = v1;
  if ((*(v0 + 24) & 1) == 0)
  {
    v28 = *(v0 + 168);
    (*(v0 + 160))(*(v0 + 88), *(v0 + 152), *(v0 + 48));
    v29 = sub_27237725C();
    v30 = sub_272377EAC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2721E4000, v29, v30, "Stop(): listening task completed", v31, 2u);
      MEMORY[0x2743C69C0](v31, -1, -1);

      sub_27233F36C(v1, 0);
    }

    else
    {
    }

    v32 = *(v0 + 216);
    v33 = *(v0 + 224);
    v34 = *(v0 + 56) + 8;
    (*(v0 + 176))(*(v0 + 88), *(v0 + 48));
    sub_2723373EC();

    v35 = *(*(v0 + 40) + *(v0 + 128));
    *(v0 + 256) = v35;
    v36 = *(*v35 + 120);

    v50 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    *(v0 + 264) = v38;
    *v38 = v0;
    v38[1] = sub_272336F78;
    v27 = v50;
    goto LABEL_10;
  }

  v2 = *(v0 + 240);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  *(v0 + 32) = v1;
  v8 = v1;
  swift_willThrowTypedImpl();
  v4(v6, v5, v7);
  v9 = v1;
  v10 = sub_27237725C();
  v11 = sub_272377E8C();
  sub_27233F36C(v1, 1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2721E4000, v10, v11, "Error stopping spotter: %@", v12, 0xCu);
    sub_2721F40F0(v13, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v13, -1, -1);
    MEMORY[0x2743C69C0](v12, -1, -1);
  }

  v16 = *(v0 + 224);
  v17 = *(v0 + 176);
  v18 = *(v0 + 80);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  v17(v18, v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool);
    *(v0 + 272) = v22;
    v23 = Strong;

    v24 = *(*v22 + 120);
    v51 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 280) = v26;
    *v26 = v0;
    v26[1] = sub_2723371E4;
    v27 = v51;
LABEL_10:

    return v27(0);
  }

  v40 = *(v0 + 248);
  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v44 = *(v0 + 96);
  v43 = *(v0 + 104);
  v46 = *(v0 + 80);
  v45 = *(v0 + 88);
  v47 = *(v0 + 72);
  v52 = *(v0 + 64);
  swift_willThrow();
  sub_27233F36C(v40, 1);
  sub_2723373EC();

  v48 = *(v0 + 8);
  v49 = *(v0 + 248);

  return v48();
}

uint64_t sub_272336F78()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_272337090, 0, 0);
}

uint64_t sub_272337090()
{
  v1 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 152), *(v0 + 48));
  v2 = sub_27237725C();
  v3 = sub_272377EAC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v2, v3, "Stop(): done", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v5(v6, v7);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2723371E4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2723372FC, 0, 0);
}

uint64_t sub_2723372FC()
{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v12 = v0[8];
  swift_willThrow();
  sub_27233F36C(v1, 1);
  sub_2723373EC();

  v9 = v0[1];
  v10 = v0[31];

  return v9();
}

void sub_2723373EC()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_2722C389C();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_27237725C();
    v9 = sub_272377EAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Stop(): set requestInfo to nil after stopping spotter", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v6) + 0x128))(0);
    if ((*((*v11 & *v6) + 0x138))(v12))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    (*((*v11 & *v6) + 0x140))(0);
  }
}

void sub_272337680(void *a1, uint64_t a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v25 - v14;
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x120))(v13))
  {

    v16 = [a1 format];
    sub_27233F16C(v16);

    if (!v3)
    {
      [*(v2 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock) lock];
      v17 = sub_272377C3C();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = a1;
      v19[6] = a2;
      v20 = a1;
      sub_27222A1F0(0, 0, v15, &unk_272386280, v19);
    }
  }

  else
  {
    v21 = sub_2722C389C();
    (*(v7 + 16))(v10, v21, v6);
    v22 = sub_27237725C();
    v23 = sub_272377E8C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2721E4000, v22, v23, "Called addAudio() when keyword spotter was not running", v24, 2u);
      MEMORY[0x2743C69C0](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_27233798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_27237728C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272337A50, 0, 0);
}

uint64_t sub_272337A50()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *((*MEMORY[0x277D85000] & *Strong) + 0x218);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_272337BF0;
    v7 = v0[6];
    v6 = v0[7];

    return v12(v7, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = v0[5];
    sub_272337F2C();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_272337BF0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_272337D78;
  }

  else
  {

    v4 = sub_272337D0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272337D0C()
{
  v1 = v0[10];
  v2 = v0[5];
  sub_272337F2C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_272337D78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 104);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error adding audio: %@", v11, 0xCu);
    sub_2721F40F0(v12, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  sub_272337F2C();

  v17 = *(v0 + 8);

  return v17();
}

void sub_272337F2C()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock);
    [v7 unlock];
  }

  else
  {
    v8 = sub_2722C389C();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_27237725C();
    v10 = sub_272377E8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "Spotter was deallocated during addAudio task", v11, 2u);
      MEMORY[0x2743C69C0](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_2723380D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_27237728C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272338198, 0, 0);
}

uint64_t sub_272338198()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x120))())
  {
    v2 = *(v0 + 16);

    v3 = [v2 format];
    sub_27233F16C(v3);

    v17 = *((*v1 & **(v0 + 32)) + 0x218);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *v19 = v0;
    v19[1] = sub_272338460;
    v20 = *(v0 + 24);
    v21 = *(v0 + 32);
    v22 = *(v0 + 16);

    return v23(v22, v20);
  }

  else
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = sub_2722C389C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Called addAudioAsync() when keyword spotter was not running", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_272338460()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_272338578(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_27237728C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233863C, 0, 0);
}

uint64_t sub_27233863C()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x120))();
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(*v1 + 368);
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_272338828;

    return v9();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v6 = 0xD00000000000001ELL;
    v6[1] = 0x8000000272390DF0;
    swift_willThrow();
    v7 = *(v0 + 64);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_272338828(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_272338928, 0, 0);
}

uint64_t sub_272338928(uint64_t a1, uint64_t a2, Swift::OpaquePointer *a3)
{
  if (*(v3 + 112) == 1)
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
    v6 = *(v3 + 48);
    v7 = sub_2722C389C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v3 + 64);
    v12 = *(v3 + 72);
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    if (v10)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Ignoring audio since stop is pending", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v11, v13);
    v21 = *(v3 + 64);

    v20 = *(v3 + 8);
    goto LABEL_8;
  }

  v16.super.super.isa = *(v3 + 24);
  *(v3 + 16) = MEMORY[0x277D84F90];
  v16.super._impl = (v3 + 16);
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v16, a3);
  v17 = *(v3 + 16);
  *(v3 + 88) = v17;
  if (v18)
  {

    v19 = *(v3 + 64);

    v20 = *(v3 + 8);
LABEL_8:

    return v20();
  }

  v23 = *(**(v3 + 72) + 376);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v3 + 96) = v25;
  *v25 = v3;
  v25[1] = sub_272338BD4;
  v26 = *(v3 + 32);

  return v27(v17, v26);
}

uint64_t sub_272338BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_272338D5C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_272338CF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272338CF0()
{
  v1 = v0[9];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_272338D5C()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[13];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

void *sub_272338DD4(void *a1)
{
  v3 = v2;
  v5 = sub_272376E5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x60))(v8);
  if (result)
  {
    v13 = result;
    if ([result respondsToSelector_])
    {
      v14 = *((*v11 & *v1) + 0x120);
      v15 = swift_unknownObjectRetain();
      v16 = v14(v15);
      if (v16)
      {
        v17 = v16;
        v18 = (*(*v16 + 424))();
        if (v3)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          v20 = *(*v17 + 144);
          v25 = v18;
          v21 = v19;
          v20();
          v25 = v21;
          v22 = sub_2723777FC();
          v23 = sub_272376E1C();
          if (a1)
          {
            a1 = sub_272377AEC();
          }

          [v13 keywordSpotterDidStopWithSummaryWithJson:v22 uuid:v23 perfLogs:a1];

          swift_unknownObjectRelease_n();

          return (*(v6 + 8))(v10, v5);
        }
      }

      else
      {
        return swift_unknownObjectRelease_n();
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_272339068(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v7 frameCapacity:a1];
    if (v9)
    {
      v10 = v9;
      [v9 setFrameLength_];
      v11 = [v10 int16ChannelData];
      if (v11)
      {
        v12 = a1 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = 0;
        do
        {
          *(*v11 + v13) = 0;
          v13 += 2;
        }

        while (2 * a1 != v13);
      }
    }

    else
    {
      v10 = 0x8000000272389140;
      sub_2722032B4();
      swift_allocError();
      *v19 = 0xD000000000000019;
      v19[1] = 0x8000000272389140;
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_2722C3774();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Failed to create audio format", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = 0x8000000272389120;
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD00000000000001DLL;
    v18[1] = 0x8000000272389120;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_272339310(void *a1, float a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 frameLength];
    v7 = v6;
    __C = 32767.0;
    __B = -32768.0;
    v14 = a2;
    if (v6)
    {
      v8 = sub_272377B5C();
      *(v8 + 16) = v7;
      bzero((v8 + 32), 4 * v7);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    vDSP_vflt16(*v5, 1, (v8 + 32), 1, v7);

    v11 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    MEMORY[0x2743C6C10](v8 + 32, 1, &v14, v11 + 32, 1, v7);

    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2721FF8B4(0, *(v11 + 2), 0, v11);
    }

    vDSP_vclip(v11 + 8, 1, &__B, &__C, v12 + 8, 1, v7);

    vDSP_vfixr16(v12 + 8, 1, *v5, 1, v7);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    v9[1] = 0x8000000272390E10;
    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

int64_t sub_27233951C(uint64_t a1, float a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  v14 = MEMORY[0x277D85000];
  v15 = (*MEMORY[0x277D85000] & *v2) + 432;
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x1B0);
  result = v16(v11);
  if (result < 1)
  {
    v44 = v6;
    v19 = *(a1 + 16);
    if (v19)
    {
      v42 = v5;
      v43 = v15;
      v20 = 0;
      v21 = a1 + 32;
      while (1)
      {
        v22 = __OFADD__(v20, 3) ? 0x7FFFFFFFFFFFFFFFLL : v20 + 3;
        if (v20 < 0)
        {
          break;
        }

        if (v20 + 1 >= v19)
        {
          goto LABEL_28;
        }

        if (v20 + 2 >= v19)
        {
          goto LABEL_29;
        }

        v23 = (((*(v21 + 4 * v20) + 0.0) + *(v21 + 4 * (v20 + 1))) + *(v21 + 4 * (v20 + 2))) / 3.0;
        result = (*((*v14 & *v2) + 0x198))();
        if (result)
        {
          if (v23 > a2)
          {
            (*((*v14 & *v2) + 0x1B8))(1);
            type metadata accessor for VARequestContext(0);
            v31 = mach_absolute_time();
            v32 = (*((*v14 & *v2) + 0x1C8))();
            v33 = v31 >= v32;
            result = v31 - v32;
            if (v33)
            {
              v34 = sub_2722310BC(result);
              v35 = sub_2722C389C();
              v36 = v44;
              v37 = v42;
              (*(v44 + 16))(v13, v35, v42);
              v38 = sub_27237725C();
              v39 = sub_272377E7C();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 134218496;
                *(v40 + 4) = v34;
                *(v40 + 12) = 2048;
                *(v40 + 14) = v23;
                *(v40 + 22) = 2048;
                *(v40 + 24) = a2;
                _os_log_impl(&dword_2721E4000, v38, v39, "Speech stopped in %f secs, silence probability %f > %f, wait for one more chunk", v40, 0x20u);
                MEMORY[0x2743C69C0](v40, -1, -1);
              }

              result = (*(v36 + 8))(v13, v37);
              v18 = 0;
              return v18 | ((v16(result) > 0) << 16);
            }

LABEL_30:
            __break(1u);
            return result;
          }
        }

        else if (v23 < a2)
        {
          (*((*v14 & *v2) + 0x1A0))(1);
          v24 = mach_absolute_time();
          (*((*v14 & *v2) + 0x1D0))(v24);
          v25 = sub_2722C389C();
          v26 = v44;
          v27 = v42;
          (*(v44 + 16))(v10, v25, v42);
          v28 = sub_27237725C();
          v29 = sub_272377E7C();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 134218240;
            *(v30 + 4) = v23;
            *(v30 + 12) = 2048;
            *(v30 + 14) = a2;
            _os_log_impl(&dword_2721E4000, v28, v29, "Speech started, silence probability %f < %f", v30, 0x16u);
            MEMORY[0x2743C69C0](v30, -1, -1);
          }

          result = (*(v26 + 8))(v10, v27);
          v18 = 1;
          return v18 | ((v16(result) > 0) << 16);
        }

        v20 = v22;
        if (v22 >= v19)
        {
          v18 = 0;
          return v18 | ((v16(result) > 0) << 16);
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v18 = 0;
  }

  else
  {
    (*((*v14 & *v2) + 0x1A0))(0);
    result = (*((*v14 & *v2) + 0x1B8))(0);
    v18 = 256;
  }

  return v18 | ((v16(result) > 0) << 16);
}

void sub_272339AD0(uint64_t a1)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VARuntimeParameters();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v11);
  if (!v15)
  {
    sub_2722032B4();
    swift_allocError();
    *v31 = 0x75716552206C694ELL;
    v31[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v16 = v15;
  v51 = v2;
  v17 = (*((*v14 & *v1) + 0x150))();
  if (!v17)
  {
    sub_2722032B4();
    swift_allocError();
    *v32 = 0xD000000000000011;
    v32[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_10:

    return;
  }

  v18 = v17;
  v19 = (*((*v14 & *v1) + 0x78))();
  if (!v19)
  {
    sub_2722032B4();
    swift_allocError();
    *v33 = 0xD000000000000011;
    v33[1] = 0x8000000272388910;
    swift_willThrow();

    goto LABEL_10;
  }

  v49 = v19;
  v50 = v18;
  v48 = v5;
  type metadata accessor for VAInstrumentedKeywordResult();
  v20 = (*(*a1 + 104))();
  v21 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v20);
  v22 = *(*a1 + 128);

  v24 = v22(v23);
  v25 = *(*v21 + 136);
  v46 = *v21 + 136;
  v47 = v25;
  v26 = (v25)(v24);
  v27 = (*(*a1 + 152))(v26);
  v28 = (*(*v21 + 160))(v27);
  (*(*v16 + 312))(v28);
  v29 = sub_27234F188();
  v30 = sub_27226ABB0(v13, type metadata accessor for VARuntimeParameters);
  if ((v29 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v22(v30))
  {

LABEL_23:
    v42 = v51;
    v43 = (*(*v16 + 432))(v21);
    if (!v42)
    {
      (*(*v16 + 144))(v43);
      (*(*v50 + 80))(v21, v8);
      (*(v48 + 8))(v8, v4);
    }

    return;
  }

  v34 = (*(*v16 + 392))();
  v35 = *(v34 + 16);
  if (!v35)
  {

    v38 = MEMORY[0x277D84F90];
LABEL_21:
    v47(v38);
    goto LABEL_22;
  }

  v52 = MEMORY[0x277D84F90];
  v45 = v34;
  sub_272215F8C(0, v35, 0);
  v36 = v45;
  v37 = 32;
  v38 = v52;
  while (1)
  {
    v39 = *(v36 + v37);
    if ((LODWORD(v39) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v39 <= -32769.0)
    {
      goto LABEL_27;
    }

    if (v39 >= 32768.0)
    {
      goto LABEL_28;
    }

    v52 = v38;
    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_272215F8C((v40 > 1), v41 + 1, 1);
      v36 = v45;
      v38 = v52;
    }

    *(v38 + 16) = v41 + 1;
    *(v38 + 2 * v41 + 32) = v39;
    v37 += 4;
    if (!--v35)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_27233A15C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = sub_2723777FC();
      [v2 keywordSpotterDidUpdateScoresWithVerboseLog_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_27233A25C(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v110 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v110 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v110 - v15;
  (*(*a1 + 208))(&v126, v14);
  v17 = v127;
  if (v127)
  {
    v111 = v13;
    v112 = v16;
    v120 = v7;
    v121 = v3;
    v122 = v2;
    v18 = v128;
    v119 = v126;
    v19 = v133;
    v116 = v132;
    LODWORD(v118) = v131;
    LODWORD(v115) = v130;
    LODWORD(v114) = v129;
    v117 = type metadata accessor for VAKeywordSpottedEvent();
    v20 = *(*a1 + 152);

    v113 = v20(v21);
    v22 = (*(*a1 + 400))();
    v23 = (*(*a1 + 128))();
    v24 = (*(*a1 + 472))();
    v26 = v25;
    v27 = *(*a1 + 544);

    v29 = v27(v28);
    LOBYTE(v27) = v30;
    v31 = (*(*a1 + 496))();
    v32 = (*(*a1 + 568))();
    v34 = sub_272345314(v119, v17, v113, v114 & 1, v115 & 1, v118 & 1, v23, v24, v18, v22, v26, v116, v19, v29, v27 & 1, v31, v32, v33);
    sub_2721F40F0(&v126, &qword_2808819E0, &qword_27237D890);
    v35 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech];
    if (v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech + 8])
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech];
    }

    v37 = v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore] == 0;
    v38 = 0x3E6863656570733CLL;
    if (v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore])
    {
      v39 = 0x3E6C69733CLL;
    }

    else
    {
      v39 = 0x3E6863656570733CLL;
    }

    v117 = v39;
    if (v37)
    {
      v40 = 0xE800000000000000;
    }

    else
    {
      v40 = 0xE500000000000000;
    }

    v41 = v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter];
    if (v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter])
    {
      v38 = 0x3E6C69733CLL;
    }

    *&v118 = v38;
    if (v41)
    {
      v42 = 0xE500000000000000;
    }

    else
    {
      v42 = 0xE800000000000000;
    }

    v43 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
    v44 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8];
    v45 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword + 8];
    if (v45)
    {
      v46 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword];
      v124 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
      v125 = v44;

      MEMORY[0x2743C4AD0](124, 0xE100000000000000);
      MEMORY[0x2743C4AD0](v46, v45);

      v43 = v124;
      v44 = v125;
    }

    else
    {
      v51 = *&v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8];
    }

    if ((v34[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_speechDuring] & 1) == 0)
    {
      v124 = 2763306;
      v125 = 0xE300000000000000;
      MEMORY[0x2743C4AD0](v43, v44);

      MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
      v43 = v124;
      v44 = v125;
    }

    v52 = sub_2722C389C();
    v54 = v121 + 16;
    v53 = *(v121 + 16);
    v116 = v53;
    v119 = v34;
    if (v36 <= 0.0)
    {
      v66 = v111;
      v53(v111, v52, v122);
      v67 = v34;

      v68 = sub_27237725C();
      v69 = sub_272377E6C();

      LODWORD(v115) = v69;
      v70 = v69;
      v71 = v68;
      if (os_log_type_enabled(v68, v70))
      {
        v113 = v42;
        v114 = v54;
        v72 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v124 = v112;
        *v72 = 136316162;
        v73 = v67;
        if (*&v67[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8])
        {
          v74 = *&v67[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
          v75 = *&v67[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8];
        }

        else
        {
          v74 = 1701736302;
          v75 = 0xE400000000000000;
        }

        v95 = v119;

        v96 = sub_2721FFD04(v74, v75, &v124);

        *(v72 + 4) = v96;
        *(v72 + 12) = 2080;
        v97 = sub_2721FFD04(v117, v40, &v124);

        *(v72 + 14) = v97;
        *(v72 + 22) = 2080;
        v98 = sub_2721FFD04(v43, v44, &v124);

        *(v72 + 24) = v98;
        *(v72 + 32) = 2080;
        v99 = sub_2721FFD04(v118, v113, &v124);

        *(v72 + 34) = v99;
        *(v72 + 42) = 2080;
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_27237AF80;
        v101 = *&v73[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score];
        v102 = MEMORY[0x277D83B08];
        *(v100 + 56) = MEMORY[0x277D83A90];
        *(v100 + 64) = v102;
        *(v100 + 32) = v101;
        v103 = sub_27237786C();
        v105 = sub_2721FFD04(v103, v104, &v124);

        *(v72 + 44) = v105;
        _os_log_impl(&dword_2721E4000, v71, v115, "Result: [secondpass: %s] %s%s%s:%s", v72, 0x34u);
        v106 = v112;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v106, -1, -1);
        MEMORY[0x2743C69C0](v72, -1, -1);

        v76 = (*(v121 + 8))(v111, v122);
        goto LABEL_38;
      }

      v76 = (*(v121 + 8))(v66, v122);
    }

    else
    {
      v111 = v43;
      v55 = v112;
      v56 = v122;
      v53(v112, v52, v122);
      v57 = v34;

      v58 = sub_27237725C();
      v59 = v42;
      v60 = sub_272377E6C();

      LODWORD(v113) = v60;
      v115 = v58;
      if (os_log_type_enabled(v58, v60))
      {
        v61 = v59;
        v114 = v54;
        v62 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v124 = v110;
        *v62 = 136316418;
        v63 = v111;
        if (*&v57[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8])
        {
          v64 = *&v57[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
          v65 = *&v57[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8];
        }

        else
        {
          v64 = 1701736302;
          v65 = 0xE400000000000000;
        }

        v77 = sub_2721FFD04(v64, v65, &v124);

        *(v62 + 4) = v77;
        *(v62 + 12) = 2080;
        v78 = sub_2721FFD04(v117, v40, &v124);

        *(v62 + 14) = v78;
        *(v62 + 22) = 2080;
        v79 = sub_2721FFD04(v63, v44, &v124);

        *(v62 + 24) = v79;
        *(v62 + 32) = 2080;
        v80 = sub_2721FFD04(v118, v61, &v124);

        *(v62 + 34) = v80;
        *(v62 + 42) = 2080;
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v81 = swift_allocObject();
        v118 = xmmword_27237AF80;
        *(v81 + 16) = xmmword_27237AF80;
        v82 = *&v57[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score];
        v83 = MEMORY[0x277D83B08];
        *(v81 + 56) = MEMORY[0x277D83A90];
        *(v81 + 64) = v83;
        *(v81 + 32) = v82;
        v84 = sub_27237786C();
        v86 = sub_2721FFD04(v84, v85, &v124);

        *(v62 + 44) = v86;
        *(v62 + 52) = 2080;
        v87 = swift_allocObject();
        v88 = MEMORY[0x277D839F8];
        *(v87 + 16) = v118;
        v89 = MEMORY[0x277D83A80];
        *(v87 + 56) = v88;
        *(v87 + 64) = v89;
        *(v87 + 32) = v36;
        v90 = sub_27237786C();
        v92 = sub_2721FFD04(v90, v91, &v124);

        *(v62 + 54) = v92;
        v93 = v115;
        _os_log_impl(&dword_2721E4000, v115, v113, "Result: [secondpass: %s] %s%s%s:%s %s secs after end of speech", v62, 0x3Eu);
        v94 = v110;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v94, -1, -1);
        MEMORY[0x2743C69C0](v62, -1, -1);

        v76 = (*(v121 + 8))(v112, v122);
      }

      else
      {

        v76 = (*(v121 + 8))(v55, v56);
      }
    }

    v95 = v119;
LABEL_38:
    v107 = MEMORY[0x277D85000];
    v108 = (*((*MEMORY[0x277D85000] & *v123) + 0x60))(v76);
    if (v108)
    {
      [v108 keywordSpotterDidDetectKeywordWithEvent_];
      v108 = swift_unknownObjectRelease();
    }

    v109 = (*((*v107 & *v123) + 0x120))(v108);
    if (v109)
    {
      (*(*v109 + 408))(a1);
    }

    return;
  }

  v47 = sub_2722C389C();
  (*(v3 + 16))(v10, v47, v2);
  v48 = sub_27237725C();
  v49 = sub_272377E8C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2721E4000, v48, v49, "Did not actually have a keyword in keywordSpotterShouldTriggerKeyword", v50, 2u);
    MEMORY[0x2743C69C0](v50, -1, -1);
  }

  (*(v3 + 8))(v10, v2);
}

uint64_t sub_27233B140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_2721F065C(&qword_2808830E8, &unk_2723862A0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for VASpeechBiasData();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_272376DFC();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233B2BC, 0, 0);
}

uint64_t sub_27233B2BC()
{
  *(v0 + 48) = *(v0 + 64);
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v32 = *(v0 + 136);
  v4 = *(v0 + 80);
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v5 = sub_2723777CC();
  v7 = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v6;
  sub_272376DEC();
  sub_272376DAC();
  v8 = *(v3 + 8);
  *(v0 + 184) = v8;
  *(v0 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = v8(v2, v32);
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x180))(v9);
  if (*(v10 + 16) && (v11 = sub_27220038C(v5, v7), (v12 & 1) != 0))
  {
    v13 = *(v0 + 160);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    sub_27233F4E8(*(v10 + 56) + *(*(v0 + 104) + 72) * v11, v15, type metadata accessor for VASpeechBiasData);

    sub_27233F6BC(v15, v14, type metadata accessor for VASpeechBiasData);
    v17 = *(v16 + 24);
    if (sub_272376DBC())
    {
      v8(*(v0 + 160), *(v0 + 136));

      v18 = *(v0 + 120);
      v20 = *(v0 + 152);
      v19 = *(v0 + 160);
      v21 = *(v0 + 112);
      v22 = *(v0 + 88);
      sub_27233F6BC(*(v0 + 128), *(v0 + 56), type metadata accessor for VASpeechBiasData);

      v23 = *(v0 + 8);

      return v23();
    }

    sub_27226ABB0(*(v0 + 128), type metadata accessor for VASpeechBiasData);
  }

  else
  {
  }

  v25 = *(v0 + 72);
  type metadata accessor for VASpeechAPI();
  v26 = type metadata accessor for VARuntimeParameters();
  v27 = *(v26 + 108);
  *(v0 + 216) = *(v25 + 88);
  v28 = *(v25 + *(v26 + 120));
  v29 = swift_task_alloc();
  *(v0 + 200) = v29;
  *v29 = v0;
  v29[1] = sub_27233B614;
  v30 = *(v0 + 112);
  v31 = *(v0 + 64);

  return static VASpeechAPI.createBiasData(_:_:_:customLMWeight:)(v30, v31, v25 + v27, (v0 + 216), v28);
}

uint64_t sub_27233B614()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);

    v5 = sub_27233B8F0;
  }

  else
  {
    v5 = sub_27233B730;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27233B730()
{
  v17 = v0[23];
  v18 = v0[24];
  v2 = v0[21];
  v1 = v0[22];
  v16 = v0[20];
  v3 = v0[17];
  v4 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  sub_27233F4E8(v0[14], v6, type metadata accessor for VASpeechBiasData);
  (*(v4 + 56))(v6, 0, 1, v5);
  v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x190))(v0 + 2);
  sub_27233B9A8(v6, v2, v1);
  v8(v0 + 2, 0);
  v17(v16, v3);
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[11];
  sub_27233F6BC(v0[14], v0[7], type metadata accessor for VASpeechBiasData);

  v14 = v0[1];

  return v14();
}

uint64_t sub_27233B8F0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v7 = *(v0 + 8);
  v8 = *(v0 + 208);

  return v7();
}

uint64_t sub_27233B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2721F065C(&qword_2808830E8, &unk_2723862A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for VASpeechBiasData();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2721F40F0(a1, &qword_2808830E8, &unk_2723862A0);
    sub_27233E230(a2, a3, v10);

    return sub_2721F40F0(v10, &qword_2808830E8, &unk_2723862A0);
  }

  else
  {
    sub_27233F6BC(a1, v14, type metadata accessor for VASpeechBiasData);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_27233E900(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_27233BB7C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v45 = a2;
  v46 = a1;
  v5 = type metadata accessor for VARuntimeParameters();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v43 = &v38 - v11;
  v13 = swift_allocObject();
  v42 = v13;
  *(v13 + 16) = 0;
  v44 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  v38 = v14 + 16;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = sub_272377C3C();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v41 = type metadata accessor for VARuntimeParameters;
  sub_27233F4E8(a3, v8, type metadata accessor for VARuntimeParameters);
  v17 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v15;
  v22 = v21 + v17;
  v23 = v42;
  sub_27233F6BC(v8, v22, v41);
  *(v21 + v18) = v45;
  v24 = v46;
  *(v21 + v19) = v46;
  v25 = v47;
  *(v21 + v40) = v47;
  *(v21 + v20) = v14;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v26 = v15;

  v27 = v24;
  v28 = v25;

  sub_27222A1F0(0, 0, v43, &unk_2723862B8, v21);

  sub_272377F5C();
  v29 = v44;
  swift_beginAccess();
  v30 = *v29;
  if (v30)
  {
    goto LABEL_2;
  }

  v32 = v39;
  swift_beginAccess();
  v30 = *(v14 + 32);
  if (!v30)
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD000000000000041;
    v37[1] = 0x8000000272390E40;
LABEL_2:
    swift_willThrow();
    v31 = v30;

    return;
  }

  v33 = *(v14 + 48);
  v34 = *(v14 + 40);
  v36 = *(v14 + 16);
  v35 = *(v14 + 24);

  *v32 = v36;
  *(v32 + 8) = v35;
  *(v32 + 16) = v30;
  *(v32 + 24) = v34;
  *(v32 + 32) = v33 & 1;
}

uint64_t sub_27233BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v18;
  v8[19] = v19;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v10 = sub_272376EBC();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v13 = sub_27237728C();
  v8[24] = v13;
  v14 = *(v13 - 8);
  v8[25] = v14;
  v15 = *(v14 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233C0B4, 0, 0);
}

uint64_t sub_27233C0B4()
{
  v44 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v5 + 88);
  v7 = sub_2722C389C();
  *(v0 + 232) = v7;
  v8 = *(v3 + 16);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);

  v9 = sub_27237725C();
  v10 = sub_272377E6C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 224);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  if (v11)
  {
    v15 = *(v0 + 120);
    v38 = v5;
    v16 = swift_slowAlloc();
    v37 = v12;
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315906;
    v18 = MEMORY[0x2743C4C60](v15, MEMORY[0x277D837D0]);
    v20 = sub_2721FFD04(v18, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    v41 = v6;
    *(v16 + 14) = VASpeechBiasOptions.useJITGrammar.getter() & 1;
    *(v16 + 18) = 1024;
    v42 = v6;
    *(v16 + 20) = VASpeechBiasOptions.useContactLM.getter() & 1;
    *(v16 + 24) = 1024;
    v43 = v6;
    *(v16 + 26) = VASpeechBiasOptions.useCustomLM.getter() & 1;
    _os_log_impl(&dword_2721E4000, v9, v10, "Checker: look for %s, Jit %{BOOL}d, contact %{BOOL}d, custom %{BOOL}d", v16, 0x1Eu);
    sub_2722039C8(v17);
    MEMORY[0x2743C69C0](v17, -1, -1);
    v21 = v16;
    v5 = v38;
    MEMORY[0x2743C69C0](v21, -1, -1);

    v22 = *(v14 + 8);
    v22(v37, v13);
  }

  else
  {

    v22 = *(v14 + 8);
    v22(v12, v13);
  }

  *(v0 + 256) = v22;
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v25 = *(v0 + 168);
  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  *(v0 + 49) = *(v27 + 89);
  v28 = type metadata accessor for VARuntimeParameters();
  (*(v24 + 16))(v23, v27 + *(v28 + 108), v25);
  *(v0 + 50) = *(v5 + 88);
  v29 = *((*MEMORY[0x277D85000] & *v26) + 0x258);
  v39 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 264) = v31;
  *v31 = v0;
  v31[1] = sub_27233C40C;
  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);

  return v39(v32, v34, v35);
}

uint64_t sub_27233C40C()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  *(v3 + 272) = v0;

  if (v0)
  {
    (*(*(v3 + 176) + 8))(*(v3 + 184), *(v3 + 168));

    return MEMORY[0x2822009F8](sub_27233CA64, 0, 0);
  }

  else
  {
    type metadata accessor for VASpeechAPI();
    v4 = swift_task_alloc();
    *(v3 + 280) = v4;
    *v4 = v3;
    v4[1] = sub_27233C5C8;
    v5 = *(v3 + 184);
    v6 = *(v3 + 160);
    v8 = *(v3 + 120);
    v7 = *(v3 + 128);

    return static VASpeechAPI.recognize(_:_:_:_:_:_:_:_:)(v3 + 16, v7, (v3 + 49), v8, v5, (v3 + 50), v6, 0, 1.0);
  }
}

uint64_t sub_27233C5C8()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 288) = v0;

  sub_27226ABB0(v6, type metadata accessor for VASpeechBiasData);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_27233CC74;
  }

  else
  {
    v7 = sub_27233C770;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_27233C770()
{
  v46 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  LODWORD(v6) = *(v0 + 48);
  (*(v0 + 240))(*(v0 + 216), *(v0 + 232), *(v0 + 192));

  v7 = sub_27237725C();
  v8 = sub_272377E6C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 256);
  v11 = *(v0 + 216);
  v43 = *(v0 + 200);
  v44 = *(v0 + 192);
  if (v9)
  {
    v42 = v6;
    v6 = swift_slowAlloc();
    v40 = v10;
    v12 = v5;
    v13 = swift_slowAlloc();
    v45 = v13;
    *v6 = 136315650;
    v39 = v11;
    if (v2)
    {
      v14 = v3;
    }

    else
    {
      v14 = 7104878;
    }

    v41 = v3;
    if (v2)
    {
      v15 = v2;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_2721FFD04(v14, v15, &v45);

    *(v6 + 4) = v16;
    *(v6 + 12) = 2048;
    v17 = v12;
    if (v42)
    {
      v17 = 0.0;
    }

    *(v6 + 14) = v17;
    *(v6 + 22) = 2080;

    v19 = MEMORY[0x2743C4C60](v18, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_2721FFD04(v19, v21, &v45);

    *(v6 + 24) = v22;
    v3 = v41;
    _os_log_impl(&dword_2721E4000, v7, v8, "SecondPass: %s conf: %f, nBest: %s", v6, 0x20u);
    swift_arrayDestroy();
    v23 = v13;
    v5 = v12;
    MEMORY[0x2743C69C0](v23, -1, -1);
    v24 = v6;
    LOBYTE(v6) = v42;
    MEMORY[0x2743C69C0](v24, -1, -1);

    v40(v39, v44);
  }

  else
  {

    v10(v11, v44);
  }

  v25 = *(v0 + 144);
  swift_beginAccess();
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v28 = *(v25 + 32);
  v29 = *(v25 + 40);
  *(v25 + 16) = v3;
  *(v25 + 24) = v2;
  *(v25 + 32) = v4;
  *(v25 + 40) = v5;
  v30 = *(v25 + 48);
  *(v25 + 48) = v6;
  sub_27233FBDC(v26, v27, v28);
  v32 = *(v0 + 216);
  v31 = *(v0 + 224);
  v33 = *(v0 + 208);
  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = *(v0 + 104);
  sub_272377F6C();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_27233CA64()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v1;
  v9 = v1;

  v3(v5, v4, v6);
  v10 = v1;
  v11 = sub_27237725C();
  v12 = sub_272377E8C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2721E4000, v11, v12, "VASpeechAPI error: %@", v13, 0xCu);
    sub_2721F40F0(v14, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v14, -1, -1);
    MEMORY[0x2743C69C0](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 200) + 8;
  (*(v0 + 256))(*(v0 + 208), *(v0 + 192));
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 104);
  sub_272377F6C();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_27233CC74()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v1;
  v9 = v1;

  v3(v5, v4, v6);
  v10 = v1;
  v11 = sub_27237725C();
  v12 = sub_272377E8C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2721E4000, v11, v12, "VASpeechAPI error: %@", v13, 0xCu);
    sub_2721F40F0(v14, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v14, -1, -1);
    MEMORY[0x2743C69C0](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 200) + 8;
  (*(v0 + 256))(*(v0 + 208), *(v0 + 192));
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 104);
  sub_272377F6C();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_27233CE84(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_27237728C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_27237768C();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233D034, 0, 0);
}

uint64_t sub_27233D034()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 104) = mach_absolute_time();
  type metadata accessor for VASpeechAPI();
  v11 = *(v3 + 89);
  VATaskHintCommand.speechTaskHint()(v1);
  v4 = *(type metadata accessor for VARuntimeParameters() + 108);
  *(v0 + 256) = 0;
  VASpeechBiasData.init()(v2);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_27233D144;
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = MEMORY[0x277D84F90];

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v6, v7, v9, v3 + v4, (v0 + 256), v8);
}

uint64_t sub_27233D144(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[14];
  v17 = *v3;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v7 = v4[8];
    v6 = v4[9];
    v8 = v4[7];
    sub_27226ABB0(v4[6], type metadata accessor for VASpeechBiasData);
    (*(v7 + 8))(v6, v8);
    v9 = sub_27233DE8C;
  }

  else
  {
    v11 = v4[11];
    v10 = v4[12];
    v13 = v4[9];
    v12 = v4[10];
    v14 = v4[7];
    v15 = v4[8];
    sub_27226ABB0(v4[6], type metadata accessor for VASpeechBiasData);
    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);

    v9 = sub_27233D30C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_27233D30C()
{
  v1 = v0[15];
  v0[17] = sub_27237750C();
  v0[18] = sub_2723774EC();
  v0[19] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = xmmword_27237AF80;
  v3 = sub_27233F87C();
  v0[21] = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277CDCC40] + 4);
  v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_27233D42C;

  return v7(v2);
}

uint64_t sub_27233D42C(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 257) = a1;

  return MEMORY[0x2822009F8](sub_27233D568, 0, 0);
}

uint64_t sub_27233D568()
{
  if (*(v0 + 257) == 1)
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_27233DFDC(*(v0 + 104));

    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = sub_2722C389C();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_27237725C();
    v13 = sub_272377E8C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2721E4000, v12, v13, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v14, 2u);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = *(v0 + 120);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 24);

    (*(v20 + 8))(v19, v21);
    *(v0 + 184) = sub_2723774EC();
    v22 = swift_allocObject();
    *(v0 + 192) = v22;
    *(v22 + 16) = xmmword_27237AF80;
    *(v22 + 32) = v18;
    *(v22 + 40) = v15;
    v23 = *(MEMORY[0x277CDCC58] + 4);
    v25 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_27233D7D4;

    return v25(v22, 0x7463416563696F56, 0xEC000000736E6F69);
  }
}

uint64_t sub_27233D7D4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_27233D910, 0, 0);
}

uint64_t sub_27233D910()
{
  if (v0[26])
  {
    v1 = *(MEMORY[0x277CDCD70] + 4);
    v2 = swift_task_alloc();
    v0[27] = v2;
    *v2 = v0;
    v2[1] = sub_27233DA88;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v0[21];
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[15];
    v0[29] = sub_2723774EC();
    v7 = swift_allocObject();
    v0[30] = v7;
    *(v7 + 16) = xmmword_27237AF80;
    *(v7 + 32) = v6;
    *(v7 + 40) = v3;
    v8 = *(MEMORY[0x277CDCC40] + 4);
    v11 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_27233DCA4;

    return v11(v7);
  }
}

uint64_t sub_27233DA88()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_27233DF2C;
  }

  else
  {

    v4 = sub_27233DBA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27233DBA4()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v0[29] = sub_2723774EC();
  v5 = swift_allocObject();
  v0[30] = v5;
  *(v5 + 16) = xmmword_27237AF80;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  v6 = *(MEMORY[0x277CDCC40] + 4);
  v9 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_27233DCA4;

  return v9(v5);
}

uint64_t sub_27233DCA4(char a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 258) = a1;

  return MEMORY[0x2822009F8](sub_27233DDE0, 0, 0);
}

uint64_t sub_27233DDE0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 258);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_27233DFDC(*(v0 + 104));

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_27233DE8C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  sub_27233DFDC(v0[13]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_27233DF2C()
{
  v1 = v0[26];
  v2 = v0[15];

  v3 = v0[28];
  v4 = v0[12];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  sub_27233DFDC(v0[13]);

  v8 = v0[1];

  return v8(0);
}

unint64_t sub_27233DFDC(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VARequestContext(0);
  v7 = mach_absolute_time();
  v8 = v7 >= a1;
  result = v7 - a1;
  if (v8)
  {
    v10 = sub_2722310BC(result);
    v11 = sub_2722C389C();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_27237725C();
    v13 = sub_272377E7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_2721E4000, v12, v13, "Took %f seconds for prepareSpeechAPI()", v14, 0xCu);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_27233E214@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27233E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_27220038C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27233EB10();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for VASpeechBiasData();
    v22 = *(v15 - 8);
    sub_27233F6BC(v14 + *(v22 + 72) * v9, a3, type metadata accessor for VASpeechBiasData);
    sub_27233E714(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for VASpeechBiasData();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_27233E39C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VASpeechBiasData();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2721F065C(&qword_2808830F0, &qword_272386368);
  v44 = a2;
  result = sub_2723783DC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_27233F6BC(v31, v45, type metadata accessor for VASpeechBiasData);
      }

      else
      {
        sub_27233F4E8(v31, v45, type metadata accessor for VASpeechBiasData);
      }

      v32 = *(v12 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_27233F6BC(v45, *(v12 + 56) + v30 * v20, type metadata accessor for VASpeechBiasData);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_27233E714(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_27237874C();

      sub_27237790C();
      v13 = sub_27237878C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27233E900(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_27233EB10();
      goto LABEL_7;
    }

    sub_27233E39C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_27220038C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2723786BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for VASpeechBiasData() - 8) + 72) * v12;

    return sub_27233FC20(a1, v20);
  }

LABEL_13:
  sub_27233EA64(v12, a2, a3, a1, v18);
}

uint64_t sub_27233EA64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VASpeechBiasData();
  result = sub_27233F6BC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VASpeechBiasData);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_27233EB10()
{
  v1 = v0;
  v2 = type metadata accessor for VASpeechBiasData();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_2808830F0, &qword_272386368);
  v5 = *v0;
  v6 = sub_2723783CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_27233F4E8(v22 + v28, v33, type metadata accessor for VASpeechBiasData);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_27233F6BC(v27, *(v29 + 56) + v28, type metadata accessor for VASpeechBiasData);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_27233ED70(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_2808830F8, &unk_272386370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2721F065C(&qword_2808830F0, &qword_272386368);
    v8 = sub_2723783EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v10, v6, &qword_2808830F8, &unk_272386370);
      v12 = *v6;
      v13 = v6[1];
      result = sub_27220038C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for VASpeechBiasData();
      result = sub_27233F6BC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for VASpeechBiasData);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL _s12VoiceActions20VAKeywordSpotterBaseC22isSupportedAudioFormatySbSo07AVAudioI0CFZ_0(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isInterleaved])
  {
    v7 = sub_2722C389C();
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Audio format is interleaved, which is not the canonical format used by VoiceActions, but shouldn't matter for single channel.", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  [a1 sampleRate];
  return v11 == 16000.0 && [a1 channelCount] == 1 && objc_msgSend(a1, sel_commonFormat) == 3;
}

uint64_t sub_27233F16C(void *a1)
{
  result = _s12VoiceActions20VAKeywordSpotterBaseC22isSupportedAudioFormatySbSo07AVAudioI0CFZ_0(a1);
  if ((result & 1) == 0)
  {
    sub_27237820C();
    MEMORY[0x2743C4AD0](0xD00000000000003FLL, 0x8000000272391000);
    v3 = [a1 description];
    v4 = sub_27237782C();
    v6 = v5;

    MEMORY[0x2743C4AD0](v4, v6);

    MEMORY[0x2743C4AD0](0x466E6F6D6D6F6320, 0xEE003D74616D726FLL);
    [a1 commonFormat];
    type metadata accessor for AVAudioCommonFormat();
    sub_27237836C();
    MEMORY[0x2743C4AD0](0x7265746E49736920, 0xEF3D64657661656CLL);
    v7 = [a1 isInterleaved];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    MEMORY[0x2743C4AD0](v9, v10);

    sub_2722032B4();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_27233F334()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27233F36C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_27233F378()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27233F3C0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_27233798C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_27233F468()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27233F4A0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    v2 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_27233F4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27233F550()
{
  v1 = (type metadata accessor for VARuntimeParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  v10 = (v0 + v3);
  v11 = *v10;

  v12 = *(v10 + 8);

  v13 = *(v10 + 10);

  v14 = v1[29];
  v15 = sub_272376EBC();
  (*(*(v15 - 8) + 8))(&v10[v14], v15);
  v16 = *(v0 + v4);

  v17 = *(v0 + v7);

  v18 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_27233F6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27233F724()
{
  v2 = *(type metadata accessor for VARuntimeParameters() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 32);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_272211DBC;

  return sub_27233BF40(v14, v15, v16, v8, v0 + v3, v9, v10, v11);
}

unint64_t sub_27233F87C()
{
  result = qword_280882000;
  if (!qword_280882000)
  {
    sub_2723773AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882000);
  }

  return result;
}

uint64_t dispatch thunk of VAKeywordSpotterBase.addAudioAsyncNoChecks(buffer:hostTime:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x218);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_272211DBC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VAKeywordSpotterBase.prepareSpeechAPI(runtimeParameters:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x268);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722D6BA4;

  return v8(a1);
}

uint64_t sub_27233FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_27233FC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASpeechBiasData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AVAudioCommonFormat()
{
  if (!qword_280883100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280883100);
    }
  }
}

void (*sub_27233FCF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECC60;
}

uint64_t sub_27233FE4C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return a2(v3 + v6, a3);
}

uint64_t sub_27233FEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27233FF38(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_27233FF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27234006C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2723400B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27234016C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_27237834C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated;
  v16 = sub_27237832C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_beginAccess();
  *(v14 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v14 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_27237833C();
  (*(v8 + 32))(v14 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock, v11, v7);
  *(v14 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections) = MEMORY[0x277D84F90];
  v17 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(a3);
  return v17;
}

uint64_t sub_272340334(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = v73 - v12;
  v13 = type metadata accessor for VARuntimeParameters();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 208))(&v92, v15);
  v18 = v93;
  if (!v93)
  {
    v45 = sub_2722C389C();
    (*(v7 + 2))(v11, v45, v6);
    v46 = sub_27237725C();
    v47 = sub_272377E7C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v7;
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2721E4000, v46, v47, "Did not find a detection in StrategyLayerAVS:handleKeywordResult", v49, 2u);
      MEMORY[0x2743C69C0](v49, -1, -1);

      return v48[1](v11, v6);
    }

    else
    {

      return (*(v7 + 1))(v11, v6);
    }
  }

  v19 = v92;
  v20 = v94;

  v21 = sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);
  (*(*v1 + 176))(v21);
  v22 = VARuntimeParameters.keywordsToThresholds.getter();
  sub_272216BD8(v17);
  if (!*(v22 + 16))
  {

    goto LABEL_32;
  }

  v23 = sub_27220038C(v19, v18);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_32:

    sub_2722032B4();
    swift_allocError();
    *v50 = 0xD00000000000002ELL;
    v50[1] = 0x8000000272391040;
    return swift_willThrow();
  }

  v26 = *(*(v22 + 56) + 4 * v23);

  if (v26 >= v20)
  {
    return result;
  }

  result = sub_272340D30();
  if (result)
  {
    return result;
  }

  v78 = v6;
  v28 = (*(*v4 + 240))(&v87);
  v30 = v29;

  MEMORY[0x2743C4C30](v31);
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_272377B2C();
  }

  sub_272377B7C();
  v32 = (v28)(&v87, 0);
  v33 = *(*v4 + 224);
  v34 = *v4 + 224;
  v35 = (v33)(v32);
  v36 = v35 >> 62 ? sub_2723783AC() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v36 < 1)
  {
    return result;
  }

  v79 = sub_27232C2C4();
  v37 = *v79;
  v76 = v33;
  v75 = v34;
  v38 = (v33)();
  v39 = v38;
  v28 = v38 & 0xFFFFFFFFFFFFFF8;
  if (v38 >> 62)
  {
    v40 = sub_2723783AC();
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v7;
  v73[1] = v3;
  if (!v40)
  {
    v41 = 0;
    goto LABEL_36;
  }

  v3 = 0;
  v74 = 0;
  v7 = &v87;
  while (2)
  {
    v41 = v3;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2743C5370](v41, v39);
        v3 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v41 >= *(v28 + 16))
        {
          goto LABEL_49;
        }

        v42 = *(v39 + 8 * v41 + 32);

        v3 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      (*(*v42 + 208))(&v82);
      v87 = v82;
      v88 = v83;
      v89 = v84;
      v90 = v85;
      v91 = v86;
      if (!*(&v82 + 1))
      {
        break;
      }

      v43 = *&v88;

      sub_2721F40F0(&v87, &qword_2808819E0, &qword_27237D890);
      if (v37 < v43)
      {
        goto LABEL_27;
      }

LABEL_22:
      ++v41;
      if (v3 == v40)
      {
        v41 = v74;
        goto LABEL_36;
      }
    }

    v44 = *v79;

    if (v37 >= v44)
    {
      goto LABEL_22;
    }

LABEL_27:
    v74 = v41;
    if (v3 != v40)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v52 = v76(v51);
  if ((v52 & 0xC000000000000001) == 0)
  {
    v53 = v78;
    v54 = v77;
    if ((v41 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v41 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v55 = *(v52 + 8 * v41 + 32);

      goto LABEL_40;
    }

    __break(1u);
LABEL_56:

    __break(1u);
    goto LABEL_57;
  }

  v55 = MEMORY[0x2743C5370](v41, v52);
  v53 = v78;
  v54 = v77;
LABEL_40:

  v56 = sub_2722C389C();
  v57 = v80;
  (v54[2])(v80, v56, v53);

  v58 = sub_27237725C();
  v59 = sub_272377E7C();
  if (!os_log_type_enabled(v58, v59))
  {

    v54[1](v57, v53);
    goto LABEL_45;
  }

  LODWORD(v79) = v59;
  v60 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  v81 = v76;
  *v60 = 136315650;
  v61 = *(*v55 + 208);
  v61(&v87);
  v62 = *(&v87 + 1);
  if (!*(&v87 + 1))
  {
    goto LABEL_56;
  }

  v63 = v87;

  sub_2721F40F0(&v87, &qword_2808819E0, &qword_27237D890);
  v64 = sub_2721FFD04(v63, v62, &v81);

  *(v60 + 4) = v64;
  *(v60 + 12) = 2048;
  (v61)(&v82, v65);
  if (*(&v82 + 1))
  {
    v66 = *&v83;

    sub_2721F40F0(&v82, &qword_2808819E0, &qword_27237D890);
    *(v60 + 14) = v66;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v26;
    _os_log_impl(&dword_2721E4000, v58, v79, "FINAL AVS KEYWORD DETECTED ((^D&^)): %s with score %f, using threshold %f", v60, 0x20u);
    v67 = v76;
    sub_2722039C8(v76);
    MEMORY[0x2743C69C0](v67, -1, -1);
    MEMORY[0x2743C69C0](v60, -1, -1);

    v77[1](v80, v78);
LABEL_45:
    v68 = (*(*v4 + 232))(MEMORY[0x277D84F90]);
    if ((*(*v4 + 152))(v68))
    {
      v70 = v69;
      ObjectType = swift_getObjectType();
      (*(v70 + 16))(v55, ObjectType, v70);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v72 = 0xD00000000000001ELL;
      v72[1] = 0x8000000272391070;
      swift_willThrow();
    }
  }

  else
  {
LABEL_57:

    __break(1u);
  }

  return result;
}

uint64_t sub_272340D30()
{
  v1 = v0;
  v2 = sub_27237832C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for VARuntimeParameters();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 176))(v19);
  v22 = *(v21 + 2);
  v36 = *(v21 + 3);
  v23 = v21[32];
  v24 = sub_272216BD8(v21);
  if ((v23 & 1) == 0)
  {
    v33 = v22;
    v34 = v6;
    v35 = v11;
    v25 = *(*v1 + 200);
    v25(v24);
    v26 = *(v3 + 48);
    v27 = v26(v16, 1, v2);
    sub_2721F40F0(v16, &qword_280882B68, &unk_2723863E0);
    if (v27 != 1)
    {
      v28 = v34;
      v29 = sub_27237830C();
      v25(v29);
      result = v26(v14, 1, v2);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v31 = *(v3 + 8);
      v31(v28, v2);
      v31(v14, v2);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    v32 = v35;
    sub_27237830C();
    (*(v3 + 56))(v32, 0, 1, v2);
    (*(*v1 + 208))(v32);
  }

  return 0;
}

uint64_t sub_2723410C8()
{
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated, &qword_280882B68, &unk_2723863E0);
  v1 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections);
}

uint64_t sub_272341178()
{
  v0 = VAStrategyLayer.deinit();

  sub_272216300(v1 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated, &qword_280882B68, &unk_2723863E0);
  v2 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock;
  v3 = sub_27237834C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_27234128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VARuntimeParameters();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v13);
  v14 = type metadata accessor for VAStrategyAVS();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated;
  v19 = sub_27237832C();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  swift_beginAccess();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(v13, v17 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_27237833C();
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock, v9, v5);
  *(v17 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections) = MEMORY[0x277D84F90];
  v20 = sub_2722591B0();
  sub_272216BD8(v13);
  return v20;
}

uint64_t type metadata accessor for VAStrategyAVS()
{
  result = qword_280892160;
  if (!qword_280892160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27234154C()
{
  v0 = type metadata accessor for VARuntimeParameters();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2723022B8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_27237834C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t normalizeFP32Array(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_2722005AC((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5 + 32) = v6 / 32767.0;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t normalizeEmbedding(_:)(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  LODWORD(__C[0]) = 2143289344;
  vDSP_svesq((a1 + 32), 1, __C, v2);
  v3 = *__C;
  __C[0] = a1;
  __C[3] = __C;
  v7 = sqrtf(v3);
  result = sub_272305630(v2, sub_272343418);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncoderPredictionAVS.__allocating_init(embeddings:speech:normalize:)(uint64_t a1, uint64_t a2, char a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  result = swift_allocObject();
  if (a3)
  {
    v7 = *(a1 + 16);
    LODWORD(__C[0]) = 2143289344;
    v8 = result;
    vDSP_svesq((a1 + 32), 1, __C, v7);
    __C[0] = a1;
    v9 = MEMORY[0x28223BE20](*(a1 + 16));
    v10 = sub_272305630(v9, sub_27234366C);

    result = v8;
    a1 = v10;
  }

  *(result + 16) = a1;
  *(result + 24) = a2;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncoderPredictionAVS.init(embeddings:speech:normalize:)(uint64_t a1, uint64_t a2, char a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(a1 + 16);
    LODWORD(__C[0]) = 2143289344;
    v6 = a1;
    vDSP_svesq((a1 + 32), 1, __C, v5);
    __C[0] = v6;
    v7 = MEMORY[0x28223BE20](*(v6 + 16));
    v8 = sub_272305630(v7, sub_27234366C);

    a1 = v8;
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t EncoderPredictionAVS.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EncoderPredictionAVS.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_272341B20()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_272341B58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t VAAVSAudioEncoderModel.init(computeUnits:)(char *a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - v8;
  v10 = type metadata accessor for VASignpostInterval();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for VALog();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  v77 = v14;
  sub_27237836C();
  v75 = v13;
  static VALog.begin(_:_:)("VoiceActions with AVS", 21, 2u, v78, v79, v13);

  type metadata accessor for VAStrideConfiguration();
  v15 = static VAStrideConfiguration.forFlexibleAVS()();
  v16 = MEMORY[0x277D85000];
  v17 = *((*MEMORY[0x277D85000] & *v15) + 0xA0);
  *(v2 + 88) = v17();
  *(v2 + 96) = (*((*v16 & *v15) + 0xB8))();
  v18 = *((*v16 & *v15) + 0xD0);
  *(v2 + 104) = v18();
  v19 = v17();
  result = v18();
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v19 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_34;
  }

  *(v2 + 128) = v19 / result;
  *(v2 + 112) = (*((*v16 & *v15) + 0x1A8))();
  v21 = *((*v16 & *v15) + 0x100);
  *(v2 + 120) = v21();
  v22 = v21();
  result = v18();
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v22 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_35;
  }

  *(v2 + 136) = v22 / result;
  type metadata accessor for VAEspressoUtilsV2();
  v23 = sub_2721F7EE4();
  v24 = v76;
  sub_2723195D0(0xD00000000000001ELL, 0x8000000272391120, v23 & 1, &v80);
  if (v24)
  {
    sub_272272F68(v75);

LABEL_29:
    v63 = *(v2 + 80);

    type metadata accessor for VAAVSAudioEncoderModel();
    return swift_deallocPartialClassInstance();
  }

  v69 = 0;
  v25 = sub_2722C389C();
  v26 = v73;
  v27 = *(v73 + 16);
  v67 = v25;
  v68 = v73 + 16;
  v66 = v27;
  (v27)(v9);
  v84[0] = v80;
  v28 = v81;
  v83 = *(&v81 + 1);
  v85 = v81;
  v29 = v9;
  v30 = *(&v82 + 1);
  sub_272203A14(v84, &v78);
  sub_27228E4E4(&v85, &v78);
  sub_27228E4E4(&v83, &v78);

  v71 = v29;
  v31 = sub_27237725C();
  v32 = sub_272377E7C();
  v33 = os_log_type_enabled(v31, v32);
  v76 = v30;
  v70 = *(&v28 + 1);
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = *(v28 + 16);
    *(v34 + 12) = 2048;
    *(v34 + 14) = *(*(&v28 + 1) + 16);
    sub_272203A70(v84);
    sub_27228E554(&v85);
    sub_27228E554(&v83);

    _os_log_impl(&dword_2721E4000, v31, v32, "AVS model is loaded with %ld inputs and %ld outputs", v34, 0x16u);
    v35 = v34;
    v26 = v73;
    MEMORY[0x2743C69C0](v35, -1, -1);
  }

  else
  {
    sub_272203A70(v84);
    sub_27228E554(&v85);
    sub_27228E554(&v83);
  }

  v38 = *(v26 + 8);
  v36 = v26 + 8;
  v37 = v38;
  v38(v71, v74);
  if (*(v28 + 16) != 1)
  {
    goto LABEL_27;
  }

  sub_27220038C(0xD000000000000011, 0x8000000272391180);
  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_27;
  }

  v40 = sub_27220038C(0xD000000000000011, 0x8000000272391180);
  if ((v41 & 1) == 0)
  {
    goto LABEL_27;
  }

  v73 = v36;
  v42 = *(**(*(v28 + 56) + 8 * v40) + 200);

  v44 = v42(v43);

  if (*(v44 + 16) < 2uLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v45 = *(v44 + 40);

  if (v45 != 64)
  {
LABEL_27:
    sub_2722032B4();
    swift_allocError();
    *v62 = 0xD00000000000001BLL;
    v62[1] = 0x8000000272391160;
    swift_willThrow();

    sub_272203A70(v84);
    sub_27228E554(&v85);
    sub_27228E554(&v83);

LABEL_28:

    sub_272272F68(v75);
    goto LABEL_29;
  }

  v46 = v70;
  if (*(v70 + 16) != 3)
  {
    goto LABEL_31;
  }

  sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (!*(v46 + 16))
  {
    goto LABEL_31;
  }

  v48 = sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367);
  if ((v49 & 1) == 0)
  {
    goto LABEL_31;
  }

  v50 = *(**(*(v46 + 56) + 8 * v48) + 200);

  v52 = v50(v51);

  if (*(v52 + 16) < 2uLL)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v53 = *(v52 + 40);

  if (v53 != 320)
  {
LABEL_31:
    sub_2722032B4();
    swift_allocError();
    *v64 = 0xD00000000000001CLL;
    v64[1] = 0x80000002723911A0;
    swift_willThrow();

    sub_272203A70(v84);
    sub_27228E554(&v85);
    sub_27228E554(&v83);

    goto LABEL_28;
  }

  v54 = v81;
  *(v2 + 16) = v80;
  *(v2 + 32) = v54;
  *(v2 + 48) = v82;
  type metadata accessor for VAAVSFeatureExtract();
  sub_272203A14(v84, &v78);
  sub_27228E4E4(&v85, &v78);
  sub_27228E4E4(&v83, &v78);

  *(v2 + 64) = VAAVSFeatureExtract.__allocating_init()(v55);
  *(v2 + 72) = -1;
  v56 = v72;
  v57 = v74;
  v66(v72, v67, v74);
  v58 = sub_27237725C();
  v59 = sub_272377E7C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = 64;
    _os_log_impl(&dword_2721E4000, v58, v59, "VAFeatureExtract created with %ld filters", v60, 0xCu);
    MEMORY[0x2743C69C0](v60, -1, -1);
  }

  v37(v56, v57);
  v61 = v75;
  VASignpostInterval.end(_:)(0);

  sub_272203A70(v84);
  sub_27228E554(&v85);
  sub_27228E554(&v83);

  sub_272272F68(v61);
  return sub_2722591B0();
}

uint64_t sub_2723425F8()
{
  type metadata accessor for VACircularMatrixBuffer();
  v1 = sub_272302780(41, 64);
  result = (*(*v0 + 240))(v1);
  v0[9] = 0;
  return result;
}

uint64_t sub_27234266C(uint64_t a1)
{
  v3 = v2;
  __C[2] = *MEMORY[0x277D85DE8];
  v5 = (*(*v1 + 232))();
  if (!v5)
  {
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD000000000000039;
    v18[1] = 0x80000002723911C0;
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = v5;
  if ((*(v1 + 72) & 0x8000000000000000) != 0)
  {
    sub_2722032B4();
    swift_allocError();
    *v19 = 0xD000000000000021;
    v19[1] = 0x8000000272391220;
LABEL_10:
    swift_willThrow();

    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  v8 = (*v1 + 296);
  v9 = *v8;
  if (v7 != (*v8)())
  {
    sub_27237820C();

    __C[0] = 0xD000000000000018;
    __C[1] = 0x8000000272391200;
    v20 = sub_27237862C();
    MEMORY[0x2743C4AD0](v20);

    v21 = MEMORY[0x2743C4AD0](0x746365707845203BLL, 0xEB00000000206465);
    (v9)(v21);
    v22 = sub_27237862C();
    MEMORY[0x2743C4AD0](v22);

    v3 = 0x8000000272391200;
    sub_272318EA8();
    swift_allocError();
    *v23 = 0xD000000000000018;
    v23[1] = 0x8000000272391200;
    goto LABEL_10;
  }

  normalizeFP32Array(_:)(a1);
  v10 = *(v1 + 72);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  *(v1 + 72) = v12;
  v13 = (*((*MEMORY[0x277D85000] & **(v1 + 64)) + 0x170))();

  (*(*v6 + 168))(v13);

  v15 = (*(*v6 + 176))(v14);
  v16 = (*(*v1 + 288))(v15);
  if (v2)
  {
  }

  else
  {
    v26 = v17;
    v27 = v16;

    type metadata accessor for EncoderPredictionAVS();
    v3 = swift_allocObject();
    v28 = *(v27 + 16);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v27 + 32), 1, __C, v28);
    __C[0] = v27;
    v29 = MEMORY[0x28223BE20](*(v27 + 16));
    v30 = sub_272305630(v29, sub_27234366C);

    *(v3 + 16) = v30;
    *(v3 + 24) = v26;
  }

LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_272342AD0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v15 = a1;
  sub_272377BAC();
  v4 = sub_272377BAC();
  WitnessTable = swift_getWitnessTable();
  if (sub_272377E2C())
  {

    return v3;
  }

  v14 = v3;
  v15 = sub_2723776FC();
  result = sub_272377E1C();
  if (v13[5])
  {
    v7 = sub_272377B8C();

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        v8 = 0;
        v9 = MEMORY[0x277D84AC0];
        do
        {
          v10 = v8 + 1;
          v14 = v3;
          MEMORY[0x28223BE20](result);
          v13[2] = a2;
          v13[3] = v11;
          v14 = sub_2722BB104(sub_2723434C8, v13, v4, a2, MEMORY[0x277D84A98], WitnessTable, v9, v12);
          result = sub_272377B9C();
          v8 = v10;
        }

        while (v7 != v10);
      }

      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_272342C6C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = *(*(result + 32) + 16);
  v4 = v1 * v3;
  if ((v1 * v3) >> 64 != (v1 * v3) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_272377B5C();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 4 * v4);
    result = v5;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }
  }

  v6 = 0;
  v7 = 0;
  while (2)
  {
    v8 = v7 + 1;
    v9 = v2;
    v10 = v1;
    do
    {
      if (v7 >= *(*v9 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v6 >= *(result + 16))
      {
        goto LABEL_17;
      }

      *(result + 4 * v6++ + 32) = *(*v9 + 4 * v7 + 32);
      v9 += 8;
      --v10;
    }

    while (v10);
    ++v7;
    if (v8 != v3)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_272342D78()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(*v0 + 280))();
  v5 = v0[4];
  if (!*(v5 + 16) || (v6 = sub_27220038C(0xD000000000000011, 0x8000000272391180), (v7 & 1) == 0) || (v8 = *(*(v5 + 56) + 8 * v6), sub_2721F065C(&qword_2808824C0, &qword_272380780), (v9 = swift_dynamicCastClass()) == 0))
  {

    sub_2722032B4();
    swift_allocError();
    *v26 = 0xD000000000000027;
    v26[1] = 0x8000000272391250;
    swift_willThrow();
    return v4;
  }

  v10 = *(*v9 + 624);

  v10(v4);

  v11 = v3[7];
  sub_272275B0C();
  if (v2)
  {
LABEL_15:

    return v4;
  }

  v12 = v3[5];
  if (!*(v12 + 16) || (v13 = v3[5], v14 = sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367), (v15 & 1) == 0) || (v16 = *(*(v12 + 56) + 8 * v14), sub_2721F065C(&qword_2808824C8, qword_272380788), (v17 = swift_dynamicCastClass()) == 0))
  {
    sub_2722032B4();
    swift_allocError();
    *v28 = 0xD000000000000023;
    v28[1] = 0x8000000272391280;
    swift_willThrow();
    goto LABEL_15;
  }

  v18 = *(*v17 + 720);

  v4 = v18(v19);
  if (!*(v12 + 16) || (v20 = sub_27220038C(0x5F65636E656C6973, 0xE900000000000074), (v21 & 1) == 0) || (v22 = *(*(v12 + 56) + 8 * v20), (v23 = swift_dynamicCastClass()) == 0))
  {

    sub_2722032B4();
    swift_allocError();
    *v29 = 0xD000000000000020;
    v29[1] = 0x80000002723912B0;
    swift_willThrow();

    goto LABEL_15;
  }

  v24 = *(*v23 + 720);

  v24(v25);

  return v4;
}

uint64_t sub_2723430D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  v6 = *(v0 + 80);
}

uint64_t VAAVSAudioEncoderModel.deinit()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2722C389C();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27237725C();
  v7 = sub_272377EAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "deInit VAAVSAudioEncoderModel", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v9 = VAAudioEncoderModel.deinit();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v13 = *(v9 + 48);
  v14 = *(v9 + 56);

  v15 = *(v9 + 80);

  return v9;
}

uint64_t VAAVSAudioEncoderModel.__deallocating_deinit()
{
  VAAVSAudioEncoderModel.deinit();

  return swift_deallocClassInstance();
}

void sub_2723433C0(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 16) == v3)
  {
    v4 = a3;
    if (*a2)
    {
      vDSP_vsdiv((a1 + 32), 1, &v4, *a2, 1, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_272343478(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_2723433C0(v5, a1, v4);
  *a2 = *(v5 + 16);
}

uint64_t sub_2723434C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_272377BCC();
}

uint64_t sub_27234371C()
{
  v0 = sub_272291FE0(&unk_28818FB38);
  swift_arrayDestroy();
  return v0;
}

id sub_272343764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

uint64_t sub_2723439CC()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272343B20(void *a1)
{
  swift_allocObject();
  v2 = sub_272344F08(a1);

  return v2;
}

void sub_272343B68()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272343C3C(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_272343DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_272343F0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272343FCC, 0, 0);
}

uint64_t sub_272343FCC()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2723440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2723441B4(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27234427C;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_27234427C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2723443C8, 0, 0);
  }
}

uint64_t sub_2723443C8()
{
  v1 = *(v0 + 24);
  type metadata accessor for quant_verifier_aa_fp32();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27234443C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2723444C8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for quant_verifier_aa_fp32Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2723445A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2723445C4, 0, 0);
}

uint64_t sub_2723445C4()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_272344664;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_272344664(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2723447B0, 0, 0);
  }
}

uint64_t sub_2723447B0()
{
  v1 = *(v0 + 48);
  type metadata accessor for quant_verifier_aa_fp32Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272344824(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for quant_verifier_aa_fp32Input();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2723448E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v31 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v38 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = v5[2];
  v35 = &v31 - v19;
  v21(&v31 - v19, v32, v4);
  v21(v18, v33, v4);
  v21(v15, v34, v4);
  v21(v12, v36, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v21(v9, v20, v4);
  sub_272292148();
  v36 = sub_272377E5C();
  v21(v9, v38, v4);
  v34 = sub_272377E5C();
  v22 = v31;
  v21(v9, v31, v4);
  v33 = sub_272377E5C();
  v21(v9, v12, v4);
  v23 = sub_272377E5C();
  v24 = v5[1];
  v24(v12, v4);
  v24(v22, v4);
  v24(v38, v4);
  v24(v35, v4);
  type metadata accessor for quant_verifier_aa_fp32Input();
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v33;
  v28 = v34;
  v25[2] = v36;
  v25[3] = v28;
  v25[4] = v27;
  v25[5] = v23;
  v29 = (*(*v26 + 136))();

  return v29;
}

void sub_272344C44(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for quant_verifier_aa_fp32Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272344F08(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_272345054()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27234508C(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for quant_verifier_aa_fp32();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t VAKeywordSpottedEvent.keyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8);

  return v1;
}

uint64_t VAKeywordSpottedEvent.intervalFromEndOfSpeech.getter()
{
  result = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech + 8);
  return result;
}

uint64_t VAKeywordSpottedEvent.secondPassResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8);

  return v1;
}

uint64_t VAKeywordSpottedEvent.generatedKeyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword + 8);

  return v1;
}

uint64_t VAKeywordSpottedEvent.secondPassDuration.getter()
{
  result = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassDuration);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassDuration + 8);
  return result;
}

uint64_t VAKeywordSpottedEvent.secondPassKeywordMatched.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched + 8);

  return v1;
}

id sub_272345314(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, float a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  v27 = objc_allocWithZone(v18);
  v28 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
  *v28 = a1;
  v28[1] = a2;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score] = a9;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_hostTime] = a3;
  v29 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech];
  *v29 = a10;
  *(v29 + 8) = 0;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore] = a4;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter] = a5;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_speechDuring] = a6;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_audioBytes] = a7;
  v30 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
  *v30 = a8;
  v30[1] = a11;
  v31 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword];
  *v31 = a12;
  v31[1] = a13;
  v32 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassDuration];
  *v32 = a14;
  v32[8] = a15 & 1;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_mismatch] = a16;
  v33 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched];
  *v33 = a17;
  v33[1] = a18;
  v37.receiver = v27;
  v37.super_class = v18;
  return objc_msgSendSuper2(&v37, sel_init);
}

id VAKeywordSpottedEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAKeywordSpottedEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAKeywordSpottedEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_27234563C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECC60;
}

uint64_t sub_2723456D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  swift_beginAccess();
  return sub_27233FEA8(v1 + v3, a1);
}

uint64_t sub_272345728(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  swift_beginAccess();
  sub_27233FF9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2723457E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_27237834C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  v16 = sub_27237832C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_beginAccess();
  *(v14 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v14 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_27237833C();
  (*(v8 + 32))(v14 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock, v11, v7);
  v17 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(a3);
  return v17;
}

uint64_t sub_27234599C(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_27237832C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v37 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = v1 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params;
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params + 13) == 1)
  {
    v14 = (*(*v1 + 144))(v14);
    if (v14)
    {
      v19 = v18;
      v35 = v4;
      ObjectType = swift_getObjectType();
      v39 = 0x203A746C75736552;
      v40 = 0xE800000000000000;
      v20 = (*(*v38 + 224))();
      MEMORY[0x2743C4AD0](v20);

      (*(v19 + 8))(v39, v40, ObjectType, v19);

      v4 = v35;
      v14 = swift_unknownObjectRelease();
    }
  }

  if (*(v17 + 32) == 1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v21 = *(v17 + 16);
  v33[2] = *(v17 + 24);
  ObjectType = *(*v1 + 168);
  ObjectType(v14);
  v22 = *(v4 + 6);
  v23 = v22(v16, 1, v3);
  sub_272345DF8(v16);
  if (v23 == 1)
  {
    goto LABEL_8;
  }

  v33[1] = v21;
  v24 = v35;
  v25 = sub_27237830C();
  v26 = v36;
  ObjectType(v25);
  result = v22(v26, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  sub_27237831C();
  v28 = *(v4 + 1);
  v28(v24, v3);
  v28(v26, v3);
  result = sub_27237881C();
  if (result)
  {
LABEL_8:
    v29 = v37;
    sub_27237830C();
    (*(v4 + 7))(v29, 0, 1, v3);
    v14 = (*(*v2 + 176))(v29);
LABEL_9:
    result = (*(*v2 + 144))(v14);
    if (result)
    {
      v31 = v30;
      v32 = swift_getObjectType();
      (*(v31 + 16))(v38, v32, v31);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_272345DF8(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272345E90()
{
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v1 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v2 = sub_27237834C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t VAStrategyLayerPassthrough.deinit()
{
  v0 = VAStrategyLayer.deinit();
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v1 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VAStrategyLayerPassthrough.__deallocating_deinit()
{
  v0 = VAStrategyLayer.deinit();

  sub_272216300(v1 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v2 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v3 = sub_27237834C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272346088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VARuntimeParameters();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v13);
  v14 = type metadata accessor for VAStrategyLayerPassthrough();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  v19 = sub_27237832C();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  swift_beginAccess();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(v13, v17 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  swift_unknownObjectRetain();
  sub_27237833C();
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock, v9, v5);
  v20 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(v13);
  return v20;
}

uint64_t type metadata accessor for VAStrategyLayerPassthrough()
{
  result = qword_280892170;
  if (!qword_280892170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272346344()
{
  v0 = type metadata accessor for VARuntimeParameters();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2723022B8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_27237834C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2723464CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_272346528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_27234657C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723465C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_27234661C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_272346670()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723466B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272346704@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_272346760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2723467B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723467F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272346848()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27234688C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2723468DC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272346920(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272346970()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723469B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272346A04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t sub_272346A68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_272346ABC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272346B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272346B50()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_timerTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272346B98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_timerTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272346C50()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272346C94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_272346D18(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_timerTask] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial] = 4;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VATimingInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_272346E10()
{
  result = mach_absolute_time();
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime) = result;
  return result;
}

uint64_t sub_272346E34()
{
  v1 = mach_absolute_time();
  v2 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  result = swift_beginAccess();
  *(v0 + v2) = v1;
  return result;
}

uint64_t sub_272346E88(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime;
  if (!*(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v32 = a1;
    v15 = MEMORY[0x277D85000];
    v16 = *((*MEMORY[0x277D85000] & *v4) + 0x1A8);
    v33 = (*MEMORY[0x277D85000] & *v4) + 424;
    if (v16(v11))
    {
      v31 = v16;

      v17 = sub_2722C389C();
      (*(v9 + 16))(v13, v17, v8);

      v18 = sub_27237725C();
      v19 = sub_272377E7C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = v5;
        v5 = v20;
        v21 = swift_slowAlloc();
        v34 = v21;
        *v5 = 136315138;
        *(v5 + 4) = sub_2721FFD04(v32, a2, &v34);
        _os_log_impl(&dword_2721E4000, v18, v19, "Got first partial %s after speech stopped, cancel timer", v5, 0xCu);
        sub_2722039C8(v21);
        v22 = v21;
        v15 = MEMORY[0x277D85000];
        MEMORY[0x2743C69C0](v22, -1, -1);
        v23 = v5;
        LOBYTE(v5) = v30;
        MEMORY[0x2743C69C0](v23, -1, -1);
      }

      v24 = (*(v9 + 8))(v13, v8);
      if (v31(v24))
      {
        sub_2721F065C(&qword_280881A38, &unk_27237CA20);
        sub_272377CBC();
      }

      (*((*v15 & *v4) + 0x1B0))(0);
    }

    *(v4 + v14) = mach_absolute_time();
  }

  v25 = mach_absolute_time();
  if (v5)
  {
    v26 = (v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime);
    swift_beginAccess();
  }

  else
  {
    v26 = (v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime);
  }

  *v26 = v25;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v4) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v28 = *(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v28)
    {
      result = [*(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v28 timingLogs_];
      }
    }
  }

  return result;
}

uint64_t sub_272347278(uint64_t a1)
{
  v3 = mach_absolute_time();
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v5 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  result = swift_beginAccess();
  *(v1 + v5) = a1;
  return result;
}

uint64_t sub_2723472F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272347340(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v13 = sub_2722C389C();
    (*(v9 + 16))(v12, v13, v8);
    v14 = v1;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a1;
      v18 = v17;
      *v17 = 134217984;
      *(v17 + 4) = (*((*MEMORY[0x277D85000] & *v14) + 0x1C0))();

      _os_log_impl(&dword_2721E4000, v15, v16, "Speech stopped time before any partials, start %llu sec timer", v18, 0xCu);
      v19 = v18;
      a1 = v27;
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
    v20 = sub_272377C3C();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    v23 = sub_27221CA6C(0, 0, v7, &unk_2723866C8, v22);
    (*((*MEMORY[0x277D85000] & *v14) + 0x1B0))(v23);
  }

  v24 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v2 + v24) = a1;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v26 = *(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v26)
    {
      result = [*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v26 timingLogs_];
      }
    }
  }

  return result;
}

uint64_t sub_272347764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_27237728C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272347830, 0, 0);
}

uint64_t sub_272347830()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = *((*MEMORY[0x277D85000] & *Strong) + 0x1C0);
    v4 = ((*MEMORY[0x277D85000] & *Strong) + 448) & 0xFFFFFFFFFFFFLL | 0x748D000000000000;
    v0[11] = v3;
    v0[12] = v4;
    v5 = v3();
    if (is_mul_ok(v5, 0x3B9ACA00uLL))
    {
      v6 = 1000000000 * v5;
      v7 = *(MEMORY[0x277D857E8] + 4);
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = sub_272347998;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200480](v5);
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_272347998()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_272347DB4;
  }

  else
  {
    v3 = sub_272347AAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272347AAC()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 80) + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  v3 = sub_2722C389C();
  v4 = *(v1 + 16);
  if (v2)
  {
    v4(*(v0 + 64), v3, *(v0 + 48));
    v5 = sub_27237725C();
    v6 = sub_272377E7C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v5, v6, "Got partial after speech end", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = *(v0 + 80);
    v4(*(v0 + 72), v3, *(v0 + 48));
    v14 = v13;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 88);
      v17 = *(v0 + 96);
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v18();

      _os_log_impl(&dword_2721E4000, v15, v16, "No partials %llu sec after speech end, so send timing info", v20, 0xCu);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 80);
    v22 = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    if ((*((*MEMORY[0x277D85000] & *v21) + 0x1A8))(v22))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v23 = *(v0 + 80);
    v24 = *&v23[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate];
    if (v24)
    {
      v25 = [v24 respondsToSelector_];
      v26 = *(v0 + 80);
      if (v25)
      {
        [v24 timingLogs_];
      }
    }

    else
    {
    }
  }

  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_272347DB4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3();
}

uint64_t sub_272347E44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-v6];
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v13 = sub_2722C389C();
    (*(v9 + 16))(v12, v13, v8);
    v14 = sub_27237725C();
    v15 = sub_272377E7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "Speech stopped frame before any partials, start 5 sec timer", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v17 = sub_272377C3C();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v20 = sub_27221CA6C(0, 0, v7, &unk_2723866D8, v19);
    (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))(v20);
  }

  v21 = mach_absolute_time();
  v22 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v2 + v22) = v21;
  v23 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  *(v2 + v23) = a1;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v25 = *(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v25)
    {
      result = [*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v25 timingLogs_];
      }
    }
  }

  return result;
}

uint64_t sub_272348214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_27237728C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2723482E0, 0, 0);
}

uint64_t sub_2723482E0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = *((*MEMORY[0x277D85000] & *Strong) + 0x1C0);
    v4 = ((*MEMORY[0x277D85000] & *Strong) + 448) & 0xFFFFFFFFFFFFLL | 0x748D000000000000;
    v0[11] = v3;
    v0[12] = v4;
    v5 = v3();
    if (is_mul_ok(v5, 0x3B9ACA00uLL))
    {
      v6 = 1000000000 * v5;
      v7 = *(MEMORY[0x277D857E8] + 4);
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = sub_272348448;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200480](v5);
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_272348448()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_27234A6EC;
  }

  else
  {
    v3 = sub_27234855C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27234855C()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 80) + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  v3 = sub_2722C389C();
  v4 = *(v1 + 16);
  if (v2)
  {
    v4(*(v0 + 64), v3, *(v0 + 48));
    v5 = sub_27237725C();
    v6 = sub_272377E7C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v5, v6, "Got partial after speech end", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = *(v0 + 80);
    v4(*(v0 + 72), v3, *(v0 + 48));
    v14 = v13;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 88);
      v17 = *(v0 + 96);
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v18();

      _os_log_impl(&dword_2721E4000, v15, v16, "No partials %llu sec after speech end, done", v20, 0xCu);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 80);
    v22 = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    if ((*((*MEMORY[0x277D85000] & *v21) + 0x1A8))(v22))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v23 = *(v0 + 80);
    v24 = *&v23[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate];
    if (v24)
    {
      v25 = [v24 respondsToSelector_];
      v26 = *(v0 + 80);
      if (v25)
      {
        [v24 timingLogs_];
      }
    }

    else
    {
    }
  }

  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

void sub_272348864()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v3 = v2();
  v4 = *((*v1 & *v0) + 0xB8);
  if (v4() < v3)
  {
    type metadata accessor for VARequestContext(0);
    v5 = v2();
    v6 = v4();
    v7 = v5 >= v6;
    v8 = v5 - v6;
    if (v7)
    {
      sub_2722310BC(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_272348940()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  if (v2())
  {
    v3 = v2();
    v4 = *((*v1 & *v0) + 0xD0);
    v5 = v4();
    type metadata accessor for VARequestContext(0);
    if (v5 >= v3)
    {
      v10 = v4();
      v11 = v2();
      v8 = v10 >= v11;
      v12 = v10 - v11;
      if (v8)
      {
        sub_2722310BC(v12);
        return;
      }
    }

    else
    {
      v6 = v2();
      v7 = v4();
      v8 = v6 >= v7;
      v9 = v6 - v7;
      if (v8)
      {
        sub_2722310BC(v9);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_272348A74()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime;
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
    if (v3() < v2)
    {
      type metadata accessor for VARequestContext(0);
      v4 = *(v0 + v1);
      v5 = v3();
      v6 = v4 >= v5;
      v7 = v4 - v5;
      if (v6)
      {
        sub_2722310BC(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_272348B24()
{
  type metadata accessor for VARequestContext(0);
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  v3 = (*((*v1 & *v0) + 0xB8))();
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    sub_2722310BC(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_272348BCC()
{
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v1 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
    v2 = v1();
    v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime;
    v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime);
    type metadata accessor for VARequestContext(0);
    v5 = v1();
    if (v4 >= v2)
    {
      v7 = v4 >= v5;
      v9 = v4 - v5;
      if (v7)
      {
        sub_2722310BC(v9);
        return;
      }
    }

    else
    {
      v6 = *(v0 + v3);
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v7)
      {
        sub_2722310BC(v8);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_272348CB4()
{
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v1 = MEMORY[0x277D85000];
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x178);
    if (v2())
    {
      type metadata accessor for VARequestContext(0);
      v3 = (*((*v1 & *v0) + 0xE8))();
      v4 = v2();
      v5 = v3 >= v4;
      v6 = v3 - v4;
      if (v5)
      {
        sub_2722310BC(v6);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_272348D94()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  if ((v11)(v7) && (*((*v10 & *v0) + 0xD0))())
  {
    return 1;
  }

  if (v11())
  {
    v13 = sub_2722C389C();
    (*(v2 + 16))(v9, v13, v1);
    v14 = sub_27237725C();
    v15 = sub_272377E7C();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_8:

      (*(v2 + 8))(v9, v1);
      return 0;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2721E4000, v14, v15, "Waiting for speech end after final", v16, 2u);
LABEL_7:
    MEMORY[0x2743C69C0](v16, -1, -1);
    goto LABEL_8;
  }

  result = (*((*v10 & *v0) + 0xD0))();
  if (result)
  {
    if (!*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
    {
      return 0;
    }

    v17 = sub_2722C389C();
    (*(v2 + 16))(v6, v17, v1);
    v14 = sub_27237725C();
    v18 = sub_272377E7C();
    if (!os_log_type_enabled(v14, v18))
    {
      v9 = v6;
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2721E4000, v14, v18, "Waiting for final after speech end", v16, 2u);
    v9 = v6;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_272349064()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1A8))())
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();
  }

  (*((*v1 & *v0) + 0x1B0))(0);
  v2 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v0 + v4) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  *(v0 + v5) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime) = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  result = swift_beginAccess();
  *(v0 + v6) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime) = 0;
  return result;
}

unint64_t sub_27234920C()
{
  sub_2721F065C(&qword_2808831D8, &qword_2723866E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AF70;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000272391690;
  v2 = MEMORY[0x277D85000];
  *(inited + 48) = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002723916B0;
  *(inited + 72) = (*((*v2 & *v0) + 0x228))();
  *(inited + 80) = 0x6420686365657073;
  *(inited + 88) = 0xEF6E6F6974617275;
  *(inited + 96) = (*((*v2 & *v0) + 0x240))();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000002723916D0;
  *(inited + 120) = (*((*v2 & *v0) + 0x248))();
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000002723916F0;
  *(inited + 144) = (*((*v2 & *v0) + 0x250))();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000272391710;
  *(inited + 168) = (*((*v2 & *v0) + 0x230))();
  v3 = sub_27234A0C0(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_2808831E0, &qword_2723866E8);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_2723494EC()
{
  v1 = v0;
  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_27237AF70;
  sub_27237820C();
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237AF80;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  v8 = sub_27237786C();
  v10 = v9;

  MEMORY[0x2743C4AD0](0xD000000000000022, 0x8000000272391730);
  *(v2 + 32) = v8;
  *(v2 + 40) = v10;
  sub_27237820C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_27237AF80;
  v12 = (*((*v4 & *v1) + 0x230))();
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v12;
  v13 = sub_27237786C();
  v15 = v14;

  MEMORY[0x2743C4AD0](0xD00000000000001ALL, 0x8000000272391760);
  *(v2 + 48) = v13;
  *(v2 + 56) = v15;
  sub_27237820C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_27237AF80;
  v17 = (*((*v4 & *v1) + 0x248))();
  *(v16 + 56) = v6;
  *(v16 + 64) = v7;
  *(v16 + 32) = v17;
  v18 = sub_27237786C();
  v20 = v19;

  MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x8000000272391780);
  *(v2 + 64) = v18;
  *(v2 + 72) = v20;
  sub_27237820C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_27237AF80;
  v22 = (*((*v4 & *v1) + 0x228))();
  *(v21 + 56) = v6;
  *(v21 + 64) = v7;
  *(v21 + 32) = v22;
  v23 = sub_27237786C();
  v25 = v24;

  MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x80000002723917A0);
  *(v2 + 80) = v23;
  *(v2 + 88) = v25;
  sub_27237820C();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_27237AF80;
  v27 = (*((*v4 & *v1) + 0x240))();
  *(v26 + 56) = v6;
  *(v26 + 64) = v7;
  *(v26 + 32) = v27;
  v28 = sub_27237786C();
  v30 = v29;

  MEMORY[0x2743C4AD0](0xD000000000000016, 0x80000002723917C0);
  *(v2 + 96) = v28;
  *(v2 + 104) = v30;
  sub_27237820C();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_27237AF80;
  v32 = (*((*v4 & *v1) + 0x250))();
  *(v31 + 56) = v6;
  *(v31 + 64) = v7;
  *(v31 + 32) = v32;
  v33 = sub_27237786C();
  v35 = v34;

  MEMORY[0x2743C4AD0](0xD000000000000020, 0x80000002723917E0);
  *(v2 + 112) = v33;
  *(v2 + 120) = v35;
  return v2;
}

uint64_t sub_272349AE4()
{
  sub_27237820C();
  v1 = MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x8000000272391810);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x238))(v1);
  sub_272377D2C();
  v3 = MEMORY[0x2743C4AD0](0xD00000000000001BLL, 0x8000000272391830);
  (*((*v2 & *v0) + 0x230))(v3);
  sub_272377D2C();
  v4 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x8000000272391850);
  (*((*v2 & *v0) + 0x228))(v4);
  sub_272377D2C();
  v5 = MEMORY[0x2743C4AD0](0xD000000000000017, 0x8000000272391870);
  (*((*v2 & *v0) + 0x240))(v5);
  sub_272377D2C();
  v6 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x8000000272391890);
  (*((*v2 & *v0) + 0x248))(v6);
  sub_272377D2C();
  v7 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x80000002723918B0);
  (*((*v2 & *v0) + 0x250))(v7);
  sub_272377D2C();
  return 0;
}

id VATimingInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VATimingInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VATimingInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272349F1C()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272349F58()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272211DBC;

  return sub_272347764(v3, v4, v5, v2);
}

uint64_t sub_272349FEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27234A02C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_272348214(v3, v4, v5, v2);
}

unint64_t sub_27234A0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808831E8, &unk_272386718);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t VAA2AVerifierModelV2.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = MEMORY[0x277D84F90];
  v3[3] = MEMORY[0x277D84F90];
  v3[4] = v10;
  v3[5] = v10;
  v3[6] = v10;
  type metadata accessor for VALog();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v23 = v9;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v21, v22, v8);

  v11 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v12 = v11;
  if (v9)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v11 setComputeUnits_];
  type metadata accessor for quant_verifier_aa_fp32();
  v14 = v12;
  v15 = sub_272343C3C(v14);
  if (v2)
  {

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    v16 = v3[3];

    v17 = v3[4];

    v18 = v3[5];

    v19 = v3[6];

    type metadata accessor for VAA2AVerifierModelV2();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v15;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

uint64_t sub_27234A9C8(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for VASingleEnrollmentData();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v51);
  v42 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v11 = sub_27220392C(&unk_28818FC48, v10);
  (*(*v1 + 264))(v11);
  (*(*v1 + 216))(MEMORY[0x277D84F90]);
  v40[2] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v13 = result;
  v48 = *(result + 16);
  if (v48)
  {
    v14 = 0;
    v15 = *(*v1 + 232);
    v46 = *v1 + 232;
    v47 = v15;
    v44 = v1;
    v45 = result + 32;
    v43 = result;
    while (v14 < *(v13 + 16))
    {
      v49 = v14;
      v16 = (v45 + 16 * v14);
      v18 = *v16;
      v17 = v16[1];

      result = v47(v19);
      v20 = result;
      v21 = *(result + 16);
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          if (v22 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v24 = *(v4 + 72);
          sub_272204F54(v20 + v23 + v24 * v22, v9);
          v25 = &v9[*(v51 + 24)];
          v26 = *v25 == v18 && *(v25 + 1) == v17;
          if (v26 || (sub_27237865C() & 1) != 0)
          {
            break;
          }

          ++v22;
          result = sub_272299680(v9, type metadata accessor for VASingleEnrollmentData);
          if (v21 == v22)
          {
            goto LABEL_3;
          }
        }

        sub_272204F54(v9, v42);
        v2 = v44;
        v27 = (*(*v44 + 224))(v50);
        v29 = v28;
        v30 = *v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v29 = v30;
        v41 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_27227B890(0, v30[2] + 1, 1, v30);
          *v29 = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_27227B890(v32 > 1, v33 + 1, 1, v30);
          *v29 = v30;
        }

        v34 = v42;
        v13 = v43;
        v30[2] = v33 + 1;
        sub_27227BA68(v34, v30 + v23 + v33 * v24);
        v41(v50, 0);
        result = sub_272299680(v9, type metadata accessor for VASingleEnrollmentData);
      }

      else
      {
LABEL_3:

        v13 = v43;
        v2 = v44;
      }

      v14 = v49 + 1;
      if (v49 + 1 == v48)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:

    v35 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v37 = *((*(*v2 + 208))(v36) + 16);

    if (v35 == v37)
    {
      return (*(*v2 + 304))(v38);
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v39 = 0xD00000000000003CLL;
      v39[1] = 0x80000002723919F0;
      return swift_willThrow();
    }
  }

  return result;
}