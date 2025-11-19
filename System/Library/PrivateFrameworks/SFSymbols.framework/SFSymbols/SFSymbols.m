SFSSymbolAssetInfo *SFSResolveNameAndStatus(void *a1, void *a2, int a3)
{
  v5 = a1;
  if ([a2 integerValue] != 1)
  {
    v12 = [SFSSymbolAssetInfo alloc];
    v7 = +[SFSCoreGlyphsBundle public];
    v8 = v12;
    v9 = v5;
    v10 = v7;
    v11 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v6 = [SFSSymbolAssetInfo alloc];
    v7 = +[SFSCoreGlyphsBundle private];
    v8 = v6;
    v9 = v5;
    v10 = v7;
    v11 = 1;
LABEL_5:
    v13 = [(SFSSymbolAssetInfo *)v8 initWithName:v9 bundle:v10 andType:v11];

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

uint64_t sub_22E450940()
{
  v0 = sub_22E4509F8(&unk_2842930F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2E00 = v0;
  return result;
}

uint64_t sub_22E45099C()
{
  v0 = sub_22E4509F8(&unk_284275C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DF0 = v0;
  return result;
}

unint64_t sub_22E4509F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22E450B0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22E450B0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22E47D0F4();
  sub_22E47CE24();
  v6 = sub_22E47D124();

  return sub_22E450B84(a1, a2, v6);
}

unint64_t sub_22E450B84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22E47D054())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22E450C3C()
{
  v0 = sub_22E4509F8(&unk_284272EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DC8 = v0;
  return result;
}

uint64_t sub_22E450C98()
{
  v0 = sub_22E4509F8(&unk_28428BE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642F0, &qword_22E47E6A0);
  result = swift_arrayDestroy();
  qword_280AC2DD8 = v0;
  return result;
}

uint64_t sub_22E450CF4(char a1, unint64_t a2, unint64_t a3)
{
  v161 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if (a1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  v142 = HIDWORD(a2);
  v150 = BYTE6(a3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = BYTE6(a3);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_11:
    LODWORD(v7) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_254;
    }

    v7 = v7;
  }

LABEL_14:
  if (__OFADD__(v7, 8 * v6))
  {
    goto LABEL_250;
  }

  result = sub_22E452D38(v7 + 8 * v6);
  v13 = result;
  v140 = a2 >> 32;
  v141 = a2;
  v159 = result;
  v160 = v12;
  v138 = a2 >> 16;
  v139 = a2 >> 8;
  v136 = a2 >> 40;
  v137 = a2 >> 24;
  v134 = HIBYTE(a2);
  v135 = HIWORD(a2);
  v132 = a3 >> 16;
  v133 = a3 >> 8;
  v130 = HIDWORD(a3);
  v131 = a3 >> 24;
  v148 = a3;
  v129 = a3 >> 40;
  v147 = a2;
  v149 = v5;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v18 = 0;
      v15 = 0;
      if (a1)
      {
        goto LABEL_30;
      }

      goto LABEL_60;
    }

    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v10 = __OFSUB__(v16, v17);
    v14 = v16 - v17;
    if (v10)
    {
      goto LABEL_255;
    }

    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    LODWORD(v14) = v142 - a2;
    if (__OFSUB__(v142, a2))
    {
      goto LABEL_256;
    }

    v14 = v14;
    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v14 = v150;
  if ((a1 & 1) == 0)
  {
LABEL_22:
    if (v5 == 2)
    {
      v38 = *(a2 + 16);
      v37 = *(a2 + 24);
      v10 = __OFSUB__(v37, v38);
      v18 = v37 - v38;
      if (!v10)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    else if (v5 == 1)
    {
      LODWORD(v18) = v142 - a2;
      if (__OFSUB__(v142, a2))
      {
        goto LABEL_257;
      }

      v18 = v18;
      goto LABEL_60;
    }

    v18 = v150;
LABEL_60:
    v10 = __OFADD__(v18, 8);
    v39 = v18 + 8;
    if (v10)
    {
      goto LABEL_253;
    }

    v154 = v6;
    v40 = 0;
    v41 = v39 % 10;
    v153 = v39 % 10;
    while (1)
    {
      v42 = (v41 + v40) % 10;
      if (v42 < 0)
      {
        goto LABEL_200;
      }

      v43 = byte_28428BDF0[v40 + 32] + byte_28428BDC0[v42 + 32] + 0x80;
      v44 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_260;
        }

        if (v40 < *(v13 + 16))
        {
          goto LABEL_214;
        }

        if (v40 >= *(v13 + 24))
        {
          goto LABEL_216;
        }

        v45 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v13 + 16);
          v46 = *(v13 + 24);
          if (sub_22E47CBF4())
          {
            if (__OFSUB__(v47, sub_22E47CC14()))
            {
              goto LABEL_247;
            }

            if (__OFSUB__(v46, v47))
            {
              goto LABEL_232;
            }
          }

          else if (__OFSUB__(v46, v47))
          {
            goto LABEL_232;
          }

          v56 = sub_22E47CC24();
          v57 = *(v56 + 48);
          v58 = *(v56 + 52);
          swift_allocObject();
          v59 = sub_22E47CBE4();

          v45 = v59;
          v41 = v153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = *(v13 + 16);
          v61 = *(v13 + 24);
          sub_22E47CD04();
          v62 = swift_allocObject();
          *(v62 + 16) = v60;
          *(v62 + 24) = v61;

          v13 = v62;
        }

        sub_22E47CBD4();
        v63 = sub_22E47CBF4();
        if (!v63)
        {
          goto LABEL_262;
        }

        v64 = v63;
        v65 = sub_22E47CC14();
        if (__OFSUB__(v40, v65))
        {
          __break(1u);
LABEL_94:
          v33 = 0;
          v159 = v13;
          v160 = v12;
          v145 = 8;
          LOBYTE(v6) = v154;
LABEL_95:
          v66 = v147;
          v67 = v148;
          sub_22E47CD14();
          if (v153 < 0)
          {
            goto LABEL_251;
          }

          v144 = v6;
          if ((byte_28428BDC0[v153 + 32] * v6) == byte_28428BDC0[v153 + 32] * v6)
          {
            sub_22E47CD24();
            v68 = v33 | 1;
            v69 = __OFSUB__(v142, v147);
            v127 = v69;
            v35 = v159;
            v36 = v160;
            v143 = v33 + 0x7FFFFFFFFFFFFFFFLL;
            v70 = 1;
            v125 = v160;
            v126 = v159;
            v71 = v149;
            if (v149 <= 1)
            {
              goto LABEL_192;
            }

            while (2)
            {
              if (v71 != 2)
              {
                v36 = v125;
                v35 = v126;
LABEL_197:
                sub_22E45286C(v35, v36);
                v34 = v35;
                goto LABEL_198;
              }

              v122 = *(v66 + 16);
              v121 = *(v66 + 24);
              v10 = __OFSUB__(v121, v122);
              v123 = v121 - v122;
              if (!v10)
              {
LABEL_194:
                if (v68 >= v123)
                {
                  goto LABEL_197;
                }

                v72 = v36 >> 62;
                v154 = v70;
                v73 = v35;
                if (a1)
                {
                  v74 = v70 - 1;
                  if (v72 > 1)
                  {
                    if (v72 != 2)
                    {
                      goto LABEL_268;
                    }

                    if (v70 <= *(v35 + 16))
                    {
                      goto LABEL_235;
                    }

                    if (v70 > *(v35 + 24))
                    {
                      goto LABEL_240;
                    }

                    v80 = sub_22E47CBF4();
                    if (!v80)
                    {
                      goto LABEL_271;
                    }

                    v76 = v80;
                    v81 = sub_22E47CC14();
                    v78 = v74 - v81;
                    if (__OFSUB__(v74, v81))
                    {
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    if (!v72)
                    {
                      if (v70 > BYTE6(v36))
                      {
                        goto LABEL_236;
                      }

                      v155 = v35;
                      v79 = v36 >> 40;
                      LOWORD(v156) = v36;
                      BYTE2(v156) = BYTE2(v36);
                      HIBYTE(v156) = BYTE3(v36);
                      LOBYTE(v157) = BYTE4(v36);
                      goto LABEL_130;
                    }

                    if (v70 > v35 >> 32 || v70 <= v35)
                    {
                      goto LABEL_237;
                    }

                    v85 = sub_22E47CBF4();
                    if (!v85)
                    {
                      goto LABEL_269;
                    }

                    v76 = v85;
                    v86 = sub_22E47CC14();
                    v78 = v74 - v86;
                    if (__OFSUB__(v74, v86))
                    {
                      goto LABEL_242;
                    }
                  }
                }

                else
                {
                  v74 = v68 - 1;
                  if (v71 != 2)
                  {
                    if (v71 == 1)
                    {
                      if (v68 <= v141 || v68 > v140)
                      {
                        goto LABEL_238;
                      }

                      v75 = sub_22E47CBF4();
                      if (!v75)
                      {
                        goto LABEL_270;
                      }

                      v76 = v75;
                      v77 = sub_22E47CC14();
                      v78 = v74 - v77;
                      if (__OFSUB__(v74, v77))
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_135;
                    }

                    if (v68 > v150)
                    {
                      goto LABEL_233;
                    }

                    LOBYTE(v155) = v66;
                    BYTE1(v155) = v139;
                    BYTE2(v155) = v138;
                    BYTE3(v155) = v137;
                    BYTE4(v155) = v142;
                    BYTE5(v155) = v136;
                    BYTE6(v155) = v135;
                    HIBYTE(v155) = v134;
                    LOBYTE(v156) = v67;
                    BYTE1(v156) = v133;
                    BYTE2(v156) = v132;
                    HIBYTE(v156) = v131;
                    LOBYTE(v157) = v130;
                    LOBYTE(v79) = v129;
LABEL_130:
                    HIBYTE(v157) = v79;
                    v84 = *(&v155 + v74);
LABEL_136:
                    v10 = __OFADD__(v84, v70);
                    v87 = v84 + v70;
                    if (v10)
                    {
                      goto LABEL_201;
                    }

                    v10 = __OFADD__(v87, v153);
                    v88 = v87 + v153;
                    if (v10)
                    {
                      goto LABEL_202;
                    }

                    v89 = v88 % 10;
                    if (v89 < 0)
                    {
                      goto LABEL_203;
                    }

                    if (__OFADD__(v145, v70))
                    {
                      goto LABEL_204;
                    }

                    v152 = v145 + v70;
                    v90 = byte_28428BDC0[v89 + 32];
                    if (v71 == 2)
                    {
                      if (v68 < *(v66 + 16))
                      {
                        goto LABEL_221;
                      }

                      if (v68 >= *(v66 + 24))
                      {
                        goto LABEL_223;
                      }

                      v95 = sub_22E47CBF4();
                      if (!v95)
                      {
                        goto LABEL_264;
                      }

                      v92 = v95;
                      v96 = sub_22E47CC14();
                      v94 = v68 - v96;
                      if (__OFSUB__(v68, v96))
                      {
                        goto LABEL_225;
                      }

LABEL_152:
                      v97 = *(v92 + v94);
                      v35 = v73;
                    }

                    else
                    {
                      if (v71 == 1)
                      {
                        if (v68 < v141 || v68 >= v140)
                        {
                          goto LABEL_222;
                        }

                        v91 = sub_22E47CBF4();
                        if (!v91)
                        {
                          goto LABEL_263;
                        }

                        v92 = v91;
                        v93 = sub_22E47CC14();
                        v94 = v68 - v93;
                        if (__OFSUB__(v68, v93))
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_152;
                      }

                      if (v68 >= v150)
                      {
                        goto LABEL_220;
                      }

                      BYTE1(v155) = v139;
                      BYTE2(v155) = v138;
                      BYTE3(v155) = v137;
                      BYTE4(v155) = v142;
                      BYTE5(v155) = v136;
                      BYTE6(v155) = v135;
                      HIBYTE(v155) = v134;
                      LOBYTE(v156) = v67;
                      BYTE1(v156) = v133;
                      BYTE2(v156) = v132;
                      HIBYTE(v156) = v131;
                      LOBYTE(v157) = v130;
                      HIBYTE(v157) = v129;
                      v97 = *(&v155 + v68);
                    }

                    v98 = v90 * v144;
                    if ((v90 * v144) != v98)
                    {
                      goto LABEL_205;
                    }

                    v151 = v97 + v98;
                    if (v72 > 1)
                    {
                      v99 = v152;
                      if (v72 != 2)
                      {
                        goto LABEL_265;
                      }

                      v100 = v36 & 0x3FFFFFFFFFFFFFFFLL;

                      sub_22E451DD0(v35, v36);
                      sub_22E451DD0(0, 0xC000000000000000);
                      if (v152 < *(v35 + 16))
                      {
                        goto LABEL_227;
                      }

                      if (v152 >= *(v35 + 24))
                      {
                        goto LABEL_229;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v101 = v68;
                        v103 = *(v35 + 16);
                        v102 = *(v35 + 24);
                        if (sub_22E47CBF4())
                        {
                          if (__OFSUB__(v103, sub_22E47CC14()))
                          {
                            goto LABEL_249;
                          }

                          if (__OFSUB__(v102, v103))
                          {
                            goto LABEL_245;
                          }
                        }

                        else if (__OFSUB__(v102, v103))
                        {
                          goto LABEL_245;
                        }

                        v112 = sub_22E47CC24();
                        v113 = *(v112 + 48);
                        v114 = *(v112 + 52);
                        swift_allocObject();
                        v115 = sub_22E47CBE4();

                        v100 = v115;
                        v68 = v101;
                        v35 = v73;
                        v99 = v152;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v116 = *(v35 + 16);
                        v117 = *(v35 + 24);
                        sub_22E47CD04();
                        v73 = swift_allocObject();
                        *(v73 + 16) = v116;
                        *(v73 + 24) = v117;
                        v99 = v152;
                        v66 = v147;
                      }

                      sub_22E47CBD4();
                      v118 = sub_22E47CBF4();
                      if (!v118)
                      {
                        goto LABEL_267;
                      }

                      v119 = v118;
                      v120 = sub_22E47CC14();
                      if (__OFSUB__(v99, v120))
                      {
                        goto LABEL_231;
                      }

                      *(v119 + v99 - v120) = v151;
                      v36 = v100 | 0x8000000000000000;
                    }

                    else
                    {
                      if (!v72)
                      {
                        sub_22E451DD0(v35, v36);
                        v155 = v35;
                        LOWORD(v156) = v36;
                        BYTE2(v156) = BYTE2(v36);
                        HIBYTE(v156) = BYTE3(v36);
                        LOBYTE(v157) = BYTE4(v36);
                        HIBYTE(v157) = BYTE5(v36);
                        v158 = BYTE6(v36);
                        if (v152 >= BYTE6(v36))
                        {
                          goto LABEL_226;
                        }

                        *(&v155 + v152) = v151;
                        v35 = v155;
                        v36 = v128 & 0xF00000000000000 | v156 | ((v157 | (v158 << 16)) << 32);
                        v128 = v36;
                        v66 = v147;
                        v67 = v148;
                        v71 = v149;
                        goto LABEL_186;
                      }

                      v104 = v36 & 0x3FFFFFFFFFFFFFFFLL;

                      sub_22E451DD0(v35, v36);
                      sub_22E451DD0(0, 0xC000000000000000);
                      if (v152 >= v35 >> 32 || v152 < v35)
                      {
                        goto LABEL_228;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {

                        if (sub_22E47CBF4() && __OFSUB__(v35, sub_22E47CC14()))
                        {
                          goto LABEL_248;
                        }

                        v105 = sub_22E47CC24();
                        v106 = *(v105 + 48);
                        v107 = *(v105 + 52);
                        swift_allocObject();
                        v108 = sub_22E47CBE4();

                        v104 = v108;
                      }

                      sub_22E47CBD4();
                      v109 = sub_22E47CBF4();
                      if (!v109)
                      {
                        goto LABEL_266;
                      }

                      v110 = v109;
                      v111 = sub_22E47CC14();
                      if (__OFSUB__(v152, v111))
                      {
                        goto LABEL_230;
                      }

                      *(v110 + v152 - v111) = v151;
                      v36 = v104 | 0x4000000000000000;
                    }

                    v35 = v73;
LABEL_186:
                    if (v68 == v143)
                    {
                      goto LABEL_206;
                    }

                    v70 = v154 + 1;
                    ++v68;
                    if (v71 > 1)
                    {
                      continue;
                    }

LABEL_192:
                    v123 = v150;
                    if (v71)
                    {
                      v123 = v142 - v147;
                      if (v127)
                      {
                        goto LABEL_218;
                      }
                    }

                    goto LABEL_194;
                  }

                  if (v68 <= *(v66 + 16))
                  {
                    goto LABEL_234;
                  }

                  if (v68 > *(v66 + 24))
                  {
                    goto LABEL_239;
                  }

                  v82 = sub_22E47CBF4();
                  if (!v82)
                  {
                    goto LABEL_272;
                  }

                  v76 = v82;
                  v83 = sub_22E47CC14();
                  v78 = v74 - v83;
                  if (__OFSUB__(v74, v83))
                  {
                    goto LABEL_243;
                  }
                }

LABEL_135:
                v84 = *(v76 + v78);
                v70 = v154;
                v35 = v73;
                goto LABEL_136;
              }

              break;
            }

LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
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
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
          }

          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        *(v64 + v40 - v65) = v43;
        v12 = v45 | 0x8000000000000000;
      }

      else if (v44)
      {
        if (v40 >= v13 >> 32 || v40 < v13)
        {
          goto LABEL_215;
        }

        v48 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_22E47CBF4() && __OFSUB__(v13, sub_22E47CC14()))
          {
            goto LABEL_246;
          }

          v49 = sub_22E47CC24();
          v50 = *(v49 + 48);
          v51 = *(v49 + 52);
          swift_allocObject();
          v52 = sub_22E47CBE4();

          v48 = v52;
          v41 = v153;
        }

        sub_22E47CBD4();
        v53 = sub_22E47CBF4();
        if (!v53)
        {
          goto LABEL_261;
        }

        v54 = v53;
        v55 = sub_22E47CC14();
        if (__OFSUB__(v40, v55))
        {
          goto LABEL_217;
        }

        *(v54 + v40 - v55) = v43;
        v12 = v48 | 0x4000000000000000;
      }

      else
      {
        v155 = v13;
        LOWORD(v156) = v12;
        BYTE2(v156) = BYTE2(v12);
        HIBYTE(v156) = BYTE3(v12);
        LOBYTE(v157) = BYTE4(v12);
        HIBYTE(v157) = BYTE5(v12);
        v158 = BYTE6(v12);
        if (v40 >= BYTE6(v12))
        {
          goto LABEL_213;
        }

        *(&v155 + v40) = v43;
        v13 = v155;
        v6 = v6 & 0xF00000000000000 | v156 | ((v157 | (v158 << 16)) << 32);
        v12 = v6;
      }

      if (++v40 == 8)
      {
        goto LABEL_94;
      }
    }
  }

LABEL_18:
  v15 = v14 % 10;
LABEL_30:
  v153 = v15;
  if (v5 == 3)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    if (v5 == 1)
    {
      if (v19 < a2 || v19 >= v140)
      {
        goto LABEL_209;
      }

      v22 = sub_22E47CBF4();
      if (!v22)
      {
        goto LABEL_258;
      }

      v23 = v22;
      v24 = sub_22E47CC14();
      v25 = v19 - v24;
      if (__OFSUB__(v19, v24))
      {
        goto LABEL_211;
      }

LABEL_46:
      v21 = *(v23 + v25);
      goto LABEL_47;
    }

    if (v5)
    {
      if (v19 < *(a2 + 16))
      {
        goto LABEL_207;
      }

      if (v19 >= *(a2 + 24))
      {
        goto LABEL_210;
      }

      v26 = sub_22E47CBF4();
      if (!v26)
      {
        goto LABEL_259;
      }

      v23 = v26;
      v27 = sub_22E47CC14();
      v25 = v19 - v27;
      if (__OFSUB__(v19, v27))
      {
        goto LABEL_212;
      }

      goto LABEL_46;
    }

    if (v19 >= v150)
    {
      goto LABEL_208;
    }

    LOWORD(v155) = a2;
    BYTE2(v155) = BYTE2(a2);
    BYTE3(v155) = BYTE3(a2);
    BYTE4(v155) = v142;
    BYTE5(v155) = BYTE5(a2);
    BYTE6(v155) = BYTE6(a2);
    HIBYTE(v155) = HIBYTE(a2);
    LOBYTE(v156) = v148;
    BYTE1(v156) = v133;
    BYTE2(v156) = v132;
    HIBYTE(v156) = v131;
    LOBYTE(v157) = v130;
    HIBYTE(v157) = v129;
    v21 = *(&v155 + v19);
LABEL_47:
    v28 = (v153 + v19) % 10;
    if (v28 < 0)
    {
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
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v29 = byte_28428BDC0[v28 + 32];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22E452DD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      v20 = sub_22E452DD8((v30 > 1), v31 + 1, 1, v20);
    }

    ++v19;
    *(v20 + 2) = v31 + 1;
    v20[v31 + 32] = v21 - (v29 ^ 0x80);
  }

  while (v19 != 8);
  v32 = sub_22E452ED0(byte_28428BDF0, v20);

  if (v32)
  {
    v145 = 0;
    v33 = 8;
    goto LABEL_95;
  }

  v34 = 0;
  v35 = v159;
  v36 = v160;
LABEL_198:
  sub_22E451DD0(v35, v36);
  v124 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_22E451DD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22E451E24(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v4 = sub_22E47CCE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v77 - v13;
  sub_22E47CCB4();
  v15 = sub_22E47CCF4();
  if (v2)
  {

    v17 = v110;
    sub_22E457288(a1);
    sub_22E47CCB4();
    v18 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v19 = sub_22E47CC94();
    v20 = [v18 initWithURL_];

    v21 = *(v5 + 8);
    v21(v12, v4);
    v21(v14, v4);

    *(v17 + 152) = v20;
  }

  else
  {
    v22 = v16;
    v94 = v4;
    v97 = a1;
    v88 = v12;
    v93 = v14;
    v84 = v9;
    v23 = v15;
    v24 = sub_22E47CC64();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_22E47CC54();
    sub_22E452F2C();
    sub_22E47CC44();

    v79 = v22;
    v78 = 0;
    v87 = v5;
    v85 = 0;
    v82 = 0;
    v81 = 0;
    v27 = 0;
    v89 = 0;
    v80 = 0;
    v86 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v109 + 64;
    v31 = v109;
    v32 = 1 << *(v109 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v109 + 64);
    v35 = (v32 + 63) >> 6;
    v95 = v23;
    v36 = v23;
LABEL_6:
    v83 = v28;
    while (1)
    {
      v37 = v110;
      if (!v34)
      {
        break;
      }

LABEL_14:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v29 << 6);
      v41 = (*(v31 + 48) + 16 * v40);
      v42 = *v41;
      v43 = v41[1];
      v44 = *(v31 + 56) + 40 * v40;
      v45 = *(v44 + 8);
      v92 = *v44;
      v91 = *(v44 + 16);
      v28 = *(v44 + 32);
      v90 = *(v44 + 24);

      v46._countAndFlagsBits = v42;
      v46._object = v43;
      Version.init(string:)(v46);
      if ((v101 & 1) == 0)
      {
        v47 = v98;
        if (v98 <= 1)
        {
          v49 = v99;
          v48 = v100;
          if (!v89)
          {
            goto LABEL_23;
          }

          if (v85 == v98)
          {
            if (v82 == v99)
            {
              if (v81 < v100)
              {
                v47 = v85;
                v49 = v82;
LABEL_23:
                v98 = v85;
                v99 = v82;
                v100 = v81;
                v101 = v27;
                v102 = v89;
                v103 = v80;
                v106 = 0;
                v105 = 0;
                v104 = 0;
                v107 = v86;
                v108 = v83;
                v89 = v48;
                v50 = v49;
                sub_22E4545D0(&v98, &qword_27DA64268, &qword_22E47DC10);
                v85 = v47;
                v82 = v50;
                v81 = v89;
                v27 = v92;
                v89 = v45;
                v80 = v91;
                v86 = v90;
                v36 = v95;
                goto LABEL_6;
              }
            }

            else if (v82 < v99)
            {
              v47 = v85;
              goto LABEL_23;
            }
          }

          else if (v85 < v98)
          {
            goto LABEL_23;
          }
        }
      }

      v36 = v95;
    }

    while (1)
    {
      v38 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return;
      }

      if (v38 >= v35)
      {
        break;
      }

      v34 = *(v30 + 8 * v38);
      ++v29;
      if (v34)
      {
        v29 = v38;
        goto LABEL_14;
      }
    }

    if (!v89)
    {
      sub_22E467074();
      swift_allocError();
      *v68 = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 2;
      swift_willThrow();
      sub_22E451DD0(v36, v79);
      (*(v87 + 8))(v93, v94);
      v98 = v85;
      v99 = v82;
      v100 = v81;
      v101 = v27;
      v102 = 0;
      goto LABEL_31;
    }

    v51 = v86;

    v52 = v88;
    sub_22E47CCB4();

    v53 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v54 = sub_22E47CC94();
    v55 = [v53 initWithURL_];

    v56 = *(v87 + 8);
    v57 = v94;
    v87 += 8;
    v56(v52, v94);

    *(v37 + 152) = v55;
    if (v80 == 2 || (v80 & 1) == 0)
    {
      v86 = v51;
      v65 = v56;
      v66 = v89;
      v67 = v80;
      sub_22E47CCA4();

      sub_22E457288(v52);
      sub_22E451DD0(v95, v79);
      v65(v52, v57);
      v65(v93, v57);
      v98 = v85;
      v99 = v82;
      v100 = v81;
      v101 = v27;
      v102 = v66;
      v103 = v67;
      v106 = 0;
      v105 = 0;
      v104 = 0;
      v107 = v86;
      v108 = v83;
      sub_22E4545D0(&v98, &qword_27DA64268, &qword_22E47DC10);
      return;
    }

    v58 = v27;
    v59 = v84;
    v60 = v89;
    sub_22E47CCB4();
    v61 = v78;
    v62 = sub_22E47CCF4();
    if (v61)
    {

      sub_22E467074();
      swift_allocError();
      *v64 = v58;
      *(v64 + 8) = v60;
      *(v64 + 16) = 1;
      swift_willThrow();
      sub_22E451DD0(v95, v79);
      v56(v59, v57);
      v56(v93, v57);
      v98 = v85;
      v99 = v82;
      v100 = v81;
      v101 = v58;
      v102 = v60;
LABEL_31:
      v103 = v80;
      v106 = 0;
      v105 = 0;
      v104 = 0;
      v107 = v86;
      v108 = v83;
      sub_22E4545D0(&v98, &qword_27DA64268, &qword_22E47DC10);
      return;
    }

    v69 = v62;
    v70 = v63;
    v71 = v60;
    v72 = v56;
    v97 = v58;
    v73 = v71;

    v92 = &v77;
    MEMORY[0x28223BE20](v74);
    *(&v77 - 2) = v37;
    v75 = v96;

    sub_22E45286C(v69, v70);
    sub_22E4528C0(v75, v69, v70, sub_22E4670C8, (&v77 - 4));
    sub_22E451DD0(v95, v79);
    sub_22E451DD0(v69, v70);
    v76 = v94;
    v72(v59, v94);
    v72(v93, v76);
    v98 = v85;
    v99 = v82;
    v100 = v81;
    v101 = v97;
    v102 = v73;
    v103 = v80;
    v106 = 0;
    v105 = 0;
    v104 = 0;
    v107 = v86;
    v108 = v83;
    sub_22E4545D0(&v98, &qword_27DA64268, &qword_22E47DC10);
  }
}

uint64_t sub_22E45286C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22E4528C0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v45 = a4;
  v44 = a5;
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22E47CCE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v43 = objc_opt_self();
  v16 = [v43 defaultManager];
  v17 = NSTemporaryDirectory();
  sub_22E47CDC4();

  sub_22E47CC84();

  v18 = sub_22E47CC94();
  v19 = *(v6 + 8);
  v47 = v6 + 8;
  v48 = v5;
  v19(v13, v5);
  v52[0] = 0;
  v20 = [v16 URLForDirectory:99 inDomain:1 appropriateForURL:v18 create:1 error:v52];

  v21 = v52[0];
  if (v20)
  {
    sub_22E47CCD4();
    v22 = v21;

    sub_22E47CCA4();
    v23 = *(v49 + 16);
    v24 = *(v49 + 24);

    v25 = v46;
    v26 = v23(v50, v51);
    if (v25)
    {

      v28 = v48;
      v19(v10, v48);
      v19(v15, v28);
    }

    else
    {
      v30 = v26;
      v31 = v27;

      MEMORY[0x28223BE20](v32);
      *(&v42 - 4) = v30;
      *(&v42 - 3) = v31;
      *(&v42 - 2) = v10;
      sub_22E46E058(sub_22E46E574, (&v42 - 6));
      v33 = v48;
      sub_22E451DD0(v30, v31);
      v45(v10);
      v19(v10, v33);
      v36 = [v43 defaultManager];
      v37 = sub_22E47CC94();
      v52[0] = 0;
      v38 = [v36 removeItemAtURL:v37 error:v52];

      if (v38)
      {
        v39 = v52[0];
      }

      else
      {
        v40 = v52[0];
        v41 = sub_22E47CC74();

        swift_willThrow();
      }

      v19(v15, v33);
    }
  }

  else
  {
    v29 = v52[0];
    sub_22E47CC74();

    swift_willThrow();
  }

  result = sub_22E451DD0(v50, v51);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22E452CF0(unint64_t a1, unint64_t a2)
{
  result = sub_22E450CF4(1, a1, a2);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22E452D38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22E47CC24();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22E47CC04();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22E47CD04();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

char *sub_22E452DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643C0, &qword_22E47EEB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_22E452ED0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22E452F2C()
{
  result = qword_27DA640A0;
  if (!qword_27DA640A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640A0);
  }

  return result;
}

double sub_22E452FA8@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_22E47CCE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v22 = MEMORY[0x277D84F90];
  *&v23 = MEMORY[0x277D84F98];
  *(&v23 + 1) = MEMORY[0x277D84F98];
  *&v24 = MEMORY[0x277D84F98];
  *(&v24 + 1) = MEMORY[0x277D84F98];
  v25 = 0uLL;
  v26 = MEMORY[0x277D84F90];
  *&v27 = MEMORY[0x277D84F98];
  *(&v27 + 1) = MEMORY[0x277D84F98];
  *&v28 = MEMORY[0x277D84F98];
  *(&v28 + 1) = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F90];
  v30 = 0u;
  v31 = 0u;
  if (qword_27DA640E8 != -1)
  {
    swift_once();
  }

  v10 = qword_27DA66860;
  v11 = sub_22E47CDB4();
  v12 = [v10 URLForResource:v11 withExtension:0];

  if (v12)
  {
    sub_22E47CCD4();

    (*(v3 + 32))(v9, v7, v2);
    type metadata accessor for DirectoryDecompressor();
    inited = swift_initStackObject();
    *(inited + 16) = sub_22E452CF0;
    *(inited + 24) = 0;
    sub_22E451E24(v9, inited);
    (*(v3 + 8))(v9, v2);
    swift_setDeallocating();
    v14 = *(inited + 24);
  }

  v15 = v29;
  a1[6] = v28;
  a1[7] = v15;
  v16 = v31;
  a1[8] = v30;
  a1[9] = v16;
  v17 = v25;
  a1[2] = v24;
  a1[3] = v17;
  v18 = v27;
  a1[4] = v26;
  a1[5] = v18;
  result = *&v22;
  v20 = v23;
  *a1 = v22;
  a1[1] = v20;
  return result;
}

uint64_t sub_22E45325C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642A8, &qword_22E47E228);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E453578();
  sub_22E47D144();
  if (!v2)
  {
    v21 = 0;
    sub_22E4535CC();
    sub_22E47D024();
    v16 = v19;
    v17 = v18;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642B0, &qword_22E47E230);
    v21 = 1;
    sub_22E45405C(&qword_27DA63F10, &qword_27DA642B0, &qword_22E47E230, sub_22E4540E0);
    sub_22E47D024();
    (*(v6 + 8))(v9, v5);
    v11 = v18;
    v12 = v15;
    v13 = v16;
    *a2 = v17;
    a2[1] = v13;
    a2[2] = v12;
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22E453488()
{
  result = qword_27DA640A8;
  if (!qword_27DA640A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640A8);
  }

  return result;
}

unint64_t sub_22E4534E0()
{
  result = qword_27DA640B0;
  if (!qword_27DA640B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640B0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22E453578()
{
  result = qword_27DA640B8;
  if (!qword_27DA640B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640B8);
  }

  return result;
}

unint64_t sub_22E4535CC()
{
  result = qword_27DA63F48;
  if (!qword_27DA63F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F48);
  }

  return result;
}

uint64_t sub_22E45362C()
{
  if (*v0)
  {
    result = 0x7365726F7473;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_22E453664(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22E45367C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22E453734(unsigned __int8 *a1, unsigned int a2)
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

uint64_t Version.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E47D134();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v6 = sub_22E47D064();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    Version.init(string:)(v9);
    if (v14 == 1)
    {
      sub_22E479690();
      swift_allocError();
      *v10 = v6;
      v10[1] = v8;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v15);
      *a2 = v12;
      *(a2 + 16) = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

SFSymbols::Version_optional __swiftcall Version.init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = v1;
  v5 = sub_22E47CBC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = countAndFlagsBits;
  v70 = object;
  sub_22E47CB74();
  sub_22E453EA4();
  v10 = sub_22E47CF24();
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  v69 = v10;
  v70 = v12;
  v67 = 46;
  v68 = 0xE100000000000000;
  v13 = sub_22E47CF14();

  v16 = v13;
  v17 = *(v13 + 16);
  if ((v17 - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_86;
  }

  if (!v17)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_83:
    v61 = v20;

    if (*(v61 + 2) == v17)
    {
      v62 = *(v61 + 4);
      if (v17 == 1)
      {
        v63 = 0;
        v64 = 0;
      }

      else
      {
        v63 = *(v61 + 5);
        if (v17 == 2)
        {
          v64 = 0;
        }

        else
        {
          v64 = *(v61 + 6);
        }
      }

      *v4 = v62;
      *(v4 + 8) = v63;
      *(v4 + 16) = v64;
      *(v4 + 24) = 0;
      goto LABEL_96;
    }

LABEL_86:

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    goto LABEL_96;
  }

  v18 = 0;
  v19 = v13 + 32;
  v20 = MEMORY[0x277D84F90];
  while (v18 < *(v16 + 16))
  {
    v21 = (v19 + 16 * v18);
    v22 = *v21;
    v23 = v21[1];
    ++v18;
    v24 = HIBYTE(v23) & 0xF;
    v14 = *v21 & 0xFFFFFFFFFFFFLL;
    if ((v23 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v25 = *v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      goto LABEL_72;
    }

    if ((v23 & 0x1000000000000000) == 0)
    {
      if ((v23 & 0x2000000000000000) == 0)
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          v26 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v58 = v16;
          v59 = v20;
          v60 = sub_22E47CFA4();
          v20 = v59;
          v26 = v60;
          v16 = v58;
        }

        v27 = *v26;
        if (v27 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_95;
          }

          v38 = v14 - 1;
          if (v14 != 1)
          {
            if (!v26)
            {
              goto LABEL_60;
            }

            v29 = 0;
            v39 = v26 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              v41 = 10 * v29;
              if ((v29 * 10) >> 64 != (10 * v29) >> 63)
              {
                break;
              }

              v29 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                break;
              }

              ++v39;
              if (!--v38)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_93;
          }

          v28 = v14 - 1;
          if (v14 != 1)
          {
            if (v26)
            {
              v29 = 0;
              v30 = v26 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_59;
                }

                v32 = 10 * v29;
                if ((v29 * 10) >> 64 != (10 * v29) >> 63)
                {
                  goto LABEL_59;
                }

                v29 = v32 - v31;
                if (__OFSUB__(v32, v31))
                {
                  goto LABEL_59;
                }

                ++v30;
                if (!--v28)
                {
                  goto LABEL_61;
                }
              }
            }

LABEL_60:
            v29 = 0;
LABEL_61:
            LOBYTE(v67) = 0;
LABEL_71:
            if ((v67 & 1) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_72;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_59;
          }

          if (!v26)
          {
            goto LABEL_60;
          }

          v29 = 0;
          while (1)
          {
            v46 = *v26 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            ++v26;
            if (!--v14)
            {
              goto LABEL_61;
            }
          }
        }

LABEL_59:
        v29 = 0;
        LOBYTE(v67) = 1;
        goto LABEL_71;
      }

      v69 = v22;
      v70 = v23 & 0xFFFFFFFFFFFFFFLL;
      if (v22 == 43)
      {
        if (!v24)
        {
          goto LABEL_92;
        }

        v42 = v24 - 1;
        if (v42)
        {
          v29 = 0;
          v43 = &v69 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            v37 = 0;
            ++v43;
            if (!--v42)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v22 == 45)
      {
        if (!v24)
        {
          goto LABEL_94;
        }

        v33 = v24 - 1;
        if (v33)
        {
          v29 = 0;
          v34 = &v69 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v36 - v35;
            if (__OFSUB__(v36, v35))
            {
              break;
            }

            v37 = 0;
            ++v34;
            if (!--v33)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v24)
      {
        v29 = 0;
        v48 = &v69;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          v37 = 0;
          v48 = (v48 + 1);
          if (!--v24)
          {
            goto LABEL_70;
          }
        }
      }

      v29 = 0;
      v37 = 1;
LABEL_70:
      LOBYTE(v67) = v37;
      goto LABEL_71;
    }

    v66 = v16;
    v51 = v20;

    v29 = sub_22E479104(v22, v23, 10);
    v53 = v52;

    v20 = v51;
    v16 = v66;
    if ((v53 & 1) == 0)
    {
LABEL_75:
      v54 = v16;
      v55 = v20;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v55;
      }

      else
      {
        v20 = sub_22E453EF8(0, *(v55 + 2) + 1, 1, v55);
      }

      v57 = *(v20 + 2);
      v56 = *(v20 + 3);
      if (v57 >= v56 >> 1)
      {
        v20 = sub_22E453EF8((v56 > 1), v57 + 1, 1, v20);
      }

      v16 = v54;
      *(v20 + 2) = v57 + 1;
      *&v20[8 * v57 + 32] = v29;
    }

LABEL_72:
    if (v18 == v17)
    {
      goto LABEL_83;
    }
  }

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
  result.is_nil = v20;
  result.value.patch = v15;
  result.value.minor = v14;
  result.value.major = v16;
  return result;
}

unint64_t sub_22E453EA4()
{
  result = qword_27DA63F20;
  if (!qword_27DA63F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F20);
  }

  return result;
}

char *sub_22E453EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643A0, &qword_22E47ECB8);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22E45405C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E4540E0()
{
  result = qword_27DA640C0;
  if (!qword_27DA640C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640C0);
  }

  return result;
}

uint64_t sub_22E454134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642B8, &qword_22E47E238);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E45444C();
  sub_22E47D144();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_22E47D014();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  v21 = sub_22E47D004();
  v22 = 2;
  v15 = sub_22E47CFF4();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

double sub_22E454344@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22E454134(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_22E4543A0()
{
  result = qword_27DA640C8;
  if (!qword_27DA640C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640C8);
  }

  return result;
}

unint64_t sub_22E4543F8()
{
  result = qword_27DA640D0;
  if (!qword_27DA640D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640D0);
  }

  return result;
}

unint64_t sub_22E45444C()
{
  result = qword_27DA640D8;
  if (!qword_27DA640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA640D8);
  }

  return result;
}

uint64_t sub_22E4544A0()
{
  v1 = 0x6572706D6F437369;
  if (*v0 != 1)
  {
    v1 = 0x617A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t _s14descr284251169V13MetadataIndexV10StoreIndexV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22E4545D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22E454640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t sub_22E4546B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22E465AA0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_22E454774(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 112);

  *(a2 + 112) = v3;
  return sub_22E471FA4();
}

uint64_t sub_22E4547BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SymbolMetadata(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22E454834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SymbolMetadata(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22E4548B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22E454920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22E454990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E47CD64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22E454A50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22E47CD64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22E454B0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL filter_denylist(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:a3 isDirectory:0 relativeToURL:0];
  v6 = [v5 lastPathComponent];
  v7 = v6 && ([v4 containsObject:v6] & 1) != 0;

  return v7;
}

uint64_t soft_AAFileStreamOpenWithPath(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getAAFileStreamOpenWithPathSymbolLoc_ptr;
  v11 = getAAFileStreamOpenWithPathSymbolLoc_ptr;
  if (!getAAFileStreamOpenWithPathSymbolLoc_ptr)
  {
    v5 = libAppleArchiveLibrary();
    v9[3] = dlsym(v5, "AAFileStreamOpenWithPath");
    getAAFileStreamOpenWithPathSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v7 = +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2, 420);
}

uint64_t soft_AAByteStreamClose(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAAByteStreamCloseSymbolLoc_ptr;
  v9 = getAAByteStreamCloseSymbolLoc_ptr;
  if (!getAAByteStreamCloseSymbolLoc_ptr)
  {
    v3 = libAppleArchiveLibrary();
    v7[3] = dlsym(v3, "AAByteStreamClose");
    getAAByteStreamCloseSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

uint64_t soft_AAArchiveStreamClose(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAAArchiveStreamCloseSymbolLoc_ptr;
  v9 = getAAArchiveStreamCloseSymbolLoc_ptr;
  if (!getAAArchiveStreamCloseSymbolLoc_ptr)
  {
    v3 = libAppleArchiveLibrary();
    v7[3] = dlsym(v3, "AAArchiveStreamClose");
    getAAArchiveStreamCloseSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[SFSDirectoryCompressor compressDirectoryAtURL:intoURL:withDenylist:error:];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void *__getAAFileStreamOpenWithPathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAFileStreamOpenWithPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFileStreamOpenWithPathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libAppleArchiveLibrary()
{
  v13 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = libAppleArchiveLibraryCore_frameworkLibrary;
  v10 = libAppleArchiveLibraryCore_frameworkLibrary;
  if (!libAppleArchiveLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __libAppleArchiveLibraryCore_block_invoke;
    v4[4] = &unk_2787CD690;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_2787CD670;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libAppleArchiveLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_22E455C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAppleArchiveLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAppleArchiveLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAACompressionOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AACompressionOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAACompressionOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAByteStreamCloseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAByteStreamClose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAByteStreamCloseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAEncodeArchiveOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAEncodeArchiveOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAEncodeArchiveOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAFieldKeySetCreateWithStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAFieldKeySetCreateWithString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFieldKeySetCreateWithStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamCloseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamClose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamCloseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAPathListCreateWithDirectoryContentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAPathListCreateWithDirectoryContents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAPathListCreateWithDirectoryContentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamWritePathListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamWritePathList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamWritePathListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAPathListDestroySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAPathListDestroy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAPathListDestroySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAADecompressionInputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AADecompressionInputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAADecompressionInputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAADecodeArchiveInputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AADecodeArchiveInputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAADecodeArchiveInputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAExtractArchiveOutputStreamOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAExtractArchiveOutputStreamOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAExtractArchiveOutputStreamOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAArchiveStreamProcessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAppleArchiveLibrary();
  result = dlsym(v2, "AAArchiveStreamProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAArchiveStreamProcessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id resolveNumeralForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 numberingSystem];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

id resolveLanguageForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 languageCode];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

__CFString *directionLookupKey(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = [a1 languageCode];
  v3 = [v1 characterDirectionForLanguage:v2];

  if (v3 == 2)
  {
    return @"rtl";
  }

  else
  {
    return 0;
  }
}

id resolveDirectionForLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = directionLookupKey(a2);
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22E4566A4()
{
  v0 = sub_22E47CBC4();
  __swift_allocate_value_buffer(v0, qword_27DA63F60);
  __swift_project_value_buffer(v0, qword_27DA63F60);
  return sub_22E47CB84();
}

void *sub_22E456730()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v1 = sub_22E47CDB4();
  v2 = [v0 initWithString_];

  [v2 setCharactersToBeSkipped_];
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (([v2 isAtEnd] & 1) == 0)
    {
      sub_22E47CEC4();
      if (!v5)
      {
        sub_22E47CEC4();
        if (!v6)
        {
          sub_22E47CEC4();
          if (!v7)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_22E4787EC(0, v3[2] + 1, 1, v3);
    }

    v9 = v3[2];
    v8 = v3[3];
    if (v9 >= v8 >> 1)
    {
      v3 = sub_22E4787EC((v8 > 1), v9 + 1, 1, v3);
    }

    v3[2] = v9 + 1;
    v3[v9 + 4] = v4;

    v4 = MEMORY[0x277D84F90];
LABEL_12:
    if ([v2 isAtEnd])
    {
      break;
    }

    while (1)
    {
      sub_22E47CEC4();
      if (v10)
      {

        v26 = 0;
        v27 = 0xE000000000000000;
        do
        {
          while (1)
          {
            v11 = sub_22E47CED4();
            if (v12)
            {
              v13 = v12;
            }

            else
            {
              v11 = 0;
              v13 = 0xE000000000000000;
            }

            MEMORY[0x2318E6DB0](v11, v13);

            sub_22E47CEC4();
            if (!v14)
            {
              break;
            }

            MEMORY[0x2318E6DB0](34, 0xE100000000000000);
          }

          sub_22E47CEC4();
        }

        while (!v15);

        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        if (qword_27DA63F58 != -1)
        {
          swift_once();
        }

        v18 = sub_22E47CBC4();
        __swift_project_value_buffer(v18, qword_27DA63F60);
        v19 = sub_22E47CEE4();
        v16 = v20 ? v19 : 0;
        v17 = v20 ? v20 : 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22E4786E0(0, *(v4 + 2) + 1, 1, v4);
      }

      v22 = *(v4 + 2);
      v21 = *(v4 + 3);
      if (v22 >= v21 >> 1)
      {
        v4 = sub_22E4786E0((v21 > 1), v22 + 1, 1, v4);
      }

      *(v4 + 2) = v22 + 1;
      v23 = &v4[16 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v17;
      sub_22E47CEC4();
      if (!v24)
      {
        break;
      }
    }
  }

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

id sub_22E456AFC()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DA66860 = result;
  return result;
}

uint64_t SymbolCategory.Key.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_22E456B9C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_22E456BA8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22E456BB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22E47D0F4();
  sub_22E47CE24();
  return sub_22E47D124();
}

uint64_t sub_22E456C00()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22E47CE24();
}

uint64_t sub_22E456C08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22E47D0F4();
  sub_22E47CE24();
  return sub_22E47D124();
}

uint64_t sub_22E456C50(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22E47D054();
  }
}

uint64_t SymbolCategory.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SymbolCategory.iconName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SymbolCategory.localizedTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t sub_22E456CF0()
{
  result = qword_27DA64110;
  if (!qword_27DA64110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64110);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22E456D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22E456DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22E456E2C(uint64_t a1, int a2)
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

uint64_t sub_22E456E74(uint64_t result, int a2, int a3)
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

uint64_t sub_22E456ED4()
{
  v1 = *v0;
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  return sub_22E47D124();
}

uint64_t sub_22E456F1C()
{
  v1 = *v0;
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  return sub_22E47D124();
}

uint64_t sub_22E456F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E4656B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E456FA0(uint64_t a1)
{
  v2 = sub_22E45444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E456FDC(uint64_t a1)
{
  v2 = sub_22E45444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E457018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365726F7473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E4570F0(uint64_t a1)
{
  v2 = sub_22E453578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45712C(uint64_t a1)
{
  v2 = sub_22E453578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolMetadataStore.load(from:)(uint64_t a1)
{
  type metadata accessor for DirectoryDecompressor();
  inited = swift_initStackObject();
  *(inited + 16) = sub_22E452CF0;
  *(inited + 24) = 0;
  sub_22E451E24(a1, inited);
  swift_setDeallocating();
  v3 = *(inited + 24);
}

uint64_t SymbolMetadataStore.load(from:decryptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DirectoryDecompressor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;

  sub_22E451E24(a1, inited);
  swift_setDeallocating();
  v7 = *(inited + 24);
}

uint64_t sub_22E457288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22E47CCE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v138 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v143 = &v136 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v142 = &v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v140 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v136 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v139 = &v136 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v136 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v146 = &v136 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v136 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v136 - v30;
  v147 = a1;
  sub_22E47CCA4();
  v137 = v31;
  v32 = sub_22E47CCF4();
  v144 = v2;
  v33 = v32;
  v35 = v34;
  SymbolMetadataStore.ingestCSVData(_:)(v32, v34);
  sub_22E451DD0(v33, v35);

  v36 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v37 = *(v5 + 8);
  v37(v36, v4);
  v38 = sub_22E47CCF4();
  v145 = v37;
  v39 = v38;
  v41 = v40;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)();
  v42 = v41;
  v43 = v145;
  sub_22E451DD0(v39, v42);
  v43(v29, v4);

  v44 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v43(v44, v4);
  v45 = sub_22E47CCF4();
  v47 = v46;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)();
  v48 = v47;
  v49 = v145;
  sub_22E451DD0(v45, v48);
  v49(v29, v4);

  v50 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v49(v50, v4);
  v51 = sub_22E47CCF4();
  v53 = v52;
  SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)();
  v54 = v53;
  v55 = v145;
  sub_22E451DD0(v51, v54);
  v55(v29, v4);
  swift_arrayDestroy();

  v56 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v56, v4);
  v57 = sub_22E47CCF4();
  v59 = v58;
  SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)();
  sub_22E451DD0(v57, v59);
  v55(v24, v4);

  v60 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v60, v4);
  v61 = sub_22E47CCF4();
  v63 = v62;
  SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)();
  sub_22E451DD0(v61, v63);
  v55(v24, v4);
  swift_arrayDestroy();

  v64 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v64, v4);
  v65 = sub_22E47CCF4();
  v67 = v66;
  SymbolMetadataStore.ingestAliasStringsData(_:)();
  v68 = v67;
  v69 = v139;
  sub_22E451DD0(v65, v68);
  v55(v69, v4);

  v70 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v70, v4);
  v71 = sub_22E47CCF4();
  v73 = v72;
  SymbolMetadataStore.ingestAliasStringsData(_:)();
  sub_22E451DD0(v71, v73);
  v55(v69, v4);
  swift_arrayDestroy();
  v74 = 0;
  v75 = 0;
  do
  {
    v76 = v74;
    v77 = &unk_284252578 + 16 * v75;
    v78 = *(v77 + 4);
    v79 = *(v77 + 5);

    v80 = v146;
    sub_22E47CCA4();

    sub_22E47CCC4();
    v55(v80, v4);
    v81 = sub_22E47CCF4();
    v83 = v82;
    v84 = sub_22E47CC64();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    swift_allocObject();
    sub_22E47CC54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64160, &qword_22E47D9B8);
    sub_22E465C08();
    sub_22E47CC44();

    sub_22E451DD0(v81, v83);
    v55 = v145;
    v145(v19, v4);
    v87 = v148;
    v88 = v144;
    v89 = *(v144 + 64);

    *(v88 + 64) = v87;
    v74 = 1;
    v75 = 1;
  }

  while ((v76 & 1) == 0);
  swift_arrayDestroy();

  v90 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v90, v4);
  v91 = sub_22E47CCF4();
  v93 = v92;
  SymbolMetadataStore.ingestLayerSetAvailabilityPlistData(_:)();
  v94 = v93;
  v95 = v140;
  sub_22E451DD0(v91, v94);
  v96 = v138;
  v55(v95, v4);

  v97 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v97, v4);
  v98 = sub_22E47CCF4();
  v100 = v99;
  SymbolMetadataStore.ingestLayerSetAvailabilityPlistData(_:)();
  v101 = v100;
  v102 = v140;
  sub_22E451DD0(v98, v101);
  v55(v102, v4);
  swift_arrayDestroy();

  v103 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v103, v4);
  v104 = sub_22E47CCF4();
  v106 = v105;
  SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)();
  sub_22E451DD0(v104, v106);
  v55(v141, v4);

  v107 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v107, v4);
  v108 = sub_22E47CCF4();
  v110 = v109;
  SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)();
  sub_22E451DD0(v108, v110);
  v55(v141, v4);
  swift_arrayDestroy();

  v111 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v111, v4);
  v112 = sub_22E47CCF4();
  v114 = v113;
  SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)();
  sub_22E451DD0(v112, v114);
  v55(v142, v4);

  v115 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v115, v4);
  v116 = sub_22E47CCF4();
  v118 = v117;
  SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)();
  sub_22E451DD0(v116, v118);
  v55(v142, v4);
  swift_arrayDestroy();

  v119 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v119, v4);
  v120 = sub_22E47CCF4();
  v122 = v121;
  SymbolMetadataStore.ingestSymbolSearchPlistData(_:)();
  sub_22E451DD0(v120, v122);
  v55(v143, v4);

  v123 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v123, v4);
  v124 = sub_22E47CCF4();
  v126 = v125;
  SymbolMetadataStore.ingestSymbolSearchPlistData(_:)();
  sub_22E451DD0(v124, v126);
  v55(v143, v4);
  swift_arrayDestroy();

  v127 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v127, v4);
  v128 = sub_22E47CCF4();
  v130 = v129;
  SymbolMetadataStore.ingestSymbolOrderPlistData(_:)();
  sub_22E451DD0(v128, v130);
  v55(v96, v4);

  v131 = v146;
  sub_22E47CCA4();

  sub_22E47CCC4();
  v55(v131, v4);
  v132 = sub_22E47CCF4();
  v134 = v133;
  SymbolMetadataStore.ingestSymbolOrderPlistData(_:)();
  sub_22E451DD0(v132, v134);
  v55(v96, v4);
  v55(v137, v4);
  return swift_arrayDestroy();
}

uint64_t SymbolMetadataStore.ingestCSVData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = _s9SFSymbols18SystemSymbolCSVRowV6decode_22additionalColumnTitlesSayACG10Foundation4DataV_SaySSGtFZ_0(a1, a2, MEMORY[0x277D84F90]);
  v4 = *(v3 + 16);
  if (!v4)
  {

    v6 = MEMORY[0x277D84F98];
    v7 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F98];
LABEL_32:
    v78 = *v2;

    *v2 = v7;
    v79 = *(v2 + 2);

    *(v2 + 2) = v9;
    v80 = *(v2 + 1);

    *(v2 + 1) = v6;
    *&v96 = v7;
    swift_bridgeObjectRetain_n();
    sub_22E46328C(&v96, v2);

    v81 = v96;
    v82 = *v2;

    *v2 = v81;
    return result;
  }

  v5 = 0;
  v84 = v4 - 1;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  v8 = 32;
  v9 = MEMORY[0x277D84F98];
  v85 = v3;
  while (1)
  {
    v10 = *(v3 + v8);
    v11 = *(v3 + v8 + 32);
    v97 = *(v3 + v8 + 16);
    v98 = v11;
    v96 = v10;
    v12 = *(v3 + v8 + 48);
    v13 = *(v3 + v8 + 64);
    v14 = *(v3 + v8 + 80);
    v102 = *(v3 + v8 + 96);
    v100 = v13;
    v101 = v14;
    v99 = v12;
    sub_22E4658E4(&v96, &v89);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22E478A48(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_22E478A48((v15 > 1), v16 + 1, 1, v7);
    }

    v17 = v96;
    *(v7 + 2) = v16 + 1;
    *&v7[4 * v16 + 32] = v17;
    sub_22E4658E4(&v96, &v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v6;
    v19 = sub_22E45C22C(v17);
    v21 = v6[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v6[3] < v24)
    {
      sub_22E45CD98(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_22E45C22C(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

LABEL_12:
      v86 = v7;
      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v38 = v19;
    sub_22E45FB94();
    v19 = v38;
    v86 = v7;
    if (v25)
    {
LABEL_13:
      v6 = v88;
      v27 = v88[7] + 104 * v19;
      v29 = *(v27 + 16);
      v28 = *(v27 + 32);
      v89 = *v27;
      v90 = v29;
      v91 = v28;
      v31 = *(v27 + 64);
      v30 = *(v27 + 80);
      v32 = *(v27 + 48);
      v95 = *(v27 + 96);
      v93 = v31;
      v94 = v30;
      v92 = v32;
      v33 = v96;
      v34 = v98;
      *(v27 + 16) = v97;
      *(v27 + 32) = v34;
      *v27 = v33;
      v35 = v99;
      v36 = v100;
      v37 = v101;
      *(v27 + 96) = v102;
      *(v27 + 64) = v36;
      *(v27 + 80) = v37;
      *(v27 + 48) = v35;
      sub_22E4658E4(&v96, &v87);
      sub_22E465940(&v89);
      goto LABEL_17;
    }

LABEL_15:
    v6 = v88;
    v88[(v19 >> 6) + 8] |= 1 << v19;
    *(v6[6] + 4 * v19) = v17;
    v39 = v6[7] + 104 * v19;
    v41 = v97;
    v40 = v98;
    *v39 = v96;
    *(v39 + 16) = v41;
    *(v39 + 32) = v40;
    v42 = v99;
    v43 = v100;
    v44 = v101;
    *(v39 + 96) = v102;
    *(v39 + 64) = v43;
    *(v39 + 80) = v44;
    *(v39 + 48) = v42;
    v45 = v6[2];
    v23 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v23)
    {
      goto LABEL_35;
    }

    v6[2] = v46;
    sub_22E4658E4(&v96, &v89);
LABEL_17:
    v48 = *(&v96 + 1);
    v47 = v97;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v9;
    v50 = sub_22E450B0C(v48, v47);
    v52 = v9[2];
    v53 = (v51 & 1) == 0;
    v23 = __OFADD__(v52, v53);
    v54 = v52 + v53;
    if (v23)
    {
      goto LABEL_34;
    }

    v55 = v51;
    if (v9[3] < v54)
    {
      sub_22E45C9B4(v54, v49);
      v50 = sub_22E450B0C(v48, v47);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_38;
      }

LABEL_22:
      v7 = v86;
      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v49)
    {
      goto LABEL_22;
    }

    v68 = v50;
    sub_22E45F9B4();
    v50 = v68;
    v7 = v86;
    if ((v55 & 1) == 0)
    {
LABEL_25:
      v9 = v87;
      v87[(v50 >> 6) + 8] |= 1 << v50;
      v69 = (v9[6] + 16 * v50);
      *v69 = v48;
      v69[1] = v47;
      v70 = v9[7] + 104 * v50;
      v71 = v102;
      v73 = v100;
      v72 = v101;
      *(v70 + 48) = v99;
      *(v70 + 64) = v73;
      *(v70 + 80) = v72;
      *(v70 + 96) = v71;
      v75 = v97;
      v74 = v98;
      *v70 = v96;
      *(v70 + 16) = v75;
      *(v70 + 32) = v74;

      sub_22E465940(&v96);
      v76 = v9[2];
      v23 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      v9[2] = v77;
      goto LABEL_27;
    }

LABEL_23:
    v9 = v87;
    v57 = v87[7] + 104 * v50;
    v59 = *(v57 + 16);
    v58 = *(v57 + 32);
    v89 = *v57;
    v90 = v59;
    v91 = v58;
    v61 = *(v57 + 64);
    v60 = *(v57 + 80);
    v62 = *(v57 + 48);
    v95 = *(v57 + 96);
    v93 = v61;
    v94 = v60;
    v92 = v62;
    v63 = v96;
    v64 = v98;
    *(v57 + 16) = v97;
    *(v57 + 32) = v64;
    *v57 = v63;
    v65 = v99;
    v66 = v100;
    v67 = v101;
    *(v57 + 96) = v102;
    *(v57 + 64) = v66;
    *(v57 + 80) = v67;
    *(v57 + 48) = v65;
    sub_22E465940(&v89);
    sub_22E465940(&v96);
LABEL_27:
    v3 = v85;
    if (v84 == v5)
    {
      goto LABEL_30;
    }

    ++v5;
    v8 += 104;
    if (v5 >= *(v85 + 16))
    {
      __break(1u);
LABEL_30:

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_22E47D094();
  __break(1u);
LABEL_38:
  sub_22E47D094();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolCategoriesPlistData(_:)()
{
  v1 = v0;
  v2 = sub_22E47CC64();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64148, &unk_22E47D9A0);
  sub_22E45405C(&qword_27DA63EF8, &qword_27DA64148, &unk_22E47D9A0, sub_22E465A24);
  v5 = 0;
  sub_22E47CC44();

  v6 = 0;
  v7 = 0;
  v8 = v53;
  v9 = v53 + 64;
  v10 = 1 << *(v53 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v53 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v7 << 6);
      v16 = *(*(v8 + 56) + 8 * v15);
      v17 = *(v16 + 16);
      if (v17)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v45 = v13;
    v46 = v9;
    v47 = v5;
    v48 = v8;
    v19 = (*(v8 + 48) + 16 * v15);
    v49 = *v19;
    v52 = v19[1];

    v20 = 0;
    v21 = (v16 + 40);
    v50 = v17;
    v51 = v16;
    while (v20 < *(v16 + 16))
    {
      v25 = *(v21 - 1);
      v26 = *v21;

      sub_22E453664(v6);
      v27 = *(v1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v1;
      v30 = isUniquelyReferenced_nonNull_native;
      v31 = v29;
      v53 = *(v29 + 24);
      v32 = v53;
      v23 = sub_22E45C298(v25, v26);
      v34 = v32[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_28;
      }

      v38 = v33;
      if (v32[3] >= v37)
      {
        if ((v30 & 1) == 0)
        {
          v43 = v23;
          sub_22E45FD64();
          v23 = v43;
          v32 = v53;
        }
      }

      else
      {
        sub_22E45D150(v37, v30);
        v32 = v53;
        v23 = sub_22E45C298(v25, v26);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }
      }

      v1 = v31;
      *(v31 + 24) = v32;
      if (v38)
      {
        v22 = v23;

        v23 = v22;
      }

      else
      {
        v32[(v23 >> 6) + 8] |= 1 << v23;
        v40 = (v32[6] + 16 * v23);
        *v40 = v25;
        v40[1] = v26;
        *(v32[7] + 8 * v23) = MEMORY[0x277D84FA0];
        v41 = v32[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          goto LABEL_29;
        }

        v32[2] = v42;
      }

      ++v20;
      v24 = v32[7] + 8 * v23;

      sub_22E460A90(&v53, v49, v52);

      v21 += 2;
      v6 = sub_22E467B70;
      v16 = v51;
      if (v50 == v20)
      {

        v6 = sub_22E467B70;
        v5 = v47;
        v8 = v48;
        v13 = v45;
        v9 = v46;
        if (!v12)
        {
          goto LABEL_6;
        }

        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v18 >= v13)
      {

        return sub_22E453664(v6);
      }

      v12 = *(v9 + 8 * v18);
      ++v7;
      if (v12)
      {
        v7 = v18;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestNameAvailabilityPlistData(_:)()
{
  v1 = v0;
  v2 = sub_22E47CC64();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22E47CC54();
  sub_22E465BB4();
  sub_22E47CC44();

  v5 = sub_22E45B6D8(string_8);
  v6 = 0;
  v7 = v5 + 64;
  v126 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v128 = v0;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10)) | (v6 << 6);
    v16 = (*(v126 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v126 + 56) + 24 * v15);
    v129 = *v19;
    v130 = v19[1];
    v20 = v19[2];
    v21 = *(v1 + 96);
    if (*(v21 + 16))
    {

      v22 = sub_22E450B0C(v18, v17);
      v23 = MEMORY[0x277D84F98];
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      v23 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v23 = MEMORY[0x277D84F98];
    }

LABEL_16:
    string = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    string_8a = v23;
    v26 = sub_22E45C298(1701667182, 0xE400000000000000);
    v28 = v23[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_84;
    }

    v32 = v27;
    if (v23[3] >= v31)
    {
      v34 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = string_8a;
        if (v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = v26;
        sub_22E4601AC();
        v26 = v37;
        v35 = string_8a;
        if (v32)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_22E45DA30(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22E45C298(1701667182, 0xE400000000000000);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_93;
      }

      v34 = v20;
      v35 = string_8a;
      if (v32)
      {
LABEL_23:
        v36 = (v35[7] + 24 * v26);
        *v36 = v129;
        v36[1] = v130;
        v36[2] = v34;
        goto LABEL_27;
      }
    }

    v35[(v26 >> 6) + 8] |= 1 << v26;
    v38 = (v35[6] + 16 * v26);
    *v38 = 1701667182;
    v38[1] = 0xE400000000000000;
    v39 = (v35[7] + 24 * v26);
    *v39 = v129;
    v39[1] = v130;
    v39[2] = v34;
    v40 = v35[2];
    v30 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v30)
    {
      goto LABEL_88;
    }

    v35[2] = v41;
LABEL_27:
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = sub_22E45C298(0x6F7268636F6E6F6DLL, 0xEA0000000000656DLL);
    v45 = v35[2];
    v46 = (v44 & 1) == 0;
    v30 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v30)
    {
      goto LABEL_85;
    }

    v48 = v44;
    if (v35[3] < v47)
    {
      sub_22E45DA30(v47, v42);
      v43 = sub_22E45C298(0x6F7268636F6E6F6DLL, 0xEA0000000000656DLL);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_93;
      }

LABEL_32:
      v50 = v35;
      if (v48)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    if (v42)
    {
      goto LABEL_32;
    }

    v52 = v43;
    sub_22E4601AC();
    v43 = v52;
    v50 = v35;
    if (v48)
    {
LABEL_33:
      v51 = (v50[7] + 24 * v43);
      *v51 = v129;
      v51[1] = v130;
      v51[2] = v34;
      goto LABEL_37;
    }

LABEL_35:
    v50[(v43 >> 6) + 8] |= 1 << v43;
    v53 = (v50[6] + 16 * v43);
    *v53 = 0x6F7268636F6E6F6DLL;
    v53[1] = 0xEA0000000000656DLL;
    v54 = (v50[7] + 24 * v43);
    *v54 = v129;
    v54[1] = v130;
    v54[2] = v34;
    v55 = v50[2];
    v30 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v30)
    {
      goto LABEL_89;
    }

    v50[2] = v56;
LABEL_37:
    v57 = *(v128 + 96);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v128 + 96);
    string_8 = v59;
    v61 = sub_22E450B0C(v18, string);
    v62 = v59[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_86;
    }

    v65 = v60;
    if (v59[3] >= v64)
    {
      if (v58)
      {
        v68 = v59;
        if (v60)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
        v68 = v59;
        if (v65)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_22E45E270(v64, v58, &qword_27DA64228, &qword_22E47DBD8);
      v66 = sub_22E450B0C(v18, string);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_94;
      }

      v61 = v66;
      v68 = v59;
      if (v65)
      {
LABEL_4:
        v12 = v68[7];
        v13 = *(v12 + 8 * v61);
        *(v12 + 8 * v61) = v50;

        goto LABEL_5;
      }
    }

    v68[(v61 >> 6) + 8] |= 1 << v61;
    v69 = (v68[6] + 16 * v61);
    *v69 = v18;
    v69[1] = string;
    *(v68[7] + 8 * v61) = v50;
    v70 = v68[2];
    v30 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v30)
    {
      goto LABEL_90;
    }

    v68[2] = v71;
LABEL_5:
    v10 &= v10 - 1;
    v1 = v128;
    *(v128 + 96) = v68;
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v6;
    if (v10)
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  v72 = 0;
  v73 = 1 << *(v136 + 32);
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v136 + 64);
  v76 = (v73 + 63) >> 6;
  v77 = MEMORY[0x277D84F98];
  v78 = MEMORY[0x277D84F98];
LABEL_52:
  while (1)
  {
    v79 = v72;
    if (!v75)
    {
      break;
    }

LABEL_56:
    v80 = __clz(__rbit64(v75));
    v75 &= v75 - 1;
    v81 = v80 | (v72 << 6);
    v82 = (*(v136 + 48) + 16 * v81);
    v83 = *v82;
    v84 = v82[1];
    v85 = *(*(v136 + 56) + 8 * v81);

    v86._countAndFlagsBits = v83;
    v86._object = v84;
    Version.init(string:)(v86);
    if ((v138 & 1) == 0)
    {
      v87 = v77;
      v88 = 0;
      v122 = string_8;
      v89 = 1 << *(v85 + 32);
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      else
      {
        v90 = -1;
      }

      v91 = v78;
      v92 = v90 & *(v85 + 64);
      v123 = v87;
      v127 = (v89 + 63) >> 6;
      v93 = v91;
      v131 = v91;
      while (v92)
      {
LABEL_68:
        v95 = __clz(__rbit64(v92));
        v92 &= v92 - 1;
        v96 = (v88 << 10) | (16 * v95);
        v97 = (*(v85 + 48) + v96);
        v98 = *v97;
        v99 = v97[1];
        v100 = (*(v85 + 56) + v96);
        v101 = v100[1];
        stringa = *v100;

        v102 = sub_22E47CFE4();

        if (v102 >= 7)
        {

          v93 = v131;
        }

        else
        {
          v103._countAndFlagsBits = stringa;
          v103._object = v101;
          Version.init(string:)(v103);
          v93 = v131;
          if ((v138 & 1) == 0)
          {
            v104 = string_8;
            v120 = swift_isUniquelyReferenced_nonNull_native();
            string_8 = v123;
            v106 = sub_22E45C3A8(v102);
            v107 = *(v123 + 16);
            v108 = (v105 & 1) == 0;
            v109 = v107 + v108;
            if (__OFADD__(v107, v108))
            {
              goto LABEL_91;
            }

            if (*(v123 + 24) >= v109)
            {
              if ((v120 & 1) == 0)
              {
                v121 = v106;
                v125 = v105;
                sub_22E460048();
                v105 = v125;
                v106 = v121;
              }
            }

            else
            {
              v124 = v105;
              sub_22E45D6C4(v109, v120);
              v110 = sub_22E45C3A8(v102);
              v112 = v111 & 1;
              v105 = v124;
              if ((v124 & 1) != v112)
              {
                goto LABEL_95;
              }

              v106 = v110;
            }

            v123 = string_8;
            if (v105)
            {
              v113 = (string_8[7] + 24 * v106);
              *v113 = v104;
              v113[1] = v136;
              v93 = v131;
              v113[2] = v137;
            }

            else
            {
              string_8[(v106 >> 6) + 8] |= 1 << v106;
              *(string_8[6] + v106) = v102;
              v114 = (string_8[7] + 24 * v106);
              *v114 = v104;
              v114[1] = v136;
              v114[2] = v137;
              v115 = string_8[2];
              v30 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v30)
              {
                goto LABEL_92;
              }

              string_8[2] = v116;
              v93 = v131;
            }
          }
        }
      }

      while (1)
      {
        v94 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_87;
        }

        if (v94 >= v127)
        {

          v117 = swift_isUniquelyReferenced_nonNull_native();
          string_8 = v93;
          sub_22E45EF84(v123, v122, v136, v137, v117);
          v78 = v93;
          v1 = v128;
          v77 = MEMORY[0x277D84F98];
          goto LABEL_52;
        }

        v92 = *(v85 + 64 + 8 * v94);
        ++v88;
        if (v92)
        {
          v88 = v94;
          goto LABEL_68;
        }
      }
    }
  }

  while (1)
  {
    v72 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v72 >= v76)
    {

      v118 = *(v1 + 88);

      *(v1 + 88) = v78;
      return result;
    }

    v75 = *(v136 + 64 + 8 * v72);
    ++v79;
    if (v75)
    {
      goto LABEL_56;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
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
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_22E47D094();
  __break(1u);
LABEL_94:
  sub_22E47D094();
  __break(1u);
LABEL_95:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestAliasStringsData(_:)()
{
  v1 = v0;
  v2 = sub_22E47CC64();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64158, &qword_22E47D9B0);
  sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
  sub_22E47CC44();

  v5 = 0;
  v6 = v46 + 64;
  v42 = 0;
  v45 = v46;
  v7 = 1 << *(v46 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v46 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v9;
LABEL_10:
    v9 = (v11 - 1) & v11;
    if (*(*(v1 + 96) + 16))
    {
      v13 = v1;
      v14 = (v5 << 10) | (16 * __clz(__rbit64(v11)));
      v15 = (*(v45 + 48) + v14);
      v16 = (*(v45 + 56) + v14);
      v18 = *v16;
      v17 = v16[1];
      v20 = *v15;
      v19 = v15[1];

      sub_22E450B0C(v20, v19);
      if (v21)
      {

        v22 = *(v13 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v13 + 72);
        sub_22E45EDFC(v18, v17, v20, v19, isUniquelyReferenced_nonNull_native);

        *(v13 + 72) = v46;
        sub_22E453664(v42);
        v24 = *(v13 + 80);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v13 + 80);
        v25 = v46;
        v26 = sub_22E450B0C(v18, v17);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_26;
        }

        if (v25[3] < v31)
        {
          v40 = v27;
          sub_22E45E270(v31, v43, &qword_27DA64208, &qword_22E47DBB8);
          v25 = v46;
          v26 = sub_22E450B0C(v18, v17);
          v33 = v32 & 1;
          v27 = v40;
          if ((v40 & 1) != v33)
          {
            goto LABEL_28;
          }

LABEL_18:
          *(v13 + 80) = v25;
          if (v27)
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (v43)
        {
          goto LABEL_18;
        }

        v44 = v26;
        v41 = v27;
        sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
        v26 = v44;
        v25 = v46;
        *(v13 + 80) = v46;
        if (v41)
        {
LABEL_19:
          v34 = v26;

          v26 = v34;
          goto LABEL_23;
        }

LABEL_21:
        v25[(v26 >> 6) + 8] |= 1 << v26;
        v35 = (v25[6] + 16 * v26);
        *v35 = v18;
        v35[1] = v17;
        *(v25[7] + 8 * v26) = MEMORY[0x277D84FA0];
        v36 = v25[2];
        v30 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v30)
        {
          goto LABEL_27;
        }

        v25[2] = v37;
LABEL_23:
        v1 = v13;
        v38 = v25[7] + 8 * v26;
        sub_22E460A90(&v46, v20, v19);

        v42 = sub_22E467B70;
      }

      else
      {

        v1 = v13;
      }
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return sub_22E453664(v42);
    }

    v11 = *(v6 + 8 * v12);
    ++v5;
    if (v11)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestCategoriesPlistData(_:)()
{
  v1 = sub_22E47CC64();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64160, &qword_22E47D9B8);
  sub_22E465C08();
  sub_22E47CC44();

  v4 = *(v0 + 64);

  *(v0 + 64) = v6;
  return result;
}

uint64_t SymbolMetadataStore.ingestFeatureAvailabilityPlistData(_:)()
{
  v1 = sub_22E47CC64();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_22E47CC54();
  sub_22E465D34();
  sub_22E47CC44();
  v71 = v0;

  v4 = 0;
  v5 = v80 + 8;
  v77 = v80;
  v6 = 1 << *(v80 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v80[8];
  v9 = (v6 + 63) >> 6;
  v75 = v80 + 8;
  v72 = 0;
  v74 = v9;
LABEL_6:
  if (v8)
  {
    v10 = v4;
  }

  else
  {
    do
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_43;
      }

      if (v10 >= v9)
      {

        return sub_22E453664(v72);
      }

      v8 = v5[v10];
      ++v4;
    }

    while (!v8);
  }

  v11 = __clz(__rbit64(v8));
  v8 &= v8 - 1;
  v12 = v11 | (v10 << 6);
  v13 = (v77[6] + 16 * v12);
  v14 = *(v77[7] + 8 * v12);
  v15 = v13[1];
  v76 = *v13;
  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v78 = v15;

  v79 = v14;

  v21 = 0;
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_19:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = (v21 << 10) | (16 * v23);
    v25 = (*(v79 + 48) + v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = (*(v79 + 56) + v24);
    v29 = *v28;
    v30 = v28[1];

    v31._countAndFlagsBits = v29;
    v31._object = v30;
    Version.init(string:)(v31);
    if (v83)
    {
    }

    else
    {
      v69 = v80;
      v70 = v26;
      sub_22E453664(v72);
      v32 = *(v71 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v71 + 96);
      v73 = sub_22E450B0C(v76, v78);
      v36 = v34[2];
      v37 = (v35 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_44;
      }

      v39 = v35;
      if (v34[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22E4604A4(&qword_27DA64228, &qword_22E47DBD8);
        }
      }

      else
      {
        sub_22E45E270(v38, isUniquelyReferenced_nonNull_native, &qword_27DA64228, &qword_22E47DBD8);
        v73 = sub_22E450B0C(v76, v78);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_49;
        }
      }

      *(v71 + 96) = v34;
      if ((v39 & 1) == 0)
      {
        v41 = sub_22E465AA0(MEMORY[0x277D84F90]);
        v34[(v73 >> 6) + 8] |= 1 << v73;
        v42 = (v34[6] + 16 * v73);
        *v42 = v76;
        v42[1] = v78;
        *(v34[7] + 8 * v73) = v41;
        v43 = v34[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_46;
        }

        v34[2] = v45;
      }

      v46 = v34[7];
      v47 = *(v46 + 8 * v73);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v46 + 8 * v73);
      v80 = v48;
      v67 = v46;
      *(v46 + 8 * v73) = 0x8000000000000000;
      v49 = sub_22E45C298(v70, v27);
      v51 = v48[2];
      v52 = (v50 & 1) == 0;
      v44 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v44)
      {
        goto LABEL_45;
      }

      v54 = v50;
      if (v48[3] >= v53)
      {
        if ((v68 & 1) == 0)
        {
          v65 = v49;
          sub_22E4601AC();
          v49 = v65;
        }

        v55 = v70;
        if (v54)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_22E45DA30(v53, v68);
        v55 = v70;
        v49 = sub_22E45C298(v70, v27);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_48;
        }

        if (v54)
        {
LABEL_34:
          v57 = v49;

          v58 = v48;
          v59 = (v48[7] + 24 * v57);
          *v59 = v69;
          v59[1] = v81;
          v59[2] = v82;
          goto LABEL_40;
        }
      }

      v58 = v48;
      v48[(v49 >> 6) + 8] |= 1 << v49;
      v60 = (v48[6] + 16 * v49);
      *v60 = v55;
      v60[1] = v27;
      v61 = (v48[7] + 24 * v49);
      *v61 = v69;
      v61[1] = v81;
      v61[2] = v82;
      v62 = v48[2];
      v44 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v44)
      {
        goto LABEL_47;
      }

      v48[2] = v63;
LABEL_40:
      v64 = *(v67 + 8 * v73);
      *(v67 + 8 * v73) = v58;

      v72 = sub_22E467B74;
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      v4 = v10;
      v9 = v74;
      v5 = v75;
      goto LABEL_6;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_22E47D094();
  __break(1u);
LABEL_49:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolPropertiesPlistData(_:)()
{
  v1 = v0;
  v2 = sub_22E47CC64();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
  sub_22E465D88();
  sub_22E47CC44();

  v5 = 0;
  v6 = 0;
  v7 = v79 + 64;
  v8 = 1 << *(v79 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v79 + 64);
  v11 = (v8 + 63) >> 6;
  v69 = v11;
LABEL_6:
  if (v10)
  {
    v12 = v6;
LABEL_11:
    v70 = v12;
    v71 = (v10 - 1) & v10;
    v13 = __clz(__rbit64(v10)) | (v12 << 6);
    v14 = (*(v79 + 48) + 16 * v13);
    v15 = *(*(v79 + 56) + 8 * v13);
    v17 = *v14;
    v16 = v14[1];
    v18 = v15 + 64;
    v19 = 1 << *(v15 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v15 + 64);
    v22 = (v19 + 63) >> 6;

    v75 = v15;

    v23 = 0;
    v72 = v22;
    v73 = v15 + 64;
    v74 = v17;
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v28 >= v22)
          {

            v6 = v70;
            v10 = v71;
            v11 = v69;
            v7 = v79 + 64;
            goto LABEL_6;
          }

          v21 = *(v18 + 8 * v28);
          ++v23;
          if (v21)
          {
            v23 = v28;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_22:
      v29 = (v23 << 10) | (16 * __clz(__rbit64(v21)));
      v30 = (*(v75 + 48) + v29);
      v31 = v30[1];
      v78 = *v30;
      v32 = (*(v75 + 56) + v29);
      v33 = v32[1];
      v76 = *v32;

      v77 = v33;

      sub_22E453664(v5);
      v34 = *(v1 + 104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v1 + 104);
      v38 = sub_22E450B0C(v17, v16);
      v39 = v36[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_46;
      }

      v42 = v37;
      if (v36[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *(v1 + 104) = v36;
          if (v37)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_22E4604A4(&qword_27DA641F8, &qword_22E47DBA8);
          *(v1 + 104) = v36;
          if (v42)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_22E45E270(v41, isUniquelyReferenced_nonNull_native, &qword_27DA641F8, &qword_22E47DBA8);
        v43 = sub_22E450B0C(v17, v16);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_51;
        }

        v38 = v43;
        *(v1 + 104) = v36;
        if (v42)
        {
          goto LABEL_31;
        }
      }

      v45 = sub_22E46627C(MEMORY[0x277D84F90]);
      v36[(v38 >> 6) + 8] |= 1 << v38;
      v46 = (v36[6] + 16 * v38);
      *v46 = v17;
      v46[1] = v16;
      *(v36[7] + 8 * v38) = v45;
      v47 = v36[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_48;
      }

      v36[2] = v49;

LABEL_31:
      v50 = v16;
      v51 = v1;
      v52 = v36[7];
      v53 = *(v52 + 8 * v38);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v52 + 8 * v38);
      *(v52 + 8 * v38) = 0x8000000000000000;
      v56 = sub_22E45C298(v78, v31);
      v58 = v55[2];
      v59 = (v57 & 1) == 0;
      v48 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v48)
      {
        goto LABEL_47;
      }

      v61 = v57;
      if (v55[3] < v60)
      {
        sub_22E45DFB0(v60, v54);
        v56 = sub_22E45C298(v78, v31);
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_50;
        }

LABEL_36:
        if (v61)
        {
          goto LABEL_15;
        }

        goto LABEL_37;
      }

      if (v54)
      {
        goto LABEL_36;
      }

      v67 = v56;
      sub_22E46032C();
      v56 = v67;
      if (v61)
      {
LABEL_15:
        v24 = v56;

        v25 = (v55[7] + 16 * v24);
        v26 = v25[1];
        *v25 = v76;
        v25[1] = v77;

        goto LABEL_16;
      }

LABEL_37:
      v55[(v56 >> 6) + 8] |= 1 << v56;
      v63 = (v55[6] + 16 * v56);
      *v63 = v78;
      v63[1] = v31;
      v64 = (v55[7] + 16 * v56);
      *v64 = v76;
      v64[1] = v77;
      v65 = v55[2];
      v48 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v48)
      {
        goto LABEL_49;
      }

      v55[2] = v66;
LABEL_16:
      v21 &= v21 - 1;
      v27 = *(v52 + 8 * v38);
      *(v52 + 8 * v38) = v55;

      v5 = sub_22E45C1B8;
      v1 = v51;
      v16 = v50;
      v18 = v73;
      v17 = v74;
      v22 = v72;
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return sub_22E453664(v5);
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      goto LABEL_11;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_22E47D094();
  __break(1u);
LABEL_51:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolSearchPlistData(_:)()
{
  v1 = v0;
  v2 = sub_22E47CC64();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64148, &unk_22E47D9A0);
  sub_22E45405C(&qword_27DA63EF8, &qword_27DA64148, &unk_22E47D9A0, sub_22E465A24);
  sub_22E47CC44();

  v5 = 0;
  v6 = 0;
  v7 = v67;
  v8 = v67 + 64;
  v9 = 1 << *(v67 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v67 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = v13 | (v6 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        v16 = v15[2];
        if (v16)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v60 = v7;
      v18 = (*(v7 + 48) + 16 * v14);
      v19 = v18[1];
      v66 = *v18;

      if (!v15[2])
      {
        break;
      }

      v61 = v16;
      v62 = v15;
      v20 = v15[4];
      v21 = v15[5];

      sub_22E453664(v5);
      v22 = *(v1 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v19;
      v65 = v1;
      v24 = *(v1 + 32);
      v25 = sub_22E450B0C(v66, v19);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_39;
      }

      v31 = v26;
      if (v24[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = v25;
          sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
          v25 = v58;
        }
      }

      else
      {
        sub_22E45E270(v30, isUniquelyReferenced_nonNull_native, &qword_27DA64208, &qword_22E47DBB8);
        v25 = sub_22E450B0C(v66, v64);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_41;
        }
      }

      *(v1 + 32) = v24;
      if ((v31 & 1) == 0)
      {
        v24[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v24[6] + 16 * v25);
        *v33 = v66;
        v33[1] = v64;
        *(v24[7] + 8 * v25) = MEMORY[0x277D84FA0];
        v34 = v24[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_40;
        }

        v36 = v25;
        v24[2] = v35;

        v25 = v36;
      }

      v37 = v24[7] + 8 * v25;
      sub_22E460A90(&v67, v20, v21);

      v38 = v62;
      if (v61 != 1)
      {
        v39 = v62 + 7;
        v40 = 1;
        while (v40 < v38[2])
        {
          v43 = *v39;
          v63 = *(v39 - 1);

          sub_22E453664(sub_22E467B70);
          v44 = *(v65 + 32);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v65 + 32);
          v47 = sub_22E450B0C(v66, v64);
          v49 = v46[2];
          v50 = (v48 & 1) == 0;
          v29 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v29)
          {
            goto LABEL_39;
          }

          v52 = v48;
          if (v46[3] >= v51)
          {
            if ((v45 & 1) == 0)
            {
              v57 = v47;
              sub_22E4604A4(&qword_27DA64208, &qword_22E47DBB8);
              v47 = v57;
            }
          }

          else
          {
            sub_22E45E270(v51, v45, &qword_27DA64208, &qword_22E47DBB8);
            v47 = sub_22E450B0C(v66, v64);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_41;
            }
          }

          *(v65 + 32) = v46;
          if ((v52 & 1) == 0)
          {
            v46[(v47 >> 6) + 8] |= 1 << v47;
            v54 = (v46[6] + 16 * v47);
            *v54 = v66;
            v54[1] = v64;
            *(v46[7] + 8 * v47) = MEMORY[0x277D84FA0];
            v55 = v46[2];
            v29 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v29)
            {
              goto LABEL_40;
            }

            v46[2] = v56;
            v41 = v47;

            v47 = v41;
          }

          ++v40;
          v42 = v46[7] + 8 * v47;
          sub_22E460A90(&v67, v63, v43);

          v39 += 2;
          v38 = v62;
          if (v61 == v40)
          {
            goto LABEL_21;
          }
        }

        break;
      }

LABEL_21:

      v5 = sub_22E467B70;
      v7 = v60;
      v1 = v65;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17 >= v12)
      {

        return sub_22E453664(v5);
      }

      v11 = *(v8 + 8 * v17);
      ++v6;
      if (v11)
      {
        v6 = v17;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t SymbolMetadataStore.ingestSymbolOrderPlistData(_:)()
{
  v1 = sub_22E47CC64();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_22E47CC54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64178, &qword_22E47D9C8);
  sub_22E465E30(&qword_27DA63EF0, &qword_27DA64178, &qword_22E47D9C8);
  sub_22E47CC44();

  v4 = 0;
  v5 = v38 + 64;
  v36 = v0;
  v37 = v38;
  v6 = 1 << v38[32];
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v38 + 8);
  v9 = (v6 + 63) >> 6;
  v10 = v0;
  while (v8)
  {
LABEL_11:
    v14 = __clz(__rbit64(v8)) | (v4 << 6);
    v15 = (*(v37 + 6) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v37 + 7) + 8 * v14);

    v19 = *(v10 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v10 + 5);
    v21 = sub_22E450B0C(v17, v16);
    v23 = *(v38 + 2);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_22E47D094();
      __break(1u);

      __break(1u);
      return result;
    }

    v27 = v22;
    if (*(v38 + 3) < v26)
    {
      sub_22E45E510(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22E450B0C(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }

LABEL_16:
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v32 = v21;
    sub_22E460604();
    v21 = v32;
    if (v27)
    {
LABEL_4:
      v11 = v21;

      v12 = v38;
      *(*(v38 + 7) + 8 * v11) = v18;
      goto LABEL_5;
    }

LABEL_17:
    v12 = v38;
    *&v38[8 * (v21 >> 6) + 64] |= 1 << v21;
    v29 = (*(v12 + 6) + 16 * v21);
    *v29 = v17;
    v29[1] = v16;
    *(*(v12 + 7) + 8 * v21) = v18;
    v30 = *(v12 + 2);
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_25;
    }

    *(v12 + 2) = v31;
LABEL_5:
    v8 &= v8 - 1;
    v10 = v36;
    *(v36 + 5) = v12;
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *&v5[8 * v13];
    ++v4;
    if (v8)
    {
      v4 = v13;
      goto LABEL_11;
    }
  }

  v38 = *v10;
  swift_bridgeObjectRetain_n();
  sub_22E46328C(&v38, v10);

  v33 = v38;
  v34 = *v10;

  *v10 = v33;
  return result;
}

uint64_t sub_22E45B508()
{
  if (*v0)
  {
    result = 0x5F6F745F72616579;
  }

  else
  {
    result = 0x736C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_22E45B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5F6F745F72616579 && a2 == 0xEF657361656C6572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45B634(uint64_t a1)
{
  v2 = sub_22E466228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45B670(uint64_t a1)
{
  v2 = sub_22E466228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45B6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22E465FF8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22E45B6D8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (v9 << 10) | (16 * v11);
    v13 = (*(a1 + 48) + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(a1 + 56) + v12);
    v18 = *v16;
    v17 = v16[1];

    v19._countAndFlagsBits = v18;
    v19._object = v17;
    Version.init(string:)(v19);
    if (v35)
    {
    }

    else
    {
      v20 = *(v2 + 16);
      if (*(v2 + 24) <= v20)
      {
        sub_22E45DCF0(v20 + 1, 1);
        v2 = v36;
      }

      v21 = *(v2 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v22 = v2 + 64;
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (*(v2 + 48) + 16 * v26);
      *v31 = v15;
      v31[1] = v14;
      v32 = *(v2 + 56) + 24 * v26;
      *v32 = v33;
      *(v32 + 16) = v34;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22E45B944()
{
  if (*v0)
  {
    result = 1852793705;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_22E45B970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45BA4C(uint64_t a1)
{
  v2 = sub_22E46677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BA88(uint64_t a1)
{
  v2 = sub_22E46677C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45BAC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22E466598(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

char *sub_22E45BAF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 80);
  if (!*(v4 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(v3 + 96);
  v33 = *(v3 + 88);
  v6 = sub_22E450B0C(a1, a2);
  v7 = MEMORY[0x277D84F90];
  if (v8)
  {
    v9 = *(v4 + 56);
    v10 = *(v9 + 8 * v6);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_22E47865C(*(v10 + 16), 0);
      v35 = sub_22E465558(&v37, v12 + 4, v11, v10);
      swift_bridgeObjectRetain_n();
      sub_22E466FAC();
      if (v35 != v11)
      {
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *(v9 + 8 * v6);

      v12 = MEMORY[0x277D84F90];
    }

    v37 = v12;
    sub_22E463300(&v37);

    v14 = v37;
    v15 = *(v37 + 2);
    if (!v15)
    {
LABEL_20:

      return v7;
    }

    v37 = v7;
    sub_22E476840(0, v15, 0);
    v7 = v37;
    v16 = (v14 + 40);
    v34 = v5;
    while (1)
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v5 + 16);

      v36 = 0u;
      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = sub_22E450B0C(v18, v17);
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v22 = *(*(v5 + 56) + 8 * v20);
      if (!*(v22 + 16))
      {
        goto LABEL_16;
      }

      v23 = *(*(v5 + 56) + 8 * v20);

      v24 = sub_22E45C298(1701667182, 0xE400000000000000);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(v22 + 56) + 24 * v24;
      v36 = *v26;
      v27 = *(v26 + 16);

      v28 = v33;

LABEL_17:
      v37 = v7;
      v30 = *(v7 + 2);
      v29 = *(v7 + 3);
      if (v30 >= v29 >> 1)
      {
        sub_22E476840((v29 > 1), v30 + 1, 1);
        v7 = v37;
      }

      *(v7 + 2) = v30 + 1;
      v31 = &v7[48 * v30];
      *(v31 + 4) = v18;
      *(v31 + 5) = v17;
      *(v31 + 3) = v36;
      *(v31 + 8) = v27;
      *(v31 + 9) = v28;
      v16 += 2;
      --v15;
      v5 = v34;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v27 = 0;
    v28 = 0;
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_22E45BD6C()
{
  if (*v0)
  {
    result = 0x6863726172656968;
  }

  else
  {
    result = 0x6C6F6369746C756DLL;
  }

  *v0;
  return result;
}

uint64_t sub_22E45BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL;
  if (v6 || (sub_22E47D054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22E47D054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22E45BE9C(uint64_t a1)
{
  v2 = sub_22E4678B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BED8(uint64_t a1)
{
  v2 = sub_22E4678B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E45BF14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22E4667D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22E45BF64(uint64_t a1)
{
  v2 = sub_22E466B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45BFA0(uint64_t a1)
{
  v2 = sub_22E466B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22E45BFDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22E46699C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22E45C008()
{
  sub_22E47D0F4();
  MEMORY[0x2318E7080](0);
  return sub_22E47D124();
}

uint64_t sub_22E45C04C()
{
  sub_22E47D0F4();
  MEMORY[0x2318E7080](0);
  return sub_22E47D124();
}

uint64_t sub_22E45C08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22E47D054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22E45C114(uint64_t a1)
{
  v2 = sub_22E466D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E45C150(uint64_t a1)
{
  v2 = sub_22E466D78();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22E45C18C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22E466BF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_22E45C1B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22E46627C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_22E45C1E8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22E47D0E4();

  return sub_22E45F150(a1, v4);
}

unint64_t sub_22E45C22C(int a1)
{
  v3 = *(v1 + 40);
  sub_22E47D0F4();
  sub_22E47D114();
  v4 = sub_22E47D124();

  return sub_22E45F1BC(a1, v4);
}

unint64_t sub_22E45C298(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22E47D0F4();
  sub_22E47CE24();
  v6 = sub_22E47D124();
  return sub_22E450B84(a1, a2, v6);
}

unint64_t sub_22E45C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_22E47D0F4();
  MEMORY[0x2318E7080](a1);
  MEMORY[0x2318E7080](a2);
  MEMORY[0x2318E7080](a3);
  v8 = sub_22E47D124();

  return sub_22E45F228(a1, a2, a3, v8);
}

unint64_t sub_22E45C3A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22E467BA8();

  return sub_22E45F2AC(a1, v4);
}

unint64_t sub_22E45C3EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22E47CD64();
  sub_22E466F68(&qword_27DA641C0);
  v5 = sub_22E47CD74();

  return sub_22E45F528(a1, v5);
}

uint64_t sub_22E45C470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v36 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_22E47D0E4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45C6F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
  v40 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45C9B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64250, &qword_22E47DC00);
  v42 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 104 * v22;
      if (v42)
      {
        v44 = *v26;
        v47 = *(v26 + 8);
        v43 = *(v26 + 16);
        v46 = *(v26 + 24);
        v45 = *(v26 + 40);
        v48 = *(v26 + 48);
        v53 = *(v26 + 72);
        v49 = *(v26 + 32);
        v50 = *(v26 + 80);
        v51 = *(v26 + 64);
        v52 = *(v26 + 88);
        v54 = *(v26 + 96);
      }

      else
      {
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v56 = *v26;
        v57 = v28;
        v58 = v27;
        v30 = *(v26 + 64);
        v29 = *(v26 + 80);
        v31 = *(v26 + 48);
        v62 = *(v26 + 96);
        v60 = v30;
        v61 = v29;
        v59 = v31;
        v54 = v62;
        v53 = *(&v30 + 1);
        v50 = v29;
        v51 = v30;
        v52 = BYTE8(v29);
        v48 = v31;
        v45 = *(&v58 + 1);
        v49 = v58;
        v46 = BYTE8(v57);
        v47 = *(&v56 + 1);
        v43 = v57;
        v44 = v56;

        sub_22E4658E4(&v56, v55);
      }

      v32 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 104 * v16;
      *v18 = v44;
      *(v18 + 8) = v47;
      *(v18 + 16) = v43;
      *(v18 + 24) = v46;
      *(v18 + 32) = v49;
      *(v18 + 40) = v45;
      *(v18 + 48) = v48;
      *(v18 + 64) = v51;
      *(v18 + 72) = v53;
      *(v18 + 80) = v50;
      *(v18 + 88) = v52;
      *(v18 + 96) = v54;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45CD98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64248, &qword_22E47DBF8);
  v39 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 104 * v21;
      if (v39)
      {
        v41 = *v23;
        v44 = *(v23 + 8);
        v40 = *(v23 + 16);
        v43 = *(v23 + 24);
        v42 = *(v23 + 40);
        v45 = *(v23 + 48);
        v50 = *(v23 + 72);
        v46 = *(v23 + 32);
        v47 = *(v23 + 80);
        v48 = *(v23 + 64);
        v49 = *(v23 + 88);
        v24 = *(v23 + 96);
      }

      else
      {
        v24 = *(v23 + 96);
        v25 = *(v23 + 48);
        v26 = *(v23 + 80);
        v55 = *(v23 + 64);
        v56 = v26;
        v54 = v25;
        v27 = *v23;
        v28 = *(v23 + 16);
        v53 = *(v23 + 32);
        v52[0] = v27;
        v52[1] = v28;
        v57 = v24;
        v50 = *(&v55 + 1);
        v47 = v26;
        v48 = v55;
        v49 = BYTE8(v26);
        v45 = v54;
        v42 = *(&v53 + 1);
        v46 = v53;
        v43 = BYTE8(v28);
        v44 = *(&v27 + 1);
        v40 = v28;
        v41 = v27;
        sub_22E4658E4(v52, v51);
      }

      v29 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 104 * v16;
      *v17 = v41;
      *(v17 + 8) = v44;
      *(v17 + 16) = v40;
      *(v17 + 24) = v43;
      *(v17 + 32) = v46;
      *(v17 + 40) = v42;
      *(v17 + 48) = v45;
      *(v17 + 64) = v48;
      *(v17 + 72) = v50;
      *(v17 + 80) = v47;
      *(v17 + 88) = v49;
      *(v17 + 96) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45D150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64238, &qword_22E47DBE8);
  v38 = a2;
  result = sub_22E47CFC4();
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
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E45D3F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64210, &qword_22E47DBC0);
  v37 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[2];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_22E47D0F4();
      MEMORY[0x2318E7080](v38);
      MEMORY[0x2318E7080](v23);
      MEMORY[0x2318E7080](v24);
      result = sub_22E47D124();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v38;
      v17[1] = v23;
      v17[2] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45D6C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64218, &qword_22E47DBC8);
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 24 * v24);
      v36 = v26[1];
      v37 = v26[2];
      v27 = *v26;
      v28 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();

      result = sub_22E47D124();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 24 * v19);
      *v20 = v27;
      v20[1] = v36;
      v20[2] = v37;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_19;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22E45DA30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
  v39 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45DCF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64230, &qword_22E47DBE0);
  v39 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45DFB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
  v40 = a2;
  result = sub_22E47CFC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22E45E270(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_22E47CFC4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22E45E510(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641F0, &qword_22E47DBA0);
  v38 = a2;
  result = sub_22E47CFC4();
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
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E45E7B0(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = *(type metadata accessor for CustomSymbol() - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20]();
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22E47CD64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
  v47 = a2;
  result = sub_22E47CFC4();
  v15 = result;
  if (*(v12 + 16))
  {
    v42 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v43 = (v9 + 16);
    v44 = v9;
    v48 = (v9 + 32);
    v22 = result + 64;
    v45 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v49 = *(v9 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v8);
        v30 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_22E466E90(v30 + v31 * v27, v51, type metadata accessor for CustomSymbol);
      }

      else
      {
        (*v43)(v50, v29, v8);
        v32 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_22E466E28(v32 + v31 * v27, v51, type metadata accessor for CustomSymbol);
      }

      v33 = *(v15 + 40);
      sub_22E466F68(&qword_27DA641C0);
      result = sub_22E47CD74();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v48)((*(v15 + 48) + v49 * v23), v50, v8);
      result = sub_22E466E90(v51, *(v15 + 56) + v31 * v23, type metadata accessor for CustomSymbol);
      ++*(v15 + 16);
      v9 = v44;
      v12 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_22E45EC3C(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_22E45F83C();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_22E45C6F4(v4, v5);
  return 1;
}

unint64_t sub_22E45EC9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22E45C1E8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22E45C470(v16, a4 & 1);
      v20 = *v5;
      result = sub_22E45C1E8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22E45F6D4();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_22E45EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22E450B0C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22E45C6F4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_22E450B0C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22E45F83C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_22E45EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_22E45C30C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22E45D3F8(v18, a5 & 1);
      v22 = *v6;
      result = sub_22E45C30C(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_22E47D094();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22E45FED4();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    v27 = (v24[6] + 24 * result);
    *v27 = a2;
    v27[1] = a3;
    v27[2] = a4;
    *(v24[7] + 8 * result) = a1;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * result);
  *(v25 + 8 * result) = a1;
}

unint64_t sub_22E45F100(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22E45F150(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E45F1BC(int a1, uint64_t a2)
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

unint64_t sub_22E45F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      if (v10 == a1 && v11 == a2 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E45F2AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x534F63616DLL;
          }

          else
          {
            v8 = 0x617461432063614DLL;
          }

          if (v7 == 1)
          {
            v9 = 0xE500000000000000;
          }

          else
          {
            v9 = 0xEC0000007473796CLL;
          }
        }

        else
        {
          v8 = 0x6F626D7953204653;
          v9 = 0xEA0000000000736CLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1397716596;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x534F6E6F69736976;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 5459817;
        }

        else
        {
          v8 = 0x534F6863746177;
        }

        if (v7 == 3)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      v10 = 0x534F6E6F69736976;
      if (v6 == 5)
      {
        v10 = 1397716596;
      }

      v11 = 0xE400000000000000;
      if (v6 != 5)
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x534F6863746177;
      if (v6 == 3)
      {
        v12 = 5459817;
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x617461432063614DLL;
      if (v6 == 1)
      {
        v14 = 0x534F63616DLL;
      }

      v15 = 0xEC0000007473796CLL;
      if (v6 == 1)
      {
        v15 = 0xE500000000000000;
      }

      if (!v6)
      {
        v14 = 0x6F626D7953204653;
        v15 = 0xEA0000000000736CLL;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_22E47D054();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_22E45F528(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22E47CD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22E466F68(&qword_27DA641E8);
      v16 = sub_22E47CDA4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_22E45F6D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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