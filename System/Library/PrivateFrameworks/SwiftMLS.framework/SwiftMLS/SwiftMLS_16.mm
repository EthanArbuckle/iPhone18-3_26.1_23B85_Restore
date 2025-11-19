unint64_t MLS.Welcome.findKeyPackageIndex(_:)(__int128 *a1)
{
  v17 = a1[8];
  v18 = a1[9];
  v19 = a1[10];
  v20 = *(a1 + 22);
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v21 = *v2;
  v22 = *(v2 + 1);
  v23 = *(v2 + 1);
  v4 = MLS.KeyPackage.refHash.getter();
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    v1 = sub_26BF2B8A0(v4, v5);
    sub_26BE00258(v6, v7);
  }

  return v1;
}

uint64_t MLS.Welcome.decryptGroupSecrets(keyPackageIndex:initPriv:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = v4;
  v203 = *MEMORY[0x277D85DE8];
  v10 = sub_26C00914C();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v187 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    if (v15 > 1)
    {
      v144 = v13;
      if (v15 == 2)
      {
        v145 = *(result + 24);
      }

      else
      {
        v145 = 0;
      }
    }

    else
    {
      v144 = v13;
      v145 = BYTE6(v13);
      if (v15)
      {
        v145 = result >> 32;
      }
    }

    v155 = v183;
    if (__OFSUB__(v145, v14))
    {
      goto LABEL_210;
    }

    if (v145 == v14)
    {
      sub_26BE00258(result, v144);
      sub_26BE00258(v179, v180);
      sub_26BE00258(v190, v181);
      sub_26BE00258(v5, v6);
      sub_26BE00258(v182, a2);
      result = sub_26BE00258(v200, v201);
      v156 = v189;
      v157 = v184;
      *v184 = v188;
      v157[1] = v156;
      v157[2] = v3;
      v157[3] = v155;
      v157[4] = v177;
      goto LABEL_26;
    }

    sub_26BE01654();
    swift_allocError();
    *v158 = 0;
    v158[112] = 1;
LABEL_189:
    swift_willThrow();
    goto LABEL_190;
  }

  v18 = *(v3 + 8);
  if (*(v18 + 16) <= a1)
  {
    goto LABEL_165;
  }

  v185 = result;
  v186 = v16;
  v184 = a3;
  v19 = *(v3 + 16);
  v189 = *(v3 + 24);
  v190 = v19;
  v20 = (v18 + 48 * a1);
  v21 = v20[6];
  v22 = v20[7];
  v24 = v20[8];
  v23 = v20[9];
  v188 = v4;
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 24);
  sub_26BE00608(v21, v22);
  sub_26BE00608(v24, v23);
  v162 = v26;
  v6 = v23;
  v5 = v24;
  v28 = v188;
  v29 = v27(0x656D6F636C6557, 0xE700000000000000, v190, v189, v24, v6, v21, v22, v25, v162);
  if (v28)
  {
    sub_26BE00258(v21, v22);
    v31 = v24;
    v32 = v6;
LABEL_25:
    result = sub_26BE00258(v31, v32);
LABEL_26:
    v54 = *MEMORY[0x277D85DE8];
    return result;
  }

  v33 = v29;
  a2 = v30;
  v190 = v21;
  v34 = 0;
  v35 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_11;
    }

    v34 = *(v29 + 16);
  }

  else
  {
    if (!v35)
    {
      goto LABEL_11;
    }

    v34 = v29;
  }

  sub_26BE00608(v29, v30);
LABEL_11:
  v200 = v33;
  v201 = a2;
  v202 = v34;
  v188 = sub_26BF2F7B0();
  v189 = v36;
  v37 = sub_26BEE62D4();
  if ((v37 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v40 = 1;
    goto LABEL_19;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v3 = sub_26BF2F7B0();
      v183 = v38;
      v182 = v33;
      v181 = v22;
      goto LABEL_17;
    }

    sub_26BE01600();
    swift_allocError();
    v40 = 5;
LABEL_19:
    *v39 = v40;
    swift_willThrow();
    sub_26BE00258(v188, v189);
LABEL_24:
    v193 = &type metadata for MLS.GroupSecrets;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F158, &qword_26C01A7A0);
    v52 = sub_26C00A4FC();
    sub_26BE826C4(v52, v53, v33, a2);

    swift_willThrow();
    sub_26BE00258(v33, a2);
    sub_26BE00258(v190, v22);
    sub_26BE00258(v5, v6);
    v31 = v200;
    v32 = v201;
    goto LABEL_25;
  }

  v182 = v33;
  v181 = v22;
  v3 = v37;
  v183 = 0xF000000000000000;
LABEL_17:
  v42 = v200;
  v41 = v201;
  v43 = v202;
  sub_26BE00608(v200, v201);
  sub_26BE00608(v42, v41);
  sub_26BF30764(&v200, &v193);
  v178 = v43;
  v179 = v42;
  v180 = v41;
  if (v194)
  {
    sub_26BE00258(v200, v201);
    v44 = v180;
    v45 = v180;
    v46 = v179;
    v47 = v179;
    v48 = v183;
LABEL_22:
    sub_26BE00258(v47, v45);
    v200 = v46;
    v201 = v44;
    v202 = v178;
    sub_26BE01600();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_26BE00258(v188, v189);
    v50 = v3;
    v51 = v48;
LABEL_23:
    sub_26BE136AC(v50, v51);
    v22 = v181;
    v33 = v182;
    goto LABEL_24;
  }

  v171 = a2;
  v55 = v193;
  sub_26BE00258(v179, v180);
  if (v55 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v56 = 5;
    swift_willThrow();
    a2 = v171;
LABEL_191:
    v159 = v180;
    v160 = v179;
    v161 = v178;
    sub_26BE00258(v200, v201);
    v200 = v160;
    v201 = v159;
    v202 = v161;
    swift_willThrow();
    sub_26BE00258(v188, v189);
    v50 = v3;
    v51 = v183;
    goto LABEL_23;
  }

  v176 = v3;
  result = sub_26BF2A44C(v55);
  v48 = v183;
  if (v13 >> 60 == 15)
  {
    v47 = v200;
    v45 = v201;
    a2 = v171;
    v3 = v176;
    v44 = v180;
    v46 = v179;
    goto LABEL_22;
  }

  v165 = (v186 + 8);
  v197 = result;
  v198 = v13;
  v199 = v14;
  v177 = MEMORY[0x277D84F90];
  a2 = v171;
  v170 = v24;
  while (1)
  {
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      v3 = v176;
      if (v15 == 2)
      {
        v57 = *(result + 24);
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v3 = v176;
      if (v15)
      {
        v57 = result >> 32;
      }

      else
      {
        v57 = BYTE6(v13);
      }
    }

    v58 = __OFSUB__(v57, v14);
    v59 = v57 - v14;
    if (v58)
    {
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
    }

    if (v59 < 1)
    {
      goto LABEL_166;
    }

    LOBYTE(v191) = 0;
    v186 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_193;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        v60 = result >> 32;
      }

      else
      {
        v60 = BYTE6(v13);
      }

LABEL_48:
      if (v60 < v186)
      {
        goto LABEL_170;
      }

      goto LABEL_51;
    }

    if (v15 == 2)
    {
      v60 = *(result + 24);
      goto LABEL_48;
    }

    if (v186 > 0)
    {
LABEL_170:
      sub_26BE01600();
      swift_allocError();
      *v146 = 1;
      goto LABEL_189;
    }

LABEL_51:
    v174 = v13 >> 62;
    v193 = result;
    v194 = v13;
    if (v186 < v14)
    {
      goto LABEL_194;
    }

    v61 = v186;
    *&__dst = v14;
    *(&__dst + 1) = v186;
    v173 = result;
    v175 = v13;
    sub_26BE00608(result, v13);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v63 = sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    v172 = v62;
    v169 = v63;
    sub_26C008E1C();
    sub_26BE00258(v193, v194);
    v199 = v61;
    if (v191 == 1)
    {
      break;
    }

    if (v191 != 2)
    {
      if (v174 > 1)
      {
        v74 = v173;
        if (v174 == 2)
        {
          v73 = *(v173 + 24);
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = BYTE6(v175);
        v74 = v173;
        if (v174)
        {
          v73 = v173 >> 32;
        }
      }

      v58 = __OFSUB__(v73, v186);
      v75 = v73 - v186;
      if (v58)
      {
        goto LABEL_199;
      }

      v76 = v186 + v75;
      if (__OFADD__(v186, v75))
      {
        goto LABEL_200;
      }

      if (v174 > 1)
      {
        if (v174 != 2)
        {
          if (v76 > 0)
          {
LABEL_177:
            sub_26BE01600();
            swift_allocError();
            *v150 = 5;
            swift_willThrow();
            goto LABEL_182;
          }

LABEL_96:
          v174 = v191;
          if (v76 < v186)
          {
            goto LABEL_202;
          }

          result = sub_26C00909C();
          v87 = result;
          v88 = v86 >> 62;
          if ((v86 >> 62) > 1)
          {
            if (v88 != 2)
            {
              goto LABEL_109;
            }

            v91 = *(result + 16);
            v90 = *(result + 24);
            v89 = v90 - v91;
            if (__OFSUB__(v90, v91))
            {
              goto LABEL_209;
            }
          }

          else if (v88)
          {
            if (__OFSUB__(HIDWORD(result), result))
            {
              goto LABEL_208;
            }

            v89 = HIDWORD(result) - result;
          }

          else
          {
            v89 = BYTE6(v86);
          }

          if (v89)
          {
            v92 = v86;
            if (v89 < 1)
            {
              v93 = MEMORY[0x277D84F90];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
              v93 = swift_allocObject();
              v94 = _swift_stdlib_malloc_size(v93);
              v93[1].Kind = v89;
              v93[1].Description = (2 * v94 - 64);
            }

            v102 = v187;
            v103 = sub_26C00902C();
            v104 = v87;
            v105 = v103;
            sub_26BE00258(v104, v92);
            result = (*v165)(v102, v185);
            if (v105 != v89)
            {
              goto LABEL_207;
            }

            goto LABEL_132;
          }

LABEL_109:
          sub_26BE00258(result, v86);
          v93 = MEMORY[0x277D84F90];
LABEL_132:
          v199 = v76;
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
          v195 = v106;
          v196 = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0);
          v193 = v93;
          v107 = __swift_project_boxed_opaque_existential_1(&v193, v106);
          v108 = *v107;
          v109 = *(*v107 + 16);
          if (v109)
          {
            if (v109 <= 0xE)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = v109;
              memcpy(&__dst, (v108 + 32), v109);
              v186 = __dst;
              v115 = v164 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);

              v164 = v115;
            }

            else
            {
              v110 = sub_26C008EEC();
              v111 = *(v110 + 48);
              v112 = *(v110 + 52);
              swift_allocObject();

              v113 = sub_26C008E8C();
              v114 = v113;
              if (v109 >= 0x7FFFFFFF)
              {
                sub_26C00904C();
                v116 = swift_allocObject();
                *(v116 + 16) = 0;
                *(v116 + 24) = v109;
                v186 = v116;
                v115 = v114 | 0x8000000000000000;
              }

              else
              {
                v186 = v109 << 32;
                v115 = v113 | 0x4000000000000000;
              }
            }
          }

          else
          {

            v186 = 0;
            v115 = 0xC000000000000000;
          }

          v3 = v176;
          __swift_destroy_boxed_opaque_existential_1(&v193);

          v173 = 0;
          v172 = v115 | 0x2000000000000000;
          v82 = v197;
          v83 = v198;
          v167 = v199;
          v5 = v170;
          goto LABEL_140;
        }

        v77 = *(v74 + 24);
      }

      else if (v174)
      {
        v77 = v74 >> 32;
      }

      else
      {
        v77 = BYTE6(v175);
      }

      if (v77 < v76)
      {
        goto LABEL_177;
      }

      goto LABEL_96;
    }

    LOBYTE(v191) = 0;
    v64 = v186 + 1;
    if (__OFADD__(v186, 1))
    {
      goto LABEL_198;
    }

    if (v174 <= 1)
    {
      if (v174)
      {
        v65 = v173 >> 32;
      }

      else
      {
        v65 = BYTE6(v175);
      }

LABEL_82:
      if (v65 < v64)
      {
        goto LABEL_176;
      }

      goto LABEL_85;
    }

    if (v174 == 2)
    {
      v65 = *(v173 + 24);
      goto LABEL_82;
    }

    if (v64 > 0)
    {
LABEL_176:
      sub_26BE01600();
      swift_allocError();
      *v149 = 1;
      swift_willThrow();
      v5 = v170;
      a2 = v171;
      goto LABEL_183;
    }

LABEL_85:
    v193 = v173;
    v194 = v175;
    if (v64 < v186)
    {
      goto LABEL_201;
    }

    *&__dst = v186;
    *(&__dst + 1) = v186 + 1;
    sub_26BE00608(v173, v175);
    sub_26C008E1C();
    sub_26BE00258(v193, v194);
    v174 = v191;
    v199 = v64;
    v78 = sub_26BF2F7B0();
    v191 = 0;
    v80 = v199 + 8;
    a2 = v171;
    if (__OFADD__(v199, 8))
    {
      goto LABEL_204;
    }

    v81 = v78;
    v82 = v197;
    v83 = v198;
    v84 = v198 >> 62;
    if ((v198 >> 62) <= 1)
    {
      if (v84)
      {
        v85 = v197 >> 32;
      }

      else
      {
        v85 = BYTE6(v198);
      }

LABEL_121:
      if (v85 < v80)
      {
        goto LABEL_181;
      }

      goto LABEL_124;
    }

    if (v84 == 2)
    {
      v85 = *(v197 + 24);
      goto LABEL_121;
    }

    if (v80 > 0)
    {
LABEL_181:
      v153 = v79;
      sub_26BE01600();
      swift_allocError();
      *v154 = 1;
      swift_willThrow();
      sub_26BE00258(v81, v153);
LABEL_182:
      v5 = v170;
LABEL_183:
      v3 = v176;
LABEL_190:

      sub_26BE00258(v197, v198);
      goto LABEL_191;
    }

LABEL_124:
    v175 = v79;
    v186 = v78;
    v193 = v197;
    v194 = v198;
    if (v80 < v199)
    {
      goto LABEL_206;
    }

    *&__dst = v199;
    *(&__dst + 1) = v199 + 8;
    sub_26BE00608(v197, v198);
    sub_26C008E1C();
    sub_26BE00258(v193, v194);
    v173 = bswap64(v191);
    v167 = v80;
    v199 = v80;
    v172 = v175 | 0x1000000000000000;
    v5 = v170;
    v3 = v176;
LABEL_140:
    sub_26BE00608(v82, v83);
    v175 = v82;
    sub_26BE00608(v82, v83);
    sub_26BF30764(&v197, &v193);
    if (v194)
    {
      sub_26BE00258(v197, v198);
      v120 = v83;
      v147 = v175;
      v119 = v175;
      v122 = v186;
LABEL_173:
      sub_26BE00258(v119, v120);
      v197 = v147;
      v198 = v83;
      v199 = v167;
      sub_26BE01600();
      swift_allocError();
      *v148 = 1;
      swift_willThrow();
      sub_26BEE5F24(v174, v122, v172, v173, sub_26BE00258);
      goto LABEL_190;
    }

    v117 = v193;
    sub_26BE00258(v175, v83);
    v118 = v117 + v199;
    if (__OFADD__(v199, v117))
    {
      goto LABEL_195;
    }

    v119 = v197;
    v120 = v198;
    v121 = v198 >> 62;
    v122 = v186;
    if ((v198 >> 62) <= 1)
    {
      if (v121)
      {
        v123 = v197 >> 32;
      }

      else
      {
        v123 = BYTE6(v198);
      }

LABEL_148:
      if (v123 < v118)
      {
        goto LABEL_172;
      }

      goto LABEL_151;
    }

    if (v121 == 2)
    {
      v123 = *(v197 + 24);
      goto LABEL_148;
    }

    if (v118 > 0)
    {
LABEL_172:
      v147 = v175;
      goto LABEL_173;
    }

LABEL_151:
    if (v118 < v199)
    {
      goto LABEL_196;
    }

    v124 = sub_26C00909C();
    v125 = v124;
    v127 = v126;
    v199 = v118;
    v128 = v126 >> 62;
    v169 = v83;
    if ((v126 >> 62) > 1)
    {
      if (v128 != 2)
      {
        goto LABEL_159;
      }

      v124 = *(v124 + 16);
      v129 = *(v125 + 24);
    }

    else
    {
      if (!v128)
      {
        goto LABEL_159;
      }

      v124 = v124;
      v129 = v125 >> 32;
    }

    if (v129 < v124)
    {
      goto LABEL_197;
    }

LABEL_159:
    v130 = sub_26C00909C();
    v132 = v131;
    sub_26BE00258(v125, v127);
    sub_26BE00258(v175, v169);
    sub_26BEE5F24(v174, v122, v172, v173, sub_26BE00608);
    v175 = v130;
    v169 = v132;
    sub_26BE00608(v130, v132);
    v133 = v122;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_26BEEC5B8(0, *(v177 + 2) + 1, 1, v177);
    }

    v5 = v170;
    v135 = *(v177 + 2);
    v134 = *(v177 + 3);
    v168 = v118;
    v167 = v135;
    v166 = v135 + 1;
    if (v135 >= v134 >> 1)
    {
      v177 = sub_26BEEC5B8((v134 > 1), v135 + 1, 1, v177);
    }

    v136 = v174;
    v186 = v133;
    v137 = v172;
    v138 = v173;
    sub_26BEE5F24(v174, v133, v172, v173, sub_26BE00258);
    v139 = v175;
    v140 = v169;
    sub_26BE00258(v175, v169);
    v141 = v177;
    *(v177 + 2) = v166;
    v142 = &v141[48 * v167];
    v143 = v186;
    *(v142 + 4) = v136;
    *(v142 + 5) = v143;
    *(v142 + 6) = v137;
    *(v142 + 7) = v138;
    *(v142 + 8) = v139;
    *(v142 + 9) = v140;
    result = v197;
    v13 = v198;
    v14 = v168;
  }

  v66 = v173;
  v67 = v175;
  sub_26BE00608(v173, v175);
  sub_26BE00608(v66, v67);
  sub_26BF30764(&v197, &v193);
  if (v194)
  {
    sub_26BE00258(v197, v198);
    v70 = v175;
    v151 = v173;
    goto LABEL_180;
  }

  v68 = v193;
  sub_26BE00258(v173, v175);
  v69 = v68 + v199;
  if (__OFADD__(v199, v68))
  {
    goto LABEL_203;
  }

  v70 = v198;
  v71 = v198 >> 62;
  if ((v198 >> 62) <= 1)
  {
    if (v71)
    {
      v72 = v197 >> 32;
    }

    else
    {
      v72 = BYTE6(v198);
    }

    goto LABEL_111;
  }

  if (v71 != 2)
  {
    if (v69 <= 0)
    {
      goto LABEL_114;
    }

LABEL_179:
    v151 = v197;
LABEL_180:
    v5 = v170;
    v3 = v176;
    sub_26BE00258(v151, v70);
    v197 = v173;
    v198 = v175;
    v199 = v186;
    sub_26BE01600();
    swift_allocError();
    *v152 = 1;
    goto LABEL_189;
  }

  v72 = *(v197 + 24);
LABEL_111:
  if (v72 < v69)
  {
    goto LABEL_179;
  }

LABEL_114:
  if (v69 < v199)
  {
    goto LABEL_205;
  }

  v82 = v197;
  result = sub_26C00909C();
  v95 = v69;
  v96 = result;
  v98 = v97;
  v167 = v95;
  v199 = v95;
  v99 = v97 >> 62;
  if ((v97 >> 62) > 1)
  {
    if (v99 == 2)
    {
      result = *(result + 16);
      v100 = *(v96 + 24);
      goto LABEL_127;
    }

LABEL_129:
    v174 = sub_26C00909C();
    v186 = v101;
    sub_26BE00258(v96, v98);
    sub_26BE00258(v173, v175);
    v172 = 0;
    v173 = 0;
    v5 = v170;
    v3 = v176;
    v83 = v70;
    goto LABEL_140;
  }

  if (!v99)
  {
    goto LABEL_129;
  }

  result = result;
  v100 = v96 >> 32;
LABEL_127:
  if (v100 >= result)
  {
    goto LABEL_129;
  }

  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
  return result;
}

uint64_t sub_26BF2D404@<X0>(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a2;
  v143 = a3;
  v141 = a1;
  v137 = a4;
  v150 = *MEMORY[0x277D85DE8];
  v4 = sub_26C00A4EC();
  v138 = *(v4 - 8);
  v5 = *(v138 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EDC();
  v142 = *(v8 - 8);
  v9 = *(v142 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v117 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v117 - v16;
  v18 = sub_26C009EAC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26C009C8C();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v117 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  if (!*(v143 + 16))
  {
    v129 = v34;
    v130 = v19;
    v131 = v33;
    v132 = v17;
    *&v133 = v31;
    v120 = v15;
    v123 = v7;
    v124 = v4;
    v118 = v38;
    v143 = &v117 - v35;
    v122 = v37;
    v119 = v12;
    v134 = v36;
    v135 = v32;
    v136 = v8;
    v41 = *v141;
    if ((v41 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v42 = v41 != 1;
      LOBYTE(v145) = v41 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v145, v147);
      v121 = *&v147[16];
      v125 = v148;
      v141 = v149;
      *v147 = sub_26BE125AC(*&v147[8]);
      *&v147[8] = v43;
      v44 = v133;
      sub_26C009C5C();
      LOBYTE(v145) = v42;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v145, v147);
      v128 = v147[0];
      v127 = *&v147[8];
      v45 = v149;
      v126 = v148;
      v46 = v140;
      sub_26C009C3C();
      v140 = v46;
      v47 = *v147;
      v48 = v130;
      (*(v130 + 16))(v22, v45 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v18);
      v49 = v132;
      sub_26C009E6C();
      (*(v48 + 8))(v22, v18);
      v50 = v45;
      v145 = v47;
      sub_26BE016A8();
      sub_26C009ECC();
      v52 = v142 + 8;
      v51 = *(v142 + 8);
      v51(v49, v136);
      sub_26BE00258(v47, *(&v47 + 1));
      sub_26BF2ECE0(&qword_28045E8B8, MEMORY[0x277CC5330]);
      v53 = v131;
      v54 = v135;
      sub_26C009C5C();
      v147[0] = v128;
      *&v147[8] = v127;
      v148 = v126;
      v149 = v50;
      v55 = v140;
      MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v53, 0x656D6F636C6577, 0xE700000000000000, v143);
      if (v55)
      {

        v56 = *(v134 + 8);
        v56(v53, v54);
        v56(v44, v54);
LABEL_31:

        goto LABEL_32;
      }

      v142 = v52;
      v57 = *(v134 + 8);
      v57(v53, v54);
      v140 = v57;
      v57(v44, v54);

      if ((v125 & 0x8000000000000000) == 0)
      {
        v58 = v124;
        v59 = v138;
        v60 = v123;
        if (!(v125 >> 16))
        {
          sub_26C00A4DC();
          v61 = sub_26C00A49C();
          v63 = v62;
          v138 = *(v59 + 8);
          (v138)(v60, v58);
          if (v63 >> 60 == 15)
          {
            sub_26BE01654();
            swift_allocError();
            *v64 = 5;
            v64[112] = 1;
            swift_willThrow();
            v140(v143, v54);
            goto LABEL_31;
          }

          v133 = xmmword_26C00BBD0;
          v145 = xmmword_26C00BBD0;
          v146 = 0;
          v144 = bswap32(v125) >> 16;
          v65 = MEMORY[0x277CC9C18];
          v148 = MEMORY[0x277D838B0];
          v149 = MEMORY[0x277CC9C18];
          *v147 = &v144;
          *&v147[8] = &v145;
          v66 = __swift_project_boxed_opaque_existential_1(v147, MEMORY[0x277D838B0]);
          v68 = *v66;
          v67 = v66[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(v147);
          v139 = v63;
          v69 = v63 >> 62;
          if ((v63 >> 62) > 1)
          {
            v71 = 0;
            v70 = v61;
            if (v69 != 2)
            {
              goto LABEL_19;
            }

            v73 = *(v61 + 16);
            v72 = *(v61 + 24);
            v71 = v72 - v73;
            if (!__OFSUB__(v72, v73))
            {
              goto LABEL_19;
            }

            __break(1u);
          }

          else
          {
            v70 = v61;
            if (!v69)
            {
              v71 = BYTE6(v139);
              goto LABEL_19;
            }
          }

          if (__OFSUB__(HIDWORD(v70), v70))
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v71 = HIDWORD(v70) - v70;
LABEL_19:
          sub_26BF30414(v71);
          sub_26BE11228(v70, v139);
          LOBYTE(v144) = 0;
          v148 = MEMORY[0x277D838B0];
          v149 = v65;
          *v147 = &v144;
          *&v147[8] = &v144 + 1;
          v74 = __swift_project_boxed_opaque_existential_1(v147, MEMORY[0x277D838B0]);
          v76 = *v74;
          v75 = v74[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(v147);
          v148 = MEMORY[0x277CC9318];
          v149 = MEMORY[0x277CC9300];
          *v147 = v133;
          v77 = __swift_project_boxed_opaque_existential_1(v147, MEMORY[0x277CC9318]);
          sub_26BE121A0(*v77, v77[1]);
          __swift_destroy_boxed_opaque_existential_1(v147);
          v78 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
          v79 = v120;
          sub_26C009E6C();
          v80 = *(&v145 + 1) >> 62;
          v132 = v78;
          if ((*(&v145 + 1) >> 62) > 1)
          {
            if (v80 != 2)
            {
              goto LABEL_27;
            }

            v81 = *(v145 + 24);
          }

          else
          {
            if (!v80)
            {
              goto LABEL_27;
            }

            v81 = v145 >> 32;
          }

          if (v81 < 0)
          {
            __break(1u);
          }

LABEL_27:
          v82 = sub_26C00909C();
          v84 = v83;
          sub_26C009EBC();
          sub_26BE00258(v82, v84);
          sub_26BE136AC(v70, v139);
          v51(v79, v136);
          sub_26BE00258(v145, *(&v145 + 1));
          v85 = v121;
          if ((v121 & 0x8000000000000000) == 0)
          {
            v86 = v135;
            if (!(v121 >> 16))
            {
              v87 = v123;
              sub_26C00A4DC();
              v88 = sub_26C00A49C();
              v90 = v89;
              (v138)(v87, v124);
              if (v90 >> 60 == 15)
              {
                sub_26BE01654();
                swift_allocError();
                *v91 = 5;
                v91[112] = 1;
                swift_willThrow();
                v92 = v140;
                v140(v122, v86);
                v92(v143, v86);
                goto LABEL_31;
              }

              v145 = v133;
              v146 = 0;
              v144 = bswap32(v85) >> 16;
              v148 = MEMORY[0x277D838B0];
              v149 = MEMORY[0x277CC9C18];
              *v147 = &v144;
              *&v147[8] = &v145;
              v94 = __swift_project_boxed_opaque_existential_1(v147, MEMORY[0x277D838B0]);
              v96 = *v94;
              v95 = v94[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(v147);
              v97 = v90 >> 62;
              if ((v90 >> 62) > 1)
              {
                v99 = 0;
                v98 = MEMORY[0x277CC9318];
                if (v97 != 2 || (v101 = *(v88 + 16), v100 = *(v88 + 24), v99 = v100 - v101, !__OFSUB__(v100, v101)))
                {
LABEL_42:
                  sub_26BF30414(v99);
                  sub_26BE11228(v88, v90);
                  LOBYTE(v144) = 0;
                  v148 = MEMORY[0x277D838B0];
                  v149 = MEMORY[0x277CC9C18];
                  *v147 = &v144;
                  *&v147[8] = &v144 + 1;
                  v102 = __swift_project_boxed_opaque_existential_1(v147, MEMORY[0x277D838B0]);
                  v104 = *v102;
                  v103 = v102[1];
                  sub_26C00908C();
                  __swift_destroy_boxed_opaque_existential_1(v147);
                  v148 = v98;
                  v149 = MEMORY[0x277CC9300];
                  *v147 = v133;
                  v105 = __swift_project_boxed_opaque_existential_1(v147, v98);
                  sub_26BE121A0(*v105, v105[1]);
                  __swift_destroy_boxed_opaque_existential_1(v147);
                  sub_26C009E6C();
                  v106 = *(&v145 + 1) >> 62;
                  v139 = v88;
                  if ((*(&v145 + 1) >> 62) > 1)
                  {
                    if (v106 != 2 || (*(v145 + 24) & 0x8000000000000000) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  else if (!v106 || ((v145 >> 32) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_50;
                  }

                  __break(1u);
LABEL_50:
                  v107 = sub_26C00909C();
                  v109 = v108;
                  v110 = v118;
                  v111 = v143;
                  v112 = v119;
                  sub_26C009EBC();
                  sub_26BE00258(v107, v109);
                  sub_26BE136AC(v139, v90);
                  v51(v112, v136);
                  v113 = v135;
                  v140(v111, v135);
                  sub_26BE00258(v145, *(&v145 + 1));

                  v114 = *(v134 + 32);
                  v115 = v137;
                  v114(v137, v122, v113);
                  v116 = type metadata accessor for MLS.KeyAndNonce(0);
                  result = (v114)(v115 + *(v116 + 20), v110, v113);
                  goto LABEL_32;
                }

                __break(1u);
              }

              else
              {
                v98 = MEMORY[0x277CC9318];
                if (!v97)
                {
                  v99 = BYTE6(v90);
                  goto LABEL_42;
                }
              }

              if (!__OFSUB__(HIDWORD(v88), v88))
              {
                v99 = HIDWORD(v88) - v88;
                goto LABEL_42;
              }

LABEL_57:
              __break(1u);
            }

            goto LABEL_55;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  sub_26BE01654();
  swift_allocError();
  *v39 = 0xD000000000000029;
  *(v39 + 8) = 0x800000026C02B3B0;
  *(v39 + 112) = 2;
  result = swift_willThrow();
LABEL_32:
  v93 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF2E220(uint64_t a1)
{
  v2 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLS.Welcome.decryptGroupInfo(joinerSecret:preSharedKeys:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v53 = a2;
  v3 = sub_26C009F3C();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for MLS.KeyAndNonce(0);
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v18 + 16))
  {
    sub_26BE01654();
    swift_allocError();
    *v21 = 0xD000000000000029;
    *(v21 + 8) = 0x800000026C02B3B0;
    *(v21 + 112) = 2;
    return swift_willThrow();
  }

  v51 = v8;
  v52 = v18;
  v49 = v14;
  v50 = v7;
  v44 = v6;
  v45 = v3;
  v22 = *v2;
  if ((v22 - 3) >= 0xFFFFFFFE)
  {
    v23 = *(v2 + 2);
    v24 = *(v2 + 3);
    LOBYTE(v56) = v22 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v56, &v57);
    v25 = v57;
    v47 = v59;
    v48 = v58;
    v26 = v61;
    v46 = v60;
    LOWORD(v57) = v22;
    v27 = v20;
    v28 = v62;
    sub_26BF2D404(&v57, v55, v52, v20);
    if (v28)
    {
    }

    v55 = v24;
    v62 = v23;
    v29 = v50;
    (*(v51 + 16))(v12, v27, v50);
    sub_26BF2ECE0(&qword_28045E8B8, MEMORY[0x277CC5330]);
    v30 = v49;
    sub_26C009C5C();
    v31 = *(v15 + 20);
    LOBYTE(v57) = v25;
    v58 = v48;
    v59 = v47;
    v60 = v46;
    v61 = v26;
    v32 = sub_26C009C7C();
    v33 = sub_26C009C7C();
    sub_26BE0DDF0(v32, v33);
    v34 = v44;
    sub_26C009E9C();
    v57 = v62;
    v58 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26C009C3C();
    v35 = sub_26BE12418(v56);
    v37 = v36;

    v56 = xmmword_26C00BBD0;
    sub_26BE016A8();
    v38 = sub_26C009F1C();
    v40 = v39;
    v62 = v38;
    sub_26BE00258(v35, v37);
    (*(v54 + 8))(v34, v45);
    (*(v51 + 8))(v30, v29);
    v41 = 0;
    v42 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      v43 = v62;
      if (v42 == 2)
      {
        v41 = *(v62 + 16);
        goto LABEL_12;
      }
    }

    else
    {
      v43 = v62;
      if (v42)
      {
        v41 = v62;
LABEL_12:
        sub_26BE00608(v43, v40);
      }
    }

    v57 = v43;
    v58 = v40;
    v59 = v41;
    sub_26BED3A64(v53);
    sub_26BE00258(v43, v40);

    sub_26BE00258(v57, v58);
    return sub_26BF2E220(v27);
  }

  __break(1u);
  return result;
}

void *sub_26BF2E840(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_26BF2E8B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C00914C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_26BE00258(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_26BF2E840(v11, 0);
      v15 = sub_26C00902C();
      sub_26BE00258(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_26BF2EA30(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF2EA50(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF2EB08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26C008EEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26C008E8C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C00904C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26BF2EB84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26C008EEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26C008E8C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26BF2EC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF2EC78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BF2ECE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BF2ED28(unsigned __int16 *a1)
{
  v4 = sub_26C00A4EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v1 + 184);
  v11 = *(v1 + 216);
  v43[9] = *(v1 + 200);
  *v44 = v11;
  *&v44[9] = *(v1 + 225);
  v12 = *(v1 + 120);
  v13 = *(v1 + 152);
  v43[5] = *(v1 + 136);
  v43[6] = v13;
  v43[7] = *(v1 + 168);
  v43[8] = v10;
  v14 = *(v1 + 72);
  v43[0] = *(v1 + 56);
  v43[1] = v14;
  v15 = *(v1 + 104);
  v43[2] = *(v1 + 88);
  v43[3] = v15;
  v43[4] = v12;
  if (sub_26BE6917C(v43) != 1)
  {
    nullsub_1(v43);
    sub_26BE01654();
    swift_allocError();
    *v22 = 26;
    v22[112] = 0;
    swift_willThrow();
    return v1;
  }

  v45 = v5;
  v16 = v1;
  result = nullsub_1(v43);
  if ((v9 - 3) >= 0xFFFFFFFE)
  {
    v38 = v9 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v38, &v39);
    v37 = v39;
    v18 = *(&v39 + 1);
    v19 = v40;
    v20 = v41;
    v21 = v42;
    v39 = xmmword_26C00BBD0;
    v40 = 0;
    v1 = &v39;
    sub_26BE8C9AC(v16);
    if (v2)
    {

      sub_26BE00258(v39, *(&v39 + 1));
      return v1;
    }

    v34 = v20;
    v35 = v19;
    v36 = v18;
    v23 = v39;
    v24 = *(&v39 + 1) >> 62;
    if ((*(&v39 + 1) >> 62) > 1)
    {
      v25 = v21;
      if (v24 != 2)
      {
LABEL_15:
        v27 = sub_26C00909C();
        v29 = v28;
        sub_26BE00258(v23, *(&v23 + 1));
        v1 = "ls MLS 1.0 MLSMessage Reference";
        sub_26C00A4CC();
        v30 = sub_26C00A49C();
        v32 = v31;
        (*(v45 + 8))(v8, v4);
        if (v32 >> 60 == 15)
        {
          sub_26BE01654();
          swift_allocError();
          *v33 = 5;
          v33[112] = 1;
          swift_willThrow();
        }

        else
        {
          LOBYTE(v39) = v37;
          *(&v39 + 1) = v36;
          v40 = v35;
          v41 = v34;
          v42 = v25;
          v1 = MLS.Cryptography.Ciphersuite.refHashWithDataEncodedLabel(_:_:)(v30, v32, v27, v29);
          sub_26BE136AC(v30, v32);
        }

        sub_26BE00258(v27, v29);

        return v1;
      }

      v26 = *(v39 + 24);
    }

    else
    {
      v25 = v21;
      if (!v24)
      {
        goto LABEL_15;
      }

      v26 = v39 >> 32;
    }

    if (v26 < 0)
    {
      __break(1u);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF2F140(unsigned __int16 *a1)
{
  v3 = v1;
  v5 = sub_26C00A4EC();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((v11 - 3) >= 0xFFFFFFFE)
  {
    v32 = result;
    v33 = v8;
    v39 = v11 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v39, &v34);
    v12 = v34;
    v14 = *(&v34 + 1);
    v13 = v35;
    v15 = v36;
    v16 = v37;
    v34 = xmmword_26C00BBD0;
    v35 = 0;
    v17 = &v34;
    sub_26BEE3688(v3);
    if (v2)
    {

      sub_26BE00258(v34, *(&v34 + 1));
      return v17;
    }

    v30 = v13;
    v31 = v14;
    v18 = v34;
    v19 = *(&v34 + 1) >> 62;
    if ((*(&v34 + 1) >> 62) > 1)
    {
      v20 = v16;
      if (v19 != 2)
      {
        goto LABEL_12;
      }

      v21 = *(v34 + 24);
    }

    else
    {
      v20 = v16;
      if (!v19)
      {
        goto LABEL_12;
      }

      v21 = v34 >> 32;
    }

    v22 = v15;
    if ((v21 & 0x8000000000000000) == 0)
    {
LABEL_13:
      v38 = v12;
      v23 = sub_26C00909C();
      v25 = v24;
      sub_26BE00258(v18, *(&v18 + 1));
      v17 = "MLS 1.0 KeyPackage Reference";
      sub_26C00A4CC();
      v26 = sub_26C00A49C();
      v28 = v27;
      (*(v33 + 8))(v10, v32);
      if (v28 >> 60 == 15)
      {
        sub_26BE01654();
        swift_allocError();
        *v29 = 5;
        v29[112] = 1;
        swift_willThrow();
      }

      else
      {
        LOBYTE(v34) = v38;
        *(&v34 + 1) = v31;
        v35 = v30;
        v36 = v22;
        v37 = v20;
        v17 = MLS.Cryptography.Ciphersuite.refHashWithDataEncodedLabel(_:_:)(v26, v28, v23, v25);
        sub_26BE136AC(v26, v28);
      }

      sub_26BE00258(v23, v25);

      return v17;
    }

    __break(1u);
LABEL_12:
    v22 = v15;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t MLS.KeyPackage.refHash.getter()
{
  v2 = sub_26C00A4EC();
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = *v0;
  if ((v7 - 3) >= 0xFFFFFFFE)
  {
    v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = result;
    v35 = v6;
    LOBYTE(v33) = v7 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v33, &v30);
    v8 = v30;
    v9 = *(v31 + 6);
    v10 = *(v31 + 14);
    v11 = *(&v31[1] + 6);
    v12 = *(&v31[1] + 14);
    v33 = xmmword_26C00BBD0;
    v34 = 0;
    v30 = v7;
    v31[8] = *(v0 + 65);
    v31[9] = *(v0 + 73);
    *v32 = *(v0 + 81);
    *&v32[14] = *(v0 + 22);
    v31[4] = *(v0 + 33);
    v31[5] = *(v0 + 41);
    v31[6] = *(v0 + 49);
    v31[7] = *(v0 + 57);
    v31[0] = *(v0 + 1);
    v31[1] = *(v0 + 9);
    v31[2] = *(v0 + 17);
    v31[3] = *(v0 + 25);
    v13 = &v33;
    sub_26BE00A98(&v30);
    if (v1)
    {

      sub_26BE00258(v33, *(&v33 + 1));
      return v13;
    }

    v27 = v9;
    v14 = v33;
    v15 = *(&v33 + 1) >> 62;
    if ((*(&v33 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_12:
        v25 = v11;
        v26 = v8;
        v17 = sub_26C00909C();
        v19 = v18;
        sub_26BE00258(v14, *(&v14 + 1));
        v13 = "No left, right, or secret found";
        v20 = v28;
        sub_26C00A4CC();
        v21 = sub_26C00A49C();
        v23 = v22;
        (*(v35 + 8))(v20, v29);
        if (v23 >> 60 == 15)
        {
          sub_26BE01654();
          swift_allocError();
          *v24 = 5;
          v24[112] = 1;
          swift_willThrow();
        }

        else
        {
          LOBYTE(v30) = v26;
          *(v31 + 6) = v27;
          *(v31 + 14) = v10;
          *(&v31[1] + 6) = v25;
          *(&v31[1] + 14) = v12;
          v13 = MLS.Cryptography.Ciphersuite.refHashWithDataEncodedLabel(_:_:)(v21, v23, v17, v19);
          sub_26BE136AC(v21, v23);
        }

        sub_26BE00258(v17, v19);

        return v13;
      }

      v16 = *(v33 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      v16 = v33 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF2F7B0()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  sub_26BE00608(*v0, v2);
  sub_26BE00608(v3, v2);
  sub_26BF30764(v0, &v17);
  if (v1)
  {
    sub_26BE00258(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    sub_26BE00258(v3, v2);
    swift_willThrow();
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    return swift_willThrow();
  }

  if (v18)
  {
    sub_26BE00258(*v0, v0[1]);
    *v0 = v3;
    v0[1] = v2;
    v5 = v2;
    v6 = v3;
    v0[2] = v4;
LABEL_7:
    sub_26BE00258(v6, v5);
    *v0 = v3;
    v0[1] = v2;
    v0[2] = v4;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  v7 = v17;
  sub_26BE00258(v3, v2);
  result = sub_26BF2A44C(v7);
  if (v9 >> 60 == 15)
  {
    v6 = *v0;
    v5 = v0[1];
    goto LABEL_7;
  }

  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(result + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = result >> 32;
  }

  else
  {
    v13 = BYTE6(v9);
  }

  if (v13 < v10)
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = result;
    v16 = sub_26C00909C();
    sub_26BE132D4(v15, v14);
    sub_26BE00258(v3, v2);
    return v16;
  }

  return result;
}

uint64_t sub_26BF2F98C(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  v5 = *(a1 + 16);
  while (v5 != v3)
  {
    v6 = *(type metadata accessor for MLS.MLSMessage(0) - 8);
    v7 = sub_26BEE3688(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3);
    if (v1)
    {
      return sub_26BE00258(v12, *(&v12 + 1));
    }

    ++v3;
    v8 = __OFADD__(v4, v7);
    v4 += v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = sub_26BF30414(v4);
  if (v1)
  {
    return sub_26BE00258(v12, *(&v12 + 1));
  }

  v11 = v9;
  sub_26BF2A30C(&v12);
  sub_26BE00258(v12, *(&v12 + 1));
  result = v11 + v4;
  if (__OFADD__(v11, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BF2FAC0()
{
  v2 = sub_26BEEE594();
  if (v3)
  {
    sub_26BE01600();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    return v1;
  }

  v5 = v2;
  v1 = sub_26C00447C(MEMORY[0x277D84F90]);
  if (!v5)
  {
    return v1;
  }

  while (1)
  {
    v25 = sub_26BF2F7B0();
    if (v0)
    {
      v92 = v0;

      return v1;
    }

    v27 = v25;
    v28 = v26;
    sub_26BE00E2C(&v80);
    v92 = 0;
    v76 = v88;
    v77 = v89;
    v78 = v90;
    v79 = v91;
    v72 = v84;
    v73 = v85;
    v74 = v86;
    v75 = v87;
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    sub_26BE2DFC0(&v68, &v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v1;
    v30 = sub_26BEBE840(v27, v28);
    v32 = v1[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v1[3] < v35)
    {
      sub_26BE698BC(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_26BEBE840(v27, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      if (v36)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v51 = v30;
    sub_26BE6DA08();
    v30 = v51;
    if (v36)
    {
LABEL_5:
      v1 = v55;
      v6 = v55[7] + 184 * v30;
      v7 = *(v6 + 48);
      v9 = *v6;
      v8 = *(v6 + 16);
      v53[2] = *(v6 + 32);
      v53[3] = v7;
      v53[0] = v9;
      v53[1] = v8;
      v10 = *(v6 + 112);
      v12 = *(v6 + 64);
      v11 = *(v6 + 80);
      v53[6] = *(v6 + 96);
      v53[7] = v10;
      v53[4] = v12;
      v53[5] = v11;
      v14 = *(v6 + 144);
      v13 = *(v6 + 160);
      v15 = *(v6 + 128);
      v54 = *(v6 + 176);
      v53[9] = v14;
      v53[10] = v13;
      v53[8] = v15;
      v16 = v68;
      v17 = v69;
      v18 = v71;
      *(v6 + 32) = v70;
      *(v6 + 48) = v18;
      *v6 = v16;
      *(v6 + 16) = v17;
      v19 = v72;
      v20 = v73;
      v21 = v75;
      *(v6 + 96) = v74;
      *(v6 + 112) = v21;
      *(v6 + 64) = v19;
      *(v6 + 80) = v20;
      v22 = v76;
      v23 = v77;
      v24 = v78;
      *(v6 + 176) = v79;
      *(v6 + 144) = v23;
      *(v6 + 160) = v24;
      *(v6 + 128) = v22;
      sub_26BE2E01C(v53);
      v64 = v88;
      v65 = v89;
      v66 = v90;
      v67 = v91;
      v60 = v84;
      v61 = v85;
      v62 = v86;
      v63 = v87;
      v56 = v80;
      v57 = v81;
      v58 = v82;
      v59 = v83;
      sub_26BE2E01C(&v56);
      goto LABEL_6;
    }

LABEL_14:
    v1 = v55;
    v55[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v1[6] + 16 * v30);
    *v38 = v27;
    v38[1] = v28;
    v39 = v1[7] + 184 * v30;
    v40 = v79;
    v42 = v77;
    v41 = v78;
    *(v39 + 128) = v76;
    *(v39 + 144) = v42;
    *(v39 + 160) = v41;
    *(v39 + 176) = v40;
    v44 = v74;
    v43 = v75;
    v45 = v73;
    *(v39 + 64) = v72;
    *(v39 + 80) = v45;
    *(v39 + 96) = v44;
    *(v39 + 112) = v43;
    v47 = v70;
    v46 = v71;
    v48 = v69;
    *v39 = v68;
    *(v39 + 16) = v48;
    *(v39 + 32) = v47;
    *(v39 + 48) = v46;
    v58 = v82;
    v59 = v83;
    v56 = v80;
    v57 = v81;
    v62 = v86;
    v63 = v87;
    v60 = v84;
    v61 = v85;
    v67 = v91;
    v65 = v89;
    v66 = v90;
    v64 = v88;
    sub_26BE00608(v27, v28);
    sub_26BE2E01C(&v56);
    v49 = v1[2];
    v34 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v34)
    {
      goto LABEL_22;
    }

    v1[2] = v50;
LABEL_6:
    sub_26BE00258(v27, v28);
    --v5;
    v0 = v92;
    if (!v5)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BF2FE68(uint64_t *a1, void (*a2)(_OWORD *__return_ptr, uint64_t *), uint64_t a3)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  sub_26BE00608(*a1, v8);
  sub_26BF30764(a1, v28);
  if (v3)
  {
    sub_26BE00258(*a1, a1[1]);
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v10;
LABEL_3:
    swift_willThrow();
    return v4;
  }

  if (BYTE8(v28[0]))
  {
    sub_26BE00258(*a1, a1[1]);
    v4 = 0;
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v10;
    return v4;
  }

  v4 = *&v28[0];
  sub_26BE00258(v9, v8);
  if (v4 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v12 = 5;
    goto LABEL_3;
  }

  result = sub_26BF2A44C(v4);
  if (v13 >> 60 != 15)
  {
    v29 = result;
    v30 = v13;
    v31 = v14;
    v4 = MEMORY[0x277D84F90];
    v32 = a3;
    while (1)
    {
      v15 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        v16 = v15 == 2 ? *(result + 24) : 0;
      }

      else
      {
        v16 = BYTE6(v13);
        if (v15)
        {
          v16 = result >> 32;
        }
      }

      v17 = __OFSUB__(v16, v14);
      v18 = v16 - v14;
      if (v17)
      {
        break;
      }

      if (v18 < 1)
      {
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v24 = *(result + 24);
          }

          else
          {
            v24 = 0;
          }
        }

        else if (v15)
        {
          v24 = result >> 32;
        }

        else
        {
          v24 = BYTE6(v13);
        }

        if (!__OFSUB__(v24, v14))
        {
          if (v24 == v14)
          {
            sub_26BE00258(result, v13);
          }

          else
          {
            sub_26BE01654();
            swift_allocError();
            *v25 = 0;
            v25[112] = 1;
            swift_willThrow();

            sub_26BE00258(v29, v30);
          }

          return v4;
        }

LABEL_38:
        __break(1u);
        return result;
      }

      a2(v28, &v29);
      v19 = *&v28[0];
      v26 = v28[0];
      v27 = v28[1];
      v20 = *(&v28[0] + 1);
      sub_26BE00608(*&v28[0], *(&v28[0] + 1));
      sub_26BE00608(v27, *(&v27 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_26BEECDA8(0, *(v4 + 16) + 1, 1, v4);
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        v4 = sub_26BEECDA8((v21 > 1), v22 + 1, 1, v4);
      }

      sub_26BE00258(v19, v20);
      sub_26BE00258(v27, *(&v27 + 1));
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 32 * v22;
      *(v23 + 32) = v26;
      *(v23 + 48) = v27;
      result = v29;
      v13 = v30;
      v14 = v31;
    }

    __break(1u);
    goto LABEL_38;
  }

  return 0;
}

uint64_t sub_26BF3016C()
{
  v1 = sub_26C00A4EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A4CC();
  v6 = sub_26C00A49C();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  if (v8 >> 60 == 15)
  {
    sub_26BE01600();
    swift_allocError();
    *v10 = 9;
    return swift_willThrow();
  }

  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v8);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v14 = *(v6 + 16);
  v13 = *(v6 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v12 = HIDWORD(v6) - v6;
  }

LABEL_13:
  v15 = sub_26BF30414(v12);
  if (v0)
  {
    return sub_26BE136AC(v6, v8);
  }

  v16 = v15;
  sub_26BE11228(v6, v8);
  sub_26BE136AC(v6, v8);
  result = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_26BF30360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BF303B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BF30414(unint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 <= 0x3F)
    {
      LOBYTE(v13) = a1;
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v14 = &v13;
      v15 = (&v13 + 1);
      v3 = __swift_project_boxed_opaque_existential_1(&v14, MEMORY[0x277D838B0]);
      v5 = *v3;
      v4 = v3[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      result = 1;
      goto LABEL_9;
    }

    if (!(a1 >> 14))
    {
      LOWORD(v13) = bswap32(a1 | 0x4000) >> 16;
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v14 = &v13;
      v15 = (&v13 + 2);
      v6 = __swift_project_boxed_opaque_existential_1(&v14, MEMORY[0x277D838B0]);
      v8 = *v6;
      v7 = v6[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      result = 2;
      goto LABEL_9;
    }

    if (!(a1 >> 30))
    {
      v13 = bswap32(a1 | 0x80000000);
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v14 = &v13;
      v15 = &v14;
      v9 = __swift_project_boxed_opaque_existential_1(&v14, MEMORY[0x277D838B0]);
      v11 = *v9;
      v10 = v9[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      result = 4;
      goto LABEL_9;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v1 = 3;
  result = swift_willThrow();
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Varint.encode(value:)(unint64_t a1)
{
  sub_26BF30414(a1);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t static Varint.decode(data:)(uint64_t a1, unint64_t a2)
{
  v5 = 0;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v5 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v9 = a1;
  v10 = a2;
  v11 = v5;
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v9, &v8);
  if (v2)
  {
    sub_26BE00258(v9, v10);
    swift_willThrow();
  }

  else
  {
    v5 = v8;
    sub_26BE00258(v9, v10);
  }

  sub_26BE00258(a1, a2);
  return v5;
}

uint64_t sub_26BF30764@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = a1[2];
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (v5 > 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v9 = *(v6 + 24);
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  if (v9 < v5)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v5 < result)
  {
    goto LABEL_29;
  }

  v10 = sub_26C00909C();
  v12 = sub_26BF974A8(v10, v11);
  a1[2] = v5;
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);

    v14 = v13 >> 6;
    if (v13 >> 6 > 1)
    {
      if (v14 != 2)
      {
LABEL_22:
        sub_26BE01600();
        swift_allocError();
        v21 = 2;
LABEL_27:
        *v20 = v21;
        result = swift_willThrow();
        goto LABEL_18;
      }

      v17 = sub_26BF2A51C(3);
      if (v17)
      {
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_26C011280;
        *(v19 + 32) = v13;
        sub_26BE29964(v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0);
        sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
        sub_26C008E1C();

        v15 = bswap32(0);
        if (v15 >> 14)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!v14)
      {
        v15 = v13 & 0x3F;
LABEL_25:
        *a2 = v15;
        *(a2 + 8) = 0;
        goto LABEL_18;
      }

      v22 = sub_26BF2A51C(1);
      if (v22)
      {
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_26C011280;
        *(v24 + 32) = v13;
        sub_26BE29964(v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0);
        sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
        sub_26C008E1C();

        v15 = bswap32(0) >> 16;
        if (v15 > 0x3F)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    sub_26BE01600();
    swift_allocError();
    v21 = 1;
    goto LABEL_27;
  }

LABEL_17:
  *a2 = 0;
  *(a2 + 8) = 1;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF30B98(unsigned __int16 *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 92);
  v5 = *(a1 + 108);
  v71 = *(a1 + 100);
  v72[0] = v5;
  *(v72 + 9) = *(a1 + 225);
  v6 = *(a1 + 60);
  v7 = *(a1 + 76);
  v67 = *(a1 + 68);
  v68 = v7;
  v69 = *(a1 + 84);
  v70 = v4;
  v8 = *(a1 + 28);
  v9 = *(a1 + 44);
  v63 = *(a1 + 36);
  v64 = v9;
  v65 = *(a1 + 52);
  v66 = v6;
  v10 = *(a1 + 12);
  v59 = *(a1 + 4);
  v60 = v10;
  v61 = *(a1 + 20);
  v62 = v8;
  v28 = *(a1 + 39);
  LOWORD(v31) = 256;
  v11 = MEMORY[0x277D838B0];
  v12 = MEMORY[0x277CC9C18];
  *(&v46 + 1) = MEMORY[0x277D838B0];
  *&v47 = MEMORY[0x277CC9C18];
  *&v45 = &v31;
  *(&v45 + 1) = &v31 + 2;
  v13 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x277D838B0]);
  v15 = *v13;
  v14 = v13[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  LOWORD(v31) = bswap32(v3) >> 16;
  *(&v46 + 1) = v11;
  *&v47 = v12;
  *&v45 = &v31;
  *(&v45 + 1) = &v31 + 2;
  v16 = __swift_project_boxed_opaque_existential_1(&v45, v11);
  v18 = *v16;
  v17 = v16[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v57 = v71;
  v58[0] = v72[0];
  *(v58 + 9) = *(v72 + 9);
  v53 = v67;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  sub_26BE2FB24(&v59, &v31);
  v19 = sub_26BEDC390(&v45);
  if (v1)
  {
    v43 = v57;
    v44[0] = v58[0];
    *(v44 + 9) = *(v58 + 9);
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v34 = v48;
    sub_26BE71494(&v31);
    goto LABEL_3;
  }

  v22 = v19;
  v43 = v57;
  v44[0] = v58[0];
  *(v44 + 9) = *(v58 + 9);
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  sub_26BE71494(&v31);
  v23 = __OFADD__(v22, 4);
  v11 = v22 + 4;
  if (v23)
  {
    __break(1u);
  }

  if (!BYTE12(v60) || BYTE12(v60) != 1 && DWORD2(v60))
  {
    if (v28)
    {
      v24 = *(a1 + 132);
      v29[0] = *(a1 + 124);
      v29[1] = v24;
      v25 = *(a1 + 148);
      v29[2] = *(a1 + 140);
      v29[3] = v25;
      v30 = v28;
      v26 = sub_26BFAF494(v29);
      v23 = __OFADD__(v11, v26);
      v11 += v26;
      if (!v23)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    sub_26BE01654();
    swift_allocError();
    *v27 = 9;
    v27[112] = 0;
    swift_willThrow();
  }

LABEL_3:
  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O12GroupContextVSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BF30EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 320))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 312);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BF30F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 0;
    }

    if (a2)
    {
      *(result + 312) = a2;
    }
  }

  return result;
}

uint64_t sub_26BF30FC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 184))
  {
    return (*a1 + 54);
  }

  v3 = (*(a1 + 135) & 0x30 | ((*(a1 + 183) & 0x30 | ((*(a1 + 152) >> 58) & 0xC)) >> 2)) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BF31030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 54;
    if (a3 >= 0x36)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      v3 = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F));
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((-a2 >> 4) & 3) << 60;
      *(result + 136) = 0;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 58) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_26BF310DC(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = *(result + 176);
    v3 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 128) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 152) = v3;
    *(result + 176) = v2 & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
  }

  else
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0x2000000000000000;
    *(result + 160) = 0;
    *(result + 168) = 0;
    *(result + 176) = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_26BF31160(uint64_t a1)
{
  v2 = a1;
  v100 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 144);
  v98[8] = *(a1 + 128);
  v98[9] = v3;
  v98[10] = *(a1 + 160);
  v99 = *(a1 + 176);
  v4 = *(a1 + 80);
  v98[4] = *(a1 + 64);
  v98[5] = v4;
  v5 = *(a1 + 112);
  v98[6] = *(a1 + 96);
  v98[7] = v5;
  v6 = *(a1 + 16);
  v98[0] = *a1;
  v98[1] = v6;
  v7 = *(a1 + 48);
  v98[2] = *(a1 + 32);
  v98[3] = v7;
  v8 = sub_26BE5CD48(v98);
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else if (v8 == 2)
    {
      v9 = 3;
    }

    else if (v8 == 3)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    goto LABEL_21;
  }

  if (v8 <= 7)
  {
    if (v8 == 5)
    {
      v9 = 6;
    }

    else if (v8 == 6)
    {
      v9 = 7;
    }

    else
    {
      v9 = 61442;
    }

    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v9 = 61444;
    goto LABEL_21;
  }

  if (v8 == 9)
  {
    v9 = 61443;
LABEL_21:
    sub_26BE5CDC8(v98);
    goto LABEL_22;
  }

  v9 = 0xFFFF;
LABEL_22:
  LOWORD(v71) = __rev16(v9);
  v10 = MEMORY[0x277D838B0];
  v11 = MEMORY[0x277CC9C18];
  *(&v84 + 1) = MEMORY[0x277D838B0];
  *&v85 = MEMORY[0x277CC9C18];
  *&v83 = &v71;
  *(&v83 + 1) = &v71 + 2;
  v12 = __swift_project_boxed_opaque_existential_1(&v83, MEMORY[0x277D838B0]);
  v14 = *v12;
  v13 = v12[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v15 = *(v2 + 144);
  v95[8] = *(v2 + 128);
  v95[9] = v15;
  v95[10] = *(v2 + 160);
  v96 = *(v2 + 176);
  v16 = *(v2 + 80);
  v95[4] = *(v2 + 64);
  v95[5] = v16;
  v17 = *(v2 + 112);
  v95[6] = *(v2 + 96);
  v95[7] = v17;
  v18 = *(v2 + 16);
  v95[0] = *v2;
  v95[1] = v18;
  v19 = *(v2 + 48);
  v95[2] = *(v2 + 32);
  v95[3] = v19;
  LODWORD(result) = sub_26BE5CD48(v95);
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        v29 = sub_26BE5CDC8(v95);
        v79 = *(v29 + 128);
        v80 = *(v29 + 144);
        v81 = *(v29 + 160);
        v82 = *(v29 + 176);
        v75 = *(v29 + 64);
        v76 = *(v29 + 80);
        v77 = *(v29 + 96);
        v78 = *(v29 + 112);
        v71 = *v29;
        v72 = *(v29 + 16);
        v73 = *(v29 + 32);
        v74 = *(v29 + 48);
        v30 = *(v2 + 48);
        v85 = *(v2 + 32);
        v86 = v30;
        v31 = *(v2 + 16);
        v83 = *v2;
        v84 = v31;
        v32 = *(v2 + 112);
        v89 = *(v2 + 96);
        v90 = v32;
        v33 = *(v2 + 80);
        v87 = *(v2 + 64);
        v88 = v33;
        v94 = *(v2 + 176);
        v34 = *(v2 + 160);
        v92 = *(v2 + 144);
        v93 = v34;
        v91 = *(v2 + 128);
        v35 = sub_26BE5CDC8(&v83);
        sub_26BEC8CCC(v35, &v59);
        v36 = sub_26BE00A98(&v71);
        if (v1)
        {
          v67 = v79;
          v68 = v80;
          v69 = v81;
          v70 = v82;
          v63 = v75;
          v64 = v76;
          v65 = v77;
          v66 = v78;
          v59 = v71;
          v60 = v72;
          v61 = v73;
          v62 = v74;
          result = sub_26BE2E01C(&v59);
          goto LABEL_68;
        }

LABEL_58:
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v70 = v82;
        v63 = v75;
        v64 = v76;
        v65 = v77;
        v66 = v78;
        v59 = v71;
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v52 = v36;
        sub_26BE2E01C(&v59);
        result = v52 + 2;
        if (!__OFADD__(v52, 2))
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_61:
        v65 = v77;
        v66 = v78;
        *&v67 = v79;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        v64 = v76;
        v59 = v71;
        v60 = v72;
        v53 = result;
        sub_26BE00854(&v59);
        result = v53 + 2;
        if (!__OFADD__(v53, 2))
        {
          goto LABEL_68;
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    else
    {
      if (result == 2)
      {
        goto LABEL_39;
      }

      if (result == 3)
      {
        v23 = sub_26BE5CDC8(v95);
        v24 = v23[1];
        v97[0] = *v23;
        v97[1] = v24;
        v97[2] = v23[2];
        result = sub_26BECC2F8(v97);
        if (v1)
        {
          goto LABEL_68;
        }

        v25 = __OFADD__(result, 2);
        result += 2;
        if (!v25)
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_36:
        if (result != 8)
        {
          if (result != 9)
          {
            sub_26BE01654();
            swift_allocError();
            *v49 = 15;
            v49[112] = 3;
            result = swift_willThrow();
            goto LABEL_68;
          }

          goto LABEL_38;
        }

LABEL_39:
        LODWORD(v71) = bswap32(*sub_26BE5CDC8(v95));
        *(&v84 + 1) = v10;
        *&v85 = v11;
        *&v83 = &v71;
        *(&v83 + 1) = &v71 + 4;
        v26 = __swift_project_boxed_opaque_existential_1(&v83, v10);
        v28 = *v26;
        v27 = v26[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v83);
        result = 6;
        goto LABEL_68;
      }

      v39 = sub_26BE5CDC8(v95);
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);
      v83 = *v39;
      LOWORD(v84) = v40;
      *(&v84 + 1) = v41;
      result = sub_26BFAE974(&v83);
      if (v1)
      {
        goto LABEL_68;
      }

      v25 = __OFADD__(result, 2);
      result += 2;
      if (!v25)
      {
        goto LABEL_68;
      }

      __break(1u);
    }

    v42 = sub_26BE5CDC8(v95);
    v76 = *(v42 + 80);
    v77 = *(v42 + 96);
    v78 = *(v42 + 112);
    *&v79 = *(v42 + 128);
    v72 = *(v42 + 16);
    v73 = *(v42 + 32);
    v74 = *(v42 + 48);
    v75 = *(v42 + 64);
    v71 = *v42;
    v43 = *(v2 + 48);
    v85 = *(v2 + 32);
    v86 = v43;
    v44 = *(v2 + 16);
    v83 = *v2;
    v84 = v44;
    v45 = *(v2 + 112);
    v89 = *(v2 + 96);
    v90 = v45;
    v46 = *(v2 + 80);
    v87 = *(v2 + 64);
    v88 = v46;
    v94 = *(v2 + 176);
    v47 = *(v2 + 160);
    v92 = *(v2 + 144);
    v93 = v47;
    v91 = *(v2 + 128);
    v48 = sub_26BE5CDC8(&v83);
    sub_26BE5CEB0(v48, &v59);
    result = sub_26BE7DD28(&v71);
    if (v1)
    {
      v65 = v77;
      v66 = v78;
      *&v67 = v79;
      v61 = v73;
      v62 = v74;
      v63 = v75;
      v64 = v76;
      v59 = v71;
      v60 = v72;
      result = sub_26BE00854(&v59);
      goto LABEL_68;
    }

    goto LABEL_61;
  }

  if (result > 7)
  {
    goto LABEL_36;
  }

  if (result != 5)
  {
    if (result == 6)
    {
      v21 = *sub_26BE5CDC8(v95);
      v83 = xmmword_26C00BBD0;
      *&v84 = 0;
      v22 = sub_26BEEAC24(0, v21);
      if (!v1)
      {
        v2 = v22;
        result = sub_26BF30414(v22);
LABEL_73:
        v57 = result;
        sub_26BF2A30C(&v83);
        sub_26BE00258(v83, *(&v83 + 1));
        v58 = v57 + v2;
        if (__OFADD__(v57, v2))
        {
          goto LABEL_79;
        }

        result = v58 + 2;
        if (!__OFADD__(v58, 2))
        {
          goto LABEL_68;
        }

        __break(1u);
        goto LABEL_77;
      }

      result = sub_26BE00258(v83, *(&v83 + 1));
      goto LABEL_68;
    }

LABEL_38:
    sub_26BE5CDC8(v95);
    result = 2;
    goto LABEL_68;
  }

  v36 = sub_26BE5CDC8(v95);
  v2 = *v36;
  v10 = v36[1];
  v37 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v37 != 2)
    {
      v38 = 0;
      goto LABEL_67;
    }

    v51 = *(v2 + 16);
    v50 = *(v2 + 24);
    v38 = v50 - v51;
    if (!__OFSUB__(v50, v51))
    {
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (v37)
  {
LABEL_64:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

    v38 = HIDWORD(v2) - v2;
    goto LABEL_67;
  }

  v38 = BYTE6(v10);
LABEL_67:
  result = sub_26BF30414(v38);
  if (!v1)
  {
    v55 = result;
    sub_26BE11228(v2, v10);
    v56 = v55 + v38;
    if (__OFADD__(v55, v38))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    result = v56 + 2;
    if (__OFADD__(v56, 2))
    {
      __break(1u);
      goto LABEL_73;
    }
  }

LABEL_68:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF3182C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v101 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_41;
  }

  if (v5 <= 5u)
  {
    if (v5 <= 2u)
    {
      if (v5 == 1)
      {
        result = sub_26BE00E2C(&v88);
        if (!v2)
        {
          v85 = v97;
          v86 = v98;
          v80 = v92;
          v81 = v93;
          v82 = v94;
          v87 = v99;
          v83 = v95;
          v84 = v96;
          v76 = v88;
          v77 = v89;
          v78 = v90;
          v79 = v91;
          result = sub_26BE7FED4(&v76);
          v11 = v85;
          v12 = v86;
          v13 = v83;
          *(a1 + 128) = v84;
          *(a1 + 144) = v11;
          *(a1 + 160) = v12;
          *(a1 + 176) = v87;
          v14 = v81;
          *(a1 + 64) = v80;
          *(a1 + 80) = v14;
          *(a1 + 96) = v82;
          *(a1 + 112) = v13;
          v15 = v77;
          *a1 = v76;
          *(a1 + 16) = v15;
          v16 = v78;
          v17 = v79;
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v5 == 2)
      {
        result = sub_26BE7DE38(&v76);
        if (!v2)
        {
          v94 = v82;
          v95 = v83;
          *&v96 = v84;
          v90 = v78;
          v91 = v79;
          v92 = v80;
          v93 = v81;
          v88 = v76;
          v89 = v77;
          result = sub_26BE821D4(&v88);
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (v5 != 3)
    {
      if (v5 == 4)
      {
        result = sub_26BECC664(v100);
        if (!v2)
        {
          v88 = v100[0];
          v89 = v100[1];
          v90 = v100[2];
          result = sub_26BF3217C(&v88);
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      if (v5 == 5)
      {
        result = sub_26BFAEB6C(&v76);
        if (!v2)
        {
          v88 = v76;
          LOWORD(v89) = v77;
          *(&v89 + 1) = *(&v77 + 1);
          result = sub_26BF32150(&v88);
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v19 = sub_26BEE6028();
    if ((v19 & 0x100000000) == 0)
    {
      LODWORD(v88) = v19;
      result = sub_26BE71934(&v88);
      goto LABEL_35;
    }

LABEL_41:
    sub_26BE01600();
    swift_allocError();
    *v27 = 1;
    goto LABEL_42;
  }

  if (v5 > 0xF001u)
  {
    switch(v5)
    {
      case 0xF002u:
        result = sub_26BE82278(&v88);
        goto LABEL_35;
      case 0xF003u:
        result = sub_26BE800C4(&v88);
        goto LABEL_35;
      case 0xF004u:
        v7 = sub_26BEE6028();
        if ((v7 & 0x100000000) == 0)
        {
          LODWORD(v88) = v7;
          result = sub_26BE80014(&v88);
          goto LABEL_35;
        }

        goto LABEL_41;
    }

LABEL_37:
    sub_26BE01654();
    swift_allocError();
    *v24 = 15;
    v24[112] = 3;
LABEL_42:
    result = swift_willThrow();
    goto LABEL_43;
  }

  if (v5 == 6)
  {
    result = sub_26BF2F7B0();
    if (!v2)
    {
      *&v88 = result;
      *(&v88 + 1) = v18;
      result = sub_26BF32120(&v88);
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  if (v5 != 7)
  {
    goto LABEL_37;
  }

  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  sub_26BE00608(*v1, v9);
  sub_26BE00608(v8, v9);
  sub_26BF30764(v1, &v88);
  if (v2)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v8;
    v1[1] = v9;
    v1[2] = v10;
    goto LABEL_23;
  }

  if (BYTE8(v88))
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v8;
    v1[1] = v9;
    v25 = v9;
    v26 = v8;
    v1[2] = v10;
LABEL_40:
    sub_26BE00258(v26, v25);
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v10;
    goto LABEL_41;
  }

  v29 = v88;
  sub_26BE00258(v8, v9);
  if (v29 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v30 = 5;
LABEL_23:
    swift_willThrow();
LABEL_24:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v10;
    goto LABEL_42;
  }

  v31 = sub_26BF2A44C(v29);
  if (v32 >> 60 == 15)
  {
    v26 = *v3;
    v25 = v3[1];
    goto LABEL_40;
  }

  *&v76 = v31;
  *(&v76 + 1) = v32;
  v34 = v32 >> 62;
  v66 = v31 >> 32;
  v75 = MEMORY[0x277D84F90];
  v67 = BYTE6(v32);
  v68 = v32 >> 62;
  *&v77 = v33;
  v70 = v9;
  v71 = v10;
  v72 = v8;
  v69 = v31;
  if ((v32 >> 62) <= 1)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v34 == 2)
  {
    v35 = *(v31 + 24);
  }

  else
  {
    v35 = 0;
  }

  while (1)
  {
    v36 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v36)
    {
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
    }

    if (v37 < 1)
    {
      break;
    }

    v38 = v33 + 2;
    if (__OFADD__(v33, 2))
    {
      goto LABEL_107;
    }

    v39 = *(&v76 + 1);
    v40 = v76;
    v41 = *(&v76 + 1) >> 62;
    if ((*(&v76 + 1) >> 62) <= 1)
    {
      if (v41)
      {
        v42 = v76 >> 32;
      }

      else
      {
        v42 = BYTE14(v76);
      }

LABEL_63:
      if (v42 < v38)
      {
        goto LABEL_98;
      }

      goto LABEL_66;
    }

    if (v41 == 2)
    {
      v42 = *(v76 + 24);
      goto LABEL_63;
    }

    if (v38 > 0)
    {
      goto LABEL_98;
    }

LABEL_66:
    v88 = v76;
    if (v38 < v33)
    {
      goto LABEL_108;
    }

    sub_26BE00608(v76, *(&v76 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v74 = v39;
    sub_26BE016A8();
    v73 = v40;
    sub_26BE016FC();
    v43 = v39;
    sub_26C008E1C();
    sub_26BE00258(v88, *(&v88 + 1));
    *&v77 = v38;
    sub_26BE00608(v40, v39);
    sub_26BE00608(v40, v39);
    sub_26BF30764(&v76, &v88);
    if (BYTE8(v88))
    {
      sub_26BE00258(v76, *(&v76 + 1));
      v47 = v39;
      v46 = v40;
LABEL_97:
      sub_26BE00258(v46, v47);
      *&v76 = v40;
      *(&v76 + 1) = v43;
      *&v77 = v38;
LABEL_98:
      sub_26BE01600();
      swift_allocError();
      *v64 = 1;
      swift_willThrow();

      sub_26BE00258(v76, *(&v76 + 1));
      v10 = v71;
      v8 = v72;
      goto LABEL_24;
    }

    v44 = v88;
    sub_26BE00258(v40, v43);
    v36 = __OFADD__(v77, v44);
    v45 = v77 + v44;
    if (v36)
    {
      goto LABEL_109;
    }

    v47 = *(&v76 + 1);
    v46 = v76;
    v48 = *(&v76 + 1) >> 62;
    if ((*(&v76 + 1) >> 62) <= 1)
    {
      if (v48)
      {
        v49 = v76 >> 32;
      }

      else
      {
        v49 = BYTE14(v76);
      }

LABEL_75:
      if (v49 < v45)
      {
        goto LABEL_97;
      }

      goto LABEL_78;
    }

    if (v48 == 2)
    {
      v49 = *(v76 + 24);
      goto LABEL_75;
    }

    if (v45 > 0)
    {
      goto LABEL_97;
    }

LABEL_78:
    if (v45 < v77)
    {
      goto LABEL_110;
    }

    v50 = sub_26C00909C();
    v51 = v50;
    v53 = v52;
    *&v77 = v45;
    v54 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v54 != 2)
      {
        goto LABEL_86;
      }

      v50 = *(v50 + 16);
      v55 = *(v51 + 24);
    }

    else
    {
      if (!v54)
      {
        goto LABEL_86;
      }

      v50 = v50;
      v55 = v51 >> 32;
    }

    if (v55 < v50)
    {
      goto LABEL_111;
    }

LABEL_86:
    v56 = sub_26C00909C();
    v58 = v57;
    sub_26BE00258(v51, v53);
    sub_26BE00258(v73, v74);
    sub_26BE00608(v56, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_26BEEBD8C(0, *(v75 + 2) + 1, 1, v75);
    }

    v60 = *(v75 + 2);
    v59 = *(v75 + 3);
    if (v60 >= v59 >> 1)
    {
      v75 = sub_26BEEBD8C((v59 > 1), v60 + 1, 1, v75);
    }

    sub_26BE00258(v56, v58);
    *(v75 + 2) = v60 + 1;
    v61 = &v75[24 * v60];
    *(v61 + 16) = bswap32(0) >> 16;
    *(v61 + 5) = v56;
    *(v61 + 6) = v58;
    v9 = v70;
    v10 = v71;
    v8 = v72;
    v33 = v45;
    LODWORD(v34) = v68;
    v31 = v69;
    if (v68 > 1)
    {
      goto LABEL_49;
    }

LABEL_52:
    v35 = v67;
    if (v34)
    {
      v35 = v66;
    }
  }

  result = v76;
  v62 = *(&v76 + 1) >> 62;
  if ((*(&v76 + 1) >> 62) > 1)
  {
    if (v62 == 2)
    {
      v63 = *(v76 + 24);
    }

    else
    {
      v63 = 0;
    }
  }

  else if (v62)
  {
    v63 = v76 >> 32;
  }

  else
  {
    v63 = BYTE14(v76);
  }

  if (__OFSUB__(v63, v33))
  {
    __break(1u);
    return result;
  }

  if (v63 != v33)
  {
    sub_26BE01654();
    swift_allocError();
    *v65 = 0;
    v65[112] = 1;
    swift_willThrow();

    sub_26BE00258(v76, *(&v76 + 1));
    goto LABEL_24;
  }

  sub_26BE00258(v76, *(&v76 + 1));
  sub_26BE00258(v8, v9);
  *&v88 = v75;
  result = sub_26BE80190(&v88);
LABEL_35:
  v20 = v97;
  *(a1 + 128) = v96;
  *(a1 + 144) = v20;
  *(a1 + 160) = v98;
  *(a1 + 176) = v99;
  v21 = v93;
  *(a1 + 64) = v92;
  *(a1 + 80) = v21;
  v22 = v95;
  *(a1 + 96) = v94;
  *(a1 + 112) = v22;
  v23 = v89;
  *a1 = v88;
  *(a1 + 16) = v23;
  v16 = v90;
  v17 = v91;
LABEL_36:
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26BF32120(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

void *sub_26BF32150(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

void *sub_26BF3217C(void *result)
{
  v1 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[19] | 0x3000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v2;
  result[22] = v1;
  return result;
}

uint64_t sub_26BF321B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_26BECBA14(0, v1, 0);
  v2 = v30;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_26C00AB4C();
  v6 = v28;
  v7 = a1;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(v7 + 36);
    v13 = (*(v7 + 48) + 16 * result);
    v14 = *v13;
    v15 = *(v13 + 1);
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(v7 + 36);
      v27 = result;
      sub_26BECBA14((v16 > 1), v17 + 1, 1);
      v6 = v28;
      v7 = a1;
      v12 = v26;
      result = v27;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v9 = 1 << *(v7 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v19 = *(v3 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_26BE2E070(result, v12, 0);
          v6 = v28;
          v7 = a1;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_26BE2E070(result, v12, 0);
      v6 = v28;
      v7 = a1;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26BF323DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_26BECB9F4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_26C00AB4C();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v13 = *(*(a1 + 48) + 16 * result + 8);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_26BECB9F4((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_26BE2E070(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_26BE2E070(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MLS.KeyPackage.asMessage()@<X0>(uint64_t *a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[9];
  v9 = v1[7];
  v36 = v1[8];
  v37 = v8;
  v10 = v1[9];
  v38 = v1[10];
  v11 = v1[5];
  v13 = v1[3];
  v32 = v1[4];
  v12 = v32;
  v33 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v34 = v1[6];
  v16 = v34;
  v35 = v15;
  v17 = v1[1];
  v29[0] = *v1;
  v29[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v30 = v1[2];
  v21 = v30;
  v31 = v18;
  *(v7 + 8) = v36;
  *(v7 + 9) = v10;
  *(v7 + 10) = v1[10];
  *(v7 + 4) = v12;
  *(v7 + 5) = v14;
  *(v7 + 6) = v16;
  *(v7 + 7) = v9;
  *v7 = v20;
  *(v7 + 1) = v19;
  v39 = *(v1 + 22);
  *(v7 + 22) = *(v1 + 22);
  *(v7 + 2) = v21;
  *(v7 + 3) = v13;
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();
  sub_26BE2DFC0(v29, &v28);
  v22 = MLS.MLSMessage.rawValue.getter();
  if (v2)
  {
    return sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  }

  v25 = v22;
  v26 = v23;
  result = sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  *a1 = v25;
  a1[1] = v26;
  return result;
}

uint64_t sub_26BF32780(int a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  v7 = sub_26C00B0CC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = *(a3 + 48) + 16 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v12 == a1 && v13 == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

uint64_t sub_26BF32868(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_26C00B05C(), sub_26C00911C(), v7 = sub_26C00B0CC(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_26BE00608(v18, v17);
          sub_26BE567B0(v46, a1, a2, v45);
          sub_26BE00258(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_26BE00608(v18, v17);
        v32 = sub_26C008E9C();
        if (v32)
        {
          v34 = sub_26C008ECC();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_26C008EBC();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_26BE567B0(v35, v38, v39, v46);
        sub_26BE00258(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_26BE00608(v18, v17);
        v32 = sub_26C008E9C();
        if (v32)
        {
          v33 = sub_26C008ECC();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_26BE00608(v18, v17);
      sub_26BE567B0(v46, a1, a2, v45);
      sub_26BE00258(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BF32C8C(uint64_t a1, uint64_t a2)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v6 = &v49 - v5;
  v55 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v55);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C0094DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  if (*(a2 + 16))
  {
    v66 = v7;
    v50 = a2;
    v21 = *(a2 + 40);
    sub_26C00B05C();
    sub_26C00947C();
    sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958]);
    sub_26C00A3CC();
    v22 = type metadata accessor for MLS.AlgorithmIdentifier();
    v63 = *(v22 + 20);
    v64 = v22;
    sub_26BE2E1F0(a1 + v63, v20, &qword_28045EE48, &unk_26C022430);
    v23 = v12 + 48;
    v62 = *(v12 + 48);
    v24 = v62(v20, 1, v11);
    v56 = v11;
    v54 = v12;
    if (v24 == 1)
    {
      sub_26C00B07C();
    }

    else
    {
      v25 = v52;
      (*(v12 + 32))(v52, v20, v11);
      sub_26C00B07C();
      sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988]);
      sub_26C00A3CC();
      (*(v12 + 8))(v25, v11);
    }

    v26 = *(v55 + 20);
    sub_26C00959C();
    sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
    v51 = v26;
    sub_26C00A3CC();
    v27 = sub_26C00B0CC();
    v28 = v50;
    v29 = v50 + 56;
    v30 = -1 << *(v50 + 32);
    v31 = v27 & ~v30;
    if ((*(v50 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v61 = v23;
      v32 = ~v30;
      v49 = (v54 + 32);
      v66 = *(v66 + 72);
      v53 = (v54 + 8);
      v34 = v56;
      v33 = v57;
      v54 = v6;
      v59 = ~v30;
      v60 = v10;
      v58 = v50 + 56;
      do
      {
        sub_26BF7F0BC(*(v28 + 48) + v66 * v31, v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if ((sub_26C00945C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v35 = *(v65 + 48);
        sub_26BE2E1F0(&v10[*(v64 + 20)], v6, &qword_28045EE48, &unk_26C022430);
        sub_26BE2E1F0(a1 + v63, &v6[v35], &qword_28045EE48, &unk_26C022430);
        v36 = v6;
        v37 = v34;
        v38 = v6;
        v39 = v34;
        v40 = v62;
        if (v62(v36, 1, v37) == 1)
        {
          if (v40(v38 + v35, 1, v39) != 1)
          {
            v10 = v60;
            sub_26BF7F05C(v60, type metadata accessor for MLS.SubjectPublicKeyInfo);
            v29 = v58;
            v34 = v56;
            goto LABEL_8;
          }

          sub_26BE2E258(v38, &qword_28045EE48, &unk_26C022430);
          v29 = v58;
          v32 = v59;
          v34 = v56;
          v6 = v38;
        }

        else
        {
          sub_26BE2E1F0(v38, v33, &qword_28045EE48, &unk_26C022430);
          if (v40(v38 + v35, 1, v39) == 1)
          {
            v10 = v60;
            sub_26BF7F05C(v60, type metadata accessor for MLS.SubjectPublicKeyInfo);
            (*v53)(v33, v39);
            v29 = v58;
            v34 = v39;
LABEL_8:
            v6 = v54;
            sub_26BE2E258(v54, &qword_28045F0D8, &unk_26C01A530);
            v32 = v59;
            goto LABEL_9;
          }

          v41 = a1;
          v42 = v52;
          (*v49)(v52, v38 + v35, v39);
          sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988]);
          v43 = sub_26C00A43C();
          v44 = *v53;
          v45 = v42;
          a1 = v41;
          v33 = v57;
          (*v53)(v45, v39);
          v44(v33, v39);
          v28 = v50;
          sub_26BE2E258(v38, &qword_28045EE48, &unk_26C022430);
          v29 = v58;
          v32 = v59;
          v34 = v39;
          v6 = v38;
          if ((v43 & 1) == 0)
          {
            v10 = v60;
LABEL_14:
            sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
            goto LABEL_9;
          }
        }

        v10 = v60;
        v46 = &v60[*(v55 + 20)];
        v47 = sub_26C00956C();
        sub_26BF7F05C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v47)
        {
          return 1;
        }

LABEL_9:
        v31 = (v31 + 1) & v32;
      }

      while (((*(v29 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_26BF33464(uint64_t *a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {
    goto LABEL_108;
  }

  v2 = a2;
  v4 = *(a2 + 40);
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v82);
  v5 = sub_26C00B0CC();
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  v8 = v5 & ~v7;
  if (((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_108:
    result = 0;
    goto LABEL_109;
  }

  v78 = v2 + 56;
  v79 = ~v7;
  v9 = *a1;
  v10 = a1[1];
  if (*a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xC000000000000000;
  }

  v12 = !v11;
  v75 = v12;
  v76 = 0;
  v77 = v10 >> 62;
  v13 = __OFSUB__(HIDWORD(v9), v9);
  v74 = v13;
  while (1)
  {
    sub_26BE2DB68(*(v2 + 48) + 56 * v8, &v82);
    v15 = v82;
    v14 = v83;
    if ((v83 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        goto LABEL_49;
      }

      v16 = v83 >> 62;
      if (v83 >> 62 == 3)
      {
        if (v82)
        {
          v17 = 0;
        }

        else
        {
          v17 = v83 == 0xC000000000000000;
        }

        v18 = v10 >> 62;
        v20 = !v17 || v10 >> 62 != 3;
        if (((v20 | v75) & 1) == 0)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v21 = 0;
          v22 = 0xC000000000000000;
          goto LABEL_54;
        }
      }

      else
      {
        v18 = v10 >> 62;
        if (v16 <= 1)
        {
          if (v16)
          {
            LODWORD(v24) = HIDWORD(v82) - v82;
            if (__OFSUB__(HIDWORD(v82), v82))
            {
              goto LABEL_117;
            }

            v24 = v24;
            if (v77 > 1)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v24 = BYTE6(v83);
            if (v77 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_37;
        }

        if (v16 == 2)
        {
          v26 = *(v82 + 16);
          v25 = *(v82 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v27)
          {
            goto LABEL_118;
          }

          if (v77 > 1)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }
      }

      v24 = 0;
      if (v18 > 1)
      {
LABEL_41:
        if (v18 != 2)
        {
          if (v24)
          {
LABEL_49:
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
            sub_26BE0489C(v15, v14);
            sub_26BE0489C(v9, v10);
            goto LABEL_50;
          }

LABEL_53:
          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          sub_26BE0489C(v15, v14);
          v21 = v9;
          v22 = v10;
LABEL_54:
          sub_26BE0489C(v21, v22);
          goto LABEL_55;
        }

        v30 = *(v9 + 16);
        v29 = *(v9 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
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
        }

LABEL_43:
        if (v24 != v28)
        {
          goto LABEL_49;
        }

        if (v24 < 1)
        {
          goto LABEL_53;
        }

        if (v16 > 1)
        {
          if (v16 != 2)
          {
            *&v81[6] = 0;
            *v81 = 0;
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
            goto LABEL_103;
          }

          v73 = v2;
          v52 = *(v82 + 16);
          v51 = *(v82 + 24);
          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          v53 = sub_26C008E9C();
          if (v53)
          {
            v54 = sub_26C008ECC();
            if (__OFSUB__(v52, v54))
            {
              goto LABEL_123;
            }

            v53 += v52 - v54;
          }

          if (__OFSUB__(v51, v52))
          {
            goto LABEL_122;
          }

          sub_26C008EBC();
          v55 = v53;
          v56 = v9;
          v57 = v10;
          v58 = v76;
        }

        else
        {
          if (!v16)
          {
            *v81 = v82;
            *&v81[8] = v83;
            *&v81[10] = *(&v83 + 2);
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
LABEL_103:
            sub_26BE567B0(v81, v9, v10, v80);
            sub_26BE0489C(v15, v14);
            sub_26BE0489C(v9, v10);
            v68 = v80[0];
LABEL_104:
            v6 = v78;
            if ((v68 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_55;
          }

          v73 = v2;
          if (v82 >> 32 < v82)
          {
            goto LABEL_121;
          }

          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          v66 = sub_26C008E9C();
          if (v66)
          {
            v67 = sub_26C008ECC();
            if (__OFSUB__(v15, v67))
            {
              goto LABEL_124;
            }

            v66 += v15 - v67;
          }

          v58 = v76;
          sub_26C008EBC();
          v55 = v66;
          v56 = v9;
          v57 = v10;
        }

        sub_26BE567B0(v55, v56, v57, v81);
        v76 = v58;
        sub_26BE0489C(v15, v14);
        sub_26BE0489C(v9, v10);
        v68 = v81[0];
        v2 = v73;
        goto LABEL_104;
      }

LABEL_37:
      v28 = BYTE6(v10);
      if (v18)
      {
        v28 = HIDWORD(v9) - v9;
        if (v74)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_43;
    }

    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_49;
    }

    sub_26BE04890(v9, v10);
    sub_26BE04890(v15, v14);
    v23 = sub_26BFB0104(v15, v9);
    sub_26BE0489C(v15, v14);
    sub_26BE0489C(v9, v10);
    if ((v23 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_55:
    v32 = v85;
    v31 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    (*(*(v31 + 8) + 24))(v81, v32);
    v33 = v81[0];

    v35 = a1[5];
    v34 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v35);
    (*(*(v34 + 8) + 24))(v80, v35);
    LODWORD(v34) = LOBYTE(v80[0]);

    if (v33 != v34)
    {
      v6 = v78;
      goto LABEL_50;
    }

    v37 = v85;
    v36 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v38 = (*(*(v36 + 8) + 16))(v37);
    v40 = v39;
    v42 = a1[5];
    v41 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v42);
    v43 = (*(*(v41 + 8) + 16))(v42);
    v45 = v40 >> 62;
    v46 = v44 >> 62;
    v6 = v78;
    if (v40 >> 62 == 3)
    {
      v47 = 0;
      if (!v38)
      {
        if (v40 == 0xC000000000000000 && v44 >> 62 == 3)
        {
          v47 = 0;
          if (!v43 && v44 == 0xC000000000000000)
          {
            sub_26BE00258(0, 0xC000000000000000);
            v71 = 0;
            v72 = 0xC000000000000000;
            goto LABEL_111;
          }
        }

LABEL_84:
        if (v46 > 1)
        {
          goto LABEL_68;
        }

        goto LABEL_85;
      }

      if (v46 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v45 == 2)
      {
        v60 = *(v38 + 16);
        v59 = *(v38 + 24);
        v27 = __OFSUB__(v59, v60);
        v47 = v59 - v60;
        if (v27)
        {
          goto LABEL_120;
        }

        goto LABEL_84;
      }

      if (v45 == 1)
      {
        LODWORD(v47) = HIDWORD(v38) - v38;
        if (__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_119;
        }

        v47 = v47;
        if (v46 <= 1)
        {
          goto LABEL_85;
        }

LABEL_68:
        if (v46 == 2)
        {
          v49 = *(v43 + 16);
          v48 = *(v43 + 24);
          v27 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v27)
          {
            goto LABEL_116;
          }

LABEL_87:
          if (v47 != v50)
          {
            goto LABEL_93;
          }

          goto LABEL_88;
        }

        if (!v47)
        {
          break;
        }

LABEL_93:
        sub_26BE00258(v43, v44);
        sub_26BE00258(v38, v40);
LABEL_50:
        sub_26BE2DBC4(&v82);
        goto LABEL_51;
      }

      v47 = BYTE6(v40);
      if (v46 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_85:
    if (!v46)
    {
      v50 = BYTE6(v44);
      goto LABEL_87;
    }

    if (__OFSUB__(HIDWORD(v43), v43))
    {
      goto LABEL_115;
    }

    if (v47 != HIDWORD(v43) - v43)
    {
      goto LABEL_93;
    }

LABEL_88:
    if (v47 < 1)
    {
      break;
    }

    v61 = v43;
    v62 = v44;
    sub_26BE00608(v43, v44);
    v63 = sub_26BECB6A4(v38, v40, v61, v62);
    v64 = v38;
    v65 = v63;
    sub_26BE00258(v64, v40);
    sub_26BE00258(v61, v62);
    sub_26BE2DBC4(&v82);
    if (v65)
    {
      goto LABEL_112;
    }

    v6 = v78;
LABEL_51:
    v8 = (v8 + 1) & v79;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  sub_26BE00258(v43, v44);
  v71 = v38;
  v72 = v40;
LABEL_111:
  sub_26BE00258(v71, v72);
  sub_26BE2DBC4(&v82);
LABEL_112:
  result = 1;
LABEL_109:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Client.KeyPackage.asKeyPackage()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for MLS.MLSMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  sub_26BE00608(v16, v15);
  result = MLS.MLSMessage.init(rawValue:quiet:)(v16, v15, 0, v14);
  if (!v2)
  {
    sub_26BF7F0BC(v14, v10, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      result = sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
      v18 = *(v10 + 9);
      *(a1 + 128) = *(v10 + 8);
      *(a1 + 144) = v18;
      *(a1 + 160) = *(v10 + 10);
      *(a1 + 176) = *(v10 + 22);
      v19 = *(v10 + 5);
      *(a1 + 64) = *(v10 + 4);
      *(a1 + 80) = v19;
      v20 = *(v10 + 7);
      *(a1 + 96) = *(v10 + 6);
      *(a1 + 112) = v20;
      v21 = *(v10 + 1);
      *a1 = *v10;
      *(a1 + 16) = v21;
      v22 = *(v10 + 3);
      *(a1 + 32) = *(v10 + 2);
      *(a1 + 48) = v22;
    }

    else
    {
      sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v24 = v23;
      sub_26BF7F0BC(v14, v8, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v26 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v26 = 2;
        }

        else
        {
          v26 = *v8;
          sub_26BE00258(*(v8 + 1), *(v8 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v26 = 4;
        }

        else
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v26 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
        v26 = 3;
      }

      *v24 = v26;
      *(v24 + 2) = 5;
      *(v24 + 4) = 0;
      *(v24 + 112) = 17;
      swift_willThrow();
      return sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
    }
  }

  return result;
}

uint64_t MLS.Group.Message.asWelcome()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MLS.MLSMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  sub_26BE00608(v16, v15);
  result = MLS.MLSMessage.init(rawValue:quiet:)(v16, v15, 0, v14);
  if (!v2)
  {
    sub_26BF7F0BC(v14, v10, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v19 = v18;
      sub_26BF7F0BC(v14, v8, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 2;
        }

        else
        {
          v21 = *v8;
          sub_26BE00258(*(v8 + 1), *(v8 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 4;
        }

        else
        {
          sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
          v21 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
        v21 = 3;
      }

      *v19 = v21;
      *(v19 + 2) = 3;
      *(v19 + 4) = 0;
      *(v19 + 112) = 17;
      swift_willThrow();
      return sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
    }

    else
    {
      result = sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
      v22 = *(v10 + 1);
      *a1 = *v10;
      *(a1 + 8) = v22;
      *(a1 + 16) = *(v10 + 1);
    }
  }

  return result;
}

uint64_t sub_26BF34320@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v17) = *a1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v17, &v21);
  LOBYTE(v17) = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v5, v6, &v21);
  if (v3)
  {
  }

  v17 = v7;
  *&v18 = v8;
  v9 = MLS.Credential.rawValue.getter();
  v11 = v10;
  sub_26BE00608(v9, v10);
  MLS.Credential.init(rawValue:)(v9, v11, &v16);
  v12 = v16;
  v15 = v16;
  sub_26BE04890(v16, *(&v16 + 1));
  sub_26C006590(&v15, &v16);

  sub_26BE0489C(v12, *(&v12 + 1));
  sub_26BE00258(v9, v11);
  v13 = v16;
  result = sub_26BE03890(&v21, (a2 + 1));
  *a2 = v13;
  return result;
}

uint64_t MLS.MLSMessage.messageEpoch.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v9, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
LABEL_5:
    sub_26BF7F05C(v9, type metadata accessor for MLS.MLSMessage.Inner);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[4];
      v15 = v9[5];
      v16 = v9[6];
      v17 = v9[7];
      v19 = v9[8];
      v18 = v9[9];
      sub_26BE00258(v11, v12);
      sub_26BE00258(v14, v15);
      sub_26BE00258(v16, v17);
      sub_26BE00258(v19, v18);
      return v13;
    }

    goto LABEL_5;
  }

  sub_26BF7F124(v9, v5, type metadata accessor for MLS.PublicMessage);
  v21 = *(v5 + 2);
  sub_26BF7F05C(v5, type metadata accessor for MLS.PublicMessage);
  return v21;
}

unint64_t MLS.MLSMessage.messageEra.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v9, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_26BF7F124(v9, v5, type metadata accessor for MLS.PublicMessage);
    v26 = *(v5 + 4);
    v27 = *(v5 + 5);
    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v28 != 2 || *(v26 + 16) == *(v26 + 24))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v28)
      {
        if ((v27 & 0xFF000000000000) != 0)
        {
          v29 = 0;
LABEL_30:
          *&v30 = v26;
          *(&v30 + 1) = v27;
          *&v31 = v29;
          sub_26BFF91C8(v35);
          sub_26BE00258(v30, *(&v30 + 1));
          sub_26BF7F05C(v5, type metadata accessor for MLS.PublicMessage);
          goto LABEL_34;
        }

LABEL_25:
        v21 = type metadata accessor for MLS.PublicMessage;
        v22 = v5;
        goto LABEL_9;
      }

      if (v26 == v26 >> 32)
      {
        goto LABEL_25;
      }
    }

    if (v28 == 2)
    {
      v29 = *(v26 + 16);
    }

    else
    {
      v29 = v26;
    }

    sub_26BE00608(*(v5 + 4), *(v5 + 5));
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_8:
    v21 = type metadata accessor for MLS.MLSMessage.Inner;
    v22 = v9;
LABEL_9:
    sub_26BF7F05C(v22, v21);
LABEL_10:
    v23 = 0;
    v24 = 1;
    goto LABEL_11;
  }

  v12 = *v9;
  v11 = v9[1];
  v14 = v9[4];
  v13 = v9[5];
  v16 = v9[6];
  v15 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v19 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v19)
  {
    if (v14 == v14 >> 32)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (v19 == 2)
    {
      v20 = *(v14 + 16);
    }

    else
    {
      v20 = v14;
    }

    sub_26BE00608(v14, v13);
    goto LABEL_33;
  }

  if ((v13 & 0xFF000000000000) == 0)
  {
LABEL_27:
    sub_26BE00258(*v9, v9[1]);
    sub_26BE00258(v14, v13);
    sub_26BE00258(v16, v15);
    sub_26BE00258(v18, v17);
    goto LABEL_10;
  }

  v20 = 0;
LABEL_33:
  *&v30 = v14;
  *(&v30 + 1) = v13;
  *&v31 = v20;
  sub_26BFF91C8(v35);
  sub_26BE00258(v12, v11);
  sub_26BE00258(v14, v13);
  sub_26BE00258(v16, v15);
  sub_26BE00258(v18, v17);
  sub_26BE00258(v30, *(&v30 + 1));
LABEL_34:
  v32 = v35[2];
  v33 = v36;
  v34 = v37;
  v31 = v35[1];
  v30 = v35[0];
  v24 = *(&v36 + 1) == 1;
  if (*(&v36 + 1) == 1)
  {
    sub_26BE2E258(&v30, &qword_28045FAA8, qword_26C01F928);
    v23 = 0;
  }

  else
  {
    v23 = DWORD2(v31);
    sub_26BE6FDD8(&v30);
  }

LABEL_11:
  LOBYTE(v35[0]) = v24;
  return v23 | (v24 << 32);
}

unint64_t sub_26BF34B98@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.PublicMessage();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v10, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[4];
      v16 = v10[5];
      v17 = v10[6];
      v18 = v10[7];
      v20 = v10[8];
      v19 = v10[9];
      sub_26BE00258(v12, v13);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      sub_26BE00258(v20, v19);
      result = MLS.MLSMessage.messageEra.getter();
      if ((result & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_6:
    result = sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage.Inner);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  sub_26BF7F124(v10, v6, type metadata accessor for MLS.PublicMessage);
  v14 = *(v6 + 2);
  sub_26BF7F05C(v6, type metadata accessor for MLS.PublicMessage);
  result = MLS.MLSMessage.messageEra.getter();
  if ((result & 0x100000000) != 0)
  {
LABEL_8:
    result = sub_26BE4126C();
  }

LABEL_9:
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0;
  return result;
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.init(era:epoch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26BF34D88()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478FB0);
  __swift_project_value_buffer(v0, qword_280478FB0);
  return sub_26C009A4C();
}

BOOL static MLS.Group.PureSwiftGroup.EraEpoch.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00AC1C();

  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](0x3D68636F7065202CLL, 0xE800000000000000);
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return 0x3D6172655BLL;
}

unint64_t *MLS.Group.PureSwiftGroup.EraEpoch.init(_:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    v3 = result[1];
    *a2 = v2;
    *(a2 + 8) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B09C();
  return MEMORY[0x26D699B60](v2);
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BF35010()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BF35070()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B09C();
  return MEMORY[0x26D699B60](v2);
}

uint64_t sub_26BF350B0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

BOOL sub_26BF3510C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_26BF35134(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_26BF3515C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_26BF35184(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t sub_26BF351DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;
}

uint64_t sub_26BF3523C()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_26BF35274(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_26BF3536C()
{
  *(v1 + 88) = v0;
  v2 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF353FC, 0, 0);
}

uint64_t sub_26BF353FC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_26BF354B0;
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  return sub_26BF37CA4(v5, (v0 + 72), 0);
}

uint64_t sub_26BF354B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BF357F8;
  }

  else
  {
    v3 = sub_26BF355C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF355C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = sub_26BFEB264(sub_26BF7F1F4, v7, v6, v3, v4, v5);
  if (v1)
  {
    v9 = *(v0 + 96);

    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
    v10 = *(v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v8;

    v14 = *(v13 + 2);
    if (v14)
    {
      v24 = MEMORY[0x277D84F90];
      sub_26BECBA54(0, v14, 0);
      v15 = v24;
      v16 = (v13 + 32);
      do
      {
        sub_26BE2DB68(v16, v0 + 16);
        v18 = *(v24 + 16);
        v17 = *(v24 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_26BECBA54((v17 > 1), v18 + 1, 1);
        }

        *(v24 + 16) = v18 + 1;
        v19 = v24 + 56 * v18;
        v20 = *(v0 + 16);
        v21 = *(v0 + 32);
        v22 = *(v0 + 48);
        *(v19 + 80) = *(v0 + 64);
        *(v19 + 48) = v21;
        *(v19 + 64) = v22;
        *(v19 + 32) = v20;
        v16 += 56;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_26BF7F05C(*(v0 + 96), type metadata accessor for MLS.GroupState);

    v23 = *(v0 + 8);

    return v23(v15);
  }
}

uint64_t sub_26BF357F8()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF3587C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BE22BF0;
  v3 = *(v0 + 16);

  return sub_26BE8EC78(v3, v3);
}

uint64_t sub_26BF35930@<X0>(uint64_t a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v34 = *(a1 + 32);
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v33 = v6;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v33, &v38);
  if (v4)
  {
  }

  else
  {

    v22[6] = v44;
    v22[7] = v45;
    v22[2] = v40;
    v22[3] = v41;
    v22[4] = v42;
    v22[5] = v43;
    v22[0] = v38;
    v22[1] = v39;
    v30 = v44;
    v31 = v45;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v23 = v46;
    v32 = v46;
    v24 = v38;
    v25 = v39;
    if (sub_26BE59C80(&v24) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v11 = 8;
      v11[112] = 0;
      return swift_willThrow();
    }

    else
    {
      v19 = v30;
      v20 = v31;
      v21 = v32;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      v18 = v29;
      v13 = v24;
      v14 = v25;
      v12 = *(v3 + 72);
      sub_26BF34320(&v12, a3);
      return sub_26BE2E258(v22, &qword_28045E6A0, &unk_26C016520);
    }
  }
}

uint64_t sub_26BF35AF8(int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a1;
  v11 = *(a3 + 72);
  result = sub_26BF34320(&v11, v12);
  if (!v5)
  {
    v10 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v12, a4);
    result = sub_26BE2DBC4(v12);
    if (v10)
    {
      *a5 = v8;
      *(a5 + 4) = 0;
    }
  }

  return result;
}

uint64_t sub_26BF35B78(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26BF35B98, 0, 0);
}

uint64_t sub_26BF35B98()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26BEAAEE4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_26BF37CA4(v5, (v0 + 16), 0);
}

uint64_t sub_26BF35C6C()
{
  v1 = *(v0 + 32);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26BE3C714;
  v3 = *(v0 + 32);

  return sub_26BE9EC54(v0 + 16, v3, v3);
}

uint64_t sub_26BF35D28(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MLS.GroupState();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF35E20, 0, 0);
}

uint64_t sub_26BF35E20()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_26BF35ED4;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  return sub_26BF37CA4(v5, (v0 + 16), 0);
}

uint64_t sub_26BF35ED4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_26BF36120;
  }

  else
  {
    v3 = sub_26BF35FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF35FF0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  (*(*(v0 + 80) + 56))(v4, 0, 1, v3);
  sub_26BF7F124(v4, v2, type metadata accessor for MLS.GroupState);
  v5 = *(v3 + 44);
  v6 = v2 + *(type metadata accessor for MLS.KeySchedule() + 40) + v5;
  sub_26C009C3C();
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  **(v0 + 48) = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BF36120()
{
  v18 = v0;
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);

  v4 = sub_26C009A3C();
  v5 = sub_26C00A9FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: could not find state when fetching epoch authenticator", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v13 = v0[11];
  v14 = v0[8];
  *v0[6] = xmmword_26C00DA60;

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BF3634C()
{
  v1 = *(v0 + 32);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26BF36408;
  v3 = *(v0 + 32);

  return sub_26BE9F40C(v0 + 16, v3, v3);
}

uint64_t sub_26BF36408()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_26BE26758;
  }

  else
  {
    v3 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF3651C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF365AC, 0, 0);
}

uint64_t sub_26BF365AC()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: serializing ratchet tree", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v12 + 152);
  v14 = *(v12 + 24);
  *(v0 + 16) = v13;
  *(v0 + 24) = v14;
  v15 = swift_task_alloc();
  *(v0 + 56) = v15;
  *v15 = v0;
  v15[1] = sub_26BF367B4;
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  return sub_26BF37CA4(v16, (v0 + 16), 0);
}

uint64_t sub_26BF367B4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26BF369D0;
  }

  else
  {
    v3 = sub_26BF368C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF368C8()
{
  v1 = v0[8];
  v11 = *(v0[6] + 56);

  v3 = MLS.RatchetTree.rawRepresentation.getter();
  v4 = v0[6];
  if (v1)
  {
    sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);

    v5 = v0[6];
  }

  else
  {
    v7 = v2;
    v8 = v0[4];
    v9 = v0[6];
    sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);

    *v8 = v3;
    v8[1] = v7;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF369D0()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF36A34(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLS.GroupState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  swift_beginAccess();
  if (*(v9 + 312) != 1)
  {
    return 0;
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v10 = sub_26C009A5C();
  __swift_project_value_buffer(v10, qword_280478EE8);
  sub_26BF7F0BC(a1, v8, type metadata accessor for MLS.GroupState);

  v11 = sub_26C009A3C();
  v12 = sub_26C00AA1C();

  if (!os_log_type_enabled(v11, v12))
  {
    sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);

    goto LABEL_12;
  }

  *&v29 = a1;
  v13 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v33 = v38;
  *v13 = 136315394;

  v14 = sub_26BE3D034();
  v16 = v15;

  v17 = sub_26BE29740(v14, v16, &v33);

  *(v13 + 4) = v17;
  *(v13 + 12) = 1024;
  v18 = sub_26BE81FE0(*&v8[*(v5 + 40)]);
  if (v2)
  {

    v3 = 0;
LABEL_10:
    v20 = sub_26BE4126C();
    goto LABEL_11;
  }

  v20 = v18;
  if ((v18 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
  *(v13 + 14) = v20;
  _os_log_impl(&dword_26BDFE000, v11, v12, "%s: eraOnlyAuthenticatedData: adding era %u to authenticated data", v13, 0x12u);
  v21 = v38;
  __swift_destroy_boxed_opaque_existential_1(v38);
  MEMORY[0x26D69A4E0](v21, -1, -1);
  MEMORY[0x26D69A4E0](v13, -1, -1);

  a1 = v29;
LABEL_12:
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v22 = sub_26BE81FE0(*(a1 + *(v5 + 40)));
  if (v3)
  {
  }

  else if ((v22 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

  LODWORD(v22) = sub_26BE4126C();
LABEL_16:
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  LOWORD(v33) = 1;
  v29 = xmmword_26C00BBD0;
  v34 = xmmword_26C00BBD0;
  v35 = v22;
  sub_26BE7170C(&v30, v36, &qword_28045E2A8, &qword_26C028DD0);
  v30 = v29;
  *&v31 = 0;
  sub_26BFF933C(&v33);
  v23 = v30;
  v24 = *(&v30 + 1) >> 62;
  if ((*(&v30 + 1) >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_24;
    }

    v27 = *(v30 + 24);
LABEL_22:
    v26 = *(&v30 + 1);
    v25 = v30;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_24:
    v26 = *(&v23 + 1);
    v25 = v23;
    goto LABEL_25;
  }

  if (v24)
  {
    v27 = v30 >> 32;
    goto LABEL_22;
  }

  v26 = *(&v30 + 1);
  v25 = v30;
LABEL_25:
  v28 = sub_26C00909C();
  sub_26BE00258(v25, v26);
  sub_26BE6FDD8(&v33);
  return v28;
}

uint64_t sub_26BF36E34()
{
  sub_26BF880D8(v0);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t sub_26BF36F0C()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for MLS.GroupState();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF37004, 0, 0);
}

uint64_t sub_26BF37004()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_26BF370B4;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_26BF378BC(v5, v0 + 16);
}

uint64_t sub_26BF370B4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_26BF37300;
  }

  else
  {
    v3 = sub_26BF371C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF371C8()
{
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_26BE2E258(v2, &qword_28045FAB0, &qword_26C01F960);
    v3 = 0;
  }

  else
  {
    v4 = v0[8];
    sub_26BF7F124(v2, v4, type metadata accessor for MLS.GroupState);
    v5 = *(v4 + *(v1 + 40));
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    do
    {
      v3 = --v7 != 0;
      if (!v7)
      {
        break;
      }

      v8 = *v6;
      v6 += 12;
    }

    while (v8 != -4094);
    sub_26BF7F05C(v0[8], type metadata accessor for MLS.GroupState);
  }

  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_26BF37300()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3(0);
}

uint64_t sub_26BF37394()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BF37448;
  v3 = *(v0 + 16);

  return sub_26BEA4FD4(v3, v3);
}

uint64_t sub_26BF37448(char a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_26BF37550(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_26BF37570, 0, 0);
}

void sub_26BF37570()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 64);
  if ((v2 & 0x2000000000000000) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + 56);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v16 = *(v1 + 56);

    v5 = MEMORY[0x26D6996F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = *(v3 + 32);
    sub_26BE04890(v3, v2);
    v5 = v4;
  }

  v6 = v5;
  v7 = SecCertificateCopyURIs();
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_26BE0489C(v3, v2);

  *(v0 + 16) = v8;
  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(v0 + 24);
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!v9[2])
  {
    v14 = *(v0 + 24);

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v10 = *(v0 + 40);
  v11 = v9[4];
  v12 = v9[5];

  v13 = sub_26BE2FBD4(v11, v12);

LABEL_12:
  **(v0 + 32) = v13 & 1;
  v15 = *(v0 + 8);

  v15();
}

uint64_t sub_26BF37734()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F228;
  v3 = *(v0 + 16);

  return sub_26BEA5A3C(v3, v3);
}

uint64_t sub_26BF37808()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F228;
  v3 = *(v0 + 16);

  return sub_26BEA630C(v3, v3);
}

uint64_t sub_26BF378BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v5 = type metadata accessor for MLS.GroupState();
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v8 = *(a2 + 8);
  *(v3 + 16) = *a2;
  *(v3 + 24) = v8;
  v9 = swift_task_alloc();
  *(v3 + 72) = v9;
  *v9 = v3;
  v9[1] = sub_26BF379C4;

  return sub_26BF38444(v3 + 16);
}

uint64_t sub_26BF379C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 72);
  v8 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v6 = sub_26BF37C40;
  }

  else
  {
    v6 = sub_26BF37ADC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF37ADC()
{
  v1 = v0[11];
  if (v1 >> 60 == 15)
  {
    (*(v0[7] + 56))(v0[4], 1, 1, v0[6]);
  }

  else
  {
    v2 = v0[12];
    MLS.GroupState.init(rawValue:)(v0[10], v1, v0[8]);
    if (v2)
    {

      v3 = v0[1];
      goto LABEL_7;
    }

    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[4];
    v7 = *(v0[5] + 48);
    v8 = *(v4 + 76);
    v9 = *(v0[8] + v8);
    v10 = v0[8];

    *(v10 + v8) = v7;
    sub_26BF7F0BC(v10, v6, type metadata accessor for MLS.GroupState);
    (*(v5 + 56))(v6, 0, 1, v4);
    sub_26BF7F05C(v10, type metadata accessor for MLS.GroupState);
  }

  v11 = v0[8];

  v3 = v0[1];
LABEL_7:

  return v3();
}

uint64_t sub_26BF37C40()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF37CA4(uint64_t a1, int *a2, char a3)
{
  *(v4 + 84) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 80) = *a2;
  v9 = *(a2 + 1);
  *(v4 + 48) = v7;
  *(v4 + 56) = v9;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  v10 = swift_task_alloc();
  *(v4 + 64) = v10;
  *v10 = v4;
  v10[1] = sub_26BF37DA4;

  return sub_26BF378BC(v7, v4 + 16);
}

uint64_t sub_26BF37DA4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26BF383E0;
  }

  else
  {
    v3 = sub_26BF37EB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF37EB8()
{
  v52 = v0;
  v1 = *(v0 + 48);
  v2 = type metadata accessor for MLS.GroupState();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = sub_26C009A5C();
    __swift_project_value_buffer(v4, qword_280478EE8);

    v5 = sub_26C009A3C();
    v6 = sub_26C00AA0C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 56);
      v8 = *(v0 + 80);
      v9 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v49 = v11;
      *v10 = 136315394;

      v12 = sub_26BE3D034();
      v14 = v13;

      v15 = sub_26BE29740(v12, v14, &v49);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v50 = v8;
      v51 = v7;
      v16 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v18 = sub_26BE29740(v16, v17, &v49);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: could not find state for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 40);
    sub_26BE01654();
    swift_allocError();
    *v21 = *(v20 + 24);
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    *(v21 + 112) = 19;
    swift_willThrow();
  }

  else
  {
    v24 = *(v0 + 32);
    sub_26BF7F124(v1, v24, type metadata accessor for MLS.GroupState);
    v25 = *(v24 + *(v2 + 40));
    v26 = (v25 + 32);
    v27 = *(v25 + 16) + 1;
    do
    {
      if (!--v27)
      {
        goto LABEL_12;
      }

      v28 = *v26;
      v26 += 12;
    }

    while (v28 != -4094);
    if (*(v0 + 84) == 1)
    {
LABEL_12:
      v29 = *(v0 + 48);

      v23 = *(v0 + 8);
      goto LABEL_13;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 40);
    v32 = sub_26C009A5C();
    __swift_project_value_buffer(v32, qword_280478EE8);

    v33 = sub_26C009A3C();
    v34 = sub_26C00AA0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 56);
      v36 = *(v0 + 80);
      v37 = *(v0 + 40);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315394;

      v40 = sub_26BE3D034();
      v42 = v41;

      v43 = sub_26BE29740(v40, v42, &v49);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v50 = v36;
      v51 = v35;
      v44 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v46 = sub_26BE29740(v44, v45, &v49);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_26BDFE000, v33, v34, "%s: state for %s had hasEndMLS set to true, throwing .operationOnEndedGroup", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v39, -1, -1);
      MEMORY[0x26D69A4E0](v38, -1, -1);
    }

    v47 = *(v0 + 32);
    sub_26BE01654();
    swift_allocError();
    *v48 = 43;
    *(v48 + 8) = 0u;
    *(v48 + 24) = 0u;
    *(v48 + 40) = 0u;
    *(v48 + 56) = 0u;
    *(v48 + 72) = 0u;
    *(v48 + 88) = 0u;
    *(v48 + 104) = 0;
    *(v48 + 112) = 23;
    swift_willThrow();
    sub_26BF7F05C(v47, type metadata accessor for MLS.GroupState);
  }

  v22 = *(v0 + 48);

  v23 = *(v0 + 8);
LABEL_13:

  return v23();
}

uint64_t sub_26BF383E0()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF38444(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 372) = *a1;
  *(v2 + 552) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_26BF38474, 0, 0);
}

uint64_t sub_26BF38474()
{
  v76 = v0;
  v1 = *(*(v0 + 544) + 48);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 544);
    v3 = sub_26C009A5C();
    *(v0 + 560) = __swift_project_value_buffer(v3, qword_280478EE8);

    v4 = sub_26C009A3C();
    v5 = sub_26C00AA1C();

    if (os_log_type_enabled(v4, v5))
    {
      v71 = *(v0 + 552);
      v6 = *(v0 + 372);
      v7 = *(v0 + 544);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v73 = v9;
      *v8 = 136315394;

      v10 = sub_26BE3D034();
      v12 = v11;

      v13 = sub_26BE29740(v10, v12, &v73);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      LODWORD(v74) = v6;
      v75 = v71;
      v14 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v16 = sub_26BE29740(v14, v15, &v73);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: readEpochData for %s from storage v2", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    sub_26BE295A0(v1 + 40, v0 + 16);
    if (*(v0 + 160))
    {
      v17 = *(v0 + 552);
      v18 = *(v0 + 372);
      v19 = *(v0 + 544);
      sub_26BE038A8(v0 + 136, v0 + 416);
      sub_26BE29710(v0 + 16);
      v20 = *(v0 + 440);
      v21 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), v20);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      *(v0 + 456) = v22;
      *(v0 + 464) = v23;
      *(v0 + 472) = v18;
      *(v0 + 480) = v17;
      v24 = *(v21 + 16);
      sub_26BE00608(v22, v23);
      v69 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 568) = v26;
      *v26 = v0;
      v26[1] = sub_26BF38CCC;

      return v69(v0 + 456, v20, v21);
    }

    else
    {
      sub_26BE29710(v0 + 16);
      v54 = *(v0 + 560);
      v55 = *(v0 + 544);

      sub_26BE2BAE8(0, 0xF000000000000000);
      v56 = sub_26C009A3C();
      v57 = sub_26C00AA1C();

      sub_26BE132D4(0, 0xF000000000000000);
      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 544);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v74 = v60;
        *v59 = 136315394;

        v61 = sub_26BE3D034();
        v63 = v62;

        v64 = sub_26BE29740(v61, v63, &v74);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        *(v0 + 528) = 0;
        *(v0 + 536) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
        v65 = sub_26C00A4FC();
        v67 = sub_26BE29740(v65, v66, &v74);

        *(v59 + 14) = v67;
        _os_log_impl(&dword_26BDFE000, v56, v57, "%s: readEpochData from storage v2: %s bytes", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v60, -1, -1);
        MEMORY[0x26D69A4E0](v59, -1, -1);
      }

      v68 = *(v0 + 8);

      return v68(0, 0xF000000000000000);
    }
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 544);
    v29 = sub_26C009A5C();
    *(v0 + 600) = __swift_project_value_buffer(v29, qword_280478EE8);

    v30 = sub_26C009A3C();
    v31 = sub_26C00AA1C();

    if (os_log_type_enabled(v30, v31))
    {
      v72 = *(v0 + 552);
      v32 = *(v0 + 372);
      v33 = *(v0 + 544);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136315394;

      v36 = sub_26BE3D034();
      v38 = v37;

      v39 = sub_26BE29740(v36, v38, &v73);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      LODWORD(v74) = v32;
      v75 = v72;
      v40 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v42 = sub_26BE29740(v40, v41, &v73);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_26BDFE000, v30, v31, "%s: readEpochData for %s from storage v1", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v35, -1, -1);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    if (*(v0 + 372) == 1)
    {
      v43 = *(v0 + 544);
      sub_26BE038A8(v1 + 120, v0 + 376);
      v44 = *(v0 + 400);
      v45 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v44);
      v46 = *(v43 + 32);
      *(v0 + 608) = v46;
      v47 = *(v43 + 40);
      *(v0 + 616) = v47;
      v48 = *(v45 + 16);
      sub_26BE00608(v46, v47);
      v70 = (v48 + *v48);
      v49 = v48[1];
      v50 = swift_task_alloc();
      *(v0 + 624) = v50;
      *v50 = v0;
      v50[1] = sub_26BF39068;
      v51 = *(v0 + 552);

      return v70(v46, v47, v51, v44, v45);
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v52 = 42;
      v52[112] = 0;
      swift_willThrow();
      v53 = *(v0 + 8);

      return v53();
    }
  }
}

uint64_t sub_26BF38CCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 568);
  v10 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {
    sub_26BE00258(v6[57], v6[58]);
    v8 = sub_26BF39400;
  }

  else
  {
    v6[73] = a2;
    v6[74] = a1;
    sub_26BE00258(v6[57], v6[58]);
    v8 = sub_26BF38E08;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF38E08()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  v4 = *(v0 + 544);

  sub_26BE2BAE8(v1, v2);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  sub_26BE132D4(v1, v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 544);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;

    v10 = sub_26BE3D034();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, &v24);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v2 >> 60 == 15)
    {
LABEL_3:
      v15 = 0;
LABEL_4:
      *(v0 + 528) = v15;
      *(v0 + 536) = v2 >> 60 == 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
      v16 = sub_26C00A4FC();
      v18 = sub_26BE29740(v16, v17, &v24);

      *(v8 + 14) = v18;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: readEpochData from storage v2: %s bytes", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      goto LABEL_5;
    }

    v20 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_3;
      }

      v22 = *(v1 + 16);
      v21 = *(v1 + 24);
      v23 = __OFSUB__(v21, v22);
      v15 = v21 - v22;
      if (!v23)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v15 = BYTE6(v2);
      goto LABEL_4;
    }

    LODWORD(v15) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_4;
  }

LABEL_5:

  v19 = *(v0 + 8);

  return v19(v1, v2);
}

uint64_t sub_26BF39068(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 624);
  v8 = *v3;
  v4[79] = a1;
  v4[80] = a2;
  v4[81] = v2;

  if (v2)
  {
    v6 = sub_26BF39464;
  }

  else
  {
    sub_26BE00258(v4[76], v4[77]);
    v6 = sub_26BF39190;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF39190()
{
  v31 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 600);
  v4 = *(v0 + 544);
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));

  sub_26BE2BAE8(v2, v1);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  sub_26BE132D4(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 640);
    v8 = *(v0 + 544);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (v7 >> 60 == 15)
    {
LABEL_3:
      v16 = 0;
LABEL_4:
      *(v0 + 512) = v16;
      *(v0 + 520) = v7 >> 60 == 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
      v17 = sub_26C00A4FC();
      v19 = sub_26BE29740(v17, v18, &v30);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: readEpochData from storage v1: %s bytes", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v10, -1, -1);
      MEMORY[0x26D69A4E0](v9, -1, -1);
      goto LABEL_5;
    }

    v23 = *(v0 + 640);
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_3;
      }

      v25 = *(*(v0 + 632) + 16);
      v26 = *(*(v0 + 632) + 24);
      v27 = __OFSUB__(v26, v25);
      v16 = v26 - v25;
      if (!v27)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v16 = BYTE6(v23);
      goto LABEL_4;
    }

    v28 = *(v0 + 632);
    v29 = *(v0 + 636);
    v27 = __OFSUB__(v29, v28);
    LODWORD(v16) = v29 - v28;
    if (v27)
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_4;
  }

LABEL_5:

  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 8);

  return v22(v21, v20);
}

uint64_t sub_26BF39400()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 52);
  v1 = v0[72];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF39464()
{
  sub_26BE00258(v0[76], v0[77]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v1 = v0[81];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF394D4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB8, &qword_26C01F990);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF39650, 0, 0);
}

uint64_t sub_26BF39650()
{
  v172 = v0;
  v1 = v0;
  v2 = *(*(v0 + 144) + 48);
  swift_beginAccess();
  if (*(v2 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = sub_26C009A5C();
    __swift_project_value_buffer(v5, qword_280478EE8);
    swift_bridgeObjectRetain_n();

    v6 = sub_26C009A3C();
    v7 = sub_26C00AA1C();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v171[0] = v11;
      *v10 = 136315394;

      v12 = sub_26BE3D034();
      v14 = v13;

      v15 = sub_26BE29740(v12, v14, v171);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2048;
      v16 = *(v9 + 16);

      *(v10 + 14) = v16;

      _os_log_impl(&dword_26BDFE000, v6, v7, "%s: updateStorage for %ld updates using storage v2", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    else
    {
      v32 = *(v0 + 136);
      swift_bridgeObjectRelease_n();
    }

    v34 = *(v0 + 136);
    v33 = *(v0 + 144);

    v35 = sub_26C009A3C();
    v36 = sub_26C00A9FC();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = *(v0 + 136);
      v37 = *(v1 + 144);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v171[0] = v40;
      *v39 = 136315394;

      v41 = sub_26BE3D034();
      v43 = v42;

      v44 = sub_26BE29740(v41, v43, v171);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = *(v38 + 16);
      if (v45)
      {
        v46 = *(v1 + 240);
        v47 = *(v1 + 176);
        v48 = *(*(v1 + 184) + 80);
        sub_26BE2E1F0(*(v1 + 136) + ((v48 + 32) & ~v48), v46, &qword_28045FAC0, &qword_26C01F998);
        v49 = *v46;
        v50 = *(v46 + 1);
        sub_26BE2E258(v46 + *(v47 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      *(v1 + 112) = v49;
      *(v1 + 120) = v50;
      *(v1 + 128) = v45 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v98 = sub_26C00A4FC();
      v100 = sub_26BE29740(v98, v99, v171);

      *(v39 + 14) = v100;
      _os_log_impl(&dword_26BDFE000, v35, v36, "%s: first update: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v40, -1, -1);
      MEMORY[0x26D69A4E0](v39, -1, -1);
    }

    else
    {
    }

    v102 = *(v1 + 136);
    v101 = *(v1 + 144);

    v103 = sub_26C009A3C();
    v104 = sub_26C00A9FC();

    if (os_log_type_enabled(v103, v104))
    {
      v106 = *(v1 + 136);
      v105 = *(v1 + 144);
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v171[0] = v108;
      *v107 = 136315394;

      v109 = sub_26BE3D034();
      v111 = v110;

      v112 = sub_26BE29740(v109, v111, v171);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2080;
      v113 = *(v106 + 16);
      if (v113)
      {
        v114 = *(v1 + 232);
        v115 = *(v1 + 176);
        sub_26BE2E1F0(*(v1 + 136) + ((*(*(v1 + 184) + 80) + 32) & ~*(*(v1 + 184) + 80)) + *(*(v1 + 184) + 72) * (v113 - 1), v114, &qword_28045FAC0, &qword_26C01F998);
        v116 = *v114;
        v117 = *(v114 + 1);
        sub_26BE2E258(v114 + *(v115 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v116 = 0;
        v117 = 0;
      }

      *(v1 + 88) = v116;
      *(v1 + 96) = v117;
      *(v1 + 104) = v113 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v118 = sub_26C00A4FC();
      v120 = sub_26BE29740(v118, v119, v171);

      *(v107 + 14) = v120;
      _os_log_impl(&dword_26BDFE000, v103, v104, "%s: last update: %s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v108, -1, -1);
      MEMORY[0x26D69A4E0](v107, -1, -1);
    }

    v121 = swift_task_alloc();
    *(v1 + 248) = v121;
    *v121 = v1;
    v121[1] = sub_26BF3A5F8;
    v122 = *(v1 + 144);
    v123 = *(v1 + 136);

    return sub_26BF3C540(v123);
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v17 + 16);
    v168 = v18;
    v170 = v1;
    if (v18)
    {
      v21 = v1 + 176;
      v19 = *(v1 + 176);
      v20 = *(v21 + 8);
      v171[0] = MEMORY[0x277D84F90];
      sub_26BECB8F4(0, v18, 0);
      v22 = v171[0];
      v23 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v24 = *(v20 + 72);
      v25 = v18;
      do
      {
        v27 = v170[27];
        v26 = v170[28];
        sub_26BE2E1F0(v23, v26, &qword_28045FAC0, &qword_26C01F998);
        sub_26BE33F30(v26, v27, &qword_28045FAC0, &qword_26C01F998);
        v28 = *v27;
        sub_26BE2E258(v27 + *(v19 + 48), &qword_28045FAB0, &qword_26C01F960);
        v171[0] = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          sub_26BECB8F4((v29 > 1), v30 + 1, 1);
          v22 = v171[0];
        }

        *(v22 + 16) = v31;
        *(v22 + 4 * v30 + 32) = v28;
        v23 += v24;
        --v25;
      }

      while (v25);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
      v31 = *(MEMORY[0x277D84F90] + 16);
    }

    v51 = 32;
    while (v31)
    {
      v52 = *(v22 + v51);
      v51 += 4;
      --v31;
      if (v52 != 1)
      {

        sub_26BE01654();
        swift_allocError();
        *v53 = 44;
        v53[112] = 0;
        swift_willThrow();
        v55 = v170[29];
        v54 = v170[30];
        v57 = v170[27];
        v56 = v170[28];
        v59 = v170[25];
        v58 = v170[26];
        v60 = v170[24];
        v61 = v170[21];

        v62 = v170[1];

        return v62();
      }
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v64 = v170;
    v65 = v170[17];
    v66 = v170[18];
    v67 = sub_26C009A5C();
    __swift_project_value_buffer(v67, qword_280478EE8);
    swift_bridgeObjectRetain_n();

    v68 = sub_26C009A3C();
    v69 = sub_26C00AA1C();

    v70 = &unk_26C00D000;
    if (os_log_type_enabled(v68, v69))
    {
      v72 = v170[17];
      v71 = v170[18];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v171[0] = v74;
      *v73 = 136315394;

      v75 = sub_26BE3D034();
      v77 = v76;

      v78 = sub_26BE29740(v75, v77, v171);
      v64 = v170;

      *(v73 + 4) = v78;
      *(v73 + 12) = 2048;

      *(v73 + 14) = v168;

      _os_log_impl(&dword_26BDFE000, v68, v69, "%s: updateStorage for %ld updates using storage v1", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x26D69A4E0](v74, -1, -1);
      MEMORY[0x26D69A4E0](v73, -1, -1);
    }

    else
    {
      v79 = v170[17];
      swift_bridgeObjectRelease_n();
    }

    v81 = v64[17];
    v80 = v64[18];

    v82 = sub_26C009A3C();
    v83 = sub_26C00A9FC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = v64[18];
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v171[0] = v86;
      *v85 = 136315394;

      v87 = sub_26BE3D034();
      v89 = v88;

      v90 = sub_26BE29740(v87, v89, v171);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2080;
      v91 = v168;
      if (v168)
      {
        v92 = v64[26];
        v93 = v64[22];
        v94 = *(v64[23] + 80);
        sub_26BE2E1F0(v64[17] + ((v94 + 32) & ~v94), v92, &qword_28045FAC0, &qword_26C01F998);
        v95 = *v92;
        v96 = *(v92 + 1);
        v97 = *(v93 + 48);
        v91 = v168;
        v70 = &unk_26C00D000;
        sub_26BE2E258(v92 + v97, &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v64[8] = v95;
      v64[9] = v96;
      *(v64 + 80) = v91 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v124 = sub_26C00A4FC();
      v126 = sub_26BE29740(v124, v125, v171);

      *(v85 + 14) = v126;
      _os_log_impl(&dword_26BDFE000, v82, v83, "%s: first update: %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v86, -1, -1);
      MEMORY[0x26D69A4E0](v85, -1, -1);
    }

    else
    {

      v91 = v168;
    }

    v128 = v64[17];
    v127 = v64[18];

    v129 = sub_26C009A3C();
    v130 = sub_26C00A9FC();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = v64[18];
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v171[0] = v133;
      *v132 = v70[337];

      v134 = sub_26BE3D034();
      v135 = v91;
      v137 = v136;

      v138 = sub_26BE29740(v134, v137, v171);
      v91 = v135;

      *(v132 + 4) = v138;
      *(v132 + 12) = 2080;
      if (v135)
      {
        v139 = v64[25];
        v140 = v64[22];
        sub_26BE2E1F0(v64[17] + ((*(v64[23] + 80) + 32) & ~*(v64[23] + 80)) + *(v64[23] + 72) * (v135 - 1), v139, &qword_28045FAC0, &qword_26C01F998);
        v135 = *v139;
        v141 = *(v139 + 1);
        sub_26BE2E258(v139 + *(v140 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v141 = 0;
      }

      v64[5] = v135;
      v64[6] = v141;
      *(v64 + 56) = v91 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v142 = sub_26C00A4FC();
      v144 = sub_26BE29740(v142, v143, v171);

      *(v132 + 14) = v144;
      _os_log_impl(&dword_26BDFE000, v129, v130, "%s: last update: %s", v132, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v133, -1, -1);
      MEMORY[0x26D69A4E0](v132, -1, -1);
    }

    v145 = MEMORY[0x277D84F90];
    if (v91)
    {
      v146 = v170;
      v147 = v170[23];
      v165 = v170[22];
      v166 = v170[27];
      v163 = v170[19];
      v164 = v170[20];
      v148 = v170[17];
      v171[0] = MEMORY[0x277D84F90];
      sub_26BECB8D4(0, v91, 0);
      v145 = v171[0];
      v149 = v148 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v162 = *(v147 + 72);
      do
      {
        v169 = v91;
        v151 = v146[27];
        v150 = v146[28];
        v152 = v146[24];
        v153 = v146[21];
        sub_26BE2E1F0(v149, v150, &qword_28045FAC0, &qword_26C01F998);
        v167 = *(v163 + 48);
        sub_26BE2E1F0(v150, v151, &qword_28045FAC0, &qword_26C01F998);
        v154 = v145;
        v155 = *(v165 + 48);
        *v153 = *(v166 + 8);
        sub_26BE33F30(v150, v152, &qword_28045FAC0, &qword_26C01F998);
        sub_26BE33F30(v152 + *(v165 + 48), v153 + v167, &qword_28045FAB0, &qword_26C01F960);
        v156 = v151 + v155;
        v145 = v154;
        sub_26BE2E258(v156, &qword_28045FAB0, &qword_26C01F960);
        v171[0] = v154;
        v158 = *(v154 + 16);
        v157 = *(v154 + 24);
        if (v158 >= v157 >> 1)
        {
          sub_26BECB8D4(v157 > 1, v158 + 1, 1);
          v145 = v171[0];
        }

        v146 = v170;
        v159 = v170[21];
        *(v145 + 16) = v158 + 1;
        sub_26BE33F30(v159, v145 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v158, &qword_28045FAB8, &qword_26C01F990);
        v149 += v162;
        v91 = v169 - 1;
      }

      while (v169 != 1);
    }

    else
    {
      v146 = v170;
    }

    v146[32] = v145;
    v160 = swift_task_alloc();
    v146[33] = v160;
    *v160 = v146;
    v160[1] = sub_26BF3A7EC;
    v161 = v146[18];

    return sub_26BF3AA6C(v145);
  }
}

uint64_t sub_26BF3A5F8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v13 = *v0;

  v3 = v1[30];
  v4 = v1[29];
  v5 = v1[28];
  v6 = v1[27];
  v7 = v1[26];
  v8 = v1[25];
  v9 = v1[24];
  v10 = v1[21];

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_26BF3A7EC()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  v3[34] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF3A9A0, 0, 0);
  }

  else
  {
    v4 = v3[32];

    v6 = v3[29];
    v5 = v3[30];
    v8 = v3[27];
    v7 = v3[28];
    v10 = v3[25];
    v9 = v3[26];
    v11 = v3[24];
    v12 = v3[21];

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_26BF3A9A0()
{
  v1 = v0[32];

  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF3AA6C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for MLS.GroupState();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v6 = *(v5 + 64) + 15;
  v2[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB8, &qword_26C01F990);
  v2[30] = v7;
  v8 = *(v7 - 8);
  v2[31] = v8;
  v9 = *(v8 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3ABCC, 0, 0);
}

uint64_t sub_26BF3ABCC()
{
  v59 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[32];
    v50 = v0[29];
    v5 = v0[28];
    v55 = *(v0[30] + 48);
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v54 = v0[25];
    swift_beginAccess();
    v53 = *(v3 + 72);
    v7 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
    v49 = v4;
    while (1)
    {
      v10 = v0[32];
      v12 = v0[26];
      v11 = v0[27];
      sub_26BE2E1F0(v6, v10, &qword_28045FAB8, &qword_26C01F990);
      v13 = *v10;
      sub_26BE33F30(v4 + v55, v12, &qword_28045FAB0, &qword_26C01F960);
      if ((*(v5 + 48))(v12, 1, v11) == 1)
      {
        sub_26BE2E258(v0[26], &qword_28045FAB0, &qword_26C01F960);
        swift_beginAccess();
        sub_26BE2A900(1, v13, &v57);
        swift_endAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26BEEC394(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_26BEEC394((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        *&v7[8 * v15 + 32] = v13;
        goto LABEL_5;
      }

      sub_26BF7F124(v0[26], v0[29], type metadata accessor for MLS.GroupState);
      if (v13 != *(v50 + 24))
      {
        v43 = v0[29];

        sub_26BE01654();
        swift_allocError();
        *v44 = 32;
        v44[112] = 0;
        swift_willThrow();
        sub_26BF7F05C(v43, type metadata accessor for MLS.GroupState);
        v45 = v0[32];
        v46 = v0[29];
        v47 = v0[26];

        v48 = v0[1];

        return v48();
      }

      v16 = sub_26BF32780(1, v13, *(v54 + 160));
      v17 = v0[29];
      if ((v16 & 1) == 0)
      {
        swift_beginAccess();
        sub_26BF75208(&v57, 1, v13);
        swift_endAccess();
        v57 = xmmword_26C00BBD0;
        v58 = 0;
        result = sub_26BEDD4A8(v17);
        v21 = v57;
        v22 = *(&v57 + 1) >> 62;
        if ((*(&v57 + 1) >> 62) > 1)
        {
          if (v22 != 2)
          {
LABEL_35:
            v25 = sub_26C00909C();
            v27 = v31;
            sub_26BE00258(v21, *(&v21 + 1));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_26BEEC498(0, *(v52 + 2) + 1, 1, v52);
            }

            v29 = *(v52 + 2);
            v32 = *(v52 + 3);
            v30 = v29 + 1;
            if (v29 >= v32 >> 1)
            {
              v52 = sub_26BEEC498((v32 > 1), v29 + 1, 1, v52);
            }

            sub_26BF7F05C(v0[29], type metadata accessor for MLS.GroupState);
            v8 = v52;
            goto LABEL_4;
          }

          v24 = *(v57 + 24);
        }

        else
        {
          if (!v22)
          {
            goto LABEL_35;
          }

          v24 = v57 >> 32;
        }

        if (v24 < 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          return result;
        }

        goto LABEL_35;
      }

      v57 = xmmword_26C00BBD0;
      v58 = 0;
      result = sub_26BEDD4A8(v17);
      v19 = v57;
      v20 = *(&v57 + 1) >> 62;
      if ((*(&v57 + 1) >> 62) > 1)
      {
        if (v20 == 2)
        {
          v23 = *(v57 + 24);
          goto LABEL_25;
        }
      }

      else if (v20)
      {
        v23 = v57 >> 32;
LABEL_25:
        if (v23 < 0)
        {
          goto LABEL_46;
        }
      }

      v25 = sub_26C00909C();
      v27 = v26;
      sub_26BE00258(v19, *(&v19 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_26BEEC498(0, *(v51 + 2) + 1, 1, v51);
      }

      v29 = *(v51 + 2);
      v28 = *(v51 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v51 = sub_26BEEC498((v28 > 1), v29 + 1, 1, v51);
      }

      sub_26BF7F05C(v0[29], type metadata accessor for MLS.GroupState);
      v8 = v51;
LABEL_4:
      *(v8 + 2) = v30;
      v9 = &v8[24 * v29];
      *(v9 + 4) = v13;
      *(v9 + 5) = v25;
      *(v9 + 6) = v27;
      v4 = v49;
LABEL_5:
      v6 += v53;
      if (!--v2)
      {
        goto LABEL_40;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
LABEL_40:
  v33 = v0[25];
  v34 = v33[6];
  swift_beginAccess();
  sub_26BE038A8(v34 + 120, (v0 + 2));
  v35 = v0[5];
  v36 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
  v37 = v33[4];
  v0[33] = v37;
  v38 = v33[5];
  v0[34] = v38;
  sub_26BE00608(v37, v38);
  v0[7] = sub_26BF36E34();
  v0[8] = v39;
  v0[9] = v52;
  v0[10] = v51;
  v0[11] = v7;
  v40 = *(v36 + 24);
  v56 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  v0[35] = v42;
  *v42 = v0;
  v42[1] = sub_26BF3B354;

  return (v56)(v37, v38, v0 + 7, v35, v36);
}

uint64_t sub_26BF3B354()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v13 = *v1;
  v2[36] = v0;

  v4 = v2[7];
  v2 += 7;
  v6 = v2[26];
  v5 = v2[27];
  v7 = v2[1];
  v8 = v2[2];
  v10 = v2[3];
  v9 = v2[4];
  sub_26BE00258(v4, v7);

  sub_26BE00258(v6, v5);
  if (v0)
  {
    v11 = sub_26BF3B540;
  }

  else
  {
    v11 = sub_26BF3B4B0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26BF3B4B0()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF3B540()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF3B5CC()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[15] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = sub_26C00921C();
  v1[18] = v4;
  v5 = *(v4 - 8);
  v1[19] = v5;
  v6 = *(v5 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3B6E0, 0, 0);
}

uint64_t sub_26BF3B6E0()
{
  v1 = v0[19];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v2 + 160);
  v4 = *(v3 + 56);
  v51 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  v57 = *(v2 + 160);

  v59 = v2;
  v56 = v8;
  result = swift_beginAccess();
  v10 = 0;
  v50 = (63 - v5) >> 6;
  v55 = (v1 + 56);
  v53 = (v1 + 32);
  v58 = (v1 + 48);
  v48 = MEMORY[0x277D84F90];
  v49 = v1;
  v54 = (v1 + 8);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_15:
  v18 = v58;
  while (1)
  {
    v23 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v50)
    {
      break;
    }

    v7 = *(v51 + 8 * v23);
    ++v10;
    if (v7)
    {
      v10 = v23;
      while (1)
      {
        v24 = *(v57 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7))));
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v59 + v56);
        if (*(v27 + 16) && (v28 = sub_26BEBB598(v25, v26), (v29 & 1) != 0))
        {
          v30 = v0[21];
          v31 = v0[17];
          v32 = v0[18];
          (*(v49 + 16))(v31, *(v27 + 56) + *(v49 + 72) * v28, v32);
          (*(v49 + 56))(v31, 0, 1, v32);
          (*(v49 + 32))(v30, v31, v32);
        }

        else
        {
          v33 = v0[21];
          v35 = v0[17];
          v34 = v0[18];
          (*v55)(v35, 1, 1, v34);
          sub_26C00917C();
          if ((*v18)(v35, 1, v34) != 1)
          {
            sub_26BE2E258(v0[17], &qword_28045E4A8, &unk_26C00ECB0);
          }
        }

        if (qword_28045DF48 != -1)
        {
          swift_once();
        }

        v36 = v0[18];
        v37 = v0[16];
        v38 = __swift_project_value_buffer(v0[15], qword_28045E4F0);
        swift_beginAccess();
        sub_26BE2E1F0(v38, v37, &qword_28045E4A8, &unk_26C00ECB0);
        v39 = *v18;
        v40 = (*v18)(v37, 1, v36);
        v41 = v0[18];
        v42 = v0[16];
        v52 = v26;
        if (v40 == 1)
        {
          sub_26C00920C();
          if (v39(v42, 1, v41) != 1)
          {
            sub_26BE2E258(v0[16], &qword_28045E4A8, &unk_26C00ECB0);
          }
        }

        else
        {
          (*v53)(v0[20], v42, v41);
        }

        v7 &= v7 - 1;
        v11 = v0[20];
        v12 = v0[21];
        v13 = v0[18];
        sub_26C00918C();
        v14 = *v54;
        (*v54)(v11, v13);
        sub_26C00B15C();
        v15 = *(v59 + 48);
        swift_beginAccess();
        v16 = *(v15 + 56);
        v17 = *(v15 + 64);
        LOBYTE(v11) = sub_26C00B14C();
        result = v14(v12, v13);
        if (v11)
        {
          v19 = v48;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26BECB9B4(0, *(v48 + 16) + 1, 1);
            v19 = v48;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            result = sub_26BECB9B4((v20 > 1), v21 + 1, 1);
            v19 = v48;
          }

          *(v19 + 16) = v21 + 1;
          v48 = v19;
          v22 = v19 + 16 * v21;
          *(v22 + 32) = v25;
          *(v22 + 40) = v52;
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        else if (!v7)
        {
          goto LABEL_15;
        }

LABEL_9:
        v18 = v58;
      }
    }
  }

  v44 = v0[20];
  v43 = v0[21];
  v46 = v0[16];
  v45 = v0[17];

  v47 = v0[1];

  return v47(v48);
}

uint64_t sub_26BF3BBF0()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_26BF3BCE8;

  return sub_26BF3B5CC();
}

uint64_t sub_26BF3BCE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = *(v3 + 64);

    v7 = *(v5 + 8);

    return v7(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF3BE3C, 0, 0);
  }
}

uint64_t sub_26BF3BE3C()
{
  v59 = v0;
  if (qword_28045DF80 != -1)
  {
LABEL_22:
    swift_once();
  }

  v54 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = v0;
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 80);
  if (v7)
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v10 = 136315394;

    v12 = sub_26BE3D034();
    v14 = v13;

    v15 = sub_26BE29740(v12, v14, &v58);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    v16 = *(v8 + 16);

    *(v10 + 14) = v16;
    v4 = v0;

    _os_log_impl(&dword_26BDFE000, v5, v6, "%s: cleanUpExpiredEpochs found %ld expired epochs", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D69A4E0](v11, -1, -1);
    MEMORY[0x26D69A4E0](v10, -1, -1);
  }

  else
  {
    v17 = *(v0 + 80);
    swift_bridgeObjectRelease_n();
  }

  v18 = *(v4 + 80);
  v19 = *(v0 + 40);
  v20 = *(v18 + 16);
  *(v0 + 88) = v20;
  swift_beginAccess();
  v21 = *(v19 + 160);
  v22 = v0;
  v23 = *(v21 + 16);
  *(v0 + 96) = v23;
  if (v20 != v23)
  {
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_18:
    v49 = v22[10];
    v50 = v22;
    v51 = v22[8];

    v52 = v50[1];
    v53 = v50[11] == v50[12];

    return v52(v53);
  }

  v24 = *(v0 + 40);

  v25 = sub_26C009A3C();
  v26 = sub_26C00AA1C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 40);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v58 = v29;
    *v28 = 136315138;

    v30 = sub_26BE3D034();
    v32 = v31;

    v33 = sub_26BE29740(v30, v32, &v58);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_26BDFE000, v25, v26, "%s: cleanUpExpiredEpochs found all epochs expired, indicating that group should be deleted", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x26D69A4E0](v29, -1, -1);
    MEMORY[0x26D69A4E0](v28, -1, -1);
  }

  v22 = v0;
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_9:
  v0 = v22[10];
  v34 = v22[7];
  v56 = v22[6];
  v57 = v22[8];
  v58 = MEMORY[0x277D84F90];
  sub_26BECB9D4(0, v20, 0);
  v35 = v54;
  v36 = v58;
  v55 = type metadata accessor for MLS.GroupState();
  v37 = *(*(v55 - 8) + 56);
  v38 = (v0 + 40);
  v39 = 0x8000000000000000;
  do
  {
    if (!v39)
    {
      __break(1u);
      goto LABEL_22;
    }

    v40 = v35[8];
    v41 = *v38;
    v42 = *(v56 + 48);
    *v40 = *(v38 - 2);
    *(v57 + 8) = v41;
    v37(&v40[v42], 1, 1, v55);
    v58 = v36;
    v0 = *(v36 + 16);
    v43 = *(v36 + 24);
    if (v0 >= v43 >> 1)
    {
      sub_26BECB9D4(v43 > 1, v0 + 1, 1);
      v35 = v54;
      v36 = v58;
    }

    v35[13] = v36;
    v44 = v35[8];
    *(v36 + 16) = v0 + 1;
    sub_26BE33F30(v44, v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v0, &qword_28045FAC0, &qword_26C01F998);
    v38 += 2;
    --v39;
    --v20;
  }

  while (v20);
  v45 = v35[10];

  v46 = swift_task_alloc();
  v35[14] = v46;
  *v46 = v35;
  v46[1] = sub_26BF3C378;
  v47 = v35[5];

  return sub_26BF3C540(v36);
}

uint64_t sub_26BF3C378()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF3C4D0, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[8];

    v6 = v3[1];
    v7 = v3[11] == v3[12];

    return v6(v7);
  }
}

uint64_t sub_26BF3C4D0()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[8];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26BF3C540(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for MLS.GroupState();
  v2[34] = v4;
  v5 = *(v4 - 8);
  v2[35] = v5;
  v6 = *(v5 + 64) + 15;
  v2[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v2[37] = v7;
  v8 = *(v7 - 8);
  v2[38] = v8;
  v9 = *(v8 + 64) + 15;
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3C6A0, 0, 0);
}

uint64_t sub_26BF3C6A0()
{
  v70 = v0;
  v1 = *(*(v0 + 256) + 48);
  swift_beginAccess();
  sub_26BE2E1F0(v1 + 160, v0 + 112, &qword_28045FA20, &qword_26C029070);
  if (!*(v0 + 136))
  {
    sub_26BE2E258(v0 + 112, &qword_28045FA20, &qword_26C029070);
    sub_26BE01654();
    swift_allocError();
    *v40 = 0xD000000000000029;
    *(v40 + 8) = 0x800000026C02CFB0;
    *(v40 + 112) = 2;
    swift_willThrow();
    goto LABEL_45;
  }

  v2 = *(v0 + 248);
  sub_26BE03890((v0 + 112), v0 + 72);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
LABEL_40:
    v41 = *(v0 + 256);
    v42 = *(v0 + 96);
    v43 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v42);
    v44 = *(v41 + 32);
    v45 = *(v41 + 40);
    sub_26BE00608(v44, v45);
    v46 = sub_26BF36E34();
    *(v0 + 16) = v44;
    *(v0 + 24) = v45;
    *(v0 + 32) = v46;
    *(v0 + 40) = v49;
    *(v0 + 48) = v61;
    *(v0 + 56) = v60;
    *(v0 + 64) = v7;
    v50 = *(v43 + 24);
    v68 = (v50 + *v50);
    v51 = v50[1];
    v52 = swift_task_alloc();
    *(v0 + 320) = v52;
    *v52 = v0;
    v52[1] = sub_26BF3CE88;

    return v68(v0 + 16, v42, v43);
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v58 = *(v0 + 288);
  v59 = *(v0 + 272);
  v66 = *(*(v0 + 296) + 48);
  v67 = *(v0 + 312);
  v65 = *(v0 + 248) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v62 = *(v0 + 256);
  swift_beginAccess();
  v6 = 0;
  v64 = *(v4 + 72);
  v7 = MEMORY[0x277D84F90];
  v63 = (v5 + 48);
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v57 = v3;
  while (1)
  {
    v11 = *(v0 + 312);
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    sub_26BE2E1F0(v65 + v6 * v64, v11, &qword_28045FAC0, &qword_26C01F998);
    v14 = *v11;
    v15 = *(v67 + 8);
    sub_26BE33F30(v67 + v66, v13, &qword_28045FAB0, &qword_26C01F960);
    if ((*v63)(v13, 1, v12) != 1)
    {
      break;
    }

    sub_26BE2E258(*(v0 + 264), &qword_28045FAB0, &qword_26C01F960);
    swift_beginAccess();
    sub_26BE2A900(v14, v15, v69);
    swift_endAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_26BEEC178(0, *(v7 + 2) + 1, 1, v7);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_26BEEC178((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
LABEL_6:
    if (++v6 == v3)
    {
      goto LABEL_40;
    }
  }

  v19 = *(v0 + 288);
  sub_26BF7F124(*(v0 + 264), v19, type metadata accessor for MLS.GroupState);
  v20 = *(v19 + *(v59 + 40));
  v21 = (v20 + 32);
  v22 = *(v20 + 16) + 1;
  while (--v22)
  {
    v23 = v21 + 12;
    v24 = *v21;
    v21 += 12;
    if (v24 == -4095)
    {
      *v69 = -4095;
      *&v69[8] = *(v23 - 1);
      v25 = sub_26BE34C94(v69);
      goto LABEL_18;
    }
  }

  v25 = sub_26BE4126C();
LABEL_18:
  if (v14 == v25 && v15 == *(v58 + 24))
  {
    v26 = *(v0 + 288);
    *v69 = xmmword_26C00BBD0;
    *&v69[16] = 0;
    result = sub_26BEDD4A8(v26);
    v28 = *v69;
    v29 = *&v69[8];
    v30 = *&v69[8] >> 62;
    if ((*&v69[8] >> 62) > 1)
    {
      if (v30 != 2)
      {
LABEL_28:
        v32 = sub_26C00909C();
        v34 = v33;
        sub_26BE00258(v28, v29);
        if (sub_26BF32780(v14, v15, *(v62 + 160)))
        {
          sub_26BE00608(v32, v34);
          v35 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_26BEEC288(0, *(v60 + 2) + 1, 1, v60);
          }

          v37 = *(v60 + 2);
          v36 = *(v60 + 3);
          v38 = v37 + 1;
          if (v37 >= v36 >> 1)
          {
            v60 = sub_26BEEC288((v36 > 1), v37 + 1, 1, v60);
          }

          v8 = *(v0 + 288);
          sub_26BE00258(v32, v34);
          v9 = v60;
        }

        else
        {
          swift_beginAccess();
          sub_26BF75208(v69, v14, v15);
          swift_endAccess();
          sub_26BE00608(v32, v34);
          v35 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_26BEEC288(0, *(v61 + 2) + 1, 1, v61);
          }

          v37 = *(v61 + 2);
          v39 = *(v61 + 3);
          v38 = v37 + 1;
          if (v37 >= v39 >> 1)
          {
            v61 = sub_26BEEC288((v39 > 1), v37 + 1, 1, v61);
          }

          v8 = *(v0 + 288);
          sub_26BE00258(v32, v34);
          v9 = v61;
        }

        *(v9 + 2) = v38;
        v10 = &v9[32 * v37];
        *(v10 + 4) = v14;
        *(v10 + 5) = v15;
        *(v10 + 6) = v32;
        *(v10 + 7) = v34;
        sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
        v7 = v35;
        v3 = v57;
        goto LABEL_6;
      }

      v31 = *(*v69 + 24);
    }

    else
    {
      if (!v30)
      {
        goto LABEL_28;
      }

      v31 = *v69 >> 32;
    }

    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_28;
  }

  v47 = *(v0 + 288);

  sub_26BE01654();
  swift_allocError();
  *v48 = 32;
  v48[112] = 0;
  swift_willThrow();
  sub_26BF7F05C(v47, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
LABEL_45:
  v53 = *(v0 + 312);
  v54 = *(v0 + 288);
  v55 = *(v0 + 264);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_26BF3CE88()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v13 = *v1;
  v2[41] = v0;

  v4 = v2[2];
  v5 = v2[3];
  v2 += 2;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  sub_26BE00258(v4, v5);
  sub_26BE132D4(v6, v7);

  if (v0)
  {
    v11 = sub_26BF3D074;
  }

  else
  {
    v11 = sub_26BF3CFE4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26BF3CFE4()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[33];
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v4 = v0[1];

  return v4();
}