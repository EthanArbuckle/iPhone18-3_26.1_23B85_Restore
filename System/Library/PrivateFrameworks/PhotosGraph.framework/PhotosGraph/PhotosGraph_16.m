uint64_t sub_22F21C8E4(char **a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = *a1;

  v22 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_22F3F5F98(v22);
  }

  v19 = v7;
  *v7 = v22;
  v9 = (v22 + 16);
  v10 = *(v22 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v7 = &v22[16 * v10];
      v12 = *v7;
      v13 = &v9[2 * v10];
      v14 = *v13;
      v15 = v13[1];

      sub_22F21BEBC(&v12[v11], (v11 + v14), &v15[v11], a2, a4);

      if (v5)
      {
        *v19 = v22;

        return 1;
      }

      if (v15 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v9;
      if (v10 - 2 >= *v9)
      {
        goto LABEL_13;
      }

      *v7 = v12;
      v7[1] = v15;
      v17 = v16 - v10;
      if (v16 < v10)
      {
        goto LABEL_14;
      }

      v10 = v16 - 1;
      memmove(v13, v13 + 2, 16 * v17);
      *v9 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_22F21CA70(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a3[1];
  v156 = MEMORY[0x277D84F90];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_289;
  }

  v147 = v5;
  v8 = v7;
  v154 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v9 = v8;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    v141 = v11;
    v145 = v12;
    if (v10 >= v9)
    {
      goto LABEL_120;
    }

    v136 = v9;
    v13 = v12[*a3];
    v138 = *a3;
    v148 = sub_22F212614(v10[*a3], a5);
    if (v14)
    {
      goto LABEL_325;
    }

    v142 = sub_22F212614(v13, a5);
    if (v15)
    {
      goto LABEL_326;
    }

LABEL_10:
    if (v10 != v136 - 1)
    {
      v18 = *(a5 + 16);
      if (!v18)
      {
        goto LABEL_299;
      }

      v19 = 0;
      __dst = v10 + 1;
      v11 = v10[v138 + 1];
      v20 = v10[v138];
      while (1)
      {
        v21 = *(v154 + v19);
        if (v21 > 2)
        {
          if (v21 == 3)
          {
            v24 = 0x6557664F74726170;
            v25 = 0xEA00000000006B65;
          }

          else
          {
            if (v21 == 4)
            {
              v24 = 0x616559664F796164;
            }

            else
            {
              v24 = 0x6144664F74726170;
            }

            if (v21 == 4)
            {
              v25 = 0xE900000000000072;
            }

            else
            {
              v25 = 0xE900000000000079;
            }
          }
        }

        else
        {
          if (v21 == 1)
          {
            v22 = 0x6E6F73616573;
          }

          else
          {
            v22 = 0x59664F6567646577;
          }

          if (v21 == 1)
          {
            v23 = 0xE600000000000000;
          }

          else
          {
            v23 = 0xEB00000000726165;
          }

          if (*(v154 + v19))
          {
            v24 = v22;
          }

          else
          {
            v24 = 1918985593;
          }

          if (*(v154 + v19))
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xE400000000000000;
          }
        }

        if (v11 > 2)
        {
          v28 = 0xE900000000000079;
          v29 = 0x616559664F796164;
          if (v11 == 4)
          {
            v28 = 0xE900000000000072;
          }

          else
          {
            v29 = 0x6144664F74726170;
          }

          if (v11 == 3)
          {
            v30 = 0x6557664F74726170;
          }

          else
          {
            v30 = v29;
          }

          if (v11 == 3)
          {
            v27 = 0xEA00000000006B65;
          }

          else
          {
            v27 = v28;
          }

          if (v24 != v30)
          {
            goto LABEL_57;
          }
        }

        else if (v11)
        {
          if (v11 == 1)
          {
            v26 = 0x6E6F73616573;
          }

          else
          {
            v26 = 0x59664F6567646577;
          }

          if (v11 == 1)
          {
            v27 = 0xE600000000000000;
          }

          else
          {
            v27 = 0xEB00000000726165;
          }

          if (v24 != v26)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v27 = 0xE400000000000000;
          if (v24 != 1918985593)
          {
            goto LABEL_57;
          }
        }

        if (v25 == v27)
        {

LABEL_61:
          v11 = 0;
          while (2)
          {
            if (v18 == v11)
            {
              goto LABEL_294;
            }

            v32 = *(v154 + v11);
            if (v32 > 2)
            {
              if (v32 == 3)
              {
                v35 = 0x6557664F74726170;
                v36 = 0xEA00000000006B65;
                if (v20 > 2)
                {
                  goto LABEL_93;
                }

                goto LABEL_83;
              }

              if (v32 == 4)
              {
                v35 = 0x616559664F796164;
              }

              else
              {
                v35 = 0x6144664F74726170;
              }

              if (v32 == 4)
              {
                v36 = 0xE900000000000072;
              }

              else
              {
                v36 = 0xE900000000000079;
              }

              if (v20 <= 2)
              {
                goto LABEL_83;
              }

LABEL_93:
              v39 = 0xE900000000000079;
              v40 = 0x616559664F796164;
              if (v20 == 4)
              {
                v39 = 0xE900000000000072;
              }

              else
              {
                v40 = 0x6144664F74726170;
              }

              if (v20 == 3)
              {
                v41 = 0x6557664F74726170;
              }

              else
              {
                v41 = v40;
              }

              if (v20 == 3)
              {
                v38 = 0xEA00000000006B65;
              }

              else
              {
                v38 = v39;
              }

              if (v35 == v41)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v33 = 0x6E6F73616573;
            if (v32 == 1)
            {
              v34 = 0xE600000000000000;
            }

            else
            {
              v33 = 0x59664F6567646577;
              v34 = 0xEB00000000726165;
            }

            if (*(v154 + v11))
            {
              v35 = v33;
            }

            else
            {
              v35 = 1918985593;
            }

            if (*(v154 + v11))
            {
              v36 = v34;
            }

            else
            {
              v36 = 0xE400000000000000;
            }

            if (v20 > 2)
            {
              goto LABEL_93;
            }

LABEL_83:
            if (!v20)
            {
              v38 = 0xE400000000000000;
              if (v35 == 1918985593)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            if (v20 == 1)
            {
              v37 = 0x6E6F73616573;
            }

            else
            {
              v37 = 0x59664F6567646577;
            }

            if (v20 == 1)
            {
              v38 = 0xE600000000000000;
            }

            else
            {
              v38 = 0xEB00000000726165;
            }

            if (v35 != v37)
            {
              goto LABEL_106;
            }

LABEL_105:
            if (v36 != v38)
            {
LABEL_106:
              v42 = sub_22F742040();

              if (v42)
              {
                goto LABEL_9;
              }

              if (v18 == ++v11)
              {
                goto LABEL_296;
              }

              continue;
            }

            break;
          }

LABEL_9:
          v16 = __dst;
          v17 = v19 >= v11;
          v10 = __dst;
          v11 = v141;
          if ((((v148 < v142) ^ v17) & 1) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_10;
        }

LABEL_57:
        v31 = sub_22F742040();

        if (v31)
        {
          goto LABEL_61;
        }

        if (v18 == ++v19)
        {
          goto LABEL_295;
        }
      }
    }

    v16 = v136;
LABEL_110:
    if (v148 < v142)
    {
      v43 = v145;
      if (v16 >= v145)
      {
        if (v145 < v16)
        {
          v44 = v16 - 1;
          while (1)
          {
            if (v43 != v44)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_323;
              }

              v47 = v43[v46];
              v43[v46] = v44[v46];
              v44[v46] = v47;
            }

            if (++v43 >= v44--)
            {
              goto LABEL_119;
            }
          }
        }

        goto LABEL_119;
      }

LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_322:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_323:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_324;
    }

LABEL_119:
    v10 = v16;
LABEL_120:
    v48 = a3[1];
    if (v10 >= v48)
    {
      goto LABEL_235;
    }

    if (__OFSUB__(v10, v145))
    {
      goto LABEL_316;
    }

    if (&v10[-v145] >= a4)
    {
      goto LABEL_235;
    }

    v49 = v145 + a4;
    if (__OFADD__(v145, a4))
    {
      goto LABEL_317;
    }

    if (v49 >= v48)
    {
      v49 = a3[1];
    }

    if (v49 < v145)
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    if (v10 == v49)
    {
      v50 = v145;
      goto LABEL_236;
    }

    v139 = v49;
    v51 = *(a5 + 16);
    if (!v51)
    {
      goto LABEL_320;
    }

    v52 = *a3;
    v53 = v10;
    v140 = *a3;
LABEL_133:
    v54 = v53[v52];
    v143 = v53;
    v55 = v53;
LABEL_134:
    v56 = 0;
    v149 = v55 - 1;
    __dsta = v55;
    v57 = v55[v52 - 1];
    v11 = v54;
LABEL_135:
    v58 = *(a5 + v56 + 32);
    if (v58 > 2)
    {
      if (v58 == 3)
      {
        v61 = 0x6557664F74726170;
        v62 = 0xEA00000000006B65;
      }

      else
      {
        if (v58 == 4)
        {
          v61 = 0x616559664F796164;
        }

        else
        {
          v61 = 0x6144664F74726170;
        }

        if (v58 == 4)
        {
          v62 = 0xE900000000000072;
        }

        else
        {
          v62 = 0xE900000000000079;
        }
      }
    }

    else
    {
      if (v58 == 1)
      {
        v59 = 0x6E6F73616573;
      }

      else
      {
        v59 = 0x59664F6567646577;
      }

      if (v58 == 1)
      {
        v60 = 0xE600000000000000;
      }

      else
      {
        v60 = 0xEB00000000726165;
      }

      if (*(a5 + v56 + 32))
      {
        v61 = v59;
      }

      else
      {
        v61 = 1918985593;
      }

      if (*(a5 + v56 + 32))
      {
        v62 = v60;
      }

      else
      {
        v62 = 0xE400000000000000;
      }
    }

    v63 = 0xE900000000000079;
    v64 = 0x616559664F796164;
    if (v11 == 4)
    {
      v63 = 0xE900000000000072;
    }

    else
    {
      v64 = 0x6144664F74726170;
    }

    if (v11 == 3)
    {
      v64 = 0x6557664F74726170;
      v63 = 0xEA00000000006B65;
    }

    if (v11 == 1)
    {
      v65 = 0x6E6F73616573;
    }

    else
    {
      v65 = 0x59664F6567646577;
    }

    if (v11 == 1)
    {
      v66 = 0xE600000000000000;
    }

    else
    {
      v66 = 0xEB00000000726165;
    }

    if (!v11)
    {
      v65 = 1918985593;
      v66 = 0xE400000000000000;
    }

    v67 = v11 <= 2 ? v65 : v64;
    v68 = v11 <= 2 ? v66 : v63;
    if (v61 != v67 || v62 != v68)
    {
      break;
    }

LABEL_181:
    v11 = 0;
    while (1)
    {
      v70 = *(a5 + v11 + 32);
      if (v70 <= 2)
      {
        break;
      }

      if (v70 == 3)
      {
        v73 = 0x6557664F74726170;
        v74 = 0xEA00000000006B65;
        if (v57 > 2)
        {
          goto LABEL_213;
        }
      }

      else
      {
        if (v70 == 4)
        {
          v73 = 0x616559664F796164;
        }

        else
        {
          v73 = 0x6144664F74726170;
        }

        if (v70 == 4)
        {
          v74 = 0xE900000000000072;
        }

        else
        {
          v74 = 0xE900000000000079;
        }

        if (v57 > 2)
        {
          goto LABEL_213;
        }
      }

LABEL_203:
      if (v57)
      {
        if (v57 == 1)
        {
          v75 = 0x6E6F73616573;
        }

        else
        {
          v75 = 0x59664F6567646577;
        }

        if (v57 == 1)
        {
          v76 = 0xE600000000000000;
        }

        else
        {
          v76 = 0xEB00000000726165;
        }

        if (v73 != v75)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      v76 = 0xE400000000000000;
      if (v73 == 1918985593)
      {
        goto LABEL_225;
      }

LABEL_226:
      v80 = sub_22F742040();

      if (v80)
      {
        goto LABEL_230;
      }

      if (v51 == ++v11)
      {
        goto LABEL_293;
      }
    }

    v71 = 0x6E6F73616573;
    if (v70 != 1)
    {
      v71 = 0x59664F6567646577;
    }

    v72 = 0xE600000000000000;
    if (v70 != 1)
    {
      v72 = 0xEB00000000726165;
    }

    if (*(a5 + v11 + 32))
    {
      v73 = v71;
    }

    else
    {
      v73 = 1918985593;
    }

    if (*(a5 + v11 + 32))
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xE400000000000000;
    }

    if (v57 <= 2)
    {
      goto LABEL_203;
    }

LABEL_213:
    v77 = 0xE900000000000079;
    v78 = 0x616559664F796164;
    if (v57 == 4)
    {
      v77 = 0xE900000000000072;
    }

    else
    {
      v78 = 0x6144664F74726170;
    }

    if (v57 == 3)
    {
      v79 = 0x6557664F74726170;
    }

    else
    {
      v79 = v78;
    }

    if (v57 == 3)
    {
      v76 = 0xEA00000000006B65;
    }

    else
    {
      v76 = v77;
    }

    if (v73 != v79)
    {
      goto LABEL_226;
    }

LABEL_225:
    if (v74 != v76)
    {
      goto LABEL_226;
    }

LABEL_230:
    if (v56 >= v11)
    {
      v52 = v140;
      goto LABEL_132;
    }

    v52 = v140;
    if (!v140)
    {
      goto LABEL_321;
    }

    v54 = __dsta[v140];
    __dsta[v140] = v149[v140];
    v149[v140] = v54;
    v55 = v149;
    if (v149 != v145)
    {
      goto LABEL_134;
    }

LABEL_132:
    v53 = v143 + 1;
    if (v143 + 1 != v139)
    {
      goto LABEL_133;
    }

    v10 = v139;
    v11 = v141;
LABEL_235:
    v50 = v145;
LABEL_236:
    if (v10 < v50)
    {
      goto LABEL_315;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22F13D970(0, *(v11 + 16) + 1, 1, v11);
    }

    v82 = *(v11 + 16);
    v81 = *(v11 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v11 = sub_22F13D970((v81 > 1), v82 + 1, 1, v11);
    }

    *(v11 + 16) = v83;
    v84 = (v11 + 32);
    v85 = (v11 + 32 + 16 * v82);
    *v85 = v145;
    *(v85 + 1) = v10;
    __dstb = *a1;
    if (!*a1)
    {
LABEL_324:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (v82)
    {
      v144 = v10;
      v150 = (v11 + 32);
      while (1)
      {
        v86 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v87 = *(v11 + 32);
          v88 = *(v11 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_257:
          if (v90)
          {
            goto LABEL_305;
          }

          v103 = (v11 + 16 * v83);
          v105 = *v103;
          v104 = *(v103 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_307;
          }

          v109 = &v84[16 * v86];
          v111 = *v109;
          v110 = *(v109 + 1);
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_310;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_312;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v86 = v83 - 2;
            }

            goto LABEL_280;
          }

          goto LABEL_270;
        }

        if (v83 < 2)
        {
          goto LABEL_313;
        }

        v113 = (v11 + 16 * v83);
        v115 = *v113;
        v114 = *(v113 + 1);
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_270:
        if (v108)
        {
          goto LABEL_309;
        }

        v116 = &v84[16 * v86];
        v118 = *v116;
        v117 = *(v116 + 1);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_311;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_280:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_322;
        }

        v125 = v11;
        v126 = &v84[16 * v86 - 16];
        v127 = *v126;
        v128 = v86;
        v129 = &v84[16 * v86];
        v130 = *v129;
        v131 = *(v129 + 1);

        sub_22F21BEBC(v124 + v127, (v124 + v130), v124 + v131, __dstb, a5);
        if (v147)
        {

          goto LABEL_292;
        }

        if (v131 < v127)
        {
          goto LABEL_300;
        }

        v132 = *(v125 + 2);
        if (v128 > v132)
        {
          goto LABEL_301;
        }

        *v126 = v127;
        *(v126 + 1) = v131;
        if (v128 >= v132)
        {
          goto LABEL_302;
        }

        v83 = v132 - 1;
        memmove(v129, v129 + 16, 16 * (v132 - 1 - v128));
        v11 = v125;
        *(v125 + 2) = v132 - 1;
        v10 = v144;
        v84 = v150;
        if (v132 <= 2)
        {
          goto LABEL_3;
        }
      }

      v91 = &v84[16 * v83];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_303;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_304;
      }

      v98 = (v11 + 16 * v83);
      v100 = *v98;
      v99 = *(v98 + 1);
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_306;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_308;
      }

      if (v102 >= v94)
      {
        v120 = &v84[16 * v86];
        v122 = *v120;
        v121 = *(v120 + 1);
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_314;
        }

        if (v89 < v123)
        {
          v86 = v83 - 2;
        }

        goto LABEL_280;
      }

      goto LABEL_257;
    }

LABEL_3:
    v9 = a3[1];
    if (v10 >= v9)
    {
      goto LABEL_297;
    }
  }

  v69 = sub_22F742040();

  if (v69)
  {
    goto LABEL_181;
  }

  if (v51 != ++v56)
  {
    goto LABEL_135;
  }

  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  v156 = v11;
  v6 = a5;
LABEL_289:
  v133 = *a1;
  if (!*a1)
  {
    goto LABEL_327;
  }

  sub_22F21C8E4(&v156, v133, a3, v6);

LABEL_292:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_22F21D964(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42 = result;
  if (a3 == a2)
  {
    return result;
  }

  v46 = *(a5 + 16);
  if (v46)
  {
    v47 = a5 + 32;
    v5 = 0xEB00000000726165;
    v6 = *a4;
    v7 = 0x59664F6567646577;
    v8 = 0x6E6F73616573;
    v43 = *a4;
LABEL_6:
    v9 = *(v6 + a3);
    v41 = a3;
LABEL_7:
    v10 = 0;
    v44 = a3 - 1;
    v45 = a3;
    v11 = *(v6 + a3 - 1);
    v12 = v9;
    while (1)
    {
      v13 = *(v47 + v10);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = 0x6557664F74726170;
          v17 = 0xEA00000000006B65;
        }

        else
        {
          if (v13 == 4)
          {
            v16 = 0x616559664F796164;
          }

          else
          {
            v16 = 0x6144664F74726170;
          }

          if (v13 == 4)
          {
            v17 = 0xE900000000000072;
          }

          else
          {
            v17 = 0xE900000000000079;
          }
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = v8;
        }

        else
        {
          v14 = v7;
        }

        if (v13 == 1)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = v5;
        }

        if (*(v47 + v10))
        {
          v16 = v14;
        }

        else
        {
          v16 = 1918985593;
        }

        if (*(v47 + v10))
        {
          v17 = v15;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      v18 = 0xE900000000000079;
      v19 = 0x616559664F796164;
      if (v12 == 4)
      {
        v18 = 0xE900000000000072;
      }

      else
      {
        v19 = 0x6144664F74726170;
      }

      if (v12 == 3)
      {
        v19 = 0x6557664F74726170;
        v18 = 0xEA00000000006B65;
      }

      if (v12 == 1)
      {
        v20 = v8;
      }

      else
      {
        v20 = v7;
      }

      v21 = v5;
      if (v12 == 1)
      {
        v5 = 0xE600000000000000;
      }

      if (!v12)
      {
        v20 = 1918985593;
        v5 = 0xE400000000000000;
      }

      v22 = v12 <= 2 ? v20 : v19;
      v23 = v12 <= 2 ? v5 : v18;
      v24 = v7;
      v25 = v8;
      if (v16 == v22 && v17 == v23)
      {
        break;
      }

      v26 = sub_22F742040();

      if (v26)
      {
        goto LABEL_53;
      }

      ++v10;
      v5 = v21;
      v7 = v24;
      v8 = v25;
      if (v46 == v10)
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }
    }

LABEL_53:
    v27 = 0;
    v28 = v21;
    v29 = 0xE600000000000000;
    while (1)
    {
      v30 = *(v47 + v27);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v32 = 0x6557664F74726170;
          v33 = 0xEA00000000006B65;
          if (v11 > 2)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v30 == 4)
          {
            v32 = 0x616559664F796164;
          }

          else
          {
            v32 = 0x6144664F74726170;
          }

          if (v30 == 4)
          {
            v33 = 0xE900000000000072;
          }

          else
          {
            v33 = 0xE900000000000079;
          }

          if (v11 > 2)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        if (v30 == 1)
        {
          v31 = v25;
        }

        else
        {
          v31 = v24;
        }

        if (v30 != 1)
        {
          v29 = v28;
        }

        if (*(v47 + v27))
        {
          v32 = v31;
        }

        else
        {
          v32 = 1918985593;
        }

        if (*(v47 + v27))
        {
          v33 = v29;
        }

        else
        {
          v33 = 0xE400000000000000;
        }

        if (v11 > 2)
        {
LABEL_86:
          v36 = 0xE900000000000079;
          v37 = 0x616559664F796164;
          if (v11 == 4)
          {
            v36 = 0xE900000000000072;
          }

          else
          {
            v37 = 0x6144664F74726170;
          }

          if (v11 == 3)
          {
            v38 = 0x6557664F74726170;
          }

          else
          {
            v38 = v37;
          }

          if (v11 == 3)
          {
            v35 = 0xEA00000000006B65;
          }

          else
          {
            v35 = v36;
          }

          if (v32 != v38)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v34 = v25;
        }

        else
        {
          v34 = v24;
        }

        if (v11 == 1)
        {
          v35 = 0xE600000000000000;
        }

        else
        {
          v35 = v28;
        }

        if (v32 != v34)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v35 = 0xE400000000000000;
        if (v32 != 1918985593)
        {
          goto LABEL_99;
        }
      }

LABEL_98:
      if (v33 == v35)
      {

LABEL_103:
        v5 = v21;
        v6 = v43;
        v7 = v24;
        v8 = v25;
        if (v10 >= v27)
        {
LABEL_5:
          a3 = v41 + 1;
          if (v41 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (!v43)
        {
          goto LABEL_109;
        }

        v9 = *(v43 + v45);
        *(v43 + v45) = *(v43 + v44);
        *(v43 + v44) = v9;
        a3 = v44;
        if (v44 == v42)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
      }

LABEL_99:
      v39 = sub_22F742040();

      if (v39)
      {
        goto LABEL_103;
      }

      ++v27;
      v28 = v21;
      v29 = 0xE600000000000000;
      if (v46 == v27)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_22F21DDE0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22F742000();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_22F21CA70(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22F21D964(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F21DF28(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22F3F6558(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_22F21DDE0(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_22F21DFCC()
{
  result = qword_27DAB2710;
  if (!qword_27DAB2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2710);
  }

  return result;
}

uint64_t sub_22F21E028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F21E068(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771350;
  *(v4 + 32) = [objc_opt_self() dateOfMoment];
  *(v4 + 40) = [objc_opt_self() seasonOfDate];
  v5 = objc_allocWithZone(MEMORY[0x277D22C00]);
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v6 = sub_22F741160();

  v7 = [v5 initWithSteps_];

  v8 = v7;
  v9 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v10 = [v9 concreteGraph];

  if (v10)
  {
    v11 = [a1 elementIdentifiers];
    v12 = [v10 adjacencyWithSources:v11 relation:v8];

    swift_unknownObjectRetain();
    v13 = [v12 transposed];
    swift_unknownObjectRelease();

    v14 = objc_allocWithZone(PGGraphSeasonNodeCollection);
    v15 = [v13 sources];
    v16 = [v14 initWithGraph:v10 elementIdentifiers:v15];

    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v10;
    v17[4] = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_22F21F140;
    *(v18 + 24) = v17;
    aBlock[4] = sub_22F21F1C0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F2136B4;
    aBlock[3] = &block_descriptor_111;
    v19 = _Block_copy(aBlock);
    v20 = v13;
    swift_unknownObjectRetain();

    [v16 enumerateNamesUsingBlock_];

    swift_unknownObjectRelease();
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F21E448(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_27DAB2770, off_27887B490);
  v4 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v5 = [v4 momentNodes];

  v6 = [v5 elementIdentifiers];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22F21F0B0;
  *(v8 + 24) = v7;
  v21 = sub_22F21F0D4;
  v22 = v8;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22F3618B8;
  v20 = &block_descriptor_91;
  v9 = _Block_copy(&v17);

  [v6 enumerateIdentifiersWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_22F120634(0, &qword_27DAB2778, off_27887B480);
  v11 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v12 = [v11 momentNodes];

  v13 = [v12 elementIdentifiers];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F21F0DC;
  *(v15 + 24) = v14;
  v21 = sub_22F21F1BC;
  v22 = v15;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22F3618B8;
  v20 = &block_descriptor_101;
  v16 = _Block_copy(&v17);

  [v13 enumerateIdentifiersWithBlock_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_22F21E7A4(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 significantPartOfDayOfMoment];
  sub_22F21A8C4(a1, v6, a2, v15);

  if (!v2)
  {
    v7 = v15[0];
    v8 = v15[1];
    v9 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v10 = [v7 targets];
    v11 = [v9 initWithGraph:v8 elementIdentifiers:v10];

    v12 = [a1 collectionBySubtracting_];
    if ([v12 count] < 1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = [v5 partOfDayOfMoment];
      sub_22F21A8C4(v12, v13, a2, v15);
      v14 = v15[0];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

char *sub_22F21E940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v2++;
    v4 = v5;
    if (v5 > 2)
    {
      if (v4 == 3)
      {
        if (qword_27DAAFDD8 != -1)
        {
          swift_once();
        }

        v6 = off_27DAB2708;
      }

      else
      {
        if (v4 == 4)
        {
          v6 = &unk_2843DAEB8;
          goto LABEL_23;
        }

        if (qword_27DAAFDD0 != -1)
        {
          swift_once();
        }

        v6 = off_27DAB2700;
      }
    }

    else
    {
      if (!v4)
      {
        v6 = &unk_2843DAE88;
        goto LABEL_23;
      }

      if (v4 != 1)
      {
        v6 = &unk_2843DAEE8;
        goto LABEL_23;
      }

      if (qword_27DAAFDC8 != -1)
      {
        swift_once();
      }

      v6 = off_27DAB26F8;
    }

LABEL_23:
    v7 = v6[2];
    v8 = *(v3 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v3 + 3) >> 1)
    {
      if (v6[2])
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v3 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
      if (v6[2])
      {
LABEL_32:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v7)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_44;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_42;
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v3 = sub_22F13E1A8(0, *(v3 + 2) + 1, 1, v3);
LABEL_38:
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_22F13E1A8((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = 0x6D617473656D6954;
  *(v17 + 5) = 0xE900000000000070;
  return v3;
}

uint64_t sub_22F21EC7C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

unint64_t sub_22F21ECB8()
{
  result = qword_27DAB2740;
  if (!qword_27DAB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2740);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph9TimeIndexC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22F21EEDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F21EF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F21EF6C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_22F21EF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2760, &qword_22F77AD18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F21F088(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F21F158(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall MusicBagContents.init(personalMixIdentifersToNames:jobConfiguration:cacheRefreshConfiguration:songQueryBatchSize:songEquivalentQueryBatchSize:)(PhotosGraph::MusicBagContents *__return_ptr retstr, Swift::OpaquePointer personalMixIdentifersToNames, PhotosGraph::JobConfiguration *jobConfiguration, PhotosGraph::CacheRefreshConfiguration cacheRefreshConfiguration, Swift::Int songQueryBatchSize, Swift::Int songEquivalentQueryBatchSize)
{
  v6 = *(&jobConfiguration->musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7);
  *&retstr->jobConfiguration.musicForTimeBackfill.value.maximumFailureCadenceSeconds = *&jobConfiguration->musicForTimeBackfill.value.maximumFailureCadenceSeconds;
  *(&retstr->jobConfiguration.musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7) = v6;
  *(&retstr->jobConfiguration.musicForTimeFrontfill.value.failureBackoffMultiplier + 7) = *(&jobConfiguration->musicForTimeFrontfill.value.failureBackoffMultiplier + 7);
  v7 = *&jobConfiguration->musicForTime.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForPerformer.maximumFailureCadenceSeconds = *&jobConfiguration->musicForPerformer.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTime.minimumFailureCadenceSeconds = v7;
  v8 = *&jobConfiguration->musicForTimeBackfill.value.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTime.maximumFailureCadenceSeconds = *&jobConfiguration->musicForTime.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTimeBackfill.value.minimumFailureCadenceSeconds = v8;
  v9 = *&jobConfiguration->musicForMoment.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForTopic.is_nil = *&jobConfiguration->musicForTopic.is_nil;
  *&retstr->jobConfiguration.musicForMoment.minimumFailureCadenceSeconds = v9;
  v10 = *&jobConfiguration->musicForPerformer.minimumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForMoment.maximumFailureCadenceSeconds = *&jobConfiguration->musicForMoment.maximumFailureCadenceSeconds;
  *&retstr->jobConfiguration.musicForPerformer.minimumFailureCadenceSeconds = v10;
  v11 = *&jobConfiguration->musicForYou.failureBackoffMultiplier;
  *&retstr->jobConfiguration.musicForYou.minimumSuccessCadenceSeconds = *&jobConfiguration->musicForYou.minimumSuccessCadenceSeconds;
  *&retstr->jobConfiguration.musicForYou.failureBackoffMultiplier = v11;
  v12 = *&jobConfiguration->musicForTopic.value.failureBackoffMultiplier;
  *&retstr->jobConfiguration.musicForTopic.value.minimumSuccessCadenceSeconds = *&jobConfiguration->musicForTopic.value.minimumSuccessCadenceSeconds;
  v13 = *cacheRefreshConfiguration.batchSize;
  v14 = *(cacheRefreshConfiguration.batchSize + 8);
  retstr->personalMixIdentifersToNames = personalMixIdentifersToNames;
  LOBYTE(retstr->cacheRefreshConfiguration.minimumRefreshCadenceSeconds) = LOBYTE(jobConfiguration[1].musicForYou.minimumSuccessCadenceSeconds);
  *&retstr->jobConfiguration.musicForTopic.value.failureBackoffMultiplier = v12;
  retstr->cacheRefreshConfiguration.batchSize = v13;
  retstr->songQueryBatchSize = v14;
  retstr->songEquivalentQueryBatchSize = songQueryBatchSize;
  retstr[1].personalMixIdentifersToNames._rawValue = songEquivalentQueryBatchSize;
}

int64x2_t static JobConfiguration.JobCadence.defaultJobCadence()@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x40F5180000000000uLL);
  *a1 = result;
  a1[1].i64[0] = 2;
  a1[1].i64[1] = 0x4132750000000000;
  return result;
}

uint64_t sub_22F21F314(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *v2;

  v7 = a1(v6);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v9 = a2(v8, v7);

  return v9;
}

Swift::String_optional __swiftcall MusicBagContents.personalMixName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  if (*(off_2810AB5E0 + 2) && (sub_22F1229E8(countAndFlagsBits, object), (v5 & 1) != 0) || !*(v4 + 16) || (v6 = sub_22F1229E8(countAndFlagsBits, object), (v7 & 1) == 0))
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v8 = (*(v4 + 56) + 16 * v6);
    v10 = *v8;
    v9 = v8[1];

    v12 = v10;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String_optional __swiftcall MusicBagContents.personalMixIdentifier(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (qword_2810AB5D8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v5 = 0;
  v6 = off_2810AB5E0;
  v7 = 1 << *(off_2810AB5E0 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = off_2810AB5E0 + 64;
  v10 = v8 & *(off_2810AB5E0 + 8);
  v11 = (v7 + 63) >> 6;
  do
  {
    if (!v10)
    {
      while (1)
      {
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v12 >= v11)
        {
          break;
        }

        v10 = *&v9[8 * v12];
        ++v5;
        if (v10)
        {
          v5 = v12;
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 1 << *(v4 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v4 + 64);
      v23 = (v20 + 63) >> 6;
      while (v22)
      {
LABEL_25:
        v25 = (v19 << 10) | (16 * __clz(__rbit64(v22)));
        v26 = (*(v4 + 48) + v25);
        v15 = *v26;
        v16 = v26[1];
        v27 = (*(v4 + 56) + v25);
        if (*v27 != countAndFlagsBits || v27[1] != object)
        {
          v22 &= v22 - 1;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      while (1)
      {
        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v24 >= v23)
        {
          goto LABEL_15;
        }

        v22 = *(v4 + 64 + 8 * v24);
        ++v19;
        if (v22)
        {
          v19 = v24;
          goto LABEL_25;
        }
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_10:
    v13 = (v6[7] + ((v5 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 == countAndFlagsBits && v13[1] == object)
    {
      break;
    }

    v10 &= v10 - 1;
  }

  while ((sub_22F742040() & 1) == 0);
LABEL_15:
  v15 = 0;
  v16 = 0;
LABEL_16:
  v17 = v15;
  v18 = v16;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t MusicBagContents.yearlySummaryPlaylistNames()()
{
  v1 = *v0;

  v3 = sub_22F144294(v2);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_22F1E8F80(v4, v3);

  sub_22F1E7F04(&unk_2843DA9D8);
  sub_22F1DF3B0(&unk_2843DA9F8);
  return v5;
}

uint64_t sub_22F21F70C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F21F7B8()
{
  *v0;
  *v0;
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F21F850()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F21F8F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F223648();
  *a2 = result;
  return result;
}

void sub_22F21F928(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "";
  v4 = "minimumFailureCadenceSeconds";
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001CLL;
    v4 = "failureBackoffMultiplier";
  }

  if (*v1)
  {
    v3 = "minimumSuccessCadenceSeconds";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_22F21F994()
{
  v1 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_22F21F9FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22F223648();
  *a1 = result;
  return result;
}

uint64_t sub_22F21FA24(uint64_t a1)
{
  v2 = sub_22F2226E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F21FA60(uint64_t a1)
{
  v2 = sub_22F2226E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JobConfiguration.JobCadence.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2790, &qword_22F77AD30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2798, &qword_22F77AD38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_22F2226E4();
  sub_22F742200();
  if (v2)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    sub_22F120ADC(v8, &qword_27DAB2790, &qword_22F77AD30);
    v16 = 1209600.0;
    v17 = 86400.0;
    v18 = 2;
    v19 = 86400.0;
LABEL_95:
    *a2 = v19;
    *(a2 + 8) = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v13, v8, v9);
  LOBYTE(v67[0]) = 0;
  v20 = sub_22F741E90();
  if (v21)
  {
    LOBYTE(v67[0]) = 0;
    v22 = sub_22F741E50();
    if (v23)
    {
      v67[0] = 0;
      v24 = sub_22F222738(v22, v23);

      if (v24)
      {
        v19 = *v67;
      }

      else
      {
        v19 = 86400.0;
      }
    }

    else
    {
      v19 = 86400.0;
    }
  }

  else
  {
    v19 = v20;
  }

  LOBYTE(v67[0]) = 1;
  v25 = sub_22F741E90();
  if (v26)
  {
    LOBYTE(v67[0]) = 1;
    v27 = sub_22F741E50();
    if (v28)
    {
      v67[0] = 0;
      v29 = sub_22F222738(v27, v28);

      if (v29)
      {
        v17 = *v67;
      }

      else
      {
        v17 = 86400.0;
      }
    }

    else
    {
      v17 = 86400.0;
    }
  }

  else
  {
    v17 = v25;
  }

  LOBYTE(v67[0]) = 2;
  v30 = sub_22F741E90();
  if ((v31 & 1) == 0)
  {
    v18 = v30;
    goto LABEL_89;
  }

  LOBYTE(v67[0]) = 2;
  result = sub_22F741E50();
  if (!v33)
  {
    v18 = 2;
    goto LABEL_89;
  }

  v34 = HIBYTE(v33) & 0xF;
  v35 = result & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v36 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    goto LABEL_88;
  }

  if ((v33 & 0x1000000000000000) != 0)
  {
    v18 = sub_22F29C288(result, v33, 10);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
LABEL_89:
      LOBYTE(v67[0]) = 3;
      v56 = sub_22F741E90();
      if (v57)
      {
        LOBYTE(v67[0]) = 3;
        v58 = sub_22F741E50();
        if (v59)
        {
          v67[0] = 0;
          v60 = sub_22F222738(v58, v59);

          (*(v10 + 8))(v13, v9);
          v16 = *v67;
          if (!v60)
          {
            v16 = 1209600.0;
          }
        }

        else
        {
          (*(v10 + 8))(v13, v9);
          v16 = 1209600.0;
        }
      }

      else
      {
        v61 = v56;
        (*(v10 + 8))(v13, v9);
        v16 = v61;
      }

      goto LABEL_95;
    }

LABEL_88:
    v18 = 2;
    goto LABEL_89;
  }

  if ((v33 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v33 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_22F741B80();
      v35 = v64;
    }

    v37 = *result;
    if (v37 == 43)
    {
      if (v35 >= 1)
      {
        if (--v35)
        {
          if (result)
          {
            v18 = 0;
            v44 = (result + 1);
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_86;
              }

              v46 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_86;
              }

              v18 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_86;
              }

              ++v44;
              if (!--v35)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_77;
        }

        goto LABEL_86;
      }

      goto LABEL_103;
    }

    if (v37 != 45)
    {
      if (v35)
      {
        if (result)
        {
          v18 = 0;
          while (1)
          {
            v50 = *result - 48;
            if (v50 > 9)
            {
              goto LABEL_86;
            }

            v51 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_86;
            }

            v18 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_86;
            }

            ++result;
            if (!--v35)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_86:
      v18 = 0;
      LOBYTE(v35) = 1;
      goto LABEL_87;
    }

    if (v35 >= 1)
    {
      if (--v35)
      {
        if (result)
        {
          v18 = 0;
          v38 = (result + 1);
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_86;
            }

            v40 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_86;
            }

            v18 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              goto LABEL_86;
            }

            ++v38;
            if (!--v35)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_77:
        v18 = 0;
LABEL_78:
        LOBYTE(v35) = 0;
LABEL_87:
        v68 = v35;
        v55 = v35;

        if ((v55 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v67[0] = result;
  v67[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v34)
      {
        v18 = 0;
        v52 = v67;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          v54 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            break;
          }

          ++v52;
          if (!--v34)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_86;
    }

    if (v34)
    {
      v35 = v34 - 1;
      if (v34 != 1)
      {
        v18 = 0;
        v41 = v67 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v35)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_102;
  }

  if (v34)
  {
    v35 = v34 - 1;
    if (v34 != 1)
    {
      v18 = 0;
      v47 = v67 + 1;
      while (1)
      {
        v48 = *v47 - 48;
        if (v48 > 9)
        {
          break;
        }

        v49 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          break;
        }

        ++v47;
        if (!--v35)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t JobConfiguration.JobCadence.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27A0, &qword_22F77AD40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *v1;
  v15 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2226E4();
  result = sub_22F742210();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = 0;
  result = sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = 1;
  sub_22F741FC0();
  v17 = 2;
  result = sub_22F741FC0();
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12 < 9.22337204e18)
  {
    v16 = 3;
    sub_22F741FC0();
    return (*(v5 + 8))(v8, v4);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22F2205A8()
{
  result = 0x726F46636973756DLL;
  v2 = *v0;
  if (v2 > 2)
  {
    v3 = 0xD000000000000015;
    if (v2 == 5)
    {
      v3 = 0xD000000000000014;
    }

    v4 = 0xD000000000000011;
    if (v2 != 3)
    {
      v4 = 0x726F46636973756DLL;
    }

    if (*v0 <= 4u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_22F220680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F223694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F2206B4(uint64_t a1)
{
  v2 = sub_22F222BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2206F0(uint64_t a1)
{
  v2 = sub_22F222BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JobConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27A8, &qword_22F77AD48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + 2);
  v44 = *(v1 + 3);
  v45 = v12;
  v50 = *(v1 + 64);
  v13 = v1[9];
  v42 = v1[10];
  v43 = v13;
  v41 = v1[11];
  *&v12 = v1[13];
  v40 = v1[12];
  v39 = v12;
  v14 = v1[14];
  v38 = v1[15];
  v16 = v1[16];
  v15 = v1[17];
  v17 = v1[18];
  v37 = v1[19];
  v18 = v1[20];
  v35 = *(v1 + 23);
  v36 = *(v1 + 21);
  v34 = *(v1 + 200);
  v19 = *(v1 + 13);
  v32 = *(v1 + 14);
  v33 = v19;
  v20 = *(v1 + 240);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222BFC();
  v22 = v3;
  sub_22F742210();
  *&v47 = v8;
  *(&v47 + 1) = v9;
  *&v48 = v10;
  *(&v48 + 1) = v11;
  v51 = 0;
  sub_22F222C50();
  v23 = v46;
  sub_22F741FE0();
  if (v23)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = v41;
  v25 = v40;
  v26 = v42;
  v27 = v43;
  v28 = v38;
  v46 = v16;
  v29 = v39;
  v30 = v37;
  v47 = v45;
  v48 = v44;
  v49 = v50;
  v51 = 1;
  sub_22F741F70();
  *&v47 = v27;
  *(&v47 + 1) = v26;
  *&v48 = v24;
  *(&v48 + 1) = v25;
  v51 = 2;
  sub_22F741FE0();
  *&v47 = v29;
  *(&v47 + 1) = v14;
  *&v48 = v28;
  *(&v48 + 1) = v46;
  v51 = 3;
  sub_22F741FE0();
  *&v47 = v15;
  *(&v47 + 1) = v17;
  *&v48 = v30;
  *(&v48 + 1) = v18;
  v51 = 4;
  sub_22F741FE0();
  v47 = v36;
  v48 = v35;
  v49 = v34;
  v51 = 5;
  sub_22F741F70();
  v47 = v33;
  v48 = v32;
  v49 = v20;
  v51 = 6;
  sub_22F741F70();
  return (*(v4 + 8))(v7, v22);
}

uint64_t JobConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27B0, &qword_22F77AD50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222BFC();
  sub_22F742200();
  if (!v2)
  {
    v42 = 0;
    sub_22F222CA4();
    sub_22F741F10();
    v11 = v36;
    v12 = v37;
    v42 = 1;
    sub_22F741EA0();
    v34 = v36;
    v35 = v37;
    v41 = v38;
    v42 = 2;
    sub_22F741F10();
    v13 = v36;
    v14 = *(&v37 + 1);
    v33 = v37;
    v42 = 3;
    sub_22F741F10();
    v32 = v13;
    v15 = v36;
    v16 = *(&v37 + 1);
    v31 = v37;
    v42 = 4;
    sub_22F741F10();
    v28 = *(&v15 + 1);
    v29 = v15;
    v30 = v16;
    v17 = v36;
    v18 = *(&v37 + 1);
    v27 = v37;
    v42 = 5;
    sub_22F741EA0();
    v26 = v37;
    v25 = v36;
    v40 = v38;
    v42 = 6;
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    v20 = v38;
    v39 = v38;
    v21 = v41;
    v22 = v40;
    *a2 = v11;
    *(a2 + 16) = v12;
    v23 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v23;
    *(a2 + 64) = v21;
    *(a2 + 72) = v32;
    *(a2 + 80) = *(&v13 + 1);
    *(a2 + 88) = v33;
    *&v23 = v29;
    *(a2 + 96) = v14;
    *(a2 + 104) = v23;
    *(a2 + 112) = v28;
    *(a2 + 120) = v31;
    *(a2 + 128) = v30;
    *(a2 + 136) = v17;
    *(a2 + 152) = v27;
    *(a2 + 160) = v18;
    *(a2 + 168) = v25;
    *(a2 + 184) = v26;
    *(a2 + 200) = v22;
    v24 = v37;
    *(a2 + 208) = v36;
    *(a2 + 224) = v24;
    *(a2 + 240) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F220F88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7A69536863746162;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v3)
  {
    v5 = 0x800000022F78E380;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x7A69536863746162;
  }

  else
  {
    v6 = 0xD00000000000001CLL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x800000022F78E380;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F221038()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2210C4()
{
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F22113C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2211C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F741E30();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22F221224(unint64_t *a1@<X8>)
{
  v2 = 0x800000022F78E380;
  v3 = 0xD00000000000001CLL;
  if (*v1)
  {
    v3 = 0x7A69536863746162;
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_22F22126C()
{
  if (*v0)
  {
    result = 0x7A69536863746162;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_22F2212B0@<X0>(char *a1@<X8>)
{
  v2 = sub_22F741E30();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22F221314(uint64_t a1)
{
  v2 = sub_22F222CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F221350(uint64_t a1)
{
  v2 = sub_22F222CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CacheRefreshConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27B8, &qword_22F77AD58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27C0, &qword_22F77AD60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222CF8();
  sub_22F742200();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_22F120ADC(v7, &qword_27DAB27B8, &qword_22F77AD58);
    v14 = 200;
    v15 = 604800.0;
LABEL_82:
    v47 = v50;
    *v50 = v15;
    *(v47 + 1) = v14;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  LOBYTE(v51[0]) = 0;
  v16 = sub_22F741E50();
  if (v17)
  {
    v51[0] = 0;
    v20 = sub_22F222738(v16, v17);

    if (v20)
    {
      v15 = *v51;
    }

    else
    {
      v15 = 604800.0;
    }
  }

  else
  {
    LOBYTE(v51[0]) = 0;
    v18 = sub_22F741E90();
    if (v19)
    {
      v15 = 604800.0;
    }

    else
    {
      v15 = v18;
    }
  }

  LOBYTE(v51[0]) = 1;
  result = sub_22F741E50();
  if (!v22)
  {
    LOBYTE(v51[0]) = 1;
    v14 = sub_22F741E90();
    v31 = v30;
    (*(v9 + 8))(v12, v8);
    if (v31)
    {
      v14 = 200;
    }

    goto LABEL_82;
  }

  v23 = HIBYTE(v22) & 0xF;
  v24 = result & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v25 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    (*(v9 + 8))(v12, v8);

LABEL_14:
    v14 = 200;
    goto LABEL_82;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    v14 = sub_22F29C288(result, v22, 10);
    v46 = v48;
LABEL_81:
    (*(v9 + 8))(v12, v8);

    if ((v46 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_14;
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_22F741B80();
      v24 = v49;
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        if (--v24)
        {
          v14 = 0;
          if (result)
          {
            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_79;
              }

              v37 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_79;
              }

              v14 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_79;
              }

              ++v35;
              if (!--v24)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_78;
        }

        goto LABEL_79;
      }

      goto LABEL_88;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              goto LABEL_79;
            }

            v42 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_79;
            }

            v14 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_78;
      }

LABEL_79:
      v14 = 0;
      LOBYTE(v24) = 1;
      goto LABEL_80;
    }

    if (v24 >= 1)
    {
      if (--v24)
      {
        v14 = 0;
        if (result)
        {
          v27 = (result + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_79;
            }

            v29 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_79;
            }

            v14 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              goto LABEL_79;
            }

            ++v27;
            if (!--v24)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_78:
        LOBYTE(v24) = 0;
LABEL_80:
        v52 = v24;
        v46 = v24;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v51[0] = result;
  v51[1] = v22 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v23)
      {
        v14 = 0;
        v43 = v51;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          ++v43;
          if (!--v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_79;
    }

    if (v23)
    {
      v24 = v23 - 1;
      if (v23 != 1)
      {
        v14 = 0;
        v32 = v51 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (v23)
  {
    v24 = v23 - 1;
    if (v23 != 1)
    {
      v14 = 0;
      v38 = v51 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          break;
        }

        v14 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v38;
        if (!--v24)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t CacheRefreshConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27C8, &qword_22F77AD68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *v1;
  v13 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222CF8();
  result = sub_22F742210();
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = 0;
  sub_22F741FC0();
  if (!v2)
  {
    v14 = 1;
    sub_22F741FC0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t static MusicBagContents.defaultPersonalMixIdentifersToNames.getter()
{
  if (qword_27DAAFDE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22F221D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_22F14F0AC(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

__n128 MusicBagContents.jobConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *(a1 + 192) = *(v1 + 200);
  *(a1 + 208) = v2;
  *(a1 + 224) = *(v1 + 232);
  *(a1 + 240) = *(v1 + 248);
  v3 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v3;
  v4 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v4;
  v5 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v5;
  v6 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v6;
  v7 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v7;
  result = *(v1 + 40);
  v9 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

double MusicBagContents.cacheRefreshConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 256);
  v3 = *(v1 + 264);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_22F221E04()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_22F221E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F2238DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F221EC4(uint64_t a1)
{
  v2 = sub_22F222D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F221F00(uint64_t a1)
{
  v2 = sub_22F222D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicBagContents.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27D0, &unk_22F77AD70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = *v2;
  v10 = v2[32];
  v11 = v2[33];
  v23[1] = v2[34];
  v24 = v11;
  v23[0] = v2[35];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222D4C();

  sub_22F742210();
  *&v26 = v9;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  sub_22F222E48(&qword_2810A93B0);
  v13 = v25;
  sub_22F741FE0();
  if (v13)
  {
  }

  else
  {
    v14 = v24;

    v15 = *(v2 + 27);
    v38 = *(v2 + 25);
    v39 = v15;
    v40 = *(v2 + 29);
    v41 = *(v2 + 248);
    v16 = *(v2 + 19);
    v34 = *(v2 + 17);
    v35 = v16;
    v17 = *(v2 + 23);
    v36 = *(v2 + 21);
    v37 = v17;
    v18 = *(v2 + 11);
    v30 = *(v2 + 9);
    v31 = v18;
    v19 = *(v2 + 15);
    v32 = *(v2 + 13);
    v33 = v19;
    v20 = *(v2 + 3);
    v26 = *(v2 + 1);
    v27 = v20;
    v21 = *(v2 + 7);
    v28 = *(v2 + 5);
    v29 = v21;
    v42 = 1;
    sub_22F222DA0();
    sub_22F741FE0();
    *&v26 = v10;
    *(&v26 + 1) = v14;
    v42 = 2;
    sub_22F222DF4();
    sub_22F741FE0();
    LOBYTE(v26) = 3;
    sub_22F741FC0();
    LOBYTE(v26) = 4;
    sub_22F741FC0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicBagContents.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27D8, &qword_22F77AD80);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222D4C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  LOBYTE(v25[0]) = 0;
  sub_22F222E48(&qword_2810A93A8);
  sub_22F741F10();
  v12 = v26;
  v48 = 1;
  sub_22F1ED9CC();
  sub_22F741F10();
  v13 = v10;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  LOBYTE(v25[0]) = 2;
  sub_22F1EDA20();
  sub_22F741F10();
  v14 = v26;
  v15 = v27;
  LOBYTE(v26) = 3;
  v23 = sub_22F741EF0();
  v47 = 4;
  v16 = sub_22F741EF0();
  v17 = *(v13 + 8);
  v22 = v16;
  v17(v8, v24);
  *&v25[25] = v77;
  *&v25[27] = v78;
  *&v25[29] = v79;
  *&v25[17] = v73;
  *&v25[19] = v74;
  *&v25[21] = v75;
  *&v25[23] = v76;
  *&v25[9] = v69;
  *&v25[11] = v70;
  *&v25[13] = v71;
  *&v25[15] = v72;
  *&v25[1] = v65;
  *&v25[3] = v66;
  *&v25[5] = v67;
  v25[0] = v12;
  LOBYTE(v25[31]) = v80;
  *&v25[7] = v68;
  v25[32] = v14;
  v19 = v22;
  v18 = v23;
  v25[33] = v15;
  v25[34] = v23;
  v25[35] = v22;
  memcpy(v11, v25, 0x120uLL);
  sub_22F1ED970(v25, &v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39 = v77;
  v40 = v78;
  v41 = v79;
  v35 = v73;
  v36 = v74;
  v37 = v75;
  v38 = v76;
  v31 = v69;
  v32 = v70;
  v33 = v71;
  v34 = v72;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v26 = v12;
  v42 = v80;
  v30 = v68;
  v43 = v14;
  v44 = v15;
  v45 = v18;
  v46 = v19;
  return sub_22F162EC8(&v26);
}

unint64_t sub_22F2226E4()
{
  result = qword_2810AB768[0];
  if (!qword_2810AB768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AB768);
  }

  return result;
}

BOOL sub_22F222738(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22F741AF0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t _s11PhotosGraph16JobConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return result;
  }

  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
    {
      return result;
    }
  }

  result = 0;
  v5.f64[1] = *(a1 + 128);
  v6.f64[1] = *(a2 + 128);
  v5.f64[0] = *(a1 + 112);
  v6.f64[0] = *(a2 + 112);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 96), *(a2 + 96))), vuzp1q_s32(vceqq_f64(v5, v6), vceqq_f64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && *(a1 + 160) == *(a2 + 160) && *(a1 + 88) == *(a2 + 88) && *(a1 + 120) == *(a2 + 120) && *(a1 + 152) == *(a2 + 152))
  {
    if (*(a1 + 200))
    {
      if (*(a2 + 200))
      {
        goto LABEL_28;
      }

      return 0;
    }

    if (*(a2 + 200))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192))
    {
LABEL_28:
      if (*(a1 + 240))
      {
        if (*(a2 + 240))
        {
          return 1;
        }
      }

      else if ((*(a2 + 240) & 1) == 0 && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224) && *(a1 + 232) == *(a2 + 232))
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v6 = *(a1 + 264);
  v5 = *(a1 + 272);
  v7 = *(a1 + 280);
  v8 = *(a2 + 256);
  v10 = *(a2 + 264);
  v9 = *(a2 + 272);
  v11 = *(a2 + 280);
  if ((sub_22F15BB70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 216);
  v30[12] = *(a1 + 200);
  v30[13] = v12;
  v30[14] = *(a1 + 232);
  v31 = *(a1 + 248);
  v13 = *(a1 + 152);
  v30[8] = *(a1 + 136);
  v30[9] = v13;
  v14 = *(a1 + 184);
  v30[10] = *(a1 + 168);
  v30[11] = v14;
  v15 = *(a1 + 88);
  v30[4] = *(a1 + 72);
  v30[5] = v15;
  v16 = *(a1 + 120);
  v30[6] = *(a1 + 104);
  v30[7] = v16;
  v17 = *(a1 + 24);
  v30[0] = *(a1 + 8);
  v30[1] = v17;
  v18 = *(a1 + 56);
  v30[2] = *(a1 + 40);
  v30[3] = v18;
  v19 = *(a2 + 216);
  v28[12] = *(a2 + 200);
  v28[13] = v19;
  v28[14] = *(a2 + 232);
  v29 = *(a2 + 248);
  v20 = *(a2 + 152);
  v28[8] = *(a2 + 136);
  v28[9] = v20;
  v21 = *(a2 + 184);
  v28[10] = *(a2 + 168);
  v28[11] = v21;
  v22 = *(a2 + 88);
  v28[4] = *(a2 + 72);
  v28[5] = v22;
  v23 = *(a2 + 120);
  v28[6] = *(a2 + 104);
  v28[7] = v23;
  v24 = *(a2 + 24);
  v28[0] = *(a2 + 8);
  v28[1] = v24;
  v25 = *(a2 + 56);
  v28[2] = *(a2 + 40);
  v28[3] = v25;
  v26 = _s11PhotosGraph16JobConfigurationV2eeoiySbAC_ACtFZ_0(v30, v28) & (v4 == v8);
  if (v6 != v10)
  {
    v26 = 0;
  }

  if (v5 != v9)
  {
    v26 = 0;
  }

  if (v7 == v11)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22F222BFC()
{
  result = qword_2810AB740;
  if (!qword_2810AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB740);
  }

  return result;
}

unint64_t sub_22F222C50()
{
  result = qword_2810AB750;
  if (!qword_2810AB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB750);
  }

  return result;
}

unint64_t sub_22F222CA4()
{
  result = qword_2810AB748;
  if (!qword_2810AB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB748);
  }

  return result;
}

unint64_t sub_22F222CF8()
{
  result = qword_2810AA3D8;
  if (!qword_2810AA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3D8);
  }

  return result;
}

unint64_t sub_22F222D4C()
{
  result = qword_2810AB5F8[0];
  if (!qword_2810AB5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AB5F8);
  }

  return result;
}

unint64_t sub_22F222DA0()
{
  result = qword_2810AB728;
  if (!qword_2810AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB728);
  }

  return result;
}

unint64_t sub_22F222DF4()
{
  result = qword_2810AA3C0;
  if (!qword_2810AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3C0);
  }

  return result;
}

uint64_t sub_22F222E48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0800, &qword_22F78A570);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_22F222F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 241))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F222F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = (a2 - 1);
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

  *(result + 241) = v3;
  return result;
}

uint64_t sub_22F222FC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_22F22300C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JobConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JobConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F22322C()
{
  result = qword_27DAB27E0;
  if (!qword_27DAB27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27E0);
  }

  return result;
}

unint64_t sub_22F223284()
{
  result = qword_27DAB27E8;
  if (!qword_27DAB27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27E8);
  }

  return result;
}

unint64_t sub_22F2232DC()
{
  result = qword_27DAB27F0;
  if (!qword_27DAB27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27F0);
  }

  return result;
}

unint64_t sub_22F223334()
{
  result = qword_27DAB27F8;
  if (!qword_27DAB27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27F8);
  }

  return result;
}

unint64_t sub_22F22338C()
{
  result = qword_2810AB5E8;
  if (!qword_2810AB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5E8);
  }

  return result;
}

unint64_t sub_22F2233E4()
{
  result = qword_2810AB5F0;
  if (!qword_2810AB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5F0);
  }

  return result;
}

unint64_t sub_22F22343C()
{
  result = qword_2810AA3C8;
  if (!qword_2810AA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3C8);
  }

  return result;
}

unint64_t sub_22F223494()
{
  result = qword_2810AA3D0;
  if (!qword_2810AA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3D0);
  }

  return result;
}

unint64_t sub_22F2234EC()
{
  result = qword_2810AB730;
  if (!qword_2810AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB730);
  }

  return result;
}

unint64_t sub_22F223544()
{
  result = qword_2810AB738;
  if (!qword_2810AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB738);
  }

  return result;
}

unint64_t sub_22F22359C()
{
  result = qword_2810AB758;
  if (!qword_2810AB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB758);
  }

  return result;
}

unint64_t sub_22F2235F4()
{
  result = qword_2810AB760;
  if (!qword_2810AB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB760);
  }

  return result;
}

uint64_t sub_22F223648()
{
  v0 = sub_22F741E30();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22F223694(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F46636973756DLL && a2 == 0xEB00000000756F59;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xED00006369706F54 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEE00746E656D6F4DLL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F78E880 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F78E8A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22F2238DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000022F792510 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7919A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022F7919C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F791900 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022F791950 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

_BYTE *sub_22F223A94@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static MusicKitCatalogPlaylist.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F223BB8()
{
  if (*v0)
  {
    result = 0x7473696C79616C70;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_22F223BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

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

uint64_t sub_22F223CD4(uint64_t a1)
{
  v2 = sub_22F223EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F223D10(uint64_t a1)
{
  v2 = sub_22F223EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2800, &qword_22F77B4F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F223EE0();
  sub_22F742210();
  v16 = 0;
  v12 = v14[3];
  sub_22F741F80();
  if (!v12)
  {
    v15 = 1;
    sub_22F741F80();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F223EE0()
{
  result = qword_27DAB2808;
  if (!qword_27DAB2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2808);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2810, &qword_22F77B4F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F223EE0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_22F741EB0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_22F741EB0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static MusicKitCatalogPlaylist.Relationships.Artwork.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F2241B0(uint64_t a1)
{
  v2 = sub_22F2243E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2241EC(uint64_t a1)
{
  v2 = sub_22F2243E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.Artwork.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2818, &qword_22F77B500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2243E4();
  sub_22F742210();
  v17 = 0;
  sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_22F741FC0();
  v15 = 2;
  sub_22F741F80();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22F2243E4()
{
  result = qword_27DAB2820;
  if (!qword_27DAB2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2820);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2828, &qword_22F77B508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2243E4();
  sub_22F742200();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_22F741EF0();
    v20 = 1;
    v18 = sub_22F741EF0();
    v19 = 2;
    v13 = sub_22F741EB0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v11;
    a2[1] = v16;
    a2[2] = v13;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F224640(uint64_t a1)
{
  v2 = sub_22F22485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F22467C(uint64_t a1)
{
  v2 = sub_22F22485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.PlaylistToSongs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2830, &unk_22F77B510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F22485C();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
  sub_22F224AB4(&qword_27DAB2840, sub_22F2248B0);
  sub_22F741FE0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F22485C()
{
  result = qword_27DAB2838;
  if (!qword_27DAB2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2838);
  }

  return result;
}

unint64_t sub_22F2248B0()
{
  result = qword_27DAB2848;
  if (!qword_27DAB2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2848);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.PlaylistToSongs.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2850, &qword_22F77B520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F22485C();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F224AB4(&qword_2810A9320, sub_22F1A8480);
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F224AB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1EE8, &qword_22F777808);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F224B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F224BF4(uint64_t a1)
{
  v2 = sub_22F224DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F224C30(uint64_t a1)
{
  v2 = sub_22F224DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2858, &qword_22F77B528);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F224DCC();

  sub_22F742210();
  v11[1] = v8;
  sub_22F224E20();
  sub_22F741FE0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F224DCC()
{
  result = qword_27DAB2860;
  if (!qword_27DAB2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2860);
  }

  return result;
}

unint64_t sub_22F224E20()
{
  result = qword_27DAB2868;
  if (!qword_27DAB2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2868);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2870, &qword_22F77B530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F224DCC();
  sub_22F742200();
  if (!v2)
  {
    sub_22F224FE0();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F224FE0()
{
  result = qword_27DAB2878;
  if (!qword_27DAB2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2878);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitCatalogPlaylist.attributes.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_22F2250E4()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6974616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22F225144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F225C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F22516C(uint64_t a1)
{
  v2 = sub_22F2254AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2251A8(uint64_t a1)
{
  v2 = sub_22F2254AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2880, &qword_22F77B538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2254AC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_22F741EB0();
  v24 = v12;
  v29 = 1;
  sub_22F225500();
  sub_22F741F10();
  v20 = v27;
  v21 = v25;
  v22 = v28;
  v23 = v26;
  v29 = 2;
  sub_22F225554();
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v14 = v24;
  v13 = v25;
  *a2 = v11;
  a2[1] = v14;
  v15 = v20;
  v17 = v22;
  v16 = v23;
  a2[2] = v21;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v17;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F2254AC()
{
  result = qword_27DAB2888;
  if (!qword_27DAB2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2888);
  }

  return result;
}

unint64_t sub_22F225500()
{
  result = qword_27DAB2890;
  if (!qword_27DAB2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2890);
  }

  return result;
}

unint64_t sub_22F225554()
{
  result = qword_27DAB2898;
  if (!qword_27DAB2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2898);
  }

  return result;
}

uint64_t sub_22F2255C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F225608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F2256F8()
{
  result = qword_27DAB28A0;
  if (!qword_27DAB28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28A0);
  }

  return result;
}

unint64_t sub_22F225750()
{
  result = qword_27DAB28A8;
  if (!qword_27DAB28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28A8);
  }

  return result;
}

unint64_t sub_22F2257A8()
{
  result = qword_27DAB28B0;
  if (!qword_27DAB28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28B0);
  }

  return result;
}

unint64_t sub_22F225800()
{
  result = qword_27DAB28B8;
  if (!qword_27DAB28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28B8);
  }

  return result;
}

unint64_t sub_22F225858()
{
  result = qword_27DAB28C0;
  if (!qword_27DAB28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28C0);
  }

  return result;
}

unint64_t sub_22F2258B0()
{
  result = qword_27DAB28C8;
  if (!qword_27DAB28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28C8);
  }

  return result;
}

unint64_t sub_22F225908()
{
  result = qword_27DAB28D0;
  if (!qword_27DAB28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28D0);
  }

  return result;
}

unint64_t sub_22F225960()
{
  result = qword_27DAB28D8;
  if (!qword_27DAB28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28D8);
  }

  return result;
}

unint64_t sub_22F2259B8()
{
  result = qword_27DAB28E0;
  if (!qword_27DAB28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28E0);
  }

  return result;
}

unint64_t sub_22F225A10()
{
  result = qword_27DAB28E8;
  if (!qword_27DAB28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28E8);
  }

  return result;
}

unint64_t sub_22F225A68()
{
  result = qword_27DAB28F0;
  if (!qword_27DAB28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28F0);
  }

  return result;
}

unint64_t sub_22F225AC0()
{
  result = qword_27DAB28F8;
  if (!qword_27DAB28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28F8);
  }

  return result;
}

unint64_t sub_22F225B18()
{
  result = qword_27DAB2900;
  if (!qword_27DAB2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2900);
  }

  return result;
}

unint64_t sub_22F225B70()
{
  result = qword_27DAB2908;
  if (!qword_27DAB2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2908);
  }

  return result;
}

unint64_t sub_22F225BC8()
{
  result = qword_27DAB2910;
  if (!qword_27DAB2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2910);
  }

  return result;
}

uint64_t sub_22F225C1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static MomentGraphFeature.extractors(for:with:in:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a3;
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *v8++;
      switch(v10)
      {
        case 1:
          v33 = PGPOIFeatureExtractor;
          goto LABEL_20;
        case 2:
          v32 = PGROIFeatureExtractor;
          goto LABEL_27;
        case 3:
          v26 = PGPartOfDayFeatureExtractor;
          goto LABEL_33;
        case 4:
          v26 = type metadata accessor for DayOfWeekFeatureExtractor();
          goto LABEL_33;
        case 5:
          v26 = type metadata accessor for AtFrequentLocationFeatureExtractor();
          goto LABEL_33;
        case 6:
          v32 = PGMobilityFeatureExtractor;
LABEL_27:
          v35 = objc_allocWithZone(v32);
          *&v57[0] = 0;
          v12 = [v35 initWithVersion:2 error:v57];
          goto LABEL_34;
        case 7:
          v33 = PGPublicEventCategoryFeatureExtractor;
LABEL_20:
          v34 = objc_allocWithZone(v33);
          *&v57[0] = 0;
          v12 = [v34 initWithVersion:3 error:v57];
          goto LABEL_34;
        case 8:
          v26 = type metadata accessor for AtHomeOrWorkFeatureExtractor();
LABEL_33:
          v40 = objc_allocWithZone(v26);
          *&v57[0] = 0;
          v12 = [v40 initWithError_];
          goto LABEL_34;
        case 9:
          v30 = objc_allocWithZone(type metadata accessor for FeatureExtractorAverageMomentScenes());
          v31 = v7;
          sub_22F23FAF0(0, v31);

          goto LABEL_29;
        case 10:
          IsInteresting = type metadata accessor for FeatureExtractorIsInteresting();
          v37 = objc_allocWithZone(IsInteresting);
          v38 = [a2 interestingSubset];
          *&v37[OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes] = v38;
          v39 = [a2 smartInterestingSubset];
          *&v37[OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes] = v39;
          v54.receiver = v37;
          v54.super_class = IsInteresting;
          objc_msgSendSuper2(&v54, sel_init);
LABEL_29:
          MEMORY[0x231900D00]();
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v9 = v60;
          goto LABEL_4;
        case 11:
          v51 = v5;
          HasBirthdayFeatureExtractor = type metadata accessor for MomentHasBirthdayFeatureExtractor();
          v17 = objc_allocWithZone(HasBirthdayFeatureExtractor);
          v18 = objc_opt_self();
          v19 = a2;
          v20 = [v18 personInMoment];
          v21 = [objc_msgSend(v19 graph)];
          swift_unknownObjectRelease();
          v22 = [v21 concreteGraph];

          if (!v22)
          {
            result = sub_22F741D40();
            __break(1u);
            return result;
          }

          v23 = [v19 elementIdentifiers];
          v24 = [v22 adjacencyWithSources:v23 relation:v20];

          v25 = &v17[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
          *v25 = v24;
          *(v25 + 1) = v22;
          v55.receiver = v17;
          v55.super_class = HasBirthdayFeatureExtractor;
          objc_msgSendSuper2(&v55, sel_init);

          MEMORY[0x231900D00]();
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v44 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v9 = v60;
          v7 = a3;
          v4 = a4;
          v5 = v51;
LABEL_4:
          if (!--v6)
          {
            goto LABEL_38;
          }

          break;
        case 12:
          v27 = [objc_allocWithZone(type metadata accessor for FeatureExtractorStoredCLIP()) init];
          v28 = type metadata accessor for FeatureExtractorAssetAverage();
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = v27;
          v29[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = 1;
          v56.receiver = v29;
          v56.super_class = v28;
          objc_msgSendSuper2(&v56, sel_init);
          goto LABEL_23;
        case 13:
          [objc_allocWithZone(type metadata accessor for LibraryAveragePersonCountFeatureExtractor()) init];
          goto LABEL_23;
        case 14:
          v13 = [objc_allocWithZone(type metadata accessor for FeatureExtractorCircularDatetime()) init];
          v14 = type metadata accessor for FeatureExtractorAssetAverage();
          v15 = objc_allocWithZone(v14);
          *&v15[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = v13;
          v15[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = 1;
          v58.receiver = v15;
          v58.super_class = v14;
          objc_msgSendSuper2(&v58, sel_init);
LABEL_23:
          MEMORY[0x231900D00]();
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v53 = v59;
          goto LABEL_4;
        default:
          v11 = objc_allocWithZone(PGPeopleFeatureExtractor);
          *&v57[0] = 0;
          v12 = [v11 initWithTopNumberOfPeople:10 graph:v7 error:v57];
LABEL_34:
          if (!v12)
          {
            v47 = *&v57[0];
            sub_22F73F370();

            swift_willThrow();

            goto LABEL_40;
          }

          MEMORY[0x231900D00](*&v57[0]);
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v5 = v61;
          goto LABEL_4;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
LABEL_38:
  result = EventFeatureExtractors.init(graphFeatureExtractors:momentNodeFeatureExtractors:assetFetchResultFeatureExtractors:)(v5, v9, v53, v57);
  v46 = v57[1];
  *v4 = v57[0];
  v4[1] = v46;
LABEL_40:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

PhotosGraph::MomentGraphFeature __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MomentGraphFeature.init(featureName:)(Swift::String featureName)
{
  object = featureName._object;
  countAndFlagsBits = featureName._countAndFlagsBits;
  v4 = v1;
  if (sub_22F740E20() == featureName._countAndFlagsBits && v5 == object)
  {
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_22F742040();

  if (v7)
  {
    v8 = 0;
LABEL_9:

    *v4 = v8;
    return result;
  }

  if (sub_22F740E20() == countAndFlagsBits && v10 == object)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v12 = sub_22F742040();

  if (v12)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v13 == object)
  {
    v8 = 2;
    goto LABEL_8;
  }

  v15 = sub_22F742040();

  if (v15)
  {
    v8 = 2;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v16 == object)
  {
    v8 = 3;
    goto LABEL_8;
  }

  v17 = sub_22F742040();

  if (v17)
  {
    v8 = 3;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v18 == object)
  {
    v8 = 4;
    goto LABEL_8;
  }

  v19 = sub_22F742040();

  if (v19)
  {
    v8 = 4;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v20 == object)
  {
    v8 = 5;
    goto LABEL_8;
  }

  v21 = sub_22F742040();

  if (v21)
  {
    v8 = 5;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v22 == object)
  {
    v8 = 6;
    goto LABEL_8;
  }

  v23 = sub_22F742040();

  if (v23)
  {
    v8 = 6;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v24 == object)
  {
    v8 = 7;
    goto LABEL_8;
  }

  v25 = sub_22F742040();

  if (v25)
  {
    v8 = 7;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v26 == object)
  {
    v8 = 8;
    goto LABEL_8;
  }

  v27 = sub_22F742040();

  if (v27)
  {
    v8 = 8;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v28 == object)
  {
    v8 = 9;
    goto LABEL_8;
  }

  v29 = sub_22F742040();

  if (v29)
  {
    v8 = 9;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v30 == object)
  {
    v8 = 10;
    goto LABEL_8;
  }

  v31 = sub_22F742040();

  if (v31)
  {
    v8 = 10;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v32 == object)
  {
    v8 = 11;
    goto LABEL_8;
  }

  v33 = sub_22F742040();

  if (v33)
  {
    v8 = 11;
    goto LABEL_9;
  }

  v43 = sub_22F740E20();
  v45 = v34;
  MEMORY[0x231900B10](95, 0xE100000000000000);
  v35 = sub_22F740E20();
  MEMORY[0x231900B10](v35);

  if (v43 == countAndFlagsBits && v45 == object)
  {
    v8 = 12;
    goto LABEL_8;
  }

  v36 = sub_22F742040();

  if (v36)
  {
    v8 = 12;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v37 == object)
  {
    v8 = 13;
    goto LABEL_8;
  }

  v38 = sub_22F742040();

  if (v38)
  {
    v8 = 13;
    goto LABEL_9;
  }

  v44 = sub_22F740E20();
  v46 = v39;
  MEMORY[0x231900B10](95, 0xE100000000000000);
  v40 = sub_22F740E20();
  MEMORY[0x231900B10](v40);

  if (v44 == countAndFlagsBits && v46 == object)
  {
    v8 = 14;
    goto LABEL_8;
  }

  v41 = sub_22F742040();

  if (v41)
  {
    v8 = 14;
    goto LABEL_9;
  }

  sub_22F176540();
  swift_allocError();
  *v42 = countAndFlagsBits;
  v42[1] = object;
  v42[2] = 0x4000000000000000;
  return swift_willThrow();
}

uint64_t MomentGraphFeature.FeatureType.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t MomentGraphFeature.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t sub_22F226B04()
{
  result = qword_27DAB2918;
  if (!qword_27DAB2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2918);
  }

  return result;
}

unint64_t sub_22F226B5C()
{
  result = qword_27DAB2920;
  if (!qword_27DAB2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2920);
  }

  return result;
}

unint64_t sub_22F226BB4()
{
  result = qword_27DAB2928;
  if (!qword_27DAB2928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2930, &qword_22F77BE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MomentGraphFeature(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MomentGraphFeature(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_22F226D78()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    if (v2 < 0)
    {
      v10 = *v0;
    }

    result = sub_22F741A00();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 8);
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = MEMORY[0x2319016F0](*(v0 + 8), v2);
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_20;
  }

LABEL_10:
  *(v0 + 8) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v6 < v7)
  {
    v8 = result;
    v9 = *(v5 + 8 * v6 + 32);
    *(v0 + 24) = v6 + 1;

    return v8;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_22F226E88(id result)
{
  if (*(v2 + 56))
  {
    return 0;
  }

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = *(v2 + 24);
LABEL_12:
    v10 = (*(*v2 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v5)))));
    v3 = *v10;
    result = v10[1];
    *(v2 + 24) = v6;
    *(v2 + 32) = (v5 - 1) & v5;
    v1 = *(v2 + 40);
    if (!(v1 >> 62))
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  else
  {
    v7 = (*(v2 + 16) + 64) >> 6;
    if (v7 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = (*(v2 + 16) + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        *(v2 + 24) = v9;
        *(v2 + 32) = 0;
        goto LABEL_22;
      }

      v5 = *(*(v2 + 8) + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  v14 = result;
  v11 = sub_22F741A00();
  result = v14;
LABEL_14:
  v12 = *(v2 + 48);
  if (v12 == v11)
  {
LABEL_22:
    result = 0;
    *(v2 + 56) = 1;
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    result = MEMORY[0x2319016F0](v12, v1);
LABEL_19:
    if (!__OFADD__(v12, 1))
    {
      result = v3;
      *(v2 + 48) = v12 + 1;
      return result;
    }

    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v1 + 8 * v12 + 32);

    result = v13;
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_22F227010(_OWORD *a1@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return;
  }

  v8 = *(v2 + 8);
  v9 = *(*v2 + 16);
  if (v8 == v9)
  {
    goto LABEL_8;
  }

  if (v8 >= v9)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v2 + 40 * v8);
    v6 = v10[4];
    v1 = v10[5];
    v7 = v10[6];
    v3 = v10[7];
    v4 = v10[8];
    *(v2 + 8) = v8 + 1;
    v5 = *(v2 + 16);
    if (!(v5 >> 62))
    {
      v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v17 = a1;
  v11 = sub_22F741A00();
  a1 = v17;
LABEL_7:
  v12 = *(v2 + 24);
  if (v12 == v11)
  {
LABEL_8:
    *(v2 + 32) = 1;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v13 = a1;

    v15 = MEMORY[0x2319016F0](v12, v5);
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a1;
  if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v5 + 8 * v12 + 32);

    v15 = v14;
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
LABEL_13:
      *(v2 + 24) = v16;
      *v13 = v6;
      v13[1] = v1;
      v13[2] = v7;
      v13[3] = v3;
      v13[4] = v4;
      v13[5] = v15;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t MusicKitClient.requestFactory.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t sub_22F227238()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_22F227268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v59 = a6;
  v57 = a4;
  v58 = a5;
  v60 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = sub_22F73EEC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v21 = sub_22F740B90();
  __swift_project_value_buffer(v21, qword_2810B4D48);
  v22 = *(v17 + 16);
  v56 = a1;
  v22(v20, a1, v16);
  v23 = sub_22F740B70();
  v24 = sub_22F7415C0();
  if (os_log_type_enabled(v23, v24))
  {
    v54 = a8;
    v55 = a7;
    v25 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    v53 = v25;
    *v25 = 136315138;
    sub_22F73EEB0();
    v26 = sub_22F73F470();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v15, 1, v26) == 1)
    {
      sub_22F120ADC(v15, &qword_27DAB29A0, &unk_22F77BFC0);
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      v29 = sub_22F73F3A0();
      v28 = v30;
      (*(v27 + 8))(v15, v26);
    }

    (*(v17 + 8))(v20, v16);
    v31 = sub_22F145F20(v29, v28, &aBlock);

    v32 = v53;
    *(v53 + 1) = v31;
    _os_log_impl(&dword_22F0FC000, v23, v24, "[MusicKitClient] Query: %s", v32, 0xCu);
    v33 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x2319033A0](v33, -1, -1);
    MEMORY[0x2319033A0](v32, -1, -1);

    a8 = v54;
    a7 = v55;
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v60;
  v35 = *(v60 + 23);
  v36 = objc_allocWithZone(MEMORY[0x277D7FB38]);
  if (v35)
  {
    v65 = sub_22F22F778;
    v66 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_22F22F7B0;
    v64 = &block_descriptor_275;
    v37 = _Block_copy(&aBlock);
    v36 = [v36 initWithBlock_];
    _Block_release(v37);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
LABEL_13:
      v39 = objc_allocWithZone(MEMORY[0x277D7FB40]);
      v40 = v36;
      v41 = sub_22F73EE90();
      v42 = [v39 initWithURLRequest:v41 requestContext:v40];

      v43 = v42;
      [v43 setMaxRetryCount_];
      v44 = [objc_opt_self() sharedSessionManager];
      v45 = [v44 sessionWithQualityOfService_];

      v46 = swift_allocObject();
      v47 = v58;
      *(v46 + 16) = v57;
      *(v46 + 24) = v47;
      *(v46 + 32) = v59;
      *(v46 + 40) = a7;
      *(v46 + 48) = a8;
      *(v46 + 56) = a9;
      v65 = sub_22F236030;
      v66 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_22F16AC08;
      v64 = &block_descriptor_272;
      v48 = _Block_copy(&aBlock);
      a7;

      [v45 enqueueDataRequest:v43 withCompletionHandler:v48];
      _Block_release(v48);
      v49 = [v43 progress];

      v50 = sub_22F741720();
      return;
    }

    __break(1u);
  }

  v65 = sub_22F22F794;
  v66 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_22F22F7B0;
  v64 = &block_descriptor_266;
  v38 = _Block_copy(&aBlock);
  v36 = [v36 initWithBlock_];
  _Block_release(v38);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

void sub_22F2278EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, unint64_t, uint64_t), uint64_t a8)
{
  v46[2] = a8;
  v47 = a7;
  v46[1] = a6;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v11 + 8))(v14, v10);
  if (!a1)
  {
    sub_22F7416A0();
    type metadata accessor for MusicKitClientError();
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v34 = swift_allocError();
    *v35 = a2;
    swift_storeEnumTagMultiPayload();
    v36 = a2;
    v47(v34, 0, 1);

    return;
  }

  v15 = a1;
  v16 = [v15 parsedBodyDictionary];
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  v18 = sub_22F740CA0();

  v19 = [v15 bodyData];
  if (!v19)
  {

LABEL_22:
    sub_22F7416A0();
    type metadata accessor for MusicKitClientError();
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v42 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v47(v42, 0, 1);

    return;
  }

  v20 = v19;
  v21 = sub_22F73F510();
  v23 = v22;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v24 = sub_22F740B90();
  __swift_project_value_buffer(v24, qword_2810B4D48);

  v25 = sub_22F740B70();
  v26 = sub_22F7415D0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v51[0] = v28;
    *v27 = 136315138;
    v29 = sub_22F740CB0();
    v31 = sub_22F145F20(v29, v30, v51);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[MusicKitClient] Response: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2319033A0](v28, -1, -1);
    MEMORY[0x2319033A0](v27, -1, -1);
  }

  *&v50[0] = 0x73726F727265;
  *(&v50[0] + 1) = 0xE600000000000000;
  sub_22F741A90();
  if (*(v18 + 16) && (v32 = sub_22F122B24(v51), (v33 & 1) != 0))
  {
    sub_22F13A100(*(v18 + 56) + 32 * v32, v52);
    sub_22F139E70(v51);
  }

  else
  {
    sub_22F139E70(v51);
    memset(v52, 0, 32);
  }

  *&v48 = 0x6567617373656DLL;
  *(&v48 + 1) = 0xE700000000000000;
  sub_22F741A90();
  if (*(v18 + 16) && (v37 = sub_22F122B24(v51), (v38 & 1) != 0))
  {
    sub_22F13A100(*(v18 + 56) + 32 * v37, v50);
    sub_22F139E70(v51);
  }

  else
  {

    sub_22F139E70(v51);
    memset(v50, 0, sizeof(v50));
  }

  sub_22F1BCD04(v52, &v48);
  if (v49)
  {
    sub_22F107D08(&v48, v51);
    sub_22F13A100(v51, &v48);
    v39 = sub_22F740E90();
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    sub_22F120ADC(&v48, &qword_27DAB0C28, &qword_22F778980);
    v39 = 0;
    v41 = 0;
  }

  sub_22F1BCD04(v50, &v48);
  if (v49)
  {

    sub_22F107D08(&v48, v51);
    sub_22F13A100(v51, &v48);
    v39 = sub_22F740E90();
    v41 = v43;
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    sub_22F120ADC(&v48, &qword_27DAB0C28, &qword_22F778980);
    if (!v41)
    {
      sub_22F7416A0();
      sub_22F15C3C4(v21, v23);
      v47(v21, v23, 0);

      sub_22F133BF0(v21, v23);
      goto LABEL_28;
    }
  }

  sub_22F7416A0();
  type metadata accessor for MusicKitClientError();
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
  v44 = swift_allocError();
  *v45 = v39;
  v45[1] = v41;
  swift_storeEnumTagMultiPayload();
  v47(v44, 0, 1);

LABEL_28:
  sub_22F133BF0(v21, v23);
  sub_22F120ADC(v50, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(v52, &qword_27DAB0C28, &qword_22F778980);
}

uint64_t sub_22F2280D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v117 = a4;
  v109 = sub_22F740AD0();
  v14 = *(v109 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v109);
  v108 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22F73EEC0();
  v111 = *(v118 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x28223BE20](v118);
  v107 = v95 - ((&v17[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = v95 - v19;
  v20 = sub_22F73EEE0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v116 = (v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a2 + 16);
  v137 = *a2;
  v138 = v25;
  v139 = *(a2 + 32);
  v140 = *(a2 + 48);
  v26 = a1[2];
  if (!v26)
  {
    return (a6)(MEMORY[0x277D84F90], 0);
  }

  v104 = a5;
  v105 = a6;
  v102 = v23;
  v103 = v22;
  v113 = a7;
  v114 = v17;
  v115 = v14;
  v119 = v7;
  if (qword_2810A9B98 != -1)
  {
LABEL_29:
    swift_once();
  }

  v27 = qword_2810B4E70;
  *&v28 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v28, 0, v27, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v29 = swift_allocObject();
  v30 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v30;
  v112 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v31 = swift_allocObject();
  *(v31 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v110 = v31;
  *(v31 + 16) = 0;
  v32 = v31 + 16;
  v33 = v119;
  if ((v119[3] != a3 || v119[4] != v117) && (sub_22F742040() & 1) == 0)
  {
    v92 = v33[2];
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    v106 = 1;
    if (Batch)
    {
      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    *(Batch + 16) = v26;
    os_unfair_lock_unlock((Batch + 32));

    v94 = *(a6 + 24);
    (*(a6 + 16))(v93);
  }

  v34 = v33[2];
  Batch = MusicBag.songQueryBatchSize()();
  v106 = 0;
  if (!Batch)
  {
    goto LABEL_26;
  }

LABEL_7:
  v95[1] = v32;

  v36 = sub_22F233C24(0, v26, Batch, a1, Batch);
  v117 = 0;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v37 = sub_22F740B90();
  __swift_project_value_buffer(v37, qword_2810B4D48);

  v38 = sub_22F740B70();
  v39 = sub_22F7415C0();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v105;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = v26;

    *(v42 + 12) = 2048;
    *(v42 + 14) = *(v36 + 16);

    _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {
  }

  v44 = *(v36 + 16);
  v45 = *(&v135 + 1);
  v96 = v36;
  v97 = v136;
  v46 = swift_allocObject();
  v47 = v134[1];
  *(v46 + 16) = v134[0];
  *(v46 + 32) = v47;
  *(v46 + 48) = v135;
  v48 = v104;
  *(v46 + 64) = v136;
  *(v46 + 72) = v48;
  v49 = v113;
  *(v46 + 80) = v41;
  *(v46 + 88) = v49;
  a1 = v110;
  v50 = v112;
  *(v46 + 96) = v110;
  *(v46 + 104) = v50;
  type metadata accessor for CompletionCounter();
  a6 = swift_allocObject();
  *(a6 + 16) = sub_22F233FA4;
  *(a6 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v51 = swift_allocObject();
  *(v51 + 32) = 0;
  *(v51 + 16) = 0;
  v101 = v44;
  *(v51 + 24) = v44;
  *(a6 + 32) = v51;
  v52 = sub_22F73EF30();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v95[2] = v45;

  v55 = v48;

  v56 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v57 = qword_2810A9170;
  v58 = v116;
  *v116 = qword_2810A9170;
  (*(v102 + 104))(v58, *MEMORY[0x277CC86D8], v103);
  v59 = v57;
  sub_22F73EF00();
  v60 = [v55 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v61 = sub_22F741180();

  v102 = v111 + 16;
  v103 = (v115 + 1);
  v100 = v111 + 32;
  v101 = &v114->isa + 7;
  v129 = v61;
  v130 = 0;
  v98 = v111 + 8;
  v99 = &v125;
  v131 = v96;
  v132 = 0;
  v133 = 0;
  v104 = v56;
  v105 = a6;
  while (1)
  {
    v62 = sub_22F226D78();
    if (!v62)
    {
    }

    v64 = v62;
    v65 = v63;
    v66 = v33[4];
    v67 = v33[5];
    v68 = v33[6];
    v69 = v33[7];
    v70 = v33[8];
    v123 = v33[3];
    v124 = v66;
    v125 = v67;
    v126 = v68;
    v127 = v69;
    v128 = v70;
    v121[0] = v137;
    v121[1] = v138;
    v121[2] = v139;
    v122 = v140;

    a3 = v117;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v65, v121, v106, v120);
    if (a3)
    {
      break;
    }

    v116 = v64;
    v117 = 0;

    v71 = swift_allocObject();
    v72 = v112;
    v71[2] = v56;
    v71[3] = v72;
    v71[4] = a6;
    v71[5] = a1;
    v115 = v71;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v73 = v108;
    sub_22F740AC0();
    sub_22F740A90();
    (*v103)(v73, v109);
    v114 = v33[9];
    a3 = v111;
    v74 = v107;
    v75 = v118;
    (*(v111 + 16))(v107, v120, v118);
    v76 = (*(a3 + 80) + 16) & ~*(a3 + 80);
    v77 = &v101[v76] & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 63) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 39) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    (*(a3 + 32))(v80 + v76, v74, v75);
    v81 = v80 + v77;
    v82 = v138;
    *v81 = v137;
    *(v81 + 16) = v82;
    *(v81 + 32) = v139;
    *(v81 + 48) = v140;
    *(v80 + v78) = v119;
    v83 = v80 + v113;
    v33 = v119;
    *v83 = "MusicKitClient HTTP Request";
    *(v83 + 8) = 27;
    *(v83 + 16) = 2;
    v84 = v116;
    *(v80 + v79) = v116;
    v85 = (v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8));
    v86 = v115;
    *v85 = sub_22F233FA8;
    v85[1] = v86;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_22F233FAC;
    *(v26 + 24) = v80;
    v127 = sub_22F233FB0;
    v128 = v26;
    v123 = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v125 = sub_22F2280B0;
    v126 = &block_descriptor_10;
    v87 = _Block_copy(&v123);
    sub_22F1D20B0(&v137, v121);

    v88 = v84;

    dispatch_sync(v114, v87);
    _Block_release(v87);

    (*(a3 + 8))(v120, v118);
    LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

    a1 = v110;
    v56 = v104;
    a6 = v105;
    if (v86)
    {
      __break(1u);
      goto LABEL_29;
    }
  }

  [a1[3] lock];
  LOBYTE(v26) = 1;
  swift_beginAccess();
  v89 = a1[2];
  a1[2] = a3;

  v90 = a1[3];
  v91 = a3;
  [v90 unlock];
  Batch = *(a6 + 32);

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_27;
  }

  os_unfair_lock_unlock((Batch + 32));
}

void sub_22F228D34(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  swift_beginAccess();
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = v9;
    a3(v9, 1);
  }

  else
  {
    [*(a6 + 24) lock];
    swift_beginAccess();
    a3(*(a6 + 16), 0);
    swift_endAccess();
    [*(a6 + 24) unlock];
  }
}

uint64_t sub_22F228E7C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    [*(a7 + 24) lock];
    swift_beginAccess();
    v10 = *(a7 + 16);
    *(a7 + 16) = a1;

    v11 = *(a7 + 24);
    v12 = a1;
    [v11 unlock];
    v13 = *(a6 + 32);

    os_unfair_lock_lock((v13 + 32));
    if (*(v13 + 16))
    {
      os_unfair_lock_unlock((v13 + 32));
    }

    *(v13 + 16) = 1;
    os_unfair_lock_unlock((v13 + 32));

    goto LABEL_21;
  }

  sub_22F1C9EB0();
  result = sub_22F73EF10();
  v16 = v51;
  v17 = *(v51 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v51 + 48;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = v17 - v18;
      v22 = (v19 + 296 * v18);
      while (1)
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v22 - 1, sizeof(__dst));
        v24 = v22[1];
        v23 = v22[2];
        v44[0] = *v22;
        v44[1] = v24;
        v44[2] = v23;
        v25 = v22[6];
        v27 = v22[3];
        v26 = v22[4];
        v44[5] = v22[5];
        v44[6] = v25;
        v44[3] = v27;
        v44[4] = v26;
        v28 = v22[10];
        v30 = v22[7];
        v29 = v22[8];
        v44[9] = v22[9];
        v45 = v28;
        v44[7] = v30;
        v44[8] = v29;
        v31 = v22[14];
        v33 = v22[11];
        v32 = v22[12];
        v48 = v22[13];
        v49 = v31;
        v46 = v33;
        v47 = v32;
        result = sub_22F1E1664(v44);
        if (result != 1)
        {
          if (*(&v45 + 1))
          {
            break;
          }
        }

        v22 = (v22 + 296);
        ++v18;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      sub_22F18C4EC(__dst, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v20;
      v41 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F1468FC(0, *(v20 + 16) + 1, 1);
        v20 = v50;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_22F1468FC((v35 > 1), v36 + 1, 1);
        v37 = v36 + 1;
        v20 = v50;
      }

      ++v18;
      *(v20 + 16) = v37;
      result = memcpy((v20 + 296 * v36 + 32), __dst, 0x128uLL);
      v19 = v41;
    }

    while (v21 != 1);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_20:

  [*(a5 + 24) lock];
  swift_beginAccess();
  sub_22F14519C(v20);
  swift_endAccess();
  [*(a5 + 24) unlock];
  v38 = *(a6 + 32);

  os_unfair_lock_lock(v38 + 8);
  sub_22F1CBE1C(&v38[4], __dst);
  os_unfair_lock_unlock(v38 + 8);
  v39 = __dst[0];

  if (v39)
  {
LABEL_21:
    v40 = *(a6 + 24);
    return (*(a6 + 16))(result);
  }

  return result;
}

uint64_t sub_22F229248(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v48 = a2;
  v49 = sub_22F73EEC0();
  v50 = *(v49 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v44 - v10;
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v61 = *a1;
  v17 = *(a1 + 32);
  v62 = v16;
  v63 = v17;
  v64 = *(a1 + 48);
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v53[0] = v61;
  v53[1] = v62;
  v53[2] = v63;
  v19 = v4[4];
  v20 = v4[5];
  v21 = v4[6];
  v22 = v5[7];
  v23 = v5[8];
  aBlock = v5[3];
  v56 = v19;
  v57 = v20;
  v58 = v21;
  v59 = v22;
  v60 = v23;
  v54 = v64;

  sub_22F3E1B88(v53, v52);

  v24 = swift_allocObject();
  v46 = v24;
  *(v24 + 16) = "MusicKitClient Fetch Recommended Playlists";
  *(v24 + 24) = 42;
  *(v24 + 32) = 2;
  *(v24 + 40) = v51;
  *(v24 + 48) = a4;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v18(v15, v11);
  v51 = v5[9];
  v25 = v50;
  v26 = v47;
  v27 = v49;
  (*(v50 + 16))(v47, v52, v49);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 63) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v25 + 32))(v32 + v28, v26, v27);
  v33 = v32 + v29;
  v34 = v62;
  v35 = v63;
  *v33 = v61;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  *(v33 + 48) = v64;
  *(v32 + v30) = v5;
  v36 = v32 + v45;
  *v36 = "MusicKitClient HTTP Request";
  *(v36 + 8) = 27;
  *(v36 + 16) = 2;
  v37 = v48;
  *(v32 + v31) = v48;
  v38 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v39 = v46;
  *v38 = sub_22F233FF0;
  v38[1] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22F2360E0;
  *(v40 + 24) = v32;
  v59 = sub_22F2360E8;
  v60 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_22F2280B0;
  v58 = &block_descriptor_23_0;
  v41 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v61, v53);

  v42 = v37;

  dispatch_sync(v51, v41);
  _Block_release(v41);

  (*(v50 + 8))(v52, v27);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F2298A4(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(char *, uint64_t), uint64_t a8)
{
  v30 = a8;
  v31 = a7;
  v29 = a6;
  v28[1] = a4;
  v28[2] = a5;
  v28[0] = a2;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73EEE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22F73EF30();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v23 = qword_2810A9170;
  *v19 = qword_2810A9170;
  (*(v16 + 104))(v19, *MEMORY[0x277CC86D8], v15);
  v24 = v23;
  sub_22F73EF00();
  if (a3)
  {
    v25 = a1;
    v26 = 1;
  }

  else
  {
    sub_22F229B70(&v32, &v33);
    v26 = 0;
    a1 = v33;
  }

  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v11 + 8))(v14, v10);
  v31(a1, v26);
  sub_22F1D20A4(a1, v26);
}

uint64_t sub_22F229B70@<X0>(void *a1@<X3>, char **a2@<X8>)
{
  sub_22F235FDC();
  result = sub_22F73EF10();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v22 = a2;
    v6 = v25;
    v7 = *(v24 + 16);
    if (v7)
    {
      v8 = (v24 + 80);
      v9 = MEMORY[0x277D84F90];
      do
      {
        v11 = *(v8 - 5);
        v12 = *(v8 - 4);
        v13 = *(v8 - 3);
        v14 = *(v8 - 2);
        v15 = *(v8 - 1);
        v16 = *v8;
        v24 = *(v8 - 6);
        v25 = v11;
        v26 = v12;
        v27 = v13;
        v28 = v14;
        v29 = v15;
        v30 = v16;
        v35 = v6;

        sub_22F1E0BD4(&v24, &v35, &v31);
        v17 = v32;
        if (v32)
        {
          v18 = v31;
          v19 = v33;
          v23 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F13F2BC(0, *(v9 + 2) + 1, 1, v9);
          }

          v21 = *(v9 + 2);
          v20 = *(v9 + 3);
          if (v21 >= v20 >> 1)
          {
            v9 = sub_22F13F2BC((v20 > 1), v21 + 1, 1, v9);
          }

          *(v9 + 2) = v21 + 1;
          v10 = &v9[40 * v21];
          *(v10 + 4) = v18;
          *(v10 + 5) = v17;
          *(v10 + 6) = v19;
          *(v10 + 56) = v23;
        }

        v8 += 7;
        --v7;
      }

      while (v7);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    *v22 = v9;
  }

  return result;
}

uint64_t sub_22F229D40(uint64_t a1, char *a2, uint64_t a3, void *a4, unint64_t a5, char *a6)
{
  v7 = v6;
  v53 = a6;
  v52 = a5;
  v48 = a4;
  v51 = a2;
  v50 = sub_22F73EEC0();
  v49 = *(v50 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v50);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v54 = sub_22F740AD0();
  isa = v54[-1].isa;
  v15 = *(isa + 8);
  MEMORY[0x28223BE20](v54);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  v63 = *a3;
  v19 = *(a3 + 32);
  v64 = v18;
  v65 = v19;
  v66 = *(a3 + 48);
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v20 = *(isa + 1);
  v20(v17, v54);
  v55[0] = v63;
  v55[1] = v64;
  v55[2] = v65;
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];
  v25 = v7[8];
  aBlock = v7[3];
  v58 = v21;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v56 = v66;

  sub_22F3E21F0(a1, v51, v55, v13);

  v26 = swift_allocObject();
  v51 = v26;
  *(v26 + 16) = "MusicKitClient Fetch Essentials Playlists For Artists";
  *(v26 + 24) = 53;
  *(v26 + 32) = 2;
  *(v26 + 40) = v52;
  *(v26 + 48) = v53;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v20(v17, v54);
  v54 = v7[9];
  v27 = v49;
  v28 = v47;
  v29 = v50;
  (*(v49 + 16))(v47, v13, v50);
  v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 63) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v13;
  v33 = (v32 + 39) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v27 + 32))(v34 + v30, v28, v29);
  v35 = v34 + v31;
  v36 = v64;
  v37 = v65;
  *v35 = v63;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  *(v35 + 48) = v66;
  *(v34 + v32) = v7;
  v38 = v34 + v52;
  *v38 = "MusicKitClient HTTP Request";
  *(v38 + 8) = 27;
  *(v38 + 16) = 2;
  v39 = v48;
  *(v34 + v33) = v48;
  v40 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  v41 = v51;
  *v40 = sub_22F234008;
  v40[1] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_22F2360E0;
  *(v42 + 24) = v34;
  v61 = sub_22F2360E8;
  v62 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_22F2280B0;
  v60 = &block_descriptor_37;
  v43 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v63, v55);

  v44 = v39;

  dispatch_sync(v54, v43);
  _Block_release(v43);

  (*(v27 + 8))(v53, v29);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F22A3D0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void), uint64_t a8)
{
  v53 = a6;
  v52 = a5;
  v50 = a4;
  v51 = sub_22F740AD0();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22F73EF30();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v23 = qword_2810A9170;
  *v18 = qword_2810A9170;
  (*(v15 + 104))(v18, *MEMORY[0x277CC86D8], v14);
  v24 = v23;
  sub_22F73EF00();
  if (a3)
  {
    v25 = a1;
    v26 = 1;
  }

  else
  {
    sub_22F235F88();
    sub_22F73EF10();
    v27 = v55[0];
    v28 = *(v55[0] + 16);
    if (v28)
    {
      v45 = v22;
      v46 = a8;
      v47 = a7;
      v57 = MEMORY[0x277D84F90];
      sub_22F146994(0, v28, 0);
      a1 = v57;
      v44 = v27;
      v29 = (v27 + 64);
      do
      {
        v30 = *(v29 - 3);
        v31 = *(v29 - 2);
        v32 = *(v29 - 1);
        v33 = *v29;
        v54[0] = *(v29 - 4);
        v54[1] = v30;
        v54[2] = v31;
        v54[3] = v32;
        v54[4] = v33;

        sub_22F1E1050(v54, v55);
        v34 = v55[0];
        v35 = v55[1];
        v36 = v55[2];
        v37 = v56;
        v57 = a1;
        v39 = a1[2];
        v38 = a1[3];
        if (v39 >= v38 >> 1)
        {
          v43 = v56;
          sub_22F146994((v38 > 1), v39 + 1, 1);
          v37 = v43;
          a1 = v57;
        }

        a1[2] = v39 + 1;
        v40 = &a1[5 * v39];
        v40[4] = v34;
        v40[5] = v35;
        v40[6] = v36;
        *(v40 + 7) = v37;
        v29 += 5;
        --v28;
      }

      while (v28);

      a7 = v47;
    }

    else
    {

      a1 = MEMORY[0x277D84F90];
    }

    v26 = 0;
  }

  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v41 = v48;
  sub_22F740AC0();
  sub_22F740A90();
  (*(v49 + 8))(v41, v51);
  a7(a1, v26);
  sub_22F1D20A4(a1, v26);
}

void sub_22F22A7E4(uint64_t a1, char *a2, uint64_t a3, void *a4, char *a5, NSObject *a6)
{
  v73 = a6;
  v72 = a5;
  v69 = a4;
  v9 = sub_22F73EEC0();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = sub_22F740AD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  v82 = *a3;
  v20 = *(a3 + 32);
  v83 = v19;
  v84 = v20;
  v85 = *(a3 + 48);
  if (sub_22F73F660() == -1)
  {
    v66 = a1;
    v67 = a2;
    v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v71;
    v68 = v13;
    v63 = v9;
    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v29 = qword_2810A8E38;
    sub_22F740AC0();
    v65 = v29;
    sub_22F740A90();
    v30 = v14;
    v31 = *(v15 + 8);
    v64 = v30;
    v31(v18);
    v74[0] = v82;
    v74[1] = v83;
    v74[2] = v84;
    v32 = v28;
    v33 = v28[4];
    v34 = v28[5];
    v35 = v28[6];
    v36 = v28[7];
    v37 = v28[8];
    aBlock = v28[3];
    v77 = v33;
    v78 = v34;
    v79 = v35;
    v80 = v36;
    v81 = v37;
    v75 = v85;

    v38 = v68;
    sub_22F3E29C0(v67, v74, v68);
    v39 = v73;
    v40 = v72;

    v41 = v31;
    v42 = swift_allocObject();
    *(v42 + 16) = "MusicKitClient Fetch Tesseract Songs";
    *(v42 + 24) = 36;
    *(v42 + 32) = 2;
    *(v42 + 40) = v40;
    *(v42 + 48) = v39;

    sub_22F741740();
    sub_22F740AC0();
    sub_22F740A90();
    v41(v18, v64);
    v73 = v32[9];
    v43 = v70;
    v44 = v62;
    (*(v70 + 16))(v62, v38, v63);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 63) & 0xFFFFFFFFFFFFFFF8;
    v72 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
    v48 = (v47 + 39) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v44;
    v51 = v63;
    (*(v43 + 32))(v49 + v45, v50, v63);
    v52 = v49 + v46;
    v53 = v83;
    v54 = v84;
    *v52 = v82;
    *(v52 + 16) = v53;
    *(v52 + 32) = v54;
    *(v52 + 48) = v85;
    *(v49 + v47) = v32;
    v55 = &v72[v49];
    *v55 = "MusicKitClient HTTP Request";
    *(v55 + 1) = 27;
    v55[16] = 2;
    v56 = v69;
    *(v49 + v48) = v69;
    v57 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v57 = sub_22F23406C;
    v57[1] = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_22F2360E0;
    *(v58 + 24) = v49;
    v80 = sub_22F2360E8;
    v81 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22F2280B0;
    v79 = &block_descriptor_51;
    v59 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v82, v74);

    v60 = v56;

    dispatch_sync(v73, v59);
    _Block_release(v59);

    (*(v43 + 8))(v68, v51);
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    if (v59)
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for MusicKitClientError();
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v21 = swift_allocError();
    v23 = v22;
    v24 = a2;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v26 = sub_22F73F690();
    v27 = *(*(v26 - 8) + 16);
    v27(v23, a1, v26);
    v27(v23 + v25, v24, v26);
    swift_storeEnumTagMultiPayload();
    (v72)(v21, 1);
  }
}

void sub_22F22AFEC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void *, uint64_t), uint64_t a8)
{
  v52 = a8;
  v53 = a7;
  v50 = a6;
  v48 = a4;
  v49 = a5;
  LOBYTE(v8) = a3;
  v51 = sub_22F740AD0();
  v47 = *(v51 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F73EF30();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = qword_2810A9170;
  *v17 = qword_2810A9170;
  (*(v14 + 104))(v17, *MEMORY[0x277CC86D8], v13);
  v23 = v22;
  sub_22F73EF00();
  if (v8)
  {
    v54 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    sub_22F741730();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    (*(v47 + 8))(v12, v51);
    v25 = a1;
    v53(a1, 1);
  }

  else
  {
    sub_22F235F34();
    sub_22F73EF10();
    MusicKitTesseractResponse.songs()();
    v27 = v26;

    v14 = *(v27 + 16);
    if (v14)
    {
      v17 = 0;
      v8 = v27 + 48;
      a1 = MEMORY[0x277D84F90];
      do
      {
        v13 = v14 - v17;
        v28 = (v8 + 296 * v17);
        while (1)
        {
          if (v17 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          memcpy(v55, v28 - 1, sizeof(v55));
          v30 = v28[1];
          v29 = v28[2];
          v56[0] = *v28;
          v56[1] = v30;
          v56[2] = v29;
          v31 = v28[6];
          v33 = v28[3];
          v32 = v28[4];
          v56[5] = v28[5];
          v56[6] = v31;
          v56[3] = v33;
          v56[4] = v32;
          v34 = v28[10];
          v36 = v28[7];
          v35 = v28[8];
          v56[9] = v28[9];
          v57 = v34;
          v56[7] = v36;
          v56[8] = v35;
          v37 = v28[14];
          v39 = v28[11];
          v38 = v28[12];
          v60 = v28[13];
          v61 = v37;
          v58 = v39;
          v59 = v38;
          if (sub_22F1E1664(v56) != 1)
          {
            if (*(&v57 + 1))
            {
              break;
            }
          }

          v28 = (v28 + 296);
          ++v17;
          if (!--v13)
          {
            goto LABEL_22;
          }
        }

        v46 = v14;
        sub_22F18C4EC(v55, &v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = a1;
        v45 = v8;
        v41 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, a1[2] + 1, 1);
          a1 = v62;
        }

        v43 = a1[2];
        v42 = a1[3];
        if (v43 >= v42 >> 1)
        {
          sub_22F1468FC((v42 > 1), v43 + 1, 1);
          a1 = v62;
        }

        ++v17;
        a1[2] = v43 + 1;
        memcpy(&a1[37 * v43 + 4], v55, 0x128uLL);
        v21 = v41;
        v8 = v45;
        v14 = v46;
      }

      while (v13 != 1);
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

LABEL_22:

    sub_22F741730();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    (*(v47 + 8))(v12, v51);
    v53(a1, 0);
  }
}

uint64_t sub_22F22B524(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v58 = a6;
  v57 = a5;
  v55 = a4;
  v54 = sub_22F740AD0();
  isa = v54[-1].isa;
  v11 = *(isa + 64);
  MEMORY[0x28223BE20](v54);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  v19 = a3[1];
  v70 = *a3;
  v71 = v19;
  v72 = a3[2];
  v73 = *(a3 + 6);
  if (qword_2810A9B98 != -1)
  {
    swift_once();
  }

  v20 = qword_2810B4E70;
  *&v21 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v21, 0, v20, v67);
  v22 = v7[4];
  v23 = v7[5];
  v24 = v7[6];
  v25 = v7[7];
  v26 = v7[8];
  aBlock = v7[3];
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = v25;
  v66 = v26;
  v59[0] = v70;
  v59[1] = v71;
  v59[2] = v72;
  v60 = v73;

  sub_22F3E3150(a1, a2, v59, v18);

  v27 = *(&v68 + 1);
  v28 = v69;
  v29 = swift_allocObject();
  v30 = v67[1];
  *(v29 + 16) = v67[0];
  *(v29 + 32) = v30;
  *(v29 + 48) = v68;
  v31 = v57;
  *(v29 + 64) = v69;
  *(v29 + 72) = v31;
  v51[0] = v29;
  *(v29 + 80) = v58;
  v57 = v27;

  v51[1] = v28;

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(isa + 8))(v13, v54);
  v54 = v7[9];
  v32 = v56;
  v33 = v53;
  (*(v56 + 16))(v53, v18, v14);
  v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 63) & 0xFFFFFFFFFFFFFFF8;
  v58 = v18;
  isa = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v33;
  v40 = v14;
  (*(v32 + 32))(v38 + v34, v39, v14);
  v41 = v38 + v35;
  v42 = v71;
  *v41 = v70;
  *(v41 + 16) = v42;
  *(v41 + 32) = v72;
  *(v41 + 48) = v73;
  *(v38 + v36) = v7;
  v43 = v38 + isa;
  *v43 = "MusicKitClient HTTP Request";
  *(v43 + 8) = 27;
  *(v43 + 16) = 2;
  v44 = v55;
  *(v38 + v37) = v55;
  v45 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
  v46 = v51[0];
  *v45 = sub_22F2340A0;
  v45[1] = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22F2360E0;
  *(v47 + 24) = v38;
  v65 = sub_22F2360E8;
  v66 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_22F2280B0;
  v64 = &block_descriptor_65;
  v48 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v70, v59);

  v49 = v44;

  dispatch_sync(v54, v48);
  _Block_release(v48);

  (*(v56 + 8))(v58, v40);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F22BBC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = sub_22F73EEE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    v41 = a5;
    v14 = sub_22F73EF30();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_22F73EF20();
    if (qword_2810A9168 != -1)
    {
LABEL_20:
      swift_once();
    }

    v17 = qword_2810A9170;
    *v12 = qword_2810A9170;
    (*(v9 + 104))(v12, *MEMORY[0x277CC86D8], v8);
    v18 = v17;
    sub_22F73EF00();
    sub_22F1C9EB0();
    sub_22F73EF10();
    v19 = v51;
    v9 = *(v51 + 16);
    if (v9)
    {
      v12 = 0;
      v20 = v51 + 48;
      v21 = MEMORY[0x277D84F90];
      v40 = v51 + 48;
      do
      {
        v8 = v9 - v12;
        v22 = (v20 + 296 * v12);
        while (1)
        {
          if (v12 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          memcpy(v43, v22 - 1, sizeof(v43));
          v24 = v22[1];
          v23 = v22[2];
          v44[0] = *v22;
          v44[1] = v24;
          v44[2] = v23;
          v25 = v22[6];
          v27 = v22[3];
          v26 = v22[4];
          v44[5] = v22[5];
          v44[6] = v25;
          v44[3] = v27;
          v44[4] = v26;
          v28 = v22[10];
          v30 = v22[7];
          v29 = v22[8];
          v44[9] = v22[9];
          v45 = v28;
          v44[7] = v30;
          v44[8] = v29;
          v31 = v22[14];
          v33 = v22[11];
          v32 = v22[12];
          v48 = v22[13];
          v49 = v31;
          v46 = v33;
          v47 = v32;
          if (sub_22F1E1664(v44) != 1)
          {
            if (*(&v45 + 1))
            {
              break;
            }
          }

          v22 = (v22 + 296);
          ++v12;
          if (!--v8)
          {
            goto LABEL_18;
          }
        }

        sub_22F18C4EC(v43, &v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v21;
        v39 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v21 + 16) + 1, 1);
          v21 = v50;
        }

        v36 = *(v21 + 16);
        v35 = *(v21 + 24);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_22F1468FC((v35 > 1), v36 + 1, 1);
          v37 = v36 + 1;
          v21 = v50;
        }

        ++v12;
        *(v21 + 16) = v37;
        memcpy((v21 + 296 * v36 + 32), v43, 0x128uLL);
        v9 = v39;
        v20 = v40;
      }

      while (v8 != 1);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

LABEL_18:

    sub_22F1B2BBC(0);
    v41(v21, 0);
  }
}

uint64_t sub_22F22BF70(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), char *a6)
{
  v7 = v6;
  v74 = a6;
  v75 = a5;
  v73 = sub_22F740AD0();
  isa = v73[-1].isa;
  v12 = *(isa + 64);
  MEMORY[0x28223BE20](v73);
  v70 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v72 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v66 - v18;
  v20 = a3[1];
  v87 = *a3;
  v88 = v20;
  v89 = a3[2];
  v90 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Unable to search for playlist songs without a playlistId", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    return v75(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v67 = a4;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v22, 0, v21, v84);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v69 = v14;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v68 = v15;
      v28 = v19;
      v29 = v27;
      v30 = swift_slowAlloc();
      *&v76[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v76);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Get Playlist Songs for: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v19 = v28;
      v15 = v68;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = v7[4];
    v33 = v7[5];
    v34 = v7[6];
    v35 = v7[7];
    v36 = v7[8];
    aBlock = v7[3];
    v79 = v32;
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v83 = v36;
    v76[0] = v87;
    v76[1] = v88;
    v76[2] = v89;
    v77 = v90;

    sub_22F3E35AC(a1, a2, v76, v19);

    v42 = *(&v85 + 1);
    v43 = v86;
    v44 = swift_allocObject();
    v45 = v84[1];
    *(v44 + 16) = v84[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v85;
    v46 = v75;
    *(v44 + 64) = v86;
    *(v44 + 72) = v46;
    *(v44 + 80) = v74;
    v75 = v42;

    v66[1] = v43;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v47 = v70;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v47, v73);
    v73 = v7[9];
    v48 = v15;
    v49 = *(v15 + 16);
    v50 = v72;
    v49(v72, v19, v69);
    v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v52 = (v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = v48;
    v74 = v19;
    v53 = (v52 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 39) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v50;
    v57 = v69;
    (*(v48 + 32))(v55 + v51, v56, v69);
    v58 = v55 + v52;
    v59 = v88;
    *v58 = v87;
    *(v58 + 16) = v59;
    *(v58 + 32) = v89;
    *(v58 + 48) = v90;
    *(v55 + v53) = v7;
    v60 = v55 + isa;
    *v60 = "MusicKitClient HTTP Request";
    *(v60 + 8) = 27;
    *(v60 + 16) = 2;
    v61 = v67;
    *(v55 + v54) = v67;
    v62 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v62 = sub_22F2340B0;
    v62[1] = v44;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_22F2360E0;
    *(v63 + 24) = v55;
    v82 = sub_22F2360E8;
    v83 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v79 = 1107296256;
    v80 = sub_22F2280B0;
    v81 = &block_descriptor_79;
    v64 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v87, v76);

    v65 = v61;

    dispatch_sync(v73, v64);
    _Block_release(v64);

    (*(v68 + 8))(v74, v57);
    LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

    if (v64)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22F22C844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    a5(a1, 1);
  }

  else
  {
    v7 = sub_22F73EF30();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_22F73EF20();
    sub_22F1A9194();
    sub_22F73EF10();
    if (v46[2])
    {
      v10 = v46[5];
      v11 = v46[7];
      v13 = v46[9];
      v12 = v46[10];

      if (v12)
      {
        v14 = *(v12 + 16);
        if (v14)
        {
          v15 = 0;
          v16 = v12 + 48;
          v17 = MEMORY[0x277D84F90];
          do
          {
            v18 = v14 - v15;
            v19 = (v16 + 296 * v15);
            while (1)
            {
              if (v15 >= *(v12 + 16))
              {
                __break(1u);
                goto LABEL_22;
              }

              memcpy(__dst, v19 - 1, sizeof(__dst));
              v21 = v19[1];
              v20 = v19[2];
              v39[0] = *v19;
              v39[1] = v21;
              v39[2] = v20;
              v22 = v19[6];
              v24 = v19[3];
              v23 = v19[4];
              v39[5] = v19[5];
              v39[6] = v22;
              v39[3] = v24;
              v39[4] = v23;
              v25 = v19[10];
              v27 = v19[7];
              v26 = v19[8];
              v39[9] = v19[9];
              v40 = v25;
              v39[7] = v27;
              v39[8] = v26;
              v28 = v19[14];
              v30 = v19[11];
              v29 = v19[12];
              v43 = v19[13];
              v44 = v28;
              v41 = v30;
              v42 = v29;
              if (sub_22F1E1664(v39) != 1)
              {
                if (*(&v40 + 1))
                {
                  break;
                }
              }

              v19 = (v19 + 296);
              ++v15;
              if (!--v18)
              {
                goto LABEL_20;
              }
            }

            sub_22F18C4EC(__dst, v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = v17;
            v36 = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22F1468FC(0, *(v17 + 16) + 1, 1);
              v17 = v45;
            }

            v33 = *(v17 + 16);
            v32 = *(v17 + 24);
            v34 = v33 + 1;
            if (v33 >= v32 >> 1)
            {
              sub_22F1468FC((v32 > 1), v33 + 1, 1);
              v34 = v33 + 1;
              v17 = v45;
            }

            ++v15;
            *(v17 + 16) = v34;
            memcpy((v17 + 296 * v33 + 32), __dst, 0x128uLL);
            v14 = v36;
            v16 = v12 + 48;
          }

          while (v18 != 1);
        }

        else
        {
          v17 = MEMORY[0x277D84F90];
        }

LABEL_20:

        sub_22F1B2BBC(0);
        a5(v17, 0);
      }

      else
      {
        sub_22F1B2BBC(0);
        type metadata accessor for MusicKitClientError();
        sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
        v35 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        a5(v35, 1);
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t sub_22F22CBE8(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), NSObject *a6)
{
  v7 = v6;
  v76 = a6;
  v77 = a5;
  v75 = sub_22F740AD0();
  v73 = *(v75 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = a3[1];
  v87 = *a3;
  v88 = v20;
  v89 = a3[2];
  v90 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D48);
    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22F0FC000, v37, v38, "[Warning-Music] Empty music search term", v39, 2u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    return v77(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v71 = a4;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search Songs with term", 37, 2u, v22, 0, v21, v84);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v70 = v14;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v69 = v7;
      v28 = v19;
      v29 = v15;
      v30 = v27;
      v31 = swift_slowAlloc();
      *&v78[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22F145F20(a1, a2, v78);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Search for song using term: '%s'", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2319033A0](v31, -1, -1);
      v32 = v30;
      v15 = v29;
      v19 = v28;
      v7 = v69;
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    v33 = *(v7 + 40);
    v34 = *(v7 + 56);
    v35 = *(v7 + 64);
    aBlock = *(v7 + 24);
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v78[0] = v87;
    v78[1] = v88;
    v78[2] = v89;
    v79 = v90;
    sub_22F3E3C18(a1, a2, &unk_2843DB040, v78, v19);
    v41 = *(&v85 + 1);
    v42 = v86;
    v43 = swift_allocObject();
    v44 = v84[1];
    *(v43 + 16) = v84[0];
    *(v43 + 32) = v44;
    *(v43 + 48) = v85;
    v45 = v77;
    *(v43 + 64) = v86;
    *(v43 + 72) = v45;
    v67 = v43;
    *(v43 + 80) = v76;
    v77 = v41;

    v69 = v42;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v72;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v73 + 8))(v46, v75);
    v76 = *(v7 + 72);
    v47 = *(v15 + 16);
    v48 = v74;
    v68 = v19;
    v49 = v19;
    v50 = v70;
    v47(v74, v49, v70);
    v51 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v52 = (v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = v15;
    v53 = (v52 + 63) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 39) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v15 + 32))(v55 + v51, v48, v50);
    v56 = v55 + v52;
    v57 = v88;
    *v56 = v87;
    *(v56 + 16) = v57;
    *(v56 + 32) = v89;
    *(v56 + 48) = v90;
    *(v55 + v53) = v7;
    v58 = v55 + v75;
    *v58 = "MusicKitClient HTTP Request";
    *(v58 + 8) = 27;
    *(v58 + 16) = 2;
    v59 = v71;
    *(v55 + v54) = v71;
    v60 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    v61 = v67;
    *v60 = sub_22F2340C0;
    v60[1] = v61;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_22F2360E0;
    *(v62 + 24) = v55;
    v82 = sub_22F2360E8;
    v83 = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v81 = sub_22F2280B0;
    *(&v81 + 1) = &block_descriptor_93_0;
    v63 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v87, v78);

    v64 = v59;

    dispatch_sync(v76, v63);
    _Block_release(v63);

    (*(v66 + 8))(v68, v50);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F22D49C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    v8 = sub_22F73EF30();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_22F73EF20();
    sub_22F235EE0();
    result = sub_22F73EF10();
    v11 = v44;
    v12 = *(v44 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = v44 + 48;
      v15 = MEMORY[0x277D84F90];
      v34 = v44 + 48;
      do
      {
        v16 = v12 - v13;
        v17 = (v14 + 296 * v13);
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            return result;
          }

          memcpy(__dst, v17 - 1, sizeof(__dst));
          v19 = v17[1];
          v18 = v17[2];
          v37[0] = *v17;
          v37[1] = v19;
          v37[2] = v18;
          v20 = v17[6];
          v22 = v17[3];
          v21 = v17[4];
          v37[5] = v17[5];
          v37[6] = v20;
          v37[3] = v22;
          v37[4] = v21;
          v23 = v17[10];
          v25 = v17[7];
          v24 = v17[8];
          v37[9] = v17[9];
          v38 = v23;
          v37[7] = v25;
          v37[8] = v24;
          v26 = v17[14];
          v28 = v17[11];
          v27 = v17[12];
          v41 = v17[13];
          v42 = v26;
          v39 = v28;
          v40 = v27;
          result = sub_22F1E1664(v37);
          if (result != 1)
          {
            if (*(&v38 + 1))
            {
              break;
            }
          }

          v17 = (v17 + 296);
          ++v13;
          if (!--v16)
          {
            goto LABEL_17;
          }
        }

        sub_22F18C4EC(__dst, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v15;
        v33 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v15 + 16) + 1, 1);
          v15 = v43;
        }

        v31 = *(v15 + 16);
        v30 = *(v15 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_22F1468FC((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v15 = v43;
        }

        ++v13;
        *(v15 + 16) = v32;
        result = memcpy((v15 + 296 * v31 + 32), __dst, 0x128uLL);
        v12 = v33;
        v14 = v34;
      }

      while (v16 != 1);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

LABEL_17:

    sub_22F1B2BBC(0);
    a5(v15, 0);
  }
}

uint64_t sub_22F22D750(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), NSObject *a6)
{
  v7 = v6;
  v76 = a6;
  v77 = a5;
  v75 = sub_22F740AD0();
  v73 = *(v75 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = a3[1];
  v87 = *a3;
  v88 = v20;
  v89 = a3[2];
  v90 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D48);
    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22F0FC000, v37, v38, "[Warning-Music] Empty playlist searchTerm", v39, 2u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    return v77(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v71 = a4;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search playlist", 30, 2u, v22, 0, v21, v84);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v70 = v14;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v69 = v7;
      v28 = v19;
      v29 = v15;
      v30 = v27;
      v31 = swift_slowAlloc();
      *&v78[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22F145F20(a1, a2, v78);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Search for apple music playlist: '%s'", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2319033A0](v31, -1, -1);
      v32 = v30;
      v15 = v29;
      v19 = v28;
      v7 = v69;
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    v33 = *(v7 + 40);
    v34 = *(v7 + 56);
    v35 = *(v7 + 64);
    aBlock = *(v7 + 24);
    v81 = v33;
    v82 = v34;
    v83 = v35;
    v78[0] = v87;
    v78[1] = v88;
    v78[2] = v89;
    v79 = v90;
    sub_22F3E3C18(a1, a2, &unk_2843DB070, v78, v19);
    v41 = *(&v85 + 1);
    v42 = v86;
    v43 = swift_allocObject();
    v44 = v84[1];
    *(v43 + 16) = v84[0];
    *(v43 + 32) = v44;
    *(v43 + 48) = v85;
    v45 = v77;
    *(v43 + 64) = v86;
    *(v43 + 72) = v45;
    v67 = v43;
    *(v43 + 80) = v76;
    v77 = v41;

    v69 = v42;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v72;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v73 + 8))(v46, v75);
    v76 = *(v7 + 72);
    v47 = *(v15 + 16);
    v48 = v74;
    v68 = v19;
    v49 = v19;
    v50 = v70;
    v47(v74, v49, v70);
    v51 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v52 = (v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = v15;
    v53 = (v52 + 63) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 39) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v15 + 32))(v55 + v51, v48, v50);
    v56 = v55 + v52;
    v57 = v88;
    *v56 = v87;
    *(v56 + 16) = v57;
    *(v56 + 32) = v89;
    *(v56 + 48) = v90;
    *(v55 + v53) = v7;
    v58 = v55 + v75;
    *v58 = "MusicKitClient HTTP Request";
    *(v58 + 8) = 27;
    *(v58 + 16) = 2;
    v59 = v71;
    *(v55 + v54) = v71;
    v60 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    v61 = v67;
    *v60 = sub_22F2340D0;
    v60[1] = v61;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_22F2360E0;
    *(v62 + 24) = v55;
    v82 = sub_22F2360E8;
    v83 = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v81 = sub_22F2280B0;
    *(&v81 + 1) = &block_descriptor_108;
    v63 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v87, v78);

    v64 = v59;

    dispatch_sync(v76, v63);
    _Block_release(v63);

    (*(v66 + 8))(v68, v50);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
    }
  }

  return result;
}