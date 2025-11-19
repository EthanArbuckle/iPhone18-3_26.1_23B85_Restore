uint64_t Logger.init(subsystem:category:)@<X0>(os_log_t *a1@<X8>)
{
  v2 = String.utf8CString.getter();

  v3 = String.utf8CString.getter();

  v4 = os_log_create((v2 + 32), (v3 + 32));

  *a1 = v4;
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

void _swift_os_log(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5, unsigned int *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = *__error();
  v17 = 0x1000000000000;
  v15 = v18;
  v16 = 0x36200000000;
  if (_os_log_encode(v18, a5, a6, v10, &v15))
  {
    _os_log_pack_size();
    v11 = &v14 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *(v11 + 4) = a2;
    memcpy(v12, v18, v16);
    os_log_pack_send();
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t os_log(_:dso:log:_:_:)(int a1, uint64_t a2, os_log_t oslog, char *a4, uint64_t a5, char a6, uint64_t a7)
{
  result = os_log_type_enabled(oslog, a1);
  if (!result)
  {
    return result;
  }

  v15 = _swift_os_log_return_address();
  v16 = MEMORY[0x1EEE9AC00](v15);
  if (a6)
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  v42 = v16;
  v43 = a1;
  v44 = a2;
  if (a5 < 0)
  {
    goto LABEL_44;
  }

  v45 = &v40;
  v46 = a4;
  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v18 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v19 = *(a7 + 16);
  if (!v19)
  {
    v38 = oslog;
LABEL_37:
    v39 = __VaListBuilder.va_list()();
    _swift_os_log(v44, v42, oslog, v43, v46, v39);
  }

  v20 = a7 + 32;
  v41 = oslog;
  a4 = 0;
  while (1)
  {
    v21 = (v20 + 40 * a4);
    v22 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v24 = *v18;
    v25 = *(v23 + 16);
    v26 = __OFADD__(*v18, v25);
    v27 = *v18 + v25;
    if (v26)
    {
      break;
    }

    v28 = v17[4];
    if (v28 >= v27)
    {
      goto LABEL_23;
    }

    if (v28 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v29 = v17[5];
    if (2 * v28 > v27)
    {
      v27 = 2 * v28;
    }

    v17[4] = v27;
    if ((v27 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v30 = v23;
    v31 = swift_slowAlloc();
    v32 = v31;
    v17[5] = v31;
    if (v29)
    {
      if (v24 < 0)
      {
        goto LABEL_43;
      }

      if (v31 != v29 || v31 >= &v29[8 * v24])
      {
        memmove(v31, v29, 8 * v24);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v23 = v30;
LABEL_23:
      v32 = v17[5];
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v23 = v30;
    if (!v32)
    {
LABEL_30:

      goto LABEL_31;
    }

LABEL_24:
    v34 = *(v23 + 16);
    if (v34)
    {
      v35 = (v23 + 32);
      v36 = *v18;
      while (1)
      {
        v37 = *v35++;
        *&v32[8 * v36] = v37;
        v36 = *v18 + 1;
        if (__OFADD__(*v18, 1))
        {
          break;
        }

        *v18 = v36;
        if (!--v34)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:

    if (++a4 == v19)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

LABEL_44:
  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  do
  {
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_32:
    ;
  }

  while (a4 >> 32 || a4 >> 16 > 0x10 || (a4 & 0xFFFFF800) == 0xD800);
  return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a4, partial apply for closure #1 in os_log(_:dso:log:_:_:));
}

uint64_t _os_log_encode(_WORD *a1, char *__s, unsigned int *a3, int a4, uint64_t a5)
{
  v5 = a5;
  v409 = a1;
  v414 = a3;
  HIDWORD(v413) = a4;
  WORD1(v413) = 0;
  if ((*(a5 + 20) & 2) == 0)
  {
    OUTLINED_FUNCTION_2();
    if (v8 <= 1)
    {
      os_trace_blob_add_slow(v5, &v413 + 2, 2uLL);
    }

    else
    {
      *(*v5 + v7) = WORD1(v413);
      v9 = *(v5 + 8) + 2;
      *(v5 + 8) = v9;
      if ((*(v5 + 22) & 1) == 0)
      {
        OUTLINED_FUNCTION_8(v9);
      }
    }
  }

  v10 = strchr(__s, 37);
  if (v10)
  {
    v18 = 1;
    do
    {
      v19 = (v10 + 1);
      if (v10[1] == 37)
      {
        v20 = v10 + 2;
      }

      else
      {
        LOWORD(v413) = 0;
        HIDWORD(__src) = 0;
        if (BYTE3(v413) == 48)
        {
          break;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = BYTE2(v413);
        v27 = 0x288900000000;
        v28 = 10;
        while (2)
        {
          v29 = *v19;
          switch(*v19)
          {
            case '@':
              v219 = *(v5 + 20);
              if (v25 == 2)
              {
                OUTLINED_FUNCTION_9();
                OUTLINED_FUNCTION_17();
                if ((v220 & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v230 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v221, v222, v223, v224, v225, v226, v227, v228, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v229, v409, v410, v411, __src, v413);
                    if ((v232 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v231);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    v242 = OUTLINED_FUNCTION_7(v241);
                    memcpy(v242, v243, v24);
                    OUTLINED_FUNCTION_3();
                    if ((v245 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v244);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_13(v233, v234, v235, v236, v237, v238, v239, v240, v409, v410, v411);
                  }
                }

                OUTLINED_FUNCTION_5();
                LOBYTE(v26) = BYTE2(v413);
                v246 = *(v5 + 20);
              }

              BYTE2(v413) = v26 | 2;
              OUTLINED_FUNCTION_9();
              v411 = *v248;
              LOBYTE(v413) = v23 & 0xF | 0x40;
              v249 = 8;
              goto LABEL_186;
            case 'A':
            case 'E':
            case 'F':
            case 'G':
            case 'a':
            case 'e':
            case 'f':
            case 'g':
              if (v25 == 2)
              {
                OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
                OUTLINED_FUNCTION_10();
                if ((v38 & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v48 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v39, v40, v41, v42, v43, v44, v45, v46, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v47, v409, v410, v411, __src, v413);
                    if ((v50 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v49);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    v61 = OUTLINED_FUNCTION_7(v59);
                    memcpy(v61, v62, v24);
                    OUTLINED_FUNCTION_3();
                    if ((v64 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v63);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_13(v51, v52, v53, v54, v55, v56, v57, v58, v409, v410, v411);
                  }
                }

                OUTLINED_FUNCTION_5();
              }

              if (v24 == 2)
              {
                OUTLINED_FUNCTION_15();
                OUTLINED_FUNCTION_4(v91, v92, v93, v94, v95, v96, v97, v98, v409, v410, v411, __src, v413, v414);
                HIDWORD(__src) = v99;
                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v109 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v100, v101, v102, v103, v104, v105, v106, v107, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v108, v409, v410, v411, __src, v413);
                    if ((v111 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v110);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    OUTLINED_FUNCTION_12(v120, v409, v410, v411, __src, SBYTE4(__src));
                    OUTLINED_FUNCTION_3();
                    if ((v122 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v121);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14(v112, v113, v114, v115, v116, v117, v118, v119, v409, v410, v411, __src, SBYTE4(__src));
                  }
                }

                OUTLINED_FUNCTION_5();
              }

              OUTLINED_FUNCTION_9();
              v411 = *v124;
              goto LABEL_102;
            case 'B':
            case 'D':
            case 'H':
            case 'I':
            case 'J':
            case 'K':
            case 'M':
            case 'N':
            case 'O':
            case 'Q':
            case 'R':
            case 'S':
            case 'T':
            case 'U':
            case 'V':
            case 'W':
            case 'Y':
            case 'Z':
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case 'b':
            case 'k':
            case 'n':
            case 'q':
            case 'r':
            case 'v':
            case 'w':
            case 'y':
              goto LABEL_16;
            case 'C':
              v190 = *(v5 + 20);
              if (v25 == 2)
              {
                OUTLINED_FUNCTION_9();
                OUTLINED_FUNCTION_17();
                if ((v191 & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v201 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v192, v193, v194, v195, v196, v197, v198, v199, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v200, v409, v410, v411, __src, v413);
                    if ((v203 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v202);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    v213 = OUTLINED_FUNCTION_7(v212);
                    memcpy(v213, v214, v24);
                    OUTLINED_FUNCTION_3();
                    if ((v216 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v215);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_13(v204, v205, v206, v207, v208, v209, v210, v211, v409, v410, v411);
                  }
                }

                OUTLINED_FUNCTION_5();
                v217 = *(v5 + 20);
                v218 = v413 & 0xF;
              }

              else
              {
                v218 = 0;
              }

              if (v24 == 2)
              {
                LOBYTE(v413) = v218;
                BYTE1(v413) = 4;
                OUTLINED_FUNCTION_9();
                HIDWORD(__src) = *v303;
                if ((v304 & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v314 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v305, v306, v307, v308, v309, v310, v311, v312, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v313, v409, v410, v411, __src, v413);
                    if ((v316 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v315);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    OUTLINED_FUNCTION_12(v325, v409, v410, v411, __src, SBYTE4(__src));
                    OUTLINED_FUNCTION_3();
                    if ((v327 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v326);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14(v317, v318, v319, v320, v321, v322, v323, v324, v409, v410, v411, __src, SBYTE4(__src));
                  }
                }

                OUTLINED_FUNCTION_5();
                v328 = *(v5 + 20);
              }

              OUTLINED_FUNCTION_9();
              LODWORD(v411) = *v329;
              LOBYTE(v413) = v23 & 0xF;
              v249 = 4;
LABEL_186:
              BYTE1(v413) = v249;
              if ((v247 & 2) != 0)
              {
                goto LABEL_107;
              }

              goto LABEL_104;
            case 'L':
              goto LABEL_54;
            case 'P':
              if (v25 != 2)
              {
                if (!v24)
                {
                  goto LABEL_205;
                }

LABEL_189:
                OUTLINED_FUNCTION_15();
                if (v24 == 2)
                {
                  OUTLINED_FUNCTION_4(v330, v331, v332, v333, v334, v335, v336, v337, v409, v410, v411, __src, v413, v414);
                  HIDWORD(__src) = v338;
                }

                else
                {
                  LOBYTE(v413) = v23 & 0xF | 0x10;
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v348 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v339, v340, v341, v342, v343, v344, v345, v346, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v347, v409, v410, v411, __src, v413);
                    if ((v350 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v349);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    OUTLINED_FUNCTION_12(v359, v409, v410, v411, __src, SBYTE4(__src));
                    OUTLINED_FUNCTION_3();
                    if ((v361 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v360);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14(v351, v352, v353, v354, v355, v356, v357, v358, v409, v410, v411, __src, SBYTE4(__src));
                  }
                }

                OUTLINED_FUNCTION_5();
                goto LABEL_205;
              }

              OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
              OUTLINED_FUNCTION_10();
              if ((v250 & 2) == 0)
              {
                OUTLINED_FUNCTION_2();
                if (v260 <= 1)
                {
                  OUTLINED_FUNCTION_11(v251, v252, v253, v254, v255, v256, v257, v258, v409, v410, v411, __src, v413);
                }

                else
                {
                  OUTLINED_FUNCTION_0(v259, v409, v410, v411, __src, v413);
                  if ((v262 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v261);
                  }
                }
              }

              if ((*(v5 + 20) & 2) == 0)
              {
                OUTLINED_FUNCTION_1();
                if (v60)
                {
                  v272 = OUTLINED_FUNCTION_7(v271);
                  memcpy(v272, v273, v24);
                  OUTLINED_FUNCTION_3();
                  if ((v275 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v274);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_13(v263, v264, v265, v266, v267, v268, v269, v270, v409, v410, v411);
                }
              }

              OUTLINED_FUNCTION_5();
              if (v24)
              {
                goto LABEL_189;
              }

LABEL_205:
              BYTE2(v413) |= 2u;
              OUTLINED_FUNCTION_6();
              v411 = *v362;
              v123 = v23 & 0xF | 0x30;
LABEL_102:
              LOBYTE(v413) = v123;
              v158 = 8;
LABEL_103:
              BYTE1(v413) = v158;
              if ((*(v5 + 20) & 2) == 0)
              {
LABEL_104:
                OUTLINED_FUNCTION_2();
                if (v168 <= 1)
                {
                  OUTLINED_FUNCTION_11(v159, v160, v161, v162, v163, v164, v165, v166, v409, v410, v411, __src, v413);
                }

                else
                {
                  OUTLINED_FUNCTION_0(v167, v409, v410, v411, __src, v413);
                  if ((v170 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v169);
                  }
                }
              }

LABEL_107:
              if ((*(v5 + 20) & 2) == 0)
              {
                OUTLINED_FUNCTION_1();
                if (v60)
                {
                  v172 = OUTLINED_FUNCTION_7(v171);
LABEL_111:
                  memcpy(v172, v173, v24);
                  OUTLINED_FUNCTION_3();
                  if ((v175 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v174);
                  }
                }

                else
                {
                  v407 = &v411;
LABEL_227:
                  os_trace_blob_add_slow(v5, v407, v24);
                }
              }

LABEL_113:
              OUTLINED_FUNCTION_5();
              goto LABEL_114;
            case 'X':
            case 'c':
            case 'd':
            case 'i':
            case 'o':
            case 'u':
            case 'x':
              if (v25 == 2)
              {
                OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
                OUTLINED_FUNCTION_10();
                if ((v65 & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v75 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v66, v67, v68, v69, v70, v71, v72, v73, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v74, v409, v410, v411, __src, v413);
                    if ((v77 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v76);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    v87 = OUTLINED_FUNCTION_7(v86);
                    memcpy(v87, v88, v24);
                    OUTLINED_FUNCTION_3();
                    if ((v90 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v89);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_13(v78, v79, v80, v81, v82, v83, v84, v85, v409, v410, v411);
                  }
                }

                OUTLINED_FUNCTION_5();
              }

              if (v24 == 2)
              {
                OUTLINED_FUNCTION_15();
                OUTLINED_FUNCTION_4(v125, v126, v127, v128, v129, v130, v131, v132, v409, v410, v411, __src, v413, v414);
                HIDWORD(__src) = v133;
                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v143 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v134, v135, v136, v137, v138, v139, v140, v141, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v142, v409, v410, v411, __src, v413);
                    if ((v145 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v144);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    OUTLINED_FUNCTION_12(v154, v409, v410, v411, __src, SBYTE4(__src));
                    OUTLINED_FUNCTION_3();
                    if ((v156 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v155);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14(v146, v147, v148, v149, v150, v151, v152, v153, v409, v410, v411, __src, SBYTE4(__src));
                  }
                }

                OUTLINED_FUNCTION_5();
              }

              switch(v22)
              {
                case -2:
                case -1:
                case 0:
                  OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
                  LODWORD(v411) = v176;
                  LOBYTE(v413) = v23 & 0xF;
                  v158 = 4;
                  goto LABEL_103;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                  goto LABEL_101;
                default:
                  result = 0;
                  break;
              }

              return result;
            case 'h':
              --v22;
              goto LABEL_54;
            case 'j':
              v22 = 4;
              goto LABEL_54;
            case 'l':
              ++v22;
              goto LABEL_54;
            case 'm':
              BYTE1(v413) = 4;
              LOBYTE(v413) = v23 & 0xF;
              if ((*(v5 + 20) & 2) == 0)
              {
                OUTLINED_FUNCTION_2();
                if (v186 <= 1)
                {
                  OUTLINED_FUNCTION_11(v177, v178, v179, v180, v181, v182, v183, v184, v409, v410, v411, __src, v413);
                }

                else
                {
                  OUTLINED_FUNCTION_0(v185, v409, v410, v411, __src, v413);
                  if ((v188 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v187);
                  }
                }
              }

              if ((*(v5 + 20) & 2) != 0)
              {
                goto LABEL_113;
              }

              OUTLINED_FUNCTION_1();
              if (!v60)
              {
                v407 = (&v413 + 4);
                goto LABEL_227;
              }

              v172 = (*v5 + v189);
              v173 = &v413 + 4;
              goto LABEL_111;
            case 'p':
LABEL_101:
              OUTLINED_FUNCTION_6();
              v411 = *v157;
              v123 = v23 & 0xF;
              goto LABEL_102;
            case 's':
              if (v25 != 2)
              {
                v302 = 0;
                if (!v24)
                {
                  goto LABEL_217;
                }

LABEL_192:
                LOBYTE(v413) = v302 & 0xF | 0x10;
                BYTE1(v413) = 4;
                if (v24 == 2)
                {
                  OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
                  HIDWORD(__src) = v363;
                }

                else
                {
                  LOBYTE(v413) = v23 & 0xF | 0x10;
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_2();
                  if (v373 <= 1)
                  {
                    OUTLINED_FUNCTION_11(v364, v365, v366, v367, v368, v369, v370, v371, v409, v410, v411, __src, v413);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0(v372, v409, v410, v411, __src, v413);
                    if ((v375 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v374);
                    }
                  }
                }

                if ((*(v5 + 20) & 2) == 0)
                {
                  OUTLINED_FUNCTION_1();
                  if (v60)
                  {
                    OUTLINED_FUNCTION_12(v384, v409, v410, v411, __src, SBYTE4(__src));
                    OUTLINED_FUNCTION_3();
                    if ((v386 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_8(v385);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14(v376, v377, v378, v379, v380, v381, v382, v383, v409, v410, v411, __src, SBYTE4(__src));
                  }
                }

                OUTLINED_FUNCTION_5();
                v302 = v413;
                goto LABEL_217;
              }

              OUTLINED_FUNCTION_4(v10, v11, v12, v13, v14, v15, v16, v17, v409, v410, v411, __src, v413, v414);
              OUTLINED_FUNCTION_10();
              if ((v276 & 2) == 0)
              {
                OUTLINED_FUNCTION_2();
                if (v286 <= 1)
                {
                  OUTLINED_FUNCTION_11(v277, v278, v279, v280, v281, v282, v283, v284, v409, v410, v411, __src, v413);
                }

                else
                {
                  OUTLINED_FUNCTION_0(v285, v409, v410, v411, __src, v413);
                  if ((v288 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v287);
                  }
                }
              }

              if ((*(v5 + 20) & 2) == 0)
              {
                OUTLINED_FUNCTION_1();
                if (v60)
                {
                  v298 = OUTLINED_FUNCTION_7(v297);
                  memcpy(v298, v299, v24);
                  OUTLINED_FUNCTION_3();
                  if ((v301 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v300);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_13(v289, v290, v291, v292, v293, v294, v295, v296, v409, v410, v411);
                }
              }

              OUTLINED_FUNCTION_5();
              v302 = v413;
              if (v24)
              {
                goto LABEL_192;
              }

LABEL_217:
              BYTE2(v413) |= 2u;
              LOBYTE(v413) = v302 & 0xF | 0x20;
              OUTLINED_FUNCTION_6();
              v388 = *v387;
              v411 = [v388 UTF8String];
              LOBYTE(v413) = v413 & 0xF0 | v23 & 0xF;
              BYTE1(v413) = 8;
              if ((*(v5 + 20) & 2) == 0)
              {
                OUTLINED_FUNCTION_2();
                if (v398 <= 1)
                {
                  OUTLINED_FUNCTION_11(v389, v390, v391, v392, v393, v394, v395, v396, v409, v410, v411, __src, v413);
                }

                else
                {
                  OUTLINED_FUNCTION_0(v397, v409, v410, v411, __src, v413);
                  if ((v400 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v399);
                  }
                }
              }

              if ((*(v5 + 20) & 2) == 0)
              {
                v401 = BYTE1(v413);
                OUTLINED_FUNCTION_2();
                if (v403 < v401)
                {
                  os_trace_blob_add_slow(v5, &v411, v401);
                }

                else
                {
                  v404 = OUTLINED_FUNCTION_7(v402);
                  memcpy(v404, v405, v401);
                  v406 = *(v5 + 8) + v401;
                  *(v5 + 8) = v406;
                  if ((*(v5 + 22) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_8(v406);
                  }
                }
              }

              OUTLINED_FUNCTION_5();

LABEL_114:
              v20 = v19;
              break;
            case 't':
              v22 = 5;
              goto LABEL_54;
            case 'z':
              v22 = 3;
              goto LABEL_54;
            case '{':
              v30 = 1;
              while (2)
              {
                if (!v19[v30])
                {
                  goto LABEL_54;
                }

                if (v19[v30] != 125)
                {
                  ++v30;
                  continue;
                }

                break;
              }

              v33 = v5;
              HIDWORD(v410) = v25;
              v34 = v26;
              v18 = v30 - 1;
              if (v30 - 1 >= 9)
              {
                v35 = 9;
              }

              else
              {
                v35 = v30 - 1;
              }

              if (!strncmp(v19 + 1, "sensitive", v35))
              {
                BYTE2(v413) = v34 | 1;
                v23 |= 5u;
LABEL_52:
                OUTLINED_FUNCTION_16();
                goto LABEL_53;
              }

              if (v18 >= 7)
              {
                v36 = 7;
              }

              else
              {
                v36 = v30 - 1;
              }

              if (!strncmp(v19 + 1, "private", v36))
              {
                BYTE2(v413) = v34 | 1;
                v23 |= 1u;
                goto LABEL_52;
              }

              if (v18 >= 6)
              {
                v37 = 6;
              }

              else
              {
                v37 = v30 - 1;
              }

              if (!strncmp(v19 + 1, "public", v37))
              {
                v23 |= 2u;
              }

              OUTLINED_FUNCTION_16();
              v26 = v34;
LABEL_53:
              v25 = HIDWORD(v410);
              v5 = v33;
LABEL_54:
              ++v19;
              continue;
            default:
              if (v29 > 0x2E)
              {
                goto LABEL_16;
              }

              if (((v18 << v29) & v27) != 0)
              {
                goto LABEL_54;
              }

              if (v29 == 42)
              {
                v25 = 2;
                if (v19[1] != 46)
                {
                  goto LABEL_54;
                }

                ++v19;
LABEL_29:
                v31 = v19[1];
                if (v31 == 42)
                {
                  v24 = 2;
                  ++v19;
                }

                else
                {
                  v32 = v31 - 48;
                  if ((v31 - 48) <= 9)
                  {
                    do
                    {
                      v21 = v32 + v21 * v28;
                      HIDWORD(__src) = v21;
                      v32 = v19[2] - 48;
                      ++v19;
                    }

                    while (v32 < 0xA);
                  }

                  if (v21 >= 1025)
                  {
                    v21 = 1024;
                    HIDWORD(__src) = 1024;
                  }

                  v24 = 1;
                }

                goto LABEL_54;
              }

              if (v29 == 46)
              {
                goto LABEL_29;
              }

LABEL_16:
              if ((v29 - 48) >= 0xA)
              {
                goto LABEL_114;
              }

              goto LABEL_54;
          }

          break;
        }
      }

      v10 = strchr(v20, 37);
    }

    while (v10);
  }

  *v409 = WORD1(v413);
  return 1;
}

void OUTLINED_FUNCTION_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(*v6 + a1) = a6;
  *(v6 + 8) += 2;
  v7 = *(v6 + 22);
}

uint64_t os_log(_:dso:log:type:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, os_log_t oslog, int a6, uint64_t a7)
{
  result = os_log_type_enabled(oslog, a6);
  if (!result)
  {
    return result;
  }

  v15 = _swift_os_log_return_address();
  v16 = MEMORY[0x1EEE9AC00](v15);
  if (a3)
  {
    goto LABEL_32;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

  v42 = v16;
  v43 = a4;
  if (a2 < 0)
  {
    goto LABEL_44;
  }

  v44 = a6;
  v46 = a1;
  v47 = &v41;
  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v18 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v19 = *(a7 + 16);
  v45 = oslog;
  if (!v19)
  {
    v38 = oslog;
LABEL_37:
    v39 = __VaListBuilder.va_list()();
    v40 = v45;
    _swift_os_log(v43, v42, v45, v44, v46, v39);
  }

  v20 = a7 + 32;
  v41 = oslog;
  v21 = 0;
  while (1)
  {
    v22 = (v20 + 40 * v21);
    v23 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v25 = *v18;
    v26 = *(v24 + 16);
    v27 = __OFADD__(*v18, v26);
    v28 = *v18 + v26;
    if (v27)
    {
      break;
    }

    v29 = v17[4];
    if (v29 >= v28)
    {
      goto LABEL_23;
    }

    if (v29 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v30 = v17[5];
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    v17[4] = v28;
    if ((v28 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    a1 = v24;
    v31 = swift_slowAlloc();
    v32 = v31;
    v17[5] = v31;
    if (v30)
    {
      if (v25 < 0)
      {
        goto LABEL_43;
      }

      if (v31 != v30 || v31 >= &v30[8 * v25])
      {
        memmove(v31, v30, 8 * v25);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v24 = a1;
LABEL_23:
      v32 = v17[5];
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v24 = a1;
    if (!v32)
    {
LABEL_30:

      goto LABEL_31;
    }

LABEL_24:
    v34 = *(v24 + 16);
    if (v34)
    {
      v35 = (v24 + 32);
      v36 = *v18;
      while (1)
      {
        v37 = *v35++;
        *&v32[8 * v36] = v37;
        v36 = *v18 + 1;
        if (__OFADD__(*v18, 1))
        {
          break;
        }

        *v18 = v36;
        if (!--v34)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:

    if (++v21 == v19)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

LABEL_44:
  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  do
  {
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_32:
    ;
  }

  while (HIDWORD(a1) || a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800);
  return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a1, partial apply for closure #1 in os_log(_:dso:log:type:_:));
}

void *static OSSignpostID.exclusive.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

void _swift_os_signpost_with_format(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unsigned int *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = *__error();
  v20 = 0x1000000000362;
  v18 = v21;
  v19 = 0x36200000000;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = "";
  }

  if (_os_log_encode(v21, v13, a8, v12, &v18))
  {
    v14 = _os_log_pack_size();
    v15 = &v18 - ((MEMORY[0x1EEE9AC00](v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_signpost_pack_fill();
    *(v15 + 4) = a2;
    memcpy(v16, v21, v19);
    _os_signpost_pack_send();
  }

  v17 = *MEMORY[0x1E69E9840];
}

id static OS_os_log.default.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id one-time initialization function for disabled()
{
  result = _swift_os_log_disabled();
  static OS_os_log.disabled = result;
  return result;
}

id one-time initialization function for default()
{
  result = _swift_os_log_default();
  static OS_os_log.default = result;
  return result;
}

uint64_t type metadata instantiation function for OSAllocatedUnfairLock()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void OSSignpostID.init(log:object:)(NSObject *a1@<X0>, const void *a2@<X1>, os_signpost_id_t *a3@<X8>)
{
  v5 = os_signpost_id_make_with_pointer(a1, a2);
  swift_unknownObjectRelease();

  *a3 = v5;
}

os_log_t OS_os_log.init(subsystem:category:)()
{
  v0 = String.utf8CString.getter();

  v1 = String.utf8CString.getter();

  v2 = os_log_create((v0 + 32), (v1 + 32));

  return v2;
}

uint64_t OSSignposter.init(subsystem:category:)@<X0>(os_log_t *a1@<X8>)
{
  v2 = String.utf8CString.getter();

  v3 = String.utf8CString.getter();

  v4 = os_log_create((v2 + 32), (v3 + 32));

  *a1 = v4;
  return result;
}

void OSSignpostID.init(log:)(NSObject *a1@<X0>, os_signpost_id_t *a2@<X8>)
{
  v4 = os_signpost_id_generate(a1);

  *a2 = v4;
}

uint64_t OSSignpostIntervalState.init(id:isOpen:)(void *a1, char a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static OS_os_log.Category.pointsOfInterest.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t one-time initialization function for pointsOfInterest()
{
  result = String.init(cString:)();
  static OS_os_log.Category.pointsOfInterest = result;
  unk_1EB2A4790 = v1;
  return result;
}

uint64_t os_signpost(_:dso:log:name:signpostID:_:_:)(uint64_t result, uint64_t a2, os_log_t log, unint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  LOBYTE(v12) = a6;
  LOBYTE(v16) = result;
  v17 = *a7;
  if (one-time initialization token for invalid != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    if (v17 == static OSSignpostID.invalid)
    {
      return result;
    }

    if (one-time initialization token for null != -1)
    {
LABEL_52:
      swift_once();
    }

    v18 = static OSSignpostID.null;
    result = os_signpost_enabled(log);
    if (!result || v17 == v18)
    {
      return result;
    }

    v19 = _swift_os_log_return_address();
    v20 = MEMORY[0x1EEE9AC00](v19);
    v47 = a2;
    v46 = v16;
    if (v12)
    {
      if (!HIDWORD(a4) && a4 >> 16 <= 0x10 && (a4 & 0xFFFFF800) != 0xD800)
      {
        v38 = partial apply for closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:);
        v39 = a4;
        return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(v39, v38);
      }

      goto LABEL_60;
    }

    if (!a4)
    {
      goto LABEL_60;
    }

    if (a5 < 0)
    {
      goto LABEL_59;
    }

    v21 = MEMORY[0x1EEE9AC00](v20);
    if (a10)
    {
      if (!HIDWORD(a8) && a8 >> 16 <= 0x10 && (a8 & 0xFFFFF800) != 0xD800)
      {
        v38 = partial apply for closure #1 in closure #1 in closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:);
        v39 = a8;
        return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(v39, v38);
      }

      goto LABEL_60;
    }

    if (!a8)
    {
      goto LABEL_60;
    }

    v43 = a4;
    v45 = v21;
    if (v23 < 0)
    {
LABEL_59:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
LABEL_60:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    log = v22;
    v44 = a8;
    type metadata accessor for __VaListBuilder();
    v16 = swift_allocObject();
    v16[2] = 8;
    v16[3] = 0;
    a4 = (v16 + 3);
    v16[4] = 0;
    v16[5] = 0;
    v24 = *(a11 + 16);
    if (!v24)
    {
      break;
    }

    a5 = a11 + 32;
    v42 = log;
    a2 = 0;
    while (1)
    {
      v25 = (a5 + 40 * a2);
      v12 = v25[3];
      a8 = __swift_project_boxed_opaque_existential_1(v25, v12);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v27 = *a4;
      v28 = *(v26 + 16);
      v29 = __OFADD__(*a4, v28);
      v30 = *a4 + v28;
      if (v29)
      {
        __break(1u);
        goto LABEL_52;
      }

      v31 = v26;
      a8 = v16[4];
      if (a8 >= v30)
      {
        goto LABEL_30;
      }

      if (a8 + 0x4000000000000000 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:

        goto LABEL_60;
      }

      v12 = v16[5];
      if (2 * a8 > v30)
      {
        v30 = 2 * a8;
      }

      v16[4] = v30;
      if ((v30 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_54;
      }

      v32 = swift_slowAlloc();
      v16[5] = v32;
      if (v12)
      {
        if (v27 < 0)
        {

          goto LABEL_59;
        }

        if (v32 != v12 || v32 >= v12 + 8 * v27)
        {
          memmove(v32, v12, 8 * v27);
        }

        a8 = v16;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_30:
        v32 = v16[5];
      }

      if (!v32)
      {
        goto LABEL_55;
      }

      v34 = *(v31 + 16);
      if (v34)
      {
        break;
      }

LABEL_14:

      if (++a2 == v24)
      {
        goto LABEL_47;
      }
    }

    v35 = (v31 + 32);
    v36 = *a4;
    while (1)
    {
      v37 = *v35++;
      *(v32 + v36) = v37;
      v36 = *a4 + 1;
      if (__OFADD__(*a4, 1))
      {
        break;
      }

      *a4 = v36;
      if (!--v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_50:
    result = swift_once();
  }

  v40 = log;
LABEL_47:
  v41 = __VaListBuilder.va_list()();
  _swift_os_signpost_with_format(v47, v45, log, v46, v43, v17, v44, v41);
}

void os_signpost(_:dso:log:name:signpostID:)(unsigned __int8 a1, uint64_t a2, os_log_t log, unint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v13 = *a7;
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  if (v13 != static OSSignpostID.invalid)
  {
    if (one-time initialization token for null != -1)
    {
      swift_once();
    }

    v14 = static OSSignpostID.null;
    if (os_signpost_enabled(log) && v13 != v14)
    {
      v15 = _swift_os_log_return_address();
      MEMORY[0x1EEE9AC00](v15);
      if ((a6 & 1) == 0)
      {
        if (a4)
        {
          if ((a5 & 0x8000000000000000) == 0)
          {
            _swift_os_signpost(a2, v16, log, a1, a4, v13);
            return;
          }

          _fatalErrorMessage(_:_:file:line:flags:)();
          __break(1u);
        }

        goto LABEL_20;
      }

      if (HIDWORD(a4) || a4 >> 16 > 0x10 || (a4 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a4, partial apply for closure #1 in os_signpost(_:dso:log:name:signpostID:));
    }
  }
}

id Logger.init()@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static OS_os_log.default;
  *a1 = static OS_os_log.default;

  return v2;
}

uint64_t checkForErrorAndConsumeState(state:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 24);
  *(result + 24) = 0;
  *a2 = v2;
  return result;
}

uint64_t static OSLogIntegerFormatting.decimal(explicitPositiveSign:)(char a1)
{
  v2 = 10;
  v3 = a1 & 1;
  v4 = 0;
  v5 = 0;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  v6 = 0;
  v7 = 0;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined destroy of OSLogIntegerFormatting(&v2);
  return 10;
}

uint64_t _sxRi_zRi0_zlySiIsegr_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SiIegd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OSSignpostIntervalState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy2os23OSSignpostIntervalStateC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy2os23OSSignpostIntervalStateC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance OSSignpostIntervalState.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E65704F7369;
  }

  else
  {
    result = 0x74736F706E676973;
  }

  *v0;
  return result;
}

uint64_t _s2os15OSMetricCounterVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A78A1CBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1CF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1D40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1D7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1DC4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double _s2os12OSLogMessageVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedghI0x0fghI4TypeQz_tcfCTW_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OSLogMessage.init(stringLiteral:)(*a1, *(a1 + 8), v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1A78A1E98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1ED4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1F1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1FA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A78A1FDC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A78A2014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

size_t OUTLINED_FUNCTION_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src)
{

  return os_trace_blob_add_slow(v13, &__src, 2uLL);
}

void *OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char __src)
{
  v9 = (*v6 + a1);

  return memcpy(v9, &__src, v7);
}

size_t OUTLINED_FUNCTION_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return os_trace_blob_add_slow(v11, &__src, v12);
}

size_t OUTLINED_FUNCTION_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char __src)
{

  return os_trace_blob_add_slow(v13, &__src, v14);
}

void os_trace_blob_destroy_slow(uint64_t a1)
{
  v1 = *a1;
  *a1 = 3954044928;
  *(a1 + 20) = 0;
  free(v1);
}

void *os_trace_blob_detach(uint64_t a1, void *a2)
{
  v2 = *(a1 + 20);
  v3 = *a1;
  *a1 = 3954044928;
  *(a1 + 20) = 0;
  if (a2)
  {
    *a2 = *(a1 + 8);
  }

  if (v2)
  {
    return v3;
  }

  v4 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  v5 = _os_trace_malloc(v4);

  return memcpy(v5, v3, v4);
}

uint64_t os_trace_blob_grow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  v4 = v3 + a2;
  if (__CFADD__(v3, a2) || HIDWORD(v4))
  {
    v5 = *(a1 + 12);
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      if (2 * v5 > v4)
      {
        LODWORD(v4) = 2 * v5;
      }

      if (*(a1 + 16) >= v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = *(a1 + 16);
      }
    }
  }

  if (v6 > v5)
  {
    v7 = *a1;
    if (*(a1 + 20))
    {
      while (1)
      {
        v9 = malloc_type_realloc(v7, v6, 0x85551F3CuLL);
        if (v9)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      *a1 = v9;
    }

    else
    {
      v8 = _os_trace_malloc(v6);
      *a1 = v8;
      memcpy(v8, v7, v3);
      *(a1 + 20) |= 1u;
    }

    *(a1 + 12) = v6;
  }

  return v6 - v3;
}

void *_os_trace_malloc(size_t a1)
{
  for (i = a1; ; a1 = i)
  {
    result = malloc_type_malloc(a1, 0x7C22B1AFuLL);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_workgroup_join_token_opaque_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_workgroup_join_token_opaque_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t closure #1 in os_log(_:dso:log:_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  type metadata accessor for __VaListBuilder();
  v9 = swift_allocObject();
  v9[2] = 8;
  v9[3] = 0;
  v10 = v9 + 3;
  v9[4] = 0;
  v9[5] = 0;
  v11 = *(a3 + 16);
  v38 = a6;
  if (!v11)
  {
LABEL_28:
    v30 = a6;
LABEL_29:
    v31 = __VaListBuilder.va_list()();
    _swift_os_log(a4, a5, v38, a7, a1, v31);
  }

  v12 = a3 + 32;
  v33 = a6;
  v13 = 0;
  while (1)
  {
    v14 = (v12 + 40 * v13);
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v16 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v17 = *v10;
    v18 = *(v16 + 16);
    v19 = __OFADD__(*v10, v18);
    v20 = *v10 + v18;
    if (v19)
    {
      break;
    }

    v21 = v9[4];
    if (v21 >= v20)
    {
      goto LABEL_20;
    }

    if (v21 + 0x4000000000000000 < 0)
    {
      goto LABEL_34;
    }

    v22 = v9[5];
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    v9[4] = v20;
    if ((v20 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_35;
    }

    a6 = v16;
    v23 = swift_slowAlloc();
    v24 = v23;
    v9[5] = v23;
    if (v22)
    {
      if (v17 < 0)
      {
        goto LABEL_36;
      }

      if (v23 != v22 || v23 >= &v22[8 * v17])
      {
        memmove(v23, v22, 8 * v17);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v16 = a6;
LABEL_20:
      v24 = v9[5];
      if (!v24)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v16 = a6;
    if (!v24)
    {
LABEL_27:

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_28;
    }

LABEL_21:
    v26 = *(v16 + 16);
    if (v26)
    {
      v27 = (v16 + 32);
      v28 = *v10;
      while (1)
      {
        v29 = *v27++;
        *&v24[8 * v28] = v29;
        v28 = *v10 + 1;
        if (__OFADD__(*v10, 1))
        {
          break;
        }

        *v10 = v28;
        if (!--v26)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      break;
    }

LABEL_4:

    if (++v13 == v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in os_log(_:dso:log:type:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  type metadata accessor for __VaListBuilder();
  v9 = swift_allocObject();
  v9[2] = 8;
  v9[3] = 0;
  v10 = v9 + 3;
  v9[4] = 0;
  v9[5] = 0;
  v11 = *(a3 + 16);
  v38 = a6;
  if (!v11)
  {
LABEL_28:
    v30 = a6;
LABEL_29:
    v31 = __VaListBuilder.va_list()();
    _swift_os_log(a4, a5, v38, a7, a1, v31);
  }

  v12 = a3 + 32;
  v33 = a6;
  v13 = 0;
  while (1)
  {
    v14 = (v12 + 40 * v13);
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v16 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v17 = *v10;
    v18 = *(v16 + 16);
    v19 = __OFADD__(*v10, v18);
    v20 = *v10 + v18;
    if (v19)
    {
      break;
    }

    v21 = v9[4];
    if (v21 >= v20)
    {
      goto LABEL_20;
    }

    if (v21 + 0x4000000000000000 < 0)
    {
      goto LABEL_34;
    }

    v22 = v9[5];
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    v9[4] = v20;
    if ((v20 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_35;
    }

    a6 = v16;
    v23 = swift_slowAlloc();
    v24 = v23;
    v9[5] = v23;
    if (v22)
    {
      if (v17 < 0)
      {
        goto LABEL_36;
      }

      if (v23 != v22 || v23 >= &v22[8 * v17])
      {
        memmove(v23, v22, 8 * v17);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v16 = a6;
LABEL_20:
      v24 = v9[5];
      if (!v24)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v16 = a6;
    if (!v24)
    {
LABEL_27:

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_28;
    }

LABEL_21:
    v26 = *(v16 + 16);
    if (v26)
    {
      v27 = (v16 + 32);
      v28 = *v10;
      while (1)
      {
        v29 = *v27++;
        *&v24[8 * v28] = v29;
        v28 = *v10 + 1;
        if (__OFADD__(*v10, 1))
        {
          break;
        }

        *v10 = v28;
        if (!--v26)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      break;
    }

LABEL_4:

    if (++v13 == v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(unsigned int a1, uint64_t (*a2)(uint64_t *))
{
  if (a1 >= 0x80)
  {
    v4 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v5 = (v4 | (a1 >> 6) & 0x3F) << 8;
      v6 = (((v5 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v2 = (a1 >> 12) + v5 + 8487393;
      if (HIWORD(a1))
      {
        v2 = v6;
      }
    }

    else
    {
      v2 = (a1 >> 6) + v4 + 33217;
    }
  }

  else
  {
    v2 = a1 + 1;
  }

  v7 = (v2 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v2) >> 3))));
  return a2(&v7);
}

uint64_t static OSMetricDimensions.empty.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static OSMetricDimensions.empty;
}

uint64_t OSMetricDimensions.bridged.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 <= 0xFF)
  {
    v3 = *(v1 + 16);
    v4 = os_metric_dimensions_create();
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = (v1 + 56);
      do
      {
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        v10 = *v6;
        String.utf8CString.getter();
        String.utf8CString.getter();
        os_metric_dimensions_add();

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    return v4;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance OSMetricFlags(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance OSMetricFlags@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance OSMetricFlags@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void __swiftcall OSMetricGroup.init(subsystem:category:dimensions:)(os::OSMetricGroup *__return_ptr retstr, Swift::String subsystem, Swift::String category, os::OSMetricDimensions dimensions)
{
  v4 = *dimensions.values._rawValue;
  retstr->subsystem = subsystem;
  retstr->category = category;
  retstr->dimensions.values._rawValue = v4;
}

uint64_t one-time initialization function for default()
{
  static OSMetricGroup.default = 0;
  unk_1EB2A4800 = 0xE000000000000000;
  qword_1EB2A4808 = 0;
  unk_1EB2A4810 = 0xE000000000000000;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  qword_1EB2A4818 = static OSMetricDimensions.empty;
}

void __swiftcall OSMetricGroup.init()(os::OSMetricGroup *__return_ptr retstr)
{
  retstr->subsystem._countAndFlagsBits = 0;
  retstr->subsystem._object = 0xE000000000000000;
  retstr->category._countAndFlagsBits = 0;
  retstr->category._object = 0xE000000000000000;
  if (one-time initialization token for empty != -1)
  {
    v2 = retstr;
    swift_once();
    retstr = v2;
  }

  retstr->dimensions.values._rawValue = static OSMetricDimensions.empty;
}

uint64_t static OSMetricGroup.default.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EB2A4800;
  v2 = qword_1EB2A4808;
  v3 = unk_1EB2A4810;
  v4 = qword_1EB2A4818;
  *a1 = static OSMetricGroup.default;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void OSMetricCounter.init<A>(type:group:label:extraDimensions:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, uint64_t *a4@<X8>)
{
  OSMetricCounter.init<A>(type:group:label:extraDimensions:flags:)(a1, a2, a3, MEMORY[0x1E69E9C28], a4);
}

{
  OSMetricCounter.init<A>(type:group:label:extraDimensions:flags:)(a1, a2, a3, MEMORY[0x1E69E9C30], a4);
}

{
  OSMetricCounter.init<A>(type:group:label:extraDimensions:flags:)(a1, a2, a3, MEMORY[0x1E69E9C20], a4);
}

void OSMetricBridge.init<A>(group:label:dimensions:type:level:bins:interval:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, unsigned __int8 *a4@<X5>, unsigned __int8 a5@<W6>, unsigned int a6@<W7>, uint64_t *a7@<X8>, unsigned __int8 a8)
{
  OSMetricBridge.init<A>(group:label:dimensions:type:level:bins:interval:flags:)(a1, a2, a3, a4, a5, a6, a7, a8, MEMORY[0x1E69E9C28]);
}

{
  OSMetricBridge.init<A>(group:label:dimensions:type:level:bins:interval:flags:)(a1, a2, a3, a4, a5, a6, a7, a8, MEMORY[0x1E69E9C30]);
}

{
  OSMetricBridge.init<A>(group:label:dimensions:type:level:bins:interval:flags:)(a1, a2, a3, a4, a5, a6, a7, a8, MEMORY[0x1E69E9C20]);
}

void OSMetricCounter.init<A>(type:group:label:extraDimensions:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, uint64_t (*a4)(void *, uint64_t, void *, void, void, void, void, void)@<X5>, uint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *a2;
  v15 = *a3;
  v18 = a1[4];
  v10 = OSMetricDimensions.bridged.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();
  v11 = os_metric_group_create();

  v12 = OSMetricDimensions.bridged.getter();

  v13 = String.utf8CString.getter();

  v14 = a4(v11, v13 + 32, v12, 0, 0, 0, 0, v15);

  *a5 = v14;
}

void OSMetricBridge.init<A>(group:label:dimensions:type:level:bins:interval:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, unsigned __int8 *a4@<X5>, unsigned __int8 a5@<W6>, unsigned int a6@<W7>, uint64_t *a7@<X8>, unsigned __int8 a8, uint64_t (*a9)(void *, uint64_t, void *, void, void, void, void, void))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *a2;
  v19 = *a4;
  v20 = *a3;
  v24 = a1[4];
  v14 = OSMetricDimensions.bridged.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();
  v15 = os_metric_group_create();

  v16 = OSMetricDimensions.bridged.getter();

  v17 = String.utf8CString.getter();

  v18 = a9(v15, v17 + 32, v16, v20, v19, a5, a6, a8);

  *a7 = v18;
}

uint64_t OSMetricBridge.setScale(to:)(char *a1)
{
  v2 = *a1;
  if (a1[1] == 1)
  {
    v3 = asc_1A78B797A[v2];
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1EEE74568](*v1, v3);
}

uint64_t OSMetricBridge.emit<A>(_:_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  return MEMORY[0x1EEE74560](*v3, (0x2020100u >> (8 * *a1)) & 3, a2, a3);
}

{
  return MEMORY[0x1EEE74580](*v3, (0x2020100u >> (8 * *a1)) & 3, a2, a3);
}

id OSMetricGauge.bridge.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void OSMetricGauge.bridge.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

void OSMetricGauge.init<A>(type:group:label:extraDimensions:level:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, unsigned __int8 *a4@<X5>, uint64_t *a5@<X8>)
{
  OSMetricGauge.init<A>(type:group:label:extraDimensions:level:flags:)(a1, a2, a3, a4, MEMORY[0x1E69E9C28], a5);
}

{
  OSMetricGauge.init<A>(type:group:label:extraDimensions:level:flags:)(a1, a2, a3, a4, MEMORY[0x1E69E9C30], a5);
}

{
  OSMetricGauge.init<A>(type:group:label:extraDimensions:level:flags:)(a1, a2, a3, a4, MEMORY[0x1E69E9C20], a5);
}

void OSMetricGauge.init<A>(type:group:label:extraDimensions:level:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, unsigned __int8 *a4@<X5>, uint64_t (*a5)(void *, uint64_t, void *, uint64_t, void, void, void, void)@<X6>, uint64_t *a6@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a2;
  v16 = *a3;
  v17 = *a4;
  v20 = a1[4];
  v11 = OSMetricDimensions.bridged.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();
  v12 = os_metric_group_create();

  v13 = OSMetricDimensions.bridged.getter();

  v14 = String.utf8CString.getter();

  v15 = a5(v12, v14 + 32, v13, 1, v16, 0, 0, v17);

  *a6 = v15;
}

void OSMetricHistogram.init<A>(type:group:label:extraDimensions:level:bins:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, int *a4@<X5>, unsigned __int8 *a5@<X6>, uint64_t *a6@<X8>)
{
  OSMetricHistogram.init<A>(type:group:label:extraDimensions:level:bins:flags:)(a1, a2, a3, a4, a5, MEMORY[0x1E69E9C28], a6);
}

{
  OSMetricHistogram.init<A>(type:group:label:extraDimensions:level:bins:flags:)(a1, a2, a3, a4, a5, MEMORY[0x1E69E9C30], a6);
}

{
  OSMetricHistogram.init<A>(type:group:label:extraDimensions:level:bins:flags:)(a1, a2, a3, a4, a5, MEMORY[0x1E69E9C20], a6);
}

void OSMetricHistogram.init<A>(type:group:label:extraDimensions:level:bins:flags:)(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unsigned __int8 *a3@<X4>, int *a4@<X5>, unsigned __int8 *a5@<X6>, uint64_t (*a6)(void *, uint64_t, void *, uint64_t, void, void, void, void)@<X7>, uint64_t *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *a2;
  v12 = *a4;
  v18 = a4[1];
  v19 = *a5;
  v20 = *a3;
  v23 = a1[4];
  v13 = OSMetricDimensions.bridged.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();
  v14 = os_metric_group_create();

  v15 = OSMetricDimensions.bridged.getter();

  v16 = String.utf8CString.getter();

  v17 = a6(v14, v16 + 32, v15, 2, v20, v12, v18 & ~(v12 >> 31), v19);

  *a7 = v17;
}

void OSMetricCounter.setScale(to:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *v1;
  v5[0] = v2;
  v5[1] = v3;
  v4 = v6;
  OSMetricBridge.setScale(to:)(v5);
}

Swift::Int OSMetricStatisticalLevel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSMetricStatisticalLevel()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type OSMetricStatisticalLevel and conformance OSMetricStatisticalLevel()
{
  result = lazy protocol witness table cache variable for type OSMetricStatisticalLevel and conformance OSMetricStatisticalLevel;
  if (!lazy protocol witness table cache variable for type OSMetricStatisticalLevel and conformance OSMetricStatisticalLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricStatisticalLevel and conformance OSMetricStatisticalLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSMetricType and conformance OSMetricType()
{
  result = lazy protocol witness table cache variable for type OSMetricType and conformance OSMetricType;
  if (!lazy protocol witness table cache variable for type OSMetricType and conformance OSMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricType and conformance OSMetricType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSMetricUnit and conformance OSMetricUnit()
{
  result = lazy protocol witness table cache variable for type OSMetricUnit and conformance OSMetricUnit;
  if (!lazy protocol witness table cache variable for type OSMetricUnit and conformance OSMetricUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricUnit and conformance OSMetricUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSMetricFlags and conformance OSMetricFlags()
{
  result = lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags;
  if (!lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags;
  if (!lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags;
  if (!lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags;
  if (!lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricFlags and conformance OSMetricFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSMetricOperation and conformance OSMetricOperation()
{
  result = lazy protocol witness table cache variable for type OSMetricOperation and conformance OSMetricOperation;
  if (!lazy protocol witness table cache variable for type OSMetricOperation and conformance OSMetricOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSMetricOperation and conformance OSMetricOperation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSMetricStatisticalLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSMetricStatisticalLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OSMetricBinType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0xFFFFFF);
  }

  v3 = ((*a1 >> 7) & 0xFFFFFE | (*a1 >> 31)) ^ 0xFFFFFF;
  if (v3 >= 0xFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for OSMetricBinType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFE)
  {
    *result = a2 - 0xFFFFFF;
    if (a3 >= 0xFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 0x7FFFFF) << 8) | (a2 << 31);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSMetricFlags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for OSMetricFlags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSMetricScale(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for OSMetricScale(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for OSMetricScale(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for OSMetricScale(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
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

uint64_t getEnumTagSinglePayload for OSMetricGroup(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OSMetricGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSMetricOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSMetricOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata instantiation function for OSMetricBridge()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OSMetricDimensions(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for OSMetricDimensions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void closure #1 in os_signpost(_:dso:log:name:signpostID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  if (a1)
  {

    _swift_os_signpost(a3, a4, a5, a6, a1, a7);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (!a1)
  {
    goto LABEL_31;
  }

  v10 = MEMORY[0x1EEE9AC00](a1);
  if (v17)
  {
    goto LABEL_32;
  }

  if (!v14)
  {
    goto LABEL_31;
  }

  if (v11 < 0)
  {
    goto LABEL_43;
  }

  v45 = v16;
  v46 = v15;
  v48 = v10;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = &v44;
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v19 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v20 = *(a6 + 16);
  v47 = a9;
  if (!v20)
  {
    v41 = a9;
LABEL_37:
    v42 = __VaListBuilder.va_list()();
    v43 = v47;
    _swift_os_signpost_with_format(v49, v50, v47, v45, v48, v46, v51, v42);
  }

  v21 = a6 + 32;
  v44 = a9;
  v22 = 0;
  while (1)
  {
    v23 = (v21 + 40 * v22);
    v24 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v25 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v26 = *v19;
    v27 = *(v25 + 16);
    v28 = __OFADD__(*v19, v27);
    v29 = *v19 + v27;
    if (v28)
    {
      break;
    }

    v30 = v18[4];
    if (v30 >= v29)
    {
      goto LABEL_23;
    }

    if (v30 + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    v31 = v18[5];
    if (2 * v30 > v29)
    {
      v29 = 2 * v30;
    }

    v18[4] = v29;
    if ((v29 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_41;
    }

    v32 = v25;
    v33 = swift_slowAlloc();
    v34 = v33;
    v18[5] = v33;
    if (v31)
    {
      if (v26 < 0)
      {
        goto LABEL_42;
      }

      if (v33 != v31 || v33 >= &v31[8 * v26])
      {
        memmove(v33, v31, 8 * v26);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v25 = v32;
LABEL_23:
      v34 = v18[5];
      if (!v34)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v25 = v32;
    if (!v34)
    {
LABEL_30:

      goto LABEL_31;
    }

LABEL_24:
    v36 = *(v25 + 16);
    if (v36)
    {
      v37 = (v25 + 32);
      v38 = *v19;
      while (1)
      {
        v39 = *v37++;
        *&v34[8 * v38] = v39;
        v38 = *v19 + 1;
        if (__OFADD__(*v19, 1))
        {
          break;
        }

        *v19 = v38;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:

    if (++v22 == v20)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:

LABEL_43:
  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  do
  {
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_32:
    ;
  }

  while (v14 >> 32 || v14 >> 16 > 0x10 || (v14 & 0xFFFFF800) == 0xD800);
  return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(v14, closure #1 in closure #1 in closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:)partial apply);
}

uint64_t closure #1 in closure #1 in closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  type metadata accessor for __VaListBuilder();
  v11 = swift_allocObject();
  v11[2] = 8;
  v11[3] = 0;
  v12 = v11 + 3;
  v11[4] = 0;
  v11[5] = 0;
  v13 = *(a3 + 16);
  v41 = a6;
  if (!v13)
  {
    v32 = a6;
LABEL_28:
    v33 = __VaListBuilder.va_list()();
    _swift_os_signpost_with_format(a4, a5, v41, a7, a8, a9, a1, v33);
  }

  v14 = a3 + 32;
  v35 = a6;
  v15 = 0;
  while (1)
  {
    v16 = (v14 + 40 * v15);
    v17 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v18 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v19 = *v12;
    v20 = *(v18 + 16);
    v21 = __OFADD__(*v12, v20);
    v22 = *v12 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    v24 = v11[4];
    if (v24 >= v22)
    {
      goto LABEL_20;
    }

    if (v24 + 0x4000000000000000 < 0)
    {
      goto LABEL_33;
    }

    v25 = v11[5];
    if (2 * v24 > v22)
    {
      v22 = 2 * v24;
    }

    v11[4] = v22;
    if ((v22 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_34;
    }

    v26 = swift_slowAlloc();
    v11[5] = v26;
    if (v25)
    {
      if (v19 < 0)
      {
        goto LABEL_36;
      }

      if (v26 != v25 || v26 >= &v25[8 * v19])
      {
        memmove(v26, v25, 8 * v19);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_20:
      v26 = v11[5];
    }

    if (!v26)
    {
      goto LABEL_35;
    }

    v28 = *(v23 + 16);
    if (v28)
    {
      v29 = (v23 + 32);
      v30 = *v12;
      while (1)
      {
        v31 = *v29++;
        *&v26[8 * v30] = v31;
        v30 = *v12 + 1;
        if (__OFADD__(*v12, 1))
        {
          break;
        }

        *v12 = v30;
        if (!--v28)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      break;
    }

LABEL_4:

    if (++v15 == v13)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_36:

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *static AnimationFormatString.constructOSLogInterpolation(_:)@<X0>(void *a1@<X8>)
{
  OSLogInterpolation.init(literalCapacity:interpolationCount:)(__src);
  memcpy(__dst, __src, sizeof(__dst));
  static String.+= infix(_:_:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" isAnimation=YES", 0x10uLL, 1);
  static String.+= infix(_:_:)();

  memcpy(v6, __dst, sizeof(v6));
  outlined init with copy of OSLogInterpolation(v6, &v3);
  outlined destroy of OSLogInterpolation(__dst);
  return memcpy(a1, v6, 0x38uLL);
}

void AnimationFormatString.OSLogMessage.init(stringLiteral:)()
{
  static AnimationFormatString.constructOSLogInterpolation(_:)(v0);

  OSLogMessage.init(stringInterpolation:)(v0, v1);

  outlined destroy of OSLogMessage(v1);
  __break(1u);
}

void protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance AnimationFormatString.OSLogMessage(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static AnimationFormatString.constructOSLogInterpolation(_:)(v3);

  OSLogMessage.init(stringInterpolation:)(v3, v4);

  outlined destroy of OSLogMessage(v4);
  __break(1u);
}

Swift::Int OSSignpostAnimationBegin.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OSSignpostAnimationBegin()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSSignpostAnimationBegin()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](0);
  return Hasher._finalize()();
}

uint64_t animationBeginSignpostHelper(dso:log:name:signpostID:formatStringPointer:arguments:)(uint64_t result, os_log_t log, unint64_t a3, uint64_t *a4, char a5, uint64_t *a6, char *isa, NSObject *a8)
{
  LOBYTE(v10) = a5;
  v14 = result;
  v15 = *a6;
  if (one-time initialization token for invalid != -1)
  {
LABEL_45:
    result = swift_once();
  }

  if (v15 != static OSSignpostID.invalid)
  {
    if (one-time initialization token for null != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v16 = static OSSignpostID.null;
      result = os_signpost_enabled(log);
      if (!result || v15 == v16)
      {
        return result;
      }

      v17 = _swift_os_log_return_address();
      v18 = MEMORY[0x1EEE9AC00](v17);
      if (v10)
      {
        goto LABEL_37;
      }

      if (!a3)
      {
        goto LABEL_36;
      }

      v39 = v18;
      v41 = v14;
      v42 = isa;
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_50:
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
        do
        {
LABEL_36:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_37:
          ;
        }

        while (HIDWORD(a3) || a3 >> 16 > 0x10 || (a3 & 0xFFFFF800) == 0xD800);
        return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a3, partial apply for closure #1 in animationBeginSignpostHelper(dso:log:name:signpostID:formatStringPointer:arguments:));
      }

      v40 = &v38;
      v44 = a3;
      type metadata accessor for __VaListBuilder();
      v14 = swift_allocObject();
      v14[2].isa = 8;
      v14[3].isa = 0;
      a4 = &v14[3];
      v14[4].isa = 0;
      v14[5].isa = 0;
      isa = a8[2].isa;
      v43 = log;
      if (!isa)
      {
        v35 = log;
LABEL_42:
        v36 = __VaListBuilder.va_list()();
        v37 = v43;
        _swift_os_signpost_with_format(v41, v39, v43, 1, v44, v15, v42, v36);
      }

      v19 = log;
      log = a8 + 4;
      v38 = v19;
      v20 = 0;
      a3 = 40;
      while (1)
      {
        v21 = &log[5 * v20];
        v22 = v21[4].isa;
        a8 = __swift_project_boxed_opaque_existential_1(v21, v21[3].isa);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v10 = *a4;
        v24 = *(v23 + 16);
        v25 = __OFADD__(*a4, v24);
        v26 = *a4 + v24;
        if (v25)
        {
          goto LABEL_44;
        }

        a8 = v14[4].isa;
        if (a8 >= v26)
        {
          goto LABEL_28;
        }

        if (&a8[0x800000000000000] < 0)
        {
          break;
        }

        v27 = v14[5].isa;
        if (2 * a8 > v26)
        {
          v26 = 2 * a8;
        }

        v14[4].isa = v26;
        if ((v26 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_47;
        }

        a3 = v23;
        v28 = swift_slowAlloc();
        v29 = v28;
        v14[5].isa = v28;
        if (v27)
        {
          if (v10 < 0)
          {

            goto LABEL_50;
          }

          if (v28 != v27 || v28 >= (v27 + 8 * v10))
          {
            memmove(v28, v27, 8 * v10);
          }

          a8 = v14;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = a3;
          a3 = 40;
LABEL_28:
          v29 = v14[5].isa;
          if (!v29)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v23 = a3;
        a3 = 40;
        if (!v29)
        {
LABEL_35:

          goto LABEL_36;
        }

LABEL_29:
        v31 = *(v23 + 16);
        if (v31)
        {
          v32 = (v23 + 32);
          v33 = *a4;
          while (1)
          {
            v34 = *v32++;
            *(v29 + v33) = v34;
            v33 = *a4 + 1;
            if (__OFADD__(*a4, 1))
            {
              break;
            }

            *a4 = v33;
            if (!--v31)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_12:

        if (++v20 == isa)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }
  }

  return result;
}

uint64_t closure #1 in animationBeginSignpostHelper(dso:log:name:signpostID:formatStringPointer:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  type metadata accessor for __VaListBuilder();
  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = 0;
  v11 = v10 + 3;
  v10[4] = 0;
  v10[5] = 0;
  v12 = *(a3 + 16);
  v40 = a6;
  if (!v12)
  {
LABEL_28:
    v31 = a6;
LABEL_29:
    v32 = __VaListBuilder.va_list()();
    _swift_os_signpost_with_format(a4, a5, v40, 1, a1, a7, a8, v32);
  }

  v13 = a3 + 32;
  v34 = a6;
  v14 = 0;
  while (1)
  {
    v15 = (v13 + 40 * v14);
    v16 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v17 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v18 = *v11;
    v19 = *(v17 + 16);
    v20 = __OFADD__(*v11, v19);
    v21 = *v11 + v19;
    if (v20)
    {
      break;
    }

    v22 = v10[4];
    if (v22 >= v21)
    {
      goto LABEL_20;
    }

    if (v22 + 0x4000000000000000 < 0)
    {
      goto LABEL_34;
    }

    v23 = v10[5];
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    v10[4] = v21;
    if ((v21 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_35;
    }

    a6 = v17;
    v24 = swift_slowAlloc();
    v25 = v24;
    v10[5] = v24;
    if (v23)
    {
      if (v18 < 0)
      {
        goto LABEL_36;
      }

      if (v24 != v23 || v24 >= &v23[8 * v18])
      {
        memmove(v24, v23, 8 * v18);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v17 = a6;
LABEL_20:
      v25 = v10[5];
      if (!v25)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v17 = a6;
    if (!v25)
    {
LABEL_27:

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_28;
    }

LABEL_21:
    v27 = *(v17 + 16);
    if (v27)
    {
      v28 = (v17 + 32);
      v29 = *v11;
      while (1)
      {
        v30 = *v28++;
        *&v25[8 * v29] = v30;
        v29 = *v11 + 1;
        if (__OFADD__(*v11, 1))
        {
          break;
        }

        *v11 = v29;
        if (!--v27)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      break;
    }

LABEL_4:

    if (++v14 == v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void os_signpost(_:dso:log:name:signpostID:_:_:)(int a1, void *a2, os_log_t log, unint64_t a4, uint64_t a5, char a6, uint64_t *a7, char *isa, NSObject *a9)
{
  LOBYTE(v10) = a6;
  v15 = *a7;
  if (one-time initialization token for invalid != -1)
  {
LABEL_45:
    swift_once();
  }

  if (v15 != static OSSignpostID.invalid)
  {
    if (one-time initialization token for null != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v16 = static OSSignpostID.null;
      if (!os_signpost_enabled(log) || v15 == v16)
      {
        return;
      }

      v17 = _swift_os_log_return_address();
      v18 = MEMORY[0x1EEE9AC00](v17);
      if (v10)
      {
        goto LABEL_37;
      }

      if (!a4)
      {
        goto LABEL_36;
      }

      v39 = v18;
      v40 = a2;
      v41 = isa;
      if (a5 < 0)
      {
LABEL_50:
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
        do
        {
LABEL_36:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_37:
          ;
        }

        while (HIDWORD(a4) || a4 >> 16 > 0x10 || (a4 & 0xFFFFF800) == 0xD800);
        _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a4, closure #1 in animationBeginSignpostHelper(dso:log:name:signpostID:formatStringPointer:arguments:)partial apply);
        return;
      }

      v43 = a4;
      type metadata accessor for __VaListBuilder();
      a2 = swift_allocObject();
      a2[2] = 8;
      a2[3] = 0;
      v10 = a2 + 3;
      a2[4] = 0;
      a2[5] = 0;
      isa = a9[2].isa;
      v42 = log;
      if (!isa)
      {
        v36 = log;
LABEL_42:
        v37 = __VaListBuilder.va_list()();
        _swift_os_signpost_with_format(v40, v39, v42, 1, v43, v15, v41, v37);

        return;
      }

      v19 = log;
      log = a9 + 4;
      v38 = v19;
      v20 = 0;
      a4 = 40;
      while (1)
      {
        v21 = &log[5 * v20];
        v22 = v21[4].isa;
        a5 = __swift_project_boxed_opaque_existential_1(v21, v21[3].isa);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v24 = *v10;
        v25 = *(v23 + 16);
        v26 = __OFADD__(*v10, v25);
        v27 = *v10 + v25;
        if (v26)
        {
          goto LABEL_44;
        }

        a5 = a2[4];
        if (a5 >= v27)
        {
          goto LABEL_28;
        }

        if (a5 + 0x4000000000000000 < 0)
        {
          break;
        }

        v28 = a2[5];
        if (2 * a5 > v27)
        {
          v27 = 2 * a5;
        }

        a2[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_47;
        }

        a4 = v23;
        v29 = swift_slowAlloc();
        v30 = v29;
        a2[5] = v29;
        if (v28)
        {
          if (v24 < 0)
          {

            goto LABEL_50;
          }

          if (v29 != v28 || v29 >= &v28[8 * v24])
          {
            memmove(v29, v28, 8 * v24);
          }

          a5 = a2;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = a4;
          a4 = 40;
LABEL_28:
          v30 = a2[5];
          if (!v30)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v23 = a4;
        a4 = 40;
        if (!v30)
        {
LABEL_35:

          goto LABEL_36;
        }

LABEL_29:
        v32 = *(v23 + 16);
        if (v32)
        {
          v33 = (v23 + 32);
          v34 = *v10;
          while (1)
          {
            v35 = *v33++;
            *&v30[8 * v34] = v35;
            v34 = *v10 + 1;
            if (__OFADD__(*v10, 1))
            {
              break;
            }

            *v10 = v34;
            if (!--v32)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_12:

        if (++v20 == isa)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }
  }
}

void os_signpost(_:dso:log:name:signpostID:)(int a1, uint64_t a2, os_log_t log, unint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v12 = *a7;
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  if (v12 != static OSSignpostID.invalid)
  {
    if (one-time initialization token for null != -1)
    {
      swift_once();
    }

    v13 = static OSSignpostID.null;
    if (os_signpost_enabled(log) && v12 != v13)
    {
      v14 = _swift_os_log_return_address();
      MEMORY[0x1EEE9AC00](v14);
      if ((a6 & 1) == 0)
      {
        if (a4)
        {
          if ((a5 & 0x8000000000000000) == 0)
          {
            type metadata accessor for __VaListBuilder();
            v15 = swift_allocObject();
            v15[2] = 8;
            v15[3] = 0;
            v15[4] = 0;
            v15[5] = 0;
            v16 = log;
            v17 = __VaListBuilder.va_list()();
            _swift_os_signpost_with_format(a2, v14, v16, 1, a4, v12, "isAnimation=YES", v17);

            return;
          }

          _fatalErrorMessage(_:_:file:line:flags:)();
          __break(1u);
        }

        goto LABEL_20;
      }

      if (HIDWORD(a4) || a4 >> 16 > 0x10 || (a4 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_n(a4, closure #1 in animationBeginSignpostHelper(dso:log:name:signpostID:formatStringPointer:arguments:)partial apply);
    }
  }
}

uint64_t OS_os_log.Category.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

os_log_t OS_os_log.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = String.utf8CString.getter();

  v6 = String.utf8CString.getter();

  v7 = os_log_create((v5 + 32), (v6 + 32));

  return v7;
}

uint64_t one-time initialization function for dynamicTracing()
{
  result = String.init(cString:)();
  static OS_os_log.Category.dynamicTracing = result;
  *algn_1EB2A4A68 = v1;
  return result;
}

uint64_t one-time initialization function for dynamicStackTracing()
{
  result = String.init(cString:)();
  static OS_os_log.Category.dynamicStackTracing = result;
  *algn_1EB2A4A78 = v1;
  return result;
}

uint64_t partial apply for closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v4 = *(v2 + 72);
  return closure #1 in os_signpost(_:dso:log:name:signpostID:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

unint64_t lazy protocol witness table accessor for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage()
{
  result = lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage;
  if (!lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage;
  if (!lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFormatString.OSLogMessage and conformance AnimationFormatString.OSLogMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSSignpostAnimationBegin and conformance OSSignpostAnimationBegin()
{
  result = lazy protocol witness table cache variable for type OSSignpostAnimationBegin and conformance OSSignpostAnimationBegin;
  if (!lazy protocol witness table cache variable for type OSSignpostAnimationBegin and conformance OSSignpostAnimationBegin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostAnimationBegin and conformance OSSignpostAnimationBegin);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID()
{
  result = lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID;
  if (!lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationFormatString.OSLogMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationFormatString.OSLogMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationFormatString(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AnimationFormatString(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSSignpostID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OSSignpostID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OS_os_log.Category(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OS_os_log.Category(uint64_t result, int a2, int a3)
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

uint64_t key path getter for OSLogFloatFormatting.precision : OSLogFloatFormatting@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
}

uint64_t key path setter for OSLogFloatFormatting.precision : OSLogFloatFormatting(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out Int);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(v7);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t OSLogFloatFormatting.precision.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v1);
  return v1;
}

uint64_t OSLogFloatFormatting.precision.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

Swift::Int OSLogFloatFormatting.Notation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

uint64_t OSLogFloatFormatting.init(explicitPositiveSign:uppercase:precision:notation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = *a5;
  return result;
}

uint64_t static OSLogFloatFormatting.fixed.getter(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void, void))
{
  v5 = a1();
  v6 = a2();
  return a3(v5 & 1, v6 & 1);
}

uint64_t static OSLogFloatFormatting.fixed(explicitPositiveSign:uppercase:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a3;
  v6[0] = a1 & 1;
  v6[1] = a2 & 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  v7 = 0;
  v8 = 0;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  v9 = v10;
  outlined init with copy of OSLogFloatFormatting(v6, a4);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  return outlined destroy of OSLogFloatFormatting(v6);
}

uint64_t static OSLogFloatFormatting.fixed(precision:explicitPositiveSign:uppercase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{

  v17 = a5;
  v13[0] = a3 & 1;
  v13[1] = a4 & 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a1);
  v14 = a1;
  v15 = a2;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  v16 = a5;
  outlined init with copy of OSLogFloatFormatting(v13, a6);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(a1);
  return outlined destroy of OSLogFloatFormatting(v13);
}

uint64_t static OSLogFloatFormatting._formatStringLengthModifier<A>(_:)()
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type OSLogFloatFormatting.Notation and conformance OSLogFloatFormatting.Notation()
{
  result = lazy protocol witness table cache variable for type OSLogFloatFormatting.Notation and conformance OSLogFloatFormatting.Notation;
  if (!lazy protocol witness table cache variable for type OSLogFloatFormatting.Notation and conformance OSLogFloatFormatting.Notation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogFloatFormatting.Notation and conformance OSLogFloatFormatting.Notation);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OSLogFloatFormatting(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for OSLogFloatFormatting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t OSLogFloatFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(uint64_t a1, uint64_t a2, os::OSLogPrivacy a3, uint64_t a4, void *a5)
{
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%", 1uLL, 1);
  v10 = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  if (concatPrivacyAndAttributes(privacy:attributes:)(v10, v11).value._object)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("{", 1uLL, 1);
    static String.+= infix(_:_:)();

    static String.+= infix(_:_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("}", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  if (*v5)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  v12 = *a2;
  v13 = *(a2 + 8);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v12);
  if (v12)
  {

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("*", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v14);
  if (v14)
  {

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".*", 2uLL, 1);
    static String.+= infix(_:_:)();
  }

  static OSLogFloatFormatting._formatStringLengthModifier<A>(_:)();
  if (v16)
  {
    static String.+= infix(_:_:)();
    if (*(v5 + 24))
    {
      switch(*(v5 + 24))
      {
        case 1:
          if (*(v5 + 1))
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("F", 1uLL, 1);
          }

          else
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("f", 1uLL, 1);
          }

          break;
        case 2:
          if (*(v5 + 1))
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("E", 1uLL, 1);
          }

          else
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("e", 1uLL, 1);
          }

          break;
        case 3:
          if (*(v5 + 1))
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("G", 1uLL, 1);
          }

          else
          {
            String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("g", 1uLL, 1);
          }

          break;
        default:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown float notation", 0x16uLL, 1);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_30:
          countAndFlagsBits = v19._countAndFlagsBits;

          outlined destroy of String(&v19);

          return countAndFlagsBits;
      }
    }

    else if (*(v5 + 1))
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("A", 1uLL, 1);
    }

    else
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("a", 1uLL, 1);
    }

    static String.+= infix(_:_:)();

    goto LABEL_30;
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Float type has unknown length", 0x1DuLL, 1);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:), v10, a3, a4, a5);
}

{

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:format:align:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:), v10, a3, a4, a5, v11._countAndFlagsBits, v11._object);
}

double partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:align:privacy:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v16 = *(v8 + 25);
  result = maxOSLogArgumentCount.getter();
  if (v16 < result)
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    v18 = a5;
    OSLogFloatFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(MEMORY[0x1E69E63B0], a4, v18, a6, a7);
    static String.+= infix(_:_:)();

    v19 = *a4;
    v20 = a4[1];
    _sxRi_zRi0_zlySiIsegr_SgWOy(v19);
    if (v19)
    {
      OSLogInterpolation.appendAlignmentArgument(_:)(v19, v20);
    }

    if (*(a5 + 1) != 1)
    {
      v21 = a5;
      OSLogInterpolation.appendMaskArgument(_:)(v21);
    }

    v22 = *(a3 + 8);
    v23 = *(a3 + 16);
    _sxRi_zRi0_zlySiIsegr_SgWOy(v22);
    if (v22)
    {
      OSLogInterpolation.appendPrecisionArgument(_:)(v22, v23);
    }

    v24 = a5;
    OSLogInterpolation.addDoubleHeaders(_:)(v24);
    result = OSLogArguments.append(_:)(a1, a2);
    v26 = *(v8 + 25);
    v25 = (v8 + 25);
    v27 = v26 + 1;
    if (((v26 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v25 = v27;
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Void __swiftcall OSLogInterpolation.addDoubleHeaders(_:)(os::OSLogPrivacy a1)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v14);
  v13 = 0;
  v4 = a1;
  v5 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v4, &v13);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v5);
  OSLogArguments.append(_:)(8u);
  v6 = v1[4];
  v7 = __OFADD__(v6, 10);
  v8 = v6 + 10;
  v9 = v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v8;
    memcpy(v15, v1, sizeof(v15));
    outlined init with copy of OSLogInterpolation(v15, v12);
    v10 = a1;
    v11 = OSLogInterpolation.getUpdatedPreamble(privacy:isScalar:)(v10, 1);
    outlined destroy of OSLogInterpolation(v15);
    *(v2 + 24) = v11;
  }
}

uint64_t OSLogArguments.append(_:)(uint64_t a1, uint64_t a2)
{

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  return Array.append(_:)();
}

{

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  return Array.append(_:)();
}

{

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  return Array.append(_:)();
}

{

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  return Array.append(_:)();
}

uint64_t partial apply for closure #1 in OSLogArguments.append(_:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3();
  v5 = *a1 + 8;
  result = UnsafeMutableRawBufferPointer.copyMemory(from:)();
  *a1 = v5;
  return result;
}

{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3();
  v5 = *a1 + 8;
  result = UnsafeMutableRawBufferPointer.copyMemory(from:)();
  *a1 = v5;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t key path getter for OSLogIntegerFormatting.minDigits : OSLogIntegerFormatting@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
}

uint64_t key path setter for OSLogIntegerFormatting.minDigits : OSLogIntegerFormatting(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out Int);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t OSLogIntegerFormatting.minDigits.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static OSLogIntegerFormatting.decimal(explicitPositiveSign:minDigits:)(char a1, uint64_t a2, uint64_t a3)
{

  v7 = 10;
  v8 = a1 & 1;
  v9 = 0;
  v10 = 0;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a2);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a2);
  v11 = a2;
  v12 = a3;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(a2);
  outlined destroy of OSLogIntegerFormatting(&v7);
  return 10;
}

uint64_t static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v13 = a6;
  v14 = a1 & 1;
  v15 = a2 & 1;
  v16 = a3 & 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a4);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a4);
  v17 = a4;
  v18 = a5;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(a4);
  outlined destroy of OSLogIntegerFormatting(&v13);
  return a6;
}

uint64_t static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:)(char a1, char a2, char a3, uint64_t a4)
{
  v6 = a4;
  v7 = a1 & 1;
  v8 = a2 & 1;
  v9 = a3 & 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  v10 = 0;
  v11 = 0;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  outlined destroy of OSLogIntegerFormatting(&v6);
  return a4;
}

uint64_t static OSLogIntegerFormatting.hex.getter(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void, void, void))
{
  v7 = a1();
  LOBYTE(a2) = a2();
  v8 = a3();
  return a4(v7 & 1, a2 & 1, v8 & 1);
}

uint64_t OSLogIntegerFormatting._prefix.getter(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) == 0)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  switch(a1)
  {
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0b", 2uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0o", 2uLL, 1)._countAndFlagsBits;
    case 16:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0x", 2uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }
}

uint64_t static OSLogIntegerFormatting.formatSpecifierLengthModifier<A>(_:)()
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hh", 2uLL, 1)._countAndFlagsBits;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("h", 1uLL, 1)._countAndFlagsBits;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("l", 1uLL, 1)._countAndFlagsBits;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ll", 2uLL, 1)._countAndFlagsBits;
  }

  return 0;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OSLogIntegerFormatting(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for OSLogIntegerFormatting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OSLogIntegerFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(uint64_t a1, uint64_t a2, os::OSLogPrivacy a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v29 = a7 & 1;
  v15 = BYTE1(a7) & 1;
  v16 = BYTE2(a7) & 1;
  v31 = *(a11 + 8);
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a8);
  v32 = a6;
  v19 = (v18 & 1) != 0 && a6 != 10;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(a8);
  if (v19)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Signed integers must be formatted using .decimal", 0x30uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v35 = a6;
  LOBYTE(v36) = v29 & 1;
  HIBYTE(v36) = v15 & 1;
  v37 = v16 & 1;
  v38 = a8;
  v39 = a9;
  v40._countAndFlagsBits = OSLogIntegerFormatting._prefix.getter(a6, v36);
  v40._object = v20;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%", 1uLL, 1);
  static String.+= infix(_:_:)();

  v21 = a3;
  v22._countAndFlagsBits = a4;
  v22._object = a5;
  if (concatPrivacyAndAttributes(privacy:attributes:)(v21, v22).value._object)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("{", 1uLL, 1);
    static String.+= infix(_:_:)();

    static String.+= infix(_:_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("}", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  if (v29)
  {
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+", 1uLL, 1);
      static String.+= infix(_:_:)();
    }

    else
    {
      v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+", 1uLL, 1);
      v33 = v23;

      outlined destroy of String(&v40);
      static String.+= infix(_:_:)();

      outlined destroy of String(&v33);
      v40 = v23;
    }
  }

  v34 = *(a2 + 16) & 1;
  if ((v34 & 1) == 0)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  v24 = *a2;
  v25 = *(a2 + 8);
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(*a2);
  if (v24)
  {

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("*", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a8);
  if (a8)
  {

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".*", 2uLL, 1);
    static String.+= infix(_:_:)();
  }

  static OSLogIntegerFormatting.formatSpecifierLengthModifier<A>(_:)();
  if (v26)
  {
    static String.+= infix(_:_:)();
    switch(v32)
    {
      case 10:
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("d", 1uLL, 1);
        }

        else
        {
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("u", 1uLL, 1);
        }

        break;
      case 8:
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("o", 1uLL, 1);
        static String.+= infix(_:_:)();

        goto LABEL_31;
      case 16:
        if (v16)
        {
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("X", 1uLL, 1);
        }

        else
        {
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x", 1uLL, 1);
        }

        break;
      default:
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("radix must be 10, 8 or 16", 0x19uLL, 1);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_31;
    }

    static String.+= infix(_:_:)();

LABEL_31:
    countAndFlagsBits = v40._countAndFlagsBits;

    outlined destroy of String(&v40);

    return countAndFlagsBits;
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Integer type has unknown byte length", 0x24uLL, 1);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void OSLogInterpolation.appendAlignmentArgument(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, v5, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v21);
  static OSLogPrivacy.auto.getter(v20);
  v19 = a3;
  v10 = v20;
  v11 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v10, &v19);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v11);
  OSLogArguments.append(_:)(4u);
  v12 = *(v5 + 32);
  v13 = __OFADD__(v12, 6);
  v14 = v12 + 6;
  v15 = v13;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 32) = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = lazy protocol witness table accessor for type Int32 and conformance Int32();
    OSLogArguments.append<A>(_:)(a5, v16, MEMORY[0x1E69E72F0], v17);

    v18 = *(v5 + 25) + 1;
    if (((v18 >> 8) & 1) == 0)
    {
      *(v5 + 25) = v18;
      return;
    }
  }

  __break(1u);
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v17 - 8) + 64);
  if (v18 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = v14(v13, v13 + v18, v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v8)
    {
      return (*(v11 + 32))(a8, v16, a5);
    }
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A712A8, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], _sSiIegd_SiIegr_TRTA_0);
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A712D0, lazy protocol witness table accessor for type Int8 and conformance Int8, MEMORY[0x1E69E7230], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int8));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A712F8, lazy protocol witness table accessor for type Int16 and conformance Int16, MEMORY[0x1E69E7290], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int16));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A71320, lazy protocol witness table accessor for type Int32 and conformance Int32, MEMORY[0x1E69E72F0], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A71348, lazy protocol witness table accessor for type Int64 and conformance Int64, MEMORY[0x1E69E7360], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int64));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A71370, lazy protocol witness table accessor for type UInt and conformance UInt, MEMORY[0x1E69E6810], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A71398, lazy protocol witness table accessor for type UInt8 and conformance UInt8, MEMORY[0x1E69E7508], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt8));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A713C0, lazy protocol witness table accessor for type UInt16 and conformance UInt16, MEMORY[0x1E69E75F8], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt16));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A713E8, lazy protocol witness table accessor for type UInt32 and conformance UInt32, MEMORY[0x1E69E7668], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32));
}

{
  return OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(a1, a2, a3, a4, a5, a6, a7, a8, &unk_1F1A71410, lazy protocol witness table accessor for type UInt64 and conformance UInt64, MEMORY[0x1E69E76D8], partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt64));
}

uint64_t OSLogInterpolation.appendInteger<A>(_:format:align:privacy:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v15 = a4 & 1;
  v16 = BYTE1(a4) & 1;
  v17 = BYTE2(a4) & 1;
  v20 = *(v13 + 25);
  result = maxOSLogArgumentCount.getter();
  if (v20 < result)
  {
    LOBYTE(v36) = v15 & 1;
    BYTE1(v36) = v16 & 1;
    BYTE2(v36) = v17 & 1;
    v22 = a5;
    v23 = a8;
    OSLogIntegerFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(a11, a7, v23, a9, a10, a3, v36, a5, a6, a11, a12);
    static String.+= infix(_:_:)();

    v24 = *a7;
    v25 = a7[1];
    _sxRi_zRi0_zlySiIsegr_SgWOy(*a7);
    if (v24)
    {
      OSLogInterpolation.appendAlignmentArgument(_:)(v24, v25);
    }

    if (*(a8 + 1) != 1)
    {
      v26 = a8;
      OSLogInterpolation.appendMaskArgument(_:)(v26);
    }

    _sxRi_zRi0_zlySiIsegr_SgWOy(v22);
    if (v22)
    {
      OSLogInterpolation.appendPrecisionArgument(_:)(v22, a6);
    }

    v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
    v28 = a8;
    OSLogInterpolation.addIntHeaders(_:_:)(v28, v27);
    result = OSLogArguments.append<A>(_:)(a1, a2, a11, a12);
    v30 = *(v13 + 25);
    v29 = (v13 + 25);
    v31 = v30 + 1;
    if (((v30 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v29 = v31;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), uint64_t a11, uint64_t a12)
{
  v14 = a4 & 1;
  v15 = BYTE1(a4) & 1;
  v16 = BYTE2(a4) & 1;

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = a10();
  v21 = default argument 4 of OSLogInterpolation.appendInteger<A>(_:format:align:privacy:attributes:)();
  LOBYTE(v27) = v14;
  BYTE1(v27) = v15;
  BYTE2(v27) = v16;
  OSLogInterpolation.appendInteger<A>(_:format:align:privacy:attributes:)(a12, v19, a3, v27, a5, a6, a7, a8, v21, v22, a11, v20);
}

Swift::Void __swiftcall OSLogInterpolation.addIntHeaders(_:_:)(os::OSLogPrivacy a1, Swift::Int a2)
{
  v3 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v18);
  v17 = 0;
  v6 = a1;
  v7 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v6, &v17);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v7);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 255)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OSLogArguments.append(_:)(a2);
  v8 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    goto LABEL_15;
  }

  v10 = v2[4];
  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  v13 = v11;
  if ((v13 & 1) == 0)
  {
    v2[4] = v12;
    memcpy(v19, v2, sizeof(v19));
    outlined init with copy of OSLogInterpolation(v19, v16);
    v14 = a1;
    v15 = OSLogInterpolation.getUpdatedPreamble(privacy:isScalar:)(v14, 1);
    outlined destroy of OSLogInterpolation(v19);
    *(v3 + 24) = v15;
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t OSLogArguments.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  return Array.append(_:)();
}

void OSLogInterpolation.appendPrecisionAlignCount(_:_:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  OSLogArguments.append(_:)(a3);
  OSLogArguments.append(_:)(4u);
  v6 = *(v3 + 32);
  v7 = __OFADD__(v6, 6);
  v8 = v6 + 6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = lazy protocol witness table accessor for type Int32 and conformance Int32();

    OSLogArguments.append<A>(_:)(closure #1 in OSLogInterpolation.appendPrecisionAlignCount(_:_:)partial apply, v9, MEMORY[0x1E69E72F0], v10);

    v11 = *(v3 + 25) + 1;
    if (((v11 >> 8) & 1) == 0)
    {
      *(v3 + 25) = v11;
      return;
    }
  }

  __break(1u);
}

uint64_t closure #1 in OSLogInterpolation.appendPrecisionAlignCount(_:_:)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result < 0xFFFFFFFF80000000 || result > 0x7FFFFFFF)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t _sSiIegd_SiIegr_TRTA_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int8)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int8 and conformance Int8()
{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int16)@<X0>(_WORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int16 and conformance Int16()
{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int64)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt8)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(_WORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (v14 >> 3 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = *a1 + (v14 >> 3);
    MEMORY[0x1EEE9AC00](v14);
    v20 = v16;
    v21 = v15;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in serialize<A>(_:at:), v19, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
    result = (*(v8 + 8))(v12, a6);
    *a1 = v15;
  }

  return result;
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return UnsafeMutableRawBufferPointer.copyMemory(from:)();
}

void *OSLogInterpolation.init(literalCapacity:interpolationCount:)@<X0>(void *a1@<X8>)
{
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v3[16] = OSLogArguments.init()();
  *&v3[24] = 0;
  memset(&v3[32], 0, 24);
  memcpy(__dst, v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x38uLL);
}

void *OSLogMessage.init(stringInterpolation:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of OSLogInterpolation(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, __dst, sizeof(__src));
  outlined destroy of OSLogInterpolation(a1);
  return memcpy(a2, __src, 0x38uLL);
}

Swift::String_optional __swiftcall concatPrivacyAndAttributes(privacy:attributes:)(os::OSLogPrivacy privacy, Swift::String attributes)
{
  object = attributes._object;
  countAndFlagsBits = attributes._countAndFlagsBits;
  v4 = OSLogPrivacy.needsPrivacySpecifier.getter();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v6 = MEMORY[0x1AC55C5C0](countAndFlagsBits, object, v5._countAndFlagsBits, v5._object);

  v7 = v6 ^ 1;
  if (!v4)
  {
    v7 = 0;
  }

  v16 = countAndFlagsBits;
  v17 = object;
  if (v7)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  OSLogPrivacy.privacySpecifier.getter();
  if (v8)
  {
    static String.+= infix(_:_:)();
  }

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v10 = MEMORY[0x1AC55C5C0](v16, v17, v9._countAndFlagsBits, v9._object);

  if (v10)
  {
    outlined destroy of String(&v16);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = v16;
    v12 = v17;

    outlined destroy of String(&v16);
  }

  v13 = v11;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::Void __swiftcall OSLogArguments.append(_:)(Swift::UInt8 a1)
{
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  Array.append(_:)();
}

uint64_t OSLogInterpolation.formatString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OSLogInterpolation.formatString.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OSLogInterpolation.arguments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

Swift::Int OSLogInterpolation.ArgumentType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall OSLogInterpolation.appendLiteral(_:)(Swift::String a1)
{
  String.percentEscapedString.getter(a1._countAndFlagsBits, a1._object);
  static String.+= infix(_:_:)();
}

uint64_t String.percentEscapedString.getter(uint64_t a1, uint64_t a2)
{

  v9 = a1;
  v10 = a2;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 1 of Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4 = Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  outlined destroy of Character(&v8);
  v7 = v4;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%%", 2uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
  lazy protocol witness table accessor for type [Substring] and conformance [A]();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v5 = Sequence<>.joined(separator:)();
  outlined destroy of [Substring](&v7);

  return v5;
}

double protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance OSLogInterpolation@<D0>(uint64_t a1@<X8>)
{
  OSLogInterpolation.init(literalCapacity:interpolationCount:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void *OSLogMessage.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  OSLogInterpolation.init(literalCapacity:interpolationCount:)(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  OSLogInterpolation.appendLiteral(_:)(v6);
  memcpy(v12, __dst, sizeof(v12));
  outlined init with copy of OSLogInterpolation(v12, &v8);
  outlined destroy of OSLogInterpolation(__dst);
  memcpy(v10, v12, sizeof(v10));
  memcpy(v13, v10, sizeof(v13));

  return memcpy(a3, v13, 0x38uLL);
}

uint64_t OSLogMessage.bufferSize.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v3);
  v5 = __dst[4];
  outlined destroy of OSLogInterpolation(__dst);
  result = v5 + 2;
  if (__OFADD__(v5, 2))
  {
    __break(1u);
  }

  return result;
}

double protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance OSLogMessage@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  OSLogMessage.init(stringInterpolation:)(v9, v6);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t OSLogArguments.argumentClosures.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

_BYTE **partial apply for closure #1 in OSLogArguments.append(_:)(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Substring] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Substring] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Substring] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySsGMd, &_sSaySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Substring] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined destroy of [Substring](uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type OSLogInterpolation.ArgumentType and conformance OSLogInterpolation.ArgumentType()
{
  result = lazy protocol witness table cache variable for type OSLogInterpolation.ArgumentType and conformance OSLogInterpolation.ArgumentType;
  if (!lazy protocol witness table cache variable for type OSLogInterpolation.ArgumentType and conformance OSLogInterpolation.ArgumentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogInterpolation.ArgumentType and conformance OSLogInterpolation.ArgumentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogMessage and conformance OSLogMessage()
{
  result = lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage;
  if (!lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage;
  if (!lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage;
  if (!lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogMessage and conformance OSLogMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogInterpolation and conformance OSLogInterpolation()
{
  result = lazy protocol witness table cache variable for type OSLogInterpolation and conformance OSLogInterpolation;
  if (!lazy protocol witness table cache variable for type OSLogInterpolation and conformance OSLogInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogInterpolation and conformance OSLogInterpolation);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OSLogInterpolation.ArgumentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSLogInterpolation.ArgumentType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OSLogInterpolation(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OSLogInterpolation(uint64_t result, int a2, int a3)
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

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t result)
{
  if (result)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result)
{
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();

    JUMPOUT(0x1AC55C650);
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = *(v6 + 25);
  result = maxOSLogArgumentCount.getter();
  if (v12 < result)
  {
    memcpy(__dst, v6, sizeof(__dst));
    outlined init with copy of OSLogInterpolation(__dst, v23);
    v14 = a3;
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    OSLogInterpolation.getNSObjectFormatSpecifier(_:_:)(v14, v15);
    outlined destroy of OSLogInterpolation(__dst);
    static String.+= infix(_:_:)();

    if (*(a3 + 1) != 1)
    {
      v16 = a3;
      OSLogInterpolation.appendMaskArgument(_:)(v16);
    }

    v17 = a3;
    OSLogInterpolation.addNSObjectHeaders(_:)(v17);
    result = OSLogArguments.append(_:)(a1, a2);
    v18 = *(v6 + 25) + 1;
    if ((v18 >> 8))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 25) = v18;
      v19 = *(v6 + 48);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      v22 = v20;
      if ((v22 & 1) == 0)
      {
        *(v6 + 48) = v21;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:), v6, a3, v7._countAndFlagsBits, v7._object);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::String __swiftcall OSLogInterpolation.getNSObjectFormatSpecifier(_:_:)(os::OSLogPrivacy a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%", 1uLL, 1);
  v5 = a1;
  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  if (concatPrivacyAndAttributes(privacy:attributes:)(v5, v6).value._object)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("{", 1uLL, 1);
    static String.+= infix(_:_:)();

    static String.+= infix(_:_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("}", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("@", 1uLL, 1);
  static String.+= infix(_:_:)();

  v7 = v12._countAndFlagsBits;
  v8 = v12._object;

  outlined destroy of String(&v12);
  v9 = v7;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::Void __swiftcall OSLogInterpolation.addNSObjectHeaders(_:)(os::OSLogPrivacy a1)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v14);
  v13 = 4;
  v4 = a1;
  v5 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v4, &v13);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v5);
  OSLogArguments.append(_:)(8u);
  v6 = v1[4];
  v7 = __OFADD__(v6, 10);
  v8 = v6 + 10;
  v9 = v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v8;
    memcpy(v15, v1, sizeof(v15));
    outlined init with copy of OSLogInterpolation(v15, v12);
    v10 = a1;
    v11 = OSLogInterpolation.getUpdatedPreamble(privacy:isScalar:)(v10, 0);
    outlined destroy of OSLogInterpolation(v15);
    *(v2 + 24) = v11;
  }
}

void closure #1 in OSLogArguments.append(_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4();
  v7 = *a1 + 8;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  *a1 = v7;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }

  v9 = *MEMORY[0x1E69E9840];
}

Swift::Int OSLogPointerFormat.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t a1, uint64_t a2, os::OSLogPointerFormat a3, uint64_t a4)
{

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:), v8, partial apply for implicit closure #2 in OSLogInterpolation.appendInterpolation(_:format:privacy:), v9, a3, a4, v10._countAndFlagsBits, v10._object);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  result = a1();
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t partial apply for implicit closure #2 in OSLogInterpolation.appendInterpolation(_:format:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  if (v3)
  {
    return v4 - v3;
  }

  else
  {
    return 0;
  }
}

uint64_t OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, os::OSLogPointerFormat a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v18 = v9[25];
  result = maxOSLogArgumentCount.getter();
  if (v18 < result)
  {
    memcpy(__dst, v9, sizeof(__dst));
    outlined init with copy of OSLogInterpolation(__dst, v27);
    v20 = a6;
    v21._countAndFlagsBits = a7;
    v21._object = a8;
    OSLogInterpolation.getPointerFormatSpecifier(_:_:_:)(a5, v20, v21);
    outlined destroy of OSLogInterpolation(__dst);
    static String.+= infix(_:_:)();

    if (*(a6 + 1) != 1)
    {
      v22 = a6;
      OSLogInterpolation.appendMaskArgument(_:)(v22);
    }

    OSLogInterpolation.appendPrecisionArgument(_:)(a3, a4);
    v23 = a6;
    OSLogInterpolation.addPointerHeaders(_:)(v23);
    result = OSLogArguments.append(_:)(a1, a2);
    v25 = v9[25];
    v24 = v9 + 25;
    v26 = v25 + 1;
    if (((v25 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v24 = v26;
    }
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, os::OSLogPointerFormat a5, uint64_t a6)
{

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:), v12, partial apply for implicit closure #2 in OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:), v13, a5, a6, v14._countAndFlagsBits, v14._object);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for implicit closure #2 in OSLogInterpolation.appendInterpolation(_:bytes:format:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Void __swiftcall OSLogInterpolation.addPointerHeaders(_:)(os::OSLogPrivacy a1)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v14);
  v13 = 3;
  v4 = a1;
  v5 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v4, &v13);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v5);
  OSLogArguments.append(_:)(8u);
  v6 = v1[4];
  v7 = __OFADD__(v6, 10);
  v8 = v6 + 10;
  v9 = v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v8;
    memcpy(v15, v1, sizeof(v15));
    outlined init with copy of OSLogInterpolation(v15, v12);
    v10 = a1;
    v11 = OSLogInterpolation.getUpdatedPreamble(privacy:isScalar:)(v10, 0);
    outlined destroy of OSLogInterpolation(v15);
    *(v2 + 24) = v11;
  }
}

unint64_t lazy protocol witness table accessor for type OSLogPointerFormat and conformance OSLogPointerFormat()
{
  result = lazy protocol witness table cache variable for type OSLogPointerFormat and conformance OSLogPointerFormat;
  if (!lazy protocol witness table cache variable for type OSLogPointerFormat and conformance OSLogPointerFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogPointerFormat and conformance OSLogPointerFormat);
  }

  return result;
}

uint64_t OSLogPrivacy.maskValue.getter()
{
  if ((*(v0 + 1) - 2) > 7u)
  {
    return 1752392040;
  }

  else
  {
    return *&aMailnamemailad[8 * (*(v0 + 1) - 2)];
  }
}

uint64_t OSLogPrivacy.argumentFlag.getter()
{
  switch(*v0)
  {
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 5;
  }

  return 0;
}

uint64_t OSLogPrivacy.privacySpecifier.getter()
{
  v12 = v0[1];
  v11 = 0;
  v10 = *v0;
  if (v10 == 3)
  {
    v11 = 1;
    v1 = 1;
    v2 = 1;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if ((v2 & 1) == 0 || v12 != 1)
  {
    if (*v0)
    {
      if (*v0 == 1)
      {
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("public", 6uLL, 1);
      }

      else
      {
        if (*v0 == 2)
        {
          v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sensitive", 9uLL, 1);
          object = v4._object;
          countAndFlagsBits = v4._countAndFlagsBits;
        }

        else
        {
          v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
          object = v7._object;
          countAndFlagsBits = v7._countAndFlagsBits;
        }

        v9._countAndFlagsBits = countAndFlagsBits;
        v9._object = object;
      }
    }

    else
    {
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("private", 7uLL, 1);
    }

    if (v12 == 1)
    {
      goto LABEL_40;
    }

    if ((v1 ^ 1))
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1);
      static String.+= infix(_:_:)();
    }

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mask.", 5uLL, 1);
    static String.+= infix(_:_:)();

    if (v0[1] && v0[1] != 1)
    {
      switch(v0[1])
      {
        case 2:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailname", 8uLL, 1);
          goto LABEL_39;
        case 3:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailaddr", 8uLL, 1);
          goto LABEL_39;
        case 4:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailsubj", 8uLL, 1);
          goto LABEL_39;
        case 5:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailsumm", 8uLL, 1);
          goto LABEL_39;
        case 6:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailacco", 8uLL, 1);
          goto LABEL_39;
        case 7:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailbox", 7uLL, 1);
          goto LABEL_39;
        case 8:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailmbup", 8uLL, 1);
          goto LABEL_39;
        case 9:
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailatta", 8uLL, 1);
          goto LABEL_39;
      }
    }

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hash", 4uLL, 1);
LABEL_39:
    static String.+= infix(_:_:)();

LABEL_40:
    v3 = v9._countAndFlagsBits;

    outlined destroy of String(&v9);
    return v3;
  }

  return 0;
}

uint64_t static OSLogPrivacy.auto.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = 1;
  return result;
}

_BYTE *static OSLogPrivacy.mail(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    switch(*result)
    {
      case 1:
        v2 = 3;
        break;
      case 2:
        v2 = 4;
        break;
      case 3:
        v2 = 5;
        break;
      case 4:
        v2 = 6;
        break;
      case 5:
        v2 = 7;
        break;
      case 6:
        v2 = 8;
        break;
      case 7:
        v2 = 9;
        break;
      default:
        v2 = 1;
        break;
    }
  }

  else
  {
    v2 = 2;
  }

  *a2 = 2;
  a2[1] = v2;
  return result;
}

char *static OSLogPrivacy.private(mask:)@<X0>(char *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *result;
  *a3 = a2;
  a3[1] = v3;
  return result;
}

uint64_t OSLogPrivacy.maskSpecifier.getter()
{
  v1 = *(v0 + 1);
  if (v1 <= 4)
  {
    if (*(v0 + 1) > 2u)
    {
      if (v1 == 3)
      {
        return 0x726464616C69616DLL;
      }

      if (v1 == 4)
      {
        return 0x6A6275736C69616DLL;
      }
    }

    else if (v1 >= 2)
    {
      return 0x656D616E6C69616DLL;
    }

    goto LABEL_4;
  }

  if (*(v0 + 1) <= 6u)
  {
    if (v1 == 5)
    {
      return 0x6D6D75736C69616DLL;
    }

    if (v1 == 6)
    {
      return 0x6F6363616C69616DLL;
    }

    goto LABEL_4;
  }

  switch(v1)
  {
    case 9u:
      v2 = "mailatta";
LABEL_21:
      v3 = 8;
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, v3, 1)._countAndFlagsBits;
    case 8u:
      v2 = "mailmbup";
      goto LABEL_21;
    case 7u:
      return 0x786F626C69616DLL;
  }

LABEL_4:
  v2 = "hash";
  v3 = 4;
  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, v3, 1)._countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type OSLogPrivacy.PrivacyOption and conformance OSLogPrivacy.PrivacyOption()
{
  result = lazy protocol witness table cache variable for type OSLogPrivacy.PrivacyOption and conformance OSLogPrivacy.PrivacyOption;
  if (!lazy protocol witness table cache variable for type OSLogPrivacy.PrivacyOption and conformance OSLogPrivacy.PrivacyOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogPrivacy.PrivacyOption and conformance OSLogPrivacy.PrivacyOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogPrivacy.Mask and conformance OSLogPrivacy.Mask()
{
  result = lazy protocol witness table cache variable for type OSLogPrivacy.Mask and conformance OSLogPrivacy.Mask;
  if (!lazy protocol witness table cache variable for type OSLogPrivacy.Mask and conformance OSLogPrivacy.Mask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogPrivacy.Mask and conformance OSLogPrivacy.Mask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogPrivacy._MailMask and conformance OSLogPrivacy._MailMask()
{
  result = lazy protocol witness table cache variable for type OSLogPrivacy._MailMask and conformance OSLogPrivacy._MailMask;
  if (!lazy protocol witness table cache variable for type OSLogPrivacy._MailMask and conformance OSLogPrivacy._MailMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogPrivacy._MailMask and conformance OSLogPrivacy._MailMask);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogPrivacy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for OSLogPrivacy(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogPrivacy.Mask(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSLogPrivacy.Mask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogPrivacy._MailMask(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSLogPrivacy._MailMask(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int OSLogBoolFormat.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t a1, uint64_t a2, os::OSLogInt32ExtendedFormat a3, uint64_t a4)
{

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:format:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:), v8, a3, a4, v9._countAndFlagsBits, v9._object);
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:privacy:attributes:)(uint64_t a1, uint64_t a2, os::OSLogInt32ExtendedFormat a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = v7[25];
  result = maxOSLogArgumentCount.getter();
  if (v14 < result)
  {
    memcpy(__dst, v7, sizeof(__dst));
    outlined init with copy of OSLogInterpolation(__dst, v25);
    v16 = a4;
    v17._countAndFlagsBits = a5;
    v17._object = a6;
    OSLogInterpolation.getExtendedFormatSpecifier(_:_:_:)(a3, v16, v17);
    outlined destroy of OSLogInterpolation(__dst);
    static String.+= infix(_:_:)();

    if (*(a4 + 1) != 1)
    {
      v18 = a4;
      OSLogInterpolation.appendMaskArgument(_:)(v18);
    }

    v19 = a4;
    OSLogInterpolation.addIntHeaders(_:_:)(v19, 4);

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v21 = lazy protocol witness table accessor for type Int32 and conformance Int32();
    OSLogArguments.append<A>(_:)(_ss5Int32VIegd_ABIegr_TRTA_0, v20, MEMORY[0x1E69E72F0], v21);

    v23 = v7[25];
    v22 = v7 + 25;
    v24 = v23 + 1;
    if (((v23 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v22 = v24;
    }
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t a1, uint64_t a2, os::OSLogBoolFormat a3, uint64_t a4)
{

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  memcpy(__dst, v4, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v11);
  OSLogInterpolation.getInt32BoolFormat(_:)(a3);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogInterpolation.appendInterpolation(_:format:privacy:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:), v9, &v12, a4);
}

unint64_t lazy protocol witness table accessor for type OSLogBoolFormat and conformance OSLogBoolFormat()
{
  result = lazy protocol witness table cache variable for type OSLogBoolFormat and conformance OSLogBoolFormat;
  if (!lazy protocol witness table cache variable for type OSLogBoolFormat and conformance OSLogBoolFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogBoolFormat and conformance OSLogBoolFormat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogInt32ExtendedFormat and conformance OSLogInt32ExtendedFormat()
{
  result = lazy protocol witness table cache variable for type OSLogInt32ExtendedFormat and conformance OSLogInt32ExtendedFormat;
  if (!lazy protocol witness table cache variable for type OSLogInt32ExtendedFormat and conformance OSLogInt32ExtendedFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogInt32ExtendedFormat and conformance OSLogInt32ExtendedFormat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogIntExtendedFormat and conformance OSLogIntExtendedFormat()
{
  result = lazy protocol witness table cache variable for type OSLogIntExtendedFormat and conformance OSLogIntExtendedFormat;
  if (!lazy protocol witness table cache variable for type OSLogIntExtendedFormat and conformance OSLogIntExtendedFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogIntExtendedFormat and conformance OSLogIntExtendedFormat);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogBoolFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSLogBoolFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OSLogInt32ExtendedFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSLogInt32ExtendedFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogIntExtendedFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSLogIntExtendedFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static OSLogStringAlignment.none.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(0);
  v3[0] = 0;
  v3[1] = 0;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  v4 = 1;
  outlined init with copy of OSLogStringAlignment(v3, a1);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  return outlined destroy of OSLogStringAlignment(v3);
}

Swift::Int OSLogCollectionBound.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

uint64_t key path getter for OSLogStringAlignment.minimumColumnWidth : OSLogStringAlignment@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
}

uint64_t key path setter for OSLogStringAlignment.minimumColumnWidth : OSLogStringAlignment(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSiIegr_SiIegd_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t OSLogStringAlignment.minimumColumnWidth.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(v1);
  return v1;
}

uint64_t OSLogStringAlignment.minimumColumnWidth.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  result = outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OSLogStringAlignment.init(minimumColumnWidth:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = *a3;
  return result;
}

uint64_t static OSLogStringAlignment.right(columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{

  v11 = a3 & 1;
  _sxRi_zRi0_zlySiIsegr_SgWOy_0(a1);
  v9[0] = a1;
  v9[1] = a2;
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(0);
  v10 = a3 & 1;
  outlined init with copy of OSLogStringAlignment(v9, a4);
  outlined consume of (@escaping @callee_guaranteed () -> (@unowned Int))?(a1);
  return outlined destroy of OSLogStringAlignment(v9);
}

unint64_t lazy protocol witness table accessor for type OSLogCollectionBound and conformance OSLogCollectionBound()
{
  result = lazy protocol witness table cache variable for type OSLogCollectionBound and conformance OSLogCollectionBound;
  if (!lazy protocol witness table cache variable for type OSLogCollectionBound and conformance OSLogCollectionBound)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogCollectionBound and conformance OSLogCollectionBound);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OSLogStringAlignment(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for OSLogStringAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t _sSiIegr_SiIegd_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t outlined destroy of [(_:_:_:)](uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Logger.log(level:_:)(uint64_t a1, __int128 *a2)
{
  Logger.logObject.getter();
  memcpy(__dst, a2, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v15);

  outlined destroy of OSLogInterpolation(__dst);
  memcpy(v24, a2, sizeof(v24));
  outlined init with copy of OSLogInterpolation(v24, v14);
  outlined destroy of OSLogInterpolation(v24);
  memcpy(v23, a2, sizeof(v23));
  outlined init with copy of OSLogInterpolation(v23, v13);
  outlined destroy of OSLogInterpolation(v23);
  v3 = OSLogMessage.bufferSize.getter();
  memcpy(v22, a2, sizeof(v22));
  outlined init with copy of OSLogInterpolation(v22, v12);
  outlined destroy of OSLogInterpolation(v22);
  memcpy(v21, a2, sizeof(v21));
  outlined init with copy of OSLogInterpolation(v21, v11);
  outlined destroy of OSLogInterpolation(v21);
  if (v3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  while (v3 <= 0xFFFFFFFFLL)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v19 = *(a2 + 6);
    v18 = v6;
    v17 = v5;
    v16 = v4;
    outlined init with copy of OSLogInterpolation(&v16, v10);
    v20[0] = v17;
    outlined init with copy of OSLogArguments(v20, v9);
    outlined destroy of OSLogInterpolation(&v16);
    outlined init with copy of OSLogArguments(v20, v8);
    v20[1] = v20[0];
    outlined destroy of OSLogArguments(v20);
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Logger.log(_:)(__int128 *a1, void (*a2)(id))
{
  v4 = Logger.logObject.getter();
  a2(v4);
  memcpy(__dst, a1, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v17);

  outlined destroy of OSLogInterpolation(__dst);
  memcpy(v26, a1, sizeof(v26));
  outlined init with copy of OSLogInterpolation(v26, v16);
  outlined destroy of OSLogInterpolation(v26);
  memcpy(v25, a1, sizeof(v25));
  outlined init with copy of OSLogInterpolation(v25, v15);
  outlined destroy of OSLogInterpolation(v25);
  v5 = OSLogMessage.bufferSize.getter();
  memcpy(v24, a1, sizeof(v24));
  outlined init with copy of OSLogInterpolation(v24, v14);
  outlined destroy of OSLogInterpolation(v24);
  memcpy(v23, a1, sizeof(v23));
  outlined init with copy of OSLogInterpolation(v23, v13);
  outlined destroy of OSLogInterpolation(v23);
  if (v5 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  while (v5 <= 0xFFFFFFFFLL)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v21 = *(a1 + 6);
    v20 = v8;
    v19 = v7;
    v18 = v6;
    outlined init with copy of OSLogInterpolation(&v18, v12);
    v22[0] = v19;
    outlined init with copy of OSLogArguments(v22, v11);
    outlined destroy of OSLogInterpolation(&v18);
    outlined init with copy of OSLogArguments(v22, v10);
    v22[1] = v22[0];
    outlined destroy of OSLogArguments(v22);
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t os_log(_:log:_:)(int a1, int a2, __int128 *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v16);

  outlined destroy of OSLogInterpolation(__dst);
  memcpy(v25, __src, sizeof(v25));
  outlined init with copy of OSLogInterpolation(v25, v15);
  outlined destroy of OSLogInterpolation(v25);
  memcpy(v24, __src, sizeof(v24));
  outlined init with copy of OSLogInterpolation(v24, v14);
  outlined destroy of OSLogInterpolation(v24);
  v4 = OSLogMessage.bufferSize.getter();
  memcpy(v23, __src, sizeof(v23));
  outlined init with copy of OSLogInterpolation(v23, v13);
  outlined destroy of OSLogInterpolation(v23);
  memcpy(v22, __src, sizeof(v22));
  outlined init with copy of OSLogInterpolation(v22, v12);
  outlined destroy of OSLogInterpolation(v22);
  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  while (v4 <= 0xFFFFFFFFLL)
  {
    v5 = *__src;
    v6 = __src[1];
    v7 = __src[2];
    v20 = *(__src + 6);
    v19 = v7;
    v18 = v6;
    v17 = v5;
    outlined init with copy of OSLogInterpolation(&v17, v11);
    v21[0] = v18;
    outlined init with copy of OSLogArguments(v21, v10);
    outlined destroy of OSLogInterpolation(&v17);
    outlined init with copy of OSLogArguments(v21, v9);
    v21[1] = v21[0];
    outlined destroy of OSLogArguments(v21);
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
  }

  return result;
}

uint64_t _checkFormatStringAndBuffer(_:with:)(__int128 *a1, void (*a2)(void, void, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v62 = *(a1 + 6);
  v61[2] = v5;
  v61[1] = v4;
  v61[0] = v3;
  outlined init with copy of OSLogInterpolation(v61, v41);
  v6 = v61[0];

  outlined destroy of OSLogInterpolation(v61);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v60 = *(a1 + 6);
  v59 = v9;
  v58 = v8;
  v57 = v7;
  outlined init with copy of OSLogInterpolation(&v57, v40);
  v10 = BYTE8(v58);
  outlined destroy of OSLogInterpolation(&v57);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v56 = *(a1 + 6);
  v55 = v13;
  v54 = v12;
  v53 = v11;
  outlined init with copy of OSLogInterpolation(&v53, v39);
  v14 = BYTE9(v54);
  outlined destroy of OSLogInterpolation(&v53);
  OSLogMessage.bufferSize.getter();
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v52 = *(a1 + 6);
  v51[2] = v17;
  v51[1] = v16;
  v51[0] = v15;
  outlined init with copy of OSLogInterpolation(v51, v38);
  v18 = v52;
  outlined destroy of OSLogInterpolation(v51);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v50 = *(a1 + 6);
  v49 = v21;
  v48[1] = v20;
  v48[0] = v19;
  outlined init with copy of OSLogInterpolation(v48, v37);
  v22 = *(&v49 + 1);
  outlined destroy of OSLogInterpolation(v48);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v45 = *(a1 + 6);
  v44 = v25;
  v43 = v24;
  v42 = v23;
  outlined init with copy of OSLogInterpolation(&v42, v36);
  v46 = v43;
  outlined init with copy of OSLogArguments(&v46, v35);
  outlined destroy of OSLogInterpolation(&v42);
  outlined init with copy of OSLogArguments(&v46, v34);
  v47 = v46;
  outlined destroy of OSLogArguments(&v46);
  v26 = static UnsafeMutablePointer.allocate(capacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v27 = createStorage<A>(capacity:type:)(v18);
  v28 = createStorage<A>(capacity:type:)(v22);
  v33 = v26;
  serialize(_:at:)(v10, &v33);
  serialize(_:at:)(v14, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  v29 = UnsafeBufferPointer.init(start:count:)();
  a2(v6, *(&v6 + 1), v29, v30);
  destroyStorage<A>(_:count:)(v27);
  destroyStorage<A>(_:count:)(v28);
  MEMORY[0x1AC55C650](v26, MEMORY[0x1E69E7508]);
  outlined destroy of [(_:_:_:)](&v47);
}

uint64_t partial apply for closure #1 in _checkFormatStringAndBuffer(_:with:)(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 8);
  return (*a1)(v3, v2, v4);
}

uint64_t OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  OSLogInterpolation.appendInterpolation(_:align:privacy:attributes:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:), v8, a3, a4, v9._countAndFlagsBits, v9._object);
}

{

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OSLogInterpolation.appendInterpolation(_:align:privacy:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:), v8, a3, a4);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return MEMORY[0x1EEE6BBE8](v3, 0);
}

uint64_t OSLogInterpolation.appendInterpolation(_:align:privacy:attributes:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = *(v7 + 25);
  result = maxOSLogArgumentCount.getter();
  if (v14 < result)
  {
    memcpy(__dst, v7, sizeof(__dst));
    outlined init with copy of OSLogInterpolation(__dst, v26);
    v16 = a4;
    OSLogInterpolation.getStringFormatSpecifier(_:_:_:)(a3, v16, a5, a6);
    outlined destroy of OSLogInterpolation(__dst);
    static String.+= infix(_:_:)();

    v17 = *a3;
    v18 = a3[1];
    _sxRi_zRi0_zlySiIsegr_SgWOy(v17);
    if (v17)
    {
      OSLogInterpolation.appendAlignmentArgument(_:)(v17, v18);
    }

    if (*(a4 + 1) != 1)
    {
      v19 = a4;
      OSLogInterpolation.appendMaskArgument(_:)(v19);
    }

    v20 = a4;
    OSLogInterpolation.addStringHeaders(_:)(v20);
    result = OSLogArguments.append(_:)(a1, a2);
    v21 = *(v7 + 25) + 1;
    if ((v21 >> 8))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 25) = v21;
      v22 = *(v7 + 40);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      v25 = v23;
      if ((v25 & 1) == 0)
      {
        *(v7 + 40) = v24;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OSLogInterpolation.getStringFormatSpecifier(_:_:_:)(uint64_t a1, os::OSLogPrivacy a2, uint64_t a3, void *a4)
{
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%", 1uLL, 1);
  v8 = a2;
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  if (concatPrivacyAndAttributes(privacy:attributes:)(v8, v9).value._object)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("{", 1uLL, 1);
    static String.+= infix(_:_:)();

    static String.+= infix(_:_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("}", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  v10 = *a1;
  v11 = *(a1 + 8);
  _sxRi_zRi0_zlySiIsegr_SgWOy(v10);
  if (v10)
  {

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("*", 1uLL, 1);
    static String.+= infix(_:_:)();
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("s", 1uLL, 1);
  static String.+= infix(_:_:)();

  countAndFlagsBits = v14._countAndFlagsBits;

  outlined destroy of String(&v14);
  return countAndFlagsBits;
}

Swift::Void __swiftcall OSLogInterpolation.addStringHeaders(_:)(os::OSLogPrivacy a1)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  outlined init with copy of OSLogInterpolation(__dst, v14);
  v13 = 2;
  v4 = a1;
  v5 = OSLogInterpolation.getArgumentHeader(privacy:type:)(v4, &v13);
  outlined destroy of OSLogInterpolation(__dst);
  OSLogArguments.append(_:)(v5);
  OSLogArguments.append(_:)(8u);
  v6 = v1[4];
  v7 = __OFADD__(v6, 10);
  v8 = v6 + 10;
  v9 = v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v8;
    memcpy(v15, v1, sizeof(v15));
    outlined init with copy of OSLogInterpolation(v15, v12);
    v10 = a1;
    v11 = OSLogInterpolation.getUpdatedPreamble(privacy:isScalar:)(v10, 0);
    outlined destroy of OSLogInterpolation(v15);
    *(v2 + 24) = v11;
  }
}