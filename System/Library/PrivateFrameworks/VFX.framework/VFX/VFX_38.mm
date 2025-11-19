uint64_t sub_1AF4107B0(uint64_t a1, char a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v206 = a8;
  v207 = a7;
  v209 = a6;
  v203 = a4;
  v211 = a3;
  v189 = sub_1AFDFC318();
  v186 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v14);
  v188 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v168 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v168 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v168 - v26;
  if ((a2 & 1) == 0)
  {
    goto LABEL_135;
  }

  v28 = *a5;
  if (!*(*a5 + 16))
  {

    goto LABEL_8;
  }

  v29 = sub_1AF0D3F10(a1);
  if ((v30 & 1) == 0)
  {

    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      v31 = *(*(v28 + 56) + 8 * v32);
LABEL_131:

      return v31;
    }

LABEL_8:
    v34 = a10;
    v35 = *(*a10 + 16);
    v181 = v19;
    if (!v35 || (sub_1AF0D3F10(a1), (v36 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v220[0] = *a10;
      *a10 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a10 = v220[0];

      v195 = type metadata accessor for Node();
      v38 = v203 & (v195 == MEMORY[0x1E69E6530]);
      v39 = swift_allocObject();
      v176 = v39;
      *(v39 + 16) = a1;
      v175 = (v39 + 16);

      v40 = a1;
      v185 = v38;
      if (v38 == 1)
      {
        v41 = sub_1AF96FB80(1);
        v42 = v175;
        *v175 = v41;

        v40 = *v42;
      }

      v205 = a9;
      v43 = sub_1AF96CD1C(v40);
      v204 = a5;
      v208 = a10;
      if (v43)
      {
        v44 = v43;
        v45 = *(v186 + 16);
        v46 = v40 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v47 = v189;
        v45(v27, v46, v189);
        v45(v23, v27, v47);
        v48 = v207;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_1AF4276E0(0, v207[2] + 1, 1, v207, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v50 = v48[2];
        v49 = v48[3];
        v210 = v44;
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1AF4276E0(v49 > 1, v50 + 1, 1, v48, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v34 = v208;
        v51 = v186;
        v52 = v27;
        v53 = v189;
        (*(v186 + 8))(v52, v189);
        v48[2] = v50 + 1;
        (*(v51 + 32))(v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, v23, v53);
        v54 = sub_1AF3FC510(v206, v205, 1, v211, v203 & 1, v48, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
        v56 = v55;

        if (v195 == MEMORY[0x1E69E6530])
        {
          v57 = *(v56 + 16);
          if (v57)
          {
            v220[0] = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v58 = 32;
            do
            {
              v59 = *(v54 + 16);
              if (v59)
              {
                v60 = sub_1AF0D3F10(*(v56 + v58));
                if (v61)
                {
                  v59 = *(*(v54 + 56) + 8 * v60);
                }

                else
                {
                  v59 = 0;
                }
              }

              *&v213 = v59;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v58 += 8;
              --v57;
              a5 = v204;
            }

            while (v57);

            v62 = v220[0];
            v34 = v208;
          }

          else
          {

            v62 = MEMORY[0x1E69E7CC0];
          }

          v63 = *v175;
          type metadata accessor for Graph();
          v64 = swift_allocObject();
          *(v64 + 16) = v62;
          *(v63 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v64;
        }

        else
        {
        }
      }

      v65 = v211 >> 59;
      if (((v211 >> 59) & 2) != 0)
      {
        v66 = 0;
        v173 = 0;
        v172 = 0;
        v171 = 0;
        v170 = 0;
        v169 = 0;
      }

      else
      {
        (*(*a1 + 152))(v219, v43);
        v66 = v219[0];
        v173 = v219[1];
        v172 = v219[2];
        v171 = v219[3];
        v170 = v219[4];
        v169 = v219[5];
      }

      v202 = a11;
      v67 = sub_1AF971F68();
      v199 = *(v67 + 16);
      v174 = a1;
      if (!v199)
      {
        v187 = v203 & 1;
LABEL_122:

        sub_1AF441284(v66);
        v148 = v176;
        sub_1AF3FCBA8(v176, v34, a5);
        v149 = swift_allocObject();
        v150 = v206;
        v151 = v205;
        *(v149 + 16) = v206;
        *(v149 + 24) = v151;
        v152 = v209;

        v153 = v211;
        sub_1AF4410E4(v211, sub_1AF4410A8);

        v154 = swift_allocObject();
        *(v154 + 16) = 1;
        *(v154 + 24) = v153;
        *(v154 + 32) = v187;
        *(v154 + 40) = a5;
        *(v154 + 48) = v152;
        v155 = v207;
        *(v154 + 56) = v207;
        *(v154 + 64) = v150;
        *(v154 + 72) = v151;
        *(v154 + 80) = v34;
        v156 = v202;
        *(v154 + 88) = v202;
        v157 = swift_allocObject();
        *(v157 + 16) = sub_1AF449D6C;
        *(v157 + 24) = v154;
        v158 = *(v148 + 16);
        *&v213 = v152;
        *(&v213 + 1) = v158;
        v214 = v155;
        v215 = sub_1AF449D48;
        v216 = v157;
        v217 = v156;

        sub_1AF449DC0(&v213, &v218);

        v31 = v218;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v159 = v174;
        sub_1AF6345D0(v31, v174);
        v160 = v208;
        if (v161)
        {
          v162 = a5[1];
          v163 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v162;
          if ((v163 & 1) == 0)
          {
            v162 = sub_1AF422330(0, *(v162 + 2) + 1, 1, v162, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v162;
          }

          v165 = *(v162 + 2);
          v164 = *(v162 + 3);
          if (v165 >= v164 >> 1)
          {
            v162 = sub_1AF422330(v164 > 1, v165 + 1, 1, v162, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v162;
          }

          *(v162 + 2) = v165 + 1;
          *&v162[8 * v165 + 32] = v159;
        }

        if (v195 == MEMORY[0x1E69E6530])
        {
          *&v213 = v31;

          swift_dynamicCast();
        }

        v166 = swift_isUniquelyReferenced_nonNull_native();
        *&v213 = *v160;
        *v160 = 0x8000000000000000;
        sub_1AF850FDC(0, v159, v166);
        *v160 = v213;

        goto LABEL_131;
      }

      v68 = 0;
      v182 = v65 & 2;
      LODWORD(v210) = v182 | (v211 >> 2) & 1;
      v198 = v67 + 32;
      v180 = v66 + 32;
      v179 = (v186 + 16);
      v178 = v186 + 8;
      v177 = v186 + 32;
      v184 = v66;
      v183 = v67;
      v187 = v203 & 1;
      while (1)
      {
        v69 = *(v198 + 16 * v68);
        if (!v69)
        {
          goto LABEL_39;
        }

        v200 = v68;
        if (v66 && v68 < *(v66 + 16))
        {
          v70 = *(v180 + 8 * v68);
          sub_1AF4410A8(v70);
        }

        else
        {
          v70 = 0xA000000000000000;
        }

        if (v210)
        {
          if (v210 == 1)
          {
            v71 = sub_1AF9C5694(v70, v211 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v70);
            if (v71)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_1AF441114(v70);
          }
        }

        else
        {
          v72 = sub_1AF9C5694(v70, v211);
          sub_1AF441114(v70);
          if (!v72)
          {
            goto LABEL_38;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v69), (v73 & 1) == 0))
        {
          if (*(*v34 + 16))
          {
            sub_1AF0D3F10(v69);
            v74 = MEMORY[0x1E69E6530];
            if (v75)
            {
              break;
            }
          }

          else
          {
            v74 = MEMORY[0x1E69E6530];
          }

          v76 = swift_isUniquelyReferenced_nonNull_native();
          *&v213 = *v34;
          v77 = v213;
          *v34 = 0x8000000000000000;
          v78 = sub_1AF0D3F10(v69);
          v80 = v79;
          v81 = *(v77 + 16) + ((v79 & 1) == 0);
          if (*(v77 + 24) >= v81)
          {
            if (v76)
            {
              goto LABEL_62;
            }

            v84 = v78;
            sub_1AF843F7C();
            v78 = v84;
            v83 = v213;
            if ((v80 & 1) == 0)
            {
              goto LABEL_65;
            }

LABEL_63:
            *(v83[7] + v78) = 1;
          }

          else
          {
            sub_1AF82BC4C(v81, v76);
            v78 = sub_1AF0D3F10(v69);
            if ((v80 & 1) != (v82 & 1))
            {
              goto LABEL_134;
            }

LABEL_62:
            v83 = v213;
            if (v80)
            {
              goto LABEL_63;
            }

LABEL_65:
            v83[(v78 >> 6) + 8] |= 1 << v78;
            *(v83[6] + 8 * v78) = v69;
            *(v83[7] + v78) = 1;
            ++v83[2];
          }

          *v34 = v83;

          v85 = swift_allocObject();
          v197 = v85;
          *(v85 + 16) = v69;
          v196 = (v85 + 16);

          v86 = v69;
          if (v185)
          {
            v87 = sub_1AF96FB80(1);
            v88 = v196;
            *v196 = v87;

            v86 = *v88;
          }

          v89 = sub_1AF96CD1C(v86);
          v201 = v69;
          if (v89)
          {
            v90 = *v179;
            v91 = v86 + OBJC_IVAR____TtC3VFX4Node_authoringID;
            v92 = v181;
            v93 = v189;
            (*v179)(v181, v91, v189);
            v90(v188, v92, v93);
            v94 = v207;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1AF4276E0(0, v207[2] + 1, 1, v207, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v96 = v94[2];
            v95 = v94[3];
            if (v96 >= v95 >> 1)
            {
              v94 = sub_1AF4276E0(v95 > 1, v96 + 1, 1, v94, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v97 = v186;
            v98 = v92;
            v99 = v189;
            (*(v186 + 8))(v98, v189);
            v94[2] = v96 + 1;
            (*(v97 + 32))(v94 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v96, v188, v99);
            v100 = sub_1AF3FC510(v206, v205, 1, v211, v203 & 1, v94, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
            v102 = v101;

            if (v195 == v74)
            {
              v103 = *(v102 + 16);
              if (v103)
              {
                *&v213 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                v104 = 32;
                do
                {
                  v105 = *(v100 + 16);
                  if (v105)
                  {
                    v106 = sub_1AF0D3F10(*(v102 + v104));
                    if (v107)
                    {
                      v105 = *(*(v100 + 56) + 8 * v106);
                    }

                    else
                    {
                      v105 = 0;
                    }
                  }

                  v212 = v105;
                  swift_dynamicCast();
                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v104 += 8;
                  --v103;
                  v69 = v201;
                }

                while (v103);

                v108 = v213;
              }

              else
              {

                v108 = MEMORY[0x1E69E7CC0];
              }

              v109 = *v196;
              type metadata accessor for Graph();
              v110 = swift_allocObject();
              *(v110 + 16) = v108;
              *(v109 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v110;
            }

            else
            {
            }
          }

          if (v182)
          {
            v111 = 0;
            v194 = 0;
            v193 = 0;
            v192 = 0;
            v191 = 0;
            v190 = 0;
          }

          else
          {
            (*(*v69 + 152))(v220, v89);
            v111 = v220[0];
            v194 = v220[1];
            v193 = v220[2];
            v192 = v220[3];
            v191 = v220[4];
            v190 = v220[5];
          }

          v112 = sub_1AF971F68();
          v113 = *(v112 + 16);
          if (v113)
          {
            v114 = 0;
            v115 = 32;
            while (2)
            {
              v116 = *(v112 + v115);
              if (!v116)
              {
                goto LABEL_94;
              }

              if (v111 && v114 < *(v111 + 16))
              {
                v117 = *(v111 + 32 + 8 * v114);
                sub_1AF4410A8(v117);
              }

              else
              {
                v117 = 0xA000000000000000;
              }

              if (v210)
              {
                if (v210 == 1)
                {
                  v118 = sub_1AF9C5694(v117, v211 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v117);
                  if (v118)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  sub_1AF441114(v117);
                }
              }

              else
              {
                v119 = sub_1AF9C5694(v117, v211);
                sub_1AF441114(v117);
                if (!v119)
                {
LABEL_93:

LABEL_94:
                  ++v114;
                  v115 += 16;
                  if (v113 == v114)
                  {
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3E707C(v116, 1, v211, v203 & 1, v207, v206, v205, v208, v204, v202);
            goto LABEL_93;
          }

LABEL_106:

          sub_1AF441284(v111);
          v120 = v197;
          v121 = v208;
          a5 = v204;
          sub_1AF3FCBA8(v197, v208, v204);
          v122 = swift_allocObject();
          v123 = v206;
          v124 = v205;
          *(v122 + 16) = v206;
          *(v122 + 24) = v124;
          v125 = v209;

          v126 = v211;
          sub_1AF4410E4(v211, sub_1AF4410A8);

          v127 = swift_allocObject();
          *(v127 + 16) = 1;
          *(v127 + 24) = v126;
          *(v127 + 32) = v187;
          *(v127 + 40) = a5;
          *(v127 + 48) = v125;
          v128 = v207;
          *(v127 + 56) = v207;
          *(v127 + 64) = v123;
          *(v127 + 72) = v124;
          *(v127 + 80) = v121;
          v129 = v202;
          *(v127 + 88) = v202;
          v130 = swift_allocObject();
          *(v130 + 16) = sub_1AF449D6C;
          *(v130 + 24) = v127;
          v131 = *(v120 + 16);
          *&v213 = v125;
          *(&v213 + 1) = v131;
          v214 = v128;
          v215 = sub_1AF449D48;
          v216 = v130;
          v217 = v129;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v213, &v218);

          v132 = v218;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v133 = v201;
          sub_1AF6345D0(v132, v201);
          v34 = v208;
          if (v134)
          {
            v135 = a5[1];
            v136 = swift_isUniquelyReferenced_nonNull_native();
            a5[1] = v135;
            if ((v136 & 1) == 0)
            {
              v135 = sub_1AF422330(0, *(v135 + 2) + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v135;
            }

            v138 = *(v135 + 2);
            v137 = *(v135 + 3);
            if (v138 >= v137 >> 1)
            {
              v135 = sub_1AF422330(v137 > 1, v138 + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v135;
            }

            *(v135 + 2) = v138 + 1;
            *&v135[8 * v138 + 32] = v133;
          }

          if (v195 == MEMORY[0x1E69E6530])
          {
            *&v213 = v132;

            swift_dynamicCast();
          }

          v139 = swift_isUniquelyReferenced_nonNull_native();
          *&v213 = *v34;
          v140 = v213;
          *v34 = 0x8000000000000000;
          v141 = sub_1AF0D3F10(v133);
          v143 = v142;
          v144 = *(v140 + 16) + ((v142 & 1) == 0);
          if (*(v140 + 24) >= v144)
          {
            if ((v139 & 1) == 0)
            {
              v147 = v141;
              sub_1AF843F7C();
              v141 = v147;
            }
          }

          else
          {
            sub_1AF82BC4C(v144, v139);
            v141 = sub_1AF0D3F10(v133);
            if ((v143 & 1) != (v145 & 1))
            {
LABEL_134:
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }
          }

          v66 = v184;
          v146 = v213;
          if (v143)
          {
            *(*(v213 + 56) + v141) = 0;
          }

          else
          {
            *(v213 + 8 * (v141 >> 6) + 64) |= 1 << v141;
            *(v146[6] + 8 * v141) = v133;
            *(v146[7] + v141) = 0;
            ++v146[2];
          }

          *v34 = v146;
        }

LABEL_38:

        v68 = v200;
LABEL_39:
        if (++v68 == v199)
        {
          goto LABEL_122;
        }
      }
    }

LABEL_135:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v184);
    }
  }

  return *(*(v28 + 56) + 8 * v29);
}

uint64_t sub_1AF4121EC(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v74 = a7;
  LODWORD(v88) = a5;
  LODWORD(v87) = a3;
  v86 = a2;
  v95 = *MEMORY[0x1E69E9840];
  v85 = v7 + 24;

  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = v11;
  }

  else
  {
    v12 = sub_1AF42B320(v11, 0);

    v13 = v12;
  }

  v91 = MEMORY[0x1E69E7CC0];
  v92 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v13 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  v15 = v13;
  v73 = v13;
  if (!v14)
  {
LABEL_14:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v91 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_17;
      }
    }

    else if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v21 = *v74;
      v20 = v74[1];
      v22 = *(v20 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (!v22)
      {
        v25 = MEMORY[0x1E69E7CC0];
LABEL_54:

        v67 = sub_1AF8A9490(v25);
        v69 = v68;

        v70 = v74;
        *v74 = v67;
        v70[1] = v69;
        goto LABEL_55;
      }

      v90 = MEMORY[0x1E69E7CC0];

      sub_1AFC05D48(0, v22, 0);
      v24 = 0;
      v25 = v90;
      v72 = v20;
      v75 = v20 + 32;
      v83 = v21;
      v84 = &v94 + 1;
      v76 = v22;
      while (1)
      {
        v80 = v24;
        v26 = *(v75 + 8 * v24);
        v27 = *(v21 + 16);
        v81 = v25;
        v79 = v26;
        if (v27 && (v28 = sub_1AF0D3F10(v26), (v29 & 1) != 0))
        {
          v30 = *(*(v21 + 56) + 8 * v28);
        }

        else
        {
          v30 = 0;
        }

        v78 = v30;
        v31 = sub_1AF97228C();
        v32 = *(v31 + 16);
        if (v32)
        {
          v89 = v23;
          sub_1AFC05D98(0, v32, 0);
          v33 = v89;
          v34 = 32;
          v82 = v31;
          do
          {
            v35 = *(v31 + v34);
            v88 = v35;
            v36 = v35;
            if (v35)
            {
              v37 = *(v88 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
              if (*v37 == _TtC3VFX16_PlaceholderNode)
              {
                v86 = v33;
                v38 = *(v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
                v39 = *(v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
                v85 = v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
                v40 = sub_1AF441150((v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v38);
                v87 = &v72;
                v41 = *(v38 - 8);
                v42 = MEMORY[0x1EEE9AC00](v40, v40);
                v44 = &v72 - v43;
                (*(v41 + 16))(&v72 - v43, v42);
                v45 = *(v39 + 24);
                swift_retain_n();

                v46 = v45(v38, v39);
                (*(v41 + 8))(v44, v38);
                v21 = v83;
                if (*(v83 + 16) && (v47 = sub_1AF0D3F10(v46), (v48 & 1) != 0))
                {
                  v49 = *(*(v21 + 56) + 8 * v47);

                  *&v94 = v49;
                  *(&v94 + 1) = *(&v88 + 1);
                  v36 = v49;
                }

                else
                {

                  sub_1AF441194(v85, v93);

                  sub_1AF4498F4(0, &qword_1EB638380);
                  type metadata accessor for AuthoringNode();
                  swift_dynamicCast();
                  *(&v94 + 1) = *(&v88 + 1);
                  v36 = v94;
                }

                v31 = v82;
                v33 = v86;
              }

              else
              {
                v94 = v35;
                swift_retain_n();
              }
            }

            else
            {
              *&v94 = 0;
              *v84 = *(&v35 + 1);
            }

            v89 = v33;
            v51 = *(v33 + 16);
            v50 = *(v33 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_1AFC05D98(v50 > 1, v51 + 1, 1);
              v33 = v89;
            }

            *(v33 + 16) = v51 + 1;
            v52 = v33 + 16 * v51;
            *(v52 + 32) = v36;
            *(v52 + 40) = *(&v88 + 1);
            v34 += 16;
            --v32;
          }

          while (v32);

          v23 = MEMORY[0x1E69E7CC0];
          v53 = *(v33 + 16);
          if (v53)
          {
LABEL_38:
            v93[0] = v23;
            sub_1AFC05D04(0, v53, 0);
            v54 = v93[0];
            v55 = *(v93[0] + 16);
            v56 = 16 * v55;
            v57 = (v33 + 40);
            do
            {
              v58 = *(v57 - 1);
              if (v58)
              {
                v59 = *v57;
              }

              else
              {
                v59 = 0;
              }

              v93[0] = v54;
              v60 = *(v54 + 24);

              if (v55 >= v60 >> 1)
              {
                sub_1AFC05D04(v60 > 1, v55 + 1, 1);
                v54 = v93[0];
              }

              v57 += 2;
              *(v54 + 16) = v55 + 1;
              v61 = v54 + v56;
              *(v61 + 32) = v58;
              *(v61 + 40) = v59;
              v56 += 16;
              ++v55;
              --v53;
            }

            while (v53);

            v21 = v83;
            v23 = MEMORY[0x1E69E7CC0];
            goto LABEL_48;
          }
        }

        else
        {

          v33 = v23;
          v53 = *(v23 + 16);
          if (v53)
          {
            goto LABEL_38;
          }
        }

        v54 = v23;
LABEL_48:
        v62 = v78;
        *(v78 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v54;

        v25 = v81;
        v90 = v81;
        v64 = *(v81 + 16);
        v63 = *(v81 + 24);
        v65 = v76;
        if (v64 >= v63 >> 1)
        {
          sub_1AFC05D48(v63 > 1, v64 + 1, 1);
          v25 = v90;
        }

        v24 = v80 + 1;
        *(v25 + 16) = v64 + 1;
        v66 = v25 + 16 * v64;
        *(v66 + 32) = v79;
        *(v66 + 40) = v62;
        if (v24 == v65)
        {

          goto LABEL_54;
        }
      }
    }

    sub_1AF48F6CC(v19);
    goto LABEL_17;
  }

  v16 = 0;
  v17 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v17)
    {
      v18 = MEMORY[0x1B2719C70](v16, v15);
    }

    else
    {
      v18 = *(v15 + 8 * v16 + 32);
    }

    sub_1AF3DBA8C(v18, v87 & 1, a4, v88 & 1, a6, a1, v86, &v92, v74, &v91);
    if (v77)
    {
      break;
    }

    ++v16;
    v15 = v73;
    if (v14 == v16)
    {
      goto LABEL_14;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_55:
}

uint64_t sub_1AF412AA8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, uint64_t a7)
{
  v9 = v7;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);
  v25 = MEMORY[0x1E69E7CC0];
  v26[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v13 = sub_1AFDFE108();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v13)
  {
LABEL_11:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v25 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      goto LABEL_16;
    }

    sub_1AF48F6CC(v18);
    goto LABEL_14;
  }

  v14 = 0;
  v15 = v12 & 0xC000000000000001;
  while (1)
  {
    v16 = v12;
    if (v15)
    {
      v17 = MEMORY[0x1B2719C70](v14, v12);
    }

    else
    {
      v17 = *(v12 + 8 * v14 + 32);
    }

    sub_1AF418138(v17, v9, a3 & 1, a4, a5 & 1, a6, a1, a2, v26, a7, &v25);
    if (v8)
    {
      break;
    }

    ++v14;
    v12 = v16;
    if (v13 == v14)
    {
      goto LABEL_11;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_16:
}

uint64_t sub_1AF412D4C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, void *a7)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = *(v7 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v25[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v11 >> 62)
  {
    v12 = sub_1AFDFE108();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v12)
  {
LABEL_11:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v24 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      goto LABEL_16;
    }

    sub_1AF48F7F8(v17);
    goto LABEL_14;
  }

  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  while (1)
  {
    v15 = v11;
    if (v14)
    {
      v16 = MEMORY[0x1B2719C70](v13, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v13 + 32);
    }

    sub_1AF3DC99C(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v25, a7, &v24);
    if (v8)
    {
      break;
    }

    ++v13;
    v11 = v15;
    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_16:
}

uint64_t sub_1AF412FE8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v47[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v46 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v14)
  {
LABEL_13:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v45 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_16:
        sub_1AF44479C(0);
        if (v18 == type metadata accessor for AuthoringNode())
        {
          v19 = *a7;
          v20 = a7[1];
          v21 = *(v20 + 16);
          v22 = MEMORY[0x1E69E7CC0];
          if (v21)
          {
            v44 = MEMORY[0x1E69E7CC0];

            sub_1AFC05F74(0, v21, 0);
            v23 = 32;
            v22 = v44;
            v41 = v20;
            v42 = v19;
            do
            {
              v24 = *(v20 + v23);
              if (*(v19 + 16) && (v25 = sub_1AF0D3F10(*(v20 + v23)), (v26 & 1) != 0))
              {
                v27 = *(*(v19 + 56) + 8 * v25);
              }

              else
              {
                v27 = 1;
              }

              v28 = sub_1AF419184(v47, v24, v27, a7);
              sub_1AF0DB74C(v27);
              v29 = v47[0];
              v31 = *(v44 + 16);
              v30 = *(v44 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_1AFC05F74(v30 > 1, v31 + 1, 1);
              }

              *(v44 + 16) = v31 + 1;
              v32 = v44 + 16 * v31;
              *(v32 + 32) = v28;
              *(v32 + 40) = v29;
              v23 += 8;
              --v21;
              v20 = v41;
              v19 = v42;
            }

            while (v21);
          }

          v33 = sub_1AF8A94D0(v22);
          v35 = v34;

          *a7 = v33;
          a7[1] = v35;
        }

        else
        {
        }

        goto LABEL_30;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    sub_1AF48F6CC(v17);
    goto LABEL_16;
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v15, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    sub_1AF3DDA58(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, &v46, a7, &v45);
    if (v9)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_13;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_30:
}

uint64_t sub_1AF413434(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, unint64_t a7)
{
  v9 = v8;
  v34 = a7;
  v35 = a6;
  v32 = a3;
  v33 = a5;
  v30 = a1;
  v31 = a2;
  v44 = *MEMORY[0x1E69E9840];
  v37 = v7;
  v10 = *(v7 + 16);
  v29 = v7 + 16;
  v11 = MEMORY[0x1E69E7CC0];
  v36 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v18 = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v38 = v11;
    v39 = v18;
    if (v10 >> 62)
    {
      v19 = sub_1AFDFE108();
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v36, sub_1AF4410A8);

    if (v19)
    {
      v20 = 0;
      v21 = v10 & 0xC000000000000001;
      while (1)
      {
        v22 = v10;
        if (v21)
        {
          v23 = MEMORY[0x1B2719C70](v20, v10);
        }

        else
        {
          v23 = *(v10 + 8 * v20 + 32);
        }

        sub_1AF3DEAB4(v23, v32 & 1, v36, v33 & 1, v35, v30, v31, &v39, v42, v34, &v38);
        if (v9)
        {
          break;
        }

        ++v20;
        v40[6] = v42[6];
        v41[0] = v43[0];
        *(v41 + 9) = *(v43 + 9);
        v40[2] = v42[2];
        v40[3] = v42[3];
        v40[4] = v42[4];
        v40[5] = v42[5];
        v40[0] = v42[0];
        v40[1] = v42[1];
        sub_1AF44943C(v40, sub_1AF448148);

        v10 = v22;
        if (v19 == v20)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(v36, sub_1AF441114);

      goto LABEL_20;
    }

LABEL_15:

    sub_1AF4410E4(v36, sub_1AF441114);

    if (v38 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:

LABEL_20:
    }

    sub_1AF48F7F8(v24);
    goto LABEL_18;
  }

  *&v40[0] = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  LOBYTE(v27) = 0;
  v28 = v40;
  MEMORY[0x1EEE9AC00](v14, v15);
  v26[2] = sub_1AF449D54;
  v26[3] = v16;
  swift_bridgeObjectRetain_n();
  *&v42[0] = sub_1AF42B0F4(v11);
  *(&v42[0] + 1) = v17;
  sub_1AF412D4C(sub_1AF449DD8, v26, 1, 0x1000000000000000uLL, 0, v11, v42);
  if (!v8)
  {
    v9 = 0;

    v10 = *&v40[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF41388C(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, void *a7)
{
  v9 = v8;
  v31 = a7;
  v32 = a6;
  v29 = a3;
  v30 = a5;
  v27 = a1;
  v28 = a2;
  v35[1] = *MEMORY[0x1E69E9840];
  v10 = *(v7 + 16);
  v26 = v7 + 16;
  v11 = MEMORY[0x1E69E7CC0];
  v33 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v34[0] = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v35[0] = v11;
    if (v10 >> 62)
    {
      v18 = sub_1AFDFE108();
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v33, sub_1AF4410A8);

    if (v18)
    {
      v19 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B2719C70](v19, v10);
        }

        else
        {
          v20 = *(v10 + 8 * v19 + 32);
        }

        sub_1AF3DFFC4(v20, v29 & 1, v33, v30 & 1, v32, v27, v28, v34, v31, v35);
        if (v9)
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(v33, sub_1AF441114);

      goto LABEL_19;
    }

LABEL_15:

    sub_1AF4410E4(v33, sub_1AF441114);

    if (v35[0] >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
    }

    sub_1AF48F7F8(v21);
    goto LABEL_19;
  }

  v35[0] = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  LOBYTE(v24) = 0;
  v25 = v35;
  MEMORY[0x1EEE9AC00](v14, v15);
  v23[2] = sub_1AF449D54;
  v23[3] = v16;
  swift_bridgeObjectRetain_n();
  v34[0] = sub_1AF42B0F4(v11);
  v34[1] = v17;
  sub_1AF412D4C(sub_1AF449DD8, v23, 1, 0x1000000000000000uLL, 0, v11, v34);
  if (!v8)
  {
    v9 = 0;

    v10 = v35[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF413C70(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v57 = a7;
  v55 = a6;
  v53 = a3;
  LODWORD(v54) = a5;
  v51 = a1;
  v52 = a2;
  v62 = *MEMORY[0x1E69E9840];
  v10 = *(v7 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v56 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v18 = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v59 = v11;
    v60 = v18;
    if (v10 >> 62)
    {
      v19 = sub_1AFDFE108();
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v7 + 16;

    sub_1AF4410E4(v56, sub_1AF4410A8);

    if (v19)
    {
      v20 = 0;
      v21 = v10;
      v22 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v22)
        {
          v23 = MEMORY[0x1B2719C70](v20, v21);
        }

        else
        {
          v23 = v21[v20 + 4];
        }

        sub_1AF3E1430(v23, v53 & 1, v56, v54 & 1, v55, v51, v52, &v60, v57, &v59);
        if (v9)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_16;
        }
      }

      sub_1AF4410E4(v56, sub_1AF441114);

      goto LABEL_31;
    }

    v21 = v10;
LABEL_16:

    sub_1AF4410E4(v56, sub_1AF441114);

    if (v59 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_19:
        sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v25 == type metadata accessor for Node())
        {
          v55 = v21;
          v26 = *v57;
          v27 = v57[1];
          v28 = *(v27 + 16);
          v29 = MEMORY[0x1E69E7CC0];
          if (v28)
          {
            v58 = MEMORY[0x1E69E7CC0];

            sub_1AFC07104(0, v28, 0);
            v30 = 32;
            v29 = v58;
            v56 = v27;
            do
            {
              v31 = *(v27 + v30);
              if (*(v26 + 16) && (v32 = sub_1AF0D3F10(*(v27 + v30)), (v33 & 1) != 0))
              {
                v34 = (*(v26 + 56) + 16 * v32);
                v35 = *v34;
                v36 = v34[1];
              }

              else
              {
                v35 = 0;
                v36 = 1;
              }

              v37 = sub_1AF419350(&v61, v31, v35, v36, v57);
              sub_1AF447EB0(v35, v36);
              v38 = v61;
              v58 = v29;
              v40 = *(v29 + 16);
              v39 = *(v29 + 24);
              if (v40 >= v39 >> 1)
              {
                v54 = v61;
                sub_1AFC07104(v39 > 1, v40 + 1, 1);
                v38 = v54;
                v29 = v58;
              }

              *(v29 + 16) = v40 + 1;
              v41 = v29 + 24 * v40;
              *(v41 + 32) = v37;
              *(v41 + 40) = v38;
              v30 += 8;
              --v28;
              v27 = v56;
            }

            while (v28);
          }

          v42 = sub_1AF8A9B50(v29);
          v44 = v43;

          v45 = v57;
          *v57 = v42;
          v45[1] = v44;
          goto LABEL_33;
        }

LABEL_31:

LABEL_33:
      }
    }

    else if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    sub_1AF48F7F8(v24);
    goto LABEL_19;
  }

  v60 = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  LOBYTE(v48) = 0;
  v49 = &v60;
  MEMORY[0x1EEE9AC00](v14, v15);
  v47[2] = sub_1AF449D54;
  v47[3] = v16;
  swift_bridgeObjectRetain_n();
  *&v61 = sub_1AF42B0F4(v11);
  *(&v61 + 1) = v17;
  sub_1AF412D4C(sub_1AF449DD8, v47, 1, 0x1000000000000000uLL, 0, v11, &v61);
  if (!v8)
  {
    v9 = 0;

    v10 = v60;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF41420C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, void *a7)
{
  v9 = v8;
  v25[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v14)
  {
LABEL_13:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v24 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_17;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    sub_1AF48F6CC(v17);
    goto LABEL_17;
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v15, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    sub_1AF3E2468(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v25, a7, &v24);
    if (v9)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_13;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_17:
}

uint64_t sub_1AF4144D0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, __objc2_class **a6, uint64_t *a7)
{
  v9 = v8;
  v55 = a7;
  v53 = a6;
  v51 = a3;
  v52 = a5;
  v49 = a1;
  v50 = a2;
  v59[1] = *MEMORY[0x1E69E9840];
  v11 = v7 + 16;
  v12 = *(v7 + 16);
  v48 = v11;
  v13 = MEMORY[0x1E69E7CC0];
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v54 = v9;
    v58[0] = sub_1AF0D4098(v13, sub_1AF44034C, sub_1AF0D3F10);
    v59[0] = v13;
    if (v12 >> 62)
    {
      v20 = sub_1AFDFE108();
    }

    else
    {
      v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(a4, sub_1AF4410A8);

    if (v20)
    {
      v21 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1B2719C70](v21, v12);
        }

        else
        {
          v22 = *(v12 + 8 * v21 + 32);
        }

        v23 = v54;
        sub_1AF3E3638(v22, v51 & 1, a4, v52 & 1, v53, v49, v50, v58, v55, v59);
        v54 = v23;
        if (v23)
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(a4, sub_1AF441114);

      goto LABEL_30;
    }

LABEL_15:

    sub_1AF4410E4(a4, sub_1AF441114);

    v47 = v12;
    if (v59[0] >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v26 = *v55;
      v25 = v55[1];
      v27 = v25[2];
      v28 = MEMORY[0x1E69E7CC0];
      if (v27)
      {
        v57 = MEMORY[0x1E69E7CC0];

        sub_1AFC07728(0, v27, 0);
        v29 = 4;
        v28 = v57;
        v53 = v25;
        do
        {
          v30 = v25[v29];
          if (*(v26 + 16) && (v31 = sub_1AF0D3F10(v25[v29]), (v32 & 1) != 0))
          {
            v33 = *(*(v26 + 56) + 8 * v31);
          }

          else
          {
            v33 = 0;
          }

          v34 = sub_1AF4195D0(&v56, v30, v33, v55);

          v35 = v56;
          v57 = v28;
          v37 = *(v28 + 16);
          v36 = *(v28 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1AFC07728(v36 > 1, v37 + 1, 1);
            v28 = v57;
          }

          *(v28 + 16) = v37 + 1;
          v38 = v28 + 16 * v37;
          *(v38 + 32) = v34;
          *(v38 + 40) = v35;
          ++v29;
          --v27;
          v25 = v53;
        }

        while (v27);
      }

      v39 = sub_1AF8AA17C(v28);
      v41 = v40;

      v42 = v55;
      *v55 = v39;
      v42[1] = v41;
LABEL_30:
    }

    sub_1AF48F7F8(v24);
    goto LABEL_18;
  }

  v59[0] = MEMORY[0x1E69E7CC0];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  LOBYTE(v45) = 0;
  v46 = v59;
  MEMORY[0x1EEE9AC00](v16, v17);
  v44[2] = sub_1AF449D54;
  v44[3] = v18;
  swift_bridgeObjectRetain_n();
  v58[0] = sub_1AF42B0F4(v13);
  v58[1] = v19;
  sub_1AF412D4C(sub_1AF449DD8, v44, 1, 0x1000000000000000uLL, 0, v13, v58);
  if (!v8)
  {
    v9 = 0;

    v12 = v59[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF414A20(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, void *a7)
{
  p_flags = v8;
  v10 = v7;
  v150 = a5;
  v159 = a3;
  v160 = a1;
  v161 = a2;
  v170[1] = *MEMORY[0x1E69E9840];
  v14 = *v7;
  v143 = sub_1AFDFC318();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v15);
  v138 = v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v137 = v135 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v140 = v135 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v139 = v135 - v25;
  v26 = v7 + 2;
  v27 = v7[2];
  v135[1] = v26;
  v28 = MEMORY[0x1E69E7CC0];
  v149 = v10;
  v144 = v14;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    v164 = MEMORY[0x1E69E7CC0];
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    MEMORY[0x1EEE9AC00](v29, v30);
    MEMORY[0x1EEE9AC00](v31, v32);
    v133 = sub_1AF449D54;
    v134 = v33;
    swift_bridgeObjectRetain_n();
    *&v165 = sub_1AF42B0F4(v28);
    *(&v165 + 1) = v34;
    sub_1AF412D4C(sub_1AF449DD8, &v132, 1, 0x1000000000000000uLL, 0, v28, &v165);
    if (v8)
    {
      goto LABEL_112;
    }

    p_flags = 0;

    v27 = v164;
    v10 = v149;
  }

  v35 = MEMORY[0x1E69E7CC0];
  v36 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  v163 = v35;
  v164 = v36;
  if (v27 >> 62)
  {
    v37 = sub_1AFDFE108();
  }

  else
  {
    v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  v141 = v27;
  if (!v37)
  {
LABEL_93:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v163 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_96:

LABEL_103:
      }
    }

    else if (!*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_96;
    }

    sub_1AF48F7F8(v130);
    goto LABEL_96;
  }

  v38 = 0;
  v153 = v27 + 32;
  v154 = v27 & 0xC000000000000001;
  v136 = (v142 + 16);
  v135[3] = v142 + 8;
  v135[2] = v142 + 32;
  v148 = v150 & 1;
  v155 = v159 & 1;
  v146 = a6;
  v158 = a4;
  v145 = a7;
  v151 = v37;
  while (1)
  {
    if (v154)
    {
      v39 = MEMORY[0x1B2719C70](v38, v141);
    }

    else
    {
      v39 = *(v153 + 8 * v38);
    }

    if (*(*a7 + 16))
    {
      sub_1AF0D3F10(v39);
      if (v40)
      {
        goto LABEL_10;
      }
    }

    v41 = v164[2];
    v157 = v38;
    if (v41)
    {
      sub_1AF0D3F10(v39);
      if (v42)
      {
        goto LABEL_111;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v164;
    v164 = 0x8000000000000000;
    *&v165 = v44;
    v45 = sub_1AF0D3F10(v39);
    v47 = v46;
    v48 = *(v44 + 16) + ((v46 & 1) == 0);
    if (*(v44 + 24) < v48)
    {
      sub_1AF82BC4C(v48, isUniquelyReferenced_nonNull_native);
      v45 = sub_1AF0D3F10(v39);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_110;
      }

LABEL_21:
      v50 = v165;
      if (v47)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v51 = v45;
    sub_1AF843F7C();
    v45 = v51;
    v10 = v149;
    v50 = v165;
    if (v47)
    {
LABEL_22:
      *(v50[7] + v45) = 1;
      goto LABEL_26;
    }

LABEL_25:
    v50[(v45 >> 6) + 8] |= 1 << v45;
    *(v50[6] + 8 * v45) = v39;
    *(v50[7] + v45) = 1;
    ++v50[2];
LABEL_26:
    v164 = v50;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v152 = v52;
    if ((v159 & 1) == 0)
    {
      v162 = p_flags;
      v63 = a7;
      v64 = a6;

      v65 = a4;
      goto LABEL_52;
    }

    if (*v39 == _TtC3VFX12SubGraphNode && *(v39 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && (v53 = swift_dynamicCastClass()) != 0)
    {
      v162 = v53;
      v54 = *v136;
      v55 = v139;
      v56 = v143;
      (*v136)(v139, v39 + OBJC_IVAR____TtC3VFX4Node_authoringID, v143);
      v54(v140, v55, v56);

      v57 = a6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1AF4276E0(0, a6[2] + 1, 1, a6, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v59 = v57[2];
      v58 = v57[3];
      v147 = v39;
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1AF4276E0(v58 > 1, v59 + 1, 1, v57, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v60 = v142;
      v61 = v143;
      (*(v142 + 8))(v139, v143);
      v57[2] = v59 + 1;
      (*(v60 + 32))(v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59, v140, v61);
      *&v165 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      *(&v165 + 1) = v62;
      sub_1AF414A20(v160, v161, 1, v158, v150 & 1, v57, &v165);
      if (p_flags)
      {

LABEL_98:

        a4 = v158;
LABEL_102:
        sub_1AF4410E4(a4, sub_1AF441114);

        goto LABEL_103;
      }

      a4 = v158;
      v10 = v149;
      v39 = v147;
    }

    else
    {
    }

    sub_1AF3F5CE4(1, a4, v150 & 1, v39, v10, a6, v160, v161, &v164, a7, &v163);
    if (p_flags)
    {
      goto LABEL_101;
    }

    v66 = type metadata accessor for Node();
    v67 = swift_dynamicCastMetatype();
    v162 = 0;
    if (!v67)
    {
      v63 = a7;
      v64 = a6;
      type metadata accessor for AuthoringNode();
      v65 = v158;
      goto LABEL_52;
    }

    v68 = v39[2];
    cache = v68->cache;
    if (cache)
    {
      break;
    }

    v63 = a7;

    v70 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v39[2] = v70;

    v64 = v146;
    v65 = v158;
    v10 = v149;
LABEL_52:
    v80 = v39;
    v81 = swift_allocObject();
    v83 = v160;
    v82 = v161;
    *(v81 + 16) = v160;
    *(v81 + 24) = v82;

    sub_1AF4410E4(v65, sub_1AF4410A8);

    v84 = swift_allocObject();
    *(v84 + 16) = v155;
    *(v84 + 24) = v65;
    *(v84 + 32) = v148;
    *(v84 + 40) = v63;
    *(v84 + 48) = v10;
    *(v84 + 56) = v64;
    *(v84 + 64) = v83;
    *(v84 + 72) = v82;
    *(v84 + 80) = &v164;
    *(v84 + 88) = &v163;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1AF44420C;
    *(v85 + 24) = v84;
    *&v165 = v10;
    *(&v165 + 1) = v80;
    v166 = v64;
    v167 = sub_1AF449D48;
    v168 = v85;
    v169 = &v163;
    swift_bridgeObjectRetain_n();

    v86 = v162;
    sub_1AF449DC0(&v165, v170);
    v87 = v80;
    if (v86)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_98;
    }

    v162 = 0;

    v88 = v64;

    v89 = v170[0];
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v90 = swift_retain_n();
    v91 = sub_1AF6342E4(v90, v80);
    a7 = v63;
    v156 = v89;
    if (v91 == 1)
    {
      v92 = v63[1];
      v93 = swift_isUniquelyReferenced_nonNull_native();
      a4 = v158;
      if ((v93 & 1) == 0)
      {
        v92 = sub_1AF422330(0, *(v92 + 2) + 1, 1, v92, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      a6 = v88;
      v95 = *(v92 + 2);
      v94 = *(v92 + 3);
      p_flags = v162;
      if (v95 >= v94 >> 1)
      {
        v92 = sub_1AF422330(v94 > 1, v95 + 1, 1, v92, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v92 + 2) = v95 + 1;
      *&v92[8 * v95 + 32] = v87;
      a7[1] = v92;
      v10 = v149;
    }

    else
    {
      v96 = v91;

      sub_1AF0DB74C(v96);
      a4 = v158;
      a6 = v88;
      p_flags = v162;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v164;
    v164 = 0x8000000000000000;
    *&v165 = v98;
    v99 = sub_1AF0D3F10(v87);
    v101 = v100;
    v102 = *(v98 + 16) + ((v100 & 1) == 0);
    if (*(v98 + 24) >= v102)
    {
      if ((v97 & 1) == 0)
      {
        v129 = v99;
        sub_1AF843F7C();
        v99 = v129;
        v10 = v149;
      }
    }

    else
    {
      sub_1AF82BC4C(v102, v97);
      v99 = sub_1AF0D3F10(v87);
      if ((v101 & 1) != (v103 & 1))
      {
        goto LABEL_110;
      }
    }

    v37 = v151;
    v104 = v165;
    if (v101)
    {
      *(*(v165 + 56) + v99) = 0;
    }

    else
    {
      *(v165 + 8 * (v99 >> 6) + 64) |= 1 << v99;
      *(v104[6] + 8 * v99) = v87;
      *(v104[7] + v99) = 0;
      ++v104[2];
    }

    v164 = v104;

    v38 = v157;
    if (v159)
    {
    }

    else
    {
      sub_1AF3F5CE4(v155, a4, v150 & 1, v87, v10, a6, v160, v161, &v164, a7, &v163);
      if (p_flags)
      {

LABEL_101:

        goto LABEL_102;
      }

      if (*v87 == _TtC3VFX12SubGraphNode && v87)
      {
        if (*(v87 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && (v105 = swift_dynamicCastClass()) != 0)
        {
          v162 = v105;
          v106 = *v136;
          v107 = v137;
          v108 = v143;
          (*v136)(v137, v87 + OBJC_IVAR____TtC3VFX4Node_authoringID, v143);
          v106(v138, v107, v108);

          v109 = a6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1AF4276E0(0, a6[2] + 1, 1, a6, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v111 = v109[2];
          v110 = v109[3];
          v112 = v87;
          if (v111 >= v110 >> 1)
          {
            v109 = sub_1AF4276E0(v110 > 1, v111 + 1, 1, v109, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v113 = v142;
          v114 = v143;
          (*(v142 + 8))(v137, v143);
          v109[2] = v111 + 1;
          (*(v113 + 32))(v109 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v111, v138, v114);
          *&v165 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
          *(&v165 + 1) = v115;
          sub_1AF414A20(v160, v161, v155, v158, v150 & 1, v109, &v165);

          v10 = v149;
          a7 = v145;
          v87 = v112;
          v37 = v151;
          v38 = v157;
          a4 = v158;
        }

        else
        {
          v37 = v151;
        }
      }

      v116 = type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v117 = v87[2];
        v118 = v117->cache;
        if (v118)
        {
          v147 = v87;
          v162 = 0;
          v170[0] = MEMORY[0x1E69E7CC0];

          sub_1AFC05E7C(0, v118, 0);
          v119 = v170[0];
          v152 = v117;
          v120 = v117 + 1;
          while (1)
          {
            p_flags = &v120[-1].info->flags;
            isa = v120->isa;
            v122 = v164;
            if (v164[2])
            {
              v123 = sub_1AF0D3F10(v120[-1].info);
              if ((v124 & 1) != 0 && (*(*(v122 + 56) + v123) & 1) == 0)
              {
                goto LABEL_109;
              }
            }

            type metadata accessor for _PlaceholderNode(0);
            v125 = swift_allocObject();
            v167 = v116;
            v168 = &off_1EE8015B0;
            *&v165 = p_flags;
            sub_1AF441194(&v165, v125 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
            v125[4] = 0;
            v125[2] = MEMORY[0x1E69E7CC0];
            v125[3] = 0;
            swift_retain_n();
            sub_1AFDFC308();
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v165);

            v170[0] = v119;
            v127 = *(v119 + 16);
            v126 = *(v119 + 24);
            if (v127 >= v126 >> 1)
            {
              sub_1AFC05E7C(v126 > 1, v127 + 1, 1);
              v119 = v170[0];
            }

            v120 = (v120 + 16);
            *(v119 + 16) = v127 + 1;
            v128 = v119 + 16 * v127;
            *(v128 + 32) = v125;
            *(v128 + 40) = isa;
            if (!--v118)
            {

              v87 = v147;
              p_flags = v162;
              v10 = v149;
              v37 = v151;
              v38 = v157;
              goto LABEL_92;
            }
          }
        }

        v119 = MEMORY[0x1E69E7CC0];
LABEL_92:
        v87[2] = v119;

        a6 = v146;
        a4 = v158;
        a7 = v145;
      }

      else
      {
        type metadata accessor for AuthoringNode();

        a6 = v146;
      }
    }

LABEL_10:
    ++v38;

    if (v38 == v37)
    {
      goto LABEL_93;
    }
  }

  v170[0] = MEMORY[0x1E69E7CC0];
  v147 = v39;

  sub_1AFC05E7C(0, cache, 0);
  v70 = v170[0];
  v156 = v68;
  v71 = v68 + 1;
  while (1)
  {
    info = v71[-1].info;
    v73 = v71->isa;
    v74 = v164;
    if (v164[2])
    {
      v75 = sub_1AF0D3F10(v71[-1].info);
      if ((v76 & 1) != 0 && (*(*(v74 + 56) + v75) & 1) == 0)
      {
        break;
      }
    }

    type metadata accessor for _PlaceholderNode(0);
    p_flags = swift_allocObject();
    v167 = v66;
    v168 = &off_1EE8015B0;
    *&v165 = info;
    sub_1AF441194(&v165, p_flags + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    p_flags[4] = 0;
    p_flags[2] = MEMORY[0x1E69E7CC0];
    p_flags[3] = 0;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v165);

    v170[0] = v70;
    v78 = *(v70 + 16);
    v77 = *(v70 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_1AFC05E7C(v77 > 1, v78 + 1, 1);
      v70 = v170[0];
    }

    v71 = (v71 + 16);
    *(v70 + 16) = v78 + 1;
    v79 = v70 + 16 * v78;
    *(v79 + 32) = p_flags;
    *(v79 + 40) = v73;
    if (!--cache)
    {

      v39 = v147;
      v63 = v145;
      goto LABEL_51;
    }
  }

  sub_1AF0D3F10(info);
  __break(1u);
LABEL_109:
  sub_1AF0D3F10(p_flags);
  __break(1u);
LABEL_110:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_111:
  LODWORD(v134) = 0;
  v133 = 156;
  sub_1AFDFE518();
  __break(1u);
LABEL_112:

  __break(1u);
  return result;
}

uint64_t sub_1AF416014(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, void *a7)
{
  v9 = v8;
  v10 = v7;
  v149 = a5;
  v157 = a3;
  v158 = a1;
  v159 = a2;
  v198 = *MEMORY[0x1E69E9840];
  v14 = *v10;
  v15 = sub_1AFDFC318();
  v143 = *(v15 - 8);
  v144 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v138 = v136 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v141 = v136 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v140 = v136 - v26;
  v160 = v10;
  v27 = v10[2];
  v136[1] = v10 + 2;
  v28 = MEMORY[0x1E69E7CC0];
  v162 = a4;
  v145 = v14;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    *&v180 = MEMORY[0x1E69E7CC0];
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    MEMORY[0x1EEE9AC00](v29, v30);
    MEMORY[0x1EEE9AC00](v31, v32);
    v134 = sub_1AF449D54;
    v135 = v33;
    swift_bridgeObjectRetain_n();
    *&v188 = sub_1AF42B0F4(v28);
    *(&v188 + 1) = v34;
    sub_1AF412D4C(sub_1AF449DD8, &v133, 1, 0x1000000000000000uLL, 0, v28, &v188);
    if (v8)
    {
      goto LABEL_109;
    }

    v9 = 0;

    v27 = v180;
  }

  v35 = MEMORY[0x1E69E7CC0];
  v36 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  v170 = v35;
  v171 = v36;
  if (v27 >> 62)
  {
    v37 = sub_1AFDFE108();
  }

  else
  {
    v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v162, sub_1AF4410A8);

  if (!v37)
  {
LABEL_95:

    sub_1AF4410E4(v162, sub_1AF441114);

    if (v170 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_101;
      }
    }

    else if (!*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_101:
    }

    sub_1AF48F7F8(v131);
    goto LABEL_101;
  }

  v38 = 0;
  v151 = v27 + 32;
  v152 = v27 & 0xC000000000000001;
  v136[3] = v143 + 8;
  v137 = (v143 + 16);
  v136[2] = v143 + 32;
  v147 = v149 & 1;
  v154 = v157 & 1;
  v153 = v27;
  v163 = a6;
  v146 = a7;
  v148 = v37;
  while (1)
  {
    if (v152)
    {
      v39 = MEMORY[0x1B2719C70](v38, v27);
    }

    else
    {
      v39 = *(v151 + 8 * v38);
    }

    if (*(*a7 + 16))
    {
      sub_1AF0D3F10(v39);
      if (v40)
      {
        goto LABEL_12;
      }
    }

    v41 = v171[2];
    v156 = v38;
    if (v41)
    {
      sub_1AF0D3F10(v39);
      if (v42)
      {
        goto LABEL_108;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v171;
    *&v188 = v171;
    v171 = 0x8000000000000000;
    v45 = sub_1AF0D3F10(v39);
    v47 = v46;
    v48 = *(v44 + 16) + ((v46 & 1) == 0);
    if (*(v44 + 24) >= v48)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v129 = v45;
        sub_1AF843F7C();
        v45 = v129;
      }
    }

    else
    {
      sub_1AF82BC4C(v48, isUniquelyReferenced_nonNull_native);
      v45 = sub_1AF0D3F10(v39);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_107;
      }
    }

    v50 = v188;
    if (v47)
    {
      *(*(v188 + 56) + v45) = 1;
    }

    else
    {
      *(v188 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      *(v50[6] + 8 * v45) = v39;
      *(v50[7] + v45) = 1;
      ++v50[2];
    }

    v171 = v50;

    sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    v150 = v51;
    if ((v157 & 1) == 0)
    {
      v161 = v9;

      goto LABEL_55;
    }

    if (*v39 == _TtC3VFX12SubGraphNode)
    {
      if (*(v39 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
      {
        v161 = v9;
        v155 = v39;
        if (swift_dynamicCastClass())
        {
          v52 = *v137;
          v53 = v140;
          v54 = v144;
          (*v137)(v140, v155 + OBJC_IVAR____TtC3VFX4Node_authoringID, v144);
          v55 = v53;
          v56 = v163;
          v52(v141, v55, v54);

          v57 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1AF4276E0(0, v56[2] + 1, 1, v56, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v59 = v57[2];
          v58 = v57[3];
          if (v59 >= v58 >> 1)
          {
            v57 = sub_1AF4276E0(v58 > 1, v59 + 1, 1, v57, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v61 = v143;
          v60 = v144;
          (*(v143 + 8))(v140, v144);
          v57[2] = v59 + 1;
          (*(v61 + 32))(v57 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59, v141, v60);
          *&v188 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v188 + 1) = v62;
          v63 = v161;
          sub_1AF416014(v158, v159, 1, v162, v149 & 1, v57, &v188);
          v9 = v63;
          if (v63)
          {

            sub_1AF4410E4(v162, sub_1AF441114);
            goto LABEL_100;
          }

          a7 = v146;
          a6 = v163;
          v39 = v155;
        }

        else
        {
          v39 = v155;

          v9 = v161;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    sub_1AF3F760C(1, v162, v149 & 1, v39, v160, a6, v158, v159, &v171, a7, &v170);
    if (v9)
    {

      sub_1AF4410E4(v162, sub_1AF441114);
      goto LABEL_100;
    }

    v164 = type metadata accessor for Node();
    v64 = swift_dynamicCastMetatype();
    v161 = 0;
    if (!v64)
    {
      type metadata accessor for AuthoringNode();
      goto LABEL_55;
    }

    v65 = v39[2];
    cache = v65->cache;
    if (cache)
    {
      break;
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v39[2] = v67;

LABEL_55:
    v79 = v39;
    v80 = swift_allocObject();
    v82 = v158;
    v81 = v159;
    *(v80 + 16) = v158;
    *(v80 + 24) = v81;
    v83 = v160;

    v84 = v162;
    sub_1AF4410E4(v162, sub_1AF4410A8);

    v85 = swift_allocObject();
    *(v85 + 16) = v154;
    *(v85 + 24) = v84;
    *(v85 + 32) = v147;
    *(v85 + 40) = a7;
    *(v85 + 48) = v83;
    v86 = v163;
    *(v85 + 56) = v163;
    *(v85 + 64) = v82;
    *(v85 + 72) = v81;
    *(v85 + 80) = &v171;
    *(v85 + 88) = &v170;
    v87 = a7;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1AF443FD8;
    *(v88 + 24) = v85;
    *&v165 = v83;
    *(&v165 + 1) = v79;
    v166 = v86;
    v167 = sub_1AF441390;
    v168 = v88;
    v169 = &v170;
    swift_bridgeObjectRetain_n();

    v89 = v161;
    sub_1AF441360(&v165);
    if (v89)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF4410E4(v162, sub_1AF441114);
LABEL_100:

      goto LABEL_101;
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v196[4] = v192;
    v196[5] = v193;
    v196[6] = v194;
    v197 = v195;
    v196[0] = v188;
    v196[1] = v189;
    v196[2] = v190;
    v196[3] = v191;
    v90 = MEMORY[0x1E69E6720];
    sub_1AF0D8094(v196, &v172, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    sub_1AF0D8094(v196, &v172, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v90, sub_1AF449B08);
    sub_1AF634450(v196, v79, &v180);
    v91 = v87;
    v92 = v79;
    if (v180 == 1)
    {
      v176 = v184;
      v177 = v185;
      v178 = v186;
      v179 = v187;
      v172 = v180;
      v173 = v181;
      v174 = v182;
      v175 = v183;
      sub_1AF44943C(&v172, sub_1AF443FDC);
      v93 = v87[1];
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v153;
      v9 = 0;
      a7 = v87;
      if ((v94 & 1) == 0)
      {
        v93 = sub_1AF422330(0, *(v93 + 2) + 1, 1, v93, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      a6 = v163;
      v96 = *(v93 + 2);
      v95 = *(v93 + 3);
      if (v96 >= v95 >> 1)
      {
        v93 = sub_1AF422330(v95 > 1, v96 + 1, 1, v93, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      sub_1AF444058(v196, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      *(v93 + 2) = v96 + 1;
      *&v93[8 * v96 + 32] = v92;
      a7[1] = v93;
    }

    else
    {
      sub_1AF444058(v196, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      v176 = v184;
      v177 = v185;
      v178 = v186;
      v179 = v187;
      v172 = v180;
      v173 = v181;
      v174 = v182;
      v175 = v183;
      sub_1AF44943C(&v172, sub_1AF443FDC);
      v27 = v153;
      a6 = v163;
      v9 = 0;
      a7 = v91;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v171;
    *&v180 = v171;
    v171 = 0x8000000000000000;
    v99 = sub_1AF0D3F10(v92);
    v101 = v100;
    v102 = *(v98 + 16) + ((v100 & 1) == 0);
    if (*(v98 + 24) >= v102)
    {
      if ((v97 & 1) == 0)
      {
        v130 = v99;
        sub_1AF843F7C();
        v99 = v130;
      }
    }

    else
    {
      sub_1AF82BC4C(v102, v97);
      v99 = sub_1AF0D3F10(v92);
      if ((v101 & 1) != (v103 & 1))
      {
        goto LABEL_107;
      }
    }

    v38 = v156;
    v104 = v180;
    if (v101)
    {
      *(*(v180 + 56) + v99) = 0;
    }

    else
    {
      *(v180 + 8 * (v99 >> 6) + 64) |= 1 << v99;
      *(v104[6] + 8 * v99) = v92;
      *(v104[7] + v99) = 0;
      ++v104[2];
    }

    v171 = v104;

    v37 = v148;
    if ((v157 & 1) == 0)
    {
      sub_1AF3F760C(v154, v162, v149 & 1, v92, v160, a6, v158, v159, &v171, a7, &v170);
      if (*v92 == _TtC3VFX12SubGraphNode && v92)
      {
        v155 = v92;
        if (*(v92 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && swift_dynamicCastClass())
        {
          v105 = v138;
          v106 = *v137;
          v107 = v144;
          (*v137)(v138, v155 + OBJC_IVAR____TtC3VFX4Node_authoringID, v144);
          v108 = v105;
          v109 = v163;
          v106(v139, v108, v107);

          v110 = v109;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1AF4276E0(0, v109[2] + 1, 1, v109, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v112 = v110[2];
          v111 = v110[3];
          if (v112 >= v111 >> 1)
          {
            v110 = sub_1AF4276E0(v111 > 1, v112 + 1, 1, v110, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v114 = v143;
          v113 = v144;
          (*(v143 + 8))(v138, v144);
          v110[2] = v112 + 1;
          (*(v114 + 32))(v110 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v112, v139, v113);
          *&v172 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v172 + 1) = v115;
          sub_1AF416014(v158, v159, v154, v162, v149 & 1, v110, &v172);

          a7 = v146;
          v27 = v153;
          a6 = v163;
          v92 = v155;
          v38 = v156;
          v37 = v148;
        }

        else
        {
          v92 = v155;
        }
      }

      v164 = type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v116 = v92[2];
        v117 = v116->cache;
        if (v117)
        {
          v155 = v92;
          v161 = 0;
          *&v172 = MEMORY[0x1E69E7CC0];

          sub_1AFC05E7C(0, v117, 0);
          v118 = v172;
          v150 = v116;
          v119 = v116 + 1;
          while (1)
          {
            info = v119[-1].info;
            isa = v119->isa;
            v121 = v171;
            v122 = MEMORY[0x1E69E7CC0];
            if (v171[2])
            {
              v123 = sub_1AF0D3F10(v119[-1].info);
              if ((v124 & 1) != 0 && (*(*(v121 + 56) + v123) & 1) == 0)
              {
                goto LABEL_106;
              }
            }

            type metadata accessor for _PlaceholderNode(0);
            v125 = swift_allocObject();
            *(&v181 + 1) = v164;
            *&v182 = &off_1EE8015B0;
            *&v180 = info;
            sub_1AF441194(&v180, v125 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
            v125[3] = 0;
            v125[4] = 0;
            v125[2] = v122;
            swift_retain_n();
            sub_1AFDFC308();
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v180);

            *&v172 = v118;
            v127 = *(v118 + 16);
            v126 = *(v118 + 24);
            if (v127 >= v126 >> 1)
            {
              sub_1AFC05E7C(v126 > 1, v127 + 1, 1);
              v118 = v172;
            }

            v119 = (v119 + 16);
            *(v118 + 16) = v127 + 1;
            v128 = v118 + 16 * v127;
            *(v128 + 32) = v125;
            *(v128 + 40) = isa;
            if (!--v117)
            {

              v92 = v155;
              v38 = v156;
              v9 = v161;
              a7 = v146;
              v37 = v148;
              goto LABEL_93;
            }
          }
        }

        v118 = MEMORY[0x1E69E7CC0];
LABEL_93:
        v92[2] = v118;

        v27 = v153;
        a6 = v163;
        goto LABEL_11;
      }

      type metadata accessor for AuthoringNode();
    }

LABEL_11:
    v184 = v192;
    v185 = v193;
    v186 = v194;
    v187 = v195;
    v180 = v188;
    v181 = v189;
    v182 = v190;
    v183 = v191;
    sub_1AF444058(&v180, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
LABEL_12:

    if (++v38 == v37)
    {
      goto LABEL_95;
    }
  }

  *&v180 = MEMORY[0x1E69E7CC0];
  v155 = v39;

  sub_1AFC05E7C(0, cache, 0);
  v67 = v180;
  v142 = v65;
  v68 = v65 + 1;
  while (1)
  {
    info = v68[-1].info;
    v70 = v68->isa;
    v71 = v171;
    v72 = MEMORY[0x1E69E7CC0];
    if (v171[2])
    {
      v73 = sub_1AF0D3F10(v68[-1].info);
      if ((v74 & 1) != 0 && (*(*(v71 + 56) + v73) & 1) == 0)
      {
        break;
      }
    }

    type metadata accessor for _PlaceholderNode(0);
    v75 = swift_allocObject();
    *&v190 = &off_1EE8015B0;
    *(&v189 + 1) = v164;
    *&v188 = info;
    sub_1AF441194(&v188, v75 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v75[3] = 0;
    v75[4] = 0;
    v75[2] = v72;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v188);

    *&v180 = v67;
    v77 = *(v67 + 16);
    v76 = *(v67 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_1AFC05E7C(v76 > 1, v77 + 1, 1);
      v67 = v180;
    }

    v68 = (v68 + 16);
    *(v67 + 16) = v77 + 1;
    v78 = v67 + 16 * v77;
    *(v78 + 32) = v75;
    *(v78 + 40) = v70;
    if (!--cache)
    {

      v39 = v155;
      a7 = v146;
      goto LABEL_54;
    }
  }

LABEL_106:
  sub_1AF0D3F10(info);
  __break(1u);
LABEL_107:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_108:
  LODWORD(v135) = 0;
  v134 = 156;
  sub_1AFDFE518();
  __break(1u);
LABEL_109:

  __break(1u);
  return result;
}

uint64_t sub_1AF41774C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, __objc2_class **a6, uint64_t *a7)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v43[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2719C70](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      sub_1AF3E5F1C(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v43, a7, &v42);
      if (v8)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    sub_1AF4410E4(a4, sub_1AF441114);

    goto LABEL_20;
  }

LABEL_13:

  sub_1AF4410E4(a4, sub_1AF441114);

  if (!(v42 >> 62))
  {
    v17 = a7;
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = a7;
  if (sub_1AFDFE108())
  {
LABEL_15:

    sub_1AF48F6CC(v18);
  }

LABEL_16:
  if (type metadata accessor for AuthoringNode() != MEMORY[0x1E69E6530])
  {
LABEL_20:

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = v17[1];
  v21 = *(v20 + 16);
  if (!v21)
  {

    v22 = sub_1AF8A9FB0(MEMORY[0x1E69E7CC0]);
    v24 = v23;

    *v17 = v22;
    v17[1] = v24;
LABEL_21:
  }

  sub_1AFC077F8(0, v21, 0);
  if (*(v19 + 16))
  {
    sub_1AF0D3F10(*(v20 + 32));
  }

  swift_dynamicCast();
  v26 = sub_1AF97228C();
  v27 = sub_1AF3D6FA0(v26, a7);

  v28 = *(v27 + 16);
  if (v28)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v28, 0);
    v29 = *(v41 + 16);
    v30 = 16 * v29;
    v31 = (v27 + 40);
    do
    {
      v33 = *(v31 - 1);
      if (v33)
      {
        v34 = *v31;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v41 + 24);
      v36 = v29 + 1;

      if (v29 >= v35 >> 1)
      {
        sub_1AFC05D04(v35 > 1, v36, 1);
      }

      v31 += 2;
      *(v41 + 16) = v36;
      v32 = v41 + v30;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      v30 += 16;
      ++v29;
      --v28;
    }

    while (v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF417BB0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, __objc2_class **a6, uint64_t *a7)
{
  v9 = v8;
  v56 = a6;
  v52 = a3;
  v53 = a5;
  v50 = a1;
  v51 = a2;
  v60[1] = *MEMORY[0x1E69E9840];
  v11 = *(v7 + 16);
  v49 = v7 + 16;
  v12 = MEMORY[0x1E69E7CC0];
  v55 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    v60[0] = MEMORY[0x1E69E7CC0];
    v13 = swift_allocObject();
    v14 = &v49;
    *(v13 + 16) = v11;
    MEMORY[0x1EEE9AC00](v13, v15);
    LOBYTE(v47) = 0;
    v48 = v60;
    MEMORY[0x1EEE9AC00](v16, v17);
    v18 = v46;
    v46[2] = sub_1AF449D54;
    v46[3] = v19;
    swift_bridgeObjectRetain_n();
    v59[0] = sub_1AF42B0F4(v12);
    v59[1] = v20;
    sub_1AF412D4C(sub_1AF441EF8, v46, 1, 0x1000000000000000uLL, 0, v12, v59);
    if (v8)
    {

      __break(1u);
      goto LABEL_28;
    }

    v9 = 0;

    v11 = v60[0];
  }

  v54 = a7;
  v59[0] = sub_1AF0D4098(v12, sub_1AF44034C, sub_1AF0D3F10);
  v60[0] = v12;
  if (v11 >> 62)
  {
    v21 = sub_1AFDFE108();
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v55, sub_1AF4410A8);

  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B2719C70](v22, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v22 + 32);
      }

      sub_1AF3E707C(v23, v52 & 1, v55, v53 & 1, v56, v50, v51, v59, v54, v60);
      if (v9)
      {
        break;
      }

      if (v21 == ++v22)
      {
        goto LABEL_15;
      }
    }

    sub_1AF4410E4(v55, sub_1AF441114);

    goto LABEL_22;
  }

LABEL_15:

  sub_1AF4410E4(v55, sub_1AF441114);

  if (v60[0] >> 62)
  {
    v30 = sub_1AFDFE108();
    v24 = v54;
    if (!v30)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v24 = v54;
  if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    sub_1AF48F7F8(v25);
  }

LABEL_18:
  if (type metadata accessor for Node() != MEMORY[0x1E69E6530])
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = *v24;
  v14 = v24[1];
  v8 = v14[2];
  if (!v8)
  {

    v26 = sub_1AF8A9FB0(MEMORY[0x1E69E7CC0]);
    v28 = v27;

    *v24 = v26;
    v24[1] = v28;
LABEL_23:
  }

LABEL_28:
  v58 = MEMORY[0x1E69E7CC0];

  sub_1AFC077F8(0, v8, 0);
  v31 = v18[2];
  if (v31)
  {
    v32 = sub_1AF0D3F10(v14[4]);
    if (v33)
    {
      v31 = *(v18[7] + 8 * v32);
    }

    else
    {
      v31 = 0;
    }
  }

  v57 = v31;
  swift_dynamicCast();
  v34 = sub_1AF971F68();
  v35 = sub_1AF3D80E8(v34, v54);

  v36 = *(v35 + 16);
  if (v36)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v36, 0);
    v37 = v57;
    v38 = *(v57 + 16);
    v39 = 16 * v38;
    v40 = (v35 + 40);
    do
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v57 = v37;
      v44 = v38 + 1;
      v45 = *(v37 + 24);

      if (v38 >= v45 >> 1)
      {
        sub_1AFC05E7C(v45 > 1, v44, 1);
        v37 = v57;
      }

      v40 += 2;
      *(v37 + 16) = v44;
      v41 = v37 + v39;
      *(v41 + 32) = v42;
      *(v41 + 40) = v43;
      v39 += 16;
      ++v38;
      --v36;
    }

    while (v36);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AF418138(__objc2_class **a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11)
{
  v135 = a7;
  v131 = a6;
  v133 = a5;
  v147 = *MEMORY[0x1E69E9840];
  v130 = sub_1AFDFC318();
  v16 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v17);
  v126 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v125 = v121 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v121 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v121 - v28;
  v132 = a10;
  if (*(*a10 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v31)
    {
      return result;
    }
  }

  v139 = a8;
  v32 = a9;
  if (*(*a9 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v33)
    {
      return result;
    }
  }

  v127 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v142 = *a9;
  *a9 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a9 = v142;

  v128 = a9;
  v129 = a1;
  v123 = v16;
  v124 = a3;
  if ((a3 & 1) == 0)
  {
    v59 = a3;

    goto LABEL_23;
  }

  v137 = sub_1AF96D010(a1);
  if (!v137)
  {

    v88 = v132;
    v89 = v127;
LABEL_39:
    v91 = v138;
    sub_1AF3E805C(1, a4, v133 & 1, a1, a2, v131, v135, v139, v32, v88, v89);
    v138 = v91;
    if (v91)
    {
    }

    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    v59 = a3;
    if (swift_dynamicCastMetatype())
    {
      v92 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v94 = v138;
      v95 = a4;
      v96 = sub_1AF3D6B1C(v93, v128, v132, sub_1AF3FCC84);
      v138 = v94;

      *(a1 + v92) = v96;
      a4 = v95;
    }

LABEL_23:
    v60 = v133 & 1;
    v61 = swift_allocObject();
    v62 = v135;
    v63 = v139;
    *(v61 + 16) = v135;
    *(v61 + 24) = v63;

    sub_1AF4410E4(a4, sub_1AF4410A8);

    v64 = a4;
    v65 = swift_allocObject();
    v66 = v59 & 1;
    *(v65 + 16) = v59 & 1;
    *(v65 + 24) = v64;
    *(v65 + 32) = v60;
    v67 = v131;
    *(v65 + 40) = v132;
    *(v65 + 48) = a2;
    *(v65 + 56) = v67;
    *(v65 + 64) = v62;
    v68 = v128;
    *(v65 + 72) = v63;
    *(v65 + 80) = v68;
    v69 = v127;
    *(v65 + 88) = v127;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_1AF441378;
    *(v70 + 24) = v65;
    *&v142 = a2;
    *(&v142 + 1) = v129;
    v143 = v67;
    v144 = sub_1AF441390;
    v145 = v70;
    v146 = v69;
    swift_bridgeObjectRetain_n();

    v71 = v138;
    sub_1AF441360(&v142);
    if (v71)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      LODWORD(v137) = v66;
      v122 = a2;
      v138 = v64;

      v72 = v129;

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v73 = v132;
      v74 = sub_1AF633A88(v72);
      v75 = v135;
      v76 = v133;
      v77 = v73;
      v78 = v124;
      v79 = v128;
      if (v74)
      {
        v80 = v135;
        v81 = *(v73 + 8);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v77[1] = v81;
        v83 = v79;
        if ((v82 & 1) == 0)
        {
          v81 = sub_1AF422330(0, *(v81 + 2) + 1, 1, v81, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v132[1] = v81;
        }

        v85 = *(v81 + 2);
        v84 = *(v81 + 3);
        if (v85 >= v84 >> 1)
        {
          v81 = sub_1AF422330(v84 > 1, v85 + 1, 1, v81, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v132[1] = v81;
        }

        *(v81 + 2) = v85 + 1;
        *&v81[8 * v85 + 32] = v72;
        v79 = v83;
        v77 = v132;
        v75 = v80;
        v76 = v133;
      }

      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = *v79;
      *v79 = 0x8000000000000000;
      sub_1AF850FDC(0, v72, v86);
      *v79 = v142;

      if ((v78 & 1) == 0)
      {
        v97 = v131;
        sub_1AF3E805C(v137, v138, v76 & 1, v72, v122, v131, v75, v139, v79, v77, v127);
        v136 = sub_1AF96D010(v72);
        if (v136)
        {
          v98 = v76;
          v99 = *(v123 + 16);
          v100 = v125;
          v101 = v130;
          v99(v125, v72 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v130);
          v99(v126, v100, v101);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_1AF4276E0(0, v97[2] + 1, 1, v97, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v103 = v97[2];
          v102 = v97[3];
          v104 = v123;
          if (v103 >= v102 >> 1)
          {
            v97 = sub_1AF4276E0(v102 > 1, v103 + 1, 1, v97, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v105 = v130;
          (*(v104 + 8))(v125, v130);
          v97[2] = v103 + 1;
          v106 = v97;
          (*(v104 + 32))(v97 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v103, v126, v105);
          v107 = MEMORY[0x1E69E7CC0];
          *&v142 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v142 + 1) = v108;
          v109 = *(v136 + 24);
          v134 = v136 + 24;
          v110 = sub_1AF0D4098(v107, sub_1AF44034C, sub_1AF0D3F10);
          v140 = v107;
          v141 = v110;
          if (v109 >> 62)
          {
            v111 = sub_1AFDFE108();
          }

          else
          {
            v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v138, sub_1AF4410A8);

          if (v111)
          {
            v112 = v98;
            for (i = 0; i != v111; ++i)
            {
              if ((v109 & 0xC000000000000001) != 0)
              {
                v114 = MEMORY[0x1B2719C70](i, v109);
              }

              else
              {
                v114 = *(v109 + 8 * i + 32);
              }

              sub_1AF418138(v114, v136, v137, v138, v112 & 1, v106, v135, v139, &v141, &v142, &v140);
            }
          }

          sub_1AF4410E4(v138, sub_1AF441114);

          if (v140 >> 62)
          {
            v115 = sub_1AFDFE108();
          }

          else
          {
            v115 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v72 = v129;
          if (v115)
          {

            sub_1AF48F6CC(v116);
          }

          v79 = v128;
        }

        type metadata accessor for Node();
        type metadata accessor for AuthoringNode();
        if (swift_dynamicCastMetatype())
        {
          v117 = v79;
          v118 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v120 = sub_1AF3D6B1C(v119, v117, v132, sub_1AF3FCC84);

          *(v72 + v118) = v120;
        }
      }
    }
  }

  v35 = *(v16 + 16);
  v36 = v130;
  v35(v29, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v130);
  v35(v25, v29, v36);

  v37 = v131;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v37;
  if ((v38 & 1) == 0)
  {
    v39 = sub_1AF4276E0(0, v37[2] + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v136 = sub_1AF4276E0(v40 > 1, v41 + 1, 1, v39, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  else
  {
    v136 = v39;
  }

  v42 = v123;
  v43 = v29;
  v44 = v130;
  (*(v123 + 8))(v43, v130);
  v45 = v136;
  *(v136 + 16) = v41 + 1;
  (*(v42 + 32))(v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, v25, v44);
  v46 = MEMORY[0x1E69E7CC0];
  *&v142 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v142 + 1) = v47;
  v48 = *(v137 + 24);
  v121[1] = v137 + 24;
  v49 = sub_1AF0D4098(v46, sub_1AF44034C, sub_1AF0D3F10);
  v140 = v46;
  v141 = v49;
  v50 = a4;
  if (v48 >> 62)
  {
    v51 = sub_1AFDFE108();
  }

  else
  {
    v51 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v133;
  v122 = a2;
  v53 = v135;
  v54 = v138;
  swift_bridgeObjectRetain_n();

  sub_1AF4410E4(v50, sub_1AF4410A8);
  v55 = v136;

  v134 = v48;
  if (!v51)
  {
LABEL_33:

    sub_1AF4410E4(v50, sub_1AF441114);

    v138 = v54;
    if (v140 >> 62)
    {
      v87 = sub_1AFDFE108();
    }

    else
    {
      v87 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v128;
    a1 = v129;
    v88 = v132;
    a2 = v122;
    LOBYTE(a3) = v124;
    a4 = v50;
    v89 = v127;
    if (v87)
    {

      sub_1AF48F6CC(v90);
    }

    goto LABEL_39;
  }

  v56 = 0;
  while (1)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x1B2719C70](v56, v134);
      v55 = v136;
      v57 = v58;
    }

    else
    {
      v57 = *(v134 + 8 * v56 + 32);
    }

    sub_1AF418138(v57, v137, 1, v50, v52 & 1, v55, v53, v139, &v141, &v142, &v140);
    if (v54)
    {
      break;
    }

    ++v56;
    v55 = v136;
    if (v51 == v56)
    {
      goto LABEL_33;
    }
  }

  sub_1AF4410E4(v50, sub_1AF441114);
}

uint64_t sub_1AF419184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1AF44479C(0);
  type metadata accessor for AuthoringNode();

  swift_dynamicCast();
  v6 = sub_1AF97228C();
  v7 = sub_1AF3D6C48(v6, a4);

  v8 = v21;
  v9 = *(v7 + 16);
  if (v9)
  {
    v19 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v9, 0);
    v10 = v20;
    v11 = *(v20 + 16);
    v12 = 16 * v11;
    v13 = (v7 + 40);
    do
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        v15 = *v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v20 + 24);

      if (v11 >= v16 >> 1)
      {
        sub_1AFC05D04(v16 > 1, v11 + 1, 1);
      }

      v13 += 2;
      *(v20 + 16) = v11 + 1;
      v17 = v20 + v12;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      v12 += 16;
      ++v11;
      --v9;
    }

    while (v9);

    a2 = v19;
    v8 = v21;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v8 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v10;

  swift_dynamicCast();
  return a2;
}

uint64_t sub_1AF419350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  type metadata accessor for Node();

  swift_dynamicCast();
  v6 = *(v32 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v29 = a5;
    v31 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v7, 0);
    v9 = 0;
    v10 = v31;
    v11 = *(v31 + 16);
    v12 = 16 * v11;
    do
    {
      v14 = *(v6 + v9 + 32);
      v13 = *(v6 + v9 + 40);
      v15 = *(v31 + 24);

      if (v11 >= v15 >> 1)
      {
        sub_1AFC05E2C(v15 > 1, v11 + 1, 1);
      }

      *(v31 + 16) = v11 + 1;
      v16 = v31 + v12 + v9;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      v9 += 16;
      ++v11;
      --v7;
    }

    while (v7);

    a5 = v29;
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1AF3D7A84(v10, a5);

  v18 = v32;
  v19 = *(v17 + 16);
  if (v19)
  {
    sub_1AFC05E7C(0, v19, 0);
    v20 = *(v8 + 16);
    v21 = 16 * v20;
    v22 = (v17 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v25 = v20 + 1;
      v26 = *(v8 + 24);

      if (v20 >= v26 >> 1)
      {
        sub_1AFC05E7C(v26 > 1, v25, 1);
      }

      v22 += 2;
      *(v8 + 16) = v25;
      v27 = v8 + v21;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += 16;
      ++v20;
      --v19;
    }

    while (v19);

    v18 = v32;
  }

  else
  {
  }

  *(v18 + 16) = v8;

  swift_dynamicCast();
  return a2;
}

uint64_t sub_1AF4195D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a3 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = a4;
    v30 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v5, 0);
    v7 = 0;
    v8 = v30;
    v9 = *(v30 + 16);
    v10 = 16 * v9;
    do
    {
      v11 = *(v4 + v7 + 32);
      v12 = *(v4 + v7 + 40);
      v13 = *(v30 + 24);

      if (v9 >= v13 >> 1)
      {
        sub_1AFC05E2C(v13 > 1, v9 + 1, 1);
      }

      *(v30 + 16) = v9 + 1;
      v14 = v30 + v10 + v7;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      v7 += 16;
      ++v9;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
    a4 = v26;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1AF3D7DC0(v8, a4);

  v16 = *(v15 + 16);
  if (v16)
  {
    sub_1AFC05E7C(0, v16, 0);
    v17 = v6;
    v18 = *(v6 + 16);
    v19 = 16 * v18;
    v20 = (v15 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *(v17 + 24);

      if (v18 >= v23 >> 1)
      {
        sub_1AFC05E7C(v23 > 1, v18 + 1, 1);
      }

      v20 += 2;
      *(v17 + 16) = v18 + 1;
      v24 = v17 + v19;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      v19 += 16;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + 16) = v17;

  *a1 = a3;

  return a2;
}

float sub_1AF4197D8()
{
  type metadata accessor for ConstantNode(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_1AF0D5A54(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v1 = swift_dynamicCast();
  result = v3;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

id sub_1AF419890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_1AF4198F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1AFDFE108();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1AF419940(uint64_t a1)
{
  sub_1AFDFC318();
  v2 = MEMORY[0x1E69695A8];
  sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8]);
  v3 = sub_1AFDFCCF8();
  return sub_1AF41D294(a1, v3, MEMORY[0x1E69695A8], &qword_1EB633A10, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1AF419A14(int64x2_t *a1)
{
  v2 = a1->i64[1];
  v3 = a1[1].i64[0];
  v4 = a1[1].i64[1];
  v5 = a1[2].i64[0];
  v6 = a1[2].i64[1];
  v7 = a1[3].i64[0];
  v8 = a1[3].i64[1];
  v11 = a1[4].i64[0];
  v12 = a1[4].i64[1];
  v13 = a1[5].i64[0];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v11);
  MEMORY[0x1B271ACB0](v12);
  MEMORY[0x1B271ACB0](v13);
  sub_1AFDFF2A8();
  v9 = sub_1AFDFF2F8();

  return sub_1AF41B444(a1, v9);
}

unint64_t sub_1AF419B74(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1) & 1;
  sub_1AFDFF288();
  sub_1AF7C239C(v5, v1 | (v2 << 32));
  v3 = sub_1AFDFF2F8();
  v5[0] = v2;

  return sub_1AF41BC6C(v1 | (v2 << 32), v3);
}

unint64_t sub_1AF419BF8(unsigned __int8 a1)
{
  v2 = sub_1AF3D60F0();

  return sub_1AF41BD30(a1, v2);
}

unint64_t sub_1AF419C3C(uint64_t *a1)
{
  sub_1AFDFF288();
  sub_1AF7BC2B8();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41BFDC(a1, v2);
}

unint64_t sub_1AF419CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](a4);
  v8 = sub_1AFDFF2F8();
  return sub_1AF41C1A0(a1, a2, a3, a4, v8);
}

unint64_t sub_1AF419D60(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v2 = sub_1AFDFF2F8();
  return sub_1AF0D5DB4(a1, v2);
}

unint64_t sub_1AF419DC8(uint64_t a1)
{
  sub_1AFDFE488();
  v2 = sub_1AFDFCCF8();

  return sub_1AF41C300(a1, v2);
}

unint64_t sub_1AF419E2C(void *a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v2 = a1[4];
  v3 = *(v2 + 16);
  MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v4 = v2 + 64;
    do
    {
      v5 = *(v4 - 32);
      v6 = *(v4 - 24);
      v7 = *(v4 - 16);
      if (v7 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v5);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v5, v6, v7);
      v4 += 112;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B271ACB0](a1[3]);
  v8 = sub_1AFDFF2F8();

  return sub_1AF41C498(a1, v8);
}

unint64_t sub_1AF419F60(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41CB5C(a1, v2);
}

unint64_t sub_1AF419FCC(__int16 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CC38(a1, v2);
}

unint64_t sub_1AF41A124(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v2 = sub_1AFDFF2F8();

  return sub_1AF0D5DB4(a1, v2);
}

unint64_t sub_1AF41A190(unint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  if ((a1 & 0x100000000) == 0)
  {
    sub_1AFDFF2C8();
  }

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CF00(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_1AF41A220(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CF84(a1, v2);
}

unint64_t sub_1AF41A308(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF7FE65C();
  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41D144(a1, v2);
}

unint64_t sub_1AF41A390(uint64_t a1)
{
  sub_1AFDFC128();
  v2 = MEMORY[0x1E6968FB0];
  sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  v3 = sub_1AFDFCCF8();
  return sub_1AF41D294(a1, v3, MEMORY[0x1E6968FB0], &qword_1EB6327A0, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1AF41A4B4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF8C2834();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41D434(a1, v2);
}

uint64_t sub_1AF41A54C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFDFF288();
  a3(v10, a1, a2);
  v7 = sub_1AFDFF2F8();

  return a4(a1, a2, v7);
}

unint64_t sub_1AF41A680(unsigned __int8 a1, uint64_t a2)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](a2);
  v4 = sub_1AFDFF2F8();

  return sub_1AF41DF60(a1, a2, v4);
}

unint64_t sub_1AF41A700(unsigned __int8 *a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  v2 = type metadata accessor for TextureCache.TextureKey();
  sub_1AFDFC128();
  sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  sub_1AFDFCD08();
  v3 = &a1[*(v2 + 24)];
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = v3[24];
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 28);
  MEMORY[0x1B271ACB0](*v3);
  if (v6 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v10 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v8);
    MEMORY[0x1B271ACB0](v7);
    sub_1AFDFF2A8();
    if ((v10 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v9);
    }
  }

  sub_1AFDFF2A8();
  v11 = sub_1AFDFF2F8();

  return sub_1AF41DFE0(a1, v11);
}

unint64_t sub_1AF41A8F8(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  MEMORY[0x1B271ACB0](*(a1 + 8));
  MEMORY[0x1B271ACB0](*(a1 + 16));
  if (*(a1 + 32) == 1)
  {
    sub_1AFDFF2A8();
  }

  else
  {
    v2 = *(a1 + 24);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v2);
  }

  v3 = sub_1AFDFF2F8();

  return sub_1AF41E2B0(a1, v3);
}

unint64_t sub_1AF41A9B4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v2 = sub_1AFDFF2F8();
  return sub_1AF41E370(a1, v2);
}

unint64_t sub_1AF41AA2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v8 = sub_1AFDFF2F8();

  return sub_1AF41E3E8(a1, a2 & 1, a3, a4, v8);
}

uint64_t sub_1AF41AABC(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1AFDFF288();
  a2(a1);
  sub_1AFDFD038();

  v5 = sub_1AFDFF2F8();

  return a3(a1, v5);
}

unint64_t sub_1AF41AB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AF76ACE8(v2);
  sub_1AFDFD038();

  sub_1AFDFD038();
  v3 = sub_1AFDFF2F8();

  return sub_1AF41E8F8(a1, v3);
}

unint64_t sub_1AF41AC1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFF2A8();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B271ACB0](a3);
  }

  v8 = sub_1AFDFF2F8();

  return sub_1AF41ED94(a1, a2, a3, a4 & 1, v8);
}

unint64_t sub_1AF41ACD4(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v4 = sub_1AFDFF2F8();

  return sub_1AF41EE4C(a1, a2, v4);
}

unint64_t sub_1AF41AD6C(void *a1, void *a2)
{
  sub_1AFDFF288();
  if (a1)
  {
    sub_1AFDFF2A8();
    v4 = a1;
    sub_1AFDFDC58();

    if (a2)
    {
LABEL_3:
      sub_1AFDFF2A8();
      v5 = a2;
      sub_1AFDFDC58();

      goto LABEL_6;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1AFDFF2A8();
LABEL_6:
  v6 = sub_1AFDFF2F8();

  return sub_1AF41EED0(a1, a2, v6);
}

unint64_t sub_1AF41AE38(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](a2);
  v4 = sub_1AFDFF2F8();

  return sub_1AF41F06C(a1, a2, v4);
}

unint64_t sub_1AF41AED0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF933064();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41F0F0(a1, v2);
}

unint64_t sub_1AF41AF3C(unint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFAA0C08(v4, a1);
  v2 = sub_1AFDFF2F8();

  return sub_1AF41F478(a1, v2);
}

unint64_t sub_1AF41AFA8(uint64_t a1)
{
  v2 = sub_1AFDFE158();

  return sub_1AF41F534(a1, v2);
}

unint64_t sub_1AF41AFEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();

  v6 = sub_1AFDFF2F8();

  return sub_1AF41F5FC(a1, a2, a3, v6);
}

unint64_t sub_1AF41B134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFF288();
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4);
  sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8]);
  sub_1AFDFCD08();
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1B271ACB0](a2);
  v9 = sub_1AFDFF2F8();
  return sub_1AF41F870(a1, a2, v9);
}

unint64_t sub_1AF41B2A8(__int16 a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41FA98(a1 & 0x1FF, v2);
}

unint64_t sub_1AF41B320(unsigned __int8 a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  v2 = sub_1AFDFF2F8();

  return sub_1AF0D8024(a1, v2);
}

unint64_t sub_1AF41B38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41B444(int64x2_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 96 * result);
      if (v7->i32[0] == a1->i32[0] && v7->i64[1] == a1->i64[1])
      {
        v8 = v7[5].i64[0] == a1[5].i64[0];
        if (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v7[1], a1[1]), vceqq_s64(v7[2], a1[2])), vuzp1q_s32(vceqq_s64(v7[3], a1[3]), vceqq_s64(v7[4], a1[4]))))))
        {
          v9 = v7[5].u8[8];
          if (v8 && v9 == a1[5].u8[8])
          {
            break;
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41B530(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 1835819376;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x7473697277;
          break;
        case 3:
          v8 = 0x756E4B626D756874;
          v7 = 0xEC000000656C6B63;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x80000001AFF27030;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x80000001AFF27050;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x706954626D756874;
          break;
        case 7:
          v8 = 0xD000000000000015;
          v7 = 0x80000001AFF27070;
          break;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x80000001AFF27090;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF270B0;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001AFF270D0;
          break;
        case 0xB:
          v8 = 0x6E69467865646E69;
          v7 = 0xEE00706954726567;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000001AFF27100;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x80000001AFF27120;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001AFF27140;
          break;
        case 0xF:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF27160;
          break;
        case 0x10:
          v9 = 1684302189;
          goto LABEL_32;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x80000001AFF27190;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x80000001AFF271B0;
          break;
        case 0x13:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001AFF271D0;
          break;
        case 0x14:
          v8 = 0xD000000000000019;
          v7 = 0x80000001AFF271F0;
          break;
        case 0x15:
          v8 = 0x676E6946676E6972;
          v7 = 0xED00007069547265;
          break;
        case 0x16:
          v8 = 0xD000000000000016;
          v7 = 0x80000001AFF27220;
          break;
        case 0x17:
          v8 = 0xD000000000000013;
          v7 = 0x80000001AFF27240;
          break;
        case 0x18:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001AFF27260;
          break;
        case 0x19:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF27280;
          break;
        case 0x1A:
          v9 = 1953786220;
LABEL_32:
          v8 = v9 | 0x6946656C00000000;
          v7 = 0xEF7069547265676ELL;
          break;
        case 0x1B:
          v8 = 0x576D726165726F66;
          v7 = 0xEC00000074736972;
          break;
        case 0x1C:
          v8 = 0x416D726165726F66;
          v7 = 0xEA00000000006D72;
          break;
        default:
          break;
      }

      v10 = 0xE400000000000000;
      v11 = 1953460082;
      switch(a1)
      {
        case 1:
          if (v8 == 1835819376)
          {
            goto LABEL_87;
          }

          goto LABEL_88;
        case 2:
          v10 = 0xE500000000000000;
          if (v8 != 0x7473697277)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 3:
          v12 = 0x756E4B626D756874;
          v13 = 1701604195;
          goto LABEL_57;
        case 4:
          v10 = 0x80000001AFF27030;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 5:
          v10 = 0x80000001AFF27050;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 6:
          v10 = 0xE800000000000000;
          if (v8 != 0x706954626D756874)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 7:
          v10 = 0x80000001AFF27070;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 8:
          v10 = 0x80000001AFF27090;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 9:
          v10 = 0x80000001AFF270B0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 10:
          v10 = 0x80000001AFF270D0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 11:
          v10 = 0xEE00706954726567;
          if (v8 != 0x6E69467865646E69)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 12:
          v10 = 0x80000001AFF27100;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 13:
          v10 = 0x80000001AFF27120;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 14:
          v10 = 0x80000001AFF27140;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 15:
          v10 = 0x80000001AFF27160;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 16:
          v14 = 1684302189;
          goto LABEL_92;
        case 17:
          v10 = 0x80000001AFF27190;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 18:
          v10 = 0x80000001AFF271B0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 19:
          v10 = 0x80000001AFF271D0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 20:
          v10 = 0x80000001AFF271F0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 21:
          v10 = 0xED00007069547265;
          if (v8 != 0x676E6946676E6972)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 22:
          v10 = 0x80000001AFF27220;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 23:
          v10 = 0x80000001AFF27240;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 24:
          v10 = 0x80000001AFF27260;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 25:
          v10 = 0x80000001AFF27280;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 26:
          v14 = 1953786220;
LABEL_92:
          v10 = 0xEF7069547265676ELL;
          if (v8 != (v14 | 0x6946656C00000000))
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 27:
          v12 = 0x576D726165726F66;
          v13 = 1953720690;
LABEL_57:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v12)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 28:
          v11 = 0x416D726165726F66;
          v10 = 0xEA00000000006D72;
          goto LABEL_86;
        default:
LABEL_86:
          if (v8 != v11)
          {
            goto LABEL_88;
          }

LABEL_87:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_88:
          v15 = sub_1AFDFEE28();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF41BC6C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = HIDWORD(a1) & 1;
    if (a1 > 1)
    {
      v8 = BYTE4(a1) & 1;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 1)
    {
      v9 = BYTE4(a1) & 1;
    }

    else
    {
      v9 = 0;
    }

    if (a1)
    {
      LOBYTE(v7) = 0;
    }

    do
    {
      v10 = *(v2 + 48) + 8 * result;
      v11 = *v10;
      if (*(v10 + 4) == 1)
      {
        if (v11 == 0.0)
        {
          if (v7)
          {
            return result;
          }
        }

        else if (LODWORD(v11) == 1)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && v11 == *&a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41BD30(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v25 = ~v4;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v5);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v5) > 5u)
        {
          if (v7 == 6)
          {
            v11 = 0x646E49746E696F6ALL;
            v13 = 1936024425;
          }

          else
          {
            v11 = 0x696557746E696F6ALL;
            v13 = 1937008743;
          }

          v12 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x726F6C6F63;
          }

          else
          {
            v11 = 1702521203;
          }

          if (v7 == 4)
          {
            v12 = 0xE500000000000000;
          }

          else
          {
            v12 = 0xE400000000000000;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x6C616D726F6ELL;
        }

        else
        {
          v8 = 0x7461746E6569726FLL;
        }

        if (v7 == 2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xEB000000006E6F69;
        }

        if (*(*(v27 + 48) + v5))
        {
          v10 = 0x797469636F6C6576;
        }

        else
        {
          v10 = 0x6E6F697469736F70;
        }

        if (*(*(v27 + 48) + v5) <= 1u)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (*(*(v27 + 48) + v5) <= 1u)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = v9;
        }
      }

      v14 = 0x696557746E696F6ALL;
      if (v6 == 6)
      {
        v14 = 0x646E49746E696F6ALL;
      }

      v15 = 0xEC00000073746867;
      if (v6 == 6)
      {
        v15 = 0xEC00000073656369;
      }

      v16 = 0x726F6C6F63;
      if (v6 != 4)
      {
        v16 = 1702521203;
      }

      v17 = 0xE500000000000000;
      if (v6 != 4)
      {
        v17 = 0xE400000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x6C616D726F6ELL;
      }

      else
      {
        v18 = 0x7461746E6569726FLL;
      }

      if (v6 == 2)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xEB000000006E6F69;
      }

      if (v6)
      {
        v20 = 0x797469636F6C6576;
      }

      else
      {
        v20 = 0x6E6F697469736F70;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = 0xE800000000000000;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1AFDFEE28();

      if ((v23 & 1) == 0)
      {
        v5 = (v5 + 1) & v25;
        if ((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_1AF41BFDC(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v6 = a1[1];
    v27 = *a1;
    v24 = *(v2 + 48);
    do
    {
      v7 = v24 + 72 * v4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = *(v7 + 32);
      v10 = *(v7 + 40);
      v13 = *(v7 + 48);
      v12 = *(v7 + 56);
      v26 = *(v7 + 64);
      v14 = *(v7 + 68);
      v15 = *v7 == v27 && *(v7 + 8) == v6;
      if (!v15 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v16 = v8 == a1[2] && v9 == a1[3];
      if (!v16 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = a1[5];
      if (v10)
      {
        if (!v17)
        {
          goto LABEL_4;
        }

        v18 = v11 == a1[4] && v10 == v17;
        if (!v18 && (sub_1AFDFEE28() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v17)
      {
        goto LABEL_4;
      }

      v19 = a1[7];
      if (v12)
      {
        if (!v19)
        {
          goto LABEL_4;
        }

        v20 = v13 == a1[6] && v12 == v19;
        if (!v20 && (sub_1AFDFEE28() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v19)
      {
        goto LABEL_4;
      }

      v21 = *(a1 + 68);
      if (v14)
      {
        if (*(a1 + 68))
        {
          return v4;
        }
      }

      else
      {
        if (v26 != *(a1 + 16))
        {
          v21 = 1;
        }

        if ((v21 & 1) == 0)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v23;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v13 = ~v7;
    do
    {
      v14 = (*(v9 + 48) + 32 * v8);
      if (*v14 == a1)
      {
        v15 = v14[3];
        sub_1AFDFE008();

        v17 = MEMORY[0x1B2719A10](v16, a3);

        if ((v17 & 1) != 0 && v15 == a4)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1AF41C294(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41C300(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_1AFDFE488();
  v7 = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4, v7);
      v19 = sub_1AFDFCE58();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1AF41C498(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v58 = ~v4;
    v59 = v2 + 64;
    v56 = v9;
    v57 = *a1;
    while (1)
    {
      v10 = (*(v2 + 48) + 40 * v5);
      v11 = v10[3];
      v12 = v10[4];
      v13 = *v10 == v8 && v10[1] == v9;
      if (!v13 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = v6[3];
      if (v11)
      {
        if (!v14 || v11 != v14)
        {
          goto LABEL_4;
        }
      }

      else if (v14)
      {
        goto LABEL_4;
      }

      v15 = v6[4];
      v16 = *(v12 + 16);
      if (v16 != *(v15 + 16))
      {
        goto LABEL_4;
      }

      if (!v16 || v12 == v15)
      {
        return v5;
      }

      v68 = *(v12 + 16);
      v69 = v15 + 32;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v17 = 0;
      while (2)
      {
        v24 = v12 + 32 + 112 * v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 32);
        v29 = *(v24 + 48);
        v30 = *(v24 + 64);
        v31 = *(v24 + 80);
        v32 = *(v24 + 96);
        v33 = (v69 + 112 * v17);
        v34 = v33->i64[0];
        v35 = v33[2];
        v36 = v33[3];
        v37 = v33[4];
        v38 = v33[5];
        v39 = v33[6].u8[0];
        if (v27 == 1)
        {
          if ((v33[1].i8[0] & 1) == 0 || ((v62 = v33[5], v63 = *(v24 + 80), v64 = v33[4], v65 = *(v24 + 64), v66 = v33[3], v67 = *(v24 + 48), v70 = *(v24 + 32), v75 = v33[2], v25 == v34) ? (v40 = v26 == v33->i64[1]) : (v40 = 0), !v40 && (sub_1AFDFEE28() & 1) == 0))
          {
LABEL_85:

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_92;
          }

          v28 = v70;
          v35 = v75;
          v36 = v66;
          v29 = v67;
          v37 = v64;
          v30 = v65;
          v38 = v62;
          v31 = v63;
        }

        else if ((v33[1].i8[0] & 1) != 0 || v25 != v34)
        {
          goto LABEL_85;
        }

        v41 = v28.i32[0];
        switch(v32)
        {
          case 1:
            v74 = v28.i64[0];
            v80 = v35.i64[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 1)
            {
              goto LABEL_90;
            }

            v51 = 0;
            v52 = 1;
            while (1)
            {
              if (v52)
              {
                v82 = v74;
                v46 = *(&v82 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v51 & 1)));
                v83 = v80;
                v47 = *(&v83 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v51 & 1)));
                v52 = v46 == v47;
                if (v51 == 1)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                if (v51 == 1)
                {
                  goto LABEL_90;
                }

                v52 = 0;
              }

              ++v51;
            }

          case 2:
            v72 = v28;
            v78 = v35;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 2)
            {
              goto LABEL_90;
            }

            v44 = 0;
            v45 = 1;
            while (2)
            {
              if (!v45)
              {
                if (v44 != 2)
                {
                  v45 = 0;
LABEL_51:
                  ++v44;
                  continue;
                }

                goto LABEL_90;
              }

              break;
            }

            v84 = v72;
            v46 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3)));
            v85 = v78;
            v47 = *(&v85 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3)));
            v45 = v46 == v47;
            if (v44 != 2)
            {
              goto LABEL_51;
            }

            goto LABEL_74;
          case 3:
            v73 = v28;
            v79 = v35;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 3)
            {
              goto LABEL_90;
            }

            v48 = 0;
            v49 = 1;
LABEL_62:
            if (v49)
            {
              v86 = v73;
              v46 = *(&v86 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
              v87 = v79;
              v47 = *(&v87 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
              v49 = v46 == v47;
              if (v48 != 3)
              {
                goto LABEL_61;
              }

LABEL_74:
              if (v46 != v47)
              {
                goto LABEL_90;
              }

LABEL_22:
              if (++v17 == v23)
              {

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                return v5;
              }

              continue;
            }

            if (v48 != 3)
            {
              v49 = 0;
LABEL_61:
              ++v48;
              goto LABEL_62;
            }

LABEL_90:

            swift_unknownObjectRelease();
LABEL_91:

            swift_unknownObjectRelease();
LABEL_92:
            v6 = a1;
            v2 = v61;
            v7 = v58;
            v3 = v59;
            v9 = v56;
            v8 = v57;
LABEL_4:
            v5 = (v5 + 1) & v7;
            if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              return v5;
            }

            break;
          case 4:
            if (v39 != 4)
            {
              goto LABEL_89;
            }

            v42 = vand_s8(*&vceqq_f32(v28, v35), vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]));
            v43 = vpmin_u32(v42, v42).u32[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if ((v43 & 0x80000000) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_22;
          case 5:
            if (v39 != 5)
            {
LABEL_89:
              sub_1AF4456D0(v25, v26, v27);
              goto LABEL_90;
            }

            v18 = vceqq_f32(v28, v35);
            v19 = vceqq_f32(v29, v36);
LABEL_19:
            v20 = vandq_s8(v18, v19);
            v20.i32[3] = v20.i32[2];
            goto LABEL_20;
          case 6:
            if (v39 != 6)
            {
              goto LABEL_87;
            }

            v20 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            goto LABEL_20;
          case 7:
            if (v39 != 7)
            {
              goto LABEL_87;
            }

            v50 = vand_s8(vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]), vand_s8(*&vceqq_f32(v29, v36), *&vceqq_f32(v28, v35)));
            v21 = vpmin_u32(v50, v50).u32[0];
            goto LABEL_21;
          case 8:
            if (v39 != 8)
            {
              goto LABEL_87;
            }

            v18 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            v19 = vceqq_f32(v30, v37);
            goto LABEL_19;
          case 9:
            if (v39 != 9)
            {
              goto LABEL_87;
            }

            v20 = vandq_s8(vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36)), vceqq_f32(v30, v37));
            goto LABEL_20;
          case 10:
            if (v39 != 10)
            {
              goto LABEL_87;
            }

            v53 = vceqq_f32(v29, v36);
            v54 = vand_s8(vand_s8(vand_s8(*&vextq_s8(v53, v53, 8uLL), *v53.i8), *&vceqq_f32(v28, v35)), vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]));
            v21 = vpmin_u32(v54, v54).u32[0];
            goto LABEL_21;
          case 11:
            if (v39 != 11)
            {
              goto LABEL_87;
            }

            v18 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            v19 = vandq_s8(vceqq_f32(v30, v37), vceqq_f32(v31, v38));
            goto LABEL_19;
          case 12:
            if (v39 != 12)
            {
LABEL_87:
              sub_1AF4456D0(v25, v26, v27);
LABEL_88:
              swift_unknownObjectRelease();

              goto LABEL_91;
            }

            v20 = vandq_s8(vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36)), vandq_s8(vceqq_f32(v30, v37), vceqq_f32(v31, v38)));
LABEL_20:
            v21 = vminvq_u32(v20);
LABEL_21:
            v22 = v21;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_22;
          case 13:
            v81 = v35.i16[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 13)
            {
              goto LABEL_88;
            }

            v88 = v81;
            v23 = v68;
            if ((v81 & 1) != (v41 & 1))
            {
              goto LABEL_88;
            }

            goto LABEL_22;
          case 14:
            v77 = v35.i32[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 14)
            {
              goto LABEL_88;
            }

            goto LABEL_56;
          case 15:
            v77 = v35.i32[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 15)
            {
              goto LABEL_85;
            }

LABEL_56:
            v23 = v68;
            if (v77 != v41)
            {
              goto LABEL_85;
            }

            goto LABEL_22;
          default:
            v71 = v28.f32[0];
            v76 = v35.f32[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 || v76 != v71)
            {
              goto LABEL_90;
            }

            goto LABEL_22;
        }

        break;
      }
    }
  }

  return v5;
}

unint64_t sub_1AF41CB5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      sub_1AF44596C(*(v2 + 48) + 32 * v4, v10);
      if (v10[2] == *(a1 + 16) && v10[3] == *(a1 + 24))
      {
        break;
      }

      v8 = sub_1AFDFEE28();
      sub_1AF4459C8(v10);
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    sub_1AF4459C8(v10);
  }

  return v4;
}

unint64_t sub_1AF41CC38(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v8 = (*(v2 + 48) + 2 * v4);
      if (*v8 > 1u)
      {
        if (*v8 == 2)
        {
          v9 = 0xE700000000000000;
          v10 = 0x534F6863746177;
        }

        else
        {
          v9 = 0xE400000000000000;
          v10 = 1397716596;
        }
      }

      else if (*v8)
      {
        v9 = 0xE500000000000000;
        v10 = 0x534F63616DLL;
      }

      else
      {
        v9 = 0xE300000000000000;
        v10 = 5459817;
      }

      v11 = v8[1];
      v12 = 0x534F6863746177;
      if (a1 != 2)
      {
        v12 = 1397716596;
      }

      v13 = 0xE700000000000000;
      if (a1 != 2)
      {
        v13 = 0xE400000000000000;
      }

      v14 = 0x534F63616DLL;
      if (!a1)
      {
        v14 = 5459817;
      }

      v15 = 0xE300000000000000;
      if (a1)
      {
        v15 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (a1 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v10 == v16 && v9 == v17)
      {
      }

      else
      {
        v18 = sub_1AFDFEE28();

        if ((v18 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = 0xE600000000000000;
          v20 = 0x6534366D7261;
        }

        else
        {
          v19 = 0xE800000000000000;
          v20 = 0x32335F34366D7261;
        }
      }

      else if (v11)
      {
        v19 = 0xE500000000000000;
        v20 = 0x34366D7261;
      }

      else
      {
        v19 = 0xE600000000000000;
        v20 = 0x34365F363878;
      }

      v21 = 0x32335F34366D7261;
      if (HIBYTE(a1) == 2)
      {
        v21 = 0x6534366D7261;
      }

      v22 = 0xE800000000000000;
      if (HIBYTE(a1) == 2)
      {
        v22 = 0xE600000000000000;
      }

      v23 = 0x34365F363878;
      if (HIBYTE(a1))
      {
        v23 = 0x34366D7261;
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      if (HIBYTE(a1) <= 1u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (HIBYTE(a1) <= 1u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v20 == v25 && v19 == v26)
      {

        return v4;
      }

      v7 = sub_1AFDFEE28();

      if (v7)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41CF00(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41CF84(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE100000000000000;
    v6 = a1;
    v7 = 0xE200000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x7070636A626FLL;
        }

        else
        {
          v9 = 99;
        }

        if (*(*(v2 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE100000000000000;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x6C6174656DLL;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x7466697773;
        }

        else
        {
          v9 = 29546;
        }

        if (v8 == 3)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE200000000000000;
        }
      }

      if (v6 == 3)
      {
        v11 = 0x7466697773;
      }

      else
      {
        v11 = 29546;
      }

      if (v6 == 3)
      {
        v7 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v11 = 0x6C6174656DLL;
        v7 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x7070636A626FLL;
      }

      else
      {
        v12 = 99;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v12 : v11;
      v14 = v6 <= 1 ? v5 : v7;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = sub_1AFDFEE28();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE100000000000000;
        v7 = 0xE200000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1AF41D144(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    while (1)
    {
      v8 = *(v6 + 48) + 40 * v5;
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      v18[0] = *v8;
      v18[1] = v10;
      v19 = v9;
      sub_1AF444F60(v18, v17);
      v11 = sub_1AF7FE65C();
      v13 = v12;
      if (v11 == sub_1AF7FE65C() && v13 == v14)
      {
        break;
      }

      v15 = sub_1AFDFEE28();

      sub_1AF444FBC(v18);
      if ((v15 & 1) == 0)
      {
        v5 = (v5 + 1) & v7;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    sub_1AF444FBC(v18);
  }

  return v5;
}

unint64_t sub_1AF41D294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_1AF43A5EC(v25, v26);
      v21 = sub_1AFDFCE58();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_1AF41D434(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  for (result = a2 & ~v4; ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0; result = (result + 1) & ~v4)
  {
    v6 = *(*(v2 + 48) + 8 * result);
    if (*(v6 + 96) == *(a1 + 96) && *(v6 + 100) == *(a1 + 100) && *(v6 + 102) == *(a1 + 102) && *(v6 + 104) == *(a1 + 104) && *(v6 + 108) == *(a1 + 108) && *(v6 + 110) == *(a1 + 110) && *(v6 + 112) == *(a1 + 112) && *(v6 + 116) == *(a1 + 116) && *(v6 + 118) == *(a1 + 118) && *(v6 + 120) == *(a1 + 120) && *(v6 + 124) == *(a1 + 124) && *(v6 + 126) == *(a1 + 126) && *(v6 + 128) == *(a1 + 128) && *(v6 + 132) == *(a1 + 132) && *(v6 + 134) == *(a1 + 134) && *(v6 + 136) == *(a1 + 136) && *(v6 + 140) == *(a1 + 140) && *(v6 + 142) == *(a1 + 142) && *(v6 + 144) == *(a1 + 144) && *(v6 + 148) == *(a1 + 148) && *(v6 + 150) == *(a1 + 150) && *(v6 + 152) == *(a1 + 152) && *(v6 + 156) == *(a1 + 156) && *(v6 + 158) == *(a1 + 158) && *(v6 + 160) == *(a1 + 160) && *(v6 + 164) == *(a1 + 164) && *(v6 + 166) == *(a1 + 166) && *(v6 + 168) == *(a1 + 168) && *(v6 + 172) == *(a1 + 172) && *(v6 + 174) == *(a1 + 174) && *(v6 + 16) == *(a1 + 16) && *(v6 + 20) == *(a1 + 20) && *(v6 + 22) == *(a1 + 22) && *(v6 + 24) == *(a1 + 24) && *(v6 + 28) == *(a1 + 28) && *(v6 + 30) == *(a1 + 30) && *(v6 + 32) == *(a1 + 32) && *(v6 + 36) == *(a1 + 36) && *(v6 + 38) == *(a1 + 38) && *(v6 + 40) == *(a1 + 40) && *(v6 + 44) == *(a1 + 44) && *(v6 + 46) == *(a1 + 46) && *(v6 + 48) == *(a1 + 48) && *(v6 + 52) == *(a1 + 52) && *(v6 + 54) == *(a1 + 54) && *(v6 + 56) == *(a1 + 56) && *(v6 + 60) == *(a1 + 60) && *(v6 + 62) == *(a1 + 62) && *(v6 + 64) == *(a1 + 64) && *(v6 + 68) == *(a1 + 68) && *(v6 + 70) == *(a1 + 70) && *(v6 + 72) == *(a1 + 72) && *(v6 + 76) == *(a1 + 76) && *(v6 + 78) == *(a1 + 78) && *(v6 + 80) == *(a1 + 80) && *(v6 + 84) == *(a1 + 84) && *(v6 + 86) == *(a1 + 86) && *(v6 + 88) == *(a1 + 88) && *(v6 + 92) == *(a1 + 92) && *(v6 + 94) == *(a1 + 94))
    {
      break;
    }
  }

  return result;
}

unint64_t sub_1AF41D8D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = a2 >> 62;
    v11 = ~v5;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v59 = v13;
    v54 = a1;
    v55 = (a1 >> 32) - a1;
    v56 = (0xFFFFFFFF00000001 * a1) >> 32;
    __n = BYTE6(a2);
    v57 = v3 + 64;
    v58 = ~v5;
    while (1)
    {
      v14 = (*(v7 + 48) + 16 * v6);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v21 = *(v16 + 24) - *(v16 + 16);
          if (v10 <= 1)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        goto LABEL_32;
      }

      v21 = BYTE6(v15);
      if (v17)
      {
        v21 = (0xFFFFFFFF00000001 * v16) >> 32;
      }

      if (v10 <= 1)
      {
LABEL_33:
        v22 = __n;
        if (v10)
        {
          v22 = v56;
        }

        goto LABEL_35;
      }

LABEL_27:
      if (v10 != 2)
      {
        if (!v21)
        {
          return v6;
        }

        goto LABEL_10;
      }

      v22 = *(a1 + 24) - *(a1 + 16);
LABEL_35:
      if (v21 != v22)
      {
        goto LABEL_10;
      }

      if (v21 < 1)
      {
        return v6;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          memset(__s1, 0, 14);
          if (!v10)
          {
LABEL_83:
            __s2 = a1;
            v62 = a2;
            v63 = BYTE2(a2);
            v64 = BYTE3(a2);
            v65 = BYTE4(a2);
            v66 = BYTE5(a2);
            v49 = memcmp(__s1, &__s2, __n);
            v11 = v58;
            if (!v49)
            {
              return v6;
            }

            goto LABEL_10;
          }

          if (v10 == 2)
          {
LABEL_75:
            v43 = *(a1 + 16);
            v53 = *(a1 + 24);
            sub_1AF43C9F0(v16, v15);
            v44 = sub_1AFDFBDB8();
            if (v44)
            {
              v44 = v44 + v43 - sub_1AFDFBDE8();
            }

            v45 = sub_1AFDFBDD8();
            v46 = v53 - v43;
            if (v45 < v53 - v43)
            {
              v46 = v45;
            }

            v47 = v44 + v46;
            if (!v44)
            {
              v47 = 0;
            }

            v36 = v47 - v44;
            v37 = __s1;
            v42 = v44;
            goto LABEL_82;
          }

          goto LABEL_41;
        }

        v30 = *(v16 + 16);
        sub_1AF43C9F0(v16, v15);
        v31 = sub_1AFDFBDB8();
        if (v31)
        {
          v31 = v31 + v30 - sub_1AFDFBDE8();
        }

        sub_1AFDFBDD8();
        v4 = v57;
        if (v10 == 2)
        {
LABEL_64:
          v52 = v31;
          v38 = *(a1 + 16);
          v51 = *(a1 + 24);
          v32 = sub_1AFDFBDB8();
          if (v32)
          {
            v32 = v32 + v38 - sub_1AFDFBDE8();
          }

          v39 = sub_1AFDFBDD8();
          if (v52 == v32)
          {
            goto LABEL_90;
          }

          v40 = v51 - v38;
          if (v39 < v51 - v38)
          {
            v40 = v39;
          }

          v41 = v32 + v40;
          if (!v32)
          {
            v41 = 0;
          }

          v36 = v41 - v32;
          v37 = v52;
LABEL_72:
          v42 = v32;
LABEL_82:
          v48 = memcmp(v37, v42, v36);
          sub_1AF439ED8(v16, v15);
          v4 = v57;
          goto LABEL_87;
        }
      }

      else
      {
        if (!v17)
        {
          __s1[0] = v16;
          LOWORD(__s1[1]) = v15;
          BYTE2(__s1[1]) = BYTE2(v15);
          BYTE3(__s1[1]) = BYTE3(v15);
          BYTE4(__s1[1]) = BYTE4(v15);
          BYTE5(__s1[1]) = BYTE5(v15);
          if (!v10)
          {
            goto LABEL_83;
          }

          if (v10 != 1)
          {
            goto LABEL_75;
          }

LABEL_41:
          sub_1AF43C9F0(v16, v15);
          v23 = sub_1AFDFBDB8();
          if (v23)
          {
            v23 = v23 + v54 - sub_1AFDFBDE8();
          }

          v24 = sub_1AFDFBDD8();
          v25 = v55;
          if (v24 < v55)
          {
            v25 = v24;
          }

          v26 = v23 + v25;
          if (!v23)
          {
            v26 = 0;
          }

          v27 = v26 - v23;
          v28 = __s1;
          v29 = v23;
          goto LABEL_86;
        }

        sub_1AF43C9F0(v16, v15);
        v31 = sub_1AFDFBDB8();
        if (v31)
        {
          v31 = v31 + v16 - sub_1AFDFBDE8();
        }

        sub_1AFDFBDD8();
        if (v10 == 2)
        {
          goto LABEL_64;
        }
      }

      if (v10 == 1)
      {
        v32 = sub_1AFDFBDB8();
        if (v32)
        {
          v32 = v32 + v54 - sub_1AFDFBDE8();
        }

        v33 = sub_1AFDFBDD8();
        if (v31 == v32)
        {
LABEL_90:
          sub_1AF439ED8(v16, v15);
          return v6;
        }

        v34 = v55;
        if (v33 < v55)
        {
          v34 = v33;
        }

        v35 = v32 + v34;
        if (!v32)
        {
          v35 = 0;
        }

        v36 = v35 - v32;
        v37 = v31;
        goto LABEL_72;
      }

      __s1[0] = a1;
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      v29 = __s1;
      v28 = v31;
      v27 = __n;
LABEL_86:
      v48 = memcmp(v28, v29, v27);
      sub_1AF439ED8(v16, v15);
LABEL_87:
      v11 = v58;
      if (!v48)
      {
        return v6;
      }

LABEL_10:
      v6 = (v6 + 1) & v11;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 == 0xC000000000000000;
    }

    v20 = !v18 || v10 < 3;
    if (((v20 | v59) & 1) == 0)
    {
      return v6;
    }

LABEL_32:
    v21 = 0;
    if (v10 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  return v6;
}

unint64_t sub_1AF41DE94(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1AF0D4478(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1AFDFDC48();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41DF60(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = a1;
    v8 = ~v5;
    do
    {
      v9 = (*(v3 + 48) + 16 * result);
      v10 = *v9;
      v11 = *(v9 + 1);
      if (v10 == v7 && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41DFE0(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_1AF4495B8(*(v2 + 48) + v14 * v11, v9, type metadata accessor for TextureCache.TextureKey);
      if (v13 == *v9 && (sub_1AFDFC0A8() & 1) != 0)
      {
        v15 = &v9[*(v5 + 24)];
        v17 = *v15;
        v16 = *(v15 + 1);
        v32 = *(v15 + 2);
        v33 = v16;
        LODWORD(v16) = v15[24];
        v18 = *(v15 + 4);
        v34 = *(v15 + 5);
        v35 = v18;
        v31 = *(v15 + 6);
        v36 = *(v15 + 28);
        v37 = v16;
        sub_1AF44943C(v9, type metadata accessor for TextureCache.TextureKey);
        v19 = &a1[*(v5 + 24)];
        if (v17 == *v19)
        {
          v20 = v19[24];
          v21 = *(v19 + 4);
          v22 = *(v19 + 5);
          v23 = *(v19 + 6);
          v24 = *(v19 + 28);
          if (v37 <= 0xFD)
          {
            if (v20 > 0xFD)
            {
              goto LABEL_4;
            }

            v27 = *(v19 + 1);
            v26 = *(v19 + 2);
            if ((v37 & 0x80) != 0)
            {
              if ((v20 & 0x80) == 0 || v33 != v27 || v32 != v26)
              {
                goto LABEL_4;
              }
            }

            else if (v20 & 0x80) != 0 || v33 != v27 || v32 != v26 || ((v20 ^ v37))
            {
              goto LABEL_4;
            }
          }

          else if (v20 <= 0xFD)
          {
            goto LABEL_4;
          }

          v25 = v24 & 0xFF00;
          if ((v36 & 0xFF00) == 0x300)
          {
            if (v25 == 768)
            {
              return v11;
            }
          }

          else
          {
            if (v25 == 768 || v35 != v21 || v34 != v22)
            {
              goto LABEL_4;
            }

            if (v36)
            {
              if ((v24 & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            else if ((v24 & 1) != 0 || v31 != v23)
            {
              goto LABEL_4;
            }

            if (v36 >> 8 == v24 >> 8)
            {
              return v11;
            }
          }
        }
      }

      else
      {
        sub_1AF44943C(v9, type metadata accessor for TextureCache.TextureKey);
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1AF41E2B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v8 = *(v2 + 48) + 40 * result;
      if (*v8 == *a1 && *(v8 + 8) == *(a1 + 8) && *(v8 + 16) == *(a1 + 16))
      {
        if (*(v8 + 32))
        {
          if (*(a1 + 32))
          {
            return result;
          }
        }

        else
        {
          if (*(v8 + 24) == *(a1 + 24))
          {
            v7 = *(a1 + 32);
          }

          else
          {
            v7 = 1;
          }

          if ((v7 & 1) == 0)
          {
            return result;
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41E370(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      if (*(v11 + 16) == a3 && *(v11 + 24) == a4)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AF41E4A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x746E6174736E6F43;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1752457549;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2003790918;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x6369676F4CLL;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F646E6152;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x676E69736145;
          break;
        case 6:
          v8 = 0x69737265766E6F43;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x7463656A624FLL;
          break;
        case 8:
          v8 = 0x6E69746E65726150;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xEA0000000000736ELL;
          v8 = 0x6F6974616D696E41;
          break;
        case 0xA:
          v8 = 0x616E6964726F6F43;
          v7 = 0xEB00000000736574;
          break;
        case 0xB:
          v7 = 0xE900000000000073;
          v8 = 0x656974696C697455;
          break;
        case 0xC:
          v8 = 0x47207265646E6552;
          v7 = 0xEC00000068706172;
          break;
        case 0xD:
          v7 = 0xE700000000000000;
          v8 = 0x65727574786554;
          break;
        case 0xE:
          v8 = 0x6870617267627553;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x746E6174736E6F43;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          if (v8 == 1752457549)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2003790918)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x6369676F4CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v9 = 0xE600000000000000;
          if (v8 != 0x6D6F646E6152)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x676E69736145)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x69737265766E6F43)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v9 = 0xE600000000000000;
          if (v8 != 0x7463656A624FLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E69746E65726150)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v9 = 0xEA0000000000736ELL;
          if (v8 != 0x6F6974616D696E41)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v10 = 0x616E6964726F6F43;
          v9 = 0xEB00000000736574;
          goto LABEL_44;
        case 11:
          v9 = 0xE900000000000073;
          if (v8 != 0x656974696C697455)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v9 = 0xEC00000068706172;
          if (v8 != 0x47207265646E6552)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 13:
          v9 = 0xE700000000000000;
          if (v8 != 0x65727574786554)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          if (v8 != 0x6870617267627553)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
LABEL_44:
          if (v8 != v10)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_46:
          v11 = sub_1AFDFEE28();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF41E8F8(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v31 = ~v3;
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 16);
    v34 = a1[3];
    v30 = a1[4];
    do
    {
      v9 = *(v33 + 48) + 40 * v4;
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v11 = *(v9 + 32);
      v13 = *v9 == v5 && *(v9 + 8) == v6;
      if (!v13 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v10 <= 4)
      {
        v16 = 0xD000000000000018;
        v17 = 0x80000001AFF25F50;
        if (v10 == 3)
        {
          v17 = 0x80000001AFF25F30;
        }

        if (v10 == 2)
        {
          v17 = 0x80000001AFF25F10;
        }

        else
        {
          v16 = 0xD000000000000011;
        }

        v18 = 0x70696E5365646F43;
        if (v10)
        {
          v18 = 0x656C626169726156;
        }

        v19 = 0xEF74657070696E53;
        if (!v10)
        {
          v19 = 0xEB00000000746570;
        }

        if (v10 <= 1)
        {
          v15 = v18;
        }

        else
        {
          v15 = v16;
        }

        if (v10 <= 1)
        {
          v14 = v19;
        }

        else
        {
          v14 = v17;
        }
      }

      else if (v10 > 7)
      {
        if (v10 == 8)
        {
          v14 = 0xEA00000000007478;
          v15 = 0x65746E6F43627553;
        }

        else if (v10 == 9)
        {
          v15 = 0xD000000000000014;
          v14 = 0x80000001AFF25FB0;
        }

        else
        {
          v15 = 0x656A624F65736142;
          v14 = 0xEA00000000007463;
        }
      }

      else if (v10 == 5)
      {
        v15 = 0xD000000000000013;
        v14 = 0x80000001AFF25F70;
      }

      else
      {
        if (v10 == 6)
        {
          v14 = 0xEB00000000746978;
        }

        else
        {
          v14 = 0xEC0000007972746ELL;
        }

        v15 = 0x45747865746E6F43;
      }

      if (v7 <= 4)
      {
        if (v7 <= 1)
        {
          v25 = 0x70696E5365646F43;
          v26 = 0xEB00000000746570;
          if (v7)
          {
            v25 = 0x656C626169726156;
            v26 = 0xEF74657070696E53;
          }
        }

        else
        {
          v27 = 0x80000001AFF25F50;
          if (v7 == 3)
          {
            v27 = 0x80000001AFF25F30;
          }

          if (v7 == 2)
          {
            v25 = 0xD000000000000018;
          }

          else
          {
            v25 = 0xD000000000000011;
          }

          if (v7 == 2)
          {
            v26 = 0x80000001AFF25F10;
          }

          else
          {
            v26 = v27;
          }
        }
      }

      else
      {
        v20 = 0xEA00000000007463;
        v21 = 0xEA00000000007478;
        v22 = 0xD000000000000014;
        if (v7 == 9)
        {
          v20 = 0x80000001AFF25FB0;
        }

        else
        {
          v22 = 0x656A624F65736142;
        }

        if (v7 == 8)
        {
          v22 = 0x65746E6F43627553;
        }

        else
        {
          v21 = v20;
        }

        v23 = 0xD000000000000013;
        v24 = 0xEB00000000746978;
        if (v7 != 6)
        {
          v24 = 0xEC0000007972746ELL;
        }

        if (v7 == 5)
        {
          v24 = 0x80000001AFF25F70;
        }

        else
        {
          v23 = 0x45747865746E6F43;
        }

        if (v7 <= 7)
        {
          v25 = v23;
        }

        else
        {
          v25 = v22;
        }

        if (v7 <= 7)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }
      }

      if (v15 == v25 && v14 == v26)
      {
      }

      else
      {
        v28 = sub_1AFDFEE28();

        if ((v28 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      if (v12 == v34 && v11 == v30)
      {

        return v4;
      }

      v8 = sub_1AFDFEE28();

      if (v8)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v31;
    }

    while (((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = (*(v5 + 48) + 32 * v7);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AF41EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v11 = *(v8 + 8);
      v10 = *(v8 + 12);
      if (v9 == a1 && v11 == a2 && v10 == HIDWORD(a2))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41EED0(void *a1, void *a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  v22 = v3 + 64;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v3;
    v21 = ~v4;
    do
    {
      v11 = *(v6 + 48) + 16 * v5;
      v13 = *v11;
      v12 = *(v11 + 8);
      if (*v11)
      {
        if (!a1)
        {
          goto LABEL_6;
        }

        sub_1AF0D4478(0, &qword_1ED72F7F0);
        v9 = v12;
        v14 = a1;
        v10 = v13;
        v15 = sub_1AFDFDC48();

        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_6;
        }

        v19 = v12;
        if (!v12)
        {
LABEL_16:
          v10 = a2;

          if (!a2)
          {
            return v5;
          }

          goto LABEL_5;
        }
      }

      if (!a2)
      {
        v9 = v13;
        v10 = v12;
LABEL_4:

LABEL_5:
        goto LABEL_6;
      }

      sub_1AF0D4478(0, &qword_1ED72F7F0);
      v16 = v12;
      v17 = a2;
      v18 = sub_1AFDFDC48();

      if (v18)
      {
        return v5;
      }

LABEL_6:
      v5 = (v5 + 1) & v21;
    }

    while (((*(v22 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v8 + 8);
      if (v9 == a1 && v10 == HIDWORD(a1) && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41F0F0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = &type metadata for GraphScheduling;
    do
    {
      sub_1AF447040(*(v2 + 48) + 48 * v5, v35);
      sub_1AF447040(v35, v27);
      sub_1AF447040(a1, &v30);
      if (v29)
      {
        if (v29 == 1)
        {
          v9 = v7;
          v10 = a1;
          v11 = v8;
          sub_1AF447040(v27, &v25);
          v12 = v25;
          if (v34 == 1)
          {
            v13 = v30;
            sub_1AF447144(v26, v24);
            sub_1AF447144(&v31, v23);
            v14 = sub_1AFDFCEF8();
            v16 = v15;
            if (v14 == sub_1AFDFCEF8() && v16 == v17)
            {
            }

            else
            {
              v20 = sub_1AFDFEE28();

              if ((v20 & 1) == 0)
              {

                sub_1AF4470F0(v23);
                sub_1AF4470F0(v24);
                sub_1AF44709C(v35);
                sub_1AF44709C(v27);
                v8 = v11;
                a1 = v10;
                v7 = v9;
                v3 = v2 + 64;
                goto LABEL_5;
              }
            }

            v21 = sub_1AF9B2978(v24, v23);

            sub_1AF4470F0(v23);
            sub_1AF4470F0(v24);
            sub_1AF44709C(v35);
            v8 = v11;
            a1 = v10;
            v7 = v9;
            v3 = v2 + 64;
            if (v21)
            {
              goto LABEL_31;
            }

            goto LABEL_28;
          }

          sub_1AF44709C(v35);
          sub_1AF4470F0(v26);
          v8 = v11;
          a1 = v10;
          v7 = v9;
          v3 = v2 + 64;
        }

        else if (v28 || v27[3] | v27[4] | v27[0] | v27[2] | v27[1])
        {
          sub_1AF44709C(v35);
          if (v34 == 2 && !v33 && v30 == 1)
          {
            v19 = vorrq_s8(v31, v32);
            if (!*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))
            {
LABEL_31:
              sub_1AF44709C(v27);
              return v5;
            }
          }
        }

        else
        {
          sub_1AF44709C(v35);
          if (v34 == 2 && !v33)
          {
            v18 = vorrq_s8(v31, v32);
            if (!(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v30))
            {
              goto LABEL_31;
            }
          }
        }
      }

      else
      {
        sub_1AF44709C(v35);
        sub_1AF447040(v27, &v25);
        if (!v34)
        {
          if (v25 == v30)
          {
            goto LABEL_31;
          }

LABEL_28:
          sub_1AF44709C(v27);
          goto LABEL_5;
        }
      }

      sub_1AF444058(v27, &qword_1EB638B10, v8, v8, sub_1AF0D8108);
LABEL_5:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41F478(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      sub_1AF443EE0(v7);
      v8 = sub_1AFAB5FF0(v7, a1);
      sub_1AF443F24(v7);
      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41F534(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AF442860(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B2719B80](v9, a1);
      sub_1AF4428BC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41F5FC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v23 = ~v5;
    v9 = a3;
    do
    {
      v11 = *(v4 + 48) + 24 * v6;
      v12 = *(v11 + 16);
      v13 = *v11 == a1 && *(v11 + 8) == a2;
      if (v13 || (sub_1AFDFEE28() & 1) != 0)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v14 = 0x6579616C50584656;
            v15 = 0xEB00000000565472;
          }

          else if (v12 == 4)
          {
            v15 = 0xE800000000000000;
            v14 = 0x6C74635846565345;
          }

          else
          {
            v15 = 0xE500000000000000;
            v14 = 0x726568744FLL;
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            v14 = 0x6579616C50584656;
            v15 = 0xEC00000063614D72;
          }

          else
          {
            v14 = 0xD000000000000012;
            v15 = 0x80000001AFF26120;
          }
        }

        else
        {
          v14 = 0x6579616C50584656;
          v15 = 0xE900000000000072;
        }

        v16 = 0x6C74635846565345;
        if (v9 != 4)
        {
          v16 = 0x726568744FLL;
        }

        v17 = 0xE800000000000000;
        if (v9 != 4)
        {
          v17 = 0xE500000000000000;
        }

        if (v9 == 3)
        {
          v16 = 0x6579616C50584656;
          v17 = 0xEB00000000565472;
        }

        v18 = 0xD000000000000012;
        if (v9 == 1)
        {
          v18 = 0x6579616C50584656;
        }

        v19 = 0xEC00000063614D72;
        if (v9 != 1)
        {
          v19 = 0x80000001AFF26120;
        }

        if (!v9)
        {
          v18 = 0x6579616C50584656;
          v19 = 0xE900000000000072;
        }

        if (v9 <= 2)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v9 <= 2)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v14 == v20 && v15 == v21)
        {

          return v6;
        }

        v10 = sub_1AFDFEE28();

        if (v10)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v23;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1AF41F870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v27 - v13;
  v34 = v3;
  v15 = -1 << *(v3 + 32);
  v16 = a3 & ~v15;
  v31 = v3 + 64;
  if ((*(v3 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v28 = ~v15;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v29 = v18;
    v30 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v19 = (v17 - 8);
    do
    {
      v20 = (*(v34 + 48) + 16 * v16);
      v21 = v20[1];
      v22 = v29;
      (v29)(v14, *v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5, v12);
      v23 = v17;
      v22(v9, v32 + v30, v5);

      v24 = sub_1AFDFC2D8();
      v25 = *v19;
      (*v19)(v9, v5);
      v25(v14, v5);

      if ((v24 & (v21 == v33)) == 1)
      {
        break;
      }

      v16 = (v16 + 1) & v28;
      v17 = v23;
    }

    while (((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_1AF41FA98(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) == a1) & (((a1 & 0x100) == 0) ^ *(*(v2 + 48) + 2 * result + 1))) == 1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1AF41FB68(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF444400();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF448BAC(0, &unk_1EB632390, type metadata accessor for AuthoringNode);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF41FC9C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF41FDF8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

void *sub_1AF41FF24(char a1, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v13 <= a2)
    {
      v13 = a2;
    }

    if (v12 < a2)
    {
      a2 = v13;
    }

    else
    {
      a2 = v12;
    }
  }

  v14 = a4[2];
  if (a2 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = a2;
  }

  if (v15)
  {
    a5(0);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, a6, a7, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1AF420058(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1ED726960, type metadata accessor for vfx_memory_entry_t, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

char *sub_1AF420180(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726A58, &type metadata for ChunksStorage, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4202A0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1ED726A18, sub_1AF4458D4, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 < a4 || v11 + 4 >= &a4[v9 + 4])
    {
      sub_1AF4458D4(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      sub_1AF4458D4(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4458D4(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF420408(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF42B9E0(0, &unk_1EB6386D0, &qword_1ED7268D0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4498F4(0, &qword_1ED7268D0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420554(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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
  if (a1)
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

char *sub_1AF420660(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB630940, MEMORY[0x1E69E6888], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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
  if (a1)
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

void *sub_1AF420764(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638150, type metadata accessor for DeviceType, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DeviceType(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420898(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638158, &_s15CaptureDeviceIDVN, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4209BC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6382C0, &type metadata for Property.Description, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF420AC8(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF448AC4(0, &qword_1EB638D50, &qword_1EB63F680, sub_1AF448BAC, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF448BAC(0, &qword_1EB63F680, type metadata accessor for Node);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420C48(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED721EA0, &type metadata for ShaderParameter, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 80);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 80 * v9;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

char *sub_1AF420D58(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
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

void *sub_1AF420EA0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[9 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 72 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF43A540(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420FF0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1ED726A00, sub_1AF43D154, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}